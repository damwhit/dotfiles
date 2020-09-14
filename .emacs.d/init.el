; list the repositories containing them
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; list the packages you want
(setq package-list '(better-defaults
                     evil
                     org
                     afternoon-theme
                     powerline
                     helm
                     helm-projectile
                     helm-ag
                     all-the-icons
                     neotree
                     ruby-electric
                     seeing-is-believing
                     rbenv
                     inf-ruby
                     haml-mode
                     ruby-test-mode))                    

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

; defaults and appearance
(require 'better-defaults)

(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'org-mode)

(load-theme 'afternoon t)

; put backups and temp files in other dirs
(setq backup-directory-alist `(("." . "~/.saves")))
(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))

(require 'evil)
(evil-mode 1)
(evil-commentary-mode)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "s-f") #'helm-projectile-ag)
(global-set-key (kbd "s-t") #'helm-projectile-find-file-dwim)

;; get rid of annoying bell and caution sign
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

(global-display-line-numbers-mode)

(require 'powerline)
(powerline-default-theme)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq indent-line-function 'insert-tab)

; neotree
(require 'neotree)
(global-set-key (kbd "C-\\") 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(require 'all-the-icons)
(add-hook 'neotree-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

; org mode
(require 'org)
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

(global-set-key (kbd "C-x g") 'magit-status)

; language specific
(setq js-indent-level 2)


(add-hook 'ruby-mode-hook 'ruby-electric-mode)
(global-rbenv-mode)
(rbenv-use-global)

(add-to-list 'auto-mode-alist
             '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

(setq seeing-is-believing-prefix "C-l")
(add-hook 'ruby-mode-hook 'seeing-is-believing)
(require 'seeing-is-believing)

(autoload 'inf-ruby-minor-mode "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

(require 'ruby-test-mode)
(add-hook 'ruby-mode-hook 'ruby-test-mode)
(add-hook 'compilation-finish-functions
          (lambda (buf strg)
            (switch-to-buffer-other-window "*compilation*")
            (read-only-mode)
            (goto-char (point-max))
            (local-set-key (kbd "q")
                           (lambda () (interactive) (quit-restore-window)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-commentary markdown-mode inf-ruby magit solarized-theme evil better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
