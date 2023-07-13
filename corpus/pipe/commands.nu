=====
cmd-001-head
=====

cmd

-----

(nu_script
  (pipeline
    (pipe_element
      (command
        (cmd_head
          (cmd_identifier))))))

======
cmd-002-head-sub
======

cmd sub

------

(nu_script
  (pipeline
    (pipe_element
      (command
        (cmd_head_sub
          (cmd_identifier)
          (cmd_identifier))))))

=====
cmd-003-external-cmd
=====

^cmd 42

-----

(nu_script
  (pipeline
    (pipe_element
      (command
        (cmd_head
          (cmd_identifier)
          (val_number))))))

=====
cmd-004-numeric-name
=====

2to3 -w main.py

-----

(nu_script
  (pipeline
    (pipe_element
      (command
        (cmd_head
          (cmd_identifier)
          (short_flag)
          (val_string))))))
