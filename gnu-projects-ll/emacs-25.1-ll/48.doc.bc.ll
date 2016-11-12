; ModuleID = './src/doc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type { i64, i64, %struct.interval*, %struct.interval*, %union.anon.0, i8, i64 }
%union.anon.0 = type { %struct.interval* }
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Symbol = type { i16, i64, %union.anon.2, i64, i64, %struct.Lisp_Symbol* }
%union.anon.2 = type { i64 }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.1, i16, i16, i8*, i8*, i8* }
%union.anon.1 = type { i64 ()* }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }

@read_bytecode_pointer = internal global i8* null, align 8
@globals = external global %struct.emacs_globals, align 8
@empty_unibyte_string = external global i64, align 8
@sibling_etc = internal constant [8 x i8] c"../etc/\00", align 1
@.str = private unnamed_addr constant [33 x i8] c"Read error on documentation file\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot open doc string file \22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Position %ld out of range in doc string file \22%s\22\00", align 1
@get_doc_string_buffer = internal global i8* null, align 8
@get_doc_string_buffer_size = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"Invalid data in documentation file -- %c followed by code %03o\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Keyboard macro.\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"Prefix command (definition is a keymap associating keystrokes with commands).\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"custom-delayed-init-variables\00", align 1
@Fsnarf_documentation.buildobj = internal constant [83 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"vm-limit.o\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"dispnew.o\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"frame.o\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"scroll.o\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"xdisp.o\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"menu.o\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"xmenu.o\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"window.o\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"charset.o\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"coding.o\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"category.o\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"ccl.o\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"character.o\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"chartab.o\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"bidi.o\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"cm.o\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"term.o\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"terminal.o\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"xfaces.o\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"xterm.o\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"xfns.o\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"xselect.o\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"xrdb.o\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"xsmfns.o\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"xsettings.o\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"gtkutil.o\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"emacs.o\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"keyboard.o\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"macros.o\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"keymap.o\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"sysdep.o\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"buffer.o\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"filelock.o\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"insdel.o\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"marker.o\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"minibuf.o\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"fileio.o\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"dired.o\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"cmds.o\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"casetab.o\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"casefiddle.o\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"indent.o\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"search.o\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"regex.o\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"undo.o\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"alloc.o\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"data.o\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"doc.o\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"editfns.o\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"callint.o\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"eval.o\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"floatfns.o\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"fns.o\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"font.o\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"print.o\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"lread.o\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"syntax.o\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"unexelf.o\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"bytecode.o\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"process.o\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"gnutls.o\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"callproc.o\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"region-cache.o\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"sound.o\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"atimer.o\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"doprnt.o\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"intervals.o\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"textprop.o\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"composite.o\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"xml.o\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"inotify.o\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"profiler.o\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"decompress.o\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"xfont.o\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"ftfont.o\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"xftfont.o\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"ftxfont.o\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"fontset.o\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"fringe.o\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"image.o\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"xgselect.o\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"terminfo.o\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"lastfile.o\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"Opening doc string file\00", align 1
@.str.92 = private unnamed_addr constant [33 x i8] c"DOC file invalid at position %ld\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"M-x \00", align 1
@current_buffer = external global %struct.buffer*, align 8
@Vprin1_to_string_buffer = external global i64, align 8
@.str.94 = private unnamed_addr constant [15 x i8] c"\0AUses keymap `\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"', which is not currently defined.\0A\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@syms_of_doc.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.98 = private unnamed_addr constant [23 x i8] c"internal-doc-file-name\00", align 1
@syms_of_doc.o_fwd.99 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.100 = private unnamed_addr constant [12 x i8] c"build-files\00", align 1
@syms_of_doc.o_fwd.101 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.102 = private unnamed_addr constant [19 x i8] c"text-quoting-style\00", align 1
@syms_of_doc.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.103 = private unnamed_addr constant [28 x i8] c"internal--text-quoting-flag\00", align 1
@lispsym = external global [1074 x %struct.Lisp_Symbol], align 8
@.str.104 = private unnamed_addr constant [25 x i8] c"No docstring slot for %s\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"documentation\00", align 1
@Sdocumentation = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fdocumentation }, i16 1, i16 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.107 = private unnamed_addr constant [23 x i8] c"documentation-property\00", align 1
@Sdocumentation_property = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fdocumentation_property }, i16 2, i16 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.107, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.108 = private unnamed_addr constant [20 x i8] c"Snarf-documentation\00", align 1
@Ssnarf_documentation = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsnarf_documentation }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.109 = private unnamed_addr constant [24 x i8] c"substitute-command-keys\00", align 1
@Ssubstitute_command_keys = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsubstitute_command_keys }, i16 1, i16 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.109, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i32 @read_bytecode_char(i1 zeroext %unreadflag) #0 {
entry:
  %retval = alloca i32, align 4
  %unreadflag.addr = alloca i8, align 1
  %frombool = zext i1 %unreadflag to i8
  store i8 %frombool, i8* %unreadflag.addr, align 1
  %0 = load i8, i8* %unreadflag.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @read_bytecode_pointer, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 -1
  store i8* %incdec.ptr, i8** @read_bytecode_pointer, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @read_bytecode_pointer, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** @read_bytecode_pointer, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i64 @get_doc_string(i64 %filepos, i1 zeroext %unibyte, i1 zeroext %definition) #0 {
entry:
  %retval = alloca i64, align 8
  %filepos.addr = alloca i64, align 8
  %unibyte.addr = alloca i8, align 1
  %definition.addr = alloca i8, align 1
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %name = alloca i8*, align 8
  %p = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %fd = alloca i32, align 4
  %offset = alloca i32, align 4
  %position = alloca i64, align 8
  %file = alloca i64, align 8
  %tem = alloca i64, align 8
  %pos = alloca i64, align 8
  %count = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %docdir = alloca i64, align 8
  %docdir_sizemax = alloca i64, align 8
  %cannot_open = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %quote_nl = alloca i64, align 8
  %.compoundliteral90 = alloca %union.Aligned_String, align 8
  %space_left = alloca i64, align 8
  %nread = alloca i32, align 4
  %in_buffer = alloca i64, align 8
  %test = alloca i32, align 4
  %test239 = alloca i32, align 4
  %c = alloca i32, align 4
  %uc = alloca i8, align 1
  %nchars = alloca i64, align 8
  store i64 %filepos, i64* %filepos.addr, align 8
  %frombool = zext i1 %unibyte to i8
  store i8 %frombool, i8* %unibyte.addr, align 1
  %frombool1 = zext i1 %definition to i8
  store i8 %frombool1, i8* %definition.addr, align 1
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* %filepos.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp = icmp eq i32 %and2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 73), align 8
  store i64 %1, i64* %file, align 8
  %2 = load i64, i64* %filepos.addr, align 8
  store i64 %2, i64* %pos, align 8
  br label %if.end.12

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %filepos.addr, align 8
  %and4 = and i64 %3, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %4 = load i64, i64* %filepos.addr, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  store i64 %7, i64* %file, align 8
  %8 = load i64, i64* %filepos.addr, align 8
  %sub9 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub9 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %11 = load i64, i64* %cdr, align 8
  store i64 %11, i64* %pos, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %12 = load i64, i64* %pos, align 8
  %shr = ashr i64 %12, 2
  %cmp13 = icmp slt i64 %shr, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %13 = load i64, i64* %pos, align 8
  %shr15 = ashr i64 %13, 2
  %sub16 = sub nsw i64 0, %shr15
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %14 = load i64, i64* %pos, align 8
  %shr17 = ashr i64 %14, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub16, %cond.true ], [ %shr17, %cond.false ]
  store i64 %cond, i64* %position, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72), align 8
  %call18 = call zeroext i1 @STRINGP(i64 %15)
  br i1 %call18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %cond.end
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* %retval
  br label %return

if.end.21:                                        ; preds = %cond.end
  %16 = load i64, i64* %file, align 8
  %call22 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call24, i64* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  %17 = load i64, i64* %file, align 8
  %call26 = call i64 @Ffile_name_absolute_p(i64 %17)
  store i64 %call26, i64* %tem, align 8
  %18 = load i64, i64* %file, align 8
  %call27 = call i64 @encode_file_name(i64 %18)
  store i64 %call27, i64* %file, align 8
  %19 = load i64, i64* %tem, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %19, %call28
  br i1 %cmp29, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %if.end.25
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72), align 8
  %call32 = call i64 @encode_file_name(i64 %20)
  br label %cond.end.34

cond.false.33:                                    ; preds = %if.end.25
  %21 = load i64, i64* @empty_unibyte_string, align 8
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.31
  %cond35 = phi i64 [ %call32, %cond.true.31 ], [ %21, %cond.false.33 ]
  store i64 %cond35, i64* %docdir, align 8
  %22 = load i64, i64* %docdir, align 8
  %call36 = call i64 @SBYTES(i64 %22)
  %add = add nsw i64 %call36, 1
  store i64 %add, i64* %docdir_sizemax, align 8
  %23 = load i64, i64* %docdir_sizemax, align 8
  %cmp37 = icmp ugt i64 %23, 8
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end.34
  %24 = load i64, i64* %docdir_sizemax, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.end.34
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i64 [ %24, %cond.true.39 ], [ 8, %cond.false.40 ]
  store i64 %cond42, i64* %docdir_sizemax, align 8
  %25 = load i64, i64* %docdir_sizemax, align 8
  %26 = load i64, i64* %file, align 8
  %call43 = call i64 @SBYTES(i64 %26)
  %add44 = add nsw i64 %25, %call43
  %27 = load i64, i64* %sa_avail, align 8
  %cmp45 = icmp sle i64 %add44, %27
  br i1 %cmp45, label %cond.true.47, label %cond.false.53

cond.true.47:                                     ; preds = %cond.end.41
  %28 = load i64, i64* %docdir_sizemax, align 8
  %29 = load i64, i64* %file, align 8
  %call48 = call i64 @SBYTES(i64 %29)
  %add49 = add nsw i64 %28, %call48
  %30 = load i64, i64* %sa_avail, align 8
  %sub50 = sub nsw i64 %30, %add49
  store i64 %sub50, i64* %sa_avail, align 8
  %31 = load i64, i64* %docdir_sizemax, align 8
  %32 = load i64, i64* %file, align 8
  %call51 = call i64 @SBYTES(i64 %32)
  %add52 = add nsw i64 %31, %call51
  %33 = alloca i8, i64 %add52
  br label %cond.end.57

cond.false.53:                                    ; preds = %cond.end.41
  store i8 1, i8* %sa_must_free, align 1
  %34 = load i64, i64* %docdir_sizemax, align 8
  %35 = load i64, i64* %file, align 8
  %call54 = call i64 @SBYTES(i64 %35)
  %add55 = add nsw i64 %34, %call54
  %call56 = call i8* @record_xmalloc(i64 %add55)
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.53, %cond.true.47
  %cond58 = phi i8* [ %33, %cond.true.47 ], [ %call56, %cond.false.53 ]
  store i8* %cond58, i8** %name, align 8
  %36 = load i8*, i8** %name, align 8
  %37 = load i64, i64* %docdir, align 8
  %call59 = call i8* @lispstpcpy(i8* %36, i64 %37)
  %38 = load i64, i64* %file, align 8
  %call60 = call i8* @lispstpcpy(i8* %call59, i64 %38)
  %39 = load i8*, i8** %name, align 8
  %call61 = call i32 @emacs_open(i8* %39, i32 0, i32 0)
  store i32 %call61, i32* %fd, align 4
  %40 = load i32, i32* %fd, align 4
  %cmp62 = icmp slt i32 %40, 0
  br i1 %cmp62, label %if.then.64, label %if.end.100

if.then.64:                                       ; preds = %cond.end.57
  %41 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %41, %call65
  br i1 %cmp66, label %if.end.72, label %if.then.68

if.then.68:                                       ; preds = %if.then.64
  %42 = load i8*, i8** %name, align 8
  %call69 = call i8* @stpcpy(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @sibling_etc, i32 0, i32 0)) #6
  %43 = load i64, i64* %file, align 8
  %call70 = call i8* @lispstpcpy(i8* %call69, i64 %43)
  %44 = load i8*, i8** %name, align 8
  %call71 = call i32 @emacs_open(i8* %44, i32 0, i32 0)
  store i32 %call71, i32* %fd, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.then.64
  %45 = load i32, i32* %fd, align 4
  %cmp73 = icmp slt i32 %45, 0
  br i1 %cmp73, label %if.then.75, label %if.end.99

if.then.75:                                       ; preds = %if.end.72
  %call76 = call i32* @__errno_location() #7
  %46 = load i32, i32* %call76, align 4
  %cmp77 = icmp eq i32 %46, 24
  br i1 %cmp77, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.75
  %call79 = call i32* @__errno_location() #7
  %47 = load i32, i32* %call79, align 4
  %cmp80 = icmp eq i32 %47, 23
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %lor.lhs.false, %if.then.75
  %48 = load i64, i64* %file, align 8
  call void @report_file_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i64 %48) #8
  unreachable

if.end.83:                                        ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.83
  %49 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %49 to i1
  br i1 %tobool, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %50 = load i64, i64* %sa_count, align 8
  %call85 = call i64 @builtin_lisp_symbol(i32 0)
  %call86 = call i64 @unbind_to(i64 %50, i64 %call85)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.87
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 29, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8** %data, align 8
  %s88 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %51 = bitcast %struct.Lisp_String* %s88 to i8*
  %call89 = call i64 @make_lisp_ptr(i8* %51, i32 4)
  store i64 %call89, i64* %cannot_open, align 8
  %s91 = bitcast %union.Aligned_String* %.compoundliteral90 to %struct.Lisp_String*
  %size92 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s91, i32 0, i32 0
  store i64 2, i64* %size92, align 8
  %size_byte93 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s91, i32 0, i32 1
  store i64 -1, i64* %size_byte93, align 8
  %intervals94 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s91, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals94, align 8
  %data95 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s91, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %data95, align 8
  %s96 = bitcast %union.Aligned_String* %.compoundliteral90 to %struct.Lisp_String*
  %52 = bitcast %struct.Lisp_String* %s96 to i8*
  %call97 = call i64 @make_lisp_ptr(i8* %52, i32 4)
  store i64 %call97, i64* %quote_nl, align 8
  %53 = load i64, i64* %cannot_open, align 8
  %54 = load i64, i64* %file, align 8
  %55 = load i64, i64* %quote_nl, align 8
  %call98 = call i64 @concat3(i64 %53, i64 %54, i64 %55)
  store i64 %call98, i64* %retval
  br label %return

if.end.99:                                        ; preds = %if.end.72
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %cond.end.57
  %call101 = call i64 @SPECPDL_INDEX()
  store i64 %call101, i64* %count, align 8
  %56 = load i32, i32* %fd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %56)
  %57 = load i64, i64* %position, align 8
  %58 = load i64, i64* %position, align 8
  %rem = srem i64 %58, 8192
  %cmp102 = icmp sgt i64 1024, %rem
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %if.end.100
  br label %cond.end.107

cond.false.105:                                   ; preds = %if.end.100
  %59 = load i64, i64* %position, align 8
  %rem106 = srem i64 %59, 8192
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.104
  %cond108 = phi i64 [ 1024, %cond.true.104 ], [ %rem106, %cond.false.105 ]
  %cmp109 = icmp slt i64 %57, %cond108
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %cond.end.107
  %60 = load i64, i64* %position, align 8
  br label %cond.end.121

cond.false.112:                                   ; preds = %cond.end.107
  %61 = load i64, i64* %position, align 8
  %rem113 = srem i64 %61, 8192
  %cmp114 = icmp sgt i64 1024, %rem113
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.112
  br label %cond.end.119

cond.false.117:                                   ; preds = %cond.false.112
  %62 = load i64, i64* %position, align 8
  %rem118 = srem i64 %62, 8192
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.117, %cond.true.116
  %cond120 = phi i64 [ 1024, %cond.true.116 ], [ %rem118, %cond.false.117 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.true.111
  %cond122 = phi i64 [ %60, %cond.true.111 ], [ %cond120, %cond.end.119 ]
  %conv123 = trunc i64 %cond122 to i32
  store i32 %conv123, i32* %offset, align 4
  %63 = load i64, i64* %position, align 8
  %cmp124 = icmp slt i64 9223372036854775807, %63
  br i1 %cmp124, label %if.then.132, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %cond.end.121
  %64 = load i32, i32* %fd, align 4
  %65 = load i64, i64* %position, align 8
  %66 = load i32, i32* %offset, align 4
  %conv127 = sext i32 %66 to i64
  %sub128 = sub nsw i64 %65, %conv127
  %call129 = call i64 @lseek(i32 %64, i64 %sub128, i32 0) #6
  %cmp130 = icmp slt i64 %call129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %lor.lhs.false.126, %cond.end.121
  %67 = load i64, i64* %position, align 8
  %68 = load i8*, i8** %name, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i64 %67, i8* %68) #8
  unreachable

if.end.133:                                       ; preds = %lor.lhs.false.126
  %69 = load i8*, i8** @get_doc_string_buffer, align 8
  store i8* %69, i8** %p, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.133, %if.end.172
  %70 = load i64, i64* @get_doc_string_buffer_size, align 8
  %sub134 = sub nsw i64 %70, 1
  %71 = load i8*, i8** %p, align 8
  %72 = load i8*, i8** @get_doc_string_buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %72 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub135 = sub nsw i64 %sub134, %sub.ptr.sub
  store i64 %sub135, i64* %space_left, align 8
  %73 = load i64, i64* %space_left, align 8
  %cmp136 = icmp sle i64 %73, 0
  br i1 %cmp136, label %if.then.138, label %if.end.148

if.then.138:                                      ; preds = %while.body
  %74 = load i8*, i8** %p, align 8
  %75 = load i8*, i8** @get_doc_string_buffer, align 8
  %sub.ptr.lhs.cast139 = ptrtoint i8* %74 to i64
  %sub.ptr.rhs.cast140 = ptrtoint i8* %75 to i64
  %sub.ptr.sub141 = sub i64 %sub.ptr.lhs.cast139, %sub.ptr.rhs.cast140
  store i64 %sub.ptr.sub141, i64* %in_buffer, align 8
  %76 = load i8*, i8** @get_doc_string_buffer, align 8
  %call142 = call i8* @xpalloc(i8* %76, i64* @get_doc_string_buffer_size, i64 16384, i64 -1, i64 1)
  store i8* %call142, i8** @get_doc_string_buffer, align 8
  %77 = load i8*, i8** @get_doc_string_buffer, align 8
  %78 = load i64, i64* %in_buffer, align 8
  %add.ptr = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %add.ptr, i8** %p, align 8
  %79 = load i64, i64* @get_doc_string_buffer_size, align 8
  %sub143 = sub nsw i64 %79, 1
  %80 = load i8*, i8** %p, align 8
  %81 = load i8*, i8** @get_doc_string_buffer, align 8
  %sub.ptr.lhs.cast144 = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast145 = ptrtoint i8* %81 to i64
  %sub.ptr.sub146 = sub i64 %sub.ptr.lhs.cast144, %sub.ptr.rhs.cast145
  %sub147 = sub nsw i64 %sub143, %sub.ptr.sub146
  store i64 %sub147, i64* %space_left, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.138, %while.body
  %82 = load i64, i64* %space_left, align 8
  %cmp149 = icmp sgt i64 %82, 8192
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.148
  store i64 8192, i64* %space_left, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.end.148
  %83 = load i32, i32* %fd, align 4
  %84 = load i8*, i8** %p, align 8
  %85 = load i64, i64* %space_left, align 8
  %call153 = call i64 @emacs_read(i32 %83, i8* %84, i64 %85)
  %conv154 = trunc i64 %call153 to i32
  store i32 %conv154, i32* %nread, align 4
  %86 = load i32, i32* %nread, align 4
  %cmp155 = icmp slt i32 %86, 0
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.152
  %87 = load i64, i64* %file, align 8
  call void @report_file_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i64 %87) #8
  unreachable

if.end.158:                                       ; preds = %if.end.152
  %88 = load i32, i32* %nread, align 4
  %idxprom = sext i32 %88 to i64
  %89 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %89, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %90 = load i32, i32* %nread, align 4
  %tobool159 = icmp ne i32 %90, 0
  br i1 %tobool159, label %if.end.161, label %if.then.160

if.then.160:                                      ; preds = %if.end.158
  br label %while.end

if.end.161:                                       ; preds = %if.end.158
  %91 = load i8*, i8** %p, align 8
  %92 = load i8*, i8** @get_doc_string_buffer, align 8
  %cmp162 = icmp eq i8* %91, %92
  br i1 %cmp162, label %if.then.164, label %if.else.167

if.then.164:                                      ; preds = %if.end.161
  %93 = load i8*, i8** %p, align 8
  %94 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %94 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %93, i64 %idx.ext
  %call166 = call i8* @strchr(i8* %add.ptr165, i32 31) #9
  store i8* %call166, i8** %p1, align 8
  br label %if.end.169

if.else.167:                                      ; preds = %if.end.161
  %95 = load i8*, i8** %p, align 8
  %call168 = call i8* @strchr(i8* %95, i32 31) #9
  store i8* %call168, i8** %p1, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.167, %if.then.164
  %96 = load i8*, i8** %p1, align 8
  %tobool170 = icmp ne i8* %96, null
  br i1 %tobool170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.end.169
  %97 = load i8*, i8** %p1, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %p1, align 8
  store i8* %98, i8** %p, align 8
  br label %while.end

if.end.172:                                       ; preds = %if.end.169
  %99 = load i32, i32* %nread, align 4
  %100 = load i8*, i8** %p, align 8
  %idx.ext173 = sext i32 %99 to i64
  %add.ptr174 = getelementptr inbounds i8, i8* %100, i64 %idx.ext173
  store i8* %add.ptr174, i8** %p, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.171, %if.then.160
  %101 = load i64, i64* %count, align 8
  %call175 = call i64 @builtin_lisp_symbol(i32 0)
  %call176 = call i64 @unbind_to(i64 %101, i64 %call175)
  br label %do.body.177

do.body.177:                                      ; preds = %while.end
  %102 = load i8, i8* %sa_must_free, align 1
  %tobool178 = trunc i8 %102 to i1
  br i1 %tobool178, label %if.then.179, label %if.end.182

if.then.179:                                      ; preds = %do.body.177
  store i8 0, i8* %sa_must_free, align 1
  %103 = load i64, i64* %sa_count, align 8
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  %call181 = call i64 @unbind_to(i64 %103, i64 %call180)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.179, %do.body.177
  br label %do.end.183

do.end.183:                                       ; preds = %if.end.182
  %104 = load i64, i64* %filepos.addr, align 8
  %and184 = and i64 %104, 7
  %conv185 = trunc i64 %and184 to i32
  %cmp186 = icmp eq i32 %conv185, 3
  br i1 %cmp186, label %if.then.188, label %if.else.238

if.then.188:                                      ; preds = %do.end.183
  store i32 1, i32* %test, align 4
  %105 = load i32, i32* %offset, align 4
  %106 = load i32, i32* %test, align 4
  %sub189 = sub nsw i32 %105, %106
  %idxprom190 = sext i32 %sub189 to i64
  %107 = load i8*, i8** @get_doc_string_buffer, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %107, i64 %idxprom190
  %108 = load i8, i8* %arrayidx191, align 1
  %conv192 = sext i8 %108 to i32
  %cmp193 = icmp ne i32 %conv192, 31
  br i1 %cmp193, label %if.then.195, label %if.end.237

if.then.195:                                      ; preds = %if.then.188
  %109 = load i32, i32* %offset, align 4
  %110 = load i32, i32* %test, align 4
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %test, align 4
  %sub196 = sub nsw i32 %109, %110
  %idxprom197 = sext i32 %sub196 to i64
  %111 = load i8*, i8** @get_doc_string_buffer, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %111, i64 %idxprom197
  %112 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %112 to i32
  %cmp200 = icmp ne i32 %conv199, 32
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %if.then.195
  %call203 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call203, i64* %retval
  br label %return

if.end.204:                                       ; preds = %if.then.195
  br label %while.cond

while.cond:                                       ; preds = %while.body.217, %if.end.204
  %113 = load i32, i32* %offset, align 4
  %114 = load i32, i32* %test, align 4
  %sub205 = sub nsw i32 %113, %114
  %idxprom206 = sext i32 %sub205 to i64
  %115 = load i8*, i8** @get_doc_string_buffer, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %115, i64 %idxprom206
  %116 = load i8, i8* %arrayidx207, align 1
  %conv208 = sext i8 %116 to i32
  %cmp209 = icmp sge i32 %conv208, 48
  br i1 %cmp209, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %117 = load i32, i32* %offset, align 4
  %118 = load i32, i32* %test, align 4
  %sub211 = sub nsw i32 %117, %118
  %idxprom212 = sext i32 %sub211 to i64
  %119 = load i8*, i8** @get_doc_string_buffer, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %119, i64 %idxprom212
  %120 = load i8, i8* %arrayidx213, align 1
  %conv214 = sext i8 %120 to i32
  %cmp215 = icmp sle i32 %conv214, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %121 = phi i1 [ false, %while.cond ], [ %cmp215, %land.rhs ]
  br i1 %121, label %while.body.217, label %while.end.219

while.body.217:                                   ; preds = %land.end
  %122 = load i32, i32* %test, align 4
  %inc218 = add nsw i32 %122, 1
  store i32 %inc218, i32* %test, align 4
  br label %while.cond

while.end.219:                                    ; preds = %land.end
  %123 = load i32, i32* %offset, align 4
  %124 = load i32, i32* %test, align 4
  %inc220 = add nsw i32 %124, 1
  store i32 %inc220, i32* %test, align 4
  %sub221 = sub nsw i32 %123, %124
  %idxprom222 = sext i32 %sub221 to i64
  %125 = load i8*, i8** @get_doc_string_buffer, align 8
  %arrayidx223 = getelementptr inbounds i8, i8* %125, i64 %idxprom222
  %126 = load i8, i8* %arrayidx223, align 1
  %conv224 = sext i8 %126 to i32
  %cmp225 = icmp ne i32 %conv224, 64
  br i1 %cmp225, label %if.then.234, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %while.end.219
  %127 = load i32, i32* %offset, align 4
  %128 = load i32, i32* %test, align 4
  %sub228 = sub nsw i32 %127, %128
  %idxprom229 = sext i32 %sub228 to i64
  %129 = load i8*, i8** @get_doc_string_buffer, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %129, i64 %idxprom229
  %130 = load i8, i8* %arrayidx230, align 1
  %conv231 = sext i8 %130 to i32
  %cmp232 = icmp ne i32 %conv231, 35
  br i1 %cmp232, label %if.then.234, label %if.end.236

if.then.234:                                      ; preds = %lor.lhs.false.227, %while.end.219
  %call235 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call235, i64* %retval
  br label %return

if.end.236:                                       ; preds = %lor.lhs.false.227
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.188
  br label %if.end.269

if.else.238:                                      ; preds = %do.end.183
  store i32 1, i32* %test239, align 4
  %131 = load i32, i32* %offset, align 4
  %132 = load i32, i32* %test239, align 4
  %inc240 = add nsw i32 %132, 1
  store i32 %inc240, i32* %test239, align 4
  %sub241 = sub nsw i32 %131, %132
  %idxprom242 = sext i32 %sub241 to i64
  %133 = load i8*, i8** @get_doc_string_buffer, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %133, i64 %idxprom242
  %134 = load i8, i8* %arrayidx243, align 1
  %conv244 = sext i8 %134 to i32
  %cmp245 = icmp ne i32 %conv244, 10
  br i1 %cmp245, label %if.then.247, label %if.end.249

if.then.247:                                      ; preds = %if.else.238
  %call248 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call248, i64* %retval
  br label %return

if.end.249:                                       ; preds = %if.else.238
  br label %while.cond.250

while.cond.250:                                   ; preds = %while.body.257, %if.end.249
  %135 = load i32, i32* %offset, align 4
  %136 = load i32, i32* %test239, align 4
  %sub251 = sub nsw i32 %135, %136
  %idxprom252 = sext i32 %sub251 to i64
  %137 = load i8*, i8** @get_doc_string_buffer, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %137, i64 %idxprom252
  %138 = load i8, i8* %arrayidx253, align 1
  %conv254 = sext i8 %138 to i32
  %cmp255 = icmp sgt i32 %conv254, 32
  br i1 %cmp255, label %while.body.257, label %while.end.259

while.body.257:                                   ; preds = %while.cond.250
  %139 = load i32, i32* %test239, align 4
  %inc258 = add nsw i32 %139, 1
  store i32 %inc258, i32* %test239, align 4
  br label %while.cond.250

while.end.259:                                    ; preds = %while.cond.250
  %140 = load i32, i32* %offset, align 4
  %141 = load i32, i32* %test239, align 4
  %sub260 = sub nsw i32 %140, %141
  %idxprom261 = sext i32 %sub260 to i64
  %142 = load i8*, i8** @get_doc_string_buffer, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %142, i64 %idxprom261
  %143 = load i8, i8* %arrayidx262, align 1
  %conv263 = sext i8 %143 to i32
  %cmp264 = icmp ne i32 %conv263, 31
  br i1 %cmp264, label %if.then.266, label %if.end.268

if.then.266:                                      ; preds = %while.end.259
  %call267 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call267, i64* %retval
  br label %return

if.end.268:                                       ; preds = %while.end.259
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.237
  %144 = load i8*, i8** @get_doc_string_buffer, align 8
  %145 = load i32, i32* %offset, align 4
  %idx.ext270 = sext i32 %145 to i64
  %add.ptr271 = getelementptr inbounds i8, i8* %144, i64 %idx.ext270
  store i8* %add.ptr271, i8** %from, align 8
  %146 = load i8*, i8** @get_doc_string_buffer, align 8
  %147 = load i32, i32* %offset, align 4
  %idx.ext272 = sext i32 %147 to i64
  %add.ptr273 = getelementptr inbounds i8, i8* %146, i64 %idx.ext272
  store i8* %add.ptr273, i8** %to, align 8
  br label %while.cond.274

while.cond.274:                                   ; preds = %if.end.308, %if.end.269
  %148 = load i8*, i8** %from, align 8
  %149 = load i8*, i8** %p, align 8
  %cmp275 = icmp ne i8* %148, %149
  br i1 %cmp275, label %while.body.277, label %while.end.309

while.body.277:                                   ; preds = %while.cond.274
  %150 = load i8*, i8** %from, align 8
  %151 = load i8, i8* %150, align 1
  %conv278 = sext i8 %151 to i32
  %cmp279 = icmp eq i32 %conv278, 1
  br i1 %cmp279, label %if.then.281, label %if.else.305

if.then.281:                                      ; preds = %while.body.277
  %152 = load i8*, i8** %from, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr, i8** %from, align 8
  %153 = load i8*, i8** %from, align 8
  %incdec.ptr282 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr282, i8** %from, align 8
  %154 = load i8, i8* %153, align 1
  %conv283 = sext i8 %154 to i32
  store i32 %conv283, i32* %c, align 4
  %155 = load i32, i32* %c, align 4
  %cmp284 = icmp eq i32 %155, 1
  br i1 %cmp284, label %if.then.286, label %if.else.289

if.then.286:                                      ; preds = %if.then.281
  %156 = load i32, i32* %c, align 4
  %conv287 = trunc i32 %156 to i8
  %157 = load i8*, i8** %to, align 8
  %incdec.ptr288 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %incdec.ptr288, i8** %to, align 8
  store i8 %conv287, i8* %157, align 1
  br label %if.end.304

if.else.289:                                      ; preds = %if.then.281
  %158 = load i32, i32* %c, align 4
  %cmp290 = icmp eq i32 %158, 48
  br i1 %cmp290, label %if.then.292, label %if.else.294

if.then.292:                                      ; preds = %if.else.289
  %159 = load i8*, i8** %to, align 8
  %incdec.ptr293 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr293, i8** %to, align 8
  store i8 0, i8* %159, align 1
  br label %if.end.303

if.else.294:                                      ; preds = %if.else.289
  %160 = load i32, i32* %c, align 4
  %cmp295 = icmp eq i32 %160, 95
  br i1 %cmp295, label %if.then.297, label %if.else.299

if.then.297:                                      ; preds = %if.else.294
  %161 = load i8*, i8** %to, align 8
  %incdec.ptr298 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr298, i8** %to, align 8
  store i8 31, i8* %161, align 1
  br label %if.end.302

if.else.299:                                      ; preds = %if.else.294
  %162 = load i32, i32* %c, align 4
  %conv300 = trunc i32 %162 to i8
  store i8 %conv300, i8* %uc, align 1
  %163 = load i8, i8* %uc, align 1
  %conv301 = zext i8 %163 to i32
  call void (i8*, ...) @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 %conv301) #8
  unreachable

if.end.302:                                       ; preds = %if.then.297
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.then.292
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %if.then.286
  br label %if.end.308

if.else.305:                                      ; preds = %while.body.277
  %164 = load i8*, i8** %from, align 8
  %incdec.ptr306 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr306, i8** %from, align 8
  %165 = load i8, i8* %164, align 1
  %166 = load i8*, i8** %to, align 8
  %incdec.ptr307 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %incdec.ptr307, i8** %to, align 8
  store i8 %165, i8* %166, align 1
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.305, %if.end.304
  br label %while.cond.274

while.end.309:                                    ; preds = %while.cond.274
  %167 = load i8, i8* %definition.addr, align 1
  %tobool310 = trunc i8 %167 to i1
  br i1 %tobool310, label %if.then.311, label %if.end.316

if.then.311:                                      ; preds = %while.end.309
  %168 = load i8*, i8** @get_doc_string_buffer, align 8
  %169 = load i32, i32* %offset, align 4
  %idx.ext312 = sext i32 %169 to i64
  %add.ptr313 = getelementptr inbounds i8, i8* %168, i64 %idx.ext312
  store i8* %add.ptr313, i8** @read_bytecode_pointer, align 8
  %call314 = call i64 @builtin_lisp_symbol(i32 598)
  %call315 = call i64 @Fread(i64 %call314)
  store i64 %call315, i64* %retval
  br label %return

if.end.316:                                       ; preds = %while.end.309
  %170 = load i8, i8* %unibyte.addr, align 1
  %tobool317 = trunc i8 %170 to i1
  br i1 %tobool317, label %if.then.318, label %if.else.327

if.then.318:                                      ; preds = %if.end.316
  %171 = load i8*, i8** @get_doc_string_buffer, align 8
  %172 = load i32, i32* %offset, align 4
  %idx.ext319 = sext i32 %172 to i64
  %add.ptr320 = getelementptr inbounds i8, i8* %171, i64 %idx.ext319
  %173 = load i8*, i8** %to, align 8
  %174 = load i8*, i8** @get_doc_string_buffer, align 8
  %175 = load i32, i32* %offset, align 4
  %idx.ext321 = sext i32 %175 to i64
  %add.ptr322 = getelementptr inbounds i8, i8* %174, i64 %idx.ext321
  %sub.ptr.lhs.cast323 = ptrtoint i8* %173 to i64
  %sub.ptr.rhs.cast324 = ptrtoint i8* %add.ptr322 to i64
  %sub.ptr.sub325 = sub i64 %sub.ptr.lhs.cast323, %sub.ptr.rhs.cast324
  %call326 = call i64 @make_unibyte_string(i8* %add.ptr320, i64 %sub.ptr.sub325)
  store i64 %call326, i64* %retval
  br label %return

if.else.327:                                      ; preds = %if.end.316
  %176 = load i8*, i8** @get_doc_string_buffer, align 8
  %177 = load i32, i32* %offset, align 4
  %idx.ext328 = sext i32 %177 to i64
  %add.ptr329 = getelementptr inbounds i8, i8* %176, i64 %idx.ext328
  %178 = load i8*, i8** %to, align 8
  %179 = load i8*, i8** @get_doc_string_buffer, align 8
  %180 = load i32, i32* %offset, align 4
  %idx.ext330 = sext i32 %180 to i64
  %add.ptr331 = getelementptr inbounds i8, i8* %179, i64 %idx.ext330
  %sub.ptr.lhs.cast332 = ptrtoint i8* %178 to i64
  %sub.ptr.rhs.cast333 = ptrtoint i8* %add.ptr331 to i64
  %sub.ptr.sub334 = sub i64 %sub.ptr.lhs.cast332, %sub.ptr.rhs.cast333
  %call335 = call i64 @multibyte_chars_in_text(i8* %add.ptr329, i64 %sub.ptr.sub334)
  store i64 %call335, i64* %nchars, align 8
  %181 = load i8*, i8** @get_doc_string_buffer, align 8
  %182 = load i32, i32* %offset, align 4
  %idx.ext336 = sext i32 %182 to i64
  %add.ptr337 = getelementptr inbounds i8, i8* %181, i64 %idx.ext336
  %183 = load i64, i64* %nchars, align 8
  %184 = load i8*, i8** %to, align 8
  %185 = load i8*, i8** @get_doc_string_buffer, align 8
  %186 = load i32, i32* %offset, align 4
  %idx.ext338 = sext i32 %186 to i64
  %add.ptr339 = getelementptr inbounds i8, i8* %185, i64 %idx.ext338
  %sub.ptr.lhs.cast340 = ptrtoint i8* %184 to i64
  %sub.ptr.rhs.cast341 = ptrtoint i8* %add.ptr339 to i64
  %sub.ptr.sub342 = sub i64 %sub.ptr.lhs.cast340, %sub.ptr.rhs.cast341
  %call343 = call i64 @make_string_from_bytes(i8* %add.ptr337, i64 %183, i64 %sub.ptr.sub342)
  store i64 %call343, i64* %retval
  br label %return

return:                                           ; preds = %if.else.327, %if.then.318, %if.then.311, %if.then.266, %if.then.247, %if.then.234, %if.then.202, %do.end, %if.then.23, %if.then.19, %if.else.10
  %187 = load i64, i64* %retval
  ret i64 %187
}

declare i64 @SPECPDL_INDEX() #1

declare i64 @builtin_lisp_symbol(i32) #1

declare zeroext i1 @STRINGP(i64) #1

declare i64 @Ffile_name_absolute_p(i64) #1

declare i64 @encode_file_name(i64) #1

declare i64 @SBYTES(i64) #1

declare i8* @record_xmalloc(i64) #1

declare i8* @lispstpcpy(i8*, i64) #1

declare i32 @emacs_open(i8*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: noreturn
declare void @report_file_error(i8*, i64) #4

declare i64 @unbind_to(i64, i64) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare i64 @concat3(i64, i64, i64) #1

declare void @record_unwind_protect_int(void (i32)*, i32) #1

declare void @close_file_unwind(i32) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: noreturn
declare void @error(i8*, ...) #4

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

declare i64 @emacs_read(i32, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i64 @Fread(i64) #1

declare i64 @make_unibyte_string(i8*, i64) #1

declare i64 @multibyte_chars_in_text(i8*, i64) #1

declare i64 @make_string_from_bytes(i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @read_doc_string(i64 %filepos) #0 {
entry:
  %filepos.addr = alloca i64, align 8
  store i64 %filepos, i64* %filepos.addr, align 8
  %0 = load i64, i64* %filepos.addr, align 8
  %call = call i64 @get_doc_string(i64 %0, i1 zeroext false, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fdocumentation(i64 %function, i64 %raw) #0 {
entry:
  %retval = alloca i64, align 8
  %function.addr = alloca i64, align 8
  %raw.addr = alloca i64, align 8
  %fun = alloca i64, align 8
  %funcar = alloca i64, align 8
  %doc = alloca i64, align 8
  %try_reload = alloca i8, align 1
  %tem = alloca i64, align 8
  %tem54 = alloca i64, align 8
  %tem1 = alloca i64, align 8
  %tem118 = alloca i64, align 8
  %tem177 = alloca i64, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %raw, i64* %raw.addr, align 8
  store i8 1, i8* %try_reload, align 1
  br label %documentation

documentation:                                    ; preds = %if.then.188, %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %doc, align 8
  %0 = load i64, i64* %function.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %documentation
  %1 = load i64, i64* %function.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 477)
  %call3 = call i64 @Fget(i64 %1, i64 %call2)
  store i64 %call3, i64* %tem, align 8
  %2 = load i64, i64* %tem, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %2, %call4
  br i1 %cmp5, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %3 = load i64, i64* %function.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 477)
  %4 = load i64, i64* %raw.addr, align 8
  %call9 = call i64 @Fdocumentation_property(i64 %3, i64 %call8, i64 %4)
  store i64 %call9, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %documentation
  %5 = load i64, i64* %function.addr, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @Findirect_function(i64 %5, i64 %call11)
  store i64 %call12, i64* %fun, align 8
  %6 = load i64, i64* %fun, align 8
  %and13 = and i64 %6, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 3
  br i1 %cmp15, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.10
  %7 = load i64, i64* %fun, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 636)
  %cmp18 = icmp eq i64 %10, %call17
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true
  %11 = load i64, i64* %fun, align 8
  %sub21 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub21 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  store i64 %14, i64* %fun, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true, %if.end.10
  %15 = load i64, i64* %fun, align 8
  %call23 = call zeroext i1 @SUBRP(i64 %15)
  br i1 %call23, label %if.then.24, label %if.else.44

if.then.24:                                       ; preds = %if.end.22
  %16 = load i64, i64* %fun, align 8
  %call25 = call %struct.Lisp_Subr* @XSUBR(i64 %16)
  %doc26 = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call25, i32 0, i32 6
  %17 = load i8*, i8** %doc26, align 8
  %cmp27 = icmp eq i8* %17, null
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.24
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call30, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then.24
  %18 = load i64, i64* %fun, align 8
  %call31 = call %struct.Lisp_Subr* @XSUBR(i64 %18)
  %doc32 = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call31, i32 0, i32 6
  %19 = load i8*, i8** %doc32, align 8
  %20 = ptrtoint i8* %19 to i64
  %cmp33 = icmp sge i64 %20, 0
  br i1 %cmp33, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %if.else
  %21 = load i64, i64* %fun, align 8
  %call36 = call %struct.Lisp_Subr* @XSUBR(i64 %21)
  %doc37 = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call36, i32 0, i32 6
  %22 = load i8*, i8** %doc37, align 8
  %call38 = call i64 @build_string(i8* %22)
  store i64 %call38, i64* %doc, align 8
  br label %if.end.42

if.else.39:                                       ; preds = %if.else
  %23 = load i64, i64* %fun, align 8
  %call40 = call %struct.Lisp_Subr* @XSUBR(i64 %23)
  %doc41 = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call40, i32 0, i32 6
  %24 = load i8*, i8** %doc41, align 8
  %25 = ptrtoint i8* %24 to i64
  %shl = shl i64 %25, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %doc, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  br label %if.end.160

if.else.44:                                       ; preds = %if.end.22
  %26 = load i64, i64* %fun, align 8
  %call45 = call zeroext i1 @COMPILEDP(i64 %26)
  br i1 %call45, label %if.then.46, label %if.else.71

if.then.46:                                       ; preds = %if.else.44
  %27 = load i64, i64* %fun, align 8
  %call47 = call i64 @ASIZE(i64 %27)
  %and48 = and i64 %call47, 4095
  %cmp49 = icmp sle i64 %and48, 4
  br i1 %cmp49, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %if.then.46
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call52, i64* %retval
  br label %return

if.else.53:                                       ; preds = %if.then.46
  %28 = load i64, i64* %fun, align 8
  %call55 = call i64 @AREF(i64 %28, i64 4)
  store i64 %call55, i64* %tem54, align 8
  %29 = load i64, i64* %tem54, align 8
  %call56 = call zeroext i1 @STRINGP(i64 %29)
  br i1 %call56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.53
  %30 = load i64, i64* %tem54, align 8
  store i64 %30, i64* %doc, align 8
  br label %if.end.69

if.else.58:                                       ; preds = %if.else.53
  %31 = load i64, i64* %tem54, align 8
  %call59 = call zeroext i1 @NATNUMP(i64 %31)
  br i1 %call59, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.58
  %32 = load i64, i64* %tem54, align 8
  %and61 = and i64 %32, 7
  %conv62 = trunc i64 %and61 to i32
  %cmp63 = icmp eq i32 %conv62, 3
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %lor.lhs.false, %if.else.58
  %33 = load i64, i64* %tem54, align 8
  store i64 %33, i64* %doc, align 8
  br label %if.end.68

if.else.66:                                       ; preds = %lor.lhs.false
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call67, i64* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  br label %if.end.159

if.else.71:                                       ; preds = %if.else.44
  %34 = load i64, i64* %fun, align 8
  %call72 = call zeroext i1 @STRINGP(i64 %34)
  br i1 %call72, label %if.then.77, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.else.71
  %35 = load i64, i64* %fun, align 8
  %call75 = call zeroext i1 @VECTORP(i64 %35)
  br i1 %call75, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %lor.lhs.false.74, %if.else.71
  %call78 = call i64 @build_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  store i64 %call78, i64* %retval
  br label %return

if.else.79:                                       ; preds = %lor.lhs.false.74
  %36 = load i64, i64* %fun, align 8
  %and80 = and i64 %36, 7
  %conv81 = trunc i64 %and80 to i32
  %cmp82 = icmp eq i32 %conv81, 3
  br i1 %cmp82, label %if.then.84, label %if.else.155

if.then.84:                                       ; preds = %if.else.79
  %37 = load i64, i64* %fun, align 8
  %sub85 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub85 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %car86 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 0
  %40 = load i64, i64* %car86, align 8
  store i64 %40, i64* %funcar, align 8
  %41 = load i64, i64* %funcar, align 8
  %and87 = and i64 %41, 7
  %conv88 = trunc i64 %and87 to i32
  %cmp89 = icmp eq i32 %conv88, 0
  br i1 %cmp89, label %if.else.93, label %if.then.91

if.then.91:                                       ; preds = %if.then.84
  %call92 = call i64 @builtin_lisp_symbol(i32 570)
  %42 = load i64, i64* %fun, align 8
  call void @xsignal1(i64 %call92, i64 %42) #8
  unreachable

if.else.93:                                       ; preds = %if.then.84
  %43 = load i64, i64* %funcar, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp95 = icmp eq i64 %43, %call94
  br i1 %cmp95, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.else.93
  %call98 = call i64 @build_string(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i32 0, i32 0))
  store i64 %call98, i64* %retval
  br label %return

if.else.99:                                       ; preds = %if.else.93
  %44 = load i64, i64* %funcar, align 8
  %call100 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp101 = icmp eq i64 %44, %call100
  br i1 %cmp101, label %if.then.115, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.else.99
  %45 = load i64, i64* %funcar, align 8
  %call104 = call i64 @builtin_lisp_symbol(i32 271)
  %cmp105 = icmp eq i64 %45, %call104
  br i1 %cmp105, label %land.lhs.true.107, label %lor.lhs.false.111

land.lhs.true.107:                                ; preds = %lor.lhs.false.103
  %46 = load i64, i64* %fun, align 8
  %sub108 = sub nsw i64 %46, 3
  %47 = inttoptr i64 %sub108 to i8*
  %48 = bitcast i8* %47 to %struct.Lisp_Cons*
  %u109 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %48, i32 0, i32 1
  %cdr110 = bitcast %union.anon* %u109 to i64*
  %49 = load i64, i64* %cdr110, align 8
  store i64 %49, i64* %fun, align 8
  br i1 true, label %if.then.115, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %land.lhs.true.107, %lor.lhs.false.103
  %50 = load i64, i64* %funcar, align 8
  %call112 = call i64 @builtin_lisp_symbol(i32 191)
  %cmp113 = icmp eq i64 %50, %call112
  br i1 %cmp113, label %if.then.115, label %if.else.151

if.then.115:                                      ; preds = %lor.lhs.false.111, %land.lhs.true.107, %if.else.99
  %51 = load i64, i64* %fun, align 8
  %call116 = call i64 @Fcdr(i64 %51)
  %call117 = call i64 @Fcdr(i64 %call116)
  store i64 %call117, i64* %tem1, align 8
  %52 = load i64, i64* %tem1, align 8
  %call119 = call i64 @Fcar(i64 %52)
  store i64 %call119, i64* %tem118, align 8
  %53 = load i64, i64* %tem118, align 8
  %call120 = call zeroext i1 @STRINGP(i64 %53)
  br i1 %call120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %if.then.115
  %54 = load i64, i64* %tem118, align 8
  store i64 %54, i64* %doc, align 8
  br label %if.end.150

if.else.122:                                      ; preds = %if.then.115
  %55 = load i64, i64* %tem118, align 8
  %call123 = call zeroext i1 @NATNUMP(i64 %55)
  br i1 %call123, label %land.lhs.true.139, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.else.122
  %56 = load i64, i64* %tem118, align 8
  %and126 = and i64 %56, 7
  %conv127 = trunc i64 %and126 to i32
  %cmp128 = icmp eq i32 %conv127, 3
  br i1 %cmp128, label %land.lhs.true.130, label %if.else.147

land.lhs.true.130:                                ; preds = %lor.lhs.false.125
  %57 = load i64, i64* %tem118, align 8
  %sub131 = sub nsw i64 %57, 3
  %58 = inttoptr i64 %sub131 to i8*
  %59 = bitcast i8* %58 to %struct.Lisp_Cons*
  %u132 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %59, i32 0, i32 1
  %cdr133 = bitcast %union.anon* %u132 to i64*
  %60 = load i64, i64* %cdr133, align 8
  %and134 = and i64 %60, 7
  %conv135 = trunc i64 %and134 to i32
  %and136 = and i32 %conv135, -5
  %cmp137 = icmp eq i32 %and136, 2
  br i1 %cmp137, label %land.lhs.true.139, label %if.else.147

land.lhs.true.139:                                ; preds = %land.lhs.true.130, %if.else.122
  %61 = load i64, i64* %tem1, align 8
  %sub140 = sub nsw i64 %61, 3
  %62 = inttoptr i64 %sub140 to i8*
  %63 = bitcast i8* %62 to %struct.Lisp_Cons*
  %u141 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %63, i32 0, i32 1
  %cdr142 = bitcast %union.anon* %u141 to i64*
  %64 = load i64, i64* %cdr142, align 8
  %call143 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp144 = icmp eq i64 %64, %call143
  br i1 %cmp144, label %if.else.147, label %if.then.146

if.then.146:                                      ; preds = %land.lhs.true.139
  %65 = load i64, i64* %tem118, align 8
  store i64 %65, i64* %doc, align 8
  br label %if.end.149

if.else.147:                                      ; preds = %land.lhs.true.139, %land.lhs.true.130, %lor.lhs.false.125
  %call148 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call148, i64* %retval
  br label %return

if.end.149:                                       ; preds = %if.then.146
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.121
  br label %if.end.152

if.else.151:                                      ; preds = %lor.lhs.false.111
  br label %oops

if.end.152:                                       ; preds = %if.end.150
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153
  br label %if.end.157

if.else.155:                                      ; preds = %if.else.79
  br label %oops

oops:                                             ; preds = %if.else.155, %if.else.151
  %call156 = call i64 @builtin_lisp_symbol(i32 570)
  %66 = load i64, i64* %fun, align 8
  call void @xsignal1(i64 %call156, i64 %66) #8
  unreachable

if.end.157:                                       ; preds = %if.end.154
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.70
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.43
  %67 = load i64, i64* %doc, align 8
  %cmp161 = icmp eq i64 %67, 2
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.end.160
  %call164 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call164, i64* %doc, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.end.160
  %68 = load i64, i64* %doc, align 8
  %and166 = and i64 %68, 7
  %conv167 = trunc i64 %and166 to i32
  %and168 = and i32 %conv167, -5
  %cmp169 = icmp eq i32 %and168, 2
  br i1 %cmp169, label %if.then.176, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %if.end.165
  %69 = load i64, i64* %doc, align 8
  %and172 = and i64 %69, 7
  %conv173 = trunc i64 %and172 to i32
  %cmp174 = icmp eq i32 %conv173, 3
  br i1 %cmp174, label %if.then.176, label %if.end.192

if.then.176:                                      ; preds = %lor.lhs.false.171, %if.end.165
  %70 = load i64, i64* %doc, align 8
  %call178 = call i64 @get_doc_string(i64 %70, i1 zeroext false, i1 zeroext false)
  store i64 %call178, i64* %tem177, align 8
  %71 = load i64, i64* %tem177, align 8
  %call179 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp180 = icmp eq i64 %71, %call179
  br i1 %cmp180, label %land.lhs.true.182, label %if.else.190

land.lhs.true.182:                                ; preds = %if.then.176
  %72 = load i8, i8* %try_reload, align 1
  %tobool = trunc i8 %72 to i1
  br i1 %tobool, label %if.then.184, label %if.else.190

if.then.184:                                      ; preds = %land.lhs.true.182
  %73 = load i64, i64* %doc, align 8
  %call185 = call i64 @Fcar_safe(i64 %73)
  %call186 = call zeroext i1 @reread_doc_file(i64 %call185)
  %frombool = zext i1 %call186 to i8
  store i8 %frombool, i8* %try_reload, align 1
  %74 = load i8, i8* %try_reload, align 1
  %tobool187 = trunc i8 %74 to i1
  br i1 %tobool187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.then.184
  store i8 0, i8* %try_reload, align 1
  br label %documentation

if.end.189:                                       ; preds = %if.then.184
  br label %if.end.191

if.else.190:                                      ; preds = %land.lhs.true.182, %if.then.176
  %75 = load i64, i64* %tem177, align 8
  store i64 %75, i64* %doc, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.190, %if.end.189
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %lor.lhs.false.171
  %76 = load i64, i64* %raw.addr, align 8
  %call193 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp194 = icmp eq i64 %76, %call193
  br i1 %cmp194, label %if.then.196, label %if.end.198

if.then.196:                                      ; preds = %if.end.192
  %77 = load i64, i64* %doc, align 8
  %call197 = call i64 @Fsubstitute_command_keys(i64 %77)
  store i64 %call197, i64* %doc, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.196, %if.end.192
  %78 = load i64, i64* %doc, align 8
  store i64 %78, i64* %retval
  br label %return

return:                                           ; preds = %if.end.198, %if.else.147, %if.then.97, %if.then.77, %if.else.66, %if.then.51, %if.then.29, %if.then.7
  %79 = load i64, i64* %retval
  ret i64 %79
}

declare i64 @Fget(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdocumentation_property(i64 %symbol, i64 %prop, i64 %raw) #0 {
entry:
  %symbol.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %raw.addr = alloca i64, align 8
  %try_reload = alloca i8, align 1
  %tem = alloca i64, align 8
  %doc = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %raw, i64* %raw.addr, align 8
  store i8 1, i8* %try_reload, align 1
  br label %documentation_property

documentation_property:                           ; preds = %if.then.25, %entry
  %0 = load i64, i64* %symbol.addr, align 8
  %1 = load i64, i64* %prop.addr, align 8
  %call = call i64 @Fget(i64 %0, i64 %1)
  store i64 %call, i64* %tem, align 8
  %2 = load i64, i64* %tem, align 8
  %cmp = icmp eq i64 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %documentation_property
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %tem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %documentation_property
  %3 = load i64, i64* %tem, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %tem, align 8
  %and5 = and i64 %4, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i64, i64* %tem, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %8 = load i64, i64* %cdr, align 8
  %and9 = and i64 %8, 7
  %conv10 = trunc i64 %and9 to i32
  %and11 = and i32 %conv10, -5
  %cmp12 = icmp eq i32 %and11, 2
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true, %if.end
  %9 = load i64, i64* %tem, align 8
  store i64 %9, i64* %doc, align 8
  %10 = load i64, i64* %tem, align 8
  %call15 = call i64 @get_doc_string(i64 %10, i1 zeroext false, i1 zeroext false)
  store i64 %call15, i64* %tem, align 8
  %11 = load i64, i64* %tem, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %11, %call16
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.27

land.lhs.true.19:                                 ; preds = %if.then.14
  %12 = load i8, i8* %try_reload, align 1
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %land.lhs.true.19
  %13 = load i64, i64* %doc, align 8
  %call22 = call i64 @Fcar_safe(i64 %13)
  %call23 = call zeroext i1 @reread_doc_file(i64 %call22)
  %frombool = zext i1 %call23 to i8
  store i8 %frombool, i8* %try_reload, align 1
  %14 = load i8, i8* %try_reload, align 1
  %tobool24 = trunc i8 %14 to i1
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  store i8 0, i8* %try_reload, align 1
  br label %documentation_property

if.end.26:                                        ; preds = %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true.19, %if.then.14
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %15 = load i64, i64* %tem, align 8
  %call28 = call zeroext i1 @STRINGP(i64 %15)
  br i1 %call28, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %if.else
  %16 = load i64, i64* %tem, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %call31 = call i64 @Feval(i64 %16, i64 %call30)
  store i64 %call31, i64* %tem, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.27
  %17 = load i64, i64* %raw.addr, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp35 = icmp eq i64 %17, %call34
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.42

land.lhs.true.37:                                 ; preds = %if.end.33
  %18 = load i64, i64* %tem, align 8
  %call38 = call zeroext i1 @STRINGP(i64 %18)
  br i1 %call38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true.37
  %19 = load i64, i64* %tem, align 8
  %call41 = call i64 @Fsubstitute_command_keys(i64 %19)
  store i64 %call41, i64* %tem, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true.37, %if.end.33
  %20 = load i64, i64* %tem, align 8
  ret i64 %20
}

declare i64 @Findirect_function(i64, i64) #1

declare zeroext i1 @SUBRP(i64) #1

declare %struct.Lisp_Subr* @XSUBR(i64) #1

declare i64 @build_string(i8*) #1

declare zeroext i1 @COMPILEDP(i64) #1

declare i64 @ASIZE(i64) #1

declare i64 @AREF(i64, i64) #1

declare zeroext i1 @NATNUMP(i64) #1

declare zeroext i1 @VECTORP(i64) #1

; Function Attrs: noreturn
declare void @xsignal1(i64, i64) #4

declare i64 @Fcdr(i64) #1

declare i64 @Fcar(i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @reread_doc_file(i64 %file) #0 {
entry:
  %file.addr = alloca i64, align 8
  store i64 %file, i64* %file.addr, align 8
  %0 = load i64, i64* %file.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 73), align 8
  %call1 = call i64 @Fsnarf_documentation(i64 %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %file.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call i64 @Fload(i64 %2, i64 %call2, i64 %call3, i64 %call4, i64 %call5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i1 true
}

declare i64 @Fcar_safe(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fsubstitute_command_keys(i64 %string) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %buf = alloca i8*, align 8
  %changed = alloca i8, align 1
  %nonquotes_changed = alloca i8, align 1
  %strp = alloca i8*, align 8
  %bufp = alloca i8*, align 8
  %idx = alloca i64, align 8
  %bsize = alloca i64, align 8
  %tem = alloca i64, align 8
  %keymap = alloca i64, align 8
  %start = alloca i8*, align 8
  %length = alloca i64, align 8
  %length_byte = alloca i64, align 8
  %name = alloca i64, align 8
  %multibyte = alloca i8, align 1
  %pure_ascii = alloca i8, align 1
  %nchars = alloca i64, align 8
  %quoting_style = alloca i32, align 4
  %len = alloca i32, align 4
  %start_idx = alloca i64, align 8
  %follow_remap = alloca i8, align 1
  %offset = alloca i64, align 8
  %oldbuf = alloca %struct.buffer*, align 8
  %start_idx197 = alloca i64, align 8
  %active_maps = alloca i64, align 8
  %earlier_maps = alloca i64, align 8
  %count = alloca i64, align 8
  %msg_prefix = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %msg_suffix = alloca i64, align 8
  %.compoundliteral268 = alloca %union.Aligned_String, align 8
  %offset313 = alloca i64, align 8
  %len385 = alloca i32, align 4
  %ch = alloca i32, align 4
  %interval_copy = alloca %struct.interval*, align 8
  store i64 %string, i64* %string.addr, align 8
  store i8 0, i8* %changed, align 1
  store i8 0, i8* %nonquotes_changed, align 1
  %0 = load i64, i64* %string.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %tem, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %keymap, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %name, align 8
  %call5 = call i32 @text_quoting_style()
  store i32 %call5, i32* %quoting_style, align 4
  %2 = load i64, i64* %string.addr, align 8
  %call6 = call zeroext i1 @STRING_MULTIBYTE(i64 %2)
  %frombool = zext i1 %call6 to i8
  store i8 %frombool, i8* %multibyte, align 1
  %3 = load i64, i64* %string.addr, align 8
  %call7 = call i64 @SBYTES(i64 %3)
  %4 = load i64, i64* %string.addr, align 8
  %call8 = call i8* @SDATA(i64 %4)
  %5 = load i64, i64* %string.addr, align 8
  %call9 = call i64 @SCHARS(i64 %5)
  %call10 = call i64 @count_size_as_multibyte(i8* %call8, i64 %call9)
  %cmp11 = icmp eq i64 %call7, %call10
  %frombool12 = zext i1 %cmp11 to i8
  store i8 %frombool12, i8* %pure_ascii, align 1
  store i64 0, i64* %nchars, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 216), align 8
  store i64 %6, i64* %keymap, align 8
  %7 = load i64, i64* %string.addr, align 8
  %call13 = call i64 @SBYTES(i64 %7)
  store i64 %call13, i64* %bsize, align 8
  %8 = load i64, i64* %bsize, align 8
  %cmp14 = icmp sle i64 %8, 2305843009213693931
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %9 = load i64, i64* %bsize, align 8
  %add = add nsw i64 %9, 20
  store i64 %add, i64* %bsize, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %10 = load i64, i64* %bsize, align 8
  %call17 = call noalias i8* @xmalloc(i64 %10)
  store i8* %call17, i8** %buf, align 8
  store i8* %call17, i8** %bufp, align 8
  %11 = load i64, i64* %string.addr, align 8
  %call18 = call i8* @SDATA(i64 %11)
  store i8* %call18, i8** %strp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.472, %if.end.16
  %12 = load i8*, i8** %strp, align 8
  %13 = load i64, i64* %string.addr, align 8
  %call19 = call i8* @SDATA(i64 %13)
  %14 = load i64, i64* %string.addr, align 8
  %call20 = call i64 @SBYTES(i64 %14)
  %add.ptr = getelementptr inbounds i8, i8* %call19, i64 %call20
  %cmp21 = icmp ult i8* %12, %add.ptr
  br i1 %cmp21, label %while.body, label %while.end.473

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %strp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv, 92
  br i1 %cmp22, label %land.lhs.true, label %if.else.90

land.lhs.true:                                    ; preds = %while.body
  %17 = load i8*, i8** %strp, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %18 to i32
  %cmp26 = icmp eq i32 %conv25, 61
  br i1 %cmp26, label %if.then.28, label %if.else.90

if.then.28:                                       ; preds = %land.lhs.true
  store i8 1, i8* %nonquotes_changed, align 1
  store i8 1, i8* %changed, align 1
  %19 = load i8*, i8** %strp, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr29, i8** %strp, align 8
  %20 = load i8, i8* %multibyte, align 1
  %tobool = trunc i8 %20 to i1
  br i1 %tobool, label %if.then.30, label %if.else.86

if.then.30:                                       ; preds = %if.then.28
  %21 = load i8*, i8** %strp, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %22 to i32
  %and = and i32 %conv32, 128
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.30
  store i32 1, i32* %len, align 4
  %23 = load i8*, i8** %strp, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %24 to i32
  br label %cond.end.76

cond.false:                                       ; preds = %if.then.30
  %25 = load i8*, i8** %strp, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %26 to i32
  %and38 = and i32 %conv37, 32
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %cond.false.52, label %cond.true.40

cond.true.40:                                     ; preds = %cond.false
  store i32 2, i32* %len, align 4
  %27 = load i8*, i8** %strp, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %28 to i32
  %and43 = and i32 %conv42, 31
  %shl = shl i32 %and43, 6
  %29 = load i8*, i8** %strp, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %30 to i32
  %and46 = and i32 %conv45, 63
  %or = or i32 %shl, %and46
  %31 = load i8*, i8** %strp, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %32 to i32
  %cmp49 = icmp slt i32 %conv48, 194
  %cond = select i1 %cmp49, i32 4194176, i32 0
  %add51 = add nsw i32 %or, %cond
  br label %cond.end.74

cond.false.52:                                    ; preds = %cond.false
  %33 = load i8*, i8** %strp, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %34 to i32
  %and55 = and i32 %conv54, 16
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %cond.false.71, label %cond.true.57

cond.true.57:                                     ; preds = %cond.false.52
  store i32 3, i32* %len, align 4
  %35 = load i8*, i8** %strp, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %36 to i32
  %and60 = and i32 %conv59, 15
  %shl61 = shl i32 %and60, 12
  %37 = load i8*, i8** %strp, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %38 to i32
  %and64 = and i32 %conv63, 63
  %shl65 = shl i32 %and64, 6
  %or66 = or i32 %shl61, %shl65
  %39 = load i8*, i8** %strp, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %39, i64 2
  %40 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %40 to i32
  %and69 = and i32 %conv68, 63
  %or70 = or i32 %or66, %and69
  br label %cond.end

cond.false.71:                                    ; preds = %cond.false.52
  %41 = load i8*, i8** %strp, align 8
  %call72 = call i32 @string_char(i8* %41, i8** null, i32* %len)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.71, %cond.true.57
  %cond73 = phi i32 [ %or70, %cond.true.57 ], [ %call72, %cond.false.71 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end, %cond.true.40
  %cond75 = phi i32 [ %add51, %cond.true.40 ], [ %cond73, %cond.end ]
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.end.74, %cond.true
  %cond77 = phi i32 [ %conv35, %cond.true ], [ %cond75, %cond.end.74 ]
  %42 = load i32, i32* %len, align 4
  %cmp78 = icmp eq i32 %42, 1
  br i1 %cmp78, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %cond.end.76
  %43 = load i8*, i8** %strp, align 8
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %bufp, align 8
  store i8 %44, i8* %45, align 1
  br label %if.end.82

if.else:                                          ; preds = %cond.end.76
  %46 = load i8*, i8** %bufp, align 8
  %47 = load i8*, i8** %strp, align 8
  %48 = load i32, i32* %len, align 4
  %conv81 = sext i32 %48 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 %conv81, i32 1, i1 false)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.80
  %49 = load i32, i32* %len, align 4
  %50 = load i8*, i8** %strp, align 8
  %idx.ext = sext i32 %49 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  store i8* %add.ptr83, i8** %strp, align 8
  %51 = load i32, i32* %len, align 4
  %52 = load i8*, i8** %bufp, align 8
  %idx.ext84 = sext i32 %51 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %52, i64 %idx.ext84
  store i8* %add.ptr85, i8** %bufp, align 8
  %53 = load i64, i64* %nchars, align 8
  %inc = add nsw i64 %53, 1
  store i64 %inc, i64* %nchars, align 8
  br label %if.end.89

if.else.86:                                       ; preds = %if.then.28
  %54 = load i8*, i8** %strp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %strp, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %bufp, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr87, i8** %bufp, align 8
  store i8 %55, i8* %56, align 1
  %57 = load i64, i64* %nchars, align 8
  %inc88 = add nsw i64 %57, 1
  store i64 %inc88, i64* %nchars, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.end.82
  br label %if.end.472

if.else.90:                                       ; preds = %land.lhs.true, %while.body
  %58 = load i8*, i8** %strp, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %59 to i32
  %cmp93 = icmp eq i32 %conv92, 92
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.182

land.lhs.true.95:                                 ; preds = %if.else.90
  %60 = load i8*, i8** %strp, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %61 to i32
  %cmp98 = icmp eq i32 %conv97, 91
  br i1 %cmp98, label %if.then.100, label %if.else.182

if.then.100:                                      ; preds = %land.lhs.true.95
  store i8 1, i8* %follow_remap, align 1
  %62 = load i8*, i8** %strp, align 8
  %add.ptr101 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %add.ptr101, i8** %strp, align 8
  %63 = load i8*, i8** %strp, align 8
  store i8* %63, i8** %start, align 8
  %64 = load i8*, i8** %start, align 8
  %65 = load i64, i64* %string.addr, align 8
  %call102 = call i8* @SDATA(i64 %65)
  %sub.ptr.lhs.cast = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call102 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %start_idx, align 8
  br label %while.cond.103

while.cond.103:                                   ; preds = %while.body.114, %if.then.100
  %66 = load i8*, i8** %strp, align 8
  %67 = load i64, i64* %string.addr, align 8
  %call104 = call i8* @SDATA(i64 %67)
  %sub.ptr.lhs.cast105 = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast106 = ptrtoint i8* %call104 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %68 = load i64, i64* %string.addr, align 8
  %call108 = call i64 @SBYTES(i64 %68)
  %cmp109 = icmp slt i64 %sub.ptr.sub107, %call108
  br i1 %cmp109, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.103
  %69 = load i8*, i8** %strp, align 8
  %70 = load i8, i8* %69, align 1
  %conv111 = zext i8 %70 to i32
  %cmp112 = icmp ne i32 %conv111, 93
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.103
  %71 = phi i1 [ false, %while.cond.103 ], [ %cmp112, %land.rhs ]
  br i1 %71, label %while.body.114, label %while.end

while.body.114:                                   ; preds = %land.end
  %72 = load i8*, i8** %strp, align 8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr115, i8** %strp, align 8
  br label %while.cond.103

while.end:                                        ; preds = %land.end
  %73 = load i8*, i8** %strp, align 8
  %74 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast116 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast117 = ptrtoint i8* %74 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  store i64 %sub.ptr.sub118, i64* %length_byte, align 8
  %75 = load i8*, i8** %strp, align 8
  %incdec.ptr119 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr119, i8** %strp, align 8
  %76 = load i8*, i8** %strp, align 8
  %77 = load i64, i64* %string.addr, align 8
  %call120 = call i8* @SDATA(i64 %77)
  %sub.ptr.lhs.cast121 = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast122 = ptrtoint i8* %call120 to i64
  %sub.ptr.sub123 = sub i64 %sub.ptr.lhs.cast121, %sub.ptr.rhs.cast122
  store i64 %sub.ptr.sub123, i64* %idx, align 8
  %78 = load i8*, i8** %start, align 8
  %79 = load i64, i64* %length_byte, align 8
  %call124 = call i64 @make_string(i8* %78, i64 %79)
  %call125 = call i64 @builtin_lisp_symbol(i32 0)
  %call126 = call i64 @Fintern(i64 %call124, i64 %call125)
  store i64 %call126, i64* %name, align 8
  br label %do_remap

do_remap:                                         ; preds = %if.then.151, %while.end
  %80 = load i64, i64* %name, align 8
  %81 = load i64, i64* %keymap, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 901)
  %call128 = call i64 @builtin_lisp_symbol(i32 0)
  %call129 = call i64 @builtin_lisp_symbol(i32 0)
  %call130 = call i64 @Fwhere_is_internal(i64 %80, i64 %81, i64 %call127, i64 %call128, i64 %call129)
  store i64 %call130, i64* %tem, align 8
  %82 = load i64, i64* %tem, align 8
  %call131 = call zeroext i1 @VECTORP(i64 %82)
  br i1 %call131, label %land.lhs.true.133, label %if.end.153

land.lhs.true.133:                                ; preds = %do_remap
  %83 = load i64, i64* %tem, align 8
  %call134 = call i64 @ASIZE(i64 %83)
  %cmp135 = icmp sgt i64 %call134, 1
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.153

land.lhs.true.137:                                ; preds = %land.lhs.true.133
  %84 = load i64, i64* %tem, align 8
  %call138 = call i64 @AREF(i64 %84, i64 0)
  %call139 = call i64 @builtin_lisp_symbol(i32 805)
  %cmp140 = icmp eq i64 %call138, %call139
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.153

land.lhs.true.142:                                ; preds = %land.lhs.true.137
  %85 = load i64, i64* %tem, align 8
  %call143 = call i64 @AREF(i64 %85, i64 1)
  %and144 = and i64 %call143, 7
  %conv145 = trunc i64 %and144 to i32
  %cmp146 = icmp eq i32 %conv145, 0
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.153

land.lhs.true.148:                                ; preds = %land.lhs.true.142
  %86 = load i8, i8* %follow_remap, align 1
  %tobool149 = trunc i8 %86 to i1
  br i1 %tobool149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %land.lhs.true.148
  %87 = load i64, i64* %tem, align 8
  %call152 = call i64 @AREF(i64 %87, i64 1)
  store i64 %call152, i64* %name, align 8
  store i8 0, i8* %follow_remap, align 1
  br label %do_remap

if.end.153:                                       ; preds = %land.lhs.true.148, %land.lhs.true.142, %land.lhs.true.137, %land.lhs.true.133, %do_remap
  %88 = load i64, i64* %string.addr, align 8
  %call154 = call i8* @SDATA(i64 %88)
  %89 = load i64, i64* %idx, align 8
  %add.ptr155 = getelementptr inbounds i8, i8* %call154, i64 %89
  store i8* %add.ptr155, i8** %strp, align 8
  %90 = load i64, i64* %string.addr, align 8
  %call156 = call i8* @SDATA(i64 %90)
  %91 = load i64, i64* %start_idx, align 8
  %add.ptr157 = getelementptr inbounds i8, i8* %call156, i64 %91
  store i8* %add.ptr157, i8** %start, align 8
  %92 = load i64, i64* %tem, align 8
  %call158 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp159 = icmp eq i64 %92, %call158
  br i1 %cmp159, label %if.then.161, label %if.else.179

if.then.161:                                      ; preds = %if.end.153
  %93 = load i8*, i8** %bufp, align 8
  %94 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast162 = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast163 = ptrtoint i8* %94 to i64
  %sub.ptr.sub164 = sub i64 %sub.ptr.lhs.cast162, %sub.ptr.rhs.cast163
  store i64 %sub.ptr.sub164, i64* %offset, align 8
  %95 = load i64, i64* %bsize, align 8
  %cmp165 = icmp slt i64 2305843009213693947, %95
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.then.161
  call void @string_overflow() #8
  unreachable

if.end.168:                                       ; preds = %if.then.161
  %96 = load i8*, i8** %buf, align 8
  %97 = load i64, i64* %bsize, align 8
  %add169 = add nsw i64 %97, 4
  store i64 %add169, i64* %bsize, align 8
  %call170 = call i8* @xrealloc(i8* %96, i64 %add169)
  store i8* %call170, i8** %buf, align 8
  %98 = load i8*, i8** %buf, align 8
  %99 = load i64, i64* %offset, align 8
  %add.ptr171 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %add.ptr171, i8** %bufp, align 8
  %100 = load i8*, i8** %bufp, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i64 4, i32 1, i1 false)
  %101 = load i8*, i8** %bufp, align 8
  %add.ptr172 = getelementptr inbounds i8, i8* %101, i64 4
  store i8* %add.ptr172, i8** %bufp, align 8
  %102 = load i64, i64* %nchars, align 8
  %add173 = add nsw i64 %102, 4
  store i64 %add173, i64* %nchars, align 8
  %103 = load i8, i8* %multibyte, align 1
  %tobool174 = trunc i8 %103 to i1
  br i1 %tobool174, label %if.then.175, label %if.else.177

if.then.175:                                      ; preds = %if.end.168
  %104 = load i8*, i8** %start, align 8
  %105 = load i64, i64* %length_byte, align 8
  %call176 = call i64 @multibyte_chars_in_text(i8* %104, i64 %105)
  store i64 %call176, i64* %length, align 8
  br label %if.end.178

if.else.177:                                      ; preds = %if.end.168
  %106 = load i64, i64* %length_byte, align 8
  store i64 %106, i64* %length, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.177, %if.then.175
  br label %subst

if.else.179:                                      ; preds = %if.end.153
  %107 = load i64, i64* %tem, align 8
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  %call181 = call i64 @Fkey_description(i64 %107, i64 %call180)
  store i64 %call181, i64* %tem, align 8
  br label %subst_string

if.else.182:                                      ; preds = %land.lhs.true.95, %if.else.90
  %108 = load i8*, i8** %strp, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %108, i64 0
  %109 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %109 to i32
  %cmp185 = icmp eq i32 %conv184, 92
  br i1 %cmp185, label %land.lhs.true.187, label %if.else.328

land.lhs.true.187:                                ; preds = %if.else.182
  %110 = load i8*, i8** %strp, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %111 to i32
  %cmp190 = icmp eq i32 %conv189, 123
  br i1 %cmp190, label %if.then.196, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.187
  %112 = load i8*, i8** %strp, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %112, i64 1
  %113 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %113 to i32
  %cmp194 = icmp eq i32 %conv193, 60
  br i1 %cmp194, label %if.then.196, label %if.else.328

if.then.196:                                      ; preds = %lor.lhs.false, %land.lhs.true.187
  %call198 = call i64 @builtin_lisp_symbol(i32 0)
  %call199 = call i64 @builtin_lisp_symbol(i32 0)
  %call200 = call i64 @Fcurrent_active_maps(i64 %call198, i64 %call199)
  store i64 %call200, i64* %active_maps, align 8
  %call201 = call i64 @SPECPDL_INDEX()
  store i64 %call201, i64* %count, align 8
  %114 = load i8*, i8** %strp, align 8
  %add.ptr202 = getelementptr inbounds i8, i8* %114, i64 2
  store i8* %add.ptr202, i8** %strp, align 8
  %115 = load i8*, i8** %strp, align 8
  store i8* %115, i8** %start, align 8
  %116 = load i8*, i8** %start, align 8
  %117 = load i64, i64* %string.addr, align 8
  %call203 = call i8* @SDATA(i64 %117)
  %sub.ptr.lhs.cast204 = ptrtoint i8* %116 to i64
  %sub.ptr.rhs.cast205 = ptrtoint i8* %call203 to i64
  %sub.ptr.sub206 = sub i64 %sub.ptr.lhs.cast204, %sub.ptr.rhs.cast205
  store i64 %sub.ptr.sub206, i64* %start_idx197, align 8
  br label %while.cond.207

while.cond.207:                                   ; preds = %while.body.224, %if.then.196
  %118 = load i8*, i8** %strp, align 8
  %119 = load i64, i64* %string.addr, align 8
  %call208 = call i8* @SDATA(i64 %119)
  %sub.ptr.lhs.cast209 = ptrtoint i8* %118 to i64
  %sub.ptr.rhs.cast210 = ptrtoint i8* %call208 to i64
  %sub.ptr.sub211 = sub i64 %sub.ptr.lhs.cast209, %sub.ptr.rhs.cast210
  %120 = load i64, i64* %string.addr, align 8
  %call212 = call i64 @SBYTES(i64 %120)
  %cmp213 = icmp slt i64 %sub.ptr.sub211, %call212
  br i1 %cmp213, label %land.lhs.true.215, label %land.end.223

land.lhs.true.215:                                ; preds = %while.cond.207
  %121 = load i8*, i8** %strp, align 8
  %122 = load i8, i8* %121, align 1
  %conv216 = zext i8 %122 to i32
  %cmp217 = icmp ne i32 %conv216, 125
  br i1 %cmp217, label %land.rhs.219, label %land.end.223

land.rhs.219:                                     ; preds = %land.lhs.true.215
  %123 = load i8*, i8** %strp, align 8
  %124 = load i8, i8* %123, align 1
  %conv220 = zext i8 %124 to i32
  %cmp221 = icmp ne i32 %conv220, 62
  br label %land.end.223

land.end.223:                                     ; preds = %land.rhs.219, %land.lhs.true.215, %while.cond.207
  %125 = phi i1 [ false, %land.lhs.true.215 ], [ false, %while.cond.207 ], [ %cmp221, %land.rhs.219 ]
  br i1 %125, label %while.body.224, label %while.end.226

while.body.224:                                   ; preds = %land.end.223
  %126 = load i8*, i8** %strp, align 8
  %incdec.ptr225 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr225, i8** %strp, align 8
  br label %while.cond.207

while.end.226:                                    ; preds = %land.end.223
  %127 = load i8*, i8** %strp, align 8
  %128 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast227 = ptrtoint i8* %127 to i64
  %sub.ptr.rhs.cast228 = ptrtoint i8* %128 to i64
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast227, %sub.ptr.rhs.cast228
  store i64 %sub.ptr.sub229, i64* %length_byte, align 8
  %129 = load i8*, i8** %strp, align 8
  %incdec.ptr230 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr230, i8** %strp, align 8
  %130 = load i8*, i8** %strp, align 8
  %131 = load i64, i64* %string.addr, align 8
  %call231 = call i8* @SDATA(i64 %131)
  %sub.ptr.lhs.cast232 = ptrtoint i8* %130 to i64
  %sub.ptr.rhs.cast233 = ptrtoint i8* %call231 to i64
  %sub.ptr.sub234 = sub i64 %sub.ptr.lhs.cast232, %sub.ptr.rhs.cast233
  store i64 %sub.ptr.sub234, i64* %idx, align 8
  %132 = load i8*, i8** %start, align 8
  %133 = load i64, i64* %length_byte, align 8
  %call235 = call i64 @make_string(i8* %132, i64 %133)
  %call236 = call i64 @builtin_lisp_symbol(i32 0)
  %call237 = call i64 @Fintern(i64 %call235, i64 %call236)
  store i64 %call237, i64* %name, align 8
  %134 = load i64, i64* %name, align 8
  %call238 = call i64 @Fboundp(i64 %134)
  store i64 %call238, i64* %tem, align 8
  %135 = load i64, i64* %tem, align 8
  %call239 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp240 = icmp eq i64 %135, %call239
  br i1 %cmp240, label %if.end.254, label %if.then.242

if.then.242:                                      ; preds = %while.end.226
  %136 = load i64, i64* %name, align 8
  %call243 = call i64 @Fsymbol_value(i64 %136)
  store i64 %call243, i64* %tem, align 8
  %137 = load i64, i64* %tem, align 8
  %call244 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp245 = icmp eq i64 %137, %call244
  br i1 %cmp245, label %if.end.253, label %if.then.247

if.then.247:                                      ; preds = %if.then.242
  %138 = load i64, i64* %tem, align 8
  %call248 = call i64 @get_keymap(i64 %138, i1 zeroext false, i1 zeroext true)
  store i64 %call248, i64* %tem, align 8
  %139 = load i64, i64* %string.addr, align 8
  %call249 = call i8* @SDATA(i64 %139)
  %140 = load i64, i64* %idx, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %call249, i64 %140
  store i8* %add.ptr250, i8** %strp, align 8
  %141 = load i64, i64* %string.addr, align 8
  %call251 = call i8* @SDATA(i64 %141)
  %142 = load i64, i64* %start_idx197, align 8
  %add.ptr252 = getelementptr inbounds i8, i8* %call251, i64 %142
  store i8* %add.ptr252, i8** %start, align 8
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.247, %if.then.242
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %while.end.226
  %143 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %143, %struct.buffer** %oldbuf, align 8
  %144 = load i64, i64* @Vprin1_to_string_buffer, align 8
  %call255 = call %struct.buffer* @XBUFFER(i64 %144)
  call void @set_buffer_internal(%struct.buffer* %call255)
  %call256 = call i64 @builtin_lisp_symbol(i32 544)
  %call257 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call256, i64 %call257)
  %145 = load i64, i64* %tem, align 8
  %call258 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp259 = icmp eq i64 %145, %call258
  br i1 %cmp259, label %if.then.261, label %if.else.284

if.then.261:                                      ; preds = %if.end.254
  %146 = load i64, i64* %name, align 8
  %call262 = call i64 @Fsymbol_name(i64 %146)
  store i64 %call262, i64* %name, align 8
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 14, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i8** %data, align 8
  %s263 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %147 = bitcast %struct.Lisp_String* %s263 to i8*
  %call264 = call i64 @make_lisp_ptr(i8* %147, i32 4)
  store i64 %call264, i64* %msg_prefix, align 8
  %148 = load i64, i64* %msg_prefix, align 8
  %call265 = call i64 @Fsubstitute_command_keys(i64 %148)
  call void @insert1(i64 %call265)
  %149 = load i64, i64* %name, align 8
  %150 = load i64, i64* %name, align 8
  %call266 = call i64 @SCHARS(i64 %150)
  %151 = load i64, i64* %name, align 8
  %call267 = call i64 @SBYTES(i64 %151)
  call void @insert_from_string(i64 %149, i64 0, i64 0, i64 %call266, i64 %call267, i1 zeroext true)
  %s269 = bitcast %union.Aligned_String* %.compoundliteral268 to %struct.Lisp_String*
  %size270 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s269, i32 0, i32 0
  store i64 35, i64* %size270, align 8
  %size_byte271 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s269, i32 0, i32 1
  store i64 -1, i64* %size_byte271, align 8
  %intervals272 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s269, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals272, align 8
  %data273 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s269, i32 0, i32 3
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i32 0, i32 0), i8** %data273, align 8
  %s274 = bitcast %union.Aligned_String* %.compoundliteral268 to %struct.Lisp_String*
  %152 = bitcast %struct.Lisp_String* %s274 to i8*
  %call275 = call i64 @make_lisp_ptr(i8* %152, i32 4)
  store i64 %call275, i64* %msg_suffix, align 8
  %153 = load i64, i64* %msg_suffix, align 8
  %call276 = call i64 @Fsubstitute_command_keys(i64 %153)
  call void @insert1(i64 %call276)
  %154 = load i8*, i8** %start, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %154, i64 -1
  %155 = load i8, i8* %arrayidx277, align 1
  %conv278 = zext i8 %155 to i32
  %cmp279 = icmp eq i32 %conv278, 60
  br i1 %cmp279, label %if.then.281, label %if.end.283

if.then.281:                                      ; preds = %if.then.261
  %call282 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call282, i64* %keymap, align 8
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.281, %if.then.261
  br label %if.end.297

if.else.284:                                      ; preds = %if.end.254
  %156 = load i8*, i8** %start, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %156, i64 -1
  %157 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %157 to i32
  %cmp287 = icmp eq i32 %conv286, 60
  br i1 %cmp287, label %if.then.289, label %if.else.290

if.then.289:                                      ; preds = %if.else.284
  %158 = load i64, i64* %tem, align 8
  store i64 %158, i64* %keymap, align 8
  br label %if.end.296

if.else.290:                                      ; preds = %if.else.284
  %159 = load i64, i64* %tem, align 8
  %160 = load i64, i64* %active_maps, align 8
  %call291 = call i64 @Freverse(i64 %160)
  %call292 = call i64 @Fmemq(i64 %159, i64 %call291)
  %call293 = call i64 @Fcdr(i64 %call292)
  store i64 %call293, i64* %earlier_maps, align 8
  %161 = load i64, i64* %tem, align 8
  %162 = load i64, i64* %earlier_maps, align 8
  %call294 = call i64 @Fnreverse(i64 %162)
  %call295 = call i64 @builtin_lisp_symbol(i32 0)
  call void @describe_map_tree(i64 %161, i1 zeroext true, i64 %call294, i64 %call295, i8* null, i1 zeroext true, i1 zeroext false, i1 zeroext false, i1 zeroext true)
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.290, %if.then.289
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.end.283
  %call298 = call i64 @Fbuffer_string()
  store i64 %call298, i64* %tem, align 8
  %call299 = call i64 @Ferase_buffer()
  %163 = load %struct.buffer*, %struct.buffer** %oldbuf, align 8
  call void @set_buffer_internal(%struct.buffer* %163)
  %164 = load i64, i64* %count, align 8
  %call300 = call i64 @builtin_lisp_symbol(i32 0)
  %call301 = call i64 @unbind_to(i64 %164, i64 %call300)
  br label %subst_string

subst_string:                                     ; preds = %if.end.297, %if.else.179
  %165 = load i64, i64* %tem, align 8
  %call302 = call i8* @SDATA(i64 %165)
  store i8* %call302, i8** %start, align 8
  %166 = load i64, i64* %tem, align 8
  %call303 = call i64 @SBYTES(i64 %166)
  store i64 %call303, i64* %length_byte, align 8
  %167 = load i8, i8* %multibyte, align 1
  %tobool304 = trunc i8 %167 to i1
  br i1 %tobool304, label %if.then.309, label %lor.lhs.false.306

lor.lhs.false.306:                                ; preds = %subst_string
  %168 = load i8, i8* %pure_ascii, align 1
  %tobool307 = trunc i8 %168 to i1
  br i1 %tobool307, label %if.then.309, label %if.else.311

if.then.309:                                      ; preds = %lor.lhs.false.306, %subst_string
  %169 = load i64, i64* %tem, align 8
  %call310 = call i64 @SCHARS(i64 %169)
  store i64 %call310, i64* %length, align 8
  br label %if.end.312

if.else.311:                                      ; preds = %lor.lhs.false.306
  %170 = load i64, i64* %length_byte, align 8
  store i64 %170, i64* %length, align 8
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.311, %if.then.309
  br label %subst

subst:                                            ; preds = %if.end.312, %if.end.178
  store i8 1, i8* %nonquotes_changed, align 1
  br label %subst_quote

subst_quote:                                      ; preds = %if.end.360, %subst
  store i8 1, i8* %changed, align 1
  %171 = load i8*, i8** %bufp, align 8
  %172 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast314 = ptrtoint i8* %171 to i64
  %sub.ptr.rhs.cast315 = ptrtoint i8* %172 to i64
  %sub.ptr.sub316 = sub i64 %sub.ptr.lhs.cast314, %sub.ptr.rhs.cast315
  store i64 %sub.ptr.sub316, i64* %offset313, align 8
  %173 = load i64, i64* %length_byte, align 8
  %sub = sub nsw i64 2305843009213693951, %173
  %174 = load i64, i64* %bsize, align 8
  %cmp317 = icmp slt i64 %sub, %174
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %subst_quote
  call void @string_overflow() #8
  unreachable

if.end.320:                                       ; preds = %subst_quote
  %175 = load i8*, i8** %buf, align 8
  %176 = load i64, i64* %length_byte, align 8
  %177 = load i64, i64* %bsize, align 8
  %add321 = add nsw i64 %177, %176
  store i64 %add321, i64* %bsize, align 8
  %call322 = call i8* @xrealloc(i8* %175, i64 %add321)
  store i8* %call322, i8** %buf, align 8
  %178 = load i8*, i8** %buf, align 8
  %179 = load i64, i64* %offset313, align 8
  %add.ptr323 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %add.ptr323, i8** %bufp, align 8
  %180 = load i8*, i8** %bufp, align 8
  %181 = load i8*, i8** %start, align 8
  %182 = load i64, i64* %length_byte, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 %182, i32 1, i1 false)
  %183 = load i64, i64* %length_byte, align 8
  %184 = load i8*, i8** %bufp, align 8
  %add.ptr324 = getelementptr inbounds i8, i8* %184, i64 %183
  store i8* %add.ptr324, i8** %bufp, align 8
  %185 = load i64, i64* %length, align 8
  %186 = load i64, i64* %nchars, align 8
  %add325 = add nsw i64 %186, %185
  store i64 %add325, i64* %nchars, align 8
  %187 = load i64, i64* %string.addr, align 8
  %call326 = call i8* @SDATA(i64 %187)
  %188 = load i64, i64* %idx, align 8
  %add.ptr327 = getelementptr inbounds i8, i8* %call326, i64 %188
  store i8* %add.ptr327, i8** %strp, align 8
  br label %if.end.470

if.else.328:                                      ; preds = %lor.lhs.false, %if.else.182
  %189 = load i8*, i8** %strp, align 8
  %arrayidx329 = getelementptr inbounds i8, i8* %189, i64 0
  %190 = load i8, i8* %arrayidx329, align 1
  %conv330 = zext i8 %190 to i32
  %cmp331 = icmp eq i32 %conv330, 96
  br i1 %cmp331, label %land.lhs.true.338, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %if.else.328
  %191 = load i8*, i8** %strp, align 8
  %arrayidx334 = getelementptr inbounds i8, i8* %191, i64 0
  %192 = load i8, i8* %arrayidx334, align 1
  %conv335 = zext i8 %192 to i32
  %cmp336 = icmp eq i32 %conv335, 39
  br i1 %cmp336, label %land.lhs.true.338, label %if.else.366

land.lhs.true.338:                                ; preds = %lor.lhs.false.333, %if.else.328
  %193 = load i32, i32* %quoting_style, align 4
  %cmp339 = icmp eq i32 %193, 0
  br i1 %cmp339, label %land.lhs.true.341, label %if.else.366

land.lhs.true.341:                                ; preds = %land.lhs.true.338
  %194 = load i8, i8* %multibyte, align 1
  %tobool342 = trunc i8 %194 to i1
  br i1 %tobool342, label %if.then.347, label %lor.lhs.false.344

lor.lhs.false.344:                                ; preds = %land.lhs.true.341
  %195 = load i8, i8* %pure_ascii, align 1
  %tobool345 = trunc i8 %195 to i1
  br i1 %tobool345, label %if.then.347, label %if.else.366

if.then.347:                                      ; preds = %lor.lhs.false.344, %land.lhs.true.341
  %196 = load i8*, i8** %strp, align 8
  %arrayidx348 = getelementptr inbounds i8, i8* %196, i64 0
  %197 = load i8, i8* %arrayidx348, align 1
  %conv349 = zext i8 %197 to i32
  %cmp350 = icmp eq i32 %conv349, 96
  %cond352 = select i1 %cmp350, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0)
  store i8* %cond352, i8** %start, align 8
  store i64 3, i64* %length_byte, align 8
  %198 = load i8, i8* %multibyte, align 1
  %tobool353 = trunc i8 %198 to i1
  br i1 %tobool353, label %if.then.358, label %lor.lhs.false.355

lor.lhs.false.355:                                ; preds = %if.then.347
  %199 = load i8, i8* %pure_ascii, align 1
  %tobool356 = trunc i8 %199 to i1
  br i1 %tobool356, label %if.then.358, label %if.else.359

if.then.358:                                      ; preds = %lor.lhs.false.355, %if.then.347
  store i64 1, i64* %length, align 8
  br label %if.end.360

if.else.359:                                      ; preds = %lor.lhs.false.355
  %200 = load i64, i64* %length_byte, align 8
  store i64 %200, i64* %length, align 8
  br label %if.end.360

if.end.360:                                       ; preds = %if.else.359, %if.then.358
  %201 = load i8*, i8** %strp, align 8
  %202 = load i64, i64* %string.addr, align 8
  %call361 = call i8* @SDATA(i64 %202)
  %sub.ptr.lhs.cast362 = ptrtoint i8* %201 to i64
  %sub.ptr.rhs.cast363 = ptrtoint i8* %call361 to i64
  %sub.ptr.sub364 = sub i64 %sub.ptr.lhs.cast362, %sub.ptr.rhs.cast363
  %add365 = add nsw i64 %sub.ptr.sub364, 1
  store i64 %add365, i64* %idx, align 8
  br label %subst_quote

if.else.366:                                      ; preds = %lor.lhs.false.344, %land.lhs.true.338, %lor.lhs.false.333
  %203 = load i8*, i8** %strp, align 8
  %arrayidx367 = getelementptr inbounds i8, i8* %203, i64 0
  %204 = load i8, i8* %arrayidx367, align 1
  %conv368 = zext i8 %204 to i32
  %cmp369 = icmp eq i32 %conv368, 96
  br i1 %cmp369, label %land.lhs.true.371, label %if.else.378

land.lhs.true.371:                                ; preds = %if.else.366
  %205 = load i32, i32* %quoting_style, align 4
  %cmp372 = icmp eq i32 %205, 2
  br i1 %cmp372, label %if.then.374, label %if.else.378

if.then.374:                                      ; preds = %land.lhs.true.371
  %206 = load i8*, i8** %bufp, align 8
  %incdec.ptr375 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr375, i8** %bufp, align 8
  store i8 39, i8* %206, align 1
  %207 = load i8*, i8** %strp, align 8
  %incdec.ptr376 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %incdec.ptr376, i8** %strp, align 8
  %208 = load i64, i64* %nchars, align 8
  %inc377 = add nsw i64 %208, 1
  store i64 %inc377, i64* %nchars, align 8
  store i8 1, i8* %changed, align 1
  br label %if.end.468

if.else.378:                                      ; preds = %land.lhs.true.371, %if.else.366
  %209 = load i8, i8* %multibyte, align 1
  %tobool379 = trunc i8 %209 to i1
  br i1 %tobool379, label %if.else.384, label %if.then.380

if.then.380:                                      ; preds = %if.else.378
  %210 = load i8*, i8** %strp, align 8
  %incdec.ptr381 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr381, i8** %strp, align 8
  %211 = load i8, i8* %210, align 1
  %212 = load i8*, i8** %bufp, align 8
  %incdec.ptr382 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr382, i8** %bufp, align 8
  store i8 %211, i8* %212, align 1
  %213 = load i64, i64* %nchars, align 8
  %inc383 = add nsw i64 %213, 1
  store i64 %inc383, i64* %nchars, align 8
  br label %if.end.467

if.else.384:                                      ; preds = %if.else.378
  %214 = load i8*, i8** %strp, align 8
  %arrayidx386 = getelementptr inbounds i8, i8* %214, i64 0
  %215 = load i8, i8* %arrayidx386, align 1
  %conv387 = zext i8 %215 to i32
  %and388 = and i32 %conv387, 128
  %tobool389 = icmp ne i32 %and388, 0
  br i1 %tobool389, label %cond.false.393, label %cond.true.390

cond.true.390:                                    ; preds = %if.else.384
  store i32 1, i32* %len385, align 4
  %216 = load i8*, i8** %strp, align 8
  %arrayidx391 = getelementptr inbounds i8, i8* %216, i64 0
  %217 = load i8, i8* %arrayidx391, align 1
  %conv392 = zext i8 %217 to i32
  br label %cond.end.438

cond.false.393:                                   ; preds = %if.else.384
  %218 = load i8*, i8** %strp, align 8
  %arrayidx394 = getelementptr inbounds i8, i8* %218, i64 0
  %219 = load i8, i8* %arrayidx394, align 1
  %conv395 = zext i8 %219 to i32
  %and396 = and i32 %conv395, 32
  %tobool397 = icmp ne i32 %and396, 0
  br i1 %tobool397, label %cond.false.413, label %cond.true.398

cond.true.398:                                    ; preds = %cond.false.393
  store i32 2, i32* %len385, align 4
  %220 = load i8*, i8** %strp, align 8
  %arrayidx399 = getelementptr inbounds i8, i8* %220, i64 0
  %221 = load i8, i8* %arrayidx399, align 1
  %conv400 = zext i8 %221 to i32
  %and401 = and i32 %conv400, 31
  %shl402 = shl i32 %and401, 6
  %222 = load i8*, i8** %strp, align 8
  %arrayidx403 = getelementptr inbounds i8, i8* %222, i64 1
  %223 = load i8, i8* %arrayidx403, align 1
  %conv404 = zext i8 %223 to i32
  %and405 = and i32 %conv404, 63
  %or406 = or i32 %shl402, %and405
  %224 = load i8*, i8** %strp, align 8
  %arrayidx407 = getelementptr inbounds i8, i8* %224, i64 0
  %225 = load i8, i8* %arrayidx407, align 1
  %conv408 = zext i8 %225 to i32
  %cmp409 = icmp slt i32 %conv408, 194
  %cond411 = select i1 %cmp409, i32 4194176, i32 0
  %add412 = add nsw i32 %or406, %cond411
  br label %cond.end.436

cond.false.413:                                   ; preds = %cond.false.393
  %226 = load i8*, i8** %strp, align 8
  %arrayidx414 = getelementptr inbounds i8, i8* %226, i64 0
  %227 = load i8, i8* %arrayidx414, align 1
  %conv415 = zext i8 %227 to i32
  %and416 = and i32 %conv415, 16
  %tobool417 = icmp ne i32 %and416, 0
  br i1 %tobool417, label %cond.false.432, label %cond.true.418

cond.true.418:                                    ; preds = %cond.false.413
  store i32 3, i32* %len385, align 4
  %228 = load i8*, i8** %strp, align 8
  %arrayidx419 = getelementptr inbounds i8, i8* %228, i64 0
  %229 = load i8, i8* %arrayidx419, align 1
  %conv420 = zext i8 %229 to i32
  %and421 = and i32 %conv420, 15
  %shl422 = shl i32 %and421, 12
  %230 = load i8*, i8** %strp, align 8
  %arrayidx423 = getelementptr inbounds i8, i8* %230, i64 1
  %231 = load i8, i8* %arrayidx423, align 1
  %conv424 = zext i8 %231 to i32
  %and425 = and i32 %conv424, 63
  %shl426 = shl i32 %and425, 6
  %or427 = or i32 %shl422, %shl426
  %232 = load i8*, i8** %strp, align 8
  %arrayidx428 = getelementptr inbounds i8, i8* %232, i64 2
  %233 = load i8, i8* %arrayidx428, align 1
  %conv429 = zext i8 %233 to i32
  %and430 = and i32 %conv429, 63
  %or431 = or i32 %or427, %and430
  br label %cond.end.434

cond.false.432:                                   ; preds = %cond.false.413
  %234 = load i8*, i8** %strp, align 8
  %call433 = call i32 @string_char(i8* %234, i8** null, i32* %len385)
  br label %cond.end.434

cond.end.434:                                     ; preds = %cond.false.432, %cond.true.418
  %cond435 = phi i32 [ %or431, %cond.true.418 ], [ %call433, %cond.false.432 ]
  br label %cond.end.436

cond.end.436:                                     ; preds = %cond.end.434, %cond.true.398
  %cond437 = phi i32 [ %add412, %cond.true.398 ], [ %cond435, %cond.end.434 ]
  br label %cond.end.438

cond.end.438:                                     ; preds = %cond.end.436, %cond.true.390
  %cond439 = phi i32 [ %conv392, %cond.true.390 ], [ %cond437, %cond.end.436 ]
  store i32 %cond439, i32* %ch, align 4
  %235 = load i32, i32* %ch, align 4
  %cmp440 = icmp eq i32 %235, 8216
  br i1 %cmp440, label %land.lhs.true.445, label %lor.lhs.false.442

lor.lhs.false.442:                                ; preds = %cond.end.438
  %236 = load i32, i32* %ch, align 4
  %cmp443 = icmp eq i32 %236, 8217
  br i1 %cmp443, label %land.lhs.true.445, label %if.else.460

land.lhs.true.445:                                ; preds = %lor.lhs.false.442, %cond.end.438
  %237 = load i32, i32* %quoting_style, align 4
  %cmp446 = icmp ne i32 %237, 0
  br i1 %cmp446, label %if.then.448, label %if.else.460

if.then.448:                                      ; preds = %land.lhs.true.445
  %238 = load i32, i32* %ch, align 4
  %cmp449 = icmp eq i32 %238, 8216
  br i1 %cmp449, label %land.rhs.451, label %land.end.454

land.rhs.451:                                     ; preds = %if.then.448
  %239 = load i32, i32* %quoting_style, align 4
  %cmp452 = icmp eq i32 %239, 1
  br label %land.end.454

land.end.454:                                     ; preds = %land.rhs.451, %if.then.448
  %240 = phi i1 [ false, %if.then.448 ], [ %cmp452, %land.rhs.451 ]
  %cond455 = select i1 %240, i32 96, i32 39
  %conv456 = trunc i32 %cond455 to i8
  %241 = load i8*, i8** %bufp, align 8
  %incdec.ptr457 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %incdec.ptr457, i8** %bufp, align 8
  store i8 %conv456, i8* %241, align 1
  %242 = load i32, i32* %len385, align 4
  %243 = load i8*, i8** %strp, align 8
  %idx.ext458 = sext i32 %242 to i64
  %add.ptr459 = getelementptr inbounds i8, i8* %243, i64 %idx.ext458
  store i8* %add.ptr459, i8** %strp, align 8
  store i8 1, i8* %changed, align 1
  br label %if.end.465

if.else.460:                                      ; preds = %land.lhs.true.445, %lor.lhs.false.442
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.460
  %244 = load i8*, i8** %strp, align 8
  %incdec.ptr461 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr461, i8** %strp, align 8
  %245 = load i8, i8* %244, align 1
  %246 = load i8*, i8** %bufp, align 8
  %incdec.ptr462 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %incdec.ptr462, i8** %bufp, align 8
  store i8 %245, i8* %246, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %247 = load i32, i32* %len385, align 4
  %dec = add nsw i32 %247, -1
  store i32 %dec, i32* %len385, align 4
  %cmp463 = icmp ne i32 %dec, 0
  br i1 %cmp463, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.465

if.end.465:                                       ; preds = %do.end, %land.end.454
  %248 = load i64, i64* %nchars, align 8
  %inc466 = add nsw i64 %248, 1
  store i64 %inc466, i64* %nchars, align 8
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.465, %if.then.380
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %if.then.374
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %if.end.320
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %if.end.89
  br label %while.cond

while.end.473:                                    ; preds = %while.cond
  %249 = load i8, i8* %changed, align 1
  %tobool474 = trunc i8 %249 to i1
  br i1 %tobool474, label %if.then.475, label %if.else.489

if.then.475:                                      ; preds = %while.end.473
  %250 = load i8*, i8** %buf, align 8
  %251 = load i64, i64* %nchars, align 8
  %252 = load i8*, i8** %bufp, align 8
  %253 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast476 = ptrtoint i8* %252 to i64
  %sub.ptr.rhs.cast477 = ptrtoint i8* %253 to i64
  %sub.ptr.sub478 = sub i64 %sub.ptr.lhs.cast476, %sub.ptr.rhs.cast477
  %call479 = call i64 @make_string_from_bytes(i8* %250, i64 %251, i64 %sub.ptr.sub478)
  store i64 %call479, i64* %tem, align 8
  %254 = load i8, i8* %nonquotes_changed, align 1
  %tobool480 = trunc i8 %254 to i1
  br i1 %tobool480, label %if.end.488, label %if.then.481

if.then.481:                                      ; preds = %if.then.475
  %255 = load i64, i64* %string.addr, align 8
  %call482 = call %struct.interval* @string_intervals(i64 %255)
  %256 = load i64, i64* %string.addr, align 8
  %call483 = call i64 @SCHARS(i64 %256)
  %call484 = call %struct.interval* @copy_intervals(%struct.interval* %call482, i64 0, i64 %call483)
  store %struct.interval* %call484, %struct.interval** %interval_copy, align 8
  %257 = load %struct.interval*, %struct.interval** %interval_copy, align 8
  %tobool485 = icmp ne %struct.interval* %257, null
  br i1 %tobool485, label %if.then.486, label %if.end.487

if.then.486:                                      ; preds = %if.then.481
  %258 = load %struct.interval*, %struct.interval** %interval_copy, align 8
  %259 = load i64, i64* %tem, align 8
  call void @set_interval_object(%struct.interval* %258, i64 %259)
  %260 = load i64, i64* %tem, align 8
  %261 = load %struct.interval*, %struct.interval** %interval_copy, align 8
  call void @set_string_intervals(i64 %260, %struct.interval* %261)
  br label %if.end.487

if.end.487:                                       ; preds = %if.then.486, %if.then.481
  br label %if.end.488

if.end.488:                                       ; preds = %if.end.487, %if.then.475
  br label %if.end.490

if.else.489:                                      ; preds = %while.end.473
  %262 = load i64, i64* %string.addr, align 8
  store i64 %262, i64* %tem, align 8
  br label %if.end.490

if.end.490:                                       ; preds = %if.else.489, %if.end.488
  %263 = load i8*, i8** %buf, align 8
  call void @xfree(i8* %263)
  %264 = load i64, i64* %tem, align 8
  store i64 %264, i64* %retval
  br label %return

return:                                           ; preds = %if.end.490, %if.then
  %265 = load i64, i64* %retval
  ret i64 %265
}

declare i64 @Feval(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fsnarf_documentation(i64 %filename) #0 {
entry:
  %filename.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %buf = alloca [1025 x i8], align 16
  %filled = alloca i32, align 4
  %pos = alloca i64, align 8
  %sym = alloca i64, align 8
  %p = alloca i8*, align 8
  %name = alloca i8*, align 8
  %skip_file = alloca i8, align 1
  %count = alloca i64, align 8
  %dirname = alloca i8*, align 8
  %dirlen = alloca i64, align 8
  %delayed_init = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %i = alloca i32, align 4
  %open_errno = alloca i32, align 4
  %end = alloca i8*, align 8
  %len = alloca i64, align 8
  %fromfile = alloca i8*, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i8 0, i8* %skip_file, align 1
  %call = call i64 @intern(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  %call1 = call i64 @find_symbol_value(i64 %call)
  store i64 %call1, i64* %delayed_init, align 8
  %0 = load i64, i64* %delayed_init, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %delayed_init, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %2, %call4
  br i1 %cmp5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @sibling_etc, i32 0, i32 0), i8** %dirname, align 8
  store i64 7, i64* %dirlen, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72), align 8
  call void @CHECK_STRING(i64 %3)
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72), align 8
  %call7 = call i8* @SSDATA(i64 %4)
  store i8* %call7, i8** %dirname, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72), align 8
  %call8 = call i64 @SBYTES(i64 %5)
  store i64 %call8, i64* %dirlen, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  %call10 = call i64 @SPECPDL_INDEX()
  store i64 %call10, i64* %count, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call11 = call i64 @SPECPDL_INDEX()
  store i64 %call11, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %6 = load i64, i64* %dirlen, align 8
  %7 = load i64, i64* %filename.addr, align 8
  %call12 = call i64 @SBYTES(i64 %7)
  %add = add nsw i64 %6, %call12
  %add13 = add nsw i64 %add, 1
  %8 = load i64, i64* %sa_avail, align 8
  %cmp14 = icmp sle i64 %add13, %8
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %9 = load i64, i64* %dirlen, align 8
  %10 = load i64, i64* %filename.addr, align 8
  %call15 = call i64 @SBYTES(i64 %10)
  %add16 = add nsw i64 %9, %call15
  %add17 = add nsw i64 %add16, 1
  %11 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %11, %add17
  store i64 %sub, i64* %sa_avail, align 8
  %12 = load i64, i64* %dirlen, align 8
  %13 = load i64, i64* %filename.addr, align 8
  %call18 = call i64 @SBYTES(i64 %13)
  %add19 = add nsw i64 %12, %call18
  %add20 = add nsw i64 %add19, 1
  %14 = alloca i8, i64 %add20
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  store i8 1, i8* %sa_must_free, align 1
  %15 = load i64, i64* %dirlen, align 8
  %16 = load i64, i64* %filename.addr, align 8
  %call21 = call i64 @SBYTES(i64 %16)
  %add22 = add nsw i64 %15, %call21
  %add23 = add nsw i64 %add22, 1
  %call24 = call i8* @record_xmalloc(i64 %add23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ %call24, %cond.false ]
  store i8* %cond, i8** %name, align 8
  %17 = load i8*, i8** %name, align 8
  %18 = load i8*, i8** %dirname, align 8
  %call25 = call i8* @stpcpy(i8* %17, i8* %18) #6
  %19 = load i64, i64* %filename.addr, align 8
  %call26 = call i8* @lispstpcpy(i8* %call25, i64 %19)
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 19), align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %20, %call27
  br i1 %cmp28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %cond.end
  store i32 83, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.29
  %21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  %cmp30 = icmp sle i32 0, %dec
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [83 x i8*], [83 x i8*]* @Fsnarf_documentation.buildobj, i32 0, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8
  %call31 = call i64 @build_string(i8* %23)
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 19), align 8
  %call32 = call i64 @Fcons(i64 %call31, i64 %24)
  store i64 %call32, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 19), align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 19), align 8
  %call33 = call i64 @Fpurecopy(i64 %25)
  store i64 %call33, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 19), align 8
  br label %if.end.34

if.end.34:                                        ; preds = %while.end, %cond.end
  %26 = load i8*, i8** %name, align 8
  %call35 = call i32 @emacs_open(i8* %26, i32 0, i32 0)
  store i32 %call35, i32* %fd, align 4
  %27 = load i32, i32* %fd, align 4
  %cmp36 = icmp slt i32 %27, 0
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.34
  %call38 = call i32* @__errno_location() #7
  %28 = load i32, i32* %call38, align 4
  store i32 %28, i32* %open_errno, align 4
  %29 = load i8*, i8** %name, align 8
  %call39 = call i64 @build_string(i8* %29)
  %30 = load i32, i32* %open_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.91, i32 0, i32 0), i64 %call39, i32 %30) #8
  unreachable

if.end.40:                                        ; preds = %if.end.34
  %31 = load i32, i32* %fd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %31)
  %32 = load i64, i64* %filename.addr, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 73), align 8
  store i32 0, i32* %filled, align 4
  store i64 0, i64* %pos, align 8
  br label %while.body.42

while.body.42:                                    ; preds = %if.end.40, %if.end.206
  %33 = load i32, i32* %filled, align 4
  %cmp43 = icmp slt i32 %33, 512
  br i1 %cmp43, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %while.body.42
  %34 = load i32, i32* %fd, align 4
  %35 = load i32, i32* %filled, align 4
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %idxprom45
  %36 = load i32, i32* %filled, align 4
  %conv = sext i32 %36 to i64
  %sub47 = sub i64 1024, %conv
  %call48 = call i64 @emacs_read(i32 %34, i8* %arrayidx46, i64 %sub47)
  %37 = load i32, i32* %filled, align 4
  %conv49 = sext i32 %37 to i64
  %add50 = add nsw i64 %conv49, %call48
  %conv51 = trunc i64 %add50 to i32
  store i32 %conv51, i32* %filled, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.44, %while.body.42
  %38 = load i32, i32* %filled, align 4
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.52
  br label %while.end.220

if.end.54:                                        ; preds = %if.end.52
  %39 = load i32, i32* %filled, align 4
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %idxprom55
  store i8 0, i8* %arrayidx56, align 1
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %40 = load i32, i32* %filled, align 4
  %cmp57 = icmp slt i32 %40, 512
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %if.end.54
  %41 = load i32, i32* %filled, align 4
  br label %cond.end.62

cond.false.60:                                    ; preds = %if.end.54
  %42 = load i32, i32* %filled, align 4
  %sub61 = sub nsw i32 %42, 128
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.59
  %cond63 = phi i32 [ %41, %cond.true.59 ], [ %sub61, %cond.false.60 ]
  %idx.ext = sext i32 %cond63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8
  %arraydecay64 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %43 = load i8*, i8** %end, align 8
  %arraydecay65 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay65 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call66 = call i8* @memchr(i8* %arraydecay64, i32 31, i64 %sub.ptr.sub) #9
  store i8* %call66, i8** %p, align 8
  %44 = load i8*, i8** %p, align 8
  %tobool67 = icmp ne i8* %44, null
  br i1 %tobool67, label %if.then.68, label %if.end.206

if.then.68:                                       ; preds = %cond.end.62
  %45 = load i8*, i8** %p, align 8
  %call69 = call i8* @strchr(i8* %45, i32 10) #9
  store i8* %call69, i8** %end, align 8
  %46 = load i8*, i8** %p, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %47 to i32
  %cmp72 = icmp eq i32 %conv71, 83
  br i1 %cmp72, label %if.then.74, label %if.end.127

if.then.74:                                       ; preds = %if.then.68
  store i8 0, i8* %skip_file, align 1
  %48 = load i8*, i8** %end, align 8
  %49 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast75 = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast76 = ptrtoint i8* %49 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  %cmp78 = icmp sgt i64 %sub.ptr.sub77, 4
  br i1 %cmp78, label %land.lhs.true, label %if.end.126

land.lhs.true:                                    ; preds = %if.then.74
  %50 = load i8*, i8** %end, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %50, i64 -2
  %51 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %51 to i32
  %cmp82 = icmp eq i32 %conv81, 46
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.126

land.lhs.true.84:                                 ; preds = %land.lhs.true
  %52 = load i8*, i8** %end, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %52, i64 -1
  %53 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %53 to i32
  %cmp87 = icmp eq i32 %conv86, 111
  br i1 %cmp87, label %if.then.93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.84
  %54 = load i8*, i8** %end, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %54, i64 -1
  %55 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %55 to i32
  %cmp91 = icmp eq i32 %conv90, 99
  br i1 %cmp91, label %if.then.93, label %if.end.126

if.then.93:                                       ; preds = %lor.lhs.false, %land.lhs.true.84
  %56 = load i8*, i8** %end, align 8
  %57 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast94 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast95 = ptrtoint i8* %57 to i64
  %sub.ptr.sub96 = sub i64 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95
  %sub97 = sub nsw i64 %sub.ptr.sub96, 2
  store i64 %sub97, i64* %len, align 8
  %58 = load i64, i64* %len, align 8
  %add98 = add nsw i64 %58, 1
  %59 = load i64, i64* %sa_avail, align 8
  %cmp99 = icmp sle i64 %add98, %59
  br i1 %cmp99, label %cond.true.101, label %cond.false.105

cond.true.101:                                    ; preds = %if.then.93
  %60 = load i64, i64* %len, align 8
  %add102 = add nsw i64 %60, 1
  %61 = load i64, i64* %sa_avail, align 8
  %sub103 = sub nsw i64 %61, %add102
  store i64 %sub103, i64* %sa_avail, align 8
  %62 = load i64, i64* %len, align 8
  %add104 = add nsw i64 %62, 1
  %63 = alloca i8, i64 %add104
  br label %cond.end.108

cond.false.105:                                   ; preds = %if.then.93
  store i8 1, i8* %sa_must_free, align 1
  %64 = load i64, i64* %len, align 8
  %add106 = add nsw i64 %64, 1
  %call107 = call i8* @record_xmalloc(i64 %add106)
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.105, %cond.true.101
  %cond109 = phi i8* [ %63, %cond.true.101 ], [ %call107, %cond.false.105 ]
  store i8* %cond109, i8** %fromfile, align 8
  %65 = load i8*, i8** %fromfile, align 8
  %66 = load i8*, i8** %p, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %66, i64 2
  %67 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %arrayidx110, i64 %67, i32 1, i1 false)
  %68 = load i64, i64* %len, align 8
  %69 = load i8*, i8** %fromfile, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8 0, i8* %arrayidx111, align 1
  %70 = load i64, i64* %len, align 8
  %sub112 = sub nsw i64 %70, 1
  %71 = load i8*, i8** %fromfile, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %71, i64 %sub112
  %72 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %72 to i32
  %cmp115 = icmp eq i32 %conv114, 99
  br i1 %cmp115, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %cond.end.108
  %73 = load i64, i64* %len, align 8
  %sub118 = sub nsw i64 %73, 1
  %74 = load i8*, i8** %fromfile, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %74, i64 %sub118
  store i8 111, i8* %arrayidx119, align 1
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %cond.end.108
  %75 = load i8*, i8** %fromfile, align 8
  %call121 = call i64 @build_string(i8* %75)
  %76 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 19), align 8
  %call122 = call i64 @Fmember(i64 %call121, i64 %76)
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp124 = icmp eq i64 %call122, %call123
  %frombool = zext i1 %cmp124 to i8
  store i8 %frombool, i8* %skip_file, align 1
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.120, %lor.lhs.false, %land.lhs.true, %if.then.74
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.68
  %77 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %78 = load i8*, i8** %p, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %78, i64 2
  %79 = load i8*, i8** %p, align 8
  %add.ptr129 = getelementptr inbounds i8, i8* %79, i64 2
  %80 = load i8*, i8** %end, align 8
  %81 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast130 = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast131 = ptrtoint i8* %81 to i64
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %sub133 = sub nsw i64 %sub.ptr.sub132, 2
  %call134 = call i64 @multibyte_chars_in_text(i8* %add.ptr129, i64 %sub133)
  %82 = load i8*, i8** %end, align 8
  %83 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast135 = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast136 = ptrtoint i8* %83 to i64
  %sub.ptr.sub137 = sub i64 %sub.ptr.lhs.cast135, %sub.ptr.rhs.cast136
  %sub138 = sub nsw i64 %sub.ptr.sub137, 2
  %call139 = call i64 @oblookup(i64 %77, i8* %add.ptr128, i64 %call134, i64 %sub138)
  store i64 %call139, i64* %sym, align 8
  %84 = load i8, i8* %skip_file, align 1
  %tobool140 = trunc i8 %84 to i1
  br i1 %tobool140, label %if.end.205, label %land.lhs.true.141

land.lhs.true.141:                                ; preds = %if.end.127
  %85 = load i64, i64* %sym, align 8
  %and = and i64 %85, 7
  %conv142 = trunc i64 %and to i32
  %cmp143 = icmp eq i32 %conv142, 0
  br i1 %cmp143, label %if.then.145, label %if.end.205

if.then.145:                                      ; preds = %land.lhs.true.141
  %86 = load i8*, i8** %p, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i8, i8* %arrayidx146, align 1
  %conv147 = sext i8 %87 to i32
  %cmp148 = icmp eq i32 %conv147, 86
  br i1 %cmp148, label %if.then.150, label %if.else.177

if.then.150:                                      ; preds = %if.then.145
  %88 = load i64, i64* %sym, align 8
  %call151 = call i64 @Fboundp(i64 %88)
  %call152 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp153 = icmp eq i64 %call151, %call152
  br i1 %cmp153, label %lor.lhs.false.155, label %if.then.160

lor.lhs.false.155:                                ; preds = %if.then.150
  %89 = load i64, i64* %sym, align 8
  %90 = load i64, i64* %delayed_init, align 8
  %call156 = call i64 @Fmemq(i64 %89, i64 %90)
  %call157 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp158 = icmp eq i64 %call156, %call157
  br i1 %cmp158, label %if.end.176, label %if.then.160

if.then.160:                                      ; preds = %lor.lhs.false.155, %if.then.150
  %91 = load i64, i64* %sym, align 8
  %call161 = call i64 @builtin_lisp_symbol(i32 992)
  %92 = load i64, i64* %pos, align 8
  %93 = load i8*, i8** %end, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %93, i64 %92
  %add.ptr163 = getelementptr inbounds i8, i8* %add.ptr162, i64 1
  %arraydecay164 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast165 = ptrtoint i8* %add.ptr163 to i64
  %sub.ptr.rhs.cast166 = ptrtoint i8* %arraydecay164 to i64
  %sub.ptr.sub167 = sub i64 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166
  %94 = load i8*, i8** %end, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load i8, i8* %arrayidx168, align 1
  %conv169 = sext i8 %95 to i32
  %cmp170 = icmp eq i32 %conv169, 42
  %cond172 = select i1 %cmp170, i32 -1, i32 1
  %conv173 = sext i32 %cond172 to i64
  %mul = mul nsw i64 %sub.ptr.sub167, %conv173
  %shl = shl i64 %mul, 2
  %add174 = add i64 %shl, 2
  %call175 = call i64 @Fput(i64 %91, i64 %call161, i64 %add174)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.160, %lor.lhs.false.155
  br label %if.end.204

if.else.177:                                      ; preds = %if.then.145
  %96 = load i8*, i8** %p, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx178, align 1
  %conv179 = sext i8 %97 to i32
  %cmp180 = icmp eq i32 %conv179, 70
  br i1 %cmp180, label %if.then.182, label %if.else.195

if.then.182:                                      ; preds = %if.else.177
  %98 = load i64, i64* %sym, align 8
  %call183 = call i64 @Ffboundp(i64 %98)
  %call184 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp185 = icmp eq i64 %call183, %call184
  br i1 %cmp185, label %if.end.194, label %if.then.187

if.then.187:                                      ; preds = %if.then.182
  %99 = load i64, i64* %sym, align 8
  %100 = load i64, i64* %pos, align 8
  %101 = load i8*, i8** %end, align 8
  %add.ptr188 = getelementptr inbounds i8, i8* %101, i64 %100
  %add.ptr189 = getelementptr inbounds i8, i8* %add.ptr188, i64 1
  %arraydecay190 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast191 = ptrtoint i8* %add.ptr189 to i64
  %sub.ptr.rhs.cast192 = ptrtoint i8* %arraydecay190 to i64
  %sub.ptr.sub193 = sub i64 %sub.ptr.lhs.cast191, %sub.ptr.rhs.cast192
  call void @store_function_docstring(i64 %99, i64 %sub.ptr.sub193)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.187, %if.then.182
  br label %if.end.203

if.else.195:                                      ; preds = %if.else.177
  %102 = load i8*, i8** %p, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %102, i64 1
  %103 = load i8, i8* %arrayidx196, align 1
  %conv197 = sext i8 %103 to i32
  %cmp198 = icmp eq i32 %conv197, 83
  br i1 %cmp198, label %if.then.200, label %if.else.201

if.then.200:                                      ; preds = %if.else.195
  br label %if.end.202

if.else.201:                                      ; preds = %if.else.195
  %104 = load i64, i64* %pos, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.92, i32 0, i32 0), i64 %104) #8
  unreachable

if.end.202:                                       ; preds = %if.then.200
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.194
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.176
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %land.lhs.true.141, %if.end.127
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %cond.end.62
  %105 = load i8*, i8** %end, align 8
  %arraydecay207 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast208 = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast209 = ptrtoint i8* %arraydecay207 to i64
  %sub.ptr.sub210 = sub i64 %sub.ptr.lhs.cast208, %sub.ptr.rhs.cast209
  %106 = load i64, i64* %pos, align 8
  %add211 = add nsw i64 %106, %sub.ptr.sub210
  store i64 %add211, i64* %pos, align 8
  %107 = load i8*, i8** %end, align 8
  %arraydecay212 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast213 = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast214 = ptrtoint i8* %arraydecay212 to i64
  %sub.ptr.sub215 = sub i64 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast214
  %108 = load i32, i32* %filled, align 4
  %conv216 = sext i32 %108 to i64
  %sub217 = sub nsw i64 %conv216, %sub.ptr.sub215
  %conv218 = trunc i64 %sub217 to i32
  store i32 %conv218, i32* %filled, align 4
  %109 = bitcast [1025 x i8]* %buf to i8*
  %110 = load i8*, i8** %end, align 8
  %111 = load i32, i32* %filled, align 4
  %conv219 = sext i32 %111 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %109, i8* %110, i64 %conv219, i32 1, i1 false)
  br label %while.body.42

while.end.220:                                    ; preds = %if.then.53
  br label %do.body

do.body:                                          ; preds = %while.end.220
  %112 = load i8, i8* %sa_must_free, align 1
  %tobool221 = trunc i8 %112 to i1
  br i1 %tobool221, label %if.then.222, label %if.end.225

if.then.222:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %113 = load i64, i64* %sa_count, align 8
  %call223 = call i64 @builtin_lisp_symbol(i32 0)
  %call224 = call i64 @unbind_to(i64 %113, i64 %call223)
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.222, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.225
  %114 = load i64, i64* %count, align 8
  %call226 = call i64 @builtin_lisp_symbol(i32 0)
  %call227 = call i64 @unbind_to(i64 %114, i64 %call226)
  ret i64 %call227
}

declare i64 @find_symbol_value(i64) #1

declare i64 @intern(i8*) #1

declare void @CHECK_STRING(i64) #1

declare i8* @SSDATA(i64) #1

declare i64 @Fcons(i64, i64) #1

declare i64 @Fpurecopy(i64) #1

; Function Attrs: noreturn
declare void @report_file_errno(i8*, i64, i32) #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare i64 @Fmember(i64, i64) #1

declare i64 @oblookup(i64, i8*, i64, i64) #1

declare i64 @Fboundp(i64) #1

declare i64 @Fmemq(i64, i64) #1

declare i64 @Fput(i64, i64, i64) #1

declare i64 @Ffboundp(i64) #1

; Function Attrs: nounwind uwtable
define internal void @store_function_docstring(i64 %obj, i64 %offset) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %fun = alloca i64, align 8
  %negative_offset = alloca i64, align 8
  %tem = alloca i64, align 8
  %format = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %.compoundliteral60 = alloca [2 x i64], align 8
  store i64 %obj, i64* %obj.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i64, i64* %obj.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %obj.addr, align 8
  %sub = sub nsw i64 %1, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %2 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %function = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %2, i32 0, i32 3
  %3 = load i64, i64* %function, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i64, i64* %obj.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ]
  store i64 %cond, i64* %fun, align 8
  %5 = load i64, i64* %fun, align 8
  %call = call zeroext i1 @SUBRP(i64 %5)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load i64, i64* %offset.addr, align 8
  %sub2 = sub nsw i64 0, %6
  store i64 %sub2, i64* %negative_offset, align 8
  %7 = load i64, i64* %negative_offset, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load i64, i64* %fun, align 8
  %call3 = call %struct.Lisp_Subr* @XSUBR(i64 %9)
  %doc = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call3, i32 0, i32 6
  store i8* %8, i8** %doc, align 8
  br label %if.end.75

if.else:                                          ; preds = %cond.end
  %10 = load i64, i64* %fun, align 8
  %and4 = and i64 %10, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %if.then.8, label %if.else.47

if.then.8:                                        ; preds = %if.else
  %11 = load i64, i64* %fun, align 8
  %sub9 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub9 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car, align 8
  store i64 %14, i64* %tem, align 8
  %15 = load i64, i64* %tem, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp11 = icmp eq i64 %15, %call10
  br i1 %cmp11, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %16 = load i64, i64* %tem, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 191)
  %cmp14 = icmp eq i64 %16, %call13
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %17 = load i64, i64* %tem, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 271)
  %cmp18 = icmp eq i64 %17, %call17
  br i1 %cmp18, label %land.lhs.true, label %if.else.37

land.lhs.true:                                    ; preds = %lor.lhs.false.16
  %18 = load i64, i64* %fun, align 8
  %sub20 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub20 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %21 = load i64, i64* %cdr, align 8
  store i64 %21, i64* %fun, align 8
  br i1 true, label %if.then.21, label %if.else.37

if.then.21:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.then.8
  %22 = load i64, i64* %fun, align 8
  %call22 = call i64 @Fcdr(i64 %22)
  %call23 = call i64 @Fcdr(i64 %call22)
  store i64 %call23, i64* %tem, align 8
  %23 = load i64, i64* %tem, align 8
  %and24 = and i64 %23, 7
  %conv25 = trunc i64 %and24 to i32
  %cmp26 = icmp eq i32 %conv25, 3
  br i1 %cmp26, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %if.then.21
  %24 = load i64, i64* %tem, align 8
  %sub29 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub29 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %car30 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 0
  %27 = load i64, i64* %car30, align 8
  %and31 = and i64 %27, 7
  %conv32 = trunc i64 %and31 to i32
  %and33 = and i32 %conv32, -5
  %cmp34 = icmp eq i32 %and33, 2
  br i1 %cmp34, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %land.lhs.true.28
  %28 = load i64, i64* %tem, align 8
  %29 = load i64, i64* %offset.addr, align 8
  %shl = shl i64 %29, 2
  %add = add i64 %shl, 2
  call void @XSETCAR(i64 %28, i64 %add)
  br label %if.end

if.end:                                           ; preds = %if.then.36, %land.lhs.true.28, %if.then.21
  br label %if.end.46

if.else.37:                                       ; preds = %land.lhs.true, %lor.lhs.false.16
  %30 = load i64, i64* %tem, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 636)
  %cmp39 = icmp eq i64 %30, %call38
  br i1 %cmp39, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.else.37
  %31 = load i64, i64* %fun, align 8
  %sub42 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub42 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr44 = bitcast %union.anon* %u43 to i64*
  %34 = load i64, i64* %cdr44, align 8
  %35 = load i64, i64* %offset.addr, align 8
  call void @store_function_docstring(i64 %34, i64 %35)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.else.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end
  br label %if.end.74

if.else.47:                                       ; preds = %if.else
  %36 = load i64, i64* %fun, align 8
  %call48 = call zeroext i1 @COMPILEDP(i64 %36)
  br i1 %call48, label %if.then.49, label %if.end.73

if.then.49:                                       ; preds = %if.else.47
  %37 = load i64, i64* %fun, align 8
  %call50 = call i64 @ASIZE(i64 %37)
  %and51 = and i64 %call50, 4095
  %cmp52 = icmp sgt i64 %and51, 4
  br i1 %cmp52, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %if.then.49
  %38 = load i64, i64* %fun, align 8
  %39 = load i64, i64* %offset.addr, align 8
  %shl55 = shl i64 %39, 2
  %add56 = add i64 %shl55, 2
  call void @ASET(i64 %38, i64 4, i64 %add56)
  br label %if.end.72

if.else.57:                                       ; preds = %if.then.49
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 24, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i32 0, i32 0), i8** %data, align 8
  %s58 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %40 = bitcast %struct.Lisp_String* %s58 to i8*
  %call59 = call i64 @make_lisp_ptr(i8* %40, i32 4)
  store i64 %call59, i64* %format, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral60, i64 0, i64 0
  %41 = load i64, i64* %format, align 8
  store i64 %41, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %42 = load i64, i64* %obj.addr, align 8
  %and61 = and i64 %42, 7
  %conv62 = trunc i64 %and61 to i32
  %cmp63 = icmp eq i32 %conv62, 0
  br i1 %cmp63, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %if.else.57
  %43 = load i64, i64* %obj.addr, align 8
  %call66 = call i64 @SYMBOL_NAME(i64 %43)
  br label %cond.end.69

cond.false.67:                                    ; preds = %if.else.57
  %call68 = call i64 @build_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0))
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.65
  %cond70 = phi i64 [ %call66, %cond.true.65 ], [ %call68, %cond.false.67 ]
  store i64 %cond70, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral60, i32 0, i32 0
  %call71 = call i64 @Fmessage(i64 2, i64* %arraydecay)
  br label %if.end.72

if.end.72:                                        ; preds = %cond.end.69, %if.then.54
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.else.47
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.46
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i32 @text_quoting_style() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 292), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @default_to_grave_quoting_style()
  br i1 %call1, label %if.then, label %if.else

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 292), align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 500)
  %cmp3 = icmp eq i64 %1, %call2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.false, %cond.true
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 292), align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 881)
  %cmp5 = icmp eq i64 %2, %call4
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.6, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @default_to_grave_quoting_style() #0 {
entry:
  %retval = alloca i1, align 1
  %dv = alloca i64, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 490), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call = call zeroext i1 @CHAR_TABLE_P(i64 %1)
  br i1 %call, label %land.lhs.true, label %if.then.7

land.lhs.true:                                    ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 3
  %3 = load i64, i64* %purpose, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 346)
  %cmp = icmp eq i64 %3, %call2
  br i1 %cmp, label %land.lhs.true.3, label %if.then.7

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call4 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %4)
  %call5 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call4)
  %cmp6 = icmp eq i32 %call5, 6
  br i1 %cmp6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  store i1 false, i1* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true.3
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call9 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %5)
  %call10 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %call9, i32 8216)
  store i64 %call10, i64* %dv, align 8
  %6 = load i64, i64* %dv, align 8
  %call11 = call zeroext i1 @VECTORP(i64 %6)
  br i1 %call11, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %if.end.8
  %7 = load i64, i64* %dv, align 8
  %call13 = call i64 @ASIZE(i64 %7)
  %cmp14 = icmp eq i64 %call13, 1
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.12
  %8 = load i64, i64* %dv, align 8
  %call15 = call i64 @AREF(i64 %8, i64 0)
  %cmp16 = icmp eq i64 %call15, 386
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.12, %if.end.8
  %9 = phi i1 [ false, %land.lhs.true.12 ], [ false, %if.end.8 ], [ %cmp16, %land.rhs ]
  store i1 %9, i1* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.7, %if.then
  %10 = load i1, i1* %retval
  ret i1 %10
}

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @count_size_as_multibyte(i8*, i64) #1

declare i8* @SDATA(i64) #1

declare i64 @SCHARS(i64) #1

declare noalias i8* @xmalloc(i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

declare i64 @Fintern(i64, i64) #1

declare i64 @make_string(i8*, i64) #1

declare i64 @Fwhere_is_internal(i64, i64, i64, i64, i64) #1

; Function Attrs: noreturn
declare void @string_overflow() #4

declare i8* @xrealloc(i8*, i64) #1

declare i64 @Fkey_description(i64, i64) #1

declare i64 @Fcurrent_active_maps(i64, i64) #1

declare i64 @Fsymbol_value(i64) #1

declare i64 @get_keymap(i64, i1 zeroext, i1 zeroext) #1

declare void @set_buffer_internal(%struct.buffer*) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare void @specbind(i64, i64) #1

declare i64 @Fsymbol_name(i64) #1

declare void @insert1(i64) #1

declare void @insert_from_string(i64, i64, i64, i64, i64, i1 zeroext) #1

declare i64 @Freverse(i64) #1

declare void @describe_map_tree(i64, i1 zeroext, i64, i64, i8*, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext) #1

declare i64 @Fnreverse(i64) #1

declare i64 @Fbuffer_string() #1

declare i64 @Ferase_buffer() #1

declare %struct.interval* @copy_intervals(%struct.interval*, i64, i64) #1

declare %struct.interval* @string_intervals(i64) #1

declare void @set_interval_object(%struct.interval*, i64) #1

declare void @set_string_intervals(i64, %struct.interval*) #1

declare void @xfree(i8*) #1

; Function Attrs: nounwind uwtable
define void @syms_of_doc() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_doc.o_fwd, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.98, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 73))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 73), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_doc.o_fwd.99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 19))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 19), align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.end.2
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_doc.o_fwd.101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.102, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 292))
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 292), align 8
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.5
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_doc.b_fwd, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 490))
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdocumentation to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdocumentation_property to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssnarf_documentation to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssubstitute_command_keys to %struct.Lisp_Subr*))
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i64 @Fload(i64, i64, i64, i64, i64) #1

declare void @XSETCAR(i64, i64) #1

declare void @ASET(i64, i64, i64) #1

declare i64 @Fmessage(i64, i64*) #1

declare i64 @SYMBOL_NAME(i64) #1

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare %struct.Lisp_Char_Table* @XCHAR_TABLE(i64) #1

declare i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table*) #1

declare i64 @disp_char_vector(%struct.Lisp_Char_Table*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
