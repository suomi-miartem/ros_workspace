; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude Sum-request.msg.html

(cl:defclass <Sum-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass Sum-request (<Sum-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sum-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sum-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Sum-request> is deprecated: use beginner_tutorials-srv:Sum-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Sum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:a-val is deprecated.  Use beginner_tutorials-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Sum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:b-val is deprecated.  Use beginner_tutorials-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sum-request>) ostream)
  "Serializes a message object of type '<Sum-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sum-request>) istream)
  "Deserializes a message object of type '<Sum-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sum-request>)))
  "Returns string type for a service object of type '<Sum-request>"
  "beginner_tutorials/SumRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sum-request)))
  "Returns string type for a service object of type 'Sum-request"
  "beginner_tutorials/SumRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sum-request>)))
  "Returns md5sum for a message object of type '<Sum-request>"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sum-request)))
  "Returns md5sum for a message object of type 'Sum-request"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sum-request>)))
  "Returns full string definition for message of type '<Sum-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sum-request)))
  "Returns full string definition for message of type 'Sum-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sum-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sum-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Sum-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude Sum-response.msg.html

(cl:defclass <Sum-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass Sum-response (<Sum-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sum-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sum-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Sum-response> is deprecated: use beginner_tutorials-srv:Sum-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <Sum-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:sum-val is deprecated.  Use beginner_tutorials-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sum-response>) ostream)
  "Serializes a message object of type '<Sum-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sum-response>) istream)
  "Deserializes a message object of type '<Sum-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sum-response>)))
  "Returns string type for a service object of type '<Sum-response>"
  "beginner_tutorials/SumResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sum-response)))
  "Returns string type for a service object of type 'Sum-response"
  "beginner_tutorials/SumResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sum-response>)))
  "Returns md5sum for a message object of type '<Sum-response>"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sum-response)))
  "Returns md5sum for a message object of type 'Sum-response"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sum-response>)))
  "Returns full string definition for message of type '<Sum-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sum-response)))
  "Returns full string definition for message of type 'Sum-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sum-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sum-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Sum-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Sum)))
  'Sum-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Sum)))
  'Sum-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sum)))
  "Returns string type for a service object of type '<Sum>"
  "beginner_tutorials/Sum")