;; Do not setup package.el since we will be using straight.el instead.
(setq package-enable-at-startup nil)

(let* ((default-directory (file-name-directory load-file-name))
       (init-file (expand-file-name "../init-straight.el")))
  ;; Install packages under ./straight directory.
  (setq straight-base-dir (expand-file-name ".local"))

  ;; ../init-straight.el is the setup file that sets emacs up to use straight.el
  ;; rather than pacakge.el. This file is in parent directory rather than
  ;; current directory, because it is used for several other startup
  ;; configurations.
  (if (file-exists-p init-file)
      (load init-file)
    (error "Error: %s does not exist" init-file))
  )
