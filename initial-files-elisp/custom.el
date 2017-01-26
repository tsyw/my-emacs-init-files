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
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(global-highlight-changes-mode nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(org-src-fontify-natively t)
 '(popwin:popup-window-position (quote right))
 '(popwin:popup-window-width 80)
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
 '(iedit-occurrence ((t (:inherit region)))))
