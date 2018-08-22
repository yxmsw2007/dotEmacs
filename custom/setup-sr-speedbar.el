;; sr-speedbar
(require 'sr-speedbar)

(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)
(setq sr-speedbar-width 20)
(setq sr-speedbar-auto-refresh t)
(setq sr-speedbar-right-side nil)
(setq speedbar-tag-hierarchy-method nil)

(global-set-key (kbd "<f2>") (lambda()
                               (interactive)
                               (sr-speedbar-toggle)))

(sr-speedbar-toggle)

(defun speedbar-directories-update ()
  "Make speedbar directories incremental update"
  (speedbar-refresh)
)

(add-hook 'after-save-hook 'speedbar-directories-update)