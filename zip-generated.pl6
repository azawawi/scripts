## Enumerations

# == /usr/include/zip.h ==

enum zip_source_cmd is export (
   ZIP_SOURCE_OPEN => 0,
   ZIP_SOURCE_READ => 1,
   ZIP_SOURCE_CLOSE => 2,
   ZIP_SOURCE_STAT => 3,
   ZIP_SOURCE_ERROR => 4,
   ZIP_SOURCE_FREE => 5
);
## Structures


# == /usr/include/wchar.h ==

class __mbstate_t is repr('CStruct') is export {
	has int32                         $.__count; # int __count
	HAS __mbstate_t___value_Union     $.__value; # Union __value
}

# == /usr/include/inttypes.h ==

class imaxdiv_t is repr('CStruct') is export {
	has long                          $.quot; # long int quot
	has long                          $.rem; # long int rem
}

# == /usr/include/xlocale.h ==

class __locale_struct is repr('CStruct') is export {
	has CArray[Pointer[__locale_data]]$.__locales; # __locale_data*[13] __locales
	has Pointer[uint16]               $.__ctype_b; # const short unsigned int* __ctype_b
	has Pointer[int32]                $.__ctype_tolower; # const int* __ctype_tolower
	has Pointer[int32]                $.__ctype_toupper; # const int* __ctype_toupper
	has CArray[Str]                   $.__names; # const char*[13] __names
}
class __locale_data is repr('CStruct') is export {
}

# == <built-in> ==

class __va_list_tag is repr('CStruct') is export {
}

# == /usr/include/_G_config.h ==

class _G_fpos_t is repr('CStruct') is export {
	has __off_t                       $.__pos; # Typedef<__off_t>->|long int| __pos
	HAS __mbstate_t                   $.__state; # __mbstate_t __state
}
class _G_fpos64_t is repr('CStruct') is export {
	has __off64_t                     $.__pos; # Typedef<__off64_t>->|long int| __pos
	HAS __mbstate_t                   $.__state; # __mbstate_t __state
}

# == /usr/include/zip.h ==

class zip_stat is repr('CStruct') is export {
	has uint64_t                      $.valid; # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int|| valid
	has Str                           $.name; # const char* name
	has uint64_t                      $.index; # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int|| index
	has uint64_t                      $.size; # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int|| size
	has uint64_t                      $.comp_size; # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int|| comp_size
	has __time_t                      $.mtime; # Typedef<time_t>->|Typedef<__time_t>->|long int|| mtime
	has uint32_t                      $.crc; # Typedef<zip_uint32_t>->|Typedef<uint32_t>->|unsigned int|| crc
	has uint16_t                      $.comp_method; # Typedef<zip_uint16_t>->|Typedef<uint16_t>->|short unsigned int|| comp_method
	has uint16_t                      $.encryption_method; # Typedef<zip_uint16_t>->|Typedef<uint16_t>->|short unsigned int|| encryption_method
	has uint32_t                      $.flags; # Typedef<zip_uint32_t>->|Typedef<uint32_t>->|unsigned int|| flags
}
class zip is repr('CStruct') is export {
}
class zip_file is repr('CStruct') is export {
}
class zip_source is repr('CStruct') is export {
}

# == /usr/include/time.h ==

class timespec is repr('CStruct') is export {
	has __time_t                      $.tv_sec; # Typedef<__time_t>->|long int| tv_sec
	has __syscall_slong_t             $.tv_nsec; # Typedef<__syscall_slong_t>->|long int| tv_nsec
}
class tm is repr('CStruct') is export {
	has int32                         $.tm_sec; # int tm_sec
	has int32                         $.tm_min; # int tm_min
	has int32                         $.tm_hour; # int tm_hour
	has int32                         $.tm_mday; # int tm_mday
	has int32                         $.tm_mon; # int tm_mon
	has int32                         $.tm_year; # int tm_year
	has int32                         $.tm_wday; # int tm_wday
	has int32                         $.tm_yday; # int tm_yday
	has int32                         $.tm_isdst; # int tm_isdst
	has long                          $.tm_gmtoff; # long int tm_gmtoff
	has Str                           $.tm_zone; # const char* tm_zone
}
class itimerspec is repr('CStruct') is export {
	HAS timespec                      $.it_interval; # timespec it_interval
	HAS timespec                      $.it_value; # timespec it_value
}
class sigevent is repr('CStruct') is export {
}
## Extras stuff

constant _IO_lock_tPtr is export = Pointer;
constant fpos64_t is export := _G_fpos64_t;
constant __FILE is export := _IO_FILE;
constant cookie_io_functions_t is export := _IO_cookie_io_functions_t;
constant fpos_t is export := _G_fpos_t;
constant __pthread_list_t is export := __pthread_internal_list;
constant fsid_t is export := __fsid_t;
constant sigset_t is export := __sigset_t;
constant FILE is export := _IO_FILE;
## Functions


# == /usr/include/inttypes.h ==

#-From /usr/include/inttypes.h:290
#/* Compute absolute value of N.  */
#extern intmax_t imaxabs (intmax_t __n) __THROW __attribute__ ((__const__));
sub imaxabs(intmax_t $__n # Typedef<intmax_t>->|long int|
            ) is native(LIB) returns intmax_t is export { * }

#-From /usr/include/inttypes.h:294
#/* Return the `imaxdiv_t' representation of the value of NUMER over DENOM. */
#extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
#      __THROW __attribute__ ((__const__));
sub imaxdiv(intmax_t                      $__numer # Typedef<intmax_t>->|long int|
           ,intmax_t                      $__denom # Typedef<intmax_t>->|long int|
            ) is native(LIB) returns imaxdiv_t is export { * }

#-From /usr/include/inttypes.h:324
#/* Like `strtol' but convert to `intmax_t'.  */
#__extern_inline intmax_t
#__NTH (strtoimax (const char *__restrict nptr, char **__restrict endptr,
sub strtoimax(Str                           $nptr # const const char*
             ,Pointer[Str]                  $endptr # const char**
             ,int32                         $base # int
              ) is native(LIB) returns intmax_t is export { * }

#-From /usr/include/inttypes.h:336
#/* Like `strtoul' but convert to `uintmax_t'.  */
#__extern_inline uintmax_t
#__NTH (strtoumax (const char *__restrict nptr, char **__restrict endptr,
sub strtoumax(Str                           $nptr # const const char*
             ,Pointer[Str]                  $endptr # const char**
             ,int32                         $base # int
              ) is native(LIB) returns uintmax_t is export { * }

#-From /usr/include/inttypes.h:348
#/* Like `wcstol' but convert to `intmax_t'.  */
#__extern_inline intmax_t
#__NTH (wcstoimax (const __gwchar_t *__restrict nptr,
sub wcstoimax(Pointer[NATwchar_tNAT]        $nptr # const const wchar_t*
             ,Pointer[Pointer[NATwchar_tNAT]]$endptr # const wchar_t**
             ,int32                         $base # int
              ) is native(LIB) returns intmax_t is export { * }

#-From /usr/include/inttypes.h:362
#/* Like `wcstoul' but convert to `uintmax_t'.  */
#__extern_inline uintmax_t
#__NTH (wcstoumax (const __gwchar_t *__restrict nptr,
sub wcstoumax(Pointer[NATwchar_tNAT]        $nptr # const const wchar_t*
             ,Pointer[Pointer[NATwchar_tNAT]]$endptr # const wchar_t**
             ,int32                         $base # int
              ) is native(LIB) returns uintmax_t is export { * }


# == /usr/include/zip.h ==

#-From /usr/include/zip.h:208
#ZIP_EXTERN zip_int64_t zip_add(struct zip *, const char *, struct zip_source *);
sub zip_add(Pointer[zip]                   # zip*
           ,Str                            # const char*
           ,Pointer[zip_source]            # zip_source*
            ) is native(LIB) returns int64_t is export { * }

#-From /usr/include/zip.h:209
#ZIP_EXTERN zip_int64_t zip_add_dir(struct zip *, const char *);
sub zip_add_dir(Pointer[zip]                   # zip*
               ,Str                            # const char*
                ) is native(LIB) returns int64_t is export { * }

#-From /usr/include/zip.h:210
#ZIP_EXTERN int zip_close(struct zip *);
sub zip_close(Pointer[zip]  # zip*
              ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:211
#ZIP_EXTERN int zip_delete(struct zip *, zip_uint64_t);
sub zip_delete(Pointer[zip]                   # zip*
              ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
               ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:212
#ZIP_EXTERN void zip_error_clear(struct zip *);
sub zip_error_clear(Pointer[zip]  # zip*
                    ) is native(LIB)  is export { * }

#-From /usr/include/zip.h:213
#ZIP_EXTERN void zip_error_get(struct zip *, int *, int *);
sub zip_error_get(Pointer[zip]                   # zip*
                 ,Pointer[int32]                 # int*
                 ,Pointer[int32]                 # int*
                  ) is native(LIB)  is export { * }

#-From /usr/include/zip.h:214
#ZIP_EXTERN int zip_error_get_sys_type(int);
sub zip_error_get_sys_type(int32  # int
                           ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:215
#ZIP_EXTERN int zip_error_to_str(char *, zip_uint64_t, int, int);
sub zip_error_to_str(Str                            # char*
                    ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                    ,int32                          # int
                    ,int32                          # int
                     ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:216
#ZIP_EXTERN int zip_fclose(struct zip_file *);
sub zip_fclose(Pointer[zip_file]  # zip_file*
               ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:217
#ZIP_EXTERN struct zip *zip_fdopen(int, int, int *);
sub zip_fdopen(int32                          # int
              ,int32                          # int
              ,Pointer[int32]                 # int*
               ) is native(LIB) returns Pointer[zip] is export { * }

#-From /usr/include/zip.h:218
#ZIP_EXTERN void zip_file_error_clear(struct zip_file *);
sub zip_file_error_clear(Pointer[zip_file]  # zip_file*
                         ) is native(LIB)  is export { * }

#-From /usr/include/zip.h:219
#ZIP_EXTERN void zip_file_error_get(struct zip_file *, int *, int *);
sub zip_file_error_get(Pointer[zip_file]              # zip_file*
                      ,Pointer[int32]                 # int*
                      ,Pointer[int32]                 # int*
                       ) is native(LIB)  is export { * }

#-From /usr/include/zip.h:220
#ZIP_EXTERN const char *zip_file_strerror(struct zip_file *);
sub zip_file_strerror(Pointer[zip_file]  # zip_file*
                      ) is native(LIB) returns Str is export { * }

#-From /usr/include/zip.h:221
#ZIP_EXTERN struct zip_file *zip_fopen(struct zip *, const char *, int);
sub zip_fopen(Pointer[zip]                   # zip*
             ,Str                            # const char*
             ,int32                          # int
              ) is native(LIB) returns Pointer[zip_file] is export { * }

#-From /usr/include/zip.h:223
#ZIP_EXTERN struct zip_file *zip_fopen_encrypted(struct zip *, const char *,
#						int, const char *);
sub zip_fopen_encrypted(Pointer[zip]                   # zip*
                       ,Str                            # const char*
                       ,int32                          # int
                       ,Str                            # const char*
                        ) is native(LIB) returns Pointer[zip_file] is export { * }

#-From /usr/include/zip.h:224
#ZIP_EXTERN struct zip_file *zip_fopen_index(struct zip *, zip_uint64_t, int);
sub zip_fopen_index(Pointer[zip]                   # zip*
                   ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                   ,int32                          # int
                    ) is native(LIB) returns Pointer[zip_file] is export { * }

#-From /usr/include/zip.h:227
#ZIP_EXTERN struct zip_file *zip_fopen_index_encrypted(struct zip *,
#						      zip_uint64_t, int,
#						      const char *);
sub zip_fopen_index_encrypted(Pointer[zip]                   # zip*
                             ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                             ,int32                          # int
                             ,Str                            # const char*
                              ) is native(LIB) returns Pointer[zip_file] is export { * }

#-From /usr/include/zip.h:228
#ZIP_EXTERN zip_int64_t zip_fread(struct zip_file *, void *, zip_uint64_t);
sub zip_fread(Pointer[zip_file]              # zip_file*
             ,Pointer                        # void*
             ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
              ) is native(LIB) returns int64_t is export { * }

#-From /usr/include/zip.h:229
#ZIP_EXTERN const char *zip_get_archive_comment(struct zip *, int *, int);
sub zip_get_archive_comment(Pointer[zip]                   # zip*
                           ,Pointer[int32]                 # int*
                           ,int32                          # int
                            ) is native(LIB) returns Str is export { * }

#-From /usr/include/zip.h:230
#ZIP_EXTERN int zip_get_archive_flag(struct zip *, int, int);
sub zip_get_archive_flag(Pointer[zip]                   # zip*
                        ,int32                          # int
                        ,int32                          # int
                         ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:232
#ZIP_EXTERN const char *zip_get_file_comment(struct zip *, zip_uint64_t,
#					    int *, int);
sub zip_get_file_comment(Pointer[zip]                   # zip*
                        ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                        ,Pointer[int32]                 # int*
                        ,int32                          # int
                         ) is native(LIB) returns Str is export { * }

#-From /usr/include/zip.h:234
#ZIP_EXTERN const char *zip_get_file_extra(struct zip *, zip_uint64_t,
#					  int *, int);
sub zip_get_file_extra(Pointer[zip]                   # zip*
                      ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                      ,Pointer[int32]                 # int*
                      ,int32                          # int
                       ) is native(LIB) returns Str is export { * }

#-From /usr/include/zip.h:235
#ZIP_EXTERN const char *zip_get_name(struct zip *, zip_uint64_t, int);
sub zip_get_name(Pointer[zip]                   # zip*
                ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                ,int32                          # int
                 ) is native(LIB) returns Str is export { * }

#-From /usr/include/zip.h:236
#ZIP_EXTERN zip_uint64_t zip_get_num_entries(struct zip *, int);
sub zip_get_num_entries(Pointer[zip]                   # zip*
                       ,int32                          # int
                        ) is native(LIB) returns uint64_t is export { * }

#-From /usr/include/zip.h:237
#ZIP_EXTERN int zip_get_num_files(struct zip *);  /* deprecated, use zip_get_num_entries instead */
sub zip_get_num_files(Pointer[zip]  # zip*
                      ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:238
#ZIP_EXTERN int zip_name_locate(struct zip *, const char *, int);
sub zip_name_locate(Pointer[zip]                   # zip*
                   ,Str                            # const char*
                   ,int32                          # int
                    ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:239
#ZIP_EXTERN struct zip *zip_open(const char *, int, int *);
sub zip_open(Str                            # const char*
            ,int32                          # int
            ,Pointer[int32]                 # int*
             ) is native(LIB) returns Pointer[zip] is export { * }

#-From /usr/include/zip.h:240
#ZIP_EXTERN int zip_rename(struct zip *, zip_uint64_t, const char *);
sub zip_rename(Pointer[zip]                   # zip*
              ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
              ,Str                            # const char*
               ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:241
#ZIP_EXTERN int zip_replace(struct zip *, zip_uint64_t, struct zip_source *);
sub zip_replace(Pointer[zip]                   # zip*
               ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
               ,Pointer[zip_source]            # zip_source*
                ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:242
#ZIP_EXTERN int zip_set_archive_comment(struct zip *, const char *, int);
sub zip_set_archive_comment(Pointer[zip]                   # zip*
                           ,Str                            # const char*
                           ,int32                          # int
                            ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:243
#ZIP_EXTERN int zip_set_archive_flag(struct zip *, int, int);
sub zip_set_archive_flag(Pointer[zip]                   # zip*
                        ,int32                          # int
                        ,int32                          # int
                         ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:244
#ZIP_EXTERN int zip_set_default_password(struct zip *, const char *);
sub zip_set_default_password(Pointer[zip]                   # zip*
                            ,Str                            # const char*
                             ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:246
#ZIP_EXTERN int zip_set_file_comment(struct zip *, zip_uint64_t,
#				    const char *, int);
sub zip_set_file_comment(Pointer[zip]                   # zip*
                        ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                        ,Str                            # const char*
                        ,int32                          # int
                         ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:248
#ZIP_EXTERN int zip_set_file_extra(struct zip *, zip_uint64_t,
#				  const char *, int);
sub zip_set_file_extra(Pointer[zip]                   # zip*
                      ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                      ,Str                            # const char*
                      ,int32                          # int
                       ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:250
#ZIP_EXTERN struct zip_source *zip_source_buffer(struct zip *, const void *,
#						zip_uint64_t, int);
sub zip_source_buffer(Pointer[zip]                   # zip*
                     ,Pointer                        # const void*
                     ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                     ,int32                          # int
                      ) is native(LIB) returns Pointer[zip_source] is export { * }

#-From /usr/include/zip.h:252
#ZIP_EXTERN struct zip_source *zip_source_file(struct zip *, const char *,
#					      zip_uint64_t, zip_int64_t);
sub zip_source_file(Pointer[zip]                   # zip*
                   ,Str                            # const char*
                   ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                   ,int64_t                        # Typedef<zip_int64_t>->|Typedef<int64_t>->|long int||
                    ) is native(LIB) returns Pointer[zip_source] is export { * }

#-From /usr/include/zip.h:254
#ZIP_EXTERN struct zip_source *zip_source_filep(struct zip *, FILE *,
#					       zip_uint64_t, zip_int64_t);
sub zip_source_filep(Pointer[zip]                   # zip*
                    ,Pointer[_IO_FILE]              # Typedef<FILE>->|_IO_FILE|*
                    ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                    ,int64_t                        # Typedef<zip_int64_t>->|Typedef<int64_t>->|long int||
                     ) is native(LIB) returns Pointer[zip_source] is export { * }

#-From /usr/include/zip.h:255
#ZIP_EXTERN void zip_source_free(struct zip_source *);
sub zip_source_free(Pointer[zip_source]  # zip_source*
                    ) is native(LIB)  is export { * }

#-From /usr/include/zip.h:257
#ZIP_EXTERN struct zip_source *zip_source_function(struct zip *,
#						  zip_source_callback, void *);
sub zip_source_function(Pointer[zip]                   # zip*
                       ,& (Pointer, Pointer, uint64_t, int32 --> int64_t) # Typedef<zip_source_callback>->|F:Typedef<zip_int64_t>->|Typedef<int64_t>->|long int|| ( void*, void*, Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||, zip_source_cmd)*|
                       ,Pointer                        # void*
                        ) is native(LIB) returns Pointer[zip_source] is export { * }

#-From /usr/include/zip.h:260
#ZIP_EXTERN struct zip_source *zip_source_zip(struct zip *, struct zip *,
#					     zip_uint64_t, int,
#					     zip_uint64_t, zip_int64_t);
sub zip_source_zip(Pointer[zip]                   # zip*
                  ,Pointer[zip]                   # zip*
                  ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                  ,int32                          # int
                  ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                  ,int64_t                        # Typedef<zip_int64_t>->|Typedef<int64_t>->|long int||
                   ) is native(LIB) returns Pointer[zip_source] is export { * }

#-From /usr/include/zip.h:261
#ZIP_EXTERN int zip_stat(struct zip *, const char *, int, struct zip_stat *);
sub zip_stat(Pointer[zip]                   # zip*
            ,Str                            # const char*
            ,int32                          # int
            ,Pointer[zip_stat]              # zip_stat*
             ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:263
#ZIP_EXTERN int zip_stat_index(struct zip *, zip_uint64_t, int,
#			      struct zip_stat *);
sub zip_stat_index(Pointer[zip]                   # zip*
                  ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                  ,int32                          # int
                  ,Pointer[zip_stat]              # zip_stat*
                   ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:264
#ZIP_EXTERN void zip_stat_init(struct zip_stat *);
sub zip_stat_init(Pointer[zip_stat]  # zip_stat*
                  ) is native(LIB)  is export { * }

#-From /usr/include/zip.h:265
#ZIP_EXTERN const char *zip_strerror(struct zip *);
sub zip_strerror(Pointer[zip]  # zip*
                 ) is native(LIB) returns Str is export { * }

#-From /usr/include/zip.h:266
#ZIP_EXTERN int zip_unchange(struct zip *, zip_uint64_t);
sub zip_unchange(Pointer[zip]                   # zip*
                ,uint64_t                       # Typedef<zip_uint64_t>->|Typedef<uint64_t>->|long unsigned int||
                 ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:267
#ZIP_EXTERN int zip_unchange_all(struct zip *);
sub zip_unchange_all(Pointer[zip]  # zip*
                     ) is native(LIB) returns int32 is export { * }

#-From /usr/include/zip.h:268
#ZIP_EXTERN int zip_unchange_archive(struct zip *);
sub zip_unchange_archive(Pointer[zip]  # zip*
                         ) is native(LIB) returns int32 is export { * }


# == /usr/include/time.h ==

#-From /usr/include/time.h:189
#__BEGIN_NAMESPACE_STD
#/* Time used by the program so far (user time + system time).
#   The result / CLOCKS_PER_SECOND is program time in seconds.  */
#extern clock_t clock (void) __THROW;
sub clock(
          ) is native(LIB) returns __clock_t is export { * }

#-From /usr/include/time.h:192
#/* Return the current time and put it in *TIMER if TIMER is not NULL.  */
#extern time_t time (time_t *__timer) __THROW;
sub time(Pointer[__time_t] $__timer # Typedef<time_t>->|Typedef<__time_t>->|long int||*
         ) is native(LIB) returns __time_t is export { * }

#-From /usr/include/time.h:196
#/* Return the difference between TIME1 and TIME0.  */
#extern double difftime (time_t __time1, time_t __time0)
#     __THROW __attribute__ ((__const__));
sub difftime(__time_t                      $__time1 # Typedef<time_t>->|Typedef<__time_t>->|long int||
            ,__time_t                      $__time0 # Typedef<time_t>->|Typedef<__time_t>->|long int||
             ) is native(LIB) returns num64 is export { * }

#-From /usr/include/time.h:199
#/* Return the `time_t' representation of TP and normalize TP.  */
#extern time_t mktime (struct tm *__tp) __THROW;
sub mktime(Pointer[tm] $__tp # tm*
           ) is native(LIB) returns __time_t is export { * }

#-From /usr/include/time.h:207
#/* Format TP into S according to FORMAT.
#   Write no more than MAXSIZE characters and return the number
#   of characters written, or 0 if it would exceed MAXSIZE.  */
#extern size_t strftime (char *__restrict __s, size_t __maxsize,
#			const char *__restrict __format,
#			const struct tm *__restrict __tp) __THROW;
sub strftime(Str                           $__s # const char*
            ,size_t                        $__maxsize # Typedef<size_t>->|long unsigned int|
            ,Str                           $__format # const const char*
            ,Pointer[tm]                   $__tp # const const tm*
             ) is native(LIB) returns size_t is export { * }

#-From /usr/include/time.h:215
## ifdef __USE_XOPEN
#/* Parse S according to FORMAT and store binary time information in TP.
#   The return value is a pointer to the first unparsed character in S.  */
#extern char *strptime (const char *__restrict __s,
#		       const char *__restrict __fmt, struct tm *__tp)
#     __THROW;
sub strptime(Str                           $__s # const const char*
            ,Str                           $__fmt # const const char*
            ,Pointer[tm]                   $__tp # tm*
             ) is native(LIB) returns Str is export { * }

#-From /usr/include/time.h:226
#extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
#			  const char *__restrict __format,
#			  const struct tm *__restrict __tp,
#			  __locale_t __loc) __THROW;
sub strftime_l(Str                           $__s # const char*
              ,size_t                        $__maxsize # Typedef<size_t>->|long unsigned int|
              ,Str                           $__format # const const char*
              ,Pointer[tm]                   $__tp # const const tm*
              ,Pointer[__locale_struct]      $__loc # Typedef<__locale_t>->|__locale_struct*|
               ) is native(LIB) returns size_t is export { * }

#-From /usr/include/time.h:232
## ifdef __USE_GNU
#extern char *strptime_l (const char *__restrict __s,
#			 const char *__restrict __fmt, struct tm *__tp,
#			 __locale_t __loc) __THROW;
sub strptime_l(Str                           $__s # const const char*
              ,Str                           $__fmt # const const char*
              ,Pointer[tm]                   $__tp # tm*
              ,Pointer[__locale_struct]      $__loc # Typedef<__locale_t>->|__locale_struct*|
               ) is native(LIB) returns Str is export { * }

#-From /usr/include/time.h:239
#__BEGIN_NAMESPACE_STD
#/* Return the `struct tm' representation of *TIMER
#   in Universal Coordinated Time (aka Greenwich Mean Time).  */
#extern struct tm *gmtime (const time_t *__timer) __THROW;
sub gmtime(Pointer[__time_t] $__timer # const Typedef<time_t>->|Typedef<__time_t>->|long int||*
           ) is native(LIB) returns Pointer[tm] is export { * }

#-From /usr/include/time.h:243
#/* Return the `struct tm' representation
#   of *TIMER in the local timezone.  */
#extern struct tm *localtime (const time_t *__timer) __THROW;
sub localtime(Pointer[__time_t] $__timer # const Typedef<time_t>->|Typedef<__time_t>->|long int||*
              ) is native(LIB) returns Pointer[tm] is export { * }

#-From /usr/include/time.h:250
## if defined __USE_POSIX || defined __USE_MISC
#/* Return the `struct tm' representation of *TIMER in UTC,
#   using *TP to store the result.  */
#extern struct tm *gmtime_r (const time_t *__restrict __timer,
#			    struct tm *__restrict __tp) __THROW;
sub gmtime_r(Pointer[__time_t]             $__timer # const const Typedef<time_t>->|Typedef<__time_t>->|long int||*
            ,Pointer[tm]                   $__tp # const tm*
             ) is native(LIB) returns Pointer[tm] is export { * }

#-From /usr/include/time.h:255
#/* Return the `struct tm' representation of *TIMER in local time,
#   using *TP to store the result.  */
#extern struct tm *localtime_r (const time_t *__restrict __timer,
#			       struct tm *__restrict __tp) __THROW;
sub localtime_r(Pointer[__time_t]             $__timer # const const Typedef<time_t>->|Typedef<__time_t>->|long int||*
               ,Pointer[tm]                   $__tp # const tm*
                ) is native(LIB) returns Pointer[tm] is export { * }

#-From /usr/include/time.h:261
#__BEGIN_NAMESPACE_STD
#/* Return a string of the form "Day Mon dd hh:mm:ss yyyy\n"
#   that is the representation of TP in this format.  */
#extern char *asctime (const struct tm *__tp) __THROW;
sub asctime(Pointer[tm] $__tp # const tm*
            ) is native(LIB) returns Str is export { * }

#-From /usr/include/time.h:264
#/* Equivalent to `asctime (localtime (timer))'.  */
#extern char *ctime (const time_t *__timer) __THROW;
sub ctime(Pointer[__time_t] $__timer # const Typedef<time_t>->|Typedef<__time_t>->|long int||*
          ) is native(LIB) returns Str is export { * }

#-From /usr/include/time.h:273
#/* Return in BUF a string of the form "Day Mon dd hh:mm:ss yyyy\n"
#   that is the representation of TP in this format.  */
#extern char *asctime_r (const struct tm *__restrict __tp,
#			char *__restrict __buf) __THROW;
sub asctime_r(Pointer[tm]                   $__tp # const const tm*
             ,Str                           $__buf # const char*
              ) is native(LIB) returns Str is export { * }

#-From /usr/include/time.h:277
#/* Equivalent to `asctime_r (localtime_r (timer, *TMP*), buf)'.  */
#extern char *ctime_r (const time_t *__restrict __timer,
#		      char *__restrict __buf) __THROW;
sub ctime_r(Pointer[__time_t]             $__timer # const const Typedef<time_t>->|Typedef<__time_t>->|long int||*
           ,Str                           $__buf # const char*
            ) is native(LIB) returns Str is export { * }

#-From /usr/include/time.h:293
#/* Set time conversion information from the TZ environment variable.
#   If TZ is not defined, a locale-dependent default is used.  */
#extern void tzset (void) __THROW;
sub tzset(
          ) is native(LIB)  is export { * }

#-From /usr/include/time.h:304
## ifdef __USE_SVID
#/* Set the system time to *WHEN.
#   This call is restricted to the superuser.  */
#extern int stime (const time_t *__when) __THROW;
sub stime(Pointer[__time_t] $__when # const Typedef<time_t>->|Typedef<__time_t>->|long int||*
          ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:319
#/* Like `mktime', but for TP represents Universal Time, not local time.  */
#extern time_t timegm (struct tm *__tp) __THROW;
sub timegm(Pointer[tm] $__tp # tm*
           ) is native(LIB) returns __time_t is export { * }

#-From /usr/include/time.h:322
#/* Another name for `mktime'.  */
#extern time_t timelocal (struct tm *__tp) __THROW;
sub timelocal(Pointer[tm] $__tp # tm*
              ) is native(LIB) returns __time_t is export { * }

#-From /usr/include/time.h:325
#/* Return the number of days in YEAR.  */
#extern int dysize (int __year) __THROW  __attribute__ ((__const__));
sub dysize(int32 $__year # int
           ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:335
#   This function is a cancellation point and therefore not marked with
#   __THROW.  */
#extern int nanosleep (const struct timespec *__requested_time,
#		      struct timespec *__remaining);
sub nanosleep(Pointer[timespec]             $__requested_time # const timespec*
             ,Pointer[timespec]             $__remaining # timespec*
              ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:339
#/* Get resolution of clock CLOCK_ID.  */
#extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __THROW;
sub clock_getres(__clockid_t                   $__clock_id # Typedef<clockid_t>->|Typedef<__clockid_t>->|int||
                ,Pointer[timespec]             $__res # timespec*
                 ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:342
#/* Get current value of clock CLOCK_ID and store it in TP.  */
#extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __THROW;
sub clock_gettime(__clockid_t                   $__clock_id # Typedef<clockid_t>->|Typedef<__clockid_t>->|int||
                 ,Pointer[timespec]             $__tp # timespec*
                  ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:346
#/* Set clock CLOCK_ID to value TP.  */
#extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
#     __THROW;
sub clock_settime(__clockid_t                   $__clock_id # Typedef<clockid_t>->|Typedef<__clockid_t>->|int||
                 ,Pointer[timespec]             $__tp # const timespec*
                  ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:355
#   This function is a cancellation point and therefore not marked with
#   __THROW.  */
#extern int clock_nanosleep (clockid_t __clock_id, int __flags,
#			    const struct timespec *__req,
#			    struct timespec *__rem);
sub clock_nanosleep(__clockid_t                   $__clock_id # Typedef<clockid_t>->|Typedef<__clockid_t>->|int||
                   ,int32                         $__flags # int
                   ,Pointer[timespec]             $__req # const timespec*
                   ,Pointer[timespec]             $__rem # timespec*
                    ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:358
#/* Return clock ID for CPU-time clock.  */
#extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __THROW;
sub clock_getcpuclockid(__pid_t                       $__pid # Typedef<pid_t>->|Typedef<__pid_t>->|int||
                       ,Pointer[__clockid_t]          $__clock_id # Typedef<clockid_t>->|Typedef<__clockid_t>->|int||*
                        ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:365
#/* Create new per-process timer using CLOCK_ID.  */
#extern int timer_create (clockid_t __clock_id,
#			 struct sigevent *__restrict __evp,
#			 timer_t *__restrict __timerid) __THROW;
sub timer_create(__clockid_t                   $__clock_id # Typedef<clockid_t>->|Typedef<__clockid_t>->|int||
                ,Pointer[sigevent]             $__evp # const sigevent*
                ,Pointer[Pointer]              $__timerid # const Typedef<timer_t>->|Typedef<__timer_t>->|void*||*
                 ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:368
#/* Delete timer TIMERID.  */
#extern int timer_delete (timer_t __timerid) __THROW;
sub timer_delete(Pointer $__timerid # Typedef<timer_t>->|Typedef<__timer_t>->|void*||
                 ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:373
#/* Set timer TIMERID to VALUE, returning old value in OVALUE.  */
#extern int timer_settime (timer_t __timerid, int __flags,
#			  const struct itimerspec *__restrict __value,
#			  struct itimerspec *__restrict __ovalue) __THROW;
sub timer_settime(Pointer                       $__timerid # Typedef<timer_t>->|Typedef<__timer_t>->|void*||
                 ,int32                         $__flags # int
                 ,Pointer[itimerspec]           $__value # const const itimerspec*
                 ,Pointer[itimerspec]           $__ovalue # const itimerspec*
                  ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:377
#/* Get current value of timer TIMERID and store it in VALUE.  */
#extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
#     __THROW;
sub timer_gettime(Pointer                       $__timerid # Typedef<timer_t>->|Typedef<__timer_t>->|void*||
                 ,Pointer[itimerspec]           $__value # itimerspec*
                  ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:380
#/* Get expiration overrun for timer TIMERID.  */
#extern int timer_getoverrun (timer_t __timerid) __THROW;
sub timer_getoverrun(Pointer $__timerid # Typedef<timer_t>->|Typedef<__timer_t>->|void*||
                     ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:387
## ifdef __USE_ISOC11
#/* Set TS to calendar time based in time base BASE.  */
#extern int timespec_get (struct timespec *__ts, int __base)
#     __THROW __nonnull ((1));
sub timespec_get(Pointer[timespec]             $__ts # timespec*
                ,int32                         $__base # int
                 ) is native(LIB) returns int32 is export { * }

#-From /usr/include/time.h:412
#   This function is a possible cancellation point and therefore not
#   marked with __THROW.  */
#extern struct tm *getdate (const char *__string);
sub getdate(Str $__string # const char*
            ) is native(LIB) returns Pointer[tm] is export { * }

#-From /usr/include/time.h:427
#   This function is not part of POSIX and therefore no official
#   cancellation point.  But due to similarity with an POSIX interface
#   or due to the implementation it is a cancellation point and
#   therefore not marked with __THROW.  */
#extern int getdate_r (const char *__restrict __string,
#		      struct tm *__restrict __resbufp);
sub getdate_r(Str                           $__string # const const char*
             ,Pointer[tm]                   $__resbufp # const tm*
              ) is native(LIB) returns int32 is export { * }

## Externs


# == /usr/include/time.h ==

our CArray[Str] $__tzname is export = cglobals(LIB, "__tzname", CArray[Str]);
our int32 $__daylight is export = cglobals(LIB, "__daylight", int32);
our long $__timezone is export = cglobals(LIB, "__timezone", long);
our CArray[Str] $tzname is export = cglobals(LIB, "tzname", CArray[Str]);
our int32 $daylight is export = cglobals(LIB, "daylight", int32);
our long $timezone is export = cglobals(LIB, "timezone", long);
our int32 $getdate_err is export = cglobals(LIB, "getdate_err", int32);
