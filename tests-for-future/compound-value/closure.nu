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
              (cmd_identifier)
              (val_variable
                (identifier)))))))))

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
              (cmd_identifier)
              (val_variable
                (identifier)))))))))

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
closure-004-this-aint-no-closure
=====

{}

-----

(nu_script
  (pipeline
    (pipe_element
      (val_record))))

=====
closure-005-param-annotation
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
              (cmd_identifier)
              (val_variable
                (identifier)))))))))

=====
closure-006-no-param
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
              (cmd_identifier)
              (val_variable
                (identifier)))))))))

=====
closure-007-multi-line-body
=====

{|name|
    let msg = "hello " + $name
    print $name
}

-----

(nu_script
  (pipeline
    (pipe_element
      (val_closure
        (parameter_pipes
          (parameter
            (identifier)))
        (stmt_let
          (identifier)
          (pipeline
            (pipe_element
              (expr_binary
                (val_string)
                (val_variable
                  (identifier))))))
        (pipeline
          (pipe_element
            (command
              (cmd_identifier)
              (val_variable
                (identifier)))))))))
