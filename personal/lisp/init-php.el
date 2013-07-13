(prelude-ensure-module-deps '(php-mode))
(prelude-ensure-module-deps '(smarty-mode))
(prelude-ensure-module-deps '(flymake-php))

(add-hook 'php-mode-hook 'flymake-php-load)

(autoload 'smarty-mode "smarty-mode" "Smarty Mode" t)

(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.module\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . smarty-mode))

;;php 自动提示设置 
(add-hook 'php-mode-hook
    (lambda ()
        (require 'php-completion)
        (php-completion-mode t)
        (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)))

(add-hook  'php-mode-hook
    (lambda ()
        (when (require 'auto-complete nil t)
        (make-variable-buffer-local 'ac-sources)
        (add-to-list 'ac-sources 'ac-source-php-completion)
        ;; if you like patial match,
        ;; use `ac-source-php-completion-patial' instead of `ac-source-php-completion'.
        (add-to-list 'ac-sources 'ac-source-php-completion-patial)
        (auto-complete-mode t))))

(provide 'init-php)
