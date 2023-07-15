=====
binary-001-white-space-sep
=====

[
    0b[0 1]
    0o[0 1 2 3 4 5 6 7]
    0x[0 1 2 3 4 5 6 7 8 9 a b c d e f]
]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_binary
     (hex_digit)
     (hex_digit))
    (val_binary
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit))
    (val_binary
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit))))))

=====
binary-002-comma-sep
=====

[
    0b[0, 1]
    0o[0, 1, 2, 3, 4, 5, 6, 7]
    0x[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f]
]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_binary
     (hex_digit)
     (hex_digit))
    (val_binary
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit))
    (val_binary
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit)
     (hex_digit))))))

=====
binary-003-extra-comma
=====

[0b[1,] 0b[,1] 0b[,,1] 0b[1,,]]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_binary
     (hex_digit))
    (val_binary
     (hex_digit))
    (val_binary
     (hex_digit))
    (val_binary
     (hex_digit))))))

=====
binary-004-case-sensitive
=====

[0B[1] 0O[1] 0X[1]]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_string)
    (val_string)
    (val_string)))))


