(prelude-ensure-module-deps '(auto-complete))
(prelude-ensure-module-deps '(ac-math))

(add-to-list 'load-path "~/.emacs.d/personal/plugins/ac-auctex/")

(require 'auto-complete)
(require 'ac-math)
(require 'auto-complete-auctex)

;; Setup auto-complete
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq ac-expand-on-auto-complete 0)
(setq ac-auto-start 0)
(setq ac-dwim 0) ; To get pop-ups with docs even if a word is uniquely completed
(ac-set-trigger-key "TAB") ; AFTER input prefix, press TAB key ASAP

;; Use C-n/C-p to select candidate ONLY when completion menu is displayed
;; Below code is copied from official manual
(setq ac-use-menu-map t)
;; Default settings
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;; Setup for ac-math which is used in Latex
(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of `latex-mode`

(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
        (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
                ac-sources)))

(add-hook 'latex-mode-hook 'ac-latex-mode-setup)
(ac-flyspell-workaround)

;; Unicode input
;(setq ac-math-unicode-in-math-p t)
;(defun ac-latex-mode-setup ()         
;(setq ac-sources
;        (append '(ac-source-math-unicode ac-source-latex-commands)
;                ac-sources)))

(provide 'init-auto-complete)
