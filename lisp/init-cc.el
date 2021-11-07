;;; init-rust.el --- Support for the C language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; enable ggtags mode
(defun ggtags-mode-hook ()
  (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
    (ggtags-mode 1)
    )
  )
(add-hook 'c-mode-common-hook 'ggtags-mode-hook)

;;; set indentation for C language
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "linux")))

(defun my-c-mode-hook ()
  (setq indent-tabs-mode t)
  )
(add-hook 'c-mode-hook 'my-c-mode-hook)

(provide 'init-cc)
;;; init-cc.el ends here
