;;common self settings
(setq ring-bell-function 'ignore)
(global-linum-mode t)
(column-number-mode t)
(display-time-mode t)
(delete-selection-mode 1)
(global-auto-revert-mode t)
(setq make-backup-files nil)
(setq-default auto-save-default nil)
(show-paren-mode t)

;;recent files
(recentf-mode t)
(setq recentf-max-menu-items 20)

;;dired-mode
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(put 'dired-find-alternate-file 'disabled nil)
(require 'dired-x)

;;better indent
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indent selected region."))
      (progn
        (indent-buffer)
        (message "Indent buffer.")))))

;;hippie expand
(setq hippie-expand-try-function-list '(try-expand-debbrev
                                        try-expand-debbrev-all-buffers
                                        try-expand-debbrev-from-kill
                                        try-complete-file-name-partially
                                        try-complete-file-name
                                        try-expand-all-abbrevs
                                        try-expand-list
                                        try-expand-line
                                        try-complete-lisp-symbol-partially
                                        try-complete-lisp-symbol)) 

(provide 'init-selfDefault)
