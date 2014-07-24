/*
 * Author: Samer Nashed
 * 
 * This class is designed to ...
 */

//TODO: 
//Package nicely
//time scaling
//add ability to bound values pertaining to multiple dimensions
//
//general correctness testing.
//comment
//error reporting / handling
//
//general control flow
//inflight calculation flexibility
//other todos

#include <fstream>
#include <iostream>
#include <stdio.h>
#include "prog.h"
#include <vector>
#include <Eigen/Dense>
#include <qpOASES.hpp>
#include <unsupported/Eigen/MatrixFunctions>
#include <limits>
#include "yaml-cpp/yaml.h"

using namespace Eigen;
using namespace std;

/*
 * Constructor for the Generator class.
 *
 */

Generator::Generator() {}

Generator::Generator(vector<pair<double, vector<vector<double> > > >* 
	w_points, int dim, int order, vector<int> min_deriv, 
	int constr_per_seg, bool numerical, double tolerance, 
	vector<vector<double> >* ineq_const) {
  way_points = w_points;
  d = dim;
  n = order;
  min_d = min_deriv;
  cps = constr_per_seg;
  num = numerical;
  tol = tolerance;
  bounds = ineq_const;
  N = way_points->size() - 1;
}

/*
 * Destructor for the Generator class.
 */

Generator::~Generator() {}

/*
 * Getter and setter methods for variables which are typically constant over
 * the duration of the problem.
 */

int Generator::getDim() { return d; }
int Generator::getOrder() { return n; }
int Generator::getCps() { return cps; }
bool Generator::getNumerical() { return num; }
double Generator::getTolerance() { return tol; }
vector<int> Generator::getMinDeriv() { return min_d; }

void Generator::setDim(int d) { d = d; }
void Generator::setOrder(int ord) { n = ord; }
void Generator::setCps(int cpers) { cps = cpers; }
void Generator::setNumerical(bool numer) { num = numer; }
void Generator::setTolerance(double toler) { tol = toler; }
void Generator::setMinDeriv(vector<int> minderiv) { min_d = minderiv; }

/*
 * Replaces the current way points or bounds data with new way points or bounds
 * data, respectively. The old version is not saved.
 */

void Generator::setWayPoints(vector<pair<double, 
	vector<vector<double> > > >* w_points) { 
  way_points = w_points;
  N = way_points->size() - 1;
}

void Generator::setBounds(vector<vector<double> >* ineq_const) { 
  bounds = ineq_const;
}

/*
 * Returns a pointer to the data structure containing the data for way points
 * or bounds, respectively.
 */

vector<pair<double, vector<vector<double> > > >* Generator::getWayPoints() {
  return way_points;
}

vector<vector<double> >* Generator::getBounds() { 
  return bounds; 
}

/*
 * Adds an additional way point or bound to the existing set.
 */

void Generator::appendWayPoints(pair<double, 
	vector<vector<double> > > new_point) { 
  way_points->push_back(new_point);
  N++;
}

void Generator::appendBounds(vector<double> new_bound) { 
  bounds->push_back(new_bound);
}

/*
 * Clears the way points or bounds (or both) data structures. This results in
 * pointers to empty lists.
 */

void Generator::clearWayPoints() { way_points->clear(); }
void Generator::clearBounds() { bounds->clear(); }
void Generator::clearAll() { way_points->clear(); bounds->clear(); }

/*
 *
 */

void Generator::Report() {                                                       
  cout << load_error << endl;                                                 
  cout << parse_error << endl;                                                
  cout << update_error << endl;                                               
}


//break this up into three parts: Space, waypoints, bounds. all should        
// be private, with Load the only public function of the four.                
bool Generator::Load(std::string file) {                                         
  YAML::Node mother = YAML::LoadFile(file);                                   
  if (mother.IsNull()) {                                                      
    load_error = true;                                                        
    return false; //File Not Found                                            
  }                                                                           
                                                                               
  if (mother["Planning_Space"]["Dimension"].as<int>() < 1) {                  
    parse_error = true;                                                       
    cout << "Planning must occur in at least 1 dimension." << endl;           
    return false;                                                             
  }                                                                           
  int dim = mother["Planning_Space"]["Dimension"].as<int>();                  
  
  if (mother["Planning_Space"]["Order"].as<int>() < 1) {                  
    parse_error = true;                                                       
    cout << "Polynomial must have order at least 1." << endl;           
    return false;                                                             
  }                                                                           
  int n = mother["Planning_Space"]["Order"].as<int>();                        
  
  if (mother["Planning_Space"]["Constraints_Per_Segment"].as<int>() < 1) {                  
    parse_error = true;                                                       
    cout << "Inequality constraints must have at least one enforcement per segment." << endl;           
    return false;                                                             
  }                                                                           
  int cps = mother["Planning_Space"]["Constraints_Per_Segment"].as<int>();    
  
  int tol = mother["Planning_Space"]["Order"].as<int>();                      
  int numer = mother["Planning_Space"]["Numerical"].as<int>();                
  int max_deriv = mother["Planning_Space"]["Maximum_Derivative"].as<int>();
  bool num;                                                                   
  if (numer) { num  = true; }                                                 
  else { num = false; }                                                       
                                                                              
  //TODO: what kind of error checking should we do with the above inputs?     
  vector<int> min_deriv;                                                      
  if (mother["Planning_Space"]["Minimize_Derivative"].size() != size_t(dim)) {
    parse_error = true;                                                       
    cout << "The Dimension field, and size of Minimize_Derivative, are not equal." << endl;
    return false;                                                             
  }                                                                           
  for (size_t i=0; i<mother["Planning_Space"]["Minimize_Derivative"].size(); i++) {
    min_deriv.push_back(mother["Planning_Space"]["Minimize_Derivative"][i].as<int>());
  }                                                                           
                                                                              
  vector<vector<double> >* bounds;                                            
  bounds = new vector<vector<double> >;                                       
                                                                              
  vector<pair<double, vector<vector<double> > > >* waypoints;                 
  waypoints = new vector<pair<double, vector<vector<double> > > >;

  double time = 0;                                                            
  double NaN = std::numeric_limits<double>::quiet_NaN();                      
  for (size_t i=0; i<mother["Waypoint_List"].size(); i++) {                   
    double new_time = mother[mother["Waypoint_List"][i].as<std::string>()]["time"].as<double>();
    if (new_time < time) {
      parse_error = true;                                                     
      cout << "Waypoint " << i+1 << " is not in chronological order." << endl;
      return false;                                                           
    }                                                                         
    if (mother[mother["Waypoint_List"][i].as<std::string>()]["waypoint"].size() != size_t(max_deriv+1)) {
      parse_error = true;                                                     
      cout << "Waypoint " << i+1 << " has incorrect number of derivatives specified." << endl;
      return false;                                                           
    }
    for (int j=0; j<=max_deriv; j++) {
      if (mother[mother["Waypoint_List"][i].as<std::string>()]["waypoint"][j].size() != size_t(dim)) {
        parse_error = true;
        cout << "Waypoint " << i+1 << " derivative " << j << " has incorrect dimensions." << endl;
	return false;
      }
    }

    time  = new_time;                                                         
    vector<double> curr_deriv;                                                      
    vector<vector<double> > sub_waypoint;                                     
    double new_val;
    if (i == 0 || i == mother["Waypoint_List"].size() - 1) {                  
      for (int j=0; j<=max_deriv; j++) {
        for (int k=0; k<dim; k++) {                                             
          if (mother[mother["Waypoint_List"][i].as<std::string>()]["waypoint"][j][k].as<std::string>() == "NaN"
                  && j <= min_deriv[k]) {
            parse_error = true;                                                 
            cout << "End waypoints contain NaN values for derivatives <= to those being minimized in the dimension." << endl;
            return false;
          }
          if (mother[mother["Waypoint_List"][i].as<std::string>()]["waypoint"][j][k].as<std::string>() == "NaN") {
            new_val = mother[mother["Waypoint_List"][i].as<std::string>()]["waypoint"][j][k].as<double>();
            curr_deriv.push_back(new_val);
          }                                                                     
          else {                                                                
            new_val = mother[mother["Waypoint_List"][i].as<std::string>()]["waypoint"][j][k].as<double>();
            curr_deriv.push_back(new_val);                                             
          }                                                                     
        }
        sub_waypoint.push_back(curr_deriv);
        curr_deriv.clear();                                                                       
      }
    }                                                                         
    else {                                                                    
      for (int j=0; j<=max_deriv; j++) {
        for (int k=0; k<dim; k++) {                                             
          if (mother[mother["Waypoint_List"][i].as<std::string>()]["waypoint"][j][k].as<std::string>() == "NaN") {
            curr_deriv.push_back(NaN);                                                 
          }                                                                     
          else {                                                                
            new_val = mother[mother["Waypoint_List"][i].as<std::string>()]["waypoint"][j][k].as<double>();
            curr_deriv.push_back(new_val);                                             
          }                                                                     
        }                                                                     
        sub_waypoint.push_back(curr_deriv);
        curr_deriv.clear();                                                                       
      }                                                                       
    } 
    pair<double, vector<vector<double> > > new_waypoint = make_pair(time, sub_waypoint);
    waypoints[0].push_back(new_waypoint);
    sub_waypoint.clear();                                     
  }                                                                           
                                                                                
  vector<double> new_bound;                                                   
  for (size_t i=0; i<mother["Bounds_List"].size(); i++) {                     
    double ti = mother[mother["Bounds_List"][i].as<std::string>()]["ti"].as<double>();
    double tf = mother[mother["Bounds_List"][i].as<std::string>()]["tf"].as<double>();
    if (ti > tf ) {                                                           
      parse_error = true;                                                     
      cout << "Bound " << i+1 << " ends before it begins." << endl;           
      return false;                                                           
    }                                                                         
    new_bound.push_back(ti);                                                  
    new_bound.push_back(tf);                                                  
                                                                               
    int deriv = mother[mother["Bounds_List"][i].as<std::string>()]["derivative"].as<int>();
    if (deriv < 0 || deriv > 4) { // possibly change latter constraint        
      parse_error = true;                                                     
      cout << "Derivative to be minimized in bound " << i+1 << " must be 0<=deriv<=4." << endl;
      return false;                                                           
    }                                                                         
    new_bound.push_back(deriv);                                               
                                                                              
    int d = mother[mother["Bounds_List"][i].as<std::string>()]["dimension"].as<int>();
    if (d < 1 || d > dim) {                                                   
      parse_error = true;                                                     
      cout << "Dimension for bound " << i+1 << " must be 1<=d<=dim." << endl; 
      return false;                                                           
    }                                                                         
    new_bound.push_back(d);
    int type;                                                                 
    std::string type_s = mother[mother["Bounds_List"][i].as<std::string>()]["type"].as<std::string>();
    if (type_s == "lower") {                                                  
      type = -1;                                                              
      new_bound.push_back(type);                                              
    }                                                                         
    else if ( type_s == "upper") {                                            
      type = 1;                                                               
      new_bound.push_back(type);                                              
    }                                                                         
    else {                                                                    
      parse_error = true;                                                     
      cout << "Type for bound " << i+1 << " must be 'upper' or 'lower'." << endl;
      return false;                                                           
    }                                                                         
                                                                              
    double val = mother[mother["Bounds_List"][i].as<std::string>()]["value"].as<double>();
    new_bound.push_back(val);
    bounds->push_back(new_bound);
    new_bound.clear(); 
  }                                                                           
                                                                              
  return true;                                                                
}

////////// PROBLEM INITIALIZATION FUNCTIONS //////////

/*
 * Returns an (N+1) x 1 column vector of the times corresponding to each 
 * way point.
 */

MatrixXd Generator::extractTimes() {
  MatrixXd wp_times = MatrixXd::Constant(N+1,1,0);
  for (int i=0; i<N+1; i++) {
    wp_times(i,0) = way_points[0][i].first;
  }
  return wp_times;
}

/*

 * Returns an N x 1 column vector of the durations of each segment. Takes an
 * an (N+1) x 1 column vector of times at each way point as input.
 */

MatrixXd Generator::computeSegTimes(MatrixXd wp_times) {
  MatrixXd seg_times = MatrixXd::Constant(N,1,0);
  for (int i=0; i<N; i++) {
    seg_times(i,0) = (wp_times(i+1,0) - wp_times(i,0));
  }
  return seg_times;
}

/*
 * Returns a pointer to a list of 1 x (n+1) row vectors. These row vectors 
 * are the coefficients one gets after differentiating an nth order 
 * polynomial a given number of times. The index of the list corresponds to
 * the derivative represented. For instance, the given an nth order polynomial
 * representing position, x(t), D[2] is the corresponding list of coefficients
 * for x''(t). 
 */

vector<MatrixXd>* Generator::constructLinDeriv(int n) {
  vector<MatrixXd>* D = new vector<MatrixXd>;
  MatrixXd lin_deriv = MatrixXd::Constant(n+1,n+1,0);
  for (int i=1; i<n+1; i++) {
    lin_deriv(i,i-1) = n-i+1;
  }
  for (int i=0; i<5; i++) {
    //possibly optimize further using Eigen MatrixPower class instead of pow()
    D->push_back(lin_deriv.pow(i+1));
  }
  MatrixXd coeffs = MatrixXd::Constant(1,n+1,0);
  for (int i=0; i<5; i++) {
    for (int j=0; j<n+1; j++) {
      int col_sum = 0;
      for (int k=0; k<n+1; k++) {
        col_sum += D[0][i](k,j);
      }
      coeffs(0,j) = col_sum;
    }
    D[0][i] = coeffs;
  }
  MatrixXd zeroth_coeff = MatrixXd::Constant(1,n+1,1);
  vector<MatrixXd>::iterator it = D->begin();
  D->insert(it, zeroth_coeff);
  return D;
}

/*
 * Returns an integer representing the number of equality constraints 
 * associated with way points. A real number constitutes a constraint,
 * a NaN represents a placeholder, and imposes no direct equality constraints.
 */

int Generator::countEQConstraints() {
  int eq_minus_over_constrain = 0;
  for (size_t i=0; i<way_points[0].size()-1; i++) { //for each point
    for (size_t j=0; j<way_points[0][i].second.size(); j++) { //for each derivative
      for (size_t k=0; k<way_points[0][i].second[j].size(); k++) { //for each dimension
	if (!isnan(way_points[0][i].second[j][k])) { //equality constraint specified
	  eq_minus_over_constrain++;
        }
	else if (size_t(min_d[k]) >= j) { //continuity constraint
	  eq_minus_over_constrain++;
	}
      }
    }
  }
  return eq_minus_over_constrain;
}

/*
 * Returns a pointer to a list of 1 x (n+1) row vectors representing the 
 * powers one ends up with after differentiating a given number of times.
 * The ith vector in the list gives the powers, in descending order, to be
 * expected after differentiating an nth order polynomial i times.
 */

vector<MatrixXd>* Generator::calculatePowers(int max_deriv) {
  vector<MatrixXd>* powers = new vector<MatrixXd>;
  for (int i=0; i<max_deriv+1; i++) {
    MatrixXd new_powers = MatrixXd::Constant(1,n+1,0);
    for (int j=0; j<n+1; j++) {
      int pow = n - i - j;
      if (pow > 0) {
        new_powers(0,j) = pow;
      }
    }
    powers->push_back(new_powers);
  }
  return powers;
}

/*
 * Constructs an N*d*(n+1) x N*d*(n+1) Hessian Matrix. This Matrix is then
 * inserted into the object "problem" of type vector<MatrixXd> in the 0th
 * array location, overwriting the previous occupant, if one exists.
 */

void Generator::constructH(vector<MatrixXd>* D) {
  MatrixXd H = MatrixXd::Constant(N*d*(n+1), N*d*(n+1), 0);
  MatrixXd H_pow_base = MatrixXd::Constant(n+1, n+1, 0);
  MatrixXd H_pow = MatrixXd::Constant(n+1, n+1, 0);
  int offset = 0;
  for (int i=0; i<(n+1); i++) {
    for (int j=0; j<(n+1); j++) {
      H_pow_base(i,j) = 2*n - (i + j);
    }
  }
  for (int i=0; i<N; i++) {
    for (int j=0; j<d; j++) {
      MatrixXd H_coeff = MatrixXd::Constant(n+1, n+1, 1);
      for (int k=0; k<(n+1); k++) {
        for (int l=0; l<(n+1); l++) {
          H_pow(k,l) = H_pow_base(k,l) - 2*min_d[j];
          if (H_pow(k,l) >= 0) {
            H_pow(k,l)++;
          }
          else {
            H_pow(k,l) = 0;
          }
        }
      }
      if (min_d[j] != 0) {
        for (int k=0; k<(n+1); k++) {
          for (int l=0; l<(n+1); l++) {
            H_coeff(k,l) = D[0][min_d[j]](0,k) * D[0][min_d[j]](0,l);
            if (H_pow(k,l) > 0) {
              H_coeff(k,l) = H_coeff(k,l) / H_pow(k,l);
            }
            else {
              H_coeff(k,l) = 0;
            }
          }
        }
      }
      else { 
        for (int k=0; k<(n+1); k++) {
          for (int l=0; l<(n+1); l++) {
            if (H_pow(k,l) <= 0) {
              H_coeff(k,l) = 0;
            }
          }
        }
      }
      for (int k=0; k<(n+1); k++) {
        for (int l=0; l<(n+1); l++) {
          H(offset + k, offset +l) = H_coeff(k,l);
        }
      }
      offset += (n+1);
    }
  }
  //std::cout << H << endl;
  if (problem.size() > 0) {
    problem[0] = H;
  }
  else {
    problem.push_back(H);
  }
}

/*
 * Constructs an nC x N*d*(n+1) matrix and an nC x 1 column vector representing
 * the polynomials and desired values respectively. nC is the total number of
 * equality and continuity constraints.
 */

void Generator::constructEandc(int eqcs_minus_over_constrain, 
	vector<MatrixXd>* D, vector<MatrixXd>* powers, MatrixXd seg_times) {
  int continuity_constraints = 0;
  for (size_t i=0; i<min_d.size(); i++) {
    continuity_constraints += N*min_d[i];
  }
  int num_rows = eqcs_minus_over_constrain + continuity_constraints;
  int num_cols = d*N*(n+1);
  int row = 0;
  int num_wp = way_points[0].size();
  double ti = 0.0;
  double tf = 1.0;
  MatrixXd E = MatrixXd::Constant(num_rows, num_cols,0);
  MatrixXd c = MatrixXd::Constant(num_rows,1,0);

  for (int i=0; i<num_wp-1; i++) { //for each way point - last
    for (size_t j=0; j<way_points[0][i].second.size(); j++) { //for each derivative
      for (size_t k=0; k<way_points[0][i].second[j].size(); k++) { //for each dim
        int start_col = i*d*(n+1) + k*(n+1);
	if (!isnan(way_points[0][i].second[j][k])) {
          for (int l=0; l<(n+1); l++) { //equality constraints for segment beginnings
	    E(row, start_col+l) = D[0][k](0,l)*pow(ti, double(powers[0][k](0,l)));
	    c(row,0) = (way_points[0][i].second[j][k])*pow(seg_times(i,0), double(j));
	  }
	  row++;
        }
        else if (size_t(min_d[k]) >= j) { //continuity constraints
	  for (int l=0; l<(n+1); l++) {
	    E(row, start_col+l) = (D[0][k](0,l)*pow(tf, double(powers[0][k](0,l)))) / 
		pow(seg_times(i,0), double(j));
	    E(row, start_col+l+((d-1)*(n+1))) = -(D[0][k](0,l)*pow(ti, double(powers[0][k](0,l)))) / 
		pow(seg_times(i+1,0), double(j));
	  }
	  row++;
 	}
	if (!isnan(way_points[0][i+1].second[j][k])) { //equality constraints for segment ends
          for (int l=0; l<(n+1); l++) {
	    E(row, start_col+l) = D[0][k](0,l)*pow(tf, double(powers[0][k](0,l)));
	    c(row,0) = (way_points[0][i+1].second[j][k])*pow(seg_times(i,0), double(j));
	  }
	  row++;
        }
      }
    }
  }
  //std::cout << E << std::endl;
  //std::cout << c << std::endl;
  if (problem.size() > 1) {
    problem[1] = E;
    problem[2] = c;
  }
  else {
    problem.push_back(E);
    problem.push_back(c);
  }
}

/*
 * Creates additional inequality constraints if a current constraint spans
 * multiple segments. Thus, no particular member of the bounds data structure
 * now spans more than one segment.
 */

void Generator::configureBounds(MatrixXd wp_times) {
  int initial_size = bounds->size();
  for (int i=0; i<initial_size; i++) {
    double ti;
    double tf;
    //need to check more rigorously for non-YAML inputs
    //if (bounds[0][i][0].empty()) {
    //  bounds[0][i][0].push_back(wp_times(0,0));
    //  bounds[0][i][0].push_back(wp_times(N,0));
    //}
    if (bounds[0][i][1] > wp_times(N,0) && bounds[0][i][0] < wp_times(0,0)) {
      bounds[0][i][0] = wp_times(0,0);
      bounds[0][i][1] = wp_times(N,0);
    }
    else if (bounds[0][i][1] > wp_times(N,0)) {
      bounds[0][i][1] = wp_times(N,0);
    }
    else if (bounds[0][i][0] < wp_times(0,0)) {
      bounds[0][i][0] = wp_times(0,0);
    }
    ti = bounds[0][i][0];
    tf = bounds[0][i][1];
    int wp = 0;
    bool complete = false;
    while (!complete) {
      if (wp_times(wp,0) <= ti && tf <= wp_times(wp+1,0)) {
        bounds[0][i][0] = ti;
        bounds[0][i][1] = tf;
        complete = true;
      }
      else if (wp_times(wp+1,0) >= ti && wp_times(wp+1,0) <= tf) {
        vector<double> new_bound = bounds[0][i];
        new_bound[0] = ti;
        new_bound[1] = wp_times(wp+1,0);
        new_bound.push_back(double(wp+1));
        appendBounds(new_bound);
        ti = wp_times(wp+1,0);
      }
      wp++;
    }
  }
}

/*
 *
 */
//bounds[][][0] = ti
//bounds[][][1] = tf
//bounds[][][2] = deriv
//bounds[][][3] = dim
//bounds[][][4] = type
//bounds[][][5] = value
//bounds[][][6] = segment

//dimension values begin at 1. NOT 0.
void Generator::constructAandb(vector<MatrixXd>* powers, 
	vector<MatrixXd>* D) {
  
  int rows = cps*bounds->size();
  MatrixXd Aineq = MatrixXd::Constant(rows, N*d*(n+1), 0);
  MatrixXd b_ub = MatrixXd::Constant(rows, 1, 0);
  MatrixXd b_lb = MatrixXd::Constant(rows, 1, 0);
  int row = 0;
  int start_col;
  int deriv;
  int dim;
  int seg;
  for (size_t i=0; i<bounds->size(); i++) {
    dim = bounds[0][i][3];
    seg = bounds[0][i][6];
    start_col = (n+1)*(d*seg + dim-1);
    double interval = double(bounds[0][i][1] - bounds[0][i][0])/cps;
    
    vector<double> times;
    for (int j=0; j<cps; j++) {
      times.push_back(bounds[0][i][0] + (interval*j));
    }
    
    deriv = bounds[0][i][2];
    if (bounds[0][i][4] > 0) {//
      for (int j=0; j<cps; j++) {
        for (int k=0; k<(n+1); k++) {
	  Aineq(row, start_col + k) = (D[0][deriv](0,k)*10 + powers[0][deriv](0,k));
        }
	b_ub(row, 0) = bounds[0][i][5];
        b_lb(row, 0) = -qpOASES::INFTY; 
        row++;
      }
    }
    else { //
      for (int j=0; j<cps; j++) {
        for (int k=0; k<(n+1); k++) {
	  Aineq(row, start_col + k) = (-1)*(D[0][deriv](0,k)*10 + powers[0][deriv](0,k));
        }
	b_lb(row, 0) = (-1)*bounds[0][i][5];
        b_ub(row, 0) = qpOASES::INFTY;
        row++;
      }
    }
  }
  int nCons = problem[1].rows() + Aineq.rows();
  MatrixXd A(nCons, d*N*(n+1));
  A << problem[1], Aineq;
  problem.push_back(A);
  MatrixXd ubA(nCons, 1);
  ubA << problem[2], b_ub;
  MatrixXd lbA(nCons, 1);
  lbA << problem[2], b_lb;
  problem.push_back(ubA);
  problem.push_back(lbA);
}

////////// PROBLEM SOLUTION FUNCTIONS //////////

//problem[][0] = H
//problem[][1] = E
//problem[][2] = c
//problem[][3] = A    // E stack Aineq
//problem[][4] = lbA  // c stack b_lower
//problem[][5] = ubA  // c stack b_upper

/*
 * 
 */
//make sure analytical solution is only run if num is false, or there are no bounds

void Generator::generateTrajectory() {
  if (num) {
    USING_NAMESPACE_QPOASES
    
    double* H = new double[(N*d*(n+1))*(N*d*(n+1))];
    for (int i=0; i<N*d*(n+1); i++) {
      for (int j=0; j<N*d*(n+1); j++) {
        H[i*(N*d*(n+1)) + j] = problem[0](i,j);
      }
    }

    double* g = new double[N*d*(n+1)];
    for (int i=0; i<N*d*(n+1); i++ ) {
      g[i] = 0.0;
    }
 
    double* A = new double[N*d*(n+1)*problem[3].rows()];
    for (int i=0; i<problem[3].rows(); i++) {
      for (int j=0; j<N*d*(n+1); j++) {
	A[i*(N*d*(n+1)) + j] = problem[3](i,j);
      }
    }

    double* lb = NULL;
    double* ub = NULL;

    double* lbA = new double[problem[3].rows()];
    double* ubA = new double[problem[3].rows()];
    for (int i=0; i<problem[3].rows(); i++) {
      lbA[i] = problem[4](i,0);
      ubA[i] = problem[5](i,0);
    }


    /* Setup data of second QP. */
    //double g_new[2] = { 1.0, 1.5 };
    //double lb_new[2] = { 0.0, -1.0 };
    //double ub_new[2] = { 5.0, -0.5 };
    //double lbA_new[1] = { -2.0 };
    //double ubA_new[1] = { 1.0 };

    /* Setting up QProblem object. */
    QProblem example(N*d*(n+1), problem[3].rows());

    Options options;
    example.setOptions( options );

    /* Solve first QP. */
    int nWSR = 10;
    example.init( H,g,A,lb,ub,lbA,ubA, nWSR );

    /* Get and print solution of first QP. */
    double xOpt[2];
    double yOpt[2+1];
    example.getPrimalSolution( xOpt );
    example.getDualSolution( yOpt );
    printf( "\nxOpt = [ %e, %e ];  yOpt = [ %e, %e, %e ];  objVal = %e\n\n", 
           xOpt[0],xOpt[1],yOpt[0],yOpt[1],yOpt[2],example.getObjVal() );

    /* Solve second QP. */
    //nWSR = 10;
    //example.hotstart( g_new,lb_new,ub_new,lbA_new,ubA_new, nWSR );

    /* Get and print solution of second QP. */
    //example.getPrimalSolution( xOpt );
    //example.getDualSolution( yOpt );
    //printf( "\nxOpt = [ %e, %e ];  yOpt = [ %e, %e, %e ];  objVal = %e\n\n", 
    //       xOpt[0],xOpt[1],yOpt[0],yOpt[1],yOpt[2],example.getObjVal() );

    example.printOptions();

  }
  else {

    MatrixXd H = problem[0];
    MatrixXd E = problem[1];
    MatrixXd c = problem[2];
    
    MatrixXd top(H.rows(), H.cols() + E.rows());
    top << 2*H, E.transpose();
    
    MatrixXd Z = MatrixXd::Constant(E.rows(), top.cols() - E.cols(), 0);
    
    MatrixXd bottom(E.rows(), top.cols());
    bottom << E, Z;
    
    MatrixXd P(top.rows() + bottom.rows(), top.cols());
    P << top, bottom;
   
    MatrixXd z = MatrixXd::Constant(H.rows(), 1, 0);
    MatrixXd zc(c.rows() + z.rows(), 1);
    zc << z, c;
 
    cout << "Here is the matrix P:\n" << P << endl;
    cout << "Here is the vector zc:\n" << zc << endl;
    
    MatrixXd x = P.colPivHouseholderQr().solve(zc);
    cout << "The solution is:\n" << x << endl;
    
    
  }
}


//void test1(int *);
//void test2(int *);

int main(){
  
  /*
  int d = 3;
  int n = 7;
  vector<int> md;
  md.push_back(0);
  md.push_back(2);
  md.push_back(4);
  int cps = 2*(n+1);
  bool num = true;
  double tol = .00000001;

  vector<vector<vector<double> > >* bounds;
  bounds = new vector<vector<vector<double> > >;

  vector<pair<double, vector<vector<double> > > >* way_points;
  way_points = new vector<pair<double, vector<vector<double> > > >;

  vector<double> eqc1pos; 
  vector<double> eqc1vel; 
  vector<double> eqc1acc; 
  vector<double> eqc1jrk; 
  vector<double> eqc2pos; 
  vector<double> eqc2vel; 
  vector<double> eqc2acc; 
  vector<double> eqc2jrk;
  vector<double> eqc3pos; 
  vector<double> eqc3vel; 
  vector<double> eqc3acc; 
  vector<double> eqc3jrk;

  double NaN = std::numeric_limits<double>::quiet_NaN();
  for (int i=0; i<d; i++) {
    eqc1pos.push_back(0); 
    eqc1vel.push_back(0); 
    eqc1acc.push_back(0); 
    eqc1jrk.push_back(0); 
    eqc2pos.push_back(1); 
    eqc2vel.push_back(NaN); 
    eqc2acc.push_back(0); 
    eqc2jrk.push_back(NaN);
    eqc3vel.push_back(1); 
    eqc3acc.push_back(0); 
    eqc3jrk.push_back(0);
  }
  eqc3pos.push_back(1); 
  eqc3pos.push_back(2); 
  eqc3pos.push_back(3); 
  
  vector<vector<double> > eqc1;
  vector<vector<double> > eqc2;
  vector<vector<double> > eqc3;
  eqc1.push_back(eqc1pos);
  eqc1.push_back(eqc1vel);
  eqc1.push_back(eqc1acc);
  eqc1.push_back(eqc1jrk);
  eqc2.push_back(eqc2pos);
  eqc2.push_back(eqc2vel);
  eqc2.push_back(eqc2acc);
  eqc2.push_back(eqc2jrk);
  eqc3.push_back(eqc3pos);
  eqc3.push_back(eqc3vel);
  eqc3.push_back(eqc3acc);
  eqc3.push_back(eqc3jrk);

  double t0 = 0.0;
  double t1 = 1.0;
  double t2 = 2.5;
  pair<double, vector<vector<double> > > wp1 = make_pair(t0, eqc1);
  pair<double, vector<vector<double> > > wp2 = make_pair(t1, eqc2);
  pair<double, vector<vector<double> > > wp3 = make_pair(t2, eqc3);

  way_points->push_back(wp1);
  way_points->push_back(wp2);
  way_points->push_back(wp3);
  */

  
  int d = 1;
  int n = 12;
  vector<int> md;
  md.push_back(4);
  int cps = 2*(n+1);
  bool num = false;
  //bool num = true;
  double tol = .00000001;
  
  double NaN = std::numeric_limits<double>::quiet_NaN();

  vector<vector<double> >* bounds;
  bounds = new vector<vector<double> >;

  vector<pair<double, vector<vector<double> > > >* way_points;
  way_points = new vector<pair<double, vector<vector<double> > > >;

  vector<double> eqc1pos; 
  vector<double> eqc1vel;
  vector<double> eqc1acc; 
  vector<double> eqc1jrk; 
  vector<double> eqc2pos; 
  vector<double> eqc2vel; 
  vector<double> eqc2acc; 
  vector<double> eqc2jrk;
  
  eqc1pos.push_back(0); 
  eqc1vel.push_back(0); 
  eqc1acc.push_back(0); 
  eqc1jrk.push_back(0); 
  eqc2pos.push_back(1); 
  eqc2vel.push_back(0); 
  eqc2acc.push_back(0); 
  eqc2jrk.push_back(0);

  vector<vector<double> > eqc1;
  vector<vector<double> > eqc2;

  eqc1.push_back(eqc1pos);
  eqc1.push_back(eqc1vel);
  eqc1.push_back(eqc1acc);
  eqc1.push_back(eqc1jrk);
  eqc2.push_back(eqc2pos);
  eqc2.push_back(eqc2vel);
  eqc2.push_back(eqc2acc);
  eqc2.push_back(eqc2jrk);


  double t0 = 0;
  double t1 = 10;
  pair<double, vector<vector<double> > > wp1 = make_pair(t0, eqc1);
  pair<double, vector<vector<double> > > wp2 = make_pair(t1, eqc2);

  way_points->push_back(wp1);
  way_points->push_back(wp2);

  double ti1;
  double tf1;
  double ti2;
  double tf2;
  double div1;
  double div2;
  double dim1;
  double dim2;
  double type1;
  double type2;
  double val1;
  double val2;

  ti1 = 2.5;
  tf1 = 7.5;
  ti2 = 0.0;
  tf2 = 10.0;
  div1 = 0;
  div2 = 0;
  dim1 = 1;
  dim2 = 1;
  type1 = -1.0;
  type2 = 1.0;
  val1 = 0.5;
  val2 = 1.0;

  vector<double> bound1;
  vector<double> bound2;

  bound1.push_back(ti1);
  bound1.push_back(tf1);
  bound1.push_back(div1);
  bound1.push_back(dim1);
  bound1.push_back(type1);
  bound1.push_back(val1);
  bound2.push_back(ti2);
  bound2.push_back(tf2);
  bound2.push_back(div2);
  bound2.push_back(dim2);
  bound2.push_back(type2);
  bound2.push_back(val2);

  bounds->push_back(bound1);
  bounds->push_back(bound2);

  Generator* TraGEN = new Generator(way_points,d,n,md,cps,num,tol,bounds);
  MatrixXd times = TraGEN->extractTimes();
  MatrixXd segs = TraGEN->computeSegTimes(times);
  vector<MatrixXd>* LDList = TraGEN->constructLinDeriv(n);
  int eqcs_minus_oc = TraGEN->countEQConstraints();
  int max_deriv = 4;
  vector<MatrixXd>* powers = TraGEN->calculatePowers(max_deriv); 
  TraGEN->constructH(LDList);
  TraGEN->constructEandc(eqcs_minus_oc, LDList, powers, segs);
  TraGEN->constructAandb(powers, LDList);
  TraGEN->configureBounds(times);
  TraGEN->generateTrajectory(); 

  //int x;
  //int y;
  //int z;
  //test1(&x);
  //test2(&y);
  //z = (x / y);
  bool cont = TraGEN->Load("test.yaml");
  TraGEN->Report();

  std::cout << 20 << std::endl;
  return 0;
}
