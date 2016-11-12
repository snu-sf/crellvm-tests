; ModuleID = './lib-src/etags.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.linebuffer = type { i64, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.language = type { i8*, i8*, void (%struct._IO_FILE*)*, i8**, i8**, i8**, i8 }
%struct.node_st = type { %struct.node_st*, %struct.node_st*, %struct.fdesc*, i8*, i8*, i8, i8, i8, i32, i64 }
%struct.fdesc = type { %struct.fdesc*, i8*, i8*, i8*, i8*, %struct.language*, i8*, i8, i8 }
%struct.regexp = type { %struct.regexp*, %struct.language*, i8*, i8*, %struct.re_pattern_buffer*, %struct.re_registers, i8, i8, i8, i8 }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_registers = type { i32, i64*, i64* }
%struct.anon = type { i64, %struct.linebuffer }
%struct.anon.0 = type { i8**, i32*, i32, i32 }
%struct.tok = type { i8*, i32, i32, i8, i8, i32, i64 }
%struct.C_stab_entry = type { i8*, i32, i32 }
%struct.compressor = type { i8*, i8* }
%struct.argument = type { i32, %struct.language*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@pot_etags_version = global [38 x i8] c"@(#) pot revision number is 17.38.1.4\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"fth\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tok\00", align 1
@Forth_suffixes = global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@progname = internal global i8* null, align 8
@constantypedefs = internal global i8 0, align 1
@typedefs_or_cplusplus = internal global i8 0, align 1
@typedefs = internal global i8 0, align 1
@members = internal global i32 0, align 4
@globals = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"-ac:Cf:Il:o:Qr:RSVhH\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Di:\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@longopts = internal global [23 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 0, i32* @packages_only, i32 1 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 0, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 0, i32* @declarations, i32 1 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 0, i32* @no_line_directive, i32 1 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 0, i32* @no_duplicates, i32 1 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0, i32* null, i32 72 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i32 0, i32* null, i32 73 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 0, i32* @members, i32 1 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* @members, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* @class_qualify, i32 81 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 1, i32* null, i32 4097 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* @globals, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option zeroinitializer], align 16
@optarg = external global i8*, align 8
@whatlen_max = internal global i64 0, align 8
@parsing_stdin = internal global i8 0, align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"cannot parse standard input more than once\00", align 1
@append_to_tagfile = internal global i8 0, align 1
@cplusplus = internal global i8 0, align 1
@tagfile = internal global i8* null, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"-o option may only be given once.\00", align 1
@ignoreindent = internal global i8 0, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@class_qualify = internal global i32 0, align 4
@searchar = internal global i8 47, align 1
@update = internal global i8 0, align 1
@vgrind_style = internal global i8 0, align 1
@cxref_style = internal global i8 0, align 1
@no_warnings = internal global i8 0, align 1
@optind = external global i32, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"no input files specified.\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"TAGS\00", align 1
@cwd = internal global i8* null, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@tagfiledir = internal global i8* null, align 8
@lb = internal global %struct.linebuffer zeroinitializer, align 8
@filebuf = internal global %struct.linebuffer zeroinitializer, align 8
@token_name = internal global %struct.linebuffer zeroinitializer, align 8
@stdout = external global %struct._IO_FILE*, align 8
@tagf = internal global %struct._IO_FILE* null, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@main.lang = internal global %struct.language* null, align 8
@.str.15 = private unnamed_addr constant [56 x i8] c"cannot parse standard input AND read file names from it\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"internal error: arg_type\00", align 1
@nodehead = internal global %struct.node_st* null, align 8
@fdhead = internal global %struct.fdesc* null, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"\0C\0A%s,0\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\0C\0A%s,include\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"packages-only\00", align 1
@packages_only = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"declarations\00", align 1
@declarations = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"no-line-directive\00", align 1
@no_line_directive = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"no-duplicates\00", align 1
@no_duplicates = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"ignore-indentation\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"members\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"no-members\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"class-qualify\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"no-regex\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"ignore-case-regex\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"parse-stdin\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"no-defines\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"no-globals\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@print_version.emacs_copyright = private unnamed_addr constant [50 x i8] c"Copyright (C) 2016 Free Software Foundation, Inc.\00", align 16
@.str.40 = private unnamed_addr constant [12 x i8] c"%s (%s %s)\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"etags\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"GNU Emacs\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"25.1\00", align 1
@.str.44 = private unnamed_addr constant [60 x i8] c"This program is distributed under the terms in ETAGS.README\00", align 1
@.str.45 = private unnamed_addr constant [95 x i8] c"Usage: %s [options] [[regex-option ...] file-name] ...\0A\0AThese are the options accepted by %s.\0A\00", align 1
@.str.46 = private unnamed_addr constant [65 x i8] c"You may use unambiguous abbreviations for the long option names.\00", align 1
@.str.47 = private unnamed_addr constant [188 x i8] c"  A - as file name means read names from stdin (one per line).\0AAbsolute names are stored in the output file as they are.\0ARelative ones are stored relative to the output file's directory.\0A\00", align 1
@.str.48 = private unnamed_addr constant [63 x i8] c"-a, --append\0A        Append tag entries to existing tags file.\00", align 1
@.str.49 = private unnamed_addr constant [72 x i8] c"--packages-only\0A        For Ada files, only generate tags for packages.\00", align 1
@.str.50 = private unnamed_addr constant [83 x i8] c"--declarations\0A\09In C and derived languages, create tags for function declarations,\00", align 1
@.str.51 = private unnamed_addr constant [67 x i8] c"\09and create tags for extern variables unless --no-globals is used.\00", align 1
@.str.52 = private unnamed_addr constant [129 x i8] c"-D, --no-defines\0A        Don't create tag entries for C #define constants and enum constants.\0A\09This makes the tags file smaller.\00", align 1
@.str.53 = private unnamed_addr constant [194 x i8] c"-i FILE, --include=FILE\0A        Include a note in tag file indicating that, when searching for\0A        a tag, one should also consult the tags file FILE after\0A        checking the current file.\00", align 1
@.str.54 = private unnamed_addr constant [149 x i8] c"-l LANG, --language=LANG\0A        Force the following files to be considered as written in the\0A\09named language up to the next --language=LANG option.\00", align 1
@.str.55 = private unnamed_addr constant [116 x i8] c"--no-globals\0A\09Do not create tag entries for global variables in some\0A\09languages.  This makes the tags file smaller.\00", align 1
@.str.56 = private unnamed_addr constant [93 x i8] c"--no-line-directive\0A        Ignore #line preprocessor directives in C and derived languages.\00", align 1
@.str.57 = private unnamed_addr constant [86 x i8] c"--no-members\0A\09Do not create tag entries for members of structures\0A\09in some languages.\00", align 1
@.str.58 = private unnamed_addr constant [414 x i8] c"-Q, --class-qualify\0A        Qualify tag names with their class name in C++, ObjC, Java, and Perl.\0A        This produces tag names of the form \22class::member\22 for C++,\0A        \22class(category)\22 for Objective C, and \22class.member\22 for Java.\0A        For Objective C, this also produces class methods qualified with\0A        their arguments, as in \22foo:bar:baz:more\22.\0A        For Perl, this produces \22package::member\22.\00", align 1
@.str.59 = private unnamed_addr constant [388 x i8] c"-r REGEXP, --regex=REGEXP or --regex=@regexfile\0A        Make a tag for each line matching a regular expression pattern\0A\09in the following files.  {LANGUAGE}REGEXP uses REGEXP for LANGUAGE\0A\09files only.  REGEXFILE is a file containing one REGEXP per line.\0A\09REGEXP takes the form /TAGREGEXP/TAGNAME/MODS, where TAGNAME/ is\0A\09optional.  The TAGREGEXP pattern is anchored (as if preceded by ^).\00", align 1
@.str.60 = private unnamed_addr constant [326 x i8] c"\09If TAGNAME/ is present, the tags created are named.\0A\09For example Tcl named tags can be created with:\0A\09  --regex=\22/proc[ \5Ct]+\5C([^ \5Ct]+\5C)/\5C1/.\22.\0A\09MODS are optional one-letter modifiers: 'i' means to ignore case,\0A\09'm' means to allow multi-line matches, 's' implies 'm' and\0A\09causes dot to match any character, including newline.\00", align 1
@.str.61 = private unnamed_addr constant [79 x i8] c"-R, --no-regex\0A        Don't create tags from regexps for the following files.\00", align 1
@.str.62 = private unnamed_addr constant [167 x i8] c"-I, --ignore-indentation\0A        In C and C++ do not assume that a closing brace in the first\0A        column is the final brace of a function or structure definition.\00", align 1
@.str.63 = private unnamed_addr constant [55 x i8] c"-o FILE, --output=FILE\0A        Write the tags to FILE.\00", align 1
@.str.64 = private unnamed_addr constant [95 x i8] c"--parse-stdin=NAME\0A        Read from standard input and record tags as belonging to file NAME.\00", align 1
@.str.65 = private unnamed_addr constant [232 x i8] c"-V, --version\0A        Print the version of the program.\0A-h, --help\0A        Print this help message.\0A        Followed by one or more '--language' options prints detailed\0A        help about tag generation for the specified languages.\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"Report bugs to bug-gnu-emacs@gnu.org\00", align 1
@.str.67 = private unnamed_addr constant [98 x i8] c"\0AThese are the currently supported languages, along with the\0Adefault file names and dot suffixes:\00", align 1
@lang_names = internal global [31 x %struct.language] [%struct.language { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([505 x i8], [505 x i8]* @Ada_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Ada_funcs, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @Ada_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @Asm_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Asm_labels, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @Asm_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([504 x i8], [504 x i8]* @default_C_help, i32 0, i32 0), void (%struct._IO_FILE*)* @default_C_entries, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @default_C_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([395 x i8], [395 x i8]* @Cplusplus_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Cplusplus_entries, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @Cplusplus_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @no_lang_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Cstar_entries, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Cstar_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @Cobol_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Cobol_paragraphs, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Cobol_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @Erlang_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Erlang_functions, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Erlang_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @Forth_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Forth_words, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Forth_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @Fortran_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Fortran_functions, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @Fortran_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @Go_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Go_functions, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @Go_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([145 x i8], [145 x i8]* @HTML_help, i32 0, i32 0), void (%struct._IO_FILE*)* @HTML_labels, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @HTML_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([129 x i8], [129 x i8]* @Cjava_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Cjava_entries, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @Cjava_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([264 x i8], [264 x i8]* @Lisp_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Lisp_functions, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @Lisp_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @Lua_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Lua_functions, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Lua_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @Makefile_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Makefile_targets, i8** null, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @Makefile_filenames, i32 0, i32 0), i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([269 x i8], [269 x i8]* @Objc_help, i32 0, i32 0), void (%struct._IO_FILE*)* @plain_C_entries, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Objc_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @Pascal_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Pascal_functions, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Pascal_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([302 x i8], [302 x i8]* @Perl_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Perl_functions, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Perl_suffixes, i32 0, i32 0), i8** null, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Perl_interpreters, i32 0, i32 0), i8 0 }, %struct.language { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @PHP_help, i32 0, i32 0), void (%struct._IO_FILE*)* @PHP_functions, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @PHP_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @PS_help, i32 0, i32 0), void (%struct._IO_FILE*)* @PS_functions, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PS_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @no_lang_help, i32 0, i32 0), void (%struct._IO_FILE*)* @plain_C_entries, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @plain_C_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @Prolog_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Prolog_functions, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @Prolog_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @Python_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Python_functions, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @Python_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @Ruby_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Ruby_functions, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @Ruby_suffixes, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Ruby_filenames, i32 0, i32 0), i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([178 x i8], [178 x i8]* @Scheme_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Scheme_functions, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @Scheme_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([454 x i8], [454 x i8]* @TeX_help, i32 0, i32 0), void (%struct._IO_FILE*)* @TeX_commands, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @TeX_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @Texinfo_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Texinfo_nodes, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @Texinfo_suffixes, i32 0, i32 0), i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([204 x i8], [204 x i8]* @Yacc_help, i32 0, i32 0), void (%struct._IO_FILE*)* @Yacc_entries, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @Yacc_suffixes, i32 0, i32 0), i8** null, i8** null, i8 1 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([124 x i8], [124 x i8]* @auto_help, i32 0, i32 0), void (%struct._IO_FILE*)* null, i8** null, i8** null, i8** null, i8 0 }, %struct.language { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @none_help, i32 0, i32 0), void (%struct._IO_FILE*)* @just_read_file, i8** null, i8** null, i8** null, i8 0 }, %struct.language zeroinitializer], align 16
@.str.68 = private unnamed_addr constant [7 x i8] c"  %-*s\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c" .%s\00", align 1
@.str.71 = private unnamed_addr constant [465 x i8] c"where 'auto' means use default language for files based on file\0Aname suffix, and 'none' means only do regexp processing on files.\0AIf no language is specified and no matching suffix is found,\0Athe first line of the file is read for a sharp-bang (#!) sequence\0Afollowed by the name of an interpreter.  If no such sequence is found,\0AFortran is tried first; if no tags are found, C is tried next.\0AWhen parsing any C file, a \22class\22 or \22template\22 keyword\0Aswitches to C++.\00", align 1
@.str.72 = private unnamed_addr constant [140 x i8] c"Compressed files are supported using gzip, bzip2, and xz.\0A\0AFor detailed help on a given language use, for example,\0Aetags --help --lang=ada.\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"ada\00", align 1
@Ada_help = internal constant [505 x i8] c"In Ada code, functions, procedures, packages, tasks and types are\0Atags.  Use the '--packages-only' option to create tags for\0Apackages only.\0AAda tag names have suffixes indicating the type of entity:\0A\09Entity type:\09Qualifier:\0A\09------------\09----------\0A\09function\09/f\0A\09procedure\09/p\0A\09package spec\09/s\0A\09package body\09/b\0A\09type\09\09/t\0A\09task\09\09/k\0AThus, 'M-x find-tag <RET> bidule/b <RET>' will go directly to the\0Abody of the package 'bidule', while 'M-x find-tag <RET> bidule <RET>'\0Awill just search for any tag 'bidule'.\00", align 16
@Ada_suffixes = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i8* null], align 16
@.str.74 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@Asm_help = internal constant [95 x i8] c"In assembler code, labels appearing at the beginning of a line,\0Afollowed by a colon, are tags.\00", align 16
@Asm_suffixes = internal global [10 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* null], align 16
@.str.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@default_C_help = internal constant [504 x i8] c"In C code, any C function or typedef is a tag, and so are\0Adefinitions of 'struct', 'union' and 'enum'.  '#define' macro\0Adefinitions and 'enum' constants are tags unless you specify\0A'--no-defines'.  Global variables are tags unless you specify\0A'--no-globals' and so are struct members unless you specify\0A'--no-members'.  Use of '--no-globals', '--no-defines' and\0A'--no-members' can make the tags table file much smaller.\0AYou can tag function declarations and external variables by\0Ausing '--declarations'.\00", align 16
@default_C_suffixes = internal global [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i32 0, i32 0), i8* null], align 16
@Cplusplus_help = internal constant [395 x i8] c"In C++ code, all the tag constructs of C code are tagged.  (Use\0A--help --lang=c --lang=c++ for full help.)\0AIn addition to C tags, member functions are also recognized.  Member\0Avariables are recognized unless you use the '--no-members' option.\0ATags for variables and functions in classes are named 'CLASS::VARIABLE'\0Aand 'CLASS::FUNCTION'.  'operator' definitions have tag names like\0A'operator+'.\00", align 16
@Cplusplus_suffixes = internal global [13 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.189, i32 0, i32 0), i8* null], align 16
@.str.76 = private unnamed_addr constant [3 x i8] c"c*\00", align 1
@no_lang_help = internal constant [46 x i8] c"No detailed help available for this language.\00", align 16
@Cstar_suffixes = internal global [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.191, i32 0, i32 0), i8* null], align 16
@.str.77 = private unnamed_addr constant [6 x i8] c"cobol\00", align 1
@Cobol_help = internal global [106 x i8] c"In Cobol code, tags are paragraph names; that is, any word\0Astarting in column 8 and followed by a period.\00", align 16
@Cobol_suffixes = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.193, i32 0, i32 0), i8* null], align 16
@.str.78 = private unnamed_addr constant [7 x i8] c"erlang\00", align 1
@Erlang_help = internal constant [84 x i8] c"In Erlang code, the tags are the functions, records and macros\0Adefined in the file.\00", align 16
@Erlang_suffixes = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.197, i32 0, i32 0), i8* null], align 16
@.str.79 = private unnamed_addr constant [6 x i8] c"forth\00", align 1
@Forth_help = internal constant [110 x i8] c"In Forth code, tags are words defined by ':',\0Aconstant, code, create, defer, value, variable, buffer:, field.\00", align 16
@.str.80 = private unnamed_addr constant [8 x i8] c"fortran\00", align 1
@Fortran_help = internal constant [65 x i8] c"In Fortran code, functions, subroutines and block data are tags.\00", align 16
@Fortran_suffixes = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0), i8* null], align 16
@.str.81 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@Go_help = internal constant [57 x i8] c"In Go code, functions, interfaces and packages are tags.\00", align 16
@Go_suffixes = internal global [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i8* null], align 16
@.str.82 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@HTML_help = internal constant [145 x i8] c"In HTML input files, the tags are the 'title' and the 'h1', 'h2',\0A'h3' headers.  Also, tags are 'name=' in anchors and all\0Aoccurrences of 'id='.\00", align 16
@HTML_suffixes = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), i8* null], align 16
@.str.83 = private unnamed_addr constant [5 x i8] c"java\00", align 1
@Cjava_help = internal global [129 x i8] c"In Java code, all the tags constructs of C and C++ code are\0Atagged.  (Use --help --lang=c --lang=c++ --lang=java for full help.)\00", align 16
@Cjava_suffixes = internal global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* null], align 16
@.str.84 = private unnamed_addr constant [5 x i8] c"lisp\00", align 1
@Lisp_help = internal constant [264 x i8] c"In Lisp code, any function defined with 'defun', any variable\0Adefined with 'defvar' or 'defconst', and in general the first\0Aargument of any expression that starts with '(def' in column zero\0Ais a tag.\0AThe '--declarations' option tags \22(defvar foo)\22 constructs too.\00", align 16
@Lisp_suffixes = internal global [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.245, i32 0, i32 0), i8* null], align 16
@.str.85 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@Lua_help = internal constant [40 x i8] c"In Lua scripts, all functions are tags.\00", align 16
@Lua_suffixes = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.247, i32 0, i32 0), i8* null], align 16
@.str.86 = private unnamed_addr constant [9 x i8] c"makefile\00", align 1
@Makefile_help = internal constant [100 x i8] c"In makefiles, targets are tags; additionally, variables are tags\0Aunless you specify '--no-globals'.\00", align 16
@Makefile_filenames = internal global [6 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.251, i32 0, i32 0), i8* null], align 16
@.str.87 = private unnamed_addr constant [5 x i8] c"objc\00", align 1
@Objc_help = internal constant [269 x i8] c"In Objective C code, tags include Objective C definitions for classes,\0Aclass categories, methods and protocols.  Tags for variables and\0Afunctions in classes are named 'CLASS::VARIABLE' and 'CLASS::FUNCTION'.\0A(Use --help --lang=c --lang=objc --lang=java for full help.)\00", align 16
@Objc_suffixes = internal global [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.253, i32 0, i32 0), i8* null], align 16
@.str.88 = private unnamed_addr constant [7 x i8] c"pascal\00", align 1
@Pascal_help = internal constant [79 x i8] c"In Pascal code, the tags are the functions and procedures defined\0Ain the file.\00", align 16
@Pascal_suffixes = internal global [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.258, i32 0, i32 0), i8* null], align 16
@.str.89 = private unnamed_addr constant [5 x i8] c"perl\00", align 1
@Perl_help = internal constant [302 x i8] c"In Perl code, the tags are the packages, subroutines and variables\0Adefined by the 'package', 'sub', 'my' and 'local' keywords.  Use\0A'--globals' if you want to tag global variables.  Tags for\0Asubroutines are named 'PACKAGE::SUB'.  The name for subroutines\0Adefined in the default package is 'main::SUB'.\00", align 16
@Perl_suffixes = internal global [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.265, i32 0, i32 0), i8* null], align 16
@Perl_interpreters = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.266, i32 0, i32 0), i8* null], align 16
@.str.90 = private unnamed_addr constant [4 x i8] c"php\00", align 1
@PHP_help = internal constant [116 x i8] c"In PHP code, tags are functions, classes and defines.  Unless you use\0Athe '--no-members' option, vars are tags too.\00", align 16
@PHP_suffixes = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.269, i32 0, i32 0), i8* null], align 16
@.str.91 = private unnamed_addr constant [11 x i8] c"postscript\00", align 1
@PS_help = internal constant [48 x i8] c"In PostScript code, the tags are the functions.\00", align 16
@PS_suffixes = internal global [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.272, i32 0, i32 0), i8* null], align 16
@.str.92 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@plain_C_suffixes = internal global [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.273, i32 0, i32 0), i8* null], align 16
@.str.93 = private unnamed_addr constant [7 x i8] c"prolog\00", align 1
@Prolog_help = internal constant [72 x i8] c"In Prolog code, tags are predicates and rules at the beginning of\0Aline.\00", align 16
@Prolog_suffixes = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8* null], align 16
@.str.94 = private unnamed_addr constant [7 x i8] c"python\00", align 1
@Python_help = internal constant [76 x i8] c"In Python code, 'def' or 'class' at the beginning of a line\0Agenerate a tag.\00", align 16
@Python_suffixes = internal global [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.274, i32 0, i32 0), i8* null], align 16
@.str.95 = private unnamed_addr constant [5 x i8] c"ruby\00", align 1
@Ruby_help = internal constant [118 x i8] c"In Ruby code, 'def' or 'class' or 'module' at the beginning of\0Aa line generate a tag.  Constants also generate a tag.\00", align 16
@Ruby_suffixes = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.284, i32 0, i32 0), i8* null], align 16
@Ruby_filenames = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.286, i32 0, i32 0), i8* null], align 16
@.str.96 = private unnamed_addr constant [7 x i8] c"scheme\00", align 1
@Scheme_help = internal constant [178 x i8] c"In Scheme code, tags include anything defined with 'def' or with a\0Aconstruct whose name starts with 'def'.  They also include\0Avariables set with 'set!' at top level in the file.\00", align 16
@Scheme_suffixes = internal global [10 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.298, i32 0, i32 0), i8* null], align 16
@.str.97 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@TeX_help = internal constant [454 x i8] c"In LaTeX text, the argument of any of the commands '\5Cchapter',\0A'\5Csection', '\5Csubsection', '\5Csubsubsection', '\5Ceqno', '\5Clabel',\0A'\5Cref', '\5Ccite', '\5Cbibitem', '\5Cpart', '\5Cappendix', '\5Centry',\0A'\5Cindex', '\5Cdef', '\5Cnewcommand', '\5Crenewcommand',\0A'\5Cnewenvironment' or '\5Crenewenvironment' is a tag.\0A\0AOther commands can be specified by setting the environment variable\0A'TEXTAGS' to a colon-separated list like, for example,\0A     TEXTAGS=\22mycommand:myothercommand\22.\00", align 16
@TeX_suffixes = internal global [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8* null], align 16
@.str.98 = private unnamed_addr constant [8 x i8] c"texinfo\00", align 1
@Texinfo_help = internal constant [57 x i8] c"for texinfo files, lines starting with @node are tagged.\00", align 16
@Texinfo_suffixes = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.309, i32 0, i32 0), i8* null], align 16
@.str.99 = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@Yacc_help = internal constant [204 x i8] c"In Bison or Yacc input files, each rule defines as a tag the\0Anonterminal it constructs.  The portions of the file that contain\0AC code are parsed as C code (use --help --lang=c --lang=yacc\0Afor full help).\00", align 16
@Yacc_suffixes = internal global [6 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.313, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.314, i32 0, i32 0), i8* null], align 16
@.str.100 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@auto_help = internal constant [124 x i8] c"'auto' is not a real language, it indicates to use\0Aa default language for files base on file name suffix and file contents.\00", align 16
@.str.101 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@none_help = internal constant [83 x i8] c"'none' is not a real language, it indicates to only do\0Aregexp processing on files.\00", align 16
@dbp = internal global i8* null, align 8
@.str.102 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"/f\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"/p\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"/s\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"/t\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"/k\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@charno = internal global i64 0, align 8
@linecharno = internal global i64 0, align 8
@infilename = internal global i8* null, align 8
@lineno = internal global i32 0, align 4
@readline.discard_until_line_directive = internal global i8 0, align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"#line \00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"#line %u \22%n\00", align 1
@curfdp = internal global %struct.fdesc* null, align 8
@p_head = internal global %struct.regexp* null, align 8
@.str.116 = private unnamed_addr constant [42 x i8] c"regexp stack overflow while matching \22%s\22\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"regexp matches the empty string: \22%s\22\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"pattern error in \22%s\22\00", align 1
@last_node = internal global %struct.node_st* null, align 8
@notinname.table = internal constant [256 x i8] c"\01\00\00\00\00\00\00\00\00\01\01\00\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\01\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@begtoken.table = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@intoken.table = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.120 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"/b\00", align 1
@endtoken.table = internal constant [256 x i8] c"\01\00\00\00\00\00\00\00\00\01\01\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\00\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.122 = private unnamed_addr constant [4 x i8] c"ads\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"adb\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"ins\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"sa\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@lbs = internal global [2 x %struct.anon] zeroinitializer, align 16
@cstack = internal global %struct.anon.0 zeroinitializer, align 8
@fvdef = internal global i32 0, align 4
@fvextern = internal global i8 0, align 1
@typdef = internal global i32 0, align 4
@structdef = internal global i32 0, align 4
@definedef = internal global i32 0, align 4
@objdef = internal global i32 0, align 4
@token = internal global %struct.tok zeroinitializer, align 8
@.str.132 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@inattribute = internal global i8 0, align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"#if\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"#el\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"%s%.*s\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@objtag = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i32 0, i32 0), align 8
@.str.138 = private unnamed_addr constant [9 x i8] c"%s(%.*s)\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c":\00", align 1
@consider_token.structtype = internal global i32 0, align 4
@consider_token.structbracelev = internal global i32 0, align 4
@consider_token.toktype = internal global i32 0, align 4
@.str.140 = private unnamed_addr constant [33 x i8] c"internal error: definedef value.\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"__asm__\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"::operator\00", align 1
@in_word_set.wordlist = internal global [35 x %struct.C_stab_entry] [%struct.C_stab_entry { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0 }, %struct.C_stab_entry { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0 }, %struct.C_stab_entry { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143, i32 0, i32 0), i32 0, i32 5 }, %struct.C_stab_entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i32 0, i32 6 }, %struct.C_stab_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), i32 0, i32 3 }, %struct.C_stab_entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i32 0, i32 11 }, %struct.C_stab_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 0, i32 14 }, %struct.C_stab_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0), i32 4, i32 5 }, %struct.C_stab_entry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i32 0, i32 0), i32 0, i32 10 }, %struct.C_stab_entry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0), i32 1, i32 8 }, %struct.C_stab_entry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i32 0, i32 0), i32 0, i32 1 }, %struct.C_stab_entry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i32 0, i32 0), i32 4, i32 7 }, %struct.C_stab_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i32 0, i32 0), i32 1, i32 5 }, %struct.C_stab_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0), i32 0, i32 15 }, %struct.C_stab_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), i32 0, i32 5 }, %struct.C_stab_entry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.156, i32 0, i32 0), i32 0, i32 2 }, %struct.C_stab_entry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i32 0, i32 0), i32 0, i32 1 }, %struct.C_stab_entry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.158, i32 0, i32 0), i32 4, i32 11 }, %struct.C_stab_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.159, i32 0, i32 0), i32 0, i32 12 }, %struct.C_stab_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.160, i32 0, i32 0), i32 4, i32 7 }, %struct.C_stab_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i32 0, i32 0), i32 0, i32 11 }, %struct.C_stab_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.162, i32 0, i32 0), i32 3, i32 11 }, %struct.C_stab_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.163, i32 0, i32 0), i32 0, i32 5 }, %struct.C_stab_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i32 0, i32 13 }, %struct.C_stab_entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0), i32 0, i32 5 }, %struct.C_stab_entry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.166, i32 0, i32 0), i32 1, i32 11 }, %struct.C_stab_entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i32 0, i32 9 }, %struct.C_stab_entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i32 0, i32 5 }, %struct.C_stab_entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0), i32 0, i32 14 }, %struct.C_stab_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i32 4, i32 5 }, %struct.C_stab_entry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.170, i32 0, i32 0), i32 0, i32 6 }, %struct.C_stab_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.171, i32 0, i32 0), i32 0, i32 4 }, %struct.C_stab_entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i32 0, i32 0), i32 0, i32 4 }, %struct.C_stab_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 0, i32 4 }, %struct.C_stab_entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i32 0, i32 0), i32 0, i32 4 }], align 16
@.str.143 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"GTY\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"@end\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"@interface\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"implements\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c"@implementation\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"@protocol\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"extends\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.170 = private unnamed_addr constant [14 x i8] c"__attribute__\00", align 1
@.str.171 = private unnamed_addr constant [8 x i8] c"SYSCALL\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"PSEUDO\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"DEFUN\00", align 1
@hash.asso_values = internal constant [256 x i8] c"#####################################################################\03\1A#######\1B####\18\00####\00#####\01#\10#\06\17\00\00#\16\00##\05\00\00\0F\01#\06#\08\13#\10\04\05######################################################################################################################################", align 16
@.str.175 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.176 = private unnamed_addr constant [25 x i8] c"virtual memory exhausted\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"<uninited>\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"cpp\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"cxx\00", align 1
@.str.183 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"h++\00", align 1
@.str.185 = private unnamed_addr constant [3 x i8] c"hh\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"hpp\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"hxx\00", align 1
@.str.188 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"pdb\00", align 1
@.str.190 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"COB\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"cob\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"-define\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"-record\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"erl\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"hrl\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"defer\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"buffer:\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"elemental\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str.214 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.218 = private unnamed_addr constant [10 x i8] c"blockdata\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"block data\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"(*)\00", align 1
@.str.221 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.222 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"f90\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"<title>\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"<h1>\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"<h2>\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"<h3>\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"htm\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"shtml\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"defvar\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"cl-\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c"CL-\00", align 1
@.str.236 = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"QUOTE\00", align 1
@.str.239 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"clisp\00", align 1
@.str.241 = private unnamed_addr constant [3 x i8] c"el\00", align 1
@.str.242 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"LSP\00", align 1
@.str.244 = private unnamed_addr constant [4 x i8] c"lsp\00", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c"ml\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"LUA\00", align 1
@.str.248 = private unnamed_addr constant [9 x i8] c"Makefile\00", align 1
@.str.249 = private unnamed_addr constant [12 x i8] c"GNUMakefile\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"Makefile.in\00", align 1
@.str.251 = private unnamed_addr constant [12 x i8] c"Makefile.am\00", align 1
@.str.252 = private unnamed_addr constant [3 x i8] c"lm\00", align 1
@.str.253 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.254 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.255 = private unnamed_addr constant [9 x i8] c"rocedure\00", align 1
@.str.256 = private unnamed_addr constant [8 x i8] c"unction\00", align 1
@.str.257 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"pas\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.260 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.261 = private unnamed_addr constant [13 x i8] c"use constant\00", align 1
@.str.262 = private unnamed_addr constant [20 x i8] c"use constant::defer\00", align 1
@.str.263 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@.str.264 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.266 = private unnamed_addr constant [7 x i8] c"@PERL@\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.268 = private unnamed_addr constant [5 x i8] c"php3\00", align 1
@.str.269 = private unnamed_addr constant [5 x i8] c"php4\00", align 1
@.str.270 = private unnamed_addr constant [9 x i8] c"defineps\00", align 1
@.str.271 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.272 = private unnamed_addr constant [4 x i8] c"psw\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.274 = private unnamed_addr constant [3 x i8] c"py\00", align 1
@.str.275 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@Ruby_functions.self_name = internal constant [6 x i8] c"self.\00", align 1
@.str.276 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"attr_reader\00", align 1
@.str.278 = private unnamed_addr constant [12 x i8] c"attr_writer\00", align 1
@.str.279 = private unnamed_addr constant [14 x i8] c"attr_accessor\00", align 1
@.str.280 = private unnamed_addr constant [13 x i8] c"alias_method\00", align 1
@.str.281 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.283 = private unnamed_addr constant [3 x i8] c"ru\00", align 1
@.str.284 = private unnamed_addr constant [4 x i8] c"rbw\00", align 1
@.str.285 = private unnamed_addr constant [9 x i8] c"Rakefile\00", align 1
@.str.286 = private unnamed_addr constant [9 x i8] c"Thorfile\00", align 1
@.str.287 = private unnamed_addr constant [5 x i8] c"(def\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"(DEF\00", align 1
@.str.289 = private unnamed_addr constant [6 x i8] c"(SET!\00", align 1
@.str.290 = private unnamed_addr constant [6 x i8] c"(set!\00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"oak\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"sch\00", align 1
@.str.293 = private unnamed_addr constant [4 x i8] c"SCM\00", align 1
@.str.294 = private unnamed_addr constant [4 x i8] c"scm\00", align 1
@.str.295 = private unnamed_addr constant [3 x i8] c"SM\00", align 1
@.str.296 = private unnamed_addr constant [3 x i8] c"sm\00", align 1
@.str.297 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.298 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@TEX_toktab = internal global %struct.linebuffer* null, align 8
@.str.299 = private unnamed_addr constant [8 x i8] c"TEXTAGS\00", align 1
@TEX_defenv = internal global i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.300, i32 0, i32 0), align 8
@.str.300 = private unnamed_addr constant [156 x i8] c":chapter:section:subsection:subsubsection:eqno:label:ref:cite:bibitem:part:appendix:entry:index:def:newcommand:renewcommand:newenvironment:renewenvironment\00", align 1
@.str.301 = private unnamed_addr constant [4 x i8] c"bib\00", align 1
@.str.302 = private unnamed_addr constant [4 x i8] c"clo\00", align 1
@.str.303 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c"ltx\00", align 1
@.str.305 = private unnamed_addr constant [4 x i8] c"sty\00", align 1
@.str.306 = private unnamed_addr constant [4 x i8] c"TeX\00", align 1
@.str.307 = private unnamed_addr constant [6 x i8] c"@node\00", align 1
@.str.308 = private unnamed_addr constant [5 x i8] c"texi\00", align 1
@.str.309 = private unnamed_addr constant [4 x i8] c"txi\00", align 1
@.str.310 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.311 = private unnamed_addr constant [4 x i8] c"y++\00", align 1
@.str.312 = private unnamed_addr constant [3 x i8] c"ym\00", align 1
@.str.313 = private unnamed_addr constant [4 x i8] c"yxx\00", align 1
@.str.314 = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str.315 = private unnamed_addr constant [20 x i8] c"empty language name\00", align 1
@.str.316 = private unnamed_addr constant [22 x i8] c"unknown language \22%s\22\00", align 1
@.str.317 = private unnamed_addr constant [34 x i8] c"skipping inclusion of %s in self.\00", align 1
@.str.318 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@compressors = internal global [7 x %struct.compressor] [%struct.compressor { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.322, i32 0, i32 0) }, %struct.compressor { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.322, i32 0, i32 0) }, %struct.compressor { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.322, i32 0, i32 0) }, %struct.compressor { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.322, i32 0, i32 0) }, %struct.compressor { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.327, i32 0, i32 0) }, %struct.compressor { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.329, i32 0, i32 0) }, %struct.compressor zeroinitializer], align 16
@.str.319 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.320 = private unnamed_addr constant [5 x i8] c"' > \00", align 1
@.str.321 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.322 = private unnamed_addr constant [11 x i8] c"gzip -d -c\00", align 1
@.str.323 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.324 = private unnamed_addr constant [3 x i8] c"gz\00", align 1
@.str.325 = private unnamed_addr constant [3 x i8] c"GZ\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"bz2\00", align 1
@.str.327 = private unnamed_addr constant [12 x i8] c"bzip2 -d -c\00", align 1
@.str.328 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str.329 = private unnamed_addr constant [9 x i8] c"xz -d -c\00", align 1
@.str.330 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.331 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.332 = private unnamed_addr constant [9 x i8] c"etXXXXXX\00", align 1
@process_file.emptyfdesc = internal constant %struct.fdesc zeroinitializer, align 8
@put_entries.fdp = internal global %struct.fdesc* null, align 8
@.str.333 = private unnamed_addr constant [9 x i8] c"\0C\0A%s,%d\0A\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.335 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.336 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.337 = private unnamed_addr constant [40 x i8] c"unterminated language name in regex: %s\00", align 1
@add_regex.zeropattern = internal global %struct.re_pattern_buffer zeroinitializer, align 8
@.str.338 = private unnamed_addr constant [12 x i8] c"null regexp\00", align 1
@.str.339 = private unnamed_addr constant [24 x i8] c"%s: unterminated regexp\00", align 1
@.str.340 = private unnamed_addr constant [26 x i8] c"null name for regexp \22%s\22\00", align 1
@.str.341 = private unnamed_addr constant [48 x i8] c"forcing explicit tag name but no name, ignoring\00", align 1
@need_filebuf = internal global i8 0, align 1
@.str.342 = private unnamed_addr constant [39 x i8] c"invalid regexp modifier '%c', ignoring\00", align 1
@add_regex.lc_trans = internal global [256 x i8] zeroinitializer, align 16
@.str.343 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.344 = private unnamed_addr constant [27 x i8] c"%s while compiling pattern\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.345 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.346 = private unnamed_addr constant [50 x i8] c"\09Try '%s --help' for a complete list of options.\0A\00", align 1
@.str.347 = private unnamed_addr constant [7 x i8] c"getcwd\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %nincluded_files = alloca i32, align 4
  %included_files = alloca i8**, align 8
  %argbuffer = alloca %struct.argument*, align 8
  %current_arg = alloca i32, align 4
  %file_count = alloca i32, align 4
  %filename_lb = alloca %struct.linebuffer, align 8
  %help_asked = alloca i8, align 1
  %len = alloca i64, align 8
  %optstring = alloca i8*, align 8
  %opt = alloca i32, align 4
  %lang = alloca %struct.language*, align 8
  %oldcwd = alloca i8*, align 8
  %this_file = alloca i8*, align 8
  %fdp = alloca %struct.fdesc*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* %help_asked, align 1
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** @progname, align 8
  store i32 0, i32* %nincluded_files, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @xmalloc(i64 %mul)
  %3 = bitcast i8* %call to i8**
  store i8** %3, i8*** %included_files, align 8
  store i32 0, i32* %current_arg, align 4
  store i32 0, i32* %file_count, align 4
  %4 = load i32, i32* %argc.addr, align 4
  %conv1 = sext i32 %4 to i64
  %mul2 = mul i64 %conv1, 24
  %call3 = call i8* @xmalloc(i64 %mul2)
  %5 = bitcast i8* %call3 to %struct.argument*
  store %struct.argument* %5, %struct.argument** %argbuffer, align 8
  store i8 1, i8* @constantypedefs, align 1
  store i8 1, i8* @typedefs_or_cplusplus, align 1
  store i8 1, i8* @typedefs, align 1
  store i32 1, i32* @members, align 4
  store i32 1, i32* @globals, align 4
  %call4 = call i8* @concat(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call4, i8** %optstring, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %6 = load i32, i32* %argc.addr, align 4
  %7 = load i8**, i8*** %argv.addr, align 8
  %8 = load i8*, i8** %optstring, align 8
  %call5 = call i32 @getopt_long(i32 %6, i8** %7, i8* %8, %struct.option* getelementptr inbounds ([23 x %struct.option], [23 x %struct.option]* @longopts, i32 0, i32 0), i32* null) #6
  store i32 %call5, i32* %opt, align 4
  %cmp = icmp ne i32 %call5, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %opt, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 4097, label %sw.bb.15
    i32 97, label %sw.bb.31
    i32 67, label %sw.bb.32
    i32 102, label %sw.bb.33
    i32 111, label %sw.bb.33
    i32 73, label %sw.bb.37
    i32 83, label %sw.bb.37
    i32 108, label %sw.bb.38
    i32 99, label %sw.bb.51
    i32 114, label %sw.bb.53
    i32 82, label %sw.bb.66
    i32 86, label %sw.bb.74
    i32 104, label %sw.bb.75
    i32 72, label %sw.bb.75
    i32 81, label %sw.bb.76
    i32 68, label %sw.bb.77
    i32 105, label %sw.bb.78
    i32 66, label %sw.bb.82
    i32 100, label %sw.bb.83
    i32 116, label %sw.bb.84
    i32 84, label %sw.bb.85
    i32 117, label %sw.bb.86
    i32 118, label %sw.bb.87
    i32 120, label %sw.bb.88
    i32 119, label %sw.bb.89
  ]

sw.bb:                                            ; preds = %while.body
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %10 = load i32, i32* %current_arg, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx8 = getelementptr inbounds %struct.argument, %struct.argument* %11, i64 %idxprom
  %arg_type = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx8, i32 0, i32 0
  store i32 2, i32* %arg_type, align 4
  %12 = load i8*, i8** @optarg, align 8
  %13 = load i32, i32* %current_arg, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx10 = getelementptr inbounds %struct.argument, %struct.argument* %14, i64 %idxprom9
  %what = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx10, i32 0, i32 2
  store i8* %12, i8** %what, align 8
  %15 = load i8*, i8** @optarg, align 8
  %call11 = call i64 @strlen(i8* %15) #9
  store i64 %call11, i64* %len, align 8
  %16 = load i64, i64* @whatlen_max, align 8
  %17 = load i64, i64* %len, align 8
  %cmp12 = icmp slt i64 %16, %17
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.7
  %18 = load i64, i64* %len, align 8
  store i64 %18, i64* @whatlen_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.7
  %19 = load i32, i32* %current_arg, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %current_arg, align 4
  %20 = load i32, i32* %file_count, align 4
  %inc14 = add nsw i32 %20, 1
  store i32 %inc14, i32* %file_count, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  %21 = load i32, i32* %current_arg, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx17 = getelementptr inbounds %struct.argument, %struct.argument* %22, i64 %idxprom16
  %arg_type18 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx17, i32 0, i32 0
  store i32 3, i32* %arg_type18, align 4
  %23 = load i8*, i8** @optarg, align 8
  %24 = load i32, i32* %current_arg, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx20 = getelementptr inbounds %struct.argument, %struct.argument* %25, i64 %idxprom19
  %what21 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx20, i32 0, i32 2
  store i8* %23, i8** %what21, align 8
  %26 = load i8*, i8** @optarg, align 8
  %call22 = call i64 @strlen(i8* %26) #9
  store i64 %call22, i64* %len, align 8
  %27 = load i64, i64* @whatlen_max, align 8
  %28 = load i64, i64* %len, align 8
  %cmp23 = icmp slt i64 %27, %28
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.bb.15
  %29 = load i64, i64* %len, align 8
  store i64 %29, i64* @whatlen_max, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %sw.bb.15
  %30 = load i32, i32* %current_arg, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %current_arg, align 4
  %31 = load i32, i32* %file_count, align 4
  %inc28 = add nsw i32 %31, 1
  store i32 %inc28, i32* %file_count, align 4
  %32 = load i8, i8* @parsing_stdin, align 1
  %tobool = trunc i8 %32 to i1
  br i1 %tobool, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0)) #10
  unreachable

if.end.30:                                        ; preds = %if.end.26
  store i8 1, i8* @parsing_stdin, align 1
  br label %sw.epilog

sw.bb.31:                                         ; preds = %while.body
  store i8 1, i8* @append_to_tagfile, align 1
  br label %sw.epilog

sw.bb.32:                                         ; preds = %while.body
  store i8 1, i8* @cplusplus, align 1
  br label %sw.epilog

sw.bb.33:                                         ; preds = %while.body, %while.body
  %33 = load i8*, i8** @tagfile, align 8
  %tobool34 = icmp ne i8* %33, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.33
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  call void @suggest_asking_for_help() #10
  unreachable

if.end.36:                                        ; preds = %sw.bb.33
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** @tagfile, align 8
  br label %sw.epilog

sw.bb.37:                                         ; preds = %while.body, %while.body
  store i8 1, i8* @ignoreindent, align 1
  br label %sw.epilog

sw.bb.38:                                         ; preds = %while.body
  %35 = load i8*, i8** @optarg, align 8
  %call39 = call %struct.language* @get_language_from_langname(i8* %35)
  store %struct.language* %call39, %struct.language** %lang, align 8
  %36 = load %struct.language*, %struct.language** %lang, align 8
  %cmp40 = icmp ne %struct.language* %36, null
  br i1 %cmp40, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %sw.bb.38
  %37 = load %struct.language*, %struct.language** %lang, align 8
  %38 = load i32, i32* %current_arg, align 4
  %idxprom43 = sext i32 %38 to i64
  %39 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx44 = getelementptr inbounds %struct.argument, %struct.argument* %39, i64 %idxprom43
  %lang45 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx44, i32 0, i32 1
  store %struct.language* %37, %struct.language** %lang45, align 8
  %40 = load i32, i32* %current_arg, align 4
  %idxprom46 = sext i32 %40 to i64
  %41 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx47 = getelementptr inbounds %struct.argument, %struct.argument* %41, i64 %idxprom46
  %arg_type48 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx47, i32 0, i32 0
  store i32 0, i32* %arg_type48, align 4
  %42 = load i32, i32* %current_arg, align 4
  %inc49 = add nsw i32 %42, 1
  store i32 %inc49, i32* %current_arg, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.42, %sw.bb.38
  br label %sw.epilog

sw.bb.51:                                         ; preds = %while.body
  %43 = load i8*, i8** @optarg, align 8
  %call52 = call i8* @concat(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call52, i8** @optarg, align 8
  br label %sw.bb.53

sw.bb.53:                                         ; preds = %while.body, %sw.bb.51
  %44 = load i32, i32* %current_arg, align 4
  %idxprom54 = sext i32 %44 to i64
  %45 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx55 = getelementptr inbounds %struct.argument, %struct.argument* %45, i64 %idxprom54
  %arg_type56 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx55, i32 0, i32 0
  store i32 1, i32* %arg_type56, align 4
  %46 = load i8*, i8** @optarg, align 8
  %47 = load i32, i32* %current_arg, align 4
  %idxprom57 = sext i32 %47 to i64
  %48 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx58 = getelementptr inbounds %struct.argument, %struct.argument* %48, i64 %idxprom57
  %what59 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx58, i32 0, i32 2
  store i8* %46, i8** %what59, align 8
  %49 = load i8*, i8** @optarg, align 8
  %call60 = call i64 @strlen(i8* %49) #9
  store i64 %call60, i64* %len, align 8
  %50 = load i64, i64* @whatlen_max, align 8
  %51 = load i64, i64* %len, align 8
  %cmp61 = icmp slt i64 %50, %51
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %sw.bb.53
  %52 = load i64, i64* %len, align 8
  store i64 %52, i64* @whatlen_max, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %sw.bb.53
  %53 = load i32, i32* %current_arg, align 4
  %inc65 = add nsw i32 %53, 1
  store i32 %inc65, i32* %current_arg, align 4
  br label %sw.epilog

sw.bb.66:                                         ; preds = %while.body
  %54 = load i32, i32* %current_arg, align 4
  %idxprom67 = sext i32 %54 to i64
  %55 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx68 = getelementptr inbounds %struct.argument, %struct.argument* %55, i64 %idxprom67
  %arg_type69 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx68, i32 0, i32 0
  store i32 1, i32* %arg_type69, align 4
  %56 = load i32, i32* %current_arg, align 4
  %idxprom70 = sext i32 %56 to i64
  %57 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx71 = getelementptr inbounds %struct.argument, %struct.argument* %57, i64 %idxprom70
  %what72 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx71, i32 0, i32 2
  store i8* null, i8** %what72, align 8
  %58 = load i32, i32* %current_arg, align 4
  %inc73 = add nsw i32 %58, 1
  store i32 %inc73, i32* %current_arg, align 4
  br label %sw.epilog

sw.bb.74:                                         ; preds = %while.body
  call void @print_version() #10
  unreachable

sw.bb.75:                                         ; preds = %while.body, %while.body
  store i8 1, i8* %help_asked, align 1
  br label %sw.epilog

sw.bb.76:                                         ; preds = %while.body
  store i32 1, i32* @class_qualify, align 4
  br label %sw.epilog

sw.bb.77:                                         ; preds = %while.body
  store i8 0, i8* @constantypedefs, align 1
  br label %sw.epilog

sw.bb.78:                                         ; preds = %while.body
  %59 = load i8*, i8** @optarg, align 8
  %60 = load i32, i32* %nincluded_files, align 4
  %inc79 = add i32 %60, 1
  store i32 %inc79, i32* %nincluded_files, align 4
  %idxprom80 = zext i32 %60 to i64
  %61 = load i8**, i8*** %included_files, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %61, i64 %idxprom80
  store i8* %59, i8** %arrayidx81, align 8
  br label %sw.epilog

sw.bb.82:                                         ; preds = %while.body
  store i8 63, i8* @searchar, align 1
  br label %sw.epilog

sw.bb.83:                                         ; preds = %while.body
  store i8 1, i8* @constantypedefs, align 1
  br label %sw.epilog

sw.bb.84:                                         ; preds = %while.body
  store i8 1, i8* @typedefs, align 1
  br label %sw.epilog

sw.bb.85:                                         ; preds = %while.body
  store i8 1, i8* @typedefs_or_cplusplus, align 1
  store i8 1, i8* @typedefs, align 1
  br label %sw.epilog

sw.bb.86:                                         ; preds = %while.body
  store i8 1, i8* @update, align 1
  br label %sw.epilog

sw.bb.87:                                         ; preds = %while.body
  store i8 1, i8* @vgrind_style, align 1
  br label %sw.bb.88

sw.bb.88:                                         ; preds = %while.body, %sw.bb.87
  store i8 1, i8* @cxref_style, align 1
  br label %sw.epilog

sw.bb.89:                                         ; preds = %while.body
  store i8 1, i8* @no_warnings, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @suggest_asking_for_help() #10
  unreachable

sw.epilog:                                        ; preds = %sw.bb.89, %sw.bb.88, %sw.bb.86, %sw.bb.85, %sw.bb.84, %sw.bb.83, %sw.bb.82, %sw.bb.78, %sw.bb.77, %sw.bb.76, %sw.bb.75, %sw.bb.66, %if.end.64, %if.end.50, %sw.bb.37, %if.end.36, %sw.bb.32, %sw.bb.31, %if.end.30, %if.end, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %62 = load i32, i32* @optind, align 4
  %63 = load i32, i32* %argc.addr, align 4
  %cmp90 = icmp slt i32 %62, %63
  br i1 %cmp90, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i32, i32* %current_arg, align 4
  %idxprom92 = sext i32 %64 to i64
  %65 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx93 = getelementptr inbounds %struct.argument, %struct.argument* %65, i64 %idxprom92
  %arg_type94 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx93, i32 0, i32 0
  store i32 2, i32* %arg_type94, align 4
  %66 = load i32, i32* @optind, align 4
  %idxprom95 = sext i32 %66 to i64
  %67 = load i8**, i8*** %argv.addr, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %67, i64 %idxprom95
  %68 = load i8*, i8** %arrayidx96, align 8
  %69 = load i32, i32* %current_arg, align 4
  %idxprom97 = sext i32 %69 to i64
  %70 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx98 = getelementptr inbounds %struct.argument, %struct.argument* %70, i64 %idxprom97
  %what99 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx98, i32 0, i32 2
  store i8* %68, i8** %what99, align 8
  %71 = load i32, i32* @optind, align 4
  %idxprom100 = sext i32 %71 to i64
  %72 = load i8**, i8*** %argv.addr, align 8
  %arrayidx101 = getelementptr inbounds i8*, i8** %72, i64 %idxprom100
  %73 = load i8*, i8** %arrayidx101, align 8
  %call102 = call i64 @strlen(i8* %73) #9
  store i64 %call102, i64* %len, align 8
  %74 = load i64, i64* @whatlen_max, align 8
  %75 = load i64, i64* %len, align 8
  %cmp103 = icmp slt i64 %74, %75
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.body
  %76 = load i64, i64* %len, align 8
  store i64 %76, i64* @whatlen_max, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %for.body
  %77 = load i32, i32* %current_arg, align 4
  %inc107 = add nsw i32 %77, 1
  store i32 %inc107, i32* %current_arg, align 4
  %78 = load i32, i32* %file_count, align 4
  %inc108 = add nsw i32 %78, 1
  store i32 %inc108, i32* %file_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %79 = load i32, i32* @optind, align 4
  %inc109 = add nsw i32 %79, 1
  store i32 %inc109, i32* @optind, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load i32, i32* %current_arg, align 4
  %idxprom110 = sext i32 %80 to i64
  %81 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx111 = getelementptr inbounds %struct.argument, %struct.argument* %81, i64 %idxprom110
  %arg_type112 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx111, i32 0, i32 0
  store i32 4, i32* %arg_type112, align 4
  %82 = load i8, i8* %help_asked, align 1
  %tobool113 = trunc i8 %82 to i1
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %for.end
  %83 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  call void @print_help(%struct.argument* %83) #10
  unreachable

if.end.115:                                       ; preds = %for.end
  %84 = load i32, i32* %nincluded_files, align 4
  %cmp116 = icmp eq i32 %84, 0
  br i1 %cmp116, label %land.lhs.true, label %if.end.121

land.lhs.true:                                    ; preds = %if.end.115
  %85 = load i32, i32* %file_count, align 4
  %cmp118 = icmp eq i32 %85, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  call void @suggest_asking_for_help() #10
  unreachable

if.end.121:                                       ; preds = %land.lhs.true, %if.end.115
  %86 = load i8*, i8** @tagfile, align 8
  %cmp122 = icmp eq i8* %86, null
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.121
  %call125 = call i8* @savestr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call125, i8** @tagfile, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.end.121
  %call127 = call i8* @etags_getcwd()
  store i8* %call127, i8** @cwd, align 8
  %87 = load i8*, i8** @cwd, align 8
  %call128 = call i64 @strlen(i8* %87) #9
  %sub = sub i64 %call128, 1
  %88 = load i8*, i8** @cwd, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %88, i64 %sub
  %89 = load i8, i8* %arrayidx129, align 1
  %conv130 = sext i8 %89 to i32
  %cmp131 = icmp ne i32 %conv130, 47
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %if.end.126
  %90 = load i8*, i8** @cwd, align 8
  store i8* %90, i8** %oldcwd, align 8
  %91 = load i8*, i8** %oldcwd, align 8
  %call134 = call i8* @concat(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call134, i8** @cwd, align 8
  %92 = load i8*, i8** %oldcwd, align 8
  call void @free(i8* %92) #6
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %if.end.126
  %93 = load i8*, i8** @tagfile, align 8
  %call136 = call zeroext i1 @streq(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br i1 %call136, label %if.then.140, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.135
  %94 = load i8*, i8** @tagfile, align 8
  %call138 = call zeroext i1 @strneq(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i64 5)
  br i1 %call138, label %if.then.140, label %if.else

if.then.140:                                      ; preds = %lor.lhs.false, %if.end.135
  %95 = load i8*, i8** @cwd, align 8
  store i8* %95, i8** @tagfiledir, align 8
  br label %if.end.142

if.else:                                          ; preds = %lor.lhs.false
  %96 = load i8*, i8** @tagfile, align 8
  call void @canonicalize_filename(i8* %96)
  %97 = load i8*, i8** @tagfile, align 8
  %98 = load i8*, i8** @cwd, align 8
  %call141 = call i8* @absolute_dirname(i8* %97, i8* %98)
  store i8* %call141, i8** @tagfiledir, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.else, %if.then.140
  call void @linebuffer_init(%struct.linebuffer* @lb)
  call void @linebuffer_init(%struct.linebuffer* %filename_lb)
  call void @linebuffer_init(%struct.linebuffer* @filebuf)
  call void @linebuffer_init(%struct.linebuffer* @token_name)
  %99 = load i8*, i8** @tagfile, align 8
  %call143 = call zeroext i1 @streq(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br i1 %call143, label %if.then.144, label %if.else.147

if.then.144:                                      ; preds = %if.end.142
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %100, %struct._IO_FILE** @tagf, align 8
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call145 = call i32 @fileno(%struct._IO_FILE* %101) #6
  %call146 = call i32 @set_binary_mode(i32 %call145, i32 0)
  br label %if.end.151

if.else.147:                                      ; preds = %if.end.142
  %102 = load i8*, i8** @tagfile, align 8
  %103 = load i8, i8* @append_to_tagfile, align 1
  %tobool148 = trunc i8 %103 to i1
  %cond = select i1 %tobool148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)
  %call150 = call %struct._IO_FILE* @fopen(i8* %102, i8* %cond)
  store %struct._IO_FILE* %call150, %struct._IO_FILE** @tagf, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.147, %if.then.144
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %cmp152 = icmp eq %struct._IO_FILE* %104, null
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.151
  %105 = load i8*, i8** @tagfile, align 8
  call void @pfatal(i8* %105) #10
  unreachable

if.end.155:                                       ; preds = %if.end.151
  store i32 0, i32* %i, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.194, %if.end.155
  %106 = load i32, i32* %i, align 4
  %107 = load i32, i32* %current_arg, align 4
  %cmp157 = icmp slt i32 %106, %107
  br i1 %cmp157, label %for.body.159, label %for.end.196

for.body.159:                                     ; preds = %for.cond.156
  %108 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %108 to i64
  %109 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx161 = getelementptr inbounds %struct.argument, %struct.argument* %109, i64 %idxprom160
  %arg_type162 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx161, i32 0, i32 0
  %110 = load i32, i32* %arg_type162, align 4
  switch i32 %110, label %sw.default.192 [
    i32 0, label %sw.bb.163
    i32 1, label %sw.bb.167
    i32 2, label %sw.bb.171
    i32 3, label %sw.bb.188
  ]

sw.bb.163:                                        ; preds = %for.body.159
  %111 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %111 to i64
  %112 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx165 = getelementptr inbounds %struct.argument, %struct.argument* %112, i64 %idxprom164
  %lang166 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx165, i32 0, i32 1
  %113 = load %struct.language*, %struct.language** %lang166, align 8
  store %struct.language* %113, %struct.language** @main.lang, align 8
  br label %sw.epilog.193

sw.bb.167:                                        ; preds = %for.body.159
  %114 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %114 to i64
  %115 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx169 = getelementptr inbounds %struct.argument, %struct.argument* %115, i64 %idxprom168
  %what170 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx169, i32 0, i32 2
  %116 = load i8*, i8** %what170, align 8
  call void @analyze_regex(i8* %116)
  br label %sw.epilog.193

sw.bb.171:                                        ; preds = %for.body.159
  %117 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %117 to i64
  %118 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx173 = getelementptr inbounds %struct.argument, %struct.argument* %118, i64 %idxprom172
  %what174 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx173, i32 0, i32 2
  %119 = load i8*, i8** %what174, align 8
  store i8* %119, i8** %this_file, align 8
  %120 = load i8*, i8** %this_file, align 8
  %call175 = call zeroext i1 @streq(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br i1 %call175, label %if.then.176, label %if.else.186

if.then.176:                                      ; preds = %sw.bb.171
  %121 = load i8, i8* @parsing_stdin, align 1
  %tobool177 = trunc i8 %121 to i1
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.then.176
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i32 0, i32 0)) #10
  unreachable

if.end.179:                                       ; preds = %if.then.176
  br label %while.cond.180

while.cond.180:                                   ; preds = %while.body.184, %if.end.179
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call181 = call i64 @readline_internal(%struct.linebuffer* %filename_lb, %struct._IO_FILE* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %cmp182 = icmp sgt i64 %call181, 0
  br i1 %cmp182, label %while.body.184, label %while.end.185

while.body.184:                                   ; preds = %while.cond.180
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %filename_lb, i32 0, i32 2
  %123 = load i8*, i8** %buffer, align 8
  %124 = load %struct.language*, %struct.language** @main.lang, align 8
  call void @process_file_name(i8* %123, %struct.language* %124)
  br label %while.cond.180

while.end.185:                                    ; preds = %while.cond.180
  br label %if.end.187

if.else.186:                                      ; preds = %sw.bb.171
  %125 = load i8*, i8** %this_file, align 8
  %126 = load %struct.language*, %struct.language** @main.lang, align 8
  call void @process_file_name(i8* %125, %struct.language* %126)
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.186, %while.end.185
  br label %sw.epilog.193

sw.bb.188:                                        ; preds = %for.body.159
  %127 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %127 to i64
  %128 = load %struct.argument*, %struct.argument** %argbuffer, align 8
  %arrayidx190 = getelementptr inbounds %struct.argument, %struct.argument* %128, i64 %idxprom189
  %what191 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx190, i32 0, i32 2
  %129 = load i8*, i8** %what191, align 8
  store i8* %129, i8** %this_file, align 8
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %131 = load i8*, i8** %this_file, align 8
  %132 = load %struct.language*, %struct.language** @main.lang, align 8
  call void @process_file(%struct._IO_FILE* %130, i8* %131, %struct.language* %132)
  br label %sw.epilog.193

sw.default.192:                                   ; preds = %for.body.159
  call void (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog.193

sw.epilog.193:                                    ; preds = %sw.default.192, %sw.bb.188, %if.end.187, %sw.bb.167, %sw.bb.163
  br label %for.inc.194

for.inc.194:                                      ; preds = %sw.epilog.193
  %133 = load i32, i32* %i, align 4
  %inc195 = add nsw i32 %133, 1
  store i32 %inc195, i32* %i, align 4
  br label %for.cond.156

for.end.196:                                      ; preds = %for.cond.156
  call void @free_regexps()
  %134 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  call void @free(i8* %134) #6
  %135 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 2), align 8
  call void @free(i8* %135) #6
  %136 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  call void @free(i8* %136) #6
  %137 = load %struct.node_st*, %struct.node_st** @nodehead, align 8
  call void @put_entries(%struct.node_st* %137)
  %138 = load %struct.node_st*, %struct.node_st** @nodehead, align 8
  call void @free_tree(%struct.node_st* %138)
  store %struct.node_st* null, %struct.node_st** @nodehead, align 8
  %139 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  store %struct.fdesc* %139, %struct.fdesc** %fdp, align 8
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.205, %for.end.196
  %140 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %cmp198 = icmp ne %struct.fdesc* %140, null
  br i1 %cmp198, label %for.body.200, label %for.end.206

for.body.200:                                     ; preds = %for.cond.197
  %141 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %written = getelementptr inbounds %struct.fdesc, %struct.fdesc* %141, i32 0, i32 8
  %142 = load i8, i8* %written, align 1
  %tobool201 = trunc i8 %142 to i1
  br i1 %tobool201, label %if.end.204, label %if.then.202

if.then.202:                                      ; preds = %for.body.200
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %144 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %taggedfname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %144, i32 0, i32 4
  %145 = load i8*, i8** %taggedfname, align 8
  %call203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* %145)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %for.body.200
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.204
  %146 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %next = getelementptr inbounds %struct.fdesc, %struct.fdesc* %146, i32 0, i32 0
  %147 = load %struct.fdesc*, %struct.fdesc** %next, align 8
  store %struct.fdesc* %147, %struct.fdesc** %fdp, align 8
  br label %for.cond.197

for.end.206:                                      ; preds = %for.cond.197
  br label %while.cond.207

while.cond.207:                                   ; preds = %while.body.210, %for.end.206
  %148 = load i32, i32* %nincluded_files, align 4
  %dec = add i32 %148, -1
  store i32 %dec, i32* %nincluded_files, align 4
  %cmp208 = icmp ugt i32 %148, 0
  br i1 %cmp208, label %while.body.210, label %while.end.212

while.body.210:                                   ; preds = %while.cond.207
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %150 = load i8**, i8*** %included_files, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %150, i32 1
  store i8** %incdec.ptr, i8*** %included_files, align 8
  %151 = load i8*, i8** %150, align 8
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* %151)
  br label %while.cond.207

while.end.212:                                    ; preds = %while.cond.207
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %call213 = call i32 @fclose(%struct._IO_FILE* %152)
  %cmp214 = icmp eq i32 %call213, -1
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %while.end.212
  %153 = load i8*, i8** @tagfile, align 8
  call void @pfatal(i8* %153) #10
  unreachable

if.end.217:                                       ; preds = %while.end.212
  call void @exit(i32 0) #11
  unreachable

return:                                           ; No predecessors!
  %154 = load i32, i32* %retval
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define internal i8* @xmalloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #6
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.176, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %result, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal i8* @concat(i8* %s1, i8* %s2, i8* %s3) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %s3.addr = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %len3 = alloca i32, align 4
  %result = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i8* %s3, i8** %s3.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %1 = load i8*, i8** %s2.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #9
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len2, align 4
  %2 = load i8*, i8** %s3.addr, align 8
  %call3 = call i64 @strlen(i8* %2) #9
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %len3, align 4
  %3 = load i32, i32* %len1, align 4
  %4 = load i32, i32* %len2, align 4
  %add = add nsw i32 %3, %4
  %5 = load i32, i32* %len3, align 4
  %add5 = add nsw i32 %add, %5
  %add6 = add nsw i32 %add5, 1
  %conv7 = sext i32 %add6 to i64
  %mul = mul i64 %conv7, 1
  %call8 = call i8* @xmalloc(i64 %mul)
  store i8* %call8, i8** %result, align 8
  %6 = load i8*, i8** %result, align 8
  %7 = load i8*, i8** %s1.addr, align 8
  %call9 = call i8* @strcpy(i8* %6, i8* %7) #6
  %8 = load i8*, i8** %result, align 8
  %9 = load i32, i32* %len1, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %10 = load i8*, i8** %s2.addr, align 8
  %call10 = call i8* @strcpy(i8* %add.ptr, i8* %10) #6
  %11 = load i8*, i8** %result, align 8
  %12 = load i32, i32* %len1, align 4
  %idx.ext11 = sext i32 %12 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %11, i64 %idx.ext11
  %13 = load i32, i32* %len2, align 4
  %idx.ext13 = sext i32 %13 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr12, i64 %idx.ext13
  %14 = load i8*, i8** %s3.addr, align 8
  %call15 = call i8* @strcpy(i8* %add.ptr14, i8* %14) #6
  %15 = load i8*, i8** %result, align 8
  ret i8* %15
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @fatal(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @verror(i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  call void @exit(i32 1) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @verror(i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @suggest_asking_for_help() #3 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progname, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.346, i32 0, i32 0), i8* %1)
  call void @exit(i32 1) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.language* @get_language_from_langname(i8* %name) #0 {
entry:
  %retval = alloca %struct.language*, align 8
  %name.addr = alloca i8*, align 8
  %lang = alloca %struct.language*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.315, i32 0, i32 0))
  br label %if.end.5

if.else:                                          ; preds = %entry
  store %struct.language* getelementptr inbounds ([31 x %struct.language], [31 x %struct.language]* @lang_names, i32 0, i32 0), %struct.language** %lang, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load %struct.language*, %struct.language** %lang, align 8
  %name1 = getelementptr inbounds %struct.language, %struct.language* %1, i32 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %cmp2 = icmp ne i8* %2, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.language*, %struct.language** %lang, align 8
  %name3 = getelementptr inbounds %struct.language, %struct.language* %4, i32 0, i32 0
  %5 = load i8*, i8** %name3, align 8
  %call = call zeroext i1 @streq(i8* %3, i8* %5)
  br i1 %call, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %6 = load %struct.language*, %struct.language** %lang, align 8
  store %struct.language* %6, %struct.language** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.language*, %struct.language** %lang, align 8
  %incdec.ptr = getelementptr inbounds %struct.language, %struct.language* %7, i32 1
  store %struct.language* %incdec.ptr, %struct.language** %lang, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.316, i32 0, i32 0), i8* %8)
  br label %if.end.5

if.end.5:                                         ; preds = %for.end, %if.then
  store %struct.language* null, %struct.language** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  %9 = load %struct.language*, %struct.language** %retval
  ret %struct.language* %9
}

; Function Attrs: noreturn nounwind uwtable
define internal void @print_version() #3 {
entry:
  %emacs_copyright = alloca [50 x i8], align 16
  %0 = bitcast [50 x i8]* %emacs_copyright to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @print_version.emacs_copyright, i32 0, i32 0), i64 50, i32 16, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %emacs_copyright, i32 0, i32 0
  %call1 = call i32 @puts(i8* %arraydecay)
  %call2 = call i32 @puts(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.44, i32 0, i32 0))
  call void @exit(i32 0) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @print_help(%struct.argument* %argbuffer) #3 {
entry:
  %argbuffer.addr = alloca %struct.argument*, align 8
  %help_for_lang = alloca i8, align 1
  store %struct.argument* %argbuffer, %struct.argument** %argbuffer.addr, align 8
  store i8 0, i8* %help_for_lang, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.argument*, %struct.argument** %argbuffer.addr, align 8
  %arg_type = getelementptr inbounds %struct.argument, %struct.argument* %0, i32 0, i32 0
  %1 = load i32, i32* %arg_type, align 4
  %cmp = icmp ne i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.argument*, %struct.argument** %argbuffer.addr, align 8
  %arg_type1 = getelementptr inbounds %struct.argument, %struct.argument* %2, i32 0, i32 0
  %3 = load i32, i32* %arg_type1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %4 = load i8, i8* %help_for_lang, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %5 = load %struct.argument*, %struct.argument** %argbuffer.addr, align 8
  %lang = getelementptr inbounds %struct.argument, %struct.argument* %5, i32 0, i32 1
  %6 = load %struct.language*, %struct.language** %lang, align 8
  %help = getelementptr inbounds %struct.language, %struct.language* %6, i32 0, i32 1
  %7 = load i8*, i8** %help, align 8
  %call4 = call i32 @puts(i8* %7)
  store i8 1, i8* %help_for_lang, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %8 = load %struct.argument*, %struct.argument** %argbuffer.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.argument, %struct.argument* %8, i32 1
  store %struct.argument* %incdec.ptr, %struct.argument** %argbuffer.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8, i8* %help_for_lang, align 1
  %tobool6 = trunc i8 %9 to i1
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.end
  call void @exit(i32 0) #11
  unreachable

if.end.8:                                         ; preds = %for.end
  %10 = load i8*, i8** @progname, align 8
  %11 = load i8*, i8** @progname, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.45, i32 0, i32 0), i8* %10, i8* %11)
  %call10 = call i32 @puts(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.46, i32 0, i32 0))
  %call11 = call i32 @puts(i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.47, i32 0, i32 0))
  %call12 = call i32 @puts(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.48, i32 0, i32 0))
  %call13 = call i32 @puts(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.49, i32 0, i32 0))
  %call14 = call i32 @puts(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.50, i32 0, i32 0))
  %call15 = call i32 @puts(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.51, i32 0, i32 0))
  %call16 = call i32 @puts(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.52, i32 0, i32 0))
  %call17 = call i32 @puts(i8* getelementptr inbounds ([194 x i8], [194 x i8]* @.str.53, i32 0, i32 0))
  %call18 = call i32 @puts(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.54, i32 0, i32 0))
  %call19 = call i32 @puts(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.55, i32 0, i32 0))
  %call20 = call i32 @puts(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.56, i32 0, i32 0))
  %call21 = call i32 @puts(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.57, i32 0, i32 0))
  %call22 = call i32 @puts(i8* getelementptr inbounds ([414 x i8], [414 x i8]* @.str.58, i32 0, i32 0))
  %call23 = call i32 @puts(i8* getelementptr inbounds ([388 x i8], [388 x i8]* @.str.59, i32 0, i32 0))
  %call24 = call i32 @puts(i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.60, i32 0, i32 0))
  %call25 = call i32 @puts(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.61, i32 0, i32 0))
  %call26 = call i32 @puts(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.62, i32 0, i32 0))
  %call27 = call i32 @puts(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.63, i32 0, i32 0))
  %call28 = call i32 @puts(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.64, i32 0, i32 0))
  %call29 = call i32 @puts(i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.65, i32 0, i32 0))
  call void @print_language_names()
  %call30 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  %call31 = call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i32 0, i32 0))
  call void @exit(i32 0) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @savestr(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8*, i8** %cp.addr, align 8
  %call = call i64 @strlen(i8* %1) #9
  %conv = trunc i64 %call to i32
  %call1 = call i8* @savenstr(i8* %0, i32 %conv)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define internal i8* @etags_getcwd() #0 {
entry:
  %bufsize = alloca i32, align 4
  %path = alloca i8*, align 8
  store i32 200, i32* %bufsize, align 4
  %0 = load i32, i32* %bufsize, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @xmalloc(i64 %mul)
  store i8* %call, i8** %path, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i8*, i8** %path, align 8
  %2 = load i32, i32* %bufsize, align 4
  %conv1 = sext i32 %2 to i64
  %call2 = call i8* @getcwd(i8* %1, i64 %conv1) #6
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i32* @__errno_location() #12
  %3 = load i32, i32* %call4, align 4
  %cmp5 = icmp ne i32 %3, 34
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @pfatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.347, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %while.body
  %4 = load i32, i32* %bufsize, align 4
  %mul7 = mul nsw i32 %4, 2
  store i32 %mul7, i32* %bufsize, align 4
  %5 = load i8*, i8** %path, align 8
  call void @free(i8* %5) #6
  %6 = load i32, i32* %bufsize, align 4
  %conv8 = sext i32 %6 to i64
  %mul9 = mul i64 %conv8, 1
  %call10 = call i8* @xmalloc(i64 %mul9)
  store i8* %call10, i8** %path, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %path, align 8
  call void @canonicalize_filename(i8* %7)
  %8 = load i8*, i8** %path, align 8
  ret i8* %8
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @streq(i8* %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %t.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #9
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @strneq(i8* %s, i8* %t, i64 %n) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %t.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* %1, i64 %2) #9
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal void @canonicalize_filename(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  store i8* %0, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 47
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %fn.addr, align 8
  store i8 47, i8* %5, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 47
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %11 = load i8*, i8** %fn.addr, align 8
  store i8 %10, i8* %11, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i8*, i8** %cp, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %cp, align 8
  %13 = load i8*, i8** %fn.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr9, i8** %fn.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %fn.addr, align 8
  store i8 0, i8* %14, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @absolute_dirname(i8* %file, i8* %dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %slashp = alloca i8*, align 8
  %res = alloca i8*, align 8
  %save = alloca i8, align 1
  store i8* %file, i8** %file.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #9
  store i8* %call, i8** %slashp, align 8
  %1 = load i8*, i8** %slashp, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dir.addr, align 8
  %call1 = call i8* @savestr(i8* %2)
  store i8* %call1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %slashp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %save, align 1
  %5 = load i8*, i8** %slashp, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 0, i8* %arrayidx2, align 1
  %6 = load i8*, i8** %file.addr, align 8
  %7 = load i8*, i8** %dir.addr, align 8
  %call3 = call i8* @absolute_filename(i8* %6, i8* %7)
  store i8* %call3, i8** %res, align 8
  %8 = load i8, i8* %save, align 1
  %9 = load i8*, i8** %slashp, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %8, i8* %arrayidx4, align 1
  %10 = load i8*, i8** %res, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal void @linebuffer_init(%struct.linebuffer* %lbp) #0 {
entry:
  %lbp.addr = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %lbp, %struct.linebuffer** %lbp.addr, align 8
  %0 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %size = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i32 0, i32 0
  store i64 200, i64* %size, align 8
  %1 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %size1 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i32 0, i32 0
  %2 = load i64, i64* %size1, align 8
  %mul = mul i64 %2, 1
  %call = call i8* @xmalloc(i64 %mul)
  %3 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i32 0, i32 2
  store i8* %call, i8** %buffer, align 8
  %4 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 0, i8* %arrayidx, align 1
  %6 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %len = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %6, i32 0, i32 1
  store i32 0, i32* %len, align 4
  ret void
}

declare i32 @set_binary_mode(i32, i32) #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: noreturn nounwind uwtable
define internal void @pfatal(i8* %s1) #3 {
entry:
  %s1.addr = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  call void @perror(i8* %0)
  call void @exit(i32 1) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @analyze_regex(i8* %regex_arg) #0 {
entry:
  %regex_arg.addr = alloca i8*, align 8
  %regexfp = alloca %struct._IO_FILE*, align 8
  %regexbuf = alloca %struct.linebuffer, align 8
  %regexfile = alloca i8*, align 8
  %lang = alloca %struct.language*, align 8
  %lang_name = alloca i8*, align 8
  %cp = alloca i8*, align 8
  store i8* %regex_arg, i8** %regex_arg.addr, align 8
  %0 = load i8*, i8** %regex_arg.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @free_regexps()
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %regex_arg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 32, label %sw.bb
    i32 9, label %sw.bb
    i32 64, label %sw.bb.1
    i32 123, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  %3 = load i8*, i8** %regex_arg.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %add.ptr, i8** %regexfile, align 8
  %4 = load i8*, i8** %regexfile, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.318, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %regexfp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %regexfp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %sw.bb.1
  %6 = load i8*, i8** %regexfile, align 8
  call void @pfatal(i8* %6) #10
  unreachable

if.end.5:                                         ; preds = %sw.bb.1
  call void @linebuffer_init(%struct.linebuffer* %regexbuf)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %regexfp, align 8
  %8 = load i8*, i8** %regexfile, align 8
  %call6 = call i64 @readline_internal(%struct.linebuffer* %regexbuf, %struct._IO_FILE* %7, i8* %8)
  %cmp7 = icmp sgt i64 %call6, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %regexbuf, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  call void @analyze_regex(i8* %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %buffer9 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %regexbuf, i32 0, i32 2
  %10 = load i8*, i8** %buffer9, align 8
  call void @free(i8* %10) #6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %regexfp, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* %11)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.end
  %12 = load i8*, i8** %regexfile, align 8
  call void @pfatal(i8* %12) #10
  unreachable

if.end.14:                                        ; preds = %while.end
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %13 = load i8*, i8** %regex_arg.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %add.ptr16, i8** %lang_name, align 8
  %14 = load i8*, i8** %lang_name, align 8
  store i8* %14, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.15
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv17 = sext i8 %16 to i32
  %cmp18 = icmp ne i32 %conv17, 125
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8, i8* %17, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body
  %19 = load i8*, i8** %regex_arg.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.337, i32 0, i32 0), i8* %19)
  br label %sw.epilog

if.end.24:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %20 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** %cp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr25, i8** %cp, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %lang_name, align 8
  %call26 = call %struct.language* @get_language_from_langname(i8* %22)
  store %struct.language* %call26, %struct.language** %lang, align 8
  %23 = load %struct.language*, %struct.language** %lang, align 8
  %cmp27 = icmp eq %struct.language* %23, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.end
  br label %sw.epilog

if.end.30:                                        ; preds = %for.end
  %24 = load i8*, i8** %cp, align 8
  %25 = load %struct.language*, %struct.language** %lang, align 8
  call void @add_regex(i8* %24, %struct.language* %25)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %26 = load i8*, i8** %regex_arg.addr, align 8
  call void @add_regex(i8* %26, %struct.language* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then.23, %if.then.29, %sw.default, %if.end.30, %if.end.14, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @readline_internal(%struct.linebuffer* %lbp, %struct._IO_FILE* %stream, i8* %filename) #0 {
entry:
  %lbp.addr = alloca %struct.linebuffer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %p = alloca i8*, align 8
  %pend = alloca i8*, align 8
  %chars_deleted = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.linebuffer* %lbp, %struct.linebuffer** %lbp.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer1 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer1, align 8
  store i8* %1, i8** %buffer, align 8
  %2 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer2, align 8
  store i8* %3, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %5 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %size = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %5, i32 0, i32 0
  %6 = load i64, i64* %size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %add.ptr, i8** %pend, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.26, %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %7)
  store i32 %call, i32* %c, align 4
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %pend, align 8
  %cmp = icmp eq i8* %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %10 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %size3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %10, i32 0, i32 0
  %11 = load i64, i64* %size3, align 8
  %mul = mul nsw i64 %11, 2
  store i64 %mul, i64* %size3, align 8
  %12 = load i8*, i8** %buffer, align 8
  %13 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %size4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %13, i32 0, i32 0
  %14 = load i64, i64* %size4, align 8
  %mul5 = mul i64 %14, 1
  %call6 = call i8* @xrealloc(i8* %12, i64 %mul5)
  store i8* %call6, i8** %buffer, align 8
  %15 = load i8*, i8** %buffer, align 8
  %16 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer7 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer7, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load i8*, i8** %p, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %18, i64 %sub.ptr.sub
  store i8* %add.ptr8, i8** %p, align 8
  %19 = load i8*, i8** %buffer, align 8
  %20 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %size9 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %20, i32 0, i32 0
  %21 = load i64, i64* %size9, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %add.ptr10, i8** %pend, align 8
  %22 = load i8*, i8** %buffer, align 8
  %23 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer11 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %23, i32 0, i32 2
  store i8* %22, i8** %buffer11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %24 = load i32, i32* %c, align 4
  %cmp12 = icmp eq i32 %24, -1
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call14 = call i32 @ferror(%struct._IO_FILE* %25) #6
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %26 = load i8*, i8** %filename.addr, align 8
  call void @perror(i8* %26)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  %27 = load i8*, i8** %p, align 8
  store i8 0, i8* %27, align 1
  store i32 0, i32* %chars_deleted, align 4
  br label %for.end

if.end.17:                                        ; preds = %if.end
  %28 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %28, 10
  br i1 %cmp18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %if.end.17
  %29 = load i8*, i8** %p, align 8
  %30 = load i8*, i8** %buffer, align 8
  %cmp20 = icmp ugt i8* %29, %30
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.19
  %31 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 -1
  %32 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %32 to i32
  %cmp21 = icmp eq i32 %conv, 13
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true
  %33 = load i8*, i8** %p, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %33, i64 -1
  store i8* %add.ptr24, i8** %p, align 8
  store i32 2, i32* %chars_deleted, align 4
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true, %if.then.19
  store i32 1, i32* %chars_deleted, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.23
  %34 = load i8*, i8** %p, align 8
  store i8 0, i8* %34, align 1
  br label %for.end

if.end.26:                                        ; preds = %if.end.17
  %35 = load i32, i32* %c, align 4
  %conv27 = trunc i32 %35 to i8
  %36 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv27, i8* %36, align 1
  br label %for.cond

for.end:                                          ; preds = %if.end.25, %if.end.16
  %37 = load i8*, i8** %p, align 8
  %38 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast28 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast29 = ptrtoint i8* %38 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %conv31 = trunc i64 %sub.ptr.sub30 to i32
  %39 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %len = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %39, i32 0, i32 1
  store i32 %conv31, i32* %len, align 4
  %40 = load i8, i8* @need_filebuf, align 1
  %tobool32 = trunc i8 %40 to i1
  br i1 %tobool32, label %land.lhs.true.34, label %if.end.55

land.lhs.true.34:                                 ; preds = %for.end
  %41 = load i32, i32* %chars_deleted, align 4
  %cmp35 = icmp sgt i32 %41, 0
  br i1 %cmp35, label %if.then.37, label %if.end.55

if.then.37:                                       ; preds = %land.lhs.true.34
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.37
  %42 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 0), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %44 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %len38 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %44, i32 0, i32 1
  %45 = load i32, i32* %len38, align 4
  %add = add nsw i32 %43, %45
  %add39 = add nsw i32 %add, 1
  %conv40 = sext i32 %add39 to i64
  %cmp41 = icmp sle i64 %42, %conv40
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 0), align 8
  %mul43 = mul nsw i64 %46, 2
  store i64 %mul43, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 0), align 8
  %47 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 2), align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 0), align 8
  %mul44 = mul i64 %48, 1
  %call45 = call i8* @xrealloc(i8* %47, i64 %mul44)
  store i8* %call45, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 2), align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 2), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %idx.ext = sext i32 %50 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %49, i64 %idx.ext
  %51 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer47 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer47, align 8
  %53 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %len48 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %53, i32 0, i32 1
  %54 = load i32, i32* %len48, align 4
  %conv49 = sext i32 %54 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr46, i8* %52, i64 %conv49, i32 1, i1 false)
  %55 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %len50 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %55, i32 0, i32 1
  %56 = load i32, i32* %len50, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %add51 = add nsw i32 %57, %56
  store i32 %add51, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %idxprom = sext i32 %58 to i64
  %59 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 2), align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %59, i64 %idxprom
  store i8 10, i8* %arrayidx52, align 1
  %60 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %idxprom53 = sext i32 %60 to i64
  %61 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 2), align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %61, i64 %idxprom53
  store i8 0, i8* %arrayidx54, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %while.end, %land.lhs.true.34, %for.end
  %62 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %len56 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %62, i32 0, i32 1
  %63 = load i32, i32* %len56, align 4
  %64 = load i32, i32* %chars_deleted, align 4
  %add57 = add nsw i32 %63, %64
  %conv58 = sext i32 %add57 to i64
  ret i64 %conv58
}

; Function Attrs: nounwind uwtable
define internal void @process_file_name(i8* %file, %struct.language* %lang) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %lang.addr = alloca %struct.language*, align 8
  %inf = alloca %struct._IO_FILE*, align 8
  %fdp = alloca %struct.fdesc*, align 8
  %compr = alloca %struct.compressor*, align 8
  %compressed_name = alloca i8*, align 8
  %uncompressed_name = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %real_name = alloca i8*, align 8
  %tmp_name = alloca i8*, align 8
  %retval = alloca i32, align 4
  %file_errno = alloca i32, align 4
  %cmd1 = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %tmp_errno = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store %struct.language* %lang, %struct.language** %lang.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  call void @canonicalize_filename(i8* %0)
  %1 = load i8*, i8** %file.addr, align 8
  %2 = load i8*, i8** @tagfile, align 8
  %call = call zeroext i1 @streq(i8* %1, i8* %2)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** @tagfile, align 8
  %call1 = call zeroext i1 @streq(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.317, i32 0, i32 0), i8* %4)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i8*, i8** %file.addr, align 8
  %call2 = call %struct.compressor* @get_compressor_from_suffix(i8* %5, i8** %ext)
  store %struct.compressor* %call2, %struct.compressor** %compr, align 8
  %6 = load %struct.compressor*, %struct.compressor** %compr, align 8
  %tobool = icmp ne %struct.compressor* %6, null
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load i8*, i8** %file.addr, align 8
  store i8* %7, i8** %compressed_name, align 8
  %8 = load i8*, i8** %file.addr, align 8
  %9 = load i8*, i8** %ext, align 8
  %10 = load i8*, i8** %file.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %call4 = call i8* @savenstr(i8* %8, i32 %conv)
  store i8* %call4, i8** %uncompressed_name, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  store i8* null, i8** %compressed_name, align 8
  %11 = load i8*, i8** %file.addr, align 8
  store i8* %11, i8** %uncompressed_name, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  %12 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  store %struct.fdesc* %12, %struct.fdesc** %fdp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %13 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %cmp = icmp ne %struct.fdesc* %13, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %uncompressed_name, align 8
  %15 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %infname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %15, i32 0, i32 1
  %16 = load i8*, i8** %infname, align 8
  %call7 = call zeroext i1 @streq(i8* %14, i8* %16)
  br i1 %call7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %cleanup

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %17 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %next = getelementptr inbounds %struct.fdesc, %struct.fdesc* %17, i32 0, i32 0
  %18 = load %struct.fdesc*, %struct.fdesc** %next, align 8
  store %struct.fdesc* %18, %struct.fdesc** %fdp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %file.addr, align 8
  %call10 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.318, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %inf, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %inf, align 8
  %tobool11 = icmp ne %struct._IO_FILE* %20, null
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %for.end
  %21 = load i8*, i8** %file.addr, align 8
  store i8* %21, i8** %real_name, align 8
  br label %if.end.39

if.else.13:                                       ; preds = %for.end
  %call14 = call i32* @__errno_location() #12
  %22 = load i32, i32* %call14, align 4
  store i32 %22, i32* %file_errno, align 4
  %23 = load i8*, i8** %compressed_name, align 8
  %tobool15 = icmp ne i8* %23, null
  br i1 %tobool15, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.else.13
  %24 = load i8*, i8** %uncompressed_name, align 8
  %call17 = call %struct._IO_FILE* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.318, i32 0, i32 0))
  store %struct._IO_FILE* %call17, %struct._IO_FILE** %inf, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %inf, align 8
  %tobool18 = icmp ne %struct._IO_FILE* %25, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  %26 = load i8*, i8** %uncompressed_name, align 8
  store i8* %26, i8** %real_name, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.16
  br label %if.end.34

if.else.21:                                       ; preds = %if.else.13
  store %struct.compressor* getelementptr inbounds ([7 x %struct.compressor], [7 x %struct.compressor]* @compressors, i32 0, i32 0), %struct.compressor** %compr, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.32, %if.else.21
  %27 = load %struct.compressor*, %struct.compressor** %compr, align 8
  %suffix = getelementptr inbounds %struct.compressor, %struct.compressor* %27, i32 0, i32 0
  %28 = load i8*, i8** %suffix, align 8
  %cmp23 = icmp ne i8* %28, null
  br i1 %cmp23, label %for.body.25, label %for.end.33

for.body.25:                                      ; preds = %for.cond.22
  %29 = load i8*, i8** %file.addr, align 8
  %30 = load %struct.compressor*, %struct.compressor** %compr, align 8
  %suffix26 = getelementptr inbounds %struct.compressor, %struct.compressor* %30, i32 0, i32 0
  %31 = load i8*, i8** %suffix26, align 8
  %call27 = call i8* @concat(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i32 0, i32 0), i8* %31)
  store i8* %call27, i8** %compressed_name, align 8
  %32 = load i8*, i8** %compressed_name, align 8
  %call28 = call %struct._IO_FILE* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.318, i32 0, i32 0))
  store %struct._IO_FILE* %call28, %struct._IO_FILE** %inf, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %inf, align 8
  %tobool29 = icmp ne %struct._IO_FILE* %33, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body.25
  %34 = load i8*, i8** %compressed_name, align 8
  store i8* %34, i8** %real_name, align 8
  br label %for.end.33

if.end.31:                                        ; preds = %for.body.25
  %35 = load i8*, i8** %compressed_name, align 8
  call void @free(i8* %35) #6
  store i8* null, i8** %compressed_name, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %36 = load %struct.compressor*, %struct.compressor** %compr, align 8
  %incdec.ptr = getelementptr inbounds %struct.compressor, %struct.compressor* %36, i32 1
  store %struct.compressor* %incdec.ptr, %struct.compressor** %compr, align 8
  br label %for.cond.22

for.end.33:                                       ; preds = %if.then.30, %for.cond.22
  br label %if.end.34

if.end.34:                                        ; preds = %for.end.33, %if.end.20
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %inf, align 8
  %tobool35 = icmp ne %struct._IO_FILE* %37, null
  br i1 %tobool35, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.end.34
  %38 = load i32, i32* %file_errno, align 4
  %call37 = call i32* @__errno_location() #12
  store i32 %38, i32* %call37, align 4
  %39 = load i8*, i8** %file.addr, align 8
  call void @perror(i8* %39)
  br label %cleanup

if.end.38:                                        ; preds = %if.end.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.12
  %40 = load i8*, i8** %real_name, align 8
  %41 = load i8*, i8** %compressed_name, align 8
  %cmp40 = icmp eq i8* %40, %41
  br i1 %cmp40, label %if.then.42, label %if.end.63

if.then.42:                                       ; preds = %if.end.39
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %inf, align 8
  %call43 = call i32 @fclose(%struct._IO_FILE* %42)
  %call44 = call i8* @etags_mktmp()
  store i8* %call44, i8** %tmp_name, align 8
  %43 = load i8*, i8** %tmp_name, align 8
  %tobool45 = icmp ne i8* %43, null
  br i1 %tobool45, label %if.else.47, label %if.then.46

if.then.46:                                       ; preds = %if.then.42
  store %struct._IO_FILE* null, %struct._IO_FILE** %inf, align 8
  br label %if.end.59

if.else.47:                                       ; preds = %if.then.42
  %44 = load %struct.compressor*, %struct.compressor** %compr, align 8
  %command = getelementptr inbounds %struct.compressor, %struct.compressor* %44, i32 0, i32 1
  %45 = load i8*, i8** %command, align 8
  %46 = load i8*, i8** %real_name, align 8
  %call48 = call i8* @concat(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.319, i32 0, i32 0), i8* %46)
  store i8* %call48, i8** %cmd1, align 8
  %47 = load i8*, i8** %cmd1, align 8
  %48 = load i8*, i8** %tmp_name, align 8
  %call49 = call i8* @concat(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.320, i32 0, i32 0), i8* %48)
  store i8* %call49, i8** %cmd, align 8
  %49 = load i8*, i8** %cmd1, align 8
  call void @free(i8* %49) #6
  %50 = load i8*, i8** %cmd, align 8
  %call50 = call i32 @system(i8* %50)
  %cmp51 = icmp eq i32 %call50, -1
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.47
  store %struct._IO_FILE* null, %struct._IO_FILE** %inf, align 8
  store i32 22, i32* %tmp_errno, align 4
  br label %if.end.57

if.else.54:                                       ; preds = %if.else.47
  %51 = load i8*, i8** %tmp_name, align 8
  %call55 = call %struct._IO_FILE* @fopen(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.318, i32 0, i32 0))
  store %struct._IO_FILE* %call55, %struct._IO_FILE** %inf, align 8
  %call56 = call i32* @__errno_location() #12
  %52 = load i32, i32* %call56, align 4
  store i32 %52, i32* %tmp_errno, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  %53 = load i8*, i8** %cmd, align 8
  call void @free(i8* %53) #6
  %54 = load i32, i32* %tmp_errno, align 4
  %call58 = call i32* @__errno_location() #12
  store i32 %54, i32* %call58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.57, %if.then.46
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %inf, align 8
  %tobool60 = icmp ne %struct._IO_FILE* %55, null
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.end.59
  %56 = load i8*, i8** %real_name, align 8
  call void @perror(i8* %56)
  br label %cleanup

if.end.62:                                        ; preds = %if.end.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.39
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %inf, align 8
  %58 = load i8*, i8** %uncompressed_name, align 8
  %59 = load %struct.language*, %struct.language** %lang.addr, align 8
  call void @process_file(%struct._IO_FILE* %57, i8* %58, %struct.language* %59)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %inf, align 8
  %call64 = call i32 @fclose(%struct._IO_FILE* %60)
  store i32 %call64, i32* %retval, align 4
  %61 = load i8*, i8** %real_name, align 8
  %62 = load i8*, i8** %compressed_name, align 8
  %cmp65 = icmp eq i8* %61, %62
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.63
  %63 = load i8*, i8** %tmp_name, align 8
  %call68 = call i32 @remove(i8* %63) #6
  %64 = load i8*, i8** %tmp_name, align 8
  call void @free(i8* %64) #6
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.63
  %65 = load i32, i32* %retval, align 4
  %cmp70 = icmp slt i32 %65, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.69
  %66 = load i8*, i8** %file.addr, align 8
  call void @pfatal(i8* %66) #10
  unreachable

if.end.73:                                        ; preds = %if.end.69
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.61, %if.then.36, %if.then.8
  %67 = load i8*, i8** %compressed_name, align 8
  %68 = load i8*, i8** %file.addr, align 8
  %cmp74 = icmp ne i8* %67, %68
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %cleanup
  %69 = load i8*, i8** %compressed_name, align 8
  call void @free(i8* %69) #6
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %cleanup
  %70 = load i8*, i8** %uncompressed_name, align 8
  %71 = load i8*, i8** %file.addr, align 8
  %cmp78 = icmp ne i8* %70, %71
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.77
  %72 = load i8*, i8** %uncompressed_name, align 8
  call void @free(i8* %72) #6
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.77
  store %struct.node_st* null, %struct.node_st** @last_node, align 8
  store %struct.fdesc* null, %struct.fdesc** @curfdp, align 8
  br label %return

return:                                           ; preds = %if.end.81, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_file(%struct._IO_FILE* %fh, i8* %fn, %struct.language* %lang) #0 {
entry:
  %fh.addr = alloca %struct._IO_FILE*, align 8
  %fn.addr = alloca i8*, align 8
  %lang.addr = alloca %struct.language*, align 8
  %fdp = alloca %struct.fdesc*, align 8
  %np = alloca %struct.node_st*, align 8
  %prev = alloca %struct.node_st*, align 8
  store %struct._IO_FILE* %fh, %struct._IO_FILE** %fh.addr, align 8
  store i8* %fn, i8** %fn.addr, align 8
  store %struct.language* %lang, %struct.language** %lang.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  store i8* %0, i8** @infilename, align 8
  %call = call i8* @xmalloc(i64 64)
  %1 = bitcast i8* %call to %struct.fdesc*
  store %struct.fdesc* %1, %struct.fdesc** %fdp, align 8
  %2 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %3 = bitcast %struct.fdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.fdesc* @process_file.emptyfdesc to i8*), i64 64, i32 8, i1 false)
  %4 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %5 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %next = getelementptr inbounds %struct.fdesc, %struct.fdesc* %5, i32 0, i32 0
  store %struct.fdesc* %4, %struct.fdesc** %next, align 8
  %6 = load i8*, i8** %fn.addr, align 8
  %call1 = call i8* @savestr(i8* %6)
  %7 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %infname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %7, i32 0, i32 1
  store i8* %call1, i8** %infname, align 8
  %8 = load %struct.language*, %struct.language** %lang.addr, align 8
  %9 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %lang2 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %9, i32 0, i32 5
  store %struct.language* %8, %struct.language** %lang2, align 8
  %10 = load i8*, i8** %fn.addr, align 8
  %11 = load i8*, i8** @cwd, align 8
  %call3 = call i8* @absolute_filename(i8* %10, i8* %11)
  %12 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %infabsname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %12, i32 0, i32 2
  store i8* %call3, i8** %infabsname, align 8
  %13 = load i8*, i8** %fn.addr, align 8
  %14 = load i8*, i8** @cwd, align 8
  %call4 = call i8* @absolute_dirname(i8* %13, i8* %14)
  %15 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %infabsdir = getelementptr inbounds %struct.fdesc, %struct.fdesc* %15, i32 0, i32 3
  store i8* %call4, i8** %infabsdir, align 8
  %16 = load i8*, i8** %fn.addr, align 8
  %call5 = call zeroext i1 @filename_is_absolute(i8* %16)
  br i1 %call5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load i8*, i8** %fn.addr, align 8
  %call6 = call i8* @absolute_filename(i8* %17, i8* null)
  %18 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %taggedfname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %18, i32 0, i32 4
  store i8* %call6, i8** %taggedfname, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load i8*, i8** %fn.addr, align 8
  %20 = load i8*, i8** @tagfiledir, align 8
  %call7 = call i8* @relative_filename(i8* %19, i8* %20)
  %21 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %taggedfname8 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %21, i32 0, i32 4
  store i8* %call7, i8** %taggedfname8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %usecharno = getelementptr inbounds %struct.fdesc, %struct.fdesc* %22, i32 0, i32 7
  store i8 1, i8* %usecharno, align 1
  %23 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %prop = getelementptr inbounds %struct.fdesc, %struct.fdesc* %23, i32 0, i32 6
  store i8* null, i8** %prop, align 8
  %24 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %written = getelementptr inbounds %struct.fdesc, %struct.fdesc* %24, i32 0, i32 8
  store i8 0, i8* %written, align 1
  %25 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  store %struct.fdesc* %25, %struct.fdesc** @fdhead, align 8
  %26 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  store %struct.fdesc* %26, %struct.fdesc** @curfdp, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fh.addr, align 8
  call void @find_entries(%struct._IO_FILE* %27)
  %28 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %usecharno9 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %28, i32 0, i32 7
  %29 = load i8, i8* %usecharno9, align 1
  %tobool = trunc i8 %29 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end
  %30 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang10 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %30, i32 0, i32 5
  %31 = load %struct.language*, %struct.language** %lang10, align 8
  %metasource = getelementptr inbounds %struct.language, %struct.language* %31, i32 0, i32 6
  %32 = load i8, i8* %metasource, align 1
  %tobool11 = trunc i8 %32 to i1
  br i1 %tobool11, label %if.end.25, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true
  store %struct.node_st* null, %struct.node_st** %prev, align 8
  %33 = load %struct.node_st*, %struct.node_st** @nodehead, align 8
  store %struct.node_st* %33, %struct.node_st** %np, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %34 = load %struct.node_st*, %struct.node_st** %np, align 8
  %cmp = icmp ne %struct.node_st* %34, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct.node_st*, %struct.node_st** %np, align 8
  %fdp13 = getelementptr inbounds %struct.node_st, %struct.node_st* %35, i32 0, i32 2
  %36 = load %struct.fdesc*, %struct.fdesc** %fdp13, align 8
  %37 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %cmp14 = icmp eq %struct.fdesc* %36, %37
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  br label %for.end

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %38 = load %struct.node_st*, %struct.node_st** %np, align 8
  store %struct.node_st* %38, %struct.node_st** %prev, align 8
  %39 = load %struct.node_st*, %struct.node_st** %np, align 8
  %left = getelementptr inbounds %struct.node_st, %struct.node_st* %39, i32 0, i32 0
  %40 = load %struct.node_st*, %struct.node_st** %left, align 8
  store %struct.node_st* %40, %struct.node_st** %np, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  %41 = load %struct.node_st*, %struct.node_st** %np, align 8
  %cmp17 = icmp ne %struct.node_st* %41, null
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %for.end
  %42 = load %struct.node_st*, %struct.node_st** %np, align 8
  call void @put_entries(%struct.node_st* %42)
  %43 = load %struct.node_st*, %struct.node_st** %np, align 8
  call void @free_tree(%struct.node_st* %43)
  %44 = load %struct.node_st*, %struct.node_st** %prev, align 8
  %cmp19 = icmp eq %struct.node_st* %44, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.then.18
  store %struct.node_st* null, %struct.node_st** @nodehead, align 8
  br label %if.end.23

if.else.21:                                       ; preds = %if.then.18
  %45 = load %struct.node_st*, %struct.node_st** %prev, align 8
  %left22 = getelementptr inbounds %struct.node_st, %struct.node_st* %45, i32 0, i32 0
  store %struct.node_st* null, %struct.node_st** %left22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %for.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_regexps() #0 {
entry:
  %rp = alloca %struct.regexp*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %cmp = icmp ne %struct.regexp* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %p_next = getelementptr inbounds %struct.regexp, %struct.regexp* %1, i32 0, i32 0
  %2 = load %struct.regexp*, %struct.regexp** %p_next, align 8
  store %struct.regexp* %2, %struct.regexp** %rp, align 8
  %3 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %pattern = getelementptr inbounds %struct.regexp, %struct.regexp* %3, i32 0, i32 2
  %4 = load i8*, i8** %pattern, align 8
  call void @free(i8* %4) #6
  %5 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %name = getelementptr inbounds %struct.regexp, %struct.regexp* %5, i32 0, i32 3
  %6 = load i8*, i8** %name, align 8
  call void @free(i8* %6) #6
  %7 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %8 = bitcast %struct.regexp* %7 to i8*
  call void @free(i8* %8) #6
  %9 = load %struct.regexp*, %struct.regexp** %rp, align 8
  store %struct.regexp* %9, %struct.regexp** @p_head, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_entries(%struct.node_st* %np) #0 {
entry:
  %np.addr = alloca %struct.node_st*, align 8
  %sp = alloca i8*, align 8
  store %struct.node_st* %np, %struct.node_st** %np.addr, align 8
  %0 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %cmp = icmp eq %struct.node_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %valid = getelementptr inbounds %struct.node_st, %struct.node_st* %1, i32 0, i32 5
  %2 = load i8, i8* %valid, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then.1, label %if.end.22

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.fdesc*, %struct.fdesc** @put_entries.fdp, align 8
  %4 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %fdp = getelementptr inbounds %struct.node_st, %struct.node_st* %4, i32 0, i32 2
  %5 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %cmp2 = icmp ne %struct.fdesc* %3, %5
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.then.1
  %6 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %fdp4 = getelementptr inbounds %struct.node_st, %struct.node_st* %6, i32 0, i32 2
  %7 = load %struct.fdesc*, %struct.fdesc** %fdp4, align 8
  store %struct.fdesc* %7, %struct.fdesc** @put_entries.fdp, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %9 = load %struct.fdesc*, %struct.fdesc** @put_entries.fdp, align 8
  %taggedfname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %9, i32 0, i32 4
  %10 = load i8*, i8** %taggedfname, align 8
  %11 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %call = call i32 @total_size_of_entries(%struct.node_st* %11)
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.333, i32 0, i32 0), i8* %10, i32 %call)
  %12 = load %struct.fdesc*, %struct.fdesc** @put_entries.fdp, align 8
  %written = getelementptr inbounds %struct.fdesc, %struct.fdesc* %12, i32 0, i32 8
  store i8 1, i8* %written, align 1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.then.1
  %13 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %regex = getelementptr inbounds %struct.node_st, %struct.node_st* %13, i32 0, i32 4
  %14 = load i8*, i8** %regex, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %call7 = call i32 @fputs(i8* %14, %struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %call8 = call i32 @fputc(i32 127, %struct._IO_FILE* %16)
  %17 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %name = getelementptr inbounds %struct.node_st, %struct.node_st* %17, i32 0, i32 3
  %18 = load i8*, i8** %name, align 8
  %cmp9 = icmp ne i8* %18, null
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.6
  %19 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %name11 = getelementptr inbounds %struct.node_st, %struct.node_st* %19, i32 0, i32 3
  %20 = load i8*, i8** %name11, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %call12 = call i32 @fputs(i8* %20, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %call13 = call i32 @fputc(i32 1, %struct._IO_FILE* %22)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end.6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %24 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %lno = getelementptr inbounds %struct.node_st, %struct.node_st* %24, i32 0, i32 8
  %25 = load i32, i32* %lno, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.334, i32 0, i32 0), i32 %25)
  %26 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %cno = getelementptr inbounds %struct.node_st, %struct.node_st* %26, i32 0, i32 9
  %27 = load i64, i64* %cno, align 8
  %cmp16 = icmp ne i64 %27, -1
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %29 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %cno18 = getelementptr inbounds %struct.node_st, %struct.node_st* %29, i32 0, i32 9
  %30 = load i64, i64* %cno18, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.335, i32 0, i32 0), i64 %30)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @tagf, align 8
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.336, i32 0, i32 0), %struct._IO_FILE* %31)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %if.end
  %32 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %right = getelementptr inbounds %struct.node_st, %struct.node_st* %32, i32 0, i32 1
  %33 = load %struct.node_st*, %struct.node_st** %right, align 8
  call void @put_entries(%struct.node_st* %33)
  %34 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %left = getelementptr inbounds %struct.node_st, %struct.node_st* %34, i32 0, i32 0
  %35 = load %struct.node_st*, %struct.node_st** %left, align 8
  call void @put_entries(%struct.node_st* %35)
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_tree(%struct.node_st* %np) #0 {
entry:
  %np.addr = alloca %struct.node_st*, align 8
  %node_right = alloca %struct.node_st*, align 8
  store %struct.node_st* %np, %struct.node_st** %np.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %tobool = icmp ne %struct.node_st* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %right = getelementptr inbounds %struct.node_st, %struct.node_st* %1, i32 0, i32 1
  %2 = load %struct.node_st*, %struct.node_st** %right, align 8
  store %struct.node_st* %2, %struct.node_st** %node_right, align 8
  %3 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %left = getelementptr inbounds %struct.node_st, %struct.node_st* %3, i32 0, i32 0
  %4 = load %struct.node_st*, %struct.node_st** %left, align 8
  call void @free_tree(%struct.node_st* %4)
  %5 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %name = getelementptr inbounds %struct.node_st, %struct.node_st* %5, i32 0, i32 3
  %6 = load i8*, i8** %name, align 8
  call void @free(i8* %6) #6
  %7 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %regex = getelementptr inbounds %struct.node_st, %struct.node_st* %7, i32 0, i32 4
  %8 = load i8*, i8** %regex, align 8
  call void @free(i8* %8) #6
  %9 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %10 = bitcast %struct.node_st* %9 to i8*
  call void @free(i8* %10) #6
  %11 = load %struct.node_st*, %struct.node_st** %node_right, align 8
  store %struct.node_st* %11, %struct.node_st** %np.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare i32 @printf(i8*, ...) #4

declare i32 @puts(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_language_names() #0 {
entry:
  %lang = alloca %struct.language*, align 8
  %name = alloca i8**, align 8
  %ext = alloca i8**, align 8
  %call = call i32 @puts(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.67, i32 0, i32 0))
  store %struct.language* getelementptr inbounds ([31 x %struct.language], [31 x %struct.language]* @lang_names, i32 0, i32 0), %struct.language** %lang, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load %struct.language*, %struct.language** %lang, align 8
  %name1 = getelementptr inbounds %struct.language, %struct.language* %0, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %2 = load %struct.language*, %struct.language** %lang, align 8
  %name2 = getelementptr inbounds %struct.language, %struct.language* %2, i32 0, i32 0
  %3 = load i8*, i8** %name2, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 10, i8* %3)
  %4 = load %struct.language*, %struct.language** %lang, align 8
  %filenames = getelementptr inbounds %struct.language, %struct.language* %4, i32 0, i32 4
  %5 = load i8**, i8*** %filenames, align 8
  %cmp4 = icmp ne i8** %5, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.language*, %struct.language** %lang, align 8
  %filenames5 = getelementptr inbounds %struct.language, %struct.language* %6, i32 0, i32 4
  %7 = load i8**, i8*** %filenames5, align 8
  store i8** %7, i8*** %name, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then
  %8 = load i8**, i8*** %name, align 8
  %9 = load i8*, i8** %8, align 8
  %cmp7 = icmp ne i8* %9, null
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %10 = load i8**, i8*** %name, align 8
  %11 = load i8*, i8** %10, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %12 = load i8**, i8*** %name, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr, i8*** %name, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  %13 = load %struct.language*, %struct.language** %lang, align 8
  %suffixes = getelementptr inbounds %struct.language, %struct.language* %13, i32 0, i32 3
  %14 = load i8**, i8*** %suffixes, align 8
  %cmp10 = icmp ne i8** %14, null
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end
  %15 = load %struct.language*, %struct.language** %lang, align 8
  %suffixes12 = getelementptr inbounds %struct.language, %struct.language* %15, i32 0, i32 3
  %16 = load i8**, i8*** %suffixes12, align 8
  store i8** %16, i8*** %ext, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.17, %if.then.11
  %17 = load i8**, i8*** %ext, align 8
  %18 = load i8*, i8** %17, align 8
  %cmp14 = icmp ne i8* %18, null
  br i1 %cmp14, label %for.body.15, label %for.end.19

for.body.15:                                      ; preds = %for.cond.13
  %19 = load i8**, i8*** %ext, align 8
  %20 = load i8*, i8** %19, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* %20)
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.15
  %21 = load i8**, i8*** %ext, align 8
  %incdec.ptr18 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %incdec.ptr18, i8*** %ext, align 8
  br label %for.cond.13

for.end.19:                                       ; preds = %for.cond.13
  br label %if.end.20

if.end.20:                                        ; preds = %for.end.19, %if.end
  %call21 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.20
  %22 = load %struct.language*, %struct.language** %lang, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.language, %struct.language* %22, i32 1
  store %struct.language* %incdec.ptr23, %struct.language** %lang, align 8
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %call25 = call i32 @puts(i8* getelementptr inbounds ([465 x i8], [465 x i8]* @.str.71, i32 0, i32 0))
  %call26 = call i32 @puts(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.72, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ada_funcs(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %inquote = alloca i8, align 1
  %skip_till_semicolumn = alloca i8, align 1
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  store i8 0, i8* %inquote, align 1
  store i8 0, i8* %skip_till_semicolumn, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.end.113, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** @dbp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.114

while.body:                                       ; preds = %land.end
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.end.112, %if.end.105, %if.then.80, %if.end.71, %if.end.55, %if.then.44, %if.end.40, %if.end.32, %if.then.12, %while.body
  %4 = load i8*, i8** @dbp, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body.3, label %while.end.113

while.body.3:                                     ; preds = %while.cond.1
  %6 = load i8, i8* %inquote, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.3
  %7 = load i8*, i8** @dbp, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 34
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body.3
  %9 = load i8*, i8** @dbp, align 8
  %10 = load i8, i8* %inquote, align 1
  %tobool8 = trunc i8 %10 to i1
  %lnot = xor i1 %tobool8, true
  %lnot.ext = zext i1 %lnot to i32
  %idx.ext = sext i32 %lnot.ext to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %call9 = call i8* @strchr(i8* %add.ptr, i32 34) #9
  store i8* %call9, i8** @dbp, align 8
  %11 = load i8*, i8** @dbp, align 8
  %cmp10 = icmp ne i8* %11, null
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  store i8 0, i8* %inquote, align 1
  %12 = load i8*, i8** @dbp, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %add.ptr13, i8** @dbp, align 8
  br label %while.cond.1

if.else:                                          ; preds = %if.then
  store i8 1, i8* %inquote, align 1
  br label %while.end.113

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i8*, i8** @dbp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end
  %15 = load i8*, i8** @dbp, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 45
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  br label %while.end.113

if.end.22:                                        ; preds = %land.lhs.true, %if.end
  %17 = load i8*, i8** @dbp, align 8
  %18 = load i8, i8* %17, align 1
  %conv23 = sext i8 %18 to i32
  %cmp24 = icmp eq i32 %conv23, 39
  br i1 %cmp24, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %if.end.22
  %19 = load i8*, i8** @dbp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** @dbp, align 8
  %20 = load i8*, i8** @dbp, align 8
  %21 = load i8, i8* %20, align 1
  %conv27 = sext i8 %21 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.26
  %22 = load i8*, i8** @dbp, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr31, i8** @dbp, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.26
  br label %while.cond.1

if.end.33:                                        ; preds = %if.end.22
  %23 = load i8, i8* %skip_till_semicolumn, align 1
  %tobool34 = trunc i8 %23 to i1
  br i1 %tobool34, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %if.end.33
  %24 = load i8*, i8** @dbp, align 8
  %25 = load i8, i8* %24, align 1
  %conv36 = sext i8 %25 to i32
  %cmp37 = icmp eq i32 %conv36, 59
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.35
  store i8 0, i8* %skip_till_semicolumn, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.35
  %26 = load i8*, i8** @dbp, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr41, i8** @dbp, align 8
  br label %while.cond.1

if.end.42:                                        ; preds = %if.end.33
  %27 = load i8*, i8** @dbp, align 8
  %28 = load i8, i8* %27, align 1
  %call43 = call zeroext i1 @begtoken(i8 zeroext %28)
  br i1 %call43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.end.42
  %29 = load i8*, i8** @dbp, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr45, i8** @dbp, align 8
  br label %while.cond.1

if.end.46:                                        ; preds = %if.end.42
  %30 = load i8*, i8** @dbp, align 8
  %31 = load i8, i8* %30, align 1
  %conv47 = sext i8 %31 to i32
  %call48 = call i32 @c_tolower(i32 %conv47)
  switch i32 %call48, label %sw.epilog [
    i32 102, label %sw.bb
    i32 112, label %sw.bb.56
    i32 117, label %sw.bb.72
    i32 116, label %sw.bb.82
  ]

sw.bb:                                            ; preds = %if.end.46
  %32 = load i32, i32* @packages_only, align 4
  %tobool49 = icmp ne i32 %32, 0
  br i1 %tobool49, label %if.else.54, label %land.lhs.true.50

land.lhs.true.50:                                 ; preds = %sw.bb
  %call51 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0))
  br i1 %call51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.50
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @Ada_getit(%struct._IO_FILE* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0))
  br label %if.end.55

if.else.54:                                       ; preds = %land.lhs.true.50, %sw.bb
  br label %sw.epilog

if.end.55:                                        ; preds = %if.then.53
  br label %while.cond.1

sw.bb.56:                                         ; preds = %if.end.46
  %34 = load i32, i32* @packages_only, align 4
  %tobool57 = icmp ne i32 %34, 0
  br i1 %tobool57, label %if.else.62, label %land.lhs.true.58

land.lhs.true.58:                                 ; preds = %sw.bb.56
  %call59 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0))
  br i1 %call59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %land.lhs.true.58
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @Ada_getit(%struct._IO_FILE* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0))
  br label %if.end.71

if.else.62:                                       ; preds = %land.lhs.true.58, %sw.bb.56
  %call63 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0))
  br i1 %call63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.62
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @Ada_getit(%struct._IO_FILE* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end.70

if.else.65:                                       ; preds = %if.else.62
  %call66 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0))
  br i1 %call66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.else.65
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @Ada_getit(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0))
  br label %if.end.69

if.else.68:                                       ; preds = %if.else.65
  br label %sw.epilog

if.end.69:                                        ; preds = %if.then.67
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.64
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.61
  br label %while.cond.1

sw.bb.72:                                         ; preds = %if.end.46
  %38 = load i8, i8* @typedefs, align 1
  %tobool73 = trunc i8 %38 to i1
  br i1 %tobool73, label %land.lhs.true.75, label %if.end.81

land.lhs.true.75:                                 ; preds = %sw.bb.72
  %39 = load i32, i32* @packages_only, align 4
  %tobool76 = icmp ne i32 %39, 0
  br i1 %tobool76, label %if.end.81, label %land.lhs.true.77

land.lhs.true.77:                                 ; preds = %land.lhs.true.75
  %call78 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0))
  br i1 %call78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %land.lhs.true.77
  store i8 1, i8* %skip_till_semicolumn, align 1
  br label %while.cond.1

if.end.81:                                        ; preds = %land.lhs.true.77, %land.lhs.true.75, %sw.bb.72
  br label %sw.bb.82

sw.bb.82:                                         ; preds = %if.end.46, %if.end.81
  %40 = load i32, i32* @packages_only, align 4
  %tobool83 = icmp ne i32 %40, 0
  br i1 %tobool83, label %if.else.88, label %land.lhs.true.84

land.lhs.true.84:                                 ; preds = %sw.bb.82
  %call85 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0))
  br i1 %call85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %land.lhs.true.84
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @Ada_getit(%struct._IO_FILE* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.105

if.else.88:                                       ; preds = %land.lhs.true.84, %sw.bb.82
  %42 = load i8, i8* @typedefs, align 1
  %tobool89 = trunc i8 %42 to i1
  br i1 %tobool89, label %land.lhs.true.91, label %if.else.103

land.lhs.true.91:                                 ; preds = %if.else.88
  %43 = load i32, i32* @packages_only, align 4
  %tobool92 = icmp ne i32 %43, 0
  br i1 %tobool92, label %if.else.103, label %land.lhs.true.93

land.lhs.true.93:                                 ; preds = %land.lhs.true.91
  %call94 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0))
  br i1 %call94, label %if.then.96, label %if.else.103

if.then.96:                                       ; preds = %land.lhs.true.93
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @Ada_getit(%struct._IO_FILE* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0))
  br label %while.cond.97

while.cond.97:                                    ; preds = %while.body.101, %if.then.96
  %45 = load i8*, i8** @dbp, align 8
  %46 = load i8, i8* %45, align 1
  %conv98 = sext i8 %46 to i32
  %cmp99 = icmp ne i32 %conv98, 0
  br i1 %cmp99, label %while.body.101, label %while.end

while.body.101:                                   ; preds = %while.cond.97
  %47 = load i8*, i8** @dbp, align 8
  %add.ptr102 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %add.ptr102, i8** @dbp, align 8
  br label %while.cond.97

while.end:                                        ; preds = %while.cond.97
  br label %if.end.104

if.else.103:                                      ; preds = %land.lhs.true.93, %land.lhs.true.91, %if.else.88
  br label %sw.epilog

if.end.104:                                       ; preds = %while.end
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.87
  br label %while.cond.1

sw.epilog:                                        ; preds = %if.end.46, %if.else.103, %if.else.68, %if.else.54
  br label %while.cond.106

while.cond.106:                                   ; preds = %while.body.110, %sw.epilog
  %48 = load i8*, i8** @dbp, align 8
  %49 = load i8, i8* %48, align 1
  %call107 = call zeroext i1 @endtoken(i8 zeroext %49)
  %lnot108 = xor i1 %call107, true
  br i1 %lnot108, label %while.body.110, label %while.end.112

while.body.110:                                   ; preds = %while.cond.106
  %50 = load i8*, i8** @dbp, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr111, i8** @dbp, align 8
  br label %while.cond.106

while.end.112:                                    ; preds = %while.cond.106
  br label %while.cond.1

while.end.113:                                    ; preds = %if.then.21, %if.else, %while.cond.1
  br label %while.cond

while.end.114:                                    ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Asm_labels(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.43, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.44

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %call1 = call zeroext i1 @c_isalpha(i32 %conv)
  br i1 %call1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv3, 95
  br i1 %cmp, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %8 = load i8*, i8** %cp, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 46
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 36
  br i1 %cmp11, label %if.then, label %if.end.43

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.5, %lor.lhs.false, %while.body
  %12 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.28, %if.then
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv14 = sext i8 %14 to i32
  %call15 = call zeroext i1 @c_isalnum(i32 %conv14)
  br i1 %call15, label %lor.end, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %while.cond.13
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 95
  br i1 %cmp19, label %lor.end, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.17
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8, i8* %17, align 1
  %conv22 = sext i8 %18 to i32
  %cmp23 = icmp eq i32 %conv22, 46
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.21
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8, i8* %19, align 1
  %conv25 = sext i8 %20 to i32
  %cmp26 = icmp eq i32 %conv25, 36
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.21, %lor.lhs.false.17, %while.cond.13
  %21 = phi i1 [ true, %lor.lhs.false.21 ], [ true, %lor.lhs.false.17 ], [ true, %while.cond.13 ], [ %cmp26, %lor.rhs ]
  br i1 %21, label %while.body.28, label %while.end

while.body.28:                                    ; preds = %lor.end
  %22 = load i8*, i8** %cp, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr29, i8** %cp, align 8
  br label %while.cond.13

while.end:                                        ; preds = %lor.end
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8, i8* %23, align 1
  %conv30 = sext i8 %24 to i32
  %cmp31 = icmp eq i32 %conv30, 58
  br i1 %cmp31, label %if.then.37, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %while.end
  %25 = load i8*, i8** %cp, align 8
  %26 = load i8, i8* %25, align 1
  %conv34 = sext i8 %26 to i32
  %call35 = call zeroext i1 @c_isspace(i32 %conv34)
  br i1 %call35, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %lor.lhs.false.33, %while.end
  %27 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %28 = load i8*, i8** %cp, align 8
  %29 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv38 = trunc i64 %sub.ptr.sub to i32
  %30 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %31 = load i8*, i8** %cp, align 8
  %32 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast39 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %32 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %add = add nsw i64 %sub.ptr.sub41, 1
  %conv42 = trunc i64 %add to i32
  %33 = load i32, i32* @lineno, align 4
  %34 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %27, i32 %conv38, i1 zeroext true, i8* %30, i32 %conv42, i32 %33, i64 %34)
  br label %if.end

if.end:                                           ; preds = %if.then.37, %lor.lhs.false.33
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %lor.lhs.false.9
  br label %while.cond

while.end.44:                                     ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @default_C_entries(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load i8, i8* @cplusplus, align 1
  %tobool = trunc i8 %0 to i1
  %cond = select i1 %tobool, i32 1, i32 4096
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @C_entries(i32 %cond, %struct._IO_FILE* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Cplusplus_entries(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @C_entries(i32 1, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Cstar_entries(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @C_entries(i32 3, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Cobol_paragraphs(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %bp = alloca i8*, align 8
  %ep = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.then.6, %if.then, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %bp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %4, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %5 = load i8*, i8** %bp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 8
  store i8* %add.ptr, i8** %bp, align 8
  %6 = load i8*, i8** %bp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 -1
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp1 = icmp ne i32 %conv, 32
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i8*, i8** %bp, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  %call5 = call zeroext i1 @c_isalnum(i32 %conv4)
  br i1 %call5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  br label %while.cond

if.end.7:                                         ; preds = %lor.lhs.false
  %10 = load i8*, i8** %bp, align 8
  store i8* %10, i8** %ep, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %11 = load i8*, i8** %ep, align 8
  %12 = load i8, i8* %11, align 1
  %conv8 = sext i8 %12 to i32
  %call9 = call zeroext i1 @c_isalnum(i32 %conv8)
  br i1 %call9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %13 = load i8*, i8** %ep, align 8
  %14 = load i8, i8* %13, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %15 = phi i1 [ true, %for.cond ], [ %cmp12, %lor.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8*, i8** %ep, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %ep, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %17 = load i8*, i8** %ep, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr14, i8** %ep, align 8
  %18 = load i8, i8* %17, align 1
  %conv15 = sext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv15, 46
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %for.end
  %19 = load i8*, i8** %bp, align 8
  %20 = load i8*, i8** %ep, align 8
  %21 = load i8*, i8** %bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv19 = trunc i64 %sub.ptr.sub to i32
  %22 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %23 = load i8*, i8** %ep, align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast20 = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %24 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %add = add nsw i64 %sub.ptr.sub22, 1
  %conv23 = trunc i64 %add to i32
  %25 = load i32, i32* @lineno, align 4
  %26 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %19, i32 %conv19, i1 zeroext true, i8* %22, i32 %conv23, i32 %25, i64 %26)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.18, %for.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Erlang_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %last = alloca i8*, align 8
  %len = alloca i32, align 4
  %allocated = alloca i32, align 4
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  store i32 0, i32* %allocated, align 4
  store i32 0, i32* %len, align 4
  store i8* null, i8** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.56, %if.then.17, %if.then.11, %if.then.5, %if.then, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.cond

if.else:                                          ; preds = %while.body
  %6 = load i8*, i8** %cp, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %call4 = call zeroext i1 @c_isspace(i32 %conv3)
  br i1 %call4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  br label %while.cond

if.else.6:                                        ; preds = %if.else
  %8 = load i8*, i8** %cp, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 37
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.6
  br label %while.cond

if.else.12:                                       ; preds = %if.else.6
  %10 = load i8*, i8** %cp, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 34
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.12
  br label %while.cond

if.else.18:                                       ; preds = %if.else.12
  %12 = load i8*, i8** %cp, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %13 to i32
  %cmp21 = icmp eq i32 %conv20, 45
  br i1 %cmp21, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.else.18
  %14 = load i8*, i8** %cp, align 8
  call void @erlang_attribute(i8* %14)
  %15 = load i8*, i8** %last, align 8
  %cmp24 = icmp ne i8* %15, null
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then.23
  %16 = load i8*, i8** %last, align 8
  call void @free(i8* %16) #6
  store i8* null, i8** %last, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.then.23
  br label %if.end.52

if.else.27:                                       ; preds = %if.else.18
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8*, i8** %last, align 8
  %call28 = call i32 @erlang_func(i8* %17, i8* %18)
  store i32 %call28, i32* %len, align 4
  %cmp29 = icmp sgt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.51

if.then.31:                                       ; preds = %if.else.27
  %19 = load i8*, i8** %last, align 8
  %cmp32 = icmp eq i8* %19, null
  br i1 %cmp32, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.then.31
  %20 = load i32, i32* %len, align 4
  %add = add nsw i32 %20, 1
  %conv35 = sext i32 %add to i64
  %mul = mul i64 %conv35, 1
  %call36 = call i8* @xmalloc(i64 %mul)
  store i8* %call36, i8** %last, align 8
  br label %if.end.47

if.else.37:                                       ; preds = %if.then.31
  %21 = load i32, i32* %len, align 4
  %add38 = add nsw i32 %21, 1
  %22 = load i32, i32* %allocated, align 4
  %cmp39 = icmp sgt i32 %add38, %22
  br i1 %cmp39, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %if.else.37
  %23 = load i8*, i8** %last, align 8
  %24 = load i32, i32* %len, align 4
  %add42 = add nsw i32 %24, 1
  %conv43 = sext i32 %add42 to i64
  %mul44 = mul i64 %conv43, 1
  %call45 = call i8* @xrealloc(i8* %23, i64 %mul44)
  store i8* %call45, i8** %last, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %if.else.37
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.34
  %25 = load i32, i32* %len, align 4
  %add48 = add nsw i32 %25, 1
  store i32 %add48, i32* %allocated, align 4
  %26 = load i8*, i8** %last, align 8
  %27 = load i8*, i8** %cp, align 8
  %28 = load i32, i32* %len, align 4
  %conv49 = sext i32 %28 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 %conv49, i32 1, i1 false)
  %29 = load i32, i32* %len, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i8*, i8** %last, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %30, i64 %idxprom
  store i8 0, i8* %arrayidx50, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.47, %if.else.27
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55
  br label %while.cond

while.end:                                        ; preds = %land.end
  %31 = load i8*, i8** %last, align 8
  call void @free(i8* %31) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Forth_words(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %bp = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %bp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.95

while.body:                                       ; preds = %land.end
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end.94, %while.body
  %4 = load i8*, i8** %bp, align 8
  %call2 = call i8* @skip_spaces(i8* %4)
  store i8* %call2, i8** %bp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %call2, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.1
  %6 = load i8*, i8** %bp, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 92
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body.4
  %8 = load i8*, i8** %bp, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %9 to i32
  %call11 = call zeroext i1 @c_isspace(i32 %conv10)
  br i1 %call11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %while.end

if.else:                                          ; preds = %land.lhs.true, %while.body.4
  %10 = load i8*, i8** %bp, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 40
  br i1 %cmp15, label %land.lhs.true.17, label %if.else.31

land.lhs.true.17:                                 ; preds = %if.else
  %12 = load i8*, i8** %bp, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %13 to i32
  %call20 = call zeroext i1 @c_isspace(i32 %conv19)
  br i1 %call20, label %if.then.22, label %if.else.31

if.then.22:                                       ; preds = %land.lhs.true.17
  br label %do.body

do.body:                                          ; preds = %land.end.30, %if.then.22
  %14 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i8*, i8** %bp, align 8
  %16 = load i8, i8* %15, align 1
  %conv23 = sext i8 %16 to i32
  %cmp24 = icmp ne i32 %conv23, 41
  br i1 %cmp24, label %land.rhs.26, label %land.end.30

land.rhs.26:                                      ; preds = %do.cond
  %17 = load i8*, i8** %bp, align 8
  %18 = load i8, i8* %17, align 1
  %conv27 = sext i8 %18 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br label %land.end.30

land.end.30:                                      ; preds = %land.rhs.26, %do.cond
  %19 = phi i1 [ false, %do.cond ], [ %cmp28, %land.rhs.26 ]
  br i1 %19, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.30
  br label %if.end.93

if.else.31:                                       ; preds = %land.lhs.true.17, %if.else
  %20 = load i8*, i8** %bp, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %21 to i32
  %cmp34 = icmp eq i32 %conv33, 58
  br i1 %cmp34, label %land.lhs.true.36, label %lor.lhs.false

land.lhs.true.36:                                 ; preds = %if.else.31
  %22 = load i8*, i8** %bp, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %23 to i32
  %call39 = call zeroext i1 @c_isspace(i32 %conv38)
  br i1 %call39, label %land.lhs.true.41, label %lor.lhs.false

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %24 = load i8*, i8** %bp, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr42, i8** %bp, align 8
  %tobool = icmp ne i8* %24, null
  br i1 %tobool, label %if.then.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.41, %land.lhs.true.36, %if.else.31
  %25 = load i8*, i8** %bp, align 8
  %call43 = call zeroext i1 @strncaseeq(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.198, i32 0, i32 0), i64 8)
  br i1 %call43, label %land.lhs.true.45, label %lor.lhs.false.47

land.lhs.true.45:                                 ; preds = %lor.lhs.false
  %26 = load i8*, i8** %bp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 8
  store i8* %add.ptr, i8** %bp, align 8
  %tobool46 = icmp ne i8* %add.ptr, null
  br i1 %tobool46, label %if.then.89, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.45, %lor.lhs.false
  %27 = load i8*, i8** %bp, align 8
  %call48 = call zeroext i1 @strncaseeq(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.199, i32 0, i32 0), i64 4)
  br i1 %call48, label %land.lhs.true.50, label %lor.lhs.false.53

land.lhs.true.50:                                 ; preds = %lor.lhs.false.47
  %28 = load i8*, i8** %bp, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %28, i64 4
  store i8* %add.ptr51, i8** %bp, align 8
  %tobool52 = icmp ne i8* %add.ptr51, null
  br i1 %tobool52, label %if.then.89, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.50, %lor.lhs.false.47
  %29 = load i8*, i8** %bp, align 8
  %call54 = call zeroext i1 @strncaseeq(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i32 0, i32 0), i64 6)
  br i1 %call54, label %land.lhs.true.56, label %lor.lhs.false.59

land.lhs.true.56:                                 ; preds = %lor.lhs.false.53
  %30 = load i8*, i8** %bp, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %30, i64 6
  store i8* %add.ptr57, i8** %bp, align 8
  %tobool58 = icmp ne i8* %add.ptr57, null
  br i1 %tobool58, label %if.then.89, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.56, %lor.lhs.false.53
  %31 = load i8*, i8** %bp, align 8
  %call60 = call zeroext i1 @strncaseeq(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i64 5)
  br i1 %call60, label %land.lhs.true.62, label %lor.lhs.false.65

land.lhs.true.62:                                 ; preds = %lor.lhs.false.59
  %32 = load i8*, i8** %bp, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %32, i64 5
  store i8* %add.ptr63, i8** %bp, align 8
  %tobool64 = icmp ne i8* %add.ptr63, null
  br i1 %tobool64, label %if.then.89, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.62, %lor.lhs.false.59
  %33 = load i8*, i8** %bp, align 8
  %call66 = call zeroext i1 @strncaseeq(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i64 5)
  br i1 %call66, label %land.lhs.true.68, label %lor.lhs.false.71

land.lhs.true.68:                                 ; preds = %lor.lhs.false.65
  %34 = load i8*, i8** %bp, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %34, i64 5
  store i8* %add.ptr69, i8** %bp, align 8
  %tobool70 = icmp ne i8* %add.ptr69, null
  br i1 %tobool70, label %if.then.89, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %land.lhs.true.68, %lor.lhs.false.65
  %35 = load i8*, i8** %bp, align 8
  %call72 = call zeroext i1 @strncaseeq(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.203, i32 0, i32 0), i64 8)
  br i1 %call72, label %land.lhs.true.74, label %lor.lhs.false.77

land.lhs.true.74:                                 ; preds = %lor.lhs.false.71
  %36 = load i8*, i8** %bp, align 8
  %add.ptr75 = getelementptr inbounds i8, i8* %36, i64 8
  store i8* %add.ptr75, i8** %bp, align 8
  %tobool76 = icmp ne i8* %add.ptr75, null
  br i1 %tobool76, label %if.then.89, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %land.lhs.true.74, %lor.lhs.false.71
  %37 = load i8*, i8** %bp, align 8
  %call78 = call zeroext i1 @strncaseeq(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.204, i32 0, i32 0), i64 7)
  br i1 %call78, label %land.lhs.true.80, label %lor.lhs.false.83

land.lhs.true.80:                                 ; preds = %lor.lhs.false.77
  %38 = load i8*, i8** %bp, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %38, i64 7
  store i8* %add.ptr81, i8** %bp, align 8
  %tobool82 = icmp ne i8* %add.ptr81, null
  br i1 %tobool82, label %if.then.89, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %land.lhs.true.80, %lor.lhs.false.77
  %39 = load i8*, i8** %bp, align 8
  %call84 = call zeroext i1 @strncaseeq(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.205, i32 0, i32 0), i64 5)
  br i1 %call84, label %land.lhs.true.86, label %if.else.91

land.lhs.true.86:                                 ; preds = %lor.lhs.false.83
  %40 = load i8*, i8** %bp, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %40, i64 5
  store i8* %add.ptr87, i8** %bp, align 8
  %tobool88 = icmp ne i8* %add.ptr87, null
  br i1 %tobool88, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %land.lhs.true.86, %land.lhs.true.80, %land.lhs.true.74, %land.lhs.true.68, %land.lhs.true.62, %land.lhs.true.56, %land.lhs.true.50, %land.lhs.true.45, %land.lhs.true.41
  %41 = load i8*, i8** %bp, align 8
  %call90 = call i8* @skip_spaces(i8* %41)
  call void @get_tag(i8* %call90, i8** null)
  br label %if.end

if.else.91:                                       ; preds = %land.lhs.true.86, %lor.lhs.false.83
  %42 = load i8*, i8** %bp, align 8
  %call92 = call i8* @skip_non_spaces(i8* %42)
  store i8* %call92, i8** %bp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.91, %if.then.89
  br label %if.end.93

if.end.93:                                        ; preds = %if.end, %do.end
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93
  br label %while.cond.1

while.end:                                        ; preds = %if.then, %while.cond.1
  br label %while.cond

while.end.95:                                     ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Fortran_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.97, %if.end.96, %if.end.81, %if.end.77, %if.end.73, %if.then.66, %if.end.60, %if.then.56, %if.then.6, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** @dbp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** @dbp, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** @dbp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** @dbp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i8*, i8** @dbp, align 8
  %call2 = call i8* @skip_spaces(i8* %7)
  store i8* %call2, i8** @dbp, align 8
  %8 = load i8*, i8** @dbp, align 8
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %while.cond

if.end.7:                                         ; preds = %if.end
  %10 = load i8*, i8** @dbp, align 8
  %call8 = call zeroext i1 @strncaseeq(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.206, i32 0, i32 0), i64 9)
  br i1 %call8, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.7
  %11 = load i8*, i8** @dbp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 9
  store i8* %add.ptr, i8** @dbp, align 8
  %tobool = icmp ne i8* %add.ptr, null
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %land.lhs.true
  %12 = load i8*, i8** @dbp, align 8
  %call11 = call i8* @skip_spaces(i8* %12)
  store i8* %call11, i8** @dbp, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %land.lhs.true, %if.end.7
  %13 = load i8*, i8** @dbp, align 8
  %call13 = call zeroext i1 @strncaseeq(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.207, i32 0, i32 0), i64 4)
  br i1 %call13, label %land.lhs.true.15, label %if.end.20

land.lhs.true.15:                                 ; preds = %if.end.12
  %14 = load i8*, i8** @dbp, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %14, i64 4
  store i8* %add.ptr16, i8** @dbp, align 8
  %tobool17 = icmp ne i8* %add.ptr16, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true.15
  %15 = load i8*, i8** @dbp, align 8
  %call19 = call i8* @skip_spaces(i8* %15)
  store i8* %call19, i8** @dbp, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.15, %if.end.12
  %16 = load i8*, i8** @dbp, align 8
  %call21 = call zeroext i1 @strncaseeq(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.208, i32 0, i32 0), i64 9)
  br i1 %call21, label %land.lhs.true.23, label %if.end.28

land.lhs.true.23:                                 ; preds = %if.end.20
  %17 = load i8*, i8** @dbp, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %17, i64 9
  store i8* %add.ptr24, i8** @dbp, align 8
  %tobool25 = icmp ne i8* %add.ptr24, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true.23
  %18 = load i8*, i8** @dbp, align 8
  %call27 = call i8* @skip_spaces(i8* %18)
  store i8* %call27, i8** @dbp, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true.23, %if.end.20
  %19 = load i8*, i8** @dbp, align 8
  %20 = load i8, i8* %19, align 1
  %conv29 = sext i8 %20 to i32
  %call30 = call i32 @c_tolower(i32 %conv29)
  switch i32 %call30, label %sw.epilog [
    i32 105, label %sw.bb
    i32 114, label %sw.bb.34
    i32 108, label %sw.bb.38
    i32 99, label %sw.bb.42
    i32 100, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %if.end.28
  %call31 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i32 0, i32 0))
  br i1 %call31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %sw.bb
  call void @F_takeprec()
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %sw.bb
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.28
  %call35 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.210, i32 0, i32 0))
  br i1 %call35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb.34
  call void @F_takeprec()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %sw.bb.34
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.28
  %call39 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.211, i32 0, i32 0))
  br i1 %call39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.38
  call void @F_takeprec()
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %sw.bb.38
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end.28
  %call43 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.212, i32 0, i32 0))
  br i1 %call43, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.42
  %call45 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.213, i32 0, i32 0))
  br i1 %call45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false, %sw.bb.42
  call void @F_takeprec()
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %lor.lhs.false
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end.28
  %call50 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.214, i32 0, i32 0))
  br i1 %call50, label %if.then.51, label %if.end.61

if.then.51:                                       ; preds = %sw.bb.49
  %21 = load i8*, i8** @dbp, align 8
  %call52 = call i8* @skip_spaces(i8* %21)
  store i8* %call52, i8** @dbp, align 8
  %22 = load i8*, i8** @dbp, align 8
  %23 = load i8, i8* %22, align 1
  %conv53 = sext i8 %23 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.51
  br label %while.cond

if.end.57:                                        ; preds = %if.then.51
  %call58 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.215, i32 0, i32 0))
  br i1 %call58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  br label %sw.epilog

if.end.60:                                        ; preds = %if.end.57
  br label %while.cond

if.end.61:                                        ; preds = %sw.bb.49
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.28, %if.end.61, %if.then.59, %if.end.48, %if.end.41, %if.end.37, %if.end.33
  %24 = load i8*, i8** @dbp, align 8
  %call62 = call i8* @skip_spaces(i8* %24)
  store i8* %call62, i8** @dbp, align 8
  %25 = load i8*, i8** @dbp, align 8
  %26 = load i8, i8* %25, align 1
  %conv63 = sext i8 %26 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %sw.epilog
  br label %while.cond

if.end.67:                                        ; preds = %sw.epilog
  %27 = load i8*, i8** @dbp, align 8
  %28 = load i8, i8* %27, align 1
  %conv68 = sext i8 %28 to i32
  %call69 = call i32 @c_tolower(i32 %conv68)
  switch i32 %call69, label %sw.epilog.97 [
    i32 102, label %sw.bb.70
    i32 115, label %sw.bb.74
    i32 101, label %sw.bb.78
    i32 98, label %sw.bb.82
  ]

sw.bb.70:                                         ; preds = %if.end.67
  %call71 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0))
  br i1 %call71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %sw.bb.70
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @F_getit(%struct._IO_FILE* %29)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %sw.bb.70
  br label %while.cond

sw.bb.74:                                         ; preds = %if.end.67
  %call75 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.216, i32 0, i32 0))
  br i1 %call75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %sw.bb.74
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @F_getit(%struct._IO_FILE* %30)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %sw.bb.74
  br label %while.cond

sw.bb.78:                                         ; preds = %if.end.67
  %call79 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.217, i32 0, i32 0))
  br i1 %call79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %sw.bb.78
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @F_getit(%struct._IO_FILE* %31)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %sw.bb.78
  br label %while.cond

sw.bb.82:                                         ; preds = %if.end.67
  %call83 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.218, i32 0, i32 0))
  br i1 %call83, label %if.then.88, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %sw.bb.82
  %call86 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.219, i32 0, i32 0))
  br i1 %call86, label %if.then.88, label %if.end.96

if.then.88:                                       ; preds = %lor.lhs.false.85, %sw.bb.82
  %32 = load i8*, i8** @dbp, align 8
  %call89 = call i8* @skip_spaces(i8* %32)
  store i8* %call89, i8** @dbp, align 8
  %33 = load i8*, i8** @dbp, align 8
  %34 = load i8, i8* %33, align 1
  %conv90 = sext i8 %34 to i32
  %cmp91 = icmp eq i32 %conv90, 0
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.then.88
  %35 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %36 = load i8*, i8** @dbp, align 8
  %37 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv94 = trunc i64 %sub.ptr.sub to i32
  %38 = load i32, i32* @lineno, align 4
  %39 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.218, i32 0, i32 0), i32 9, i1 zeroext true, i8* %35, i32 %conv94, i32 %38, i64 %39)
  br label %if.end.95

if.else:                                          ; preds = %if.then.88
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @F_getit(%struct._IO_FILE* %40)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else, %if.then.93
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %lor.lhs.false.85
  br label %while.cond

sw.epilog.97:                                     ; preds = %if.end.67
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Go_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.101, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.102

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %cp, align 8
  %call1 = call i8* @skip_spaces(i8* %4)
  store i8* %call1, i8** %cp, align 8
  %5 = load i8*, i8** %cp, align 8
  %call2 = call zeroext i1 @strneq(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i64 7)
  br i1 %call2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 7
  %7 = load i8, i8* %arrayidx, align 1
  %call3 = call zeroext i1 @notinname(i8 zeroext %7)
  br i1 %call3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 8
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %call6 = call i8* @skip_spaces(i8* %add.ptr5)
  store i8* %call6, i8** %cp, align 8
  %tobool = icmp ne i8* %call6, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  %9 = load i8*, i8** %cp, align 8
  store i8* %9, i8** %name, align 8
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.12, %if.then
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %call8 = call zeroext i1 @notinname(i8 zeroext %11)
  br i1 %call8, label %land.end.11, label %land.rhs.9

land.rhs.9:                                       ; preds = %while.cond.7
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp = icmp ne i32 %conv, 0
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.9, %while.cond.7
  %14 = phi i1 [ false, %while.cond.7 ], [ %cmp, %land.rhs.9 ]
  br i1 %14, label %while.body.12, label %while.end

while.body.12:                                    ; preds = %land.end.11
  %15 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond.7

while.end:                                        ; preds = %land.end.11
  %16 = load i8*, i8** %name, align 8
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv13 = trunc i64 %sub.ptr.sub to i32
  %19 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %21 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %add = add nsw i64 %sub.ptr.sub16, 1
  %conv17 = trunc i64 %add to i32
  %22 = load i32, i32* @lineno, align 4
  %23 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %16, i32 %conv13, i1 zeroext false, i8* %19, i32 %conv17, i32 %22, i64 %23)
  br label %if.end.101

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %while.body
  %24 = load i8*, i8** %cp, align 8
  %call18 = call zeroext i1 @strneq(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), i64 4)
  br i1 %call18, label %land.lhs.true.20, label %if.else.60

land.lhs.true.20:                                 ; preds = %if.else
  %25 = load i8*, i8** %cp, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %25, i64 4
  %26 = load i8, i8* %arrayidx21, align 1
  %call22 = call zeroext i1 @notinname(i8 zeroext %26)
  br i1 %call22, label %land.lhs.true.24, label %if.else.60

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %27 = load i8*, i8** %cp, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %27, i64 5
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr25, i64 -1
  %call27 = call i8* @skip_spaces(i8* %add.ptr26)
  store i8* %call27, i8** %cp, align 8
  %tobool28 = icmp ne i8* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.else.60

if.then.29:                                       ; preds = %land.lhs.true.24
  %28 = load i8*, i8** %cp, align 8
  %29 = load i8, i8* %28, align 1
  %conv30 = sext i8 %29 to i32
  %cmp31 = icmp eq i32 %conv30, 40
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %if.then.29
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.38, %if.then.33
  %30 = load i8*, i8** %cp, align 8
  %31 = load i8, i8* %30, align 1
  %conv35 = sext i8 %31 to i32
  %cmp36 = icmp ne i32 %conv35, 41
  br i1 %cmp36, label %while.body.38, label %while.end.40

while.body.38:                                    ; preds = %while.cond.34
  %32 = load i8*, i8** %cp, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr39, i8** %cp, align 8
  br label %while.cond.34

while.end.40:                                     ; preds = %while.cond.34
  %33 = load i8*, i8** %cp, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %33, i64 1
  %call42 = call i8* @skip_spaces(i8* %add.ptr41)
  store i8* %call42, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %while.end.40, %if.then.29
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8, i8* %34, align 1
  %tobool43 = icmp ne i8 %35, 0
  br i1 %tobool43, label %if.then.44, label %if.end.59

if.then.44:                                       ; preds = %if.end
  %36 = load i8*, i8** %cp, align 8
  store i8* %36, i8** %name, align 8
  br label %while.cond.45

while.cond.45:                                    ; preds = %while.body.47, %if.then.44
  %37 = load i8*, i8** %cp, align 8
  %38 = load i8, i8* %37, align 1
  %call46 = call zeroext i1 @notinname(i8 zeroext %38)
  %lnot = xor i1 %call46, true
  br i1 %lnot, label %while.body.47, label %while.end.49

while.body.47:                                    ; preds = %while.cond.45
  %39 = load i8*, i8** %cp, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr48, i8** %cp, align 8
  br label %while.cond.45

while.end.49:                                     ; preds = %while.cond.45
  %40 = load i8*, i8** %name, align 8
  %41 = load i8*, i8** %cp, align 8
  %42 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast50 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast51 = ptrtoint i8* %42 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %conv53 = trunc i64 %sub.ptr.sub52 to i32
  %43 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %44 = load i8*, i8** %cp, align 8
  %45 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast54 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast55 = ptrtoint i8* %45 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %add57 = add nsw i64 %sub.ptr.sub56, 1
  %conv58 = trunc i64 %add57 to i32
  %46 = load i32, i32* @lineno, align 4
  %47 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %40, i32 %conv53, i1 zeroext true, i8* %43, i32 %conv58, i32 %46, i64 %47)
  br label %if.end.59

if.end.59:                                        ; preds = %while.end.49, %if.end
  br label %if.end.100

if.else.60:                                       ; preds = %land.lhs.true.24, %land.lhs.true.20, %if.else
  %48 = load i32, i32* @members, align 4
  %tobool61 = icmp ne i32 %48, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.99

land.lhs.true.62:                                 ; preds = %if.else.60
  %49 = load i8*, i8** %cp, align 8
  %call63 = call zeroext i1 @strneq(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), i64 4)
  br i1 %call63, label %land.lhs.true.65, label %if.end.99

land.lhs.true.65:                                 ; preds = %land.lhs.true.62
  %50 = load i8*, i8** %cp, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %50, i64 4
  %51 = load i8, i8* %arrayidx66, align 1
  %call67 = call zeroext i1 @notinname(i8 zeroext %51)
  br i1 %call67, label %land.lhs.true.69, label %if.end.99

land.lhs.true.69:                                 ; preds = %land.lhs.true.65
  %52 = load i8*, i8** %cp, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %52, i64 5
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr70, i64 -1
  %call72 = call i8* @skip_spaces(i8* %add.ptr71)
  store i8* %call72, i8** %cp, align 8
  %tobool73 = icmp ne i8* %call72, null
  br i1 %tobool73, label %if.then.74, label %if.end.99

if.then.74:                                       ; preds = %land.lhs.true.69
  %53 = load i8*, i8** %cp, align 8
  store i8* %53, i8** %name, align 8
  %54 = load i8*, i8** %cp, align 8
  %55 = load i8, i8* %54, align 1
  %conv75 = sext i8 %55 to i32
  %cmp76 = icmp eq i32 %conv75, 40
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.74
  br label %while.end.102

if.end.79:                                        ; preds = %if.then.74
  br label %while.cond.80

while.cond.80:                                    ; preds = %while.body.87, %if.end.79
  %56 = load i8*, i8** %cp, align 8
  %57 = load i8, i8* %56, align 1
  %call81 = call zeroext i1 @notinname(i8 zeroext %57)
  br i1 %call81, label %land.end.86, label %land.rhs.82

land.rhs.82:                                      ; preds = %while.cond.80
  %58 = load i8*, i8** %cp, align 8
  %59 = load i8, i8* %58, align 1
  %conv83 = sext i8 %59 to i32
  %cmp84 = icmp ne i32 %conv83, 0
  br label %land.end.86

land.end.86:                                      ; preds = %land.rhs.82, %while.cond.80
  %60 = phi i1 [ false, %while.cond.80 ], [ %cmp84, %land.rhs.82 ]
  br i1 %60, label %while.body.87, label %while.end.89

while.body.87:                                    ; preds = %land.end.86
  %61 = load i8*, i8** %cp, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr88, i8** %cp, align 8
  br label %while.cond.80

while.end.89:                                     ; preds = %land.end.86
  %62 = load i8*, i8** %name, align 8
  %63 = load i8*, i8** %cp, align 8
  %64 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast90 = ptrtoint i8* %63 to i64
  %sub.ptr.rhs.cast91 = ptrtoint i8* %64 to i64
  %sub.ptr.sub92 = sub i64 %sub.ptr.lhs.cast90, %sub.ptr.rhs.cast91
  %conv93 = trunc i64 %sub.ptr.sub92 to i32
  %65 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %66 = load i8*, i8** %cp, align 8
  %67 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast94 = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast95 = ptrtoint i8* %67 to i64
  %sub.ptr.sub96 = sub i64 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95
  %add97 = add nsw i64 %sub.ptr.sub96, 1
  %conv98 = trunc i64 %add97 to i32
  %68 = load i32, i32* @lineno, align 4
  %69 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %62, i32 %conv93, i1 zeroext false, i8* %65, i32 %conv98, i32 %68, i64 %69)
  br label %if.end.99

if.end.99:                                        ; preds = %while.end.89, %land.lhs.true.69, %land.lhs.true.65, %land.lhs.true.62, %if.else.60
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.59
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %while.end
  br label %while.cond

while.end.102:                                    ; preds = %if.then.78, %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @HTML_labels(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %getnext = alloca i8, align 1
  %skiptag = alloca i8, align 1
  %intag = alloca i8, align 1
  %inanchor = alloca i8, align 1
  %end = alloca i8*, align 8
  %quoted = alloca i8, align 1
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  store i8 0, i8* %getnext, align 1
  store i8 0, i8* %skiptag, align 1
  store i8 0, i8* %intag, align 1
  store i8 0, i8* %inanchor, align 1
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %for.end.201, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** @dbp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.202

while.body:                                       ; preds = %land.end
  br label %for.cond

for.cond:                                         ; preds = %if.end.200, %if.then.194, %if.then.169, %land.end.122, %if.end.90, %if.then.44, %if.then.12, %while.body
  %4 = load i8, i8* %skiptag, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.8, %if.then
  %5 = load i8*, i8** @dbp, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs.3, label %land.end.7

land.rhs.3:                                       ; preds = %while.cond.1
  %7 = load i8*, i8** @dbp, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 62
  br label %land.end.7

land.end.7:                                       ; preds = %land.rhs.3, %while.cond.1
  %9 = phi i1 [ false, %while.cond.1 ], [ %cmp5, %land.rhs.3 ]
  br i1 %9, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %land.end.7
  %10 = load i8*, i8** @dbp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** @dbp, align 8
  br label %while.cond.1

while.end:                                        ; preds = %land.end.7
  %11 = load i8*, i8** @dbp, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 62
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %while.end
  %13 = load i8*, i8** @dbp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %add.ptr, i8** @dbp, align 8
  store i8 0, i8* %skiptag, align 1
  br label %for.cond

if.end:                                           ; preds = %while.end
  br label %for.end.201

if.else:                                          ; preds = %for.cond
  %14 = load i8, i8* %intag, align 1
  %tobool13 = trunc i8 %14 to i1
  br i1 %tobool13, label %if.then.14, label %if.else.101

if.then.14:                                       ; preds = %if.else
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.33, %if.then.14
  %15 = load i8*, i8** @dbp, align 8
  %16 = load i8, i8* %15, align 1
  %conv16 = sext i8 %16 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %land.lhs.true, label %land.end.32

land.lhs.true:                                    ; preds = %while.cond.15
  %17 = load i8*, i8** @dbp, align 8
  %18 = load i8, i8* %17, align 1
  %conv19 = sext i8 %18 to i32
  %cmp20 = icmp ne i32 %conv19, 62
  br i1 %cmp20, label %land.lhs.true.22, label %land.end.32

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %19 = load i8*, i8** @dbp, align 8
  %20 = load i8, i8* %19, align 1
  %conv23 = sext i8 %20 to i32
  %call24 = call i32 @c_tolower(i32 %conv23)
  %cmp25 = icmp ne i32 %call24, 110
  br i1 %cmp25, label %land.rhs.27, label %land.end.32

land.rhs.27:                                      ; preds = %land.lhs.true.22
  %21 = load i8*, i8** @dbp, align 8
  %22 = load i8, i8* %21, align 1
  %conv28 = sext i8 %22 to i32
  %call29 = call i32 @c_tolower(i32 %conv28)
  %cmp30 = icmp ne i32 %call29, 105
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.27, %land.lhs.true.22, %land.lhs.true, %while.cond.15
  %23 = phi i1 [ false, %land.lhs.true.22 ], [ false, %land.lhs.true ], [ false, %while.cond.15 ], [ %cmp30, %land.rhs.27 ]
  br i1 %23, label %while.body.33, label %while.end.35

while.body.33:                                    ; preds = %land.end.32
  %24 = load i8*, i8** @dbp, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr34, i8** @dbp, align 8
  br label %while.cond.15

while.end.35:                                     ; preds = %land.end.32
  %25 = load i8*, i8** @dbp, align 8
  %26 = load i8, i8* %25, align 1
  %conv36 = sext i8 %26 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %while.end.35
  br label %for.end.201

if.end.40:                                        ; preds = %while.end.35
  %27 = load i8*, i8** @dbp, align 8
  %28 = load i8, i8* %27, align 1
  %conv41 = sext i8 %28 to i32
  %cmp42 = icmp eq i32 %conv41, 62
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.40
  %29 = load i8*, i8** @dbp, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %add.ptr45, i8** @dbp, align 8
  store i8 0, i8* %intag, align 1
  br label %for.cond

if.end.46:                                        ; preds = %if.end.40
  %30 = load i8, i8* %inanchor, align 1
  %tobool47 = trunc i8 %30 to i1
  br i1 %tobool47, label %land.lhs.true.49, label %lor.lhs.false

land.lhs.true.49:                                 ; preds = %if.end.46
  %31 = load i8*, i8** @dbp, align 8
  %call50 = call zeroext i1 @strncaseeq(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i64 5)
  br i1 %call50, label %land.lhs.true.52, label %lor.lhs.false

land.lhs.true.52:                                 ; preds = %land.lhs.true.49
  %32 = load i8*, i8** @dbp, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %32, i64 5
  store i8* %add.ptr53, i8** @dbp, align 8
  %tobool54 = icmp ne i8* %add.ptr53, null
  br i1 %tobool54, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.52, %land.lhs.true.49, %if.end.46
  %33 = load i8*, i8** @dbp, align 8
  %call55 = call zeroext i1 @strncaseeq(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.226, i32 0, i32 0), i64 3)
  br i1 %call55, label %land.lhs.true.57, label %if.end.99

land.lhs.true.57:                                 ; preds = %lor.lhs.false
  %34 = load i8*, i8** @dbp, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %34, i64 3
  store i8* %add.ptr58, i8** @dbp, align 8
  %tobool59 = icmp ne i8* %add.ptr58, null
  br i1 %tobool59, label %if.then.60, label %if.end.99

if.then.60:                                       ; preds = %land.lhs.true.57, %land.lhs.true.52
  %35 = load i8*, i8** @dbp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx, align 1
  %conv61 = sext i8 %36 to i32
  %cmp62 = icmp eq i32 %conv61, 34
  %frombool = zext i1 %cmp62 to i8
  store i8 %frombool, i8* %quoted, align 1
  %37 = load i8, i8* %quoted, align 1
  %tobool64 = trunc i8 %37 to i1
  br i1 %tobool64, label %if.then.65, label %if.else.77

if.then.65:                                       ; preds = %if.then.60
  %38 = load i8*, i8** @dbp, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr66, i8** @dbp, align 8
  store i8* %incdec.ptr66, i8** %end, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc, %if.then.65
  %39 = load i8*, i8** %end, align 8
  %40 = load i8, i8* %39, align 1
  %conv68 = sext i8 %40 to i32
  %cmp69 = icmp ne i32 %conv68, 0
  br i1 %cmp69, label %land.rhs.71, label %land.end.75

land.rhs.71:                                      ; preds = %for.cond.67
  %41 = load i8*, i8** %end, align 8
  %42 = load i8, i8* %41, align 1
  %conv72 = sext i8 %42 to i32
  %cmp73 = icmp ne i32 %conv72, 34
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.71, %for.cond.67
  %43 = phi i1 [ false, %for.cond.67 ], [ %cmp73, %land.rhs.71 ]
  br i1 %43, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.75
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i8*, i8** %end, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr76, i8** %end, align 8
  br label %for.cond.67

for.end:                                          ; preds = %land.end.75
  br label %if.end.90

if.else.77:                                       ; preds = %if.then.60
  %45 = load i8*, i8** @dbp, align 8
  store i8* %45, i8** %end, align 8
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.87, %if.else.77
  %46 = load i8*, i8** %end, align 8
  %47 = load i8, i8* %46, align 1
  %conv79 = sext i8 %47 to i32
  %cmp80 = icmp ne i32 %conv79, 0
  br i1 %cmp80, label %land.rhs.82, label %land.end.85

land.rhs.82:                                      ; preds = %for.cond.78
  %48 = load i8*, i8** %end, align 8
  %49 = load i8, i8* %48, align 1
  %call83 = call zeroext i1 @intoken(i8 zeroext %49)
  br label %land.end.85

land.end.85:                                      ; preds = %land.rhs.82, %for.cond.78
  %50 = phi i1 [ false, %for.cond.78 ], [ %call83, %land.rhs.82 ]
  br i1 %50, label %for.body.86, label %for.end.89

for.body.86:                                      ; preds = %land.end.85
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.86
  %51 = load i8*, i8** %end, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr88, i8** %end, align 8
  br label %for.cond.78

for.end.89:                                       ; preds = %land.end.85
  br label %if.end.90

if.end.90:                                        ; preds = %for.end.89, %for.end
  %52 = load i8*, i8** %end, align 8
  %53 = load i8*, i8** @dbp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv91 = trunc i64 %sub.ptr.sub to i32
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %conv91)
  %54 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %55 = load i8*, i8** @dbp, align 8
  %56 = load i8*, i8** %end, align 8
  %57 = load i8*, i8** @dbp, align 8
  %sub.ptr.lhs.cast92 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast93 = ptrtoint i8* %57 to i64
  %sub.ptr.sub94 = sub i64 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 %sub.ptr.sub94, i32 1, i1 false)
  %58 = load i8*, i8** %end, align 8
  %59 = load i8*, i8** @dbp, align 8
  %sub.ptr.lhs.cast95 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast96 = ptrtoint i8* %59 to i64
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %60 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %60, i64 %sub.ptr.sub97
  store i8 0, i8* %arrayidx98, align 1
  %61 = load i8*, i8** %end, align 8
  store i8* %61, i8** @dbp, align 8
  store i8 0, i8* %intag, align 1
  store i8 1, i8* %skiptag, align 1
  store i8 1, i8* %getnext, align 1
  br label %for.cond

if.end.99:                                        ; preds = %land.lhs.true.57, %lor.lhs.false
  %62 = load i8*, i8** @dbp, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %add.ptr100, i8** @dbp, align 8
  br label %if.end.199

if.else.101:                                      ; preds = %if.else
  %63 = load i8, i8* %getnext, align 1
  %tobool102 = trunc i8 %63 to i1
  br i1 %tobool102, label %if.then.103, label %if.else.143

if.then.103:                                      ; preds = %if.else.101
  %64 = load i8*, i8** @dbp, align 8
  %call104 = call i8* @skip_spaces(i8* %64)
  store i8* %call104, i8** @dbp, align 8
  %65 = load i8*, i8** @dbp, align 8
  %66 = load i8, i8* %65, align 1
  %conv105 = sext i8 %66 to i32
  %cmp106 = icmp eq i32 %conv105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.then.103
  br label %for.end.201

if.end.109:                                       ; preds = %if.then.103
  %67 = load i8*, i8** @dbp, align 8
  %68 = load i8, i8* %67, align 1
  %conv110 = sext i8 %68 to i32
  %cmp111 = icmp eq i32 %conv110, 60
  br i1 %cmp111, label %if.then.113, label %if.end.124

if.then.113:                                      ; preds = %if.end.109
  store i8 1, i8* %intag, align 1
  %69 = load i8*, i8** @dbp, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %70 to i32
  %call116 = call i32 @c_tolower(i32 %conv115)
  %cmp117 = icmp eq i32 %call116, 97
  br i1 %cmp117, label %land.rhs.119, label %land.end.122

land.rhs.119:                                     ; preds = %if.then.113
  %71 = load i8*, i8** @dbp, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %71, i64 2
  %72 = load i8, i8* %arrayidx120, align 1
  %call121 = call zeroext i1 @intoken(i8 zeroext %72)
  %lnot = xor i1 %call121, true
  br label %land.end.122

land.end.122:                                     ; preds = %land.rhs.119, %if.then.113
  %73 = phi i1 [ false, %if.then.113 ], [ %lnot, %land.rhs.119 ]
  %frombool123 = zext i1 %73 to i8
  store i8 %frombool123, i8* %inanchor, align 1
  br label %for.cond

if.end.124:                                       ; preds = %if.end.109
  %74 = load i8*, i8** @dbp, align 8
  %add.ptr125 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %add.ptr125, i8** %end, align 8
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.136, %if.end.124
  %75 = load i8*, i8** %end, align 8
  %76 = load i8, i8* %75, align 1
  %conv127 = sext i8 %76 to i32
  %cmp128 = icmp ne i32 %conv127, 0
  br i1 %cmp128, label %land.rhs.130, label %land.end.134

land.rhs.130:                                     ; preds = %for.cond.126
  %77 = load i8*, i8** %end, align 8
  %78 = load i8, i8* %77, align 1
  %conv131 = sext i8 %78 to i32
  %cmp132 = icmp ne i32 %conv131, 60
  br label %land.end.134

land.end.134:                                     ; preds = %land.rhs.130, %for.cond.126
  %79 = phi i1 [ false, %for.cond.126 ], [ %cmp132, %land.rhs.130 ]
  br i1 %79, label %for.body.135, label %for.end.138

for.body.135:                                     ; preds = %land.end.134
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.135
  %80 = load i8*, i8** %end, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr137, i8** %end, align 8
  br label %for.cond.126

for.end.138:                                      ; preds = %land.end.134
  %81 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 1), align 4
  %83 = load i8*, i8** @dbp, align 8
  %84 = load i8*, i8** %end, align 8
  %85 = load i8*, i8** @dbp, align 8
  %sub.ptr.lhs.cast139 = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast140 = ptrtoint i8* %85 to i64
  %sub.ptr.sub141 = sub i64 %sub.ptr.lhs.cast139, %sub.ptr.rhs.cast140
  %conv142 = trunc i64 %sub.ptr.sub141 to i32
  %86 = load i32, i32* @lineno, align 4
  %87 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %81, i32 %82, i1 zeroext true, i8* %83, i32 %conv142, i32 %86, i64 %87)
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 0)
  store i8 0, i8* %getnext, align 1
  br label %for.end.201

if.else.143:                                      ; preds = %if.else.101
  br label %while.cond.144

while.cond.144:                                   ; preds = %while.body.153, %if.else.143
  %88 = load i8*, i8** @dbp, align 8
  %89 = load i8, i8* %88, align 1
  %conv145 = sext i8 %89 to i32
  %cmp146 = icmp ne i32 %conv145, 0
  br i1 %cmp146, label %land.rhs.148, label %land.end.152

land.rhs.148:                                     ; preds = %while.cond.144
  %90 = load i8*, i8** @dbp, align 8
  %91 = load i8, i8* %90, align 1
  %conv149 = sext i8 %91 to i32
  %cmp150 = icmp ne i32 %conv149, 60
  br label %land.end.152

land.end.152:                                     ; preds = %land.rhs.148, %while.cond.144
  %92 = phi i1 [ false, %while.cond.144 ], [ %cmp150, %land.rhs.148 ]
  br i1 %92, label %while.body.153, label %while.end.155

while.body.153:                                   ; preds = %land.end.152
  %93 = load i8*, i8** @dbp, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr154, i8** @dbp, align 8
  br label %while.cond.144

while.end.155:                                    ; preds = %land.end.152
  %94 = load i8*, i8** @dbp, align 8
  %95 = load i8, i8* %94, align 1
  %conv156 = sext i8 %95 to i32
  %cmp157 = icmp eq i32 %conv156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %while.end.155
  br label %for.end.201

if.end.160:                                       ; preds = %while.end.155
  store i8 1, i8* %intag, align 1
  %96 = load i8*, i8** @dbp, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %97 to i32
  %call163 = call i32 @c_tolower(i32 %conv162)
  %cmp164 = icmp eq i32 %call163, 97
  br i1 %cmp164, label %land.lhs.true.166, label %if.else.170

land.lhs.true.166:                                ; preds = %if.end.160
  %98 = load i8*, i8** @dbp, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %98, i64 2
  %99 = load i8, i8* %arrayidx167, align 1
  %call168 = call zeroext i1 @intoken(i8 zeroext %99)
  br i1 %call168, label %if.else.170, label %if.then.169

if.then.169:                                      ; preds = %land.lhs.true.166
  store i8 1, i8* %inanchor, align 1
  br label %for.cond

if.else.170:                                      ; preds = %land.lhs.true.166, %if.end.160
  %100 = load i8*, i8** @dbp, align 8
  %call171 = call zeroext i1 @strncaseeq(i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i32 0, i32 0), i64 7)
  br i1 %call171, label %land.lhs.true.173, label %lor.lhs.false.176

land.lhs.true.173:                                ; preds = %if.else.170
  %101 = load i8*, i8** @dbp, align 8
  %add.ptr174 = getelementptr inbounds i8, i8* %101, i64 7
  store i8* %add.ptr174, i8** @dbp, align 8
  %tobool175 = icmp ne i8* %add.ptr174, null
  br i1 %tobool175, label %if.then.194, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %land.lhs.true.173, %if.else.170
  %102 = load i8*, i8** @dbp, align 8
  %call177 = call zeroext i1 @strncaseeq(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.228, i32 0, i32 0), i64 4)
  br i1 %call177, label %land.lhs.true.179, label %lor.lhs.false.182

land.lhs.true.179:                                ; preds = %lor.lhs.false.176
  %103 = load i8*, i8** @dbp, align 8
  %add.ptr180 = getelementptr inbounds i8, i8* %103, i64 4
  store i8* %add.ptr180, i8** @dbp, align 8
  %tobool181 = icmp ne i8* %add.ptr180, null
  br i1 %tobool181, label %if.then.194, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %land.lhs.true.179, %lor.lhs.false.176
  %104 = load i8*, i8** @dbp, align 8
  %call183 = call zeroext i1 @strncaseeq(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.229, i32 0, i32 0), i64 4)
  br i1 %call183, label %land.lhs.true.185, label %lor.lhs.false.188

land.lhs.true.185:                                ; preds = %lor.lhs.false.182
  %105 = load i8*, i8** @dbp, align 8
  %add.ptr186 = getelementptr inbounds i8, i8* %105, i64 4
  store i8* %add.ptr186, i8** @dbp, align 8
  %tobool187 = icmp ne i8* %add.ptr186, null
  br i1 %tobool187, label %if.then.194, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %land.lhs.true.185, %lor.lhs.false.182
  %106 = load i8*, i8** @dbp, align 8
  %call189 = call zeroext i1 @strncaseeq(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i64 4)
  br i1 %call189, label %land.lhs.true.191, label %if.end.195

land.lhs.true.191:                                ; preds = %lor.lhs.false.188
  %107 = load i8*, i8** @dbp, align 8
  %add.ptr192 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %add.ptr192, i8** @dbp, align 8
  %tobool193 = icmp ne i8* %add.ptr192, null
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %land.lhs.true.191, %land.lhs.true.185, %land.lhs.true.179, %land.lhs.true.173
  store i8 0, i8* %intag, align 1
  store i8 1, i8* %getnext, align 1
  br label %for.cond

if.end.195:                                       ; preds = %land.lhs.true.191, %lor.lhs.false.188
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195
  %108 = load i8*, i8** @dbp, align 8
  %add.ptr197 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %add.ptr197, i8** @dbp, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.196
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.99
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199
  br label %for.cond

for.end.201:                                      ; preds = %if.then.159, %for.end.138, %if.then.108, %if.then.39, %if.end
  br label %while.cond

while.end.202:                                    ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Cjava_entries(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @C_entries(i32 5, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Lisp_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %if.then.19, %if.then, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** @dbp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** @dbp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* @declarations, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.22, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %7 = load i8*, i8** @dbp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %add.ptr, i8** %p, align 8
  %8 = load i8*, i8** %p, align 8
  %call3 = call zeroext i1 @strneq(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.233, i32 0, i32 0), i64 6)
  br i1 %call3, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.2
  %9 = load i8*, i8** %p, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 6
  %10 = load i8, i8* %arrayidx5, align 1
  %call6 = call zeroext i1 @notinname(i8 zeroext %10)
  br i1 %call6, label %land.lhs.true.8, label %if.end.21

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %11 = load i8*, i8** %p, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %11, i64 7
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 -1
  %call11 = call i8* @skip_spaces(i8* %add.ptr10)
  store i8* %call11, i8** %p, align 8
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %land.lhs.true.8
  %12 = load i8*, i8** %p, align 8
  %call14 = call i8* @skip_name(i8* %12)
  store i8* %call14, i8** %p, align 8
  %13 = load i8*, i8** %p, align 8
  %call15 = call i8* @skip_spaces(i8* %13)
  store i8* %call15, i8** %p, align 8
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp eq i32 %conv16, 41
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.13
  br label %while.cond

if.end.20:                                        ; preds = %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true.8, %land.lhs.true, %if.then.2
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %16 = load i8*, i8** @dbp, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %16, i64 1
  %call24 = call zeroext i1 @strneq(i8* %add.ptr23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.234, i32 0, i32 0), i64 3)
  br i1 %call24, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %17 = load i8*, i8** @dbp, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %17, i64 1
  %call27 = call zeroext i1 @strneq(i8* %add.ptr26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.235, i32 0, i32 0), i64 3)
  br i1 %call27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.22
  %18 = load i8*, i8** @dbp, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %18, i64 3
  store i8* %add.ptr30, i8** @dbp, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %lor.lhs.false
  %19 = load i8*, i8** @dbp, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %19, i64 1
  %call33 = call zeroext i1 @strneq(i8* %add.ptr32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i64 3)
  br i1 %call33, label %if.then.39, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.31
  %20 = load i8*, i8** @dbp, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %20, i64 1
  %call37 = call zeroext i1 @strneq(i8* %add.ptr36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.236, i32 0, i32 0), i64 3)
  br i1 %call37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %lor.lhs.false.35, %if.end.31
  %21 = load i8*, i8** @dbp, align 8
  %call40 = call i8* @skip_non_spaces(i8* %21)
  store i8* %call40, i8** @dbp, align 8
  %22 = load i8*, i8** @dbp, align 8
  %call41 = call i8* @skip_spaces(i8* %22)
  store i8* %call41, i8** @dbp, align 8
  call void @L_getit()
  br label %if.end.69

if.else:                                          ; preds = %lor.lhs.false.35
  br label %do.body

do.body:                                          ; preds = %land.end.47, %if.else
  %23 = load i8*, i8** @dbp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** @dbp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %24 = load i8*, i8** @dbp, align 8
  %25 = load i8, i8* %24, align 1
  %call42 = call zeroext i1 @notinname(i8 zeroext %25)
  br i1 %call42, label %land.end.47, label %land.rhs.43

land.rhs.43:                                      ; preds = %do.cond
  %26 = load i8*, i8** @dbp, align 8
  %27 = load i8, i8* %26, align 1
  %conv44 = sext i8 %27 to i32
  %cmp45 = icmp ne i32 %conv44, 58
  br label %land.end.47

land.end.47:                                      ; preds = %land.rhs.43, %do.cond
  %28 = phi i1 [ false, %do.cond ], [ %cmp45, %land.rhs.43 ]
  br i1 %28, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.47
  %29 = load i8*, i8** @dbp, align 8
  %30 = load i8, i8* %29, align 1
  %conv48 = sext i8 %30 to i32
  %cmp49 = icmp eq i32 %conv48, 58
  br i1 %cmp49, label %if.then.51, label %if.end.68

if.then.51:                                       ; preds = %do.end
  br label %do.body.52

do.body.52:                                       ; preds = %do.cond.54, %if.then.51
  %31 = load i8*, i8** @dbp, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr53, i8** @dbp, align 8
  br label %do.cond.54

do.cond.54:                                       ; preds = %do.body.52
  %32 = load i8*, i8** @dbp, align 8
  %33 = load i8, i8* %32, align 1
  %conv55 = sext i8 %33 to i32
  %cmp56 = icmp eq i32 %conv55, 58
  br i1 %cmp56, label %do.body.52, label %do.end.58

do.end.58:                                        ; preds = %do.cond.54
  %34 = load i8*, i8** @dbp, align 8
  %call59 = call zeroext i1 @strneq(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i64 3)
  br i1 %call59, label %if.then.64, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %do.end.58
  %35 = load i8*, i8** @dbp, align 8
  %call62 = call zeroext i1 @strneq(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.236, i32 0, i32 0), i64 3)
  br i1 %call62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %lor.lhs.false.61, %do.end.58
  %36 = load i8*, i8** @dbp, align 8
  %call65 = call i8* @skip_non_spaces(i8* %36)
  store i8* %call65, i8** @dbp, align 8
  %37 = load i8*, i8** @dbp, align 8
  %call66 = call i8* @skip_spaces(i8* %37)
  store i8* %call66, i8** @dbp, align 8
  call void @L_getit()
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %lor.lhs.false.61
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %do.end
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.39
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Lua_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %bp = alloca i8*, align 8
  %tag_name = alloca i8*, align 8
  %tp_dot = alloca i8*, align 8
  %tp_colon = alloca i8*, align 8
  %p = alloca i8*, align 8
  %len_add = alloca i32, align 4
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.then, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %bp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %bp, align 8
  %call1 = call i8* @skip_spaces(i8* %4)
  store i8* %call1, i8** %bp, align 8
  %5 = load i8*, i8** %bp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 102
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load i8*, i8** %bp, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 108
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

if.end:                                           ; preds = %land.lhs.true, %while.body
  %9 = load i8*, i8** %bp, align 8
  %call7 = call zeroext i1 @strneq(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.246, i32 0, i32 0), i64 5)
  br i1 %call7, label %land.lhs.true.9, label %land.end.16

land.lhs.true.9:                                  ; preds = %if.end
  %10 = load i8*, i8** %bp, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx10, align 1
  %call11 = call zeroext i1 @notinname(i8 zeroext %11)
  br i1 %call11, label %land.rhs.13, label %land.end.16

land.rhs.13:                                      ; preds = %land.lhs.true.9
  %12 = load i8*, i8** %bp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 6
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %call15 = call i8* @skip_spaces(i8* %add.ptr14)
  store i8* %call15, i8** %bp, align 8
  %tobool = icmp ne i8* %call15, null
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.13, %land.lhs.true.9, %if.end
  %13 = phi i1 [ false, %land.lhs.true.9 ], [ false, %if.end ], [ %tobool, %land.rhs.13 ]
  %land.ext = zext i1 %13 to i32
  %14 = load i8*, i8** %bp, align 8
  %call17 = call zeroext i1 @strneq(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i64 8)
  br i1 %call17, label %land.lhs.true.19, label %if.end.39

land.lhs.true.19:                                 ; preds = %land.end.16
  %15 = load i8*, i8** %bp, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %15, i64 8
  %16 = load i8, i8* %arrayidx20, align 1
  %call21 = call zeroext i1 @notinname(i8 zeroext %16)
  br i1 %call21, label %land.lhs.true.23, label %if.end.39

land.lhs.true.23:                                 ; preds = %land.lhs.true.19
  %17 = load i8*, i8** %bp, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %17, i64 9
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr24, i64 -1
  %call26 = call i8* @skip_spaces(i8* %add.ptr25)
  store i8* %call26, i8** %bp, align 8
  %tobool27 = icmp ne i8* %call26, null
  br i1 %tobool27, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %land.lhs.true.23
  %18 = load i8*, i8** %bp, align 8
  call void @get_tag(i8* %18, i8** %tag_name)
  %19 = load i8*, i8** %tag_name, align 8
  %call29 = call i8* @strrchr(i8* %19, i32 46) #9
  store i8* %call29, i8** %tp_dot, align 8
  %20 = load i8*, i8** %tag_name, align 8
  %call30 = call i8* @strrchr(i8* %20, i32 58) #9
  store i8* %call30, i8** %tp_colon, align 8
  %21 = load i8*, i8** %tp_dot, align 8
  %tobool31 = icmp ne i8* %21, null
  br i1 %tobool31, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.28
  %22 = load i8*, i8** %tp_colon, align 8
  %tobool32 = icmp ne i8* %22, null
  br i1 %tobool32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.28
  %23 = load i8*, i8** %tp_dot, align 8
  %24 = load i8*, i8** %tp_colon, align 8
  %cmp34 = icmp ugt i8* %23, %24
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.33
  %25 = load i8*, i8** %tp_dot, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.33
  %26 = load i8*, i8** %tp_colon, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %25, %cond.true ], [ %26, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %27 = load i8*, i8** %p, align 8
  %28 = load i8*, i8** %tag_name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv36 = trunc i64 %add to i32
  store i32 %conv36, i32* %len_add, align 4
  %29 = load i8*, i8** %bp, align 8
  %30 = load i32, i32* %len_add, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  call void @get_tag(i8* %add.ptr37, i8** null)
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end, %lor.lhs.false
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.23, %land.lhs.true.19, %land.end.16
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Makefile_targets(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %bp = alloca i8*, align 8
  %namestart = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.43, %if.then, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %bp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.44

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %bp, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i8*, i8** %bp, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 35
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.cond

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.17, %if.end
  %8 = load i8*, i8** %bp, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %land.lhs.true, label %land.end.16

land.lhs.true:                                    ; preds = %while.cond.5
  %10 = load i8*, i8** %bp, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp ne i32 %conv9, 61
  br i1 %cmp10, label %land.rhs.12, label %land.end.16

land.rhs.12:                                      ; preds = %land.lhs.true
  %12 = load i8*, i8** %bp, align 8
  %13 = load i8, i8* %12, align 1
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp ne i32 %conv13, 58
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.12, %land.lhs.true, %while.cond.5
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.5 ], [ %cmp14, %land.rhs.12 ]
  br i1 %14, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %land.end.16
  %15 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  br label %while.cond.5

while.end:                                        ; preds = %land.end.16
  %16 = load i8*, i8** %bp, align 8
  %17 = load i8, i8* %16, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 58
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %while.end
  %18 = load i32, i32* @globals, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.lhs.true.22, label %if.end.43

land.lhs.true.22:                                 ; preds = %lor.lhs.false.21
  %19 = load i8*, i8** %bp, align 8
  %20 = load i8, i8* %19, align 1
  %conv23 = sext i8 %20 to i32
  %cmp24 = icmp eq i32 %conv23, 61
  br i1 %cmp24, label %if.then.26, label %if.end.43

if.then.26:                                       ; preds = %land.lhs.true.22, %while.end
  %21 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %call27 = call i8* @skip_spaces(i8* %21)
  store i8* %call27, i8** %namestart, align 8
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end.35, %if.then.26
  %22 = load i8*, i8** %bp, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr29, i8** %bp, align 8
  %23 = load i8*, i8** %namestart, align 8
  %cmp30 = icmp ugt i8* %incdec.ptr29, %23
  br i1 %cmp30, label %while.body.32, label %while.end.36

while.body.32:                                    ; preds = %while.cond.28
  %24 = load i8*, i8** %bp, align 8
  %25 = load i8, i8* %24, align 1
  %call33 = call zeroext i1 @notinname(i8 zeroext %25)
  br i1 %call33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %while.body.32
  br label %while.end.36

if.end.35:                                        ; preds = %while.body.32
  br label %while.cond.28

while.end.36:                                     ; preds = %if.then.34, %while.cond.28
  %26 = load i8*, i8** %namestart, align 8
  %27 = load i8*, i8** %bp, align 8
  %28 = load i8*, i8** %namestart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv37 = trunc i64 %add to i32
  %29 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %30 = load i8*, i8** %bp, align 8
  %31 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast38 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %31 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %add41 = add nsw i64 %sub.ptr.sub40, 2
  %conv42 = trunc i64 %add41 to i32
  %32 = load i32, i32* @lineno, align 4
  %33 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %26, i32 %conv37, i1 zeroext true, i8* %29, i32 %conv42, i32 %32, i64 %33)
  br label %if.end.43

if.end.43:                                        ; preds = %while.end.36, %land.lhs.true.22, %lor.lhs.false.21
  br label %while.cond

while.end.44:                                     ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plain_C_entries(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @C_entries(i32 0, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Pascal_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %tline = alloca %struct.linebuffer, align 8
  %save_lcno = alloca i64, align 8
  %save_lineno = alloca i32, align 4
  %namelen = alloca i32, align 4
  %taglen = alloca i32, align 4
  %c = alloca i8, align 1
  %name = alloca i8*, align 8
  %incomment = alloca i8, align 1
  %inquote = alloca i8, align 1
  %get_tagname = alloca i8, align 1
  %found_tag = alloca i8, align 1
  %inparms = alloca i8, align 1
  %verify_tag = alloca i8, align 1
  %cp = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  store i32 0, i32* %taglen, align 4
  store i32 0, i32* %namelen, align 4
  store i32 0, i32* %save_lineno, align 4
  store i64 0, i64* %save_lcno, align 8
  store i8* null, i8** %name, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %0, i8** @dbp, align 8
  %1 = load i8*, i8** @dbp, align 8
  store i8 0, i8* %1, align 1
  call void @linebuffer_init(%struct.linebuffer* %tline)
  store i8 0, i8* %inquote, align 1
  store i8 0, i8* %incomment, align 1
  store i8 0, i8* %found_tag, align 1
  store i8 0, i8* %get_tagname, align 1
  store i8 0, i8* %inparms, align 1
  store i8 0, i8* %verify_tag, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.152, %if.end.149, %if.end.145, %for.end, %if.then.114, %if.then.106, %if.then.80, %if.end.64, %if.end.57, %if.end.53, %sw.bb.42, %sw.bb, %if.end.39, %if.end.31, %if.then.5, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %2)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** @dbp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** @dbp, align 8
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %c, align 1
  %5 = load i8, i8* %c, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %while.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %6)
  %7 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %7, i8** @dbp, align 8
  %8 = load i8*, i8** @dbp, align 8
  %9 = load i8, i8* %8, align 1
  %conv2 = sext i8 %9 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  br label %while.cond

if.end:                                           ; preds = %if.then
  %10 = load i8, i8* %found_tag, align 1
  %tobool = trunc i8 %10 to i1
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %11 = load i8, i8* %verify_tag, align 1
  %tobool7 = trunc i8 %11 to i1
  br i1 %tobool7, label %if.end.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %12 = load i8, i8* %get_tagname, align 1
  %tobool9 = trunc i8 %12 to i1
  br i1 %tobool9, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false
  %13 = load i8*, i8** @dbp, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr12, i8** @dbp, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %c, align 1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %lor.lhs.false, %land.lhs.true
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %while.body
  %15 = load i8, i8* %incomment, align 1
  %tobool15 = trunc i8 %15 to i1
  br i1 %tobool15, label %if.then.16, label %if.else.32

if.then.16:                                       ; preds = %if.end.14
  %16 = load i8, i8* %c, align 1
  %conv17 = sext i8 %16 to i32
  %cmp18 = icmp eq i32 %conv17, 125
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.16
  store i8 0, i8* %incomment, align 1
  br label %if.end.31

if.else:                                          ; preds = %if.then.16
  %17 = load i8, i8* %c, align 1
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp eq i32 %conv21, 42
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.30

land.lhs.true.24:                                 ; preds = %if.else
  %18 = load i8*, i8** @dbp, align 8
  %19 = load i8, i8* %18, align 1
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp eq i32 %conv25, 41
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %land.lhs.true.24
  %20 = load i8*, i8** @dbp, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr29, i8** @dbp, align 8
  store i8 0, i8* %incomment, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %land.lhs.true.24, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.20
  br label %while.cond

if.else.32:                                       ; preds = %if.end.14
  %21 = load i8, i8* %inquote, align 1
  %tobool33 = trunc i8 %21 to i1
  br i1 %tobool33, label %if.then.34, label %if.else.40

if.then.34:                                       ; preds = %if.else.32
  %22 = load i8, i8* %c, align 1
  %conv35 = sext i8 %22 to i32
  %cmp36 = icmp eq i32 %conv35, 39
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.34
  store i8 0, i8* %inquote, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.then.34
  br label %while.cond

if.else.40:                                       ; preds = %if.else.32
  %23 = load i8, i8* %c, align 1
  %conv41 = sext i8 %23 to i32
  switch i32 %conv41, label %sw.epilog [
    i32 39, label %sw.bb
    i32 123, label %sw.bb.42
    i32 40, label %sw.bb.43
    i32 41, label %sw.bb.54
    i32 59, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %if.else.40
  store i8 1, i8* %inquote, align 1
  br label %while.cond

sw.bb.42:                                         ; preds = %if.else.40
  store i8 1, i8* %incomment, align 1
  br label %while.cond

sw.bb.43:                                         ; preds = %if.else.40
  %24 = load i8*, i8** @dbp, align 8
  %25 = load i8, i8* %24, align 1
  %conv44 = sext i8 %25 to i32
  %cmp45 = icmp eq i32 %conv44, 42
  br i1 %cmp45, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %sw.bb.43
  store i8 1, i8* %incomment, align 1
  %26 = load i8*, i8** @dbp, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr48, i8** @dbp, align 8
  br label %if.end.53

if.else.49:                                       ; preds = %sw.bb.43
  %27 = load i8, i8* %found_tag, align 1
  %tobool50 = trunc i8 %27 to i1
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.else.49
  store i8 1, i8* %inparms, align 1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.else.49
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.47
  br label %while.cond

sw.bb.54:                                         ; preds = %if.else.40
  %28 = load i8, i8* %inparms, align 1
  %tobool55 = trunc i8 %28 to i1
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %sw.bb.54
  store i8 0, i8* %inparms, align 1
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %sw.bb.54
  br label %while.cond

sw.bb.58:                                         ; preds = %if.else.40
  %29 = load i8, i8* %found_tag, align 1
  %tobool59 = trunc i8 %29 to i1
  br i1 %tobool59, label %land.lhs.true.61, label %if.end.64

land.lhs.true.61:                                 ; preds = %sw.bb.58
  %30 = load i8, i8* %inparms, align 1
  %tobool62 = trunc i8 %30 to i1
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.61
  store i8 1, i8* %verify_tag, align 1
  br label %sw.epilog

if.end.64:                                        ; preds = %land.lhs.true.61, %sw.bb.58
  br label %while.cond

sw.epilog:                                        ; preds = %if.else.40, %if.then.63
  br label %if.end.65

if.end.65:                                        ; preds = %sw.epilog
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  %31 = load i8, i8* %found_tag, align 1
  %tobool67 = trunc i8 %31 to i1
  br i1 %tobool67, label %land.lhs.true.69, label %if.end.108

land.lhs.true.69:                                 ; preds = %if.end.66
  %32 = load i8, i8* %verify_tag, align 1
  %tobool70 = trunc i8 %32 to i1
  br i1 %tobool70, label %land.lhs.true.72, label %if.end.108

land.lhs.true.72:                                 ; preds = %land.lhs.true.69
  %33 = load i8*, i8** @dbp, align 8
  %34 = load i8, i8* %33, align 1
  %conv73 = sext i8 %34 to i32
  %cmp74 = icmp ne i32 %conv73, 32
  br i1 %cmp74, label %if.then.76, label %if.end.108

if.then.76:                                       ; preds = %land.lhs.true.72
  %35 = load i8*, i8** @dbp, align 8
  %36 = load i8, i8* %35, align 1
  %conv77 = sext i8 %36 to i32
  %cmp78 = icmp eq i32 %conv77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.76
  br label %while.cond

if.end.81:                                        ; preds = %if.then.76
  %37 = load i8*, i8** @dbp, align 8
  %38 = load i8, i8* %37, align 1
  %conv82 = sext i8 %38 to i32
  %call83 = call i32 @c_tolower(i32 %conv82)
  %cmp84 = icmp eq i32 %call83, 101
  br i1 %cmp84, label %if.then.86, label %if.else.90

if.then.86:                                       ; preds = %if.end.81
  %call87 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.159, i32 0, i32 0))
  br i1 %call87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.then.86
  store i8 0, i8* %found_tag, align 1
  store i8 0, i8* %verify_tag, align 1
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.then.86
  br label %if.end.100

if.else.90:                                       ; preds = %if.end.81
  %39 = load i8*, i8** @dbp, align 8
  %40 = load i8, i8* %39, align 1
  %conv91 = sext i8 %40 to i32
  %call92 = call i32 @c_tolower(i32 %conv91)
  %cmp93 = icmp eq i32 %call92, 102
  br i1 %cmp93, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %if.else.90
  %call96 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.254, i32 0, i32 0))
  br i1 %call96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.then.95
  store i8 0, i8* %found_tag, align 1
  store i8 0, i8* %verify_tag, align 1
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.then.95
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.else.90
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.89
  %41 = load i8, i8* %found_tag, align 1
  %tobool101 = trunc i8 %41 to i1
  br i1 %tobool101, label %land.lhs.true.103, label %if.end.107

land.lhs.true.103:                                ; preds = %if.end.100
  %42 = load i8, i8* %verify_tag, align 1
  %tobool104 = trunc i8 %42 to i1
  br i1 %tobool104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %land.lhs.true.103
  store i8 0, i8* %found_tag, align 1
  store i8 0, i8* %verify_tag, align 1
  %43 = load i8*, i8** %name, align 8
  %44 = load i32, i32* %namelen, align 4
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tline, i32 0, i32 2
  %45 = load i8*, i8** %buffer, align 8
  %46 = load i32, i32* %taglen, align 4
  %47 = load i32, i32* %save_lineno, align 4
  %48 = load i64, i64* %save_lcno, align 8
  call void @make_tag(i8* %43, i32 %44, i1 zeroext true, i8* %45, i32 %46, i32 %47, i64 %48)
  br label %while.cond

if.end.107:                                       ; preds = %land.lhs.true.103, %if.end.100
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %land.lhs.true.72, %land.lhs.true.69, %if.end.66
  %49 = load i8, i8* %get_tagname, align 1
  %tobool109 = trunc i8 %49 to i1
  br i1 %tobool109, label %if.then.110, label %if.else.133

if.then.110:                                      ; preds = %if.end.108
  %50 = load i8*, i8** @dbp, align 8
  %51 = load i8, i8* %50, align 1
  %conv111 = sext i8 %51 to i32
  %cmp112 = icmp eq i32 %conv111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.110
  br label %while.cond

if.end.115:                                       ; preds = %if.then.110
  %52 = load i8*, i8** @dbp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %add.ptr, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.115
  %53 = load i8*, i8** %cp, align 8
  %54 = load i8, i8* %53, align 1
  %conv116 = sext i8 %54 to i32
  %cmp117 = icmp ne i32 %conv116, 0
  br i1 %cmp117, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %55 = load i8*, i8** %cp, align 8
  %56 = load i8, i8* %55, align 1
  %call119 = call zeroext i1 @endtoken(i8 zeroext %56)
  %lnot = xor i1 %call119, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %57 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %57, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i8*, i8** %cp, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr120, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %59 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 1), align 4
  call void @linebuffer_setlen(%struct.linebuffer* %tline, i32 %59)
  %buffer121 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tline, i32 0, i32 2
  %60 = load i8*, i8** %buffer121, align 8
  %61 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %call122 = call i8* @strcpy(i8* %60, i8* %61) #6
  %62 = load i32, i32* @lineno, align 4
  store i32 %62, i32* %save_lineno, align 4
  %63 = load i64, i64* @linecharno, align 8
  store i64 %63, i64* %save_lcno, align 8
  %buffer123 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tline, i32 0, i32 2
  %64 = load i8*, i8** %buffer123, align 8
  %65 = load i8*, i8** @dbp, align 8
  %66 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr124 = getelementptr inbounds i8, i8* %64, i64 %sub.ptr.sub
  store i8* %add.ptr124, i8** %name, align 8
  %67 = load i8*, i8** %cp, align 8
  %68 = load i8*, i8** @dbp, align 8
  %sub.ptr.lhs.cast125 = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast126 = ptrtoint i8* %68 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  %conv128 = trunc i64 %sub.ptr.sub127 to i32
  store i32 %conv128, i32* %namelen, align 4
  %69 = load i8*, i8** %cp, align 8
  %70 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast129 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast130 = ptrtoint i8* %70 to i64
  %sub.ptr.sub131 = sub i64 %sub.ptr.lhs.cast129, %sub.ptr.rhs.cast130
  %add = add nsw i64 %sub.ptr.sub131, 1
  %conv132 = trunc i64 %add to i32
  store i32 %conv132, i32* %taglen, align 4
  %71 = load i8*, i8** %cp, align 8
  store i8* %71, i8** @dbp, align 8
  store i8 0, i8* %get_tagname, align 1
  store i8 1, i8* %found_tag, align 1
  br label %while.cond

if.else.133:                                      ; preds = %if.end.108
  %72 = load i8, i8* %incomment, align 1
  %tobool134 = trunc i8 %72 to i1
  br i1 %tobool134, label %if.end.151, label %land.lhs.true.135

land.lhs.true.135:                                ; preds = %if.else.133
  %73 = load i8, i8* %inquote, align 1
  %tobool136 = trunc i8 %73 to i1
  br i1 %tobool136, label %if.end.151, label %land.lhs.true.137

land.lhs.true.137:                                ; preds = %land.lhs.true.135
  %74 = load i8, i8* %found_tag, align 1
  %tobool138 = trunc i8 %74 to i1
  br i1 %tobool138, label %if.end.151, label %if.then.139

if.then.139:                                      ; preds = %land.lhs.true.137
  %75 = load i8, i8* %c, align 1
  %conv140 = sext i8 %75 to i32
  %call141 = call i32 @c_tolower(i32 %conv140)
  switch i32 %call141, label %sw.epilog.150 [
    i32 112, label %sw.bb.142
    i32 102, label %sw.bb.146
  ]

sw.bb.142:                                        ; preds = %if.then.139
  %call143 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.255, i32 0, i32 0))
  br i1 %call143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %sw.bb.142
  store i8 1, i8* %get_tagname, align 1
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %sw.bb.142
  br label %while.cond

sw.bb.146:                                        ; preds = %if.then.139
  %call147 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.256, i32 0, i32 0))
  br i1 %call147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %sw.bb.146
  store i8 1, i8* %get_tagname, align 1
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %sw.bb.146
  br label %while.cond

sw.epilog.150:                                    ; preds = %if.then.139
  br label %if.end.151

if.end.151:                                       ; preds = %sw.epilog.150, %land.lhs.true.137, %land.lhs.true.135, %if.else.133
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %buffer153 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tline, i32 0, i32 2
  %76 = load i8*, i8** %buffer153, align 8
  call void @free(i8* %76) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Perl_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %package = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %pos = alloca i8*, align 8
  %sp = alloca i8*, align 8
  %q = alloca i8*, align 8
  %qpos = alloca i8*, align 8
  %savechar = alloca i8, align 1
  %name = alloca i8*, align 8
  %qual = alloca i8, align 1
  %varstart = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %call = call i8* @savestr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.259, i32 0, i32 0))
  store i8* %call, i8** %package, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.199, %if.else.184, %if.then.21, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call1 = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.200

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %cp, align 8
  %call2 = call i8* @skip_spaces(i8* %4)
  store i8* %call2, i8** %cp, align 8
  %5 = load i8*, i8** %cp, align 8
  %call3 = call zeroext i1 @strneq(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i64 7)
  br i1 %call3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 7
  %7 = load i8, i8* %arrayidx, align 1
  %call4 = call zeroext i1 @notinname(i8 zeroext %7)
  br i1 %call4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 8
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %call7 = call i8* @skip_spaces(i8* %add.ptr6)
  store i8* %call7, i8** %cp, align 8
  %tobool = icmp ne i8* %call7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.5
  %9 = load i8*, i8** %package, align 8
  call void @free(i8* %9) #6
  %10 = load i8*, i8** %cp, align 8
  call void @get_tag(i8* %10, i8** %package)
  br label %if.end.199

if.else:                                          ; preds = %land.lhs.true.5, %land.lhs.true, %while.body
  %11 = load i8*, i8** %cp, align 8
  %call8 = call zeroext i1 @strneq(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.260, i32 0, i32 0), i64 3)
  br i1 %call8, label %land.lhs.true.9, label %if.else.79

land.lhs.true.9:                                  ; preds = %if.else
  %12 = load i8*, i8** %cp, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx10, align 1
  %call11 = call zeroext i1 @notinname(i8 zeroext %13)
  br i1 %call11, label %land.lhs.true.12, label %if.else.79

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %14 = load i8*, i8** %cp, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %14, i64 4
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr13, i64 -1
  %call15 = call i8* @skip_spaces(i8* %add.ptr14)
  store i8* %call15, i8** %cp, align 8
  %tobool16 = icmp ne i8* %call15, null
  br i1 %tobool16, label %if.then.17, label %if.else.79

if.then.17:                                       ; preds = %land.lhs.true.12
  br label %subr

subr:                                             ; preds = %if.end.109, %if.then.17
  %15 = load i8*, i8** %cp, align 8
  store i8* %15, i8** %sp, align 8
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.20, %subr
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %call19 = call zeroext i1 @notinname(i8 zeroext %17)
  %lnot = xor i1 %call19, true
  br i1 %lnot, label %while.body.20, label %while.end

while.body.20:                                    ; preds = %while.cond.18
  %18 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond.18

while.end:                                        ; preds = %while.cond.18
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8*, i8** %sp, align 8
  %cmp = icmp eq i8* %19, %20
  br i1 %cmp, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %while.end
  br label %while.cond

if.end:                                           ; preds = %while.end
  %21 = load i8*, i8** %sp, align 8
  %call22 = call i8* @strchr(i8* %21, i32 58) #9
  store i8* %call22, i8** %pos, align 8
  %22 = load i8*, i8** %pos, align 8
  %tobool23 = icmp ne i8* %22, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.56

land.lhs.true.24:                                 ; preds = %if.end
  %23 = load i8*, i8** %pos, align 8
  %24 = load i8*, i8** %cp, align 8
  %cmp25 = icmp ult i8* %23, %24
  br i1 %cmp25, label %land.lhs.true.26, label %if.else.56

land.lhs.true.26:                                 ; preds = %land.lhs.true.24
  %25 = load i8*, i8** %pos, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx27, align 1
  %conv = sext i8 %26 to i32
  %cmp28 = icmp eq i32 %conv, 58
  br i1 %cmp28, label %if.then.30, label %if.else.56

if.then.30:                                       ; preds = %land.lhs.true.26
  %27 = load i32, i32* @class_qualify, align 4
  %tobool31 = icmp ne i32 %27, 0
  br i1 %tobool31, label %if.end.50, label %if.then.32

if.then.32:                                       ; preds = %if.then.30
  %28 = load i8*, i8** %pos, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %add.ptr33, i8** %q, align 8
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.47, %if.then.32
  %29 = load i8*, i8** %q, align 8
  %call35 = call i8* @strchr(i8* %29, i32 58) #9
  store i8* %call35, i8** %qpos, align 8
  %cmp36 = icmp ne i8* %call35, null
  br i1 %cmp36, label %land.lhs.true.38, label %land.end.46

land.lhs.true.38:                                 ; preds = %while.cond.34
  %30 = load i8*, i8** %qpos, align 8
  %31 = load i8*, i8** %cp, align 8
  %cmp39 = icmp ult i8* %30, %31
  br i1 %cmp39, label %land.rhs.41, label %land.end.46

land.rhs.41:                                      ; preds = %land.lhs.true.38
  %32 = load i8*, i8** %qpos, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %33 to i32
  %cmp44 = icmp eq i32 %conv43, 58
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.41, %land.lhs.true.38, %while.cond.34
  %34 = phi i1 [ false, %land.lhs.true.38 ], [ false, %while.cond.34 ], [ %cmp44, %land.rhs.41 ]
  br i1 %34, label %while.body.47, label %while.end.49

while.body.47:                                    ; preds = %land.end.46
  %35 = load i8*, i8** %qpos, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %add.ptr48, i8** %q, align 8
  br label %while.cond.34

while.end.49:                                     ; preds = %land.end.46
  %36 = load i8*, i8** %q, align 8
  store i8* %36, i8** %sp, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %while.end.49, %if.then.30
  %37 = load i8*, i8** %sp, align 8
  %38 = load i8*, i8** %cp, align 8
  %39 = load i8*, i8** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv51 = trunc i64 %sub.ptr.sub to i32
  %40 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %41 = load i8*, i8** %cp, align 8
  %42 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast52 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast53 = ptrtoint i8* %42 to i64
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  %add = add nsw i64 %sub.ptr.sub54, 1
  %conv55 = trunc i64 %add to i32
  %43 = load i32, i32* @lineno, align 4
  %44 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %37, i32 %conv51, i1 zeroext true, i8* %40, i32 %conv55, i32 %43, i64 %44)
  br label %if.end.78

if.else.56:                                       ; preds = %land.lhs.true.26, %land.lhs.true.24, %if.end
  %45 = load i32, i32* @class_qualify, align 4
  %tobool57 = icmp ne i32 %45, 0
  br i1 %tobool57, label %if.then.58, label %if.else.67

if.then.58:                                       ; preds = %if.else.56
  %46 = load i8*, i8** %cp, align 8
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %savechar, align 1
  %48 = load i8*, i8** %cp, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %package, align 8
  %50 = load i8*, i8** %sp, align 8
  %call59 = call i8* @concat(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8* %50)
  store i8* %call59, i8** %name, align 8
  %51 = load i8, i8* %savechar, align 1
  %52 = load i8*, i8** %cp, align 8
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %name, align 8
  %54 = load i8*, i8** %name, align 8
  %call60 = call i64 @strlen(i8* %54) #9
  %conv61 = trunc i64 %call60 to i32
  %55 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %56 = load i8*, i8** %cp, align 8
  %57 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast62 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast63 = ptrtoint i8* %57 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %add65 = add nsw i64 %sub.ptr.sub64, 1
  %conv66 = trunc i64 %add65 to i32
  %58 = load i32, i32* @lineno, align 4
  %59 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %53, i32 %conv61, i1 zeroext true, i8* %55, i32 %conv66, i32 %58, i64 %59)
  %60 = load i8*, i8** %name, align 8
  call void @free(i8* %60) #6
  br label %if.end.77

if.else.67:                                       ; preds = %if.else.56
  %61 = load i8*, i8** %sp, align 8
  %62 = load i8*, i8** %cp, align 8
  %63 = load i8*, i8** %sp, align 8
  %sub.ptr.lhs.cast68 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast69 = ptrtoint i8* %63 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %conv71 = trunc i64 %sub.ptr.sub70 to i32
  %64 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %65 = load i8*, i8** %cp, align 8
  %66 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast72 = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast73 = ptrtoint i8* %66 to i64
  %sub.ptr.sub74 = sub i64 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast73
  %add75 = add nsw i64 %sub.ptr.sub74, 1
  %conv76 = trunc i64 %add75 to i32
  %67 = load i32, i32* @lineno, align 4
  %68 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %61, i32 %conv71, i1 zeroext true, i8* %64, i32 %conv76, i32 %67, i64 %68)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.67, %if.then.58
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.50
  br label %if.end.198

if.else.79:                                       ; preds = %land.lhs.true.12, %land.lhs.true.9, %if.else
  %69 = load i8*, i8** %cp, align 8
  %call80 = call zeroext i1 @strneq(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.261, i32 0, i32 0), i64 12)
  br i1 %call80, label %land.lhs.true.82, label %lor.lhs.false

land.lhs.true.82:                                 ; preds = %if.else.79
  %70 = load i8*, i8** %cp, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %70, i64 12
  %71 = load i8, i8* %arrayidx83, align 1
  %call84 = call zeroext i1 @notinname(i8 zeroext %71)
  br i1 %call84, label %land.lhs.true.86, label %lor.lhs.false

land.lhs.true.86:                                 ; preds = %land.lhs.true.82
  %72 = load i8*, i8** %cp, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %72, i64 13
  %add.ptr88 = getelementptr inbounds i8, i8* %add.ptr87, i64 -1
  %call89 = call i8* @skip_spaces(i8* %add.ptr88)
  store i8* %call89, i8** %cp, align 8
  %tobool90 = icmp ne i8* %call89, null
  br i1 %tobool90, label %if.then.102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.86, %land.lhs.true.82, %if.else.79
  %73 = load i8*, i8** %cp, align 8
  %call91 = call zeroext i1 @strneq(i8* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i32 0, i32 0), i64 19)
  br i1 %call91, label %land.lhs.true.93, label %if.else.110

land.lhs.true.93:                                 ; preds = %lor.lhs.false
  %74 = load i8*, i8** %cp, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %74, i64 19
  %75 = load i8, i8* %arrayidx94, align 1
  %call95 = call zeroext i1 @notinname(i8 zeroext %75)
  br i1 %call95, label %land.lhs.true.97, label %if.else.110

land.lhs.true.97:                                 ; preds = %land.lhs.true.93
  %76 = load i8*, i8** %cp, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %76, i64 20
  %add.ptr99 = getelementptr inbounds i8, i8* %add.ptr98, i64 -1
  %call100 = call i8* @skip_spaces(i8* %add.ptr99)
  store i8* %call100, i8** %cp, align 8
  %tobool101 = icmp ne i8* %call100, null
  br i1 %tobool101, label %if.then.102, label %if.else.110

if.then.102:                                      ; preds = %land.lhs.true.97, %land.lhs.true.86
  %77 = load i8*, i8** %cp, align 8
  %78 = load i8, i8* %77, align 1
  %conv103 = sext i8 %78 to i32
  %cmp104 = icmp eq i32 %conv103, 123
  br i1 %cmp104, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %if.then.102
  %79 = load i8*, i8** %cp, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %79, i64 1
  %call108 = call i8* @skip_spaces(i8* %add.ptr107)
  store i8* %call108, i8** %cp, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %if.then.102
  br label %subr

if.else.110:                                      ; preds = %land.lhs.true.97, %land.lhs.true.93, %lor.lhs.false
  %80 = load i32, i32* @globals, align 4
  %tobool111 = icmp ne i32 %80, 0
  br i1 %tobool111, label %if.then.112, label %if.end.196

if.then.112:                                      ; preds = %if.else.110
  %81 = load i8*, i8** %cp, align 8
  %call113 = call zeroext i1 @strneq(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.263, i32 0, i32 0), i64 2)
  br i1 %call113, label %land.lhs.true.115, label %lor.rhs

land.lhs.true.115:                                ; preds = %if.then.112
  %82 = load i8*, i8** %cp, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %82, i64 2
  %83 = load i8, i8* %arrayidx116, align 1
  %call117 = call zeroext i1 @notinname(i8 zeroext %83)
  br i1 %call117, label %land.lhs.true.119, label %lor.rhs

land.lhs.true.119:                                ; preds = %land.lhs.true.115
  %84 = load i8*, i8** %cp, align 8
  %add.ptr120 = getelementptr inbounds i8, i8* %84, i64 3
  %add.ptr121 = getelementptr inbounds i8, i8* %add.ptr120, i64 -1
  %call122 = call i8* @skip_spaces(i8* %add.ptr121)
  store i8* %call122, i8** %cp, align 8
  %tobool123 = icmp ne i8* %call122, null
  br i1 %tobool123, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.119, %land.lhs.true.115, %if.then.112
  %85 = load i8*, i8** %cp, align 8
  %call124 = call zeroext i1 @strneq(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.246, i32 0, i32 0), i64 5)
  br i1 %call124, label %land.lhs.true.126, label %land.end.135

land.lhs.true.126:                                ; preds = %lor.rhs
  %86 = load i8*, i8** %cp, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %86, i64 5
  %87 = load i8, i8* %arrayidx127, align 1
  %call128 = call zeroext i1 @notinname(i8 zeroext %87)
  br i1 %call128, label %land.rhs.130, label %land.end.135

land.rhs.130:                                     ; preds = %land.lhs.true.126
  %88 = load i8*, i8** %cp, align 8
  %add.ptr131 = getelementptr inbounds i8, i8* %88, i64 6
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr131, i64 -1
  %call133 = call i8* @skip_spaces(i8* %add.ptr132)
  store i8* %call133, i8** %cp, align 8
  %tobool134 = icmp ne i8* %call133, null
  br label %land.end.135

land.end.135:                                     ; preds = %land.rhs.130, %land.lhs.true.126, %lor.rhs
  %89 = phi i1 [ false, %land.lhs.true.126 ], [ false, %lor.rhs ], [ %tobool134, %land.rhs.130 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.135, %land.lhs.true.119
  %90 = phi i1 [ true, %land.lhs.true.119 ], [ %89, %land.end.135 ]
  %frombool = zext i1 %90 to i8
  store i8 %frombool, i8* %qual, align 1
  %91 = load i8*, i8** %cp, align 8
  store i8* %91, i8** %varstart, align 8
  %92 = load i8, i8* %qual, align 1
  %tobool136 = trunc i8 %92 to i1
  br i1 %tobool136, label %land.lhs.true.138, label %if.else.161

land.lhs.true.138:                                ; preds = %lor.end
  %93 = load i8*, i8** %cp, align 8
  %94 = load i8, i8* %93, align 1
  %conv139 = sext i8 %94 to i32
  %cmp140 = icmp eq i32 %conv139, 36
  br i1 %cmp140, label %if.then.150, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %land.lhs.true.138
  %95 = load i8*, i8** %cp, align 8
  %96 = load i8, i8* %95, align 1
  %conv143 = sext i8 %96 to i32
  %cmp144 = icmp eq i32 %conv143, 64
  br i1 %cmp144, label %if.then.150, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.142
  %97 = load i8*, i8** %cp, align 8
  %98 = load i8, i8* %97, align 1
  %conv147 = sext i8 %98 to i32
  %cmp148 = icmp eq i32 %conv147, 37
  br i1 %cmp148, label %if.then.150, label %if.else.161

if.then.150:                                      ; preds = %lor.lhs.false.146, %lor.lhs.false.142, %land.lhs.true.138
  %99 = load i8*, i8** %varstart, align 8
  %add.ptr151 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %add.ptr151, i8** %varstart, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end.160, %if.then.150
  %100 = load i8*, i8** %cp, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr152, i8** %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %101 = load i8*, i8** %cp, align 8
  %102 = load i8, i8* %101, align 1
  %conv153 = sext i8 %102 to i32
  %call154 = call zeroext i1 @c_isalnum(i32 %conv153)
  br i1 %call154, label %lor.end.160, label %lor.rhs.156

lor.rhs.156:                                      ; preds = %do.cond
  %103 = load i8*, i8** %cp, align 8
  %104 = load i8, i8* %103, align 1
  %conv157 = sext i8 %104 to i32
  %cmp158 = icmp eq i32 %conv157, 95
  br label %lor.end.160

lor.end.160:                                      ; preds = %lor.rhs.156, %do.cond
  %105 = phi i1 [ true, %do.cond ], [ %cmp158, %lor.rhs.156 ]
  br i1 %105, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end.160
  br label %if.end.186

if.else.161:                                      ; preds = %lor.lhs.false.146, %lor.end
  %106 = load i8, i8* %qual, align 1
  %tobool162 = trunc i8 %106 to i1
  br i1 %tobool162, label %if.then.163, label %if.else.184

if.then.163:                                      ; preds = %if.else.161
  br label %while.cond.164

while.cond.164:                                   ; preds = %while.body.181, %if.then.163
  %107 = load i8*, i8** %cp, align 8
  %108 = load i8, i8* %107, align 1
  %conv165 = sext i8 %108 to i32
  %cmp166 = icmp ne i32 %conv165, 0
  br i1 %cmp166, label %land.lhs.true.168, label %land.end.180

land.lhs.true.168:                                ; preds = %while.cond.164
  %109 = load i8*, i8** %cp, align 8
  %110 = load i8, i8* %109, align 1
  %conv169 = sext i8 %110 to i32
  %cmp170 = icmp ne i32 %conv169, 59
  br i1 %cmp170, label %land.lhs.true.172, label %land.end.180

land.lhs.true.172:                                ; preds = %land.lhs.true.168
  %111 = load i8*, i8** %cp, align 8
  %112 = load i8, i8* %111, align 1
  %conv173 = sext i8 %112 to i32
  %cmp174 = icmp ne i32 %conv173, 61
  br i1 %cmp174, label %land.rhs.176, label %land.end.180

land.rhs.176:                                     ; preds = %land.lhs.true.172
  %113 = load i8*, i8** %cp, align 8
  %114 = load i8, i8* %113, align 1
  %conv177 = sext i8 %114 to i32
  %cmp178 = icmp ne i32 %conv177, 41
  br label %land.end.180

land.end.180:                                     ; preds = %land.rhs.176, %land.lhs.true.172, %land.lhs.true.168, %while.cond.164
  %115 = phi i1 [ false, %land.lhs.true.172 ], [ false, %land.lhs.true.168 ], [ false, %while.cond.164 ], [ %cmp178, %land.rhs.176 ]
  br i1 %115, label %while.body.181, label %while.end.183

while.body.181:                                   ; preds = %land.end.180
  %116 = load i8*, i8** %cp, align 8
  %incdec.ptr182 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr182, i8** %cp, align 8
  br label %while.cond.164

while.end.183:                                    ; preds = %land.end.180
  br label %if.end.185

if.else.184:                                      ; preds = %if.else.161
  br label %while.cond

if.end.185:                                       ; preds = %while.end.183
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %do.end
  %117 = load i8*, i8** %varstart, align 8
  %118 = load i8*, i8** %cp, align 8
  %119 = load i8*, i8** %varstart, align 8
  %sub.ptr.lhs.cast187 = ptrtoint i8* %118 to i64
  %sub.ptr.rhs.cast188 = ptrtoint i8* %119 to i64
  %sub.ptr.sub189 = sub i64 %sub.ptr.lhs.cast187, %sub.ptr.rhs.cast188
  %conv190 = trunc i64 %sub.ptr.sub189 to i32
  %120 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %121 = load i8*, i8** %cp, align 8
  %122 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast191 = ptrtoint i8* %121 to i64
  %sub.ptr.rhs.cast192 = ptrtoint i8* %122 to i64
  %sub.ptr.sub193 = sub i64 %sub.ptr.lhs.cast191, %sub.ptr.rhs.cast192
  %add194 = add nsw i64 %sub.ptr.sub193, 1
  %conv195 = trunc i64 %add194 to i32
  %123 = load i32, i32* @lineno, align 4
  %124 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %117, i32 %conv190, i1 zeroext false, i8* %120, i32 %conv195, i32 %123, i64 %124)
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.186, %if.else.110
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.78
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.then
  br label %while.cond

while.end.200:                                    ; preds = %land.end
  %125 = load i8*, i8** %package, align 8
  call void @free(i8* %125) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %name = alloca i8*, align 8
  %search_identifier = alloca i8, align 1
  %quote = alloca i8, align 1
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  store i8 0, i8* %search_identifier, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.169, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.170

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %cp, align 8
  %call1 = call i8* @skip_spaces(i8* %4)
  store i8* %call1, i8** %cp, align 8
  %5 = load i8*, i8** %cp, align 8
  store i8* %5, i8** %name, align 8
  %6 = load i8, i8* %search_identifier, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.5, %if.then
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %call4 = call zeroext i1 @notinname(i8 zeroext %10)
  %lnot = xor i1 %call4, true
  br i1 %lnot, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.3
  %11 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %12 = load i8*, i8** %name, align 8
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  %15 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast7 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %17 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %add = add nsw i64 %sub.ptr.sub9, 1
  %conv10 = trunc i64 %add to i32
  %18 = load i32, i32* @lineno, align 4
  %19 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %12, i32 %conv6, i1 zeroext true, i8* %15, i32 %conv10, i32 %18, i64 %19)
  store i8 0, i8* %search_identifier, align 1
  br label %if.end.169

if.else:                                          ; preds = %land.lhs.true, %while.body
  %20 = load i8*, i8** %cp, align 8
  %call11 = call zeroext i1 @strneq(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i64 8)
  br i1 %call11, label %land.lhs.true.13, label %if.else.48

land.lhs.true.13:                                 ; preds = %if.else
  %21 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 8
  %22 = load i8, i8* %arrayidx, align 1
  %call14 = call zeroext i1 @notinname(i8 zeroext %22)
  br i1 %call14, label %land.lhs.true.16, label %if.else.48

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %23 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 9
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %call18 = call i8* @skip_spaces(i8* %add.ptr17)
  store i8* %call18, i8** %cp, align 8
  %tobool19 = icmp ne i8* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.else.48

if.then.20:                                       ; preds = %land.lhs.true.16
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8, i8* %24, align 1
  %conv21 = sext i8 %25 to i32
  %cmp22 = icmp eq i32 %conv21, 38
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.then.20
  %26 = load i8*, i8** %cp, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %26, i64 1
  %call26 = call i8* @skip_spaces(i8* %add.ptr25)
  store i8* %call26, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then.20
  %27 = load i8*, i8** %cp, align 8
  %28 = load i8, i8* %27, align 1
  %conv27 = sext i8 %28 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.46

if.then.30:                                       ; preds = %if.end
  %29 = load i8*, i8** %cp, align 8
  store i8* %29, i8** %name, align 8
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.34, %if.then.30
  %30 = load i8*, i8** %cp, align 8
  %31 = load i8, i8* %30, align 1
  %call32 = call zeroext i1 @notinname(i8 zeroext %31)
  %lnot33 = xor i1 %call32, true
  br i1 %lnot33, label %while.body.34, label %while.end.36

while.body.34:                                    ; preds = %while.cond.31
  %32 = load i8*, i8** %cp, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr35, i8** %cp, align 8
  br label %while.cond.31

while.end.36:                                     ; preds = %while.cond.31
  %33 = load i8*, i8** %name, align 8
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast37 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %35 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %conv40 = trunc i64 %sub.ptr.sub39 to i32
  %36 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %37 = load i8*, i8** %cp, align 8
  %38 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast41 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast42 = ptrtoint i8* %38 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %add44 = add nsw i64 %sub.ptr.sub43, 1
  %conv45 = trunc i64 %add44 to i32
  %39 = load i32, i32* @lineno, align 4
  %40 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %33, i32 %conv40, i1 zeroext true, i8* %36, i32 %conv45, i32 %39, i64 %40)
  br label %if.end.47

if.else.46:                                       ; preds = %if.end
  store i8 1, i8* %search_identifier, align 1
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %while.end.36
  br label %if.end.168

if.else.48:                                       ; preds = %land.lhs.true.16, %land.lhs.true.13, %if.else
  %41 = load i8*, i8** %cp, align 8
  %call49 = call zeroext i1 @strneq(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i64 5)
  br i1 %call49, label %land.lhs.true.51, label %if.else.88

land.lhs.true.51:                                 ; preds = %if.else.48
  %42 = load i8*, i8** %cp, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %42, i64 5
  %43 = load i8, i8* %arrayidx52, align 1
  %call53 = call zeroext i1 @notinname(i8 zeroext %43)
  br i1 %call53, label %land.lhs.true.55, label %if.else.88

land.lhs.true.55:                                 ; preds = %land.lhs.true.51
  %44 = load i8*, i8** %cp, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %44, i64 6
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr56, i64 -1
  %call58 = call i8* @skip_spaces(i8* %add.ptr57)
  store i8* %call58, i8** %cp, align 8
  %tobool59 = icmp ne i8* %call58, null
  br i1 %tobool59, label %if.then.60, label %if.else.88

if.then.60:                                       ; preds = %land.lhs.true.55
  %45 = load i8*, i8** %cp, align 8
  %46 = load i8, i8* %45, align 1
  %conv61 = sext i8 %46 to i32
  %cmp62 = icmp ne i32 %conv61, 0
  br i1 %cmp62, label %if.then.64, label %if.else.86

if.then.64:                                       ; preds = %if.then.60
  %47 = load i8*, i8** %cp, align 8
  store i8* %47, i8** %name, align 8
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.74, %if.then.64
  %48 = load i8*, i8** %cp, align 8
  %49 = load i8, i8* %48, align 1
  %conv66 = sext i8 %49 to i32
  %cmp67 = icmp ne i32 %conv66, 0
  br i1 %cmp67, label %land.rhs.69, label %land.end.73

land.rhs.69:                                      ; preds = %while.cond.65
  %50 = load i8*, i8** %cp, align 8
  %51 = load i8, i8* %50, align 1
  %conv70 = sext i8 %51 to i32
  %call71 = call zeroext i1 @c_isspace(i32 %conv70)
  %lnot72 = xor i1 %call71, true
  br label %land.end.73

land.end.73:                                      ; preds = %land.rhs.69, %while.cond.65
  %52 = phi i1 [ false, %while.cond.65 ], [ %lnot72, %land.rhs.69 ]
  br i1 %52, label %while.body.74, label %while.end.76

while.body.74:                                    ; preds = %land.end.73
  %53 = load i8*, i8** %cp, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr75, i8** %cp, align 8
  br label %while.cond.65

while.end.76:                                     ; preds = %land.end.73
  %54 = load i8*, i8** %name, align 8
  %55 = load i8*, i8** %cp, align 8
  %56 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast77 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast78 = ptrtoint i8* %56 to i64
  %sub.ptr.sub79 = sub i64 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78
  %conv80 = trunc i64 %sub.ptr.sub79 to i32
  %57 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %58 = load i8*, i8** %cp, align 8
  %59 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast81 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast82 = ptrtoint i8* %59 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %add84 = add nsw i64 %sub.ptr.sub83, 1
  %conv85 = trunc i64 %add84 to i32
  %60 = load i32, i32* @lineno, align 4
  %61 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %54, i32 %conv80, i1 zeroext false, i8* %57, i32 %conv85, i32 %60, i64 %61)
  br label %if.end.87

if.else.86:                                       ; preds = %if.then.60
  store i8 1, i8* %search_identifier, align 1
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.86, %while.end.76
  br label %if.end.167

if.else.88:                                       ; preds = %land.lhs.true.55, %land.lhs.true.51, %if.else.48
  %62 = load i8*, i8** %cp, align 8
  %call89 = call zeroext i1 @strneq(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i64 6)
  br i1 %call89, label %land.lhs.true.91, label %if.else.131

land.lhs.true.91:                                 ; preds = %if.else.88
  %63 = load i8*, i8** %cp, align 8
  %add.ptr92 = getelementptr inbounds i8, i8* %63, i64 6
  %call93 = call i8* @skip_spaces(i8* %add.ptr92)
  store i8* %call93, i8** %cp, align 8
  %tobool94 = icmp ne i8* %call93, null
  br i1 %tobool94, label %land.lhs.true.95, label %if.else.131

land.lhs.true.95:                                 ; preds = %land.lhs.true.91
  %64 = load i8*, i8** %cp, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr96, i8** %cp, align 8
  %65 = load i8, i8* %64, align 1
  %conv97 = sext i8 %65 to i32
  %cmp98 = icmp eq i32 %conv97, 40
  br i1 %cmp98, label %land.lhs.true.100, label %if.else.131

land.lhs.true.100:                                ; preds = %land.lhs.true.95
  %66 = load i8*, i8** %cp, align 8
  %67 = load i8, i8* %66, align 1
  %conv101 = sext i8 %67 to i32
  %cmp102 = icmp eq i32 %conv101, 34
  br i1 %cmp102, label %if.then.107, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.100
  %68 = load i8*, i8** %cp, align 8
  %69 = load i8, i8* %68, align 1
  %conv104 = sext i8 %69 to i32
  %cmp105 = icmp eq i32 %conv104, 39
  br i1 %cmp105, label %if.then.107, label %if.else.131

if.then.107:                                      ; preds = %lor.lhs.false, %land.lhs.true.100
  %70 = load i8*, i8** %cp, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr108, i8** %cp, align 8
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %quote, align 1
  %72 = load i8*, i8** %cp, align 8
  store i8* %72, i8** %name, align 8
  br label %while.cond.109

while.cond.109:                                   ; preds = %while.body.119, %if.then.107
  %73 = load i8*, i8** %cp, align 8
  %74 = load i8, i8* %73, align 1
  %conv110 = sext i8 %74 to i32
  %75 = load i8, i8* %quote, align 1
  %conv111 = sext i8 %75 to i32
  %cmp112 = icmp ne i32 %conv110, %conv111
  br i1 %cmp112, label %land.rhs.114, label %land.end.118

land.rhs.114:                                     ; preds = %while.cond.109
  %76 = load i8*, i8** %cp, align 8
  %77 = load i8, i8* %76, align 1
  %conv115 = sext i8 %77 to i32
  %cmp116 = icmp ne i32 %conv115, 0
  br label %land.end.118

land.end.118:                                     ; preds = %land.rhs.114, %while.cond.109
  %78 = phi i1 [ false, %while.cond.109 ], [ %cmp116, %land.rhs.114 ]
  br i1 %78, label %while.body.119, label %while.end.121

while.body.119:                                   ; preds = %land.end.118
  %79 = load i8*, i8** %cp, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr120, i8** %cp, align 8
  br label %while.cond.109

while.end.121:                                    ; preds = %land.end.118
  %80 = load i8*, i8** %name, align 8
  %81 = load i8*, i8** %cp, align 8
  %82 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast122 = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast123 = ptrtoint i8* %82 to i64
  %sub.ptr.sub124 = sub i64 %sub.ptr.lhs.cast122, %sub.ptr.rhs.cast123
  %conv125 = trunc i64 %sub.ptr.sub124 to i32
  %83 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %84 = load i8*, i8** %cp, align 8
  %85 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast126 = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast127 = ptrtoint i8* %85 to i64
  %sub.ptr.sub128 = sub i64 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %add129 = add nsw i64 %sub.ptr.sub128, 1
  %conv130 = trunc i64 %add129 to i32
  %86 = load i32, i32* @lineno, align 4
  %87 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %80, i32 %conv125, i1 zeroext false, i8* %83, i32 %conv130, i32 %86, i64 %87)
  br label %if.end.166

if.else.131:                                      ; preds = %lor.lhs.false, %land.lhs.true.95, %land.lhs.true.91, %if.else.88
  %88 = load i32, i32* @members, align 4
  %tobool132 = icmp ne i32 %88, 0
  br i1 %tobool132, label %land.lhs.true.133, label %if.end.165

land.lhs.true.133:                                ; preds = %if.else.131
  %89 = load i8*, i8** %cp, align 8
  %call134 = call zeroext i1 @strneq(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.267, i32 0, i32 0), i64 3)
  br i1 %call134, label %land.lhs.true.136, label %if.end.165

land.lhs.true.136:                                ; preds = %land.lhs.true.133
  %90 = load i8*, i8** %cp, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %90, i64 3
  %91 = load i8, i8* %arrayidx137, align 1
  %call138 = call zeroext i1 @notinname(i8 zeroext %91)
  br i1 %call138, label %land.lhs.true.140, label %if.end.165

land.lhs.true.140:                                ; preds = %land.lhs.true.136
  %92 = load i8*, i8** %cp, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %92, i64 4
  %add.ptr142 = getelementptr inbounds i8, i8* %add.ptr141, i64 -1
  %call143 = call i8* @skip_spaces(i8* %add.ptr142)
  store i8* %call143, i8** %cp, align 8
  %tobool144 = icmp ne i8* %call143, null
  br i1 %tobool144, label %land.lhs.true.145, label %if.end.165

land.lhs.true.145:                                ; preds = %land.lhs.true.140
  %93 = load i8*, i8** %cp, align 8
  %94 = load i8, i8* %93, align 1
  %conv146 = sext i8 %94 to i32
  %cmp147 = icmp eq i32 %conv146, 36
  br i1 %cmp147, label %if.then.149, label %if.end.165

if.then.149:                                      ; preds = %land.lhs.true.145
  %95 = load i8*, i8** %cp, align 8
  store i8* %95, i8** %name, align 8
  br label %while.cond.150

while.cond.150:                                   ; preds = %while.body.153, %if.then.149
  %96 = load i8*, i8** %cp, align 8
  %97 = load i8, i8* %96, align 1
  %call151 = call zeroext i1 @notinname(i8 zeroext %97)
  %lnot152 = xor i1 %call151, true
  br i1 %lnot152, label %while.body.153, label %while.end.155

while.body.153:                                   ; preds = %while.cond.150
  %98 = load i8*, i8** %cp, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr154, i8** %cp, align 8
  br label %while.cond.150

while.end.155:                                    ; preds = %while.cond.150
  %99 = load i8*, i8** %name, align 8
  %100 = load i8*, i8** %cp, align 8
  %101 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast156 = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast157 = ptrtoint i8* %101 to i64
  %sub.ptr.sub158 = sub i64 %sub.ptr.lhs.cast156, %sub.ptr.rhs.cast157
  %conv159 = trunc i64 %sub.ptr.sub158 to i32
  %102 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %103 = load i8*, i8** %cp, align 8
  %104 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast160 = ptrtoint i8* %103 to i64
  %sub.ptr.rhs.cast161 = ptrtoint i8* %104 to i64
  %sub.ptr.sub162 = sub i64 %sub.ptr.lhs.cast160, %sub.ptr.rhs.cast161
  %add163 = add nsw i64 %sub.ptr.sub162, 1
  %conv164 = trunc i64 %add163 to i32
  %105 = load i32, i32* @lineno, align 4
  %106 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %99, i32 %conv159, i1 zeroext false, i8* %102, i32 %conv164, i32 %105, i64 %106)
  br label %if.end.165

if.end.165:                                       ; preds = %while.end.155, %land.lhs.true.145, %land.lhs.true.140, %land.lhs.true.136, %land.lhs.true.133, %if.else.131
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %while.end.121
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.87
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.47
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %while.end
  br label %while.cond

while.end.170:                                    ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %bp = alloca i8*, align 8
  %ep = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %bp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %bp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** %bp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %ep, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i8*, i8** %ep, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %land.lhs.true, label %land.end.12

land.lhs.true:                                    ; preds = %for.cond
  %9 = load i8*, i8** %ep, align 8
  %10 = load i8, i8* %9, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp ne i32 %conv5, 32
  br i1 %cmp6, label %land.rhs.8, label %land.end.12

land.rhs.8:                                       ; preds = %land.lhs.true
  %11 = load i8*, i8** %ep, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv9, 123
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.8, %land.lhs.true, %for.cond
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp10, %land.rhs.8 ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i8*, i8** %ep, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %ep, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.12
  %15 = load i8*, i8** %bp, align 8
  %16 = load i8*, i8** %ep, align 8
  %17 = load i8*, i8** %bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv13 = trunc i64 %sub.ptr.sub to i32
  %18 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %19 = load i8*, i8** %ep, align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %20 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %add = add nsw i64 %sub.ptr.sub16, 1
  %conv17 = trunc i64 %add to i32
  %21 = load i32, i32* @lineno, align 4
  %22 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %15, i32 %conv13, i1 zeroext true, i8* %18, i32 %conv17, i32 %21, i64 %22)
  br label %if.end.29

if.else:                                          ; preds = %while.body
  %23 = load i8*, i8** %bp, align 8
  %call18 = call zeroext i1 @strneq(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.270, i32 0, i32 0), i64 8)
  br i1 %call18, label %land.lhs.true.20, label %if.end

land.lhs.true.20:                                 ; preds = %if.else
  %24 = load i8*, i8** %bp, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 8
  %25 = load i8, i8* %arrayidx21, align 1
  %call22 = call zeroext i1 @notinname(i8 zeroext %25)
  br i1 %call22, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %26 = load i8*, i8** %bp, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %26, i64 9
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr25, i64 -1
  %call27 = call i8* @skip_spaces(i8* %add.ptr26)
  store i8* %call27, i8** %bp, align 8
  %tobool = icmp ne i8* %call27, null
  br i1 %tobool, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.24
  %27 = load i8*, i8** %bp, align 8
  call void @get_tag(i8* %27, i8** null)
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true.24, %land.lhs.true.20, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %for.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Prolog_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %last = alloca i8*, align 8
  %len = alloca i64, align 8
  %allocated = alloca i64, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  store i64 0, i64* %allocated, align 8
  store i64 0, i64* %len, align 8
  store i8* null, i8** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.then.5, %if.then, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.cond

if.else:                                          ; preds = %while.body
  %6 = load i8*, i8** %cp, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %call4 = call zeroext i1 @c_isspace(i32 %conv3)
  br i1 %call4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  br label %while.cond

if.else.6:                                        ; preds = %if.else
  %8 = load i8*, i8** %cp, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 47
  br i1 %cmp9, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else.6
  %10 = load i8*, i8** %cp, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 42
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @prolog_skip_comment(%struct.linebuffer* @lb, %struct._IO_FILE* %12)
  br label %if.end.37

if.else.16:                                       ; preds = %land.lhs.true, %if.else.6
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8*, i8** %last, align 8
  %call17 = call i64 @prolog_pr(i8* %13, i8* %14)
  store i64 %call17, i64* %len, align 8
  %cmp18 = icmp ugt i64 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.36

if.then.20:                                       ; preds = %if.else.16
  %15 = load i8*, i8** %last, align 8
  %cmp21 = icmp eq i8* %15, null
  br i1 %cmp21, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.then.20
  %16 = load i64, i64* %len, align 8
  %add = add i64 %16, 1
  %mul = mul i64 %add, 1
  %call24 = call i8* @xmalloc(i64 %mul)
  store i8* %call24, i8** %last, align 8
  br label %if.end.33

if.else.25:                                       ; preds = %if.then.20
  %17 = load i64, i64* %len, align 8
  %add26 = add i64 %17, 1
  %18 = load i64, i64* %allocated, align 8
  %cmp27 = icmp ugt i64 %add26, %18
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else.25
  %19 = load i8*, i8** %last, align 8
  %20 = load i64, i64* %len, align 8
  %add30 = add i64 %20, 1
  %mul31 = mul i64 %add30, 1
  %call32 = call i8* @xrealloc(i8* %19, i64 %mul31)
  store i8* %call32, i8** %last, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.else.25
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then.23
  %21 = load i64, i64* %len, align 8
  %add34 = add i64 %21, 1
  store i64 %add34, i64* %allocated, align 8
  %22 = load i8*, i8** %last, align 8
  %23 = load i8*, i8** %cp, align 8
  %24 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %24, i32 1, i1 false)
  %25 = load i64, i64* %len, align 8
  %26 = load i8*, i8** %last, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8 0, i8* %arrayidx35, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.33, %if.else.16
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.15
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load i8*, i8** %last, align 8
  call void @free(i8* %27) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Python_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.27

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %cp, align 8
  %call1 = call i8* @skip_spaces(i8* %4)
  store i8* %call1, i8** %cp, align 8
  %5 = load i8*, i8** %cp, align 8
  %call2 = call zeroext i1 @strneq(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i64 3)
  br i1 %call2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx, align 1
  %call3 = call zeroext i1 @notinname(i8 zeroext %7)
  br i1 %call3, label %land.lhs.true.4, label %lor.lhs.false

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 4
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %call6 = call i8* @skip_spaces(i8* %add.ptr5)
  store i8* %call6, i8** %cp, align 8
  %tobool = icmp ne i8* %call6, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.4, %land.lhs.true, %while.body
  %9 = load i8*, i8** %cp, align 8
  %call7 = call zeroext i1 @strneq(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i64 5)
  br i1 %call7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %lor.lhs.false
  %10 = load i8*, i8** %cp, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx9, align 1
  %call10 = call zeroext i1 @notinname(i8 zeroext %11)
  br i1 %call10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.8
  %12 = load i8*, i8** %cp, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %12, i64 6
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr12, i64 -1
  %call14 = call i8* @skip_spaces(i8* %add.ptr13)
  store i8* %call14, i8** %cp, align 8
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.11, %land.lhs.true.4
  %13 = load i8*, i8** %cp, align 8
  store i8* %13, i8** %name, align 8
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.21, %if.then
  %14 = load i8*, i8** %cp, align 8
  %15 = load i8, i8* %14, align 1
  %call17 = call zeroext i1 @notinname(i8 zeroext %15)
  br i1 %call17, label %land.end.20, label %land.rhs.18

land.rhs.18:                                      ; preds = %while.cond.16
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp = icmp ne i32 %conv, 58
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.18, %while.cond.16
  %18 = phi i1 [ false, %while.cond.16 ], [ %cmp, %land.rhs.18 ]
  br i1 %18, label %while.body.21, label %while.end

while.body.21:                                    ; preds = %land.end.20
  %19 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond.16

while.end:                                        ; preds = %land.end.20
  %20 = load i8*, i8** %name, align 8
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv22 = trunc i64 %sub.ptr.sub to i32
  %23 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast23 = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %25 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %add = add nsw i64 %sub.ptr.sub25, 1
  %conv26 = trunc i64 %add to i32
  %26 = load i32, i32* @lineno, align 4
  %27 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %20, i32 %conv22, i1 zeroext true, i8* %23, i32 %conv26, i32 %26, i64 %27)
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true.11, %land.lhs.true.8, %lor.lhs.false
  br label %while.cond

while.end.27:                                     ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %reader = alloca i8, align 1
  %writer = alloca i8, align 1
  %alias = alloca i8, align 1
  %continuation = alloca i8, align 1
  %is_class = alloca i8, align 1
  %is_method = alloca i8, align 1
  %name = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %colon = alloca i8*, align 8
  %self_size1 = alloca i64, align 8
  %q = alloca i8*, align 8
  %np = alloca i8*, align 8
  %name_len = alloca i64, align 8
  %wr_name = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  store i8* null, i8** %cp, align 8
  store i8 0, i8* %reader, align 1
  store i8 0, i8* %writer, align 1
  store i8 0, i8* %alias, align 1
  store i8 0, i8* %continuation, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.370, %if.then.146, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.371

while.body:                                       ; preds = %land.end
  store i8 0, i8* %is_class, align 1
  store i8 0, i8* %is_method, align 1
  %4 = load i8*, i8** %cp, align 8
  %call1 = call i8* @skip_spaces(i8* %4)
  store i8* %call1, i8** %cp, align 8
  %5 = load i8, i8* %continuation, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %call2 = call zeroext i1 @c_isalpha(i32 %conv)
  br i1 %call2, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %cp, align 8
  %9 = load i8, i8* %8, align 1
  %conv5 = sext i8 %9 to i32
  %call6 = call zeroext i1 @c_isupper(i32 %conv5)
  br i1 %call6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  store i8* null, i8** %colon, align 8
  %10 = load i8*, i8** %cp, align 8
  store i8* %10, i8** %name, align 8
  %11 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %call9 = call zeroext i1 @c_isalnum(i32 %conv8)
  br i1 %call9, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %14 = load i8*, i8** %cp, align 8
  %15 = load i8, i8* %14, align 1
  %conv11 = sext i8 %15 to i32
  %cmp = icmp eq i32 %conv11, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv13 = sext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 58
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %for.cond
  %18 = phi i1 [ true, %lor.lhs.false ], [ true, %for.cond ], [ %cmp14, %lor.rhs ]
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8, i8* %19, align 1
  %conv16 = sext i8 %20 to i32
  %cmp17 = icmp eq i32 %conv16, 58
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %for.body
  %21 = load i8*, i8** %cp, align 8
  store i8* %21, i8** %colon, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i8*, i8** %cp, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr20, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 1
  %cmp21 = icmp ugt i8* %23, %add.ptr
  br i1 %cmp21, label %if.then.23, label %if.end.52

if.then.23:                                       ; preds = %for.end
  %25 = load i8*, i8** %cp, align 8
  %call24 = call i8* @skip_spaces(i8* %25)
  store i8* %call24, i8** %bp, align 8
  %26 = load i8*, i8** %bp, align 8
  %27 = load i8, i8* %26, align 1
  %conv25 = sext i8 %27 to i32
  %cmp26 = icmp eq i32 %conv25, 61
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.51

land.lhs.true.28:                                 ; preds = %if.then.23
  %28 = load i8*, i8** %bp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx, align 1
  %conv29 = sext i8 %29 to i32
  %cmp30 = icmp eq i32 %conv29, 61
  br i1 %cmp30, label %if.end.51, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %land.lhs.true.28
  %30 = load i8*, i8** %bp, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %31 to i32
  %cmp35 = icmp eq i32 %conv34, 62
  br i1 %cmp35, label %if.end.51, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false.32
  %32 = load i8*, i8** %colon, align 8
  %tobool38 = icmp ne i8* %32, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.45

land.lhs.true.39:                                 ; preds = %if.then.37
  %33 = load i8*, i8** %colon, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %34 to i32
  %call42 = call zeroext i1 @c_isspace(i32 %conv41)
  br i1 %call42, label %if.end.45, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.39
  %35 = load i8*, i8** %colon, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %add.ptr44, i8** %name, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.39, %if.then.37
  %36 = load i8*, i8** %name, align 8
  %37 = load i8*, i8** %cp, align 8
  %38 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv46 = trunc i64 %sub.ptr.sub to i32
  %39 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %40 = load i8*, i8** %cp, align 8
  %41 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast47 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast48 = ptrtoint i8* %41 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %add = add nsw i64 %sub.ptr.sub49, 1
  %conv50 = trunc i64 %add to i32
  %42 = load i32, i32* @lineno, align 4
  %43 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %36, i32 %conv46, i1 zeroext false, i8* %39, i32 %conv50, i32 %42, i64 %43)
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.45, %lor.lhs.false.32, %land.lhs.true.28, %if.then.23
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.end
  br label %if.end.370

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %while.body
  %44 = load i8, i8* %continuation, align 1
  %tobool53 = trunc i8 %44 to i1
  br i1 %tobool53, label %if.else.157, label %land.lhs.true.54

land.lhs.true.54:                                 ; preds = %if.else
  %45 = load i8*, i8** %cp, align 8
  %call55 = call zeroext i1 @strneq(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i64 3)
  br i1 %call55, label %land.lhs.true.57, label %land.end.66

land.lhs.true.57:                                 ; preds = %land.lhs.true.54
  %46 = load i8*, i8** %cp, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %46, i64 3
  %47 = load i8, i8* %arrayidx58, align 1
  %call59 = call zeroext i1 @notinname(i8 zeroext %47)
  br i1 %call59, label %land.rhs.61, label %land.end.66

land.rhs.61:                                      ; preds = %land.lhs.true.57
  %48 = load i8*, i8** %cp, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %48, i64 4
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr62, i64 -1
  %call64 = call i8* @skip_spaces(i8* %add.ptr63)
  store i8* %call64, i8** %cp, align 8
  %tobool65 = icmp ne i8* %call64, null
  br label %land.end.66

land.end.66:                                      ; preds = %land.rhs.61, %land.lhs.true.57, %land.lhs.true.54
  %49 = phi i1 [ false, %land.lhs.true.57 ], [ false, %land.lhs.true.54 ], [ %tobool65, %land.rhs.61 ]
  %frombool = zext i1 %49 to i8
  store i8 %frombool, i8* %is_method, align 1
  br i1 %49, label %if.then.95, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %land.end.66
  %50 = load i8*, i8** %cp, align 8
  %call69 = call zeroext i1 @strneq(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i64 5)
  br i1 %call69, label %land.lhs.true.71, label %land.end.80

land.lhs.true.71:                                 ; preds = %lor.lhs.false.68
  %51 = load i8*, i8** %cp, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %51, i64 5
  %52 = load i8, i8* %arrayidx72, align 1
  %call73 = call zeroext i1 @notinname(i8 zeroext %52)
  br i1 %call73, label %land.rhs.75, label %land.end.80

land.rhs.75:                                      ; preds = %land.lhs.true.71
  %53 = load i8*, i8** %cp, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %53, i64 6
  %add.ptr77 = getelementptr inbounds i8, i8* %add.ptr76, i64 -1
  %call78 = call i8* @skip_spaces(i8* %add.ptr77)
  store i8* %call78, i8** %cp, align 8
  %tobool79 = icmp ne i8* %call78, null
  br label %land.end.80

land.end.80:                                      ; preds = %land.rhs.75, %land.lhs.true.71, %lor.lhs.false.68
  %54 = phi i1 [ false, %land.lhs.true.71 ], [ false, %lor.lhs.false.68 ], [ %tobool79, %land.rhs.75 ]
  %frombool81 = zext i1 %54 to i8
  store i8 %frombool81, i8* %is_class, align 1
  br i1 %54, label %if.then.95, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %land.end.80
  %55 = load i8*, i8** %cp, align 8
  %call84 = call zeroext i1 @strneq(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.275, i32 0, i32 0), i64 6)
  br i1 %call84, label %land.lhs.true.86, label %if.else.157

land.lhs.true.86:                                 ; preds = %lor.lhs.false.83
  %56 = load i8*, i8** %cp, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %56, i64 6
  %57 = load i8, i8* %arrayidx87, align 1
  %call88 = call zeroext i1 @notinname(i8 zeroext %57)
  br i1 %call88, label %land.lhs.true.90, label %if.else.157

land.lhs.true.90:                                 ; preds = %land.lhs.true.86
  %58 = load i8*, i8** %cp, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %58, i64 7
  %add.ptr92 = getelementptr inbounds i8, i8* %add.ptr91, i64 -1
  %call93 = call i8* @skip_spaces(i8* %add.ptr92)
  store i8* %call93, i8** %cp, align 8
  %tobool94 = icmp ne i8* %call93, null
  br i1 %tobool94, label %if.then.95, label %if.else.157

if.then.95:                                       ; preds = %land.lhs.true.90, %land.end.80, %land.end.66
  store i64 5, i64* %self_size1, align 8
  %59 = load i8*, i8** %cp, align 8
  store i8* %59, i8** %name, align 8
  br label %while.cond.96

while.cond.96:                                    ; preds = %while.body.103, %if.then.95
  %60 = load i8*, i8** %cp, align 8
  %61 = load i8, i8* %60, align 1
  %call97 = call zeroext i1 @notinname(i8 zeroext %61)
  br i1 %call97, label %lor.rhs.98, label %lor.end.102

lor.rhs.98:                                       ; preds = %while.cond.96
  %62 = load i8*, i8** %cp, align 8
  %63 = load i8, i8* %62, align 1
  %conv99 = sext i8 %63 to i32
  %cmp100 = icmp eq i32 %conv99, 61
  br label %lor.end.102

lor.end.102:                                      ; preds = %lor.rhs.98, %while.cond.96
  %64 = phi i1 [ true, %while.cond.96 ], [ %cmp100, %lor.rhs.98 ]
  br i1 %64, label %while.body.103, label %while.end

while.body.103:                                   ; preds = %lor.end.102
  %65 = load i8*, i8** %cp, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr104, i8** %cp, align 8
  br label %while.cond.96

while.end:                                        ; preds = %lor.end.102
  %66 = load i8*, i8** %cp, align 8
  %67 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast105 = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast106 = ptrtoint i8* %67 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %cmp108 = icmp ugt i64 %sub.ptr.sub107, 5
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.115

land.lhs.true.110:                                ; preds = %while.end
  %68 = load i8*, i8** %name, align 8
  %call111 = call zeroext i1 @strneq(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Ruby_functions.self_name, i32 0, i32 0), i64 5)
  br i1 %call111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %land.lhs.true.110
  %69 = load i8*, i8** %name, align 8
  %add.ptr114 = getelementptr inbounds i8, i8* %69, i64 5
  store i8* %add.ptr114, i8** %name, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %land.lhs.true.110, %while.end
  %70 = load i8, i8* %is_method, align 1
  %tobool116 = trunc i8 %70 to i1
  br i1 %tobool116, label %if.then.117, label %if.end.136

if.then.117:                                      ; preds = %if.end.115
  %71 = load i8*, i8** %name, align 8
  store i8* %71, i8** %q, align 8
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.127, %if.then.117
  %72 = load i8*, i8** %q, align 8
  %73 = load i8*, i8** %cp, align 8
  %cmp119 = icmp ult i8* %72, %73
  br i1 %cmp119, label %land.rhs.121, label %land.end.125

land.rhs.121:                                     ; preds = %for.cond.118
  %74 = load i8*, i8** %q, align 8
  %75 = load i8, i8* %74, align 1
  %conv122 = sext i8 %75 to i32
  %cmp123 = icmp ne i32 %conv122, 46
  br label %land.end.125

land.end.125:                                     ; preds = %land.rhs.121, %for.cond.118
  %76 = phi i1 [ false, %for.cond.118 ], [ %cmp123, %land.rhs.121 ]
  br i1 %76, label %for.body.126, label %for.end.129

for.body.126:                                     ; preds = %land.end.125
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.126
  %77 = load i8*, i8** %q, align 8
  %incdec.ptr128 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr128, i8** %q, align 8
  br label %for.cond.118

for.end.129:                                      ; preds = %land.end.125
  %78 = load i8*, i8** %q, align 8
  %79 = load i8*, i8** %cp, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %79, i64 -1
  %cmp131 = icmp ult i8* %78, %add.ptr130
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %for.end.129
  %80 = load i8*, i8** %q, align 8
  %add.ptr134 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %add.ptr134, i8** %name, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %for.end.129
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.115
  %81 = load i8, i8* %is_class, align 1
  %tobool137 = trunc i8 %81 to i1
  br i1 %tobool137, label %land.lhs.true.139, label %if.end.147

land.lhs.true.139:                                ; preds = %if.end.136
  %82 = load i8*, i8** %name, align 8
  %call140 = call zeroext i1 @strneq(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.276, i32 0, i32 0), i64 2)
  br i1 %call140, label %land.lhs.true.142, label %if.end.147

land.lhs.true.142:                                ; preds = %land.lhs.true.139
  %83 = load i8*, i8** %cp, align 8
  %84 = load i8*, i8** %name, align 8
  %add.ptr143 = getelementptr inbounds i8, i8* %84, i64 2
  %cmp144 = icmp eq i8* %83, %add.ptr143
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %land.lhs.true.142
  br label %while.cond

if.end.147:                                       ; preds = %land.lhs.true.142, %land.lhs.true.139, %if.end.136
  %85 = load i8*, i8** %name, align 8
  %86 = load i8*, i8** %cp, align 8
  %87 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast148 = ptrtoint i8* %86 to i64
  %sub.ptr.rhs.cast149 = ptrtoint i8* %87 to i64
  %sub.ptr.sub150 = sub i64 %sub.ptr.lhs.cast148, %sub.ptr.rhs.cast149
  %conv151 = trunc i64 %sub.ptr.sub150 to i32
  %88 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %89 = load i8*, i8** %cp, align 8
  %90 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast152 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast153 = ptrtoint i8* %90 to i64
  %sub.ptr.sub154 = sub i64 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %add155 = add nsw i64 %sub.ptr.sub154, 1
  %conv156 = trunc i64 %add155 to i32
  %91 = load i32, i32* @lineno, align 4
  %92 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %85, i32 %conv151, i1 zeroext true, i8* %88, i32 %conv156, i32 %91, i64 %92)
  br label %if.end.369

if.else.157:                                      ; preds = %land.lhs.true.90, %land.lhs.true.86, %lor.lhs.false.83, %if.else
  %93 = load i8, i8* %continuation, align 1
  %tobool158 = trunc i8 %93 to i1
  br i1 %tobool158, label %if.end.160, label %if.then.159

if.then.159:                                      ; preds = %if.else.157
  store i8 0, i8* %alias, align 1
  store i8 0, i8* %writer, align 1
  store i8 0, i8* %reader, align 1
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.else.157
  br label %while.cond.161

while.cond.161:                                   ; preds = %while.end.367, %if.end.160
  %94 = load i8*, i8** %cp, align 8
  %95 = load i8, i8* %94, align 1
  %conv162 = sext i8 %95 to i32
  %tobool163 = icmp ne i32 %conv162, 0
  br i1 %tobool163, label %land.rhs.164, label %land.end.168

land.rhs.164:                                     ; preds = %while.cond.161
  %96 = load i8*, i8** %cp, align 8
  %97 = load i8, i8* %96, align 1
  %conv165 = sext i8 %97 to i32
  %cmp166 = icmp ne i32 %conv165, 35
  br label %land.end.168

land.end.168:                                     ; preds = %land.rhs.164, %while.cond.161
  %98 = phi i1 [ false, %while.cond.161 ], [ %cmp166, %land.rhs.164 ]
  br i1 %98, label %while.body.169, label %while.end.368

while.body.169:                                   ; preds = %land.end.168
  %99 = load i8, i8* %continuation, align 1
  %tobool170 = trunc i8 %99 to i1
  br i1 %tobool170, label %if.end.227, label %if.then.171

if.then.171:                                      ; preds = %while.body.169
  store i8 0, i8* %alias, align 1
  store i8 0, i8* %writer, align 1
  store i8 0, i8* %reader, align 1
  %100 = load i8*, i8** %cp, align 8
  %call172 = call zeroext i1 @strneq(i8* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.277, i32 0, i32 0), i64 11)
  br i1 %call172, label %land.lhs.true.174, label %if.else.184

land.lhs.true.174:                                ; preds = %if.then.171
  %101 = load i8*, i8** %cp, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %101, i64 11
  %102 = load i8, i8* %arrayidx175, align 1
  %call176 = call zeroext i1 @notinname(i8 zeroext %102)
  br i1 %call176, label %land.lhs.true.178, label %if.else.184

land.lhs.true.178:                                ; preds = %land.lhs.true.174
  %103 = load i8*, i8** %cp, align 8
  %add.ptr179 = getelementptr inbounds i8, i8* %103, i64 12
  %add.ptr180 = getelementptr inbounds i8, i8* %add.ptr179, i64 -1
  %call181 = call i8* @skip_spaces(i8* %add.ptr180)
  store i8* %call181, i8** %cp, align 8
  %tobool182 = icmp ne i8* %call181, null
  br i1 %tobool182, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %land.lhs.true.178
  store i8 1, i8* %reader, align 1
  br label %if.end.226

if.else.184:                                      ; preds = %land.lhs.true.178, %land.lhs.true.174, %if.then.171
  %104 = load i8*, i8** %cp, align 8
  %call185 = call zeroext i1 @strneq(i8* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.278, i32 0, i32 0), i64 11)
  br i1 %call185, label %land.lhs.true.187, label %if.else.197

land.lhs.true.187:                                ; preds = %if.else.184
  %105 = load i8*, i8** %cp, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %105, i64 11
  %106 = load i8, i8* %arrayidx188, align 1
  %call189 = call zeroext i1 @notinname(i8 zeroext %106)
  br i1 %call189, label %land.lhs.true.191, label %if.else.197

land.lhs.true.191:                                ; preds = %land.lhs.true.187
  %107 = load i8*, i8** %cp, align 8
  %add.ptr192 = getelementptr inbounds i8, i8* %107, i64 12
  %add.ptr193 = getelementptr inbounds i8, i8* %add.ptr192, i64 -1
  %call194 = call i8* @skip_spaces(i8* %add.ptr193)
  store i8* %call194, i8** %cp, align 8
  %tobool195 = icmp ne i8* %call194, null
  br i1 %tobool195, label %if.then.196, label %if.else.197

if.then.196:                                      ; preds = %land.lhs.true.191
  store i8 1, i8* %writer, align 1
  br label %if.end.225

if.else.197:                                      ; preds = %land.lhs.true.191, %land.lhs.true.187, %if.else.184
  %108 = load i8*, i8** %cp, align 8
  %call198 = call zeroext i1 @strneq(i8* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.279, i32 0, i32 0), i64 13)
  br i1 %call198, label %land.lhs.true.200, label %if.else.210

land.lhs.true.200:                                ; preds = %if.else.197
  %109 = load i8*, i8** %cp, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %109, i64 13
  %110 = load i8, i8* %arrayidx201, align 1
  %call202 = call zeroext i1 @notinname(i8 zeroext %110)
  br i1 %call202, label %land.lhs.true.204, label %if.else.210

land.lhs.true.204:                                ; preds = %land.lhs.true.200
  %111 = load i8*, i8** %cp, align 8
  %add.ptr205 = getelementptr inbounds i8, i8* %111, i64 14
  %add.ptr206 = getelementptr inbounds i8, i8* %add.ptr205, i64 -1
  %call207 = call i8* @skip_spaces(i8* %add.ptr206)
  store i8* %call207, i8** %cp, align 8
  %tobool208 = icmp ne i8* %call207, null
  br i1 %tobool208, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %land.lhs.true.204
  store i8 1, i8* %reader, align 1
  store i8 1, i8* %writer, align 1
  br label %if.end.224

if.else.210:                                      ; preds = %land.lhs.true.204, %land.lhs.true.200, %if.else.197
  %112 = load i8*, i8** %cp, align 8
  %call211 = call zeroext i1 @strneq(i8* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.280, i32 0, i32 0), i64 12)
  br i1 %call211, label %land.lhs.true.213, label %if.end.223

land.lhs.true.213:                                ; preds = %if.else.210
  %113 = load i8*, i8** %cp, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %113, i64 12
  %114 = load i8, i8* %arrayidx214, align 1
  %call215 = call zeroext i1 @notinname(i8 zeroext %114)
  br i1 %call215, label %land.lhs.true.217, label %if.end.223

land.lhs.true.217:                                ; preds = %land.lhs.true.213
  %115 = load i8*, i8** %cp, align 8
  %add.ptr218 = getelementptr inbounds i8, i8* %115, i64 13
  %add.ptr219 = getelementptr inbounds i8, i8* %add.ptr218, i64 -1
  %call220 = call i8* @skip_spaces(i8* %add.ptr219)
  store i8* %call220, i8** %cp, align 8
  %tobool221 = icmp ne i8* %call220, null
  br i1 %tobool221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %land.lhs.true.217
  store i8 1, i8* %alias, align 1
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.222, %land.lhs.true.217, %land.lhs.true.213, %if.else.210
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.then.209
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.196
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.then.183
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %while.body.169
  %116 = load i8, i8* %reader, align 1
  %tobool228 = trunc i8 %116 to i1
  br i1 %tobool228, label %if.then.236, label %lor.lhs.false.230

lor.lhs.false.230:                                ; preds = %if.end.227
  %117 = load i8, i8* %writer, align 1
  %tobool231 = trunc i8 %117 to i1
  br i1 %tobool231, label %if.then.236, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %lor.lhs.false.230
  %118 = load i8, i8* %alias, align 1
  %tobool234 = trunc i8 %118 to i1
  br i1 %tobool234, label %if.then.236, label %if.end.347

if.then.236:                                      ; preds = %lor.lhs.false.233, %lor.lhs.false.230, %if.end.227
  br label %do.body

do.body:                                          ; preds = %land.end.346, %if.then.236
  %119 = load i8*, i8** %cp, align 8
  %call237 = call i8* @skip_spaces(i8* %119)
  store i8* %call237, i8** %cp, align 8
  %120 = load i8*, i8** %cp, align 8
  %121 = load i8, i8* %120, align 1
  %conv238 = sext i8 %121 to i32
  %cmp239 = icmp eq i32 %conv238, 40
  br i1 %cmp239, label %if.then.241, label %if.end.244

if.then.241:                                      ; preds = %do.body
  %122 = load i8*, i8** %cp, align 8
  %add.ptr242 = getelementptr inbounds i8, i8* %122, i64 1
  %call243 = call i8* @skip_spaces(i8* %add.ptr242)
  store i8* %call243, i8** %cp, align 8
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.241, %do.body
  %123 = load i8*, i8** %cp, align 8
  store i8* %123, i8** %np, align 8
  %124 = load i8*, i8** %cp, align 8
  %call245 = call i8* @skip_name(i8* %124)
  store i8* %call245, i8** %cp, align 8
  %125 = load i8*, i8** %np, align 8
  %126 = load i8, i8* %125, align 1
  %conv246 = sext i8 %126 to i32
  %cmp247 = icmp ne i32 %conv246, 58
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %if.end.244
  br label %do.cond

if.end.250:                                       ; preds = %if.end.244
  %127 = load i8*, i8** %np, align 8
  %incdec.ptr251 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr251, i8** %np, align 8
  %128 = load i8, i8* %reader, align 1
  %tobool252 = trunc i8 %128 to i1
  br i1 %tobool252, label %if.then.253, label %if.end.263

if.then.253:                                      ; preds = %if.end.250
  %129 = load i8*, i8** %np, align 8
  %130 = load i8*, i8** %cp, align 8
  %131 = load i8*, i8** %np, align 8
  %sub.ptr.lhs.cast254 = ptrtoint i8* %130 to i64
  %sub.ptr.rhs.cast255 = ptrtoint i8* %131 to i64
  %sub.ptr.sub256 = sub i64 %sub.ptr.lhs.cast254, %sub.ptr.rhs.cast255
  %conv257 = trunc i64 %sub.ptr.sub256 to i32
  %132 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %133 = load i8*, i8** %cp, align 8
  %134 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast258 = ptrtoint i8* %133 to i64
  %sub.ptr.rhs.cast259 = ptrtoint i8* %134 to i64
  %sub.ptr.sub260 = sub i64 %sub.ptr.lhs.cast258, %sub.ptr.rhs.cast259
  %add261 = add nsw i64 %sub.ptr.sub260, 1
  %conv262 = trunc i64 %add261 to i32
  %135 = load i32, i32* @lineno, align 4
  %136 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %129, i32 %conv257, i1 zeroext true, i8* %132, i32 %conv262, i32 %135, i64 %136)
  store i8 0, i8* %continuation, align 1
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.253, %if.end.250
  %137 = load i8, i8* %writer, align 1
  %tobool264 = trunc i8 %137 to i1
  br i1 %tobool264, label %if.then.265, label %if.end.279

if.then.265:                                      ; preds = %if.end.263
  %138 = load i8*, i8** %cp, align 8
  %139 = load i8*, i8** %np, align 8
  %sub.ptr.lhs.cast266 = ptrtoint i8* %138 to i64
  %sub.ptr.rhs.cast267 = ptrtoint i8* %139 to i64
  %sub.ptr.sub268 = sub i64 %sub.ptr.lhs.cast266, %sub.ptr.rhs.cast267
  %add269 = add nsw i64 %sub.ptr.sub268, 1
  store i64 %add269, i64* %name_len, align 8
  %140 = load i64, i64* %name_len, align 8
  %add270 = add i64 %140, 1
  %mul = mul i64 %add270, 1
  %call271 = call i8* @xmalloc(i64 %mul)
  store i8* %call271, i8** %wr_name, align 8
  %141 = load i8*, i8** %wr_name, align 8
  %142 = load i8*, i8** %np, align 8
  %143 = load i64, i64* %name_len, align 8
  %sub = sub i64 %143, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 %sub, i32 1, i1 false)
  %144 = load i8*, i8** %wr_name, align 8
  %145 = load i64, i64* %name_len, align 8
  %add.ptr272 = getelementptr inbounds i8, i8* %144, i64 %145
  %add.ptr273 = getelementptr inbounds i8, i8* %add.ptr272, i64 -1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr273, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.281, i32 0, i32 0), i64 2, i32 1, i1 false)
  %146 = load i8*, i8** %wr_name, align 8
  %147 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %148 = load i8*, i8** %cp, align 8
  %149 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast274 = ptrtoint i8* %148 to i64
  %sub.ptr.rhs.cast275 = ptrtoint i8* %149 to i64
  %sub.ptr.sub276 = sub i64 %sub.ptr.lhs.cast274, %sub.ptr.rhs.cast275
  %add277 = add nsw i64 %sub.ptr.sub276, 1
  %conv278 = trunc i64 %add277 to i32
  %150 = load i32, i32* @lineno, align 4
  %151 = load i64, i64* @linecharno, align 8
  call void @pfnote(i8* %146, i1 zeroext true, i8* %147, i32 %conv278, i32 %150, i64 %151)
  store i8 0, i8* %continuation, align 1
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.265, %if.end.263
  %152 = load i8, i8* %alias, align 1
  %tobool280 = trunc i8 %152 to i1
  br i1 %tobool280, label %if.then.281, label %if.end.324

if.then.281:                                      ; preds = %if.end.279
  %153 = load i8, i8* %continuation, align 1
  %tobool282 = trunc i8 %153 to i1
  br i1 %tobool282, label %if.end.293, label %if.then.283

if.then.283:                                      ; preds = %if.then.281
  %154 = load i8*, i8** %np, align 8
  %155 = load i8*, i8** %cp, align 8
  %156 = load i8*, i8** %np, align 8
  %sub.ptr.lhs.cast284 = ptrtoint i8* %155 to i64
  %sub.ptr.rhs.cast285 = ptrtoint i8* %156 to i64
  %sub.ptr.sub286 = sub i64 %sub.ptr.lhs.cast284, %sub.ptr.rhs.cast285
  %conv287 = trunc i64 %sub.ptr.sub286 to i32
  %157 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %158 = load i8*, i8** %cp, align 8
  %159 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast288 = ptrtoint i8* %158 to i64
  %sub.ptr.rhs.cast289 = ptrtoint i8* %159 to i64
  %sub.ptr.sub290 = sub i64 %sub.ptr.lhs.cast288, %sub.ptr.rhs.cast289
  %add291 = add nsw i64 %sub.ptr.sub290, 1
  %conv292 = trunc i64 %add291 to i32
  %160 = load i32, i32* @lineno, align 4
  %161 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %154, i32 %conv287, i1 zeroext true, i8* %157, i32 %conv292, i32 %160, i64 %161)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.283, %if.then.281
  store i8 0, i8* %continuation, align 1
  br label %while.cond.294

while.cond.294:                                   ; preds = %if.end.316, %if.end.293
  %162 = load i8*, i8** %cp, align 8
  %163 = load i8, i8* %162, align 1
  %conv295 = sext i8 %163 to i32
  %tobool296 = icmp ne i32 %conv295, 0
  br i1 %tobool296, label %land.lhs.true.297, label %land.end.305

land.lhs.true.297:                                ; preds = %while.cond.294
  %164 = load i8*, i8** %cp, align 8
  %165 = load i8, i8* %164, align 1
  %conv298 = sext i8 %165 to i32
  %cmp299 = icmp ne i32 %conv298, 35
  br i1 %cmp299, label %land.rhs.301, label %land.end.305

land.rhs.301:                                     ; preds = %land.lhs.true.297
  %166 = load i8*, i8** %cp, align 8
  %167 = load i8, i8* %166, align 1
  %conv302 = sext i8 %167 to i32
  %cmp303 = icmp ne i32 %conv302, 59
  br label %land.end.305

land.end.305:                                     ; preds = %land.rhs.301, %land.lhs.true.297, %while.cond.294
  %168 = phi i1 [ false, %land.lhs.true.297 ], [ false, %while.cond.294 ], [ %cmp303, %land.rhs.301 ]
  br i1 %168, label %while.body.306, label %while.end.318

while.body.306:                                   ; preds = %land.end.305
  %169 = load i8*, i8** %cp, align 8
  %170 = load i8, i8* %169, align 1
  %conv307 = sext i8 %170 to i32
  %cmp308 = icmp eq i32 %conv307, 44
  br i1 %cmp308, label %if.then.310, label %if.else.311

if.then.310:                                      ; preds = %while.body.306
  store i8 1, i8* %continuation, align 1
  br label %if.end.316

if.else.311:                                      ; preds = %while.body.306
  %171 = load i8*, i8** %cp, align 8
  %172 = load i8, i8* %171, align 1
  %conv312 = sext i8 %172 to i32
  %call313 = call zeroext i1 @c_isspace(i32 %conv312)
  br i1 %call313, label %if.end.315, label %if.then.314

if.then.314:                                      ; preds = %if.else.311
  store i8 0, i8* %continuation, align 1
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %if.else.311
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.then.310
  %173 = load i8*, i8** %cp, align 8
  %incdec.ptr317 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr317, i8** %cp, align 8
  br label %while.cond.294

while.end.318:                                    ; preds = %land.end.305
  %174 = load i8*, i8** %cp, align 8
  %175 = load i8, i8* %174, align 1
  %conv319 = sext i8 %175 to i32
  %cmp320 = icmp eq i32 %conv319, 59
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %while.end.318
  store i8 0, i8* %continuation, align 1
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %while.end.318
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.279
  %176 = load i8*, i8** %cp, align 8
  %call325 = call i8* @skip_spaces(i8* %176)
  store i8* %call325, i8** %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.324, %if.then.249
  %177 = load i8, i8* %alias, align 1
  %tobool326 = trunc i8 %177 to i1
  br i1 %tobool326, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.cond
  %178 = load i8*, i8** %cp, align 8
  %179 = load i8, i8* %178, align 1
  %conv328 = sext i8 %179 to i32
  %cmp329 = icmp eq i32 %conv328, 44
  br i1 %cmp329, label %land.rhs.336, label %land.end.346

cond.false:                                       ; preds = %do.cond
  %180 = load i8*, i8** %cp, align 8
  %181 = load i8, i8* %180, align 1
  %conv331 = sext i8 %181 to i32
  %cmp332 = icmp eq i32 %conv331, 44
  %frombool334 = zext i1 %cmp332 to i8
  store i8 %frombool334, i8* %continuation, align 1
  br i1 %cmp332, label %land.rhs.336, label %land.end.346

land.rhs.336:                                     ; preds = %cond.false, %cond.true
  %182 = load i8*, i8** %cp, align 8
  %add.ptr337 = getelementptr inbounds i8, i8* %182, i64 1
  %call338 = call i8* @skip_spaces(i8* %add.ptr337)
  store i8* %call338, i8** %cp, align 8
  %183 = load i8*, i8** %cp, align 8
  %184 = load i8, i8* %183, align 1
  %conv339 = sext i8 %184 to i32
  %tobool340 = icmp ne i32 %conv339, 0
  br i1 %tobool340, label %land.rhs.341, label %land.end.345

land.rhs.341:                                     ; preds = %land.rhs.336
  %185 = load i8*, i8** %cp, align 8
  %186 = load i8, i8* %185, align 1
  %conv342 = sext i8 %186 to i32
  %cmp343 = icmp ne i32 %conv342, 35
  br label %land.end.345

land.end.345:                                     ; preds = %land.rhs.341, %land.rhs.336
  %187 = phi i1 [ false, %land.rhs.336 ], [ %cmp343, %land.rhs.341 ]
  br label %land.end.346

land.end.346:                                     ; preds = %land.end.345, %cond.false, %cond.true
  %188 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %187, %land.end.345 ]
  br i1 %188, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.346
  br label %if.end.347

if.end.347:                                       ; preds = %do.end, %lor.lhs.false.233
  %189 = load i8*, i8** %cp, align 8
  %190 = load i8, i8* %189, align 1
  %conv348 = sext i8 %190 to i32
  %cmp349 = icmp ne i32 %conv348, 35
  br i1 %cmp349, label %if.then.351, label %if.end.353

if.then.351:                                      ; preds = %if.end.347
  %191 = load i8*, i8** %cp, align 8
  %call352 = call i8* @skip_name(i8* %191)
  store i8* %call352, i8** %cp, align 8
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.351, %if.end.347
  br label %while.cond.354

while.cond.354:                                   ; preds = %while.body.365, %if.end.353
  %192 = load i8*, i8** %cp, align 8
  %193 = load i8, i8* %192, align 1
  %conv355 = sext i8 %193 to i32
  %tobool356 = icmp ne i32 %conv355, 0
  br i1 %tobool356, label %land.lhs.true.357, label %land.end.364

land.lhs.true.357:                                ; preds = %while.cond.354
  %194 = load i8*, i8** %cp, align 8
  %195 = load i8, i8* %194, align 1
  %conv358 = sext i8 %195 to i32
  %cmp359 = icmp ne i32 %conv358, 35
  br i1 %cmp359, label %land.rhs.361, label %land.end.364

land.rhs.361:                                     ; preds = %land.lhs.true.357
  %196 = load i8*, i8** %cp, align 8
  %197 = load i8, i8* %196, align 1
  %call362 = call zeroext i1 @notinname(i8 zeroext %197)
  br label %land.end.364

land.end.364:                                     ; preds = %land.rhs.361, %land.lhs.true.357, %while.cond.354
  %198 = phi i1 [ false, %land.lhs.true.357 ], [ false, %while.cond.354 ], [ %call362, %land.rhs.361 ]
  br i1 %198, label %while.body.365, label %while.end.367

while.body.365:                                   ; preds = %land.end.364
  %199 = load i8*, i8** %cp, align 8
  %incdec.ptr366 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr366, i8** %cp, align 8
  br label %while.cond.354

while.end.367:                                    ; preds = %land.end.364
  br label %while.cond.161

while.end.368:                                    ; preds = %land.end.168
  br label %if.end.369

if.end.369:                                       ; preds = %while.end.368, %if.end.147
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %if.end.52
  br label %while.cond

while.end.371:                                    ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Scheme_functions(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %bp = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %bp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.33

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %bp, align 8
  %call1 = call zeroext i1 @strneq(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.287, i32 0, i32 0), i64 4)
  br i1 %call1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load i8*, i8** %bp, align 8
  %call2 = call zeroext i1 @strneq(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.288, i32 0, i32 0), i64 4)
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %6 = load i8*, i8** %bp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 4
  %call3 = call i8* @skip_non_spaces(i8* %add.ptr)
  store i8* %call3, i8** %bp, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.9, %if.then
  %7 = load i8*, i8** %bp, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs.5, label %land.end.8

land.rhs.5:                                       ; preds = %while.cond.4
  %9 = load i8*, i8** %bp, align 8
  %10 = load i8, i8* %9, align 1
  %call6 = call zeroext i1 @notinname(i8 zeroext %10)
  br label %land.end.8

land.end.8:                                       ; preds = %land.rhs.5, %while.cond.4
  %11 = phi i1 [ false, %while.cond.4 ], [ %call6, %land.rhs.5 ]
  br i1 %11, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %land.end.8
  %12 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  br label %while.cond.4

while.end:                                        ; preds = %land.end.8
  %13 = load i8*, i8** %bp, align 8
  call void @get_tag(i8* %13, i8** null)
  br label %if.end

if.end:                                           ; preds = %while.end, %lor.lhs.false
  %14 = load i8*, i8** %bp, align 8
  %call10 = call zeroext i1 @strneq(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.289, i32 0, i32 0), i64 5)
  br i1 %call10, label %land.lhs.true, label %lor.lhs.false.19

land.lhs.true:                                    ; preds = %if.end
  %15 = load i8*, i8** %bp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx, align 1
  %call12 = call zeroext i1 @notinname(i8 zeroext %16)
  br i1 %call12, label %land.lhs.true.14, label %lor.lhs.false.19

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %17 = load i8*, i8** %bp, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %17, i64 6
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr15, i64 -1
  %call17 = call i8* @skip_spaces(i8* %add.ptr16)
  store i8* %call17, i8** %bp, align 8
  %tobool18 = icmp ne i8* %call17, null
  br i1 %tobool18, label %if.then.31, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.14, %land.lhs.true, %if.end
  %18 = load i8*, i8** %bp, align 8
  %call20 = call zeroext i1 @strneq(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.290, i32 0, i32 0), i64 5)
  br i1 %call20, label %land.lhs.true.22, label %if.end.32

land.lhs.true.22:                                 ; preds = %lor.lhs.false.19
  %19 = load i8*, i8** %bp, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 5
  %20 = load i8, i8* %arrayidx23, align 1
  %call24 = call zeroext i1 @notinname(i8 zeroext %20)
  br i1 %call24, label %land.lhs.true.26, label %if.end.32

land.lhs.true.26:                                 ; preds = %land.lhs.true.22
  %21 = load i8*, i8** %bp, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %21, i64 6
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 -1
  %call29 = call i8* @skip_spaces(i8* %add.ptr28)
  store i8* %call29, i8** %bp, align 8
  %tobool30 = icmp ne i8* %call29, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true.26, %land.lhs.true.14
  %22 = load i8*, i8** %bp, align 8
  call void @get_tag(i8* %22, i8** null)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %land.lhs.true.26, %land.lhs.true.22, %lor.lhs.false.19
  br label %while.cond

while.end.33:                                     ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TeX_commands(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %key = alloca %struct.linebuffer*, align 8
  %TEX_esc = alloca i8, align 1
  %TEX_opgrp = alloca i8, align 1
  %TEX_clgrp = alloca i8, align 1
  %c = alloca i8, align 1
  %p = alloca i8*, align 8
  %namelen = alloca i32, align 4
  %linelen = alloca i32, align 4
  %opgrp = alloca i8, align 1
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  store i8 0, i8* %TEX_esc, align 1
  %0 = load %struct.linebuffer*, %struct.linebuffer** @TEX_toktab, align 8
  %cmp = icmp eq %struct.linebuffer* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @TEX_defenv, align 8
  call void @TEX_decode_env(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.299, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %tex_next_line, %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %2)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %3)
  %4 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %4, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %5, label %while.body, label %while.end.90

while.body:                                       ; preds = %land.end
  br label %for.cond

for.cond:                                         ; preds = %for.end.89, %while.body
  br label %while.body.2

while.body.2:                                     ; preds = %for.cond, %if.end.19
  %6 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %c, align 1
  %8 = load i8, i8* %c, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.2
  %9 = load i8, i8* %c, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 37
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %while.body.2
  br label %tex_next_line

if.end.9:                                         ; preds = %lor.lhs.false
  %10 = load i8, i8* %TEX_esc, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.end.9
  %11 = load i8, i8* %c, align 1
  %conv11 = sext i8 %11 to i32
  switch i32 %conv11, label %sw.epilog [
    i32 92, label %sw.bb
    i32 33, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.then.10
  %12 = load i8, i8* %c, align 1
  store i8 %12, i8* %TEX_esc, align 1
  store i8 123, i8* %TEX_opgrp, align 1
  store i8 125, i8* %TEX_clgrp, align 1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then.10
  %13 = load i8, i8* %c, align 1
  store i8 %13, i8* %TEX_esc, align 1
  store i8 60, i8* %TEX_opgrp, align 1
  store i8 62, i8* %TEX_clgrp, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.10, %sw.bb.12, %sw.bb
  br label %if.end.13

if.end.13:                                        ; preds = %sw.epilog, %if.end.9
  %14 = load i8, i8* %c, align 1
  %conv14 = sext i8 %14 to i32
  %15 = load i8, i8* %TEX_esc, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.13
  br label %while.end

if.end.19:                                        ; preds = %if.end.13
  br label %while.body.2

while.end:                                        ; preds = %if.then.18
  %16 = load %struct.linebuffer*, %struct.linebuffer** @TEX_toktab, align 8
  store %struct.linebuffer* %16, %struct.linebuffer** %key, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.87, %while.end
  %17 = load %struct.linebuffer*, %struct.linebuffer** %key, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer, align 8
  %cmp21 = icmp ne i8* %18, null
  br i1 %cmp21, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond.20
  %19 = load i8*, i8** %cp, align 8
  %20 = load %struct.linebuffer*, %struct.linebuffer** %key, align 8
  %buffer23 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %20, i32 0, i32 2
  %21 = load i8*, i8** %buffer23, align 8
  %22 = load %struct.linebuffer*, %struct.linebuffer** %key, align 8
  %len = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %22, i32 0, i32 1
  %23 = load i32, i32* %len, align 4
  %conv24 = sext i32 %23 to i64
  %call25 = call zeroext i1 @strneq(i8* %19, i8* %21, i64 %conv24)
  br i1 %call25, label %if.then.26, label %if.end.86

if.then.26:                                       ; preds = %for.body
  store i8 0, i8* %opgrp, align 1
  %24 = load i8*, i8** %cp, align 8
  %25 = load %struct.linebuffer*, %struct.linebuffer** %key, align 8
  %len27 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %25, i32 0, i32 1
  %26 = load i32, i32* %len27, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %call28 = call i8* @skip_spaces(i8* %add.ptr)
  store i8* %call28, i8** %cp, align 8
  %27 = load i8*, i8** %cp, align 8
  %28 = load i8, i8* %27, align 1
  %conv29 = sext i8 %28 to i32
  %29 = load i8, i8* %TEX_opgrp, align 1
  %conv30 = sext i8 %29 to i32
  %cmp31 = icmp eq i32 %conv29, %conv30
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.26
  store i8 1, i8* %opgrp, align 1
  %30 = load i8*, i8** %cp, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr34, i8** %cp, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.26
  %31 = load i8*, i8** %cp, align 8
  store i8* %31, i8** %p, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %if.end.35
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv37 = sext i8 %33 to i32
  %call38 = call zeroext i1 @c_isspace(i32 %conv37)
  br i1 %call38, label %land.end.52, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond.36
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv39 = sext i8 %35 to i32
  %cmp40 = icmp ne i32 %conv39, 35
  br i1 %cmp40, label %land.lhs.true.42, label %land.end.52

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %36 = load i8*, i8** %p, align 8
  %37 = load i8, i8* %36, align 1
  %conv43 = sext i8 %37 to i32
  %38 = load i8, i8* %TEX_opgrp, align 1
  %conv44 = sext i8 %38 to i32
  %cmp45 = icmp ne i32 %conv43, %conv44
  br i1 %cmp45, label %land.rhs.47, label %land.end.52

land.rhs.47:                                      ; preds = %land.lhs.true.42
  %39 = load i8*, i8** %p, align 8
  %40 = load i8, i8* %39, align 1
  %conv48 = sext i8 %40 to i32
  %41 = load i8, i8* %TEX_clgrp, align 1
  %conv49 = sext i8 %41 to i32
  %cmp50 = icmp ne i32 %conv48, %conv49
  br label %land.end.52

land.end.52:                                      ; preds = %land.rhs.47, %land.lhs.true.42, %land.lhs.true, %for.cond.36
  %42 = phi i1 [ false, %land.lhs.true.42 ], [ false, %land.lhs.true ], [ false, %for.cond.36 ], [ %cmp50, %land.rhs.47 ]
  br i1 %42, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %land.end.52
  br label %for.inc

for.inc:                                          ; preds = %for.body.53
  %43 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  br label %for.cond.36

for.end:                                          ; preds = %land.end.52
  %44 = load i8*, i8** %p, align 8
  %45 = load i8*, i8** %cp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv55 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv55, i32* %namelen, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 1), align 4
  store i32 %46, i32* %linelen, align 4
  %47 = load i8, i8* %opgrp, align 1
  %tobool56 = trunc i8 %47 to i1
  br i1 %tobool56, label %lor.lhs.false.57, label %if.then.62

lor.lhs.false.57:                                 ; preds = %for.end
  %48 = load i8*, i8** %p, align 8
  %49 = load i8, i8* %48, align 1
  %conv58 = sext i8 %49 to i32
  %50 = load i8, i8* %TEX_clgrp, align 1
  %conv59 = sext i8 %50 to i32
  %cmp60 = icmp eq i32 %conv58, %conv59
  br i1 %cmp60, label %if.then.62, label %if.end.85

if.then.62:                                       ; preds = %lor.lhs.false.57, %for.end
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.78, %if.then.62
  %51 = load i8*, i8** %p, align 8
  %52 = load i8, i8* %51, align 1
  %conv64 = sext i8 %52 to i32
  %cmp65 = icmp ne i32 %conv64, 0
  br i1 %cmp65, label %land.lhs.true.67, label %land.end.77

land.lhs.true.67:                                 ; preds = %while.cond.63
  %53 = load i8*, i8** %p, align 8
  %54 = load i8, i8* %53, align 1
  %conv68 = sext i8 %54 to i32
  %55 = load i8, i8* %TEX_opgrp, align 1
  %conv69 = sext i8 %55 to i32
  %cmp70 = icmp ne i32 %conv68, %conv69
  br i1 %cmp70, label %land.rhs.72, label %land.end.77

land.rhs.72:                                      ; preds = %land.lhs.true.67
  %56 = load i8*, i8** %p, align 8
  %57 = load i8, i8* %56, align 1
  %conv73 = sext i8 %57 to i32
  %58 = load i8, i8* %TEX_clgrp, align 1
  %conv74 = sext i8 %58 to i32
  %cmp75 = icmp ne i32 %conv73, %conv74
  br label %land.end.77

land.end.77:                                      ; preds = %land.rhs.72, %land.lhs.true.67, %while.cond.63
  %59 = phi i1 [ false, %land.lhs.true.67 ], [ false, %while.cond.63 ], [ %cmp75, %land.rhs.72 ]
  br i1 %59, label %while.body.78, label %while.end.80

while.body.78:                                    ; preds = %land.end.77
  %60 = load i8*, i8** %p, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr79, i8** %p, align 8
  br label %while.cond.63

while.end.80:                                     ; preds = %land.end.77
  %61 = load i8*, i8** %p, align 8
  %62 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast81 = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast82 = ptrtoint i8* %62 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %add = add nsw i64 %sub.ptr.sub83, 1
  %conv84 = trunc i64 %add to i32
  store i32 %conv84, i32* %linelen, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %while.end.80, %lor.lhs.false.57
  %63 = load i8*, i8** %cp, align 8
  %64 = load i32, i32* %namelen, align 4
  %65 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %66 = load i32, i32* %linelen, align 4
  %67 = load i32, i32* @lineno, align 4
  %68 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %63, i32 %64, i1 zeroext true, i8* %65, i32 %66, i32 %67, i64 %68)
  br label %tex_next_line

if.end.86:                                        ; preds = %for.body
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %69 = load %struct.linebuffer*, %struct.linebuffer** %key, align 8
  %incdec.ptr88 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %69, i32 1
  store %struct.linebuffer* %incdec.ptr88, %struct.linebuffer** %key, align 8
  br label %for.cond.20

for.end.89:                                       ; preds = %for.cond.20
  br label %for.cond

tex_next_line:                                    ; preds = %if.end.85, %if.then.8
  br label %while.cond

while.end.90:                                     ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Texinfo_nodes(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %start = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %2, i8** %cp, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ true, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.19

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %cp, align 8
  %call1 = call zeroext i1 @strneq(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.307, i32 0, i32 0), i64 5)
  br i1 %call1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 5
  %6 = load i8, i8* %arrayidx, align 1
  %call2 = call zeroext i1 @notinname(i8 zeroext %6)
  br i1 %call2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 6
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %call5 = call i8* @skip_spaces(i8* %add.ptr4)
  store i8* %call5, i8** %cp, align 8
  %tobool = icmp ne i8* %call5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %8 = load i8*, i8** %cp, align 8
  store i8* %8, i8** %start, align 8
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.13, %if.then
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs.8, label %land.end.12

land.rhs.8:                                       ; preds = %while.cond.6
  %11 = load i8*, i8** %cp, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv9, 44
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.8, %while.cond.6
  %13 = phi i1 [ false, %while.cond.6 ], [ %cmp10, %land.rhs.8 ]
  br i1 %13, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %land.end.12
  %14 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond.6

while.end:                                        ; preds = %land.end.12
  %15 = load i8*, i8** %start, align 8
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv14 = trunc i64 %sub.ptr.sub to i32
  %18 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast15 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %20 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %add = add nsw i64 %sub.ptr.sub17, 1
  %conv18 = trunc i64 %add to i32
  %21 = load i32, i32* @lineno, align 4
  %22 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %15, i32 %conv14, i1 zeroext true, i8* %18, i32 %conv18, i32 %21, i64 %22)
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true.3, %land.lhs.true, %while.body
  br label %while.cond

while.end.19:                                     ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Yacc_entries(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @C_entries(i32 65536, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @just_read_file(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @perhaps_more_input(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call1 = call i32 @ferror(%struct._IO_FILE* %1) #6
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define internal void @readline(%struct.linebuffer* %lbp, %struct._IO_FILE* %stream) #0 {
entry:
  %lbp.addr = alloca %struct.linebuffer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %result = alloca i64, align 8
  %lno = alloca i32, align 4
  %start = alloca i32, align 4
  %endp = alloca i8*, align 8
  %taggedabsname = alloca i8*, align 8
  %taggedfname = alloca i8*, align 8
  %name = alloca i8*, align 8
  %fdp = alloca %struct.fdesc*, align 8
  %match = alloca i32, align 4
  %rp = alloca %struct.regexp*, align 8
  %name86 = alloca i8*, align 8
  store %struct.linebuffer* %lbp, %struct.linebuffer** %lbp.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i64, i64* @charno, align 8
  store i64 %0, i64* @linecharno, align 8
  %1 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i8*, i8** @infilename, align 8
  %call = call i64 @readline_internal(%struct.linebuffer* %1, %struct._IO_FILE* %2, i8* %3)
  store i64 %call, i64* %result, align 8
  %4 = load i32, i32* @lineno, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* @lineno, align 4
  %5 = load i64, i64* %result, align 8
  %6 = load i64, i64* @charno, align 8
  %add1 = add nsw i64 %6, %5
  store i64 %add1, i64* @charno, align 8
  %7 = load i32, i32* @no_line_directive, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.85, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %result, align 8
  %cmp = icmp sgt i64 %8, 12
  br i1 %cmp, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %if.then
  %9 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %call2 = call zeroext i1 @strneq(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i64 6)
  br i1 %call2, label %if.then.3, label %if.end.77

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* %start, align 4
  %11 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer4, align 8
  %call5 = call i32 (i8*, i8*, ...) @sscanf(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0), i32* %lno, i32* %start) #6
  %cmp6 = icmp sge i32 %call5, 1
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.76

land.lhs.true.7:                                  ; preds = %if.then.3
  %13 = load i32, i32* %start, align 4
  %cmp8 = icmp sgt i32 %13, 0
  br i1 %cmp8, label %if.then.9, label %if.end.76

if.then.9:                                        ; preds = %land.lhs.true.7
  %14 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer10 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %14, i32 0, i32 2
  %15 = load i8*, i8** %buffer10, align 8
  %16 = load i32, i32* %start, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %endp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %17 = load i8*, i8** %endp, align 8
  %call11 = call i8* @strchr(i8* %17, i32 34) #9
  store i8* %call11, i8** %endp, align 8
  %cmp12 = icmp ne i8* %call11, null
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i8*, i8** %endp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 -1
  %19 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %19 to i32
  %cmp13 = icmp eq i32 %conv, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i8*, i8** %endp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %endp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load i8*, i8** %endp, align 8
  %cmp15 = icmp ne i8* %22, null
  br i1 %cmp15, label %if.then.17, label %if.end.75

if.then.17:                                       ; preds = %while.end
  store i8 0, i8* @readline.discard_until_line_directive, align 1
  %23 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer18 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %23, i32 0, i32 2
  %24 = load i8*, i8** %buffer18, align 8
  %25 = load i32, i32* %start, align 4
  %idx.ext19 = sext i32 %25 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %24, i64 %idx.ext19
  store i8* %add.ptr20, i8** %name, align 8
  %26 = load i8*, i8** %endp, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %name, align 8
  call void @canonicalize_filename(i8* %27)
  %28 = load i8*, i8** %name, align 8
  %29 = load i8*, i8** @tagfiledir, align 8
  %call21 = call i8* @absolute_filename(i8* %28, i8* %29)
  store i8* %call21, i8** %taggedabsname, align 8
  %30 = load i8*, i8** %name, align 8
  %call22 = call zeroext i1 @filename_is_absolute(i8* %30)
  br i1 %call22, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %31 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %infname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %31, i32 0, i32 1
  %32 = load i8*, i8** %infname, align 8
  %call24 = call zeroext i1 @filename_is_absolute(i8* %32)
  br i1 %call24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %lor.lhs.false, %if.then.17
  %33 = load i8*, i8** %taggedabsname, align 8
  %call27 = call i8* @savestr(i8* %33)
  store i8* %call27, i8** %taggedfname, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %34 = load i8*, i8** %taggedabsname, align 8
  %35 = load i8*, i8** @tagfiledir, align 8
  %call28 = call i8* @relative_filename(i8* %34, i8* %35)
  store i8* %call28, i8** %taggedfname, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.26
  %36 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %taggedfname29 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %36, i32 0, i32 4
  %37 = load i8*, i8** %taggedfname29, align 8
  %38 = load i8*, i8** %taggedfname, align 8
  %call30 = call zeroext i1 @streq(i8* %37, i8* %38)
  br i1 %call30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end
  %39 = load i8*, i8** %taggedfname, align 8
  call void @free(i8* %39) #6
  br label %if.end.74

if.else.32:                                       ; preds = %if.end
  %40 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  store %struct.fdesc* %40, %struct.fdesc** %fdp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.32
  %41 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %cmp33 = icmp ne %struct.fdesc* %41, null
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %infname35 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %42, i32 0, i32 1
  %43 = load i8*, i8** %infname35, align 8
  %44 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %infname36 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %44, i32 0, i32 1
  %45 = load i8*, i8** %infname36, align 8
  %call37 = call zeroext i1 @streq(i8* %43, i8* %45)
  br i1 %call37, label %land.lhs.true.39, label %if.end.44

land.lhs.true.39:                                 ; preds = %for.body
  %46 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %taggedfname40 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %46, i32 0, i32 4
  %47 = load i8*, i8** %taggedfname40, align 8
  %48 = load i8*, i8** %taggedfname, align 8
  %call41 = call zeroext i1 @streq(i8* %47, i8* %48)
  br i1 %call41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.39
  %49 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  store %struct.fdesc* %49, %struct.fdesc** @curfdp, align 8
  %50 = load i8*, i8** %taggedfname, align 8
  call void @free(i8* %50) #6
  br label %for.end

if.end.44:                                        ; preds = %land.lhs.true.39, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %51 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %next = getelementptr inbounds %struct.fdesc, %struct.fdesc* %51, i32 0, i32 0
  %52 = load %struct.fdesc*, %struct.fdesc** %next, align 8
  store %struct.fdesc* %52, %struct.fdesc** %fdp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.43, %for.cond
  %53 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %cmp45 = icmp eq %struct.fdesc* %53, null
  br i1 %cmp45, label %if.then.47, label %if.end.58

if.then.47:                                       ; preds = %for.end
  %54 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  store %struct.fdesc* %54, %struct.fdesc** %fdp, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.55, %if.then.47
  %55 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %cmp49 = icmp ne %struct.fdesc* %55, null
  br i1 %cmp49, label %for.body.51, label %for.end.57

for.body.51:                                      ; preds = %for.cond.48
  %56 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %infabsname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %56, i32 0, i32 2
  %57 = load i8*, i8** %infabsname, align 8
  %58 = load i8*, i8** %taggedabsname, align 8
  %call52 = call zeroext i1 @streq(i8* %57, i8* %58)
  br i1 %call52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body.51
  store i8 1, i8* @readline.discard_until_line_directive, align 1
  %59 = load i8*, i8** %taggedfname, align 8
  call void @free(i8* %59) #6
  br label %for.end.57

if.end.54:                                        ; preds = %for.body.51
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %60 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %next56 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %60, i32 0, i32 0
  %61 = load %struct.fdesc*, %struct.fdesc** %next56, align 8
  store %struct.fdesc* %61, %struct.fdesc** %fdp, align 8
  br label %for.cond.48

for.end.57:                                       ; preds = %if.then.53, %for.cond.48
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %for.end
  %62 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %cmp59 = icmp eq %struct.fdesc* %62, null
  br i1 %cmp59, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %if.end.58
  %63 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  store %struct.fdesc* %63, %struct.fdesc** %fdp, align 8
  %call62 = call i8* @xmalloc(i64 64)
  %64 = bitcast i8* %call62 to %struct.fdesc*
  store %struct.fdesc* %64, %struct.fdesc** @fdhead, align 8
  %65 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %66 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %67 = bitcast %struct.fdesc* %65 to i8*
  %68 = bitcast %struct.fdesc* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 64, i32 8, i1 false)
  %69 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %70 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %next63 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %70, i32 0, i32 0
  store %struct.fdesc* %69, %struct.fdesc** %next63, align 8
  %71 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %infname64 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %71, i32 0, i32 1
  %72 = load i8*, i8** %infname64, align 8
  %call65 = call i8* @savestr(i8* %72)
  %73 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %infname66 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %73, i32 0, i32 1
  store i8* %call65, i8** %infname66, align 8
  %74 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %infabsname67 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %74, i32 0, i32 2
  %75 = load i8*, i8** %infabsname67, align 8
  %call68 = call i8* @savestr(i8* %75)
  %76 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %infabsname69 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %76, i32 0, i32 2
  store i8* %call68, i8** %infabsname69, align 8
  %77 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %infabsdir = getelementptr inbounds %struct.fdesc, %struct.fdesc* %77, i32 0, i32 3
  %78 = load i8*, i8** %infabsdir, align 8
  %call70 = call i8* @savestr(i8* %78)
  %79 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %infabsdir71 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %79, i32 0, i32 3
  store i8* %call70, i8** %infabsdir71, align 8
  %80 = load i8*, i8** %taggedfname, align 8
  %81 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %taggedfname72 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %81, i32 0, i32 4
  store i8* %80, i8** %taggedfname72, align 8
  %82 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %usecharno = getelementptr inbounds %struct.fdesc, %struct.fdesc* %82, i32 0, i32 7
  store i8 0, i8* %usecharno, align 1
  %83 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %prop = getelementptr inbounds %struct.fdesc, %struct.fdesc* %83, i32 0, i32 6
  store i8* null, i8** %prop, align 8
  %84 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %written = getelementptr inbounds %struct.fdesc, %struct.fdesc* %84, i32 0, i32 8
  store i8 0, i8* %written, align 1
  %85 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  store %struct.fdesc* %85, %struct.fdesc** @curfdp, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.61, %if.end.58
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.31
  %86 = load i8*, i8** %taggedabsname, align 8
  call void @free(i8* %86) #6
  %87 = load i32, i32* %lno, align 4
  %sub = sub i32 %87, 1
  store i32 %sub, i32* @lineno, align 4
  %88 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @readline(%struct.linebuffer* %88, %struct._IO_FILE* %89)
  br label %if.end.145

if.end.75:                                        ; preds = %while.end
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %land.lhs.true.7, %if.then.3
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true, %if.then
  %90 = load i8, i8* @readline.discard_until_line_directive, align 1
  %tobool78 = trunc i8 %90 to i1
  br i1 %tobool78, label %if.then.79, label %if.end.84

if.then.79:                                       ; preds = %if.end.77
  %91 = load i64, i64* %result, align 8
  %cmp80 = icmp sgt i64 %91, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.79
  %92 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @readline(%struct.linebuffer* %92, %struct._IO_FILE* %93)
  br label %if.end.145

if.end.83:                                        ; preds = %if.then.79
  store i8 0, i8* @readline.discard_until_line_directive, align 1
  br label %if.end.145

if.end.84:                                        ; preds = %if.end.77
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %entry
  %94 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %len = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %94, i32 0, i32 1
  %95 = load i32, i32* %len, align 4
  %cmp87 = icmp sgt i32 %95, 0
  br i1 %cmp87, label %if.then.89, label %if.end.145

if.then.89:                                       ; preds = %if.end.85
  %96 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  store %struct.regexp* %96, %struct.regexp** %rp, align 8
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.143, %if.then.89
  %97 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %cmp91 = icmp ne %struct.regexp* %97, null
  br i1 %cmp91, label %for.body.93, label %for.end.144

for.body.93:                                      ; preds = %for.cond.90
  %98 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %lang = getelementptr inbounds %struct.regexp, %struct.regexp* %98, i32 0, i32 1
  %99 = load %struct.language*, %struct.language** %lang, align 8
  %cmp94 = icmp ne %struct.language* %99, null
  br i1 %cmp94, label %land.lhs.true.96, label %lor.lhs.false.101

land.lhs.true.96:                                 ; preds = %for.body.93
  %100 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %lang97 = getelementptr inbounds %struct.regexp, %struct.regexp* %100, i32 0, i32 1
  %101 = load %struct.language*, %struct.language** %lang97, align 8
  %102 = load %struct.fdesc*, %struct.fdesc** @fdhead, align 8
  %lang98 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %102, i32 0, i32 5
  %103 = load %struct.language*, %struct.language** %lang98, align 8
  %cmp99 = icmp ne %struct.language* %101, %103
  br i1 %cmp99, label %if.then.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %land.lhs.true.96, %for.body.93
  %104 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %multi_line = getelementptr inbounds %struct.regexp, %struct.regexp* %104, i32 0, i32 9
  %105 = load i8, i8* %multi_line, align 1
  %tobool102 = trunc i8 %105 to i1
  br i1 %tobool102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.101, %land.lhs.true.96
  br label %for.inc.143

if.end.105:                                       ; preds = %lor.lhs.false.101
  %106 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %pat = getelementptr inbounds %struct.regexp, %struct.regexp* %106, i32 0, i32 4
  %107 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %pat, align 8
  %108 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer106 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %108, i32 0, i32 2
  %109 = load i8*, i8** %buffer106, align 8
  %110 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %len107 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %110, i32 0, i32 1
  %111 = load i32, i32* %len107, align 4
  %conv108 = sext i32 %111 to i64
  %112 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %regs = getelementptr inbounds %struct.regexp, %struct.regexp* %112, i32 0, i32 5
  %call109 = call i64 @re_match(%struct.re_pattern_buffer* %107, i8* %109, i64 %conv108, i64 0, %struct.re_registers* %regs)
  %conv110 = trunc i64 %call109 to i32
  store i32 %conv110, i32* %match, align 4
  %113 = load i32, i32* %match, align 4
  switch i32 %113, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb.115
    i32 0, label %sw.bb.116
  ]

sw.bb:                                            ; preds = %if.end.105
  %114 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %error_signaled = getelementptr inbounds %struct.regexp, %struct.regexp* %114, i32 0, i32 6
  %115 = load i8, i8* %error_signaled, align 1
  %tobool111 = trunc i8 %115 to i1
  br i1 %tobool111, label %if.end.114, label %if.then.112

if.then.112:                                      ; preds = %sw.bb
  %116 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %pattern = getelementptr inbounds %struct.regexp, %struct.regexp* %116, i32 0, i32 2
  %117 = load i8*, i8** %pattern, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.116, i32 0, i32 0), i8* %117)
  %118 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %error_signaled113 = getelementptr inbounds %struct.regexp, %struct.regexp* %118, i32 0, i32 6
  store i8 1, i8* %error_signaled113, align 1
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %sw.bb
  br label %sw.epilog

sw.bb.115:                                        ; preds = %if.end.105
  br label %sw.epilog

sw.bb.116:                                        ; preds = %if.end.105
  %119 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %error_signaled117 = getelementptr inbounds %struct.regexp, %struct.regexp* %119, i32 0, i32 6
  %120 = load i8, i8* %error_signaled117, align 1
  %tobool118 = trunc i8 %120 to i1
  br i1 %tobool118, label %if.end.122, label %if.then.119

if.then.119:                                      ; preds = %sw.bb.116
  %121 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %pattern120 = getelementptr inbounds %struct.regexp, %struct.regexp* %121, i32 0, i32 2
  %122 = load i8*, i8** %pattern120, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0), i8* %122)
  %123 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %error_signaled121 = getelementptr inbounds %struct.regexp, %struct.regexp* %123, i32 0, i32 6
  store i8 1, i8* %error_signaled121, align 1
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.119, %sw.bb.116
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.105
  %124 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %name123 = getelementptr inbounds %struct.regexp, %struct.regexp* %124, i32 0, i32 3
  %125 = load i8*, i8** %name123, align 8
  store i8* %125, i8** %name86, align 8
  %126 = load i8*, i8** %name86, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %126, i64 0
  %127 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %127 to i32
  %cmp126 = icmp eq i32 %conv125, 0
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %sw.default
  store i8* null, i8** %name86, align 8
  br label %if.end.134

if.else.129:                                      ; preds = %sw.default
  %128 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer130 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %128, i32 0, i32 2
  %129 = load i8*, i8** %buffer130, align 8
  %130 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %name131 = getelementptr inbounds %struct.regexp, %struct.regexp* %130, i32 0, i32 3
  %131 = load i8*, i8** %name131, align 8
  %132 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %regs132 = getelementptr inbounds %struct.regexp, %struct.regexp* %132, i32 0, i32 5
  %call133 = call i8* @substitute(i8* %129, i8* %131, %struct.re_registers* %regs132)
  store i8* %call133, i8** %name86, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.129, %if.then.128
  %133 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %force_explicit_name = getelementptr inbounds %struct.regexp, %struct.regexp* %133, i32 0, i32 7
  %134 = load i8, i8* %force_explicit_name, align 1
  %tobool135 = trunc i8 %134 to i1
  br i1 %tobool135, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %if.end.134
  %135 = load i8*, i8** %name86, align 8
  %136 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer137 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %136, i32 0, i32 2
  %137 = load i8*, i8** %buffer137, align 8
  %138 = load i32, i32* %match, align 4
  %139 = load i32, i32* @lineno, align 4
  %140 = load i64, i64* @linecharno, align 8
  call void @pfnote(i8* %135, i1 zeroext true, i8* %137, i32 %138, i32 %139, i64 %140)
  br label %if.end.142

if.else.138:                                      ; preds = %if.end.134
  %141 = load i8*, i8** %name86, align 8
  %142 = load i8*, i8** %name86, align 8
  %call139 = call i64 @strlen(i8* %142) #9
  %conv140 = trunc i64 %call139 to i32
  %143 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer141 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %143, i32 0, i32 2
  %144 = load i8*, i8** %buffer141, align 8
  %145 = load i32, i32* %match, align 4
  %146 = load i32, i32* @lineno, align 4
  %147 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %141, i32 %conv140, i1 zeroext true, i8* %144, i32 %145, i32 %146, i64 %147)
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.138, %if.then.136
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.142, %if.end.122, %sw.bb.115, %if.end.114
  br label %for.inc.143

for.inc.143:                                      ; preds = %sw.epilog, %if.then.104
  %148 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %p_next = getelementptr inbounds %struct.regexp, %struct.regexp* %148, i32 0, i32 0
  %149 = load %struct.regexp*, %struct.regexp** %p_next, align 8
  store %struct.regexp* %149, %struct.regexp** %rp, align 8
  br label %for.cond.90

for.end.144:                                      ; preds = %for.cond.90
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.74, %if.then.82, %if.end.83, %for.end.144, %if.end.85
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @begtoken(i8 zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @begtoken.table, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

declare i32 @c_tolower(i32) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @nocase_tail(i8* %cp) #0 {
entry:
  %retval = alloca i1, align 1
  %cp.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %cp, i8** %cp.addr, align 8
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %cp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @c_tolower(i32 %conv2)
  %4 = load i32, i32* %len, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** @dbp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %6 to i32
  %call4 = call i32 @c_tolower(i32 %conv3)
  %cmp5 = icmp eq i32 %call, %call4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  %9 = load i32, i32* %len, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %cp.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %12 = load i32, i32* %len, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i8*, i8** @dbp, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %call12 = call zeroext i1 @intoken(i8 zeroext %14)
  br i1 %call12, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, i32* %len, align 4
  %16 = load i8*, i8** @dbp, align 8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** @dbp, align 8
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.end
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i1, i1* %retval
  ret i1 %17
}

; Function Attrs: nounwind uwtable
define internal void @Ada_getit(%struct._IO_FILE* %inf, i8* %name_qualifier) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %name_qualifier.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %name = alloca i8*, align 8
  %c = alloca i8, align 1
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  store i8* %name_qualifier, i8** %name_qualifier.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then.17, %if.then.13, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %0)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** @dbp, align 8
  %call1 = call i8* @skip_spaces(i8* %1)
  store i8* %call1, i8** @dbp, align 8
  %2 = load i8*, i8** @dbp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8*, i8** @dbp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 45
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i8*, i8** @dbp, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %while.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %8)
  %9 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %9, i8** @dbp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %10 = load i8*, i8** @dbp, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = sext i8 %11 to i32
  %call11 = call i32 @c_tolower(i32 %conv10)
  switch i32 %call11, label %sw.epilog [
    i32 98, label %sw.bb
    i32 116, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end
  %call12 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0))
  br i1 %call12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.bb
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8** %name_qualifier.addr, align 8
  br label %while.cond

if.end.14:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %call16 = call zeroext i1 @nocase_tail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0))
  br i1 %call16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.15
  br label %while.cond

if.end.18:                                        ; preds = %sw.bb.15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.18, %if.end.14
  %12 = load i8*, i8** @dbp, align 8
  %13 = load i8, i8* %12, align 1
  %conv19 = sext i8 %13 to i32
  %cmp20 = icmp eq i32 %conv19, 34
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %sw.epilog
  %14 = load i8*, i8** @dbp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %add.ptr, i8** @dbp, align 8
  %15 = load i8*, i8** @dbp, align 8
  store i8* %15, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.22
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv23 = sext i8 %17 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load i8*, i8** %cp, align 8
  %19 = load i8, i8* %18, align 1
  %conv26 = sext i8 %19 to i32
  %cmp27 = icmp ne i32 %conv26, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %20 = phi i1 [ false, %for.cond ], [ %cmp27, %land.rhs ]
  br i1 %20, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.49

if.else:                                          ; preds = %sw.epilog
  %22 = load i8*, i8** @dbp, align 8
  %call29 = call i8* @skip_spaces(i8* %22)
  store i8* %call29, i8** @dbp, align 8
  %23 = load i8*, i8** @dbp, align 8
  store i8* %23, i8** %cp, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.42, %if.else
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8, i8* %24, align 1
  %conv31 = sext i8 %25 to i32
  %call32 = call zeroext i1 @c_isalnum(i32 %conv31)
  br i1 %call32, label %lor.end, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %for.cond.30
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8, i8* %26, align 1
  %conv35 = sext i8 %27 to i32
  %cmp36 = icmp eq i32 %conv35, 95
  br i1 %cmp36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.34
  %28 = load i8*, i8** %cp, align 8
  %29 = load i8, i8* %28, align 1
  %conv38 = sext i8 %29 to i32
  %cmp39 = icmp eq i32 %conv38, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.34, %for.cond.30
  %30 = phi i1 [ true, %lor.lhs.false.34 ], [ true, %for.cond.30 ], [ %cmp39, %lor.rhs ]
  br i1 %30, label %for.body.41, label %for.end.44

for.body.41:                                      ; preds = %lor.end
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.41
  %31 = load i8*, i8** %cp, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr43, i8** %cp, align 8
  br label %for.cond.30

for.end.44:                                       ; preds = %lor.end
  %32 = load i8*, i8** %cp, align 8
  %33 = load i8*, i8** @dbp, align 8
  %cmp45 = icmp eq i8* %32, %33
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.end.44
  br label %while.end

if.end.48:                                        ; preds = %for.end.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %for.end
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %c, align 1
  %36 = load i8*, i8** %cp, align 8
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** @dbp, align 8
  %38 = load i8*, i8** %name_qualifier.addr, align 8
  %call50 = call i8* @concat(i8* %37, i8* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call50, i8** %name, align 8
  %39 = load i8, i8* %c, align 1
  %40 = load i8*, i8** %cp, align 8
  store i8 %39, i8* %40, align 1
  %41 = load i8*, i8** %name, align 8
  %42 = load i8*, i8** %name, align 8
  %call51 = call i64 @strlen(i8* %42) #9
  %conv52 = trunc i64 %call51 to i32
  %43 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %44 = load i8*, i8** %cp, align 8
  %45 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv53 = trunc i64 %add to i32
  %46 = load i32, i32* @lineno, align 4
  %47 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %41, i32 %conv52, i1 zeroext true, i8* %43, i32 %conv53, i32 %46, i64 %47)
  %48 = load i8*, i8** %name, align 8
  call void @free(i8* %48) #6
  %49 = load i8, i8* %c, align 1
  %conv54 = sext i8 %49 to i32
  %cmp55 = icmp eq i32 %conv54, 34
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.49
  %50 = load i8*, i8** %cp, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %add.ptr58, i8** @dbp, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.49
  br label %while.end

while.end:                                        ; preds = %if.then.47, %if.end.59, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @endtoken(i8 zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @endtoken.table, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @absolute_filename(i8* %file, i8* %dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %slashp = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %res = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call zeroext i1 @filename_is_absolute(i8* %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 8
  %call1 = call i8* @savestr(i8* %1)
  store i8* %call1, i8** %res, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %dir.addr, align 8
  %3 = load i8*, i8** %file.addr, align 8
  %call2 = call i8* @concat(i8* %2, i8* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call2, i8** %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %res, align 8
  %call3 = call i8* @strchr(i8* %4, i32 47) #9
  store i8* %call3, i8** %slashp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.51, %if.then.45, %if.end.32, %if.end
  %5 = load i8*, i8** %slashp, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %slashp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %slashp, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 46
  br i1 %cmp8, label %if.then.10, label %if.end.51

if.then.10:                                       ; preds = %while.body
  %11 = load i8*, i8** %slashp, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %land.lhs.true, label %if.else.35

land.lhs.true:                                    ; preds = %if.then.10
  %13 = load i8*, i8** %slashp, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %14 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  br i1 %cmp17, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i8*, i8** %slashp, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 3
  %16 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.35

if.then.23:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %17 = load i8*, i8** %slashp, align 8
  store i8* %17, i8** %cp, align 8
  br label %do.body

do.body:                                          ; preds = %land.end.28, %if.then.23
  %18 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8*, i8** %res, align 8
  %cmp24 = icmp uge i8* %19, %20
  br i1 %cmp24, label %land.rhs.26, label %land.end.28

land.rhs.26:                                      ; preds = %do.cond
  %21 = load i8*, i8** %cp, align 8
  %call27 = call zeroext i1 @filename_is_absolute(i8* %21)
  %lnot = xor i1 %call27, true
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.26, %do.cond
  %22 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs.26 ]
  br i1 %22, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.28
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8*, i8** %res, align 8
  %cmp29 = icmp ult i8* %23, %24
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.end
  %25 = load i8*, i8** %slashp, align 8
  store i8* %25, i8** %cp, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %do.end
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8*, i8** %slashp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8*, i8** %slashp, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %28, i64 2
  %call34 = call i64 @strlen(i8* %add.ptr33) #9
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %26, i8* %add.ptr, i64 %call34, i32 1, i1 false)
  %29 = load i8*, i8** %cp, align 8
  store i8* %29, i8** %slashp, align 8
  br label %while.cond

if.else.35:                                       ; preds = %lor.lhs.false, %if.then.10
  %30 = load i8*, i8** %slashp, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %31 to i32
  %cmp38 = icmp eq i32 %conv37, 47
  br i1 %cmp38, label %if.then.45, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.else.35
  %32 = load i8*, i8** %slashp, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %33 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %lor.lhs.false.40, %if.else.35
  %34 = load i8*, i8** %slashp, align 8
  %35 = load i8*, i8** %slashp, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %35, i64 2
  %36 = load i8*, i8** %slashp, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %36, i64 1
  %call48 = call i64 @strlen(i8* %add.ptr47) #9
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %34, i8* %add.ptr46, i64 %call48, i32 1, i1 false)
  br label %while.cond

if.end.49:                                        ; preds = %lor.lhs.false.40
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %while.body
  %37 = load i8*, i8** %slashp, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %37, i64 1
  %call53 = call i8* @strchr(i8* %add.ptr52, i32 47) #9
  store i8* %call53, i8** %slashp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %38 = load i8*, i8** %res, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %39 to i32
  %cmp56 = icmp eq i32 %conv55, 0
  br i1 %cmp56, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %while.end
  %40 = load i8*, i8** %res, align 8
  call void @free(i8* %40) #6
  %call59 = call i8* @savestr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store i8* %call59, i8** %retval
  br label %return

if.else.60:                                       ; preds = %while.end
  %41 = load i8*, i8** %res, align 8
  store i8* %41, i8** %retval
  br label %return

return:                                           ; preds = %if.else.60, %if.then.58
  %42 = load i8*, i8** %retval
  ret i8* %42
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @filename_is_absolute(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal i8* @relative_filename(i8* %file, i8* %dir) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %fp = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %afn = alloca i8*, align 8
  %res = alloca i8*, align 8
  %i = alloca i32, align 4
  %z = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i8*, i8** @cwd, align 8
  %call = call i8* @absolute_filename(i8* %0, i8* %1)
  store i8* %call, i8** %afn, align 8
  %2 = load i8*, i8** %afn, align 8
  store i8* %2, i8** %fp, align 8
  %3 = load i8*, i8** %dir.addr, align 8
  store i8* %3, i8** %dp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i8*, i8** %fp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %fp, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %6 = load i8*, i8** %dp, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr1, i8** %dp, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8*, i8** %fp, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr4, i8** %fp, align 8
  %9 = load i8*, i8** %dp, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %9, i32 -1
  store i8* %incdec.ptr5, i8** %dp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %10 = load i8*, i8** %fp, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr6, i8** %fp, align 8
  %11 = load i8*, i8** %dp, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr7, i8** %dp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load i8*, i8** %fp, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp ne i32 %conv8, 47
  br i1 %cmp9, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.15, %do.end
  %14 = load i8*, i8** %dp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  %call12 = call i8* @strchr(i8* %add.ptr, i32 47) #9
  store i8* %call12, i8** %dp, align 8
  %cmp13 = icmp ne i8* %call12, null
  br i1 %cmp13, label %while.body.15, label %while.end.16

while.body.15:                                    ; preds = %while.cond.11
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  store i32 %add, i32* %i, align 4
  br label %while.cond.11

while.end.16:                                     ; preds = %while.cond.11
  %16 = load i32, i32* %i, align 4
  %mul = mul nsw i32 3, %16
  %conv17 = sext i32 %mul to i64
  %17 = load i8*, i8** %fp, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %17, i64 1
  %call19 = call i64 @strlen(i8* %add.ptr18) #9
  %add20 = add i64 %conv17, %call19
  %add21 = add i64 %add20, 1
  %mul22 = mul i64 %add21, 1
  %call23 = call i8* @xmalloc(i64 %mul22)
  store i8* %call23, i8** %res, align 8
  %18 = load i8*, i8** %res, align 8
  store i8* %18, i8** %z, align 8
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.27, %while.end.16
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  %cmp25 = icmp sgt i32 %19, 0
  br i1 %cmp25, label %while.body.27, label %while.end.29

while.body.27:                                    ; preds = %while.cond.24
  %20 = load i8*, i8** %z, align 8
  %call28 = call i8* @stpcpy(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0)) #6
  store i8* %call28, i8** %z, align 8
  br label %while.cond.24

while.end.29:                                     ; preds = %while.cond.24
  %21 = load i8*, i8** %z, align 8
  %22 = load i8*, i8** %fp, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %22, i64 1
  %call31 = call i8* @strcpy(i8* %21, i8* %add.ptr30) #6
  %23 = load i8*, i8** %afn, align 8
  call void @free(i8* %23) #6
  %24 = load i8*, i8** %res, align 8
  ret i8* %24
}

declare i64 @re_match(%struct.re_pattern_buffer*, i8*, i64, i64, %struct.re_registers*) #4

; Function Attrs: nounwind uwtable
define internal i8* @substitute(i8* %in, i8* %out, %struct.re_registers* %regs) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %regs.addr = alloca %struct.re_registers*, align 8
  %result = alloca i8*, align 8
  %t = alloca i8*, align 8
  %size = alloca i32, align 4
  %dig = alloca i32, align 4
  %diglen = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  store i8* null, i8** %result, align 8
  %0 = load i8*, i8** %out.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %size, align 4
  %1 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %2 = load i8*, i8** %out.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 92
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %out.addr, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.119, i32 0, i32 0), i8* %4) #10
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %out.addr, align 8
  %call3 = call i8* @strchr(i8* %5, i32 92) #9
  store i8* %call3, i8** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i8*, i8** %t, align 8
  %cmp4 = icmp ne i8* %6, null
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %t, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %call8 = call zeroext i1 @c_isdigit(i32 %conv7)
  br i1 %call8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  %9 = load i8*, i8** %t, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %10 to i32
  %sub12 = sub nsw i32 %conv11, 48
  store i32 %sub12, i32* %dig, align 4
  %11 = load i32, i32* %dig, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %12, i32 0, i32 2
  %13 = load i64*, i64** %end, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %13, i64 %idxprom13
  %14 = load i64, i64* %arrayidx14, align 8
  %15 = load i32, i32* %dig, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %16, i32 0, i32 1
  %17 = load i64*, i64** %start, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %17, i64 %idxprom15
  %18 = load i64, i64* %arrayidx16, align 8
  %sub17 = sub nsw i64 %14, %18
  %conv18 = trunc i64 %sub17 to i32
  store i32 %conv18, i32* %diglen, align 4
  %19 = load i32, i32* %diglen, align 4
  %sub19 = sub nsw i32 %19, 2
  %20 = load i32, i32* %size, align 4
  %add = add nsw i32 %20, %sub19
  store i32 %add, i32* %size, align 4
  br label %if.end.21

if.else:                                          ; preds = %for.body
  %21 = load i32, i32* %size, align 4
  %sub20 = sub nsw i32 %21, 1
  store i32 %sub20, i32* %size, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %22 = load i8*, i8** %t, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 2
  %call22 = call i8* @strchr(i8* %add.ptr, i32 92) #9
  store i8* %call22, i8** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %size, align 4
  %add23 = add nsw i32 %23, 1
  %conv24 = sext i32 %add23 to i64
  %mul = mul i64 %conv24, 1
  %call25 = call i8* @xmalloc(i64 %mul)
  store i8* %call25, i8** %result, align 8
  %24 = load i8*, i8** %result, align 8
  store i8* %24, i8** %t, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.57, %for.end
  %25 = load i8*, i8** %out.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv27 = sext i8 %26 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %for.body.30, label %for.end.59

for.body.30:                                      ; preds = %for.cond.26
  %27 = load i8*, i8** %out.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv31 = sext i8 %28 to i32
  %cmp32 = icmp eq i32 %conv31, 92
  br i1 %cmp32, label %land.lhs.true, label %if.else.54

land.lhs.true:                                    ; preds = %for.body.30
  %29 = load i8*, i8** %out.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8
  %30 = load i8, i8* %incdec.ptr, align 1
  %conv34 = sext i8 %30 to i32
  %call35 = call zeroext i1 @c_isdigit(i32 %conv34)
  br i1 %call35, label %if.then.37, label %if.else.54

if.then.37:                                       ; preds = %land.lhs.true
  %31 = load i8*, i8** %out.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv38 = sext i8 %32 to i32
  %sub39 = sub nsw i32 %conv38, 48
  store i32 %sub39, i32* %dig, align 4
  %33 = load i32, i32* %dig, align 4
  %idxprom40 = sext i32 %33 to i64
  %34 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end41 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %34, i32 0, i32 2
  %35 = load i64*, i64** %end41, align 8
  %arrayidx42 = getelementptr inbounds i64, i64* %35, i64 %idxprom40
  %36 = load i64, i64* %arrayidx42, align 8
  %37 = load i32, i32* %dig, align 4
  %idxprom43 = sext i32 %37 to i64
  %38 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start44 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %38, i32 0, i32 1
  %39 = load i64*, i64** %start44, align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %39, i64 %idxprom43
  %40 = load i64, i64* %arrayidx45, align 8
  %sub46 = sub nsw i64 %36, %40
  %conv47 = trunc i64 %sub46 to i32
  store i32 %conv47, i32* %diglen, align 4
  %41 = load i8*, i8** %t, align 8
  %42 = load i8*, i8** %in.addr, align 8
  %43 = load i32, i32* %dig, align 4
  %idxprom48 = sext i32 %43 to i64
  %44 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start49 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %44, i32 0, i32 1
  %45 = load i64*, i64** %start49, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %45, i64 %idxprom48
  %46 = load i64, i64* %arrayidx50, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %42, i64 %46
  %47 = load i32, i32* %diglen, align 4
  %conv52 = sext i32 %47 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %add.ptr51, i64 %conv52, i32 1, i1 false)
  %48 = load i32, i32* %diglen, align 4
  %49 = load i8*, i8** %t, align 8
  %idx.ext = sext i32 %48 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %49, i64 %idx.ext
  store i8* %add.ptr53, i8** %t, align 8
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true, %for.body.30
  %50 = load i8*, i8** %out.addr, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %t, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr55, i8** %t, align 8
  store i8 %51, i8* %52, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.37
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %53 = load i8*, i8** %out.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr58, i8** %out.addr, align 8
  br label %for.cond.26

for.end.59:                                       ; preds = %for.cond.26
  %54 = load i8*, i8** %t, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %result, align 8
  ret i8* %55
}

; Function Attrs: nounwind uwtable
define internal void @pfnote(i8* %name, i1 zeroext %is_func, i8* %linestart, i32 %linelen, i32 %lno, i64 %cno) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %is_func.addr = alloca i8, align 1
  %linestart.addr = alloca i8*, align 8
  %linelen.addr = alloca i32, align 4
  %lno.addr = alloca i32, align 4
  %cno.addr = alloca i64, align 8
  %np = alloca %struct.node_st*, align 8
  store i8* %name, i8** %name.addr, align 8
  %frombool = zext i1 %is_func to i8
  store i8 %frombool, i8* %is_func.addr, align 1
  store i8* %linestart, i8** %linestart.addr, align 8
  store i32 %linelen, i32* %linelen.addr, align 4
  store i32 %lno, i32* %lno.addr, align 4
  store i64 %cno, i64* %cno.addr, align 8
  %call = call i8* @xmalloc(i64 56)
  %0 = bitcast i8* %call to %struct.node_st*
  store %struct.node_st* %0, %struct.node_st** %np, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.node_st*, %struct.node_st** %np, align 8
  %name1 = getelementptr inbounds %struct.node_st, %struct.node_st* %2, i32 0, i32 3
  store i8* %1, i8** %name1, align 8
  %3 = load %struct.node_st*, %struct.node_st** %np, align 8
  %valid = getelementptr inbounds %struct.node_st, %struct.node_st* %3, i32 0, i32 5
  store i8 1, i8* %valid, align 1
  %4 = load %struct.node_st*, %struct.node_st** %np, align 8
  %been_warned = getelementptr inbounds %struct.node_st, %struct.node_st* %4, i32 0, i32 7
  store i8 0, i8* %been_warned, align 1
  %5 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %6 = load %struct.node_st*, %struct.node_st** %np, align 8
  %fdp = getelementptr inbounds %struct.node_st, %struct.node_st* %6, i32 0, i32 2
  store %struct.fdesc* %5, %struct.fdesc** %fdp, align 8
  %7 = load i8, i8* %is_func.addr, align 1
  %tobool = trunc i8 %7 to i1
  %8 = load %struct.node_st*, %struct.node_st** %np, align 8
  %is_func2 = getelementptr inbounds %struct.node_st, %struct.node_st* %8, i32 0, i32 6
  %frombool3 = zext i1 %tobool to i8
  store i8 %frombool3, i8* %is_func2, align 1
  %9 = load i32, i32* %lno.addr, align 4
  %10 = load %struct.node_st*, %struct.node_st** %np, align 8
  %lno4 = getelementptr inbounds %struct.node_st, %struct.node_st* %10, i32 0, i32 8
  store i32 %9, i32* %lno4, align 4
  %11 = load %struct.node_st*, %struct.node_st** %np, align 8
  %fdp5 = getelementptr inbounds %struct.node_st, %struct.node_st* %11, i32 0, i32 2
  %12 = load %struct.fdesc*, %struct.fdesc** %fdp5, align 8
  %usecharno = getelementptr inbounds %struct.fdesc, %struct.fdesc* %12, i32 0, i32 7
  %13 = load i8, i8* %usecharno, align 1
  %tobool6 = trunc i8 %13 to i1
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i64, i64* %cno.addr, align 8
  %15 = load %struct.node_st*, %struct.node_st** %np, align 8
  %cno7 = getelementptr inbounds %struct.node_st, %struct.node_st* %15, i32 0, i32 9
  store i64 %14, i64* %cno7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.node_st*, %struct.node_st** %np, align 8
  %cno8 = getelementptr inbounds %struct.node_st, %struct.node_st* %16, i32 0, i32 9
  store i64 -1, i64* %cno8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.node_st*, %struct.node_st** %np, align 8
  %right = getelementptr inbounds %struct.node_st, %struct.node_st* %17, i32 0, i32 1
  store %struct.node_st* null, %struct.node_st** %right, align 8
  %18 = load %struct.node_st*, %struct.node_st** %np, align 8
  %left = getelementptr inbounds %struct.node_st, %struct.node_st* %18, i32 0, i32 0
  store %struct.node_st* null, %struct.node_st** %left, align 8
  %19 = load i8*, i8** %linestart.addr, align 8
  %20 = load i32, i32* %linelen.addr, align 4
  %call9 = call i8* @savenstr(i8* %19, i32 %20)
  %21 = load %struct.node_st*, %struct.node_st** %np, align 8
  %regex = getelementptr inbounds %struct.node_st, %struct.node_st* %21, i32 0, i32 4
  store i8* %call9, i8** %regex, align 8
  %22 = load %struct.node_st*, %struct.node_st** %np, align 8
  call void @add_node(%struct.node_st* %22, %struct.node_st** @nodehead)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_tag(i8* %name, i32 %namelen, i1 zeroext %is_func, i8* %linestart, i32 %linelen, i32 %lno, i64 %cno) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %is_func.addr = alloca i8, align 1
  %linestart.addr = alloca i8*, align 8
  %linelen.addr = alloca i32, align 4
  %lno.addr = alloca i32, align 4
  %cno.addr = alloca i64, align 8
  %named = alloca i8, align 1
  %nname = alloca i8*, align 8
  %i = alloca i32, align 4
  %cp = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %namelen, i32* %namelen.addr, align 4
  %frombool = zext i1 %is_func to i8
  store i8 %frombool, i8* %is_func.addr, align 1
  store i8* %linestart, i8** %linestart.addr, align 8
  store i32 %linelen, i32* %linelen.addr, align 4
  store i32 %lno, i32* %lno.addr, align 4
  store i64 %cno, i64* %cno.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %namelen.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %frombool2 = zext i1 %2 to i8
  store i8 %frombool2, i8* %named, align 1
  store i8* null, i8** %nname, align 8
  %3 = load i8, i8* %named, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.end
  %4 = load i8*, i8** %name.addr, align 8
  store i8* %4, i8** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %namelen.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %call = call zeroext i1 @notinname(i8 zeroext %8)
  br i1 %call, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %for.cond
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %namelen.addr, align 4
  %cmp5 = icmp eq i32 %10, %11
  br i1 %cmp5, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %for.end
  %12 = load i8*, i8** %linestart.addr, align 8
  %13 = load i32, i32* %linelen.addr, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load i32, i32* %namelen.addr, align 4
  %idx.ext7 = sext i32 %14 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  store i8* %add.ptr8, i8** %cp, align 8
  %15 = load i32, i32* %linelen.addr, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom = sext i32 %sub to i64
  %16 = load i8*, i8** %linestart.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %call9 = call zeroext i1 @notinname(i8 zeroext %17)
  br i1 %call9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.6
  %18 = load i8*, i8** %cp, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %add.ptr11, i8** %cp, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.6
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8*, i8** %linestart.addr, align 8
  %cmp13 = icmp uge i8* %19, %20
  br i1 %cmp13, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.12
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8*, i8** %linestart.addr, align 8
  %cmp14 = icmp eq i8* %21, %22
  br i1 %cmp14, label %land.lhs.true.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %23 = load i8*, i8** %cp, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 -1
  %24 = load i8, i8* %arrayidx15, align 1
  %call16 = call zeroext i1 @notinname(i8 zeroext %24)
  br i1 %call16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %25 = load i8*, i8** %name.addr, align 8
  %26 = load i8*, i8** %cp, align 8
  %27 = load i32, i32* %namelen.addr, align 4
  %conv = sext i32 %27 to i64
  %call18 = call zeroext i1 @strneq(i8* %25, i8* %26, i64 %conv)
  br i1 %call18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.17
  store i8 0, i8* %named, align 1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.17, %lor.lhs.false, %if.end.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %for.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.end
  %28 = load i8, i8* %named, align 1
  %tobool24 = trunc i8 %28 to i1
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.23
  %29 = load i8*, i8** %name.addr, align 8
  %30 = load i32, i32* %namelen.addr, align 4
  %call26 = call i8* @savenstr(i8* %29, i32 %30)
  store i8* %call26, i8** %nname, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.23
  %31 = load i8*, i8** %nname, align 8
  %32 = load i8, i8* %is_func.addr, align 1
  %tobool28 = trunc i8 %32 to i1
  %33 = load i8*, i8** %linestart.addr, align 8
  %34 = load i32, i32* %linelen.addr, align 4
  %35 = load i32, i32* %lno.addr, align 4
  %36 = load i64, i64* %cno.addr, align 8
  call void @pfnote(i8* %31, i1 zeroext %tobool28, i8* %33, i32 %34, i32 %35, i64 %36)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare zeroext i1 @c_isdigit(i32) #4

; Function Attrs: nounwind uwtable
define internal i8* @savenstr(i8* %cp, i32 %len) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %dp = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @xmalloc(i64 %mul)
  store i8* %call, i8** %dp, align 8
  %1 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %dp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %3 = load i8*, i8** %dp, align 8
  %4 = load i8*, i8** %cp.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %conv1 = sext i32 %5 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %conv1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal void @add_node(%struct.node_st* %np, %struct.node_st** %cur_node_p) #0 {
entry:
  %np.addr = alloca %struct.node_st*, align 8
  %cur_node_p.addr = alloca %struct.node_st**, align 8
  %dif = alloca i32, align 4
  %cur_node = alloca %struct.node_st*, align 8
  store %struct.node_st* %np, %struct.node_st** %np.addr, align 8
  store %struct.node_st** %cur_node_p, %struct.node_st*** %cur_node_p.addr, align 8
  %0 = load %struct.node_st**, %struct.node_st*** %cur_node_p.addr, align 8
  %1 = load %struct.node_st*, %struct.node_st** %0, align 8
  store %struct.node_st* %1, %struct.node_st** %cur_node, align 8
  %2 = load %struct.node_st*, %struct.node_st** %cur_node, align 8
  %cmp = icmp eq %struct.node_st* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %4 = load %struct.node_st**, %struct.node_st*** %cur_node_p.addr, align 8
  store %struct.node_st* %3, %struct.node_st** %4, align 8
  %5 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  store %struct.node_st* %5, %struct.node_st** @last_node, align 8
  br label %if.end.12

if.end:                                           ; preds = %entry
  %6 = load %struct.node_st*, %struct.node_st** @last_node, align 8
  %cmp1 = icmp ne %struct.node_st* %6, null
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.node_st*, %struct.node_st** @last_node, align 8
  %fdp = getelementptr inbounds %struct.node_st, %struct.node_st* %7, i32 0, i32 2
  %8 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %9 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %fdp2 = getelementptr inbounds %struct.node_st, %struct.node_st* %9, i32 0, i32 2
  %10 = load %struct.fdesc*, %struct.fdesc** %fdp2, align 8
  %cmp3 = icmp eq %struct.fdesc* %8, %10
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  %11 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %12 = load %struct.node_st*, %struct.node_st** @last_node, align 8
  %right = getelementptr inbounds %struct.node_st, %struct.node_st* %12, i32 0, i32 1
  store %struct.node_st* %11, %struct.node_st** %right, align 8
  %13 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  store %struct.node_st* %13, %struct.node_st** @last_node, align 8
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %if.end
  %14 = load %struct.node_st*, %struct.node_st** %cur_node, align 8
  %fdp5 = getelementptr inbounds %struct.node_st, %struct.node_st* %14, i32 0, i32 2
  %15 = load %struct.fdesc*, %struct.fdesc** %fdp5, align 8
  %16 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %fdp6 = getelementptr inbounds %struct.node_st, %struct.node_st* %16, i32 0, i32 2
  %17 = load %struct.fdesc*, %struct.fdesc** %fdp6, align 8
  %cmp7 = icmp eq %struct.fdesc* %15, %17
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %18 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %19 = load %struct.node_st*, %struct.node_st** %cur_node, align 8
  %right9 = getelementptr inbounds %struct.node_st, %struct.node_st* %19, i32 0, i32 1
  call void @add_node(%struct.node_st* %18, %struct.node_st** %right9)
  br label %if.end.11

if.else.10:                                       ; preds = %if.else
  %20 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %21 = load %struct.node_st*, %struct.node_st** %cur_node, align 8
  %left = getelementptr inbounds %struct.node_st, %struct.node_st* %21, i32 0, i32 0
  call void @add_node(%struct.node_st* %20, %struct.node_st** %left)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then, %if.end.11, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @notinname(i8 zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @notinname.table, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @intoken(i8 zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @intoken.table, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define internal i8* @skip_spaces(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call zeroext i1 @c_isspace(i32 %conv)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** %cp.addr, align 8
  ret i8* %3
}

declare zeroext i1 @c_isalnum(i32) #4

declare zeroext i1 @c_isspace(i32) #4

declare zeroext i1 @c_isalpha(i32) #4

; Function Attrs: nounwind uwtable
define internal void @C_entries(i32 %c_ext, %struct._IO_FILE* %inf) #0 {
entry:
  %c_ext.addr = alloca i32, align 4
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i8, align 1
  %lp = alloca i8*, align 8
  %curndx = alloca i32, align 4
  %newndx = alloca i32, align 4
  %tokoff = alloca i32, align 4
  %toklen = alloca i32, align 4
  %qualifier = alloca i8*, align 8
  %qlen = alloca i32, align 4
  %bracelev = alloca i32, align 4
  %bracketlev = alloca i32, align 4
  %parlev = alloca i32, align 4
  %attrparlev = alloca i32, align 4
  %templatelev = alloca i32, align 4
  %typdefbracelev = alloca i32, align 4
  %incomm = alloca i8, align 1
  %inquote = alloca i8, align 1
  %inchar = alloca i8, align 1
  %quotednl = alloca i8, align 1
  %midtoken = alloca i8, align 1
  %yacc_rules = alloca i8, align 1
  %savetoken = alloca %struct.tok, align 8
  %cp = alloca i8*, align 8
  %cpptoken = alloca i8, align 1
  %funorvar = alloca i8, align 1
  %oldlp = alloca i8*, align 8
  %len = alloca i32, align 4
  %len352 = alloca i32, align 4
  %defun = alloca i8, align 1
  %off = alloca i32, align 4
  %len395 = alloca i32, align 4
  %toklen615 = alloca i32, align 4
  %cc = alloca i8*, align 8
  %uqname = alloca i8*, align 8
  %tok_end = alloca i8*, align 8
  %uqlen = alloca i32, align 4
  store i32 %c_ext, i32* %c_ext.addr, align 4
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = bitcast %struct.tok* %savetoken to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 8, i1 false)
  call void @linebuffer_init(%struct.linebuffer* getelementptr inbounds ([2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 0, i32 1))
  call void @linebuffer_init(%struct.linebuffer* getelementptr inbounds ([2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 1, i32 1))
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 3), align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @xmalloc(i64 %mul)
  %3 = bitcast i8* %call to i8**
  store i8** %3, i8*** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 0), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 3), align 4
  %conv1 = sext i32 %4 to i64
  %mul2 = mul i64 %conv1, 4
  %call3 = call i8* @xmalloc(i64 %mul2)
  %5 = bitcast i8* %call3 to i32*
  store i32* %5, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %typdefbracelev, align 4
  store i32 0, i32* %toklen, align 4
  store i32 0, i32* %tokoff, align 4
  store i32 0, i32* %newndx, align 4
  store i32 0, i32* %curndx, align 4
  %6 = load i32, i32* %curndx, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom
  %lb = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  store i8* %7, i8** %lp, align 8
  %8 = load i8*, i8** %lp, align 8
  store i8 0, i8* %8, align 1
  store i32 0, i32* @fvdef, align 4
  store i8 0, i8* @fvextern, align 1
  store i32 0, i32* @typdef, align 4
  store i32 0, i32* @structdef, align 4
  store i32 0, i32* @definedef, align 4
  store i32 0, i32* @objdef, align 4
  store i8 0, i8* %yacc_rules, align 1
  store i8 0, i8* %quotednl, align 1
  store i8 0, i8* %incomm, align 1
  store i8 0, i8* %inchar, align 1
  store i8 0, i8* %inquote, align 1
  store i8 0, i8* %midtoken, align 1
  %valid = getelementptr inbounds %struct.tok, %struct.tok* %savetoken, i32 0, i32 3
  store i8 0, i8* %valid, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  store i32 0, i32* %templatelev, align 4
  store i32 0, i32* %attrparlev, align 4
  store i32 0, i32* %parlev, align 4
  store i32 0, i32* %bracketlev, align 4
  store i32 0, i32* %bracelev, align 4
  %9 = load i32, i32* %c_ext.addr, align 4
  %and = and i32 %9, 5
  %cmp4 = icmp eq i32 %and, 5
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i32 0, i32 0), i8** %qualifier, align 8
  store i32 1, i32* %qlen, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8** %qualifier, align 8
  store i32 2, i32* %qlen, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.1230, %if.end.588, %sw.bb.547, %still_in_token, %if.end.222, %sw.bb.195, %if.end.194, %if.then.136, %if.then.120, %if.end.111, %if.then.98, %sw.epilog.94, %if.then.88, %sw.epilog.82, %sw.epilog.56, %sw.epilog, %if.then.16, %if.end.7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call8 = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %10)
  br i1 %call8, label %while.body, label %while.end.1231

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %lp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %lp, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %c, align 1
  %13 = load i8, i8* %c, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, 92
  br i1 %cmp10, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %while.body
  %14 = load i8*, i8** %lp, align 8
  %15 = load i8, i8* %14, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.12
  store i8 1, i8* %quotednl, align 1
  br label %while.cond

if.end.17:                                        ; preds = %if.then.12
  %16 = load i8*, i8** %lp, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %lp, align 8
  store i8 32, i8* %c, align 1
  br label %if.end.228

if.else.19:                                       ; preds = %while.body
  %17 = load i8, i8* %incomm, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %if.then.20, label %if.else.38

if.then.20:                                       ; preds = %if.else.19
  %18 = load i8, i8* %c, align 1
  %conv21 = sext i8 %18 to i32
  switch i32 %conv21, label %sw.epilog [
    i32 42, label %sw.bb
    i32 0, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.then.20
  %19 = load i8*, i8** %lp, align 8
  %20 = load i8, i8* %19, align 1
  %conv22 = sext i8 %20 to i32
  %cmp23 = icmp eq i32 %conv22, 47
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %sw.bb
  %21 = load i8*, i8** %lp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr26, i8** %lp, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %c, align 1
  store i8 0, i8* %incomm, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %sw.bb
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.then.20
  br label %do.body

do.body:                                          ; preds = %sw.bb.28
  %23 = load i64, i64* @charno, align 8
  %24 = load i32, i32* %curndx, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom29
  %linepos = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx30, i32 0, i32 0
  store i64 %23, i64* %linepos, align 8
  %25 = load i32, i32* %curndx, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom31
  %lb33 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx32, i32 0, i32 1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* %lb33, %struct._IO_FILE* %26)
  %27 = load i32, i32* %curndx, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom34
  %lb36 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx35, i32 0, i32 1
  %buffer37 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb36, i32 0, i32 2
  %28 = load i8*, i8** %buffer37, align 8
  store i8* %28, i8** %lp, align 8
  store i8 0, i8* %quotednl, align 1
  %29 = load i32, i32* %curndx, align 4
  store i32 %29, i32* %newndx, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.20, %do.end, %if.end.27
  br label %while.cond

if.else.38:                                       ; preds = %if.else.19
  %30 = load i8, i8* %inquote, align 1
  %tobool39 = trunc i8 %30 to i1
  br i1 %tobool39, label %if.then.40, label %if.else.57

if.then.40:                                       ; preds = %if.else.38
  %31 = load i8, i8* %c, align 1
  %conv41 = sext i8 %31 to i32
  switch i32 %conv41, label %sw.epilog.56 [
    i32 34, label %sw.bb.42
    i32 0, label %sw.bb.43
  ]

sw.bb.42:                                         ; preds = %if.then.40
  store i8 0, i8* %inquote, align 1
  br label %sw.epilog.56

sw.bb.43:                                         ; preds = %if.then.40
  br label %do.body.44

do.body.44:                                       ; preds = %sw.bb.43
  %32 = load i64, i64* @charno, align 8
  %33 = load i32, i32* %curndx, align 4
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom45
  %linepos47 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx46, i32 0, i32 0
  store i64 %32, i64* %linepos47, align 8
  %34 = load i32, i32* %curndx, align 4
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom48
  %lb50 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx49, i32 0, i32 1
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* %lb50, %struct._IO_FILE* %35)
  %36 = load i32, i32* %curndx, align 4
  %idxprom51 = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom51
  %lb53 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx52, i32 0, i32 1
  %buffer54 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb53, i32 0, i32 2
  %37 = load i8*, i8** %buffer54, align 8
  store i8* %37, i8** %lp, align 8
  store i8 0, i8* %quotednl, align 1
  %38 = load i32, i32* %curndx, align 4
  store i32 %38, i32* %newndx, align 4
  br label %do.end.55

do.end.55:                                        ; preds = %do.body.44
  br label %sw.epilog.56

sw.epilog.56:                                     ; preds = %if.then.40, %do.end.55, %sw.bb.42
  br label %while.cond

if.else.57:                                       ; preds = %if.else.38
  %39 = load i8, i8* %inchar, align 1
  %tobool58 = trunc i8 %39 to i1
  br i1 %tobool58, label %if.then.59, label %if.else.83

if.then.59:                                       ; preds = %if.else.57
  %40 = load i8, i8* %c, align 1
  %conv60 = sext i8 %40 to i32
  switch i32 %conv60, label %sw.epilog.82 [
    i32 0, label %sw.bb.61
    i32 39, label %sw.bb.81
  ]

sw.bb.61:                                         ; preds = %if.then.59
  br label %do.body.62

do.body.62:                                       ; preds = %sw.bb.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.body.62
  %41 = load i64, i64* @charno, align 8
  %42 = load i32, i32* %curndx, align 4
  %idxprom64 = sext i32 %42 to i64
  %arrayidx65 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom64
  %linepos66 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx65, i32 0, i32 0
  store i64 %41, i64* %linepos66, align 8
  %43 = load i32, i32* %curndx, align 4
  %idxprom67 = sext i32 %43 to i64
  %arrayidx68 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom67
  %lb69 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx68, i32 0, i32 1
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* %lb69, %struct._IO_FILE* %44)
  %45 = load i32, i32* %curndx, align 4
  %idxprom70 = sext i32 %45 to i64
  %arrayidx71 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom70
  %lb72 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx71, i32 0, i32 1
  %buffer73 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb72, i32 0, i32 2
  %46 = load i8*, i8** %buffer73, align 8
  store i8* %46, i8** %lp, align 8
  store i8 0, i8* %quotednl, align 1
  %47 = load i32, i32* %curndx, align 4
  store i32 %47, i32* %newndx, align 4
  br label %do.end.74

do.end.74:                                        ; preds = %do.body.63
  %valid75 = getelementptr inbounds %struct.tok, %struct.tok* %savetoken, i32 0, i32 3
  %48 = load i8, i8* %valid75, align 1
  %tobool76 = trunc i8 %48 to i1
  br i1 %tobool76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %do.end.74
  %49 = bitcast %struct.tok* %savetoken to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.tok* @token to i8*), i8* %49, i64 32, i32 8, i1 false)
  %valid78 = getelementptr inbounds %struct.tok, %struct.tok* %savetoken, i32 0, i32 3
  store i8 0, i8* %valid78, align 1
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %do.end.74
  store i32 0, i32* @definedef, align 4
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %sw.bb.81

sw.bb.81:                                         ; preds = %if.then.59, %do.end.80
  store i8 0, i8* %inchar, align 1
  br label %sw.epilog.82

sw.epilog.82:                                     ; preds = %if.then.59, %sw.bb.81
  br label %while.cond

if.else.83:                                       ; preds = %if.else.57
  %50 = load i8, i8* %c, align 1
  %conv84 = sext i8 %50 to i32
  switch i32 %conv84, label %sw.default.196 [
    i32 34, label %sw.bb.85
    i32 39, label %sw.bb.95
    i32 47, label %sw.bb.112
    i32 37, label %sw.bb.129
    i32 35, label %sw.bb.140
    i32 91, label %sw.bb.195
  ]

sw.bb.85:                                         ; preds = %if.else.83
  store i8 1, i8* %inquote, align 1
  %51 = load i32, i32* %bracketlev, align 4
  %cmp86 = icmp sgt i32 %51, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %sw.bb.85
  br label %while.cond

if.end.89:                                        ; preds = %sw.bb.85
  %52 = load i8, i8* @inattribute, align 1
  %tobool90 = trunc i8 %52 to i1
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.89
  br label %sw.epilog.224

if.end.92:                                        ; preds = %if.end.89
  %53 = load i32, i32* @fvdef, align 4
  switch i32 %53, label %sw.default [
    i32 1, label %sw.bb.93
    i32 5, label %sw.bb.93
    i32 6, label %sw.bb.93
    i32 8, label %sw.bb.93
    i32 9, label %sw.bb.93
  ]

sw.bb.93:                                         ; preds = %if.end.92, %if.end.92, %if.end.92, %if.end.92, %if.end.92
  br label %sw.epilog.94

sw.default:                                       ; preds = %if.end.92
  store i8 0, i8* @fvextern, align 1
  store i32 0, i32* @fvdef, align 4
  br label %sw.epilog.94

sw.epilog.94:                                     ; preds = %sw.default, %sw.bb.93
  br label %while.cond

sw.bb.95:                                         ; preds = %if.else.83
  store i8 1, i8* %inchar, align 1
  %54 = load i32, i32* %bracketlev, align 4
  %cmp96 = icmp sgt i32 %54, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %sw.bb.95
  br label %while.cond

if.end.99:                                        ; preds = %sw.bb.95
  %55 = load i8, i8* @inattribute, align 1
  %tobool100 = trunc i8 %55 to i1
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.99
  br label %sw.epilog.224

if.end.102:                                       ; preds = %if.end.99
  %56 = load i32, i32* @fvdef, align 4
  %cmp103 = icmp ne i32 %56, 6
  br i1 %cmp103, label %land.lhs.true, label %if.end.111

land.lhs.true:                                    ; preds = %if.end.102
  %57 = load i32, i32* @fvdef, align 4
  %cmp105 = icmp ne i32 %57, 8
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.111

land.lhs.true.107:                                ; preds = %land.lhs.true
  %58 = load i32, i32* @fvdef, align 4
  %cmp108 = icmp ne i32 %58, 9
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %land.lhs.true.107
  store i8 0, i8* @fvextern, align 1
  store i32 0, i32* @fvdef, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %land.lhs.true.107, %land.lhs.true, %if.end.102
  br label %while.cond

sw.bb.112:                                        ; preds = %if.else.83
  %59 = load i8*, i8** %lp, align 8
  %60 = load i8, i8* %59, align 1
  %conv113 = sext i8 %60 to i32
  %cmp114 = icmp eq i32 %conv113, 42
  br i1 %cmp114, label %if.then.116, label %if.else.122

if.then.116:                                      ; preds = %sw.bb.112
  store i8 1, i8* %incomm, align 1
  %61 = load i8*, i8** %lp, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr117, i8** %lp, align 8
  store i8 32, i8* %c, align 1
  %62 = load i32, i32* %bracketlev, align 4
  %cmp118 = icmp sgt i32 %62, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.then.116
  br label %while.cond

if.end.121:                                       ; preds = %if.then.116
  br label %if.end.128

if.else.122:                                      ; preds = %sw.bb.112
  %63 = load i8*, i8** %lp, align 8
  %64 = load i8, i8* %63, align 1
  %conv123 = sext i8 %64 to i32
  %cmp124 = icmp eq i32 %conv123, 47
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.else.122
  store i8 0, i8* %c, align 1
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.else.122
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.121
  br label %sw.epilog.224

sw.bb.129:                                        ; preds = %if.else.83
  %65 = load i32, i32* %c_ext.addr, align 4
  %and130 = and i32 %65, 65536
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %land.lhs.true.132, label %if.else.139

land.lhs.true.132:                                ; preds = %sw.bb.129
  %66 = load i8*, i8** %lp, align 8
  %67 = load i8, i8* %66, align 1
  %conv133 = sext i8 %67 to i32
  %cmp134 = icmp eq i32 %conv133, 37
  br i1 %cmp134, label %if.then.136, label %if.else.139

if.then.136:                                      ; preds = %land.lhs.true.132
  %68 = load i8*, i8** %lp, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr137, i8** %lp, align 8
  store i32 0, i32* @definedef, align 4
  store i32 0, i32* @fvdef, align 4
  store i8 0, i8* @fvextern, align 1
  store i32 0, i32* @typdef, align 4
  store i32 0, i32* @structdef, align 4
  store i8 0, i8* %quotednl, align 1
  store i8 0, i8* %incomm, align 1
  store i8 0, i8* %inchar, align 1
  store i8 0, i8* %inquote, align 1
  store i8 0, i8* %midtoken, align 1
  store i32 0, i32* %bracelev, align 4
  %69 = load i8, i8* %yacc_rules, align 1
  %tobool138 = trunc i8 %69 to i1
  %lnot = xor i1 %tobool138, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %yacc_rules, align 1
  br label %while.cond

if.else.139:                                      ; preds = %land.lhs.true.132, %sw.bb.129
  br label %sw.epilog.224

sw.bb.140:                                        ; preds = %if.else.83
  %70 = load i32, i32* @definedef, align 4
  %cmp141 = icmp eq i32 %70, 0
  br i1 %cmp141, label %if.then.143, label %if.end.194

if.then.143:                                      ; preds = %sw.bb.140
  store i8 1, i8* %cpptoken, align 1
  %71 = load i32, i32* %newndx, align 4
  %idxprom144 = sext i32 %71 to i64
  %arrayidx145 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom144
  %lb146 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx145, i32 0, i32 1
  %buffer147 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb146, i32 0, i32 2
  %72 = load i8*, i8** %buffer147, align 8
  store i8* %72, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.143
  %73 = load i8*, i8** %cp, align 8
  %74 = load i8*, i8** %lp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %74, i64 -1
  %cmp148 = icmp ult i8* %73, %add.ptr
  br i1 %cmp148, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i8*, i8** %cp, align 8
  %76 = load i8, i8* %75, align 1
  %conv150 = sext i8 %76 to i32
  %call151 = call zeroext i1 @c_isspace(i32 %conv150)
  br i1 %call151, label %if.end.165, label %if.then.152

if.then.152:                                      ; preds = %for.body
  %77 = load i8*, i8** %cp, align 8
  %78 = load i8, i8* %77, align 1
  %conv153 = sext i8 %78 to i32
  %cmp154 = icmp eq i32 %conv153, 42
  br i1 %cmp154, label %land.lhs.true.156, label %if.else.163

land.lhs.true.156:                                ; preds = %if.then.152
  %79 = load i8*, i8** %cp, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load i8, i8* %arrayidx157, align 1
  %conv158 = sext i8 %80 to i32
  %cmp159 = icmp eq i32 %conv158, 47
  br i1 %cmp159, label %if.then.161, label %if.else.163

if.then.161:                                      ; preds = %land.lhs.true.156
  %81 = load i8*, i8** %cp, align 8
  %incdec.ptr162 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr162, i8** %cp, align 8
  store i8 1, i8* %cpptoken, align 1
  br label %if.end.164

if.else.163:                                      ; preds = %land.lhs.true.156, %if.then.152
  store i8 0, i8* %cpptoken, align 1
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.163, %if.then.161
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.165
  %82 = load i8*, i8** %cp, align 8
  %incdec.ptr166 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr166, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load i8, i8* %cpptoken, align 1
  %tobool167 = trunc i8 %83 to i1
  br i1 %tobool167, label %if.then.168, label %if.end.193

if.then.168:                                      ; preds = %for.end
  store i32 1, i32* @definedef, align 4
  %84 = load i32, i32* @fvdef, align 4
  %cmp169 = icmp eq i32 %84, 9
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.192

land.lhs.true.171:                                ; preds = %if.then.168
  %85 = load i32, i32* @structdef, align 4
  %cmp172 = icmp eq i32 %85, 0
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.192

land.lhs.true.174:                                ; preds = %land.lhs.true.171
  %86 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp175 = icmp sgt i32 %86, 0
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.192

land.lhs.true.177:                                ; preds = %land.lhs.true.174
  %87 = load i32, i32* %bracelev, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub = sub nsw i32 %88, 1
  %idxprom178 = sext i32 %sub to i64
  %89 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %89, i64 %idxprom178
  %90 = load i32, i32* %arrayidx179, align 4
  %add = add nsw i32 %90, 1
  %cmp180 = icmp eq i32 %87, %add
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.192

land.lhs.true.182:                                ; preds = %land.lhs.true.177
  %91 = load i32, i32* %parlev, align 4
  %cmp183 = icmp eq i32 %91, 0
  br i1 %cmp183, label %if.then.185, label %if.end.192

if.then.185:                                      ; preds = %land.lhs.true.182
  %92 = load i8*, i8** %cp, align 8
  %call186 = call zeroext i1 @strneq(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i64 3)
  br i1 %call186, label %if.then.190, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.185
  %93 = load i8*, i8** %cp, align 8
  %call188 = call zeroext i1 @strneq(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i64 3)
  br i1 %call188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %lor.lhs.false, %if.then.185
  store i32 0, i32* @fvdef, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %lor.lhs.false
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %land.lhs.true.182, %land.lhs.true.177, %land.lhs.true.174, %land.lhs.true.171, %if.then.168
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %for.end
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %sw.bb.140
  br label %while.cond

sw.bb.195:                                        ; preds = %if.else.83
  %94 = load i32, i32* %bracketlev, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %bracketlev, align 4
  br label %while.cond

sw.default.196:                                   ; preds = %if.else.83
  %95 = load i32, i32* %bracketlev, align 4
  %cmp197 = icmp sgt i32 %95, 0
  br i1 %cmp197, label %if.then.199, label %if.end.223

if.then.199:                                      ; preds = %sw.default.196
  %96 = load i8, i8* %c, align 1
  %conv200 = sext i8 %96 to i32
  %cmp201 = icmp eq i32 %conv200, 93
  br i1 %cmp201, label %if.then.203, label %if.else.204

if.then.203:                                      ; preds = %if.then.199
  %97 = load i32, i32* %bracketlev, align 4
  %dec = add nsw i32 %97, -1
  store i32 %dec, i32* %bracketlev, align 4
  br label %if.end.222

if.else.204:                                      ; preds = %if.then.199
  %98 = load i8, i8* %c, align 1
  %conv205 = sext i8 %98 to i32
  %cmp206 = icmp eq i32 %conv205, 0
  br i1 %cmp206, label %if.then.208, label %if.end.221

if.then.208:                                      ; preds = %if.else.204
  br label %do.body.209

do.body.209:                                      ; preds = %if.then.208
  %99 = load i64, i64* @charno, align 8
  %100 = load i32, i32* %curndx, align 4
  %idxprom210 = sext i32 %100 to i64
  %arrayidx211 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom210
  %linepos212 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx211, i32 0, i32 0
  store i64 %99, i64* %linepos212, align 8
  %101 = load i32, i32* %curndx, align 4
  %idxprom213 = sext i32 %101 to i64
  %arrayidx214 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom213
  %lb215 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx214, i32 0, i32 1
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* %lb215, %struct._IO_FILE* %102)
  %103 = load i32, i32* %curndx, align 4
  %idxprom216 = sext i32 %103 to i64
  %arrayidx217 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom216
  %lb218 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx217, i32 0, i32 1
  %buffer219 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb218, i32 0, i32 2
  %104 = load i8*, i8** %buffer219, align 8
  store i8* %104, i8** %lp, align 8
  store i8 0, i8* %quotednl, align 1
  %105 = load i32, i32* %curndx, align 4
  store i32 %105, i32* %newndx, align 4
  br label %do.end.220

do.end.220:                                       ; preds = %do.body.209
  br label %if.end.221

if.end.221:                                       ; preds = %do.end.220, %if.else.204
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.203
  br label %while.cond

if.end.223:                                       ; preds = %sw.default.196
  br label %sw.epilog.224

sw.epilog.224:                                    ; preds = %if.end.223, %if.else.139, %if.end.128, %if.then.101, %if.then.91
  br label %if.end.225

if.end.225:                                       ; preds = %sw.epilog.224
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.end.17
  %106 = load i32, i32* @typdef, align 4
  %cmp229 = icmp ne i32 %106, 5
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.591

land.lhs.true.231:                                ; preds = %if.end.228
  %107 = load i32, i32* @definedef, align 4
  %cmp232 = icmp ne i32 %107, 3
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.591

land.lhs.true.234:                                ; preds = %land.lhs.true.231
  %108 = load i32, i32* @fvdef, align 4
  %cmp235 = icmp ne i32 %108, 6
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.591

land.lhs.true.237:                                ; preds = %land.lhs.true.234
  %109 = load i32, i32* %templatelev, align 4
  %cmp238 = icmp eq i32 %109, 0
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.591

land.lhs.true.240:                                ; preds = %land.lhs.true.237
  %110 = load i32, i32* @definedef, align 4
  %cmp241 = icmp ne i32 %110, 0
  br i1 %cmp241, label %land.lhs.true.246, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %land.lhs.true.240
  %111 = load i32, i32* @structdef, align 4
  %cmp244 = icmp ne i32 %111, 3
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.591

land.lhs.true.246:                                ; preds = %lor.lhs.false.243, %land.lhs.true.240
  %112 = load i8, i8* @inattribute, align 1
  %tobool247 = trunc i8 %112 to i1
  br i1 %tobool247, label %if.end.591, label %if.then.248

if.then.248:                                      ; preds = %land.lhs.true.246
  %113 = load i8, i8* %midtoken, align 1
  %tobool249 = trunc i8 %113 to i1
  br i1 %tobool249, label %if.then.250, label %if.else.543

if.then.250:                                      ; preds = %if.then.248
  %114 = load i8, i8* %c, align 1
  %call251 = call zeroext i1 @endtoken(i8 zeroext %114)
  br i1 %call251, label %if.then.252, label %if.else.537

if.then.252:                                      ; preds = %if.then.250
  %115 = load i8, i8* %c, align 1
  %conv253 = sext i8 %115 to i32
  %cmp254 = icmp eq i32 %conv253, 58
  br i1 %cmp254, label %land.lhs.true.256, label %if.else.273

land.lhs.true.256:                                ; preds = %if.then.252
  %116 = load i8*, i8** %lp, align 8
  %117 = load i8, i8* %116, align 1
  %conv257 = sext i8 %117 to i32
  %cmp258 = icmp eq i32 %conv257, 58
  br i1 %cmp258, label %land.lhs.true.260, label %if.else.273

land.lhs.true.260:                                ; preds = %land.lhs.true.256
  %118 = load i8*, i8** %lp, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx261, align 1
  %call262 = call zeroext i1 @begtoken(i8 zeroext %119)
  br i1 %call262, label %if.then.264, label %if.else.273

if.then.264:                                      ; preds = %land.lhs.true.260
  %120 = load i32, i32* %c_ext.addr, align 4
  %and265 = and i32 %120, 4096
  %tobool266 = icmp ne i32 %and265, 0
  br i1 %tobool266, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %if.then.264
  %121 = load i32, i32* %c_ext.addr, align 4
  %or = or i32 %121, 1
  %and268 = and i32 %or, -4097
  store i32 %and268, i32* %c_ext.addr, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.267, %if.then.264
  %122 = load i8*, i8** %lp, align 8
  %add.ptr270 = getelementptr inbounds i8, i8* %122, i64 2
  store i8* %add.ptr270, i8** %lp, align 8
  %123 = load i32, i32* %toklen, align 4
  %add271 = add nsw i32 %123, 2
  store i32 %add271, i32* %toklen, align 4
  %124 = load i8*, i8** %lp, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %124, i64 -1
  %125 = load i8, i8* %arrayidx272, align 1
  store i8 %125, i8* %c, align 1
  br label %still_in_token

if.else.273:                                      ; preds = %land.lhs.true.260, %land.lhs.true.256, %if.then.252
  store i8 0, i8* %funorvar, align 1
  %126 = load i8, i8* %yacc_rules, align 1
  %tobool274 = trunc i8 %126 to i1
  br i1 %tobool274, label %if.then.285, label %lor.lhs.false.276

lor.lhs.false.276:                                ; preds = %if.else.273
  %127 = load i32, i32* %newndx, align 4
  %idxprom277 = sext i32 %127 to i64
  %arrayidx278 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom277
  %lb279 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx278, i32 0, i32 1
  %buffer280 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb279, i32 0, i32 2
  %128 = load i8*, i8** %buffer280, align 8
  %129 = load i32, i32* %tokoff, align 4
  %idx.ext = sext i32 %129 to i64
  %add.ptr281 = getelementptr inbounds i8, i8* %128, i64 %idx.ext
  %130 = load i32, i32* %toklen, align 4
  %131 = load i8, i8* %c, align 1
  %conv282 = sext i8 %131 to i32
  %132 = load i32, i32* %bracelev, align 4
  %133 = load i32, i32* %parlev, align 4
  %call283 = call zeroext i1 @consider_token(i8* %add.ptr281, i32 %130, i32 %conv282, i32* %c_ext.addr, i32 %132, i32 %133, i8* %funorvar)
  br i1 %call283, label %if.then.285, label %if.else.527

if.then.285:                                      ; preds = %lor.lhs.false.276, %if.else.273
  %134 = load i32, i32* @fvdef, align 4
  %cmp286 = icmp eq i32 %134, 3
  br i1 %cmp286, label %if.then.288, label %if.end.313

if.then.288:                                      ; preds = %if.then.285
  %135 = load i8*, i8** %lp, align 8
  store i8* %135, i8** %oldlp, align 8
  %136 = load i8*, i8** %lp, align 8
  %add.ptr289 = getelementptr inbounds i8, i8* %136, i64 -1
  %call290 = call i8* @skip_spaces(i8* %add.ptr289)
  store i8* %call290, i8** %lp, align 8
  %137 = load i8*, i8** %lp, align 8
  %138 = load i8, i8* %137, align 1
  %conv291 = sext i8 %138 to i32
  %cmp292 = icmp ne i32 %conv291, 0
  br i1 %cmp292, label %if.then.294, label %if.end.296

if.then.294:                                      ; preds = %if.then.288
  %139 = load i8*, i8** %lp, align 8
  %add.ptr295 = getelementptr inbounds i8, i8* %139, i64 1
  store i8* %add.ptr295, i8** %lp, align 8
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.294, %if.then.288
  br label %while.cond.297

while.cond.297:                                   ; preds = %while.body.307, %if.end.296
  %140 = load i8*, i8** %lp, align 8
  %141 = load i8, i8* %140, align 1
  %conv298 = sext i8 %141 to i32
  %cmp299 = icmp ne i32 %conv298, 0
  br i1 %cmp299, label %land.lhs.true.301, label %land.end

land.lhs.true.301:                                ; preds = %while.cond.297
  %142 = load i8*, i8** %lp, align 8
  %143 = load i8, i8* %142, align 1
  %conv302 = sext i8 %143 to i32
  %call303 = call zeroext i1 @c_isspace(i32 %conv302)
  br i1 %call303, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.301
  %144 = load i8*, i8** %lp, align 8
  %145 = load i8, i8* %144, align 1
  %conv304 = sext i8 %145 to i32
  %cmp305 = icmp ne i32 %conv304, 40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.301, %while.cond.297
  %146 = phi i1 [ false, %land.lhs.true.301 ], [ false, %while.cond.297 ], [ %cmp305, %land.rhs ]
  br i1 %146, label %while.body.307, label %while.end

while.body.307:                                   ; preds = %land.end
  %147 = load i8*, i8** %lp, align 8
  %add.ptr308 = getelementptr inbounds i8, i8* %147, i64 1
  store i8* %add.ptr308, i8** %lp, align 8
  br label %while.cond.297

while.end:                                        ; preds = %land.end
  %148 = load i8*, i8** %lp, align 8
  %incdec.ptr309 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr309, i8** %lp, align 8
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %c, align 1
  %150 = load i8*, i8** %lp, align 8
  %151 = load i8*, i8** %oldlp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %150 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %151 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %152 = load i32, i32* %toklen, align 4
  %conv310 = sext i32 %152 to i64
  %add311 = add nsw i64 %conv310, %sub.ptr.sub
  %conv312 = trunc i64 %add311 to i32
  store i32 %conv312, i32* %toklen, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %while.end, %if.then.285
  store i8 0, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 4), align 1
  %153 = load i32, i32* %c_ext.addr, align 4
  %and314 = and i32 %153, 4095
  %cmp315 = icmp eq i32 %and314, 0
  br i1 %cmp315, label %if.else.346, label %land.lhs.true.317

land.lhs.true.317:                                ; preds = %if.end.313
  %154 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp318 = icmp sgt i32 %154, 0
  br i1 %cmp318, label %land.lhs.true.320, label %if.else.346

land.lhs.true.320:                                ; preds = %land.lhs.true.317
  %155 = load i32, i32* @definedef, align 4
  %cmp321 = icmp eq i32 %155, 0
  br i1 %cmp321, label %if.then.323, label %if.else.346

if.then.323:                                      ; preds = %land.lhs.true.320
  %156 = load i32, i32* @class_qualify, align 4
  %tobool324 = icmp ne i32 %156, 0
  br i1 %tobool324, label %if.then.325, label %if.else.337

if.then.325:                                      ; preds = %if.then.323
  %157 = load i8*, i8** %qualifier, align 8
  call void @write_classname(%struct.linebuffer* @token_name, i8* %157)
  %158 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 1), align 4
  store i32 %158, i32* %len, align 4
  %159 = load i32, i32* %len, align 4
  %160 = load i32, i32* %qlen, align 4
  %add326 = add nsw i32 %159, %160
  %161 = load i32, i32* %toklen, align 4
  %add327 = add nsw i32 %add326, %161
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %add327)
  %162 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %163 = load i32, i32* %len, align 4
  %idx.ext328 = sext i32 %163 to i64
  %add.ptr329 = getelementptr inbounds i8, i8* %162, i64 %idx.ext328
  %164 = load i8*, i8** %qualifier, align 8
  %165 = load i32, i32* %toklen, align 4
  %166 = load i32, i32* %newndx, align 4
  %idxprom330 = sext i32 %166 to i64
  %arrayidx331 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom330
  %lb332 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx331, i32 0, i32 1
  %buffer333 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb332, i32 0, i32 2
  %167 = load i8*, i8** %buffer333, align 8
  %168 = load i32, i32* %tokoff, align 4
  %idx.ext334 = sext i32 %168 to i64
  %add.ptr335 = getelementptr inbounds i8, i8* %167, i64 %idx.ext334
  %call336 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr329, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i8* %164, i32 %165, i8* %add.ptr335) #6
  br label %if.end.345

if.else.337:                                      ; preds = %if.then.323
  %169 = load i32, i32* %toklen, align 4
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %169)
  %170 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %171 = load i32, i32* %toklen, align 4
  %172 = load i32, i32* %newndx, align 4
  %idxprom338 = sext i32 %172 to i64
  %arrayidx339 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom338
  %lb340 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx339, i32 0, i32 1
  %buffer341 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb340, i32 0, i32 2
  %173 = load i8*, i8** %buffer341, align 8
  %174 = load i32, i32* %tokoff, align 4
  %idx.ext342 = sext i32 %174 to i64
  %add.ptr343 = getelementptr inbounds i8, i8* %173, i64 %idx.ext342
  %call344 = call i32 (i8*, i8*, ...) @sprintf(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i32 %171, i8* %add.ptr343) #6
  br label %if.end.345

if.end.345:                                       ; preds = %if.else.337, %if.then.325
  store i8 1, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 4), align 1
  br label %if.end.470

if.else.346:                                      ; preds = %land.lhs.true.320, %land.lhs.true.317, %if.end.313
  %175 = load i32, i32* @objdef, align 4
  %cmp347 = icmp eq i32 %175, 5
  br i1 %cmp347, label %if.then.349, label %if.else.374

if.then.349:                                      ; preds = %if.else.346
  %176 = load i32, i32* @class_qualify, align 4
  %tobool350 = icmp ne i32 %176, 0
  br i1 %tobool350, label %if.then.351, label %if.else.365

if.then.351:                                      ; preds = %if.then.349
  %177 = load i8*, i8** @objtag, align 8
  %call353 = call i64 @strlen(i8* %177) #9
  %add354 = add i64 %call353, 2
  %178 = load i32, i32* %toklen, align 4
  %conv355 = sext i32 %178 to i64
  %add356 = add i64 %add354, %conv355
  %conv357 = trunc i64 %add356 to i32
  store i32 %conv357, i32* %len352, align 4
  %179 = load i32, i32* %len352, align 4
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %179)
  %180 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %181 = load i8*, i8** @objtag, align 8
  %182 = load i32, i32* %toklen, align 4
  %183 = load i32, i32* %newndx, align 4
  %idxprom358 = sext i32 %183 to i64
  %arrayidx359 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom358
  %lb360 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx359, i32 0, i32 1
  %buffer361 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb360, i32 0, i32 2
  %184 = load i8*, i8** %buffer361, align 8
  %185 = load i32, i32* %tokoff, align 4
  %idx.ext362 = sext i32 %185 to i64
  %add.ptr363 = getelementptr inbounds i8, i8* %184, i64 %idx.ext362
  %call364 = call i32 (i8*, i8*, ...) @sprintf(i8* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0), i8* %181, i32 %182, i8* %add.ptr363) #6
  br label %if.end.373

if.else.365:                                      ; preds = %if.then.349
  %186 = load i32, i32* %toklen, align 4
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %186)
  %187 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %188 = load i32, i32* %toklen, align 4
  %189 = load i32, i32* %newndx, align 4
  %idxprom366 = sext i32 %189 to i64
  %arrayidx367 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom366
  %lb368 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx367, i32 0, i32 1
  %buffer369 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb368, i32 0, i32 2
  %190 = load i8*, i8** %buffer369, align 8
  %191 = load i32, i32* %tokoff, align 4
  %idx.ext370 = sext i32 %191 to i64
  %add.ptr371 = getelementptr inbounds i8, i8* %190, i64 %idx.ext370
  %call372 = call i32 (i8*, i8*, ...) @sprintf(i8* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i32 %188, i8* %add.ptr371) #6
  br label %if.end.373

if.end.373:                                       ; preds = %if.else.365, %if.then.351
  store i8 1, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 4), align 1
  br label %if.end.469

if.else.374:                                      ; preds = %if.else.346
  %192 = load i32, i32* @objdef, align 4
  %cmp375 = icmp eq i32 %192, 8
  br i1 %cmp375, label %if.then.380, label %lor.lhs.false.377

lor.lhs.false.377:                                ; preds = %if.else.374
  %193 = load i32, i32* @objdef, align 4
  %cmp378 = icmp eq i32 %193, 10
  br i1 %cmp378, label %if.then.380, label %if.else.381

if.then.380:                                      ; preds = %lor.lhs.false.377, %if.else.374
  store i8 1, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 4), align 1
  br label %if.end.468

if.else.381:                                      ; preds = %lor.lhs.false.377
  %194 = load i32, i32* @fvdef, align 4
  %cmp382 = icmp eq i32 %194, 2
  br i1 %cmp382, label %if.then.384, label %if.else.430

if.then.384:                                      ; preds = %if.else.381
  %195 = load i32, i32* %tokoff, align 4
  %idxprom385 = sext i32 %195 to i64
  %196 = load i32, i32* %newndx, align 4
  %idxprom386 = sext i32 %196 to i64
  %arrayidx387 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom386
  %lb388 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx387, i32 0, i32 1
  %buffer389 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb388, i32 0, i32 2
  %197 = load i8*, i8** %buffer389, align 8
  %arrayidx390 = getelementptr inbounds i8, i8* %197, i64 %idxprom385
  %198 = load i8, i8* %arrayidx390, align 1
  %conv391 = sext i8 %198 to i32
  %cmp392 = icmp eq i32 %conv391, 70
  %frombool394 = zext i1 %cmp392 to i8
  store i8 %frombool394, i8* %defun, align 1
  %199 = load i32, i32* %tokoff, align 4
  store i32 %199, i32* %off, align 4
  %200 = load i32, i32* %toklen, align 4
  store i32 %200, i32* %len395, align 4
  %201 = load i8, i8* %defun, align 1
  %tobool396 = trunc i8 %201 to i1
  br i1 %tobool396, label %if.then.397, label %if.end.400

if.then.397:                                      ; preds = %if.then.384
  %202 = load i32, i32* %off, align 4
  %add398 = add nsw i32 %202, 1
  store i32 %add398, i32* %off, align 4
  %203 = load i32, i32* %len395, align 4
  %sub399 = sub nsw i32 %203, 1
  store i32 %sub399, i32* %len395, align 4
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.397, %if.then.384
  %204 = load i32, i32* %len395, align 4
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %204)
  %205 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %206 = load i32, i32* %newndx, align 4
  %idxprom401 = sext i32 %206 to i64
  %arrayidx402 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom401
  %lb403 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx402, i32 0, i32 1
  %buffer404 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb403, i32 0, i32 2
  %207 = load i8*, i8** %buffer404, align 8
  %208 = load i32, i32* %off, align 4
  %idx.ext405 = sext i32 %208 to i64
  %add.ptr406 = getelementptr inbounds i8, i8* %207, i64 %idx.ext405
  %209 = load i32, i32* %len395, align 4
  %conv407 = sext i32 %209 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %205, i8* %add.ptr406, i64 %conv407, i32 1, i1 false)
  %210 = load i32, i32* %len395, align 4
  %idxprom408 = sext i32 %210 to i64
  %211 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %arrayidx409 = getelementptr inbounds i8, i8* %211, i64 %idxprom408
  store i8 0, i8* %arrayidx409, align 1
  %212 = load i8, i8* %defun, align 1
  %tobool410 = trunc i8 %212 to i1
  br i1 %tobool410, label %if.then.411, label %if.end.427

if.then.411:                                      ; preds = %if.end.400
  br label %while.cond.412

while.cond.412:                                   ; preds = %if.end.425, %if.then.411
  %213 = load i32, i32* %len395, align 4
  %dec413 = add nsw i32 %213, -1
  store i32 %dec413, i32* %len395, align 4
  %cmp414 = icmp sge i32 %dec413, 0
  br i1 %cmp414, label %while.body.416, label %while.end.426

while.body.416:                                   ; preds = %while.cond.412
  %214 = load i32, i32* %len395, align 4
  %idxprom417 = sext i32 %214 to i64
  %215 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %215, i64 %idxprom417
  %216 = load i8, i8* %arrayidx418, align 1
  %conv419 = sext i8 %216 to i32
  %cmp420 = icmp eq i32 %conv419, 95
  br i1 %cmp420, label %if.then.422, label %if.end.425

if.then.422:                                      ; preds = %while.body.416
  %217 = load i32, i32* %len395, align 4
  %idxprom423 = sext i32 %217 to i64
  %218 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %arrayidx424 = getelementptr inbounds i8, i8* %218, i64 %idxprom423
  store i8 45, i8* %arrayidx424, align 1
  br label %if.end.425

if.end.425:                                       ; preds = %if.then.422, %while.body.416
  br label %while.cond.412

while.end.426:                                    ; preds = %while.cond.412
  br label %if.end.427

if.end.427:                                       ; preds = %while.end.426, %if.end.400
  %219 = load i8, i8* %defun, align 1
  %tobool428 = trunc i8 %219 to i1
  %frombool429 = zext i1 %tobool428 to i8
  store i8 %frombool429, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 4), align 1
  br label %if.end.467

if.else.430:                                      ; preds = %if.else.381
  %220 = load i32, i32* %toklen, align 4
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %220)
  %221 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %222 = load i32, i32* %newndx, align 4
  %idxprom431 = sext i32 %222 to i64
  %arrayidx432 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom431
  %lb433 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx432, i32 0, i32 1
  %buffer434 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb433, i32 0, i32 2
  %223 = load i8*, i8** %buffer434, align 8
  %224 = load i32, i32* %tokoff, align 4
  %idx.ext435 = sext i32 %224 to i64
  %add.ptr436 = getelementptr inbounds i8, i8* %223, i64 %idx.ext435
  %225 = load i32, i32* %toklen, align 4
  %conv437 = sext i32 %225 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %221, i8* %add.ptr436, i64 %conv437, i32 1, i1 false)
  %226 = load i32, i32* %toklen, align 4
  %idxprom438 = sext i32 %226 to i64
  %227 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %arrayidx439 = getelementptr inbounds i8, i8* %227, i64 %idxprom438
  store i8 0, i8* %arrayidx439, align 1
  %228 = load i32, i32* @structdef, align 4
  %cmp440 = icmp eq i32 %228, 2
  br i1 %cmp440, label %lor.end, label %lor.lhs.false.442

lor.lhs.false.442:                                ; preds = %if.else.430
  %229 = load i32, i32* @typdef, align 4
  %cmp443 = icmp eq i32 %229, 2
  br i1 %cmp443, label %lor.end, label %lor.lhs.false.445

lor.lhs.false.445:                                ; preds = %lor.lhs.false.442
  %230 = load i32, i32* @typdef, align 4
  %cmp446 = icmp eq i32 %230, 4
  br i1 %cmp446, label %lor.end, label %lor.lhs.false.448

lor.lhs.false.448:                                ; preds = %lor.lhs.false.445
  %231 = load i8, i8* %funorvar, align 1
  %tobool449 = trunc i8 %231 to i1
  br i1 %tobool449, label %land.lhs.true.451, label %lor.rhs

land.lhs.true.451:                                ; preds = %lor.lhs.false.448
  %232 = load i32, i32* @definedef, align 4
  %cmp452 = icmp eq i32 %232, 3
  br i1 %cmp452, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.451, %lor.lhs.false.448
  %233 = load i8, i8* %funorvar, align 1
  %tobool454 = trunc i8 %233 to i1
  br i1 %tobool454, label %land.lhs.true.456, label %land.end.465

land.lhs.true.456:                                ; preds = %lor.rhs
  %234 = load i32, i32* @definedef, align 4
  %cmp457 = icmp eq i32 %234, 0
  br i1 %cmp457, label %land.lhs.true.459, label %land.end.465

land.lhs.true.459:                                ; preds = %land.lhs.true.456
  %235 = load i32, i32* @structdef, align 4
  %cmp460 = icmp eq i32 %235, 0
  br i1 %cmp460, label %land.rhs.462, label %land.end.465

land.rhs.462:                                     ; preds = %land.lhs.true.459
  %236 = load i32, i32* %bracelev, align 4
  %cmp463 = icmp sgt i32 %236, 0
  br label %land.end.465

land.end.465:                                     ; preds = %land.rhs.462, %land.lhs.true.459, %land.lhs.true.456, %lor.rhs
  %237 = phi i1 [ false, %land.lhs.true.459 ], [ false, %land.lhs.true.456 ], [ false, %lor.rhs ], [ %cmp463, %land.rhs.462 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.465, %land.lhs.true.451, %lor.lhs.false.445, %lor.lhs.false.442, %if.else.430
  %238 = phi i1 [ true, %land.lhs.true.451 ], [ true, %lor.lhs.false.445 ], [ true, %lor.lhs.false.442 ], [ true, %if.else.430 ], [ %237, %land.end.465 ]
  %frombool466 = zext i1 %238 to i8
  store i8 %frombool466, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 4), align 1
  br label %if.end.467

if.end.467:                                       ; preds = %lor.end, %if.end.427
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %if.then.380
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %if.end.373
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %if.end.345
  %239 = load i32, i32* @lineno, align 4
  store i32 %239, i32* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 5), align 4
  %240 = load i32, i32* %tokoff, align 4
  store i32 %240, i32* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 1), align 4
  %241 = load i32, i32* %toklen, align 4
  store i32 %241, i32* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 2), align 4
  %242 = load i32, i32* %newndx, align 4
  %idxprom471 = sext i32 %242 to i64
  %arrayidx472 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom471
  %lb473 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx472, i32 0, i32 1
  %buffer474 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb473, i32 0, i32 2
  %243 = load i8*, i8** %buffer474, align 8
  store i8* %243, i8** getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 0), align 8
  %244 = load i32, i32* %newndx, align 4
  %idxprom475 = sext i32 %244 to i64
  %arrayidx476 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom475
  %linepos477 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx476, i32 0, i32 0
  %245 = load i64, i64* %linepos477, align 8
  store i64 %245, i64* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 6), align 8
  store i8 1, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  %246 = load i32, i32* @definedef, align 4
  %cmp478 = icmp eq i32 %246, 0
  br i1 %cmp478, label %land.lhs.true.480, label %if.else.504

land.lhs.true.480:                                ; preds = %if.end.470
  %247 = load i32, i32* @fvdef, align 4
  %cmp481 = icmp eq i32 %247, 4
  br i1 %cmp481, label %if.then.498, label %lor.lhs.false.483

lor.lhs.false.483:                                ; preds = %land.lhs.true.480
  %248 = load i32, i32* @fvdef, align 4
  %cmp484 = icmp eq i32 %248, 3
  br i1 %cmp484, label %if.then.498, label %lor.lhs.false.486

lor.lhs.false.486:                                ; preds = %lor.lhs.false.483
  %249 = load i32, i32* @structdef, align 4
  %cmp487 = icmp eq i32 %249, 2
  br i1 %cmp487, label %if.then.498, label %lor.lhs.false.489

lor.lhs.false.489:                                ; preds = %lor.lhs.false.486
  %250 = load i32, i32* @typdef, align 4
  %cmp490 = icmp eq i32 %250, 4
  br i1 %cmp490, label %if.then.498, label %lor.lhs.false.492

lor.lhs.false.492:                                ; preds = %lor.lhs.false.489
  %251 = load i32, i32* @typdef, align 4
  %cmp493 = icmp eq i32 %251, 2
  br i1 %cmp493, label %if.then.498, label %lor.lhs.false.495

lor.lhs.false.495:                                ; preds = %lor.lhs.false.492
  %252 = load i32, i32* @objdef, align 4
  %cmp496 = icmp ne i32 %252, 0
  br i1 %cmp496, label %if.then.498, label %if.else.504

if.then.498:                                      ; preds = %lor.lhs.false.495, %lor.lhs.false.492, %lor.lhs.false.489, %lor.lhs.false.486, %lor.lhs.false.483, %land.lhs.true.480
  %253 = load i32, i32* %newndx, align 4
  %254 = load i32, i32* %curndx, align 4
  %cmp499 = icmp eq i32 %253, %254
  br i1 %cmp499, label %if.then.501, label %if.end.503

if.then.501:                                      ; preds = %if.then.498
  %255 = load i32, i32* %curndx, align 4
  %sub502 = sub nsw i32 1, %255
  store i32 %sub502, i32* %curndx, align 4
  br label %if.end.503

if.end.503:                                       ; preds = %if.then.501, %if.then.498
  br label %if.end.526

if.else.504:                                      ; preds = %lor.lhs.false.495, %if.end.470
  %256 = load i32, i32* @definedef, align 4
  %cmp505 = icmp ne i32 %256, 0
  br i1 %cmp505, label %if.then.523, label %lor.lhs.false.507

lor.lhs.false.507:                                ; preds = %if.else.504
  %257 = load i32, i32* @fvdef, align 4
  %cmp508 = icmp eq i32 %257, 2
  br i1 %cmp508, label %if.then.523, label %lor.lhs.false.510

lor.lhs.false.510:                                ; preds = %lor.lhs.false.507
  %258 = load i32, i32* @structdef, align 4
  %cmp511 = icmp eq i32 %258, 0
  br i1 %cmp511, label %land.lhs.true.513, label %if.end.525

land.lhs.true.513:                                ; preds = %lor.lhs.false.510
  %259 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp514 = icmp sgt i32 %259, 0
  br i1 %cmp514, label %land.lhs.true.516, label %if.end.525

land.lhs.true.516:                                ; preds = %land.lhs.true.513
  %260 = load i32, i32* %bracelev, align 4
  %261 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub517 = sub nsw i32 %261, 1
  %idxprom518 = sext i32 %sub517 to i64
  %262 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %262, i64 %idxprom518
  %263 = load i32, i32* %arrayidx519, align 4
  %add520 = add nsw i32 %263, 1
  %cmp521 = icmp eq i32 %260, %add520
  br i1 %cmp521, label %if.then.523, label %if.end.525

if.then.523:                                      ; preds = %land.lhs.true.516, %lor.lhs.false.507, %if.else.504
  %264 = load i8, i8* %funorvar, align 1
  %tobool524 = trunc i8 %264 to i1
  call void @make_C_tag(i1 zeroext %tobool524)
  br label %if.end.525

if.end.525:                                       ; preds = %if.then.523, %land.lhs.true.516, %land.lhs.true.513, %lor.lhs.false.510
  br label %if.end.526

if.end.526:                                       ; preds = %if.end.525, %if.end.503
  br label %if.end.535

if.else.527:                                      ; preds = %lor.lhs.false.276
  %265 = load i8, i8* @inattribute, align 1
  %tobool528 = trunc i8 %265 to i1
  br i1 %tobool528, label %land.lhs.true.530, label %if.end.534

land.lhs.true.530:                                ; preds = %if.else.527
  %266 = load i32, i32* @fvdef, align 4
  %cmp531 = icmp eq i32 %266, 8
  br i1 %cmp531, label %if.then.533, label %if.end.534

if.then.533:                                      ; preds = %land.lhs.true.530
  store i32 0, i32* @fvdef, align 4
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.533, %land.lhs.true.530, %if.else.527
  br label %if.end.535

if.end.535:                                       ; preds = %if.end.534, %if.end.526
  store i8 0, i8* %midtoken, align 1
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535
  br label %if.end.542

if.else.537:                                      ; preds = %if.then.250
  %267 = load i8, i8* %c, align 1
  %call538 = call zeroext i1 @intoken(i8 zeroext %267)
  br i1 %call538, label %if.then.539, label %if.end.541

if.then.539:                                      ; preds = %if.else.537
  br label %still_in_token

still_in_token:                                   ; preds = %if.then.539, %if.end.269
  %268 = load i32, i32* %toklen, align 4
  %inc540 = add nsw i32 %268, 1
  store i32 %inc540, i32* %toklen, align 4
  br label %while.cond

if.end.541:                                       ; preds = %if.else.537
  br label %if.end.542

if.end.542:                                       ; preds = %if.end.541, %if.end.536
  br label %if.end.590

if.else.543:                                      ; preds = %if.then.248
  %269 = load i8, i8* %c, align 1
  %call544 = call zeroext i1 @begtoken(i8 zeroext %269)
  br i1 %call544, label %if.then.545, label %if.end.589

if.then.545:                                      ; preds = %if.else.543
  %270 = load i32, i32* @definedef, align 4
  switch i32 %270, label %sw.default.567 [
    i32 0, label %sw.bb.546
    i32 1, label %sw.bb.566
  ]

sw.bb.546:                                        ; preds = %if.then.545
  %271 = load i32, i32* @fvdef, align 4
  switch i32 %271, label %sw.default.556 [
    i32 5, label %sw.bb.547
    i32 7, label %sw.bb.548
  ]

sw.bb.547:                                        ; preds = %sw.bb.546
  store i32 6, i32* @fvdef, align 4
  br label %while.cond

sw.bb.548:                                        ; preds = %sw.bb.546
  %272 = load i32, i32* %c_ext.addr, align 4
  %and549 = and i32 %272, 4095
  %cmp550 = icmp eq i32 %and549, 0
  br i1 %cmp550, label %if.then.554, label %lor.lhs.false.552

lor.lhs.false.552:                                ; preds = %sw.bb.548
  %273 = load i32, i32* @declarations, align 4
  %tobool553 = icmp ne i32 %273, 0
  br i1 %tobool553, label %if.then.554, label %if.end.555

if.then.554:                                      ; preds = %lor.lhs.false.552, %sw.bb.548
  call void @make_C_tag(i1 zeroext true)
  store i32 8, i32* @fvdef, align 4
  br label %if.end.555

if.end.555:                                       ; preds = %if.then.554, %lor.lhs.false.552
  br label %sw.epilog.557

sw.default.556:                                   ; preds = %sw.bb.546
  br label %sw.epilog.557

sw.epilog.557:                                    ; preds = %sw.default.556, %if.end.555
  %274 = load i32, i32* @structdef, align 4
  %cmp558 = icmp eq i32 %274, 2
  br i1 %cmp558, label %land.lhs.true.560, label %if.end.565

land.lhs.true.560:                                ; preds = %sw.epilog.557
  %275 = load i32, i32* %c_ext.addr, align 4
  %and561 = and i32 %275, 5
  %cmp562 = icmp eq i32 %and561, 5
  br i1 %cmp562, label %if.end.565, label %if.then.564

if.then.564:                                      ; preds = %land.lhs.true.560
  %276 = load i32, i32* %bracelev, align 4
  call void @popclass_above(i32 %276)
  store i32 0, i32* @structdef, align 4
  br label %if.end.565

if.end.565:                                       ; preds = %if.then.564, %land.lhs.true.560, %sw.epilog.557
  br label %sw.epilog.568

sw.bb.566:                                        ; preds = %if.then.545
  %277 = bitcast %struct.tok* %savetoken to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %277, i8* bitcast (%struct.tok* @token to i8*), i64 32, i32 8, i1 false)
  br label %sw.epilog.568

sw.default.567:                                   ; preds = %if.then.545
  br label %sw.epilog.568

sw.epilog.568:                                    ; preds = %sw.default.567, %sw.bb.566, %if.end.565
  %278 = load i8, i8* %yacc_rules, align 1
  %tobool569 = trunc i8 %278 to i1
  br i1 %tobool569, label %lor.lhs.false.570, label %if.then.578

lor.lhs.false.570:                                ; preds = %sw.epilog.568
  %279 = load i8*, i8** %lp, align 8
  %280 = load i32, i32* %newndx, align 4
  %idxprom571 = sext i32 %280 to i64
  %arrayidx572 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom571
  %lb573 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx572, i32 0, i32 1
  %buffer574 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb573, i32 0, i32 2
  %281 = load i8*, i8** %buffer574, align 8
  %add.ptr575 = getelementptr inbounds i8, i8* %281, i64 1
  %cmp576 = icmp eq i8* %279, %add.ptr575
  br i1 %cmp576, label %if.then.578, label %if.end.588

if.then.578:                                      ; preds = %lor.lhs.false.570, %sw.epilog.568
  %282 = load i8*, i8** %lp, align 8
  %add.ptr579 = getelementptr inbounds i8, i8* %282, i64 -1
  %283 = load i32, i32* %newndx, align 4
  %idxprom580 = sext i32 %283 to i64
  %arrayidx581 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom580
  %lb582 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx581, i32 0, i32 1
  %buffer583 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb582, i32 0, i32 2
  %284 = load i8*, i8** %buffer583, align 8
  %sub.ptr.lhs.cast584 = ptrtoint i8* %add.ptr579 to i64
  %sub.ptr.rhs.cast585 = ptrtoint i8* %284 to i64
  %sub.ptr.sub586 = sub i64 %sub.ptr.lhs.cast584, %sub.ptr.rhs.cast585
  %conv587 = trunc i64 %sub.ptr.sub586 to i32
  store i32 %conv587, i32* %tokoff, align 4
  store i32 1, i32* %toklen, align 4
  store i8 1, i8* %midtoken, align 1
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.578, %lor.lhs.false.570
  br label %while.cond

if.end.589:                                       ; preds = %if.else.543
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.589, %if.end.542
  br label %if.end.591

if.end.591:                                       ; preds = %if.end.590, %land.lhs.true.246, %lor.lhs.false.243, %land.lhs.true.237, %land.lhs.true.234, %land.lhs.true.231, %if.end.228
  %285 = load i8, i8* %c, align 1
  %conv592 = sext i8 %285 to i32
  switch i32 %conv592, label %sw.epilog.1230 [
    i32 58, label %sw.bb.593
    i32 59, label %sw.bb.634
    i32 44, label %sw.bb.768
    i32 93, label %sw.bb.879
    i32 40, label %sw.bb.914
    i32 41, label %sw.bb.957
    i32 123, label %sw.bb.1010
    i32 42, label %sw.bb.1083
    i32 125, label %sw.bb.1092
    i32 61, label %sw.bb.1132
    i32 60, label %sw.bb.1156
    i32 62, label %sw.bb.1168
    i32 43, label %sw.bb.1174
    i32 45, label %sw.bb.1174
    i32 35, label %sw.bb.1182
    i32 126, label %sw.bb.1182
    i32 38, label %sw.bb.1182
    i32 37, label %sw.bb.1182
    i32 47, label %sw.bb.1182
    i32 124, label %sw.bb.1182
    i32 94, label %sw.bb.1182
    i32 33, label %sw.bb.1182
    i32 46, label %sw.bb.1182
    i32 63, label %sw.bb.1182
    i32 0, label %sw.bb.1190
  ]

sw.bb.593:                                        ; preds = %if.end.591
  %286 = load i8, i8* @inattribute, align 1
  %tobool594 = trunc i8 %286 to i1
  br i1 %tobool594, label %if.then.595, label %if.end.596

if.then.595:                                      ; preds = %sw.bb.593
  br label %sw.epilog.1230

if.end.596:                                       ; preds = %sw.bb.593
  %287 = load i8, i8* %yacc_rules, align 1
  %tobool597 = trunc i8 %287 to i1
  br i1 %tobool597, label %land.lhs.true.599, label %if.end.606

land.lhs.true.599:                                ; preds = %if.end.596
  %288 = load i32, i32* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 1), align 4
  %cmp600 = icmp eq i32 %288, 0
  br i1 %cmp600, label %land.lhs.true.602, label %if.end.606

land.lhs.true.602:                                ; preds = %land.lhs.true.599
  %289 = load i8, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  %tobool603 = trunc i8 %289 to i1
  br i1 %tobool603, label %if.then.605, label %if.end.606

if.then.605:                                      ; preds = %land.lhs.true.602
  call void @make_C_tag(i1 zeroext false)
  br label %sw.epilog.1230

if.end.606:                                       ; preds = %land.lhs.true.602, %land.lhs.true.599, %if.end.596
  %290 = load i32, i32* @definedef, align 4
  %cmp607 = icmp ne i32 %290, 0
  br i1 %cmp607, label %if.then.609, label %if.end.610

if.then.609:                                      ; preds = %if.end.606
  br label %sw.epilog.1230

if.end.610:                                       ; preds = %if.end.606
  %291 = load i32, i32* @objdef, align 4
  switch i32 %291, label %sw.default.621 [
    i32 3, label %sw.bb.611
    i32 8, label %sw.bb.612
    i32 10, label %sw.bb.612
  ]

sw.bb.611:                                        ; preds = %if.end.610
  store i32 11, i32* @objdef, align 4
  call void @make_C_tag(i1 zeroext true)
  br label %sw.epilog.622

sw.bb.612:                                        ; preds = %if.end.610, %if.end.610
  store i32 9, i32* @objdef, align 4
  %292 = load i32, i32* @class_qualify, align 4
  %tobool613 = icmp ne i32 %292, 0
  br i1 %tobool613, label %if.then.614, label %if.end.620

if.then.614:                                      ; preds = %sw.bb.612
  %293 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 1), align 4
  store i32 %293, i32* %toklen615, align 4
  %294 = load i32, i32* %toklen615, align 4
  %add616 = add nsw i32 %294, 1
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %add616)
  %295 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %296 = load i32, i32* %toklen615, align 4
  %idx.ext617 = sext i32 %296 to i64
  %add.ptr618 = getelementptr inbounds i8, i8* %295, i64 %idx.ext617
  %call619 = call i8* @strcpy(i8* %add.ptr618, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0)) #6
  br label %if.end.620

if.end.620:                                       ; preds = %if.then.614, %sw.bb.612
  br label %sw.epilog.622

sw.default.621:                                   ; preds = %if.end.610
  br label %sw.epilog.622

sw.epilog.622:                                    ; preds = %sw.default.621, %if.end.620, %sw.bb.611
  %297 = load i32, i32* @structdef, align 4
  %cmp623 = icmp eq i32 %297, 2
  br i1 %cmp623, label %if.then.625, label %if.end.626

if.then.625:                                      ; preds = %sw.epilog.622
  store i32 3, i32* @structdef, align 4
  br label %sw.epilog.1230

if.end.626:                                       ; preds = %sw.epilog.622
  %298 = load i32, i32* %c_ext.addr, align 4
  %and627 = and i32 %298, 1
  %tobool628 = icmp ne i32 %and627, 0
  br i1 %tobool628, label %land.lhs.true.629, label %if.end.633

land.lhs.true.629:                                ; preds = %if.end.626
  %299 = load i32, i32* @fvdef, align 4
  %cmp630 = icmp eq i32 %299, 7
  br i1 %cmp630, label %if.then.632, label %if.end.633

if.then.632:                                      ; preds = %land.lhs.true.629
  call void @make_C_tag(i1 zeroext true)
  store i32 8, i32* @fvdef, align 4
  br label %sw.epilog.1230

if.end.633:                                       ; preds = %land.lhs.true.629, %if.end.626
  br label %sw.epilog.1230

sw.bb.634:                                        ; preds = %if.end.591
  %300 = load i32, i32* @definedef, align 4
  %cmp635 = icmp ne i32 %300, 0
  br i1 %cmp635, label %if.then.640, label %lor.lhs.false.637

lor.lhs.false.637:                                ; preds = %sw.bb.634
  %301 = load i8, i8* @inattribute, align 1
  %tobool638 = trunc i8 %301 to i1
  br i1 %tobool638, label %if.then.640, label %if.end.641

if.then.640:                                      ; preds = %lor.lhs.false.637, %sw.bb.634
  br label %sw.epilog.1230

if.end.641:                                       ; preds = %lor.lhs.false.637
  %302 = load i32, i32* @typdef, align 4
  switch i32 %302, label %sw.default.748 [
    i32 4, label %sw.bb.642
    i32 2, label %sw.bb.642
    i32 0, label %sw.bb.643
    i32 3, label %sw.bb.643
    i32 5, label %sw.bb.643
  ]

sw.bb.642:                                        ; preds = %if.end.641, %if.end.641
  call void @make_C_tag(i1 zeroext false)
  store i32 0, i32* @typdef, align 4
  store i32 0, i32* @fvdef, align 4
  br label %sw.epilog.763

sw.bb.643:                                        ; preds = %if.end.641, %if.end.641, %if.end.641
  %303 = load i32, i32* @fvdef, align 4
  switch i32 %303, label %sw.default.736 [
    i32 8, label %sw.bb.644
    i32 4, label %sw.bb.652
    i32 7, label %sw.bb.678
  ]

sw.bb.644:                                        ; preds = %sw.bb.643
  %304 = load i32, i32* @typdef, align 4
  %cmp645 = icmp eq i32 %304, 5
  br i1 %cmp645, label %if.then.650, label %lor.lhs.false.647

lor.lhs.false.647:                                ; preds = %sw.bb.644
  %305 = load i32, i32* %c_ext.addr, align 4
  %and648 = and i32 %305, 1
  %tobool649 = icmp ne i32 %and648, 0
  br i1 %tobool649, label %if.then.650, label %if.end.651

if.then.650:                                      ; preds = %lor.lhs.false.647, %sw.bb.644
  store i32 0, i32* @fvdef, align 4
  br label %if.end.651

if.end.651:                                       ; preds = %if.then.650, %lor.lhs.false.647
  br label %sw.epilog.747

sw.bb.652:                                        ; preds = %sw.bb.643
  %306 = load i32, i32* @globals, align 4
  %tobool653 = icmp ne i32 %306, 0
  br i1 %tobool653, label %land.lhs.true.654, label %lor.lhs.false.661

land.lhs.true.654:                                ; preds = %sw.bb.652
  %307 = load i32, i32* %bracelev, align 4
  %cmp655 = icmp eq i32 %307, 0
  br i1 %cmp655, label %land.lhs.true.657, label %lor.lhs.false.661

land.lhs.true.657:                                ; preds = %land.lhs.true.654
  %308 = load i8, i8* @fvextern, align 1
  %tobool658 = trunc i8 %308 to i1
  br i1 %tobool658, label %lor.lhs.false.659, label %if.then.676

lor.lhs.false.659:                                ; preds = %land.lhs.true.657
  %309 = load i32, i32* @declarations, align 4
  %tobool660 = icmp ne i32 %309, 0
  br i1 %tobool660, label %if.then.676, label %lor.lhs.false.661

lor.lhs.false.661:                                ; preds = %lor.lhs.false.659, %land.lhs.true.654, %sw.bb.652
  %310 = load i32, i32* @members, align 4
  %tobool662 = icmp ne i32 %310, 0
  br i1 %tobool662, label %land.lhs.true.663, label %if.end.677

land.lhs.true.663:                                ; preds = %lor.lhs.false.661
  %311 = load i32, i32* @structdef, align 4
  %cmp664 = icmp eq i32 %311, 0
  br i1 %cmp664, label %land.lhs.true.666, label %if.end.677

land.lhs.true.666:                                ; preds = %land.lhs.true.663
  %312 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp667 = icmp sgt i32 %312, 0
  br i1 %cmp667, label %land.lhs.true.669, label %if.end.677

land.lhs.true.669:                                ; preds = %land.lhs.true.666
  %313 = load i32, i32* %bracelev, align 4
  %314 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub670 = sub nsw i32 %314, 1
  %idxprom671 = sext i32 %sub670 to i64
  %315 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx672 = getelementptr inbounds i32, i32* %315, i64 %idxprom671
  %316 = load i32, i32* %arrayidx672, align 4
  %add673 = add nsw i32 %316, 1
  %cmp674 = icmp eq i32 %313, %add673
  br i1 %cmp674, label %if.then.676, label %if.end.677

if.then.676:                                      ; preds = %land.lhs.true.669, %lor.lhs.false.659, %land.lhs.true.657
  call void @make_C_tag(i1 zeroext false)
  br label %if.end.677

if.end.677:                                       ; preds = %if.then.676, %land.lhs.true.669, %land.lhs.true.666, %land.lhs.true.663, %lor.lhs.false.661
  store i8 0, i8* @fvextern, align 1
  store i32 0, i32* @fvdef, align 4
  store i8 0, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  br label %sw.epilog.747

sw.bb.678:                                        ; preds = %sw.bb.643
  %317 = load i32, i32* @declarations, align 4
  %tobool679 = icmp ne i32 %317, 0
  br i1 %tobool679, label %land.lhs.true.680, label %lor.lhs.false.715

land.lhs.true.680:                                ; preds = %sw.bb.678
  %318 = load i32, i32* %c_ext.addr, align 4
  %and681 = and i32 %318, 1
  %tobool682 = icmp ne i32 %and681, 0
  br i1 %tobool682, label %land.lhs.true.696, label %lor.lhs.false.683

lor.lhs.false.683:                                ; preds = %land.lhs.true.680
  %319 = load i32, i32* @structdef, align 4
  %cmp684 = icmp eq i32 %319, 0
  br i1 %cmp684, label %land.lhs.true.686, label %land.lhs.true.696

land.lhs.true.686:                                ; preds = %lor.lhs.false.683
  %320 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp687 = icmp sgt i32 %320, 0
  br i1 %cmp687, label %land.lhs.true.689, label %land.lhs.true.696

land.lhs.true.689:                                ; preds = %land.lhs.true.686
  %321 = load i32, i32* %bracelev, align 4
  %322 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub690 = sub nsw i32 %322, 1
  %idxprom691 = sext i32 %sub690 to i64
  %323 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx692 = getelementptr inbounds i32, i32* %323, i64 %idxprom691
  %324 = load i32, i32* %arrayidx692, align 4
  %add693 = add nsw i32 %324, 1
  %cmp694 = icmp eq i32 %321, %add693
  br i1 %cmp694, label %lor.lhs.false.715, label %land.lhs.true.696

land.lhs.true.696:                                ; preds = %land.lhs.true.689, %land.lhs.true.686, %lor.lhs.false.683, %land.lhs.true.680
  %325 = load i32, i32* @typdef, align 4
  %cmp697 = icmp eq i32 %325, 0
  br i1 %cmp697, label %if.then.734, label %lor.lhs.false.699

lor.lhs.false.699:                                ; preds = %land.lhs.true.696
  %326 = load i32, i32* @typdef, align 4
  %cmp700 = icmp ne i32 %326, 5
  br i1 %cmp700, label %land.lhs.true.702, label %lor.lhs.false.715

land.lhs.true.702:                                ; preds = %lor.lhs.false.699
  %327 = load i32, i32* @structdef, align 4
  %cmp703 = icmp eq i32 %327, 0
  br i1 %cmp703, label %land.lhs.true.705, label %lor.lhs.false.715

land.lhs.true.705:                                ; preds = %land.lhs.true.702
  %328 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp706 = icmp sgt i32 %328, 0
  br i1 %cmp706, label %land.lhs.true.708, label %lor.lhs.false.715

land.lhs.true.708:                                ; preds = %land.lhs.true.705
  %329 = load i32, i32* %bracelev, align 4
  %330 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub709 = sub nsw i32 %330, 1
  %idxprom710 = sext i32 %sub709 to i64
  %331 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx711 = getelementptr inbounds i32, i32* %331, i64 %idxprom710
  %332 = load i32, i32* %arrayidx711, align 4
  %add712 = add nsw i32 %332, 1
  %cmp713 = icmp eq i32 %329, %add712
  br i1 %cmp713, label %if.then.734, label %lor.lhs.false.715

lor.lhs.false.715:                                ; preds = %land.lhs.true.708, %land.lhs.true.705, %land.lhs.true.702, %lor.lhs.false.699, %land.lhs.true.689, %sw.bb.678
  %333 = load i32, i32* @members, align 4
  %tobool716 = icmp ne i32 %333, 0
  br i1 %tobool716, label %land.lhs.true.717, label %if.end.735

land.lhs.true.717:                                ; preds = %lor.lhs.false.715
  %334 = load i32, i32* %c_ext.addr, align 4
  %and718 = and i32 %334, 4095
  %cmp719 = icmp eq i32 %and718, 0
  br i1 %cmp719, label %land.lhs.true.721, label %if.end.735

land.lhs.true.721:                                ; preds = %land.lhs.true.717
  %335 = load i32, i32* @structdef, align 4
  %cmp722 = icmp eq i32 %335, 0
  br i1 %cmp722, label %land.lhs.true.724, label %if.end.735

land.lhs.true.724:                                ; preds = %land.lhs.true.721
  %336 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp725 = icmp sgt i32 %336, 0
  br i1 %cmp725, label %land.lhs.true.727, label %if.end.735

land.lhs.true.727:                                ; preds = %land.lhs.true.724
  %337 = load i32, i32* %bracelev, align 4
  %338 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub728 = sub nsw i32 %338, 1
  %idxprom729 = sext i32 %sub728 to i64
  %339 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx730 = getelementptr inbounds i32, i32* %339, i64 %idxprom729
  %340 = load i32, i32* %arrayidx730, align 4
  %add731 = add nsw i32 %340, 1
  %cmp732 = icmp eq i32 %337, %add731
  br i1 %cmp732, label %if.then.734, label %if.end.735

if.then.734:                                      ; preds = %land.lhs.true.727, %land.lhs.true.708, %land.lhs.true.696
  call void @make_C_tag(i1 zeroext true)
  br label %if.end.735

if.end.735:                                       ; preds = %if.then.734, %land.lhs.true.727, %land.lhs.true.724, %land.lhs.true.721, %land.lhs.true.717, %lor.lhs.false.715
  br label %sw.default.736

sw.default.736:                                   ; preds = %sw.bb.643, %if.end.735
  store i8 0, i8* @fvextern, align 1
  store i32 0, i32* @fvdef, align 4
  %341 = load i32, i32* @declarations, align 4
  %tobool737 = icmp ne i32 %341, 0
  br i1 %tobool737, label %land.lhs.true.738, label %if.else.745

land.lhs.true.738:                                ; preds = %sw.default.736
  %342 = load i32, i32* %c_ext.addr, align 4
  %and739 = and i32 %342, 1
  %tobool740 = icmp ne i32 %and739, 0
  br i1 %tobool740, label %land.lhs.true.741, label %if.else.745

land.lhs.true.741:                                ; preds = %land.lhs.true.738
  %343 = load i32, i32* @structdef, align 4
  %cmp742 = icmp eq i32 %343, 2
  br i1 %cmp742, label %if.then.744, label %if.else.745

if.then.744:                                      ; preds = %land.lhs.true.741
  call void @make_C_tag(i1 zeroext false)
  br label %if.end.746

if.else.745:                                      ; preds = %land.lhs.true.741, %land.lhs.true.738, %sw.default.736
  store i8 0, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  br label %if.end.746

if.end.746:                                       ; preds = %if.else.745, %if.then.744
  br label %sw.epilog.747

sw.epilog.747:                                    ; preds = %if.end.746, %if.end.677, %if.end.651
  br label %sw.default.748

sw.default.748:                                   ; preds = %if.end.641, %sw.epilog.747
  %344 = load i32, i32* @structdef, align 4
  %cmp749 = icmp eq i32 %344, 0
  br i1 %cmp749, label %land.lhs.true.751, label %if.then.761

land.lhs.true.751:                                ; preds = %sw.default.748
  %345 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp752 = icmp sgt i32 %345, 0
  br i1 %cmp752, label %land.lhs.true.754, label %if.then.761

land.lhs.true.754:                                ; preds = %land.lhs.true.751
  %346 = load i32, i32* %bracelev, align 4
  %347 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub755 = sub nsw i32 %347, 1
  %idxprom756 = sext i32 %sub755 to i64
  %348 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx757 = getelementptr inbounds i32, i32* %348, i64 %idxprom756
  %349 = load i32, i32* %arrayidx757, align 4
  %add758 = add nsw i32 %349, 1
  %cmp759 = icmp eq i32 %346, %add758
  br i1 %cmp759, label %if.end.762, label %if.then.761

if.then.761:                                      ; preds = %land.lhs.true.754, %land.lhs.true.751, %sw.default.748
  store i32 0, i32* @typdef, align 4
  br label %if.end.762

if.end.762:                                       ; preds = %if.then.761, %land.lhs.true.754
  br label %sw.epilog.763

sw.epilog.763:                                    ; preds = %if.end.762, %sw.bb.642
  %350 = load i32, i32* @structdef, align 4
  %cmp764 = icmp eq i32 %350, 2
  br i1 %cmp764, label %if.then.766, label %if.end.767

if.then.766:                                      ; preds = %sw.epilog.763
  store i32 0, i32* @structdef, align 4
  br label %if.end.767

if.end.767:                                       ; preds = %if.then.766, %sw.epilog.763
  br label %sw.epilog.1230

sw.bb.768:                                        ; preds = %if.end.591
  %351 = load i32, i32* @definedef, align 4
  %cmp769 = icmp ne i32 %351, 0
  br i1 %cmp769, label %if.then.774, label %lor.lhs.false.771

lor.lhs.false.771:                                ; preds = %sw.bb.768
  %352 = load i8, i8* @inattribute, align 1
  %tobool772 = trunc i8 %352 to i1
  br i1 %tobool772, label %if.then.774, label %if.end.775

if.then.774:                                      ; preds = %lor.lhs.false.771, %sw.bb.768
  br label %sw.epilog.1230

if.end.775:                                       ; preds = %lor.lhs.false.771
  %353 = load i32, i32* @objdef, align 4
  switch i32 %353, label %sw.default.777 [
    i32 8, label %sw.bb.776
    i32 10, label %sw.bb.776
  ]

sw.bb.776:                                        ; preds = %if.end.775, %if.end.775
  call void @make_C_tag(i1 zeroext true)
  store i32 6, i32* @objdef, align 4
  br label %sw.epilog.778

sw.default.777:                                   ; preds = %if.end.775
  br label %sw.epilog.778

sw.epilog.778:                                    ; preds = %sw.default.777, %sw.bb.776
  %354 = load i32, i32* @fvdef, align 4
  switch i32 %354, label %sw.default.873 [
    i32 1, label %sw.bb.779
    i32 3, label %sw.bb.779
    i32 5, label %sw.bb.779
    i32 6, label %sw.bb.779
    i32 8, label %sw.bb.779
    i32 9, label %sw.bb.780
    i32 2, label %sw.bb.798
    i32 4, label %sw.bb.799
    i32 7, label %sw.bb.831
  ]

sw.bb.779:                                        ; preds = %sw.epilog.778, %sw.epilog.778, %sw.epilog.778, %sw.epilog.778, %sw.epilog.778
  br label %sw.epilog.874

sw.bb.780:                                        ; preds = %sw.epilog.778
  %355 = load i32, i32* @structdef, align 4
  %cmp781 = icmp eq i32 %355, 0
  br i1 %cmp781, label %land.lhs.true.783, label %if.end.797

land.lhs.true.783:                                ; preds = %sw.bb.780
  %356 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp784 = icmp sgt i32 %356, 0
  br i1 %cmp784, label %land.lhs.true.786, label %if.end.797

land.lhs.true.786:                                ; preds = %land.lhs.true.783
  %357 = load i32, i32* %bracelev, align 4
  %358 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub787 = sub nsw i32 %358, 1
  %idxprom788 = sext i32 %sub787 to i64
  %359 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx789 = getelementptr inbounds i32, i32* %359, i64 %idxprom788
  %360 = load i32, i32* %arrayidx789, align 4
  %add790 = add nsw i32 %360, 1
  %cmp791 = icmp eq i32 %357, %add790
  br i1 %cmp791, label %land.lhs.true.793, label %if.end.797

land.lhs.true.793:                                ; preds = %land.lhs.true.786
  %361 = load i32, i32* %parlev, align 4
  %cmp794 = icmp eq i32 %361, 0
  br i1 %cmp794, label %if.then.796, label %if.end.797

if.then.796:                                      ; preds = %land.lhs.true.793
  store i32 0, i32* @fvdef, align 4
  br label %if.end.797

if.end.797:                                       ; preds = %if.then.796, %land.lhs.true.793, %land.lhs.true.786, %land.lhs.true.783, %sw.bb.780
  br label %sw.epilog.874

sw.bb.798:                                        ; preds = %sw.epilog.778
  store i32 8, i32* @fvdef, align 4
  br label %sw.epilog.874

sw.bb.799:                                        ; preds = %sw.epilog.778
  %362 = load i32, i32* %parlev, align 4
  %cmp800 = icmp eq i32 %362, 0
  br i1 %cmp800, label %land.lhs.true.802, label %if.end.830

land.lhs.true.802:                                ; preds = %sw.bb.799
  %363 = load i32, i32* @globals, align 4
  %tobool803 = icmp ne i32 %363, 0
  br i1 %tobool803, label %land.lhs.true.804, label %lor.lhs.false.814

land.lhs.true.804:                                ; preds = %land.lhs.true.802
  %364 = load i32, i32* %bracelev, align 4
  %cmp805 = icmp eq i32 %364, 0
  br i1 %cmp805, label %land.lhs.true.807, label %lor.lhs.false.814

land.lhs.true.807:                                ; preds = %land.lhs.true.804
  %365 = load i32, i32* %templatelev, align 4
  %cmp808 = icmp eq i32 %365, 0
  br i1 %cmp808, label %land.lhs.true.810, label %lor.lhs.false.814

land.lhs.true.810:                                ; preds = %land.lhs.true.807
  %366 = load i8, i8* @fvextern, align 1
  %tobool811 = trunc i8 %366 to i1
  br i1 %tobool811, label %lor.lhs.false.812, label %if.then.829

lor.lhs.false.812:                                ; preds = %land.lhs.true.810
  %367 = load i32, i32* @declarations, align 4
  %tobool813 = icmp ne i32 %367, 0
  br i1 %tobool813, label %if.then.829, label %lor.lhs.false.814

lor.lhs.false.814:                                ; preds = %lor.lhs.false.812, %land.lhs.true.807, %land.lhs.true.804, %land.lhs.true.802
  %368 = load i32, i32* @members, align 4
  %tobool815 = icmp ne i32 %368, 0
  br i1 %tobool815, label %land.lhs.true.816, label %if.end.830

land.lhs.true.816:                                ; preds = %lor.lhs.false.814
  %369 = load i32, i32* @structdef, align 4
  %cmp817 = icmp eq i32 %369, 0
  br i1 %cmp817, label %land.lhs.true.819, label %if.end.830

land.lhs.true.819:                                ; preds = %land.lhs.true.816
  %370 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp820 = icmp sgt i32 %370, 0
  br i1 %cmp820, label %land.lhs.true.822, label %if.end.830

land.lhs.true.822:                                ; preds = %land.lhs.true.819
  %371 = load i32, i32* %bracelev, align 4
  %372 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub823 = sub nsw i32 %372, 1
  %idxprom824 = sext i32 %sub823 to i64
  %373 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx825 = getelementptr inbounds i32, i32* %373, i64 %idxprom824
  %374 = load i32, i32* %arrayidx825, align 4
  %add826 = add nsw i32 %374, 1
  %cmp827 = icmp eq i32 %371, %add826
  br i1 %cmp827, label %if.then.829, label %if.end.830

if.then.829:                                      ; preds = %land.lhs.true.822, %lor.lhs.false.812, %land.lhs.true.810
  call void @make_C_tag(i1 zeroext false)
  br label %if.end.830

if.end.830:                                       ; preds = %if.then.829, %land.lhs.true.822, %land.lhs.true.819, %land.lhs.true.816, %lor.lhs.false.814, %sw.bb.799
  br label %sw.epilog.874

sw.bb.831:                                        ; preds = %sw.epilog.778
  %375 = load i32, i32* @declarations, align 4
  %tobool832 = icmp ne i32 %375, 0
  br i1 %tobool832, label %land.lhs.true.833, label %lor.lhs.false.849

land.lhs.true.833:                                ; preds = %sw.bb.831
  %376 = load i32, i32* @typdef, align 4
  %cmp834 = icmp eq i32 %376, 0
  br i1 %cmp834, label %land.lhs.true.836, label %lor.lhs.false.849

land.lhs.true.836:                                ; preds = %land.lhs.true.833
  %377 = load i32, i32* @structdef, align 4
  %cmp837 = icmp eq i32 %377, 0
  br i1 %cmp837, label %land.lhs.true.839, label %if.then.867

land.lhs.true.839:                                ; preds = %land.lhs.true.836
  %378 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp840 = icmp sgt i32 %378, 0
  br i1 %cmp840, label %land.lhs.true.842, label %if.then.867

land.lhs.true.842:                                ; preds = %land.lhs.true.839
  %379 = load i32, i32* %bracelev, align 4
  %380 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub843 = sub nsw i32 %380, 1
  %idxprom844 = sext i32 %sub843 to i64
  %381 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx845 = getelementptr inbounds i32, i32* %381, i64 %idxprom844
  %382 = load i32, i32* %arrayidx845, align 4
  %add846 = add nsw i32 %382, 1
  %cmp847 = icmp eq i32 %379, %add846
  br i1 %cmp847, label %lor.lhs.false.849, label %if.then.867

lor.lhs.false.849:                                ; preds = %land.lhs.true.842, %land.lhs.true.833, %sw.bb.831
  %383 = load i32, i32* @members, align 4
  %tobool850 = icmp ne i32 %383, 0
  br i1 %tobool850, label %land.lhs.true.851, label %if.else.868

land.lhs.true.851:                                ; preds = %lor.lhs.false.849
  %384 = load i32, i32* @typdef, align 4
  %cmp852 = icmp ne i32 %384, 5
  br i1 %cmp852, label %land.lhs.true.854, label %if.else.868

land.lhs.true.854:                                ; preds = %land.lhs.true.851
  %385 = load i32, i32* @structdef, align 4
  %cmp855 = icmp eq i32 %385, 0
  br i1 %cmp855, label %land.lhs.true.857, label %if.else.868

land.lhs.true.857:                                ; preds = %land.lhs.true.854
  %386 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp858 = icmp sgt i32 %386, 0
  br i1 %cmp858, label %land.lhs.true.860, label %if.else.868

land.lhs.true.860:                                ; preds = %land.lhs.true.857
  %387 = load i32, i32* %bracelev, align 4
  %388 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub861 = sub nsw i32 %388, 1
  %idxprom862 = sext i32 %sub861 to i64
  %389 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx863 = getelementptr inbounds i32, i32* %389, i64 %idxprom862
  %390 = load i32, i32* %arrayidx863, align 4
  %add864 = add nsw i32 %390, 1
  %cmp865 = icmp eq i32 %387, %add864
  br i1 %cmp865, label %if.then.867, label %if.else.868

if.then.867:                                      ; preds = %land.lhs.true.860, %land.lhs.true.842, %land.lhs.true.839, %land.lhs.true.836
  call void @make_C_tag(i1 zeroext true)
  store i32 4, i32* @fvdef, align 4
  br label %if.end.872

if.else.868:                                      ; preds = %land.lhs.true.860, %land.lhs.true.857, %land.lhs.true.854, %land.lhs.true.851, %lor.lhs.false.849
  %391 = load i32, i32* @declarations, align 4
  %tobool869 = icmp ne i32 %391, 0
  br i1 %tobool869, label %if.end.871, label %if.then.870

if.then.870:                                      ; preds = %if.else.868
  store i32 0, i32* @fvdef, align 4
  br label %if.end.871

if.end.871:                                       ; preds = %if.then.870, %if.else.868
  br label %if.end.872

if.end.872:                                       ; preds = %if.end.871, %if.then.867
  store i8 0, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  br label %sw.epilog.874

sw.default.873:                                   ; preds = %sw.epilog.778
  store i32 0, i32* @fvdef, align 4
  br label %sw.epilog.874

sw.epilog.874:                                    ; preds = %sw.default.873, %if.end.872, %if.end.830, %sw.bb.798, %if.end.797, %sw.bb.779
  %392 = load i32, i32* @structdef, align 4
  %cmp875 = icmp eq i32 %392, 2
  br i1 %cmp875, label %if.then.877, label %if.end.878

if.then.877:                                      ; preds = %sw.epilog.874
  store i32 0, i32* @structdef, align 4
  br label %if.end.878

if.end.878:                                       ; preds = %if.then.877, %sw.epilog.874
  br label %sw.epilog.1230

sw.bb.879:                                        ; preds = %if.end.591
  %393 = load i32, i32* @definedef, align 4
  %cmp880 = icmp ne i32 %393, 0
  br i1 %cmp880, label %if.then.885, label %lor.lhs.false.882

lor.lhs.false.882:                                ; preds = %sw.bb.879
  %394 = load i8, i8* @inattribute, align 1
  %tobool883 = trunc i8 %394 to i1
  br i1 %tobool883, label %if.then.885, label %if.end.886

if.then.885:                                      ; preds = %lor.lhs.false.882, %sw.bb.879
  br label %sw.epilog.1230

if.end.886:                                       ; preds = %lor.lhs.false.882
  %395 = load i32, i32* @structdef, align 4
  %cmp887 = icmp eq i32 %395, 2
  br i1 %cmp887, label %if.then.889, label %if.end.890

if.then.889:                                      ; preds = %if.end.886
  store i32 0, i32* @structdef, align 4
  br label %if.end.890

if.end.890:                                       ; preds = %if.then.889, %if.end.886
  %396 = load i32, i32* @typdef, align 4
  switch i32 %396, label %sw.default.912 [
    i32 2, label %sw.bb.891
    i32 4, label %sw.bb.891
    i32 0, label %sw.bb.892
    i32 3, label %sw.bb.892
  ]

sw.bb.891:                                        ; preds = %if.end.890, %if.end.890
  store i32 5, i32* @typdef, align 4
  call void @make_C_tag(i1 zeroext false)
  br label %sw.epilog.913

sw.bb.892:                                        ; preds = %if.end.890, %if.end.890
  %397 = load i32, i32* @fvdef, align 4
  switch i32 %397, label %sw.default.910 [
    i32 3, label %sw.bb.893
    i32 6, label %sw.bb.893
    i32 8, label %sw.bb.893
    i32 9, label %sw.bb.893
    i32 4, label %sw.bb.894
  ]

sw.bb.893:                                        ; preds = %sw.bb.892, %sw.bb.892, %sw.bb.892, %sw.bb.892
  br label %sw.epilog.911

sw.bb.894:                                        ; preds = %sw.bb.892
  %398 = load i32, i32* @members, align 4
  %tobool895 = icmp ne i32 %398, 0
  br i1 %tobool895, label %land.lhs.true.896, label %lor.lhs.false.899

land.lhs.true.896:                                ; preds = %sw.bb.894
  %399 = load i32, i32* %bracelev, align 4
  %cmp897 = icmp eq i32 %399, 1
  br i1 %cmp897, label %if.then.908, label %lor.lhs.false.899

lor.lhs.false.899:                                ; preds = %land.lhs.true.896, %sw.bb.894
  %400 = load i32, i32* @globals, align 4
  %tobool900 = icmp ne i32 %400, 0
  br i1 %tobool900, label %land.lhs.true.901, label %if.end.909

land.lhs.true.901:                                ; preds = %lor.lhs.false.899
  %401 = load i32, i32* %bracelev, align 4
  %cmp902 = icmp eq i32 %401, 0
  br i1 %cmp902, label %land.lhs.true.904, label %if.end.909

land.lhs.true.904:                                ; preds = %land.lhs.true.901
  %402 = load i8, i8* @fvextern, align 1
  %tobool905 = trunc i8 %402 to i1
  br i1 %tobool905, label %lor.lhs.false.906, label %if.then.908

lor.lhs.false.906:                                ; preds = %land.lhs.true.904
  %403 = load i32, i32* @declarations, align 4
  %tobool907 = icmp ne i32 %403, 0
  br i1 %tobool907, label %if.then.908, label %if.end.909

if.then.908:                                      ; preds = %lor.lhs.false.906, %land.lhs.true.904, %land.lhs.true.896
  call void @make_C_tag(i1 zeroext false)
  br label %if.end.909

if.end.909:                                       ; preds = %if.then.908, %lor.lhs.false.906, %land.lhs.true.901, %lor.lhs.false.899
  br label %sw.default.910

sw.default.910:                                   ; preds = %sw.bb.892, %if.end.909
  store i32 0, i32* @fvdef, align 4
  br label %sw.epilog.911

sw.epilog.911:                                    ; preds = %sw.default.910, %sw.bb.893
  br label %sw.epilog.913

sw.default.912:                                   ; preds = %if.end.890
  br label %sw.epilog.913

sw.epilog.913:                                    ; preds = %sw.default.912, %sw.epilog.911, %sw.bb.891
  br label %sw.epilog.1230

sw.bb.914:                                        ; preds = %if.end.591
  %404 = load i8, i8* @inattribute, align 1
  %tobool915 = trunc i8 %404 to i1
  br i1 %tobool915, label %if.then.916, label %if.end.918

if.then.916:                                      ; preds = %sw.bb.914
  %405 = load i32, i32* %attrparlev, align 4
  %inc917 = add nsw i32 %405, 1
  store i32 %inc917, i32* %attrparlev, align 4
  br label %sw.epilog.1230

if.end.918:                                       ; preds = %sw.bb.914
  %406 = load i32, i32* @definedef, align 4
  %cmp919 = icmp ne i32 %406, 0
  br i1 %cmp919, label %if.then.921, label %if.end.922

if.then.921:                                      ; preds = %if.end.918
  br label %sw.epilog.1230

if.end.922:                                       ; preds = %if.end.918
  %407 = load i32, i32* @objdef, align 4
  %cmp923 = icmp eq i32 %407, 3
  br i1 %cmp923, label %land.lhs.true.925, label %if.end.929

land.lhs.true.925:                                ; preds = %if.end.922
  %408 = load i32, i32* %parlev, align 4
  %cmp926 = icmp eq i32 %408, 0
  br i1 %cmp926, label %if.then.928, label %if.end.929

if.then.928:                                      ; preds = %land.lhs.true.925
  store i32 4, i32* @objdef, align 4
  br label %if.end.929

if.end.929:                                       ; preds = %if.then.928, %land.lhs.true.925, %if.end.922
  %409 = load i32, i32* @fvdef, align 4
  switch i32 %409, label %sw.default.954 [
    i32 4, label %sw.bb.930
    i32 3, label %sw.bb.952
    i32 7, label %sw.bb.953
  ]

sw.bb.930:                                        ; preds = %if.end.929
  %410 = load i32, i32* @typdef, align 4
  %cmp931 = icmp eq i32 %410, 2
  br i1 %cmp931, label %land.lhs.true.933, label %if.end.951

land.lhs.true.933:                                ; preds = %sw.bb.930
  %411 = load i8*, i8** %lp, align 8
  %412 = load i8, i8* %411, align 1
  %conv934 = sext i8 %412 to i32
  %cmp935 = icmp ne i32 %conv934, 42
  br i1 %cmp935, label %land.lhs.true.937, label %if.end.951

land.lhs.true.937:                                ; preds = %land.lhs.true.933
  %413 = load i32, i32* @structdef, align 4
  %cmp938 = icmp eq i32 %413, 0
  br i1 %cmp938, label %land.lhs.true.940, label %if.then.950

land.lhs.true.940:                                ; preds = %land.lhs.true.937
  %414 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp941 = icmp sgt i32 %414, 0
  br i1 %cmp941, label %land.lhs.true.943, label %if.then.950

land.lhs.true.943:                                ; preds = %land.lhs.true.940
  %415 = load i32, i32* %bracelev, align 4
  %416 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub944 = sub nsw i32 %416, 1
  %idxprom945 = sext i32 %sub944 to i64
  %417 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx946 = getelementptr inbounds i32, i32* %417, i64 %idxprom945
  %418 = load i32, i32* %arrayidx946, align 4
  %add947 = add nsw i32 %418, 1
  %cmp948 = icmp eq i32 %415, %add947
  br i1 %cmp948, label %if.end.951, label %if.then.950

if.then.950:                                      ; preds = %land.lhs.true.943, %land.lhs.true.940, %land.lhs.true.937
  call void @make_C_tag(i1 zeroext false)
  store i32 5, i32* @typdef, align 4
  store i32 8, i32* @fvdef, align 4
  br label %sw.epilog.955

if.end.951:                                       ; preds = %land.lhs.true.943, %land.lhs.true.933, %sw.bb.930
  br label %sw.bb.952

sw.bb.952:                                        ; preds = %if.end.929, %if.end.951
  store i32 5, i32* @fvdef, align 4
  br label %sw.epilog.955

sw.bb.953:                                        ; preds = %if.end.929
  store i32 6, i32* @fvdef, align 4
  br label %sw.epilog.955

sw.default.954:                                   ; preds = %if.end.929
  br label %sw.epilog.955

sw.epilog.955:                                    ; preds = %sw.default.954, %sw.bb.953, %sw.bb.952, %if.then.950
  %419 = load i32, i32* %parlev, align 4
  %inc956 = add nsw i32 %419, 1
  store i32 %inc956, i32* %parlev, align 4
  br label %sw.epilog.1230

sw.bb.957:                                        ; preds = %if.end.591
  %420 = load i8, i8* @inattribute, align 1
  %tobool958 = trunc i8 %420 to i1
  br i1 %tobool958, label %if.then.959, label %if.end.965

if.then.959:                                      ; preds = %sw.bb.957
  %421 = load i32, i32* %attrparlev, align 4
  %dec960 = add nsw i32 %421, -1
  store i32 %dec960, i32* %attrparlev, align 4
  %cmp961 = icmp eq i32 %dec960, 0
  br i1 %cmp961, label %if.then.963, label %if.end.964

if.then.963:                                      ; preds = %if.then.959
  store i8 0, i8* @inattribute, align 1
  br label %if.end.964

if.end.964:                                       ; preds = %if.then.963, %if.then.959
  br label %sw.epilog.1230

if.end.965:                                       ; preds = %sw.bb.957
  %422 = load i32, i32* @definedef, align 4
  %cmp966 = icmp ne i32 %422, 0
  br i1 %cmp966, label %if.then.968, label %if.end.969

if.then.968:                                      ; preds = %if.end.965
  br label %sw.epilog.1230

if.end.969:                                       ; preds = %if.end.965
  %423 = load i32, i32* @objdef, align 4
  %cmp970 = icmp eq i32 %423, 5
  br i1 %cmp970, label %land.lhs.true.972, label %if.end.976

land.lhs.true.972:                                ; preds = %if.end.969
  %424 = load i32, i32* %parlev, align 4
  %cmp973 = icmp eq i32 %424, 1
  br i1 %cmp973, label %if.then.975, label %if.end.976

if.then.975:                                      ; preds = %land.lhs.true.972
  call void @make_C_tag(i1 zeroext true)
  store i32 11, i32* @objdef, align 4
  br label %if.end.976

if.end.976:                                       ; preds = %if.then.975, %land.lhs.true.972, %if.end.969
  %425 = load i32, i32* %parlev, align 4
  %dec977 = add nsw i32 %425, -1
  store i32 %dec977, i32* %parlev, align 4
  %cmp978 = icmp eq i32 %dec977, 0
  br i1 %cmp978, label %if.then.980, label %if.else.1004

if.then.980:                                      ; preds = %if.end.976
  %426 = load i32, i32* @fvdef, align 4
  switch i32 %426, label %sw.default.982 [
    i32 5, label %sw.bb.981
    i32 6, label %sw.bb.981
  ]

sw.bb.981:                                        ; preds = %if.then.980, %if.then.980
  store i32 7, i32* @fvdef, align 4
  br label %sw.epilog.983

sw.default.982:                                   ; preds = %if.then.980
  br label %sw.epilog.983

sw.epilog.983:                                    ; preds = %sw.default.982, %sw.bb.981
  %427 = load i32, i32* @structdef, align 4
  %cmp984 = icmp eq i32 %427, 0
  br i1 %cmp984, label %land.lhs.true.986, label %land.lhs.true.996

land.lhs.true.986:                                ; preds = %sw.epilog.983
  %428 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp987 = icmp sgt i32 %428, 0
  br i1 %cmp987, label %land.lhs.true.989, label %land.lhs.true.996

land.lhs.true.989:                                ; preds = %land.lhs.true.986
  %429 = load i32, i32* %bracelev, align 4
  %430 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub990 = sub nsw i32 %430, 1
  %idxprom991 = sext i32 %sub990 to i64
  %431 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx992 = getelementptr inbounds i32, i32* %431, i64 %idxprom991
  %432 = load i32, i32* %arrayidx992, align 4
  %add993 = add nsw i32 %432, 1
  %cmp994 = icmp eq i32 %429, %add993
  br i1 %cmp994, label %if.end.1003, label %land.lhs.true.996

land.lhs.true.996:                                ; preds = %land.lhs.true.989, %land.lhs.true.986, %sw.epilog.983
  %433 = load i32, i32* @typdef, align 4
  %cmp997 = icmp eq i32 %433, 4
  br i1 %cmp997, label %if.then.1002, label %lor.lhs.false.999

lor.lhs.false.999:                                ; preds = %land.lhs.true.996
  %434 = load i32, i32* @typdef, align 4
  %cmp1000 = icmp eq i32 %434, 2
  br i1 %cmp1000, label %if.then.1002, label %if.end.1003

if.then.1002:                                     ; preds = %lor.lhs.false.999, %land.lhs.true.996
  store i32 5, i32* @typdef, align 4
  call void @make_C_tag(i1 zeroext false)
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.then.1002, %lor.lhs.false.999, %land.lhs.true.989
  br label %if.end.1009

if.else.1004:                                     ; preds = %if.end.976
  %435 = load i32, i32* %parlev, align 4
  %cmp1005 = icmp slt i32 %435, 0
  br i1 %cmp1005, label %if.then.1007, label %if.end.1008

if.then.1007:                                     ; preds = %if.else.1004
  store i32 0, i32* %parlev, align 4
  br label %if.end.1008

if.end.1008:                                      ; preds = %if.then.1007, %if.else.1004
  br label %if.end.1009

if.end.1009:                                      ; preds = %if.end.1008, %if.end.1003
  br label %sw.epilog.1230

sw.bb.1010:                                       ; preds = %if.end.591
  %436 = load i32, i32* @definedef, align 4
  %cmp1011 = icmp ne i32 %436, 0
  br i1 %cmp1011, label %if.then.1013, label %if.end.1014

if.then.1013:                                     ; preds = %sw.bb.1010
  br label %sw.epilog.1230

if.end.1014:                                      ; preds = %sw.bb.1010
  %437 = load i32, i32* @typdef, align 4
  %cmp1015 = icmp eq i32 %437, 2
  br i1 %cmp1015, label %if.then.1017, label %if.end.1018

if.then.1017:                                     ; preds = %if.end.1014
  store i32 3, i32* @typdef, align 4
  %438 = load i32, i32* %bracelev, align 4
  store i32 %438, i32* %typdefbracelev, align 4
  br label %if.end.1018

if.end.1018:                                      ; preds = %if.then.1017, %if.end.1014
  %439 = load i32, i32* @fvdef, align 4
  switch i32 %439, label %sw.default.1074 [
    i32 7, label %sw.bb.1019
    i32 8, label %sw.bb.1055
    i32 0, label %sw.bb.1056
  ]

sw.bb.1019:                                       ; preds = %if.end.1018
  %440 = load i32, i32* %c_ext.addr, align 4
  %and1020 = and i32 %440, 1
  %tobool1021 = icmp ne i32 %and1020, 0
  br i1 %tobool1021, label %land.lhs.true.1022, label %if.end.1054

land.lhs.true.1022:                               ; preds = %sw.bb.1019
  %441 = load i32, i32* @class_qualify, align 4
  %tobool1023 = icmp ne i32 %441, 0
  br i1 %tobool1023, label %if.end.1054, label %if.then.1024

if.then.1024:                                     ; preds = %land.lhs.true.1022
  %442 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  store i8* %442, i8** %uqname, align 8
  %443 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %444 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 1), align 4
  %idx.ext1025 = sext i32 %444 to i64
  %add.ptr1026 = getelementptr inbounds i8, i8* %443, i64 %idx.ext1025
  store i8* %add.ptr1026, i8** %tok_end, align 8
  %445 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  store i8* %445, i8** %cc, align 8
  br label %for.cond.1027

for.cond.1027:                                    ; preds = %for.inc.1043, %if.then.1024
  %446 = load i8*, i8** %cc, align 8
  %447 = load i8*, i8** %tok_end, align 8
  %cmp1028 = icmp ult i8* %446, %447
  br i1 %cmp1028, label %for.body.1030, label %for.end.1045

for.body.1030:                                    ; preds = %for.cond.1027
  %448 = load i8*, i8** %cc, align 8
  %449 = load i8, i8* %448, align 1
  %conv1031 = sext i8 %449 to i32
  %cmp1032 = icmp eq i32 %conv1031, 58
  br i1 %cmp1032, label %land.lhs.true.1034, label %if.end.1042

land.lhs.true.1034:                               ; preds = %for.body.1030
  %450 = load i8*, i8** %cc, align 8
  %arrayidx1035 = getelementptr inbounds i8, i8* %450, i64 1
  %451 = load i8, i8* %arrayidx1035, align 1
  %conv1036 = sext i8 %451 to i32
  %cmp1037 = icmp eq i32 %conv1036, 58
  br i1 %cmp1037, label %if.then.1039, label %if.end.1042

if.then.1039:                                     ; preds = %land.lhs.true.1034
  %452 = load i8*, i8** %cc, align 8
  %add.ptr1040 = getelementptr inbounds i8, i8* %452, i64 2
  store i8* %add.ptr1040, i8** %uqname, align 8
  %453 = load i8*, i8** %cc, align 8
  %incdec.ptr1041 = getelementptr inbounds i8, i8* %453, i32 1
  store i8* %incdec.ptr1041, i8** %cc, align 8
  br label %if.end.1042

if.end.1042:                                      ; preds = %if.then.1039, %land.lhs.true.1034, %for.body.1030
  br label %for.inc.1043

for.inc.1043:                                     ; preds = %if.end.1042
  %454 = load i8*, i8** %cc, align 8
  %incdec.ptr1044 = getelementptr inbounds i8, i8* %454, i32 1
  store i8* %incdec.ptr1044, i8** %cc, align 8
  br label %for.cond.1027

for.end.1045:                                     ; preds = %for.cond.1027
  %455 = load i8*, i8** %uqname, align 8
  %456 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %cmp1046 = icmp ugt i8* %455, %456
  br i1 %cmp1046, label %if.then.1048, label %if.end.1053

if.then.1048:                                     ; preds = %for.end.1045
  %457 = load i8*, i8** %uqname, align 8
  %call1049 = call i64 @strlen(i8* %457) #9
  %conv1050 = trunc i64 %call1049 to i32
  store i32 %conv1050, i32* %uqlen, align 4
  %458 = load i32, i32* %uqlen, align 4
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %458)
  %459 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %460 = load i8*, i8** %uqname, align 8
  %461 = load i32, i32* %uqlen, align 4
  %add1051 = add nsw i32 %461, 1
  %conv1052 = sext i32 %add1051 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %459, i8* %460, i64 %conv1052, i32 1, i1 false)
  br label %if.end.1053

if.end.1053:                                      ; preds = %if.then.1048, %for.end.1045
  br label %if.end.1054

if.end.1054:                                      ; preds = %if.end.1053, %land.lhs.true.1022, %sw.bb.1019
  call void @make_C_tag(i1 zeroext true)
  br label %sw.bb.1055

sw.bb.1055:                                       ; preds = %if.end.1018, %if.end.1054
  store i32 0, i32* @fvdef, align 4
  br label %sw.epilog.1075

sw.bb.1056:                                       ; preds = %if.end.1018
  %462 = load i32, i32* @objdef, align 4
  switch i32 %462, label %sw.default.1059 [
    i32 3, label %sw.bb.1057
    i32 8, label %sw.bb.1058
    i32 10, label %sw.bb.1058
  ]

sw.bb.1057:                                       ; preds = %sw.bb.1056
  call void @make_C_tag(i1 zeroext true)
  store i32 11, i32* @objdef, align 4
  br label %sw.epilog.1073

sw.bb.1058:                                       ; preds = %sw.bb.1056, %sw.bb.1056
  call void @make_C_tag(i1 zeroext true)
  store i32 6, i32* @objdef, align 4
  br label %sw.epilog.1073

sw.default.1059:                                  ; preds = %sw.bb.1056
  %463 = load i32, i32* %bracelev, align 4
  %cmp1060 = icmp eq i32 %463, 0
  br i1 %cmp1060, label %land.lhs.true.1062, label %if.end.1072

land.lhs.true.1062:                               ; preds = %sw.default.1059
  %464 = load i32, i32* @structdef, align 4
  %cmp1063 = icmp eq i32 %464, 0
  br i1 %cmp1063, label %land.lhs.true.1065, label %if.end.1072

land.lhs.true.1065:                               ; preds = %land.lhs.true.1062
  %465 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp1066 = icmp eq i32 %465, 0
  br i1 %cmp1066, label %land.lhs.true.1068, label %if.end.1072

land.lhs.true.1068:                               ; preds = %land.lhs.true.1065
  %466 = load i32, i32* @typdef, align 4
  %cmp1069 = icmp eq i32 %466, 0
  br i1 %cmp1069, label %if.then.1071, label %if.end.1072

if.then.1071:                                     ; preds = %land.lhs.true.1068
  store i32 -1, i32* %bracelev, align 4
  br label %if.end.1072

if.end.1072:                                      ; preds = %if.then.1071, %land.lhs.true.1068, %land.lhs.true.1065, %land.lhs.true.1062, %sw.default.1059
  br label %sw.epilog.1073

sw.epilog.1073:                                   ; preds = %if.end.1072, %sw.bb.1058, %sw.bb.1057
  br label %sw.epilog.1075

sw.default.1074:                                  ; preds = %if.end.1018
  br label %sw.epilog.1075

sw.epilog.1075:                                   ; preds = %sw.default.1074, %sw.epilog.1073, %sw.bb.1055
  %467 = load i32, i32* @structdef, align 4
  switch i32 %467, label %sw.default.1080 [
    i32 1, label %sw.bb.1076
    i32 2, label %sw.bb.1077
    i32 3, label %sw.bb.1077
  ]

sw.bb.1076:                                       ; preds = %sw.epilog.1075
  %468 = load i32, i32* %bracelev, align 4
  call void @pushclass_above(i32 %468, i8* null, i32 0)
  store i32 0, i32* @structdef, align 4
  br label %sw.epilog.1081

sw.bb.1077:                                       ; preds = %sw.epilog.1075, %sw.epilog.1075
  %469 = load i32, i32* %bracelev, align 4
  %470 = load i8*, i8** getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 0), align 8
  %471 = load i32, i32* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 1), align 4
  %idx.ext1078 = sext i32 %471 to i64
  %add.ptr1079 = getelementptr inbounds i8, i8* %470, i64 %idx.ext1078
  %472 = load i32, i32* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 2), align 4
  call void @pushclass_above(i32 %469, i8* %add.ptr1079, i32 %472)
  store i32 0, i32* @structdef, align 4
  call void @make_C_tag(i1 zeroext false)
  br label %sw.epilog.1081

sw.default.1080:                                  ; preds = %sw.epilog.1075
  br label %sw.epilog.1081

sw.epilog.1081:                                   ; preds = %sw.default.1080, %sw.bb.1077, %sw.bb.1076
  %473 = load i32, i32* %bracelev, align 4
  %add1082 = add nsw i32 %473, 1
  store i32 %add1082, i32* %bracelev, align 4
  br label %sw.epilog.1230

sw.bb.1083:                                       ; preds = %if.end.591
  %474 = load i32, i32* @definedef, align 4
  %cmp1084 = icmp ne i32 %474, 0
  br i1 %cmp1084, label %if.then.1086, label %if.end.1087

if.then.1086:                                     ; preds = %sw.bb.1083
  br label %sw.epilog.1230

if.end.1087:                                      ; preds = %sw.bb.1083
  %475 = load i32, i32* @fvdef, align 4
  %cmp1088 = icmp eq i32 %475, 5
  br i1 %cmp1088, label %if.then.1090, label %if.end.1091

if.then.1090:                                     ; preds = %if.end.1087
  store i32 0, i32* @fvdef, align 4
  store i8 0, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  br label %if.end.1091

if.end.1091:                                      ; preds = %if.then.1090, %if.end.1087
  br label %sw.epilog.1230

sw.bb.1092:                                       ; preds = %if.end.591
  %476 = load i32, i32* @definedef, align 4
  %cmp1093 = icmp ne i32 %476, 0
  br i1 %cmp1093, label %if.then.1095, label %if.end.1096

if.then.1095:                                     ; preds = %sw.bb.1092
  br label %sw.epilog.1230

if.end.1096:                                      ; preds = %sw.bb.1092
  %477 = load i32, i32* %bracelev, align 4
  %sub1097 = sub nsw i32 %477, 1
  store i32 %sub1097, i32* %bracelev, align 4
  %478 = load i8, i8* @ignoreindent, align 1
  %tobool1098 = trunc i8 %478 to i1
  br i1 %tobool1098, label %if.else.1112, label %land.lhs.true.1099

land.lhs.true.1099:                               ; preds = %if.end.1096
  %479 = load i8*, i8** %lp, align 8
  %480 = load i32, i32* %newndx, align 4
  %idxprom1100 = sext i32 %480 to i64
  %arrayidx1101 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom1100
  %lb1102 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1101, i32 0, i32 1
  %buffer1103 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb1102, i32 0, i32 2
  %481 = load i8*, i8** %buffer1103, align 8
  %add.ptr1104 = getelementptr inbounds i8, i8* %481, i64 1
  %cmp1105 = icmp eq i8* %479, %add.ptr1104
  br i1 %cmp1105, label %if.then.1107, label %if.else.1112

if.then.1107:                                     ; preds = %land.lhs.true.1099
  %482 = load i32, i32* %bracelev, align 4
  %cmp1108 = icmp ne i32 %482, 0
  br i1 %cmp1108, label %if.then.1110, label %if.end.1111

if.then.1110:                                     ; preds = %if.then.1107
  store i8 0, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  br label %if.end.1111

if.end.1111:                                      ; preds = %if.then.1110, %if.then.1107
  store i32 0, i32* %bracelev, align 4
  store i32 0, i32* %parlev, align 4
  br label %if.end.1117

if.else.1112:                                     ; preds = %land.lhs.true.1099, %if.end.1096
  %483 = load i32, i32* %bracelev, align 4
  %cmp1113 = icmp slt i32 %483, 0
  br i1 %cmp1113, label %if.then.1115, label %if.end.1116

if.then.1115:                                     ; preds = %if.else.1112
  store i8 0, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  store i32 0, i32* %bracelev, align 4
  br label %if.end.1116

if.end.1116:                                      ; preds = %if.then.1115, %if.else.1112
  br label %if.end.1117

if.end.1117:                                      ; preds = %if.end.1116, %if.end.1111
  %484 = load i32, i32* %bracelev, align 4
  %cmp1118 = icmp eq i32 %484, 0
  br i1 %cmp1118, label %land.lhs.true.1120, label %if.end.1124

land.lhs.true.1120:                               ; preds = %if.end.1117
  %485 = load i32, i32* @fvdef, align 4
  %cmp1121 = icmp eq i32 %485, 9
  br i1 %cmp1121, label %if.then.1123, label %if.end.1124

if.then.1123:                                     ; preds = %land.lhs.true.1120
  store i32 0, i32* @fvdef, align 4
  br label %if.end.1124

if.end.1124:                                      ; preds = %if.then.1123, %land.lhs.true.1120, %if.end.1117
  %486 = load i32, i32* %bracelev, align 4
  call void @popclass_above(i32 %486)
  store i32 0, i32* @structdef, align 4
  %487 = load i32, i32* @typdef, align 4
  %cmp1125 = icmp eq i32 %487, 3
  br i1 %cmp1125, label %land.lhs.true.1127, label %if.end.1131

land.lhs.true.1127:                               ; preds = %if.end.1124
  %488 = load i32, i32* %bracelev, align 4
  %489 = load i32, i32* %typdefbracelev, align 4
  %cmp1128 = icmp sle i32 %488, %489
  br i1 %cmp1128, label %if.then.1130, label %if.end.1131

if.then.1130:                                     ; preds = %land.lhs.true.1127
  store i32 4, i32* @typdef, align 4
  br label %if.end.1131

if.end.1131:                                      ; preds = %if.then.1130, %land.lhs.true.1127, %if.end.1124
  br label %sw.epilog.1230

sw.bb.1132:                                       ; preds = %if.end.591
  %490 = load i32, i32* @definedef, align 4
  %cmp1133 = icmp ne i32 %490, 0
  br i1 %cmp1133, label %if.then.1135, label %if.end.1136

if.then.1135:                                     ; preds = %sw.bb.1132
  br label %sw.epilog.1230

if.end.1136:                                      ; preds = %sw.bb.1132
  %491 = load i32, i32* @fvdef, align 4
  switch i32 %491, label %sw.default.1154 [
    i32 3, label %sw.bb.1137
    i32 6, label %sw.bb.1137
    i32 8, label %sw.bb.1137
    i32 9, label %sw.bb.1137
    i32 4, label %sw.bb.1138
  ]

sw.bb.1137:                                       ; preds = %if.end.1136, %if.end.1136, %if.end.1136, %if.end.1136
  br label %sw.epilog.1155

sw.bb.1138:                                       ; preds = %if.end.1136
  %492 = load i32, i32* @members, align 4
  %tobool1139 = icmp ne i32 %492, 0
  br i1 %tobool1139, label %land.lhs.true.1140, label %lor.lhs.false.1143

land.lhs.true.1140:                               ; preds = %sw.bb.1138
  %493 = load i32, i32* %bracelev, align 4
  %cmp1141 = icmp eq i32 %493, 1
  br i1 %cmp1141, label %if.then.1152, label %lor.lhs.false.1143

lor.lhs.false.1143:                               ; preds = %land.lhs.true.1140, %sw.bb.1138
  %494 = load i32, i32* @globals, align 4
  %tobool1144 = icmp ne i32 %494, 0
  br i1 %tobool1144, label %land.lhs.true.1145, label %if.end.1153

land.lhs.true.1145:                               ; preds = %lor.lhs.false.1143
  %495 = load i32, i32* %bracelev, align 4
  %cmp1146 = icmp eq i32 %495, 0
  br i1 %cmp1146, label %land.lhs.true.1148, label %if.end.1153

land.lhs.true.1148:                               ; preds = %land.lhs.true.1145
  %496 = load i8, i8* @fvextern, align 1
  %tobool1149 = trunc i8 %496 to i1
  br i1 %tobool1149, label %lor.lhs.false.1150, label %if.then.1152

lor.lhs.false.1150:                               ; preds = %land.lhs.true.1148
  %497 = load i32, i32* @declarations, align 4
  %tobool1151 = icmp ne i32 %497, 0
  br i1 %tobool1151, label %if.then.1152, label %if.end.1153

if.then.1152:                                     ; preds = %lor.lhs.false.1150, %land.lhs.true.1148, %land.lhs.true.1140
  call void @make_C_tag(i1 zeroext false)
  br label %if.end.1153

if.end.1153:                                      ; preds = %if.then.1152, %lor.lhs.false.1150, %land.lhs.true.1145, %lor.lhs.false.1143
  br label %sw.default.1154

sw.default.1154:                                  ; preds = %if.end.1136, %if.end.1153
  store i32 9, i32* @fvdef, align 4
  br label %sw.epilog.1155

sw.epilog.1155:                                   ; preds = %sw.default.1154, %sw.bb.1137
  br label %sw.epilog.1230

sw.bb.1156:                                       ; preds = %if.end.591
  %498 = load i32, i32* %c_ext.addr, align 4
  %and1157 = and i32 %498, 1
  %tobool1158 = icmp ne i32 %and1157, 0
  br i1 %tobool1158, label %land.lhs.true.1159, label %if.end.1167

land.lhs.true.1159:                               ; preds = %sw.bb.1156
  %499 = load i32, i32* @structdef, align 4
  %cmp1160 = icmp eq i32 %499, 2
  br i1 %cmp1160, label %if.then.1165, label %lor.lhs.false.1162

lor.lhs.false.1162:                               ; preds = %land.lhs.true.1159
  %500 = load i32, i32* @fvdef, align 4
  %cmp1163 = icmp eq i32 %500, 4
  br i1 %cmp1163, label %if.then.1165, label %if.end.1167

if.then.1165:                                     ; preds = %lor.lhs.false.1162, %land.lhs.true.1159
  %501 = load i32, i32* %templatelev, align 4
  %inc1166 = add nsw i32 %501, 1
  store i32 %inc1166, i32* %templatelev, align 4
  br label %sw.epilog.1230

if.end.1167:                                      ; preds = %lor.lhs.false.1162, %sw.bb.1156
  br label %resetfvdef

sw.bb.1168:                                       ; preds = %if.end.591
  %502 = load i32, i32* %templatelev, align 4
  %cmp1169 = icmp sgt i32 %502, 0
  br i1 %cmp1169, label %if.then.1171, label %if.end.1173

if.then.1171:                                     ; preds = %sw.bb.1168
  %503 = load i32, i32* %templatelev, align 4
  %dec1172 = add nsw i32 %503, -1
  store i32 %dec1172, i32* %templatelev, align 4
  br label %sw.epilog.1230

if.end.1173:                                      ; preds = %sw.bb.1168
  br label %resetfvdef

sw.bb.1174:                                       ; preds = %if.end.591, %if.end.591
  %504 = load i32, i32* @objdef, align 4
  %cmp1175 = icmp eq i32 %504, 6
  br i1 %cmp1175, label %land.lhs.true.1177, label %if.end.1181

land.lhs.true.1177:                               ; preds = %sw.bb.1174
  %505 = load i32, i32* %bracelev, align 4
  %cmp1178 = icmp eq i32 %505, 0
  br i1 %cmp1178, label %if.then.1180, label %if.end.1181

if.then.1180:                                     ; preds = %land.lhs.true.1177
  store i32 7, i32* @objdef, align 4
  br label %sw.epilog.1230

if.end.1181:                                      ; preds = %land.lhs.true.1177, %sw.bb.1174
  br label %resetfvdef

resetfvdef:                                       ; preds = %if.end.1181, %if.end.1173, %if.end.1167
  br label %sw.bb.1182

sw.bb.1182:                                       ; preds = %if.end.591, %if.end.591, %if.end.591, %if.end.591, %if.end.591, %if.end.591, %if.end.591, %if.end.591, %if.end.591, %if.end.591, %resetfvdef
  %506 = load i32, i32* @definedef, align 4
  %cmp1183 = icmp ne i32 %506, 0
  br i1 %cmp1183, label %if.then.1185, label %if.end.1186

if.then.1185:                                     ; preds = %sw.bb.1182
  br label %sw.epilog.1230

if.end.1186:                                      ; preds = %sw.bb.1182
  %507 = load i32, i32* @fvdef, align 4
  switch i32 %507, label %sw.default.1188 [
    i32 3, label %sw.bb.1187
    i32 6, label %sw.bb.1187
    i32 8, label %sw.bb.1187
    i32 9, label %sw.bb.1187
  ]

sw.bb.1187:                                       ; preds = %if.end.1186, %if.end.1186, %if.end.1186, %if.end.1186
  br label %sw.epilog.1189

sw.default.1188:                                  ; preds = %if.end.1186
  store i32 0, i32* @fvdef, align 4
  br label %sw.epilog.1189

sw.epilog.1189:                                   ; preds = %sw.default.1188, %sw.bb.1187
  br label %sw.epilog.1230

sw.bb.1190:                                       ; preds = %if.end.591
  %508 = load i32, i32* @objdef, align 4
  %cmp1191 = icmp eq i32 %508, 3
  br i1 %cmp1191, label %if.then.1193, label %if.end.1194

if.then.1193:                                     ; preds = %sw.bb.1190
  call void @make_C_tag(i1 zeroext true)
  store i32 11, i32* @objdef, align 4
  br label %if.end.1194

if.end.1194:                                      ; preds = %if.then.1193, %sw.bb.1190
  %509 = load i8, i8* %quotednl, align 1
  %tobool1195 = trunc i8 %509 to i1
  br i1 %tobool1195, label %if.then.1196, label %if.else.1209

if.then.1196:                                     ; preds = %if.end.1194
  br label %do.body.1197

do.body.1197:                                     ; preds = %if.then.1196
  %510 = load i64, i64* @charno, align 8
  %511 = load i32, i32* %curndx, align 4
  %idxprom1198 = sext i32 %511 to i64
  %arrayidx1199 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom1198
  %linepos1200 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1199, i32 0, i32 0
  store i64 %510, i64* %linepos1200, align 8
  %512 = load i32, i32* %curndx, align 4
  %idxprom1201 = sext i32 %512 to i64
  %arrayidx1202 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom1201
  %lb1203 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1202, i32 0, i32 1
  %513 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* %lb1203, %struct._IO_FILE* %513)
  %514 = load i32, i32* %curndx, align 4
  %idxprom1204 = sext i32 %514 to i64
  %arrayidx1205 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom1204
  %lb1206 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1205, i32 0, i32 1
  %buffer1207 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb1206, i32 0, i32 2
  %515 = load i8*, i8** %buffer1207, align 8
  store i8* %515, i8** %lp, align 8
  store i8 0, i8* %quotednl, align 1
  %516 = load i32, i32* %curndx, align 4
  store i32 %516, i32* %newndx, align 4
  br label %do.end.1208

do.end.1208:                                      ; preds = %do.body.1197
  br label %if.end.1229

if.else.1209:                                     ; preds = %if.end.1194
  br label %do.body.1210

do.body.1210:                                     ; preds = %if.else.1209
  br label %do.body.1211

do.body.1211:                                     ; preds = %do.body.1210
  %517 = load i64, i64* @charno, align 8
  %518 = load i32, i32* %curndx, align 4
  %idxprom1212 = sext i32 %518 to i64
  %arrayidx1213 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom1212
  %linepos1214 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1213, i32 0, i32 0
  store i64 %517, i64* %linepos1214, align 8
  %519 = load i32, i32* %curndx, align 4
  %idxprom1215 = sext i32 %519 to i64
  %arrayidx1216 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom1215
  %lb1217 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1216, i32 0, i32 1
  %520 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* %lb1217, %struct._IO_FILE* %520)
  %521 = load i32, i32* %curndx, align 4
  %idxprom1218 = sext i32 %521 to i64
  %arrayidx1219 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 %idxprom1218
  %lb1220 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1219, i32 0, i32 1
  %buffer1221 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb1220, i32 0, i32 2
  %522 = load i8*, i8** %buffer1221, align 8
  store i8* %522, i8** %lp, align 8
  store i8 0, i8* %quotednl, align 1
  %523 = load i32, i32* %curndx, align 4
  store i32 %523, i32* %newndx, align 4
  br label %do.end.1222

do.end.1222:                                      ; preds = %do.body.1211
  %valid1223 = getelementptr inbounds %struct.tok, %struct.tok* %savetoken, i32 0, i32 3
  %524 = load i8, i8* %valid1223, align 1
  %tobool1224 = trunc i8 %524 to i1
  br i1 %tobool1224, label %if.then.1225, label %if.end.1227

if.then.1225:                                     ; preds = %do.end.1222
  %525 = bitcast %struct.tok* %savetoken to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.tok* @token to i8*), i8* %525, i64 32, i32 8, i1 false)
  %valid1226 = getelementptr inbounds %struct.tok, %struct.tok* %savetoken, i32 0, i32 3
  store i8 0, i8* %valid1226, align 1
  br label %if.end.1227

if.end.1227:                                      ; preds = %if.then.1225, %do.end.1222
  store i32 0, i32* @definedef, align 4
  br label %do.end.1228

do.end.1228:                                      ; preds = %if.end.1227
  br label %if.end.1229

if.end.1229:                                      ; preds = %do.end.1228, %do.end.1208
  br label %sw.epilog.1230

sw.epilog.1230:                                   ; preds = %if.end.591, %if.end.1229, %sw.epilog.1189, %if.then.1185, %if.then.1180, %if.then.1171, %if.then.1165, %sw.epilog.1155, %if.then.1135, %if.end.1131, %if.then.1095, %if.end.1091, %if.then.1086, %sw.epilog.1081, %if.then.1013, %if.end.1009, %if.then.968, %if.end.964, %sw.epilog.955, %if.then.921, %if.then.916, %sw.epilog.913, %if.then.885, %if.end.878, %if.then.774, %if.end.767, %if.then.640, %if.end.633, %if.then.632, %if.then.625, %if.then.609, %if.then.605, %if.then.595
  br label %while.cond

while.end.1231:                                   ; preds = %while.cond
  %526 = load i8*, i8** getelementptr inbounds ([2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 0, i32 1, i32 2), align 8
  call void @free(i8* %526) #6
  %527 = load i8*, i8** getelementptr inbounds ([2 x %struct.anon], [2 x %struct.anon]* @lbs, i32 0, i64 1, i32 1, i32 2), align 8
  call void @free(i8* %527) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @consider_token(i8* %str, i32 %len, i32 %c, i32* %c_extp, i32 %bracelev, i32 %parlev, i8* %is_func_or_var) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %c_extp.addr = alloca i32*, align 8
  %bracelev.addr = alloca i32, align 4
  %parlev.addr = alloca i32, align 4
  %is_func_or_var.addr = alloca i8*, align 8
  %oldlen = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32* %c_extp, i32** %c_extp.addr, align 8
  store i32 %bracelev, i32* %bracelev.addr, align 4
  store i32 %parlev, i32* %parlev.addr, align 4
  store i8* %is_func_or_var, i8** %is_func_or_var.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %2 = load i32*, i32** %c_extp.addr, align 8
  %3 = load i32, i32* %2, align 4
  %call = call i32 @C_symtype(i8* %0, i32 %1, i32 %3)
  store i32 %call, i32* @consider_token.toktype, align 4
  %4 = load i32, i32* @consider_token.toktype, align 4
  %cmp = icmp eq i32 %4, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* @inattribute, align 1
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* @definedef, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load i32, i32* @consider_token.toktype, align 4
  %cmp1 = icmp eq i32 %6, 4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %sw.bb
  store i32 1, i32* @fvdef, align 4
  store i1 false, i1* %retval
  br label %return

if.end.3:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %7 = load i32, i32* @consider_token.toktype, align 4
  %cmp5 = icmp eq i32 %7, 14
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %sw.bb.4
  store i32 2, i32* @definedef, align 4
  br label %if.end.7

if.else:                                          ; preds = %sw.bb.4
  store i32 3, i32* @definedef, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  store i1 false, i1* %retval
  br label %return

sw.bb.8:                                          ; preds = %if.end
  store i32 3, i32* @definedef, align 4
  %8 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp eq i32 %8, 40
  %9 = load i8*, i8** %is_func_or_var.addr, align 8
  %frombool = zext i1 %cmp9 to i8
  store i8 %frombool, i8* %9, align 1
  %10 = load i8*, i8** %is_func_or_var.addr, align 8
  %11 = load i8, i8* %10, align 1
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %if.else.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.8
  %12 = load i8, i8* @constantypedefs, align 1
  %tobool10 = trunc i8 %12 to i1
  br i1 %tobool10, label %if.else.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  store i1 false, i1* %retval
  br label %return

if.else.12:                                       ; preds = %land.lhs.true, %sw.bb.8
  store i1 true, i1* %retval
  br label %return

sw.bb.13:                                         ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.140, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.3
  %13 = load i32, i32* @typdef, align 4
  switch i32 %13, label %sw.default.34 [
    i32 0, label %sw.bb.14
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.25
    i32 4, label %sw.bb.31
  ]

sw.bb.14:                                         ; preds = %sw.epilog
  %14 = load i32, i32* @consider_token.toktype, align 4
  %cmp15 = icmp eq i32 %14, 15
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %sw.bb.14
  %15 = load i8, i8* @typedefs, align 1
  %tobool17 = trunc i8 %15 to i1
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.16
  store i32 1, i32* @typdef, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.16
  store i8 0, i8* @fvextern, align 1
  store i32 0, i32* @fvdef, align 4
  store i1 false, i1* %retval
  br label %return

if.end.20:                                        ; preds = %sw.bb.14
  br label %sw.epilog.35

sw.bb.21:                                         ; preds = %sw.epilog
  %16 = load i32, i32* @consider_token.toktype, align 4
  switch i32 %16, label %sw.default.23 [
    i32 0, label %sw.bb.22
    i32 9, label %sw.bb.22
    i32 11, label %sw.bb.22
    i32 13, label %sw.bb.22
  ]

sw.bb.22:                                         ; preds = %sw.bb.21, %sw.bb.21, %sw.bb.21, %sw.bb.21
  store i32 2, i32* @typdef, align 4
  br label %sw.epilog.24

sw.default.23:                                    ; preds = %sw.bb.21
  br label %sw.epilog.24

sw.epilog.24:                                     ; preds = %sw.default.23, %sw.bb.22
  br label %sw.epilog.35

sw.bb.25:                                         ; preds = %sw.epilog
  %17 = load i32, i32* @structdef, align 4
  %cmp26 = icmp eq i32 %17, 0
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.30

land.lhs.true.27:                                 ; preds = %sw.bb.25
  %18 = load i32, i32* @fvdef, align 4
  %cmp28 = icmp eq i32 %18, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.27
  store i32 4, i32* @fvdef, align 4
  store i1 true, i1* %retval
  br label %return

if.end.30:                                        ; preds = %land.lhs.true.27, %sw.bb.25
  br label %sw.epilog.35

sw.bb.31:                                         ; preds = %sw.epilog
  %19 = load i32, i32* @consider_token.toktype, align 4
  switch i32 %19, label %sw.default.33 [
    i32 9, label %sw.bb.32
    i32 11, label %sw.bb.32
    i32 13, label %sw.bb.32
  ]

sw.bb.32:                                         ; preds = %sw.bb.31, %sw.bb.31, %sw.bb.31
  store i1 false, i1* %retval
  br label %return

sw.default.33:                                    ; preds = %sw.bb.31
  store i1 true, i1* %retval
  br label %return

sw.default.34:                                    ; preds = %sw.epilog
  br label %sw.epilog.35

sw.epilog.35:                                     ; preds = %sw.default.34, %if.end.30, %sw.epilog.24, %if.end.20
  %20 = load i32, i32* @consider_token.toktype, align 4
  switch i32 %20, label %sw.default.72 [
    i32 7, label %sw.bb.36
    i32 10, label %sw.bb.40
    i32 9, label %sw.bb.40
    i32 11, label %sw.bb.58
    i32 13, label %sw.bb.58
  ]

sw.bb.36:                                         ; preds = %sw.epilog.35
  %21 = load i32, i32* @structdef, align 4
  %cmp37 = icmp eq i32 %21, 2
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.36
  store i32 3, i32* @structdef, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %sw.bb.36
  store i1 false, i1* %retval
  br label %return

sw.bb.40:                                         ; preds = %sw.epilog.35, %sw.epilog.35
  %22 = load i32*, i32** %c_extp.addr, align 8
  %23 = load i32, i32* %22, align 4
  %and = and i32 %23, 4096
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.54

land.lhs.true.42:                                 ; preds = %sw.bb.40
  %24 = load i32, i32* %bracelev.addr, align 4
  %cmp43 = icmp eq i32 %24, 0
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.54

land.lhs.true.44:                                 ; preds = %land.lhs.true.42
  %25 = load i32, i32* @definedef, align 4
  %cmp45 = icmp eq i32 %25, 0
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.54

land.lhs.true.46:                                 ; preds = %land.lhs.true.44
  %26 = load i32, i32* @structdef, align 4
  %cmp47 = icmp eq i32 %26, 0
  br i1 %cmp47, label %land.lhs.true.48, label %if.end.54

land.lhs.true.48:                                 ; preds = %land.lhs.true.46
  %27 = load i32, i32* @typdef, align 4
  %cmp49 = icmp eq i32 %27, 0
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.54

land.lhs.true.50:                                 ; preds = %land.lhs.true.48
  %28 = load i32, i32* @fvdef, align 4
  %cmp51 = icmp eq i32 %28, 0
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %land.lhs.true.50
  %29 = load i32*, i32** %c_extp.addr, align 8
  %30 = load i32, i32* %29, align 4
  %or = or i32 %30, 1
  %and53 = and i32 %or, -4097
  %31 = load i32*, i32** %c_extp.addr, align 8
  store i32 %and53, i32* %31, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %land.lhs.true.50, %land.lhs.true.48, %land.lhs.true.46, %land.lhs.true.44, %land.lhs.true.42, %sw.bb.40
  %32 = load i32, i32* @consider_token.toktype, align 4
  %cmp55 = icmp eq i32 %32, 10
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  br label %sw.epilog.73

if.end.57:                                        ; preds = %if.end.54
  br label %sw.bb.58

sw.bb.58:                                         ; preds = %sw.epilog.35, %sw.epilog.35, %if.end.57
  %33 = load i32, i32* %parlev.addr, align 4
  %cmp59 = icmp eq i32 %33, 0
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.71

land.lhs.true.60:                                 ; preds = %sw.bb.58
  %34 = load i32, i32* @fvdef, align 4
  %cmp61 = icmp ne i32 %34, 9
  br i1 %cmp61, label %land.lhs.true.62, label %if.end.71

land.lhs.true.62:                                 ; preds = %land.lhs.true.60
  %35 = load i32, i32* @typdef, align 4
  %cmp63 = icmp eq i32 %35, 1
  br i1 %cmp63, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.62
  %36 = load i8, i8* @typedefs_or_cplusplus, align 1
  %tobool64 = trunc i8 %36 to i1
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.71

land.lhs.true.65:                                 ; preds = %lor.lhs.false
  %37 = load i32, i32* @structdef, align 4
  %cmp66 = icmp eq i32 %37, 0
  br i1 %cmp66, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %land.lhs.true.65, %land.lhs.true.62
  store i32 1, i32* @structdef, align 4
  %38 = load i32, i32* @consider_token.toktype, align 4
  store i32 %38, i32* @consider_token.structtype, align 4
  %39 = load i32, i32* %bracelev.addr, align 4
  store i32 %39, i32* @consider_token.structbracelev, align 4
  %40 = load i32, i32* @fvdef, align 4
  %cmp68 = icmp eq i32 %40, 4
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.67
  store i32 0, i32* @fvdef, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.then.67
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true.65, %lor.lhs.false, %land.lhs.true.60, %sw.bb.58
  store i1 false, i1* %retval
  br label %return

sw.default.72:                                    ; preds = %sw.epilog.35
  br label %sw.epilog.73

sw.epilog.73:                                     ; preds = %sw.default.72, %if.then.56
  %41 = load i32, i32* @structdef, align 4
  %cmp74 = icmp eq i32 %41, 1
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %sw.epilog.73
  store i32 2, i32* @structdef, align 4
  store i1 true, i1* %retval
  br label %return

if.end.76:                                        ; preds = %sw.epilog.73
  %42 = load i32, i32* @typdef, align 4
  %cmp77 = icmp ne i32 %42, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.76
  store i32 0, i32* @definedef, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.76
  %43 = load i32, i32* @objdef, align 4
  switch i32 %43, label %sw.default.117 [
    i32 0, label %sw.bb.80
    i32 2, label %sw.bb.85
    i32 1, label %sw.bb.87
    i32 4, label %sw.bb.89
    i32 6, label %sw.bb.90
    i32 7, label %sw.bb.91
    i32 9, label %sw.bb.95
    i32 10, label %sw.bb.100
    i32 11, label %sw.bb.112
  ]

sw.bb.80:                                         ; preds = %if.end.79
  %44 = load i32, i32* @consider_token.toktype, align 4
  switch i32 %44, label %sw.default.83 [
    i32 1, label %sw.bb.81
    i32 2, label %sw.bb.82
  ]

sw.bb.81:                                         ; preds = %sw.bb.80
  store i32 1, i32* @objdef, align 4
  store i1 false, i1* %retval
  br label %return

sw.bb.82:                                         ; preds = %sw.bb.80
  store i32 2, i32* @objdef, align 4
  store i1 false, i1* %retval
  br label %return

sw.default.83:                                    ; preds = %sw.bb.80
  br label %sw.epilog.84

sw.epilog.84:                                     ; preds = %sw.default.83
  br label %sw.epilog.118

sw.bb.85:                                         ; preds = %if.end.79
  %45 = load i8*, i8** %str.addr, align 8
  %46 = load i32, i32* %len.addr, align 4
  %call86 = call i8* @savenstr(i8* %45, i32 %46)
  store i8* %call86, i8** @objtag, align 8
  store i32 6, i32* @objdef, align 4
  store i1 false, i1* %retval
  br label %return

sw.bb.87:                                         ; preds = %if.end.79
  %47 = load i8*, i8** %str.addr, align 8
  %48 = load i32, i32* %len.addr, align 4
  %call88 = call i8* @savenstr(i8* %47, i32 %48)
  store i8* %call88, i8** @objtag, align 8
  store i32 3, i32* @objdef, align 4
  %49 = load i8*, i8** %is_func_or_var.addr, align 8
  store i8 1, i8* %49, align 1
  store i1 true, i1* %retval
  br label %return

sw.bb.89:                                         ; preds = %if.end.79
  store i32 5, i32* @objdef, align 4
  %50 = load i8*, i8** %is_func_or_var.addr, align 8
  store i8 1, i8* %50, align 1
  store i1 true, i1* %retval
  br label %return

sw.bb.90:                                         ; preds = %if.end.79
  br label %sw.epilog.118

sw.bb.91:                                         ; preds = %if.end.79
  %51 = load i32, i32* %parlev.addr, align 4
  %cmp92 = icmp eq i32 %51, 0
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %sw.bb.91
  store i32 0, i32* @fvdef, align 4
  store i32 8, i32* @objdef, align 4
  %52 = load i32, i32* %len.addr, align 4
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %52)
  %53 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %54 = load i8*, i8** %str.addr, align 8
  %55 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %55 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 %conv, i32 1, i1 false)
  %56 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %56 to i64
  %57 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %arrayidx = getelementptr inbounds i8, i8* %57, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i1 true, i1* %retval
  br label %return

if.end.94:                                        ; preds = %sw.bb.91
  store i1 false, i1* %retval
  br label %return

sw.bb.95:                                         ; preds = %if.end.79
  %58 = load i32, i32* %parlev.addr, align 4
  %cmp96 = icmp eq i32 %58, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %sw.bb.95
  store i32 10, i32* @objdef, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %sw.bb.95
  store i1 false, i1* %retval
  br label %return

sw.bb.100:                                        ; preds = %if.end.79
  %59 = load i32, i32* %parlev.addr, align 4
  %cmp101 = icmp eq i32 %59, 0
  br i1 %cmp101, label %if.then.103, label %if.end.111

if.then.103:                                      ; preds = %sw.bb.100
  store i32 8, i32* @objdef, align 4
  %60 = load i32, i32* @class_qualify, align 4
  %tobool104 = icmp ne i32 %60, 0
  br i1 %tobool104, label %if.then.105, label %if.end.110

if.then.105:                                      ; preds = %if.then.103
  %61 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 1), align 4
  store i32 %61, i32* %oldlen, align 4
  store i32 0, i32* @fvdef, align 4
  %62 = load i32, i32* %oldlen, align 4
  %63 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %62, %63
  call void @linebuffer_setlen(%struct.linebuffer* @token_name, i32 %add)
  %64 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %65 = load i32, i32* %oldlen, align 4
  %idx.ext = sext i32 %65 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  %66 = load i8*, i8** %str.addr, align 8
  %67 = load i32, i32* %len.addr, align 4
  %conv106 = sext i32 %67 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %66, i64 %conv106, i32 1, i1 false)
  %68 = load i32, i32* %oldlen, align 4
  %69 = load i32, i32* %len.addr, align 4
  %add107 = add nsw i32 %68, %69
  %idxprom108 = sext i32 %add107 to i64
  %70 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %70, i64 %idxprom108
  store i8 0, i8* %arrayidx109, align 1
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.105, %if.then.103
  store i1 true, i1* %retval
  br label %return

if.end.111:                                       ; preds = %sw.bb.100
  store i1 false, i1* %retval
  br label %return

sw.bb.112:                                        ; preds = %if.end.79
  %71 = load i32, i32* @consider_token.toktype, align 4
  %cmp113 = icmp eq i32 %71, 3
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %sw.bb.112
  store i32 0, i32* @objdef, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %sw.bb.112
  store i1 false, i1* %retval
  br label %return

sw.default.117:                                   ; preds = %if.end.79
  br label %sw.epilog.118

sw.epilog.118:                                    ; preds = %sw.default.117, %sw.bb.90, %sw.epilog.84
  %72 = load i32, i32* @consider_token.toktype, align 4
  switch i32 %72, label %sw.default.202 [
    i32 12, label %sw.bb.119
    i32 5, label %sw.bb.123
    i32 8, label %sw.bb.124
    i32 0, label %sw.bb.125
  ]

sw.bb.119:                                        ; preds = %sw.epilog.118
  store i8 1, i8* @fvextern, align 1
  %73 = load i32, i32* @fvdef, align 4
  switch i32 %73, label %sw.default.121 [
    i32 6, label %sw.bb.120
    i32 7, label %sw.bb.120
    i32 8, label %sw.bb.120
    i32 9, label %sw.bb.120
  ]

sw.bb.120:                                        ; preds = %sw.bb.119, %sw.bb.119, %sw.bb.119, %sw.bb.119
  br label %sw.epilog.122

sw.default.121:                                   ; preds = %sw.bb.119
  store i32 0, i32* @fvdef, align 4
  br label %sw.epilog.122

sw.epilog.122:                                    ; preds = %sw.default.121, %sw.bb.120
  store i1 false, i1* %retval
  br label %return

sw.bb.123:                                        ; preds = %sw.epilog.118
  store i8 0, i8* @fvextern, align 1
  store i32 9, i32* @fvdef, align 4
  store i1 false, i1* %retval
  br label %return

sw.bb.124:                                        ; preds = %sw.epilog.118
  store i32 3, i32* @fvdef, align 4
  %74 = load i8*, i8** %is_func_or_var.addr, align 8
  store i8 1, i8* %74, align 1
  store i1 true, i1* %retval
  br label %return

sw.bb.125:                                        ; preds = %sw.epilog.118
  %75 = load i8, i8* @constantypedefs, align 1
  %tobool126 = trunc i8 %75 to i1
  br i1 %tobool126, label %land.lhs.true.128, label %if.end.141

land.lhs.true.128:                                ; preds = %sw.bb.125
  %76 = load i32, i32* @structdef, align 4
  %cmp129 = icmp eq i32 %76, 0
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.141

land.lhs.true.131:                                ; preds = %land.lhs.true.128
  %77 = load i32, i32* @consider_token.structtype, align 4
  %cmp132 = icmp eq i32 %77, 13
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.141

land.lhs.true.134:                                ; preds = %land.lhs.true.131
  %78 = load i32, i32* %bracelev.addr, align 4
  %79 = load i32, i32* @consider_token.structbracelev, align 4
  %cmp135 = icmp sgt i32 %78, %79
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.141

land.lhs.true.137:                                ; preds = %land.lhs.true.134
  %80 = load i32, i32* @fvdef, align 4
  %cmp138 = icmp ne i32 %80, 9
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %land.lhs.true.137
  store i1 true, i1* %retval
  br label %return

if.end.141:                                       ; preds = %land.lhs.true.137, %land.lhs.true.134, %land.lhs.true.131, %land.lhs.true.128, %sw.bb.125
  %81 = load i32, i32* @fvdef, align 4
  switch i32 %81, label %sw.default.200 [
    i32 1, label %sw.bb.142
    i32 0, label %sw.bb.147
    i32 4, label %sw.bb.167
  ]

sw.bb.142:                                        ; preds = %if.end.141
  %82 = load i32, i32* %bracelev.addr, align 4
  %cmp143 = icmp sgt i32 %82, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %sw.bb.142
  br label %sw.epilog.201

if.end.146:                                       ; preds = %sw.bb.142
  store i32 2, i32* @fvdef, align 4
  %83 = load i8*, i8** %is_func_or_var.addr, align 8
  store i8 1, i8* %83, align 1
  store i1 true, i1* %retval
  br label %return

sw.bb.147:                                        ; preds = %if.end.141
  %84 = load i32, i32* @typdef, align 4
  switch i32 %84, label %sw.default.165 [
    i32 2, label %sw.bb.148
    i32 0, label %sw.bb.149
  ]

sw.bb.148:                                        ; preds = %sw.bb.147
  store i1 false, i1* %retval
  br label %return

sw.bb.149:                                        ; preds = %sw.bb.147
  %85 = load i8*, i8** %str.addr, align 8
  %call150 = call zeroext i1 @strneq(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i64 3)
  br i1 %call150, label %land.lhs.true.152, label %lor.lhs.false.156

land.lhs.true.152:                                ; preds = %sw.bb.149
  %86 = load i8*, i8** %str.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %86, i64 3
  %87 = load i8, i8* %arrayidx153, align 1
  %call154 = call zeroext i1 @endtoken(i8 zeroext %87)
  br i1 %call154, label %if.then.163, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %land.lhs.true.152, %sw.bb.149
  %88 = load i8*, i8** %str.addr, align 8
  %call157 = call zeroext i1 @strneq(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), i64 7)
  br i1 %call157, label %land.lhs.true.159, label %if.end.164

land.lhs.true.159:                                ; preds = %lor.lhs.false.156
  %89 = load i8*, i8** %str.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %89, i64 7
  %90 = load i8, i8* %arrayidx160, align 1
  %call161 = call zeroext i1 @endtoken(i8 zeroext %90)
  br i1 %call161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %land.lhs.true.159, %land.lhs.true.152
  store i32 9, i32* @fvdef, align 4
  store i1 false, i1* %retval
  br label %return

if.end.164:                                       ; preds = %land.lhs.true.159, %lor.lhs.false.156
  br label %sw.epilog.166

sw.default.165:                                   ; preds = %sw.bb.147
  br label %sw.epilog.166

sw.epilog.166:                                    ; preds = %sw.default.165, %if.end.164
  br label %sw.bb.167

sw.bb.167:                                        ; preds = %if.end.141, %sw.epilog.166
  %91 = load i32, i32* %len.addr, align 4
  %cmp168 = icmp sge i32 %91, 10
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.183

land.lhs.true.170:                                ; preds = %sw.bb.167
  %92 = load i8*, i8** %str.addr, align 8
  %93 = load i32, i32* %len.addr, align 4
  %idx.ext171 = sext i32 %93 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %92, i64 %idx.ext171
  %add.ptr173 = getelementptr inbounds i8, i8* %add.ptr172, i64 -10
  %call174 = call zeroext i1 @strneq(i8* %add.ptr173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0), i64 10)
  br i1 %call174, label %if.then.176, label %if.end.183

if.then.176:                                      ; preds = %land.lhs.true.170
  %94 = load i32*, i32** %c_extp.addr, align 8
  %95 = load i32, i32* %94, align 4
  %and177 = and i32 %95, 4096
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.then.179, label %if.end.182

if.then.179:                                      ; preds = %if.then.176
  %96 = load i32*, i32** %c_extp.addr, align 8
  %97 = load i32, i32* %96, align 4
  %or180 = or i32 %97, 1
  %and181 = and i32 %or180, -4097
  %98 = load i32*, i32** %c_extp.addr, align 8
  store i32 %and181, i32* %98, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.179, %if.then.176
  store i32 3, i32* @fvdef, align 4
  %99 = load i8*, i8** %is_func_or_var.addr, align 8
  store i8 1, i8* %99, align 1
  store i1 true, i1* %retval
  br label %return

if.end.183:                                       ; preds = %land.lhs.true.170, %sw.bb.167
  %100 = load i32, i32* %bracelev.addr, align 4
  %cmp184 = icmp sgt i32 %100, 0
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.199

land.lhs.true.186:                                ; preds = %if.end.183
  %101 = load i32, i32* @structdef, align 4
  %cmp187 = icmp eq i32 %101, 0
  br i1 %cmp187, label %land.lhs.true.189, label %if.then.198

land.lhs.true.189:                                ; preds = %land.lhs.true.186
  %102 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp190 = icmp sgt i32 %102, 0
  br i1 %cmp190, label %land.lhs.true.192, label %if.then.198

land.lhs.true.192:                                ; preds = %land.lhs.true.189
  %103 = load i32, i32* %bracelev.addr, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub = sub nsw i32 %104, 1
  %idxprom193 = sext i32 %sub to i64
  %105 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %105, i64 %idxprom193
  %106 = load i32, i32* %arrayidx194, align 4
  %add195 = add nsw i32 %106, 1
  %cmp196 = icmp eq i32 %103, %add195
  br i1 %cmp196, label %if.end.199, label %if.then.198

if.then.198:                                      ; preds = %land.lhs.true.192, %land.lhs.true.189, %land.lhs.true.186
  br label %sw.epilog.201

if.end.199:                                       ; preds = %land.lhs.true.192, %if.end.183
  store i32 4, i32* @fvdef, align 4
  %107 = load i8*, i8** %is_func_or_var.addr, align 8
  store i8 1, i8* %107, align 1
  store i1 true, i1* %retval
  br label %return

sw.default.200:                                   ; preds = %if.end.141
  br label %sw.epilog.201

sw.epilog.201:                                    ; preds = %sw.default.200, %if.then.198, %if.then.145
  br label %sw.epilog.203

sw.default.202:                                   ; preds = %sw.epilog.118
  br label %sw.epilog.203

sw.epilog.203:                                    ; preds = %sw.default.202, %sw.epilog.201
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %sw.epilog.203, %if.end.199, %if.end.182, %if.then.163, %sw.bb.148, %if.end.146, %if.then.140, %sw.bb.124, %sw.bb.123, %sw.epilog.122, %if.end.116, %if.end.111, %if.end.110, %if.end.99, %if.end.94, %if.then.93, %sw.bb.89, %sw.bb.87, %sw.bb.85, %sw.bb.82, %sw.bb.81, %if.then.75, %if.end.71, %if.end.39, %sw.default.33, %sw.bb.32, %if.then.29, %if.end.19, %sw.bb.13, %if.else.12, %if.then.11, %if.end.7, %if.then.2, %if.then
  %108 = load i1, i1* %retval
  ret i1 %108
}

; Function Attrs: nounwind uwtable
define internal void @write_classname(%struct.linebuffer* %cn, i8* %qualifier) #0 {
entry:
  %cn.addr = alloca %struct.linebuffer*, align 8
  %qualifier.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %qlen = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.linebuffer* %cn, %struct.linebuffer** %cn.addr, align 8
  store i8* %qualifier, i8** %qualifier.addr, align 8
  %0 = load i8*, i8** %qualifier.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %qlen, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8**, i8*** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %len, align 4
  %4 = load %struct.linebuffer*, %struct.linebuffer** %cn.addr, align 8
  %len4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i32 0, i32 1
  store i32 0, i32* %len4, align 4
  %5 = load %struct.linebuffer*, %struct.linebuffer** %cn.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx5, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %7 = load i8**, i8*** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 0), align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i64 @strlen(i8* %8) #9
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %len, align 4
  %9 = load %struct.linebuffer*, %struct.linebuffer** %cn.addr, align 8
  %10 = load i32, i32* %len, align 4
  call void @linebuffer_setlen(%struct.linebuffer* %9, i32 %10)
  %11 = load %struct.linebuffer*, %struct.linebuffer** %cn.addr, align 8
  %buffer9 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer9, align 8
  %13 = load i8**, i8*** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 0), align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i8* @strcpy(i8* %12, i8* %14) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 0), align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx14, align 8
  store i8* %19, i8** %s, align 8
  %20 = load i8*, i8** %s, align 8
  %cmp15 = icmp eq i8* %20, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  br label %for.inc

if.end.18:                                        ; preds = %for.body
  %21 = load %struct.linebuffer*, %struct.linebuffer** %cn.addr, align 8
  %22 = load i32, i32* %len, align 4
  %23 = load i32, i32* %qlen, align 4
  %add = add nsw i32 %22, %23
  %conv19 = sext i32 %add to i64
  %24 = load i8*, i8** %s, align 8
  %call20 = call i64 @strlen(i8* %24) #9
  %add21 = add i64 %conv19, %call20
  %conv22 = trunc i64 %add21 to i32
  call void @linebuffer_setlen(%struct.linebuffer* %21, i32 %conv22)
  %25 = load %struct.linebuffer*, %struct.linebuffer** %cn.addr, align 8
  %buffer23 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %25, i32 0, i32 2
  %26 = load i8*, i8** %buffer23, align 8
  %27 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  %28 = load i8*, i8** %qualifier.addr, align 8
  %29 = load i8*, i8** %s, align 8
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i32 0, i32 0), i8* %28, i8* %29) #6
  %30 = load i32, i32* %len, align 4
  %add25 = add nsw i32 %30, %call24
  store i32 %add25, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.18, %if.then.17
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @linebuffer_setlen(%struct.linebuffer* %lbp, i32 %toksize) #0 {
entry:
  %lbp.addr = alloca %struct.linebuffer*, align 8
  %toksize.addr = alloca i32, align 4
  store %struct.linebuffer* %lbp, %struct.linebuffer** %lbp.addr, align 8
  store i32 %toksize, i32* %toksize.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %size = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  %2 = load i32, i32* %toksize.addr, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp sle i64 %1, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %size2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i32 0, i32 0
  %4 = load i64, i64* %size2, align 8
  %mul = mul nsw i64 %4, 2
  store i64 %mul, i64* %size2, align 8
  %5 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %7 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %size3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %7, i32 0, i32 0
  %8 = load i64, i64* %size3, align 8
  %mul4 = mul i64 %8, 1
  %call = call i8* @xrealloc(i8* %6, i64 %mul4)
  %9 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %buffer5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %9, i32 0, i32 2
  store i8* %call, i8** %buffer5, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %toksize.addr, align 4
  %11 = load %struct.linebuffer*, %struct.linebuffer** %lbp.addr, align 8
  %len = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %11, i32 0, i32 1
  store i32 %10, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @make_C_tag(i1 zeroext %isfun) #0 {
entry:
  %isfun.addr = alloca i8, align 1
  %frombool = zext i1 %isfun to i8
  store i8 %frombool, i8* %isfun.addr, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 2), align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @token_name, i32 0, i32 1), align 4
  %3 = load i8, i8* %isfun.addr, align 1
  %tobool1 = trunc i8 %3 to i1
  %4 = load i8*, i8** getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 2), align 4
  %add = add nsw i32 %5, %6
  %add2 = add nsw i32 %add, 1
  %7 = load i32, i32* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 5), align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 6), align 8
  call void @make_tag(i8* %1, i32 %2, i1 zeroext %tobool1, i8* %4, i32 %add2, i32 %7, i64 %8)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i8 0, i8* getelementptr inbounds (%struct.tok, %struct.tok* @token, i32 0, i32 3), align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @popclass_above(i32 %bracelev) #0 {
entry:
  %bracelev.addr = alloca i32, align 4
  %nl = alloca i32, align 4
  store i32 %bracelev, i32* %bracelev.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %nl, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %nl, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %bracelev.addr, align 4
  %cmp1 = icmp sge i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i32, i32* %nl, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8**, i8*** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 0), align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %idxprom2
  %9 = load i8*, i8** %arrayidx3, align 8
  call void @free(i8* %9) #6
  %10 = load i32, i32* %nl, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %nl, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %nl, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pushclass_above(i32 %bracelev, i8* %str, i32 %len) #0 {
entry:
  %bracelev.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %nl = alloca i32, align 4
  %size = alloca i32, align 4
  store i32 %bracelev, i32* %bracelev.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %bracelev.addr, align 4
  call void @popclass_above(i32 %0)
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  store i32 %1, i32* %nl, align 4
  %2 = load i32, i32* %nl, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 3), align 4
  %cmp = icmp sge i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 3), align 4
  %mul = mul nsw i32 %4, 2
  store i32 %mul, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 3), align 4
  store i32 %mul, i32* %size, align 4
  %5 = load i8**, i8*** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 0), align 8
  %6 = bitcast i8** %5 to i8*
  %7 = load i32, i32* %size, align 4
  %conv = sext i32 %7 to i64
  %mul1 = mul i64 %conv, 8
  %call = call i8* @xrealloc(i8* %6, i64 %mul1)
  %8 = bitcast i8* %call to i8**
  store i8** %8, i8*** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 0), align 8
  %9 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load i32, i32* %size, align 4
  %conv2 = sext i32 %11 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call i8* @xrealloc(i8* %10, i64 %mul3)
  %12 = bitcast i8* %call4 to i32*
  store i32* %12, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8*, i8** %str.addr, align 8
  %cmp5 = icmp eq i8* %13, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i32, i32* %len.addr, align 4
  %call7 = call i8* @savenstr(i8* %14, i32 %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call7, %cond.false ]
  %16 = load i32, i32* %nl, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  store i8* %cond, i8** %arrayidx, align 8
  %18 = load i32, i32* %bracelev.addr, align 4
  %19 = load i32, i32* %nl, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load i32*, i32** getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 1), align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 %idxprom8
  store i32 %18, i32* %arrayidx9, align 4
  %21 = load i32, i32* %nl, align 4
  %add = add nsw i32 %21, 1
  store i32 %add, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @cstack, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @C_symtype(i8* %str, i32 %len, i32 %c_ext) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %c_ext.addr = alloca i32, align 4
  %se = alloca %struct.C_stab_entry*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %c_ext, i32* %c_ext.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %call = call %struct.C_stab_entry* @in_word_set(i8* %0, i32 %1)
  store %struct.C_stab_entry* %call, %struct.C_stab_entry** %se, align 8
  %2 = load %struct.C_stab_entry*, %struct.C_stab_entry** %se, align 8
  %cmp = icmp eq %struct.C_stab_entry* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.C_stab_entry*, %struct.C_stab_entry** %se, align 8
  %c_ext1 = getelementptr inbounds %struct.C_stab_entry, %struct.C_stab_entry* %3, i32 0, i32 1
  %4 = load i32, i32* %c_ext1, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i32, i32* %c_ext.addr, align 4
  %6 = load %struct.C_stab_entry*, %struct.C_stab_entry** %se, align 8
  %c_ext2 = getelementptr inbounds %struct.C_stab_entry, %struct.C_stab_entry* %6, i32 0, i32 1
  %7 = load i32, i32* %c_ext2, align 4
  %and = and i32 %5, %7
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load %struct.C_stab_entry*, %struct.C_stab_entry** %se, align 8
  %type = getelementptr inbounds %struct.C_stab_entry, %struct.C_stab_entry* %8, i32 0, i32 2
  %9 = load i32, i32* %type, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct.C_stab_entry* @in_word_set(i8* %str, i32 %len) #0 {
entry:
  %retval = alloca %struct.C_stab_entry*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %key = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp ule i32 %0, 15
  br i1 %cmp, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp uge i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call = call i32 @hash(i8* %2, i32 %3)
  store i32 %call, i32* %key, align 4
  %4 = load i32, i32* %key, align 4
  %cmp2 = icmp sle i32 %4, 34
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.22

land.lhs.true.3:                                  ; preds = %if.then
  %5 = load i32, i32* %key, align 4
  %cmp4 = icmp sge i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end.22

if.then.5:                                        ; preds = %land.lhs.true.3
  %6 = load i32, i32* %key, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [35 x %struct.C_stab_entry], [35 x %struct.C_stab_entry]* @in_word_set.wordlist, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.C_stab_entry, %struct.C_stab_entry* %arrayidx, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  store i8* %7, i8** %s, align 8
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %10 = load i8*, i8** %s, align 8
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %if.then.5
  %12 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8*, i8** %s, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i32, i32* %len.addr, align 4
  %sub = sub i32 %14, 1
  %conv11 = zext i32 %sub to i64
  %call12 = call i32 @strncmp(i8* %add.ptr, i8* %add.ptr10, i64 %conv11) #9
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %15 = load i32, i32* %len.addr, align 4
  %idxprom14 = zext i32 %15 to i64
  %16 = load i8*, i8** %s, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 %idxprom14
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %land.lhs.true.13
  %18 = load i32, i32* %key, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [35 x %struct.C_stab_entry], [35 x %struct.C_stab_entry]* @in_word_set.wordlist, i32 0, i64 %idxprom20
  store %struct.C_stab_entry* %arrayidx21, %struct.C_stab_entry** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.13, %land.lhs.true.9, %if.then.5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true.3, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %entry
  store %struct.C_stab_entry* null, %struct.C_stab_entry** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.19
  %19 = load %struct.C_stab_entry*, %struct.C_stab_entry** %retval
  ret %struct.C_stab_entry* %19
}

; Function Attrs: nounwind uwtable
define internal i32 @hash(i8* %str, i32 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hval = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  store i32 %0, i32* %hval, align 4
  %1 = load i32, i32* %hval, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 2
  %3 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @hash.asso_values, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  %5 = load i32, i32* %hval, align 4
  %add = add nsw i32 %5, %conv
  store i32 %add, i32* %hval, align 4
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %sw.default
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx2, align 1
  %idxprom3 = zext i8 %7 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @hash.asso_values, i32 0, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %9 = load i32, i32* %hval, align 4
  %add6 = add nsw i32 %9, %conv5
  store i32 %add6, i32* %hval, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %10 = load i32, i32* %hval, align 4
  ret i32 %10
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @xrealloc(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @realloc(i8* %0, i64 %1) #6
  store i8* %call, i8** %result, align 8
  %2 = load i8*, i8** %result, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.176, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %result, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @erlang_attribute(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %call = call zeroext i1 @strneq(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.194, i32 0, i32 0), i64 7)
  br i1 %call, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 7
  %3 = load i8, i8* %arrayidx, align 1
  %call1 = call zeroext i1 @notinname(i8 zeroext %3)
  br i1 %call1, label %land.lhs.true.2, label %lor.lhs.false

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %call4 = call i8* @skip_spaces(i8* %add.ptr3)
  store i8* %call4, i8** %cp, align 8
  %tobool = icmp ne i8* %call4, null
  br i1 %tobool, label %land.lhs.true.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %5 = load i8*, i8** %cp, align 8
  %call5 = call zeroext i1 @strneq(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0), i64 7)
  br i1 %call5, label %land.lhs.true.6, label %if.end.23

land.lhs.true.6:                                  ; preds = %lor.lhs.false
  %6 = load i8*, i8** %cp, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 7
  %7 = load i8, i8* %arrayidx7, align 1
  %call8 = call zeroext i1 @notinname(i8 zeroext %7)
  br i1 %call8, label %land.lhs.true.9, label %if.end.23

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %8 = load i8*, i8** %cp, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %8, i64 8
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 -1
  %call12 = call i8* @skip_spaces(i8* %add.ptr11)
  store i8* %call12, i8** %cp, align 8
  %tobool13 = icmp ne i8* %call12, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.23

land.lhs.true.14:                                 ; preds = %land.lhs.true.9, %land.lhs.true.2
  %9 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true.14
  %11 = load i8*, i8** %cp, align 8
  %call16 = call i8* @skip_spaces(i8* %11)
  %call17 = call i32 @erlang_atom(i8* %call16)
  store i32 %call17, i32* %len, align 4
  %12 = load i32, i32* %len, align 4
  %cmp18 = icmp sgt i32 %12, 0
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  %13 = load i8*, i8** %cp, align 8
  %14 = load i32, i32* %len, align 4
  %15 = load i8*, i8** %s.addr, align 8
  %16 = load i8*, i8** %cp, align 8
  %17 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %18 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv22 = trunc i64 %sub.ptr.sub to i32
  %19 = load i32, i32* @lineno, align 4
  %20 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %13, i32 %14, i1 zeroext true, i8* %15, i32 %conv22, i32 %19, i64 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %land.lhs.true.14, %land.lhs.true.9, %land.lhs.true.6, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @erlang_func(i8* %s, i8* %last) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %last.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %last, i8** %last.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @erlang_atom(i8* %0)
  store i32 %call, i32* %pos, align 4
  %1 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %pos, align 4
  store i32 %2, i32* %len, align 4
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %call1 = call i8* @skip_spaces(i8* %add.ptr)
  %5 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %pos, align 4
  %6 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 40
  br i1 %cmp3, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %last.addr, align 8
  %cmp5 = icmp eq i8* %9, null
  br i1 %cmp5, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i32, i32* %len, align 4
  %11 = load i8*, i8** %last.addr, align 8
  %call7 = call i64 @strlen(i8* %11) #9
  %conv8 = trunc i64 %call7 to i32
  %cmp9 = icmp ne i32 %10, %conv8
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8*, i8** %last.addr, align 8
  %14 = load i32, i32* %len, align 4
  %conv12 = sext i32 %14 to i64
  %call13 = call zeroext i1 @strneq(i8* %12, i8* %13, i64 %conv12)
  br i1 %call13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false, %land.lhs.true
  %15 = load i8*, i8** %s.addr, align 8
  %16 = load i32, i32* %len, align 4
  %17 = load i8*, i8** %s.addr, align 8
  %18 = load i32, i32* %pos, align 4
  %19 = load i32, i32* @lineno, align 4
  %20 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %15, i32 %16, i1 zeroext true, i8* %17, i32 %18, i32 %19, i64 %20)
  %21 = load i32, i32* %len, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.11, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @erlang_atom(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %pos, align 4
  %0 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %call = call zeroext i1 @c_isalpha(i32 %conv)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %pos, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load i8*, i8** %s.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv4, 95
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then
  %6 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %pos, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8*, i8** %s.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %call9 = call zeroext i1 @c_isalnum(i32 %conv8)
  br i1 %call9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %10 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load i8*, i8** %s.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 %idxprom11
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %13 = phi i1 [ true, %do.cond ], [ %cmp14, %lor.rhs ]
  br i1 %13, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  br label %if.end.49

if.else:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i8*, i8** %s.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %idxprom16
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 39
  br i1 %cmp19, label %if.then.21, label %if.end.48

if.then.21:                                       ; preds = %if.else
  %17 = load i32, i32* %pos, align 4
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %18 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load i8*, i8** %s.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 %idxprom23
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %20 to i32
  %cmp26 = icmp ne i32 %conv25, 39
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %pos, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load i8*, i8** %s.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 %idxprom28
  %23 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %23 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then.45, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %for.body
  %24 = load i32, i32* %pos, align 4
  %idxprom34 = sext i32 %24 to i64
  %25 = load i8*, i8** %s.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 %idxprom34
  %26 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %26 to i32
  %cmp37 = icmp eq i32 %conv36, 92
  br i1 %cmp37, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.33
  %27 = load i32, i32* %pos, align 4
  %inc39 = add nsw i32 %27, 1
  store i32 %inc39, i32* %pos, align 4
  %idxprom40 = sext i32 %inc39 to i64
  %28 = load i8*, i8** %s.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %28, i64 %idxprom40
  %29 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %29 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then.45, label %if.end

if.then.45:                                       ; preds = %land.lhs.true, %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.33
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %pos, align 4
  %inc46 = add nsw i32 %30, 1
  store i32 %inc46, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %pos, align 4
  %inc47 = add nsw i32 %31, 1
  store i32 %inc47, i32* %pos, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %do.end
  %32 = load i32, i32* %pos, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.45
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @strncaseeq(i8* %s, i8* %t, i64 %n) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %t.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %call = call i32 @c_strncasecmp(i8* %0, i8* %1, i64 %2) #9
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal void @get_tag(i8* %bp, i8** %namepp) #0 {
entry:
  %bp.addr = alloca i8*, align 8
  %namepp.addr = alloca i8**, align 8
  %cp = alloca i8*, align 8
  store i8* %bp, i8** %bp.addr, align 8
  store i8** %namepp, i8*** %namepp.addr, align 8
  %0 = load i8*, i8** %bp.addr, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %bp.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %add.ptr, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %call = call zeroext i1 @notinname(i8 zeroext %5)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %bp.addr, align 8
  %8 = load i8*, i8** %cp, align 8
  %9 = load i8*, i8** %bp.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = trunc i64 %sub.ptr.sub to i32
  %10 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %11 = load i8*, i8** %cp, align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast3 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %12 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %add = add nsw i64 %sub.ptr.sub5, 1
  %conv6 = trunc i64 %add to i32
  %13 = load i32, i32* @lineno, align 4
  %14 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %7, i32 %conv2, i1 zeroext true, i8* %10, i32 %conv6, i32 %13, i64 %14)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load i8**, i8*** %namepp.addr, align 8
  %cmp7 = icmp ne i8** %15, null
  br i1 %cmp7, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end
  %16 = load i8*, i8** %bp.addr, align 8
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8*, i8** %bp.addr, align 8
  %sub.ptr.lhs.cast10 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %18 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %conv13 = trunc i64 %sub.ptr.sub12 to i32
  %call14 = call i8* @savenstr(i8* %16, i32 %conv13)
  %19 = load i8**, i8*** %namepp.addr, align 8
  store i8* %call14, i8** %19, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @skip_non_spaces(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %cp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call zeroext i1 @c_isspace(i32 %conv2)
  %lnot = xor i1 %call, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i8*, i8** %cp.addr, align 8
  ret i8* %6
}

; Function Attrs: nounwind readonly
declare i32 @c_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @F_takeprec() #0 {
entry:
  %0 = load i8*, i8** @dbp, align 8
  %call = call i8* @skip_spaces(i8* %0)
  store i8* %call, i8** @dbp, align 8
  %1 = load i8*, i8** @dbp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** @dbp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** @dbp, align 8
  %4 = load i8*, i8** @dbp, align 8
  %call2 = call i8* @skip_spaces(i8* %4)
  store i8* %call2, i8** @dbp, align 8
  %5 = load i8*, i8** @dbp, align 8
  %call3 = call zeroext i1 @strneq(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.220, i32 0, i32 0), i64 3)
  br i1 %call3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load i8*, i8** @dbp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 3
  store i8* %add.ptr, i8** @dbp, align 8
  br label %do.end

if.end.5:                                         ; preds = %if.end
  %7 = load i8*, i8** @dbp, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %call7 = call zeroext i1 @c_isdigit(i32 %conv6)
  br i1 %call7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %9 = load i8*, i8** @dbp, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %9, i32 -1
  store i8* %incdec.ptr9, i8** @dbp, align 8
  br label %do.end

if.end.10:                                        ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.10
  %10 = load i8*, i8** @dbp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr11, i8** @dbp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %11 = load i8*, i8** @dbp, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = sext i8 %12 to i32
  %call13 = call zeroext i1 @c_isdigit(i32 %conv12)
  br i1 %call13, label %do.body, label %do.end

do.end:                                           ; preds = %if.then, %if.then.4, %if.then.8, %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @F_getit(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load i8*, i8** @dbp, align 8
  %call = call i8* @skip_spaces(i8* %0)
  store i8* %call, i8** @dbp, align 8
  %1 = load i8*, i8** @dbp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* @lb, %struct._IO_FILE* %3)
  %4 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  store i8* %4, i8** @dbp, align 8
  %5 = load i8*, i8** @dbp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 5
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv2, 38
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load i8*, i8** @dbp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 6
  store i8* %add.ptr, i8** @dbp, align 8
  %8 = load i8*, i8** @dbp, align 8
  %call6 = call i8* @skip_spaces(i8* %8)
  store i8* %call6, i8** @dbp, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %9 = load i8*, i8** @dbp, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = sext i8 %10 to i32
  %call9 = call zeroext i1 @c_isalpha(i32 %conv8)
  br i1 %call9, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.7
  %11 = load i8*, i8** @dbp, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp ne i32 %conv10, 95
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.18

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %13 = load i8*, i8** @dbp, align 8
  %14 = load i8, i8* %13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp ne i32 %conv14, 36
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.13
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.13, %land.lhs.true, %if.end.7
  %15 = load i8*, i8** @dbp, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %add.ptr19, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load i8*, i8** %cp, align 8
  %19 = load i8, i8* %18, align 1
  %call23 = call zeroext i1 @intoken(i8 zeroext %19)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %20 = phi i1 [ false, %for.cond ], [ %call23, %land.rhs ]
  br i1 %20, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i8*, i8** @dbp, align 8
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8*, i8** @dbp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv25 = trunc i64 %sub.ptr.sub to i32
  %25 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %27 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %add = add nsw i64 %sub.ptr.sub28, 1
  %conv29 = trunc i64 %add to i32
  %28 = load i32, i32* @lineno, align 4
  %29 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %22, i32 %conv25, i1 zeroext true, i8* %25, i32 %conv29, i32 %28, i64 %29)
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @skip_name(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %call = call zeroext i1 @notinname(i8 zeroext %1)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** %cp.addr, align 8
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal void @L_getit() #0 {
entry:
  %0 = load i8*, i8** @dbp, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @dbp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** @dbp, align 8
  br label %if.end.28

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** @dbp, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 40
  br i1 %cmp3, label %if.then.5, label %if.end.27

if.then.5:                                        ; preds = %if.else
  %5 = load i8*, i8** @dbp, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr6, i8** @dbp, align 8
  %6 = load i8*, i8** @dbp, align 8
  %call = call zeroext i1 @strneq(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.237, i32 0, i32 0), i64 5)
  br i1 %call, label %land.lhs.true, label %land.lhs.true.13

land.lhs.true:                                    ; preds = %if.then.5
  %7 = load i8*, i8** @dbp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 5
  %8 = load i8, i8* %arrayidx, align 1
  %call8 = call zeroext i1 @notinname(i8 zeroext %8)
  br i1 %call8, label %land.lhs.true.10, label %land.lhs.true.13

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %9 = load i8*, i8** @dbp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 6
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %call12 = call i8* @skip_spaces(i8* %add.ptr11)
  store i8* %call12, i8** @dbp, align 8
  %tobool = icmp ne i8* %call12, null
  br i1 %tobool, label %if.end, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true.10, %land.lhs.true, %if.then.5
  %10 = load i8*, i8** @dbp, align 8
  %call14 = call zeroext i1 @strneq(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.238, i32 0, i32 0), i64 5)
  br i1 %call14, label %land.lhs.true.16, label %if.then.25

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %11 = load i8*, i8** @dbp, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %11, i64 5
  %12 = load i8, i8* %arrayidx17, align 1
  %call18 = call zeroext i1 @notinname(i8 zeroext %12)
  br i1 %call18, label %land.lhs.true.20, label %if.then.25

land.lhs.true.20:                                 ; preds = %land.lhs.true.16
  %13 = load i8*, i8** @dbp, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %13, i64 6
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr21, i64 -1
  %call23 = call i8* @skip_spaces(i8* %add.ptr22)
  store i8* %call23, i8** @dbp, align 8
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.end, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.20, %land.lhs.true.16, %land.lhs.true.13
  %14 = load i8*, i8** @dbp, align 8
  %call26 = call i8* @skip_spaces(i8* %14)
  store i8* %call26, i8** @dbp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.25, %land.lhs.true.20, %land.lhs.true.10
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then
  %15 = load i8*, i8** @dbp, align 8
  call void @get_tag(i8* %15, i8** null)
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @prolog_skip_comment(%struct.linebuffer* %plb, %struct._IO_FILE* %inf) #0 {
entry:
  %plb.addr = alloca %struct.linebuffer*, align 8
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  store %struct.linebuffer* %plb, %struct.linebuffer** %plb.addr, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.linebuffer*, %struct.linebuffer** %plb.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %2 = load i8*, i8** %cp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 42
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i8*, i8** %cp, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 47
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.linebuffer*, %struct.linebuffer** %plb.addr, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @readline(%struct.linebuffer* %9, %struct._IO_FILE* %10)
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call zeroext i1 @perhaps_more_input(%struct._IO_FILE* %11)
  br i1 %call, label %do.body, label %do.end

do.end:                                           ; preds = %if.then, %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @prolog_pr(i8* %s, i8* %last) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %last.addr = alloca i8*, align 8
  %pos = alloca i64, align 8
  %len = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %last, i8** %last.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @prolog_atom(i8* %0, i64 0)
  store i64 %call, i64* %pos, align 8
  %1 = load i64, i64* %pos, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %pos, align 8
  store i64 %2, i64* %len, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4
  %call1 = call i8* @skip_spaces(i8* %add.ptr)
  %5 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %pos, align 8
  %6 = load i64, i64* %pos, align 8
  %7 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %6
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %land.lhs.true.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i64, i64* %pos, align 8
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %9
  %11 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv4, 40
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load i64, i64* %pos, align 8
  %add = add i64 %12, 1
  store i64 %add, i64* %pos, align 8
  %tobool7 = icmp ne i64 %add, 0
  br i1 %tobool7, label %land.lhs.true.22, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %13 = load i64, i64* %pos, align 8
  %14 = load i8*, i8** %s.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 %13
  %15 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %15 to i32
  %cmp11 = icmp eq i32 %conv10, 58
  br i1 %cmp11, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %lor.lhs.false.8
  %16 = load i64, i64* %pos, align 8
  %add14 = add i64 %16, 1
  %17 = load i8*, i8** %s.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 %add14
  %18 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %18 to i32
  %cmp17 = icmp eq i32 %conv16, 45
  br i1 %cmp17, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %land.lhs.true.13
  %19 = load i64, i64* %pos, align 8
  %add20 = add i64 %19, 2
  store i64 %add20, i64* %pos, align 8
  %tobool21 = icmp ne i64 %add20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %land.lhs.true.19, %land.lhs.true, %if.end
  %20 = load i8*, i8** %last.addr, align 8
  %cmp23 = icmp eq i8* %20, null
  br i1 %cmp23, label %if.then.31, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %land.lhs.true.22
  %21 = load i64, i64* %len, align 8
  %22 = load i8*, i8** %last.addr, align 8
  %call26 = call i64 @strlen(i8* %22) #9
  %cmp27 = icmp ne i64 %21, %call26
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %23 = load i8*, i8** %s.addr, align 8
  %24 = load i8*, i8** %last.addr, align 8
  %25 = load i64, i64* %len, align 8
  %call30 = call zeroext i1 @strneq(i8* %23, i8* %24, i64 %25)
  br i1 %call30, label %if.else, label %if.then.31

if.then.31:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false.25, %land.lhs.true.22
  %26 = load i8*, i8** %s.addr, align 8
  %27 = load i64, i64* %len, align 8
  %conv32 = trunc i64 %27 to i32
  %28 = load i8*, i8** %s.addr, align 8
  %29 = load i64, i64* %pos, align 8
  %conv33 = trunc i64 %29 to i32
  %30 = load i32, i32* @lineno, align 4
  %31 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %26, i32 %conv32, i1 zeroext true, i8* %28, i32 %conv33, i32 %30, i64 %31)
  %32 = load i64, i64* %len, align 8
  store i64 %32, i64* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.29, %land.lhs.true.19, %land.lhs.true.13, %lor.lhs.false.8
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.31, %if.then
  %33 = load i64, i64* %retval
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define internal i64 @prolog_atom(i8* %s, i64 %pos) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %pos.addr = alloca i64, align 8
  %origpos = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  store i64 %0, i64* %origpos, align 8
  %1 = load i64, i64* %pos.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %1
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %call = call zeroext i1 @c_islower(i32 %conv)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %pos.addr, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 95
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i64, i64* %pos.addr, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %pos.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load i64, i64* %pos.addr, align 8
  %9 = load i8*, i8** %s.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 %8
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %10 to i32
  %call7 = call zeroext i1 @c_isalnum(i32 %conv6)
  br i1 %call7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %11 = load i64, i64* %pos.addr, align 8
  %12 = load i8*, i8** %s.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %11
  %13 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp eq i32 %conv10, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %14 = phi i1 [ true, %while.cond ], [ %cmp11, %lor.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %15 = load i64, i64* %pos.addr, align 8
  %inc13 = add i64 %15, 1
  store i64 %inc13, i64* %pos.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %16 = load i64, i64* %pos.addr, align 8
  %17 = load i64, i64* %origpos, align 8
  %sub = sub i64 %16, %17
  store i64 %sub, i64* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %18 = load i64, i64* %pos.addr, align 8
  %19 = load i8*, i8** %s.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %19, i64 %18
  %20 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv15, 39
  br i1 %cmp16, label %if.then.18, label %if.else.57

if.then.18:                                       ; preds = %if.else
  %21 = load i64, i64* %pos.addr, align 8
  %inc19 = add i64 %21, 1
  store i64 %inc19, i64* %pos.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.55, %if.then.18
  %22 = load i64, i64* %pos.addr, align 8
  %23 = load i8*, i8** %s.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %23, i64 %22
  %24 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %24 to i32
  %cmp22 = icmp eq i32 %conv21, 39
  br i1 %cmp22, label %if.then.24, label %if.else.32

if.then.24:                                       ; preds = %for.cond
  %25 = load i64, i64* %pos.addr, align 8
  %inc25 = add i64 %25, 1
  store i64 %inc25, i64* %pos.addr, align 8
  %26 = load i64, i64* %pos.addr, align 8
  %27 = load i8*, i8** %s.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 %26
  %28 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %28 to i32
  %cmp28 = icmp ne i32 %conv27, 39
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.24
  br label %for.end

if.end:                                           ; preds = %if.then.24
  %29 = load i64, i64* %pos.addr, align 8
  %inc31 = add i64 %29, 1
  store i64 %inc31, i64* %pos.addr, align 8
  br label %if.end.55

if.else.32:                                       ; preds = %for.cond
  %30 = load i64, i64* %pos.addr, align 8
  %31 = load i8*, i8** %s.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %31, i64 %30
  %32 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %32 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.32
  store i64 0, i64* %retval
  br label %return

if.else.38:                                       ; preds = %if.else.32
  %33 = load i64, i64* %pos.addr, align 8
  %34 = load i8*, i8** %s.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %34, i64 %33
  %35 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %35 to i32
  %cmp41 = icmp eq i32 %conv40, 92
  br i1 %cmp41, label %if.then.43, label %if.else.51

if.then.43:                                       ; preds = %if.else.38
  %36 = load i64, i64* %pos.addr, align 8
  %add = add i64 %36, 1
  %37 = load i8*, i8** %s.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %37, i64 %add
  %38 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %38 to i32
  %cmp46 = icmp eq i32 %conv45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.43
  store i64 0, i64* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.43
  %39 = load i64, i64* %pos.addr, align 8
  %add50 = add i64 %39, 2
  store i64 %add50, i64* %pos.addr, align 8
  br label %if.end.53

if.else.51:                                       ; preds = %if.else.38
  %40 = load i64, i64* %pos.addr, align 8
  %inc52 = add i64 %40, 1
  store i64 %inc52, i64* %pos.addr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.end.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.30
  %41 = load i64, i64* %pos.addr, align 8
  %42 = load i64, i64* %origpos, align 8
  %sub56 = sub i64 %41, %42
  store i64 %sub56, i64* %retval
  br label %return

if.else.57:                                       ; preds = %if.else
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else.57, %for.end, %if.then.48, %if.then.37, %while.end
  %43 = load i64, i64* %retval
  ret i64 %43
}

declare zeroext i1 @c_islower(i32) #4

declare zeroext i1 @c_isupper(i32) #4

; Function Attrs: nounwind uwtable
define internal void @TEX_decode_env(i8* %evarname, i8* %defenv) #0 {
entry:
  %evarname.addr = alloca i8*, align 8
  %defenv.addr = alloca i8*, align 8
  %env = alloca i8*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %evarname, i8** %evarname.addr, align 8
  store i8* %defenv, i8** %defenv.addr, align 8
  %0 = load i8*, i8** %evarname.addr, align 8
  %call = call i8* @getenv(i8* %0) #6
  store i8* %call, i8** %env, align 8
  %1 = load i8*, i8** %env, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %defenv.addr, align 8
  store i8* %2, i8** %env, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %env, align 8
  %4 = load i8*, i8** %defenv.addr, align 8
  %call1 = call i8* @concat(i8* %3, i8* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call1, i8** %env, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* %len, align 4
  %5 = load i8*, i8** %env, align 8
  store i8* %5, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.6, %if.end
  %6 = load i8*, i8** %p, align 8
  %call2 = call i8* @strchr(i8* %6, i32 58) #9
  store i8* %call2, i8** %p, align 8
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %8 = load i8, i8* %incdec.ptr, align 1
  %tobool4 = icmp ne i8 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %9 = load i32, i32* %len, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %len, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %len, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 %conv, 24
  %call7 = call i8* @xmalloc(i64 %mul)
  %11 = bitcast i8* %call7 to %struct.linebuffer*
  store %struct.linebuffer* %11, %struct.linebuffer** @TEX_toktab, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %if.end.44, %for.end
  %12 = load i8*, i8** %env, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %cmp = icmp ne i32 %conv9, 0
  br i1 %cmp, label %for.body.11, label %for.end.45

for.body.11:                                      ; preds = %for.cond.8
  %14 = load i8*, i8** %env, align 8
  %call12 = call i8* @strchr(i8* %14, i32 58) #9
  store i8* %call12, i8** %p, align 8
  %15 = load i8*, i8** %p, align 8
  %tobool13 = icmp ne i8* %15, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %for.body.11
  %16 = load i8*, i8** %env, align 8
  %17 = load i8*, i8** %env, align 8
  %call15 = call i64 @strlen(i8* %17) #9
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %call15
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %for.body.11
  %18 = load i8*, i8** %p, align 8
  %19 = load i8*, i8** %env, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp17 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp17, label %if.then.19, label %if.end.33

if.then.19:                                       ; preds = %if.end.16
  %20 = load i8*, i8** %env, align 8
  %21 = load i8*, i8** %p, align 8
  %22 = load i8*, i8** %env, align 8
  %sub.ptr.lhs.cast20 = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %22 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %conv23 = trunc i64 %sub.ptr.sub22 to i32
  %call24 = call i8* @savenstr(i8* %20, i32 %conv23)
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.linebuffer*, %struct.linebuffer** @TEX_toktab, align 8
  %arrayidx = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %24, i64 %idxprom
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %arrayidx, i32 0, i32 2
  store i8* %call24, i8** %buffer, align 8
  %25 = load i8*, i8** %p, align 8
  %26 = load i8*, i8** %env, align 8
  %sub.ptr.lhs.cast25 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %26 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %conv28 = trunc i64 %sub.ptr.sub27 to i32
  %27 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.linebuffer*, %struct.linebuffer** @TEX_toktab, align 8
  %arrayidx30 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %28, i64 %idxprom29
  %len31 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %arrayidx30, i32 0, i32 1
  store i32 %conv28, i32* %len31, align 4
  %29 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %29, 1
  store i32 %inc32, i32* %i, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.19, %if.end.16
  %30 = load i8*, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %tobool34 = icmp ne i8 %31, 0
  br i1 %tobool34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.end.33
  %32 = load i8*, i8** %p, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %add.ptr36, i8** %env, align 8
  br label %if.end.44

if.else.37:                                       ; preds = %if.end.33
  %33 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %33 to i64
  %34 = load %struct.linebuffer*, %struct.linebuffer** @TEX_toktab, align 8
  %arrayidx39 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %34, i64 %idxprom38
  %buffer40 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %arrayidx39, i32 0, i32 2
  store i8* null, i8** %buffer40, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %35 to i64
  %36 = load %struct.linebuffer*, %struct.linebuffer** @TEX_toktab, align 8
  %arrayidx42 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %36, i64 %idxprom41
  %len43 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %arrayidx42, i32 0, i32 1
  store i32 0, i32* %len43, align 4
  br label %for.end.45

if.end.44:                                        ; preds = %if.then.35
  br label %for.cond.8

for.end.45:                                       ; preds = %if.else.37, %for.cond.8
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.compressor* @get_compressor_from_suffix(i8* %file, i8** %extptr) #0 {
entry:
  %retval = alloca %struct.compressor*, align 8
  %file.addr = alloca i8*, align 8
  %extptr.addr = alloca i8**, align 8
  %compr = alloca %struct.compressor*, align 8
  %slash = alloca i8*, align 8
  %suffix = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8** %extptr, i8*** %extptr.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #9
  store i8* %call, i8** %slash, align 8
  %1 = load i8*, i8** %file.addr, align 8
  %call1 = call i8* @strrchr(i8* %1, i32 46) #9
  store i8* %call1, i8** %suffix, align 8
  %2 = load i8*, i8** %suffix, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %suffix, align 8
  %4 = load i8*, i8** %slash, align 8
  %cmp2 = icmp ult i8* %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.compressor* null, %struct.compressor** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8**, i8*** %extptr.addr, align 8
  %cmp3 = icmp ne i8** %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load i8*, i8** %suffix, align 8
  %7 = load i8**, i8*** %extptr.addr, align 8
  store i8* %6, i8** %7, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load i8*, i8** %suffix, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %add.ptr, i8** %suffix, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.5
  store %struct.compressor* getelementptr inbounds ([7 x %struct.compressor], [7 x %struct.compressor]* @compressors, i32 0, i32 0), %struct.compressor** %compr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %9 = load %struct.compressor*, %struct.compressor** %compr, align 8
  %suffix6 = getelementptr inbounds %struct.compressor, %struct.compressor* %9, i32 0, i32 0
  %10 = load i8*, i8** %suffix6, align 8
  %cmp7 = icmp ne i8* %10, null
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.compressor*, %struct.compressor** %compr, align 8
  %suffix8 = getelementptr inbounds %struct.compressor, %struct.compressor* %11, i32 0, i32 0
  %12 = load i8*, i8** %suffix8, align 8
  %13 = load i8*, i8** %suffix, align 8
  %call9 = call zeroext i1 @streq(i8* %12, i8* %13)
  br i1 %call9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  %14 = load %struct.compressor*, %struct.compressor** %compr, align 8
  store %struct.compressor* %14, %struct.compressor** %retval
  br label %return

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %15 = load %struct.compressor*, %struct.compressor** %compr, align 8
  %incdec.ptr = getelementptr inbounds %struct.compressor, %struct.compressor* %15, i32 1
  store %struct.compressor* %incdec.ptr, %struct.compressor** %compr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.end

do.cond:                                          ; No predecessors!
  %16 = load i8*, i8** %suffix, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp12 = icmp ne i32 %conv, 0
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %for.end
  store %struct.compressor* null, %struct.compressor** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.10, %if.then
  %18 = load %struct.compressor*, %struct.compressor** %retval
  ret %struct.compressor* %18
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

declare void @perror(i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @etags_mktmp() #0 {
entry:
  %tmpdir = alloca i8*, align 8
  %slash = alloca i8*, align 8
  %templt = alloca i8*, align 8
  %fd = alloca i32, align 4
  %temp_errno = alloca i32, align 4
  %call = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.330, i32 0, i32 0)) #6
  store i8* %call, i8** %tmpdir, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8** %slash, align 8
  %0 = load i8*, i8** %tmpdir, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.331, i32 0, i32 0), i8** %tmpdir, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %tmpdir, align 8
  %call1 = call i64 @strlen(i8* %1) #9
  %sub = sub i64 %call1, 1
  %2 = load i8*, i8** %tmpdir, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %slash, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %4 = load i8*, i8** %tmpdir, align 8
  %5 = load i8*, i8** %slash, align 8
  %call5 = call i8* @concat(i8* %4, i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.332, i32 0, i32 0))
  store i8* %call5, i8** %templt, align 8
  %6 = load i8*, i8** %templt, align 8
  %call6 = call i32 @mkostemp(i8* %6, i32 524288)
  store i32 %call6, i32* %fd, align 4
  %7 = load i32, i32* %fd, align 4
  %cmp7 = icmp slt i32 %7, 0
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %8 = load i32, i32* %fd, align 4
  %call9 = call i32 @close(i32 %8)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.4
  %call13 = call i32* @__errno_location() #12
  %9 = load i32, i32* %call13, align 4
  store i32 %9, i32* %temp_errno, align 4
  %10 = load i8*, i8** %templt, align 8
  call void @free(i8* %10) #6
  %11 = load i32, i32* %temp_errno, align 4
  %call14 = call i32* @__errno_location() #12
  store i32 %11, i32* %call14, align 4
  store i8* null, i8** %templt, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %lor.lhs.false
  %12 = load i8*, i8** %templt, align 8
  ret i8* %12
}

declare i32 @system(i8*) #4

; Function Attrs: nounwind
declare i32 @remove(i8*) #1

declare i32 @mkostemp(i8*, i32) #4

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define internal void @find_entries(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %lang = alloca %struct.language*, align 8
  %parser = alloca void (%struct._IO_FILE*)*, align 8
  %lp = alloca i8*, align 8
  %old_last_node = alloca %struct.node_st*, align 8
  %fdpp = alloca %struct.fdesc**, align 8
  %badfdp = alloca %struct.fdesc*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang1 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %0, i32 0, i32 5
  %1 = load %struct.language*, %struct.language** %lang1, align 8
  store %struct.language* %1, %struct.language** %lang, align 8
  store void (%struct._IO_FILE*)* null, void (%struct._IO_FILE*)** %parser, align 8
  %2 = load %struct.language*, %struct.language** %lang, align 8
  %cmp = icmp ne %struct.language* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.language*, %struct.language** %lang, align 8
  %function = getelementptr inbounds %struct.language, %struct.language* %3, i32 0, i32 2
  %4 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %function, align 8
  %cmp2 = icmp ne void (%struct._IO_FILE*)* %4, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.language*, %struct.language** %lang, align 8
  %function3 = getelementptr inbounds %struct.language, %struct.language* %5, i32 0, i32 2
  %6 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %function3, align 8
  store void (%struct._IO_FILE*)* %6, void (%struct._IO_FILE*)** %parser, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %parser, align 8
  %cmp4 = icmp eq void (%struct._IO_FILE*)* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %infname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %8, i32 0, i32 1
  %9 = load i8*, i8** %infname, align 8
  %call = call %struct.language* @get_language_from_filename(i8* %9, i32 1)
  store %struct.language* %call, %struct.language** %lang, align 8
  %10 = load %struct.language*, %struct.language** %lang, align 8
  %cmp6 = icmp ne %struct.language* %10, null
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.13

land.lhs.true.7:                                  ; preds = %if.then.5
  %11 = load %struct.language*, %struct.language** %lang, align 8
  %function8 = getelementptr inbounds %struct.language, %struct.language* %11, i32 0, i32 2
  %12 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %function8, align 8
  %cmp9 = icmp ne void (%struct._IO_FILE*)* %12, null
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %land.lhs.true.7
  %13 = load %struct.language*, %struct.language** %lang, align 8
  %14 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang11 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %14, i32 0, i32 5
  store %struct.language* %13, %struct.language** %lang11, align 8
  %15 = load %struct.language*, %struct.language** %lang, align 8
  %function12 = getelementptr inbounds %struct.language, %struct.language* %15, i32 0, i32 2
  %16 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %function12, align 8
  store void (%struct._IO_FILE*)* %16, void (%struct._IO_FILE*)** %parser, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %land.lhs.true.7, %if.then.5
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %17 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %parser, align 8
  %cmp15 = icmp eq void (%struct._IO_FILE*)* %17, null
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.55

land.lhs.true.16:                                 ; preds = %if.end.14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %19 = load i8*, i8** @infilename, align 8
  %call17 = call i64 @readline_internal(%struct.linebuffer* @lb, %struct._IO_FILE* %18, i8* %19)
  %cmp18 = icmp sgt i64 %call17, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.55

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %20 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 1), align 4
  %cmp20 = icmp sge i32 %20, 2
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.55

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %21 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %22 to i32
  %cmp22 = icmp eq i32 %conv, 35
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.55

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %23 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %24 to i32
  %cmp27 = icmp eq i32 %conv26, 33
  br i1 %cmp27, label %if.then.29, label %if.end.55

if.then.29:                                       ; preds = %land.lhs.true.24
  %25 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 2
  %call30 = call i8* @strrchr(i8* %add.ptr, i32 47) #9
  store i8* %call30, i8** %lp, align 8
  %26 = load i8*, i8** %lp, align 8
  %cmp31 = icmp ne i8* %26, null
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.29
  %27 = load i8*, i8** %lp, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %add.ptr34, i8** %lp, align 8
  br label %if.end.37

if.else:                                          ; preds = %if.then.29
  %28 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @lb, i32 0, i32 2), align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %28, i64 2
  %call36 = call i8* @skip_spaces(i8* %add.ptr35)
  store i8* %call36, i8** %lp, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.33
  %29 = load i8*, i8** %lp, align 8
  %call38 = call i8* @skip_non_spaces(i8* %29)
  store i8* %call38, i8** %cp, align 8
  %30 = load i8*, i8** %cp, align 8
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %lp, align 8
  %call39 = call i64 @strlen(i8* %31) #9
  %cmp40 = icmp ugt i64 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %if.end.37
  %32 = load i8*, i8** %lp, align 8
  %call43 = call %struct.language* @get_language_from_interpreter(i8* %32)
  store %struct.language* %call43, %struct.language** %lang, align 8
  %33 = load %struct.language*, %struct.language** %lang, align 8
  %cmp44 = icmp ne %struct.language* %33, null
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.53

land.lhs.true.46:                                 ; preds = %if.then.42
  %34 = load %struct.language*, %struct.language** %lang, align 8
  %function47 = getelementptr inbounds %struct.language, %struct.language* %34, i32 0, i32 2
  %35 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %function47, align 8
  %cmp48 = icmp ne void (%struct._IO_FILE*)* %35, null
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %land.lhs.true.46
  %36 = load %struct.language*, %struct.language** %lang, align 8
  %37 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang51 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %37, i32 0, i32 5
  store %struct.language* %36, %struct.language** %lang51, align 8
  %38 = load %struct.language*, %struct.language** %lang, align 8
  %function52 = getelementptr inbounds %struct.language, %struct.language* %38, i32 0, i32 2
  %39 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %function52, align 8
  store void (%struct._IO_FILE*)* %39, void (%struct._IO_FILE*)** %parser, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %land.lhs.true.46, %if.then.42
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.37
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true.19, %land.lhs.true.16, %if.end.14
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @reset_input(%struct._IO_FILE* %40)
  %41 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %parser, align 8
  %cmp56 = icmp eq void (%struct._IO_FILE*)* %41, null
  br i1 %cmp56, label %if.then.58, label %if.end.71

if.then.58:                                       ; preds = %if.end.55
  %42 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %infname59 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %42, i32 0, i32 1
  %43 = load i8*, i8** %infname59, align 8
  %call60 = call %struct.language* @get_language_from_filename(i8* %43, i32 0)
  store %struct.language* %call60, %struct.language** %lang, align 8
  %44 = load %struct.language*, %struct.language** %lang, align 8
  %cmp61 = icmp ne %struct.language* %44, null
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.70

land.lhs.true.63:                                 ; preds = %if.then.58
  %45 = load %struct.language*, %struct.language** %lang, align 8
  %function64 = getelementptr inbounds %struct.language, %struct.language* %45, i32 0, i32 2
  %46 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %function64, align 8
  %cmp65 = icmp ne void (%struct._IO_FILE*)* %46, null
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %land.lhs.true.63
  %47 = load %struct.language*, %struct.language** %lang, align 8
  %48 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang68 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %48, i32 0, i32 5
  store %struct.language* %47, %struct.language** %lang68, align 8
  %49 = load %struct.language*, %struct.language** %lang, align 8
  %function69 = getelementptr inbounds %struct.language, %struct.language* %49, i32 0, i32 2
  %50 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %function69, align 8
  store void (%struct._IO_FILE*)* %50, void (%struct._IO_FILE*)** %parser, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %land.lhs.true.63, %if.then.58
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.55
  %51 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %parser, align 8
  %cmp72 = icmp eq void (%struct._IO_FILE*)* %51, null
  br i1 %cmp72, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %if.end.71
  %52 = load %struct.node_st*, %struct.node_st** @last_node, align 8
  store %struct.node_st* %52, %struct.node_st** %old_last_node, align 8
  %call75 = call %struct.language* @get_language_from_langname(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0))
  %53 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang76 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %53, i32 0, i32 5
  store %struct.language* %call75, %struct.language** %lang76, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @find_entries(%struct._IO_FILE* %54)
  %55 = load %struct.node_st*, %struct.node_st** %old_last_node, align 8
  %56 = load %struct.node_st*, %struct.node_st** @last_node, align 8
  %cmp77 = icmp eq %struct.node_st* %55, %56
  br i1 %cmp77, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.then.74
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @reset_input(%struct._IO_FILE* %57)
  %58 = load i8, i8* @cplusplus, align 1
  %tobool = trunc i8 %58 to i1
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0)
  %call81 = call %struct.language* @get_language_from_langname(i8* %cond)
  %59 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang82 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %59, i32 0, i32 5
  store %struct.language* %call81, %struct.language** %lang82, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void @find_entries(%struct._IO_FILE* %60)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %if.then.74
  br label %return

if.end.84:                                        ; preds = %if.end.71
  %61 = load i32, i32* @no_line_directive, align 4
  %tobool85 = icmp ne i32 %61, 0
  br i1 %tobool85, label %if.end.107, label %land.lhs.true.86

land.lhs.true.86:                                 ; preds = %if.end.84
  %62 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang87 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %62, i32 0, i32 5
  %63 = load %struct.language*, %struct.language** %lang87, align 8
  %cmp88 = icmp ne %struct.language* %63, null
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.107

land.lhs.true.90:                                 ; preds = %land.lhs.true.86
  %64 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang91 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %64, i32 0, i32 5
  %65 = load %struct.language*, %struct.language** %lang91, align 8
  %metasource = getelementptr inbounds %struct.language, %struct.language* %65, i32 0, i32 6
  %66 = load i8, i8* %metasource, align 1
  %tobool92 = trunc i8 %66 to i1
  br i1 %tobool92, label %if.then.94, label %if.end.107

if.then.94:                                       ; preds = %land.lhs.true.90
  store %struct.fdesc** @fdhead, %struct.fdesc*** %fdpp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.106, %if.then.94
  %67 = load %struct.fdesc**, %struct.fdesc*** %fdpp, align 8
  %68 = load %struct.fdesc*, %struct.fdesc** %67, align 8
  %cmp95 = icmp ne %struct.fdesc* %68, null
  br i1 %cmp95, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %69 = load %struct.fdesc**, %struct.fdesc*** %fdpp, align 8
  %70 = load %struct.fdesc*, %struct.fdesc** %69, align 8
  %71 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %cmp97 = icmp ne %struct.fdesc* %70, %71
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.104

land.lhs.true.99:                                 ; preds = %while.body
  %72 = load %struct.fdesc**, %struct.fdesc*** %fdpp, align 8
  %73 = load %struct.fdesc*, %struct.fdesc** %72, align 8
  %taggedfname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %73, i32 0, i32 4
  %74 = load i8*, i8** %taggedfname, align 8
  %75 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %taggedfname100 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %75, i32 0, i32 4
  %76 = load i8*, i8** %taggedfname100, align 8
  %call101 = call zeroext i1 @streq(i8* %74, i8* %76)
  br i1 %call101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.99
  %77 = load %struct.fdesc**, %struct.fdesc*** %fdpp, align 8
  %78 = load %struct.fdesc*, %struct.fdesc** %77, align 8
  store %struct.fdesc* %78, %struct.fdesc** %badfdp, align 8
  %79 = load %struct.fdesc*, %struct.fdesc** %badfdp, align 8
  call void @invalidate_nodes(%struct.fdesc* %79, %struct.node_st** @nodehead)
  %80 = load %struct.fdesc*, %struct.fdesc** %badfdp, align 8
  %next = getelementptr inbounds %struct.fdesc, %struct.fdesc* %80, i32 0, i32 0
  %81 = load %struct.fdesc*, %struct.fdesc** %next, align 8
  %82 = load %struct.fdesc**, %struct.fdesc*** %fdpp, align 8
  store %struct.fdesc* %81, %struct.fdesc** %82, align 8
  %83 = load %struct.fdesc*, %struct.fdesc** %badfdp, align 8
  call void @free_fdesc(%struct.fdesc* %83)
  br label %if.end.106

if.else.104:                                      ; preds = %land.lhs.true.99, %while.body
  %84 = load %struct.fdesc**, %struct.fdesc*** %fdpp, align 8
  %85 = load %struct.fdesc*, %struct.fdesc** %84, align 8
  %next105 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %85, i32 0, i32 0
  store %struct.fdesc** %next105, %struct.fdesc*** %fdpp, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.107

if.end.107:                                       ; preds = %while.end, %land.lhs.true.90, %land.lhs.true.86, %if.end.84
  call void @linebuffer_setlen(%struct.linebuffer* @filebuf, i32 0)
  store i32 0, i32* @lineno, align 4
  store i64 0, i64* @charno, align 8
  store i64 0, i64* @linecharno, align 8
  %86 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %parser, align 8
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  call void %86(%struct._IO_FILE* %87)
  call void @regex_tag_multiline()
  br label %return

return:                                           ; preds = %if.end.107, %if.end.83
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.language* @get_language_from_filename(i8* %file, i32 %case_sensitive) #0 {
entry:
  %retval = alloca %struct.language*, align 8
  %file.addr = alloca i8*, align 8
  %case_sensitive.addr = alloca i32, align 4
  %lang = alloca %struct.language*, align 8
  %name = alloca i8**, align 8
  %ext = alloca i8**, align 8
  %suffix = alloca i8*, align 8
  %slash = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %case_sensitive, i32* %case_sensitive.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #9
  store i8* %call, i8** %slash, align 8
  %1 = load i8*, i8** %slash, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %slash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %add.ptr, i8** %file.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.language* getelementptr inbounds ([31 x %struct.language], [31 x %struct.language]* @lang_names, i32 0, i32 0), %struct.language** %lang, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.end
  %3 = load %struct.language*, %struct.language** %lang, align 8
  %name1 = getelementptr inbounds %struct.language, %struct.language* %3, i32 0, i32 0
  %4 = load i8*, i8** %name1, align 8
  %cmp2 = icmp ne i8* %4, null
  br i1 %cmp2, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %5 = load %struct.language*, %struct.language** %lang, align 8
  %filenames = getelementptr inbounds %struct.language, %struct.language* %5, i32 0, i32 4
  %6 = load i8**, i8*** %filenames, align 8
  %cmp3 = icmp ne i8** %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %for.body
  %7 = load %struct.language*, %struct.language** %lang, align 8
  %filenames5 = getelementptr inbounds %struct.language, %struct.language* %7, i32 0, i32 4
  %8 = load i8**, i8*** %filenames5, align 8
  store i8** %8, i8*** %name, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then.4
  %9 = load i8**, i8*** %name, align 8
  %10 = load i8*, i8** %9, align 8
  %cmp7 = icmp ne i8* %10, null
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %11 = load i32, i32* %case_sensitive.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.8
  %12 = load i8**, i8*** %name, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %file.addr, align 8
  %call9 = call zeroext i1 @streq(i8* %13, i8* %14)
  br i1 %call9, label %if.then.11, label %if.end.12

cond.false:                                       ; preds = %for.body.8
  %15 = load i8**, i8*** %name, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %file.addr, align 8
  %call10 = call zeroext i1 @strcaseeq(i8* %16, i8* %17)
  br i1 %call10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.false, %cond.true
  %18 = load %struct.language*, %struct.language** %lang, align 8
  store %struct.language* %18, %struct.language** %retval
  br label %return

if.end.12:                                        ; preds = %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %19 = load i8**, i8*** %name, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %name, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %for.body
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.13
  %20 = load %struct.language*, %struct.language** %lang, align 8
  %incdec.ptr15 = getelementptr inbounds %struct.language, %struct.language* %20, i32 1
  store %struct.language* %incdec.ptr15, %struct.language** %lang, align 8
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %21 = load i8*, i8** %file.addr, align 8
  %call17 = call i8* @strrchr(i8* %21, i32 46) #9
  store i8* %call17, i8** %suffix, align 8
  %22 = load i8*, i8** %suffix, align 8
  %cmp18 = icmp eq i8* %22, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end.16
  store %struct.language* null, %struct.language** %retval
  br label %return

if.end.20:                                        ; preds = %for.end.16
  %23 = load i8*, i8** %suffix, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %add.ptr21, i8** %suffix, align 8
  store %struct.language* getelementptr inbounds ([31 x %struct.language], [31 x %struct.language]* @lang_names, i32 0, i32 0), %struct.language** %lang, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.43, %if.end.20
  %24 = load %struct.language*, %struct.language** %lang, align 8
  %name23 = getelementptr inbounds %struct.language, %struct.language* %24, i32 0, i32 0
  %25 = load i8*, i8** %name23, align 8
  %cmp24 = icmp ne i8* %25, null
  br i1 %cmp24, label %for.body.25, label %for.end.45

for.body.25:                                      ; preds = %for.cond.22
  %26 = load %struct.language*, %struct.language** %lang, align 8
  %suffixes = getelementptr inbounds %struct.language, %struct.language* %26, i32 0, i32 3
  %27 = load i8**, i8*** %suffixes, align 8
  %cmp26 = icmp ne i8** %27, null
  br i1 %cmp26, label %if.then.27, label %if.end.42

if.then.27:                                       ; preds = %for.body.25
  %28 = load %struct.language*, %struct.language** %lang, align 8
  %suffixes28 = getelementptr inbounds %struct.language, %struct.language* %28, i32 0, i32 3
  %29 = load i8**, i8*** %suffixes28, align 8
  store i8** %29, i8*** %ext, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.39, %if.then.27
  %30 = load i8**, i8*** %ext, align 8
  %31 = load i8*, i8** %30, align 8
  %cmp30 = icmp ne i8* %31, null
  br i1 %cmp30, label %for.body.31, label %for.end.41

for.body.31:                                      ; preds = %for.cond.29
  %32 = load i32, i32* %case_sensitive.addr, align 4
  %tobool32 = icmp ne i32 %32, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %for.body.31
  %33 = load i8**, i8*** %ext, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %suffix, align 8
  %call34 = call zeroext i1 @streq(i8* %34, i8* %35)
  br i1 %call34, label %if.then.37, label %if.end.38

cond.false.35:                                    ; preds = %for.body.31
  %36 = load i8**, i8*** %ext, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %suffix, align 8
  %call36 = call zeroext i1 @strcaseeq(i8* %37, i8* %38)
  br i1 %call36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %cond.false.35, %cond.true.33
  %39 = load %struct.language*, %struct.language** %lang, align 8
  store %struct.language* %39, %struct.language** %retval
  br label %return

if.end.38:                                        ; preds = %cond.false.35, %cond.true.33
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %40 = load i8**, i8*** %ext, align 8
  %incdec.ptr40 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %incdec.ptr40, i8*** %ext, align 8
  br label %for.cond.29

for.end.41:                                       ; preds = %for.cond.29
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %for.body.25
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %41 = load %struct.language*, %struct.language** %lang, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.language, %struct.language* %41, i32 1
  store %struct.language* %incdec.ptr44, %struct.language** %lang, align 8
  br label %for.cond.22

for.end.45:                                       ; preds = %for.cond.22
  store %struct.language* null, %struct.language** %retval
  br label %return

return:                                           ; preds = %for.end.45, %if.then.37, %if.then.19, %if.then.11
  %42 = load %struct.language*, %struct.language** %retval
  ret %struct.language* %42
}

; Function Attrs: nounwind uwtable
define internal %struct.language* @get_language_from_interpreter(i8* %interpreter) #0 {
entry:
  %retval = alloca %struct.language*, align 8
  %interpreter.addr = alloca i8*, align 8
  %lang = alloca %struct.language*, align 8
  %iname = alloca i8**, align 8
  store i8* %interpreter, i8** %interpreter.addr, align 8
  %0 = load i8*, i8** %interpreter.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.language* null, %struct.language** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct.language* getelementptr inbounds ([31 x %struct.language], [31 x %struct.language]* @lang_names, i32 0, i32 0), %struct.language** %lang, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %if.end
  %1 = load %struct.language*, %struct.language** %lang, align 8
  %name = getelementptr inbounds %struct.language, %struct.language* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %3 = load %struct.language*, %struct.language** %lang, align 8
  %interpreters = getelementptr inbounds %struct.language, %struct.language* %3, i32 0, i32 5
  %4 = load i8**, i8*** %interpreters, align 8
  %cmp2 = icmp ne i8** %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %for.body
  %5 = load %struct.language*, %struct.language** %lang, align 8
  %interpreters4 = getelementptr inbounds %struct.language, %struct.language* %5, i32 0, i32 5
  %6 = load i8**, i8*** %interpreters4, align 8
  store i8** %6, i8*** %iname, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then.3
  %7 = load i8**, i8*** %iname, align 8
  %8 = load i8*, i8** %7, align 8
  %cmp6 = icmp ne i8* %8, null
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %9 = load i8**, i8*** %iname, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %interpreter.addr, align 8
  %call = call zeroext i1 @streq(i8* %10, i8* %11)
  br i1 %call, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body.7
  %12 = load %struct.language*, %struct.language** %lang, align 8
  store %struct.language* %12, %struct.language** %retval
  br label %return

if.end.9:                                         ; preds = %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %13 = load i8**, i8*** %iname, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr, i8*** %iname, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %for.body
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %14 = load %struct.language*, %struct.language** %lang, align 8
  %incdec.ptr12 = getelementptr inbounds %struct.language, %struct.language* %14, i32 1
  store %struct.language* %incdec.ptr12, %struct.language** %lang, align 8
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store %struct.language* null, %struct.language** %retval
  br label %return

return:                                           ; preds = %for.end.13, %if.then.8, %if.then
  %15 = load %struct.language*, %struct.language** %retval
  ret %struct.language* %15
}

; Function Attrs: nounwind uwtable
define internal void @reset_input(%struct._IO_FILE* %inf) #0 {
entry:
  %inf.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %inf, %struct._IO_FILE** %inf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inf.addr, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 0, i32 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @infilename, align 8
  call void @perror(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @invalidate_nodes(%struct.fdesc* %badfdp, %struct.node_st** %npp) #0 {
entry:
  %badfdp.addr = alloca %struct.fdesc*, align 8
  %npp.addr = alloca %struct.node_st**, align 8
  %np = alloca %struct.node_st*, align 8
  store %struct.fdesc* %badfdp, %struct.fdesc** %badfdp.addr, align 8
  store %struct.node_st** %npp, %struct.node_st*** %npp.addr, align 8
  %0 = load %struct.node_st**, %struct.node_st*** %npp.addr, align 8
  %1 = load %struct.node_st*, %struct.node_st** %0, align 8
  store %struct.node_st* %1, %struct.node_st** %np, align 8
  %2 = load %struct.node_st*, %struct.node_st** %np, align 8
  %cmp = icmp eq %struct.node_st* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.5

if.end:                                           ; preds = %entry
  %3 = load %struct.node_st*, %struct.node_st** %np, align 8
  %fdp = getelementptr inbounds %struct.node_st, %struct.node_st* %3, i32 0, i32 2
  %4 = load %struct.fdesc*, %struct.fdesc** %fdp, align 8
  %5 = load %struct.fdesc*, %struct.fdesc** %badfdp.addr, align 8
  %cmp1 = icmp eq %struct.fdesc* %4, %5
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.node_st*, %struct.node_st** %np, align 8
  %left = getelementptr inbounds %struct.node_st, %struct.node_st* %6, i32 0, i32 0
  %7 = load %struct.node_st*, %struct.node_st** %left, align 8
  %8 = load %struct.node_st**, %struct.node_st*** %npp.addr, align 8
  store %struct.node_st* %7, %struct.node_st** %8, align 8
  %9 = load %struct.node_st*, %struct.node_st** %np, align 8
  %left3 = getelementptr inbounds %struct.node_st, %struct.node_st* %9, i32 0, i32 0
  store %struct.node_st* null, %struct.node_st** %left3, align 8
  %10 = load %struct.node_st*, %struct.node_st** %np, align 8
  call void @free_tree(%struct.node_st* %10)
  %11 = load %struct.fdesc*, %struct.fdesc** %badfdp.addr, align 8
  %12 = load %struct.node_st**, %struct.node_st*** %npp.addr, align 8
  call void @invalidate_nodes(%struct.fdesc* %11, %struct.node_st** %12)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %13 = load %struct.fdesc*, %struct.fdesc** %badfdp.addr, align 8
  %14 = load %struct.node_st*, %struct.node_st** %np, align 8
  %left4 = getelementptr inbounds %struct.node_st, %struct.node_st* %14, i32 0, i32 0
  call void @invalidate_nodes(%struct.fdesc* %13, %struct.node_st** %left4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_fdesc(%struct.fdesc* %fdp) #0 {
entry:
  %fdp.addr = alloca %struct.fdesc*, align 8
  store %struct.fdesc* %fdp, %struct.fdesc** %fdp.addr, align 8
  %0 = load %struct.fdesc*, %struct.fdesc** %fdp.addr, align 8
  %infname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %0, i32 0, i32 1
  %1 = load i8*, i8** %infname, align 8
  call void @free(i8* %1) #6
  %2 = load %struct.fdesc*, %struct.fdesc** %fdp.addr, align 8
  %infabsname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %2, i32 0, i32 2
  %3 = load i8*, i8** %infabsname, align 8
  call void @free(i8* %3) #6
  %4 = load %struct.fdesc*, %struct.fdesc** %fdp.addr, align 8
  %infabsdir = getelementptr inbounds %struct.fdesc, %struct.fdesc* %4, i32 0, i32 3
  %5 = load i8*, i8** %infabsdir, align 8
  call void @free(i8* %5) #6
  %6 = load %struct.fdesc*, %struct.fdesc** %fdp.addr, align 8
  %taggedfname = getelementptr inbounds %struct.fdesc, %struct.fdesc* %6, i32 0, i32 4
  %7 = load i8*, i8** %taggedfname, align 8
  call void @free(i8* %7) #6
  %8 = load %struct.fdesc*, %struct.fdesc** %fdp.addr, align 8
  %prop = getelementptr inbounds %struct.fdesc, %struct.fdesc* %8, i32 0, i32 6
  %9 = load i8*, i8** %prop, align 8
  call void @free(i8* %9) #6
  %10 = load %struct.fdesc*, %struct.fdesc** %fdp.addr, align 8
  %11 = bitcast %struct.fdesc* %10 to i8*
  call void @free(i8* %11) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @regex_tag_multiline() #0 {
entry:
  %buffer = alloca i8*, align 8
  %rp = alloca %struct.regexp*, align 8
  %name = alloca i8*, align 8
  %match = alloca i32, align 4
  %0 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 2), align 8
  store i8* %0, i8** %buffer, align 8
  %1 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  store %struct.regexp* %1, %struct.regexp** %rp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %cmp = icmp ne %struct.regexp* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %match, align 4
  %3 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %multi_line = getelementptr inbounds %struct.regexp, %struct.regexp* %3, i32 0, i32 9
  %4 = load i8, i8* %multi_line, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  store i32 1, i32* @lineno, align 4
  store i64 0, i64* @charno, align 8
  store i64 0, i64* @linecharno, align 8
  %5 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %lang = getelementptr inbounds %struct.regexp, %struct.regexp* %5, i32 0, i32 1
  %6 = load %struct.language*, %struct.language** %lang, align 8
  %cmp1 = icmp ne %struct.language* %6, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %lang2 = getelementptr inbounds %struct.regexp, %struct.regexp* %7, i32 0, i32 1
  %8 = load %struct.language*, %struct.language** %lang2, align 8
  %9 = load %struct.fdesc*, %struct.fdesc** @curfdp, align 8
  %lang3 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %9, i32 0, i32 5
  %10 = load %struct.language*, %struct.language** %lang3, align 8
  %cmp4 = icmp ne %struct.language* %8, %10
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  br label %for.inc

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.6
  %11 = load i32, i32* %match, align 4
  %cmp7 = icmp sge i32 %11, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, i32* %match, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %cmp8 = icmp slt i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %14, label %while.body, label %while.end.64

while.body:                                       ; preds = %land.end
  %15 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %pat = getelementptr inbounds %struct.regexp, %struct.regexp* %15, i32 0, i32 4
  %16 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %pat, align 8
  %17 = load i8*, i8** %buffer, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %conv = sext i32 %18 to i64
  %19 = load i64, i64* @charno, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @filebuf, i32 0, i32 1), align 4
  %21 = load i32, i32* %match, align 4
  %sub = sub nsw i32 %20, %21
  %conv9 = sext i32 %sub to i64
  %22 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %regs = getelementptr inbounds %struct.regexp, %struct.regexp* %22, i32 0, i32 5
  %call = call i64 @re_search(%struct.re_pattern_buffer* %16, i8* %17, i64 %conv, i64 %19, i64 %conv9, %struct.re_registers* %regs)
  %conv10 = trunc i64 %call to i32
  store i32 %conv10, i32* %match, align 4
  %23 = load i32, i32* %match, align 4
  switch i32 %23, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %while.body
  %24 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %error_signaled = getelementptr inbounds %struct.regexp, %struct.regexp* %24, i32 0, i32 6
  %25 = load i8, i8* %error_signaled, align 1
  %tobool11 = trunc i8 %25 to i1
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %sw.bb
  %26 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %pattern = getelementptr inbounds %struct.regexp, %struct.regexp* %26, i32 0, i32 2
  %27 = load i8*, i8** %pattern, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.116, i32 0, i32 0), i8* %27)
  %28 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %error_signaled13 = getelementptr inbounds %struct.regexp, %struct.regexp* %28, i32 0, i32 6
  store i8 1, i8* %error_signaled13, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %sw.bb
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %29 = load i32, i32* %match, align 4
  %conv16 = sext i32 %29 to i64
  %30 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %regs17 = getelementptr inbounds %struct.regexp, %struct.regexp* %30, i32 0, i32 5
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs17, i32 0, i32 2
  %31 = load i64*, i64** %end, align 8
  %arrayidx = getelementptr inbounds i64, i64* %31, i64 0
  %32 = load i64, i64* %arrayidx, align 8
  %cmp18 = icmp eq i64 %conv16, %32
  br i1 %cmp18, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %sw.default
  %33 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %error_signaled21 = getelementptr inbounds %struct.regexp, %struct.regexp* %33, i32 0, i32 6
  %34 = load i8, i8* %error_signaled21, align 1
  %tobool22 = trunc i8 %34 to i1
  br i1 %tobool22, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %if.then.20
  %35 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %pattern24 = getelementptr inbounds %struct.regexp, %struct.regexp* %35, i32 0, i32 2
  %36 = load i8*, i8** %pattern24, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0), i8* %36)
  %37 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %error_signaled25 = getelementptr inbounds %struct.regexp, %struct.regexp* %37, i32 0, i32 6
  store i8 1, i8* %error_signaled25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.then.20
  store i32 -3, i32* %match, align 4
  br label %sw.epilog

if.end.27:                                        ; preds = %sw.default
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end.41, %if.end.27
  %38 = load i64, i64* @charno, align 8
  %39 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %regs29 = getelementptr inbounds %struct.regexp, %struct.regexp* %39, i32 0, i32 5
  %end30 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs29, i32 0, i32 2
  %40 = load i64*, i64** %end30, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %40, i64 0
  %41 = load i64, i64* %arrayidx31, align 8
  %cmp32 = icmp slt i64 %38, %41
  br i1 %cmp32, label %while.body.34, label %while.end

while.body.34:                                    ; preds = %while.cond.28
  %42 = load i64, i64* @charno, align 8
  %inc = add nsw i64 %42, 1
  store i64 %inc, i64* @charno, align 8
  %43 = load i8*, i8** %buffer, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %43, i64 %42
  %44 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %44 to i32
  %cmp37 = icmp eq i32 %conv36, 10
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %while.body.34
  %45 = load i32, i32* @lineno, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* @lineno, align 4
  %46 = load i64, i64* @charno, align 8
  store i64 %46, i64* @linecharno, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %while.body.34
  br label %while.cond.28

while.end:                                        ; preds = %while.cond.28
  %47 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %name42 = getelementptr inbounds %struct.regexp, %struct.regexp* %47, i32 0, i32 3
  %48 = load i8*, i8** %name42, align 8
  store i8* %48, i8** %name, align 8
  %49 = load i8*, i8** %name, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %50 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %while.end
  store i8* null, i8** %name, align 8
  br label %if.end.51

if.else:                                          ; preds = %while.end
  %51 = load i8*, i8** %buffer, align 8
  %52 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %name48 = getelementptr inbounds %struct.regexp, %struct.regexp* %52, i32 0, i32 3
  %53 = load i8*, i8** %name48, align 8
  %54 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %regs49 = getelementptr inbounds %struct.regexp, %struct.regexp* %54, i32 0, i32 5
  %call50 = call i8* @substitute(i8* %51, i8* %53, %struct.re_registers* %regs49)
  store i8* %call50, i8** %name, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.47
  %55 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %force_explicit_name = getelementptr inbounds %struct.regexp, %struct.regexp* %55, i32 0, i32 7
  %56 = load i8, i8* %force_explicit_name, align 1
  %tobool52 = trunc i8 %56 to i1
  br i1 %tobool52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.end.51
  %57 = load i8*, i8** %name, align 8
  %58 = load i8*, i8** %buffer, align 8
  %59 = load i64, i64* @linecharno, align 8
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %59
  %60 = load i64, i64* @charno, align 8
  %61 = load i64, i64* @linecharno, align 8
  %sub54 = sub nsw i64 %60, %61
  %add = add nsw i64 %sub54, 1
  %conv55 = trunc i64 %add to i32
  %62 = load i32, i32* @lineno, align 4
  %63 = load i64, i64* @linecharno, align 8
  call void @pfnote(i8* %57, i1 zeroext true, i8* %add.ptr, i32 %conv55, i32 %62, i64 %63)
  br label %if.end.63

if.else.56:                                       ; preds = %if.end.51
  %64 = load i8*, i8** %name, align 8
  %65 = load i8*, i8** %name, align 8
  %call57 = call i64 @strlen(i8* %65) #9
  %conv58 = trunc i64 %call57 to i32
  %66 = load i8*, i8** %buffer, align 8
  %67 = load i64, i64* @linecharno, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %66, i64 %67
  %68 = load i64, i64* @charno, align 8
  %69 = load i64, i64* @linecharno, align 8
  %sub60 = sub nsw i64 %68, %69
  %add61 = add nsw i64 %sub60, 1
  %conv62 = trunc i64 %add61 to i32
  %70 = load i32, i32* @lineno, align 4
  %71 = load i64, i64* @linecharno, align 8
  call void @make_tag(i8* %64, i32 %conv58, i1 zeroext true, i8* %add.ptr59, i32 %conv62, i32 %70, i64 %71)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.56, %if.then.53
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.63, %if.end.26, %sw.bb.15, %if.end.14
  br label %while.cond

while.end.64:                                     ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %while.end.64, %if.then.5, %if.then
  %72 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %p_next = getelementptr inbounds %struct.regexp, %struct.regexp* %72, i32 0, i32 0
  %73 = load %struct.regexp*, %struct.regexp** %p_next, align 8
  store %struct.regexp* %73, %struct.regexp** %rp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @strcaseeq(i8* %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %t.addr, align 8
  %call = call i32 @c_strcasecmp(i8* %0, i8* %1) #9
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind readonly
declare i32 @c_strcasecmp(i8*, i8*) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #4

declare i64 @re_search(%struct.re_pattern_buffer*, i8*, i64, i64, i64, %struct.re_registers*) #4

; Function Attrs: nounwind uwtable
define internal i32 @total_size_of_entries(%struct.node_st* %np) #0 {
entry:
  %np.addr = alloca %struct.node_st*, align 8
  %total = alloca i32, align 4
  store %struct.node_st* %np, %struct.node_st** %np.addr, align 8
  store i32 0, i32* %total, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %cmp = icmp ne %struct.node_st* %0, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %valid = getelementptr inbounds %struct.node_st, %struct.node_st* %1, i32 0, i32 5
  %2 = load i8, i8* %valid, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %for.body
  %3 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %regex = getelementptr inbounds %struct.node_st, %struct.node_st* %3, i32 0, i32 4
  %4 = load i8*, i8** %regex, align 8
  %call = call i64 @strlen(i8* %4) #9
  %add = add i64 %call, 1
  %5 = load i32, i32* %total, align 4
  %conv = sext i32 %5 to i64
  %add1 = add i64 %conv, %add
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %total, align 4
  %6 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %name = getelementptr inbounds %struct.node_st, %struct.node_st* %6, i32 0, i32 3
  %7 = load i8*, i8** %name, align 8
  %cmp3 = icmp ne i8* %7, null
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %8 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %name6 = getelementptr inbounds %struct.node_st, %struct.node_st* %8, i32 0, i32 3
  %9 = load i8*, i8** %name6, align 8
  %call7 = call i64 @strlen(i8* %9) #9
  %add8 = add i64 %call7, 1
  %10 = load i32, i32* %total, align 4
  %conv9 = sext i32 %10 to i64
  %add10 = add i64 %conv9, %add8
  %conv11 = trunc i64 %add10 to i32
  store i32 %conv11, i32* %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %11 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %lno = getelementptr inbounds %struct.node_st, %struct.node_st* %11, i32 0, i32 8
  %12 = load i32, i32* %lno, align 4
  %conv12 = sext i32 %12 to i64
  %call13 = call i32 @number_len(i64 %conv12) #12
  %add14 = add nsw i32 %call13, 1
  %13 = load i32, i32* %total, align 4
  %add15 = add nsw i32 %13, %add14
  store i32 %add15, i32* %total, align 4
  %14 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %cno = getelementptr inbounds %struct.node_st, %struct.node_st* %14, i32 0, i32 9
  %15 = load i64, i64* %cno, align 8
  %cmp16 = icmp ne i64 %15, -1
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end
  %16 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %cno19 = getelementptr inbounds %struct.node_st, %struct.node_st* %16, i32 0, i32 9
  %17 = load i64, i64* %cno19, align 8
  %call20 = call i32 @number_len(i64 %17) #12
  %18 = load i32, i32* %total, align 4
  %add21 = add nsw i32 %18, %call20
  store i32 %add21, i32* %total, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end
  %19 = load i32, i32* %total, align 4
  %add23 = add nsw i32 %19, 1
  store i32 %add23, i32* %total, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %20 = load %struct.node_st*, %struct.node_st** %np.addr, align 8
  %right = getelementptr inbounds %struct.node_st, %struct.node_st* %20, i32 0, i32 1
  %21 = load %struct.node_st*, %struct.node_st** %right, align 8
  store %struct.node_st* %21, %struct.node_st** %np.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %total, align 4
  ret i32 %22
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #4

declare i32 @fputc(i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind readnone uwtable
define internal i32 @number_len(i64 %num) #8 {
entry:
  %num.addr = alloca i64, align 8
  %len = alloca i32, align 4
  store i64 %num, i64* %num.addr, align 8
  store i32 1, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %num.addr, align 8
  %div = sdiv i64 %0, 10
  store i64 %div, i64* %num.addr, align 8
  %cmp = icmp sgt i64 %div, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %len, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load i32, i32* %len, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal void @add_regex(i8* %regexp_pattern, %struct.language* %lang) #0 {
entry:
  %regexp_pattern.addr = alloca i8*, align 8
  %lang.addr = alloca %struct.language*, align 8
  %sep = alloca i8, align 1
  %pat = alloca i8*, align 8
  %name = alloca i8*, align 8
  %modifiers = alloca i8*, align 8
  %empty = alloca i8, align 1
  %err = alloca i8*, align 8
  %patbuf = alloca %struct.re_pattern_buffer*, align 8
  %rp = alloca %struct.regexp*, align 8
  %force_explicit_name = alloca i8, align 1
  %ignore_case = alloca i8, align 1
  %multi_line = alloca i8, align 1
  %single_line = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %regexp_pattern, i8** %regexp_pattern.addr, align 8
  store %struct.language* %lang, %struct.language** %lang.addr, align 8
  store i8 0, i8* %empty, align 1
  store i8 1, i8* %force_explicit_name, align 1
  store i8 0, i8* %ignore_case, align 1
  store i8 0, i8* %multi_line, align 1
  store i8 0, i8* %single_line, align 1
  %0 = load i8*, i8** %regexp_pattern.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %cmp = icmp ult i64 %call, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.338, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %regexp_pattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %sep, align 1
  %3 = load i8*, i8** %regexp_pattern.addr, align 8
  %call1 = call i8* @scan_separators(i8* %3)
  store i8* %call1, i8** %name, align 8
  %4 = load i8*, i8** %name, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load i8*, i8** %regexp_pattern.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.339, i32 0, i32 0), i8* %5)
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i8*, i8** %name, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %7 to i32
  %8 = load i8, i8* %sep, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  %9 = load i8*, i8** %regexp_pattern.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.340, i32 0, i32 0), i8* %9)
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %10 = load i8*, i8** %name, align 8
  %call11 = call i8* @scan_separators(i8* %10)
  store i8* %call11, i8** %modifiers, align 8
  %11 = load i8*, i8** %modifiers, align 8
  %cmp12 = icmp eq i8* %11, null
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.10
  %12 = load i8*, i8** %name, align 8
  store i8* %12, i8** %modifiers, align 8
  store i8* %empty, i8** %name, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end.10
  %13 = load i8*, i8** %modifiers, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %add.ptr, i8** %modifiers, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %14 = load i8*, i8** %modifiers, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %15 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %modifiers, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %17 to i32
  switch i32 %conv21, label %sw.default [
    i32 78, label %sw.bb
    i32 105, label %sw.bb.26
    i32 115, label %sw.bb.27
    i32 109, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %for.body
  %18 = load i8*, i8** %modifiers, align 8
  %19 = load i8*, i8** %name, align 8
  %cmp22 = icmp eq i8* %18, %19
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.341, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %sw.bb
  store i8 1, i8* %force_explicit_name, align 1
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body
  store i8 1, i8* %ignore_case, align 1
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.body
  store i8 1, i8* %single_line, align 1
  br label %sw.bb.28

sw.bb.28:                                         ; preds = %for.body, %sw.bb.27
  store i8 1, i8* %multi_line, align 1
  store i8 1, i8* @need_filebuf, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %20 = load i8*, i8** %modifiers, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %21 to i32
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.342, i32 0, i32 0), i32 %conv30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb.26, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %22 = load i8*, i8** %modifiers, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %modifiers, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call31 = call i8* @xmalloc(i64 64)
  %23 = bitcast i8* %call31 to %struct.re_pattern_buffer*
  store %struct.re_pattern_buffer* %23, %struct.re_pattern_buffer** %patbuf, align 8
  %24 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %patbuf, align 8
  %25 = bitcast %struct.re_pattern_buffer* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.re_pattern_buffer* @add_regex.zeropattern to i8*), i64 64, i32 8, i1 false)
  %26 = load i8, i8* %ignore_case, align 1
  %tobool = trunc i8 %26 to i1
  br i1 %tobool, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.40, %if.then.32
  %27 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %27, 256
  br i1 %cmp34, label %for.body.36, label %for.end.41

for.body.36:                                      ; preds = %for.cond.33
  %28 = load i32, i32* %i, align 4
  %call37 = call i32 @c_tolower(i32 %28)
  %conv38 = trunc i32 %call37 to i8
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* @add_regex.lc_trans, i32 0, i64 %idxprom
  store i8 %conv38, i8* %arrayidx39, align 1
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.36
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.33

for.end.41:                                       ; preds = %for.cond.33
  %31 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %patbuf, align 8
  %translate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %31, i32 0, i32 5
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @add_regex.lc_trans, i32 0, i32 0), i8** %translate, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %for.end
  %32 = load i8, i8* %multi_line, align 1
  %tobool43 = trunc i8 %32 to i1
  br i1 %tobool43, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.end.42
  %33 = load i8*, i8** %regexp_pattern.addr, align 8
  %call45 = call i8* @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.343, i32 0, i32 0), i8* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call45, i8** %pat, align 8
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.42
  %34 = load i8*, i8** %regexp_pattern.addr, align 8
  store i8* %34, i8** %pat, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.44
  %35 = load i8, i8* %single_line, align 1
  %tobool48 = trunc i8 %35 to i1
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.end.47
  %call50 = call i64 @re_set_syntax(i64 3146308)
  br label %if.end.53

if.else.51:                                       ; preds = %if.end.47
  %call52 = call i64 @re_set_syntax(i64 3146244)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.49
  %36 = load i8*, i8** %pat, align 8
  %37 = load i8*, i8** %pat, align 8
  %call54 = call i64 @strlen(i8* %37) #9
  %38 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %patbuf, align 8
  %call55 = call i8* @re_compile_pattern(i8* %36, i64 %call54, %struct.re_pattern_buffer* %38)
  store i8* %call55, i8** %err, align 8
  %39 = load i8, i8* %multi_line, align 1
  %tobool56 = trunc i8 %39 to i1
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  %40 = load i8*, i8** %pat, align 8
  call void @free(i8* %40) #6
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.53
  %41 = load i8*, i8** %err, align 8
  %cmp59 = icmp ne i8* %41, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  %42 = load i8*, i8** %err, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.344, i32 0, i32 0), i8* %42)
  br label %return

if.end.62:                                        ; preds = %if.end.58
  %43 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  store %struct.regexp* %43, %struct.regexp** %rp, align 8
  %call63 = call i8* @xmalloc(i64 72)
  %44 = bitcast i8* %call63 to %struct.regexp*
  store %struct.regexp* %44, %struct.regexp** @p_head, align 8
  %45 = load i8*, i8** %regexp_pattern.addr, align 8
  %call64 = call i8* @savestr(i8* %45)
  %46 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %pattern = getelementptr inbounds %struct.regexp, %struct.regexp* %46, i32 0, i32 2
  store i8* %call64, i8** %pattern, align 8
  %47 = load %struct.regexp*, %struct.regexp** %rp, align 8
  %48 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %p_next = getelementptr inbounds %struct.regexp, %struct.regexp* %48, i32 0, i32 0
  store %struct.regexp* %47, %struct.regexp** %p_next, align 8
  %49 = load %struct.language*, %struct.language** %lang.addr, align 8
  %50 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %lang65 = getelementptr inbounds %struct.regexp, %struct.regexp* %50, i32 0, i32 1
  store %struct.language* %49, %struct.language** %lang65, align 8
  %51 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %patbuf, align 8
  %52 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %pat66 = getelementptr inbounds %struct.regexp, %struct.regexp* %52, i32 0, i32 4
  store %struct.re_pattern_buffer* %51, %struct.re_pattern_buffer** %pat66, align 8
  %53 = load i8*, i8** %name, align 8
  %call67 = call i8* @savestr(i8* %53)
  %54 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %name68 = getelementptr inbounds %struct.regexp, %struct.regexp* %54, i32 0, i32 3
  store i8* %call67, i8** %name68, align 8
  %55 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %error_signaled = getelementptr inbounds %struct.regexp, %struct.regexp* %55, i32 0, i32 6
  store i8 0, i8* %error_signaled, align 1
  %56 = load i8, i8* %force_explicit_name, align 1
  %tobool69 = trunc i8 %56 to i1
  %57 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %force_explicit_name70 = getelementptr inbounds %struct.regexp, %struct.regexp* %57, i32 0, i32 7
  %frombool = zext i1 %tobool69 to i8
  store i8 %frombool, i8* %force_explicit_name70, align 1
  %58 = load i8, i8* %ignore_case, align 1
  %tobool71 = trunc i8 %58 to i1
  %59 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %ignore_case72 = getelementptr inbounds %struct.regexp, %struct.regexp* %59, i32 0, i32 8
  %frombool73 = zext i1 %tobool71 to i8
  store i8 %frombool73, i8* %ignore_case72, align 1
  %60 = load i8, i8* %multi_line, align 1
  %tobool74 = trunc i8 %60 to i1
  %61 = load %struct.regexp*, %struct.regexp** @p_head, align 8
  %multi_line75 = getelementptr inbounds %struct.regexp, %struct.regexp* %61, i32 0, i32 9
  %frombool76 = zext i1 %tobool74 to i8
  store i8 %frombool76, i8* %multi_line75, align 1
  br label %return

return:                                           ; preds = %if.end.62, %if.then.61, %if.then.9, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @scan_separators(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %sep = alloca i8, align 1
  %copyto = alloca i8*, align 8
  %quoted = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %sep, align 1
  %2 = load i8*, i8** %name.addr, align 8
  store i8* %2, i8** %copyto, align 8
  store i8 0, i8* %quoted, align 1
  %3 = load i8*, i8** %name.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %name.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8, i8* %quoted, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then, label %if.else.28

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  switch i32 %conv2, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb.4
    i32 100, label %sw.bb.6
    i32 101, label %sw.bb.8
    i32 102, label %sw.bb.10
    i32 110, label %sw.bb.12
    i32 114, label %sw.bb.14
    i32 116, label %sw.bb.16
    i32 118, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.then
  %9 = load i8*, i8** %copyto, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr3, i8** %copyto, align 8
  store i8 7, i8* %9, align 1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  %10 = load i8*, i8** %copyto, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr5, i8** %copyto, align 8
  store i8 8, i8* %10, align 1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  %11 = load i8*, i8** %copyto, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr7, i8** %copyto, align 8
  store i8 127, i8* %11, align 1
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  %12 = load i8*, i8** %copyto, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr9, i8** %copyto, align 8
  store i8 27, i8* %12, align 1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  %13 = load i8*, i8** %copyto, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %copyto, align 8
  store i8 12, i8* %13, align 1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  %14 = load i8*, i8** %copyto, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr13, i8** %copyto, align 8
  store i8 10, i8* %14, align 1
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then
  %15 = load i8*, i8** %copyto, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr15, i8** %copyto, align 8
  store i8 13, i8* %15, align 1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then
  %16 = load i8*, i8** %copyto, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr17, i8** %copyto, align 8
  store i8 9, i8* %16, align 1
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then
  %17 = load i8*, i8** %copyto, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %copyto, align 8
  store i8 11, i8* %17, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %18 = load i8*, i8** %name.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv20 = sext i8 %19 to i32
  %20 = load i8, i8* %sep, align 1
  %conv21 = sext i8 %20 to i32
  %cmp22 = icmp eq i32 %conv20, %conv21
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %sw.default
  %21 = load i8, i8* %sep, align 1
  %22 = load i8*, i8** %copyto, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr25, i8** %copyto, align 8
  store i8 %21, i8* %22, align 1
  br label %if.end

if.else:                                          ; preds = %sw.default
  %23 = load i8*, i8** %copyto, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr26, i8** %copyto, align 8
  store i8 92, i8* %23, align 1
  %24 = load i8*, i8** %name.addr, align 8
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %copyto, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr27, i8** %copyto, align 8
  store i8 %25, i8* %26, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.24
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb
  store i8 0, i8* %quoted, align 1
  br label %if.end.43

if.else.28:                                       ; preds = %for.body
  %27 = load i8*, i8** %name.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv29 = sext i8 %28 to i32
  %cmp30 = icmp eq i32 %conv29, 92
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.28
  store i8 1, i8* %quoted, align 1
  br label %if.end.42

if.else.33:                                       ; preds = %if.else.28
  %29 = load i8*, i8** %name.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv34 = sext i8 %30 to i32
  %31 = load i8, i8* %sep, align 1
  %conv35 = sext i8 %31 to i32
  %cmp36 = icmp eq i32 %conv34, %conv35
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.33
  br label %for.end

if.else.39:                                       ; preds = %if.else.33
  %32 = load i8*, i8** %name.addr, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %copyto, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr40, i8** %copyto, align 8
  store i8 %33, i8* %34, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.32
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %35 = load i8*, i8** %name.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr44, i8** %name.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.38, %for.cond
  %36 = load i8*, i8** %name.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv45 = sext i8 %37 to i32
  %38 = load i8, i8* %sep, align 1
  %conv46 = sext i8 %38 to i32
  %cmp47 = icmp ne i32 %conv45, %conv46
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end
  store i8* null, i8** %name.addr, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %for.end
  %39 = load i8*, i8** %copyto, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %name.addr, align 8
  ret i8* %40
}

declare i64 @re_set_syntax(i64) #4

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) #4

declare i32 @_IO_getc(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind uwtable
define internal void @verror(i8* %format, %struct.__va_list_tag* %ap) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progname, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.345, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %format.addr, align 8
  %4 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %call1 = call i32 @vfprintf(%struct._IO_FILE* %2, i8* %3, %struct.__va_list_tag* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.336, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
