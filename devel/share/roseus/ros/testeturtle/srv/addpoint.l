;; Auto-generated. Do not edit!


(when (boundp 'testeturtle::addpoint)
  (if (not (find-package "TESTETURTLE"))
    (make-package "TESTETURTLE"))
  (shadow 'addpoint (find-package "TESTETURTLE")))
(unless (find-package "TESTETURTLE::ADDPOINT")
  (make-package "TESTETURTLE::ADDPOINT"))
(unless (find-package "TESTETURTLE::ADDPOINTREQUEST")
  (make-package "TESTETURTLE::ADDPOINTREQUEST"))
(unless (find-package "TESTETURTLE::ADDPOINTRESPONSE")
  (make-package "TESTETURTLE::ADDPOINTRESPONSE"))

(in-package "ROS")





(defclass testeturtle::addpointRequest
  :super ros::object
  :slots (_xf _yf ))

(defmethod testeturtle::addpointRequest
  (:init
   (&key
    ((:xf __xf) 0)
    ((:yf __yf) 0)
    )
   (send-super :init)
   (setq _xf (round __xf))
   (setq _yf (round __yf))
   self)
  (:xf
   (&optional __xf)
   (if __xf (setq _xf __xf)) _xf)
  (:yf
   (&optional __yf)
   (if __yf (setq _yf __yf)) _yf)
  (:serialization-length
   ()
   (+
    ;; int64 _xf
    8
    ;; int64 _yf
    8
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
   ;;
   self)
  )

(defclass testeturtle::addpointResponse
  :super ros::object
  :slots (_sum ))

(defmethod testeturtle::addpointResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass testeturtle::addpoint
  :super ros::object
  :slots ())

(setf (get testeturtle::addpoint :md5sum-) "44836338e0a1e7646be09f64ff13a545")
(setf (get testeturtle::addpoint :datatype-) "testeturtle/addpoint")
(setf (get testeturtle::addpoint :request) testeturtle::addpointRequest)
(setf (get testeturtle::addpoint :response) testeturtle::addpointResponse)

(defmethod testeturtle::addpointRequest
  (:response () (instance testeturtle::addpointResponse :init)))

(setf (get testeturtle::addpointRequest :md5sum-) "44836338e0a1e7646be09f64ff13a545")
(setf (get testeturtle::addpointRequest :datatype-) "testeturtle/addpointRequest")
(setf (get testeturtle::addpointRequest :definition-)
      "int64 xf
int64 yf
---
int64 sum

")

(setf (get testeturtle::addpointResponse :md5sum-) "44836338e0a1e7646be09f64ff13a545")
(setf (get testeturtle::addpointResponse :datatype-) "testeturtle/addpointResponse")
(setf (get testeturtle::addpointResponse :definition-)
      "int64 xf
int64 yf
---
int64 sum

")



(provide :testeturtle/addpoint "44836338e0a1e7646be09f64ff13a545")


