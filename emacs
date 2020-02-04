(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq backup-by-copying t      ; don't clobber symlinks
      backup-directory-alist `((".*" . ,"~/.emacs-saves/"))    ; don't litter my fs tree
      auto-save-file-name-transforms `((".*" ,"~/.emacs-saves/" t))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups
(set-face-attribute 'default nil :height 180)

(let ((opam-share (ignore-errors (car (process-lines "opam" "config" "var" "share")))))
      (when (and opam-share (file-directory-p opam-share))
       ;; Register Merlin
       (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
       (autoload 'merlin-mode "merlin" nil t nil)
       ;; Automatically start it in OCaml buffers
       (add-hook 'tuareg-mode-hook 'merlin-mode t)
       (add-hook 'caml-mode-hook 'merlin-mode t)
       ;; Use opam switch to lookup ocamlmerlin binary
       (setq merlin-command 'opam)))

(load "/home/mathieu/.opam/default/share/emacs/site-lisp/tuareg-site-file")

(add-hook 'java-mode-hook (lambda()
                          (setq c-basic-offset 2
                           indent-tabs-mode nil)))

;; Show the columns
(setq column-number-mode t)

;; Delete the text if it is selected and I write on it (like all other text editors)
(delete-selection-mode 1)

;; Remove the menu bar and toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)