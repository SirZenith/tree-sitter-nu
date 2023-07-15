=====
date-001-normal-date
=====

[
    2022-02-02
    2022-02-02T14:30:00
    2022-02-02T14:30:00+05:00
]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_date)
        (val_date)
        (val_date)))))

=====
date-002-fraction-section
=====

[
    2022-02-02T14:30:00.1234
    2022-02-02T14:30:00.1234+05:00
]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_date)
        (val_date)))))

=====
date-003-ill-formed
=====

[
    2022-02-02T14:30.00
    2022-02-02T14:30.00:00
    2022-02-02T14:30:00.1234+05:001
]

-----

(nu_script
  (pipeline
    (pipe_element
      (val_list
        (val_string)
        (val_string)
        (val_string)))))
