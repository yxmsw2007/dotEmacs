(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(if (version< emacs-version "24.4")
    (require 'setup-ivy-counsel)
  (require 'setup-helm)
  (require 'setup-helm-gtags))
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)

;;(require 'setup-sr-speedbar)
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

;; company-c-headers
(add-to-list 'company-backends 'company-c-headers)

;; monokai-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/monokai-theme")
;; (setq molokai-theme-kit t)
(load-theme 'monokai t)

(setq monokai-height-minus-1 0.8
      monokai-height-plus-1 1.1
      monokai-height-plus-2 1.15
      monokai-height-plus-3 1.2
      monokai-height-plus-4 1.3)

;; function-args
;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" default)))
 '(package-selected-packages
   (quote
    (monokai-theme company-c-headers function-args sr-speedbar zygospore helm-gtags helm yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
