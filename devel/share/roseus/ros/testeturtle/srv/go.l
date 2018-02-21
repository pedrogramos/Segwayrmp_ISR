;; Auto-generated. Do not edit!


(when (boundp 'testeturtle::go)
  (if (not (find-package "TESTETURTLE"))
    (make-package "TESTETURTLE"))
  (shadow 'go (find-package "TESTETURTLE")))
(unless (find-package "TESTETURTLE::GO")
  (make-package "TESTETURTLE::GO"))
(unless (find-package "TESTETURTLE::GOREQUEST")
  (make-package "TESTETURTLE::GOREQUEST"))
(unless (find-package "TESTETURTLE::GORESPONSE")
  (make-package "TESTETURTLE::GORESPONSE"))

(in-package "ROS")





(defclass testeturtle::goRequest
  :super ros::object
  :slots ())

(defmethod testeturtle::goRequest
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

(defclass testeturtle::goResponse
  :super ros::object
  :slots (_var ))

(defmethod testeturtle::goResponse
  (:init
   (&key
    ((:var __var) 0)
    )
   (send-super :init)
   (setq _var (round __var))
   self)
  (:var
   (&optional __var)
   (if __var (setq _var __var)) _var)
  (:serialization-length
   ()
   (+
    ;; int64 _var
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _var
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _var (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _var) (= (length (_var . bv)) 2)) ;; bignum
              (write-long (ash (elt (_var . bv) 0) 0) s)
              (write-long (ash (elt (_var . bv) 1) -1) s))
             ((and (class _var) (= (length (_var . bv)) 1)) ;; big1
              (write-long (elt (_var . bv) 0) s)
              (write-long (if (>= _var 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _var s)(write-long (if (>= _var 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _var
#+(or :alpha :irix6 :x86_64)
      (setf _var (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _var (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass testeturtle::go
  :super ros::object
  :slots ())

(setf (get testeturtle::go :md5sum-) "9559ec07ba73a7e45bf3354138657b84")
(setf (get testeturtle::go :datatype-) "testeturtle/go")
(setf (get testeturtle::go :request) testeturtle::goRequest)
(setf (get testeturtle::go :response) testeturtle::goResponse)

(defmethod testeturtle::goRequest
  (:response () (instance testeturtle::goResponse :init)))

(setf (get testeturtle::goRequest :md5sum-) "9559ec07ba73a7e45bf3354138657b84")
(setf (get testeturtle::goRequest :datatype-) "testeturtle/goRequest")
(setf (get testeturtle::goRequest :definition-)
      "---
int64 var

")

(setf (get testeturtle::goResponse :md5sum-) "9559ec07ba73a7e45bf3354138657b84")
(setf (get testeturtle::goResponse :datatype-) "testeturtle/goResponse")
(setf (get testeturtle::goResponse :definition-)
      "---
int64 var

")



(provide :testeturtle/go "9559ec07ba73a7e45bf3354138657b84")


