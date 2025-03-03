;;; init-fingertip.el --- Fingertip configuration

;; Filename: init-fingertip.el
;; Description: Fingertip configuration
;; Author: Andy Stewart lazycat.manatee@gmail.com
;; Maintainer: Andy Stewart lazycat.manatee@gmail.com
;; Copyright (C) 2008, 2009, Andy Stewart, all rights reserved.
;; Created: 2008-10-20 09:41:55
;; Version: 0.1
;; Last-Updated: 2008-10-20 09:41:55
;;           By: Andy Stewart
;; URL:
;; Keywords: fingertip
;; Compatibility: GNU Emacs 23.0.60.1
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Fingertip configuration
;;

;;; Installation:
;;
;; Put init-fingertip.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-fingertip)
;;
;; No need more.

;;; Change log:
;;
;; 2008/10/20
;;      First released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require


;;; Code:

(dolist (hook (list
               'bash-ts-mode-hook
               'c++-mode-hook
               'c++-ts-mode-hook
               'c-mode-common-hook
               'c-mode-hook
               'c-ts-mode-hook
               'cmake-ts-mode-hook
               'coffee-mode-hook
               'conf-toml-mode-hook
               'css-mode-hook
               'css-ts-mode-hook
               'emacs-lisp-mode-hook
               'go-mode-hook
               'haskell-mode-hook
               'ielm-mode-hook
               'jade-mode-hook
               'java-mode-hook
               'js-mode-hook
               'js-ts-mode-hook
               'json-ts-mode-hook
               'kotlin-mode-hook
               'lisp-interaction-mode-hook
               'lisp-mode-hook
               'llvm-mode-hook
               'lua-mode-hook
               'makefile-gmake-mode-hook
               'markdown-ts-mode-hook
               'maxima-mode-hook
               'mojo-mode-hook
               'nim-mode-hook
               'php-mode-hook
               'php-ts-mode-hook
               'python-mode-hook
               'python-ts-mode-hook
               'qmake-mode-hook
               'qml-mode-hook
               'ruby-mode-hook
               'rust-mode-hook
               'rust-ts-mode-hook
               'sh-mode-hook
               'swift-mode-hook
               'toml-ts-mode-hook
               'typescript-mode-hook
               'typescript-ts-mode-hook
               'web-mode-hook
               'zig-mode-hook
               'fsharp-mode-hook
               'clojure-mode-hook
               'clojure-ts-mode-hook
               'cider-repl-mode-hook
               'nix-mode-hook
               ))
  (add-hook hook #'(lambda ()
                     (when (or
                            (not (buffer-file-name))
                            (not (string-equal (file-name-extension (buffer-file-name)) "chat")))
                       (fingertip-mode 1)))))

(provide 'init-fingertip)

;;; init-fingertip.el ends here
