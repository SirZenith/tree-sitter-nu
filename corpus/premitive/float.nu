=====
float-001-float
=====

[1.0, 01.0, 1_0.0, 0_.0, -0.0_1]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_number)
        (val_number)
        (val_number)
        (val_number)
        (val_number)))))

=====
float-002-scientific-notation
=====

[1e1 1.0E1 0.3E1 -10E3 3E-10 1e1_4 10E]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_number)
        (val_number)
        (val_number)
        (val_number)
        (val_number)
        (val_number)
        (val_string)))))
