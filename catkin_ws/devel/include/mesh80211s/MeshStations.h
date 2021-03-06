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
 * Auto-generated by genmsg_cpp from file /home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStations.msg
 *
 */


#ifndef MESH80211S_MESSAGE_MESHSTATIONS_H
#define MESH80211S_MESSAGE_MESHSTATIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mesh80211s/MeshStation.h>

namespace mesh80211s
{
template <class ContainerAllocator>
struct MeshStations_
{
  typedef MeshStations_<ContainerAllocator> Type;

  MeshStations_()
    : header()
    , stations()  {
    }
  MeshStations_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , stations(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::mesh80211s::MeshStation_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::mesh80211s::MeshStation_<ContainerAllocator> >::other >  _stations_type;
  _stations_type stations;




  typedef boost::shared_ptr< ::mesh80211s::MeshStations_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mesh80211s::MeshStations_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct MeshStations_

typedef ::mesh80211s::MeshStations_<std::allocator<void> > MeshStations;

typedef boost::shared_ptr< ::mesh80211s::MeshStations > MeshStationsPtr;
typedef boost::shared_ptr< ::mesh80211s::MeshStations const> MeshStationsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mesh80211s::MeshStations_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mesh80211s::MeshStations_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mesh80211s

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg'], 'mesh80211s': ['/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mesh80211s::MeshStations_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mesh80211s::MeshStations_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mesh80211s::MeshStations_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mesh80211s::MeshStations_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mesh80211s::MeshStations_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mesh80211s::MeshStations_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mesh80211s::MeshStations_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa4702b9dc887621257c88e89f258184";
  }

  static const char* value(const ::mesh80211s::MeshStations_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa4702b9dc887621ULL;
  static const uint64_t static_value2 = 0x257c88e89f258184ULL;
};

template<class ContainerAllocator>
struct DataType< ::mesh80211s::MeshStations_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mesh80211s/MeshStations";
  }

  static const char* value(const ::mesh80211s::MeshStations_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mesh80211s::MeshStations_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
mesh80211s/MeshStation[] stations\n\
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
MSG: mesh80211s/MeshStation\n\
string mac\n\
string device\n\
uint32 inactive_time\n\
uint32 rx_bytes\n\
uint32 rx_packets\n\
uint32 tx_bytes\n\
uint32 tx_packets\n\
int32 signal\n\
uint16 tx_bitrate\n\
uint16 llid\n\
uint16 plid\n\
string plink\n\
";
  }

  static const char* value(const ::mesh80211s::MeshStations_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mesh80211s::MeshStations_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.stations);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct MeshStations_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mesh80211s::MeshStations_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mesh80211s::MeshStations_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "stations[]" << std::endl;
    for (size_t i = 0; i < v.stations.size(); ++i)
    {
      s << indent << "  stations[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mesh80211s::MeshStation_<ContainerAllocator> >::stream(s, indent + "    ", v.stations[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MESH80211S_MESSAGE_MESHSTATIONS_H
