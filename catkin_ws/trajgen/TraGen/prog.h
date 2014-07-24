#ifndef __PROG_H_INCLUDED__
#define __PROG_H_INCLUDED__

#include <iostream>
#include <vector>
#include "EigenAll/Eigen/Dense"
#include "yaml-cpp/yaml.h"
#include <string>

using namespace Eigen;
using namespace std;

class Generator {
  
  private:
    vector<pair<double, vector<vector<double> > > >* way_points;
    vector<vector<double> >* bounds;
    int d;
    int n;
    vector<int> min_d;
    double cps;
    bool num;
    double tol;
    int N;
    vector<MatrixXd> problem;
    bool load_error;                                                       
    bool parse_error;                                                      
    bool update_error; 

  public:
    int main();
    int getDim();
    int getOrder();
    int getCps();
    bool getNumerical();
    double getTolerance();
    vector<int> getMinDeriv();

    void setDim(int d);
    void setOrder(int ord);
    void setCps(int cpers);
    void setNumerical(bool numer);
    void setTolerance(double toler);
    void setMinDeriv(vector<int> minderiv);
    Generator();
    Generator(vector<pair<double, vector<vector<double> > > >* way_points,
	int d, int n, vector<int> min_d, int cps, bool num, double tol,
	vector<vector<double> >* bounds);
    virtual ~Generator();

    void setWayPoints(vector<pair<double, vector<vector<double> > > >* 
	w_points);
    void setBounds(vector<vector<double> >* ineq_const);
    
    vector<pair<double, vector<vector<double> > > >* getWayPoints();
    vector<vector<double> >* getBounds();
    
    void appendWayPoints(pair<double, vector<vector<double> > > new_point);
    void appendBounds(vector<double> new_bound);
    void clearWayPoints();
    void clearBounds();
    void clearAll();
    
    void Report();
    bool Load(std::string infile);

    vector<MatrixXd>* constructLinDeriv(int n);
    MatrixXd computeSegTimes(MatrixXd wp_times);
    MatrixXd extractTimes();
    int countEQConstraints();
    vector<MatrixXd>* calculatePowers(int max_deriv);
    void constructEandc(int eqcs, vector<MatrixXd>* D,
	 vector<MatrixXd>* powers, MatrixXd seg_times);
    void constructH(vector<MatrixXd>* D);
    void configureBounds(MatrixXd wp_times);
    void constructAandb(vector<MatrixXd>* powers, vector<MatrixXd>* D);
    void generateTrajectory();
};

#endif
