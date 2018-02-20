;; Auto-generated. Do not edit!


(when (boundp 'testeturtle::talk)
  (if (not (find-package "TESTETURTLE"))
    (make-package "TESTETURTLE"))
  (shadow 'talk (find-package "TESTETURTLE")))
(unless (find-package "TESTETURTLE::TALK")
  (make-package "TESTETURTLE::TALK"))
(unless (find-package "TESTETURTLE::TALKREQUEST")
  (make-package "TESTETURTLE::TALKREQUEST"))
(unless (find-package "TESTETURTLE::TALKRESPONSE")
  (make-package "TESTETURTLE::TALKRESPONSE"))

(in-package "ROS")





(defclass testeturtle::talkRequest
  :super ros::object
  :slots ())

(defmethod testeturtle::talkRequest
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

(defclass testeturtle::talkResponse
  :super ros::object
  :slots (_val ))

(defmethod testeturtle::talkResponse
  (:init
   (&key
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _val (round __val))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int64 _val
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _val
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _val (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _val) (= (length (_val . bv)) 2)) ;; bignum
              (write-long (ash (elt (_val . bv) 0) 0) s)
              (write-long (ash (elt (_val . bv) 1) -1) s))
             ((and (class _val) (= (length (_val . bv)) 1)) ;; big1
              (write-long (elt (_val . bv) 0) s)
              (write-long (if (>= _val 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _val s)(write-long (if (>= _val 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _val
#+(or :alpha :irix6 :x86_64)
      (setf _val (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _val (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass testeturtle::talk
  :super ros::object
  :slots ())

(setf (get testeturtle::talk :md5sum-) "58ba147ce3095b36344060f1e5dd0b05")
(setf (get testeturtle::talk :datatype-) "testeturtle/talk")
(setf (get testeturtle::talk :request) testeturtle::talkRequest)
(setf (get testeturtle::talk :response) testeturtle::talkResponse)

(defmethod testeturtle::talkRequest
  (:response () (instance testeturtle::talkResponse :init)))

(setf (get testeturtle::talkRequest :md5sum-) "58ba147ce3095b36344060f1e5dd0b05")
(setf (get testeturtle::talkRequest :datatype-) "testeturtle/talkRequest")
(setf (get testeturtle::talkRequest :definition-)
      "---
int64 val

")

(setf (get testeturtle::talkResponse :md5sum-) "58ba147ce3095b36344060f1e5dd0b05")
(setf (get testeturtle::talkResponse :datatype-) "testeturtle/talkResponse")
(setf (get testeturtle::talkResponse :definition-)
      "---
int64 val

")



(provide :testeturtle/talk "58ba147ce3095b36344060f1e5dd0b05")


