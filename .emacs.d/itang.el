;;;;;;;;;;; Custom ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;- Don't auto save or create backup files
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq nobreak-char-display nil)

;- unfortunately some codebases use tabs.
(set-default 'indent-tabs-mode nil)
(set-default 'tab-width 2)
(set-default 'c-basic-offset 2)

;-Line Numbering
(global-linum-mode 1)
(setq linum-format " %d ")

;-urn on line highlighting everywhere
(global-hl-line-mode 1)

(setq debug-on-error nil)
(setq no-debug t)

;- set up unicode
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
(set-clipboard-coding-system 'utf-8)
;make emacs use the clipboard
(setq x-select-enable-clipboard t)

;;;;;;;;;;; Theme ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;- Set a default font face
;(set-default-font "Inconsolatap-12")
;(set-default-font "DejaVu Sans Mono-10")
(set-default-font "Inconsolata-dz-11")

(set-fontset-font (frame-parameter nil 'font) 'han '("WenQuanYi Micro Hei"))

;- Control automatic buffer splitting
(setq split-height-threshold 0)
(setq split-width-threshold nil)

;- Turn off the annoying visible bell
(setq visible-bell nil)

;(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-twilight-0.1")
;(autoload 'color-theme-twilight "color-theme-twilight" nil t)

;;;;;;;;;;; Key-bindings ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c f") 'find-file-in-project)
(add-hook 'prog-mode-hook
          (defun my-kill-word-key ()
            (local-set-key (kbd "C-M-h") 'backward-kill-word)))
(global-set-key (kbd "C-c C-j") 'clojure-jack-in)

;- Split Windows
(global-set-key [f5] 'split-window-horizontally)
(global-set-key [f6] 'split-window-vertically)
(global-set-key [f7] 'delete-window)

;- Return to previous window layout, Ctrl-c ←
(when (fboundp 'winner-mode) 
 (winner-mode 1) 
 (windmove-default-keybindings))
 
;- Toggle Line numbers
(global-set-key [f4] 'linum-mode)

;- Some Mac-friendly key counterparts
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "M-3") "#")

;;;;;;;;;;;;;; Programming ;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;- Common
;-- Auto-complete
;-- YaSnippet

;- Clojure
(add-hook 'slime-repl-mode-hook
          (defun clojure-mode-slime-font-lock ()
            (let (font-lock-mode)
              (clojure-mode-font-lock-setup))))

(setq slime-kill-without-query-p t
      confluence-url "http://dev.clojure.org/")

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

;- Scala
;-- Scala mode

;-- ENSIME

;- Misc
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

(autoload 'yaml-mode "yaml-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))


