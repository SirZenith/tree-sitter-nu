=====
table-001-white-space-sep
=====

[[a b]; [ 1 2 ] [ 3 4 ]]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_table
    (val_list
     (val_string)
     (val_string))
    (val_list
     (val_number)
     (val_number))
    (val_list
     (val_number)
     (val_number))))))

=====
table-002-comma-sep
=====

[[a b]; [1 2], [3 4]]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_table
    (val_list
     (val_string)
     (val_string))
    (val_list
     (val_number)
     (val_number))
    (val_list
     (val_number)
     (val_number))))))
