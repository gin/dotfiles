;; Load files
(add-to-list 'load-path "~/.emacs.d")

;; Set margin width
(setq-default left-margin-width 2)         
(setq-default right-margin-width 2)

;; Column settings
(setq-default fill-column 80)
(setq-default column-number-mode 1)
;; Disable fringes
;; (fringe-mode 0) ;; not working

;; Enable line number
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")
;;(global-linum-mode 1)

;; Enable vertical line (marks column80)
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(setq fci-rule-color "DarkSlateBlue")
;;(setq fci-rule-use-dashes 1)
(add-hook 'after-change-major-mode-hook 'fci-mode)

;; Enable highlight current column
;;(require 'vline)

;; Removes buffer files
(setq make-backup-files nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 15-122 Imperative Programming
;; Destroy all tabs
(setq-default indent-tabs-mode nil)

;; Markdown
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.mkd\\'" . markdown-mode))

;; Setup for c0-mode
(setq c0-root "/Users/lleung/Downloads/cc0/")
(load (concat c0-root "c0-mode/c0.el"))

