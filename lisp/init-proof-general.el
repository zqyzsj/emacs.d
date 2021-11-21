;; Note: if you install the proof general through the elpa/melpa,
;; the emacs's package-initialize will autoloads the configure el, i.e.,
;; proof-general.el in the .emacs.d/elpa-version/proof-general-version
;; /proof-general-autolaods.el. So we don't need to explictly loads
;; the proof-general.el here. All we need to do is do some customized
;; configuration.

;; open menu bar for proof general
(defun my-coq-mode-hook ()
  (menu-bar-mode 1)
  )
(add-hook 'coq-mode-hook 'my-coq-mode-hook)
;; Ssreflect support
;;(load-file "~/.emacs.d/lisp/math-comp/mathcomp/ssreflect/pg-ssr.el")

;;(cua-mode t)
;;(setq cua-auto-tabify-rectangles nil)
;;(transient-mark-mode 1)
;;(setq cua-keep-region-after-copy t)

(provide 'init-proof-general)
