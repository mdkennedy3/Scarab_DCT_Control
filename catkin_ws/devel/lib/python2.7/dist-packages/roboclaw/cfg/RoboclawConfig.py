## *********************************************************
## 
## File autogenerated for the roboclaw package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

##**********************************************************
## Software License Agreement (BSD License)
##
##  Copyright (c) 2008, Willow Garage, Inc.
##  All rights reserved.
##
##  Redistribution and use in source and binary forms, with or without
##  modification, are permitted provided that the following conditions
##  are met:
##
##   * Redistributions of source code must retain the above copyright
##     notice, this list of conditions and the following disclaimer.
##   * Redistributions in binary form must reproduce the above
##     copyright notice, this list of conditions and the following
##     disclaimer in the documentation and/or other materials provided
##     with the distribution.
##   * Neither the name of the Willow Garage nor the names of its
##     contributors may be used to endorse or promote products derived
##     from this software without specific prior written permission.
##
##  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
##  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
##  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
##  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
##  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
##  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
##  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
##  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
##  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
##  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
##  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
##  POSSIBILITY OF SUCH DAMAGE.
##**********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 233, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 262, 'description': 'PID Proportional gain', 'max': 50.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pid_p', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'PID Integral gain', 'max': 50.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pid_i', 'edit_method': '', 'default': 4.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'PID Derivative gain', 'max': 50.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pid_d', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'Max I magnitude', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pid_iclamp', 'edit_method': '', 'default': 500.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'Maximum wheel acceleration (m/s^2)', 'max': 2.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accel_max', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'Maximum individual wheel speed (m/s)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_wheel_vel', 'edit_method': '', 'default': 0.8, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'Minimum individual wheel speed (m/s)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_wheel_vel', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'Wheel diameter (m)', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'wheel_diam', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 262, 'description': 'Quad pulses / motor revolution', 'max': 5000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'quad_pulse_per_motor_rev', 'edit_method': '', 'default': 2000, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 262, 'description': 'Number of motor revolutions for one wheel revolution', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'motor_to_wheel_ratio', 'edit_method': '', 'default': 38.35, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 262, 'description': 'Spacing between wheels (m)', 'max': 0.4, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'axle_width', 'edit_method': '', 'default': 0.255, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 262, 'description': 'The update rate of odometry integration (Hz)', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'freq', 'edit_method': '', 'default': 50.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'The odometry frame of the robot', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'odom_frame', 'edit_method': '', 'default': 'odom_motor', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 262, 'description': 'The local frame of the robot', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'base_frame', 'edit_method': '', 'default': 'base_link', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 262, 'description': 'Min linear velocity change to reset PID errors (m/s)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pid_error_reset_v_step_threshold', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'Min angular velocity change to reset PID errors (rad/s)', 'max': 2.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pid_error_reset_w_step_threshold', 'edit_method': '', 'default': 0.3, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'Min linear velocity to reset PID errors (m/s)', 'max': 0.1, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pid_error_reset_min_v', 'edit_method': '', 'default': 0.01, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 262, 'description': 'Min angular velocity to reset PID errors (rad/s)', 'max': 0.2, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/hydro/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pid_error_reset_min_w', 'edit_method': '', 'default': 0.01, 'level': 0, 'min': 0.0, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])    
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

