(require 'package)
;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))
;; Add the user-contributed repository
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings
                                  starter-kit-eshell starter-kit-js
                                  zenburn-theme
                                  ;slime
                                  clojure-mode clojure-test-mode
                                  rainbow-delimiters
                                  ac-slime
                                  markdown-mode yaml-mode
                                  scala-mode 
                                  coffee-mode 
                                  go-mode)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Colour mach parens and other structure characters to make code easy to follow
(global-rainbow-delimiters-mode)

;;; Enable undo-tree for everything, so you can M - _ to redo
(global-undo-tree-mode)

(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(ac-config-default)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("7fe1e3de3e04afc43f9a3d3a8d38cd0a0efd9d4c" "d14db41612953d22506af16ef7a23c4d112150e5" "3df5d5f3dc4b09cb2aa7c0748cfa37f63025230e" default)))
 '(mac-option-modifier (quote meta))
 '(nxhtml-skip-welcome t)
 '(speedbar-show-unknown-files t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

