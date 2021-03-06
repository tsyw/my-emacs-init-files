;;package source and auto-install missing packages
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
                       hungry-delete
                       counsel
                       swiper
                       smartparens
                       exec-path-from-shell
                       cdlatex
                       popwin
                       reveal-in-osx-finder
                       expand-region
                       iedit
                       org-pomodoro
                       flycheck
                       which-key
                       window-numbering
                       spacemacs-theme
                       spaceline
                       nyan-mode
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

;;initial exec-path for macOS
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;packages required
(require 'cdlatex)
(require 'reveal-in-osx-finder)
(require 'iedit)
(require 'org-pomodoro)
(require 'spaceline-config)

;;window-numbering-mode
(window-numbering-mode 1)

;;which-key
(which-key-mode 1)

;;flycheck
(global-flycheck-mode t)

;;hungry delete
(global-hungry-delete-mode)

;;company mode as global setting
(global-company-mode t)

;;swiper ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;;yasnippet global mode
(yas-global-mode t)

;;smartparens
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
(sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)

;;popwin
(require 'popwin)
(popwin-mode 1)

(provide 'init-packages)
