=====
duration-001-normal-duration
=====

[1ns 1us 1ms 1sec 1min 1hr 1day 1wk]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_duration
     (val_number))
    (val_duration
     (val_number))
    (val_string)))))

=====
duration-002-case-sensitive
=====

[1NS 1US 1Day 1DAY]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_string)
    (val_string)
    (val_string)
    (val_string)))))
