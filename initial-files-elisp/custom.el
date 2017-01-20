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
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 3)
 '(custom-buffer-indent 4)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(org-src-fontify-natively t)
 '(preview-image-type (quote png))
 '(reftex-allow-automatic-rescan t)
 '(reftex-enable-partial-scans t)
 '(reftex-plug-into-AUCTeX t)
 '(reftex-save-parse-info t)
 '(reftex-use-mutiple-selection-buffers t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
