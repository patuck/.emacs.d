;;;; Reshad's .emacs file
; Reshad Patuck
; 11 November 2013



;;; Hunspell
; Set hunspell as the default dictionary
(setq ispell-program-name "hunspell")



;;; Set unicode as default
; set default UTF-8
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)



;;; Set default major-mode to text-mode
; replace fundimental mdode as default mode.
(setq-default major-mode 'text-mode)


;;; Flyspell
; Set flyspell as default for text mode
(dolist (hook '(text-mode-hook)) (add-hook hook (lambda () (flyspell-mode 1))))



;;; Set auto indent
; Bind RET to newline-and-indent
; For prog-mode-hook, the hook for all programming modes.
(add-hook 'prog-mode-hook '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))



;;; Enable auto complete
; autocomplete source in ~/.emacs/auto-complete/
(add-to-list 'load-path "/home/reshad/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/reshad/.emacs.d/auto-complete/ac-dict")
(ac-config-default)

; Stop flyspell from stopping autocomplete from working.
(ac-flyspell-workaround) 

; Autocomplete always on
(defun auto-complete-mode-maybe ()  "No maybe for you. Only AC!" (unless (minibufferp (current-buffer)) (auto-complete-mode 1)))

; Set autocomplete case sensitive
(setq ac-ignore-case nil)



;;; Enable AUCTeX 
; AUCTeX is an advanced LaTeX mode
(add-to-list 'load-path "/home/reshad/.emacs.d/auctex-11.87/")
(load "auctex.el" nil t t)
;(load "preview-latex.el" nil t t)
; Always compile with PDFLaTeX
(setq TeX-PDF-mode t)



;;; Start emacs with an empty buffer
(setf inhibit-splash-screen t)
(switch-to-buffer (get-buffer-create "emtpy"))
(delete-other-windows)



;;; Bracket settings
; electric-pair-mode sets auto close of bracket
(electric-pair-mode +1)

; show-paren-mode highlights corresponding brackets
(show-paren-mode +1)



;;; Split screen Horozontally always
(setq split-height-threshold nil)
(setq split-width-threshold 0)


;;; End Of Manually Edited File


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-fontify-sectioning (quote color)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

