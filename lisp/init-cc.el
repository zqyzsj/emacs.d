;;; init-rust.el --- Support for the C language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "linux")))

(defun my-c-mode-hook ()
  (setq indent-tabs-mode t)
  )
(add-hook 'c-mode-hook 'my-c-mode-hook)

(provide 'init-cc)
;;; init-cc.el ends here
