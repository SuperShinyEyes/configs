(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'load-path "~/.emacs.d/custom")
;;(add-to-list 'load-path "~/.emacs.d/vendor/emacs-slim")

;;(require 'slim-mode)

;; Custom magit commit
(defun foo-magit-manual-commit (msg)
  (interactive "sMessage: ")
  (shell-command (format "git commit -m \"%s\"" msg))
  (magit-refresh))


;; No splash screen
(setq inhibit-startup-screen t)

;; Buffer selector C-x C-b
;; Advanced with filtering capabilities (see menu)
(global-set-key "" (quote ibuffer))

;; Simpler
;; (global-set-key "" (quote bs-show))

;; Ido mode for buffers only (C-x b)
(ido-mode 'buffers)

;; Winner mode on
(winner-mode 1)

;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; No tool bar
(tool-bar-mode 0)

;; Set left option as meta and keep right option as option
(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)

;; Never ask "yes" or "no", only "y" or "n".
(fset 'yes-or-no-p #'y-or-n-p)

;; Highlight parentheses
(show-paren-mode 1)

;; Line numbers on the side
(global-linum-mode t)

;; Set common OS X jumps
(global-set-key [s-right] (quote end-of-line))
(global-set-key [s-left] (quote beginning-of-line))
(global-set-key [s-up] (quote beginning-of-buffer))
(global-set-key [s-down] (quote end-of-buffer))

;; No bell ringing
(setq ring-bell-function 'ignore)

;; C-x C-k to kill current buffer
(global-set-key "" (quote kill-this-buffer))

;; Emacs powerline
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)

;; dabbrev completion
(global-set-key (kbd "C-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (2 ((shift) . 1) ((control)))))
 '(nil nil t)
 '(org-startup-indented t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(visible-bell nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2e3436" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Monaco"))))
 '(mode-line ((t (:background "#d3d7cf" :foreground "#2e3436" :box (:line-width -1 :style released-button) :height 1.0)))))
(put 'upcase-region 'disabled nil)

;; For project file path
;(speedbar 1)

;; For Python IDE
(require 'package)
(require 'json)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)
(elpy-enable)
;; Fixing a key binding bug in elpy
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
;; Fixing another key binding bug in iedit mode
(define-key global-map (kbd "C-c o") 'iedit-mode)

;; For jedi
;(autoload 'jedi:setup "jedi" nil t)
;(add-hook 'python-mode-hook 'jedi:setup)
;; If you want the default keyboard shortcuts, add this line:
;(setq jedi:setup-keys t)
;; If you want it to complete on the “.” add this line: 
;(setq jedi:complete-on-dot t)

(setenv "PYTHONPATH" "['', '/Library/Python/2.7/site-packages/pyechonest-8.0.2-py2.7.egg', '/Library/Python/2.7/site-packages/howdoi-1.1.7-py2.7.egg', '/Library/Python/2.7/site-packages/requests_cache-0.4.9-py2.7.egg', '/Library/Python/2.7/site-packages/requests-2.6.0-py2.7.egg', '/Library/Python/2.7/site-packages/Pygments-2.0.2-py2.7.egg', '/Library/Python/2.7/site-packages/pyquery-1.2.9-py2.7.egg', '/Library/Python/2.7/site-packages/cssselect-0.9.1-py2.7.egg', '/Library/Python/2.7/site-packages/lxml-3.4.2-py2.7-macosx-10.10-intel.egg', '/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python27.zip', '/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python2.7', '/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python2.7/plat-darwin', '/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python2.7/plat-mac', '/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python2.7/plat-mac/lib-scriptpackages', '/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-tk', '/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-old', '/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-dynload', '/Library/Python/2.7/site-packages', '/usr/local/lib/python2.7/site-packages']")
