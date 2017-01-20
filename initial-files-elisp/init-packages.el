(require 'package) 
(add-to-list 'package-archives
             '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))
(package-initialize)
(require 'cl)
(defvar tsyw/packages '(
                       company
                       yasnippet
                       org
                       auctex
                       monokai-theme
                       hungry-delete
                       counsel
                       swiper
                       smartparens
                       js2-mode
                       exec-path-from-shell
                       cdlatex
                       ) "Default packages")
(setq package-selected-packages tsyw/packages)
(defun tsyw/packages-installed-p ()
  (loop for pkg in tsyw/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))
(unless (tsyw/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg tsyw/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(require 'cdlatex)
(require 'hungry-delete)

(provide 'init-packages)