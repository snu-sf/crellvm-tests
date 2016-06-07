; ModuleID = 'perlio.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PerlIO = type { %struct._PerlIO*, %struct._PerlIO_funcs*, i32 }
%struct._PerlIO_funcs = type { i64, i8*, i64, i32, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)*, i64 (%struct._PerlIO**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, i64 (%struct._PerlIO**)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, i64 (%struct._PerlIO**)*, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i64, i32)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, void (%struct._PerlIO**)*, void (%struct._PerlIO**)*, i8* (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i8* (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, void (%struct._PerlIO**, i8*, i64)* }
%struct.sv = type { i8*, i32, i32 }
%struct.PerlIO_list_s = type { i64, i64, i64, %struct.PerlIO_pair_t* }
%struct.PerlIO_pair_t = type { %struct._PerlIO_funcs*, %struct.sv* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.interpreter = type { i8 }
%struct.xpv = type { i8*, i64, i64 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xrv = type { %struct.sv* }
%struct.PerlIOStdio = type { %struct._PerlIO, %struct._IO_FILE* }
%struct.PerlIOBuf = type { %struct._PerlIO, i8*, i8*, i8*, i64, i64, i64 }
%struct.PerlIOUnix = type { %struct._PerlIO, i32, i32 }
%struct.PerlIOCrlf = type { %struct.PerlIOBuf, i8* }

@PerlIO_debug.dbg = internal global i32 0, align 4
@PL_perlio = external global %struct._PerlIO**, align 8
@.str = private unnamed_addr constant [24 x i8] c"fdupopen f=%p param=%p\0A\00", align 1
@PL_Sv = external global %struct.sv*, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Destruct popping %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"PerlIO_pop f=%p %s\0A\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_known_layers = external global %struct.PerlIO_list_s*, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"%.*s => %p\0A\00", align 1
@PL_subname = external global %struct.sv*, align 8
@PL_def_layerlist = external global %struct.PerlIO_list_s*, align 8
@PL_in_load_module = external global i32, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Recursive call to Perl_load_module in PerlIO_find_layer\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"PerlIO\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"PerlIO::Layer::NoWarnings\00", align 1
@PL_warnhook = external global %struct.sv*, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"Cannot find %.*s\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"PerlIO::Layer\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"warning:%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Usage class->find(name[,load])\00", align 1
@PL_Xpv = external global %struct.xpv*, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"define %s %p\0A\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@PL_dowarn = external global i8, align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"Invalid separator character %c%c%c in PerlIO layer specification %s\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Argument list not closed for PerlIO layer \22%.*s\22\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Unknown PerlIO layer \22%.*s\22\00", align 1
@PerlIO_perlio = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i64 72, i32 3, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOBuf_pushed, i64 (%struct._PerlIO**)* @PerlIOBuf_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIOBuf_open, i64 (%struct._PerlIO**)* @PerlIOBase_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOBase_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOBuf_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOBuf_seek, i64 (%struct._PerlIO**)* @PerlIOBuf_tell, i64 (%struct._PerlIO**)* @PerlIOBuf_close, i64 (%struct._PerlIO**)* @PerlIOBuf_flush, i64 (%struct._PerlIO**)* @PerlIOBuf_fill, i64 (%struct._PerlIO**)* @PerlIOBase_eof, i64 (%struct._PerlIO**)* @PerlIOBase_error, void (%struct._PerlIO**)* @PerlIOBase_clearerr, void (%struct._PerlIO**)* @PerlIOBase_setlinebuf, i8* (%struct._PerlIO**)* @PerlIOBuf_get_base, i64 (%struct._PerlIO**)* @PerlIOBuf_bufsiz, i8* (%struct._PerlIO**)* @PerlIOBuf_get_ptr, i64 (%struct._PerlIO**)* @PerlIOBuf_get_cnt, void (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_set_ptrcnt }, align 8
@PerlIO_stdio = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i64 32, i32 3, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOStdio_pushed, i64 (%struct._PerlIO**)* @PerlIOBase_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIOStdio_open, i64 (%struct._PerlIO**)* @PerlIOBase_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOStdio_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOStdio_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOStdio_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOStdio_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOStdio_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOStdio_seek, i64 (%struct._PerlIO**)* @PerlIOStdio_tell, i64 (%struct._PerlIO**)* @PerlIOStdio_close, i64 (%struct._PerlIO**)* @PerlIOStdio_flush, i64 (%struct._PerlIO**)* @PerlIOStdio_fill, i64 (%struct._PerlIO**)* @PerlIOStdio_eof, i64 (%struct._PerlIO**)* @PerlIOStdio_error, void (%struct._PerlIO**)* @PerlIOStdio_clearerr, void (%struct._PerlIO**)* @PerlIOStdio_setlinebuf, i8* (%struct._PerlIO**)* @PerlIOStdio_get_base, i64 (%struct._PerlIO**)* @PerlIOStdio_get_bufsiz, i8* (%struct._PerlIO**)* @PerlIOStdio_get_ptr, i64 (%struct._PerlIO**)* @PerlIOStdio_get_cnt, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"Pushing %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Layer %ld is %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"panic: PerlIO layer array corrupt\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@PerlIO_remove = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64 0, i32 32784, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOPop_pushed, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* null, i64 (%struct._PerlIO**)* null, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i64, i32)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@PerlIO_unix = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i64 32, i32 1, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOUnix_pushed, i64 (%struct._PerlIO**)* @PerlIOBase_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIOUnix_open, i64 (%struct._PerlIO**)* @PerlIOBase_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOUnix_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOUnix_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOUnix_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBase_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOUnix_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOUnix_seek, i64 (%struct._PerlIO**)* @PerlIOUnix_tell, i64 (%struct._PerlIO**)* @PerlIOUnix_close, i64 (%struct._PerlIO**)* @PerlIOBase_noop_ok, i64 (%struct._PerlIO**)* @PerlIOBase_noop_fail, i64 (%struct._PerlIO**)* @PerlIOBase_eof, i64 (%struct._PerlIO**)* @PerlIOBase_error, void (%struct._PerlIO**)* @PerlIOBase_clearerr, void (%struct._PerlIO**)* @PerlIOBase_setlinebuf, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@PerlIO_raw = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i64 0, i32 16, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIORaw_pushed, i64 (%struct._PerlIO**)* @PerlIOBase_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIORaw_open, i64 (%struct._PerlIO**)* null, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i64, i32)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@PerlIO_crlf = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i64 80, i32 7, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOCrlf_pushed, i64 (%struct._PerlIO**)* @PerlIOBuf_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIOBuf_open, i64 (%struct._PerlIO**)* @PerlIOCrlf_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOBase_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOBuf_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOCrlf_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOCrlf_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOBuf_seek, i64 (%struct._PerlIO**)* @PerlIOBuf_tell, i64 (%struct._PerlIO**)* @PerlIOBuf_close, i64 (%struct._PerlIO**)* @PerlIOCrlf_flush, i64 (%struct._PerlIO**)* @PerlIOBuf_fill, i64 (%struct._PerlIO**)* @PerlIOBase_eof, i64 (%struct._PerlIO**)* @PerlIOBase_error, void (%struct._PerlIO**)* @PerlIOBase_clearerr, void (%struct._PerlIO**)* @PerlIOBase_setlinebuf, i8* (%struct._PerlIO**)* @PerlIOBuf_get_base, i64 (%struct._PerlIO**)* @PerlIOBuf_bufsiz, i8* (%struct._PerlIO**)* @PerlIOBuf_get_ptr, i64 (%struct._PerlIO**)* @PerlIOCrlf_get_cnt, void (%struct._PerlIO**, i8*, i64)* @PerlIOCrlf_set_ptrcnt }, align 8
@PerlIO_utf8 = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i64 0, i32 32784, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOUtf8_pushed, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* null, i64 (%struct._PerlIO**)* null, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i64, i32)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@PerlIO_byte = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i64 0, i32 16, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOUtf8_pushed, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* null, i64 (%struct._PerlIO**)* null, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i64, i32)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"PerlIO::Layer::find\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"perlio.c\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"Ir\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"Iw\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Layer does not match this perl\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"PerlIO_push f=%p %s %s %p\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"(Null)\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c":raw f=%p :%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"PerlIO_binmode f=%p %s %c %x %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"More than one argument to open(,':%s')\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"openn(%s,'%s','%s',%d,%x,%o,%p,%d,%p)\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Cannot flush f=%p\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@PerlIO_pending = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i64 72, i32 3, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOPending_pushed, i64 (%struct._PerlIO**)* @PerlIOBuf_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* null, i64 (%struct._PerlIO**)* @PerlIOBase_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOBase_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOBuf_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOPending_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOPending_seek, i64 (%struct._PerlIO**)* @PerlIOBuf_tell, i64 (%struct._PerlIO**)* @PerlIOPending_close, i64 (%struct._PerlIO**)* @PerlIOPending_flush, i64 (%struct._PerlIO**)* @PerlIOPending_fill, i64 (%struct._PerlIO**)* @PerlIOBase_eof, i64 (%struct._PerlIO**)* @PerlIOBase_error, void (%struct._PerlIO**)* @PerlIOBase_clearerr, void (%struct._PerlIO**)* @PerlIOBase_setlinebuf, i8* (%struct._PerlIO**)* @PerlIOBuf_get_base, i64 (%struct._PerlIO**)* @PerlIOBuf_bufsiz, i8* (%struct._PerlIO**)* @PerlIOBuf_get_ptr, i64 (%struct._PerlIO**)* @PerlIOBuf_get_cnt, void (%struct._PerlIO**, i8*, i64)* @PerlIOPending_set_ptrcnt }, align 8
@.str.34 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"PerlIOBase_dup %s f=%p o=%p param=%p\0A\00", align 1
@PerlIO_fd_refcnt = common global [2048 x i32] zeroinitializer, align 16
@.str.36 = private unnamed_addr constant [17 x i8] c"fd %d refcnt=%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"Cleanup layers\0A\00", align 1
@PL_sig_pending = external global i32, align 4
@.str.38 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [6 x i8] c"stdio\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"perlio\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Don't know how to get file name\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@PL_stderrgv = external global %struct.gv*, align 8
@.str.48 = private unnamed_addr constant [45 x i8] c"panic: sprintf overflow - memory corrupted!\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"Code\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"Glob\00", align 1

; Function Attrs: nounwind uwtable
define i32 @perlsio_binmode(%struct._IO_FILE* %fp, i32 %iotype, i32 %mode) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %iotype.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %iotype, i32* %iotype.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_intmode2str(i32 %rawmode, i8* %mode, i32* %writing) #0 {
entry:
  %rawmode.addr = alloca i32, align 4
  %mode.addr = alloca i8*, align 8
  %writing.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %ix = alloca i32, align 4
  %ptype = alloca i32, align 4
  store i32 %rawmode, i32* %rawmode.addr, align 4
  store i8* %mode, i8** %mode.addr, align 8
  store i32* %writing, i32** %writing.addr, align 8
  %0 = load i32, i32* %rawmode.addr, align 4
  %and = and i32 %0, 3
  store i32 %and, i32* %result, align 4
  store i32 0, i32* %ix, align 4
  %1 = load i32, i32* %result, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 60, i32* %ptype, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 62, i32* %ptype, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.2
  store i32 43, i32* %ptype, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  %2 = load i32*, i32** %writing.addr, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %3 = load i32, i32* %result, align 4
  %cmp = icmp ne i32 %3, 0
  %conv = zext i1 %cmp to i32
  %4 = load i32*, i32** %writing.addr, align 8
  store i32 %conv, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %5 = load i32, i32* %result, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %6 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %ix, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %mode.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 114, i8* %arrayidx, align 1
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %rawmode.addr, align 4
  %and6 = and i32 %8, 1024
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.19

if.then.8:                                        ; preds = %if.else
  %9 = load i32, i32* %ix, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %ix, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i8*, i8** %mode.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  store i8 97, i8* %arrayidx11, align 1
  %11 = load i32, i32* %result, align 4
  %cmp12 = icmp ne i32 %11, 1
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.then.8
  %12 = load i32, i32* %ix, align 4
  %inc15 = add nsw i32 %12, 1
  store i32 %inc15, i32* %ix, align 4
  %idxprom16 = sext i32 %12 to i64
  %13 = load i8*, i8** %mode.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %idxprom16
  store i8 43, i8* %arrayidx17, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.then.8
  br label %if.end.34

if.else.19:                                       ; preds = %if.else
  %14 = load i32, i32* %result, align 4
  %cmp20 = icmp eq i32 %14, 1
  br i1 %cmp20, label %if.then.22, label %if.else.26

if.then.22:                                       ; preds = %if.else.19
  %15 = load i32, i32* %ix, align 4
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, i32* %ix, align 4
  %idxprom24 = sext i32 %15 to i64
  %16 = load i8*, i8** %mode.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %16, i64 %idxprom24
  store i8 119, i8* %arrayidx25, align 1
  br label %if.end.33

if.else.26:                                       ; preds = %if.else.19
  %17 = load i32, i32* %ix, align 4
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, i32* %ix, align 4
  %idxprom28 = sext i32 %17 to i64
  %18 = load i8*, i8** %mode.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %18, i64 %idxprom28
  store i8 114, i8* %arrayidx29, align 1
  %19 = load i32, i32* %ix, align 4
  %inc30 = add nsw i32 %19, 1
  store i32 %inc30, i32* %ix, align 4
  %idxprom31 = sext i32 %19 to i64
  %20 = load i8*, i8** %mode.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %20, i64 %idxprom31
  store i8 43, i8* %arrayidx32, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.26, %if.then.22
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.18
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.5
  %21 = load i32, i32* %rawmode.addr, align 4
  %and36 = and i32 %21, 0
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.35
  %22 = load i32, i32* %ix, align 4
  %inc39 = add nsw i32 %22, 1
  store i32 %inc39, i32* %ix, align 4
  %idxprom40 = sext i32 %22 to i64
  %23 = load i8*, i8** %mode.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %23, i64 %idxprom40
  store i8 98, i8* %arrayidx41, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.35
  %24 = load i32, i32* %ix, align 4
  %idxprom43 = sext i32 %24 to i64
  %25 = load i8*, i8** %mode.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %25, i64 %idxprom43
  store i8 0, i8* %arrayidx44, align 1
  %26 = load i32, i32* %ptype, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define void @PerlIO_debug(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIO_allocate() #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %last = alloca %struct._PerlIO***, align 8
  %f = alloca %struct._PerlIO**, align 8
  %i = alloca i32, align 4
  store %struct._PerlIO*** @PL_perlio, %struct._PerlIO**** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct._PerlIO***, %struct._PerlIO**** %last, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %0, align 8
  store %struct._PerlIO** %1, %struct._PerlIO*** %f, align 8
  %tobool = icmp ne %struct._PerlIO** %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %3 = bitcast %struct._PerlIO** %2 to %struct._PerlIO***
  store %struct._PerlIO*** %3, %struct._PerlIO**** %last, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %incdec.ptr = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %5, i32 1
  store %struct._PerlIO** %incdec.ptr, %struct._PerlIO*** %f, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %incdec.ptr, align 8
  %tobool1 = icmp ne %struct._PerlIO* %6, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  store %struct._PerlIO** %7, %struct._PerlIO*** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call i8* @Perl_safesysmalloc(i64 512)
  %9 = bitcast i8* %call to %struct._PerlIO**
  store %struct._PerlIO** %9, %struct._PerlIO*** %f, align 8
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %11 = bitcast %struct._PerlIO** %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 512, i32 1, i1 false)
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %tobool2 = icmp ne %struct._PerlIO** %12, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %while.end
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.4:                                         ; preds = %while.end
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %14 = load %struct._PerlIO***, %struct._PerlIO**** %last, align 8
  store %struct._PerlIO** %13, %struct._PerlIO*** %14, align 8
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %add.ptr = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %15, i64 1
  store %struct._PerlIO** %add.ptr, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %16
}

declare i8* @Perl_safesysmalloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIO_fdupopen(%struct._PerlIO** %f, %struct.clone_params* %param, i32 %flags) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %param.addr = alloca %struct.clone_params*, align 8
  %flags.addr = alloca i32, align 4
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store %struct.clone_params* %param, %struct.clone_params** %param.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.11

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = bitcast %struct._PerlIO** %6 to i8*
  %8 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %9 = bitcast %struct.clone_params* %8 to i8*
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* %7, i8* %9)
  %10 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %10, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %11 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Dup = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %11, i32 0, i32 10
  %12 = load %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)*, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)** %Dup, align 8
  %tobool5 = icmp ne %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* %12, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %13 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Dup7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %13, i32 0, i32 10
  %14 = load %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)*, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)** %Dup7, align 8
  %call = call %struct._PerlIO** @PerlIO_allocate()
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %16 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %17 = load i32, i32* %flags.addr, align 4
  %call8 = call %struct._PerlIO** %14(%struct._PerlIO** %call, %struct._PerlIO** %15, %struct.clone_params* %16, i32 %17)
  store %struct._PerlIO** %call8, %struct._PerlIO*** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %call9 = call %struct._PerlIO** @PerlIO_allocate()
  %18 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %19 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %20 = load i32, i32* %flags.addr, align 4
  %call10 = call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %call9, %struct._PerlIO** %18, %struct.clone_params* %19, i32 %20)
  store %struct._PerlIO** %call10, %struct._PerlIO*** %retval
  br label %return

if.else.11:                                       ; preds = %land.lhs.true, %entry
  %call12 = call i32* @__errno_location()
  store i32 9, i32* %call12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.11
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.6
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %21
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %o.addr = alloca %struct._PerlIO**, align 8
  %param.addr = alloca %struct.clone_params*, align 8
  %flags.addr = alloca i32, align 4
  %nexto = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  %self = alloca %struct._PerlIO_funcs*, align 8
  %arg = alloca %struct.sv*, align 8
  %buf = alloca [8 x i8], align 1
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %o, %struct._PerlIO*** %o.addr, align 8
  store %struct.clone_params* %param, %struct.clone_params** %param.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %1, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %nexto, align 8
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %nexto, align 8
  %tobool = icmp ne %struct._PerlIO** %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %nexto, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tobool1 = icmp ne %struct._PerlIO* %4, null
  br i1 %tobool1, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %nexto, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %5, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 1
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %7, %struct._PerlIO_funcs** %tab, align 8
  %8 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %8, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Dup = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 10
  %10 = load %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)*, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)** %Dup, align 8
  %tobool5 = icmp ne %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* %10, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %11 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Dup7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %11, i32 0, i32 10
  %12 = load %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)*, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)** %Dup7, align 8
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %nexto, align 8
  %15 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call = call %struct._PerlIO** %12(%struct._PerlIO** %13, %struct._PerlIO** %14, %struct.clone_params* %15, i32 %16)
  store %struct._PerlIO** %call, %struct._PerlIO*** %f.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %18 = load %struct._PerlIO**, %struct._PerlIO*** %nexto, align 8
  %19 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %20 = load i32, i32* %flags.addr, align 4
  %call8 = call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %17, %struct._PerlIO** %18, %struct.clone_params* %19, i32 %20)
  store %struct._PerlIO** %call8, %struct._PerlIO*** %f.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %entry
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool10 = icmp ne %struct._PerlIO** %21, null
  br i1 %tobool10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %if.end.9
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %23 = load %struct._PerlIO*, %struct._PerlIO** %22, align 8
  %tab12 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %23, i32 0, i32 1
  %24 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab12, align 8
  store %struct._PerlIO_funcs* %24, %struct._PerlIO_funcs** %self, align 8
  %25 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %self, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 8
  %27 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %28 = bitcast %struct._PerlIO** %27 to i8*
  %29 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %30 = bitcast %struct._PerlIO** %29 to i8*
  %31 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %32 = bitcast %struct.clone_params* %31 to i8*
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i32 0, i32 0), i8* %26, i8* %28, i8* %30, i8* %32)
  %33 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %self, align 8
  %Getarg = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %33, i32 0, i32 8
  %34 = load %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)** %Getarg, align 8
  %tobool13 = icmp ne %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* %34, null
  br i1 %tobool13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.then.11
  %35 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %self, align 8
  %Getarg15 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %35, i32 0, i32 8
  %36 = load %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)** %Getarg15, align 8
  %37 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %38 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %39 = load i32, i32* %flags.addr, align 4
  %call16 = call %struct.sv* %36(%struct._PerlIO** %37, %struct.clone_params* %38, i32 %39)
  store %struct.sv* %call16, %struct.sv** %arg, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %if.then.11
  store %struct.sv* null, %struct.sv** %arg, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.14
  %40 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %41 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %self, align 8
  %42 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %call19 = call i8* @PerlIO_modestr(%struct._PerlIO** %42, i8* %arraydecay)
  %43 = load %struct.sv*, %struct.sv** %arg, align 8
  %call20 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %40, %struct._PerlIO_funcs* %41, i8* %call19, %struct.sv* %43)
  store %struct._PerlIO** %call20, %struct._PerlIO*** %f.addr, align 8
  %44 = load %struct.sv*, %struct.sv** %arg, align 8
  %tobool21 = icmp ne %struct.sv* %44, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %45 = load %struct.sv*, %struct.sv** %arg, align 8
  call void @Perl_sv_free(%struct.sv* %45)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.9
  %46 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  ret %struct._PerlIO** %46
}

declare i32* @__errno_location() #2

; Function Attrs: nounwind uwtable
define void @PerlIO_cleantable(%struct._PerlIO*** %tablep) #0 {
entry:
  %tablep.addr = alloca %struct._PerlIO***, align 8
  %table = alloca %struct._PerlIO**, align 8
  %i = alloca i32, align 4
  %f = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO*** %tablep, %struct._PerlIO**** %tablep.addr, align 8
  %0 = load %struct._PerlIO***, %struct._PerlIO**** %tablep.addr, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %0, align 8
  store %struct._PerlIO** %1, %struct._PerlIO*** %table, align 8
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %table, align 8
  %tobool = icmp ne %struct._PerlIO** %2, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %table, align 8
  %arrayidx = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %3, i64 0
  %4 = bitcast %struct._PerlIO** %arrayidx to %struct._PerlIO***
  call void @PerlIO_cleantable(%struct._PerlIO*** %4)
  store i32 63, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %table, align 8
  %7 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %6, i64 %idx.ext
  store %struct._PerlIO** %add.ptr, %struct._PerlIO*** %f, align 8
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %9 = load %struct._PerlIO*, %struct._PerlIO** %8, align 8
  %tobool1 = icmp ne %struct._PerlIO* %9, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %call = call i32 @Perl_PerlIO_close(%struct._PerlIO** %10)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %table, align 8
  %13 = bitcast %struct._PerlIO** %12 to i8*
  call void @Perl_safesysfree(i8* %13)
  %14 = load %struct._PerlIO***, %struct._PerlIO**** %tablep.addr, align 8
  store %struct._PerlIO** null, %struct._PerlIO*** %14, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_PerlIO_close(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %code = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @PerlIO__close(%struct._PerlIO** %0)
  store i32 %call, i32* %code, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %3 = load %struct._PerlIO*, %struct._PerlIO** %2, align 8
  %tobool1 = icmp ne %struct._PerlIO* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIO_pop(%struct._PerlIO** %5)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %code, align 4
  ret i32 %6
}

declare void @Perl_safesysfree(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.PerlIO_list_s* @PerlIO_list_alloc() #0 {
entry:
  %Perl_list = alloca %struct.PerlIO_list_s*, align 8
  %call = call i8* @Perl_safesysmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.PerlIO_list_s*
  store %struct.PerlIO_list_s* %0, %struct.PerlIO_list_s** %Perl_list, align 8
  %1 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list, align 8
  %2 = bitcast %struct.PerlIO_list_s* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 32, i32 1, i1 false)
  %3 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list, align 8
  %refcnt = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %3, i32 0, i32 0
  store i64 1, i64* %refcnt, align 8
  %4 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list, align 8
  ret %struct.PerlIO_list_s* %4
}

; Function Attrs: nounwind uwtable
define void @PerlIO_list_free(%struct.PerlIO_list_s* %Perl_list) #0 {
entry:
  %Perl_list.addr = alloca %struct.PerlIO_list_s*, align 8
  %i = alloca i64, align 8
  store %struct.PerlIO_list_s* %Perl_list, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %0 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %tobool = icmp ne %struct.PerlIO_list_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %refcnt = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %1, i32 0, i32 0
  %2 = load i64, i64* %refcnt, align 8
  %dec = add nsw i64 %2, -1
  store i64 %dec, i64* %refcnt, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.end.13

if.then.1:                                        ; preds = %if.then
  %3 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %array = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %3, i32 0, i32 3
  %4 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array, align 8
  %tobool2 = icmp ne %struct.PerlIO_pair_t* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.then.1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %6, i32 0, i32 1
  %7 = load i64, i64* %cur, align 8
  %cmp4 = icmp slt i64 %5, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %array5 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %9, i32 0, i32 3
  %10 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array5, align 8
  %arrayidx = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %10, i64 %8
  %arg = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx, i32 0, i32 1
  %11 = load %struct.sv*, %struct.sv** %arg, align 8
  %tobool6 = icmp ne %struct.sv* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %array8 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %13, i32 0, i32 3
  %14 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array8, align 8
  %arrayidx9 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %14, i64 %12
  %arg10 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx9, i32 0, i32 1
  %15 = load %struct.sv*, %struct.sv** %arg10, align 8
  call void @Perl_sv_free(%struct.sv* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %i, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %array11 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %17, i32 0, i32 3
  %18 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array11, align 8
  %19 = bitcast %struct.PerlIO_pair_t* %18 to i8*
  call void @Perl_safesysfree(i8* %19)
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.then.1
  %20 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %21 = bitcast %struct.PerlIO_list_s* %20 to i8*
  call void @Perl_safesysfree(i8* %21)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  ret void
}

declare void @Perl_sv_free(%struct.sv*) #2

; Function Attrs: nounwind uwtable
define void @PerlIO_list_push(%struct.PerlIO_list_s* %Perl_list, %struct._PerlIO_funcs* %funcs, %struct.sv* %arg) #0 {
entry:
  %Perl_list.addr = alloca %struct.PerlIO_list_s*, align 8
  %funcs.addr = alloca %struct._PerlIO_funcs*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %p = alloca %struct.PerlIO_pair_t*, align 8
  store %struct.PerlIO_list_s* %Perl_list, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  store %struct._PerlIO_funcs* %funcs, %struct._PerlIO_funcs** %funcs.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  %0 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %0, i32 0, i32 1
  %1 = load i64, i64* %cur, align 8
  %2 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %len = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  %cmp = icmp sge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %len1 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %4, i32 0, i32 2
  %5 = load i64, i64* %len1, align 8
  %add = add nsw i64 %5, 8
  store i64 %add, i64* %len1, align 8
  %6 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %array = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %6, i32 0, i32 3
  %7 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array, align 8
  %tobool = icmp ne %struct.PerlIO_pair_t* %7, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %array3 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %8, i32 0, i32 3
  %9 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array3, align 8
  %10 = bitcast %struct.PerlIO_pair_t* %9 to i8*
  %11 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %len4 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %11, i32 0, i32 2
  %12 = load i64, i64* %len4, align 8
  %mul = mul i64 %12, 16
  %call = call i8* @Perl_safesysrealloc(i8* %10, i64 %mul)
  %13 = bitcast i8* %call to %struct.PerlIO_pair_t*
  %14 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %array5 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %14, i32 0, i32 3
  store %struct.PerlIO_pair_t* %13, %struct.PerlIO_pair_t** %array5, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %len6 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %15, i32 0, i32 2
  %16 = load i64, i64* %len6, align 8
  %mul7 = mul i64 %16, 16
  %call8 = call i8* @Perl_safesysmalloc(i64 %mul7)
  %17 = bitcast i8* %call8 to %struct.PerlIO_pair_t*
  %18 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %array9 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %18, i32 0, i32 3
  store %struct.PerlIO_pair_t* %17, %struct.PerlIO_pair_t** %array9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %19 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %cur11 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %19, i32 0, i32 1
  %20 = load i64, i64* %cur11, align 8
  %inc = add nsw i64 %20, 1
  store i64 %inc, i64* %cur11, align 8
  %21 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list.addr, align 8
  %array12 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %21, i32 0, i32 3
  %22 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array12, align 8
  %arrayidx = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %22, i64 %20
  store %struct.PerlIO_pair_t* %arrayidx, %struct.PerlIO_pair_t** %p, align 8
  %23 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %funcs.addr, align 8
  %24 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %p, align 8
  %funcs13 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %24, i32 0, i32 0
  store %struct._PerlIO_funcs* %23, %struct._PerlIO_funcs** %funcs13, align 8
  %25 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %26 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %p, align 8
  %arg14 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %26, i32 0, i32 1
  store %struct.sv* %25, %struct.sv** %arg14, align 8
  %tobool15 = icmp ne %struct.sv* %25, null
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.10
  %27 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  store %struct.sv* %27, %struct.sv** @PL_Sv, align 8
  %28 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool17 = icmp ne %struct.sv* %28, null
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.16
  %29 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 1
  %30 = load i32, i32* %sv_refcnt, align 4
  %inc18 = add i32 %30, 1
  store i32 %inc18, i32* %sv_refcnt, align 4
  %tobool19 = icmp ne i32 %inc18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.16
  %31 = phi i1 [ false, %if.then.16 ], [ %tobool19, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  %32 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %land.end, %if.end.10
  ret void
}

declare i8* @Perl_safesysrealloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define %struct.PerlIO_list_s* @PerlIO_clone_list(%struct.PerlIO_list_s* %proto, %struct.clone_params* %param) #0 {
entry:
  %proto.addr = alloca %struct.PerlIO_list_s*, align 8
  %param.addr = alloca %struct.clone_params*, align 8
  %Perl_list = alloca %struct.PerlIO_list_s*, align 8
  %i = alloca i32, align 4
  %arg = alloca %struct.sv*, align 8
  store %struct.PerlIO_list_s* %proto, %struct.PerlIO_list_s** %proto.addr, align 8
  store %struct.clone_params* %param, %struct.clone_params** %param.addr, align 8
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** %Perl_list, align 8
  %0 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %proto.addr, align 8
  %tobool = icmp ne %struct.PerlIO_list_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %call = call %struct.PerlIO_list_s* @PerlIO_list_alloc()
  store %struct.PerlIO_list_s* %call, %struct.PerlIO_list_s** %Perl_list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %proto.addr, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %2, i32 0, i32 1
  %3 = load i64, i64* %cur, align 8
  %cmp = icmp slt i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store %struct.sv* null, %struct.sv** %arg, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %proto.addr, align 8
  %array = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %5, i32 0, i32 3
  %6 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array, align 8
  %arrayidx = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %6, i64 %idxprom
  %arg2 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx, i32 0, i32 1
  %7 = load %struct.sv*, %struct.sv** %arg2, align 8
  %tobool3 = icmp ne %struct.sv* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %proto.addr, align 8
  %array6 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %9, i32 0, i32 3
  %10 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array6, align 8
  %arrayidx7 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %10, i64 %idxprom5
  %arg8 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx7, i32 0, i32 1
  %11 = load %struct.sv*, %struct.sv** %arg8, align 8
  %12 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %call9 = call %struct.sv* @PerlIO_sv_dup(%struct.sv* %11, %struct.clone_params* %12)
  store %struct.sv* %call9, %struct.sv** %arg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  %13 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %proto.addr, align 8
  %array11 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %15, i32 0, i32 3
  %16 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array11, align 8
  %arrayidx12 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %16, i64 %idxprom10
  %funcs = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx12, i32 0, i32 0
  %17 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %funcs, align 8
  %18 = load %struct.sv*, %struct.sv** %arg, align 8
  call void @PerlIO_list_push(%struct.PerlIO_list_s* %13, %struct._PerlIO_funcs* %17, %struct.sv* %18)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %entry
  %20 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %Perl_list, align 8
  ret %struct.PerlIO_list_s* %20
}

; Function Attrs: nounwind uwtable
define %struct.sv* @PerlIO_sv_dup(%struct.sv* %arg, %struct.clone_params* %param) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %param.addr = alloca %struct.clone_params*, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct.clone_params* %param, %struct.clone_params** %param.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %call = call %struct.sv* @Perl_newSVsv(%struct.sv* %1)
  store %struct.sv* %call, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %2
}

; Function Attrs: nounwind uwtable
define void @PerlIO_clone(%struct.interpreter* %proto, %struct.clone_params* %param) #0 {
entry:
  %proto.addr = alloca %struct.interpreter*, align 8
  %param.addr = alloca %struct.clone_params*, align 8
  store %struct.interpreter* %proto, %struct.interpreter** %proto.addr, align 8
  store %struct.clone_params* %param, %struct.clone_params** %param.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @PerlIO_destruct() #0 {
entry:
  %table = alloca %struct._PerlIO***, align 8
  %f = alloca %struct._PerlIO**, align 8
  %i = alloca i32, align 4
  %x = alloca %struct._PerlIO**, align 8
  %l = alloca %struct._PerlIO*, align 8
  store %struct._PerlIO*** @PL_perlio, %struct._PerlIO**** %table, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct._PerlIO***, %struct._PerlIO**** %table, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %0, align 8
  store %struct._PerlIO** %1, %struct._PerlIO*** %f, align 8
  %tobool = icmp ne %struct._PerlIO** %1, null
  br i1 %tobool, label %while.body, label %while.end.7

while.body:                                       ; preds = %while.cond
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %incdec.ptr = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %2, i32 1
  store %struct._PerlIO** %incdec.ptr, %struct._PerlIO*** %f, align 8
  %3 = bitcast %struct._PerlIO** %2 to %struct._PerlIO***
  store %struct._PerlIO*** %3, %struct._PerlIO**** %table, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  store %struct._PerlIO** %5, %struct._PerlIO*** %x, align 8
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %for.body
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %x, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  store %struct._PerlIO* %7, %struct._PerlIO** %l, align 8
  %tobool2 = icmp ne %struct._PerlIO* %7, null
  br i1 %tobool2, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %8 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 1
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %kind = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 3
  %10 = load i32, i32* %kind, align 4
  %and = and i32 %10, 65536
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.3
  %11 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab5 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %11, i32 0, i32 1
  %12 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab5, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %13)
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %x, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %14)
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %x, align 8
  call void @PerlIO_pop(%struct._PerlIO** %15)
  br label %if.end

if.else:                                          ; preds = %while.body.3
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %x, align 8
  %17 = load %struct._PerlIO*, %struct._PerlIO** %16, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %17, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %18 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %incdec.ptr6 = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %18, i32 1
  store %struct._PerlIO** %incdec.ptr6, %struct._PerlIO*** %f, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end.7:                                      ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  %table = alloca %struct._PerlIO***, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else.10

if.then:                                          ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else.8

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab3 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab3, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool4 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.2
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Flush = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 17
  %8 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Flush, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Flush7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 17
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Flush7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then.2
  store i32 0, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.then
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %13 = bitcast %struct._PerlIO** %12 to i8*
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* %13)
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  store i32 -1, i32* %retval
  br label %return

if.else.10:                                       ; preds = %entry
  store %struct._PerlIO*** @PL_perlio, %struct._PerlIO**** %table, align 8
  store i32 0, i32* %code, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.else.10
  %14 = load %struct._PerlIO***, %struct._PerlIO**** %table, align 8
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %14, align 8
  store %struct._PerlIO** %15, %struct._PerlIO*** %f.addr, align 8
  %tobool11 = icmp ne %struct._PerlIO** %15, null
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %16, i32 1
  store %struct._PerlIO** %incdec.ptr, %struct._PerlIO*** %f.addr, align 8
  %17 = bitcast %struct._PerlIO** %16 to %struct._PerlIO***
  store %struct._PerlIO*** %17, %struct._PerlIO**** %table, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %18 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %18, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %20 = load %struct._PerlIO*, %struct._PerlIO** %19, align 8
  %tobool13 = icmp ne %struct._PerlIO* %20, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %for.body
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call15 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %21)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %land.lhs.true.14
  store i32 -1, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %land.lhs.true.14, %for.body
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %incdec.ptr19 = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %22, i32 1
  store %struct._PerlIO** %incdec.ptr19, %struct._PerlIO*** %f.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i32, i32* %code, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.8, %if.else, %if.then.6
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define void @PerlIO_pop(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %l = alloca %struct._PerlIO*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  store %struct._PerlIO* %1, %struct._PerlIO** %l, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tobool = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = bitcast %struct._PerlIO** %3 to i8*
  %5 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %5, i32 0, i32 1
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* %4, i8* %7)
  %8 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab1 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 1
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab1, align 8
  %Popped = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 5
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Popped, align 8
  %tobool2 = icmp ne i64 (%struct._PerlIO**)* %10, null
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.then
  %11 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab4 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %11, i32 0, i32 1
  %12 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab4, align 8
  %Popped5 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %12, i32 0, i32 5
  %13 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Popped5, align 8
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %13(%struct._PerlIO** %14)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.3
  br label %if.end.8

if.end:                                           ; preds = %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %15 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %15, i32 0, i32 0
  %16 = load %struct._PerlIO*, %struct._PerlIO** %next, align 8
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO* %16, %struct._PerlIO** %17, align 8
  %18 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %19 = bitcast %struct._PerlIO* %18 to i8*
  call void @Perl_safesysfree(i8* %19)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.7, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.av* @PerlIO_get_layers(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %av = alloca %struct.av*, align 8
  %l = alloca %struct._PerlIO*, align 8
  %name = alloca %struct.sv*, align 8
  %arg = alloca %struct.sv*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %call = call %struct.av* @Perl_newAV()
  store %struct.av* %call, %struct.av** %av, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  store %struct._PerlIO* %4, %struct._PerlIO** %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.21, %if.then
  %5 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tobool2 = icmp ne %struct._PerlIO* %5, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 1
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %7, null
  br i1 %tobool3, label %land.lhs.true.4, label %cond.false

land.lhs.true.4:                                  ; preds = %while.body
  %8 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab5 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 1
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab5, align 8
  %name6 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 1
  %10 = load i8*, i8** %name6, align 8
  %tobool7 = icmp ne i8* %10, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.4
  %11 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab8 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %11, i32 0, i32 1
  %12 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab8, align 8
  %name9 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %12, i32 0, i32 1
  %13 = load i8*, i8** %name9, align 8
  %call10 = call %struct.sv* @Perl_newSVpv(i8* %13, i64 0)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.4, %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %call10, %cond.true ], [ @PL_sv_undef, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %name, align 8
  %14 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab11 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %14, i32 0, i32 1
  %15 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab11, align 8
  %tobool12 = icmp ne %struct._PerlIO_funcs* %15, null
  br i1 %tobool12, label %land.lhs.true.13, label %cond.false.20

land.lhs.true.13:                                 ; preds = %cond.end
  %16 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab14 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %16, i32 0, i32 1
  %17 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab14, align 8
  %Getarg = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %17, i32 0, i32 8
  %18 = load %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)** %Getarg, align 8
  %tobool15 = icmp ne %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* %18, null
  br i1 %tobool15, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %land.lhs.true.13
  %19 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab17 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %19, i32 0, i32 1
  %20 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab17, align 8
  %Getarg18 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %20, i32 0, i32 8
  %21 = load %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)** %Getarg18, align 8
  %call19 = call %struct.sv* %21(%struct._PerlIO** %l, %struct.clone_params* null, i32 0)
  br label %cond.end.21

cond.false.20:                                    ; preds = %land.lhs.true.13, %cond.end
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.16
  %cond22 = phi %struct.sv* [ %call19, %cond.true.16 ], [ @PL_sv_undef, %cond.false.20 ]
  store %struct.sv* %cond22, %struct.sv** %arg, align 8
  %22 = load %struct.av*, %struct.av** %av, align 8
  %23 = load %struct.sv*, %struct.sv** %name, align 8
  call void @Perl_av_push(%struct.av* %22, %struct.sv* %23)
  %24 = load %struct.av*, %struct.av** %av, align 8
  %25 = load %struct.sv*, %struct.sv** %arg, align 8
  call void @Perl_av_push(%struct.av* %24, %struct.sv* %25)
  %26 = load %struct.av*, %struct.av** %av, align 8
  %27 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %27, i32 0, i32 2
  %28 = load i32, i32* %flags, align 4
  %conv = zext i32 %28 to i64
  %call23 = call %struct.sv* @Perl_newSViv(i64 %conv)
  call void @Perl_av_push(%struct.av* %26, %struct.sv* %call23)
  %29 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %29, i32 0, i32 0
  %30 = load %struct._PerlIO*, %struct._PerlIO** %next, align 8
  store %struct._PerlIO* %30, %struct._PerlIO** %l, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true, %entry
  %31 = load %struct.av*, %struct.av** %av, align 8
  ret %struct.av* %31
}

declare %struct.av* @Perl_newAV() #2

declare %struct.sv* @Perl_newSVpv(i8*, i64) #2

declare void @Perl_av_push(%struct.av*, %struct.sv*) #2

declare %struct.sv* @Perl_newSViv(i64) #2

; Function Attrs: nounwind uwtable
define %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %name, i64 %len, i32 %load) #0 {
entry:
  %retval = alloca %struct._PerlIO_funcs*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %load.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %f = alloca %struct._PerlIO_funcs*, align 8
  %pkgsv = alloca %struct.sv*, align 8
  %layer = alloca %struct.sv*, align 8
  %cv = alloca %struct.cv*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %load, i32* %load.addr, align 4
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %1)
  store i64 %call, i64* %len.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, i64* %i, align 8
  %3 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_known_layers, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %3, i32 0, i32 1
  %4 = load i64, i64* %cur, align 8
  %cmp1 = icmp slt i64 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_known_layers, align 8
  %array = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %6, i32 0, i32 3
  %7 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array, align 8
  %arrayidx = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %7, i64 %5
  %funcs = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx, i32 0, i32 0
  %8 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %funcs, align 8
  store %struct._PerlIO_funcs* %8, %struct._PerlIO_funcs** %f, align 8
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %f, align 8
  %name2 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 1
  %10 = load i8*, i8** %name2, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %call3 = call i32 @memcmp(i8* %10, i8* %11, i64 %12)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.10, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %13 = load i64, i64* %len.addr, align 8
  %14 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %f, align 8
  %name4 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %14, i32 0, i32 1
  %15 = load i8*, i8** %name4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %15, i64 %13
  %16 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %16 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true
  %17 = load i64, i64* %len.addr, align 8
  %conv9 = trunc i64 %17 to i32
  %18 = load i8*, i8** %name.addr, align 8
  %19 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %f, align 8
  %20 = bitcast %struct._PerlIO_funcs* %19 to i8*
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %conv9, i8* %18, i8* %20)
  %21 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %f, align 8
  store %struct._PerlIO_funcs* %21, %struct._PerlIO_funcs** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %22 = load i64, i64* %i, align 8
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %load.addr, align 4
  %tobool11 = icmp ne i32 %23, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.31

land.lhs.true.12:                                 ; preds = %for.end
  %24 = load %struct.sv*, %struct.sv** @PL_subname, align 8
  %tobool13 = icmp ne %struct.sv* %24, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.31

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %25 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  %tobool15 = icmp ne %struct.PerlIO_list_s* %25, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.31

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %26 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  %cur17 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %26, i32 0, i32 1
  %27 = load i64, i64* %cur17, align 8
  %cmp18 = icmp sge i64 %27, 2
  br i1 %cmp18, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %land.lhs.true.16
  %28 = load i32, i32* @PL_in_load_module, align 4
  %tobool21 = icmp ne i32 %28, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.20
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i32 0, i32 0))
  store %struct._PerlIO_funcs* null, %struct._PerlIO_funcs** %retval
  br label %return

if.else:                                          ; preds = %if.then.20
  %call23 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i64 6)
  store %struct.sv* %call23, %struct.sv** %pkgsv, align 8
  %29 = load i8*, i8** %name.addr, align 8
  %30 = load i64, i64* %len.addr, align 8
  %call24 = call %struct.sv* @Perl_newSVpvn(i8* %29, i64 %30)
  store %struct.sv* %call24, %struct.sv** %layer, align 8
  %call25 = call %struct.cv* @Perl_get_cv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i32 0)
  store %struct.cv* %call25, %struct.cv** %cv, align 8
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_in_load_module)
  %31 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool26 = icmp ne %struct.cv* %31, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  call void @Perl_save_sptr(%struct.sv** @PL_warnhook)
  %32 = load %struct.cv*, %struct.cv** %cv, align 8
  %33 = bitcast %struct.cv* %32 to %struct.sv*
  store %struct.sv* %33, %struct.sv** @PL_warnhook, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else
  %34 = load i32, i32* @PL_in_load_module, align 4
  %inc29 = add nsw i32 %34, 1
  store i32 %inc29, i32* @PL_in_load_module, align 4
  %35 = load %struct.sv*, %struct.sv** %pkgsv, align 8
  %36 = load %struct.sv*, %struct.sv** %layer, align 8
  call void (i32, %struct.sv*, %struct.sv*, ...) @Perl_load_module(i32 0, %struct.sv* %35, %struct.sv* null, %struct.sv* %36, %struct.sv* null)
  %37 = load i32, i32* @PL_in_load_module, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* @PL_in_load_module, align 4
  call void @Perl_pop_scope()
  %38 = load i8*, i8** %name.addr, align 8
  %39 = load i64, i64* %len.addr, align 8
  %call30 = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %38, i64 %39, i32 0)
  store %struct._PerlIO_funcs* %call30, %struct._PerlIO_funcs** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.16, %land.lhs.true.14, %land.lhs.true.12, %for.end
  %40 = load i64, i64* %len.addr, align 8
  %conv32 = trunc i64 %40 to i32
  %41 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %conv32, i8* %41)
  store %struct._PerlIO_funcs* null, %struct._PerlIO_funcs** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.end.28, %if.then.22, %if.then.8
  %42 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %retval
  ret %struct._PerlIO_funcs* %42
}

declare i64 @strlen(i8*) #2

declare i32 @memcmp(i8*, i8*, i64) #2

declare void @Perl_croak(i8*, ...) #2

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #2

declare %struct.cv* @Perl_get_cv(i8*, i32) #2

declare void @Perl_push_scope() #2

declare void @Perl_save_int(i32*) #2

declare void @Perl_save_sptr(%struct.sv**) #2

declare void @Perl_load_module(i32, %struct.sv*, %struct.sv*, ...) #2

declare void @Perl_pop_scope() #2

; Function Attrs: nounwind uwtable
define %struct.sv* @PerlIO_tab_sv(%struct._PerlIO_funcs* %tab) #0 {
entry:
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  %stash = alloca %struct.hv*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %call = call %struct.hv* @Perl_gv_stashpv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 1)
  store %struct.hv* %call, %struct.hv** %stash, align 8
  %0 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %1 = ptrtoint %struct._PerlIO_funcs* %0 to i64
  %call1 = call %struct.sv* @Perl_newSViv(i64 %1)
  %call2 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call1)
  %2 = load %struct.hv*, %struct.hv** %stash, align 8
  %call3 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call2, %struct.hv* %2)
  store %struct.sv* %call3, %struct.sv** %sv, align 8
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  ret %struct.sv* %3
}

declare %struct.hv* @Perl_gv_stashpv(i8*, i32) #2

declare %struct.sv* @Perl_sv_bless(%struct.sv*, %struct.hv*) #2

declare %struct.sv* @Perl_newRV_noinc(%struct.sv*) #2

; Function Attrs: nounwind uwtable
define void @XS_PerlIO__Layer__NoWarnings(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %9, 0
  %idxprom = sext i32 %add6 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags, align 4
  %and = and i32 %12, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %13 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %13, 0
  %idxprom9 = sext i32 %add8 to i64
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 %idxprom9
  %15 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any, align 8
  %17 = bitcast i8* %16 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %17, i32 0, i32 0
  %18 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load i32, i32* %ax, align 4
  %add11 = add nsw i32 %19, 0
  %idxprom12 = sext i32 %add11 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx13 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom12
  %21 = load %struct.sv*, %struct.sv** %arrayidx13, align 8
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ %call, %cond.false ]
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  store i64 0, i64* %tmpXSoff, align 8
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %23 = load i32, i32* %ax, align 4
  %idx.ext14 = sext i32 %23 to i64
  %add.ptr15 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idx.ext14
  %24 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %24, 1
  %add.ptr16 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr15, i64 %sub
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #2

; Function Attrs: nounwind uwtable
define void @XS_PerlIO__Layer__find(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %len = alloca i64, align 8
  %name = alloca i8*, align 8
  %load = alloca i8, align 1
  %layer = alloca %struct._PerlIO_funcs*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, i64* %len, align 8
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 1
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags, align 4
  %and = and i32 %12, 262144
  %cmp8 = icmp eq i32 %and, 262144
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %13 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %13, 1
  %idxprom11 = sext i32 %add10 to i64
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 %idxprom11
  %15 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any, align 8
  %17 = bitcast i8* %16 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %17, i32 0, i32 1
  %18 = load i64, i64* %xpv_cur, align 8
  store i64 %18, i64* %len, align 8
  %19 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %19, 1
  %idxprom14 = sext i32 %add13 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom14
  %21 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any16, align 8
  %23 = bitcast i8* %22 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %23, i32 0, i32 0
  %24 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %25 = load i32, i32* %ax, align 4
  %add17 = add nsw i32 %25, 1
  %idxprom18 = sext i32 %add17 to i64
  %26 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx19 = getelementptr inbounds %struct.sv*, %struct.sv** %26, i64 %idxprom18
  %27 = load %struct.sv*, %struct.sv** %arrayidx19, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %27, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %24, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %name, align 8
  %28 = load i32, i32* %items, align 4
  %cmp20 = icmp sgt i32 %28, 2
  br i1 %cmp20, label %cond.true.22, label %cond.false.94

cond.true.22:                                     ; preds = %cond.end
  %29 = load i32, i32* %ax, align 4
  %add23 = add nsw i32 %29, 2
  %idxprom24 = sext i32 %add23 to i64
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx25 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idxprom24
  %31 = load %struct.sv*, %struct.sv** %arrayidx25, align 8
  %tobool = icmp ne %struct.sv* %31, null
  br i1 %tobool, label %cond.false.27, label %cond.true.26

cond.true.26:                                     ; preds = %cond.true.22
  br label %cond.end.92

cond.false.27:                                    ; preds = %cond.true.22
  %32 = load i32, i32* %ax, align 4
  %add28 = add nsw i32 %32, 2
  %idxprom29 = sext i32 %add28 to i64
  %33 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx30 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i64 %idxprom29
  %34 = load %struct.sv*, %struct.sv** %arrayidx30, align 8
  %sv_flags31 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags31, align 4
  %and32 = and i32 %35, 262144
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %cond.true.34, label %cond.false.52

cond.true.34:                                     ; preds = %cond.false.27
  %36 = load i32, i32* %ax, align 4
  %add35 = add nsw i32 %36, 2
  %idxprom36 = sext i32 %add35 to i64
  %37 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx37 = getelementptr inbounds %struct.sv*, %struct.sv** %37, i64 %idxprom36
  %38 = load %struct.sv*, %struct.sv** %arrayidx37, align 8
  %sv_any38 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any38, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  store %struct.xpv* %40, %struct.xpv** @PL_Xpv, align 8
  %tobool39 = icmp ne %struct.xpv* %40, null
  br i1 %tobool39, label %land.rhs, label %land.end.50

land.rhs:                                         ; preds = %cond.true.34
  %41 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur40 = getelementptr inbounds %struct.xpv, %struct.xpv* %41, i32 0, i32 1
  %42 = load i64, i64* %xpv_cur40, align 8
  %cmp41 = icmp ugt i64 %42, 1
  br i1 %cmp41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %43 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur43 = getelementptr inbounds %struct.xpv, %struct.xpv* %43, i32 0, i32 1
  %44 = load i64, i64* %xpv_cur43, align 8
  %tobool44 = icmp ne i64 %44, 0
  br i1 %tobool44, label %land.rhs.45, label %land.end

land.rhs.45:                                      ; preds = %lor.rhs
  %45 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv46 = getelementptr inbounds %struct.xpv, %struct.xpv* %45, i32 0, i32 0
  %46 = load i8*, i8** %xpv_pv46, align 8
  %47 = load i8, i8* %46, align 1
  %conv47 = sext i8 %47 to i32
  %cmp48 = icmp ne i32 %conv47, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.45, %lor.rhs
  %48 = phi i1 [ false, %lor.rhs ], [ %cmp48, %land.rhs.45 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %49 = phi i1 [ true, %land.rhs ], [ %48, %land.end ]
  br label %land.end.50

land.end.50:                                      ; preds = %lor.end, %cond.true.34
  %50 = phi i1 [ false, %cond.true.34 ], [ %49, %lor.end ]
  %cond51 = select i1 %50, i32 1, i32 0
  br label %cond.end.90

cond.false.52:                                    ; preds = %cond.false.27
  %51 = load i32, i32* %ax, align 4
  %add53 = add nsw i32 %51, 2
  %idxprom54 = sext i32 %add53 to i64
  %52 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx55 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i64 %idxprom54
  %53 = load %struct.sv*, %struct.sv** %arrayidx55, align 8
  %sv_flags56 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 2
  %54 = load i32, i32* %sv_flags56, align 4
  %and57 = and i32 %54, 65536
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %cond.true.59, label %cond.false.66

cond.true.59:                                     ; preds = %cond.false.52
  %55 = load i32, i32* %ax, align 4
  %add60 = add nsw i32 %55, 2
  %idxprom61 = sext i32 %add60 to i64
  %56 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx62 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i64 %idxprom61
  %57 = load %struct.sv*, %struct.sv** %arrayidx62, align 8
  %sv_any63 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 0
  %58 = load i8*, i8** %sv_any63, align 8
  %59 = bitcast i8* %58 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %59, i32 0, i32 3
  %60 = load i64, i64* %xiv_iv, align 8
  %cmp64 = icmp ne i64 %60, 0
  %conv65 = zext i1 %cmp64 to i32
  br label %cond.end.88

cond.false.66:                                    ; preds = %cond.false.52
  %61 = load i32, i32* %ax, align 4
  %add67 = add nsw i32 %61, 2
  %idxprom68 = sext i32 %add67 to i64
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx69 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i64 %idxprom68
  %63 = load %struct.sv*, %struct.sv** %arrayidx69, align 8
  %sv_flags70 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags70, align 4
  %and71 = and i32 %64, 131072
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.80

cond.true.73:                                     ; preds = %cond.false.66
  %65 = load i32, i32* %ax, align 4
  %add74 = add nsw i32 %65, 2
  %idxprom75 = sext i32 %add74 to i64
  %66 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx76 = getelementptr inbounds %struct.sv*, %struct.sv** %66, i64 %idxprom75
  %67 = load %struct.sv*, %struct.sv** %arrayidx76, align 8
  %sv_any77 = getelementptr inbounds %struct.sv, %struct.sv* %67, i32 0, i32 0
  %68 = load i8*, i8** %sv_any77, align 8
  %69 = bitcast i8* %68 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %69, i32 0, i32 4
  %70 = load double, double* %xnv_nv, align 8
  %cmp78 = fcmp une double %70, 0.000000e+00
  %conv79 = zext i1 %cmp78 to i32
  br label %cond.end.86

cond.false.80:                                    ; preds = %cond.false.66
  %71 = load i32, i32* %ax, align 4
  %add81 = add nsw i32 %71, 2
  %idxprom82 = sext i32 %add81 to i64
  %72 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx83 = getelementptr inbounds %struct.sv*, %struct.sv** %72, i64 %idxprom82
  %73 = load %struct.sv*, %struct.sv** %arrayidx83, align 8
  %call84 = call signext i8 @Perl_sv_2bool(%struct.sv* %73)
  %conv85 = sext i8 %call84 to i32
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.80, %cond.true.73
  %cond87 = phi i32 [ %conv79, %cond.true.73 ], [ %conv85, %cond.false.80 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end.86, %cond.true.59
  %cond89 = phi i32 [ %conv65, %cond.true.59 ], [ %cond87, %cond.end.86 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %land.end.50
  %cond91 = phi i32 [ %cond51, %land.end.50 ], [ %cond89, %cond.end.88 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.26
  %cond93 = phi i32 [ 0, %cond.true.26 ], [ %cond91, %cond.end.90 ]
  br label %cond.end.95

cond.false.94:                                    ; preds = %cond.end
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.end.92
  %cond96 = phi i32 [ %cond93, %cond.end.92 ], [ 0, %cond.false.94 ]
  %conv97 = trunc i32 %cond96 to i8
  store i8 %conv97, i8* %load, align 1
  %74 = load i8*, i8** %name, align 8
  %75 = load i64, i64* %len, align 8
  %76 = load i8, i8* %load, align 1
  %conv98 = sext i8 %76 to i32
  %call99 = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %74, i64 %75, i32 %conv98)
  store %struct._PerlIO_funcs* %call99, %struct._PerlIO_funcs** %layer, align 8
  %77 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %layer, align 8
  %tobool100 = icmp ne %struct._PerlIO_funcs* %77, null
  br i1 %tobool100, label %cond.true.101, label %cond.false.104

cond.true.101:                                    ; preds = %cond.end.95
  %78 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %layer, align 8
  %call102 = call %struct.sv* @PerlIO_tab_sv(%struct._PerlIO_funcs* %78)
  %call103 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call102)
  br label %cond.end.105

cond.false.104:                                   ; preds = %cond.end.95
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.104, %cond.true.101
  %cond106 = phi %struct.sv* [ %call103, %cond.true.101 ], [ @PL_sv_undef, %cond.false.104 ]
  %79 = load i32, i32* %ax, align 4
  %add107 = add nsw i32 %79, 0
  %idxprom108 = sext i32 %add107 to i64
  %80 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx109 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i64 %idxprom108
  store %struct.sv* %cond106, %struct.sv** %arrayidx109, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %81 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %82 = load i32, i32* %ax, align 4
  %idx.ext110 = sext i32 %82 to i64
  %add.ptr111 = getelementptr inbounds %struct.sv*, %struct.sv** %81, i64 %idx.ext110
  %83 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %83, 1
  %add.ptr112 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr111, i64 %sub
  store %struct.sv** %add.ptr112, %struct.sv*** @PL_stack_sp, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.105, %if.then
  ret void
}

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #2

declare signext i8 @Perl_sv_2bool(%struct.sv*) #2

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #2

; Function Attrs: nounwind uwtable
define void @PerlIO_define_layer(%struct._PerlIO_funcs* %tab) #0 {
entry:
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_known_layers, align 8
  %tobool = icmp ne %struct.PerlIO_list_s* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.PerlIO_list_s* @PerlIO_list_alloc()
  store %struct.PerlIO_list_s* %call, %struct.PerlIO_list_s** @PL_known_layers, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_known_layers, align 8
  %2 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  call void @PerlIO_list_push(%struct.PerlIO_list_s* %1, %struct._PerlIO_funcs* %2, %struct.sv* null)
  %3 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %6 = bitcast %struct._PerlIO_funcs* %5 to i8*
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* %4, i8* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_parse_layers(%struct.PerlIO_list_s* %av, i8* %names) #0 {
entry:
  %retval = alloca i32, align 4
  %av.addr = alloca %struct.PerlIO_list_s*, align 8
  %names.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %llen = alloca i64, align 8
  %e = alloca i8*, align 8
  %as = alloca i8*, align 8
  %alen = alloca i64, align 8
  %q = alloca i8, align 1
  %nesting = alloca i32, align 4
  %warn_layer = alloca i8, align 1
  %layer = alloca %struct._PerlIO_funcs*, align 8
  store %struct.PerlIO_list_s* %av, %struct.PerlIO_list_s** %av.addr, align 8
  store i8* %names, i8** %names.addr, align 8
  %0 = load i8*, i8** %names.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.209

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %names.addr, align 8
  store i8* %1, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.207, %if.then
  %2 = load i8*, i8** %s, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %while.body, label %while.end.208

while.body:                                       ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.22, %while.body
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond.2
  %6 = load i8*, i8** %s, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 9
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %8 = load i8*, i8** %s, align 8
  %9 = load i8, i8* %8, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 10
  br i1 %cmp9, label %lor.end, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.7
  %10 = load i8*, i8** %s, align 8
  %11 = load i8, i8* %10, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 13
  br i1 %cmp13, label %lor.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 12
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.15
  %14 = load i8*, i8** %s, align 8
  %15 = load i8, i8* %14, align 1
  %conv19 = sext i8 %15 to i32
  %cmp20 = icmp eq i32 %conv19, 58
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false.7, %lor.lhs.false, %while.cond.2
  %16 = phi i1 [ true, %lor.lhs.false.15 ], [ true, %lor.lhs.false.11 ], [ true, %lor.lhs.false.7 ], [ true, %lor.lhs.false ], [ true, %while.cond.2 ], [ %cmp20, %lor.rhs ]
  br i1 %16, label %while.body.22, label %while.end

while.body.22:                                    ; preds = %lor.end
  %17 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond.2

while.end:                                        ; preds = %lor.end
  %18 = load i8*, i8** %s, align 8
  %19 = load i8, i8* %18, align 1
  %tobool23 = icmp ne i8 %19, 0
  br i1 %tobool23, label %if.then.24, label %if.end.207

if.then.24:                                       ; preds = %while.end
  store i64 0, i64* %llen, align 8
  %20 = load i8*, i8** %s, align 8
  store i8* %20, i8** %e, align 8
  store i8* null, i8** %as, align 8
  store i64 0, i64* %alen, align 8
  %21 = load i8*, i8** %s, align 8
  %22 = load i8, i8* %21, align 1
  %conv25 = sext i8 %22 to i32
  %cmp26 = icmp sge i32 %conv25, 65
  br i1 %cmp26, label %land.lhs.true, label %lor.lhs.false.31

land.lhs.true:                                    ; preds = %if.then.24
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv28 = sext i8 %24 to i32
  %cmp29 = icmp sle i32 %conv28, 90
  br i1 %cmp29, label %if.end.74, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true, %if.then.24
  %25 = load i8*, i8** %s, align 8
  %26 = load i8, i8* %25, align 1
  %conv32 = sext i8 %26 to i32
  %cmp33 = icmp sge i32 %conv32, 97
  br i1 %cmp33, label %land.lhs.true.35, label %lor.lhs.false.39

land.lhs.true.35:                                 ; preds = %lor.lhs.false.31
  %27 = load i8*, i8** %s, align 8
  %28 = load i8, i8* %27, align 1
  %conv36 = sext i8 %28 to i32
  %cmp37 = icmp sle i32 %conv36, 122
  br i1 %cmp37, label %if.end.74, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %land.lhs.true.35, %lor.lhs.false.31
  %29 = load i8*, i8** %s, align 8
  %30 = load i8, i8* %29, align 1
  %conv40 = sext i8 %30 to i32
  %cmp41 = icmp eq i32 %conv40, 95
  br i1 %cmp41, label %if.end.74, label %if.then.43

if.then.43:                                       ; preds = %lor.lhs.false.39
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %conv44 = sext i8 %32 to i32
  %cmp45 = icmp eq i32 %conv44, 39
  %cond = select i1 %cmp45, i32 34, i32 39
  %conv47 = trunc i32 %cond to i8
  store i8 %conv47, i8* %q, align 1
  %33 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %33, i32 0, i32 14
  %34 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp48 = icmp ne %struct.sv* %34, null
  br i1 %cmp48, label %land.lhs.true.50, label %lor.lhs.false.62

land.lhs.true.50:                                 ; preds = %if.then.43
  %35 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings51 = getelementptr inbounds %struct.cop, %struct.cop* %35, i32 0, i32 14
  %36 = load %struct.sv*, %struct.sv** %cop_warnings51, align 8
  %cmp52 = icmp ne %struct.sv* %36, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp52, label %land.lhs.true.54, label %lor.lhs.false.62

land.lhs.true.54:                                 ; preds = %land.lhs.true.50
  %37 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings55 = getelementptr inbounds %struct.cop, %struct.cop* %37, i32 0, i32 14
  %38 = load %struct.sv*, %struct.sv** %cop_warnings55, align 8
  %cmp56 = icmp eq %struct.sv* %38, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp56, label %if.then.70, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %land.lhs.true.54
  %39 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings59 = getelementptr inbounds %struct.cop, %struct.cop* %39, i32 0, i32 14
  %40 = load %struct.sv*, %struct.sv** %cop_warnings59, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 0
  %41 = load i8*, i8** %sv_any, align 8
  %42 = bitcast i8* %41 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %42, i32 0, i32 0
  %43 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %arrayidx, align 1
  %conv60 = sext i8 %44 to i32
  %and = and i32 %conv60, 1
  %tobool61 = icmp ne i32 %and, 0
  br i1 %tobool61, label %if.then.70, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.58, %land.lhs.true.50, %if.then.43
  %45 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings63 = getelementptr inbounds %struct.cop, %struct.cop* %45, i32 0, i32 14
  %46 = load %struct.sv*, %struct.sv** %cop_warnings63, align 8
  %cmp64 = icmp eq %struct.sv* %46, null
  br i1 %cmp64, label %land.lhs.true.66, label %if.end

land.lhs.true.66:                                 ; preds = %lor.lhs.false.62
  %47 = load i8, i8* @PL_dowarn, align 1
  %conv67 = zext i8 %47 to i32
  %and68 = and i32 %conv67, 1
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.end

if.then.70:                                       ; preds = %land.lhs.true.66, %lor.lhs.false.58, %land.lhs.true.54
  %48 = load i8, i8* %q, align 1
  %conv71 = sext i8 %48 to i32
  %49 = load i8*, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %conv72 = sext i8 %50 to i32
  %51 = load i8, i8* %q, align 1
  %conv73 = sext i8 %51 to i32
  %52 = load i8*, i8** %s, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 8, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0), i32 %conv71, i32 %conv72, i32 %conv73, i8* %52)
  br label %if.end

if.end:                                           ; preds = %if.then.70, %land.lhs.true.66, %lor.lhs.false.62
  %call = call i32* @__errno_location()
  store i32 22, i32* %call, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %lor.lhs.false.39, %land.lhs.true.35, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %lor.end.103, %if.end.74
  %53 = load i8*, i8** %e, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr75, i8** %e, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %54 = load i8*, i8** %e, align 8
  %55 = load i8, i8* %54, align 1
  %conv76 = sext i8 %55 to i32
  %cmp77 = icmp sge i32 %conv76, 65
  br i1 %cmp77, label %land.lhs.true.79, label %lor.lhs.false.83

land.lhs.true.79:                                 ; preds = %do.cond
  %56 = load i8*, i8** %e, align 8
  %57 = load i8, i8* %56, align 1
  %conv80 = sext i8 %57 to i32
  %cmp81 = icmp sle i32 %conv80, 90
  br i1 %cmp81, label %lor.end.103, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %land.lhs.true.79, %do.cond
  %58 = load i8*, i8** %e, align 8
  %59 = load i8, i8* %58, align 1
  %conv84 = sext i8 %59 to i32
  %cmp85 = icmp sge i32 %conv84, 97
  br i1 %cmp85, label %land.lhs.true.87, label %lor.lhs.false.91

land.lhs.true.87:                                 ; preds = %lor.lhs.false.83
  %60 = load i8*, i8** %e, align 8
  %61 = load i8, i8* %60, align 1
  %conv88 = sext i8 %61 to i32
  %cmp89 = icmp sle i32 %conv88, 122
  br i1 %cmp89, label %lor.end.103, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %land.lhs.true.87, %lor.lhs.false.83
  %62 = load i8*, i8** %e, align 8
  %63 = load i8, i8* %62, align 1
  %conv92 = sext i8 %63 to i32
  %cmp93 = icmp sge i32 %conv92, 48
  br i1 %cmp93, label %land.lhs.true.95, label %lor.rhs.99

land.lhs.true.95:                                 ; preds = %lor.lhs.false.91
  %64 = load i8*, i8** %e, align 8
  %65 = load i8, i8* %64, align 1
  %conv96 = sext i8 %65 to i32
  %cmp97 = icmp sle i32 %conv96, 57
  br i1 %cmp97, label %lor.end.103, label %lor.rhs.99

lor.rhs.99:                                       ; preds = %land.lhs.true.95, %lor.lhs.false.91
  %66 = load i8*, i8** %e, align 8
  %67 = load i8, i8* %66, align 1
  %conv100 = sext i8 %67 to i32
  %cmp101 = icmp eq i32 %conv100, 95
  br label %lor.end.103

lor.end.103:                                      ; preds = %lor.rhs.99, %land.lhs.true.95, %land.lhs.true.87, %land.lhs.true.79
  %68 = phi i1 [ true, %land.lhs.true.95 ], [ true, %land.lhs.true.87 ], [ true, %land.lhs.true.79 ], [ %cmp101, %lor.rhs.99 ]
  br i1 %68, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end.103
  %69 = load i8*, i8** %e, align 8
  %70 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %70 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %llen, align 8
  %71 = load i8*, i8** %e, align 8
  %72 = load i8, i8* %71, align 1
  %conv104 = sext i8 %72 to i32
  %cmp105 = icmp eq i32 %conv104, 40
  br i1 %cmp105, label %if.then.107, label %if.end.163

if.then.107:                                      ; preds = %do.end
  store i32 1, i32* %nesting, align 4
  %73 = load i8*, i8** %e, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr108, i8** %e, align 8
  store i8* %incdec.ptr108, i8** %as, align 8
  br label %while.cond.109

while.cond.109:                                   ; preds = %sw.epilog, %if.then.107
  %74 = load i32, i32* %nesting, align 4
  %tobool110 = icmp ne i32 %74, 0
  br i1 %tobool110, label %while.body.111, label %while.end.162

while.body.111:                                   ; preds = %while.cond.109
  %75 = load i8*, i8** %e, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr112, i8** %e, align 8
  %76 = load i8, i8* %75, align 1
  %conv113 = sext i8 %76 to i32
  switch i32 %conv113, label %sw.default [
    i32 41, label %sw.bb
    i32 40, label %sw.bb.121
    i32 92, label %sw.bb.122
    i32 0, label %sw.bb.127
  ]

sw.bb:                                            ; preds = %while.body.111
  %77 = load i32, i32* %nesting, align 4
  %dec = add nsw i32 %77, -1
  store i32 %dec, i32* %nesting, align 4
  %cmp114 = icmp eq i32 %dec, 0
  br i1 %cmp114, label %if.then.116, label %if.end.120

if.then.116:                                      ; preds = %sw.bb
  %78 = load i8*, i8** %e, align 8
  %add.ptr = getelementptr inbounds i8, i8* %78, i64 -1
  %79 = load i8*, i8** %as, align 8
  %sub.ptr.lhs.cast117 = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast118 = ptrtoint i8* %79 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  store i64 %sub.ptr.sub119, i64* %alen, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.116, %sw.bb
  br label %sw.epilog

sw.bb.121:                                        ; preds = %while.body.111
  %80 = load i32, i32* %nesting, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %nesting, align 4
  br label %sw.epilog

sw.bb.122:                                        ; preds = %while.body.111
  %81 = load i8*, i8** %e, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr123, i8** %e, align 8
  %82 = load i8, i8* %81, align 1
  %tobool124 = icmp ne i8 %82, 0
  br i1 %tobool124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %sw.bb.122
  br label %sw.epilog

if.end.126:                                       ; preds = %sw.bb.122
  br label %sw.bb.127

sw.bb.127:                                        ; preds = %while.body.111, %if.end.126
  %83 = load i8*, i8** %e, align 8
  %incdec.ptr128 = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %incdec.ptr128, i8** %e, align 8
  %84 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings129 = getelementptr inbounds %struct.cop, %struct.cop* %84, i32 0, i32 14
  %85 = load %struct.sv*, %struct.sv** %cop_warnings129, align 8
  %cmp130 = icmp ne %struct.sv* %85, null
  br i1 %cmp130, label %land.lhs.true.132, label %lor.lhs.false.148

land.lhs.true.132:                                ; preds = %sw.bb.127
  %86 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings133 = getelementptr inbounds %struct.cop, %struct.cop* %86, i32 0, i32 14
  %87 = load %struct.sv*, %struct.sv** %cop_warnings133, align 8
  %cmp134 = icmp ne %struct.sv* %87, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp134, label %land.lhs.true.136, label %lor.lhs.false.148

land.lhs.true.136:                                ; preds = %land.lhs.true.132
  %88 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings137 = getelementptr inbounds %struct.cop, %struct.cop* %88, i32 0, i32 14
  %89 = load %struct.sv*, %struct.sv** %cop_warnings137, align 8
  %cmp138 = icmp eq %struct.sv* %89, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp138, label %if.then.156, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %land.lhs.true.136
  %90 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings141 = getelementptr inbounds %struct.cop, %struct.cop* %90, i32 0, i32 14
  %91 = load %struct.sv*, %struct.sv** %cop_warnings141, align 8
  %sv_any142 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 0
  %92 = load i8*, i8** %sv_any142, align 8
  %93 = bitcast i8* %92 to %struct.xpv*
  %xpv_pv143 = getelementptr inbounds %struct.xpv, %struct.xpv* %93, i32 0, i32 0
  %94 = load i8*, i8** %xpv_pv143, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %94, i64 2
  %95 = load i8, i8* %arrayidx144, align 1
  %conv145 = sext i8 %95 to i32
  %and146 = and i32 %conv145, 1
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.then.156, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %lor.lhs.false.140, %land.lhs.true.132, %sw.bb.127
  %96 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings149 = getelementptr inbounds %struct.cop, %struct.cop* %96, i32 0, i32 14
  %97 = load %struct.sv*, %struct.sv** %cop_warnings149, align 8
  %cmp150 = icmp eq %struct.sv* %97, null
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.161

land.lhs.true.152:                                ; preds = %lor.lhs.false.148
  %98 = load i8, i8* @PL_dowarn, align 1
  %conv153 = zext i8 %98 to i32
  %and154 = and i32 %conv153, 1
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.161

if.then.156:                                      ; preds = %land.lhs.true.152, %lor.lhs.false.140, %land.lhs.true.136
  %99 = load i8*, i8** %e, align 8
  %100 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast157 = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast158 = ptrtoint i8* %100 to i64
  %sub.ptr.sub159 = sub i64 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast158
  %conv160 = trunc i64 %sub.ptr.sub159 to i32
  %101 = load i8*, i8** %s, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0), i32 %conv160, i8* %101)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.156, %land.lhs.true.152, %lor.lhs.false.148
  store i32 -1, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body.111
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.125, %sw.bb.121, %if.end.120
  br label %while.cond.109

while.end.162:                                    ; preds = %while.cond.109
  br label %if.end.163

if.end.163:                                       ; preds = %while.end.162, %do.end
  %102 = load i8*, i8** %e, align 8
  %103 = load i8*, i8** %s, align 8
  %cmp164 = icmp ugt i8* %102, %103
  br i1 %cmp164, label %if.then.166, label %if.end.206

if.then.166:                                      ; preds = %if.end.163
  %104 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings167 = getelementptr inbounds %struct.cop, %struct.cop* %104, i32 0, i32 14
  %105 = load %struct.sv*, %struct.sv** %cop_warnings167, align 8
  %cmp168 = icmp ne %struct.sv* %105, null
  br i1 %cmp168, label %land.lhs.true.170, label %lor.rhs.186

land.lhs.true.170:                                ; preds = %if.then.166
  %106 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings171 = getelementptr inbounds %struct.cop, %struct.cop* %106, i32 0, i32 14
  %107 = load %struct.sv*, %struct.sv** %cop_warnings171, align 8
  %cmp172 = icmp ne %struct.sv* %107, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp172, label %land.lhs.true.174, label %lor.rhs.186

land.lhs.true.174:                                ; preds = %land.lhs.true.170
  %108 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings175 = getelementptr inbounds %struct.cop, %struct.cop* %108, i32 0, i32 14
  %109 = load %struct.sv*, %struct.sv** %cop_warnings175, align 8
  %cmp176 = icmp eq %struct.sv* %109, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp176, label %lor.end.193, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %land.lhs.true.174
  %110 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings179 = getelementptr inbounds %struct.cop, %struct.cop* %110, i32 0, i32 14
  %111 = load %struct.sv*, %struct.sv** %cop_warnings179, align 8
  %sv_any180 = getelementptr inbounds %struct.sv, %struct.sv* %111, i32 0, i32 0
  %112 = load i8*, i8** %sv_any180, align 8
  %113 = bitcast i8* %112 to %struct.xpv*
  %xpv_pv181 = getelementptr inbounds %struct.xpv, %struct.xpv* %113, i32 0, i32 0
  %114 = load i8*, i8** %xpv_pv181, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %114, i64 2
  %115 = load i8, i8* %arrayidx182, align 1
  %conv183 = sext i8 %115 to i32
  %and184 = and i32 %conv183, 1
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %lor.end.193, label %lor.rhs.186

lor.rhs.186:                                      ; preds = %lor.lhs.false.178, %land.lhs.true.170, %if.then.166
  %116 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings187 = getelementptr inbounds %struct.cop, %struct.cop* %116, i32 0, i32 14
  %117 = load %struct.sv*, %struct.sv** %cop_warnings187, align 8
  %cmp188 = icmp eq %struct.sv* %117, null
  br i1 %cmp188, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs.186
  %118 = load i8, i8* @PL_dowarn, align 1
  %conv190 = zext i8 %118 to i32
  %and191 = and i32 %conv190, 1
  %tobool192 = icmp ne i32 %and191, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs.186
  %119 = phi i1 [ false, %lor.rhs.186 ], [ %tobool192, %land.rhs ]
  br label %lor.end.193

lor.end.193:                                      ; preds = %land.end, %lor.lhs.false.178, %land.lhs.true.174
  %120 = phi i1 [ true, %lor.lhs.false.178 ], [ true, %land.lhs.true.174 ], [ %119, %land.end ]
  %lor.ext = zext i1 %120 to i32
  %conv194 = trunc i32 %lor.ext to i8
  store i8 %conv194, i8* %warn_layer, align 1
  %121 = load i8*, i8** %s, align 8
  %122 = load i64, i64* %llen, align 8
  %call195 = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %121, i64 %122, i32 1)
  store %struct._PerlIO_funcs* %call195, %struct._PerlIO_funcs** %layer, align 8
  %123 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %layer, align 8
  %tobool196 = icmp ne %struct._PerlIO_funcs* %123, null
  br i1 %tobool196, label %if.then.197, label %if.else

if.then.197:                                      ; preds = %lor.end.193
  %124 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av.addr, align 8
  %125 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %layer, align 8
  %126 = load i8*, i8** %as, align 8
  %tobool198 = icmp ne i8* %126, null
  br i1 %tobool198, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.197
  %127 = load i8*, i8** %as, align 8
  %128 = load i64, i64* %alen, align 8
  %call199 = call %struct.sv* @Perl_newSVpvn(i8* %127, i64 %128)
  br label %cond.end

cond.false:                                       ; preds = %if.then.197
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond200 = phi %struct.sv* [ %call199, %cond.true ], [ @PL_sv_undef, %cond.false ]
  call void @PerlIO_list_push(%struct.PerlIO_list_s* %124, %struct._PerlIO_funcs* %125, %struct.sv* %cond200)
  br label %if.end.205

if.else:                                          ; preds = %lor.end.193
  %129 = load i8, i8* %warn_layer, align 1
  %tobool201 = icmp ne i8 %129, 0
  br i1 %tobool201, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %if.else
  %130 = load i64, i64* %llen, align 8
  %conv203 = trunc i64 %130 to i32
  %131 = load i8*, i8** %s, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i32 %conv203, i8* %131)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.205:                                       ; preds = %cond.end
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.163
  %132 = load i8*, i8** %e, align 8
  store i8* %132, i8** %s, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %while.end
  br label %while.cond

while.end.208:                                    ; preds = %while.cond
  br label %if.end.209

if.end.209:                                       ; preds = %while.end.208, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.209, %if.end.204, %if.end.161, %if.end
  %133 = load i32, i32* %retval
  ret i32 %133
}

declare void @Perl_warner(i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @PerlIO_default_buffer(%struct.PerlIO_list_s* %av) #0 {
entry:
  %av.addr = alloca %struct.PerlIO_list_s*, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct.PerlIO_list_s* %av, %struct.PerlIO_list_s** %av.addr, align 8
  store %struct._PerlIO_funcs* @PerlIO_perlio, %struct._PerlIO_funcs** %tab, align 8
  %0 = load void (%struct._PerlIO**, i8*, i64)*, void (%struct._PerlIO**, i8*, i64)** getelementptr inbounds (%struct._PerlIO_funcs, %struct._PerlIO_funcs* @PerlIO_stdio, i32 0, i32 27), align 8
  %tobool = icmp ne void (%struct._PerlIO**, i8*, i64)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._PerlIO_funcs* @PerlIO_stdio, %struct._PerlIO_funcs** %tab, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* %2)
  %3 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av.addr, align 8
  %4 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %name1 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %4, i32 0, i32 1
  %5 = load i8*, i8** %name1, align 8
  %call = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %5, i64 0, i32 0)
  call void @PerlIO_list_push(%struct.PerlIO_list_s* %3, %struct._PerlIO_funcs* %call, %struct.sv* @PL_sv_undef)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sv* @PerlIO_arg_fetch(%struct.PerlIO_list_s* %av, i64 %n) #0 {
entry:
  %av.addr = alloca %struct.PerlIO_list_s*, align 8
  %n.addr = alloca i64, align 8
  store %struct.PerlIO_list_s* %av, %struct.PerlIO_list_s** %av.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av.addr, align 8
  %array = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %1, i32 0, i32 3
  %2 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array, align 8
  %arrayidx = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %2, i64 %0
  %arg = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx, i32 0, i32 1
  %3 = load %struct.sv*, %struct.sv** %arg, align 8
  ret %struct.sv* %3
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %av, i64 %n, %struct._PerlIO_funcs* %def) #0 {
entry:
  %retval = alloca %struct._PerlIO_funcs*, align 8
  %av.addr = alloca %struct.PerlIO_list_s*, align 8
  %n.addr = alloca i64, align 8
  %def.addr = alloca %struct._PerlIO_funcs*, align 8
  store %struct.PerlIO_list_s* %av, %struct.PerlIO_list_s** %av.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct._PerlIO_funcs* %def, %struct._PerlIO_funcs** %def.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %2 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av.addr, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %2, i32 0, i32 1
  %3 = load i64, i64* %cur, align 8
  %cmp1 = icmp slt i64 %1, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i64, i64* %n.addr, align 8
  %5 = load i64, i64* %n.addr, align 8
  %6 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av.addr, align 8
  %array = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %6, i32 0, i32 3
  %7 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array, align 8
  %arrayidx = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %7, i64 %5
  %funcs = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx, i32 0, i32 0
  %8 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %funcs, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %8, i32 0, i32 1
  %9 = load i8*, i8** %name, align 8
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i64 %4, i8* %9)
  %10 = load i64, i64* %n.addr, align 8
  %11 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av.addr, align 8
  %array2 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %11, i32 0, i32 3
  %12 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array2, align 8
  %arrayidx3 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %12, i64 %10
  %funcs4 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx3, i32 0, i32 0
  %13 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %funcs4, align 8
  store %struct._PerlIO_funcs* %13, %struct._PerlIO_funcs** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %def.addr, align 8
  %tobool = icmp ne %struct._PerlIO_funcs* %14, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %def.addr, align 8
  store %struct._PerlIO_funcs* %15, %struct._PerlIO_funcs** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %16 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %retval
  ret %struct._PerlIO_funcs* %16
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOPop_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %3)
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIO_pop(%struct._PerlIO** %4)
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define %struct.PerlIO_list_s* @PerlIO_default_layers() #0 {
entry:
  %s = alloca i8*, align 8
  %osLayer = alloca %struct._PerlIO_funcs*, align 8
  %0 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  %tobool = icmp ne %struct.PerlIO_list_s* %0, null
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %s, align 8
  store %struct._PerlIO_funcs* @PerlIO_unix, %struct._PerlIO_funcs** %osLayer, align 8
  %call = call %struct.PerlIO_list_s* @PerlIO_list_alloc()
  store %struct.PerlIO_list_s* %call, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_unix)
  call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_raw)
  call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_perlio)
  call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_stdio)
  call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_crlf)
  call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_utf8)
  call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_remove)
  call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_byte)
  %1 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  %2 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %osLayer, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %call1 = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %3, i64 0, i32 0)
  call void @PerlIO_list_push(%struct.PerlIO_list_s* %1, %struct._PerlIO_funcs* %call1, %struct.sv* @PL_sv_undef)
  %4 = load i8*, i8** %s, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  %6 = load i8*, i8** %s, align 8
  %call4 = call i32 @PerlIO_parse_layers(%struct.PerlIO_list_s* %5, i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  call void @PerlIO_default_buffer(%struct.PerlIO_list_s* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %8, i32 0, i32 1
  %9 = load i64, i64* %cur, align 8
  %cmp = icmp slt i64 %9, 2
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.5
  %10 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  call void @PerlIO_default_buffer(%struct.PerlIO_list_s* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.5
  %11 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  ret %struct.PerlIO_list_s* %11
}

; Function Attrs: nounwind uwtable
define void @Perl_boot_core_PerlIO() #0 {
entry:
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), void (%struct.cv*)* @XS_PerlIO__Layer__find, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0))
  %call1 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), void (%struct.cv*)* @XS_PerlIO__Layer__NoWarnings, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0))
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._PerlIO_funcs* @PerlIO_default_layer(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %av = alloca %struct.PerlIO_list_s*, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call %struct.PerlIO_list_s* @PerlIO_default_layers()
  store %struct.PerlIO_list_s* %call, %struct.PerlIO_list_s** %av, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %1, i32 0, i32 1
  %2 = load i64, i64* %cur, align 8
  %3 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %3 to i64
  %add = add nsw i64 %conv, %2
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av, align 8
  %5 = load i32, i32* %n.addr, align 4
  %conv2 = sext i32 %5 to i64
  %call3 = call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %4, i64 %conv2, %struct._PerlIO_funcs* @PerlIO_stdio)
  ret %struct._PerlIO_funcs* %call3
}

; Function Attrs: nounwind uwtable
define void @PerlIO_stdstreams() #0 {
entry:
  %0 = load %struct._PerlIO**, %struct._PerlIO*** @PL_perlio, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._PerlIO** @PerlIO_allocate()
  %call1 = call %struct._PerlIO** @PerlIO_fdopen(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0))
  %call2 = call %struct._PerlIO** @PerlIO_fdopen(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  %call3 = call %struct._PerlIO** @PerlIO_fdopen(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIO_fdopen(i32 %fd, i8* %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %mode.addr, align 8
  %1 = load i32, i32* %fd.addr, align 4
  %call = call %struct._PerlIO** @PerlIO_openn(i8* null, i8* %0, i32 %1, i32 0, i32 0, %struct._PerlIO** null, i32 0, %struct.sv** null)
  ret %struct._PerlIO** %call
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f, %struct._PerlIO_funcs* %tab, i8* %mode, %struct.sv* %arg) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %l = alloca %struct._PerlIO*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  %0 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %fsize = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %0, i32 0, i32 0
  %1 = load i64, i64* %fsize, align 8
  %cmp = icmp ne i64 %1, 224
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %mismatch

mismatch:                                         ; preds = %if.then.4, %if.then
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %mismatch, %entry
  %2 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %size = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %2, i32 0, i32 2
  %3 = load i64, i64* %size, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store %struct._PerlIO* null, %struct._PerlIO** %l, align 8
  %4 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %size2 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %4, i32 0, i32 2
  %5 = load i64, i64* %size2, align 8
  %cmp3 = icmp ult i64 %5, 24
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  br label %mismatch

if.end.5:                                         ; preds = %if.then.1
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %size6 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %6, i32 0, i32 2
  %7 = load i64, i64* %size6, align 8
  %mul = mul i64 %7, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  %8 = bitcast i8* %call to %struct._PerlIO*
  store %struct._PerlIO* %8, %struct._PerlIO** %l, align 8
  %9 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tobool7 = icmp ne %struct._PerlIO* %9, null
  br i1 %tobool7, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.5
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool8 = icmp ne %struct._PerlIO** %10, null
  br i1 %tobool8, label %if.then.9, label %if.end.23

if.then.9:                                        ; preds = %land.lhs.true
  %11 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %12 = bitcast %struct._PerlIO* %11 to i8*
  %13 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %size10 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %13, i32 0, i32 2
  %14 = load i64, i64* %size10, align 8
  %mul11 = mul i64 %14, 1
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 %mul11, i32 1, i1 false)
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %16 = load %struct._PerlIO*, %struct._PerlIO** %15, align 8
  %17 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %17, i32 0, i32 0
  store %struct._PerlIO* %16, %struct._PerlIO** %next, align 8
  %18 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %19 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab12 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %19, i32 0, i32 1
  store %struct._PerlIO_funcs* %18, %struct._PerlIO_funcs** %tab12, align 8
  %20 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO* %20, %struct._PerlIO** %21, align 8
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %23 = bitcast %struct._PerlIO** %22 to i8*
  %24 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %24, i32 0, i32 1
  %25 = load i8*, i8** %name, align 8
  %26 = load i8*, i8** %mode.addr, align 8
  %tobool13 = icmp ne i8* %26, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %27 = load i8*, i8** %mode.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %27, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), %cond.false ]
  %28 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %29 = bitcast %struct.sv* %28 to i8*
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* %23, i8* %25, i8* %cond, i8* %29)
  %30 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab14 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %30, i32 0, i32 1
  %31 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab14, align 8
  %Pushed = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %31, i32 0, i32 4
  %32 = load i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)*, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)** %Pushed, align 8
  %tobool15 = icmp ne i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* %32, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.22

land.lhs.true.16:                                 ; preds = %cond.end
  %33 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab17 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %33, i32 0, i32 1
  %34 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab17, align 8
  %Pushed18 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %34, i32 0, i32 4
  %35 = load i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)*, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)** %Pushed18, align 8
  %36 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %37 = load i8*, i8** %mode.addr, align 8
  %38 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %39 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %call19 = call i64 %35(%struct._PerlIO** %36, i8* %37, %struct.sv* %38, %struct._PerlIO_funcs* %39)
  %cmp20 = icmp ne i64 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.16
  %40 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIO_pop(%struct._PerlIO** %40)
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.16, %cond.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %if.end.5
  br label %if.end.41

if.else:                                          ; preds = %if.end
  %41 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool24 = icmp ne %struct._PerlIO** %41, null
  br i1 %tobool24, label %if.then.25, label %if.end.40

if.then.25:                                       ; preds = %if.else
  %42 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %43 = bitcast %struct._PerlIO** %42 to i8*
  %44 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %name26 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %44, i32 0, i32 1
  %45 = load i8*, i8** %name26, align 8
  %46 = load i8*, i8** %mode.addr, align 8
  %tobool27 = icmp ne i8* %46, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.then.25
  %47 = load i8*, i8** %mode.addr, align 8
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.then.25
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i8* [ %47, %cond.true.28 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), %cond.false.29 ]
  %48 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %49 = bitcast %struct.sv* %48 to i8*
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* %43, i8* %45, i8* %cond31, i8* %49)
  %50 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %Pushed32 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %50, i32 0, i32 4
  %51 = load i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)*, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)** %Pushed32, align 8
  %tobool33 = icmp ne i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* %51, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.39

land.lhs.true.34:                                 ; preds = %cond.end.30
  %52 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %Pushed35 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %52, i32 0, i32 4
  %53 = load i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)*, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)** %Pushed35, align 8
  %54 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %55 = load i8*, i8** %mode.addr, align 8
  %56 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %57 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %call36 = call i64 %53(%struct._PerlIO** %54, i8* %55, %struct.sv* %56, %struct._PerlIO_funcs* %57)
  %cmp37 = icmp ne i64 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.34, %cond.end.30
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.23
  %58 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %58, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.38, %if.then.21
  %59 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %59
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_binmode(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %kind = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %5, i32 0, i32 3
  %6 = load i32, i32* %kind, align 4
  %and = and i32 %6, 1
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %8 = load %struct._PerlIO*, %struct._PerlIO** %7, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 2
  %9 = load i32, i32* %flags, align 4
  %and4 = and i32 %9, -32769
  store i32 %and4, i32* %flags, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIO_pop(%struct._PerlIO** %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  store i64 0, i64* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %entry
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.end
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @PerlIORaw_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  %t = alloca %struct._PerlIO**, align 8
  %l = alloca %struct._PerlIO*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %3)
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %4, %struct._PerlIO*** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.then
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %t, align 8
  %tobool2 = icmp ne %struct._PerlIO** %5, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %t, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  store %struct._PerlIO* %7, %struct._PerlIO** %l, align 8
  %tobool3 = icmp ne %struct._PerlIO* %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab4 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %9, i32 0, i32 1
  %10 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab4, align 8
  %Binmode = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %10, i32 0, i32 7
  %11 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Binmode, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %11, null
  br i1 %tobool5, label %if.then.6, label %if.else.14

if.then.6:                                        ; preds = %while.body
  %12 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab7 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %12, i32 0, i32 1
  %13 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab7, align 8
  %Binmode8 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %13, i32 0, i32 7
  %14 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Binmode8, align 8
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call9 = call i64 %14(%struct._PerlIO** %15)
  %cmp = icmp eq i64 %call9, 0
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.6
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %t, align 8
  %17 = load %struct._PerlIO*, %struct._PerlIO** %16, align 8
  %18 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %cmp11 = icmp eq %struct._PerlIO* %17, %18
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.10
  %19 = load %struct._PerlIO**, %struct._PerlIO*** %t, align 8
  %20 = load %struct._PerlIO*, %struct._PerlIO** %19, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %20, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.10
  br label %if.end.13

if.else:                                          ; preds = %if.then.6
  store i64 -1, i64* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  br label %if.end.15

if.else.14:                                       ; preds = %while.body
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %t, align 8
  call void @PerlIO_pop(%struct._PerlIO** %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.end.13
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool16 = icmp ne %struct._PerlIO** %22, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %while.end
  %23 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %24 = load %struct._PerlIO*, %struct._PerlIO** %23, align 8
  %tobool18 = icmp ne %struct._PerlIO* %24, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true.17
  %25 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %26 = bitcast %struct._PerlIO** %25 to i8*
  %27 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %28 = load %struct._PerlIO*, %struct._PerlIO** %27, align 8
  %tab20 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %28, i32 0, i32 1
  %29 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab20, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %29, i32 0, i32 1
  %30 = load i8*, i8** %name, align 8
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* %26, i8* %30)
  store i64 0, i64* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.17, %while.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true, %entry
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.19, %if.else
  %31 = load i64, i64* %retval
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_apply_layera(%struct._PerlIO** %f, i8* %mode, %struct.PerlIO_list_s* %layers, i64 %n, i64 %max) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %layers.addr = alloca %struct.PerlIO_list_s*, align 8
  %n.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.PerlIO_list_s* %layers, %struct.PerlIO_list_s** %layers.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %max, i64* %max.addr, align 8
  store i32 0, i32* %code, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %0 = load i64, i64* %n.addr, align 8
  %1 = load i64, i64* %max.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %3 = load i64, i64* %n.addr, align 8
  %call = call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %2, i64 %3, %struct._PerlIO_funcs* null)
  store %struct._PerlIO_funcs* %call, %struct._PerlIO_funcs** %tab, align 8
  %4 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool = icmp ne %struct._PerlIO_funcs* %4, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %while.body
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %7 = load i8*, i8** %mode.addr, align 8
  %8 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %9 = load i64, i64* %n.addr, align 8
  %call1 = call %struct.sv* @PerlIO_arg_fetch(%struct.PerlIO_list_s* %8, i64 %9)
  %call2 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %5, %struct._PerlIO_funcs* %6, i8* %7, %struct.sv* %call1)
  %tobool3 = icmp ne %struct._PerlIO** %call2, null
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 -1, i32* %code, align 4
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %while.body
  %10 = load i64, i64* %n.addr, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %n.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %11 = load i32, i32* %code, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_apply_layers(%struct._PerlIO** %f, i8* %mode, i8* %names) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %names.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %layers = alloca %struct.PerlIO_list_s*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i8* %names, i8** %names.addr, align 8
  store i32 0, i32* %code, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %names.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %call = call %struct.PerlIO_list_s* @PerlIO_list_alloc()
  store %struct.PerlIO_list_s* %call, %struct.PerlIO_list_s** %layers, align 8
  %2 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers, align 8
  %3 = load i8*, i8** %names.addr, align 8
  %call2 = call i32 @PerlIO_parse_layers(%struct.PerlIO_list_s* %2, i8* %3)
  store i32 %call2, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load i8*, i8** %mode.addr, align 8
  %7 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers, align 8
  %8 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %8, i32 0, i32 1
  %9 = load i64, i64* %cur, align 8
  %call4 = call i32 @PerlIO_apply_layera(%struct._PerlIO** %5, i8* %6, %struct.PerlIO_list_s* %7, i64 0, i64 %9)
  store i32 %call4, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers, align 8
  call void @PerlIO_list_free(%struct.PerlIO_list_s* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %land.lhs.true, %entry
  %11 = load i32, i32* %code, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_binmode(%struct._PerlIO** %f, i32 %iotype, i32 %mode, i8* %names) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %iotype.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %names.addr = alloca i8*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %iotype, i32* %iotype.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %names, i8** %names.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = bitcast %struct._PerlIO** %0 to i8*
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %3 = load %struct._PerlIO*, %struct._PerlIO** %2, align 8
  %tab = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %3, i32 0, i32 1
  %4 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* %iotype.addr, align 4
  %7 = load i32, i32* %mode.addr, align 4
  %8 = load i8*, i8** %names.addr, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i8*, i8** %names.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), %cond.false ]
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i8* %1, i8* %5, i32 %6, i32 %7, i8* %cond)
  %10 = load i8*, i8** %names.addr, align 8
  %tobool1 = icmp ne i8* %10, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load i8*, i8** %names.addr, align 8
  %call = call i32 @PerlIO_apply_layers(%struct._PerlIO** %11, i8* null, i8* %12)
  %cmp = icmp eq i32 %call, 0
  %cond2 = select i1 %cmp, i32 1, i32 0
  store i32 %cond2, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call3 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %13, %struct._PerlIO_funcs* @PerlIO_raw, i8* null, %struct.sv* null)
  %tobool4 = icmp ne %struct._PerlIO** %call3, null
  %cond5 = select i1 %tobool4, i32 1, i32 0
  store i32 %cond5, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO__close(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.10

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Close = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 16
  %8 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Close, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Close7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 16
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Close7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call8 = call i64 @PerlIOBase_close(%struct._PerlIO** %12)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, i32* %retval
  br label %return

if.else.10:                                       ; preds = %land.lhs.true, %entry
  %call11 = call i32* @__errno_location()
  store i32 9, i32* %call11, align 4
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.else, %if.then.6
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_close(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %code = alloca i64, align 8
  %n = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i64 -1, i64* %code, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.17

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %n, align 8
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %5)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %code, align 8
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %7, i32 0, i32 2
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, -2098689
  store i32 %and, i32* %flags, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.then
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %tobool2 = icmp ne %struct._PerlIO** %9, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %11 = load %struct._PerlIO*, %struct._PerlIO** %10, align 8
  %tobool3 = icmp ne %struct._PerlIO* %11, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %14 = load %struct._PerlIO*, %struct._PerlIO** %13, align 8
  %tab4 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %14, i32 0, i32 1
  %15 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab4, align 8
  store %struct._PerlIO_funcs* %15, %struct._PerlIO_funcs** %tab, align 8
  %16 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool5 = icmp ne %struct._PerlIO_funcs* %16, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %while.body
  %17 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Close = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %17, i32 0, i32 16
  %18 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Close, align 8
  %tobool7 = icmp ne i64 (%struct._PerlIO**)* %18, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true.6
  %19 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Close9 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %19, i32 0, i32 16
  %20 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Close9, align 8
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call10 = call i64 %20(%struct._PerlIO** %21)
  %cmp = icmp ne i64 %call10, 0
  br i1 %cmp, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.8
  store i64 -1, i64* %code, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.8
  br label %while.end

if.else:                                          ; preds = %land.lhs.true.6, %while.body
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %23 = load %struct._PerlIO*, %struct._PerlIO** %22, align 8
  %flags13 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %23, i32 0, i32 2
  %24 = load i32, i32* %flags13, align 4
  %and14 = and i32 %24, -2098689
  store i32 %and14, i32* %flags13, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else
  %25 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %26 = load %struct._PerlIO*, %struct._PerlIO** %25, align 8
  %next16 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %26, i32 0, i32 0
  store %struct._PerlIO** %next16, %struct._PerlIO*** %n, align 8
  br label %while.cond

while.end:                                        ; preds = %if.end, %land.end
  br label %if.end.19

if.else.17:                                       ; preds = %land.lhs.true, %entry
  %call18 = call i32* @__errno_location()
  store i32 9, i32* %call18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %while.end
  %27 = load i64, i64* %code, align 8
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define i32 @Perl_PerlIO_fileno(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.10

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Fileno = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 9
  %8 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Fileno, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Fileno7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 9
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Fileno7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call8 = call i64 @PerlIOBase_fileno(%struct._PerlIO** %12)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, i32* %retval
  br label %return

if.else.10:                                       ; preds = %land.lhs.true, %entry
  %call11 = call i32* @__errno_location()
  store i32 9, i32* %call11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.6
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_fileno(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 0
  %call = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %next)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ]
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define %struct.PerlIO_list_s* @PerlIO_resolve_layers(i8* %layers, i8* %mode, i32 %narg, %struct.sv** %args) #0 {
entry:
  %retval = alloca %struct.PerlIO_list_s*, align 8
  %layers.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %narg.addr = alloca i32, align 4
  %args.addr = alloca %struct.sv**, align 8
  %def = alloca %struct.PerlIO_list_s*, align 8
  %incdef = alloca i32, align 4
  %arg = alloca %struct.sv*, align 8
  %handler = alloca %struct._PerlIO_funcs*, align 8
  %av = alloca %struct.PerlIO_list_s*, align 8
  %i = alloca i64, align 8
  store i8* %layers, i8** %layers.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store %struct.sv** %args, %struct.sv*** %args.addr, align 8
  %call = call %struct.PerlIO_list_s* @PerlIO_default_layers()
  store %struct.PerlIO_list_s* %call, %struct.PerlIO_list_s** %def, align 8
  store i32 1, i32* %incdef, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** @PL_perlio, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @PerlIO_stdstreams()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %narg.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.end
  %2 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %3 = load %struct.sv*, %struct.sv** %2, align 8
  store %struct.sv* %3, %struct.sv** %arg, align 8
  %4 = load %struct.sv*, %struct.sv** %arg, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 524288
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.then.2
  %6 = load %struct.sv*, %struct.sv** %arg, align 8
  %call4 = call i32 @Perl_sv_isobject(%struct.sv* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.12, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %7 = load %struct.sv*, %struct.sv** %arg, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %9, i32 0, i32 0
  %10 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %call7 = call %struct._PerlIO_funcs* @PerlIO_layer_from_ref(%struct.sv* %10)
  store %struct._PerlIO_funcs* %call7, %struct._PerlIO_funcs** %handler, align 8
  %11 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %handler, align 8
  %tobool8 = icmp ne %struct._PerlIO_funcs* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.6
  %call10 = call %struct.PerlIO_list_s* @PerlIO_list_alloc()
  store %struct.PerlIO_list_s* %call10, %struct.PerlIO_list_s** %def, align 8
  %12 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %def, align 8
  %13 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %handler, align 8
  call void @PerlIO_list_push(%struct.PerlIO_list_s* %12, %struct._PerlIO_funcs* %13, %struct.sv* @PL_sv_undef)
  store i32 0, i32* %incdef, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %land.lhs.true, %if.then.2
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %14 = load i8*, i8** %layers.addr, align 8
  %tobool14 = icmp ne i8* %14, null
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %15 = load i8*, i8** %mode.addr, align 8
  %call16 = call i8* @PerlIO_context_layers(i8* %15)
  store i8* %call16, i8** %layers.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %16 = load i8*, i8** %layers.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.else.36

land.lhs.true.19:                                 ; preds = %if.end.17
  %17 = load i8*, i8** %layers.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv = sext i8 %18 to i32
  %tobool20 = icmp ne i32 %conv, 0
  br i1 %tobool20, label %if.then.21, label %if.else.36

if.then.21:                                       ; preds = %land.lhs.true.19
  %19 = load i32, i32* %incdef, align 4
  %tobool22 = icmp ne i32 %19, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.21
  %20 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %def, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %20, i32 0, i32 1
  %21 = load i64, i64* %cur, align 8
  store i64 %21, i64* %i, align 8
  %call24 = call %struct.PerlIO_list_s* @PerlIO_list_alloc()
  store %struct.PerlIO_list_s* %call24, %struct.PerlIO_list_s** %av, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %def, align 8
  %cur25 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %23, i32 0, i32 1
  %24 = load i64, i64* %cur25, align 8
  %cmp = icmp slt i64 %22, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av, align 8
  %26 = load i64, i64* %i, align 8
  %27 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %def, align 8
  %array = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %27, i32 0, i32 3
  %28 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array, align 8
  %arrayidx = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %28, i64 %26
  %funcs = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx, i32 0, i32 0
  %29 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %funcs, align 8
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %def, align 8
  %array27 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %31, i32 0, i32 3
  %32 = load %struct.PerlIO_pair_t*, %struct.PerlIO_pair_t** %array27, align 8
  %arrayidx28 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %32, i64 %30
  %arg29 = getelementptr inbounds %struct.PerlIO_pair_t, %struct.PerlIO_pair_t* %arrayidx28, i32 0, i32 1
  %33 = load %struct.sv*, %struct.sv** %arg29, align 8
  call void @PerlIO_list_push(%struct.PerlIO_list_s* %25, %struct._PerlIO_funcs* %29, %struct.sv* %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, i64* %i, align 8
  %inc = add nsw i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.else:                                          ; preds = %if.then.21
  %35 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %def, align 8
  store %struct.PerlIO_list_s* %35, %struct.PerlIO_list_s** %av, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %for.end
  %36 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av, align 8
  %37 = load i8*, i8** %layers.addr, align 8
  %call31 = call i32 @PerlIO_parse_layers(%struct.PerlIO_list_s* %36, i8* %37)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.end.30
  %38 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av, align 8
  store %struct.PerlIO_list_s* %38, %struct.PerlIO_list_s** %retval
  br label %return

if.else.35:                                       ; preds = %if.end.30
  %39 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %av, align 8
  call void @PerlIO_list_free(%struct.PerlIO_list_s* %39)
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** %retval
  br label %return

if.else.36:                                       ; preds = %land.lhs.true.19, %if.end.17
  %40 = load i32, i32* %incdef, align 4
  %tobool37 = icmp ne i32 %40, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.else.36
  %41 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %def, align 8
  %refcnt = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %41, i32 0, i32 0
  %42 = load i64, i64* %refcnt, align 8
  %inc39 = add nsw i64 %42, 1
  store i64 %inc39, i64* %refcnt, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.else.36
  %43 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %def, align 8
  store %struct.PerlIO_list_s* %43, %struct.PerlIO_list_s** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.else.35, %if.then.34
  %44 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %retval
  ret %struct.PerlIO_list_s* %44
}

declare i32 @Perl_sv_isobject(%struct.sv*) #2

; Function Attrs: nounwind uwtable
define internal %struct._PerlIO_funcs* @PerlIO_layer_from_ref(%struct.sv* %sv) #0 {
entry:
  %retval = alloca %struct._PerlIO_funcs*, align 8
  %sv.addr = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 255
  %cmp = icmp ult i32 %and, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i64 6, i32 1)
  store %struct._PerlIO_funcs* %call, %struct._PerlIO_funcs** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %3, 255
  switch i32 %and2, label %sw.epilog [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.4
    i32 12, label %sw.bb.6
    i32 13, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end
  %call3 = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i64 5, i32 0)
  store %struct._PerlIO_funcs* %call3, %struct._PerlIO_funcs** %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  %call5 = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i64 4, i32 0)
  store %struct._PerlIO_funcs* %call5, %struct._PerlIO_funcs** %retval
  br label %return

sw.bb.6:                                          ; preds = %if.end
  %call7 = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i64 4, i32 0)
  store %struct._PerlIO_funcs* %call7, %struct._PerlIO_funcs** %retval
  br label %return

sw.bb.8:                                          ; preds = %if.end
  %call9 = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i64 4, i32 0)
  store %struct._PerlIO_funcs* %call9, %struct._PerlIO_funcs** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end
  store %struct._PerlIO_funcs* null, %struct._PerlIO_funcs** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb, %if.then
  %4 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %retval
  ret %struct._PerlIO_funcs* %4
}

; Function Attrs: nounwind uwtable
define internal i8* @PerlIO_context_layers(i8* %mode) #0 {
entry:
  %mode.addr = alloca i8*, align 8
  %type = alloca i8*, align 8
  %layers = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i8* null, i8** %type, align 8
  %0 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %tobool = icmp ne %struct.cop* %0, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %1 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_io = getelementptr inbounds %struct.cop, %struct.cop* %1, i32 0, i32 15
  %2 = load %struct.sv*, %struct.sv** %cop_io, align 8
  store %struct.sv* %2, %struct.sv** %layers, align 8
  %3 = load %struct.sv*, %struct.sv** %layers, align 8
  %tobool1 = icmp ne %struct.sv* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.sv*, %struct.sv** %layers, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %6 = load %struct.sv*, %struct.sv** %layers, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 1
  %9 = load i64, i64* %xpv_cur, align 8
  store i64 %9, i64* %len, align 8
  %10 = load %struct.sv*, %struct.sv** %layers, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any3, align 8
  %12 = bitcast i8* %11 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %12, i32 0, i32 0
  %13 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %14 = load %struct.sv*, %struct.sv** %layers, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %14, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %type, align 8
  %15 = load i8*, i8** %type, align 8
  %tobool4 = icmp ne i8* %15, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %cond.end
  %16 = load i8*, i8** %mode.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %17 to i32
  %cmp5 = icmp ne i32 %conv, 114
  br i1 %cmp5, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %land.lhs.true
  %18 = load i8*, i8** %type, align 8
  %call8 = call i8* @strchr(i8* %18, i32 0)
  store i8* %call8, i8** %s, align 8
  %19 = load i8*, i8** %s, align 8
  %tobool9 = icmp ne i8* %19, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %if.then.7
  %20 = load i8*, i8** %s, align 8
  %21 = load i8*, i8** %type, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %22 = load i64, i64* %len, align 8
  %cmp11 = icmp ult i64 %sub.ptr.sub, %22
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true.10
  %23 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %add.ptr, i8** %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true.10, %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %land.lhs.true, %cond.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %24 = load i8*, i8** %type, align 8
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIO_openn(i8* %layers, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** %args) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %layers.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %imode.addr = alloca i32, align 4
  %perm.addr = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %narg.addr = alloca i32, align 4
  %args.addr = alloca %struct.sv**, align 8
  %layera = alloca %struct.PerlIO_list_s*, align 8
  %n = alloca i64, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  %l = alloca %struct._PerlIO*, align 8
  %arg = alloca %struct.sv*, align 8
  %t = alloca %struct._PerlIO_funcs*, align 8
  store i8* %layers, i8** %layers.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %imode, i32* %imode.addr, align 4
  store i32 %perm, i32* %perm.addr, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store %struct.sv** %args, %struct.sv*** %args.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %narg.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true.1, label %if.else

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %3 = load %struct.sv*, %struct.sv** %2, align 8
  %cmp2 = icmp eq %struct.sv* %3, @PL_sv_undef
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.1
  %call = call %struct._PerlIO** @PerlIO_tmpfile()
  store %struct._PerlIO** %call, %struct._PerlIO*** %f.addr, align 8
  %tobool3 = icmp ne %struct._PerlIO** %call, null
  br i1 %tobool3, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.then
  %4 = load i8*, i8** %layers.addr, align 8
  %tobool5 = icmp ne i8* %4, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  %5 = load i8*, i8** %mode.addr, align 8
  %call7 = call i8* @PerlIO_context_layers(i8* %5)
  store i8* %call7, i8** %layers.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  %6 = load i8*, i8** %layers.addr, align 8
  %tobool8 = icmp ne i8* %6, null
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %if.end
  %7 = load i8*, i8** %layers.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %tobool10 = icmp ne i32 %conv, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true.9
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %10 = load i8*, i8** %mode.addr, align 8
  %11 = load i8*, i8** %layers.addr, align 8
  %call12 = call i32 @PerlIO_apply_layers(%struct._PerlIO** %9, i8* %10, i8* %11)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true.9, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  br label %if.end.78

if.else:                                          ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** %layera, align 8
  store %struct._PerlIO_funcs* null, %struct._PerlIO_funcs** %tab, align 8
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool15 = icmp ne %struct._PerlIO** %12, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.else.27

land.lhs.true.16:                                 ; preds = %if.else
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %14 = load %struct._PerlIO*, %struct._PerlIO** %13, align 8
  %tobool17 = icmp ne %struct._PerlIO* %14, null
  br i1 %tobool17, label %if.then.18, label %if.else.27

if.then.18:                                       ; preds = %land.lhs.true.16
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %16 = load %struct._PerlIO*, %struct._PerlIO** %15, align 8
  store %struct._PerlIO* %16, %struct._PerlIO** %l, align 8
  %call19 = call %struct.PerlIO_list_s* @PerlIO_list_alloc()
  store %struct.PerlIO_list_s* %call19, %struct.PerlIO_list_s** %layera, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then.18
  %17 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tobool20 = icmp ne %struct._PerlIO* %17, null
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab21 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %18, i32 0, i32 1
  %19 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab21, align 8
  %Getarg = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %19, i32 0, i32 8
  %20 = load %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)** %Getarg, align 8
  %tobool22 = icmp ne %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* %20, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %21 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab23 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %21, i32 0, i32 1
  %22 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab23, align 8
  %Getarg24 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %22, i32 0, i32 8
  %23 = load %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)** %Getarg24, align 8
  %call25 = call %struct.sv* %23(%struct._PerlIO** %l, %struct.clone_params* null, i32 0)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %call25, %cond.true ], [ @PL_sv_undef, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %arg, align 8
  %24 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layera, align 8
  %25 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab26 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %25, i32 0, i32 1
  %26 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab26, align 8
  %27 = load %struct.sv*, %struct.sv** %arg, align 8
  call void @PerlIO_list_push(%struct.PerlIO_list_s* %24, %struct._PerlIO_funcs* %26, %struct.sv* %27)
  %28 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %28, i32 0, i32 0
  %29 = load %struct._PerlIO*, %struct._PerlIO** %next, align 8
  store %struct._PerlIO* %29, %struct._PerlIO** %l, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.32

if.else.27:                                       ; preds = %land.lhs.true.16, %if.else
  %30 = load i8*, i8** %layers.addr, align 8
  %31 = load i8*, i8** %mode.addr, align 8
  %32 = load i32, i32* %narg.addr, align 4
  %33 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %call28 = call %struct.PerlIO_list_s* @PerlIO_resolve_layers(i8* %30, i8* %31, i32 %32, %struct.sv** %33)
  store %struct.PerlIO_list_s* %call28, %struct.PerlIO_list_s** %layera, align 8
  %34 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layera, align 8
  %tobool29 = icmp ne %struct.PerlIO_list_s* %34, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.else.27
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.31:                                        ; preds = %if.else.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %while.end
  %35 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layera, align 8
  %cur = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %35, i32 0, i32 1
  %36 = load i64, i64* %cur, align 8
  %sub = sub nsw i64 %36, 1
  store i64 %sub, i64* %n, align 8
  br label %while.cond.33

while.cond.33:                                    ; preds = %if.end.42, %if.end.32
  %37 = load i64, i64* %n, align 8
  %cmp34 = icmp sge i64 %37, 0
  br i1 %cmp34, label %while.body.36, label %while.end.43

while.body.36:                                    ; preds = %while.cond.33
  %38 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layera, align 8
  %39 = load i64, i64* %n, align 8
  %call37 = call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %38, i64 %39, %struct._PerlIO_funcs* null)
  store %struct._PerlIO_funcs* %call37, %struct._PerlIO_funcs** %t, align 8
  %40 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %t, align 8
  %tobool38 = icmp ne %struct._PerlIO_funcs* %40, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.42

land.lhs.true.39:                                 ; preds = %while.body.36
  %41 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %t, align 8
  %Open = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %41, i32 0, i32 6
  %42 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open, align 8
  %tobool40 = icmp ne %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %42, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.39
  %43 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %t, align 8
  store %struct._PerlIO_funcs* %43, %struct._PerlIO_funcs** %tab, align 8
  br label %while.end.43

if.end.42:                                        ; preds = %land.lhs.true.39, %while.body.36
  %44 = load i64, i64* %n, align 8
  %dec = add nsw i64 %44, -1
  store i64 %dec, i64* %n, align 8
  br label %while.cond.33

while.end.43:                                     ; preds = %if.then.41, %while.cond.33
  %45 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool44 = icmp ne %struct._PerlIO_funcs* %45, null
  br i1 %tobool44, label %if.then.45, label %if.end.77

if.then.45:                                       ; preds = %while.end.43
  %46 = load i32, i32* %narg.addr, align 4
  %cmp46 = icmp sgt i32 %46, 1
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.51

land.lhs.true.48:                                 ; preds = %if.then.45
  %47 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %kind = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %47, i32 0, i32 3
  %48 = load i32, i32* %kind, align 4
  %and = and i32 %48, 131072
  %tobool49 = icmp ne i32 %and, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.48
  %49 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %name = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %49, i32 0, i32 1
  %50 = load i8*, i8** %name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0), i8* %50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.48, %if.then.45
  %51 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %name52 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %51, i32 0, i32 1
  %52 = load i8*, i8** %name52, align 8
  %53 = load i8*, i8** %layers.addr, align 8
  %54 = load i8*, i8** %mode.addr, align 8
  %55 = load i32, i32* %fd.addr, align 4
  %56 = load i32, i32* %imode.addr, align 4
  %57 = load i32, i32* %perm.addr, align 4
  %58 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %59 = bitcast %struct._PerlIO** %58 to i8*
  %60 = load i32, i32* %narg.addr, align 4
  %61 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %62 = bitcast %struct.sv** %61 to i8*
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0), i8* %52, i8* %53, i8* %54, i32 %55, i32 %56, i32 %57, i8* %59, i32 %60, i8* %62)
  %63 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Open53 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %63, i32 0, i32 6
  %64 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open53, align 8
  %tobool54 = icmp ne %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %64, null
  br i1 %tobool54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.end.51
  %65 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Open56 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %65, i32 0, i32 6
  %66 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open56, align 8
  %67 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %68 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layera, align 8
  %69 = load i64, i64* %n, align 8
  %70 = load i8*, i8** %mode.addr, align 8
  %71 = load i32, i32* %fd.addr, align 4
  %72 = load i32, i32* %imode.addr, align 4
  %73 = load i32, i32* %perm.addr, align 4
  %74 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %75 = load i32, i32* %narg.addr, align 4
  %76 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %call57 = call %struct._PerlIO** %66(%struct._PerlIO_funcs* %67, %struct.PerlIO_list_s* %68, i64 %69, i8* %70, i32 %71, i32 %72, i32 %73, %struct._PerlIO** %74, i32 %75, %struct.sv** %76)
  store %struct._PerlIO** %call57, %struct._PerlIO*** %f.addr, align 8
  br label %if.end.60

if.else.58:                                       ; preds = %if.end.51
  %call59 = call i32* @__errno_location()
  store i32 22, i32* %call59, align 4
  store %struct._PerlIO** null, %struct._PerlIO*** %f.addr, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.55
  %77 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool61 = icmp ne %struct._PerlIO** %77, null
  br i1 %tobool61, label %if.then.62, label %if.end.76

if.then.62:                                       ; preds = %if.end.60
  %78 = load i64, i64* %n, align 8
  %add = add nsw i64 %78, 1
  %79 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layera, align 8
  %cur63 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %79, i32 0, i32 1
  %80 = load i64, i64* %cur63, align 8
  %cmp64 = icmp slt i64 %add, %80
  br i1 %cmp64, label %if.then.66, label %if.end.75

if.then.66:                                       ; preds = %if.then.62
  %81 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %82 = load i8*, i8** %mode.addr, align 8
  %83 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layera, align 8
  %84 = load i64, i64* %n, align 8
  %add67 = add nsw i64 %84, 1
  %85 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layera, align 8
  %cur68 = getelementptr inbounds %struct.PerlIO_list_s, %struct.PerlIO_list_s* %85, i32 0, i32 1
  %86 = load i64, i64* %cur68, align 8
  %call69 = call i32 @PerlIO_apply_layera(%struct._PerlIO** %81, i8* %82, %struct.PerlIO_list_s* %83, i64 %add67, i64 %86)
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.then.66
  %87 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call73 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %87)
  store %struct._PerlIO** null, %struct._PerlIO*** %f.addr, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.then.66
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.62
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.60
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %while.end.43
  %88 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layera, align 8
  call void @PerlIO_list_free(%struct.PerlIO_list_s* %88)
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.14
  %89 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %89, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.then.30
  %90 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %90
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIO_tmpfile() #0 {
entry:
  %f = alloca %struct._PerlIO**, align 8
  %fd = alloca i32, align 4
  %stdio = alloca %struct._IO_FILE*, align 8
  %s = alloca %struct.PerlIOStdio*, align 8
  store %struct._PerlIO** null, %struct._PerlIO*** %f, align 8
  store i32 -1, i32* %fd, align 4
  %call = call %struct._IO_FILE* @tmpfile()
  store %struct._IO_FILE* %call, %struct._IO_FILE** %stdio, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %call1 = call %struct._PerlIO** @PerlIO_allocate()
  %call2 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %call1, %struct._PerlIO_funcs* @PerlIO_stdio, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), %struct.sv* null)
  store %struct._PerlIO** %call2, %struct._PerlIO*** %f, align 8
  %tobool3 = icmp ne %struct._PerlIO** %call2, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.then
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %3 = bitcast %struct._PerlIO* %2 to %struct.PerlIOStdio*
  store %struct.PerlIOStdio* %3, %struct.PerlIOStdio** %s, align 8
  %4 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %tobool5 = icmp ne %struct.PerlIOStdio* %4, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %6 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio7 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %6, i32 0, i32 1
  store %struct._IO_FILE* %5, %struct._IO_FILE** %stdio7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  ret %struct._PerlIO** %7
}

; Function Attrs: nounwind uwtable
define i64 @Perl_PerlIO_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.9

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Read = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 11
  %8 = load i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)** %Read, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**, i8*, i64)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Read7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 11
  %10 = load i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)** %Read7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load i8*, i8** %vbuf.addr, align 8
  %13 = load i64, i64* %count.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11, i8* %12, i64 %13)
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %15 = load i8*, i8** %vbuf.addr, align 8
  %16 = load i64, i64* %count.addr, align 8
  %call8 = call i64 @PerlIOBase_read(%struct._PerlIO** %14, i8* %15, i64 %16)
  store i64 %call8, i64* %retval
  br label %return

if.else.9:                                        ; preds = %land.lhs.true, %entry
  %call10 = call i32* @__errno_location()
  store i32 9, i32* %call10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.6
  %17 = load i64, i64* %retval
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %buf = alloca i8*, align 8
  %avail = alloca i64, align 8
  %take = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i8*, i8** %vbuf.addr, align 8
  store i8* %0, i8** %buf, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %1, null
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %3 = load %struct._PerlIO*, %struct._PerlIO** %2, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %3, i32 0, i32 2
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 1024
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %5, align 8
  %flags3 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 2
  %7 = load i32, i32* %flags3, align 4
  %or = or i32 %7, 2048
  store i32 %or, i32* %flags3, align 4
  %call = call i32* @__errno_location()
  store i32 9, i32* %call, align 4
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %if.end
  %8 = load i64, i64* %count.addr, align 8
  %cmp = icmp ugt i64 %8, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call4 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %9)
  %conv = sext i32 %call4 to i64
  store i64 %conv, i64* %avail, align 8
  store i64 0, i64* %take, align 8
  %10 = load i64, i64* %avail, align 8
  %cmp5 = icmp sgt i64 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %while.body
  %11 = load i64, i64* %count.addr, align 8
  %12 = load i64, i64* %avail, align 8
  %cmp8 = icmp slt i64 %11, %12
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %13 = load i64, i64* %count.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %14 = load i64, i64* %avail, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ]
  store i64 %cond, i64* %take, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %cond.end, %while.body
  %15 = load i64, i64* %take, align 8
  %cmp11 = icmp sgt i64 %15, 0
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.10
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call14 = call i8* @Perl_PerlIO_get_ptr(%struct._PerlIO** %16)
  store i8* %call14, i8** %ptr, align 8
  %17 = load i8*, i8** %buf, align 8
  %18 = load i8*, i8** %ptr, align 8
  %19 = load i64, i64* %take, align 8
  %mul = mul i64 %19, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 %mul, i32 1, i1 false)
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %21 = load i8*, i8** %ptr, align 8
  %22 = load i64, i64* %take, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %22
  %23 = load i64, i64* %take, align 8
  %24 = load i64, i64* %avail, align 8
  %sub = sub nsw i64 %24, %23
  store i64 %sub, i64* %avail, align 8
  %conv15 = trunc i64 %sub to i32
  call void @Perl_PerlIO_set_ptrcnt(%struct._PerlIO** %20, i8* %add.ptr, i32 %conv15)
  %25 = load i64, i64* %take, align 8
  %26 = load i64, i64* %count.addr, align 8
  %sub16 = sub i64 %26, %25
  store i64 %sub16, i64* %count.addr, align 8
  %27 = load i64, i64* %take, align 8
  %28 = load i8*, i8** %buf, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %add.ptr17, i8** %buf, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.end.10
  %29 = load i64, i64* %count.addr, align 8
  %cmp19 = icmp ugt i64 %29, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.18
  %30 = load i64, i64* %avail, align 8
  %cmp21 = icmp sle i64 %30, 0
  br i1 %cmp21, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %land.lhs.true
  %31 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call24 = call i32 @Perl_PerlIO_fill(%struct._PerlIO** %31)
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.23
  br label %while.end

if.end.28:                                        ; preds = %if.then.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %land.lhs.true, %if.end.18
  br label %while.cond

while.end:                                        ; preds = %if.then.27, %while.cond
  %32 = load i8*, i8** %buf, align 8
  %33 = load i8*, i8** %vbuf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval
  br label %return

if.end.30:                                        ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.30, %while.end, %if.then.2
  %34 = load i64, i64* %retval
  ret i64 %34
}

; Function Attrs: nounwind uwtable
define i64 @Perl_PerlIO_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.9

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Unread = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 12
  %8 = load i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)** %Unread, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**, i8*, i64)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Unread7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 12
  %10 = load i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)** %Unread7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load i8*, i8** %vbuf.addr, align 8
  %13 = load i64, i64* %count.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11, i8* %12, i64 %13)
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %15 = load i8*, i8** %vbuf.addr, align 8
  %16 = load i64, i64* %count.addr, align 8
  %call8 = call i64 @PerlIOBase_unread(%struct._PerlIO** %14, i8* %15, i64 %16)
  store i64 %call8, i64* %retval
  br label %return

if.else.9:                                        ; preds = %land.lhs.true, %entry
  %call10 = call i32* @__errno_location()
  store i32 9, i32* %call10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.6
  %17 = load i64, i64* %retval
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %old = alloca i64, align 8
  %done = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 @Perl_PerlIO_tell(%struct._PerlIO** %0)
  store i64 %call, i64* %old, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call1 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %1, %struct._PerlIO_funcs* @PerlIO_pending, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), %struct.sv* null)
  %2 = load i64, i64* %old, align 8
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %5 = bitcast %struct._PerlIO* %4 to %struct.PerlIOBuf*
  %posn = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %5, i32 0, i32 4
  store i64 %2, i64* %posn, align 8
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load i8*, i8** %vbuf.addr, align 8
  %8 = load i64, i64* %count.addr, align 8
  %call2 = call i64 @PerlIOBuf_unread(%struct._PerlIO** %6, i8* %7, i64 %8)
  store i64 %call2, i64* %done, align 8
  %9 = load i64, i64* %done, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @Perl_PerlIO_write(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Write = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 13
  %8 = load i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)** %Write, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**, i8*, i64)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Write7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 13
  %10 = load i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)** %Write7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load i8*, i8** %vbuf.addr, align 8
  %13 = load i64, i64* %count.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11, i8* %12, i64 %13)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  %call8 = call i32* @__errno_location()
  store i32 22, i32* %call8, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  %14 = load i64, i64* %retval
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define i32 @Perl_PerlIO_seek(%struct._PerlIO** %f, i64 %offset, i32 %whence) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Seek = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 14
  %8 = load i64 (%struct._PerlIO**, i64, i32)*, i64 (%struct._PerlIO**, i64, i32)** %Seek, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**, i64, i32)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Seek7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 14
  %10 = load i64 (%struct._PerlIO**, i64, i32)*, i64 (%struct._PerlIO**, i64, i32)** %Seek7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load i64, i64* %offset.addr, align 8
  %13 = load i32, i32* %whence.addr, align 4
  %call = call i64 %10(%struct._PerlIO** %11, i64 %12, i32 %13)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  %call8 = call i32* @__errno_location()
  store i32 22, i32* %call8, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i64 @Perl_PerlIO_tell(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Tell = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 15
  %8 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Tell, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Tell7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 15
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Tell7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  %call8 = call i32* @__errno_location()
  store i32 22, i32* %call8, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  %12 = load i64, i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define void @PerlIOBase_flush_linebuf() #0 {
entry:
  %table = alloca %struct._PerlIO***, align 8
  %f = alloca %struct._PerlIO**, align 8
  %i = alloca i32, align 4
  store %struct._PerlIO*** @PL_perlio, %struct._PerlIO**** %table, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct._PerlIO***, %struct._PerlIO**** %table, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %0, align 8
  store %struct._PerlIO** %1, %struct._PerlIO*** %f, align 8
  %tobool = icmp ne %struct._PerlIO** %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %incdec.ptr = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %2, i32 1
  store %struct._PerlIO** %incdec.ptr, %struct._PerlIO*** %f, align 8
  %3 = bitcast %struct._PerlIO** %2 to %struct._PerlIO***
  store %struct._PerlIO*** %3, %struct._PerlIO**** %table, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %5, align 8
  %tobool1 = icmp ne %struct._PerlIO* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %8 = load %struct._PerlIO*, %struct._PerlIO** %7, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 2
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 524800
  %cmp2 = icmp eq i32 %and, 524800
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %incdec.ptr3 = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %11, i32 1
  store %struct._PerlIO** %incdec.ptr3, %struct._PerlIO*** %f, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_PerlIO_fill(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Fill = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 18
  %8 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Fill, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Fill7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 18
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Fill7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  %call8 = call i32* @__errno_location()
  store i32 22, i32* %call8, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_isutf8(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 32768
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = call i32* @__errno_location()
  store i32 9, i32* %call, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @Perl_PerlIO_eof(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.10

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Eof = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 19
  %8 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Eof, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Eof7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 19
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Eof7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call8 = call i64 @PerlIOBase_eof(%struct._PerlIO** %12)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, i32* %retval
  br label %return

if.else.10:                                       ; preds = %land.lhs.true, %entry
  %call11 = call i32* @__errno_location()
  store i32 9, i32* %call11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.6
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_eof(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 256
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  store i64 %conv2, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i64 1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i32 @Perl_PerlIO_error(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.10

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Error = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 20
  %8 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Error, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Error7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 20
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Error7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call8 = call i64 @PerlIOBase_error(%struct._PerlIO** %12)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, i32* %retval
  br label %return

if.else.10:                                       ; preds = %land.lhs.true, %entry
  %call11 = call i32* @__errno_location()
  store i32 9, i32* %call11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.6
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_error(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 2048
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  store i64 %conv2, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i64 1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define void @Perl_PerlIO_clearerr(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.8

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Clearerr = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 21
  %8 = load void (%struct._PerlIO**)*, void (%struct._PerlIO**)** %Clearerr, align 8
  %tobool5 = icmp ne void (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Clearerr7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 21
  %10 = load void (%struct._PerlIO**)*, void (%struct._PerlIO**)** %Clearerr7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void %10(%struct._PerlIO** %11)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIOBase_clearerr(%struct._PerlIO** %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.9

if.else.8:                                        ; preds = %land.lhs.true, %entry
  %call = call i32* @__errno_location()
  store i32 9, i32* %call, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @PerlIOBase_clearerr(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %n = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %n, align 8
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %5, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 2
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, -2305
  store i32 %and, i32* %flags, align 4
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %tobool2 = icmp ne %struct._PerlIO** %8, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %if.then
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %10 = load %struct._PerlIO*, %struct._PerlIO** %9, align 8
  %tobool4 = icmp ne %struct._PerlIO* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true.3
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  call void @Perl_PerlIO_clearerr(%struct._PerlIO** %11)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true.3, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_PerlIO_setlinebuf(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.8

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Setlinebuf = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 22
  %8 = load void (%struct._PerlIO**)*, void (%struct._PerlIO**)** %Setlinebuf, align 8
  %tobool5 = icmp ne void (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Setlinebuf7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 22
  %10 = load void (%struct._PerlIO**)*, void (%struct._PerlIO**)** %Setlinebuf7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void %10(%struct._PerlIO** %11)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIOBase_setlinebuf(%struct._PerlIO** %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.9

if.else.8:                                        ; preds = %land.lhs.true, %entry
  %call = call i32* @__errno_location()
  store i32 9, i32* %call, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @PerlIOBase_setlinebuf(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %or = or i32 %5, 524288
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_has_base(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_base = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 23
  %8 = load i8* (%struct._PerlIO**)*, i8* (%struct._PerlIO**)** %Get_base, align 8
  %cmp = icmp ne i8* (%struct._PerlIO**)* %8, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call = call i32* @__errno_location()
  store i32 22, i32* %call, align 4
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = call i32* @__errno_location()
  store i32 9, i32* %call5, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_fast_gets(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 4194304
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  %tab4 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %7, i32 0, i32 1
  %8 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab4, align 8
  store %struct._PerlIO_funcs* %8, %struct._PerlIO_funcs** %tab, align 8
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool5 = icmp ne %struct._PerlIO_funcs* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %10, i32 0, i32 27
  %11 = load void (%struct._PerlIO**, i8*, i64)*, void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8
  %cmp = icmp ne void (%struct._PerlIO**, i8*, i64)* %11, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call = call i32* @__errno_location()
  store i32 22, i32* %call, align 4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %call7 = call i32* @__errno_location()
  store i32 9, i32* %call7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_has_cntptr(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_ptr = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 25
  %8 = load i8* (%struct._PerlIO**)*, i8* (%struct._PerlIO**)** %Get_ptr, align 8
  %cmp = icmp ne i8* (%struct._PerlIO**)* %8, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_cnt = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 26
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Get_cnt, align 8
  %cmp5 = icmp ne i64 (%struct._PerlIO**)* %10, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.4
  %11 = phi i1 [ false, %if.then.4 ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call = call i32* @__errno_location()
  store i32 22, i32* %call, align 4
  br label %if.end.7

if.else:                                          ; preds = %land.lhs.true, %entry
  %call6 = call i32* @__errno_location()
  store i32 9, i32* %call6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %land.end
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_canset_cnt(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 27
  %8 = load void (%struct._PerlIO**, i8*, i64)*, void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8
  %cmp = icmp ne void (%struct._PerlIO**, i8*, i64)* %8, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call = call i32* @__errno_location()
  store i32 22, i32* %call, align 4
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = call i32* @__errno_location()
  store i32 9, i32* %call5, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i8*, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_base = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 23
  %8 = load i8* (%struct._PerlIO**)*, i8* (%struct._PerlIO**)** %Get_base, align 8
  %tobool5 = icmp ne i8* (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_base7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 23
  %10 = load i8* (%struct._PerlIO**)*, i8* (%struct._PerlIO**)** %Get_base7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* %10(%struct._PerlIO** %11)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  %call8 = call i32* @__errno_location()
  store i32 22, i32* %call8, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define i32 @Perl_PerlIO_get_bufsiz(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_bufsiz = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 24
  %8 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Get_bufsiz, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_bufsiz7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 24
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Get_bufsiz7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  %call8 = call i32* @__errno_location()
  store i32 22, i32* %call8, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i8* @Perl_PerlIO_get_ptr(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i8*, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_ptr = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 25
  %8 = load i8* (%struct._PerlIO**)*, i8* (%struct._PerlIO**)** %Get_ptr, align 8
  %tobool5 = icmp ne i8* (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_ptr7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 25
  %10 = load i8* (%struct._PerlIO**)*, i8* (%struct._PerlIO**)** %Get_ptr7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* %10(%struct._PerlIO** %11)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  %call8 = call i32* @__errno_location()
  store i32 22, i32* %call8, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_cnt = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 26
  %8 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Get_cnt, align 8
  %tobool5 = icmp ne i64 (%struct._PerlIO**)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Get_cnt7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 26
  %10 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Get_cnt7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %10(%struct._PerlIO** %11)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  %call8 = call i32* @__errno_location()
  store i32 22, i32* %call8, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define void @Perl_PerlIO_set_cnt(%struct._PerlIO** %f, i32 %cnt) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %cnt.addr = alloca i32, align 4
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %cnt, i32* %cnt.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.8

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 27
  %8 = load void (%struct._PerlIO**, i8*, i64)*, void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8
  %tobool5 = icmp ne void (%struct._PerlIO**, i8*, i64)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Set_ptrcnt7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 27
  %10 = load void (%struct._PerlIO**, i8*, i64)*, void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load i32, i32* %cnt.addr, align 4
  %conv = sext i32 %12 to i64
  call void %10(%struct._PerlIO** %11, i8* null, i64 %conv)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %call = call i32* @__errno_location()
  store i32 22, i32* %call, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_PerlIO_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i32 %cnt) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %ptr.addr = alloca i8*, align 8
  %cnt.addr = alloca i32, align 4
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %cnt, i32* %cnt.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else.8

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %tab2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 1
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab2, align 8
  store %struct._PerlIO_funcs* %5, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool3 = icmp ne %struct._PerlIO_funcs* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.then
  %7 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %7, i32 0, i32 27
  %8 = load void (%struct._PerlIO**, i8*, i64)*, void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8
  %tobool5 = icmp ne void (%struct._PerlIO**, i8*, i64)* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Set_ptrcnt7 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %9, i32 0, i32 27
  %10 = load void (%struct._PerlIO**, i8*, i64)*, void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt7, align 8
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load i8*, i8** %ptr.addr, align 8
  %13 = load i32, i32* %cnt.addr, align 4
  %conv = sext i32 %13 to i64
  call void %10(%struct._PerlIO** %11, i8* %12, i64 %conv)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %if.then
  %call = call i32* @__errno_location()
  store i32 22, i32* %call, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %entry
  %call9 = call i32* @__errno_location()
  store i32 9, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOUtf8_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %kind = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %3, i32 0, i32 3
  %4 = load i32, i32* %kind, align 4
  %and = and i32 %4, 32768
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %5, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 2
  %7 = load i32, i32* %flags, align 4
  %or = or i32 %7, 32768
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %9 = load %struct._PerlIO*, %struct._PerlIO** %8, align 8
  %flags4 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %9, i32 0, i32 2
  %10 = load i32, i32* %flags4, align 4
  %and5 = and i32 %10, -32769
  store i32 %and5, i32* %flags4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  store i64 0, i64* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %entry
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.end
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIORaw_open(%struct._PerlIO_funcs* %self, %struct.PerlIO_list_s* %layers, i64 %n, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %old, i32 %narg, %struct.sv** %args) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %self.addr = alloca %struct._PerlIO_funcs*, align 8
  %layers.addr = alloca %struct.PerlIO_list_s*, align 8
  %n.addr = alloca i64, align 8
  %mode.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %imode.addr = alloca i32, align 4
  %perm.addr = alloca i32, align 4
  %old.addr = alloca %struct._PerlIO**, align 8
  %narg.addr = alloca i32, align 4
  %args.addr = alloca %struct.sv**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  store %struct._PerlIO_funcs* %self, %struct._PerlIO_funcs** %self.addr, align 8
  store %struct.PerlIO_list_s* %layers, %struct.PerlIO_list_s** %layers.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %imode, i32* %imode.addr, align 4
  store i32 %perm, i32* %perm.addr, align 4
  store %struct._PerlIO** %old, %struct._PerlIO*** %old.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store %struct.sv** %args, %struct.sv*** %args.addr, align 8
  %call = call %struct._PerlIO_funcs* @PerlIO_default_layer(i32 0)
  store %struct._PerlIO_funcs* %call, %struct._PerlIO_funcs** %tab, align 8
  %0 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool = icmp ne %struct._PerlIO_funcs* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Open = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %1, i32 0, i32 6
  %2 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open, align 8
  %tobool1 = icmp ne %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Open2 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %3, i32 0, i32 6
  %4 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open2, align 8
  %5 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %6 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %7 = load i64, i64* %n.addr, align 8
  %sub = sub nsw i64 %7, 1
  %8 = load i8*, i8** %mode.addr, align 8
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load i32, i32* %imode.addr, align 4
  %11 = load i32, i32* %perm.addr, align 4
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %old.addr, align 8
  %13 = load i32, i32* %narg.addr, align 4
  %14 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %call3 = call %struct._PerlIO** %4(%struct._PerlIO_funcs* %5, %struct.PerlIO_list_s* %6, i64 %sub, i8* %8, i32 %9, i32 %10, i32 %11, %struct._PerlIO** %12, i32 %13, %struct.sv** %14)
  store %struct._PerlIO** %call3, %struct._PerlIO*** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call4 = call i32* @__errno_location()
  store i32 22, i32* %call4, align 4
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %15
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_popped(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i8* @PerlIO_modestr(%struct._PerlIO** %f, i8* %buf) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %buf.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %flags = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %3 = load %struct._PerlIO*, %struct._PerlIO** %2, align 8
  %tobool1 = icmp ne %struct._PerlIO* %3, null
  br i1 %tobool1, label %if.then, label %if.end.31

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %flags2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %5, i32 0, i32 2
  %6 = load i32, i32* %flags2, align 4
  %conv = zext i32 %6 to i64
  store i64 %conv, i64* %flags, align 8
  %7 = load i64, i64* %flags, align 8
  %and = and i64 %7, 8192
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  store i8 97, i8* %8, align 1
  %9 = load i64, i64* %flags, align 8
  %and5 = and i64 %9, 1024
  %tobool6 = icmp ne i64 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %10 = load i8*, i8** %s, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %s, align 8
  store i8 43, i8* %10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.4
  br label %if.end.30

if.else:                                          ; preds = %if.then
  %11 = load i64, i64* %flags, align 8
  %and9 = and i64 %11, 1024
  %tobool10 = icmp ne i64 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %if.else
  %12 = load i8*, i8** %s, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr12, i8** %s, align 8
  store i8 114, i8* %12, align 1
  %13 = load i64, i64* %flags, align 8
  %and13 = and i64 %13, 512
  %tobool14 = icmp ne i64 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.11
  %14 = load i8*, i8** %s, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr16, i8** %s, align 8
  store i8 43, i8* %14, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.then.11
  br label %if.end.29

if.else.18:                                       ; preds = %if.else
  %15 = load i64, i64* %flags, align 8
  %and19 = and i64 %15, 512
  %tobool20 = icmp ne i64 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.else.18
  %16 = load i8*, i8** %s, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr22, i8** %s, align 8
  store i8 119, i8* %16, align 1
  %17 = load i64, i64* %flags, align 8
  %and23 = and i64 %17, 1024
  %tobool24 = icmp ne i64 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.21
  %18 = load i8*, i8** %s, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr26, i8** %s, align 8
  store i8 43, i8* %18, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.else.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.17
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true, %entry
  %19 = load i8*, i8** %s, align 8
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %buf.addr, align 8
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  %l = alloca %struct._PerlIO*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  store %struct._PerlIO* %1, %struct._PerlIO** %l, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %2, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, -13825
  store i32 %and, i32* %flags, align 4
  %4 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %4, i32 0, i32 27
  %5 = load void (%struct._PerlIO**, i8*, i64)*, void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8
  %cmp = icmp ne void (%struct._PerlIO**, i8*, i64)* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags1 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 2
  %7 = load i32, i32* %flags1, align 4
  %or = or i32 %7, 4194304
  store i32 %or, i32* %flags1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %mode.addr, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load i8*, i8** %mode.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv, 35
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %11 = load i8*, i8** %mode.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv5 = sext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv5, 73
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.then.2
  %13 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %mode.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  %14 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr10, i8** %mode.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv11 = sext i8 %15 to i32
  switch i32 %conv11, label %sw.default [
    i32 114, label %sw.bb
    i32 97, label %sw.bb.14
    i32 119, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end.9
  %16 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags12 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %16, i32 0, i32 2
  %17 = load i32, i32* %flags12, align 4
  %or13 = or i32 %17, 1024
  store i32 %or13, i32* %flags12, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.9
  %18 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags15 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %18, i32 0, i32 2
  %19 = load i32, i32* %flags15, align 4
  %or16 = or i32 %19, 8704
  store i32 %or16, i32* %flags15, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.9
  %20 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags18 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %20, i32 0, i32 2
  %21 = load i32, i32* %flags18, align 4
  %or19 = or i32 %21, 4608
  store i32 %or19, i32* %flags18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.9
  %call = call i32* @__errno_location()
  store i32 22, i32* %call, align 4
  store i64 -1, i64* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.17, %sw.bb.14, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.34, %sw.epilog
  %22 = load i8*, i8** %mode.addr, align 8
  %23 = load i8, i8* %22, align 1
  %tobool20 = icmp ne i8 %23, 0
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr21, i8** %mode.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv22 = sext i8 %25 to i32
  switch i32 %conv22, label %sw.default.32 [
    i32 43, label %sw.bb.23
    i32 98, label %sw.bb.26
    i32 116, label %sw.bb.29
  ]

sw.bb.23:                                         ; preds = %while.body
  %26 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags24 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %26, i32 0, i32 2
  %27 = load i32, i32* %flags24, align 4
  %or25 = or i32 %27, 1536
  store i32 %or25, i32* %flags24, align 4
  br label %sw.epilog.34

sw.bb.26:                                         ; preds = %while.body
  %28 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags27 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %28, i32 0, i32 2
  %29 = load i32, i32* %flags27, align 4
  %and28 = and i32 %29, -16385
  store i32 %and28, i32* %flags27, align 4
  br label %sw.epilog.34

sw.bb.29:                                         ; preds = %while.body
  %30 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags30 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %30, i32 0, i32 2
  %31 = load i32, i32* %flags30, align 4
  %or31 = or i32 %31, 16384
  store i32 %or31, i32* %flags30, align 4
  br label %sw.epilog.34

sw.default.32:                                    ; preds = %while.body
  %call33 = call i32* @__errno_location()
  store i32 22, i32* %call33, align 4
  store i64 -1, i64* %retval
  br label %return

sw.epilog.34:                                     ; preds = %sw.bb.29, %sw.bb.26, %sw.bb.23
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.43

if.else:                                          ; preds = %if.end
  %32 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %32, i32 0, i32 0
  %33 = load %struct._PerlIO*, %struct._PerlIO** %next, align 8
  %tobool35 = icmp ne %struct._PerlIO* %33, null
  br i1 %tobool35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.else
  %34 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %next37 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %34, i32 0, i32 0
  %35 = load %struct._PerlIO*, %struct._PerlIO** %next37, align 8
  %flags38 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %35, i32 0, i32 2
  %36 = load i32, i32* %flags38, align 4
  %and39 = and i32 %36, 13824
  %37 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags40 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %37, i32 0, i32 2
  %38 = load i32, i32* %flags40, align 4
  %or41 = or i32 %38, %and39
  store i32 %or41, i32* %flags40, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %while.end
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.43, %sw.default.32, %sw.default
  %39 = load i64, i64* %retval
  ret i64 %39
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %buf = alloca i8*, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %unread = alloca i64, align 8
  %avail = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i8*, i8** %vbuf.addr, align 8
  %1 = load i64, i64* %count.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %buf, align 8
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %3 = load %struct._PerlIO*, %struct._PerlIO** %2, align 8
  %4 = bitcast %struct._PerlIO* %3 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %4, %struct.PerlIOBuf** %b, align 8
  store i64 0, i64* %unread, align 8
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %5, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 2
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 131072
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %9, i32 0, i32 1
  %10 = load i8*, i8** %buf1, align 8
  %tobool2 = icmp ne i8* %10, null
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call4 = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %11)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %12 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf6 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %12, i32 0, i32 1
  %13 = load i8*, i8** %buf6, align 8
  %tobool7 = icmp ne i8* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.38

if.then.8:                                        ; preds = %if.end.5
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %15 = load %struct._PerlIO*, %struct._PerlIO** %14, align 8
  %flags9 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %15, i32 0, i32 2
  %16 = load i32, i32* %flags9, align 4
  %and10 = and i32 %16, 262144
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.8
  %17 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %17, i32 0, i32 3
  %18 = load i8*, i8** %ptr, align 8
  %19 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf13 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %19, i32 0, i32 1
  %20 = load i8*, i8** %buf13, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %avail, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.8
  %21 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %21, i32 0, i32 5
  %22 = load i64, i64* %bufsiz, align 8
  store i64 %22, i64* %avail, align 8
  %23 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf14 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %23, i32 0, i32 1
  %24 = load i8*, i8** %buf14, align 8
  %25 = load i64, i64* %avail, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %24, i64 %25
  %26 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %26, i32 0, i32 2
  store i8* %add.ptr15, i8** %end, align 8
  %27 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end16 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %27, i32 0, i32 2
  %28 = load i8*, i8** %end16, align 8
  %29 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr17 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %29, i32 0, i32 3
  store i8* %28, i8** %ptr17, align 8
  %30 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %31 = load %struct._PerlIO*, %struct._PerlIO** %30, align 8
  %flags18 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %31, i32 0, i32 2
  %32 = load i32, i32* %flags18, align 4
  %or = or i32 %32, 262144
  store i32 %or, i32* %flags18, align 4
  %33 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz19 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %33, i32 0, i32 5
  %34 = load i64, i64* %bufsiz19, align 8
  %35 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %35, i32 0, i32 4
  %36 = load i64, i64* %posn, align 8
  %sub = sub i64 %36, %34
  store i64 %sub, i64* %posn, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.12
  %37 = load i64, i64* %avail, align 8
  %38 = load i64, i64* %count.addr, align 8
  %cmp = icmp sgt i64 %37, %38
  br i1 %cmp, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.20
  %39 = load i64, i64* %count.addr, align 8
  store i64 %39, i64* %avail, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.20
  %40 = load i64, i64* %avail, align 8
  %cmp23 = icmp sgt i64 %40, 0
  br i1 %cmp23, label %if.then.24, label %if.end.37

if.then.24:                                       ; preds = %if.end.22
  %41 = load i64, i64* %avail, align 8
  %42 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr25 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %42, i32 0, i32 3
  %43 = load i8*, i8** %ptr25, align 8
  %idx.neg = sub i64 0, %41
  %add.ptr26 = getelementptr inbounds i8, i8* %43, i64 %idx.neg
  store i8* %add.ptr26, i8** %ptr25, align 8
  %44 = load i64, i64* %avail, align 8
  %45 = load i8*, i8** %buf, align 8
  %idx.neg27 = sub i64 0, %44
  %add.ptr28 = getelementptr inbounds i8, i8* %45, i64 %idx.neg27
  store i8* %add.ptr28, i8** %buf, align 8
  %46 = load i8*, i8** %buf, align 8
  %47 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr29 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %47, i32 0, i32 3
  %48 = load i8*, i8** %ptr29, align 8
  %cmp30 = icmp ne i8* %46, %48
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.24
  %49 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr32 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %49, i32 0, i32 3
  %50 = load i8*, i8** %ptr32, align 8
  %51 = load i8*, i8** %buf, align 8
  %52 = load i64, i64* %avail, align 8
  %mul = mul i64 %52, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 %mul, i32 1, i1 false)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.then.24
  %53 = load i64, i64* %avail, align 8
  %54 = load i64, i64* %count.addr, align 8
  %sub34 = sub i64 %54, %53
  store i64 %sub34, i64* %count.addr, align 8
  %55 = load i64, i64* %avail, align 8
  %56 = load i64, i64* %unread, align 8
  %add = add nsw i64 %56, %55
  store i64 %add, i64* %unread, align 8
  %57 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %58 = load %struct._PerlIO*, %struct._PerlIO** %57, align 8
  %flags35 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %58, i32 0, i32 2
  %59 = load i32, i32* %flags35, align 4
  %and36 = and i32 %59, -257
  store i32 %and36, i32* %flags35, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.33, %if.end.22
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.5
  %60 = load i64, i64* %count.addr, align 8
  %cmp39 = icmp ugt i64 %60, 0
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %61 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %62 = load i8*, i8** %vbuf.addr, align 8
  %63 = load i64, i64* %count.addr, align 8
  %call41 = call i64 @PerlIOBase_unread(%struct._PerlIO** %61, i8* %62, i64 %63)
  %64 = load i64, i64* %unread, align 8
  %add42 = add nsw i64 %64, %call41
  store i64 %add42, i64* %unread, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.38
  %65 = load i64, i64* %unread, align 8
  ret i64 %65
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_noop_ok(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBase_noop_fail(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  ret i64 -1
}

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #2

; Function Attrs: nounwind uwtable
define void @PerlIO_init() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @PerlIOUnix_refcnt_inc(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp slt i32 %1, 2048
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2048 x i32], [2048 x i32]* @PerlIO_fd_refcnt, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %arrayidx, align 4
  %4 = load i32, i32* %fd.addr, align 4
  %5 = load i32, i32* %fd.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2048 x i32], [2048 x i32]* @PerlIO_fd_refcnt, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i32 %4, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PerlIOUnix_refcnt_dec(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 0, i32* %cnt, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp slt i32 %1, 2048
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2048 x i32], [2048 x i32]* @PerlIO_fd_refcnt, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %arrayidx, align 4
  store i32 %dec, i32* %cnt, align 4
  %4 = load i32, i32* %fd.addr, align 4
  %5 = load i32, i32* %cnt, align 4
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i32 %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* %cnt, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @PerlIO_cleanup() #0 {
entry:
  %i = alloca i32, align 4
  call void (i8*, ...) @PerlIO_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  call void @PerlIOUnix_refcnt_inc(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @PerlIO_cleantable(%struct._PerlIO*** @PL_perlio)
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.4, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end.6

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %call = call i32 @PerlIOUnix_refcnt_dec(i32 %4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.body.3
  %5 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond.1

for.end.6:                                        ; preds = %for.cond.1
  %6 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_known_layers, align 8
  %tobool = icmp ne %struct.PerlIO_list_s* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.6
  %7 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_known_layers, align 8
  call void @PerlIO_list_free(%struct.PerlIO_list_s* %7)
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** @PL_known_layers, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.6
  %8 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  %tobool7 = icmp ne %struct.PerlIO_list_s* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %9 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  call void @PerlIO_list_free(%struct.PerlIO_list_s* %9)
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PerlIOUnix_oflags(i8* %mode) #0 {
entry:
  %mode.addr = alloca i8*, align 8
  %oflags = alloca i32, align 4
  store i8* %mode, i8** %mode.addr, align 8
  store i32 -1, i32* %oflags, align 4
  %0 = load i8*, i8** %mode.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 73
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %mode.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 35
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %mode.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i8*, i8** %mode.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  switch i32 %conv5, label %sw.epilog [
    i32 114, label %sw.bb
    i32 119, label %sw.bb.13
    i32 97, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %oflags, align 4
  %7 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %mode.addr, align 8
  %8 = load i8, i8* %incdec.ptr6, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 43
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.bb
  store i32 2, i32* %oflags, align 4
  %9 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr11, i8** %mode.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %sw.bb
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  store i32 576, i32* %oflags, align 4
  %10 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr14, i8** %mode.addr, align 8
  %11 = load i8, i8* %incdec.ptr14, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 43
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %sw.bb.13
  %12 = load i32, i32* %oflags, align 4
  %or = or i32 %12, 2
  store i32 %or, i32* %oflags, align 4
  %13 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr19, i8** %mode.addr, align 8
  br label %if.end.21

if.else:                                          ; preds = %sw.bb.13
  %14 = load i32, i32* %oflags, align 4
  %or20 = or i32 %14, 1
  store i32 %or20, i32* %oflags, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.18
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end
  store i32 1088, i32* %oflags, align 4
  %15 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr23, i8** %mode.addr, align 8
  %16 = load i8, i8* %incdec.ptr23, align 1
  %conv24 = sext i8 %16 to i32
  %cmp25 = icmp eq i32 %conv24, 43
  br i1 %cmp25, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %sw.bb.22
  %17 = load i32, i32* %oflags, align 4
  %or28 = or i32 %17, 2
  store i32 %or28, i32* %oflags, align 4
  %18 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr29, i8** %mode.addr, align 8
  br label %if.end.32

if.else.30:                                       ; preds = %sw.bb.22
  %19 = load i32, i32* %oflags, align 4
  %or31 = or i32 %19, 1
  store i32 %or31, i32* %oflags, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.27
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.32, %if.end.21, %if.end.12
  %20 = load i8*, i8** %mode.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv33 = sext i8 %21 to i32
  %cmp34 = icmp eq i32 %conv33, 98
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %sw.epilog
  %22 = load i32, i32* %oflags, align 4
  store i32 %22, i32* %oflags, align 4
  %23 = load i32, i32* %oflags, align 4
  store i32 %23, i32* %oflags, align 4
  %24 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr37, i8** %mode.addr, align 8
  br label %if.end.45

if.else.38:                                       ; preds = %sw.epilog
  %25 = load i8*, i8** %mode.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv39 = sext i8 %26 to i32
  %cmp40 = icmp eq i32 %conv39, 116
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.else.38
  %27 = load i32, i32* %oflags, align 4
  store i32 %27, i32* %oflags, align 4
  %28 = load i32, i32* %oflags, align 4
  store i32 %28, i32* %oflags, align 4
  %29 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr43, i8** %mode.addr, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.else.38
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.36
  %30 = load i32, i32* %oflags, align 4
  store i32 %30, i32* %oflags, align 4
  %31 = load i8*, i8** %mode.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv46 = sext i8 %32 to i32
  %tobool = icmp ne i32 %conv46, 0
  br i1 %tobool, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.end.45
  %33 = load i32, i32* %oflags, align 4
  %cmp48 = icmp eq i32 %33, -1
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.47, %if.end.45
  %call = call i32* @__errno_location()
  store i32 22, i32* %call, align 4
  store i32 -1, i32* %oflags, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %lor.lhs.false.47
  %34 = load i32, i32* %oflags, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOUnix_fileno(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOUnix*
  %fd = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %2, i32 0, i32 1
  %3 = load i32, i32* %fd, align 4
  %conv = sext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOUnix_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  %code = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %2 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %3 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %call = call i64 @PerlIOBase_pushed(%struct._PerlIO** %0, i8* %1, %struct.sv* %2, %struct._PerlIO_funcs* %3)
  store i64 %call, i64* %code, align 8
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %5, i32 0, i32 0
  %6 = load %struct._PerlIO*, %struct._PerlIO** %next, align 8
  %tobool = icmp ne %struct._PerlIO* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %8 = load %struct._PerlIO*, %struct._PerlIO** %7, align 8
  %next1 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 0
  %call2 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %next1)
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %11 = load %struct._PerlIO*, %struct._PerlIO** %10, align 8
  %next3 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %11, i32 0, i32 0
  %call4 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %next3)
  %12 = load i8*, i8** %mode.addr, align 8
  %tobool5 = icmp ne i8* %12, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %13 = load i8*, i8** %mode.addr, align 8
  %call6 = call i32 @PerlIOUnix_oflags(i8* %13)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call6, %cond.true ], [ -1, %cond.false ]
  call void @PerlIOUnix_setfd(%struct._PerlIO** %9, i32 %call4, i32 %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %15 = load %struct._PerlIO*, %struct._PerlIO** %14, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %15, i32 0, i32 2
  %16 = load i32, i32* %flags, align 4
  %or = or i32 %16, 2097152
  store i32 %or, i32* %flags, align 4
  %17 = load i64, i64* %code, align 8
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define internal void @PerlIOUnix_setfd(%struct._PerlIO** %f, i32 %fd, i32 %imode) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %fd.addr = alloca i32, align 4
  %imode.addr = alloca i32, align 4
  %s = alloca %struct.PerlIOUnix*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %imode, i32* %imode.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOUnix*
  store %struct.PerlIOUnix* %2, %struct.PerlIOUnix** %s, align 8
  %3 = load i32, i32* %fd.addr, align 4
  %4 = load %struct.PerlIOUnix*, %struct.PerlIOUnix** %s, align 8
  %fd1 = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %4, i32 0, i32 1
  store i32 %3, i32* %fd1, align 4
  %5 = load i32, i32* %imode.addr, align 4
  %6 = load %struct.PerlIOUnix*, %struct.PerlIOUnix** %s, align 8
  %oflags = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %6, i32 0, i32 2
  store i32 %5, i32* %oflags, align 4
  %7 = load i32, i32* %fd.addr, align 4
  call void @PerlIOUnix_refcnt_inc(i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOUnix_seek(%struct._PerlIO** %f, i64 %offset, i32 %whence) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %new_loc = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOUnix*
  %fd1 = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  store i32 %3, i32* %fd, align 4
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %5, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 16777216
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32* @__errno_location()
  store i32 29, i32* %call, align 4
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %fd, align 4
  %8 = load i64, i64* %offset.addr, align 8
  %9 = load i32, i32* %whence.addr, align 4
  %call2 = call i64 @lseek(i32 %7, i64 %8, i32 %9)
  store i64 %call2, i64* %new_loc, align 8
  %10 = load i64, i64* %new_loc, align 8
  %cmp = icmp eq i64 %10, -1
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load %struct._PerlIO*, %struct._PerlIO** %11, align 8
  %flags5 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %12, i32 0, i32 2
  %13 = load i32, i32* %flags5, align 4
  %and6 = and i32 %13, -257
  store i32 %and6, i32* %flags5, align 4
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %14 = load i64, i64* %retval
  ret i64 %14
}

declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIOUnix_open(%struct._PerlIO_funcs* %self, %struct.PerlIO_list_s* %layers, i64 %n, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** %args) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %self.addr = alloca %struct._PerlIO_funcs*, align 8
  %layers.addr = alloca %struct.PerlIO_list_s*, align 8
  %n.addr = alloca i64, align 8
  %mode.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %imode.addr = alloca i32, align 4
  %perm.addr = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %narg.addr = alloca i32, align 4
  %args.addr = alloca %struct.sv**, align 8
  %path = alloca i8*, align 8
  store %struct._PerlIO_funcs* %self, %struct._PerlIO_funcs** %self.addr, align 8
  store %struct.PerlIO_list_s* %layers, %struct.PerlIO_list_s** %layers.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %imode, i32* %imode.addr, align 4
  store i32 %perm, i32* %perm.addr, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store %struct.sv** %args, %struct.sv*** %args.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end.4

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 2097152
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  %tab = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %7, i32 0, i32 1
  %8 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Close = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %8, i32 0, i32 16
  %9 = load i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)** %Close, align 8
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 %9(%struct._PerlIO** %10)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %land.lhs.true, %entry
  %11 = load i32, i32* %narg.addr, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %if.end.4
  %12 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %13 = load %struct.sv*, %struct.sv** %12, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and6 = and i32 %14, 262144
  %cmp7 = icmp eq i32 %and6, 262144
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %15 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %16 = load %struct.sv*, %struct.sv** %15, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any, align 8
  %18 = bitcast i8* %17 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %18, i32 0, i32 0
  %19 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %20 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %21 = load %struct.sv*, %struct.sv** %20, align 8
  %call8 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %19, %cond.true ], [ %call8, %cond.false ]
  store i8* %cond, i8** %path, align 8
  %22 = load i8*, i8** %mode.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv = sext i8 %23 to i32
  %cmp9 = icmp eq i32 %conv, 35
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %cond.end
  %24 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %mode.addr, align 8
  br label %if.end.13

if.else:                                          ; preds = %cond.end
  %25 = load i8*, i8** %mode.addr, align 8
  %call12 = call i32 @PerlIOUnix_oflags(i8* %25)
  store i32 %call12, i32* %imode.addr, align 4
  store i32 438, i32* %perm.addr, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  %26 = load i32, i32* %imode.addr, align 4
  %cmp14 = icmp ne i32 %26, -1
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %27 = load i8*, i8** %path, align 8
  %28 = load i32, i32* %imode.addr, align 4
  %29 = load i32, i32* %perm.addr, align 4
  %call17 = call i32 (i8*, i32, ...) @open(i8* %27, i32 %28, i32 %29)
  store i32 %call17, i32* %fd.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.4
  %30 = load i32, i32* %fd.addr, align 4
  %cmp20 = icmp sge i32 %30, 0
  br i1 %cmp20, label %if.then.22, label %if.else.50

if.then.22:                                       ; preds = %if.end.19
  %31 = load i8*, i8** %mode.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv23 = sext i8 %32 to i32
  %cmp24 = icmp eq i32 %conv23, 73
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.22
  %33 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr27, i8** %mode.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.22
  %34 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool29 = icmp ne %struct._PerlIO** %34, null
  br i1 %tobool29, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %call31 = call %struct._PerlIO** @PerlIO_allocate()
  store %struct._PerlIO** %call31, %struct._PerlIO*** %f.addr, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %35 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool33 = icmp ne %struct._PerlIO** %35, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.then.36

land.lhs.true.34:                                 ; preds = %if.end.32
  %36 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %37 = load %struct._PerlIO*, %struct._PerlIO** %36, align 8
  %tobool35 = icmp ne %struct._PerlIO* %37, null
  br i1 %tobool35, label %if.end.42, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.34, %if.end.32
  %38 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %39 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %self.addr, align 8
  %40 = load i8*, i8** %mode.addr, align 8
  %41 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %42 = load i64, i64* %n.addr, align 8
  %call37 = call %struct.sv* @PerlIO_arg_fetch(%struct.PerlIO_list_s* %41, i64 %42)
  %call38 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %38, %struct._PerlIO_funcs* %39, i8* %40, %struct.sv* %call37)
  store %struct._PerlIO** %call38, %struct._PerlIO*** %f.addr, align 8
  %tobool39 = icmp ne %struct._PerlIO** %call38, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.then.36
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.41:                                        ; preds = %if.then.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true.34
  %43 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %44 = load i32, i32* %fd.addr, align 4
  %45 = load i32, i32* %imode.addr, align 4
  call void @PerlIOUnix_setfd(%struct._PerlIO** %43, i32 %44, i32 %45)
  %46 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %47 = load %struct._PerlIO*, %struct._PerlIO** %46, align 8
  %flags43 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %47, i32 0, i32 2
  %48 = load i32, i32* %flags43, align 4
  %or = or i32 %48, 2097152
  store i32 %or, i32* %flags43, align 4
  %49 = load i8*, i8** %mode.addr, align 8
  %50 = load i8, i8* %49, align 1
  %conv44 = sext i8 %50 to i32
  %cmp45 = icmp eq i32 %conv44, 97
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.42
  %51 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call48 = call i64 @PerlIOUnix_seek(%struct._PerlIO** %51, i64 0, i32 2)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.42
  %52 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %52, %struct._PerlIO*** %retval
  br label %return

if.else.50:                                       ; preds = %if.end.19
  %53 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool51 = icmp ne %struct._PerlIO** %53, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.50
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.else.50
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.end.49, %if.then.40
  %54 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %54
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIOUnix_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %o.addr = alloca %struct._PerlIO**, align 8
  %param.addr = alloca %struct.clone_params*, align 8
  %flags.addr = alloca i32, align 4
  %os = alloca %struct.PerlIOUnix*, align 8
  %fd = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %o, %struct._PerlIO*** %o.addr, align 8
  store %struct.clone_params* %param, %struct.clone_params** %param.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOUnix*
  store %struct.PerlIOUnix* %2, %struct.PerlIOUnix** %os, align 8
  %3 = load %struct.PerlIOUnix*, %struct.PerlIOUnix** %os, align 8
  %fd1 = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %3, i32 0, i32 1
  %4 = load i32, i32* %fd1, align 4
  store i32 %4, i32* %fd, align 4
  %5 = load i32, i32* %flags.addr, align 4
  %and = and i32 %5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %fd, align 4
  %call = call i32 @dup(i32 %6)
  store i32 %call, i32* %fd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %fd, align 4
  %cmp2 = icmp slt i32 %8, 2048
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %land.lhs.true
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %11 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %12 = load i32, i32* %flags.addr, align 4
  %call4 = call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %9, %struct._PerlIO** %10, %struct.clone_params* %11, i32 %12)
  store %struct._PerlIO** %call4, %struct._PerlIO*** %f.addr, align 8
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool5 = icmp ne %struct._PerlIO** %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %15 = load i32, i32* %fd, align 4
  %16 = load %struct.PerlIOUnix*, %struct.PerlIOUnix** %os, align 8
  %oflags = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %16, i32 0, i32 2
  %17 = load i32, i32* %oflags, align 4
  call void @PerlIOUnix_setfd(%struct._PerlIO** %14, i32 %15, i32 %17)
  %18 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %18, %struct._PerlIO*** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %land.lhs.true, %if.end
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6
  %19 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %19
}

declare i32 @dup(i32) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOUnix_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOUnix*
  %fd1 = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  store i32 %3, i32* %fd, align 4
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %5, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %8 = load %struct._PerlIO*, %struct._PerlIO** %7, align 8
  %flags2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 2
  %9 = load i32, i32* %flags2, align 4
  %and3 = and i32 %9, 2304
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.27
  %10 = load i32, i32* %fd, align 4
  %11 = load i8*, i8** %vbuf.addr, align 8
  %12 = load i64, i64* %count.addr, align 8
  %call = call i64 @read(i32 %10, i8* %11, i64 %12)
  store i64 %call, i64* %len, align 8
  %13 = load i64, i64* %len, align 8
  %cmp = icmp sge i64 %13, 0
  br i1 %cmp, label %if.then.8, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %while.body
  %call6 = call i32* @__errno_location()
  %14 = load i32, i32* %call6, align 4
  %cmp7 = icmp ne i32 %14, 4
  br i1 %cmp7, label %if.then.8, label %if.end.24

if.then.8:                                        ; preds = %lor.lhs.false.5, %while.body
  %15 = load i64, i64* %len, align 8
  %cmp9 = icmp slt i64 %15, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %call11 = call i32* @__errno_location()
  %16 = load i32, i32* %call11, align 4
  %cmp12 = icmp ne i32 %16, 11
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %18 = load %struct._PerlIO*, %struct._PerlIO** %17, align 8
  %flags14 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %18, i32 0, i32 2
  %19 = load i32, i32* %flags14, align 4
  %or = or i32 %19, 2048
  store i32 %or, i32* %flags14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.23

if.else:                                          ; preds = %if.then.8
  %20 = load i64, i64* %len, align 8
  %cmp16 = icmp eq i64 %20, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.else
  %21 = load i64, i64* %count.addr, align 8
  %cmp17 = icmp ne i64 %21, 0
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %land.lhs.true
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %23 = load %struct._PerlIO*, %struct._PerlIO** %22, align 8
  %flags19 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %23, i32 0, i32 2
  %24 = load i32, i32* %flags19, align 4
  %or20 = or i32 %24, 256
  store i32 %or20, i32* %flags19, align 4
  %call21 = call i32* @__errno_location()
  store i32 0, i32* %call21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %land.lhs.true, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.15
  %25 = load i64, i64* %len, align 8
  store i64 %25, i64* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false.5
  %26 = load i32, i32* @PL_sig_pending, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  call void @Perl_despatch_signals()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  br label %while.body

return:                                           ; preds = %if.end.23, %if.then
  %27 = load i64, i64* %retval
  ret i64 %27
}

declare i64 @read(i32, i8*, i64) #2

declare void @Perl_despatch_signals() #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOUnix_write(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOUnix*
  %fd1 = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  store i32 %3, i32* %fd, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.12
  %4 = load i32, i32* %fd, align 4
  %5 = load i8*, i8** %vbuf.addr, align 8
  %6 = load i64, i64* %count.addr, align 8
  %call = call i64 @write(i32 %4, i8* %5, i64 %6)
  store i64 %call, i64* %len, align 8
  %7 = load i64, i64* %len, align 8
  %cmp = icmp sge i64 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call2 = call i32* @__errno_location()
  %8 = load i32, i32* %call2, align 4
  %cmp3 = icmp ne i32 %8, 4
  br i1 %cmp3, label %if.then, label %if.end.10

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %9 = load i64, i64* %len, align 8
  %cmp4 = icmp slt i64 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.then
  %call6 = call i32* @__errno_location()
  %10 = load i32, i32* %call6, align 4
  %cmp7 = icmp ne i32 %10, 11
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.5
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load %struct._PerlIO*, %struct._PerlIO** %11, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %12, i32 0, i32 2
  %13 = load i32, i32* %flags, align 4
  %or = or i32 %13, 2048
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %14 = load i64, i64* %len, align 8
  ret i64 %14

if.end.10:                                        ; preds = %lor.lhs.false
  %15 = load i32, i32* @PL_sig_pending, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.10
  call void @Perl_despatch_signals()
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.10
  br label %while.body
}

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOUnix_tell(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOUnix*
  %fd = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %2, i32 0, i32 1
  %3 = load i32, i32* %fd, align 4
  %call = call i64 @lseek(i32 %3, i64 0, i32 1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOUnix_close(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %fd = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOUnix*
  %fd1 = getelementptr inbounds %struct.PerlIOUnix, %struct.PerlIOUnix* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  store i32 %3, i32* %fd, align 4
  store i32 0, i32* %code, align 4
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %5, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 2097152
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %fd, align 4
  %call = call i32 @PerlIOUnix_refcnt_dec(i32 %7)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %9 = load %struct._PerlIO*, %struct._PerlIO** %8, align 8
  %flags3 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %9, i32 0, i32 2
  %10 = load i32, i32* %flags3, align 4
  %and4 = and i32 %10, -2097153
  store i32 %and4, i32* %flags3, align 4
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.else:                                          ; preds = %entry
  %call5 = call i32* @__errno_location()
  store i32 9, i32* %call5, align 4
  store i64 -1, i64* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end.6
  %11 = load i32, i32* %fd, align 4
  %call7 = call i32 @close(i32 %11)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call9 = call i32* @__errno_location()
  %12 = load i32, i32* %call9, align 4
  %cmp10 = icmp ne i32 %12, 4
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body
  store i32 -1, i32* %code, align 4
  br label %while.end

if.end.12:                                        ; preds = %while.body
  %13 = load i32, i32* @PL_sig_pending, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  call void @Perl_despatch_signals()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  br label %while.cond

while.end:                                        ; preds = %if.then.11, %while.cond
  %14 = load i32, i32* %code, align 4
  %cmp16 = icmp eq i32 %14, 0
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %while.end
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %16 = load %struct._PerlIO*, %struct._PerlIO** %15, align 8
  %flags18 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %16, i32 0, i32 2
  %17 = load i32, i32* %flags18, align 4
  %and19 = and i32 %17, -2097153
  store i32 %and19, i32* %flags18, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %while.end
  %18 = load i32, i32* %code, align 4
  %conv = sext i32 %18 to i64
  store i64 %conv, i64* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else, %if.then.2
  %19 = load i64, i64* %retval
  ret i64 %19
}

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_fileno(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %s = alloca %struct._IO_FILE*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %5 = bitcast %struct._PerlIO* %4 to %struct.PerlIOStdio*
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %5, i32 0, i32 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** %s, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %7)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %call4 = call i32* @__errno_location()
  store i32 9, i32* %call4, align 4
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i8* @PerlIOStdio_mode(i8* %mode, i8* %tmode) #0 {
entry:
  %mode.addr = alloca i8*, align 8
  %tmode.addr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i8* %tmode, i8** %tmode.addr, align 8
  %0 = load i8*, i8** %tmode.addr, align 8
  store i8* %0, i8** %ret, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i8*, i8** %mode.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %mode.addr, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %tmode.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr2, i8** %tmode.addr, align 8
  store i8 %5, i8* %6, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %7 = load i8*, i8** %tmode.addr, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %ret, align 8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  %n = alloca %struct._PerlIO**, align 8
  %toptab = alloca %struct._PerlIO_funcs*, align 8
  %fd = alloca i32, align 4
  %tmode = alloca [8 x i8], align 1
  %stdio = alloca %struct._IO_FILE*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.20

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %n, align 8
  %tobool3 = icmp ne %struct._PerlIO** %next, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.20

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %5, align 8
  %next5 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 0
  store %struct._PerlIO** %next5, %struct._PerlIO*** %n, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %next5, align 8
  %tobool6 = icmp ne %struct._PerlIO* %7, null
  br i1 %tobool6, label %if.then, label %if.end.20

if.then:                                          ; preds = %land.lhs.true.4
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %9 = load %struct._PerlIO*, %struct._PerlIO** %8, align 8
  %tab7 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %9, i32 0, i32 1
  %10 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab7, align 8
  store %struct._PerlIO_funcs* %10, %struct._PerlIO_funcs** %toptab, align 8
  %11 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %toptab, align 8
  %12 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %cmp = icmp eq %struct._PerlIO_funcs* %11, %12
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIO_pop(%struct._PerlIO** %13)
  store i64 0, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %14)
  store i32 %call, i32* %fd, align 4
  %15 = load i32, i32* %fd, align 4
  %cmp9 = icmp sge i32 %15, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.18

land.lhs.true.10:                                 ; preds = %if.else
  %16 = load i32, i32* %fd, align 4
  %17 = load i8*, i8** %mode.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %tmode, i32 0, i32 0
  %call11 = call i8* @PerlIOStdio_mode(i8* %17, i8* %arraydecay)
  store i8* %call11, i8** %mode.addr, align 8
  %call12 = call %struct._IO_FILE* @fdopen(i32 %16, i8* %call11)
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %stdio, align 8
  %tobool13 = icmp ne %struct._IO_FILE* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %land.lhs.true.10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %19 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %20 = load %struct._PerlIO*, %struct._PerlIO** %19, align 8
  %21 = bitcast %struct._PerlIO* %20 to %struct.PerlIOStdio*
  %stdio15 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %21, i32 0, i32 1
  store %struct._IO_FILE* %18, %struct._IO_FILE** %stdio15, align 8
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %23 = load %struct._PerlIO*, %struct._PerlIO** %22, align 8
  %next16 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %23, i32 0, i32 0
  %call17 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %next16)
  br label %if.end

if.else.18:                                       ; preds = %land.lhs.true.10, %if.else
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %24 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %25 = load i8*, i8** %mode.addr, align 8
  %26 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %27 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %call21 = call i64 @PerlIOBase_pushed(%struct._PerlIO** %24, i8* %25, %struct.sv* %26, %struct._PerlIO_funcs* %27)
  store i64 %call21, i64* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.18, %if.then.8
  %28 = load i64, i64* %retval
  ret i64 %28
}

declare %struct._IO_FILE* @fdopen(i32, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIO_importFILE(%struct._IO_FILE* %stdio, i8* %mode) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %stdio.addr = alloca %struct._IO_FILE*, align 8
  %mode.addr = alloca i8*, align 8
  %f = alloca %struct._PerlIO**, align 8
  %s = alloca %struct.PerlIOStdio*, align 8
  %fd = alloca i32, align 4
  %f2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stdio, %struct._IO_FILE** %stdio.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct._PerlIO** null, %struct._PerlIO*** %f, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %mode.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i8*, i8** %mode.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool2 = icmp ne i8 %3, 0
  br i1 %tobool2, label %if.end.18, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio.addr, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %4)
  %call4 = call i32 @dup(i32 %call)
  store i32 %call4, i32* %fd, align 4
  %5 = load i32, i32* %fd, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8** %mode.addr, align 8
  %call5 = call %struct._IO_FILE* @fdopen(i32 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f2, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f2, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.3
  %7 = load i32, i32* %fd, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8** %mode.addr, align 8
  %call8 = call %struct._IO_FILE* @fdopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %f2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f2, align 8
  %tobool9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %9 = load i32, i32* %fd, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8** %mode.addr, align 8
  %call11 = call %struct._IO_FILE* @fdopen(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  store %struct._IO_FILE* %call11, %struct._IO_FILE** %f2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f2, align 8
  %tobool13 = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %11 = load i32, i32* %fd, align 4
  %call15 = call i32 @close(i32 %11)
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  store %struct._PerlIO** %12, %struct._PerlIO*** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f2, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %13)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %lor.lhs.false
  %call19 = call %struct._PerlIO** @PerlIO_allocate()
  store %struct._PerlIO** %call19, %struct._PerlIO*** %f, align 8
  %14 = load i8*, i8** %mode.addr, align 8
  %call20 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %call19, %struct._PerlIO_funcs* @PerlIO_stdio, i8* %14, %struct.sv* null)
  store %struct._PerlIO** %call20, %struct._PerlIO*** %f, align 8
  %tobool21 = icmp ne %struct._PerlIO** %call20, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.18
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  %16 = load %struct._PerlIO*, %struct._PerlIO** %15, align 8
  %17 = bitcast %struct._PerlIO* %16 to %struct.PerlIOStdio*
  store %struct.PerlIOStdio* %17, %struct.PerlIOStdio** %s, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio.addr, align 8
  %19 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio23 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %19, i32 0, i32 1
  store %struct._IO_FILE* %18, %struct._IO_FILE** %stdio23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %f, align 8
  store %struct._PerlIO** %20, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.14
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %21
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIOStdio_open(%struct._PerlIO_funcs* %self, %struct.PerlIO_list_s* %layers, i64 %n, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** %args) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %self.addr = alloca %struct._PerlIO_funcs*, align 8
  %layers.addr = alloca %struct.PerlIO_list_s*, align 8
  %n.addr = alloca i64, align 8
  %mode.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %imode.addr = alloca i32, align 4
  %perm.addr = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %narg.addr = alloca i32, align 4
  %args.addr = alloca %struct.sv**, align 8
  %tmode = alloca [8 x i8], align 1
  %path = alloca i8*, align 8
  %s = alloca %struct.PerlIOStdio*, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  %path16 = alloca i8*, align 8
  %stdio32 = alloca %struct._IO_FILE*, align 8
  %appended = alloca i8, align 1
  %s36 = alloca %struct.PerlIOStdio*, align 8
  %stdio60 = alloca %struct._IO_FILE*, align 8
  %init = alloca i32, align 4
  %s78 = alloca %struct.PerlIOStdio*, align 8
  store %struct._PerlIO_funcs* %self, %struct._PerlIO_funcs** %self.addr, align 8
  store %struct.PerlIO_list_s* %layers, %struct.PerlIO_list_s** %layers.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %imode, i32* %imode.addr, align 4
  store i32 %perm, i32* %perm.addr, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store %struct.sv** %args, %struct.sv*** %args.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %4 = load %struct.sv*, %struct.sv** %3, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %7 = load %struct.sv*, %struct.sv** %6, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 0
  %10 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %12 = load %struct.sv*, %struct.sv** %11, align 8
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %path, align 8
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %14 = load %struct._PerlIO*, %struct._PerlIO** %13, align 8
  %15 = bitcast %struct._PerlIO* %14 to %struct.PerlIOStdio*
  store %struct.PerlIOStdio* %15, %struct.PerlIOStdio** %s, align 8
  %16 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio2 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %16, i32 0, i32 1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio2, align 8
  %call3 = call i32 @fileno(%struct._IO_FILE* %17)
  %call4 = call i32 @PerlIOUnix_refcnt_dec(i32 %call3)
  %18 = load i8*, i8** %path, align 8
  %19 = load i8*, i8** %mode.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %tmode, i32 0, i32 0
  %call5 = call i8* @PerlIOStdio_mode(i8* %19, i8* %arraydecay)
  store i8* %call5, i8** %mode.addr, align 8
  %20 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio6 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %20, i32 0, i32 1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio6, align 8
  %call7 = call %struct._IO_FILE* @freopen(i8* %18, i8* %call5, %struct._IO_FILE* %21)
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %stdio, align 8
  %22 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio8 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %22, i32 0, i32 1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio8, align 8
  %tobool9 = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %cond.end
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %25 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio11 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %25, i32 0, i32 1
  store %struct._IO_FILE* %24, %struct._IO_FILE** %stdio11, align 8
  %26 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio12 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %26, i32 0, i32 1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio12, align 8
  %call13 = call i32 @fileno(%struct._IO_FILE* %27)
  call void @PerlIOUnix_refcnt_inc(i32 %call13)
  %28 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %28, %struct._PerlIO*** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %29 = load i32, i32* %narg.addr, align 4
  %cmp14 = icmp sgt i32 %29, 0
  br i1 %cmp14, label %if.then.15, label %if.end.56

if.then.15:                                       ; preds = %if.else
  %30 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %31 = load %struct.sv*, %struct.sv** %30, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 2
  %32 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %32, 262144
  %cmp19 = icmp eq i32 %and18, 262144
  br i1 %cmp19, label %cond.true.20, label %cond.false.23

cond.true.20:                                     ; preds = %if.then.15
  %33 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %34 = load %struct.sv*, %struct.sv** %33, align 8
  %sv_any21 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 0
  %35 = load i8*, i8** %sv_any21, align 8
  %36 = bitcast i8* %35 to %struct.xpv*
  %xpv_pv22 = getelementptr inbounds %struct.xpv, %struct.xpv* %36, i32 0, i32 0
  %37 = load i8*, i8** %xpv_pv22, align 8
  br label %cond.end.25

cond.false.23:                                    ; preds = %if.then.15
  %38 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %39 = load %struct.sv*, %struct.sv** %38, align 8
  %call24 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %39)
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.23, %cond.true.20
  %cond26 = phi i8* [ %37, %cond.true.20 ], [ %call24, %cond.false.23 ]
  store i8* %cond26, i8** %path16, align 8
  %40 = load i8*, i8** %mode.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv = sext i8 %41 to i32
  %cmp27 = icmp eq i32 %conv, 35
  br i1 %cmp27, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %cond.end.25
  %42 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %mode.addr, align 8
  %43 = load i8*, i8** %path16, align 8
  %44 = load i32, i32* %imode.addr, align 4
  %45 = load i32, i32* %perm.addr, align 4
  %call30 = call i32 (i8*, i32, ...) @open(i8* %43, i32 %44, i32 %45)
  store i32 %call30, i32* %fd.addr, align 4
  br label %if.end.55

if.else.31:                                       ; preds = %cond.end.25
  store i8 0, i8* %appended, align 1
  %46 = load i8*, i8** %path16, align 8
  %47 = load i8*, i8** %mode.addr, align 8
  %call33 = call %struct._IO_FILE* @fopen(i8* %46, i8* %47)
  store %struct._IO_FILE* %call33, %struct._IO_FILE** %stdio32, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio32, align 8
  %tobool34 = icmp ne %struct._IO_FILE* %48, null
  br i1 %tobool34, label %if.then.35, label %if.else.54

if.then.35:                                       ; preds = %if.else.31
  %49 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool37 = icmp ne %struct._PerlIO** %49, null
  br i1 %tobool37, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %if.then.35
  %call39 = call %struct._PerlIO** @PerlIO_allocate()
  store %struct._PerlIO** %call39, %struct._PerlIO*** %f.addr, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.then.35
  %50 = load i8, i8* %appended, align 1
  %tobool41 = icmp ne i8 %50, 0
  br i1 %tobool41, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %if.end.40
  %51 = load i8*, i8** %mode.addr, align 8
  %arraydecay43 = getelementptr inbounds [8 x i8], [8 x i8]* %tmode, i32 0, i32 0
  %call44 = call i8* @PerlIOStdio_mode(i8* %51, i8* %arraydecay43)
  store i8* %call44, i8** %mode.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.40
  %52 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %53 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %self.addr, align 8
  %54 = load i8*, i8** %mode.addr, align 8
  %55 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %56 = load i64, i64* %n.addr, align 8
  %call46 = call %struct.sv* @PerlIO_arg_fetch(%struct.PerlIO_list_s* %55, i64 %56)
  %call47 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %52, %struct._PerlIO_funcs* %53, i8* %54, %struct.sv* %call46)
  store %struct._PerlIO** %call47, %struct._PerlIO*** %f.addr, align 8
  %57 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool48 = icmp ne %struct._PerlIO** %57, null
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.45
  %58 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %59 = load %struct._PerlIO*, %struct._PerlIO** %58, align 8
  %60 = bitcast %struct._PerlIO* %59 to %struct.PerlIOStdio*
  store %struct.PerlIOStdio* %60, %struct.PerlIOStdio** %s36, align 8
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio32, align 8
  %62 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s36, align 8
  %stdio50 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %62, i32 0, i32 1
  store %struct._IO_FILE* %61, %struct._IO_FILE** %stdio50, align 8
  %63 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s36, align 8
  %stdio51 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %63, i32 0, i32 1
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio51, align 8
  %call52 = call i32 @fileno(%struct._IO_FILE* %64)
  call void @PerlIOUnix_refcnt_inc(i32 %call52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.45
  %65 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %65, %struct._PerlIO*** %retval
  br label %return

if.else.54:                                       ; preds = %if.else.31
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.55:                                        ; preds = %if.then.29
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.else
  %66 = load i32, i32* %fd.addr, align 4
  %cmp57 = icmp sge i32 %66, 0
  br i1 %cmp57, label %if.then.59, label %if.end.92

if.then.59:                                       ; preds = %if.end.56
  store %struct._IO_FILE* null, %struct._IO_FILE** %stdio60, align 8
  store i32 0, i32* %init, align 4
  %67 = load i8*, i8** %mode.addr, align 8
  %68 = load i8, i8* %67, align 1
  %conv61 = sext i8 %68 to i32
  %cmp62 = icmp eq i32 %conv61, 73
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.then.59
  store i32 1, i32* %init, align 4
  %69 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr65, i8** %mode.addr, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.then.59
  %70 = load i32, i32* %init, align 4
  %tobool67 = icmp ne i32 %70, 0
  br i1 %tobool67, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %if.end.66
  %71 = load i32, i32* %fd.addr, align 4
  switch i32 %71, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.69
    i32 2, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %if.then.68
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %72, %struct._IO_FILE** %stdio60, align 8
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.then.68
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %73, %struct._IO_FILE** %stdio60, align 8
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.then.68
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %74, %struct._IO_FILE** %stdio60, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.68, %sw.bb.70, %sw.bb.69, %sw.bb
  br label %if.end.75

if.else.71:                                       ; preds = %if.end.66
  %75 = load i32, i32* %fd.addr, align 4
  %76 = load i8*, i8** %mode.addr, align 8
  %arraydecay72 = getelementptr inbounds [8 x i8], [8 x i8]* %tmode, i32 0, i32 0
  %call73 = call i8* @PerlIOStdio_mode(i8* %76, i8* %arraydecay72)
  store i8* %call73, i8** %mode.addr, align 8
  %call74 = call %struct._IO_FILE* @fdopen(i32 %75, i8* %call73)
  store %struct._IO_FILE* %call74, %struct._IO_FILE** %stdio60, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.71, %sw.epilog
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio60, align 8
  %tobool76 = icmp ne %struct._IO_FILE* %77, null
  br i1 %tobool76, label %if.then.77, label %if.end.91

if.then.77:                                       ; preds = %if.end.75
  %78 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool79 = icmp ne %struct._PerlIO** %78, null
  br i1 %tobool79, label %if.end.82, label %if.then.80

if.then.80:                                       ; preds = %if.then.77
  %call81 = call %struct._PerlIO** @PerlIO_allocate()
  store %struct._PerlIO** %call81, %struct._PerlIO*** %f.addr, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.then.77
  %79 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %80 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %self.addr, align 8
  %81 = load i8*, i8** %mode.addr, align 8
  %82 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %83 = load i64, i64* %n.addr, align 8
  %call83 = call %struct.sv* @PerlIO_arg_fetch(%struct.PerlIO_list_s* %82, i64 %83)
  %call84 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %79, %struct._PerlIO_funcs* %80, i8* %81, %struct.sv* %call83)
  store %struct._PerlIO** %call84, %struct._PerlIO*** %f.addr, align 8
  %tobool85 = icmp ne %struct._PerlIO** %call84, null
  br i1 %tobool85, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %if.end.82
  %84 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %85 = load %struct._PerlIO*, %struct._PerlIO** %84, align 8
  %86 = bitcast %struct._PerlIO* %85 to %struct.PerlIOStdio*
  store %struct.PerlIOStdio* %86, %struct.PerlIOStdio** %s78, align 8
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio60, align 8
  %88 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s78, align 8
  %stdio87 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %88, i32 0, i32 1
  store %struct._IO_FILE* %87, %struct._IO_FILE** %stdio87, align 8
  %89 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s78, align 8
  %stdio88 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %89, i32 0, i32 1
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio88, align 8
  %call89 = call i32 @fileno(%struct._IO_FILE* %90)
  call void @PerlIOUnix_refcnt_inc(i32 %call89)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %if.end.82
  %91 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %91, %struct._PerlIO*** %retval
  br label %return

if.end.91:                                        ; preds = %if.end.75
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.56
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.end.90, %if.else.54, %if.end.53, %if.end, %if.then.10
  %92 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %92
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIOStdio_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %o.addr = alloca %struct._PerlIO**, align 8
  %param.addr = alloca %struct.clone_params*, align 8
  %flags.addr = alloca i32, align 4
  %stdio = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  %mode = alloca [8 x i8], align 1
  %dfd = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %o, %struct._PerlIO*** %o.addr, align 8
  store %struct.clone_params* %param, %struct.clone_params** %param.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %2 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call = call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %0, %struct._PerlIO** %1, %struct.clone_params* %2, i32 %3)
  store %struct._PerlIO** %call, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %call, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %6 = bitcast %struct._PerlIO* %5 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %6, i32 0, i32 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %stdio, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call2 = call i32 @fileno(%struct._IO_FILE* %8)
  store i32 %call2, i32* %fd, align 4
  %9 = load i32, i32* %flags.addr, align 4
  %and = and i32 %9, 2
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.then
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call5 = call i32 @fileno(%struct._IO_FILE* %10)
  %call6 = call i32 @dup(i32 %call5)
  store i32 %call6, i32* %dfd, align 4
  %11 = load i32, i32* %dfd, align 4
  %cmp = icmp sge i32 %11, 0
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %12 = load i32, i32* %dfd, align 4
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call8 = call i8* @PerlIO_modestr(%struct._PerlIO** %13, i8* %arraydecay)
  %call9 = call %struct._IO_FILE* @fdopen(i32 %12, i8* %call8)
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %stdio, align 8
  br label %set_this

if.else:                                          ; preds = %if.then.4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %14 = load i32, i32* %fd, align 4
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %arraydecay11 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call12 = call i8* @PerlIO_modestr(%struct._PerlIO** %15, i8* %arraydecay11)
  %call13 = call %struct._IO_FILE* @fdopen(i32 %14, i8* %call12)
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %stdio, align 8
  br label %set_this

set_this:                                         ; preds = %if.end.10, %if.then.7
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %18 = load %struct._PerlIO*, %struct._PerlIO** %17, align 8
  %19 = bitcast %struct._PerlIO* %18 to %struct.PerlIOStdio*
  %stdio14 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %19, i32 0, i32 1
  store %struct._IO_FILE* %16, %struct._IO_FILE** %stdio14, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call15 = call i32 @fileno(%struct._IO_FILE* %20)
  call void @PerlIOUnix_refcnt_inc(i32 %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %set_this, %entry
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  ret %struct._PerlIO** %21
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_close(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  %socksfd = alloca i32, align 4
  %invalidate = alloca i32, align 4
  %result = alloca i64, align 8
  %saveerr = alloca i32, align 4
  %dupfd = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stdio, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32* @__errno_location()
  store i32 9, i32* %call, align 4
  store i64 -1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call2 = call i32 @fileno(%struct._IO_FILE* %5)
  store i32 %call2, i32* %fd, align 4
  store i32 0, i32* %socksfd, align 4
  store i32 0, i32* %invalidate, align 4
  store i64 0, i64* %result, align 8
  store i32 0, i32* %saveerr, align 4
  store i32 0, i32* %dupfd, align 4
  %6 = load i32, i32* %fd, align 4
  %call3 = call i32 @PerlIOUnix_refcnt_dec(i32 %6)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 1, i32* %invalidate, align 4
  store i32 0, i32* %socksfd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  %7 = load i32, i32* %invalidate, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then.6, label %if.end.24

if.then.6:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp7 = icmp eq %struct._IO_FILE* %8, %9
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.then.6
  store i64 0, i64* %retval
  br label %return

if.else.9:                                        ; preds = %if.then.6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %10, %11
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %cmp11 = icmp eq %struct._IO_FILE* %12, %13
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %lor.lhs.false, %if.else.9
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call13 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %14)
  %conv = sext i32 %call13 to i64
  store i64 %conv, i64* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call16 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %15)
  %conv17 = sext i32 %call16 to i64
  store i64 %conv17, i64* %result, align 8
  %call18 = call i32* @__errno_location()
  %16 = load i32, i32* %call18, align 4
  store i32 %16, i32* %saveerr, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call19 = call i32 @PerlIOStdio_invalidate_fileno(%struct._IO_FILE* %17)
  store i32 %call19, i32* %invalidate, align 4
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.end.15
  %18 = load i32, i32* %fd, align 4
  %call22 = call i32 @dup(i32 %18)
  store i32 %call22, i32* %dupfd, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %19)
  %conv26 = sext i32 %call25 to i64
  store i64 %conv26, i64* %result, align 8
  %20 = load i32, i32* %invalidate, align 4
  %tobool27 = icmp ne i32 %20, 0
  br i1 %tobool27, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end.24
  %21 = load i64, i64* %result, align 8
  %cmp28 = icmp ne i64 %21, 0
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %land.lhs.true
  %22 = load i32, i32* %saveerr, align 4
  %call31 = call i32* @__errno_location()
  store i32 %22, i32* %call31, align 4
  store i64 0, i64* %result, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %land.lhs.true, %if.end.24
  %23 = load i32, i32* %socksfd, align 4
  %tobool33 = icmp ne i32 %23, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.32
  %24 = load i32, i32* %fd, align 4
  %call35 = call i32 @close(i32 %24)
  %conv36 = sext i32 %call35 to i64
  store i64 %conv36, i64* %result, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.32
  %25 = load i32, i32* %dupfd, align 4
  %tobool38 = icmp ne i32 %25, 0
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.37
  %26 = load i32, i32* %dupfd, align 4
  %27 = load i32, i32* %fd, align 4
  %call40 = call i32 @dup2(i32 %26, i32 %27)
  %28 = load i32, i32* %dupfd, align 4
  %call41 = call i32 @close(i32 %28)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.37
  %29 = load i64, i64* %result, align 8
  store i64 %29, i64* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.12, %if.then.8, %if.then
  %30 = load i64, i64* %retval
  ret i64 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @PerlIOStdio_invalidate_fileno(%struct._IO_FILE* %f) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %_fileno = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 14
  store i32 -1, i32* %_fileno, align 4
  ret i32 1
}

declare i32 @dup2(i32, i32) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %s = alloca %struct._IO_FILE*, align 8
  %got = alloca i64, align 8
  %buf = alloca i8*, align 8
  %ch = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %s, align 8
  store i64 0, i64* %got, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.19, %entry
  %4 = load i64, i64* %count.addr, align 8
  %cmp = icmp eq i64 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %5 = load i8*, i8** %vbuf.addr, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %6)
  store i32 %call, i32* %ch, align 4
  %7 = load i32, i32* %ch, align 4
  %cmp1 = icmp ne i32 %7, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load i32, i32* %ch, align 4
  %conv = trunc i32 %8 to i8
  %9 = load i8*, i8** %buf, align 8
  store i8 %conv, i8* %9, align 1
  store i64 1, i64* %got, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.else:                                          ; preds = %for.cond
  %10 = load i8*, i8** %vbuf.addr, align 8
  %11 = load i64, i64* %count.addr, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call3 = call i64 @fread(i8* %10, i64 1, i64 %11, %struct._IO_FILE* %12)
  store i64 %call3, i64* %got, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %13 = load i64, i64* %got, align 8
  %cmp5 = icmp eq i64 %13, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call7 = call i32 @ferror(%struct._IO_FILE* %14)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i64 -1, i64* %got, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end.4
  %15 = load i64, i64* %got, align 8
  %cmp10 = icmp sge i64 %15, 0
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %call12 = call i32* @__errno_location()
  %16 = load i32, i32* %call12, align 4
  %cmp13 = icmp ne i32 %16, 4
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.9
  br label %for.end

if.end.16:                                        ; preds = %lor.lhs.false
  %17 = load i32, i32* @PL_sig_pending, align 4
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  call void @Perl_despatch_signals()
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %call20 = call i32* @__errno_location()
  store i32 0, i32* %call20, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.15
  %18 = load i64, i64* %got, align 8
  ret i64 %18
}

declare i32 @fgetc(%struct._IO_FILE*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %unread = alloca i64, align 8
  %s = alloca %struct._IO_FILE*, align 8
  %eptr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %ch = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 0, i64* %unread, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %s, align 8
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @PerlIO_has_cntptr(%struct._PerlIO** %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %5, i32 0, i32 1
  %6 = load i8*, i8** %_IO_read_ptr, align 8
  store i8* %6, i8** %eptr, align 8
  %7 = load i8*, i8** %vbuf.addr, align 8
  %8 = load i64, i64* %count.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  store i8* %add.ptr, i8** %buf, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.then
  %9 = load i64, i64* %count.addr, align 8
  %cmp = icmp ugt i64 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %buf, align 8
  %11 = load i8, i8* %incdec.ptr, align 1
  %conv = sext i8 %11 to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %ch, align 4
  %12 = load i32, i32* %ch, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call1 = call i32 @ungetc(i32 %12, %struct._IO_FILE* %13)
  %14 = load i32, i32* %ch, align 4
  %cmp2 = icmp ne i32 %call1, %14
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %_IO_read_ptr5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %15, i32 0, i32 1
  %16 = load i8*, i8** %_IO_read_ptr5, align 8
  %17 = load i8*, i8** %eptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %incdec.ptr6, i8** %eptr, align 8
  %cmp7 = icmp ne i8* %16, %incdec.ptr6
  br i1 %cmp7, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i8*, i8** %eptr, align 8
  %19 = load i8, i8* %18, align 1
  %conv9 = sext i8 %19 to i32
  %and10 = and i32 %conv9, 255
  %20 = load i32, i32* %ch, align 4
  %cmp11 = icmp ne i32 %and10, %20
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call14 = call i32 @fgetc(%struct._IO_FILE* %21)
  br label %while.end

if.end.15:                                        ; preds = %lor.lhs.false
  %22 = load i64, i64* %count.addr, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %count.addr, align 8
  %23 = load i64, i64* %unread, align 8
  %inc = add nsw i64 %23, 1
  store i64 %inc, i64* %unread, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.13, %if.then.4, %while.cond
  br label %if.end.16

if.end.16:                                        ; preds = %while.end, %entry
  %24 = load i64, i64* %count.addr, align 8
  %cmp17 = icmp ugt i64 %24, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %25 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %26 = load i8*, i8** %vbuf.addr, align 8
  %27 = load i64, i64* %count.addr, align 8
  %call20 = call i64 @PerlIOBase_unread(%struct._PerlIO** %25, i8* %26, i64 %27)
  %28 = load i64, i64* %unread, align 8
  %add = add nsw i64 %28, %call20
  store i64 %add, i64* %unread, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %29 = load i64, i64* %unread, align 8
  ret i64 %29
}

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_write(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %got = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.4, %entry
  %0 = load i8*, i8** %vbuf.addr, align 8
  %1 = load i64, i64* %count.addr, align 8
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %3 = load %struct._PerlIO*, %struct._PerlIO** %2, align 8
  %4 = bitcast %struct._PerlIO* %3 to %struct.PerlIOStdio*
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %4, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call = call i64 @fwrite(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %5)
  store i64 %call, i64* %got, align 8
  %6 = load i64, i64* %got, align 8
  %cmp = icmp sge i64 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %call1 = call i32* @__errno_location()
  %7 = load i32, i32* %call1, align 4
  %cmp2 = icmp ne i32 %7, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* @PL_sig_pending, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @Perl_despatch_signals()
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call5 = call i32* @__errno_location()
  store i32 0, i32* %call5, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %9 = load i64, i64* %got, align 8
  ret i64 %9
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_seek(%struct._PerlIO** %f, i64 %offset, i32 %whence) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %stdio = alloca %struct._IO_FILE*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stdio, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %5 = load i64, i64* %offset.addr, align 8
  %6 = load i32, i32* %whence.addr, align 4
  %call = call i32 @fseek(%struct._IO_FILE* %4, i64 %5, i32 %6)
  %conv = sext i32 %call to i64
  ret i64 %conv
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_tell(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stdio, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %4)
  ret i64 %call
}

declare i64 @ftell(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_flush(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stdio, align 8
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %5, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %7)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_eof(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call = call i32 @feof(%struct._IO_FILE* %3)
  %conv = sext i32 %call to i64
  ret i64 %conv
}

declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_error(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call = call i32 @ferror(%struct._IO_FILE* %3)
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define void @PerlIOStdio_clearerr(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  call void @clearerr(%struct._IO_FILE* %3)
  ret void
}

declare void @clearerr(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @PerlIOStdio_setlinebuf(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call = call i32 @setvbuf(%struct._IO_FILE* %3, i8* null, i32 1, i64 0)
  ret void
}

declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define i8* @PerlIOStdio_get_base(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stdio, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %_IO_read_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i32 0, i32 3
  %5 = load i8*, i8** %_IO_read_base, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_get_bufsiz(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stdio, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i32 0, i32 2
  %5 = load i8*, i8** %_IO_read_end, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %_IO_read_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i32 0, i32 3
  %7 = load i8*, i8** %_IO_read_base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: nounwind uwtable
define i8* @PerlIOStdio_get_ptr(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stdio, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i32 0, i32 1
  %5 = load i8*, i8** %_IO_read_ptr, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_get_cnt(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stdio, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i32 0, i32 2
  %5 = load i8*, i8** %_IO_read_end, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i32 0, i32 1
  %7 = load i8*, i8** %_IO_read_ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: nounwind uwtable
define void @PerlIOStdio_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i64 %cnt) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %ptr.addr = alloca i8*, align 8
  %cnt.addr = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %cnt, i64* %cnt.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  call void @abort() #4
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn
declare void @abort() #3

; Function Attrs: nounwind uwtable
define i64 @PerlIOStdio_fill(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOStdio*
  %stdio1 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stdio, align 8
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %5, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %7)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call4 = call i32 @fgetc(%struct._IO_FILE* %8)
  store i32 %call4, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %9, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i64 -1, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %10 = load i32, i32* %c, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %call8 = call i32 @ungetc(i32 %10, %struct._IO_FILE* %11)
  %12 = load i32, i32* %c, align 4
  %cmp9 = icmp ne i32 %call8, %12
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i64 -1, i64* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then.2
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @PerlIO_exportFILE(%struct._PerlIO** %f, i8* %mode) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %stdio = alloca %struct._IO_FILE*, align 8
  %buf = alloca [8 x i8], align 1
  %l = alloca %struct._PerlIO*, align 8
  %f2 = alloca %struct._PerlIO**, align 8
  %s = alloca %struct.PerlIOStdio*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %stdio, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.end.17

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %3)
  %4 = load i8*, i8** %mode.addr, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i8*, i8** %mode.addr, align 8
  %6 = load i8, i8* %5, align 1
  %tobool3 = icmp ne i8 %6, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %call5 = call i8* @PerlIO_modestr(%struct._PerlIO** %7, i8* %arraydecay)
  store i8* %call5, i8** %mode.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %lor.lhs.false
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call6 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %8)
  %9 = load i8*, i8** %mode.addr, align 8
  %call7 = call %struct._IO_FILE* @fdopen(i32 %call6, i8* %9)
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %stdio, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %tobool8 = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load %struct._PerlIO*, %struct._PerlIO** %11, align 8
  store %struct._PerlIO* %12, %struct._PerlIO** %l, align 8
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO* null, %struct._PerlIO** %13, align 8
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %arraydecay10 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %call11 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %14, %struct._PerlIO_funcs* @PerlIO_stdio, i8* %arraydecay10, %struct.sv* null)
  store %struct._PerlIO** %call11, %struct._PerlIO*** %f2, align 8
  %tobool12 = icmp ne %struct._PerlIO** %call11, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f2, align 8
  store %struct._PerlIO** %15, %struct._PerlIO*** %f.addr, align 8
  %16 = load %struct._PerlIO*, %struct._PerlIO** %15, align 8
  %17 = bitcast %struct._PerlIO* %16 to %struct.PerlIOStdio*
  store %struct.PerlIOStdio* %17, %struct.PerlIOStdio** %s, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %19 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio14 = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %19, i32 0, i32 1
  store %struct._IO_FILE* %18, %struct._IO_FILE** %stdio14, align 8
  %20 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %21 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %22 = load %struct._PerlIO*, %struct._PerlIO** %21, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %22, i32 0, i32 0
  store %struct._PerlIO* %20, %struct._PerlIO** %next, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.then.9
  %23 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %24 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO* %23, %struct._PerlIO** %24, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %entry
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  ret %struct._IO_FILE* %25
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @PerlIO_findFILE(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %l = alloca %struct._PerlIO*, align 8
  %s = alloca %struct.PerlIOStdio*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  store %struct._PerlIO* %1, %struct._PerlIO** %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tobool = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %3, i32 0, i32 1
  %4 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %cmp = icmp eq %struct._PerlIO_funcs* %4, @PerlIO_stdio
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %6 = bitcast %struct._PerlIO* %5 to %struct.PerlIOStdio*
  store %struct.PerlIOStdio* %6, %struct.PerlIOStdio** %s, align 8
  %7 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %7, i32 0, i32 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %9, i32 0, i32 0
  %10 = load %struct._PerlIO*, %struct._PerlIO** %next, align 8
  store %struct._PerlIO* %10, %struct._PerlIO** %l, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call %struct._IO_FILE* @PerlIO_exportFILE(%struct._PerlIO** %11, i8* null)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %12
}

; Function Attrs: nounwind uwtable
define void @PerlIO_releaseFILE(%struct._PerlIO** %p, %struct._IO_FILE* %f) #0 {
entry:
  %p.addr = alloca %struct._PerlIO**, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %l = alloca %struct._PerlIO*, align 8
  %s = alloca %struct.PerlIOStdio*, align 8
  store %struct._PerlIO** %p, %struct._PerlIO*** %p.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.3, %entry
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %p.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  store %struct._PerlIO* %1, %struct._PerlIO** %l, align 8
  %tobool = icmp ne %struct._PerlIO* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %tab = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %2, i32 0, i32 1
  %3 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %cmp = icmp eq %struct._PerlIO_funcs* %3, @PerlIO_stdio
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %while.body
  %4 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %5 = bitcast %struct._PerlIO* %4 to %struct.PerlIOStdio*
  store %struct.PerlIOStdio* %5, %struct.PerlIOStdio** %s, align 8
  %6 = load %struct.PerlIOStdio*, %struct.PerlIOStdio** %s, align 8
  %stdio = getelementptr inbounds %struct.PerlIOStdio, %struct.PerlIOStdio* %6, i32 0, i32 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stdio, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %7, %8
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %p.addr, align 8
  call void @PerlIO_pop(%struct._PerlIO** %9)
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %while.body
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %p.addr, align 8
  %11 = load %struct._PerlIO*, %struct._PerlIO** %10, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %11, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %p.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %fd = alloca i32, align 4
  %posn = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %3)
  store i32 %call, i32* %fd, align 4
  %4 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %fd, align 4
  %call1 = call i32 @isatty(i32 %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %7, i32 0, i32 2
  %8 = load i32, i32* %flags, align 4
  %or = or i32 %8, 8912896
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %10 = load %struct._PerlIO*, %struct._PerlIO** %9, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %10, i32 0, i32 0
  %11 = load %struct._PerlIO*, %struct._PerlIO** %next, align 8
  %tobool2 = icmp ne %struct._PerlIO* %11, null
  br i1 %tobool2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %13 = load %struct._PerlIO*, %struct._PerlIO** %12, align 8
  %next4 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %13, i32 0, i32 0
  %call5 = call i64 @Perl_PerlIO_tell(%struct._PerlIO** %next4)
  store i64 %call5, i64* %posn, align 8
  %14 = load i64, i64* %posn, align 8
  %cmp6 = icmp ne i64 %14, -1
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.3
  %15 = load i64, i64* %posn, align 8
  %16 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn8 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %16, i32 0, i32 4
  store i64 %15, i64* %posn8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %18 = load i8*, i8** %mode.addr, align 8
  %19 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %20 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %call11 = call i64 @PerlIOBase_pushed(%struct._PerlIO** %17, i8* %18, %struct.sv* %19, %struct._PerlIO_funcs* %20)
  ret i64 %call11
}

declare i32 @isatty(i32) #2

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIOBuf_open(%struct._PerlIO_funcs* %self, %struct.PerlIO_list_s* %layers, i64 %n, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** %args) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %self.addr = alloca %struct._PerlIO_funcs*, align 8
  %layers.addr = alloca %struct.PerlIO_list_s*, align 8
  %n.addr = alloca i64, align 8
  %mode.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %imode.addr = alloca i32, align 4
  %perm.addr = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %narg.addr = alloca i32, align 4
  %args.addr = alloca %struct.sv**, align 8
  %next = alloca %struct._PerlIO**, align 8
  %tab = alloca %struct._PerlIO_funcs*, align 8
  %tab17 = alloca %struct._PerlIO_funcs*, align 8
  %init = alloca i32, align 4
  store %struct._PerlIO_funcs* %self, %struct._PerlIO_funcs** %self.addr, align 8
  store %struct.PerlIO_list_s* %layers, %struct.PerlIO_list_s** %layers.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %imode, i32* %imode.addr, align 4
  store i32 %perm, i32* %perm.addr, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %narg, i32* %narg.addr, align 4
  store %struct.sv** %args, %struct.sv*** %args.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %tobool1 = icmp ne %struct._PerlIO* %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %next2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 0
  store %struct._PerlIO** %next2, %struct._PerlIO*** %next, align 8
  %5 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %6 = load i64, i64* %n.addr, align 8
  %sub = sub nsw i64 %6, 1
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %next, align 8
  %8 = load %struct._PerlIO*, %struct._PerlIO** %7, align 8
  %tab3 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 1
  %9 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab3, align 8
  %call = call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %5, i64 %sub, %struct._PerlIO_funcs* %9)
  store %struct._PerlIO_funcs* %call, %struct._PerlIO_funcs** %tab, align 8
  %10 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %tobool4 = icmp ne %struct._PerlIO_funcs* %10, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %if.then
  %11 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Open = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %11, i32 0, i32 6
  %12 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open, align 8
  %tobool6 = icmp ne %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true.5
  %13 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %Open8 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %13, i32 0, i32 6
  %14 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open8, align 8
  %15 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %16 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %17 = load i64, i64* %n.addr, align 8
  %sub9 = sub nsw i64 %17, 1
  %18 = load i8*, i8** %mode.addr, align 8
  %19 = load i32, i32* %fd.addr, align 4
  %20 = load i32, i32* %imode.addr, align 4
  %21 = load i32, i32* %perm.addr, align 4
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %next, align 8
  %23 = load i32, i32* %narg.addr, align 4
  %24 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %call10 = call %struct._PerlIO** %14(%struct._PerlIO_funcs* %15, %struct.PerlIO_list_s* %16, i64 %sub9, i8* %18, i32 %19, i32 %20, i32 %21, %struct._PerlIO** %22, i32 %23, %struct.sv** %24)
  store %struct._PerlIO** %call10, %struct._PerlIO*** %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true.5, %if.then
  %25 = load %struct._PerlIO**, %struct._PerlIO*** %next, align 8
  %tobool11 = icmp ne %struct._PerlIO** %25, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.end
  %26 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %27 = load %struct._PerlIO*, %struct._PerlIO** %26, align 8
  %tab12 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %27, i32 0, i32 1
  %28 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab12, align 8
  %Pushed = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %28, i32 0, i32 4
  %29 = load i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)*, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)** %Pushed, align 8
  %30 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %31 = load i8*, i8** %mode.addr, align 8
  %32 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %33 = load i64, i64* %n.addr, align 8
  %call13 = call %struct.sv* @PerlIO_arg_fetch(%struct.PerlIO_list_s* %32, i64 %33)
  %34 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %self.addr, align 8
  %call14 = call i64 %29(%struct._PerlIO** %30, i8* %31, %struct.sv* %call13, %struct._PerlIO_funcs* %34)
  %cmp = icmp ne i64 %call14, 0
  br i1 %cmp, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  br label %if.end.54

if.else:                                          ; preds = %land.lhs.true, %entry
  %35 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %36 = load i64, i64* %n.addr, align 8
  %sub18 = sub nsw i64 %36, 1
  %call19 = call %struct._PerlIO_funcs* @PerlIO_default_layer(i32 0)
  %call20 = call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %35, i64 %sub18, %struct._PerlIO_funcs* %call19)
  store %struct._PerlIO_funcs* %call20, %struct._PerlIO_funcs** %tab17, align 8
  store i32 0, i32* %init, align 4
  %37 = load i8*, i8** %mode.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv = sext i8 %38 to i32
  %cmp21 = icmp eq i32 %conv, 73
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else
  store i32 1, i32* %init, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.else
  %39 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab17, align 8
  %tobool25 = icmp ne %struct._PerlIO_funcs* %39, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.33

land.lhs.true.26:                                 ; preds = %if.end.24
  %40 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab17, align 8
  %Open27 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %40, i32 0, i32 6
  %41 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open27, align 8
  %tobool28 = icmp ne %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %41, null
  br i1 %tobool28, label %if.then.29, label %if.else.33

if.then.29:                                       ; preds = %land.lhs.true.26
  %42 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab17, align 8
  %Open30 = getelementptr inbounds %struct._PerlIO_funcs, %struct._PerlIO_funcs* %42, i32 0, i32 6
  %43 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open30, align 8
  %44 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab17, align 8
  %45 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %46 = load i64, i64* %n.addr, align 8
  %sub31 = sub nsw i64 %46, 1
  %47 = load i8*, i8** %mode.addr, align 8
  %48 = load i32, i32* %fd.addr, align 4
  %49 = load i32, i32* %imode.addr, align 4
  %50 = load i32, i32* %perm.addr, align 4
  %51 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %52 = load i32, i32* %narg.addr, align 4
  %53 = load %struct.sv**, %struct.sv*** %args.addr, align 8
  %call32 = call %struct._PerlIO** %43(%struct._PerlIO_funcs* %44, %struct.PerlIO_list_s* %45, i64 %sub31, i8* %47, i32 %48, i32 %49, i32 %50, %struct._PerlIO** %51, i32 %52, %struct.sv** %53)
  store %struct._PerlIO** %call32, %struct._PerlIO*** %f.addr, align 8
  br label %if.end.35

if.else.33:                                       ; preds = %land.lhs.true.26, %if.end.24
  %call34 = call i32* @__errno_location()
  store i32 22, i32* %call34, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.29
  %54 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool36 = icmp ne %struct._PerlIO** %54, null
  br i1 %tobool36, label %if.then.37, label %if.end.53

if.then.37:                                       ; preds = %if.end.35
  %55 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %56 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %self.addr, align 8
  %57 = load i8*, i8** %mode.addr, align 8
  %58 = load %struct.PerlIO_list_s*, %struct.PerlIO_list_s** %layers.addr, align 8
  %59 = load i64, i64* %n.addr, align 8
  %call38 = call %struct.sv* @PerlIO_arg_fetch(%struct.PerlIO_list_s* %58, i64 %59)
  %call39 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %55, %struct._PerlIO_funcs* %56, i8* %57, %struct.sv* %call38)
  %cmp40 = icmp eq %struct._PerlIO** %call39, null
  br i1 %cmp40, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.then.37
  %60 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call43 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %60)
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.else.44:                                       ; preds = %if.then.37
  %61 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call45 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %61)
  store i32 %call45, i32* %fd.addr, align 4
  %62 = load i32, i32* %init, align 4
  %tobool46 = icmp ne i32 %62, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.51

land.lhs.true.47:                                 ; preds = %if.else.44
  %63 = load i32, i32* %fd.addr, align 4
  %cmp48 = icmp eq i32 %63, 2
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.47
  %64 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %65 = load %struct._PerlIO*, %struct._PerlIO** %64, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %65, i32 0, i32 2
  %66 = load i32, i32* %flags, align 4
  %or = or i32 %66, 65536
  store i32 %or, i32* %flags, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.47, %if.else.44
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.35
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.16
  %67 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %67, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.42, %if.then.15
  %68 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %68
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_flush(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %code = alloca i32, align 4
  %n = alloca %struct._PerlIO**, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %count = alloca i64, align 8
  %buf19 = alloca i8*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  store i32 0, i32* %code, align 4
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %n, align 8
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %5, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 2
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 131072
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %8 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %8, i32 0, i32 1
  %9 = load i8*, i8** %buf1, align 8
  store i8* %9, i8** %buf, align 8
  %10 = load i8*, i8** %buf, align 8
  store i8* %10, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.then
  %11 = load i8*, i8** %p, align 8
  %12 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %12, i32 0, i32 3
  %13 = load i8*, i8** %ptr, align 8
  %cmp = icmp ult i8* %11, %13
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %15 = load i8*, i8** %p, align 8
  %16 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr2 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %16, i32 0, i32 3
  %17 = load i8*, i8** %ptr2, align 8
  %18 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i64 @Perl_PerlIO_write(%struct._PerlIO** %14, i8* %15, i64 %sub.ptr.sub)
  store i64 %call, i64* %count, align 8
  %19 = load i64, i64* %count, align 8
  %cmp3 = icmp sgt i64 %19, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %while.body
  %20 = load i64, i64* %count, align 8
  %21 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.10

if.else:                                          ; preds = %while.body
  %22 = load i64, i64* %count, align 8
  %cmp5 = icmp slt i64 %22, 0
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %23 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call6 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %23)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %lor.lhs.false, %if.else
  %24 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %25 = load %struct._PerlIO*, %struct._PerlIO** %24, align 8
  %flags9 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %25, i32 0, i32 2
  %26 = load i32, i32* %flags9, align 4
  %or = or i32 %26, 2048
  store i32 %or, i32* %flags9, align 4
  store i32 -1, i32* %code, align 4
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.4
  br label %while.cond

while.end:                                        ; preds = %if.then.8, %while.cond
  %27 = load i8*, i8** %p, align 8
  %28 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %28 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %29 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %29, i32 0, i32 4
  %30 = load i64, i64* %posn, align 8
  %add = add nsw i64 %30, %sub.ptr.sub13
  store i64 %add, i64* %posn, align 8
  br label %if.end.49

if.else.14:                                       ; preds = %entry
  %31 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %32 = load %struct._PerlIO*, %struct._PerlIO** %31, align 8
  %flags15 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %32, i32 0, i32 2
  %33 = load i32, i32* %flags15, align 4
  %and16 = and i32 %33, 262144
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.48

if.then.18:                                       ; preds = %if.else.14
  %34 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call20 = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %34)
  store i8* %call20, i8** %buf19, align 8
  %35 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr21 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %35, i32 0, i32 3
  %36 = load i8*, i8** %ptr21, align 8
  %37 = load i8*, i8** %buf19, align 8
  %sub.ptr.lhs.cast22 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %37 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %38 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn25 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %38, i32 0, i32 4
  %39 = load i64, i64* %posn25, align 8
  %add26 = add nsw i64 %39, %sub.ptr.sub24
  store i64 %add26, i64* %posn25, align 8
  %40 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr27 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %40, i32 0, i32 3
  %41 = load i8*, i8** %ptr27, align 8
  %42 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %42, i32 0, i32 2
  %43 = load i8*, i8** %end, align 8
  %cmp28 = icmp ult i8* %41, %43
  br i1 %cmp28, label %if.then.29, label %if.end.47

if.then.29:                                       ; preds = %if.then.18
  %44 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %tobool30 = icmp ne %struct._PerlIO** %44, null
  br i1 %tobool30, label %land.lhs.true, label %if.else.40

land.lhs.true:                                    ; preds = %if.then.29
  %45 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %46 = load %struct._PerlIO*, %struct._PerlIO** %45, align 8
  %tobool31 = icmp ne %struct._PerlIO* %46, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.40

land.lhs.true.32:                                 ; preds = %land.lhs.true
  %47 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %48 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn33 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %48, i32 0, i32 4
  %49 = load i64, i64* %posn33, align 8
  %call34 = call i32 @Perl_PerlIO_seek(%struct._PerlIO** %47, i64 %49, i32 0)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %land.lhs.true.32
  %50 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %51 = load %struct._PerlIO*, %struct._PerlIO** %50, align 8
  %next37 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %51, i32 0, i32 0
  store %struct._PerlIO** %next37, %struct._PerlIO*** %n, align 8
  %call38 = call i64 @Perl_PerlIO_tell(%struct._PerlIO** %next37)
  %52 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn39 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %52, i32 0, i32 4
  store i64 %call38, i64* %posn39, align 8
  br label %if.end.46

if.else.40:                                       ; preds = %land.lhs.true.32, %land.lhs.true, %if.then.29
  %53 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr41 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %53, i32 0, i32 3
  %54 = load i8*, i8** %ptr41, align 8
  %55 = load i8*, i8** %buf19, align 8
  %sub.ptr.lhs.cast42 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast43 = ptrtoint i8* %55 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %56 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn45 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %56, i32 0, i32 4
  %57 = load i64, i64* %posn45, align 8
  %sub = sub nsw i64 %57, %sub.ptr.sub44
  store i64 %sub, i64* %posn45, align 8
  %58 = load i32, i32* %code, align 4
  %conv = sext i32 %58 to i64
  store i64 %conv, i64* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.36
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.18
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.else.14
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %while.end
  %59 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf50 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %59, i32 0, i32 1
  %60 = load i8*, i8** %buf50, align 8
  %61 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end51 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %61, i32 0, i32 2
  store i8* %60, i8** %end51, align 8
  %62 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr52 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %62, i32 0, i32 3
  store i8* %60, i8** %ptr52, align 8
  %63 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %64 = load %struct._PerlIO*, %struct._PerlIO** %63, align 8
  %flags53 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %64, i32 0, i32 2
  %65 = load i32, i32* %flags53, align 4
  %and54 = and i32 %65, -393217
  store i32 %and54, i32* %flags53, align 4
  %66 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %tobool55 = icmp ne %struct._PerlIO** %66, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.63

land.lhs.true.56:                                 ; preds = %if.end.49
  %67 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %68 = load %struct._PerlIO*, %struct._PerlIO** %67, align 8
  %tobool57 = icmp ne %struct._PerlIO* %68, null
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.63

land.lhs.true.58:                                 ; preds = %land.lhs.true.56
  %69 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call59 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %69)
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %land.lhs.true.58
  store i32 -1, i32* %code, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %land.lhs.true.58, %land.lhs.true.56, %if.end.49
  %70 = load i32, i32* %code, align 4
  %conv64 = sext i32 %70 to i64
  store i64 %conv64, i64* %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.else.40
  %71 = load i64, i64* %retval
  ret i64 %71
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_fill(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %n = alloca %struct._PerlIO**, align 8
  %avail = alloca i64, align 8
  %ptr39 = alloca i8*, align 8
  %cnt = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %n, align 8
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %5)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %7, i32 0, i32 2
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, 8388608
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @PerlIOBase_flush_linebuf()
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %9 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %9, i32 0, i32 1
  %10 = load i8*, i8** %buf, align 8
  %tobool3 = icmp ne i8* %10, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call5 = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %12 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf7 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %12, i32 0, i32 1
  %13 = load i8*, i8** %buf7, align 8
  %14 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %14, i32 0, i32 2
  store i8* %13, i8** %end, align 8
  %15 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %15, i32 0, i32 3
  store i8* %13, i8** %ptr, align 8
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %tobool8 = icmp ne %struct._PerlIO** %16, null
  br i1 %tobool8, label %land.lhs.true, label %if.then.10

land.lhs.true:                                    ; preds = %if.end.6
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %18 = load %struct._PerlIO*, %struct._PerlIO** %17, align 8
  %tobool9 = icmp ne %struct._PerlIO* %18, null
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true, %if.end.6
  %19 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %20 = load %struct._PerlIO*, %struct._PerlIO** %19, align 8
  %flags11 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %20, i32 0, i32 2
  %21 = load i32, i32* %flags11, align 4
  %or = or i32 %21, 256
  store i32 %or, i32* %flags11, align 4
  store i64 -1, i64* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call13 = call i32 @PerlIO_fast_gets(%struct._PerlIO** %22)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.49

if.then.15:                                       ; preds = %if.end.12
  %23 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call16 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %23)
  %conv = sext i32 %call16 to i64
  store i64 %conv, i64* %avail, align 8
  %24 = load i64, i64* %avail, align 8
  %cmp17 = icmp sle i64 %24, 0
  br i1 %cmp17, label %if.then.19, label %if.end.35

if.then.19:                                       ; preds = %if.then.15
  %25 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call20 = call i32 @Perl_PerlIO_fill(%struct._PerlIO** %25)
  %conv21 = sext i32 %call20 to i64
  store i64 %conv21, i64* %avail, align 8
  %26 = load i64, i64* %avail, align 8
  %cmp22 = icmp eq i64 %26, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.19
  %27 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call25 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %27)
  %conv26 = sext i32 %call25 to i64
  store i64 %conv26, i64* %avail, align 8
  br label %if.end.34

if.else:                                          ; preds = %if.then.19
  %28 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call27 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %28)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.33, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %if.else
  %29 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call30 = call i32 @Perl_PerlIO_eof(%struct._PerlIO** %29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.29
  store i64 0, i64* %avail, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true.29, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.24
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.15
  %30 = load i64, i64* %avail, align 8
  %cmp36 = icmp sgt i64 %30, 0
  br i1 %cmp36, label %if.then.38, label %if.end.48

if.then.38:                                       ; preds = %if.end.35
  %31 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %call40 = call i8* @Perl_PerlIO_get_ptr(%struct._PerlIO** %31)
  store i8* %call40, i8** %ptr39, align 8
  %32 = load i64, i64* %avail, align 8
  store i64 %32, i64* %cnt, align 8
  %33 = load i64, i64* %avail, align 8
  %34 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %34, i32 0, i32 5
  %35 = load i64, i64* %bufsiz, align 8
  %cmp41 = icmp sgt i64 %33, %35
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.38
  %36 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz44 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %36, i32 0, i32 5
  %37 = load i64, i64* %bufsiz44, align 8
  store i64 %37, i64* %avail, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.then.38
  %38 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf46 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %38, i32 0, i32 1
  %39 = load i8*, i8** %buf46, align 8
  %40 = load i8*, i8** %ptr39, align 8
  %41 = load i64, i64* %avail, align 8
  %mul = mul i64 %41, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 %mul, i32 1, i1 false)
  %42 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %43 = load i8*, i8** %ptr39, align 8
  %44 = load i64, i64* %avail, align 8
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %44
  %45 = load i64, i64* %cnt, align 8
  %46 = load i64, i64* %avail, align 8
  %sub = sub nsw i64 %45, %46
  %conv47 = trunc i64 %sub to i32
  call void @Perl_PerlIO_set_ptrcnt(%struct._PerlIO** %42, i8* %add.ptr, i32 %conv47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.45, %if.end.35
  br label %if.end.53

if.else.49:                                       ; preds = %if.end.12
  %47 = load %struct._PerlIO**, %struct._PerlIO*** %n, align 8
  %48 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr50 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %48, i32 0, i32 3
  %49 = load i8*, i8** %ptr50, align 8
  %50 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz51 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %50, i32 0, i32 5
  %51 = load i64, i64* %bufsiz51, align 8
  %call52 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %47, i8* %49, i64 %51)
  store i64 %call52, i64* %avail, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.end.48
  %52 = load i64, i64* %avail, align 8
  %cmp54 = icmp sle i64 %52, 0
  br i1 %cmp54, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %if.end.53
  %53 = load i64, i64* %avail, align 8
  %cmp57 = icmp eq i64 %53, 0
  br i1 %cmp57, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %if.then.56
  %54 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %55 = load %struct._PerlIO*, %struct._PerlIO** %54, align 8
  %flags60 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %55, i32 0, i32 2
  %56 = load i32, i32* %flags60, align 4
  %or61 = or i32 %56, 256
  store i32 %or61, i32* %flags60, align 4
  br label %if.end.65

if.else.62:                                       ; preds = %if.then.56
  %57 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %58 = load %struct._PerlIO*, %struct._PerlIO** %57, align 8
  %flags63 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %58, i32 0, i32 2
  %59 = load i32, i32* %flags63, align 4
  %or64 = or i32 %59, 2048
  store i32 %or64, i32* %flags63, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.59
  store i64 -1, i64* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.53
  %60 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf67 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %60, i32 0, i32 1
  %61 = load i8*, i8** %buf67, align 8
  %62 = load i64, i64* %avail, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %61, i64 %62
  %63 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end69 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %63, i32 0, i32 2
  store i8* %add.ptr68, i8** %end69, align 8
  %64 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %65 = load %struct._PerlIO*, %struct._PerlIO** %64, align 8
  %flags70 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %65, i32 0, i32 2
  %66 = load i32, i32* %flags70, align 4
  %or71 = or i32 %66, 262144
  store i32 %or71, i32* %flags70, align 4
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.end.65, %if.then.10, %if.then
  %67 = load i64, i64* %retval
  ret i64 %67
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool = icmp ne %struct._PerlIO** %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %tobool1 = icmp ne %struct._PerlIO* %5, null
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %6, i32 0, i32 3
  %7 = load i8*, i8** %ptr, align 8
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %8)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %10 = load i8*, i8** %vbuf.addr, align 8
  %11 = load i64, i64* %count.addr, align 8
  %call4 = call i64 @PerlIOBase_read(%struct._PerlIO** %9, i8* %10, i64 %11)
  store i64 %call4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.end
  %12 = load i64, i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_write(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %buf = alloca i8*, align 8
  %flushptr = alloca i8*, align 8
  %written = alloca i64, align 8
  %avail = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load i8*, i8** %vbuf.addr, align 8
  store i8* %3, i8** %buf, align 8
  %4 = load i8*, i8** %buf, align 8
  store i8* %4, i8** %flushptr, align 8
  store i64 0, i64* %written, align 8
  %5 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %5, i32 0, i32 1
  %6 = load i8*, i8** %buf1, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %9 = load %struct._PerlIO*, %struct._PerlIO** %8, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %9, i32 0, i32 2
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 512
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i64 0, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load %struct._PerlIO*, %struct._PerlIO** %11, align 8
  %flags5 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %12, i32 0, i32 2
  %13 = load i32, i32* %flags5, align 4
  %and6 = and i32 %13, 262144
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.4
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call9 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %14)
  %cmp = icmp ne i32 %call9, 0
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  store i64 0, i64* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.4
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %16 = load %struct._PerlIO*, %struct._PerlIO** %15, align 8
  %flags13 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %16, i32 0, i32 2
  %17 = load i32, i32* %flags13, align 4
  %and14 = and i32 %17, 524288
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.12
  %18 = load i8*, i8** %buf, align 8
  %19 = load i64, i64* %count.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %add.ptr, i8** %flushptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.16
  %20 = load i8*, i8** %flushptr, align 8
  %21 = load i8*, i8** %buf, align 8
  %cmp17 = icmp ugt i8* %20, %21
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %22 = load i8*, i8** %flushptr, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %22, i64 -1
  %23 = load i8, i8* %add.ptr18, align 1
  %conv = sext i8 %23 to i32
  %cmp19 = icmp ne i32 %conv, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load i8*, i8** %flushptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr, i8** %flushptr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %if.end.12
  br label %while.cond.22

while.cond.22:                                    ; preds = %if.end.63, %if.end.21
  %26 = load i64, i64* %count.addr, align 8
  %cmp23 = icmp ugt i64 %26, 0
  br i1 %cmp23, label %while.body.25, label %while.end.64

while.body.25:                                    ; preds = %while.cond.22
  %27 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %27, i32 0, i32 5
  %28 = load i64, i64* %bufsiz, align 8
  %29 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %29, i32 0, i32 3
  %30 = load i8*, i8** %ptr, align 8
  %31 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf26 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %31, i32 0, i32 1
  %32 = load i8*, i8** %buf26, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %28, %sub.ptr.sub
  store i64 %sub, i64* %avail, align 8
  %33 = load i64, i64* %count.addr, align 8
  %34 = load i64, i64* %avail, align 8
  %cmp27 = icmp slt i64 %33, %34
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.body.25
  %35 = load i64, i64* %count.addr, align 8
  store i64 %35, i64* %avail, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %while.body.25
  %36 = load i8*, i8** %flushptr, align 8
  %37 = load i8*, i8** %buf, align 8
  %cmp31 = icmp ugt i8* %36, %37
  br i1 %cmp31, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end.30
  %38 = load i8*, i8** %flushptr, align 8
  %39 = load i8*, i8** %buf, align 8
  %40 = load i64, i64* %avail, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %39, i64 %40
  %cmp34 = icmp ule i8* %38, %add.ptr33
  br i1 %cmp34, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %land.lhs.true
  %41 = load i8*, i8** %flushptr, align 8
  %42 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast37 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %42 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  store i64 %sub.ptr.sub39, i64* %avail, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %land.lhs.true, %if.end.30
  %43 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %44 = load %struct._PerlIO*, %struct._PerlIO** %43, align 8
  %flags41 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %44, i32 0, i32 2
  %45 = load i32, i32* %flags41, align 4
  %or = or i32 %45, 131072
  store i32 %or, i32* %flags41, align 4
  %46 = load i64, i64* %avail, align 8
  %tobool42 = icmp ne i64 %46, 0
  br i1 %tobool42, label %if.then.43, label %if.end.54

if.then.43:                                       ; preds = %if.end.40
  %47 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr44 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %47, i32 0, i32 3
  %48 = load i8*, i8** %ptr44, align 8
  %49 = load i8*, i8** %buf, align 8
  %50 = load i64, i64* %avail, align 8
  %mul = mul i64 %50, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 %mul, i32 1, i1 false)
  %51 = load i64, i64* %avail, align 8
  %52 = load i64, i64* %count.addr, align 8
  %sub45 = sub i64 %52, %51
  store i64 %sub45, i64* %count.addr, align 8
  %53 = load i64, i64* %avail, align 8
  %54 = load i8*, i8** %buf, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %add.ptr46, i8** %buf, align 8
  %55 = load i64, i64* %avail, align 8
  %56 = load i64, i64* %written, align 8
  %add = add i64 %56, %55
  store i64 %add, i64* %written, align 8
  %57 = load i64, i64* %avail, align 8
  %58 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr47 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %58, i32 0, i32 3
  %59 = load i8*, i8** %ptr47, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %59, i64 %57
  store i8* %add.ptr48, i8** %ptr47, align 8
  %60 = load i8*, i8** %buf, align 8
  %61 = load i8*, i8** %flushptr, align 8
  %cmp49 = icmp eq i8* %60, %61
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.then.43
  %62 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call52 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %62)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.then.43
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.40
  %63 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr55 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %63, i32 0, i32 3
  %64 = load i8*, i8** %ptr55, align 8
  %65 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf56 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %65, i32 0, i32 1
  %66 = load i8*, i8** %buf56, align 8
  %67 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz57 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %67, i32 0, i32 5
  %68 = load i64, i64* %bufsiz57, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %66, i64 %68
  %cmp59 = icmp uge i8* %64, %add.ptr58
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.54
  %69 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call62 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %69)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.54
  br label %while.cond.22

while.end.64:                                     ; preds = %while.cond.22
  %70 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %71 = load %struct._PerlIO*, %struct._PerlIO** %70, align 8
  %flags65 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %71, i32 0, i32 2
  %72 = load i32, i32* %flags65, align 4
  %and66 = and i32 %72, 65536
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %while.end.64
  %73 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call69 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %73)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %while.end.64
  %74 = load i64, i64* %written, align 8
  store i64 %74, i64* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.10, %if.then.3
  %75 = load i64, i64* %retval
  ret i64 %75
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_seek(%struct._PerlIO** %f, i64 %offset, i32 %whence) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %code = alloca i64, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %code, align 8
  %cmp = icmp eq i64 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %3 = bitcast %struct._PerlIO* %2 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %3, %struct.PerlIOBuf** %b, align 8
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %5, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, -257
  store i32 %and, i32* %flags, align 4
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %8 = load %struct._PerlIO*, %struct._PerlIO** %7, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 0
  %9 = load i64, i64* %offset.addr, align 8
  %10 = load i32, i32* %whence.addr, align 4
  %call2 = call i32 @Perl_PerlIO_seek(%struct._PerlIO** %next, i64 %9, i32 %10)
  %conv3 = sext i32 %call2 to i64
  store i64 %conv3, i64* %code, align 8
  %11 = load i64, i64* %code, align 8
  %cmp4 = icmp eq i64 %11, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %13 = load %struct._PerlIO*, %struct._PerlIO** %12, align 8
  %next7 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %13, i32 0, i32 0
  %call8 = call i64 @Perl_PerlIO_tell(%struct._PerlIO** %next7)
  %14 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %14, i32 0, i32 4
  store i64 %call8, i64* %posn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %15 = load i64, i64* %code, align 8
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_tell(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %posn = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %3, i32 0, i32 4
  %4 = load i64, i64* %posn1, align 8
  store i64 %4, i64* %posn, align 8
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %5, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 2
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %9 = load %struct._PerlIO*, %struct._PerlIO** %8, align 8
  %flags2 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %9, i32 0, i32 2
  %10 = load i32, i32* %flags2, align 4
  %and3 = and i32 %10, 131072
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %11)
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %13 = load %struct._PerlIO*, %struct._PerlIO** %12, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %13, i32 0, i32 0
  %call5 = call i64 @Perl_PerlIO_tell(%struct._PerlIO** %next)
  %14 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn6 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %14, i32 0, i32 4
  store i64 %call5, i64* %posn6, align 8
  store i64 %call5, i64* %posn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %15, i32 0, i32 1
  %16 = load i8*, i8** %buf, align 8
  %tobool7 = icmp ne i8* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %17 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %17, i32 0, i32 3
  %18 = load i8*, i8** %ptr, align 8
  %19 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf9 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %19, i32 0, i32 1
  %20 = load i8*, i8** %buf9, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = load i64, i64* %posn, align 8
  %add = add nsw i64 %21, %sub.ptr.sub
  store i64 %add, i64* %posn, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %22 = load i64, i64* %posn, align 8
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_popped(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %code = alloca i64, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 @PerlIOBase_popped(%struct._PerlIO** %0)
  store i64 %call, i64* %code, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %3 = bitcast %struct._PerlIO* %2 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %3, %struct.PerlIOBuf** %b, align 8
  %4 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %4, i32 0, i32 1
  %5 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %6, i32 0, i32 1
  %7 = load i8*, i8** %buf1, align 8
  %8 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %oneword = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %8, i32 0, i32 6
  %9 = bitcast i64* %oneword to i8*
  %cmp = icmp ne i8* %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf2 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %10, i32 0, i32 1
  %11 = load i8*, i8** %buf2, align 8
  call void @Perl_safesysfree(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf3 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %12, i32 0, i32 1
  store i8* null, i8** %buf3, align 8
  %13 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf4 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %13, i32 0, i32 1
  %14 = load i8*, i8** %buf4, align 8
  %15 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %15, i32 0, i32 2
  store i8* %14, i8** %end, align 8
  %16 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %16, i32 0, i32 3
  store i8* %14, i8** %ptr, align 8
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %18 = load %struct._PerlIO*, %struct._PerlIO** %17, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %18, i32 0, i32 2
  %19 = load i32, i32* %flags, align 4
  %and = and i32 %19, -393217
  store i32 %and, i32* %flags, align 4
  %20 = load i64, i64* %code, align 8
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_close(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %code = alloca i64, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 @PerlIOBase_close(%struct._PerlIO** %0)
  store i64 %call, i64* %code, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load %struct._PerlIO*, %struct._PerlIO** %1, align 8
  %3 = bitcast %struct._PerlIO* %2 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %3, %struct.PerlIOBuf** %b, align 8
  %4 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %4, i32 0, i32 1
  %5 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %6, i32 0, i32 1
  %7 = load i8*, i8** %buf1, align 8
  %8 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %oneword = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %8, i32 0, i32 6
  %9 = bitcast i64* %oneword to i8*
  %cmp = icmp ne i8* %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf2 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %10, i32 0, i32 1
  %11 = load i8*, i8** %buf2, align 8
  call void @Perl_safesysfree(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf3 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %12, i32 0, i32 1
  store i8* null, i8** %buf3, align 8
  %13 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf4 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %13, i32 0, i32 1
  %14 = load i8*, i8** %buf4, align 8
  %15 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %15, i32 0, i32 2
  store i8* %14, i8** %end, align 8
  %16 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %16, i32 0, i32 3
  store i8* %14, i8** %ptr, align 8
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %18 = load %struct._PerlIO*, %struct._PerlIO** %17, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %18, i32 0, i32 2
  %19 = load i32, i32* %flags, align 4
  %and = and i32 %19, -393217
  store i32 %and, i32* %flags, align 4
  %20 = load i64, i64* %code, align 8
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define i8* @PerlIOBuf_get_ptr(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %6, i32 0, i32 3
  %7 = load i8*, i8** %ptr, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_get_cnt(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %7, i32 0, i32 2
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, 262144
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %9, i32 0, i32 2
  %10 = load i8*, i8** %end, align 8
  %11 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %11, i32 0, i32 3
  %12 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i8* @PerlIOBuf_get_base(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end.18, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %5, i32 0, i32 5
  %6 = load i64, i64* %bufsiz, align 8
  %tobool1 = icmp ne i64 %6, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz3 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %7, i32 0, i32 5
  store i64 4096, i64* %bufsiz3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz4 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %8, i32 0, i32 5
  %9 = load i64, i64* %bufsiz4, align 8
  %mul = mul i64 %9, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  %10 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf5 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %10, i32 0, i32 1
  store i8* %call, i8** %buf5, align 8
  %11 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf6 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %11, i32 0, i32 1
  store i8* %call, i8** %buf6, align 8
  %12 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf7 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %12, i32 0, i32 1
  %13 = load i8*, i8** %buf7, align 8
  %14 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz8 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %14, i32 0, i32 5
  %15 = load i64, i64* %bufsiz8, align 8
  %mul9 = mul i64 %15, 1
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %mul9, i32 1, i1 false)
  %16 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf10 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %16, i32 0, i32 1
  %17 = load i8*, i8** %buf10, align 8
  %tobool11 = icmp ne i8* %17, null
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %18 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %oneword = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %18, i32 0, i32 6
  %19 = bitcast i64* %oneword to i8*
  %20 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf13 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %20, i32 0, i32 1
  store i8* %19, i8** %buf13, align 8
  %21 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz14 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %21, i32 0, i32 5
  store i64 8, i64* %bufsiz14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end
  %22 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf16 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %22, i32 0, i32 1
  %23 = load i8*, i8** %buf16, align 8
  %24 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %24, i32 0, i32 3
  store i8* %23, i8** %ptr, align 8
  %25 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr17 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %25, i32 0, i32 3
  %26 = load i8*, i8** %ptr17, align 8
  %27 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %27, i32 0, i32 2
  store i8* %26, i8** %end, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %entry
  %28 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf19 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %28, i32 0, i32 1
  %29 = load i8*, i8** %buf19, align 8
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOBuf_bufsiz(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %6, i32 0, i32 2
  %7 = load i8*, i8** %end, align 8
  %8 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %8, i32 0, i32 1
  %9 = load i8*, i8** %buf1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: nounwind uwtable
define void @PerlIOBuf_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i64 %cnt) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %ptr.addr = alloca i8*, align 8
  %cnt.addr = alloca i64, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %cnt, i64* %cnt.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %7, i32 0, i32 3
  store i8* %6, i8** %ptr1, align 8
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call2 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %8)
  %conv = sext i32 %call2 to i64
  %9 = load i64, i64* %cnt.addr, align 8
  %cmp = icmp ne i64 %conv, %9
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr4 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %10, i32 0, i32 3
  %11 = load i8*, i8** %ptr4, align 8
  %12 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf5 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %12, i32 0, i32 1
  %13 = load i8*, i8** %buf5, align 8
  %cmp6 = icmp ult i8* %11, %13
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %15 = load %struct._PerlIO*, %struct._PerlIO** %14, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %15, i32 0, i32 2
  %16 = load i32, i32* %flags, align 4
  %or = or i32 %16, 262144
  store i32 %or, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIOBuf_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %o.addr = alloca %struct._PerlIO**, align 8
  %param.addr = alloca %struct.clone_params*, align 8
  %flags.addr = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store %struct._PerlIO** %o, %struct._PerlIO*** %o.addr, align 8
  store %struct.clone_params* %param, %struct.clone_params** %param.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %o.addr, align 8
  %2 = load %struct.clone_params*, %struct.clone_params** %param.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call = call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %0, %struct._PerlIO** %1, %struct.clone_params* %2, i32 %3)
  ret %struct._PerlIO** %call
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOPending_fill(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %0)
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOPending_close(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %0)
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call1 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %1)
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOPending_seek(%struct._PerlIO** %f, i64 %offset, i32 %whence) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %0)
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load i64, i64* %offset.addr, align 8
  %3 = load i32, i32* %whence.addr, align 4
  %call1 = call i32 @Perl_PerlIO_seek(%struct._PerlIO** %1, i64 %2, i32 %3)
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOPending_flush(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %5, i32 0, i32 1
  %6 = load i8*, i8** %buf1, align 8
  %7 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %oneword = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %7, i32 0, i32 6
  %8 = bitcast i64* %oneword to i8*
  %cmp = icmp ne i8* %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf2 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %9, i32 0, i32 1
  %10 = load i8*, i8** %buf2, align 8
  call void @Perl_safesysfree(i8* %10)
  %11 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf3 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %11, i32 0, i32 1
  store i8* null, i8** %buf3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIO_pop(%struct._PerlIO** %12)
  ret i64 0
}

; Function Attrs: nounwind uwtable
define void @PerlIOPending_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i64 %cnt) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %ptr.addr = alloca i8*, align 8
  %cnt.addr = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %cnt, i64* %cnt.addr, align 8
  %0 = load i64, i64* %cnt.addr, align 8
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i64, i64* %cnt.addr, align 8
  call void @PerlIOBuf_set_ptrcnt(%struct._PerlIO** %2, i8* %3, i64 %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOPending_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  %code = alloca i64, align 8
  %l = alloca %struct._PerlIO*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %2 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %3 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %call = call i64 @PerlIOBase_pushed(%struct._PerlIO** %0, i8* %1, %struct.sv* %2, %struct._PerlIO_funcs* %3)
  store i64 %call, i64* %code, align 8
  %4 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %5 = load %struct._PerlIO*, %struct._PerlIO** %4, align 8
  store %struct._PerlIO* %5, %struct._PerlIO** %l, align 8
  %6 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %6, i32 0, i32 2
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, -4227073
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %9 = load %struct._PerlIO*, %struct._PerlIO** %8, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %9, i32 0, i32 0
  %10 = load %struct._PerlIO*, %struct._PerlIO** %next, align 8
  %flags1 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %10, i32 0, i32 2
  %11 = load i32, i32* %flags1, align 4
  %and2 = and i32 %11, 4227072
  %or = or i32 %and, %and2
  %12 = load %struct._PerlIO*, %struct._PerlIO** %l, align 8
  %flags3 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %12, i32 0, i32 2
  store i32 %or, i32* %flags3, align 4
  %13 = load i64, i64* %code, align 8
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOPending_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %avail = alloca i64, align 8
  %got = alloca i64, align 8
  %more = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %avail, align 8
  store i64 0, i64* %got, align 8
  %1 = load i64, i64* %count.addr, align 8
  %2 = load i64, i64* %avail, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %count.addr, align 8
  store i64 %3, i64* %avail, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %avail, align 8
  %cmp2 = icmp sgt i64 %4, 0
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %6 = load i8*, i8** %vbuf.addr, align 8
  %7 = load i64, i64* %avail, align 8
  %call5 = call i64 @PerlIOBuf_read(%struct._PerlIO** %5, i8* %6, i64 %7)
  store i64 %call5, i64* %got, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %8 = load i64, i64* %got, align 8
  %cmp7 = icmp sge i64 %8, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.6
  %9 = load i64, i64* %got, align 8
  %10 = load i64, i64* %count.addr, align 8
  %cmp9 = icmp slt i64 %9, %10
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %land.lhs.true
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load i8*, i8** %vbuf.addr, align 8
  %13 = load i64, i64* %got, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i64, i64* %count.addr, align 8
  %15 = load i64, i64* %got, align 8
  %sub = sub i64 %14, %15
  %call12 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %11, i8* %add.ptr, i64 %sub)
  store i64 %call12, i64* %more, align 8
  %16 = load i64, i64* %more, align 8
  %cmp13 = icmp sge i64 %16, 0
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.11
  %17 = load i64, i64* %got, align 8
  %cmp15 = icmp eq i64 %17, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.then.11
  %18 = load i64, i64* %more, align 8
  %19 = load i64, i64* %got, align 8
  %add = add nsw i64 %19, %18
  store i64 %add, i64* %got, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %lor.lhs.false
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %land.lhs.true, %if.end.6
  %20 = load i64, i64* %got, align 8
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOCrlf_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %mode.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.sv*, align 8
  %tab.addr = alloca %struct._PerlIO_funcs*, align 8
  %code = alloca i64, align 8
  %g = alloca %struct._PerlIO**, align 8
  %b = alloca %struct._PerlIO*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.sv* %arg, %struct.sv** %arg.addr, align 8
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %tab.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %or = or i32 %2, 16384
  store i32 %or, i32* %flags, align 4
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load i8*, i8** %mode.addr, align 8
  %5 = load %struct.sv*, %struct.sv** %arg.addr, align 8
  %6 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab.addr, align 8
  %call = call i64 @PerlIOBuf_pushed(%struct._PerlIO** %3, i8* %4, %struct.sv* %5, %struct._PerlIO_funcs* %6)
  store i64 %call, i64* %code, align 8
  %7 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %8 = load %struct._PerlIO*, %struct._PerlIO** %7, align 8
  %next = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %8, i32 0, i32 0
  store %struct._PerlIO** %next, %struct._PerlIO*** %g, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %entry
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %g, align 8
  %tobool = icmp ne %struct._PerlIO** %9, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load %struct._PerlIO**, %struct._PerlIO*** %g, align 8
  %11 = load %struct._PerlIO*, %struct._PerlIO** %10, align 8
  %tobool1 = icmp ne %struct._PerlIO* %11, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct._PerlIO**, %struct._PerlIO*** %g, align 8
  %14 = load %struct._PerlIO*, %struct._PerlIO** %13, align 8
  store %struct._PerlIO* %14, %struct._PerlIO** %b, align 8
  %15 = load %struct._PerlIO*, %struct._PerlIO** %b, align 8
  %tobool2 = icmp ne %struct._PerlIO* %15, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %while.body
  %16 = load %struct._PerlIO*, %struct._PerlIO** %b, align 8
  %tab3 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %16, i32 0, i32 1
  %17 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab3, align 8
  %cmp = icmp eq %struct._PerlIO_funcs* %17, @PerlIO_crlf
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct._PerlIO*, %struct._PerlIO** %b, align 8
  %flags4 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %18, i32 0, i32 2
  %19 = load i32, i32* %flags4, align 4
  %and = and i32 %19, 16384
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %20 = load %struct._PerlIO*, %struct._PerlIO** %b, align 8
  %flags7 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %20, i32 0, i32 2
  %21 = load i32, i32* %flags7, align 4
  %or8 = or i32 %21, 16384
  store i32 %or8, i32* %flags7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIO_pop(%struct._PerlIO** %22)
  %23 = load i64, i64* %code, align 8
  store i64 %23, i64* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %while.body
  %24 = load %struct._PerlIO**, %struct._PerlIO*** %g, align 8
  %25 = load %struct._PerlIO*, %struct._PerlIO** %24, align 8
  %next10 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %25, i32 0, i32 0
  store %struct._PerlIO** %next10, %struct._PerlIO*** %g, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load i64, i64* %code, align 8
  store i64 %26, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end
  %27 = load i64, i64* %retval
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOCrlf_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %c = alloca %struct.PerlIOCrlf*, align 8
  %buf = alloca i8*, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %unread = alloca i64, align 8
  %ch = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOCrlf*
  store %struct.PerlIOCrlf* %2, %struct.PerlIOCrlf** %c, align 8
  %3 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %3, i32 0, i32 1
  %4 = load i8*, i8** %nl, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl1 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %5, i32 0, i32 1
  %6 = load i8*, i8** %nl1, align 8
  store i8 13, i8* %6, align 1
  %7 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl2 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %7, i32 0, i32 1
  store i8* null, i8** %nl2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %9 = load %struct._PerlIO*, %struct._PerlIO** %8, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %9, i32 0, i32 2
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 16384
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %12 = load i8*, i8** %vbuf.addr, align 8
  %13 = load i64, i64* %count.addr, align 8
  %call = call i64 @PerlIOBuf_unread(%struct._PerlIO** %11, i8* %12, i64 %13)
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %14 = load i8*, i8** %vbuf.addr, align 8
  %15 = load i64, i64* %count.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %add.ptr, i8** %buf, align 8
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %17 = load %struct._PerlIO*, %struct._PerlIO** %16, align 8
  %18 = bitcast %struct._PerlIO* %17 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %18, %struct.PerlIOBuf** %b, align 8
  store i64 0, i64* %unread, align 8
  %19 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %20 = load %struct._PerlIO*, %struct._PerlIO** %19, align 8
  %flags5 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %20, i32 0, i32 2
  %21 = load i32, i32* %flags5, align 4
  %and6 = and i32 %21, 131072
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %22 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call9 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %22)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  %23 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf11 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %23, i32 0, i32 1
  %24 = load i8*, i8** %buf11, align 8
  %tobool12 = icmp ne i8* %24, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  %25 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call14 = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  %26 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf16 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %26, i32 0, i32 1
  %27 = load i8*, i8** %buf16, align 8
  %tobool17 = icmp ne i8* %27, null
  br i1 %tobool17, label %if.then.18, label %if.end.54

if.then.18:                                       ; preds = %if.end.15
  %28 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %29 = load %struct._PerlIO*, %struct._PerlIO** %28, align 8
  %flags19 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %29, i32 0, i32 2
  %30 = load i32, i32* %flags19, align 4
  %and20 = and i32 %30, 262144
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.27, label %if.then.22

if.then.22:                                       ; preds = %if.then.18
  %31 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf23 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %31, i32 0, i32 1
  %32 = load i8*, i8** %buf23, align 8
  %33 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %33, i32 0, i32 5
  %34 = load i64, i64* %bufsiz, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %32, i64 %34
  %35 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %35, i32 0, i32 3
  store i8* %add.ptr24, i8** %ptr, align 8
  %36 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %36, i32 0, i32 2
  store i8* %add.ptr24, i8** %end, align 8
  %37 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %38 = load %struct._PerlIO*, %struct._PerlIO** %37, align 8
  %flags25 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %38, i32 0, i32 2
  %39 = load i32, i32* %flags25, align 4
  %or = or i32 %39, 262144
  store i32 %or, i32* %flags25, align 4
  %40 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz26 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %40, i32 0, i32 5
  %41 = load i64, i64* %bufsiz26, align 8
  %42 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %posn = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %42, i32 0, i32 4
  %43 = load i64, i64* %posn, align 8
  %sub = sub i64 %43, %41
  store i64 %sub, i64* %posn, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.then.18
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %if.end.27
  %44 = load i64, i64* %count.addr, align 8
  %cmp = icmp ugt i64 %44, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %45 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr28 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %45, i32 0, i32 3
  %46 = load i8*, i8** %ptr28, align 8
  %47 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf29 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %47, i32 0, i32 1
  %48 = load i8*, i8** %buf29, align 8
  %cmp30 = icmp ugt i8* %46, %48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %49 = phi i1 [ false, %while.cond ], [ %cmp30, %land.rhs ]
  br i1 %49, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %50 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %incdec.ptr, i8** %buf, align 8
  %51 = load i8, i8* %incdec.ptr, align 1
  %conv = sext i8 %51 to i32
  store i32 %conv, i32* %ch, align 4
  %52 = load i32, i32* %ch, align 4
  %cmp31 = icmp eq i32 %52, 10
  br i1 %cmp31, label %if.then.33, label %if.else.47

if.then.33:                                       ; preds = %while.body
  %53 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr34 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %53, i32 0, i32 3
  %54 = load i8*, i8** %ptr34, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %54, i64 -2
  %55 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf36 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %55, i32 0, i32 1
  %56 = load i8*, i8** %buf36, align 8
  %cmp37 = icmp uge i8* %add.ptr35, %56
  br i1 %cmp37, label %if.then.39, label %if.else.44

if.then.39:                                       ; preds = %if.then.33
  %57 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr40 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %57, i32 0, i32 3
  %58 = load i8*, i8** %ptr40, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %incdec.ptr41, i8** %ptr40, align 8
  store i8 10, i8* %incdec.ptr41, align 1
  %59 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr42 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %59, i32 0, i32 3
  %60 = load i8*, i8** %ptr42, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr43, i8** %ptr42, align 8
  store i8 13, i8* %incdec.ptr43, align 1
  %61 = load i64, i64* %unread, align 8
  %inc = add nsw i64 %61, 1
  store i64 %inc, i64* %unread, align 8
  %62 = load i64, i64* %count.addr, align 8
  %dec = add i64 %62, -1
  store i64 %dec, i64* %count.addr, align 8
  br label %if.end.46

if.else.44:                                       ; preds = %if.then.33
  %63 = load i8*, i8** %buf, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr45, i8** %buf, align 8
  br label %while.end

if.end.46:                                        ; preds = %if.then.39
  br label %if.end.53

if.else.47:                                       ; preds = %while.body
  %64 = load i32, i32* %ch, align 4
  %conv48 = trunc i32 %64 to i8
  %65 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr49 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %65, i32 0, i32 3
  %66 = load i8*, i8** %ptr49, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %incdec.ptr50, i8** %ptr49, align 8
  store i8 %conv48, i8* %incdec.ptr50, align 1
  %67 = load i64, i64* %unread, align 8
  %inc51 = add nsw i64 %67, 1
  store i64 %inc51, i64* %unread, align 8
  %68 = load i64, i64* %count.addr, align 8
  %dec52 = add i64 %68, -1
  store i64 %dec52, i64* %count.addr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.47, %if.end.46
  br label %while.cond

while.end:                                        ; preds = %if.else.44, %land.end
  br label %if.end.54

if.end.54:                                        ; preds = %while.end, %if.end.15
  %69 = load i64, i64* %unread, align 8
  store i64 %69, i64* %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.4
  %70 = load i64, i64* %retval
  ret i64 %70
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOCrlf_get_cnt(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %c = alloca %struct.PerlIOCrlf*, align 8
  %nl10 = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %7, i32 0, i32 2
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, 262144
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.77

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %10 = load %struct._PerlIO*, %struct._PerlIO** %9, align 8
  %11 = bitcast %struct._PerlIO* %10 to %struct.PerlIOCrlf*
  store %struct.PerlIOCrlf* %11, %struct.PerlIOCrlf** %c, align 8
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %13 = load %struct._PerlIO*, %struct._PerlIO** %12, align 8
  %flags3 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %13, i32 0, i32 2
  %14 = load i32, i32* %flags3, align 4
  %and4 = and i32 %14, 16384
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %if.then.2
  %15 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %15, i32 0, i32 1
  %16 = load i8*, i8** %nl, align 8
  %tobool6 = icmp ne i8* %16, null
  br i1 %tobool6, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl7 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %17, i32 0, i32 1
  %18 = load i8*, i8** %nl7, align 8
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %if.then.9, label %if.end.63

if.then.9:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %20 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl11 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %20, i32 0, i32 1
  %21 = load i8*, i8** %nl11, align 8
  %tobool12 = icmp ne i8* %21, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %22 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl13 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %22, i32 0, i32 1
  %23 = load i8*, i8** %nl13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %24 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %24, i32 0, i32 3
  %25 = load i8*, i8** %ptr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ %25, %cond.false ]
  store i8* %cond, i8** %nl10, align 8
  br label %scan

scan:                                             ; preds = %if.else, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %scan
  %26 = load i8*, i8** %nl10, align 8
  %27 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %27, i32 0, i32 2
  %28 = load i8*, i8** %end, align 8
  %cmp14 = icmp ult i8* %26, %28
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %29 = load i8*, i8** %nl10, align 8
  %30 = load i8, i8* %29, align 1
  %conv16 = sext i8 %30 to i32
  %cmp17 = icmp ne i32 %conv16, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load i8*, i8** %nl10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %nl10, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load i8*, i8** %nl10, align 8
  %34 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end19 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %34, i32 0, i32 2
  %35 = load i8*, i8** %end19, align 8
  %cmp20 = icmp ult i8* %33, %35
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.62

land.lhs.true.22:                                 ; preds = %while.end
  %36 = load i8*, i8** %nl10, align 8
  %37 = load i8, i8* %36, align 1
  %conv23 = sext i8 %37 to i32
  %cmp24 = icmp eq i32 %conv23, 13
  br i1 %cmp24, label %if.then.26, label %if.end.62

if.then.26:                                       ; preds = %land.lhs.true.22
  br label %test

test:                                             ; preds = %if.then.58, %if.then.26
  %38 = load i8*, i8** %nl10, align 8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end27 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %39, i32 0, i32 2
  %40 = load i8*, i8** %end27, align 8
  %cmp28 = icmp ult i8* %add.ptr, %40
  br i1 %cmp28, label %if.then.30, label %if.else.38

if.then.30:                                       ; preds = %test
  %41 = load i8*, i8** %nl10, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx, align 1
  %conv31 = sext i8 %42 to i32
  %cmp32 = icmp eq i32 %conv31, 10
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.30
  %43 = load i8*, i8** %nl10, align 8
  store i8 10, i8* %43, align 1
  %44 = load i8*, i8** %nl10, align 8
  %45 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl35 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %45, i32 0, i32 1
  store i8* %44, i8** %nl35, align 8
  br label %if.end.37

if.else:                                          ; preds = %if.then.30
  %46 = load i8*, i8** %nl10, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr36, i8** %nl10, align 8
  br label %scan

if.end.37:                                        ; preds = %if.then.34
  br label %if.end.61

if.else.38:                                       ; preds = %test
  %47 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr39 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %47, i32 0, i32 3
  %48 = load i8*, i8** %ptr39, align 8
  %49 = load i8*, i8** %nl10, align 8
  %cmp40 = icmp ult i8* %48, %49
  br i1 %cmp40, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.else.38
  %50 = load i8*, i8** %nl10, align 8
  %51 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl43 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %51, i32 0, i32 1
  store i8* %50, i8** %nl43, align 8
  %52 = load i8*, i8** %nl10, align 8
  %53 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr44 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %53, i32 0, i32 3
  %54 = load i8*, i8** %ptr44, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval
  br label %return

if.else.45:                                       ; preds = %if.else.38
  %55 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr46 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %55, i32 0, i32 3
  %56 = load i8*, i8** %ptr46, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr47, i8** %ptr46, align 8
  %57 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf48 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %57, i32 0, i32 1
  %58 = load i8*, i8** %buf48, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr49, i8** %buf48, align 8
  %59 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %59, i32 0, i32 5
  %60 = load i64, i64* %bufsiz, align 8
  %dec = add i64 %60, -1
  store i64 %dec, i64* %bufsiz, align 8
  %61 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call50 = call i32 @Perl_PerlIO_fill(%struct._PerlIO** %61)
  store i32 %call50, i32* %code, align 4
  %62 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz51 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %62, i32 0, i32 5
  %63 = load i64, i64* %bufsiz51, align 8
  %inc = add i64 %63, 1
  store i64 %inc, i64* %bufsiz51, align 8
  %64 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf52 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %64, i32 0, i32 1
  %65 = load i8*, i8** %buf52, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %incdec.ptr53, i8** %buf52, align 8
  %66 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf54 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %66, i32 0, i32 1
  %67 = load i8*, i8** %buf54, align 8
  store i8* %67, i8** %nl10, align 8
  %68 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr55 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %68, i32 0, i32 3
  store i8* %67, i8** %ptr55, align 8
  %69 = load i8*, i8** %nl10, align 8
  store i8 13, i8* %69, align 1
  %70 = load i32, i32* %code, align 4
  %cmp56 = icmp eq i32 %70, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else.45
  br label %test

if.end.59:                                        ; preds = %if.else.45
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.37
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.22, %while.end
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %lor.lhs.false, %if.then.2
  %71 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl64 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %71, i32 0, i32 1
  %72 = load i8*, i8** %nl64, align 8
  %tobool65 = icmp ne i8* %72, null
  br i1 %tobool65, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %if.end.63
  %73 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl67 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %73, i32 0, i32 1
  %74 = load i8*, i8** %nl67, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %74, i64 1
  br label %cond.end.71

cond.false.69:                                    ; preds = %if.end.63
  %75 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end70 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %75, i32 0, i32 2
  %76 = load i8*, i8** %end70, align 8
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.66
  %cond72 = phi i8* [ %add.ptr68, %cond.true.66 ], [ %76, %cond.false.69 ]
  %77 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr73 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %77, i32 0, i32 3
  %78 = load i8*, i8** %ptr73, align 8
  %sub.ptr.lhs.cast74 = ptrtoint i8* %cond72 to i64
  %sub.ptr.rhs.cast75 = ptrtoint i8* %78 to i64
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  store i64 %sub.ptr.sub76, i64* %retval
  br label %return

if.end.77:                                        ; preds = %if.end
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.77, %cond.end.71, %if.then.42
  %79 = load i64, i64* %retval
  ret i64 %79
}

; Function Attrs: nounwind uwtable
define void @PerlIOCrlf_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i64 %cnt) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %ptr.addr = alloca i8*, align 8
  %cnt.addr = alloca i64, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %c = alloca %struct.PerlIOCrlf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %cnt, i64* %cnt.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %2, %struct.PerlIOBuf** %b, align 8
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %5 = bitcast %struct._PerlIO* %4 to %struct.PerlIOCrlf*
  store %struct.PerlIOCrlf* %5, %struct.PerlIOCrlf** %c, align 8
  %6 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %6, i32 0, i32 1
  %7 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %ptr.addr, align 8
  %tobool1 = icmp ne i8* %9, null
  br i1 %tobool1, label %if.else.14, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %10 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %10, i32 0, i32 1
  %11 = load i8*, i8** %nl, align 8
  %tobool3 = icmp ne i8* %11, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %12 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl5 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %12, i32 0, i32 1
  %13 = load i8*, i8** %nl5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %add.ptr, i8** %ptr.addr, align 8
  %14 = load i8*, i8** %ptr.addr, align 8
  %15 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %15, i32 0, i32 2
  %16 = load i8*, i8** %end, align 8
  %cmp = icmp eq i8* %14, %16
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.then.4
  %17 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl6 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %17, i32 0, i32 1
  %18 = load i8*, i8** %nl6, align 8
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  %cmp7 = icmp eq i32 %conv, 13
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  %20 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true, %if.then.4
  br label %if.end.12

if.else:                                          ; preds = %if.then.2
  %21 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %end11 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %21, i32 0, i32 2
  %22 = load i8*, i8** %end11, align 8
  store i8* %22, i8** %ptr.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.10
  %23 = load i64, i64* %cnt.addr, align 8
  %24 = load i8*, i8** %ptr.addr, align 8
  %idx.neg = sub i64 0, %23
  %add.ptr13 = getelementptr inbounds i8, i8* %24, i64 %idx.neg
  store i8* %add.ptr13, i8** %ptr.addr, align 8
  br label %if.end.15

if.else.14:                                       ; preds = %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.end.12
  %25 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl16 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %25, i32 0, i32 1
  %26 = load i8*, i8** %nl16, align 8
  %tobool17 = icmp ne i8* %26, null
  br i1 %tobool17, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %if.end.15
  %27 = load i8*, i8** %ptr.addr, align 8
  %28 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl19 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %28, i32 0, i32 1
  %29 = load i8*, i8** %nl19, align 8
  %cmp20 = icmp ugt i8* %27, %29
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.then.18
  %30 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl23 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %30, i32 0, i32 1
  %31 = load i8*, i8** %nl23, align 8
  store i8 13, i8* %31, align 1
  %32 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl24 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %32, i32 0, i32 1
  store i8* null, i8** %nl24, align 8
  %33 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr25, i8** %ptr.addr, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.15
  %34 = load i8*, i8** %ptr.addr, align 8
  %35 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr28 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %35, i32 0, i32 3
  store i8* %34, i8** %ptr28, align 8
  %36 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %37 = load %struct._PerlIO*, %struct._PerlIO** %36, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %37, i32 0, i32 2
  %38 = load i32, i32* %flags, align 4
  %or = or i32 %38, 262144
  store i32 %or, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOCrlf_write(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %vbuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %b = alloca %struct.PerlIOBuf*, align 8
  %buf = alloca i8*, align 8
  %ebuf = alloca i8*, align 8
  %eptr = alloca i8*, align 8
  %ch = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %vbuf, i8** %vbuf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load i8*, i8** %vbuf.addr, align 8
  %5 = load i64, i64* %count.addr, align 8
  %call = call i64 @PerlIOBuf_write(%struct._PerlIO** %3, i8* %4, i64 %5)
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  %8 = bitcast %struct._PerlIO* %7 to %struct.PerlIOBuf*
  store %struct.PerlIOBuf* %8, %struct.PerlIOBuf** %b, align 8
  %9 = load i8*, i8** %vbuf.addr, align 8
  store i8* %9, i8** %buf, align 8
  %10 = load i8*, i8** %buf, align 8
  %11 = load i64, i64* %count.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %add.ptr, i8** %ebuf, align 8
  %12 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf1 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %12, i32 0, i32 1
  %13 = load i8*, i8** %buf1, align 8
  %tobool2 = icmp ne i8* %13, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call4 = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %14)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %16 = load %struct._PerlIO*, %struct._PerlIO** %15, align 8
  %flags5 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %16, i32 0, i32 2
  %17 = load i32, i32* %flags5, align 4
  %and6 = and i32 %17, 512
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i64 0, i64* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.9
  %18 = load i8*, i8** %buf, align 8
  %19 = load i8*, i8** %ebuf, align 8
  %cmp = icmp ult i8* %18, %19
  br i1 %cmp, label %while.body, label %while.end.51

while.body:                                       ; preds = %while.cond
  %20 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %buf10 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %20, i32 0, i32 1
  %21 = load i8*, i8** %buf10, align 8
  %22 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %bufsiz = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %22, i32 0, i32 5
  %23 = load i64, i64* %bufsiz, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %add.ptr11, i8** %eptr, align 8
  %24 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %25 = load %struct._PerlIO*, %struct._PerlIO** %24, align 8
  %flags12 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %25, i32 0, i32 2
  %26 = load i32, i32* %flags12, align 4
  %or = or i32 %26, 131072
  store i32 %or, i32* %flags12, align 4
  br label %while.cond.13

while.cond.13:                                    ; preds = %if.end.50, %while.body
  %27 = load i8*, i8** %buf, align 8
  %28 = load i8*, i8** %ebuf, align 8
  %cmp14 = icmp ult i8* %27, %28
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.13
  %29 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %29, i32 0, i32 3
  %30 = load i8*, i8** %ptr, align 8
  %31 = load i8*, i8** %eptr, align 8
  %cmp15 = icmp ult i8* %30, %31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.13
  %32 = phi i1 [ false, %while.cond.13 ], [ %cmp15, %land.rhs ]
  br i1 %32, label %while.body.16, label %while.end

while.body.16:                                    ; preds = %land.end
  %33 = load i8*, i8** %buf, align 8
  %34 = load i8, i8* %33, align 1
  %conv = sext i8 %34 to i32
  %cmp17 = icmp eq i32 %conv, 10
  br i1 %cmp17, label %if.then.19, label %if.else.38

if.then.19:                                       ; preds = %while.body.16
  %35 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr20 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %35, i32 0, i32 3
  %36 = load i8*, i8** %ptr20, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i8*, i8** %eptr, align 8
  %cmp22 = icmp ugt i8* %add.ptr21, %37
  br i1 %cmp22, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.then.19
  %38 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call25 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %38)
  br label %while.end

if.else.26:                                       ; preds = %if.then.19
  %39 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr27 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %39, i32 0, i32 3
  %40 = load i8*, i8** %ptr27, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %ptr27, align 8
  store i8 13, i8* %40, align 1
  %41 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr28 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %41, i32 0, i32 3
  %42 = load i8*, i8** %ptr28, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr29, i8** %ptr28, align 8
  store i8 10, i8* %42, align 1
  %43 = load i8*, i8** %buf, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr30, i8** %buf, align 8
  %44 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %45 = load %struct._PerlIO*, %struct._PerlIO** %44, align 8
  %flags31 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %45, i32 0, i32 2
  %46 = load i32, i32* %flags31, align 4
  %and32 = and i32 %46, 524288
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.else.26
  %47 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call35 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %47)
  br label %while.end

if.end.36:                                        ; preds = %if.else.26
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36
  br label %if.end.44

if.else.38:                                       ; preds = %while.body.16
  %48 = load i8*, i8** %buf, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr39, i8** %buf, align 8
  %49 = load i8, i8* %48, align 1
  %conv40 = sext i8 %49 to i32
  store i32 %conv40, i32* %ch, align 4
  %50 = load i32, i32* %ch, align 4
  %conv41 = trunc i32 %50 to i8
  %51 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr42 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %51, i32 0, i32 3
  %52 = load i8*, i8** %ptr42, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr43, i8** %ptr42, align 8
  store i8 %conv41, i8* %52, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.38, %if.end.37
  %53 = load %struct.PerlIOBuf*, %struct.PerlIOBuf** %b, align 8
  %ptr45 = getelementptr inbounds %struct.PerlIOBuf, %struct.PerlIOBuf* %53, i32 0, i32 3
  %54 = load i8*, i8** %ptr45, align 8
  %55 = load i8*, i8** %eptr, align 8
  %cmp46 = icmp uge i8* %54, %55
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.44
  %56 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call49 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %56)
  br label %while.end

if.end.50:                                        ; preds = %if.end.44
  br label %while.cond.13

while.end:                                        ; preds = %if.then.48, %if.then.34, %if.then.24, %land.end
  br label %while.cond

while.end.51:                                     ; preds = %while.cond
  %57 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %58 = load %struct._PerlIO*, %struct._PerlIO** %57, align 8
  %flags52 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %58, i32 0, i32 2
  %59 = load i32, i32* %flags52, align 4
  %and53 = and i32 %59, 65536
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %while.end.51
  %60 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call56 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %60)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %while.end.51
  %61 = load i8*, i8** %buf, align 8
  %62 = load i8*, i8** %vbuf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %62 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.8, %if.then
  %63 = load i64, i64* %retval
  ret i64 %63
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOCrlf_flush(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %c = alloca %struct.PerlIOCrlf*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %2 = bitcast %struct._PerlIO* %1 to %struct.PerlIOCrlf*
  store %struct.PerlIOCrlf* %2, %struct.PerlIOCrlf** %c, align 8
  %3 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %3, i32 0, i32 1
  %4 = load i8*, i8** %nl, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl1 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %5, i32 0, i32 1
  %6 = load i8*, i8** %nl1, align 8
  store i8 13, i8* %6, align 1
  %7 = load %struct.PerlIOCrlf*, %struct.PerlIOCrlf** %c, align 8
  %nl2 = getelementptr inbounds %struct.PerlIOCrlf, %struct.PerlIOCrlf* %7, i32 0, i32 1
  store i8* null, i8** %nl2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 @PerlIOBuf_flush(%struct._PerlIO** %8)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @PerlIOCrlf_binmode(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load %struct._PerlIO*, %struct._PerlIO** %0, align 8
  %flags = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %4 = load %struct._PerlIO*, %struct._PerlIO** %3, align 8
  %flags1 = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %4, i32 0, i32 2
  %5 = load i32, i32* %flags1, align 4
  %and2 = and i32 %5, -16385
  store i32 %and2, i32* %flags1, align 4
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %7 = load %struct._PerlIO*, %struct._PerlIO** %6, align 8
  %tab = getelementptr inbounds %struct._PerlIO, %struct._PerlIO* %7, i32 0, i32 1
  %8 = load %struct._PerlIO_funcs*, %struct._PerlIO_funcs** %tab, align 8
  %cmp = icmp eq %struct._PerlIO_funcs* %8, @PerlIO_crlf
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @PerlIO_pop(%struct._PerlIO** %9)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret i64 0
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @Perl_PerlIO_stdin() #0 {
entry:
  %0 = load %struct._PerlIO**, %struct._PerlIO*** @PL_perlio, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @PerlIO_stdstreams()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** @PL_perlio, align 8
  %arrayidx = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %1, i64 1
  ret %struct._PerlIO** %arrayidx
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @Perl_PerlIO_stdout() #0 {
entry:
  %0 = load %struct._PerlIO**, %struct._PerlIO*** @PL_perlio, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @PerlIO_stdstreams()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** @PL_perlio, align 8
  %arrayidx = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %1, i64 2
  ret %struct._PerlIO** %arrayidx
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @Perl_PerlIO_stderr() #0 {
entry:
  %0 = load %struct._PerlIO**, %struct._PerlIO*** @PL_perlio, align 8
  %tobool = icmp ne %struct._PerlIO** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @PerlIO_stdstreams()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._PerlIO**, %struct._PerlIO*** @PL_perlio, align 8
  %arrayidx = getelementptr inbounds %struct._PerlIO*, %struct._PerlIO** %1, i64 3
  ret %struct._PerlIO** %arrayidx
}

; Function Attrs: nounwind uwtable
define i8* @PerlIO_getname(%struct._PerlIO** %f, i8* %buf) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %buf.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* null, i8** %name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0))
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIO_open(i8* %path, i8* %mode) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %name = alloca %struct.sv*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8*, i8** %path.addr, align 8
  %call = call i64 @strlen(i8* %1)
  %call1 = call %struct.sv* @Perl_newSVpvn(i8* %0, i64 %call)
  %call2 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1)
  store %struct.sv* %call2, %struct.sv** %name, align 8
  %2 = load i8*, i8** %mode.addr, align 8
  %call3 = call %struct._PerlIO** @PerlIO_openn(i8* null, i8* %2, i32 -1, i32 0, i32 0, %struct._PerlIO** null, i32 1, %struct.sv** %name)
  ret %struct._PerlIO** %call3
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @PerlIO_reopen(i8* %path, i8* %mode, %struct._PerlIO** %f) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %f.addr = alloca %struct._PerlIO**, align 8
  %name = alloca %struct.sv*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8*, i8** %path.addr, align 8
  %call = call i64 @strlen(i8* %1)
  %call1 = call %struct.sv* @Perl_newSVpvn(i8* %0, i64 %call)
  %call2 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1)
  store %struct.sv* %call2, %struct.sv** %name, align 8
  %2 = load i8*, i8** %mode.addr, align 8
  %3 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call3 = call %struct._PerlIO** @PerlIO_openn(i8* null, i8* %2, i32 -1, i32 0, i32 0, %struct._PerlIO** %3, i32 1, %struct.sv** %name)
  ret %struct._PerlIO** %call3
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_getc(%struct._PerlIO** %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %buf = alloca [1 x i8], align 1
  %count = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i32 0, i32 0
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %0, i8* %arraydecay, i64 1)
  store i64 %call, i64* %count, align 8
  %1 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_ungetc(%struct._PerlIO** %f, i32 %ch) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %ch.addr = alloca i32, align 4
  %buf = alloca i8, align 1
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i32, i32* %ch.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ch.addr, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, i8* %buf, align 1
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 @Perl_PerlIO_unread(%struct._PerlIO** %2, i8* %buf, i64 1)
  %cmp1 = icmp eq i64 %call, 1
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i32, i32* %ch.addr, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_putc(%struct._PerlIO** %f, i32 %ch) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %ch.addr = alloca i32, align 4
  %buf = alloca i8, align 1
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i32, i32* %ch.addr, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, i8* %buf, align 1
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 @Perl_PerlIO_write(%struct._PerlIO** %1, i8* %buf, i64 1)
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_puts(%struct._PerlIO** %f, i8* %s) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %s.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0)
  store i64 %call, i64* %len, align 8
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i64, i64* %len, align 8
  %call1 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %1, i8* %2, i64 %3)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @PerlIO_rewind(%struct._PerlIO** %f) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i32 @Perl_PerlIO_seek(%struct._PerlIO** %0, i64 0, i32 0)
  %1 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  call void @Perl_PerlIO_clearerr(%struct._PerlIO** %1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_vprintf(%struct._PerlIO** %f, i8* %fmt, %struct.__va_list_tag* %ap) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %sv = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %wrote = alloca i64, align 8
  %apc = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  %call = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i32 0, i32 0), i64 0)
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %apc, i32 0, i32 0
  %0 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  %2 = bitcast %struct.__va_list_tag* %0 to i8*
  call void @llvm.va_copy(i8* %1, i8* %2)
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  %4 = load i8*, i8** %fmt.addr, align 8
  call void @Perl_sv_vcatpvf(%struct.sv* %3, i8* %4, [1 x %struct.__va_list_tag]* %apc)
  %5 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and = and i32 %6, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 1
  %10 = load i64, i64* %xpv_cur, align 8
  store i64 %10, i64* %len, align 8
  %11 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any1, align 8
  %13 = bitcast i8* %12 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %13, i32 0, i32 0
  %14 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load %struct.sv*, %struct.sv** %sv, align 8
  %call2 = call i8* @Perl_sv_2pv_flags(%struct.sv* %15, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ %call2, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %17 = load i8*, i8** %s, align 8
  %18 = load i64, i64* %len, align 8
  %call3 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %16, i8* %17, i64 %18)
  store i64 %call3, i64* %wrote, align 8
  %19 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %19)
  %20 = load i64, i64* %wrote, align 8
  %conv = trunc i64 %20 to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #1

declare void @Perl_sv_vcatpvf(%struct.sv*, i8*, [1 x %struct.__va_list_tag]*) #2

; Function Attrs: nounwind uwtable
define i32 @PerlIO_printf(%struct._PerlIO** %f, i8* %fmt, ...) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %result = alloca i32, align 4
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %1 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @PerlIO_vprintf(%struct._PerlIO** %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  store i32 %call, i32* %result, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_stdoutf(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %result = alloca i32, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %0 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @PerlIO_vprintf(%struct._PerlIO** %call, i8* %0, %struct.__va_list_tag* %arraydecay2)
  store i32 %call3, i32* %result, align 4
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %1 = load i32, i32* %result, align 4
  ret i32 %1
}

declare %struct._IO_FILE* @tmpfile() #2

; Function Attrs: nounwind uwtable
define i32 @PerlIO_setpos(%struct._PerlIO** %f, %struct.sv* %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._PerlIO**, align 8
  %pos.addr = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %posn = alloca i64*, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store %struct.sv* %pos, %struct.sv** %pos.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %pos.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 118423552
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %pos.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %3, 262144
  %cmp = icmp eq i32 %and2, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load %struct.sv*, %struct.sv** %pos.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 1
  %7 = load i64, i64* %xpv_cur, align 8
  store i64 %7, i64* %len, align 8
  %8 = load %struct.sv*, %struct.sv** %pos.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any3, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 0
  %11 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load %struct.sv*, %struct.sv** %pos.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %12, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ %call, %cond.false ]
  %13 = bitcast i8* %cond to i64*
  store i64* %13, i64** %posn, align 8
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %tobool4 = icmp ne %struct._PerlIO** %14, null
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %15 = load i64, i64* %len, align 8
  %cmp5 = icmp eq i64 %15, 8
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %17 = load i64*, i64** %posn, align 8
  %18 = load i64, i64* %17, align 8
  %call7 = call i32 @Perl_PerlIO_seek(%struct._PerlIO** %16, i64 %18, i32 0)
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %call9 = call i32* @__errno_location()
  store i32 22, i32* %call9, align 4
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @PerlIO_getpos(%struct._PerlIO** %f, %struct.sv* %pos) #0 {
entry:
  %f.addr = alloca %struct._PerlIO**, align 8
  %pos.addr = alloca %struct.sv*, align 8
  %posn = alloca i64, align 8
  store %struct._PerlIO** %f, %struct._PerlIO*** %f.addr, align 8
  store %struct.sv* %pos, %struct.sv** %pos.addr, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %f.addr, align 8
  %call = call i64 @Perl_PerlIO_tell(%struct._PerlIO** %0)
  store i64 %call, i64* %posn, align 8
  %1 = load %struct.sv*, %struct.sv** %pos.addr, align 8
  %2 = bitcast i64* %posn to i8*
  call void @Perl_sv_setpvn(%struct.sv* %1, i8* %2, i64 8)
  %3 = load i64, i64* %posn, align 8
  %cmp = icmp eq i64 %3, -1
  %cond = select i1 %cmp, i32 -1, i32 0
  ret i32 %cond
}

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @PerlIO_vsprintf(i8* %s, i32 %n, i8* %fmt, %struct.__va_list_tag* %ap) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %val = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %fmt.addr, align 8
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %call = call i32 @vsprintf(i8* %0, i8* %1, %struct.__va_list_tag* %2)
  store i32 %call, i32* %val, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8
  %call1 = call i64 @strlen(i8* %4)
  %5 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %5 to i64
  %cmp2 = icmp uge i64 %call1, %conv
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool = icmp ne %struct.gv* %6, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.4
  %7 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags, align 4
  %and = and i32 %8, 255
  %cmp5 = icmp eq i32 %and, 13
  br i1 %cmp5, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %9 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %9, i32 0, i32 0
  %10 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %10, i32 0, i32 7
  %11 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %11, i32 0, i32 2
  %12 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool8 = icmp ne %struct.io* %12, null
  br i1 %tobool8, label %land.lhs.true.9, label %cond.false

land.lhs.true.9:                                  ; preds = %land.lhs.true.7
  %13 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any10 = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any10, align 8
  %xgv_gp11 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 7
  %15 = load %struct.gp*, %struct.gp** %xgv_gp11, align 8
  %gp_io12 = getelementptr inbounds %struct.gp, %struct.gp* %15, i32 0, i32 2
  %16 = load %struct.io*, %struct.io** %gp_io12, align 8
  %sv_any13 = getelementptr inbounds %struct.io, %struct.io* %16, i32 0, i32 0
  %17 = load %struct.xpvio*, %struct.xpvio** %sv_any13, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %17, i32 0, i32 8
  %18 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool14 = icmp ne %struct._PerlIO** %18, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.9
  %19 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any15 = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any15, align 8
  %xgv_gp16 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp16, align 8
  %gp_io17 = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 2
  %22 = load %struct.io*, %struct.io** %gp_io17, align 8
  %sv_any18 = getelementptr inbounds %struct.io, %struct.io* %22, i32 0, i32 0
  %23 = load %struct.xpvio*, %struct.xpvio** %sv_any18, align 8
  %xio_ofp19 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %23, i32 0, i32 8
  %24 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp19, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.9, %land.lhs.true.7, %land.lhs.true, %if.then.4
  %call20 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %24, %cond.true ], [ %call20, %cond.false ]
  %call21 = call i32 @PerlIO_puts(%struct._PerlIO** %cond, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.48, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %25 = load i32, i32* %val, align 4
  ret i32 %25
}

declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #2

declare void @Perl_my_exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @PerlIO_sprintf(i8* %s, i32 %n, i8* %fmt, ...) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %result = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @PerlIO_vsprintf(i8* %0, i32 %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  store i32 %call, i32* %result, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %3 = load i32, i32* %result, align 4
  ret i32 %3
}

declare i8* @strchr(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
