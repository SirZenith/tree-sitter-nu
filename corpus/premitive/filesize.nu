=====
filesize-001-normal-filesize
=====

[1kb -1kb 1_1kb -1_1kb]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))))))

=====
filesize-002-case-insensitive
=====

[
    1kib 1kiB
    1kIb 1kIB
    1Kib 1KiB
    1KIb 1KIB
]

-----

(nu_script
 (pipeline
  (pipe_element
   (val_list
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))
    (val_filesize
     (val_number))))))
