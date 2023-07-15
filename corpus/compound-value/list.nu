=====
list-001-comma-sep
=====

[a, b, c]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_string)
        (val_string)
        (val_string)))))

=====
list-002-white-space-sep
=====

[a b c]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_string)
        (val_string)
        (val_string)))))

=====
list-003-mixed-sep
=====

[a, b c]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_string)
        (val_string)
        (val_string)))))

=====
list-004-nested
=====

[[], this is, [ 1 2 ], it]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_list)
        (val_string)
        (val_string)
        (val_list
          (val_number)
          (val_number))
        (val_string)))))

=====
list-005-extra-comma
=====

[[,1] [1,]  [1,,] [,,1]]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_list
          (val_number))
        (val_list
          (val_number))
        (val_list
          (val_number))
        (val_list
          (val_number))))))
