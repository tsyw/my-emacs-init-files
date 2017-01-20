;;common self settings
(setq ring-bell-function 'ignore)
(global-linum-mode t)
(column-number-mode t)
(display-time-mode t)
(delete-selection-mode 1)
(global-auto-revert-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(show-paren-mode t)

;;recent files
(recentf-mode t)
(setq recentf-max-menu-items 20)

(provide 'init-selfDefault)
