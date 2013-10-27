(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-matching-delay 0.25)
 '(blink-matching-paren t)
 '(blink-matching-paren-dont-ignore-comments t)
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "5f7044d9fc9c9c9d56508ac8217483c8358a191599448859640ce80be92acbd6" "941f66b99a5db394cff3845c282e73d8b75fddf73df347d0245c8d286c1cdb27" default)))
 '(indent-tabs-mode t)
 '(preview-default-document-pt 12)
 '(preview-scale-function 1.5)
 '(save-interprogram-paste-before-kill t)
 '(select-active-regions t)
 '(standard-indent 4)
 '(tab-always-indent t)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Droid Sans Mono")))))

;;;;;;;;;;;;;;;;;;;; Customizations ;;;;;;;;;;;;;;;;;;;;

;; Package archive links
;; This must go BEFORE loading the theme or the theme won't load
(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

; +=========+
; | Visuals |
; +=========+

;; Disable toolbar
(tool-bar-mode -1)

;; Load themes
(load-theme 'gruber-darker t)
;(load-theme 'solarized-dark t)
;(load-theme 'zenburn t)

;; Matching parentheses highlighting
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
(set-face-background 'show-paren-match-face "#90ee90") ; light green
(set-face-foreground 'show-paren-match-face "#000000") ; black
(set-face-attribute 'show-paren-match-face nil :weight 'bold)
(set-face-background 'show-paren-mismatch-face "#ee2c2c") ; firebrick red
(set-face-foreground 'show-paren-mismatch-face "#000000") ; black
(set-face-attribute 'show-paren-mismatch-face nil
                    :weight 'bold :underline t :overline nil :slant 'normal)

;; Disable startup buffer
(setq inhibit-startup-message t)

; +===============+
; | Functionality |
; +===============+

;; Set the fill column (M-q) width to 80 characters
(setq-default fill-column 80)

;; Enable Ido (file, buffer auto-completion)
(require 'ido)
(ido-mode t)

;; Display line numbers
(require 'linum)
(global-linum-mode t)

;; Start server
;; files opened from outside emacs will be opened in the same frame
(server-start)
;; Removes "are you sure?" prompt when killing files opened with emacsclient
;; C-x k works the usual way, but when a file is opened with emacsclient
;; C-x k does server-edit if the client is waiting, or run ido-kill-buffer otherwise
(add-hook 'server-switch-hook 
  (lambda ()
    (local-set-key (kbd "C-x k") '(lambda ()
                                    (interactive)
                                    (if server-buffer-clients
                                        (server-edit)
                                      (ido-kill-buffer))))))

;; Set default directory so it emacs starts somewhere sensible
;; For Windows, this has to be done with the shortcut
; (setq default-directory "C:/Users/Collin/Projects/")

; +--------------+
; | Key Bindings |
; +--------------+

(global-set-key (kbd "C-M-q") 'query-replace)

; +-----------------+
; | Autosave/Backup |
; +-----------------+

;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
 (concat "C:/Users/Collin/.emacs-backups-autosaves/"))
(make-directory autosave-dir t)
(setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,(concat
autosave-dir "\\1") t)))

;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir (concat "C:/Users/Collin/.emacs-backups-autosaves/"))
(setq backup-directory-alist (list (cons "." backup-dir)))

; +----------+
; | Printing |
; +----------+

;; HOW TO SETUP PRINTING IN WINDOWS
;; Devices and Printers -> "Printer Properties" for desired printer
;; Go to "Sharing" and check "Share this printer" and "Render print jobs on client computers"
;; Enter Share name: MyPrinter (no spaces); Click OK
;; Add "(setq printer-name "//MyComputerName/MyPrinter")"
;; Print with M-x print-buffer

(require 'printing)
(setq printer-name "//BLACKHAWK/HIPPO")
(setq ps-printer-name "//BLACKHAWK/HIPPO")
;(setq pr-ps-printer-alist
;      '((hippo "print" nil "/D:" "//BLACKHAWK/HIPPO")
;	(andrew "print" nil "/D:" "//BLACKHAWK/AndrewBW")
;	))
;(pr-update-menus t)

;;;;;;;;;; Org-mode ;;;;;;;;;;

(setq org-log-done t)
;; Recognize .org file endings
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;; Global key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

; +--------+
; | Python |
; +--------+

;; Python mode
(require 'python)

;; Jedi and auto-complete inclusion
;(setq jedi:setup-keys t)
(add-hook 'python-mode-hook
          (lambda () (local-set-key (kbd "C-c d") #'jedi:show-doc)))
(add-hook 'python-mode-hook
          (lambda () (local-set-key (kbd "C-c c") #'jedi:complete)))
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi-mode)
(add-hook 'python-mode-hook 'jedi:setup)

;; Flycheck
(add-hook 'python-mode-hook 'flycheck-mode)

;; Auto-indent
(add-hook 'python-mode-hook '(lambda () (define-key python-mode-map "\C-m" 'newline-and-indent)))

;; Python IDE customizations
;;(add-to-list 'load-path "C:/Program Files (x86)/emacs-23.4/site-lisp/python-mode.el-6.0.11")
;;(setq py-install-directory "C:/Program Files (x86)/emacs-23.4/site-lisp/python-mode.el-6.0.11")
;;(require 'python-mode)
;;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;;(setq py-shell-name "C:/Python27/python2.exe")

; +-------+
; | LaTeX |
; +-------+

;(setq latex-run-command "pdflatex")

;; AucTeX

;; the wrapping up of the two loads make sure auctex is loaded only when editing
;; tex files.
(eval-after-load "tex-mode" '(progn
(load "auctex.el"	nil t t)
(load "preview-latex.el" nil t t)))

;; AUCTeX replaces latex-mode-hook with LaTeX-mode-hook
(add-hook 'LaTeX-mode-hook
	  (lambda ()
	    (setq TeX-auto-save t)
	    (setq TeX-parse-self t) 
	    ;(setq-default TeX-master nil)
	    (reftex-mode t)
	    (TeX-fold-mode t)))

(setq TeX-PDF-mode t)
;(setq TeX-engine 'pdflatex)
;(require 'tex-mik)

; +----------+
; | Spelling |
; +----------+

;; Spell-check
;(custom-set-variables
;    '(ispell-dictionary "english")
;    '(ispell-program-name "C:\\Program Files (x86)\\Hunspell\\hunspell.exe"))
