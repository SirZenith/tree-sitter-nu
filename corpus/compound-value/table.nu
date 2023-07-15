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

=====
table-003-extra-comma
=====

[
    [[a b]; [1 2], [3 4],]
    [,[a b]; [1 2], [3 4]]
    [[a b]; [1 2], [3 4],,]
    [,,[a b]; [1 2], [3 4]]
]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_table
     (val_list
      (val_string)
      (val_string))
     (val_list
      (val_number)
      (val_number))
     (val_list
      (val_number)
      (val_number)))
    (val_table
     (val_list
      (val_string)
      (val_string))
     (val_list
      (val_number)
      (val_number))
     (val_list
      (val_number)
      (val_number)))
    (val_table
     (val_list
      (val_string)
      (val_string))
     (val_list
      (val_number)
      (val_number))
     (val_list
      (val_number)
      (val_number)))
    (val_table
     (val_list
      (val_string)
      (val_string))
     (val_list
      (val_number)
      (val_number))
     (val_list
      (val_number)
      (val_number)))))))

=====
table-004-extra-header
=====

[[a b] [c d]; [1 2]]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_table
    (val_list
     (val_string)
     (val_string))
    (val_list
     (val_string)
     (val_string))
    (val_list
     (val_number)
     (val_numbe))))))
