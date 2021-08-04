; -*- coding: utf-8; lexical-binding: t; -*-

;; set package-archives mirrors
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

;; tool bar close
(tool-bar-mode -1)

;; scroll bar close
(scroll-bar-mode -1)

;; show line number
(global-linum-mode t)

;; highlight current line
(global-hl-line-mode t)

;; cursor type
(setq cursor-type 'bar)

;; close help screen
(setq inhibit-splash-screen t)

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
(global-company-mode t)

;; close backup-files settings
(setq make-backup-files nil)

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; default fullscreen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; show paren mode
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; enable evil
(require 'evil)
(evil-mode 1)

;; lisp settings
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(require 'slime-autoloads)
