=====
record-001-comma-sep
=====

{a: true, b:false}

-----

(nu_script
  (pipeline
    (pipe_element
      (val_record
        (record_entry
          (identifier)
          (val_bool))
        (record_entry
          (identifier)
          (val_bool))))))

=====
record-002-white-space-sep
=====

{a: true b:false}

-----

(nu_script
  (pipeline
    (pipe_element
      (val_record
        (record_entry
          (identifier)
          (val_bool))
        (record_entry
          (identifier)
          (val_bool))))))

=====
record-003-missing-key
=====

{a:trueb:false}

-----

(nu_script
  (pipeline
    (pipe_element
      (val_record
        (record_entry
          (identifier)
          (val_string))
        (record_entry
          (val_string
            (MISSING _str_single_quotes))
          (val_bool))))))

=====
record-004-string-field-name
=====

{"a":true}

-----

(nu_script
  (pipeline
    (pipe_element
      (val_record
        (record_entry
          (val_string)
          (val_bool))))))

=====
record-005-extra-comma
=====

[
    {a: true,}
    {,a: true}
    {a: true,,}
    {,,a: true}
]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_record
          (record_entry
            (identifier)
            (val_bool)))
        (val_record
          (record_entry
            (identifier)
            (val_bool)))
        (val_record
          (record_entry
            (identifier)
            (val_bool)))
        (val_record
          (record_entry
            (identifier)
            (val_bool)))))))
