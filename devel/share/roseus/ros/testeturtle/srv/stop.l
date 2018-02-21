;; Auto-generated. Do not edit!


(when (boundp 'testeturtle::stop)
  (if (not (find-package "TESTETURTLE"))
    (make-package "TESTETURTLE"))
  (shadow 'stop (find-package "TESTETURTLE")))
(unless (find-package "TESTETURTLE::STOP")
  (make-package "TESTETURTLE::STOP"))
(unless (find-package "TESTETURTLE::STOPREQUEST")
  (make-package "TESTETURTLE::STOPREQUEST"))
(unless (find-package "TESTETURTLE::STOPRESPONSE")
  (make-package "TESTETURTLE::STOPRESPONSE"))

(in-package "ROS")





(defclass testeturtle::stopRequest
  :super ros::object
  :slots ())

(defmethod testeturtle::stopRequest
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

(defclass testeturtle::stopResponse
  :super ros::object
  :slots (_stop ))

(defmethod testeturtle::stopResponse
  (:init
   (&key
    ((:stop __stop) 0)
    )
   (send-super :init)
   (setq _stop (round __stop))
   self)
  (:stop
   (&optional __stop)
   (if __stop (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; int64 _stop
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _stop
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stop (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stop) (= (length (_stop . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stop . bv) 0) 0) s)
              (write-long (ash (elt (_stop . bv) 1) -1) s))
             ((and (class _stop) (= (length (_stop . bv)) 1)) ;; big1
              (write-long (elt (_stop . bv) 0) s)
              (write-long (if (>= _stop 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stop s)(write-long (if (>= _stop 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _stop
#+(or :alpha :irix6 :x86_64)
      (setf _stop (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stop (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass testeturtle::stop
  :super ros::object
  :slots ())

(setf (get testeturtle::stop :md5sum-) "839f326c2e6df1e173665bdc360e82bd")
(setf (get testeturtle::stop :datatype-) "testeturtle/stop")
(setf (get testeturtle::stop :request) testeturtle::stopRequest)
(setf (get testeturtle::stop :response) testeturtle::stopResponse)

(defmethod testeturtle::stopRequest
  (:response () (instance testeturtle::stopResponse :init)))

(setf (get testeturtle::stopRequest :md5sum-) "839f326c2e6df1e173665bdc360e82bd")
(setf (get testeturtle::stopRequest :datatype-) "testeturtle/stopRequest")
(setf (get testeturtle::stopRequest :definition-)
      "---
int64 stop

")

(setf (get testeturtle::stopResponse :md5sum-) "839f326c2e6df1e173665bdc360e82bd")
(setf (get testeturtle::stopResponse :datatype-) "testeturtle/stopResponse")
(setf (get testeturtle::stopResponse :definition-)
      "---
int64 stop

")



(provide :testeturtle/stop "839f326c2e6df1e173665bdc360e82bd")


