(defun base64-encode-region-prefix-arg (&rest _args)
  "Pass prefix arg as third arg to `base64-encode-region'."
  (interactive "r\nP"))

(advice-add 'base64-encode-region :before #'base64-encode-region-prefix-arg)
