;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You might already have this line

;;initial files' directory setting

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/initial-files-elisp")

;;initial files
(require 'init-packages)

;;initial exec-path for macOS
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;org-agenda files' directory
(setq org-agenda-files '("~/工作/gtd"))
(global-set-key (kbd "C-c a") 'org-agenda)

;;common settings
(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(global-linum-mode t)
(global-company-mode t)
(scroll-bar-mode -1)
(delete-selection-mode 1)
(global-hl-line-mode 1)
(load-theme 'monokai t)
(global-hungry-delete-mode)
(global-auto-revert-mode t)

;;swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)

;;smartparens
(smartparens-global-mode t)

;;js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))

;;recent files
(recentf-mode t)
(setq recentf-max-menu-items 20)
(global-set-key (kbd "<f7>") 'recentf-open-files)

;;tex settings
(setq TeX-fold-env-spec-list
      (quote (("[figure]" ("figure"))
              ("[table]" ("table"))
              ("[itemize]" ("itemize"))
              ("[overpic]" ("overpic")))))

;;auto settings
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-mode-hook
   (quote
    (LaTeX-math-mode outline-minor-mode turn-on-reftex turn-on-cdlatex)))
 '(TeX-PDF-mode nil)
 '(TeX-fold-auto t)
 '(add-hook (quote LaTeX-mode-hook) t)
 '(c-basic-offset 4)
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1)
 '(cursor-type (quote bar))
 '(custom-buffer-indent 4)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(initial-scratch-message nil)
 '(make-backup-files nil)
 '(org-babel-load-languages
   (quote
    ((emacs-lisp . t)
     (C . t)
     (python . t)
     (shell . t)
     (matlab . t)
     (latex . t))))
 '(org-babel-no-eval-on-ctrl-c-ctrl-c nil)
 '(org-highlight-latex-and-related (quote (latex script entities)))
 '(org-latex-classes
   (quote
    (("article" "\\documentclass[11pt]{ctexart}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
      ("\\paragraph{%s}" . "\\paragraph*{%s}")
      ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
     ("report" "\\documentclass[11pt]{ctexrep}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
     ("book" "\\documentclass[11pt]{ctexbook}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))))
 '(org-latex-compiler "xelatex")
 '(preview-image-type (quote png))
 '(reftex-allow-automatic-rescan t)
 '(reftex-enable-partial-scans t)
 '(reftex-plug-into-AUCTeX t)
 '(reftex-save-parse-info t)
 '(reftex-use-multiple-selection-buffers t)
 '(show-paren-mode t)
 '(tab-width 4)
 '(yas-global-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
