(add-to-list 'load-path "~/.emacs.d/lisp")
(setq-default indent-tabs-mode nil)

(add-hook 'php-mode-hook
          (lambda ()
            (setq tab-width 4)
            (setq indent-tabs-mode nil)
            (setq c-basic-offset 4)
            (c-set-offset 'case-label' 4)
            (c-set-offset 'arglist-intro' 4)
            (c-set-offset 'arglist-cont-nonempty' 4)
            (c-set-offset 'arglist-close' 0)
            )
          )

(require 'web-mode)
(set-face-attribute 'web-mode-html-tag-face nil :foreground "Pink3")
(set-face-attribute 'web-mode-html-attr-value-face nil :foreground "Blue")
(set-face-attribute 'web-mode-html-attr-name-face nil :foreground "Red")
(set-face-attribute ' web-mode-html-tag-bracket-face nil :foreground "Blue")
(defun web-mode-hook ()
;;  (setq indent-tabs-mode nil)                                                                                                                              
  "Hooks for Web mode."
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  )
(add-hook 'web-mode-hook 'web-mode-hook)


(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb?\\'" . web-mode))


(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
