=====
string-001-normal-strings
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
string-002-string-interpolation
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
values-003-interpolation-single-quoted
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
