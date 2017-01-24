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
      '(("t" "Todo in my life" entry (file+headline "~/工作/gtd/gtd.org" "生活琐事")
         "* TODO [#B] %?\n  %i\n"
         :empty-lines 1)
        ("w" "movies or tv shows to watch" entry (file+headline "~/工作/gtd/watch.org" "要看的电影电视剧")
         "* TODO [#B] %?\n %i\n"
         :empty-lines 1)
        ("b" "books to read" entry (file+headline "~/工作/gtd/book.org" "要看的书")
         "* TODO [#B] %?\n %i\n"
         :empty-lines 1)
        ("l" "url to learn" entry (file+headline "~/工作/gtd/learning.org" "要学习的东西")
         "* TODO [#B] %?\n %i\n"
         :empty-lines 1)))

(provide 'init-org)
