;;定义变量
(defconst emacs-path "~/.emacs.d")
(defconst application-path "/cygdrive/e/Application")
(defconst smart-diag-path "/cygdrive/e/SmartDiag")

;;定义函数
(defun goto-emacs-dir ()
  (interactive)
  (dired emacs-path))
(defun goto-app-dir ()
  (interactive)
  (dired application-path))
(defun goto-smart-diag-dir ()
  (interactive)
  (dired smart-diag-path))

;;定义快捷键
;;(define-key-list
;;  global-map
;;  `(("C-x G p" goto-app-dir))))


(define-key c-mode-map  [(tab)] 'company-complete)
(define-key c++-mode-map  [(tab)] 'company-complete)

;; company-c-headers
(add-to-list 'company-backends 'company-c-headers)
;;(add-to-list 'company-c-headers-path-system "/usr/include/c++/v1")

;; Semantic
;;(semantic-add-system-include "/usr/include/boost" 'c++-mode)
;;(semantic-add-system-include "~/linux/kernel")
;;(semantic-add-system-include "~/linux/include")

(provide 'setup-custom)
