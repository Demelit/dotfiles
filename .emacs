;; c-mode のインデントをスペース4個分のタブにする
(add-hook 'c-mode-common-hook
	  '(lambda ()
	     (c-set-style "k&r")
	     (setq c-basic-offset 4)
	     (setq indent-tabs-mode t)
	          (setq tab-width 4)))

;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)

;; 文字コードの設定
(set-language-environment "utf-8")
(prefer-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)

