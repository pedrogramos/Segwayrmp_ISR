// Generated by gencpp from file testeturtle/stopResponse.msg
// DO NOT EDIT!


#ifndef TESTETURTLE_MESSAGE_STOPRESPONSE_H
#define TESTETURTLE_MESSAGE_STOPRESPONSE_H


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
struct stopResponse_
{
  typedef stopResponse_<ContainerAllocator> Type;

  stopResponse_()
    : stop(0)  {
    }
  stopResponse_(const ContainerAllocator& _alloc)
    : stop(0)  {
  (void)_alloc;
    }



   typedef int64_t _stop_type;
  _stop_type stop;




  typedef boost::shared_ptr< ::testeturtle::stopResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::testeturtle::stopResponse_<ContainerAllocator> const> ConstPtr;

}; // struct stopResponse_

typedef ::testeturtle::stopResponse_<std::allocator<void> > stopResponse;

typedef boost::shared_ptr< ::testeturtle::stopResponse > stopResponsePtr;
typedef boost::shared_ptr< ::testeturtle::stopResponse const> stopResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::testeturtle::stopResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::testeturtle::stopResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::testeturtle::stopResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::testeturtle::stopResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::testeturtle::stopResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::testeturtle::stopResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::testeturtle::stopResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::testeturtle::stopResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::testeturtle::stopResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "839f326c2e6df1e173665bdc360e82bd";
  }

  static const char* value(const ::testeturtle::stopResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x839f326c2e6df1e1ULL;
  static const uint64_t static_value2 = 0x73665bdc360e82bdULL;
};

template<class ContainerAllocator>
struct DataType< ::testeturtle::stopResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "testeturtle/stopResponse";
  }

  static const char* value(const ::testeturtle::stopResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::testeturtle::stopResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 stop\n\
\n\
";
  }

  static const char* value(const ::testeturtle::stopResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::testeturtle::stopResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stop);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct stopResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::testeturtle::stopResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::testeturtle::stopResponse_<ContainerAllocator>& v)
  {
    s << indent << "stop: ";
    Printer<int64_t>::stream(s, indent + "  ", v.stop);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TESTETURTLE_MESSAGE_STOPRESPONSE_H