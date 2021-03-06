// Generated by gencpp from file testeturtle/addpointRequest.msg
// DO NOT EDIT!


#ifndef TESTETURTLE_MESSAGE_ADDPOINTREQUEST_H
#define TESTETURTLE_MESSAGE_ADDPOINTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace testeturtle
{
template <class ContainerAllocator>
struct addpointRequest_
{
  typedef addpointRequest_<ContainerAllocator> Type;

  addpointRequest_()
    : xf(0)
    , yf(0)  {
    }
  addpointRequest_(const ContainerAllocator& _alloc)
    : xf(0)
    , yf(0)  {
  (void)_alloc;
    }



   typedef int64_t _xf_type;
  _xf_type xf;

   typedef int64_t _yf_type;
  _yf_type yf;




  typedef boost::shared_ptr< ::testeturtle::addpointRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::testeturtle::addpointRequest_<ContainerAllocator> const> ConstPtr;

}; // struct addpointRequest_

typedef ::testeturtle::addpointRequest_<std::allocator<void> > addpointRequest;

typedef boost::shared_ptr< ::testeturtle::addpointRequest > addpointRequestPtr;
typedef boost::shared_ptr< ::testeturtle::addpointRequest const> addpointRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::testeturtle::addpointRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::testeturtle::addpointRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace testeturtle

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::testeturtle::addpointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::testeturtle::addpointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::testeturtle::addpointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::testeturtle::addpointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::testeturtle::addpointRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::testeturtle::addpointRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::testeturtle::addpointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f74722ec6a2d83ce9d9226fd6f2f87e1";
  }

  static const char* value(const ::testeturtle::addpointRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf74722ec6a2d83ceULL;
  static const uint64_t static_value2 = 0x9d9226fd6f2f87e1ULL;
};

template<class ContainerAllocator>
struct DataType< ::testeturtle::addpointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "testeturtle/addpointRequest";
  }

  static const char* value(const ::testeturtle::addpointRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::testeturtle::addpointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 xf\n\
int64 yf\n\
";
  }

  static const char* value(const ::testeturtle::addpointRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::testeturtle::addpointRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xf);
      stream.next(m.yf);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct addpointRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::testeturtle::addpointRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::testeturtle::addpointRequest_<ContainerAllocator>& v)
  {
    s << indent << "xf: ";
    Printer<int64_t>::stream(s, indent + "  ", v.xf);
    s << indent << "yf: ";
    Printer<int64_t>::stream(s, indent + "  ", v.yf);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TESTETURTLE_MESSAGE_ADDPOINTREQUEST_H
