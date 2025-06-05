;; パッケージマネージャー
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; パッケージのエラーを表示しない
(add-to-list 'display-buffer-alist
             '("\\`\\*\\(Warnings\\|Compile-Log\\)\\*\\'"
               (display-buffer-no-window)
               (allow-no-window . t)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
