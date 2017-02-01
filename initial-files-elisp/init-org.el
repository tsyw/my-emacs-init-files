;;org-agenda files' directory
(setq org-agenda-files '("~/工作/gtd"))
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-latex-compiler "xelatex")

(setq org-babel-load-languages
   (quote
    ((emacs-lisp . t)
     (C . t)
     (python . t)
     (shell . t)
     (matlab . t)
     (latex . t))))
(setq org-babel-no-eval-on-ctrl-c-ctrl-c nil)
(setq org-highlight-latex-and-related (quote (latex script entities)))
(setq org-latex-classes
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
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/工作/gtd/gtd.org" "Tasks")
         "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
        ("n" "note" entry (file "~/工作/gtd/quicknotes.org")
         "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
        ("j" "Journal" entry (file+datetree "~/工作/gtd/diary.org")
         "* %?\n%U\n" :clock-in t :clock-resume t)
	))

(provide 'init-org)
