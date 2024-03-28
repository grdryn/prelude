(require 'org-capture)

(global-set-key "\C-ca" 'org-agenda)
(global-set-key (kbd "<f6>") 'org-capture)

(defun my/copy-id-to-clipboard() "Copy the ID property value
to killring, if no ID is there then create a new unique ID.
This function works only in org-mode buffers.
The purpose of this function is to easily construct id:-links to
org-mode items. If its assigned to a key it saves you marking the
text and copying to the killring."
       (interactive)
       (when (eq major-mode 'org-mode) ; do this only in org-mode buffers
         (setq mytmpid (funcall 'org-id-get-create))
         (kill-new mytmpid)
         (message "Copied %s to killring (clipboard)" mytmpid)
         ))
(global-set-key (kbd "<f5>") 'my/copy-id-to-clipboard)


(defun org-focus-private() "Set focus on private things."
       (interactive)
       (setq org-agenda-files '("~/org/private.org")))

(defun org-focus-work() "Set focus on work things."
       (interactive)
       (setq org-agenda-files '("~/org/work.org")))

(defun org-focus-all() "Set focus on all things."
       (interactive)
       (setq org-agenda-files '("~/org/work.org"
                                "~/org/private.org")))

(defun org-reset-checkbox-state-maybe ()
  "Reset all checkboxes in an entry if the `RESET_CHECK_BOXES' property is set"
  (interactive "*")
  (if (org-entry-get (point) "RESET_CHECK_BOXES")
      (org-reset-checkbox-state-subtree)))

(defun org-checklist ()
  (when (member org-state org-done-keywords) ;; org-state dynamically bound in org.el/org-todo
    (org-reset-checkbox-state-maybe)))

(add-hook 'org-after-todo-state-change-hook 'org-checklist)

;; set up for org-protocol capture stuff
;; https://orgmode.org/worg/org-contrib/org-protocol.html
;; https://github.com/sprig/org-capture-extension
(server-start)
(require 'org-protocol)

(defun transform-square-brackets-to-round-ones(string-to-transform)
  "Transforms [ into ( and ] into ), other chars left unchanged."
  (concat
   (mapcar #'(lambda (c) (if (equal c ?\[) ?\( (if (equal c ?\]) ?\) c))) string-to-transform))
  )
