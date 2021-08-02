;; -*- coding: utf-8; lexical-binding: t; -*-

;; set package-archives mirrors
(require 'package)
(add-to-list 'package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
                         ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")) t)
(package-initialize)
(package-refresh-contents)

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
