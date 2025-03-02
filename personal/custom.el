(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(completions-format 'horizontal)
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("f366d4bc6d14dcac2963d45df51956b2409a15b770ec2f6d730e73ce0ca5c8a7" default))
 '(delete-selection-mode nil)
 '(diary-list-entries-hook '(diary-include-other-diary-files diary-sort-entries))
 '(forge-alist
   '(("github.com" "api.github.com" "github.com" forge-github-repository)
     ("gitlab.com" "gitlab.com/api/v4" "gitlab.com" forge-gitlab-repository)
     ("salsa.debian.org" "salsa.debian.org/api/v4" "salsa.debian.org" forge-gitlab-repository)
     ("framagit.org" "framagit.org/api/v4" "framagit.org" forge-gitlab-repository)
     ("gitlab.gnome.org" "gitlab.gnome.org/api/v4" "gitlab.gnome.org" forge-gitlab-repository)
     ("gitlab.cee.redhat.com" "gitlab.cee.redhat.com/api/v4" "gitlab.cee.redhat.com" forge-gitlab-repository)
     ("codeberg.org" "codeberg.org/api/v1" "codeberg.org" forge-gitea-repository)
     ("code.orgmode.org" "code.orgmode.org/api/v1" "code.orgmode.org" forge-gogs-repository)
     ("bitbucket.org" "api.bitbucket.org/2.0" "bitbucket.org" forge-bitbucket-repository)
     ("git.savannah.gnu.org" nil "git.savannah.gnu.org" forge-cgit**-repository)
     ("git.kernel.org" nil "git.kernel.org" forge-cgit-repository)
     ("repo.or.cz" nil "repo.or.cz" forge-repoorcz-repository)
     ("git.suckless.org" nil "git.suckless.org" forge-stagit-repository)
     ("git.sr.ht" nil "git.sr.ht" forge-srht-repository)))
 '(geiser-default-implementation 'racket)
 '(js-indent-level 2)
 '(lsp-java-autobuild-enabled nil)
 '(org-agenda-custom-commands
   '(("A" . "Agendas")
     ("AT" "Daily overview"
      ((tags-todo "URGENT"
                  ((org-agenda-overriding-header "Urgent Tasks")))
       (tags-todo "RADAR"
                  ((org-agenda-overriding-header "On my radar")))
       (tags-todo "PHONE+TODO=\"NEXT\""
                  ((org-agenda-overriding-header "Phone Calls")))
       (tags-todo "Depth=\"Deep\"/NEXT"
                  ((org-agenda-overriding-header "Next Actions requiring deep work")))
       (agenda ""
               ((org-agenda-overriding-header "Today")
                (org-agenda-span 1)
                (org-agenda-sorting-strategy
                 '(time-up priority-down))))
       nil nil))
     ("AW" "Weekly overview" agenda ""
      ((org-agenda-overriding-header "Weekly overview")))
     ("AM" "Monthly overview" agenda ""
      ((org-agenda-overriding-header "Monthly overview")
       (org-agenda-span 'month)
       (org-deadline-warning-days 0)
       (org-agenda-sorting-strategy
        '(time-up priority-down tag-up))))
     ("W" . "Weekly Review Helper")
     ("Wn" "New tasks" tags "NEW"
      ((org-agenda-overriding-header "NEW Tasks")))
     ("Wd" "Check DELEGATED tasks" todo "DELEGATED"
      ((org-agenda-overriding-header "DELEGATED tasks")))
     ("Ww" "Check WAITING tasks" todo "WAITING"
      ((org-agenda-overriding-header "WAITING tasks")))
     ("Ws" "Check SOMEDAY tasks" todo "SOMEDAY"
      ((org-agenda-overriding-header "SOMEDAY tasks")))
     ("Wf" "Check finished tasks" todo "DONE|CANCELLED|FORWARDED"
      ((org-agenda-overriding-header "Finished tasks")))
     ("WP" "Planning TODOs (unscheduled) only" todo "TODO|NEXT"
      ((org-agenda-overriding-header "Planning overview")
       (org-agenda-skip-function
        '(org-agenda-skip-entry-if 'scheduled 'deadline))))))
 '(org-agenda-files '("~/org/personal.org" "~/org/work.org"))
 '(org-agenda-include-diary t)
 '(org-attach-use-inheritance t)
 '(org-capture-templates
   '(("G" "Define a goal" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/goal.template")
      :empty-lines-after 2)
     ("N" "NEXT entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/next.template")
      :empty-lines-before 1)
     ("T" "TODO entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/todo.template")
      :empty-lines-before 1)
     ("W" "WAITING entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/waiting.template")
      :empty-lines-before 1)
     ("S" "SOMEDAY entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/someday.template")
      :empty-lines-before 1)
     ("P" "PROJ entry" entry
      (file+headline "~/org/capture.org" "Capture")
      (file "~/org/proj.template")
      :empty-lines-before 1)
     ("B" "Book list" entry
      (file+headline "~/org/personal.org" "Reading list")
      (file "~/org/book.template")
      :empty-lines-after 2)
     ("t" "TV watch list" entry
      (file+headline "~/org/personal.org" "Watch list")
      (file "~/org/tv.template")
      :empty-lines-after 2)
     ("f" "Film watch list" entry
      (file+headline "~/org/personal.org" "Watch list")
      (file "~/org/film.template")
      :empty-lines-after 2)
     ("p" "Create a daily plan")
     ("pP" "Daily plan personal" plain
      (file+olp+datetree "~/org/plan-free.org")
      (file "~/org/tpl-dailyplan.txt")
      :immediate-finish t)
     ("pW" "Daily plan work" plain
      (file+olp+datetree "~/org/plan-work.org")
      (file "~/org/tpl-dailyplan.txt")
      :immediate-finish t)
     ("j" "Journal entry")
     ("jP" "Journal entry personal" entry
      (file+olp+datetree "~/org/journal-personal.org")
      "** %^{Heading}")
     ("jW" "Journal entry work " entry
      (file+olp+datetree "~/org/journal-work.org")
      "** %^{Heading}")
     ("c" "Protocol" entry
      (file+headline "~/org/capture.org" "Inbox")
      "* %^{Title}\12Source: %u, [[%:link][%:description]]\12\12#+BEGIN_QUOTE\12%i\12#+END_QUOTE\12\12%?")
     ("L" "Protocol Link" entry
      (file+headline "~/org/capture.org" "Inbox")
      "* %?[[%:link][%(transform-square-brackets-to-round-ones \"%:description\")]]\12Captured On: %U")))
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-export-backends '(ascii beamer html icalendar latex odt))
 '(org-log-into-drawer "LOGBOOK")
 '(org-log-reschedule 'time)
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
 '(org-publish-project-alist
   '(("web" :base-directory "~/web/" :publishing-directory "~/public_html" :publishing-function org-html-publish-to-html :section-numbers nil :with-toc nil)))
 '(org-refile-allow-creating-parent-nodes 'confirm)
 '(org-refile-targets '((org-agenda-files :maxlevel . 2)))
 '(org-refile-use-outline-path 'file)
 '(org-track-ordered-property-with-tag t)
 '(org-use-property-inheritance t)
 '(package-selected-packages
   '(protobuf-mode vertico nix-mode helm-rg helm-lsp forge emacsql-sqlite poly-erb keycast lsp-metals fira-code-mode dhall-mode csv-mode pcap-mode transient scala-mode cython-mode lsp-python-ms lsp-java ron-mode lsp-ui company-lsp nlinum ag zop-to-char zenburn-theme yari which-key web-mode volatile-highlights undo-tree tide super-save smartrep smartparens scss-mode rainbow-mode rainbow-delimiters poly-ansible pinentry operate-on-number move-text json-mode js2-mode inf-ruby imenu-anywhere hl-todo helm-projectile helm-descbinds helm-ag haskell-mode guru-mode groovy-mode gotest golint go-snippets go-projectile gnu-elpa-keyring-update git-timemachine gist geiser flycheck-rust expand-region exec-path-from-shell elisp-slime-nav editorconfig easy-kill dockerfile-mode discover-my-major diminish diff-hl dap-mode crux counsel company-go company-ansible company-anaconda cargo browse-kill-ring beacon archive-rpm anzu ansible-vault adoc-mode))
 '(pcap-mode-tshark-executable "/var/run/host/bin/tshark"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#3F3F3F" :foreground "#DCDCCC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 98 :width normal :foundry "CTDB" :family "Fira Code")))))
