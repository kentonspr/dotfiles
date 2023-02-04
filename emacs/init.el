;; Slightly modified version of init.el found here - https://github.com/danielmai/.emacs.d

;;; Begin initialization
;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;;; Set up package
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")
			 ("nongnu" . "https://elpa.nongnu.org/nongnu/")))

;; (when (boundp 'package-pinned-packages)
  ;; (setq package-pinned-packages
  ;;       '((org-contrib . "org"))))
(package-initialize)
(package-refresh-contents)

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (or (package-installed-p 'use-package))
            ;;(package-installed-p 'diminish))
  (package-refresh-contents)
  ;;(package-install 'diminish)
  (package-install 'use-package))

;; From use-package README
(eval-when-compile
  (require 'use-package))
;;(require 'diminish)  ;; if you use :diminish
(require 'bind-key)

;; Make sure all packages default to ensure t
;; Ensure t installs packages if they aren't already
(setq use-package-always-ensure t)

(setq vc-follow-symlinks t)

;; Load latest org-mode
(use-package org
  :mode (("\\.org$" . org-mode))
  :config
  (progn
    ;; config stuff
    ))

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))
