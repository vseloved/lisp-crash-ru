(in-package :lang-detect)

(defparameter *raw* ())

(defclass ld-sax (sax:sax-parser-mixin)
  ((ready :accessor sax-ready :initform nil)))

(defmethod sax:start-document ((sax ld-sax))
  (setf *raw* nil))

(defmethod sax:start-element ((sax ld-sax)
                              namespace-uri local-name qname attributes)
  (when (string= "text" local-name)
    (setf (sax-ready sax) t)))

(defmethod sax:characters ((sax ld-sax) data)
  (when (sax-ready sax)
    (dolist (line (rutil:split #\Newline data :remove-empty-subseqs t))
      (when (and (rutil:starts-with "#" line)
                 (> (length line) 2))
        (push (subseq line 1) *raw*)))))

(defmethod sax:end-element ((sax ld-sax)
                            namespace-uri local-name qname)
  (when (string= "text" local-name)
    (setf (sax-ready sax) nil)))

(defmethod sax:end-document ((sax ld-sax))
  )

(defun split-words (line)
  (cl-ppcre:all-matches-as-strings "\\w+" line))

(defun calc-stats (lines)
  (let ((rez (make-hash-table :test 'equal)))
    (dolist (line lines)
      (dolist (word (split-words line))
        (incf (gethash word rez 0))))
    rez))

(defparameter *langs* '(:ru :uk))

(defparameter *freqs* (make-hash-table))
(defparameter *totals* (make-hash-table))

(defun word-prob (lang word)
  (float
   (/ (gethash word (gethash lang *freqs*
                             (make-hash-table))
               0)
      (gethash lang *totals*))))

;; (setf (gethash :ru *freqs*) (calc-stats *ru*))
;; (setf (gethash :uk *freqs*) (calc-stats *uk*))
;; (dolist (lang *langs*)
;;   (let ((total 0))
;;     (rutil:dotable (_ freq (gethash lang *freqs*))
;;       (incf total freq))
;;       (setf (gethash lang *totals*) total)))

(defun detect-lang (text)
  (let ((words (split-words text))
        (rez (make-hash-table))
        (max 0)
        argmax)
    (dolist (lang *langs*)
      (let ((freqs (gethash lang *freqs*))
            (total (gethash lang *totals*))
            (prob 1))
        (dolist (word words)
          (let ((freq (gethash word freqs 0)))
            (setf prob (* prob (/ (+ 1 freq) total)))))
        (setf (gethash lang rez) prob)))
    (rutil:dotable (lang prob rez)
      (when (> prob max)
        (setf max prob
              argmax lang)))
    (values argma
            rez)))
