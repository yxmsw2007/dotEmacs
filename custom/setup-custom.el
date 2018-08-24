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

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(defun open-custom-file()
  (interactive)
  (find-file "~/.emacs.d/custom/setup-custom.el"))
(defun open-general-file()
  (interactive)
  (find-file "~/.emacs.d/custom/setup-general.el"))

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

(require 'popwin)
(popwin-mode t)

;; undo-tree
(push '(" *undo-tree*" :width 0.3 :position right) popwin:special-display-config)

(provide 'setup-custom)
