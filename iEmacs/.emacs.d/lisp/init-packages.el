;; -*- coding: utf-8; lexical-binding: t; -*-

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
			  ;;smex
			  swiper
			  counsel
			  smartparens
			  exec-path-from-shell
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

(provide 'init-packages)
