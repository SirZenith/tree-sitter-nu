=====
nothing-001-normal-null
=====

null

-----

(nu_script
 (pipeline
  (pipe_element
   (val_nothing))))

=====
nothing-002-case-sensitive
=====

[Null NULL]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_string)
    (val_string)))))
