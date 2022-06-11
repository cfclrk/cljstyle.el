;;; cljstyle.el --- Format Clojure code with cljstyle -*- lexical-binding: t; -*-

;; Version: 0
;; Package-Requires: ((reformatter "0"))

;;; Commentary:

;;; Code:

(require 'reformatter)

(defgroup cljstyle nil
  "Format clojure code using cljstyle."
  :group 'languages
  :prefix "cljstyle-")

(defcustom cljstyle-command "cljstyle"
  "Command to invoke cljstyle."
  :type 'file
  :group 'cljstyle
  :safe 'stringp)

(defcustom cljstyle-arguments '("pipe")
  "Aruguments to pass to cljstyle."
  :type 'file
  :group 'cljstyle
  :safe 'listp)

(reformatter-define cljstyle-format
  :program cljstyle-command
  :args cljstyle-arguments
  :group 'cljstyle
  :lighter " cljstyle")

(provide 'cljstyle)
;;; cljstyle.el ends here
