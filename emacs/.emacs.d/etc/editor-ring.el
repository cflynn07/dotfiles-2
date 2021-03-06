(use-package browse-kill-ring
  :bind ("M-y" . browse-kill-ring))

(use-package easy-kill
  :bind ([remap kill-ring-save] . easy-kill)
  :config
  (use-package easy-kill-extras
    :config
    (progn
      (setq easy-kill-alist '((?w word           " ")
                              (?s sexp           "\n")
                              (?p list           "\n")
                              (?d defun          "\n\n")
                              (?D defun-name     " ")
                              (?l line           "\n")
                              (?n buffer-file-name)))

      (defun easy-kill-config ()
        "Configure easy-kill."
        (define-key easy-kill-base-map (kbd "C-d") 'easy-kill-delete-region)
        (define-key easy-kill-base-map (kbd "DEL") 'easy-kill-delete-region)
        (add-to-list 'easy-kill-alist '(?^ backward-line-edge ""))
        (add-to-list 'easy-kill-alist '(?a backward-line-edge ""))
        (add-to-list 'easy-kill-alist '(?e forward-line-edge ""))
        (add-to-list 'easy-kill-alist '(?$ forward-line-edge ""))
        (add-to-list 'easy-kill-alist '(?b buffer ""))
        (add-to-list 'easy-kill-alist '(?< buffer-before-point ""))
        (add-to-list 'easy-kill-alist '(?> buffer-after-point ""))
        (add-to-list 'easy-kill-alist '(?f string-to-char-forward ""))
        (add-to-list 'easy-kill-alist '(?F string-up-to-char-forward ""))
        (add-to-list 'easy-kill-alist '(?t string-to-char-backward ""))
        (add-to-list 'easy-kill-alist '(?T string-up-to-char-backward "")))

      (easy-kill-config))))

(use-package simpleclip
  :disabled t
  :diminish
  :config
  (simpleclip-mode 1))
