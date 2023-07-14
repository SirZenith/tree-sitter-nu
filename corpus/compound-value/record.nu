=====
record-001-with-comma
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
record-002-with-white-space
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
record-003-missing-field
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
