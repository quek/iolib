;;;; -*- Mode: Lisp; indent-tabs-mode: nil -*-
;;;
;;; --- Package definition.
;;;

(in-package :common-lisp-user)

(defpackage :iolib.os
  (:use :iolib.base :iolib.pathnames :cffi)
  (:import-from :iolib.pathnames #:split-root/nodes)
  (:export

   ;; Evironment
   #:environment
   #:environment-variable
   #:makunbound-environment-variable
   #:clear-environment

   ;; Directories
   #:current-directory
   #:with-current-directory
   #:delete-files
   #:directory-exists-p
   #:list-directory
   #:mapdir
   #:walk-directory
   #:with-directory-iterator

   ;; Files
   #:absolute-file-path
   #:resolve-file-path
   #:file-exists-p
   #:good-symlink-exists-p
   #:regular-file-exists-p
   #:file-kind

   ;; Symlinks
   #:read-symlink
   #:make-symlink
   #:make-hardlink

   ;; Permissions
   #:file-permissions

   ;; Temporary files
   ;; #:open-temporary-file
   ;; #:with-temporary-file

   ;; Password entries
   #:user-info

   ;; Time
   #:get-monotonic-time

   ;; Specials
   #:*temporary-directory*
   ))
