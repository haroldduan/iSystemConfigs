; -*- coding: utf-8; lexical-binding: t; -*-

;; set package-archives mirrors
;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '(("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
				 ;;("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
				 ;;("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")) t)
(setq package-archives '(("melpa" . "http://mirrors.bfsu.edu.cn/elpa/melpa/")
                         ("gnu" . "http://mirrors.bfsu.edu.cn/elpa/gnu/")
                         ("org" . "http://mirrors.bfsu.edu.cn/elpa/org/")))

(setq package-check-signature nil)

(require 'package)
;; initialize the packages, avoiding a re-initialization
(unless (bound-and-true-p package--initialized) ;; To avoid warnings on 27
  (setq package-enable-at-startup nil)
  (package-initialize))

(unless package-archive-contents
  (package-refresh-contents))

;; settings for use-package package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;;(package-initialize)
;;(package-refresh-contents)

;; show line number
(global-linum-mode 1)

;; cursor type
(setq cursor-type 'bar)

;; close help screen
(setq inhibit-splash-screen 1)

;; indenet mode
(electric-indent-mode -1)

;; theme settings
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

;; open init file
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; open init file keyboard bindings
(global-set-key (kbd "<f2>") 'open-init-file)

;; company-mode glbal settings
(global-company-mode 1)

;; close backup-files settings
(setq make-backup-files nil)

;; highlight current line
(global-hl-line-mode 1)

;; enable evil
(require 'evil)
(evil-mode 1)

;; lisp settings
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(require 'slime-autoloads)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package slime magit evil dracula-theme company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
