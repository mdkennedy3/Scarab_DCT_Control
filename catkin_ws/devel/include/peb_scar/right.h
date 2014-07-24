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
 * Auto-generated by gensrv_cpp from file /home/monroe/catkin_ws/src/peb_scar/srv/right.srv
 *
 */


#ifndef PEB_SCAR_MESSAGE_RIGHT_H
#define PEB_SCAR_MESSAGE_RIGHT_H

#include <ros/service_traits.h>


#include <peb_scar/rightRequest.h>
#include <peb_scar/rightResponse.h>


namespace peb_scar
{

struct right
{

typedef rightRequest Request;
typedef rightResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct right
} // namespace peb_scar


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::peb_scar::right > {
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::peb_scar::right&) { return value(); }
};

template<>
struct DataType< ::peb_scar::right > {
  static const char* value()
  {
    return "peb_scar/right";
  }

  static const char* value(const ::peb_scar::right&) { return value(); }
};


// service_traits::MD5Sum< ::peb_scar::rightRequest> should match 
// service_traits::MD5Sum< ::peb_scar::right > 
template<>
struct MD5Sum< ::peb_scar::rightRequest>
{
  static const char* value()
  {
    return MD5Sum< ::peb_scar::right >::value();
  }
  static const char* value(const ::peb_scar::rightRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::peb_scar::rightRequest> should match 
// service_traits::DataType< ::peb_scar::right > 
template<>
struct DataType< ::peb_scar::rightRequest>
{
  static const char* value()
  {
    return DataType< ::peb_scar::right >::value();
  }
  static const char* value(const ::peb_scar::rightRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::peb_scar::rightResponse> should match 
// service_traits::MD5Sum< ::peb_scar::right > 
template<>
struct MD5Sum< ::peb_scar::rightResponse>
{
  static const char* value()
  {
    return MD5Sum< ::peb_scar::right >::value();
  }
  static const char* value(const ::peb_scar::rightResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::peb_scar::rightResponse> should match 
// service_traits::DataType< ::peb_scar::right > 
template<>
struct DataType< ::peb_scar::rightResponse>
{
  static const char* value()
  {
    return DataType< ::peb_scar::right >::value();
  }
  static const char* value(const ::peb_scar::rightResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PEB_SCAR_MESSAGE_RIGHT_H
