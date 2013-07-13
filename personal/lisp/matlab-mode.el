;;To install all the Emacs tools for MATLAB, add this to your .emacs file:

  (add-to-list 'load-path "~/.emacs.d/personal/plugins/matlab-emacs/")
  (require 'matlab-load)

;; matlab.el:

;;If you want to only use matlab.el for editing your code, and do not
;;want to try the other tools, you can do that also, though the install
;;code you need is more complex:


;;Put the this file as "matlab.el" somewhere on your load path, then
;;add this to your .emacs or site-init.el file:

  (autoload 'matlab-mode "matlab" "Enter MATLAB mode." t)
  (setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
  (autoload 'matlab-shell "matlab" "Interactive MATLAB mode." t)

;; CUSTOMIZATION:

;;User Level customizations (You need not use them all):
  (setq matlab-indent-function-body t)  ; if you want function bodies indented
  (setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save
  (defun my-matlab-mode-hook ()
    (setq fill-column 76))		; where auto-fill should wrap
  (add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
  (defun my-matlab-shell-mode-hook ()
	'())
  (add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)

;;Please read the mode help for matlab-mode for additional
;;configuration options.

;;Syntax highlighting:
;;  To get font-lock try adding this for older emacsen:
;;    (font-lock-mode 1)
;;  Or for newer versions of Emacs:
    (global-font-lock-mode t)
;;  To get hilit19 support try adding:
;;    (matlab-mode-hilit)

;;This package requires easymenu, tempo, and derived.
;;This package will optionally use custom, shell, and gud.
;;This package supports language specific extensions in imenu, func-menu,
;;     speedbar, font-lock, and hilit19.

;; tlc.el

;;To use this mode without using the full instatll, put the this file
;;into your load path, and add the following to your .emacs file:

;;  (require 'tlc)
;;or
  (autoload 'tlc-mode "tlc" "tlc Editing Mode" t)
  (add-to-list 'auto-mode-alist '("\\.tlc$" . tlc-mode))
  (setq tlc-indent-function t)
(provide 'matlab-mode)
