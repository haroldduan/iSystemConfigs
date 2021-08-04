; -*- coding: utf-8; lexical-binding: t; -*-

(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("melpa" . "http://mirrors.bfsu.edu.cn/elpa/melpa/")
			      ("gnu" . "http://mirrors.bfsu.edu.cn/elpa/gnu/")
			      ("org" . "http://mirrors.bfsu.edu.cn/elpa/org/"))))

;; cl - Common Lisp Extension
(require 'cl)

 ;; Add Packages
(defvar harold/packages '(
			  evil
			  slime
			  ;; --- Auto-completion ---
			  company
			  ;; --- Better Editor ---
			  hungry-delete
			  ;; --- Themes ---
			  dracula-theme
			  ) "Default packages")

 (setq package-selected-packages harold/packages)

 (defun harold/packages-installed-p ()
     (loop for pkg in harold/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (harold/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg harold/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

;; Find Executable Path on OS X
;; (when (memq window-system '(mac ns))
   ;;(exec-path-from-shell-initialize))

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
