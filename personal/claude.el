;; https://github.com/yuya373/claude-code-emacs
(add-to-list 'load-path "/path/to/claude-code")
(require 'claude-code)
(global-set-key (kbd "C-c c") 'claude-code-transient)
