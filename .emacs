;;emacs参数
;; -nw 不使用图形界面 -no-window
;; -q  不加载配置文件
;; --debug-init
;; The configure if for backup
;;------------------------------------->
(add-to-list 'load-path "~/.emacs.d/setup")
(load "init.el")
(add-to-list 'load-path "~/.emacs.d/install")
(require 'color-theme)
(color-theme-initialize)
;(color-theme-euphoria)
;;--------------------------------------<
;
;;;; 添加Emacs搜索路径
(add-to-list 'load-path "~/_emacs")
(add-to-list 'load-path "~/.emacs.d/install/ecb-2.40")
(add-to-list 'load-path "~/_emacs/codepilot")
(add-to-list 'load-path "~/_emacs/emacs-eclim")
(add-to-list 'load-path "~/_emacs/icicles")
(add-to-list 'load-path "~/_emacs/gnuserv")
;
;;;模板功能
;(add-to-list 'load-path "~/.emacs.d/install/yasnippet-0.6.1c")
;(yas/load-directory "~/.emacs.d/install/yasnippet-0.6.1c/snippets/")
;(require 'yasnippet)
;(yas/initialize)

;;;自动补全
(add-to-list 'load-path "~/.emacs.d/setup/alpa/auto-complete-20160329.2323")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/setup/alpa/auto-complete-20160329.2323/dict")
;(ac-config-default)
;
;;;;;读取脚本
(load "base.el")
;(load "cyexpand.el")
;(load "cykbd.el")
;(load "addon.el")

;;;为了编程的配置
(load "cycode.el")
 
;;;ecb自动添加===============================================================
;(custom-set-variables
;  ;; custom-set-variables was added by Custom.
;  ;; If you edit it by hand, you could mess it up, so be careful.
;  ;; Your init file should contain only one such instance.
;  ;; If there is more than one, they won't work right.
; '(ecb-options-version "2.40"))
;(custom-set-faces
;  ;; custom-set-faces was added by Custom.
;  ;; If you edit it by hand, you could mess it up, so be careful.
;  ;; Your init file should contain only one such instance.
;  ;; If there is more than one, they won't work right.
; )
; 
;;;ecb自动添加结束============================================================
;(global-linum-mode t)
(require 'auto-yasnippet)
(yas-load-directory "~/.emacs.d/setup/elpa/yasnippet-20160403.830/snippets")
;(yas-global-mode t)
(global-set-key (kbd "H-w") #'aya-create)
(global-set-key (kbd "H-y") #'aya-expand)
