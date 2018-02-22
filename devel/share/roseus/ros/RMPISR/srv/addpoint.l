;; Auto-generated. Do not edit!


(when (boundp 'RMPISR::addpoint)
  (if (not (find-package "RMPISR"))
    (make-package "RMPISR"))
  (shadow 'addpoint (find-package "RMPISR")))
(unless (find-package "RMPISR::ADDPOINT")
  (make-package "RMPISR::ADDPOINT"))
(unless (find-package "RMPISR::ADDPOINTREQUEST")
  (make-package "RMPISR::ADDPOINTREQUEST"))
(unless (find-package "RMPISR::ADDPOINTRESPONSE")
  (make-package "RMPISR::ADDPOINTRESPONSE"))

(in-package "ROS")





(defclass RMPISR::addpointRequest
  :super ros::object
  :slots (_xf _yf _type ))

(defmethod RMPISR::addpointRequest
  (:init
   (&key
    ((:xf __xf) 0)
    ((:yf __yf) 0)
    ((:type __type) nil)
    )
   (send-super :init)
   (setq _xf (round __xf))
   (setq _yf (round __yf))
   (setq _type __type)
   self)
  (:xf
   (&optional __xf)
   (if __xf (setq _xf __xf)) _xf)
  (:yf
   (&optional __yf)
   (if __yf (setq _yf __yf)) _yf)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int64 _xf
    8
    ;; int64 _yf
    8
    ;; bool _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _xf
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _xf (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _xf) (= (length (_xf . bv)) 2)) ;; bignum
              (write-long (ash (elt (_xf . bv) 0) 0) s)
              (write-long (ash (elt (_xf . bv) 1) -1) s))
             ((and (class _xf) (= (length (_xf . bv)) 1)) ;; big1
              (write-long (elt (_xf . bv) 0) s)
              (write-long (if (>= _xf 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _xf s)(write-long (if (>= _xf 0) 0 #xffffffff) s)))
     ;; int64 _yf
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _yf (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _yf) (= (length (_yf . bv)) 2)) ;; bignum
              (write-long (ash (elt (_yf . bv) 0) 0) s)
              (write-long (ash (elt (_yf . bv) 1) -1) s))
             ((and (class _yf) (= (length (_yf . bv)) 1)) ;; big1
              (write-long (elt (_yf . bv) 0) s)
              (write-long (if (>= _yf 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _yf s)(write-long (if (>= _yf 0) 0 #xffffffff) s)))
     ;; bool _type
       (if _type (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _xf
#+(or :alpha :irix6 :x86_64)
      (setf _xf (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _xf (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _yf
#+(or :alpha :irix6 :x86_64)
      (setf _yf (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _yf (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _type
     (setq _type (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass RMPISR::addpointResponse
  :super ros::object
  :slots ())

(defmethod RMPISR::addpointResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass RMPISR::addpoint
  :super ros::object
  :slots ())

(setf (get RMPISR::addpoint :md5sum-) "4e6a9d759cb716b8e70b6066a387ed42")
(setf (get RMPISR::addpoint :datatype-) "RMPISR/addpoint")
(setf (get RMPISR::addpoint :request) RMPISR::addpointRequest)
(setf (get RMPISR::addpoint :response) RMPISR::addpointResponse)

(defmethod RMPISR::addpointRequest
  (:response () (instance RMPISR::addpointResponse :init)))

(setf (get RMPISR::addpointRequest :md5sum-) "4e6a9d759cb716b8e70b6066a387ed42")
(setf (get RMPISR::addpointRequest :datatype-) "RMPISR/addpointRequest")
(setf (get RMPISR::addpointRequest :definition-)
      "int64 xf
int64 yf
bool type
---

")

(setf (get RMPISR::addpointResponse :md5sum-) "4e6a9d759cb716b8e70b6066a387ed42")
(setf (get RMPISR::addpointResponse :datatype-) "RMPISR/addpointResponse")
(setf (get RMPISR::addpointResponse :definition-)
      "int64 xf
int64 yf
bool type
---

")



(provide :RMPISR/addpoint "4e6a9d759cb716b8e70b6066a387ed42")


