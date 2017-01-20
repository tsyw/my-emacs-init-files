;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;initial-directory
(add-to-list 'load-path "~/.emacs.d/initial-files-elisp")

;;initial files
(require 'init-packages)
(require 'init-org)
(require 'init-selfDefault)
(require 'init-latex)
(require 'init-theme)
(require 'init-c-style-indent)
(require 'init-keybindings)

;;customize(auto-settings)
(setq custom-file (expand-file-name "initial-files-elisp/custom.el" user-emacs-directory))
(load-file custom-file)
