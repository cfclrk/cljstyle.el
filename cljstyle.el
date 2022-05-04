;;; cljstyle.el --- Reformat Clojure code with cljstyle -*- lexical-binding: t; -*-

;; Version: 0
;; Package-Requires: ((reformatter "0"))

;;; Commentary:

;;; Code:

(require 'reformatter)

(reformatter-define cljstyle-format
  :program "cljstyle"
  :args '("pipe")
  :lighter " CljFmt")

(provide 'cljstyle)
;;; cljstyle.el ends here
