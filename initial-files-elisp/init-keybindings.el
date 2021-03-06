;;swiper ivy counsel key-bindings
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

;;find keybindings
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;;recent files keybindings
(global-set-key (kbd "<f7>") 'recentf-open-files)

;;dired-mode
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;better indent
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;;hippie expand
(global-set-key (kbd "s-/") 'hippie-expand)

;;reveal in osx finder
(global-set-key (kbd "C-c z") 'reveal-in-osx-finder)

;;occur-mode enhanced
(global-set-key (kbd "M-s o") 'occur-dwim)

;;expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;;counsel-imenu
(global-set-key (kbd "M-s i") 'counsel-imenu)

;;org-capture
(global-set-key (kbd "C-c c") 'org-capture)

;;modify company key map
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

(provide 'init-keybindings)
