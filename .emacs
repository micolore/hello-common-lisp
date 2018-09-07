(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(add-to-list (quote custom-theme-load-path) t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

(custom-set-faces
   ;; custom-set-faces was added by Custom.
    ;; If you edit it by hand, you could mess it up, so be careful.
     ;; Your init file should contain only one such instance.
      ;; If there is more than one, they won't work right.
       )
 
;;;;slime configure
(setq inferior-lisp-program "/usr/local/bin/sbcl");设置优先使用哪种Common Lisp实现
(add-to-list 'load-path "~/.emacs.d/slime");设置Slime路径
(require 'slime)
(slime-setup)
(require 'slime-autoloads)
(slime-setup '(slime-fancy slime-banner))
;;显示行号
(setq c-basic-offset 4)
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

;; 显示日期时间
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;(setq display-time-use-mail-icon t)
(setq display-time-interval 10)
(display-time)

;; 给每行显示行号: http://stud4.tuwien.ac.at/~e0225855/linum/linum.html
(require 'linum)
(global-linum-mode t)

;; F3：切换到shell模式
(global-set-key [(f3)] 'ansi-term)

;; 颜色主题: http://download.gna.org/color-theme/
;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-midnight)
;;(add-to-list 'custom-theme-load-path "/usr/local/theme/dracula-theme/")
;;(load-theme 'dracula t)

;; 设置让光标指到某个括号与它匹配的括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 高亮显示选择区域
(setq transient-mark-mode t)

;; 禁用启动信息
(setq inhibit-startup-message t)

;; 不生成备份文件
(setq make-backup-files nil)

;; 设置光标颜色
(set-face-background 'cursor "red")
