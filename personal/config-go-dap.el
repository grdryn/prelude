(require 'lsp-mode)
(use-package dap-mode :ensure t) ;; package contains the sub mode
(require 'dap-dlv-go)

(add-hook 'go-mode-hook #'lsp)
(setq dap-auto-configure-features '(sessions locals controls tooltip))
