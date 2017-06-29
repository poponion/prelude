;(setq anaconda-mode-server-script "/usr/local/lib/python2.7/dist-packages/anaconda_mode.py")
(setq python-shell-interpreter "python")
(defun compile-geabase ()
"compile Geabase in default dir"
(interactive)
(compile "cd /home/fangji.hcm/code/geabase && scons -j24 --warn=no-duplicate-environment"))
(global-set-key (kbd "C-x ,") 'compile-geabase)
