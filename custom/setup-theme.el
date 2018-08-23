;; monokai-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/monokai-theme")
;; (setq molokai-theme-kit t)
(load-theme 'monokai t)

(setq monokai-height-minus-1 0.8
      monokai-height-plus-1 1.1
      monokai-height-plus-2 1.15
      monokai-height-plus-3 1.2
      monokai-height-plus-4 1.3)

(provide 'setup-theme)
