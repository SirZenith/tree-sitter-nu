=====
closure-001-normal-closure
=====

{|x| print $x}

-----

(nu_script
  (pipeline
    (pipe_element
      (val_closure
        (parameter_pipes
          (parameter
            (identifier)))
        (pipeline
          (pipe_element
            (command
              (cmd_head
                (cmd_identifier)
                (val_variable
                  (identifier))))))))))

=====
closure-002-multiple-param
=====

{|x, y| print $x }

-----

(nu_script
  (pipeline
    (pipe_element
      (val_closure
        (parameter_pipes
          (parameter
            (identifier))
          (parameter
            (identifier)))
        (pipeline
          (pipe_element
            (command
              (cmd_head
                (cmd_identifier)
                (val_variable
                  (identifier))))))))))

=====
closure-003-empty-body
=====

{||}

-----

(nu_script
  (pipeline
    (pipe_element
      (val_closure
        (parameter_pipes)))))

=====
closure-004-param-annotation
=====

{|x: string| print $x}

-----

(nu_script
  (pipeline
    (pipe_element
      (val_closure
        (parameter_pipes
          (parameter
            (identifier)
            (param_type
              (flat_type))))
        (pipeline
          (pipe_element
            (command
              (cmd_head
                (cmd_identifier)
                (val_variable
                  (identifier))))))))))

=====
closure-005-no-param
=====

{ print $in }

-----

(nu_script
  (pipeline
    (pipe_element
      (val_closure
        (pipeline
          (pipe_element
            (command
              (cmd_head
                (cmd_identifier)
                (val_variable
                  (identifier))))))))))
