=====
range-001-inclusive
=====

[1..2, 3.3.., ..1]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_range
     (val_number)
     (val_number))
    (val_range
     (val_number))
    (val_range
     (val_number))))))

=====
range-002-exclusive
=====

[1..<2, 1..<, ..<1]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_range
     (val_number)
     (val_number))
    (val_range
     (val_number))
    (val_range
     (val_number))))))

=====
range-003-inclusive-with-equal-sign
=====

[1..=2, 1..=, ..=1]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_range
     (val_number)
     (val_number))
    (val_range
     (val_number))
    (val_range
     (val_number))))))

=====
range-004-range-sub-expression
=====

(cmd)..(cmd)

-----

(nu_script
 (pipeline
  (pipe_element
   (val_range
    (expr_parenthesized
     (pipeline
      (pipe_element
       (command
        (cmd_head
         (cmd_identifier))))))
    (expr_parenthesized
     (pipeline
      (pipe_element
       (command
        (cmd_head
         (cmd_identifier))))))))))

=====
range-005-variable
=====

$a..$a

-----

(nu_script
 (pipeline
  (pipe_element
   (val_range
    (val_variable
     (identifier))
    (val_variable
     (identifier))))))
