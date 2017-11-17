;(setq anaconda-mode-server-script "/usr/local/lib/python2.7/dist-packages/anaconda_mode.py")
(setq python-shell-interpreter "python")
(defun compile-geabase ()
"compile Geabase in default dir"
(interactive)
(compile "cd /home/fangji.hcm/code/geabase && scons -j24 target=7u2 --warn=no-duplicate-environment"))
(global-set-key (kbd "C-x ,") 'compile-geabase)

(defun compile-project (project)
  "compile project in default dir"
  (interactive "s ProjectName:")
  (if (= 0 (string-bytes project))
      (setq project "nbtm"))
  (compile (concat "cd /home/fangji.hcm/code/" project " && scons -j24")))
(global-set-key (kbd "C-x /") 'compile-project)
