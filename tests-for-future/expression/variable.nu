=====
variable-001-variable-name
=====

[ $this $i_s $o-n-l-y $4or $testing] ]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_variable
          (identifier))
        (val_variable
          (identifier))
        (val_variable
          (identifier))
        (val_variable
          (identifier))
        (val_variable
          (identifier))))))

=====
variable-002-invalid-names
=====

[ $record{} $list[] $expr() $cell.path ]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_variable
          (identifier))
        (val_record)
        (val_variable
          (identifier))
        (val_list)
        (val_variable
          (identifier))
        (expr_parenthesized)
        (val_variable
          (identifier)
          (cell_path
            (path)))))))
