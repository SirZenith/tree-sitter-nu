=====
values-001-numbers
=====

[69 6.9 0b1000101 0o105 6.9e1 6.9E+1 0x45 -69 +69]

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
        (val_number)
        (val_number)
        (val_number)))))

=====
values-002-booleans
=====


[true false (not true)]

------

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_bool)
        (val_bool)
        (expr_parenthesized
          (pipe_element
            (expr_unary
              (val_bool))))))))

=====
values-003-nothing
=====

null

-----

(nu_script
  (pipeline
    (pipe_element
      (val_nothing))))

=====
values-004-binary
=====

0x[1 2 3 4 5] | 0b[100, 100, 100]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_binary
        (hex_digit)
        (hex_digit)
        (hex_digit)
        (hex_digit)
        (hex_digit)))
    (pipe_element
      (val_binary
        (hex_digit)
        (hex_digit)
        (hex_digit)))))

=====
values-005-string
=====

[this "is" 'only' `for` "\ttesting\n"]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_string)
    (val_string)
    (val_string)
    (val_string)
    (val_string
     (escape_sequence)
     (escape_sequence))))))

=====
values-006-string-interpolation
=====

[$"(echo this)" $"\(echo this)", $"\(echo this\)"]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_interpolated
          (expr_interpolated
            (pipeline
              (pipe_element
                (command
                  (cmd_head
                    (cmd_identifier)
                    (val_string)))))))
        (val_interpolated
          (inter_escape_sequence)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content))
        (val_interpolated
          (inter_escape_sequence)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (escaped_interpolated_content)
          (inter_escape_sequence))))))

=====
values-007-interpolation-single-quoted
=====

[$'(echo this)' $'\(echo this)' $'\(echo this\)']

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_interpolated
     (expr_interpolated
      (pipeline
       (pipe_element
        (command
         (cmd_head
          cmd_identifier)
          (val_string)))))))
    (val_interpolated
     (unescaped_interpolated_content)
     (expr_interpolated
      (pipeline
       (pipe_element
        (command
         (cmd_head
          (cmd_identifier)
          (val_string)))))))
    (val_interpolated
     (unescaped_interpolated_content)
     (expr_interpolated
      (pipeline
       (pipe_element
        (command
         (cmd_head
          (cmd_identifier)
          (val_string)))))))))))

=====
values-008-filesize
=====

[10kb 10kib 10MB 10KiB]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))))))

