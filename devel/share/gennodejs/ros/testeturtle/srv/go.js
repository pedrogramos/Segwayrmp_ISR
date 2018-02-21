// Auto-generated. Do not edit!

// (in-package testeturtle.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class goRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goRequest
    let len;
    let data = new goRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'testeturtle/goRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goRequest(null);
    return resolved;
    }
};

class goResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.var = null;
    }
    else {
      if (initObj.hasOwnProperty('var')) {
        this.var = initObj.var
      }
      else {
        this.var = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goResponse
    // Serialize message field [var]
    bufferOffset = _serializer.int64(obj.var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goResponse
    let len;
    let data = new goResponse(null);
    // Deserialize message field [var]
    data.var = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'testeturtle/goResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9559ec07ba73a7e45bf3354138657b84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 var
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goResponse(null);
    if (msg.var !== undefined) {
      resolved.var = msg.var;
    }
    else {
      resolved.var = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: goRequest,
  Response: goResponse,
  md5sum() { return '9559ec07ba73a7e45bf3354138657b84'; },
  datatype() { return 'testeturtle/go'; }
};
