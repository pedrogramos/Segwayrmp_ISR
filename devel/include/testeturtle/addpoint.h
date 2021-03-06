// Generated by gencpp from file testeturtle/addpoint.msg
// DO NOT EDIT!


#ifndef TESTETURTLE_MESSAGE_ADDPOINT_H
#define TESTETURTLE_MESSAGE_ADDPOINT_H

#include <ros/service_traits.h>


#include <testeturtle/addpointRequest.h>
#include <testeturtle/addpointResponse.h>


namespace testeturtle
{

struct addpoint
{

typedef addpointRequest Request;
typedef addpointResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct addpoint
} // namespace testeturtle


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::testeturtle::addpoint > {
  static const char* value()
  {
    return "44836338e0a1e7646be09f64ff13a545";
  }

  static const char* value(const ::testeturtle::addpoint&) { return value(); }
};

template<>
struct DataType< ::testeturtle::addpoint > {
  static const char* value()
  {
    return "testeturtle/addpoint";
  }

  static const char* value(const ::testeturtle::addpoint&) { return value(); }
};


// service_traits::MD5Sum< ::testeturtle::addpointRequest> should match 
// service_traits::MD5Sum< ::testeturtle::addpoint > 
template<>
struct MD5Sum< ::testeturtle::addpointRequest>
{
  static const char* value()
  {
    return MD5Sum< ::testeturtle::addpoint >::value();
  }
  static const char* value(const ::testeturtle::addpointRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::testeturtle::addpointRequest> should match 
// service_traits::DataType< ::testeturtle::addpoint > 
template<>
struct DataType< ::testeturtle::addpointRequest>
{
  static const char* value()
  {
    return DataType< ::testeturtle::addpoint >::value();
  }
  static const char* value(const ::testeturtle::addpointRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::testeturtle::addpointResponse> should match 
// service_traits::MD5Sum< ::testeturtle::addpoint > 
template<>
struct MD5Sum< ::testeturtle::addpointResponse>
{
  static const char* value()
  {
    return MD5Sum< ::testeturtle::addpoint >::value();
  }
  static const char* value(const ::testeturtle::addpointResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::testeturtle::addpointResponse> should match 
// service_traits::DataType< ::testeturtle::addpoint > 
template<>
struct DataType< ::testeturtle::addpointResponse>
{
  static const char* value()
  {
    return DataType< ::testeturtle::addpoint >::value();
  }
  static const char* value(const ::testeturtle::addpointResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TESTETURTLE_MESSAGE_ADDPOINT_H
