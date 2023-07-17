=====
variable-001-variable-names
=====

[$a $_a $a0 $abc $0a]

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
variable-002-sepcial-symbol
=====

[$a@ $a# $a$ $a% $a) $a, $a?]

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
          (identifier))
        (val_variable
          (identifier))
        (val_variable
          (identifier))))))
