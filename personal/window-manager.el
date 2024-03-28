;; From masteringemacs.org article
;;
;; Treats manual buffer switching the same as programmatic switching.
(setq switch-to-buffer-obey-display-actions t)

(defun mp-split-below (arg)
  "Split windo below from the parent or from root with ARG."
  (interactive "P")
  (split-window (if arg (frame-root-window)
                  (window-parent (selected-window)))
                nil 'below nil))

(defun mp-toggle-window-dedication ()
  "Toggles window dedication in the selected window."
  (interactive)
  (set-window-dedicated-p (selected-window)
                          (not (window-dedicated-p (selected-window)))))
