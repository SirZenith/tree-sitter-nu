=====
bool-001-normal-boolean
=====

[true false]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_bool)
        (val_bool)))))

=====
bool-002-case-sensitive
=====

[TRUE False]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_string)
        (val_string)))))
