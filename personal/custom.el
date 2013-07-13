(prelude-ensure-module-deps '(revive))
(prelude-ensure-module-deps '(yasnippet))

(add-to-list 'load-path "~/.emacs.d/personal/lisp/")
(require 'matlab-mode)

(require 'init-auto-complete)

(add-to-list 'load-path "~/.emacs.d/personal/plugins/emaci/")
(require 'emaci-settings)

(add-to-list 'load-path "~/.emacs.d/personal/plugins/smart-compile+")
(require 'smart-compile+)

;; define theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/personal/theme")
(load-theme 'solarized-dark t)

;; UI setup
;(tool-bar-mode 1)
(menu-bar-mode 1)
(scroll-bar-mode 0)
(global-hl-line-mode 0) 
(global-linum-mode 'linum-mode)
(setq prelude-whitespace nil)
(set-default-font "Liberation Mono-13")

;; Tabbar mode
(prelude-ensure-module-deps '(tabbar))
(require 'tabbar)
(add-hook 'tabbar-mode-hook (lambda () (load-file "~/.emacs.d/personal/lisp/init-tabbar.el")))
(tabbar-mode t)

;; smooth scrolling setup
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

;; full screen
(defun toggle-full-screen ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0))
)

(defun toggle-bars ()
  "Toggles bars visibility."
  (interactive)
  (menu-bar-mode 0)
)

(defun toggle-full-screen-and-bars ()
  "Toggles full-screen mode and bars."
  (interactive)
  (toggle-bars)
  (toggle-full-screen))

;; maximize window
(defun my-maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)
;; maximize when startup
(my-maximized)

;; Key bindings
(global-set-key [f6] 'resume)
(global-set-key [f7] 'save-current-configuration)
(global-set-key [f5] 'recentf-open-files)
(global-set-key [f11] 'toggle-full-screen-and-bars)
(global-set-key [f10] 'my-maximized)


;; predicive setup
;(add-to-list 'load-path "~/Emacs/prelude/personal/plugins/predictive")
;(add-to-list 'load-path "~/Emacs/prelude/personal/plugins/predictive")
;(add-to-list 'load-path "~/Emacs/prelude/personal/plugins/predictive/texinfo")
;(add-to-list 'load-path "~/Emacs/prelude/personal/plugins/predictive/latex")
;(add-to-list 'load-path "~/Emacs/prelude/personal/plugins/predictive/misc")
;(add-to-list 'load-path "~/Emacs/prelude/personal/plugins/predictive/html")
;(autoload 'predictive-mode "predictive" "predictive" t)
;(set-default 'predictive-auto-add-to-dict t)
;(setq predictive-main-dict 'default-dictionary
;      predictive-auto-learn t
;      predictive-add-to-dict-ask nil
;      predictive-use-auto-learn-cache nil
;      predictive-which-dict t)

;(require 'predictive)

;; Latex setup
(add-hook 'LaTeX-mode-hook (lambda ()
                             (TeX-global-PDF-mode t)
                             (visual-line-mode t)
                             (run-hooks 'prelude-latex-mode-hook)))

(setq preview-scale-function 2)

;; PHP setup
(require 'init-php)

(switch-to-buffer (get-buffer-create "Note"))
(delete-other-windows)
(resume)
;(server-mode)

