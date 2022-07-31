;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Nabin Khanal"
      user-mail-address "nabinkhanal688@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "Space Mono for Powerline" :size 20 :weight 'semi-light))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/.org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(global-subword-mode 1)
(setq which-key-idle-delay 0.2)

;; (global-set-key (kbd "M-/") 'comment-line)
(global-set-key (kbd "M-\\") '+vterm/toggle)

(with-eval-after-load 'treemacs
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action))

(setq completion-ignore-case  t)

(dap-mode 1)
;; The modes below are optional

(dap-ui-mode 1)
;; enables mouse hover support
(dap-tooltip-mode 1)
;; use tooltips for mouse hover
;; if it is not enabled `dap-mode' will use the minibuffer.
(tooltip-mode 1)
;; displays floating panel with debug buttons
;; requies emacs 26+
(dap-ui-controls-mode 1)

(require 'dap-cpptools)

(map! :leader
      (:prefix ("r" . "run")
        :desc "C/C++"
        "c" #'runc
        :desc "Python"
        "p" #'runpython
        :desc "GO"
        "g" #'rungo
        ))


(defun er-switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer-other-frame (other-buffer (current-buffer) 1)))

(defun runc()
  "Build and runc .cpp files"
  (interactive)
  (if (or (string= major-mode "c++-mode") (boundp 'file))
      (let ((a 10))
        (if (string= major-mode "c++-mode")
            (setq file (buffer-file-name (window-buffer (minibuffer-selected-window)))))
        (evil-write-all nil)

        (setq code-buf-default-directory default-directory)
        (if (boundp 'buf)
             (pop-to-buffer buf)
          (setq buf (+vterm/toggle nil)))
        (vterm-send-string (concat "cd " code-buf-default-directory "; ") )
        (vterm-send-string (concat "g++ -o main -O2 -Wall " file " && ./main && rm main"))
        (vterm-send-return)
        )))

(defun runpython()
  "run python files"
  (interactive)
  (if (or (string= major-mode "python-mode") (boundp 'file))
      (let ((a 10))
        (if (string= major-mode "python-mode")
            (setq file (buffer-file-name (window-buffer (minibuffer-selected-window)))))
        (evil-write-all nil)

        (setq code-buf-default-directory default-directory)
        (if (boundp 'buf)
             (pop-to-buffer buf)
          (setq buf (+vterm/toggle nil)))
        (vterm-send-string (concat "cd " code-buf-default-directory "; ") )
        (vterm-send-string (concat "python " file ) )
        (vterm-send-return)
        )))

(defun rungo()
  "run python files"
  (interactive)
  (if (or (string= major-mode "go-mode") (boundp 'file))
      (let ((a 10))
        (if (string= major-mode "go-mode")
            (setq file (buffer-file-name (window-buffer (minibuffer-selected-window)))))
        (evil-write-all nil)

        (setq code-buf-default-directory default-directory)
        (if (boundp 'buf)
             (pop-to-buffer buf)
          (setq buf (+vterm/toggle nil)))
        (vterm-send-string (concat "cd " code-buf-default-directory "; ") )
        (vterm-send-string (concat "go run " file ) )
        (vterm-send-return)
        )))
