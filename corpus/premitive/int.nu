=====
int-001-int
=====

[1 -1 001 -001]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_number)
    (val_number)
    (val_number)
    (val_number)))))

=====
int-002-underscore-sep
=====

[100_000 -100_000 _100 -_100]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_number)
    (val_number)
    (val_number)
    (val_number)))))

=====
int-003-binary
=====

[0b10 0b001 0b1_1 -0b1_1 0b3]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_number)
    (val_number)
    (val_number)
    (val_string)
    (ERROR)))))

=====
int-004-octal
=====

[0o1234567 0o01 0o1_1 -0o1_1 0b8]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_number)
    (val_number)
    (val_number)
    (val_string)
    (ERROR)))))

=====
int-005-hex
=====

[0x123456789abcdef 0x01 0x1_1 -0x1_1 0xg]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_number)
    (val_number)
    (val_number)
    (val_string)
    (ERROR)))))

=====
int-006-case-sensitive
=====

[0X1 0O1 0B1]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_string)
    (val_string)
    (val_string)))))
