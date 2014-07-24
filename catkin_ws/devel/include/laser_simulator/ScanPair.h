/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/ScanPair.msg
 *
 */


#ifndef LASER_SIMULATOR_MESSAGE_SCANPAIR_H
#define LASER_SIMULATOR_MESSAGE_SCANPAIR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Transform.h>

namespace laser_simulator
{
template <class ContainerAllocator>
struct ScanPair_
{
  typedef ScanPair_<ContainerAllocator> Type;

  ScanPair_()
    : scan1()
    , scan2()
    , pose1()
    , pose2()
    , transform()  {
    }
  ScanPair_(const ContainerAllocator& _alloc)
    : scan1(_alloc)
    , scan2(_alloc)
    , pose1(_alloc)
    , pose2(_alloc)
    , transform(_alloc)  {
    }



   typedef  ::sensor_msgs::LaserScan_<ContainerAllocator>  _scan1_type;
  _scan1_type scan1;

   typedef  ::sensor_msgs::LaserScan_<ContainerAllocator>  _scan2_type;
  _scan2_type scan2;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose1_type;
  _pose1_type pose1;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose2_type;
  _pose2_type pose2;

   typedef  ::geometry_msgs::Transform_<ContainerAllocator>  _transform_type;
  _transform_type transform;




  typedef boost::shared_ptr< ::laser_simulator::ScanPair_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::laser_simulator::ScanPair_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct ScanPair_

typedef ::laser_simulator::ScanPair_<std::allocator<void> > ScanPair;

typedef boost::shared_ptr< ::laser_simulator::ScanPair > ScanPairPtr;
typedef boost::shared_ptr< ::laser_simulator::ScanPair const> ScanPairConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::laser_simulator::ScanPair_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::laser_simulator::ScanPair_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace laser_simulator

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/hydro/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/hydro/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/hydro/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/hydro/share/geometry_msgs/cmake/../msg'], 'laser_simulator': ['/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::laser_simulator::ScanPair_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::laser_simulator::ScanPair_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laser_simulator::ScanPair_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laser_simulator::ScanPair_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laser_simulator::ScanPair_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laser_simulator::ScanPair_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::laser_simulator::ScanPair_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8b8f9cfc12d41180f8cbbd1515a00b5e";
  }

  static const char* value(const ::laser_simulator::ScanPair_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8b8f9cfc12d41180ULL;
  static const uint64_t static_value2 = 0xf8cbbd1515a00b5eULL;
};

template<class ContainerAllocator>
struct DataType< ::laser_simulator::ScanPair_<ContainerAllocator> >
{
  static const char* value()
  {
    return "laser_simulator/ScanPair";
  }

  static const char* value(const ::laser_simulator::ScanPair_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::laser_simulator::ScanPair_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/LaserScan scan1 \n\
sensor_msgs/LaserScan scan2\n\
geometry_msgs/Pose pose1\n\
geometry_msgs/Pose pose2\n\
geometry_msgs/Transform transform # Transformation from scan1 to scan2\n\
\n\
\n\
================================================================================\n\
MSG: sensor_msgs/LaserScan\n\
# Single scan from a planar laser range-finder\n\
#\n\
# If you have another ranging device with different behavior (e.g. a sonar\n\
# array), please find or create a different message, since applications\n\
# will make fairly laser-specific assumptions about this data\n\
\n\
Header header            # timestamp in the header is the acquisition time of \n\
                         # the first ray in the scan.\n\
                         #\n\
                         # in frame frame_id, angles are measured around \n\
                         # the positive Z axis (counterclockwise, if Z is up)\n\
                         # with zero angle being forward along the x axis\n\
                         \n\
float32 angle_min        # start angle of the scan [rad]\n\
float32 angle_max        # end angle of the scan [rad]\n\
float32 angle_increment  # angular distance between measurements [rad]\n\
\n\
float32 time_increment   # time between measurements [seconds] - if your scanner\n\
                         # is moving, this will be used in interpolating position\n\
                         # of 3d points\n\
float32 scan_time        # time between scans [seconds]\n\
\n\
float32 range_min        # minimum range value [m]\n\
float32 range_max        # maximum range value [m]\n\
\n\
float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)\n\
float32[] intensities    # intensity data [device-specific units].  If your\n\
                         # device does not provide intensities, please leave\n\
                         # the array empty.\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::laser_simulator::ScanPair_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::laser_simulator::ScanPair_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.scan1);
      stream.next(m.scan2);
      stream.next(m.pose1);
      stream.next(m.pose2);
      stream.next(m.transform);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ScanPair_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::laser_simulator::ScanPair_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::laser_simulator::ScanPair_<ContainerAllocator>& v)
  {
    s << indent << "scan1: ";
    s << std::endl;
    Printer< ::sensor_msgs::LaserScan_<ContainerAllocator> >::stream(s, indent + "  ", v.scan1);
    s << indent << "scan2: ";
    s << std::endl;
    Printer< ::sensor_msgs::LaserScan_<ContainerAllocator> >::stream(s, indent + "  ", v.scan2);
    s << indent << "pose1: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose1);
    s << indent << "pose2: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose2);
    s << indent << "transform: ";
    s << std::endl;
    Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "  ", v.transform);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LASER_SIMULATOR_MESSAGE_SCANPAIR_H