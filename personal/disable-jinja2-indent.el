(add-hook 'jinja2-mode-hook
          (lambda ()
            (remove-hook 'after-save-hook 'jinja2-indent-buffer t)))
