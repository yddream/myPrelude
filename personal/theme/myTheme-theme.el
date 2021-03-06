(deftheme myTheme
  "Created 2013-06-20.")

(custom-theme-set-faces
 'myTheme
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :width normal :height 128 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#F4EAD5" :background "#110F13" :stipple nil :inherit nil))))
 '(cursor ((t (:foreground "#DCDCCC" :background "#d94a05"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((t (:weight bold :foreground "#b13120" :background "#1D1B25"))))
 '(minibuffer-prompt ((t (:foreground "#d94a05" :background "#1F1710"))))
 '(highlight ((t (:foreground "#009090" :background "#132228"))))
 '(region ((t (:background "#11253a"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((t (:background "#5F5F5F"))))
 '(trailing-whitespace ((t (:background "#CC9393"))))
 '(font-lock-builtin-face ((t (:foreground "#a23f1e" :background "#1D1515"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :background "#111013" :foreground "deep sky blue" :slant italic))))
 '(font-lock-comment-face ((t (:background "#111013" :foreground "deep sky blue" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#7868b5" :background "#1D1B25"))))
 '(font-lock-doc-face ((t (:foreground "#009090" :background "#0a0a0a" :inherit (font-lock-string-face)))))
 '(font-lock-function-name-face ((t (:foreground "#b13120" :background "#1D1515"))))
 '(font-lock-keyword-face ((t (:weight bold :foreground "#d94a05" :background "#1F1710"))))
 '(font-lock-negation-char-face ((t (:foreground "#ceae3e" :background "#18140C"))))
 '(font-lock-preprocessor-face ((t (:foreground "#d94a05" :background "#1F1710" :inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#009090" :background "#031316"))))
 '(font-lock-type-face ((t (:weight normal :foreground "#a23f1e" :background "#1D1515"))))
 '(font-lock-variable-name-face ((t (:foreground "#7c9fc9" :background "#1e252f"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "#a23f1e" :background "#251c1e" :inherit (error)))))
 '(button ((t (:underline t :inherit (link)))))
 '(link ((t (:weight bold :underline t :foreground "#7c9fc9" :background "#1e252f"))))
 '(link-visited ((t (:weight normal :underline t :foreground "#009090" :background "#172028" :inherit (link)))))
 '(fringe ((t (:foreground "#DCDCCC" :background "#141414"))))
 '(header-line ((t (:box (:line-width -1 :color nil :style released-button) :foreground "#F0DFAF" :background "#2B2B2B" :inherit (mode-line)))))
 '(tooltip ((t (:height 110 :foreground "#2B2A26" :background "#DBD2BF" :inherit (variable-pitch)))))
 '(mode-line ((t (:box (:line-width -1 :color nil :style released-button) :foreground "#828282" :background "#141414"))))
 '(mode-line-buffer-id ((t (:weight bold :foreground "#d94a05"))))
 '(mode-line-emphasis ((t (:weight normal))))
 '(mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button) :foreground "#b13120"))))
 '(mode-line-inactive ((t (:weight light :box (:line-width -1 :color nil :style released-button) :foreground "#252525" :background "#111111" :inherit (mode-line)))))
 '(isearch ((t (:weight bold :foreground "#E0E4CC" :background "#483E6C"))))
 '(isearch-fail ((t (:foreground "#E0E4CC" :background "#660000"))))
 '(lazy-highlight ((t (:weight bold :foreground "#7868b5" :background "#1a2321"))))
 '(match ((t (:weight bold :foreground "#DFAF8F" :background "#2B2B2B"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch))))))

(provide-theme 'myTheme)
