;; https://www.masteringemacs.org/article/fuzzy-finding-emacs-instead-of-fzf

(defun ezf-default (filename)
  "EZF completion with your default completion system."
  (completing-read-multiple
   "Pick a Candidate: "
   (with-temp-buffer
     (insert-file-contents-literally filename nil)
     (string-lines (buffer-string) t))))

(defun ezf-helm (filename)
  "EZF completion with `helm'."
  ;; Uncomment if you want Helm to full screen.
  ;; (helm-set-local-variable 'helm-full-frame t)
  (helm :sources
        (helm-build-in-file-source "EZF Completion" filename
          :action (lambda (_) (helm-marked-candidates)))))

(defvar ezf-separators " "
  "Regexp of separators `ezf' should use to split a line.")

(defun ezf (filename &optional field completing-fn)
  "Wrapper that calls COMPLETION-FN with FILENAME.

Optionally split each line of string by `ezf-separators' if FIELD
is non-nil and return FIELD.

If COMPLETING-FN is nil default to `ezf-default'."
  (when-let (candidates (funcall (or completing-fn 'ezf-default) filename))
    (mapconcat (lambda (candidate)
                 (shell-quote-argument
                  (if field
                      (nth (1- field) (split-string candidate ezf-separators t " "))
                    candidate)))
               candidates
               " ")))
