;; do not make backup file
(setq make-backup-files nil)
(setq auto-save-default nil)

;;set indent to 4space
(add-hook 'c-mode-hook
	  '(lambda()
	     (c-set-style "bsd")
	     (setq c-basic-offset 4)
	     (setq tab-width c-basic-offset)
	                     (setq indent-tabs-mode t)))
