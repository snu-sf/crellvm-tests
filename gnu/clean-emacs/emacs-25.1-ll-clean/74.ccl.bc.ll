; ModuleID = './src/ccl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_stack = type { i32, i32 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ccl_prog_stack = type { i64*, i32, i32 }
%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.vectorlike_header = type { i64 }
%struct.ccl_program = type { i64, i32, i64*, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i8 }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.0, i16, i16, i8*, i8*, i8* }
%union.anon.0 = type { i64 ()* }

@mapping_stack = internal global [30 x %struct.tr_stack] zeroinitializer, align 16
@mapping_stack_pointer = internal global %struct.tr_stack* null, align 8
@globals = external global %struct.emacs_globals, align 8
@Vccl_program_table = internal global i64 0, align 8
@ccl_prog_stack_struct = internal global [256 x %struct.ccl_prog_stack] zeroinitializer, align 16
@charset_table = external global %struct.charset*, align 8
@Vcharset_hash_table = external global i64, align 8
@charset_unicode = external global i32, align 4
@stack_idx_of_map_multiple = internal global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"\0ACCL: Invalid command %x (ccl_code = %x) at %d.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\0ACCL: Quitted.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0ACCL: Unknown error type (%d)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid CCL program\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Length of vector REGISTERS is not 8\00", align 1
@pending_signals = external global i8, align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Error in CCL program at %dth code\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Length of vector STATUS is not 9\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"CCL program interrupted at %dth code\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Error in CCL program\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Invalid code-conversion-map-vector\00", align 1
@syms_of_ccl.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"code-conversion-map-vector\00", align 1
@syms_of_ccl.o_fwd.11 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"font-ccl-encoder-alist\00", align 1
@syms_of_ccl.o_fwd.13 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"translation-hash-table-vector\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ccl-program-p\00", align 1
@Sccl_program_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fccl_program_p }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"ccl-execute\00", align 1
@Sccl_execute = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fccl_execute }, i16 2, i16 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"ccl-execute-on-string\00", align 1
@Sccl_execute_on_string = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fccl_execute_on_string }, i16 3, i16 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"register-ccl-program\00", align 1
@Sregister_ccl_program = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fregister_ccl_program }, i16 2, i16 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.19 = private unnamed_addr constant [29 x i8] c"register-code-conversion-map\00", align 1
@Sregister_code_conversion_map = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fregister_code_conversion_map }, i16 2, i16 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @ccl_driver(%struct.ccl_program* %ccl, i32* %source, i32* %destination, i32 %src_size, i32 %dst_size, i64 %charset_list) #0 {
entry:
  %ccl.addr = alloca %struct.ccl_program*, align 8
  %source.addr = alloca i32*, align 8
  %destination.addr = alloca i32*, align 8
  %src_size.addr = alloca i32, align 4
  %dst_size.addr = alloca i32, align 4
  %charset_list.addr = alloca i64, align 8
  %reg = alloca i32*, align 8
  %ic = alloca i32, align 4
  %code = alloca i32, align 4
  %field1 = alloca i32, align 4
  %field2 = alloca i32, align 4
  %ccl_prog = alloca i64*, align 8
  %src = alloca i32*, align 8
  %src_end = alloca i32*, align 8
  %dst = alloca i32*, align 8
  %dst_end = alloca i32*, align 8
  %jump_address = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %op = alloca i32, align 4
  %stack_idx = alloca i32, align 4
  %this_ic = alloca i32, align 4
  %charset = alloca %struct.charset*, align 8
  %eof_ic = alloca i32, align 4
  %eof_hit = alloca i32, align 4
  %prog_word = alloca i64, align 8
  %ccli = alloca i32, align 4
  %ioff = alloca i32, align 4
  %incr = alloca i32, align 4
  %prog_word485 = alloca i64, align 8
  %prog_word543 = alloca i64, align 8
  %slot = alloca i64, align 8
  %prog_id = alloca i32, align 4
  %ccli649 = alloca i32, align 4
  %prog_word999 = alloca i64, align 8
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %s11144 = alloca i32, align 4
  %s21145 = alloca i32, align 4
  %j11146 = alloca i32, align 4
  %j21147 = alloca i32, align 4
  %ncode = alloca i32, align 4
  %ncode1587 = alloca i32, align 4
  %eop = alloca i64, align 8
  %prog_word1610 = alloca i64, align 8
  %ncode1784 = alloca i32, align 4
  %eop1806 = alloca i64, align 8
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  %prog_word1808 = alloca i64, align 8
  %opl = alloca i64, align 8
  %eop1877 = alloca i64, align 8
  %h1878 = alloca %struct.Lisp_Hash_Table*, align 8
  %prog_word1880 = alloca i64, align 8
  %opl2058 = alloca i64, align 8
  %map = alloca i64, align 8
  %content = alloca i64, align 8
  %attrib = alloca i64, align 8
  %value = alloca i64, align 8
  %point = alloca i64, align 8
  %size = alloca i64, align 8
  %fin_ic = alloca i32, align 4
  %called_ccl = alloca %struct.ccl_program, align 8
  %map2352 = alloca i64, align 8
  %content2353 = alloca i64, align 8
  %attrib2354 = alloca i64, align 8
  %value2355 = alloca i64, align 8
  %point2356 = alloca i64, align 8
  %size2357 = alloca i64, align 8
  %map_vector_size = alloca i64, align 8
  %map_set_rest_length = alloca i32, align 4
  %fin_ic2358 = alloca i32, align 4
  %current_ic = alloca i32, align 4
  %orig_op = alloca i32, align 4
  %called_ccl2703 = alloca %struct.ccl_program, align 8
  %map2770 = alloca i64, align 8
  %attrib2771 = alloca i64, align 8
  %value2772 = alloca i64, align 8
  %content2773 = alloca i64, align 8
  %point2774 = alloca i32, align 4
  %called_ccl2936 = alloca %struct.ccl_program, align 8
  %msg = alloca [256 x i8], align 16
  %msglen = alloca i32, align 4
  store %struct.ccl_program* %ccl, %struct.ccl_program** %ccl.addr, align 8
  store i32* %source, i32** %source.addr, align 8
  store i32* %destination, i32** %destination.addr, align 8
  store i32 %src_size, i32* %src_size.addr, align 4
  store i32 %dst_size, i32* %dst_size.addr, align 4
  store i64 %charset_list, i64* %charset_list.addr, align 8
  %0 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %reg1 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %0, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %reg1, i32 0, i32 0
  store i32* %arraydecay, i32** %reg, align 8
  %1 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %ic2 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1, i32 0, i32 3
  %2 = load i32, i32* %ic2, align 4
  store i32 %2, i32* %ic, align 4
  store i32 0, i32* %code, align 4
  %3 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %prog = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %3, i32 0, i32 2
  %4 = load i64*, i64** %prog, align 8
  store i64* %4, i64** %ccl_prog, align 8
  %5 = load i32*, i32** %source.addr, align 8
  store i32* %5, i32** %src, align 8
  %6 = load i32*, i32** %src, align 8
  %7 = load i32, i32* %src_size.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %src_end, align 8
  %8 = load i32*, i32** %destination.addr, align 8
  store i32* %8, i32** %dst, align 8
  %9 = load i32*, i32** %dst, align 8
  %10 = load i32, i32* %dst_size.addr, align 4
  %idx.ext3 = sext i32 %10 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %9, i64 %idx.ext3
  store i32* %add.ptr4, i32** %dst_end, align 8
  store i32 0, i32* %i, align 4
  %11 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %stack_idx5 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %11, i32 0, i32 8
  %12 = load i32, i32* %stack_idx5, align 4
  store i32 %12, i32* %stack_idx, align 4
  store i32 0, i32* %this_ic, align 4
  %13 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic6 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %13, i32 0, i32 4
  %14 = load i32, i32* %eof_ic6, align 4
  store i32 %14, i32* %eof_ic, align 4
  store i32 0, i32* %eof_hit, align 4
  %15 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %buf_magnification = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %15, i32 0, i32 7
  %16 = load i32, i32* %buf_magnification, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* null, i32** %dst, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.tr_stack* getelementptr inbounds ([30 x %struct.tr_stack], [30 x %struct.tr_stack]* @mapping_stack, i32 0, i32 0), %struct.tr_stack** @mapping_stack_pointer, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.2987, %if.then.2923, %if.end
  br label %ccl_repeat

ccl_repeat:                                       ; preds = %if.end.2950, %if.end.2716, %if.end.2316, %if.then.1243, %if.then.976, %if.then.930, %if.then.468, %if.then.418, %if.then.385, %if.then.350, %if.then.213, %if.then.131, %for.cond
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %17, %call
  br i1 %cmp7, label %if.end.15, label %land.lhs.true

land.lhs.true:                                    ; preds = %ccl_repeat
  %18 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %18, %call8
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %land.lhs.true
  %19 = load i32*, i32** %src, align 8
  %tobool = icmp ne i32* %19, null
  br i1 %tobool, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.10
  %20 = load i32*, i32** %source.addr, align 8
  %21 = load i32, i32* %src_size.addr, align 4
  %idx.ext12 = sext i32 %21 to i64
  %add.ptr13 = getelementptr inbounds i32, i32* %20, i64 %idx.ext12
  store i32* %add.ptr13, i32** %src, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.10
  %22 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %22, i32 0, i32 6
  store i32 4, i32* %status, align 4
  br label %for.end.2988

if.end.15:                                        ; preds = %land.lhs.true, %ccl_repeat
  %23 = load i32, i32* %ic, align 4
  store i32 %23, i32* %this_ic, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %24 = load i32, i32* %ic, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %ic, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i64*, i64** %ccl_prog, align 8
  %arrayidx = getelementptr inbounds i64, i64* %25, i64 %idxprom
  %26 = load i64, i64* %arrayidx, align 8
  %shr = ashr i64 %26, 2
  store i64 %shr, i64* %prog_word, align 8
  %27 = load i64, i64* %prog_word, align 8
  %cmp16 = icmp sle i64 -134217728, %27
  %conv = zext i1 %cmp16 to i32
  %28 = load i64, i64* %prog_word, align 8
  %cmp17 = icmp sle i64 %28, 134217727
  %conv18 = zext i1 %cmp17 to i32
  %and = and i32 %conv, %conv18
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %29 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status22 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %29, i32 0, i32 6
  store i32 3, i32* %status22, align 4
  br label %ccl_error_handler

do.end:                                           ; No predecessors!
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %do.body
  %30 = load i64, i64* %prog_word, align 8
  %conv24 = trunc i64 %30 to i32
  store i32 %conv24, i32* %code, align 4
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.23
  %31 = load i32, i32* %code, align 4
  %shr26 = ashr i32 %31, 8
  store i32 %shr26, i32* %field1, align 4
  %32 = load i32, i32* %code, align 4
  %and27 = and i32 %32, 255
  %shr28 = ashr i32 %and27, 5
  store i32 %shr28, i32* %field2, align 4
  %33 = load i32, i32* %code, align 4
  %and29 = and i32 %33, 31
  switch i32 %and29, label %sw.default.2982 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.35
    i32 2, label %sw.bb.38
    i32 3, label %sw.bb.46
    i32 4, label %sw.bb.65
    i32 5, label %sw.bb.67
    i32 6, label %sw.bb.74
    i32 7, label %sw.bb.94
    i32 8, label %sw.bb.145
    i32 9, label %sw.bb.170
    i32 10, label %sw.bb.228
    i32 11, label %sw.bb.291
    i32 12, label %sw.bb.366
    i32 16, label %sw.bb.399
    i32 13, label %sw.bb.431
    i32 14, label %sw.bb.449
    i32 15, label %sw.bb.506
    i32 17, label %sw.bb.516
    i32 18, label %sw.bb.565
    i32 19, label %sw.bb.574
    i32 20, label %sw.bb.625
    i32 21, label %sw.bb.715
    i32 22, label %sw.bb.750
    i32 23, label %sw.bb.775
    i32 24, label %sw.bb.782
    i32 25, label %sw.bb.892
    i32 26, label %sw.bb.902
    i32 29, label %sw.bb.911
    i32 27, label %sw.bb.943
    i32 30, label %sw.bb.957
    i32 28, label %sw.bb.989
    i32 31, label %sw.bb.1218
  ]

sw.bb:                                            ; preds = %do.end.25
  %34 = load i32, i32* %field1, align 4
  %and30 = and i32 %34, 7
  %idxprom31 = sext i32 %and30 to i64
  %35 = load i32*, i32** %reg, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %35, i64 %idxprom31
  %36 = load i32, i32* %arrayidx32, align 4
  %37 = load i32, i32* %field2, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load i32*, i32** %reg, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %38, i64 %idxprom33
  store i32 %36, i32* %arrayidx34, align 4
  br label %sw.epilog.2987

sw.bb.35:                                         ; preds = %do.end.25
  %39 = load i32, i32* %field1, align 4
  %40 = load i32, i32* %field2, align 4
  %idxprom36 = sext i32 %40 to i64
  %41 = load i32*, i32** %reg, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %41, i64 %idxprom36
  store i32 %39, i32* %arrayidx37, align 4
  br label %sw.epilog.2987

sw.bb.38:                                         ; preds = %do.end.25
  %42 = load i32, i32* %ic, align 4
  %inc39 = add nsw i32 %42, 1
  store i32 %inc39, i32* %ic, align 4
  %idxprom40 = sext i32 %42 to i64
  %43 = load i64*, i64** %ccl_prog, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %43, i64 %idxprom40
  %44 = load i64, i64* %arrayidx41, align 8
  %shr42 = ashr i64 %44, 2
  %conv43 = trunc i64 %shr42 to i32
  %45 = load i32, i32* %field2, align 4
  %idxprom44 = sext i32 %45 to i64
  %46 = load i32*, i32** %reg, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %46, i64 %idxprom44
  store i32 %conv43, i32* %arrayidx45, align 4
  br label %sw.epilog.2987

sw.bb.46:                                         ; preds = %do.end.25
  %47 = load i32, i32* %field1, align 4
  %and47 = and i32 %47, 7
  %idxprom48 = sext i32 %and47 to i64
  %48 = load i32*, i32** %reg, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %48, i64 %idxprom48
  %49 = load i32, i32* %arrayidx49, align 4
  store i32 %49, i32* %i, align 4
  %50 = load i32, i32* %field1, align 4
  %shr50 = ashr i32 %50, 3
  store i32 %shr50, i32* %j, align 4
  %51 = load i32, i32* %i, align 4
  %cmp51 = icmp sle i32 0, %51
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.63

land.lhs.true.53:                                 ; preds = %sw.bb.46
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %j, align 4
  %cmp54 = icmp slt i32 %52, %53
  br i1 %cmp54, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %land.lhs.true.53
  %54 = load i32, i32* %ic, align 4
  %55 = load i32, i32* %i, align 4
  %add = add nsw i32 %54, %55
  %idxprom57 = sext i32 %add to i64
  %56 = load i64*, i64** %ccl_prog, align 8
  %arrayidx58 = getelementptr inbounds i64, i64* %56, i64 %idxprom57
  %57 = load i64, i64* %arrayidx58, align 8
  %shr59 = ashr i64 %57, 2
  %conv60 = trunc i64 %shr59 to i32
  %58 = load i32, i32* %field2, align 4
  %idxprom61 = sext i32 %58 to i64
  %59 = load i32*, i32** %reg, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %59, i64 %idxprom61
  store i32 %conv60, i32* %arrayidx62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.56, %land.lhs.true.53, %sw.bb.46
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %ic, align 4
  %add64 = add nsw i32 %61, %60
  store i32 %add64, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.65:                                         ; preds = %do.end.25
  %62 = load i32, i32* %field1, align 4
  %63 = load i32, i32* %ic, align 4
  %add66 = add nsw i32 %63, %62
  store i32 %add66, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.67:                                         ; preds = %do.end.25
  %64 = load i32, i32* %field2, align 4
  %idxprom68 = sext i32 %64 to i64
  %65 = load i32*, i32** %reg, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %65, i64 %idxprom68
  %66 = load i32, i32* %arrayidx69, align 4
  %tobool70 = icmp ne i32 %66, 0
  br i1 %tobool70, label %if.end.73, label %if.then.71

if.then.71:                                       ; preds = %sw.bb.67
  %67 = load i32, i32* %field1, align 4
  %68 = load i32, i32* %ic, align 4
  %add72 = add nsw i32 %68, %67
  store i32 %add72, i32* %ic, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %sw.bb.67
  br label %sw.epilog.2987

sw.bb.74:                                         ; preds = %do.end.25
  %69 = load i32, i32* %field2, align 4
  %idxprom75 = sext i32 %69 to i64
  %70 = load i32*, i32** %reg, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %70, i64 %idxprom75
  %71 = load i32, i32* %arrayidx76, align 4
  store i32 %71, i32* %i, align 4
  br label %do.body.77

do.body.77:                                       ; preds = %sw.bb.74
  %72 = load i32*, i32** %dst, align 8
  %tobool78 = icmp ne i32* %72, null
  br i1 %tobool78, label %if.else, label %if.then.79

if.then.79:                                       ; preds = %do.body.77
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.79
  %73 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status81 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %73, i32 0, i32 6
  store i32 3, i32* %status81, align 4
  br label %ccl_error_handler

do.end.82:                                        ; No predecessors!
  br label %if.end.91

if.else:                                          ; preds = %do.body.77
  %74 = load i32*, i32** %dst, align 8
  %75 = load i32*, i32** %dst_end, align 8
  %cmp83 = icmp ult i32* %74, %75
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %if.else
  %76 = load i32, i32* %i, align 4
  %77 = load i32*, i32** %dst, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %incdec.ptr, i32** %dst, align 8
  store i32 %76, i32* %77, align 4
  br label %if.end.90

if.else.86:                                       ; preds = %if.else
  br label %do.body.87

do.body.87:                                       ; preds = %if.else.86
  %78 = load i32, i32* %ic, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %ic, align 4
  %79 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status88 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %79, i32 0, i32 6
  store i32 2, i32* %status88, align 4
  br label %ccl_finish

do.end.89:                                        ; No predecessors!
  br label %if.end.90

if.end.90:                                        ; preds = %do.end.89, %if.then.85
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %do.end.82
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  %80 = load i32, i32* %field1, align 4
  %81 = load i32, i32* %ic, align 4
  %add93 = add nsw i32 %81, %80
  store i32 %add93, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.94:                                         ; preds = %do.end.25
  %82 = load i32, i32* %field2, align 4
  %idxprom95 = sext i32 %82 to i64
  %83 = load i32*, i32** %reg, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %83, i64 %idxprom95
  %84 = load i32, i32* %arrayidx96, align 4
  store i32 %84, i32* %i, align 4
  br label %do.body.97

do.body.97:                                       ; preds = %sw.bb.94
  %85 = load i32*, i32** %dst, align 8
  %tobool98 = icmp ne i32* %85, null
  br i1 %tobool98, label %if.else.103, label %if.then.99

if.then.99:                                       ; preds = %do.body.97
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  %86 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status101 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %86, i32 0, i32 6
  store i32 3, i32* %status101, align 4
  br label %ccl_error_handler

do.end.102:                                       ; No predecessors!
  br label %if.end.114

if.else.103:                                      ; preds = %do.body.97
  %87 = load i32*, i32** %dst, align 8
  %88 = load i32*, i32** %dst_end, align 8
  %cmp104 = icmp ult i32* %87, %88
  br i1 %cmp104, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %if.else.103
  %89 = load i32, i32* %i, align 4
  %90 = load i32*, i32** %dst, align 8
  %incdec.ptr107 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %incdec.ptr107, i32** %dst, align 8
  store i32 %89, i32* %90, align 4
  br label %if.end.113

if.else.108:                                      ; preds = %if.else.103
  br label %do.body.109

do.body.109:                                      ; preds = %if.else.108
  %91 = load i32, i32* %ic, align 4
  %dec110 = add nsw i32 %91, -1
  store i32 %dec110, i32* %ic, align 4
  %92 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status111 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %92, i32 0, i32 6
  store i32 2, i32* %status111, align 4
  br label %ccl_finish

do.end.112:                                       ; No predecessors!
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %if.then.106
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %do.end.102
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  %93 = load i32, i32* %ic, align 4
  %inc116 = add nsw i32 %93, 1
  store i32 %inc116, i32* %ic, align 4
  br label %do.body.117

do.body.117:                                      ; preds = %do.end.115
  %94 = load i32*, i32** %src, align 8
  %tobool118 = icmp ne i32* %94, null
  br i1 %tobool118, label %if.else.123, label %if.then.119

if.then.119:                                      ; preds = %do.body.117
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.119
  %95 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status121 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %95, i32 0, i32 6
  store i32 3, i32* %status121, align 4
  br label %ccl_error_handler

do.end.122:                                       ; No predecessors!
  br label %if.end.142

if.else.123:                                      ; preds = %do.body.117
  %96 = load i32*, i32** %src, align 8
  %97 = load i32*, i32** %src_end, align 8
  %cmp124 = icmp ult i32* %96, %97
  br i1 %cmp124, label %if.then.126, label %if.else.130

if.then.126:                                      ; preds = %if.else.123
  %98 = load i32*, i32** %src, align 8
  %incdec.ptr127 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %incdec.ptr127, i32** %src, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %field2, align 4
  %idxprom128 = sext i32 %100 to i64
  %101 = load i32*, i32** %reg, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %101, i64 %idxprom128
  store i32 %99, i32* %arrayidx129, align 4
  br label %if.end.141

if.else.130:                                      ; preds = %if.else.123
  %102 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %102, i32 0, i32 11
  %bf.load = load i8, i8* %last_block, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.131, label %if.else.135

if.then.131:                                      ; preds = %if.else.130
  %103 = load i32, i32* %field2, align 4
  %idxprom132 = sext i32 %103 to i64
  %104 = load i32*, i32** %reg, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %104, i64 %idxprom132
  store i32 -1, i32* %arrayidx133, align 4
  %105 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic134 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %105, i32 0, i32 4
  %106 = load i32, i32* %eof_ic134, align 4
  store i32 %106, i32* %ic, align 4
  br label %ccl_repeat

if.else.135:                                      ; preds = %if.else.130
  br label %do.body.136

do.body.136:                                      ; preds = %if.else.135
  %107 = load i32, i32* %ic, align 4
  %dec137 = add nsw i32 %107, -1
  store i32 %dec137, i32* %ic, align 4
  %108 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status138 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %108, i32 0, i32 6
  store i32 1, i32* %status138, align 4
  br label %ccl_finish

do.end.139:                                       ; No predecessors!
  br label %if.end.140

if.end.140:                                       ; preds = %do.end.139
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.126
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %do.end.122
  br label %do.end.143

do.end.143:                                       ; preds = %if.end.142
  %109 = load i32, i32* %field1, align 4
  %sub = sub nsw i32 %109, 1
  %110 = load i32, i32* %ic, align 4
  %add144 = add nsw i32 %110, %sub
  store i32 %add144, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.145:                                        ; preds = %do.end.25
  %111 = load i32, i32* %ic, align 4
  %idxprom146 = sext i32 %111 to i64
  %112 = load i64*, i64** %ccl_prog, align 8
  %arrayidx147 = getelementptr inbounds i64, i64* %112, i64 %idxprom146
  %113 = load i64, i64* %arrayidx147, align 8
  %shr148 = ashr i64 %113, 2
  %conv149 = trunc i64 %shr148 to i32
  store i32 %conv149, i32* %i, align 4
  br label %do.body.150

do.body.150:                                      ; preds = %sw.bb.145
  %114 = load i32*, i32** %dst, align 8
  %tobool151 = icmp ne i32* %114, null
  br i1 %tobool151, label %if.else.156, label %if.then.152

if.then.152:                                      ; preds = %do.body.150
  br label %do.body.153

do.body.153:                                      ; preds = %if.then.152
  %115 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status154 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %115, i32 0, i32 6
  store i32 3, i32* %status154, align 4
  br label %ccl_error_handler

do.end.155:                                       ; No predecessors!
  br label %if.end.167

if.else.156:                                      ; preds = %do.body.150
  %116 = load i32*, i32** %dst, align 8
  %117 = load i32*, i32** %dst_end, align 8
  %cmp157 = icmp ult i32* %116, %117
  br i1 %cmp157, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %if.else.156
  %118 = load i32, i32* %i, align 4
  %119 = load i32*, i32** %dst, align 8
  %incdec.ptr160 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %incdec.ptr160, i32** %dst, align 8
  store i32 %118, i32* %119, align 4
  br label %if.end.166

if.else.161:                                      ; preds = %if.else.156
  br label %do.body.162

do.body.162:                                      ; preds = %if.else.161
  %120 = load i32, i32* %ic, align 4
  %dec163 = add nsw i32 %120, -1
  store i32 %dec163, i32* %ic, align 4
  %121 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status164 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %121, i32 0, i32 6
  store i32 2, i32* %status164, align 4
  br label %ccl_finish

do.end.165:                                       ; No predecessors!
  br label %if.end.166

if.end.166:                                       ; preds = %do.end.165, %if.then.159
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %do.end.155
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  %122 = load i32, i32* %field1, align 4
  %123 = load i32, i32* %ic, align 4
  %add169 = add nsw i32 %123, %122
  store i32 %add169, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.170:                                        ; preds = %do.end.25
  %124 = load i32, i32* %ic, align 4
  %idxprom171 = sext i32 %124 to i64
  %125 = load i64*, i64** %ccl_prog, align 8
  %arrayidx172 = getelementptr inbounds i64, i64* %125, i64 %idxprom171
  %126 = load i64, i64* %arrayidx172, align 8
  %shr173 = ashr i64 %126, 2
  %conv174 = trunc i64 %shr173 to i32
  store i32 %conv174, i32* %i, align 4
  br label %do.body.175

do.body.175:                                      ; preds = %sw.bb.170
  %127 = load i32*, i32** %dst, align 8
  %tobool176 = icmp ne i32* %127, null
  br i1 %tobool176, label %if.else.181, label %if.then.177

if.then.177:                                      ; preds = %do.body.175
  br label %do.body.178

do.body.178:                                      ; preds = %if.then.177
  %128 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status179 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %128, i32 0, i32 6
  store i32 3, i32* %status179, align 4
  br label %ccl_error_handler

do.end.180:                                       ; No predecessors!
  br label %if.end.192

if.else.181:                                      ; preds = %do.body.175
  %129 = load i32*, i32** %dst, align 8
  %130 = load i32*, i32** %dst_end, align 8
  %cmp182 = icmp ult i32* %129, %130
  br i1 %cmp182, label %if.then.184, label %if.else.186

if.then.184:                                      ; preds = %if.else.181
  %131 = load i32, i32* %i, align 4
  %132 = load i32*, i32** %dst, align 8
  %incdec.ptr185 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %incdec.ptr185, i32** %dst, align 8
  store i32 %131, i32* %132, align 4
  br label %if.end.191

if.else.186:                                      ; preds = %if.else.181
  br label %do.body.187

do.body.187:                                      ; preds = %if.else.186
  %133 = load i32, i32* %ic, align 4
  %dec188 = add nsw i32 %133, -1
  store i32 %dec188, i32* %ic, align 4
  %134 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status189 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %134, i32 0, i32 6
  store i32 2, i32* %status189, align 4
  br label %ccl_finish

do.end.190:                                       ; No predecessors!
  br label %if.end.191

if.end.191:                                       ; preds = %do.end.190, %if.then.184
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %do.end.180
  br label %do.end.193

do.end.193:                                       ; preds = %if.end.192
  %135 = load i32, i32* %ic, align 4
  %inc194 = add nsw i32 %135, 1
  store i32 %inc194, i32* %ic, align 4
  br label %do.body.195

do.body.195:                                      ; preds = %do.end.193
  %136 = load i32*, i32** %src, align 8
  %tobool196 = icmp ne i32* %136, null
  br i1 %tobool196, label %if.else.201, label %if.then.197

if.then.197:                                      ; preds = %do.body.195
  br label %do.body.198

do.body.198:                                      ; preds = %if.then.197
  %137 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status199 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %137, i32 0, i32 6
  store i32 3, i32* %status199, align 4
  br label %ccl_error_handler

do.end.200:                                       ; No predecessors!
  br label %if.end.224

if.else.201:                                      ; preds = %do.body.195
  %138 = load i32*, i32** %src, align 8
  %139 = load i32*, i32** %src_end, align 8
  %cmp202 = icmp ult i32* %138, %139
  br i1 %cmp202, label %if.then.204, label %if.else.208

if.then.204:                                      ; preds = %if.else.201
  %140 = load i32*, i32** %src, align 8
  %incdec.ptr205 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %incdec.ptr205, i32** %src, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %field2, align 4
  %idxprom206 = sext i32 %142 to i64
  %143 = load i32*, i32** %reg, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %143, i64 %idxprom206
  store i32 %141, i32* %arrayidx207, align 4
  br label %if.end.223

if.else.208:                                      ; preds = %if.else.201
  %144 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block209 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %144, i32 0, i32 11
  %bf.load210 = load i8, i8* %last_block209, align 4
  %bf.clear211 = and i8 %bf.load210, 1
  %bf.cast212 = trunc i8 %bf.clear211 to i1
  br i1 %bf.cast212, label %if.then.213, label %if.else.217

if.then.213:                                      ; preds = %if.else.208
  %145 = load i32, i32* %field2, align 4
  %idxprom214 = sext i32 %145 to i64
  %146 = load i32*, i32** %reg, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %146, i64 %idxprom214
  store i32 -1, i32* %arrayidx215, align 4
  %147 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic216 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %147, i32 0, i32 4
  %148 = load i32, i32* %eof_ic216, align 4
  store i32 %148, i32* %ic, align 4
  br label %ccl_repeat

if.else.217:                                      ; preds = %if.else.208
  br label %do.body.218

do.body.218:                                      ; preds = %if.else.217
  %149 = load i32, i32* %ic, align 4
  %dec219 = add nsw i32 %149, -1
  store i32 %dec219, i32* %ic, align 4
  %150 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status220 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %150, i32 0, i32 6
  store i32 1, i32* %status220, align 4
  br label %ccl_finish

do.end.221:                                       ; No predecessors!
  br label %if.end.222

if.end.222:                                       ; preds = %do.end.221
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.204
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %do.end.200
  br label %do.end.225

do.end.225:                                       ; preds = %if.end.224
  %151 = load i32, i32* %field1, align 4
  %sub226 = sub nsw i32 %151, 1
  %152 = load i32, i32* %ic, align 4
  %add227 = add nsw i32 %152, %sub226
  store i32 %add227, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.228:                                        ; preds = %do.end.25
  %153 = load i32, i32* %ic, align 4
  %inc229 = add nsw i32 %153, 1
  store i32 %inc229, i32* %ic, align 4
  %idxprom230 = sext i32 %153 to i64
  %154 = load i64*, i64** %ccl_prog, align 8
  %arrayidx231 = getelementptr inbounds i64, i64* %154, i64 %idxprom230
  %155 = load i64, i64* %arrayidx231, align 8
  %shr232 = ashr i64 %155, 2
  %conv233 = trunc i64 %shr232 to i32
  store i32 %conv233, i32* %j, align 4
  br label %do.body.234

do.body.234:                                      ; preds = %sw.bb.228
  %156 = load i32*, i32** %dst, align 8
  %tobool235 = icmp ne i32* %156, null
  br i1 %tobool235, label %if.else.240, label %if.then.236

if.then.236:                                      ; preds = %do.body.234
  br label %do.body.237

do.body.237:                                      ; preds = %if.then.236
  %157 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status238 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %157, i32 0, i32 6
  store i32 3, i32* %status238, align 4
  br label %ccl_error_handler

do.end.239:                                       ; No predecessors!
  br label %if.end.287

if.else.240:                                      ; preds = %do.body.234
  %158 = load i32*, i32** %dst, align 8
  %159 = load i32, i32* %j, align 4
  %idx.ext241 = sext i32 %159 to i64
  %add.ptr242 = getelementptr inbounds i32, i32* %158, i64 %idx.ext241
  %160 = load i32*, i32** %dst_end, align 8
  %cmp243 = icmp ule i32* %add.ptr242, %160
  br i1 %cmp243, label %if.then.245, label %if.else.281

if.then.245:                                      ; preds = %if.else.240
  %161 = load i32, i32* %ic, align 4
  %idxprom246 = sext i32 %161 to i64
  %162 = load i64*, i64** %ccl_prog, align 8
  %arrayidx247 = getelementptr inbounds i64, i64* %162, i64 %idxprom246
  %163 = load i64, i64* %arrayidx247, align 8
  %shr248 = ashr i64 %163, 2
  %and249 = and i64 %shr248, 16777216
  %tobool250 = icmp ne i64 %and249, 0
  br i1 %tobool250, label %if.then.251, label %if.else.263

if.then.251:                                      ; preds = %if.then.245
  store i32 0, i32* %ccli, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc, %if.then.251
  %164 = load i32, i32* %ccli, align 4
  %165 = load i32, i32* %j, align 4
  %cmp253 = icmp slt i32 %164, %165
  br i1 %cmp253, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.252
  %166 = load i32, i32* %ic, align 4
  %167 = load i32, i32* %ccli, align 4
  %add255 = add nsw i32 %166, %167
  %idxprom256 = sext i32 %add255 to i64
  %168 = load i64*, i64** %ccl_prog, align 8
  %arrayidx257 = getelementptr inbounds i64, i64* %168, i64 %idxprom256
  %169 = load i64, i64* %arrayidx257, align 8
  %shr258 = ashr i64 %169, 2
  %and259 = and i64 %shr258, 16777215
  %conv260 = trunc i64 %and259 to i32
  %170 = load i32*, i32** %dst, align 8
  %incdec.ptr261 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %incdec.ptr261, i32** %dst, align 8
  store i32 %conv260, i32* %170, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %171 = load i32, i32* %ccli, align 4
  %inc262 = add nsw i32 %171, 1
  store i32 %inc262, i32* %ccli, align 4
  br label %for.cond.252

for.end:                                          ; preds = %for.cond.252
  br label %if.end.280

if.else.263:                                      ; preds = %if.then.245
  store i32 0, i32* %ccli, align 4
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.277, %if.else.263
  %172 = load i32, i32* %ccli, align 4
  %173 = load i32, i32* %j, align 4
  %cmp265 = icmp slt i32 %172, %173
  br i1 %cmp265, label %for.body.267, label %for.end.279

for.body.267:                                     ; preds = %for.cond.264
  %174 = load i32, i32* %ic, align 4
  %175 = load i32, i32* %ccli, align 4
  %div = sdiv i32 %175, 3
  %add268 = add nsw i32 %174, %div
  %idxprom269 = sext i32 %add268 to i64
  %176 = load i64*, i64** %ccl_prog, align 8
  %arrayidx270 = getelementptr inbounds i64, i64* %176, i64 %idxprom269
  %177 = load i64, i64* %arrayidx270, align 8
  %shr271 = ashr i64 %177, 2
  %178 = load i32, i32* %ccli, align 4
  %rem = srem i32 %178, 3
  %sub272 = sub nsw i32 2, %rem
  %mul = mul nsw i32 %sub272, 8
  %sh_prom = zext i32 %mul to i64
  %shr273 = ashr i64 %shr271, %sh_prom
  %and274 = and i64 %shr273, 255
  %conv275 = trunc i64 %and274 to i32
  %179 = load i32*, i32** %dst, align 8
  %incdec.ptr276 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %incdec.ptr276, i32** %dst, align 8
  store i32 %conv275, i32* %179, align 4
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.267
  %180 = load i32, i32* %ccli, align 4
  %inc278 = add nsw i32 %180, 1
  store i32 %inc278, i32* %ccli, align 4
  br label %for.cond.264

for.end.279:                                      ; preds = %for.cond.264
  br label %if.end.280

if.end.280:                                       ; preds = %for.end.279, %for.end
  br label %if.end.286

if.else.281:                                      ; preds = %if.else.240
  br label %do.body.282

do.body.282:                                      ; preds = %if.else.281
  %181 = load i32, i32* %ic, align 4
  %dec283 = add nsw i32 %181, -1
  store i32 %dec283, i32* %ic, align 4
  %182 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status284 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %182, i32 0, i32 6
  store i32 2, i32* %status284, align 4
  br label %ccl_finish

do.end.285:                                       ; No predecessors!
  br label %if.end.286

if.end.286:                                       ; preds = %do.end.285, %if.end.280
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %do.end.239
  br label %do.end.288

do.end.288:                                       ; preds = %if.end.287
  %183 = load i32, i32* %field1, align 4
  %sub289 = sub nsw i32 %183, 1
  %184 = load i32, i32* %ic, align 4
  %add290 = add nsw i32 %184, %sub289
  store i32 %add290, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.291:                                        ; preds = %do.end.25
  %185 = load i32, i32* %field2, align 4
  %idxprom292 = sext i32 %185 to i64
  %186 = load i32*, i32** %reg, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %186, i64 %idxprom292
  %187 = load i32, i32* %arrayidx293, align 4
  store i32 %187, i32* %i, align 4
  %188 = load i32, i32* %ic, align 4
  %idxprom294 = sext i32 %188 to i64
  %189 = load i64*, i64** %ccl_prog, align 8
  %arrayidx295 = getelementptr inbounds i64, i64* %189, i64 %idxprom294
  %190 = load i64, i64* %arrayidx295, align 8
  %shr296 = ashr i64 %190, 2
  %conv297 = trunc i64 %shr296 to i32
  store i32 %conv297, i32* %j, align 4
  %191 = load i32, i32* %i, align 4
  %cmp298 = icmp sle i32 0, %191
  br i1 %cmp298, label %land.lhs.true.300, label %if.end.329

land.lhs.true.300:                                ; preds = %sw.bb.291
  %192 = load i32, i32* %i, align 4
  %193 = load i32, i32* %j, align 4
  %cmp301 = icmp slt i32 %192, %193
  br i1 %cmp301, label %if.then.303, label %if.end.329

if.then.303:                                      ; preds = %land.lhs.true.300
  %194 = load i32, i32* %ic, align 4
  %add304 = add nsw i32 %194, 1
  %195 = load i32, i32* %i, align 4
  %add305 = add nsw i32 %add304, %195
  %idxprom306 = sext i32 %add305 to i64
  %196 = load i64*, i64** %ccl_prog, align 8
  %arrayidx307 = getelementptr inbounds i64, i64* %196, i64 %idxprom306
  %197 = load i64, i64* %arrayidx307, align 8
  %shr308 = ashr i64 %197, 2
  %conv309 = trunc i64 %shr308 to i32
  store i32 %conv309, i32* %i, align 4
  br label %do.body.310

do.body.310:                                      ; preds = %if.then.303
  %198 = load i32*, i32** %dst, align 8
  %tobool311 = icmp ne i32* %198, null
  br i1 %tobool311, label %if.else.316, label %if.then.312

if.then.312:                                      ; preds = %do.body.310
  br label %do.body.313

do.body.313:                                      ; preds = %if.then.312
  %199 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status314 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %199, i32 0, i32 6
  store i32 3, i32* %status314, align 4
  br label %ccl_error_handler

do.end.315:                                       ; No predecessors!
  br label %if.end.327

if.else.316:                                      ; preds = %do.body.310
  %200 = load i32*, i32** %dst, align 8
  %201 = load i32*, i32** %dst_end, align 8
  %cmp317 = icmp ult i32* %200, %201
  br i1 %cmp317, label %if.then.319, label %if.else.321

if.then.319:                                      ; preds = %if.else.316
  %202 = load i32, i32* %i, align 4
  %203 = load i32*, i32** %dst, align 8
  %incdec.ptr320 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %incdec.ptr320, i32** %dst, align 8
  store i32 %202, i32* %203, align 4
  br label %if.end.326

if.else.321:                                      ; preds = %if.else.316
  br label %do.body.322

do.body.322:                                      ; preds = %if.else.321
  %204 = load i32, i32* %ic, align 4
  %dec323 = add nsw i32 %204, -1
  store i32 %dec323, i32* %ic, align 4
  %205 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status324 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %205, i32 0, i32 6
  store i32 2, i32* %status324, align 4
  br label %ccl_finish

do.end.325:                                       ; No predecessors!
  br label %if.end.326

if.end.326:                                       ; preds = %do.end.325, %if.then.319
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %do.end.315
  br label %do.end.328

do.end.328:                                       ; preds = %if.end.327
  br label %if.end.329

if.end.329:                                       ; preds = %do.end.328, %land.lhs.true.300, %sw.bb.291
  %206 = load i32, i32* %j, align 4
  %add330 = add nsw i32 %206, 2
  %207 = load i32, i32* %ic, align 4
  %add331 = add nsw i32 %207, %add330
  store i32 %add331, i32* %ic, align 4
  br label %do.body.332

do.body.332:                                      ; preds = %if.end.329
  %208 = load i32*, i32** %src, align 8
  %tobool333 = icmp ne i32* %208, null
  br i1 %tobool333, label %if.else.338, label %if.then.334

if.then.334:                                      ; preds = %do.body.332
  br label %do.body.335

do.body.335:                                      ; preds = %if.then.334
  %209 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status336 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %209, i32 0, i32 6
  store i32 3, i32* %status336, align 4
  br label %ccl_error_handler

do.end.337:                                       ; No predecessors!
  br label %if.end.361

if.else.338:                                      ; preds = %do.body.332
  %210 = load i32*, i32** %src, align 8
  %211 = load i32*, i32** %src_end, align 8
  %cmp339 = icmp ult i32* %210, %211
  br i1 %cmp339, label %if.then.341, label %if.else.345

if.then.341:                                      ; preds = %if.else.338
  %212 = load i32*, i32** %src, align 8
  %incdec.ptr342 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %incdec.ptr342, i32** %src, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %field2, align 4
  %idxprom343 = sext i32 %214 to i64
  %215 = load i32*, i32** %reg, align 8
  %arrayidx344 = getelementptr inbounds i32, i32* %215, i64 %idxprom343
  store i32 %213, i32* %arrayidx344, align 4
  br label %if.end.360

if.else.345:                                      ; preds = %if.else.338
  %216 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block346 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %216, i32 0, i32 11
  %bf.load347 = load i8, i8* %last_block346, align 4
  %bf.clear348 = and i8 %bf.load347, 1
  %bf.cast349 = trunc i8 %bf.clear348 to i1
  br i1 %bf.cast349, label %if.then.350, label %if.else.354

if.then.350:                                      ; preds = %if.else.345
  %217 = load i32, i32* %field2, align 4
  %idxprom351 = sext i32 %217 to i64
  %218 = load i32*, i32** %reg, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %218, i64 %idxprom351
  store i32 -1, i32* %arrayidx352, align 4
  %219 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic353 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %219, i32 0, i32 4
  %220 = load i32, i32* %eof_ic353, align 4
  store i32 %220, i32* %ic, align 4
  br label %ccl_repeat

if.else.354:                                      ; preds = %if.else.345
  br label %do.body.355

do.body.355:                                      ; preds = %if.else.354
  %221 = load i32, i32* %ic, align 4
  %dec356 = add nsw i32 %221, -1
  store i32 %dec356, i32* %ic, align 4
  %222 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status357 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %222, i32 0, i32 6
  store i32 1, i32* %status357, align 4
  br label %ccl_finish

do.end.358:                                       ; No predecessors!
  br label %if.end.359

if.end.359:                                       ; preds = %do.end.358
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359, %if.then.341
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %do.end.337
  br label %do.end.362

do.end.362:                                       ; preds = %if.end.361
  %223 = load i32, i32* %field1, align 4
  %224 = load i32, i32* %j, align 4
  %add363 = add nsw i32 %224, 2
  %sub364 = sub nsw i32 %223, %add363
  %225 = load i32, i32* %ic, align 4
  %add365 = add nsw i32 %225, %sub364
  store i32 %add365, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.366:                                        ; preds = %do.end.25
  br label %do.body.367

do.body.367:                                      ; preds = %sw.bb.366
  %226 = load i32*, i32** %src, align 8
  %tobool368 = icmp ne i32* %226, null
  br i1 %tobool368, label %if.else.373, label %if.then.369

if.then.369:                                      ; preds = %do.body.367
  br label %do.body.370

do.body.370:                                      ; preds = %if.then.369
  %227 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status371 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %227, i32 0, i32 6
  store i32 3, i32* %status371, align 4
  br label %ccl_error_handler

do.end.372:                                       ; No predecessors!
  br label %if.end.396

if.else.373:                                      ; preds = %do.body.367
  %228 = load i32*, i32** %src, align 8
  %229 = load i32*, i32** %src_end, align 8
  %cmp374 = icmp ult i32* %228, %229
  br i1 %cmp374, label %if.then.376, label %if.else.380

if.then.376:                                      ; preds = %if.else.373
  %230 = load i32*, i32** %src, align 8
  %incdec.ptr377 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %incdec.ptr377, i32** %src, align 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %field2, align 4
  %idxprom378 = sext i32 %232 to i64
  %233 = load i32*, i32** %reg, align 8
  %arrayidx379 = getelementptr inbounds i32, i32* %233, i64 %idxprom378
  store i32 %231, i32* %arrayidx379, align 4
  br label %if.end.395

if.else.380:                                      ; preds = %if.else.373
  %234 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block381 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %234, i32 0, i32 11
  %bf.load382 = load i8, i8* %last_block381, align 4
  %bf.clear383 = and i8 %bf.load382, 1
  %bf.cast384 = trunc i8 %bf.clear383 to i1
  br i1 %bf.cast384, label %if.then.385, label %if.else.389

if.then.385:                                      ; preds = %if.else.380
  %235 = load i32, i32* %field2, align 4
  %idxprom386 = sext i32 %235 to i64
  %236 = load i32*, i32** %reg, align 8
  %arrayidx387 = getelementptr inbounds i32, i32* %236, i64 %idxprom386
  store i32 -1, i32* %arrayidx387, align 4
  %237 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic388 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %237, i32 0, i32 4
  %238 = load i32, i32* %eof_ic388, align 4
  store i32 %238, i32* %ic, align 4
  br label %ccl_repeat

if.else.389:                                      ; preds = %if.else.380
  br label %do.body.390

do.body.390:                                      ; preds = %if.else.389
  %239 = load i32, i32* %ic, align 4
  %dec391 = add nsw i32 %239, -1
  store i32 %dec391, i32* %ic, align 4
  %240 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status392 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %240, i32 0, i32 6
  store i32 1, i32* %status392, align 4
  br label %ccl_finish

do.end.393:                                       ; No predecessors!
  br label %if.end.394

if.end.394:                                       ; preds = %do.end.393
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %if.then.376
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %do.end.372
  br label %do.end.397

do.end.397:                                       ; preds = %if.end.396
  %241 = load i32, i32* %field1, align 4
  %242 = load i32, i32* %ic, align 4
  %add398 = add nsw i32 %242, %241
  store i32 %add398, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.399:                                        ; preds = %do.end.25
  br label %do.body.400

do.body.400:                                      ; preds = %sw.bb.399
  %243 = load i32*, i32** %src, align 8
  %tobool401 = icmp ne i32* %243, null
  br i1 %tobool401, label %if.else.406, label %if.then.402

if.then.402:                                      ; preds = %do.body.400
  br label %do.body.403

do.body.403:                                      ; preds = %if.then.402
  %244 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status404 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %244, i32 0, i32 6
  store i32 3, i32* %status404, align 4
  br label %ccl_error_handler

do.end.405:                                       ; No predecessors!
  br label %if.end.429

if.else.406:                                      ; preds = %do.body.400
  %245 = load i32*, i32** %src, align 8
  %246 = load i32*, i32** %src_end, align 8
  %cmp407 = icmp ult i32* %245, %246
  br i1 %cmp407, label %if.then.409, label %if.else.413

if.then.409:                                      ; preds = %if.else.406
  %247 = load i32*, i32** %src, align 8
  %incdec.ptr410 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %incdec.ptr410, i32** %src, align 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %field2, align 4
  %idxprom411 = sext i32 %249 to i64
  %250 = load i32*, i32** %reg, align 8
  %arrayidx412 = getelementptr inbounds i32, i32* %250, i64 %idxprom411
  store i32 %248, i32* %arrayidx412, align 4
  br label %if.end.428

if.else.413:                                      ; preds = %if.else.406
  %251 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block414 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %251, i32 0, i32 11
  %bf.load415 = load i8, i8* %last_block414, align 4
  %bf.clear416 = and i8 %bf.load415, 1
  %bf.cast417 = trunc i8 %bf.clear416 to i1
  br i1 %bf.cast417, label %if.then.418, label %if.else.422

if.then.418:                                      ; preds = %if.else.413
  %252 = load i32, i32* %field2, align 4
  %idxprom419 = sext i32 %252 to i64
  %253 = load i32*, i32** %reg, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %253, i64 %idxprom419
  store i32 -1, i32* %arrayidx420, align 4
  %254 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic421 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %254, i32 0, i32 4
  %255 = load i32, i32* %eof_ic421, align 4
  store i32 %255, i32* %ic, align 4
  br label %ccl_repeat

if.else.422:                                      ; preds = %if.else.413
  br label %do.body.423

do.body.423:                                      ; preds = %if.else.422
  %256 = load i32, i32* %ic, align 4
  %dec424 = add nsw i32 %256, -1
  store i32 %dec424, i32* %ic, align 4
  %257 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status425 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %257, i32 0, i32 6
  store i32 1, i32* %status425, align 4
  br label %ccl_finish

do.end.426:                                       ; No predecessors!
  br label %if.end.427

if.end.427:                                       ; preds = %do.end.426
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %if.then.409
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %do.end.405
  br label %do.end.430

do.end.430:                                       ; preds = %if.end.429
  br label %sw.bb.431

sw.bb.431:                                        ; preds = %do.end.25, %do.end.430
  %258 = load i32, i32* %field2, align 4
  %idxprom432 = sext i32 %258 to i64
  %259 = load i32*, i32** %reg, align 8
  %arrayidx433 = getelementptr inbounds i32, i32* %259, i64 %idxprom432
  %260 = load i32, i32* %arrayidx433, align 4
  %cmp434 = icmp sle i32 0, %260
  br i1 %cmp434, label %land.lhs.true.436, label %cond.false

land.lhs.true.436:                                ; preds = %sw.bb.431
  %261 = load i32, i32* %field2, align 4
  %idxprom437 = sext i32 %261 to i64
  %262 = load i32*, i32** %reg, align 8
  %arrayidx438 = getelementptr inbounds i32, i32* %262, i64 %idxprom437
  %263 = load i32, i32* %arrayidx438, align 4
  %264 = load i32, i32* %field1, align 4
  %cmp439 = icmp slt i32 %263, %264
  br i1 %cmp439, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.436
  %265 = load i32, i32* %field2, align 4
  %idxprom441 = sext i32 %265 to i64
  %266 = load i32*, i32** %reg, align 8
  %arrayidx442 = getelementptr inbounds i32, i32* %266, i64 %idxprom441
  %267 = load i32, i32* %arrayidx442, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.436, %sw.bb.431
  %268 = load i32, i32* %field1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %267, %cond.true ], [ %268, %cond.false ]
  store i32 %cond, i32* %ioff, align 4
  %269 = load i32, i32* %ic, align 4
  %270 = load i32, i32* %ioff, align 4
  %add443 = add nsw i32 %269, %270
  %idxprom444 = sext i32 %add443 to i64
  %271 = load i64*, i64** %ccl_prog, align 8
  %arrayidx445 = getelementptr inbounds i64, i64* %271, i64 %idxprom444
  %272 = load i64, i64* %arrayidx445, align 8
  %shr446 = ashr i64 %272, 2
  %conv447 = trunc i64 %shr446 to i32
  store i32 %conv447, i32* %incr, align 4
  %273 = load i32, i32* %incr, align 4
  %274 = load i32, i32* %ic, align 4
  %add448 = add nsw i32 %274, %273
  store i32 %add448, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.449:                                        ; preds = %do.end.25
  br label %while.body

while.body:                                       ; preds = %sw.bb.449, %do.end.502
  br label %do.body.450

do.body.450:                                      ; preds = %while.body
  %275 = load i32*, i32** %src, align 8
  %tobool451 = icmp ne i32* %275, null
  br i1 %tobool451, label %if.else.456, label %if.then.452

if.then.452:                                      ; preds = %do.body.450
  br label %do.body.453

do.body.453:                                      ; preds = %if.then.452
  %276 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status454 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %276, i32 0, i32 6
  store i32 3, i32* %status454, align 4
  br label %ccl_error_handler

do.end.455:                                       ; No predecessors!
  br label %if.end.479

if.else.456:                                      ; preds = %do.body.450
  %277 = load i32*, i32** %src, align 8
  %278 = load i32*, i32** %src_end, align 8
  %cmp457 = icmp ult i32* %277, %278
  br i1 %cmp457, label %if.then.459, label %if.else.463

if.then.459:                                      ; preds = %if.else.456
  %279 = load i32*, i32** %src, align 8
  %incdec.ptr460 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %incdec.ptr460, i32** %src, align 8
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %field2, align 4
  %idxprom461 = sext i32 %281 to i64
  %282 = load i32*, i32** %reg, align 8
  %arrayidx462 = getelementptr inbounds i32, i32* %282, i64 %idxprom461
  store i32 %280, i32* %arrayidx462, align 4
  br label %if.end.478

if.else.463:                                      ; preds = %if.else.456
  %283 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block464 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %283, i32 0, i32 11
  %bf.load465 = load i8, i8* %last_block464, align 4
  %bf.clear466 = and i8 %bf.load465, 1
  %bf.cast467 = trunc i8 %bf.clear466 to i1
  br i1 %bf.cast467, label %if.then.468, label %if.else.472

if.then.468:                                      ; preds = %if.else.463
  %284 = load i32, i32* %field2, align 4
  %idxprom469 = sext i32 %284 to i64
  %285 = load i32*, i32** %reg, align 8
  %arrayidx470 = getelementptr inbounds i32, i32* %285, i64 %idxprom469
  store i32 -1, i32* %arrayidx470, align 4
  %286 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic471 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %286, i32 0, i32 4
  %287 = load i32, i32* %eof_ic471, align 4
  store i32 %287, i32* %ic, align 4
  br label %ccl_repeat

if.else.472:                                      ; preds = %if.else.463
  br label %do.body.473

do.body.473:                                      ; preds = %if.else.472
  %288 = load i32, i32* %ic, align 4
  %dec474 = add nsw i32 %288, -1
  store i32 %dec474, i32* %ic, align 4
  %289 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status475 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %289, i32 0, i32 6
  store i32 1, i32* %status475, align 4
  br label %ccl_finish

do.end.476:                                       ; No predecessors!
  br label %if.end.477

if.end.477:                                       ; preds = %do.end.476
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %if.then.459
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478, %do.end.455
  br label %do.end.480

do.end.480:                                       ; preds = %if.end.479
  %290 = load i32, i32* %field1, align 4
  %tobool481 = icmp ne i32 %290, 0
  br i1 %tobool481, label %if.end.483, label %if.then.482

if.then.482:                                      ; preds = %do.end.480
  br label %while.end

if.end.483:                                       ; preds = %do.end.480
  br label %do.body.484

do.body.484:                                      ; preds = %if.end.483
  %291 = load i32, i32* %ic, align 4
  %inc486 = add nsw i32 %291, 1
  store i32 %inc486, i32* %ic, align 4
  %idxprom487 = sext i32 %291 to i64
  %292 = load i64*, i64** %ccl_prog, align 8
  %arrayidx488 = getelementptr inbounds i64, i64* %292, i64 %idxprom487
  %293 = load i64, i64* %arrayidx488, align 8
  %shr489 = ashr i64 %293, 2
  store i64 %shr489, i64* %prog_word485, align 8
  %294 = load i64, i64* %prog_word485, align 8
  %cmp490 = icmp sle i64 -134217728, %294
  %conv491 = zext i1 %cmp490 to i32
  %295 = load i64, i64* %prog_word485, align 8
  %cmp492 = icmp sle i64 %295, 134217727
  %conv493 = zext i1 %cmp492 to i32
  %and494 = and i32 %conv491, %conv493
  %tobool495 = icmp ne i32 %and494, 0
  br i1 %tobool495, label %if.end.500, label %if.then.496

if.then.496:                                      ; preds = %do.body.484
  br label %do.body.497

do.body.497:                                      ; preds = %if.then.496
  %296 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status498 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %296, i32 0, i32 6
  store i32 3, i32* %status498, align 4
  br label %ccl_error_handler

do.end.499:                                       ; No predecessors!
  br label %if.end.500

if.end.500:                                       ; preds = %do.end.499, %do.body.484
  %297 = load i64, i64* %prog_word485, align 8
  %conv501 = trunc i64 %297 to i32
  store i32 %conv501, i32* %code, align 4
  br label %do.end.502

do.end.502:                                       ; preds = %if.end.500
  %298 = load i32, i32* %code, align 4
  %shr503 = ashr i32 %298, 8
  store i32 %shr503, i32* %field1, align 4
  %299 = load i32, i32* %code, align 4
  %and504 = and i32 %299, 255
  %shr505 = ashr i32 %and504, 5
  store i32 %shr505, i32* %field2, align 4
  br label %while.body

while.end:                                        ; preds = %if.then.482
  br label %sw.epilog.2987

sw.bb.506:                                        ; preds = %do.end.25
  store i32 7, i32* %field2, align 4
  %300 = load i32, i32* %field1, align 4
  %and507 = and i32 %300, 7
  %idxprom508 = sext i32 %and507 to i64
  %301 = load i32*, i32** %reg, align 8
  %arrayidx509 = getelementptr inbounds i32, i32* %301, i64 %idxprom508
  %302 = load i32, i32* %arrayidx509, align 4
  store i32 %302, i32* %i, align 4
  %303 = load i32, i32* %ic, align 4
  %idxprom510 = sext i32 %303 to i64
  %304 = load i64*, i64** %ccl_prog, align 8
  %arrayidx511 = getelementptr inbounds i64, i64* %304, i64 %idxprom510
  %305 = load i64, i64* %arrayidx511, align 8
  %shr512 = ashr i64 %305, 2
  %conv513 = trunc i64 %shr512 to i32
  store i32 %conv513, i32* %j, align 4
  %306 = load i32, i32* %field1, align 4
  %shr514 = ashr i32 %306, 6
  store i32 %shr514, i32* %op, align 4
  %307 = load i32, i32* %ic, align 4
  %add515 = add nsw i32 %307, 1
  store i32 %add515, i32* %jump_address, align 4
  br label %ccl_set_expr

sw.bb.516:                                        ; preds = %do.end.25
  br label %while.body.517

while.body.517:                                   ; preds = %sw.bb.516, %do.end.560
  %308 = load i32, i32* %field2, align 4
  %idxprom518 = sext i32 %308 to i64
  %309 = load i32*, i32** %reg, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %309, i64 %idxprom518
  %310 = load i32, i32* %arrayidx519, align 4
  store i32 %310, i32* %i, align 4
  br label %do.body.520

do.body.520:                                      ; preds = %while.body.517
  %311 = load i32*, i32** %dst, align 8
  %tobool521 = icmp ne i32* %311, null
  br i1 %tobool521, label %if.else.526, label %if.then.522

if.then.522:                                      ; preds = %do.body.520
  br label %do.body.523

do.body.523:                                      ; preds = %if.then.522
  %312 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status524 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %312, i32 0, i32 6
  store i32 3, i32* %status524, align 4
  br label %ccl_error_handler

do.end.525:                                       ; No predecessors!
  br label %if.end.537

if.else.526:                                      ; preds = %do.body.520
  %313 = load i32*, i32** %dst, align 8
  %314 = load i32*, i32** %dst_end, align 8
  %cmp527 = icmp ult i32* %313, %314
  br i1 %cmp527, label %if.then.529, label %if.else.531

if.then.529:                                      ; preds = %if.else.526
  %315 = load i32, i32* %i, align 4
  %316 = load i32*, i32** %dst, align 8
  %incdec.ptr530 = getelementptr inbounds i32, i32* %316, i32 1
  store i32* %incdec.ptr530, i32** %dst, align 8
  store i32 %315, i32* %316, align 4
  br label %if.end.536

if.else.531:                                      ; preds = %if.else.526
  br label %do.body.532

do.body.532:                                      ; preds = %if.else.531
  %317 = load i32, i32* %ic, align 4
  %dec533 = add nsw i32 %317, -1
  store i32 %dec533, i32* %ic, align 4
  %318 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status534 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %318, i32 0, i32 6
  store i32 2, i32* %status534, align 4
  br label %ccl_finish

do.end.535:                                       ; No predecessors!
  br label %if.end.536

if.end.536:                                       ; preds = %do.end.535, %if.then.529
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %do.end.525
  br label %do.end.538

do.end.538:                                       ; preds = %if.end.537
  %319 = load i32, i32* %field1, align 4
  %tobool539 = icmp ne i32 %319, 0
  br i1 %tobool539, label %if.end.541, label %if.then.540

if.then.540:                                      ; preds = %do.end.538
  br label %while.end.564

if.end.541:                                       ; preds = %do.end.538
  br label %do.body.542

do.body.542:                                      ; preds = %if.end.541
  %320 = load i32, i32* %ic, align 4
  %inc544 = add nsw i32 %320, 1
  store i32 %inc544, i32* %ic, align 4
  %idxprom545 = sext i32 %320 to i64
  %321 = load i64*, i64** %ccl_prog, align 8
  %arrayidx546 = getelementptr inbounds i64, i64* %321, i64 %idxprom545
  %322 = load i64, i64* %arrayidx546, align 8
  %shr547 = ashr i64 %322, 2
  store i64 %shr547, i64* %prog_word543, align 8
  %323 = load i64, i64* %prog_word543, align 8
  %cmp548 = icmp sle i64 -134217728, %323
  %conv549 = zext i1 %cmp548 to i32
  %324 = load i64, i64* %prog_word543, align 8
  %cmp550 = icmp sle i64 %324, 134217727
  %conv551 = zext i1 %cmp550 to i32
  %and552 = and i32 %conv549, %conv551
  %tobool553 = icmp ne i32 %and552, 0
  br i1 %tobool553, label %if.end.558, label %if.then.554

if.then.554:                                      ; preds = %do.body.542
  br label %do.body.555

do.body.555:                                      ; preds = %if.then.554
  %325 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status556 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %325, i32 0, i32 6
  store i32 3, i32* %status556, align 4
  br label %ccl_error_handler

do.end.557:                                       ; No predecessors!
  br label %if.end.558

if.end.558:                                       ; preds = %do.end.557, %do.body.542
  %326 = load i64, i64* %prog_word543, align 8
  %conv559 = trunc i64 %326 to i32
  store i32 %conv559, i32* %code, align 4
  br label %do.end.560

do.end.560:                                       ; preds = %if.end.558
  %327 = load i32, i32* %code, align 4
  %shr561 = ashr i32 %327, 8
  store i32 %shr561, i32* %field1, align 4
  %328 = load i32, i32* %code, align 4
  %and562 = and i32 %328, 255
  %shr563 = ashr i32 %and562, 5
  store i32 %shr563, i32* %field2, align 4
  br label %while.body.517

while.end.564:                                    ; preds = %if.then.540
  br label %sw.epilog.2987

sw.bb.565:                                        ; preds = %do.end.25
  store i32 7, i32* %field2, align 4
  %329 = load i32, i32* %field1, align 4
  %and566 = and i32 %329, 7
  %idxprom567 = sext i32 %and566 to i64
  %330 = load i32*, i32** %reg, align 8
  %arrayidx568 = getelementptr inbounds i32, i32* %330, i64 %idxprom567
  %331 = load i32, i32* %arrayidx568, align 4
  store i32 %331, i32* %i, align 4
  %332 = load i32, i32* %field1, align 4
  %shr569 = ashr i32 %332, 3
  %and570 = and i32 %shr569, 7
  %idxprom571 = sext i32 %and570 to i64
  %333 = load i32*, i32** %reg, align 8
  %arrayidx572 = getelementptr inbounds i32, i32* %333, i64 %idxprom571
  %334 = load i32, i32* %arrayidx572, align 4
  store i32 %334, i32* %j, align 4
  %335 = load i32, i32* %field1, align 4
  %shr573 = ashr i32 %335, 6
  store i32 %shr573, i32* %op, align 4
  %336 = load i32, i32* %ic, align 4
  store i32 %336, i32* %jump_address, align 4
  br label %ccl_set_expr

sw.bb.574:                                        ; preds = %do.end.25
  %337 = load i32, i32* %field2, align 4
  %tobool575 = icmp ne i32 %337, 0
  br i1 %tobool575, label %if.then.576, label %if.else.582

if.then.576:                                      ; preds = %sw.bb.574
  %338 = load i32, i32* %ic, align 4
  %inc577 = add nsw i32 %338, 1
  store i32 %inc577, i32* %ic, align 4
  %idxprom578 = sext i32 %338 to i64
  %339 = load i64*, i64** %ccl_prog, align 8
  %arrayidx579 = getelementptr inbounds i64, i64* %339, i64 %idxprom578
  %340 = load i64, i64* %arrayidx579, align 8
  %shr580 = ashr i64 %340, 2
  %conv581 = trunc i64 %shr580 to i32
  store i32 %conv581, i32* %prog_id, align 4
  br label %if.end.583

if.else.582:                                      ; preds = %sw.bb.574
  %341 = load i32, i32* %field1, align 4
  store i32 %341, i32* %prog_id, align 4
  br label %if.end.583

if.end.583:                                       ; preds = %if.else.582, %if.then.576
  %342 = load i32, i32* %stack_idx, align 4
  %cmp584 = icmp sge i32 %342, 256
  br i1 %cmp584, label %if.then.600, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.583
  %343 = load i32, i32* %prog_id, align 4
  %cmp586 = icmp slt i32 %343, 0
  br i1 %cmp586, label %if.then.600, label %lor.lhs.false.588

lor.lhs.false.588:                                ; preds = %lor.lhs.false
  %344 = load i32, i32* %prog_id, align 4
  %conv589 = sext i32 %344 to i64
  %345 = load i64, i64* @Vccl_program_table, align 8
  %call590 = call i64 @ASIZE(i64 %345)
  %cmp591 = icmp sge i64 %conv589, %call590
  br i1 %cmp591, label %if.then.600, label %lor.lhs.false.593

lor.lhs.false.593:                                ; preds = %lor.lhs.false.588
  %346 = load i64, i64* @Vccl_program_table, align 8
  %347 = load i32, i32* %prog_id, align 4
  %conv594 = sext i32 %347 to i64
  %call595 = call i64 @AREF(i64 %346, i64 %conv594)
  store i64 %call595, i64* %slot, align 8
  %348 = load i64, i64* %slot, align 8
  %call596 = call zeroext i1 @VECTORP(i64 %348)
  %lnot = xor i1 %call596, true
  br i1 %lnot, label %if.then.600, label %lor.lhs.false.597

lor.lhs.false.597:                                ; preds = %lor.lhs.false.593
  %349 = load i64, i64* %slot, align 8
  %call598 = call i64 @AREF(i64 %349, i64 1)
  %call599 = call zeroext i1 @VECTORP(i64 %call598)
  br i1 %call599, label %if.end.608, label %if.then.600

if.then.600:                                      ; preds = %lor.lhs.false.597, %lor.lhs.false.593, %lor.lhs.false.588, %lor.lhs.false, %if.end.583
  %350 = load i32, i32* %stack_idx, align 4
  %cmp601 = icmp sgt i32 %350, 0
  br i1 %cmp601, label %if.then.603, label %if.end.604

if.then.603:                                      ; preds = %if.then.600
  %351 = load i64*, i64** getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 0), align 8
  store i64* %351, i64** %ccl_prog, align 8
  %352 = load i32, i32* getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 1), align 4
  store i32 %352, i32* %ic, align 4
  %353 = load i32, i32* getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 2), align 4
  store i32 %353, i32* %eof_ic, align 4
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.603, %if.then.600
  br label %do.body.605

do.body.605:                                      ; preds = %if.end.604
  %354 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status606 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %354, i32 0, i32 6
  store i32 3, i32* %status606, align 4
  br label %ccl_error_handler

do.end.607:                                       ; No predecessors!
  br label %if.end.608

if.end.608:                                       ; preds = %do.end.607, %lor.lhs.false.597
  %355 = load i64*, i64** %ccl_prog, align 8
  %356 = load i32, i32* %stack_idx, align 4
  %idxprom609 = sext i32 %356 to i64
  %arrayidx610 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom609
  %ccl_prog611 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx610, i32 0, i32 0
  store i64* %355, i64** %ccl_prog611, align 8
  %357 = load i32, i32* %ic, align 4
  %358 = load i32, i32* %stack_idx, align 4
  %idxprom612 = sext i32 %358 to i64
  %arrayidx613 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom612
  %ic614 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx613, i32 0, i32 1
  store i32 %357, i32* %ic614, align 4
  %359 = load i32, i32* %eof_ic, align 4
  %360 = load i32, i32* %stack_idx, align 4
  %idxprom615 = sext i32 %360 to i64
  %arrayidx616 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom615
  %eof_ic617 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx616, i32 0, i32 2
  store i32 %359, i32* %eof_ic617, align 4
  %361 = load i32, i32* %stack_idx, align 4
  %inc618 = add nsw i32 %361, 1
  store i32 %inc618, i32* %stack_idx, align 4
  %362 = load i64, i64* %slot, align 8
  %call619 = call i64 @AREF(i64 %362, i64 1)
  %call620 = call %struct.Lisp_Vector* @XVECTOR(i64 %call619)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call620, i32 0, i32 1
  %arraydecay621 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  store i64* %arraydecay621, i64** %ccl_prog, align 8
  store i32 2, i32* %ic, align 4
  %363 = load i64*, i64** %ccl_prog, align 8
  %arrayidx622 = getelementptr inbounds i64, i64* %363, i64 1
  %364 = load i64, i64* %arrayidx622, align 8
  %shr623 = ashr i64 %364, 2
  %conv624 = trunc i64 %shr623 to i32
  store i32 %conv624, i32* %eof_ic, align 4
  br label %sw.epilog.2987

sw.bb.625:                                        ; preds = %do.end.25
  %365 = load i32, i32* %field2, align 4
  %tobool626 = icmp ne i32 %365, 0
  br i1 %tobool626, label %if.else.647, label %if.then.627

if.then.627:                                      ; preds = %sw.bb.625
  br label %do.body.628

do.body.628:                                      ; preds = %if.then.627
  %366 = load i32*, i32** %dst, align 8
  %tobool629 = icmp ne i32* %366, null
  br i1 %tobool629, label %if.else.634, label %if.then.630

if.then.630:                                      ; preds = %do.body.628
  br label %do.body.631

do.body.631:                                      ; preds = %if.then.630
  %367 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status632 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %367, i32 0, i32 6
  store i32 3, i32* %status632, align 4
  br label %ccl_error_handler

do.end.633:                                       ; No predecessors!
  br label %if.end.645

if.else.634:                                      ; preds = %do.body.628
  %368 = load i32*, i32** %dst, align 8
  %369 = load i32*, i32** %dst_end, align 8
  %cmp635 = icmp ult i32* %368, %369
  br i1 %cmp635, label %if.then.637, label %if.else.639

if.then.637:                                      ; preds = %if.else.634
  %370 = load i32, i32* %field1, align 4
  %371 = load i32*, i32** %dst, align 8
  %incdec.ptr638 = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %incdec.ptr638, i32** %dst, align 8
  store i32 %370, i32* %371, align 4
  br label %if.end.644

if.else.639:                                      ; preds = %if.else.634
  br label %do.body.640

do.body.640:                                      ; preds = %if.else.639
  %372 = load i32, i32* %ic, align 4
  %dec641 = add nsw i32 %372, -1
  store i32 %dec641, i32* %ic, align 4
  %373 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status642 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %373, i32 0, i32 6
  store i32 2, i32* %status642, align 4
  br label %ccl_finish

do.end.643:                                       ; No predecessors!
  br label %if.end.644

if.end.644:                                       ; preds = %do.end.643, %if.then.637
  br label %if.end.645

if.end.645:                                       ; preds = %if.end.644, %do.end.633
  br label %do.end.646

do.end.646:                                       ; preds = %if.end.645
  br label %if.end.714

if.else.647:                                      ; preds = %sw.bb.625
  br label %do.body.648

do.body.648:                                      ; preds = %if.else.647
  %374 = load i32*, i32** %dst, align 8
  %tobool650 = icmp ne i32* %374, null
  br i1 %tobool650, label %if.else.655, label %if.then.651

if.then.651:                                      ; preds = %do.body.648
  br label %do.body.652

do.body.652:                                      ; preds = %if.then.651
  %375 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status653 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %375, i32 0, i32 6
  store i32 3, i32* %status653, align 4
  br label %ccl_error_handler

do.end.654:                                       ; No predecessors!
  br label %if.end.709

if.else.655:                                      ; preds = %do.body.648
  %376 = load i32*, i32** %dst, align 8
  %377 = load i32, i32* %field1, align 4
  %idx.ext656 = sext i32 %377 to i64
  %add.ptr657 = getelementptr inbounds i32, i32* %376, i64 %idx.ext656
  %378 = load i32*, i32** %dst_end, align 8
  %cmp658 = icmp ule i32* %add.ptr657, %378
  br i1 %cmp658, label %if.then.660, label %if.else.703

if.then.660:                                      ; preds = %if.else.655
  %379 = load i32, i32* %ic, align 4
  %idxprom661 = sext i32 %379 to i64
  %380 = load i64*, i64** %ccl_prog, align 8
  %arrayidx662 = getelementptr inbounds i64, i64* %380, i64 %idxprom661
  %381 = load i64, i64* %arrayidx662, align 8
  %shr663 = ashr i64 %381, 2
  %and664 = and i64 %shr663, 16777216
  %tobool665 = icmp ne i64 %and664, 0
  br i1 %tobool665, label %if.then.666, label %if.else.681

if.then.666:                                      ; preds = %if.then.660
  store i32 0, i32* %ccli649, align 4
  br label %for.cond.667

for.cond.667:                                     ; preds = %for.inc.678, %if.then.666
  %382 = load i32, i32* %ccli649, align 4
  %383 = load i32, i32* %field1, align 4
  %cmp668 = icmp slt i32 %382, %383
  br i1 %cmp668, label %for.body.670, label %for.end.680

for.body.670:                                     ; preds = %for.cond.667
  %384 = load i32, i32* %ic, align 4
  %385 = load i32, i32* %ccli649, align 4
  %add671 = add nsw i32 %384, %385
  %idxprom672 = sext i32 %add671 to i64
  %386 = load i64*, i64** %ccl_prog, align 8
  %arrayidx673 = getelementptr inbounds i64, i64* %386, i64 %idxprom672
  %387 = load i64, i64* %arrayidx673, align 8
  %shr674 = ashr i64 %387, 2
  %and675 = and i64 %shr674, 16777215
  %conv676 = trunc i64 %and675 to i32
  %388 = load i32*, i32** %dst, align 8
  %incdec.ptr677 = getelementptr inbounds i32, i32* %388, i32 1
  store i32* %incdec.ptr677, i32** %dst, align 8
  store i32 %conv676, i32* %388, align 4
  br label %for.inc.678

for.inc.678:                                      ; preds = %for.body.670
  %389 = load i32, i32* %ccli649, align 4
  %inc679 = add nsw i32 %389, 1
  store i32 %inc679, i32* %ccli649, align 4
  br label %for.cond.667

for.end.680:                                      ; preds = %for.cond.667
  br label %if.end.702

if.else.681:                                      ; preds = %if.then.660
  store i32 0, i32* %ccli649, align 4
  br label %for.cond.682

for.cond.682:                                     ; preds = %for.inc.699, %if.else.681
  %390 = load i32, i32* %ccli649, align 4
  %391 = load i32, i32* %field1, align 4
  %cmp683 = icmp slt i32 %390, %391
  br i1 %cmp683, label %for.body.685, label %for.end.701

for.body.685:                                     ; preds = %for.cond.682
  %392 = load i32, i32* %ic, align 4
  %393 = load i32, i32* %ccli649, align 4
  %div686 = sdiv i32 %393, 3
  %add687 = add nsw i32 %392, %div686
  %idxprom688 = sext i32 %add687 to i64
  %394 = load i64*, i64** %ccl_prog, align 8
  %arrayidx689 = getelementptr inbounds i64, i64* %394, i64 %idxprom688
  %395 = load i64, i64* %arrayidx689, align 8
  %shr690 = ashr i64 %395, 2
  %396 = load i32, i32* %ccli649, align 4
  %rem691 = srem i32 %396, 3
  %sub692 = sub nsw i32 2, %rem691
  %mul693 = mul nsw i32 %sub692, 8
  %sh_prom694 = zext i32 %mul693 to i64
  %shr695 = ashr i64 %shr690, %sh_prom694
  %and696 = and i64 %shr695, 255
  %conv697 = trunc i64 %and696 to i32
  %397 = load i32*, i32** %dst, align 8
  %incdec.ptr698 = getelementptr inbounds i32, i32* %397, i32 1
  store i32* %incdec.ptr698, i32** %dst, align 8
  store i32 %conv697, i32* %397, align 4
  br label %for.inc.699

for.inc.699:                                      ; preds = %for.body.685
  %398 = load i32, i32* %ccli649, align 4
  %inc700 = add nsw i32 %398, 1
  store i32 %inc700, i32* %ccli649, align 4
  br label %for.cond.682

for.end.701:                                      ; preds = %for.cond.682
  br label %if.end.702

if.end.702:                                       ; preds = %for.end.701, %for.end.680
  br label %if.end.708

if.else.703:                                      ; preds = %if.else.655
  br label %do.body.704

do.body.704:                                      ; preds = %if.else.703
  %399 = load i32, i32* %ic, align 4
  %dec705 = add nsw i32 %399, -1
  store i32 %dec705, i32* %ic, align 4
  %400 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status706 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %400, i32 0, i32 6
  store i32 2, i32* %status706, align 4
  br label %ccl_finish

do.end.707:                                       ; No predecessors!
  br label %if.end.708

if.end.708:                                       ; preds = %do.end.707, %if.end.702
  br label %if.end.709

if.end.709:                                       ; preds = %if.end.708, %do.end.654
  br label %do.end.710

do.end.710:                                       ; preds = %if.end.709
  %401 = load i32, i32* %field1, align 4
  %add711 = add nsw i32 %401, 2
  %div712 = sdiv i32 %add711, 3
  %402 = load i32, i32* %ic, align 4
  %add713 = add nsw i32 %402, %div712
  store i32 %add713, i32* %ic, align 4
  br label %if.end.714

if.end.714:                                       ; preds = %do.end.710, %do.end.646
  br label %sw.epilog.2987

sw.bb.715:                                        ; preds = %do.end.25
  %403 = load i32, i32* %field2, align 4
  %idxprom716 = sext i32 %403 to i64
  %404 = load i32*, i32** %reg, align 8
  %arrayidx717 = getelementptr inbounds i32, i32* %404, i64 %idxprom716
  %405 = load i32, i32* %arrayidx717, align 4
  store i32 %405, i32* %i, align 4
  %406 = load i32, i32* %i, align 4
  %cmp718 = icmp sle i32 0, %406
  br i1 %cmp718, label %land.lhs.true.720, label %if.end.748

land.lhs.true.720:                                ; preds = %sw.bb.715
  %407 = load i32, i32* %i, align 4
  %408 = load i32, i32* %field1, align 4
  %cmp721 = icmp slt i32 %407, %408
  br i1 %cmp721, label %if.then.723, label %if.end.748

if.then.723:                                      ; preds = %land.lhs.true.720
  %409 = load i32, i32* %ic, align 4
  %410 = load i32, i32* %i, align 4
  %add724 = add nsw i32 %409, %410
  %idxprom725 = sext i32 %add724 to i64
  %411 = load i64*, i64** %ccl_prog, align 8
  %arrayidx726 = getelementptr inbounds i64, i64* %411, i64 %idxprom725
  %412 = load i64, i64* %arrayidx726, align 8
  %shr727 = ashr i64 %412, 2
  %conv728 = trunc i64 %shr727 to i32
  store i32 %conv728, i32* %j, align 4
  br label %do.body.729

do.body.729:                                      ; preds = %if.then.723
  %413 = load i32*, i32** %dst, align 8
  %tobool730 = icmp ne i32* %413, null
  br i1 %tobool730, label %if.else.735, label %if.then.731

if.then.731:                                      ; preds = %do.body.729
  br label %do.body.732

do.body.732:                                      ; preds = %if.then.731
  %414 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status733 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %414, i32 0, i32 6
  store i32 3, i32* %status733, align 4
  br label %ccl_error_handler

do.end.734:                                       ; No predecessors!
  br label %if.end.746

if.else.735:                                      ; preds = %do.body.729
  %415 = load i32*, i32** %dst, align 8
  %416 = load i32*, i32** %dst_end, align 8
  %cmp736 = icmp ult i32* %415, %416
  br i1 %cmp736, label %if.then.738, label %if.else.740

if.then.738:                                      ; preds = %if.else.735
  %417 = load i32, i32* %j, align 4
  %418 = load i32*, i32** %dst, align 8
  %incdec.ptr739 = getelementptr inbounds i32, i32* %418, i32 1
  store i32* %incdec.ptr739, i32** %dst, align 8
  store i32 %417, i32* %418, align 4
  br label %if.end.745

if.else.740:                                      ; preds = %if.else.735
  br label %do.body.741

do.body.741:                                      ; preds = %if.else.740
  %419 = load i32, i32* %ic, align 4
  %dec742 = add nsw i32 %419, -1
  store i32 %dec742, i32* %ic, align 4
  %420 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status743 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %420, i32 0, i32 6
  store i32 2, i32* %status743, align 4
  br label %ccl_finish

do.end.744:                                       ; No predecessors!
  br label %if.end.745

if.end.745:                                       ; preds = %do.end.744, %if.then.738
  br label %if.end.746

if.end.746:                                       ; preds = %if.end.745, %do.end.734
  br label %do.end.747

do.end.747:                                       ; preds = %if.end.746
  br label %if.end.748

if.end.748:                                       ; preds = %do.end.747, %land.lhs.true.720, %sw.bb.715
  %421 = load i32, i32* %field1, align 4
  %422 = load i32, i32* %ic, align 4
  %add749 = add nsw i32 %422, %421
  store i32 %add749, i32* %ic, align 4
  br label %sw.epilog.2987

sw.bb.750:                                        ; preds = %do.end.25
  %423 = load i32, i32* %stack_idx, align 4
  %cmp751 = icmp sgt i32 %423, 0
  br i1 %cmp751, label %if.then.753, label %if.end.767

if.then.753:                                      ; preds = %sw.bb.750
  %424 = load i32, i32* %stack_idx, align 4
  %dec754 = add nsw i32 %424, -1
  store i32 %dec754, i32* %stack_idx, align 4
  %425 = load i32, i32* %stack_idx, align 4
  %idxprom755 = sext i32 %425 to i64
  %arrayidx756 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom755
  %ccl_prog757 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx756, i32 0, i32 0
  %426 = load i64*, i64** %ccl_prog757, align 8
  store i64* %426, i64** %ccl_prog, align 8
  %427 = load i32, i32* %stack_idx, align 4
  %idxprom758 = sext i32 %427 to i64
  %arrayidx759 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom758
  %ic760 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx759, i32 0, i32 1
  %428 = load i32, i32* %ic760, align 4
  store i32 %428, i32* %ic, align 4
  %429 = load i32, i32* %stack_idx, align 4
  %idxprom761 = sext i32 %429 to i64
  %arrayidx762 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom761
  %eof_ic763 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx762, i32 0, i32 2
  %430 = load i32, i32* %eof_ic763, align 4
  store i32 %430, i32* %eof_ic, align 4
  %431 = load i32, i32* %eof_hit, align 4
  %tobool764 = icmp ne i32 %431, 0
  br i1 %tobool764, label %if.then.765, label %if.end.766

if.then.765:                                      ; preds = %if.then.753
  %432 = load i32, i32* %eof_ic, align 4
  store i32 %432, i32* %ic, align 4
  br label %if.end.766

if.end.766:                                       ; preds = %if.then.765, %if.then.753
  br label %sw.epilog.2987

if.end.767:                                       ; preds = %sw.bb.750
  %433 = load i32*, i32** %src, align 8
  %tobool768 = icmp ne i32* %433, null
  br i1 %tobool768, label %if.then.769, label %if.end.770

if.then.769:                                      ; preds = %if.end.767
  %434 = load i32*, i32** %src_end, align 8
  store i32* %434, i32** %src, align 8
  br label %if.end.770

if.end.770:                                       ; preds = %if.then.769, %if.end.767
  %435 = load i32, i32* %ic, align 4
  %dec771 = add nsw i32 %435, -1
  store i32 %dec771, i32* %ic, align 4
  br label %do.body.772

do.body.772:                                      ; preds = %if.end.770
  %436 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status773 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %436, i32 0, i32 6
  store i32 0, i32* %status773, align 4
  br label %ccl_finish

do.end.774:                                       ; No predecessors!
  br label %sw.bb.775

sw.bb.775:                                        ; preds = %do.end.25, %do.end.774
  %437 = load i32, i32* %ic, align 4
  %inc776 = add nsw i32 %437, 1
  store i32 %inc776, i32* %ic, align 4
  %idxprom777 = sext i32 %437 to i64
  %438 = load i64*, i64** %ccl_prog, align 8
  %arrayidx778 = getelementptr inbounds i64, i64* %438, i64 %idxprom777
  %439 = load i64, i64* %arrayidx778, align 8
  %shr779 = ashr i64 %439, 2
  %conv780 = trunc i64 %shr779 to i32
  store i32 %conv780, i32* %i, align 4
  %440 = load i32, i32* %field1, align 4
  %shr781 = ashr i32 %440, 6
  store i32 %shr781, i32* %op, align 4
  br label %ccl_expr_self

sw.bb.782:                                        ; preds = %do.end.25
  %441 = load i32, i32* %field1, align 4
  %and783 = and i32 %441, 7
  %idxprom784 = sext i32 %and783 to i64
  %442 = load i32*, i32** %reg, align 8
  %arrayidx785 = getelementptr inbounds i32, i32* %442, i64 %idxprom784
  %443 = load i32, i32* %arrayidx785, align 4
  store i32 %443, i32* %i, align 4
  %444 = load i32, i32* %field1, align 4
  %shr786 = ashr i32 %444, 6
  store i32 %shr786, i32* %op, align 4
  br label %ccl_expr_self

ccl_expr_self:                                    ; preds = %sw.bb.782, %sw.bb.775
  %445 = load i32, i32* %op, align 4
  switch i32 %445, label %sw.default [
    i32 0, label %sw.bb.787
    i32 1, label %sw.bb.791
    i32 2, label %sw.bb.795
    i32 3, label %sw.bb.799
    i32 4, label %sw.bb.803
    i32 5, label %sw.bb.807
    i32 6, label %sw.bb.811
    i32 7, label %sw.bb.814
    i32 8, label %sw.bb.817
    i32 9, label %sw.bb.820
    i32 10, label %sw.bb.824
    i32 11, label %sw.bb.831
    i32 12, label %sw.bb.839
    i32 16, label %sw.bb.847
    i32 17, label %sw.bb.854
    i32 18, label %sw.bb.861
    i32 19, label %sw.bb.868
    i32 20, label %sw.bb.875
    i32 21, label %sw.bb.882
  ]

sw.bb.787:                                        ; preds = %ccl_expr_self
  %446 = load i32, i32* %i, align 4
  %447 = load i32, i32* %field2, align 4
  %idxprom788 = sext i32 %447 to i64
  %448 = load i32*, i32** %reg, align 8
  %arrayidx789 = getelementptr inbounds i32, i32* %448, i64 %idxprom788
  %449 = load i32, i32* %arrayidx789, align 4
  %add790 = add nsw i32 %449, %446
  store i32 %add790, i32* %arrayidx789, align 4
  br label %sw.epilog

sw.bb.791:                                        ; preds = %ccl_expr_self
  %450 = load i32, i32* %i, align 4
  %451 = load i32, i32* %field2, align 4
  %idxprom792 = sext i32 %451 to i64
  %452 = load i32*, i32** %reg, align 8
  %arrayidx793 = getelementptr inbounds i32, i32* %452, i64 %idxprom792
  %453 = load i32, i32* %arrayidx793, align 4
  %sub794 = sub nsw i32 %453, %450
  store i32 %sub794, i32* %arrayidx793, align 4
  br label %sw.epilog

sw.bb.795:                                        ; preds = %ccl_expr_self
  %454 = load i32, i32* %i, align 4
  %455 = load i32, i32* %field2, align 4
  %idxprom796 = sext i32 %455 to i64
  %456 = load i32*, i32** %reg, align 8
  %arrayidx797 = getelementptr inbounds i32, i32* %456, i64 %idxprom796
  %457 = load i32, i32* %arrayidx797, align 4
  %mul798 = mul nsw i32 %457, %454
  store i32 %mul798, i32* %arrayidx797, align 4
  br label %sw.epilog

sw.bb.799:                                        ; preds = %ccl_expr_self
  %458 = load i32, i32* %i, align 4
  %459 = load i32, i32* %field2, align 4
  %idxprom800 = sext i32 %459 to i64
  %460 = load i32*, i32** %reg, align 8
  %arrayidx801 = getelementptr inbounds i32, i32* %460, i64 %idxprom800
  %461 = load i32, i32* %arrayidx801, align 4
  %div802 = sdiv i32 %461, %458
  store i32 %div802, i32* %arrayidx801, align 4
  br label %sw.epilog

sw.bb.803:                                        ; preds = %ccl_expr_self
  %462 = load i32, i32* %i, align 4
  %463 = load i32, i32* %field2, align 4
  %idxprom804 = sext i32 %463 to i64
  %464 = load i32*, i32** %reg, align 8
  %arrayidx805 = getelementptr inbounds i32, i32* %464, i64 %idxprom804
  %465 = load i32, i32* %arrayidx805, align 4
  %rem806 = srem i32 %465, %462
  store i32 %rem806, i32* %arrayidx805, align 4
  br label %sw.epilog

sw.bb.807:                                        ; preds = %ccl_expr_self
  %466 = load i32, i32* %i, align 4
  %467 = load i32, i32* %field2, align 4
  %idxprom808 = sext i32 %467 to i64
  %468 = load i32*, i32** %reg, align 8
  %arrayidx809 = getelementptr inbounds i32, i32* %468, i64 %idxprom808
  %469 = load i32, i32* %arrayidx809, align 4
  %and810 = and i32 %469, %466
  store i32 %and810, i32* %arrayidx809, align 4
  br label %sw.epilog

sw.bb.811:                                        ; preds = %ccl_expr_self
  %470 = load i32, i32* %i, align 4
  %471 = load i32, i32* %field2, align 4
  %idxprom812 = sext i32 %471 to i64
  %472 = load i32*, i32** %reg, align 8
  %arrayidx813 = getelementptr inbounds i32, i32* %472, i64 %idxprom812
  %473 = load i32, i32* %arrayidx813, align 4
  %or = or i32 %473, %470
  store i32 %or, i32* %arrayidx813, align 4
  br label %sw.epilog

sw.bb.814:                                        ; preds = %ccl_expr_self
  %474 = load i32, i32* %i, align 4
  %475 = load i32, i32* %field2, align 4
  %idxprom815 = sext i32 %475 to i64
  %476 = load i32*, i32** %reg, align 8
  %arrayidx816 = getelementptr inbounds i32, i32* %476, i64 %idxprom815
  %477 = load i32, i32* %arrayidx816, align 4
  %xor = xor i32 %477, %474
  store i32 %xor, i32* %arrayidx816, align 4
  br label %sw.epilog

sw.bb.817:                                        ; preds = %ccl_expr_self
  %478 = load i32, i32* %i, align 4
  %479 = load i32, i32* %field2, align 4
  %idxprom818 = sext i32 %479 to i64
  %480 = load i32*, i32** %reg, align 8
  %arrayidx819 = getelementptr inbounds i32, i32* %480, i64 %idxprom818
  %481 = load i32, i32* %arrayidx819, align 4
  %shl = shl i32 %481, %478
  store i32 %shl, i32* %arrayidx819, align 4
  br label %sw.epilog

sw.bb.820:                                        ; preds = %ccl_expr_self
  %482 = load i32, i32* %i, align 4
  %483 = load i32, i32* %field2, align 4
  %idxprom821 = sext i32 %483 to i64
  %484 = load i32*, i32** %reg, align 8
  %arrayidx822 = getelementptr inbounds i32, i32* %484, i64 %idxprom821
  %485 = load i32, i32* %arrayidx822, align 4
  %shr823 = ashr i32 %485, %482
  store i32 %shr823, i32* %arrayidx822, align 4
  br label %sw.epilog

sw.bb.824:                                        ; preds = %ccl_expr_self
  %486 = load i32, i32* %field2, align 4
  %idxprom825 = sext i32 %486 to i64
  %487 = load i32*, i32** %reg, align 8
  %arrayidx826 = getelementptr inbounds i32, i32* %487, i64 %idxprom825
  %488 = load i32, i32* %arrayidx826, align 4
  %shl827 = shl i32 %488, 8
  store i32 %shl827, i32* %arrayidx826, align 4
  %489 = load i32, i32* %i, align 4
  %490 = load i32, i32* %field2, align 4
  %idxprom828 = sext i32 %490 to i64
  %491 = load i32*, i32** %reg, align 8
  %arrayidx829 = getelementptr inbounds i32, i32* %491, i64 %idxprom828
  %492 = load i32, i32* %arrayidx829, align 4
  %or830 = or i32 %492, %489
  store i32 %or830, i32* %arrayidx829, align 4
  br label %sw.epilog

sw.bb.831:                                        ; preds = %ccl_expr_self
  %493 = load i32, i32* %field2, align 4
  %idxprom832 = sext i32 %493 to i64
  %494 = load i32*, i32** %reg, align 8
  %arrayidx833 = getelementptr inbounds i32, i32* %494, i64 %idxprom832
  %495 = load i32, i32* %arrayidx833, align 4
  %and834 = and i32 %495, 255
  %496 = load i32*, i32** %reg, align 8
  %arrayidx835 = getelementptr inbounds i32, i32* %496, i64 7
  store i32 %and834, i32* %arrayidx835, align 4
  %497 = load i32, i32* %field2, align 4
  %idxprom836 = sext i32 %497 to i64
  %498 = load i32*, i32** %reg, align 8
  %arrayidx837 = getelementptr inbounds i32, i32* %498, i64 %idxprom836
  %499 = load i32, i32* %arrayidx837, align 4
  %shr838 = ashr i32 %499, 8
  store i32 %shr838, i32* %arrayidx837, align 4
  br label %sw.epilog

sw.bb.839:                                        ; preds = %ccl_expr_self
  %500 = load i32, i32* %field2, align 4
  %idxprom840 = sext i32 %500 to i64
  %501 = load i32*, i32** %reg, align 8
  %arrayidx841 = getelementptr inbounds i32, i32* %501, i64 %idxprom840
  %502 = load i32, i32* %arrayidx841, align 4
  %503 = load i32, i32* %i, align 4
  %rem842 = srem i32 %502, %503
  %504 = load i32*, i32** %reg, align 8
  %arrayidx843 = getelementptr inbounds i32, i32* %504, i64 7
  store i32 %rem842, i32* %arrayidx843, align 4
  %505 = load i32, i32* %i, align 4
  %506 = load i32, i32* %field2, align 4
  %idxprom844 = sext i32 %506 to i64
  %507 = load i32*, i32** %reg, align 8
  %arrayidx845 = getelementptr inbounds i32, i32* %507, i64 %idxprom844
  %508 = load i32, i32* %arrayidx845, align 4
  %div846 = sdiv i32 %508, %505
  store i32 %div846, i32* %arrayidx845, align 4
  br label %sw.epilog

sw.bb.847:                                        ; preds = %ccl_expr_self
  %509 = load i32, i32* %field2, align 4
  %idxprom848 = sext i32 %509 to i64
  %510 = load i32*, i32** %reg, align 8
  %arrayidx849 = getelementptr inbounds i32, i32* %510, i64 %idxprom848
  %511 = load i32, i32* %arrayidx849, align 4
  %512 = load i32, i32* %i, align 4
  %cmp850 = icmp slt i32 %511, %512
  %conv851 = zext i1 %cmp850 to i32
  %513 = load i32, i32* %field2, align 4
  %idxprom852 = sext i32 %513 to i64
  %514 = load i32*, i32** %reg, align 8
  %arrayidx853 = getelementptr inbounds i32, i32* %514, i64 %idxprom852
  store i32 %conv851, i32* %arrayidx853, align 4
  br label %sw.epilog

sw.bb.854:                                        ; preds = %ccl_expr_self
  %515 = load i32, i32* %field2, align 4
  %idxprom855 = sext i32 %515 to i64
  %516 = load i32*, i32** %reg, align 8
  %arrayidx856 = getelementptr inbounds i32, i32* %516, i64 %idxprom855
  %517 = load i32, i32* %arrayidx856, align 4
  %518 = load i32, i32* %i, align 4
  %cmp857 = icmp sgt i32 %517, %518
  %conv858 = zext i1 %cmp857 to i32
  %519 = load i32, i32* %field2, align 4
  %idxprom859 = sext i32 %519 to i64
  %520 = load i32*, i32** %reg, align 8
  %arrayidx860 = getelementptr inbounds i32, i32* %520, i64 %idxprom859
  store i32 %conv858, i32* %arrayidx860, align 4
  br label %sw.epilog

sw.bb.861:                                        ; preds = %ccl_expr_self
  %521 = load i32, i32* %field2, align 4
  %idxprom862 = sext i32 %521 to i64
  %522 = load i32*, i32** %reg, align 8
  %arrayidx863 = getelementptr inbounds i32, i32* %522, i64 %idxprom862
  %523 = load i32, i32* %arrayidx863, align 4
  %524 = load i32, i32* %i, align 4
  %cmp864 = icmp eq i32 %523, %524
  %conv865 = zext i1 %cmp864 to i32
  %525 = load i32, i32* %field2, align 4
  %idxprom866 = sext i32 %525 to i64
  %526 = load i32*, i32** %reg, align 8
  %arrayidx867 = getelementptr inbounds i32, i32* %526, i64 %idxprom866
  store i32 %conv865, i32* %arrayidx867, align 4
  br label %sw.epilog

sw.bb.868:                                        ; preds = %ccl_expr_self
  %527 = load i32, i32* %field2, align 4
  %idxprom869 = sext i32 %527 to i64
  %528 = load i32*, i32** %reg, align 8
  %arrayidx870 = getelementptr inbounds i32, i32* %528, i64 %idxprom869
  %529 = load i32, i32* %arrayidx870, align 4
  %530 = load i32, i32* %i, align 4
  %cmp871 = icmp sle i32 %529, %530
  %conv872 = zext i1 %cmp871 to i32
  %531 = load i32, i32* %field2, align 4
  %idxprom873 = sext i32 %531 to i64
  %532 = load i32*, i32** %reg, align 8
  %arrayidx874 = getelementptr inbounds i32, i32* %532, i64 %idxprom873
  store i32 %conv872, i32* %arrayidx874, align 4
  br label %sw.epilog

sw.bb.875:                                        ; preds = %ccl_expr_self
  %533 = load i32, i32* %field2, align 4
  %idxprom876 = sext i32 %533 to i64
  %534 = load i32*, i32** %reg, align 8
  %arrayidx877 = getelementptr inbounds i32, i32* %534, i64 %idxprom876
  %535 = load i32, i32* %arrayidx877, align 4
  %536 = load i32, i32* %i, align 4
  %cmp878 = icmp sge i32 %535, %536
  %conv879 = zext i1 %cmp878 to i32
  %537 = load i32, i32* %field2, align 4
  %idxprom880 = sext i32 %537 to i64
  %538 = load i32*, i32** %reg, align 8
  %arrayidx881 = getelementptr inbounds i32, i32* %538, i64 %idxprom880
  store i32 %conv879, i32* %arrayidx881, align 4
  br label %sw.epilog

sw.bb.882:                                        ; preds = %ccl_expr_self
  %539 = load i32, i32* %field2, align 4
  %idxprom883 = sext i32 %539 to i64
  %540 = load i32*, i32** %reg, align 8
  %arrayidx884 = getelementptr inbounds i32, i32* %540, i64 %idxprom883
  %541 = load i32, i32* %arrayidx884, align 4
  %542 = load i32, i32* %i, align 4
  %cmp885 = icmp ne i32 %541, %542
  %conv886 = zext i1 %cmp885 to i32
  %543 = load i32, i32* %field2, align 4
  %idxprom887 = sext i32 %543 to i64
  %544 = load i32*, i32** %reg, align 8
  %arrayidx888 = getelementptr inbounds i32, i32* %544, i64 %idxprom887
  store i32 %conv886, i32* %arrayidx888, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %ccl_expr_self
  br label %do.body.889

do.body.889:                                      ; preds = %sw.default
  %545 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status890 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %545, i32 0, i32 6
  store i32 3, i32* %status890, align 4
  br label %ccl_error_handler

do.end.891:                                       ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.891, %sw.bb.882, %sw.bb.875, %sw.bb.868, %sw.bb.861, %sw.bb.854, %sw.bb.847, %sw.bb.839, %sw.bb.831, %sw.bb.824, %sw.bb.820, %sw.bb.817, %sw.bb.814, %sw.bb.811, %sw.bb.807, %sw.bb.803, %sw.bb.799, %sw.bb.795, %sw.bb.791, %sw.bb.787
  br label %sw.epilog.2987

sw.bb.892:                                        ; preds = %do.end.25
  %546 = load i32, i32* %field1, align 4
  %and893 = and i32 %546, 7
  %idxprom894 = sext i32 %and893 to i64
  %547 = load i32*, i32** %reg, align 8
  %arrayidx895 = getelementptr inbounds i32, i32* %547, i64 %idxprom894
  %548 = load i32, i32* %arrayidx895, align 4
  store i32 %548, i32* %i, align 4
  %549 = load i32, i32* %ic, align 4
  %inc896 = add nsw i32 %549, 1
  store i32 %inc896, i32* %ic, align 4
  %idxprom897 = sext i32 %549 to i64
  %550 = load i64*, i64** %ccl_prog, align 8
  %arrayidx898 = getelementptr inbounds i64, i64* %550, i64 %idxprom897
  %551 = load i64, i64* %arrayidx898, align 8
  %shr899 = ashr i64 %551, 2
  %conv900 = trunc i64 %shr899 to i32
  store i32 %conv900, i32* %j, align 4
  %552 = load i32, i32* %field1, align 4
  %shr901 = ashr i32 %552, 6
  store i32 %shr901, i32* %op, align 4
  %553 = load i32, i32* %ic, align 4
  store i32 %553, i32* %jump_address, align 4
  br label %ccl_set_expr

sw.bb.902:                                        ; preds = %do.end.25
  %554 = load i32, i32* %field1, align 4
  %and903 = and i32 %554, 7
  %idxprom904 = sext i32 %and903 to i64
  %555 = load i32*, i32** %reg, align 8
  %arrayidx905 = getelementptr inbounds i32, i32* %555, i64 %idxprom904
  %556 = load i32, i32* %arrayidx905, align 4
  store i32 %556, i32* %i, align 4
  %557 = load i32, i32* %field1, align 4
  %shr906 = ashr i32 %557, 3
  %and907 = and i32 %shr906, 7
  %idxprom908 = sext i32 %and907 to i64
  %558 = load i32*, i32** %reg, align 8
  %arrayidx909 = getelementptr inbounds i32, i32* %558, i64 %idxprom908
  %559 = load i32, i32* %arrayidx909, align 4
  store i32 %559, i32* %j, align 4
  %560 = load i32, i32* %field1, align 4
  %shr910 = ashr i32 %560, 6
  store i32 %shr910, i32* %op, align 4
  %561 = load i32, i32* %ic, align 4
  store i32 %561, i32* %jump_address, align 4
  br label %ccl_set_expr

sw.bb.911:                                        ; preds = %do.end.25
  br label %do.body.912

do.body.912:                                      ; preds = %sw.bb.911
  %562 = load i32*, i32** %src, align 8
  %tobool913 = icmp ne i32* %562, null
  br i1 %tobool913, label %if.else.918, label %if.then.914

if.then.914:                                      ; preds = %do.body.912
  br label %do.body.915

do.body.915:                                      ; preds = %if.then.914
  %563 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status916 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %563, i32 0, i32 6
  store i32 3, i32* %status916, align 4
  br label %ccl_error_handler

do.end.917:                                       ; No predecessors!
  br label %if.end.941

if.else.918:                                      ; preds = %do.body.912
  %564 = load i32*, i32** %src, align 8
  %565 = load i32*, i32** %src_end, align 8
  %cmp919 = icmp ult i32* %564, %565
  br i1 %cmp919, label %if.then.921, label %if.else.925

if.then.921:                                      ; preds = %if.else.918
  %566 = load i32*, i32** %src, align 8
  %incdec.ptr922 = getelementptr inbounds i32, i32* %566, i32 1
  store i32* %incdec.ptr922, i32** %src, align 8
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* %field2, align 4
  %idxprom923 = sext i32 %568 to i64
  %569 = load i32*, i32** %reg, align 8
  %arrayidx924 = getelementptr inbounds i32, i32* %569, i64 %idxprom923
  store i32 %567, i32* %arrayidx924, align 4
  br label %if.end.940

if.else.925:                                      ; preds = %if.else.918
  %570 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block926 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %570, i32 0, i32 11
  %bf.load927 = load i8, i8* %last_block926, align 4
  %bf.clear928 = and i8 %bf.load927, 1
  %bf.cast929 = trunc i8 %bf.clear928 to i1
  br i1 %bf.cast929, label %if.then.930, label %if.else.934

if.then.930:                                      ; preds = %if.else.925
  %571 = load i32, i32* %field2, align 4
  %idxprom931 = sext i32 %571 to i64
  %572 = load i32*, i32** %reg, align 8
  %arrayidx932 = getelementptr inbounds i32, i32* %572, i64 %idxprom931
  store i32 -1, i32* %arrayidx932, align 4
  %573 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic933 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %573, i32 0, i32 4
  %574 = load i32, i32* %eof_ic933, align 4
  store i32 %574, i32* %ic, align 4
  br label %ccl_repeat

if.else.934:                                      ; preds = %if.else.925
  br label %do.body.935

do.body.935:                                      ; preds = %if.else.934
  %575 = load i32, i32* %ic, align 4
  %dec936 = add nsw i32 %575, -1
  store i32 %dec936, i32* %ic, align 4
  %576 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status937 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %576, i32 0, i32 6
  store i32 1, i32* %status937, align 4
  br label %ccl_finish

do.end.938:                                       ; No predecessors!
  br label %if.end.939

if.end.939:                                       ; preds = %do.end.938
  br label %if.end.940

if.end.940:                                       ; preds = %if.end.939, %if.then.921
  br label %if.end.941

if.end.941:                                       ; preds = %if.end.940, %do.end.917
  br label %do.end.942

do.end.942:                                       ; preds = %if.end.941
  br label %sw.bb.943

sw.bb.943:                                        ; preds = %do.end.25, %do.end.942
  %577 = load i32, i32* %field2, align 4
  %idxprom944 = sext i32 %577 to i64
  %578 = load i32*, i32** %reg, align 8
  %arrayidx945 = getelementptr inbounds i32, i32* %578, i64 %idxprom944
  %579 = load i32, i32* %arrayidx945, align 4
  store i32 %579, i32* %i, align 4
  %580 = load i32, i32* %ic, align 4
  %581 = load i32, i32* %field1, align 4
  %add946 = add nsw i32 %580, %581
  store i32 %add946, i32* %jump_address, align 4
  %582 = load i32, i32* %ic, align 4
  %inc947 = add nsw i32 %582, 1
  store i32 %inc947, i32* %ic, align 4
  %idxprom948 = sext i32 %582 to i64
  %583 = load i64*, i64** %ccl_prog, align 8
  %arrayidx949 = getelementptr inbounds i64, i64* %583, i64 %idxprom948
  %584 = load i64, i64* %arrayidx949, align 8
  %shr950 = ashr i64 %584, 2
  %conv951 = trunc i64 %shr950 to i32
  store i32 %conv951, i32* %op, align 4
  %585 = load i32, i32* %ic, align 4
  %inc952 = add nsw i32 %585, 1
  store i32 %inc952, i32* %ic, align 4
  %idxprom953 = sext i32 %585 to i64
  %586 = load i64*, i64** %ccl_prog, align 8
  %arrayidx954 = getelementptr inbounds i64, i64* %586, i64 %idxprom953
  %587 = load i64, i64* %arrayidx954, align 8
  %shr955 = ashr i64 %587, 2
  %conv956 = trunc i64 %shr955 to i32
  store i32 %conv956, i32* %j, align 4
  store i32 7, i32* %field2, align 4
  br label %ccl_set_expr

sw.bb.957:                                        ; preds = %do.end.25
  br label %do.body.958

do.body.958:                                      ; preds = %sw.bb.957
  %588 = load i32*, i32** %src, align 8
  %tobool959 = icmp ne i32* %588, null
  br i1 %tobool959, label %if.else.964, label %if.then.960

if.then.960:                                      ; preds = %do.body.958
  br label %do.body.961

do.body.961:                                      ; preds = %if.then.960
  %589 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status962 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %589, i32 0, i32 6
  store i32 3, i32* %status962, align 4
  br label %ccl_error_handler

do.end.963:                                       ; No predecessors!
  br label %if.end.987

if.else.964:                                      ; preds = %do.body.958
  %590 = load i32*, i32** %src, align 8
  %591 = load i32*, i32** %src_end, align 8
  %cmp965 = icmp ult i32* %590, %591
  br i1 %cmp965, label %if.then.967, label %if.else.971

if.then.967:                                      ; preds = %if.else.964
  %592 = load i32*, i32** %src, align 8
  %incdec.ptr968 = getelementptr inbounds i32, i32* %592, i32 1
  store i32* %incdec.ptr968, i32** %src, align 8
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* %field2, align 4
  %idxprom969 = sext i32 %594 to i64
  %595 = load i32*, i32** %reg, align 8
  %arrayidx970 = getelementptr inbounds i32, i32* %595, i64 %idxprom969
  store i32 %593, i32* %arrayidx970, align 4
  br label %if.end.986

if.else.971:                                      ; preds = %if.else.964
  %596 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block972 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %596, i32 0, i32 11
  %bf.load973 = load i8, i8* %last_block972, align 4
  %bf.clear974 = and i8 %bf.load973, 1
  %bf.cast975 = trunc i8 %bf.clear974 to i1
  br i1 %bf.cast975, label %if.then.976, label %if.else.980

if.then.976:                                      ; preds = %if.else.971
  %597 = load i32, i32* %field2, align 4
  %idxprom977 = sext i32 %597 to i64
  %598 = load i32*, i32** %reg, align 8
  %arrayidx978 = getelementptr inbounds i32, i32* %598, i64 %idxprom977
  store i32 -1, i32* %arrayidx978, align 4
  %599 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic979 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %599, i32 0, i32 4
  %600 = load i32, i32* %eof_ic979, align 4
  store i32 %600, i32* %ic, align 4
  br label %ccl_repeat

if.else.980:                                      ; preds = %if.else.971
  br label %do.body.981

do.body.981:                                      ; preds = %if.else.980
  %601 = load i32, i32* %ic, align 4
  %dec982 = add nsw i32 %601, -1
  store i32 %dec982, i32* %ic, align 4
  %602 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status983 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %602, i32 0, i32 6
  store i32 1, i32* %status983, align 4
  br label %ccl_finish

do.end.984:                                       ; No predecessors!
  br label %if.end.985

if.end.985:                                       ; preds = %do.end.984
  br label %if.end.986

if.end.986:                                       ; preds = %if.end.985, %if.then.967
  br label %if.end.987

if.end.987:                                       ; preds = %if.end.986, %do.end.963
  br label %do.end.988

do.end.988:                                       ; preds = %if.end.987
  br label %sw.bb.989

sw.bb.989:                                        ; preds = %do.end.25, %do.end.988
  %603 = load i32, i32* %field2, align 4
  %idxprom990 = sext i32 %603 to i64
  %604 = load i32*, i32** %reg, align 8
  %arrayidx991 = getelementptr inbounds i32, i32* %604, i64 %idxprom990
  %605 = load i32, i32* %arrayidx991, align 4
  store i32 %605, i32* %i, align 4
  %606 = load i32, i32* %ic, align 4
  %607 = load i32, i32* %field1, align 4
  %add992 = add nsw i32 %606, %607
  store i32 %add992, i32* %jump_address, align 4
  %608 = load i32, i32* %ic, align 4
  %inc993 = add nsw i32 %608, 1
  store i32 %inc993, i32* %ic, align 4
  %idxprom994 = sext i32 %608 to i64
  %609 = load i64*, i64** %ccl_prog, align 8
  %arrayidx995 = getelementptr inbounds i64, i64* %609, i64 %idxprom994
  %610 = load i64, i64* %arrayidx995, align 8
  %shr996 = ashr i64 %610, 2
  %conv997 = trunc i64 %shr996 to i32
  store i32 %conv997, i32* %op, align 4
  br label %do.body.998

do.body.998:                                      ; preds = %sw.bb.989
  %611 = load i32, i32* %ic, align 4
  %inc1000 = add nsw i32 %611, 1
  store i32 %inc1000, i32* %ic, align 4
  %idxprom1001 = sext i32 %611 to i64
  %612 = load i64*, i64** %ccl_prog, align 8
  %arrayidx1002 = getelementptr inbounds i64, i64* %612, i64 %idxprom1001
  %613 = load i64, i64* %arrayidx1002, align 8
  %shr1003 = ashr i64 %613, 2
  store i64 %shr1003, i64* %prog_word999, align 8
  %614 = load i64, i64* %prog_word999, align 8
  %cmp1004 = icmp sle i64 0, %614
  %conv1005 = zext i1 %cmp1004 to i32
  %615 = load i64, i64* %prog_word999, align 8
  %cmp1006 = icmp sle i64 %615, 7
  %conv1007 = zext i1 %cmp1006 to i32
  %and1008 = and i32 %conv1005, %conv1007
  %tobool1009 = icmp ne i32 %and1008, 0
  br i1 %tobool1009, label %if.end.1014, label %if.then.1010

if.then.1010:                                     ; preds = %do.body.998
  br label %do.body.1011

do.body.1011:                                     ; preds = %if.then.1010
  %616 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1012 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %616, i32 0, i32 6
  store i32 3, i32* %status1012, align 4
  br label %ccl_error_handler

do.end.1013:                                      ; No predecessors!
  br label %if.end.1014

if.end.1014:                                      ; preds = %do.end.1013, %do.body.998
  %617 = load i64, i64* %prog_word999, align 8
  %conv1015 = trunc i64 %617 to i32
  store i32 %conv1015, i32* %j, align 4
  br label %do.end.1016

do.end.1016:                                      ; preds = %if.end.1014
  %618 = load i32, i32* %j, align 4
  %idxprom1017 = sext i32 %618 to i64
  %619 = load i32*, i32** %reg, align 8
  %arrayidx1018 = getelementptr inbounds i32, i32* %619, i64 %idxprom1017
  %620 = load i32, i32* %arrayidx1018, align 4
  store i32 %620, i32* %j, align 4
  store i32 7, i32* %field2, align 4
  br label %ccl_set_expr

ccl_set_expr:                                     ; preds = %do.end.1016, %sw.bb.943, %sw.bb.902, %sw.bb.892, %sw.bb.565, %sw.bb.506
  %621 = load i32, i32* %op, align 4
  switch i32 %621, label %sw.default.1178 [
    i32 0, label %sw.bb.1019
    i32 1, label %sw.bb.1023
    i32 2, label %sw.bb.1027
    i32 3, label %sw.bb.1031
    i32 4, label %sw.bb.1035
    i32 5, label %sw.bb.1039
    i32 6, label %sw.bb.1043
    i32 7, label %sw.bb.1047
    i32 8, label %sw.bb.1051
    i32 9, label %sw.bb.1055
    i32 10, label %sw.bb.1059
    i32 11, label %sw.bb.1064
    i32 12, label %sw.bb.1070
    i32 16, label %sw.bb.1076
    i32 17, label %sw.bb.1081
    i32 18, label %sw.bb.1086
    i32 19, label %sw.bb.1091
    i32 20, label %sw.bb.1096
    i32 21, label %sw.bb.1101
    i32 22, label %sw.bb.1106
    i32 23, label %sw.bb.1140
  ]

sw.bb.1019:                                       ; preds = %ccl_set_expr
  %622 = load i32, i32* %i, align 4
  %623 = load i32, i32* %j, align 4
  %add1020 = add nsw i32 %622, %623
  %624 = load i32, i32* %field2, align 4
  %idxprom1021 = sext i32 %624 to i64
  %625 = load i32*, i32** %reg, align 8
  %arrayidx1022 = getelementptr inbounds i32, i32* %625, i64 %idxprom1021
  store i32 %add1020, i32* %arrayidx1022, align 4
  br label %sw.epilog.1182

sw.bb.1023:                                       ; preds = %ccl_set_expr
  %626 = load i32, i32* %i, align 4
  %627 = load i32, i32* %j, align 4
  %sub1024 = sub nsw i32 %626, %627
  %628 = load i32, i32* %field2, align 4
  %idxprom1025 = sext i32 %628 to i64
  %629 = load i32*, i32** %reg, align 8
  %arrayidx1026 = getelementptr inbounds i32, i32* %629, i64 %idxprom1025
  store i32 %sub1024, i32* %arrayidx1026, align 4
  br label %sw.epilog.1182

sw.bb.1027:                                       ; preds = %ccl_set_expr
  %630 = load i32, i32* %i, align 4
  %631 = load i32, i32* %j, align 4
  %mul1028 = mul nsw i32 %630, %631
  %632 = load i32, i32* %field2, align 4
  %idxprom1029 = sext i32 %632 to i64
  %633 = load i32*, i32** %reg, align 8
  %arrayidx1030 = getelementptr inbounds i32, i32* %633, i64 %idxprom1029
  store i32 %mul1028, i32* %arrayidx1030, align 4
  br label %sw.epilog.1182

sw.bb.1031:                                       ; preds = %ccl_set_expr
  %634 = load i32, i32* %i, align 4
  %635 = load i32, i32* %j, align 4
  %div1032 = sdiv i32 %634, %635
  %636 = load i32, i32* %field2, align 4
  %idxprom1033 = sext i32 %636 to i64
  %637 = load i32*, i32** %reg, align 8
  %arrayidx1034 = getelementptr inbounds i32, i32* %637, i64 %idxprom1033
  store i32 %div1032, i32* %arrayidx1034, align 4
  br label %sw.epilog.1182

sw.bb.1035:                                       ; preds = %ccl_set_expr
  %638 = load i32, i32* %i, align 4
  %639 = load i32, i32* %j, align 4
  %rem1036 = srem i32 %638, %639
  %640 = load i32, i32* %field2, align 4
  %idxprom1037 = sext i32 %640 to i64
  %641 = load i32*, i32** %reg, align 8
  %arrayidx1038 = getelementptr inbounds i32, i32* %641, i64 %idxprom1037
  store i32 %rem1036, i32* %arrayidx1038, align 4
  br label %sw.epilog.1182

sw.bb.1039:                                       ; preds = %ccl_set_expr
  %642 = load i32, i32* %i, align 4
  %643 = load i32, i32* %j, align 4
  %and1040 = and i32 %642, %643
  %644 = load i32, i32* %field2, align 4
  %idxprom1041 = sext i32 %644 to i64
  %645 = load i32*, i32** %reg, align 8
  %arrayidx1042 = getelementptr inbounds i32, i32* %645, i64 %idxprom1041
  store i32 %and1040, i32* %arrayidx1042, align 4
  br label %sw.epilog.1182

sw.bb.1043:                                       ; preds = %ccl_set_expr
  %646 = load i32, i32* %i, align 4
  %647 = load i32, i32* %j, align 4
  %or1044 = or i32 %646, %647
  %648 = load i32, i32* %field2, align 4
  %idxprom1045 = sext i32 %648 to i64
  %649 = load i32*, i32** %reg, align 8
  %arrayidx1046 = getelementptr inbounds i32, i32* %649, i64 %idxprom1045
  store i32 %or1044, i32* %arrayidx1046, align 4
  br label %sw.epilog.1182

sw.bb.1047:                                       ; preds = %ccl_set_expr
  %650 = load i32, i32* %i, align 4
  %651 = load i32, i32* %j, align 4
  %xor1048 = xor i32 %650, %651
  %652 = load i32, i32* %field2, align 4
  %idxprom1049 = sext i32 %652 to i64
  %653 = load i32*, i32** %reg, align 8
  %arrayidx1050 = getelementptr inbounds i32, i32* %653, i64 %idxprom1049
  store i32 %xor1048, i32* %arrayidx1050, align 4
  br label %sw.epilog.1182

sw.bb.1051:                                       ; preds = %ccl_set_expr
  %654 = load i32, i32* %i, align 4
  %655 = load i32, i32* %j, align 4
  %shl1052 = shl i32 %654, %655
  %656 = load i32, i32* %field2, align 4
  %idxprom1053 = sext i32 %656 to i64
  %657 = load i32*, i32** %reg, align 8
  %arrayidx1054 = getelementptr inbounds i32, i32* %657, i64 %idxprom1053
  store i32 %shl1052, i32* %arrayidx1054, align 4
  br label %sw.epilog.1182

sw.bb.1055:                                       ; preds = %ccl_set_expr
  %658 = load i32, i32* %i, align 4
  %659 = load i32, i32* %j, align 4
  %shr1056 = ashr i32 %658, %659
  %660 = load i32, i32* %field2, align 4
  %idxprom1057 = sext i32 %660 to i64
  %661 = load i32*, i32** %reg, align 8
  %arrayidx1058 = getelementptr inbounds i32, i32* %661, i64 %idxprom1057
  store i32 %shr1056, i32* %arrayidx1058, align 4
  br label %sw.epilog.1182

sw.bb.1059:                                       ; preds = %ccl_set_expr
  %662 = load i32, i32* %i, align 4
  %shl1060 = shl i32 %662, 8
  %663 = load i32, i32* %j, align 4
  %or1061 = or i32 %shl1060, %663
  %664 = load i32, i32* %field2, align 4
  %idxprom1062 = sext i32 %664 to i64
  %665 = load i32*, i32** %reg, align 8
  %arrayidx1063 = getelementptr inbounds i32, i32* %665, i64 %idxprom1062
  store i32 %or1061, i32* %arrayidx1063, align 4
  br label %sw.epilog.1182

sw.bb.1064:                                       ; preds = %ccl_set_expr
  %666 = load i32, i32* %i, align 4
  %shr1065 = ashr i32 %666, 8
  %667 = load i32, i32* %field2, align 4
  %idxprom1066 = sext i32 %667 to i64
  %668 = load i32*, i32** %reg, align 8
  %arrayidx1067 = getelementptr inbounds i32, i32* %668, i64 %idxprom1066
  store i32 %shr1065, i32* %arrayidx1067, align 4
  %669 = load i32, i32* %i, align 4
  %and1068 = and i32 %669, 255
  %670 = load i32*, i32** %reg, align 8
  %arrayidx1069 = getelementptr inbounds i32, i32* %670, i64 7
  store i32 %and1068, i32* %arrayidx1069, align 4
  br label %sw.epilog.1182

sw.bb.1070:                                       ; preds = %ccl_set_expr
  %671 = load i32, i32* %i, align 4
  %672 = load i32, i32* %j, align 4
  %div1071 = sdiv i32 %671, %672
  %673 = load i32, i32* %field2, align 4
  %idxprom1072 = sext i32 %673 to i64
  %674 = load i32*, i32** %reg, align 8
  %arrayidx1073 = getelementptr inbounds i32, i32* %674, i64 %idxprom1072
  store i32 %div1071, i32* %arrayidx1073, align 4
  %675 = load i32, i32* %i, align 4
  %676 = load i32, i32* %j, align 4
  %rem1074 = srem i32 %675, %676
  %677 = load i32*, i32** %reg, align 8
  %arrayidx1075 = getelementptr inbounds i32, i32* %677, i64 7
  store i32 %rem1074, i32* %arrayidx1075, align 4
  br label %sw.epilog.1182

sw.bb.1076:                                       ; preds = %ccl_set_expr
  %678 = load i32, i32* %i, align 4
  %679 = load i32, i32* %j, align 4
  %cmp1077 = icmp slt i32 %678, %679
  %conv1078 = zext i1 %cmp1077 to i32
  %680 = load i32, i32* %field2, align 4
  %idxprom1079 = sext i32 %680 to i64
  %681 = load i32*, i32** %reg, align 8
  %arrayidx1080 = getelementptr inbounds i32, i32* %681, i64 %idxprom1079
  store i32 %conv1078, i32* %arrayidx1080, align 4
  br label %sw.epilog.1182

sw.bb.1081:                                       ; preds = %ccl_set_expr
  %682 = load i32, i32* %i, align 4
  %683 = load i32, i32* %j, align 4
  %cmp1082 = icmp sgt i32 %682, %683
  %conv1083 = zext i1 %cmp1082 to i32
  %684 = load i32, i32* %field2, align 4
  %idxprom1084 = sext i32 %684 to i64
  %685 = load i32*, i32** %reg, align 8
  %arrayidx1085 = getelementptr inbounds i32, i32* %685, i64 %idxprom1084
  store i32 %conv1083, i32* %arrayidx1085, align 4
  br label %sw.epilog.1182

sw.bb.1086:                                       ; preds = %ccl_set_expr
  %686 = load i32, i32* %i, align 4
  %687 = load i32, i32* %j, align 4
  %cmp1087 = icmp eq i32 %686, %687
  %conv1088 = zext i1 %cmp1087 to i32
  %688 = load i32, i32* %field2, align 4
  %idxprom1089 = sext i32 %688 to i64
  %689 = load i32*, i32** %reg, align 8
  %arrayidx1090 = getelementptr inbounds i32, i32* %689, i64 %idxprom1089
  store i32 %conv1088, i32* %arrayidx1090, align 4
  br label %sw.epilog.1182

sw.bb.1091:                                       ; preds = %ccl_set_expr
  %690 = load i32, i32* %i, align 4
  %691 = load i32, i32* %j, align 4
  %cmp1092 = icmp sle i32 %690, %691
  %conv1093 = zext i1 %cmp1092 to i32
  %692 = load i32, i32* %field2, align 4
  %idxprom1094 = sext i32 %692 to i64
  %693 = load i32*, i32** %reg, align 8
  %arrayidx1095 = getelementptr inbounds i32, i32* %693, i64 %idxprom1094
  store i32 %conv1093, i32* %arrayidx1095, align 4
  br label %sw.epilog.1182

sw.bb.1096:                                       ; preds = %ccl_set_expr
  %694 = load i32, i32* %i, align 4
  %695 = load i32, i32* %j, align 4
  %cmp1097 = icmp sge i32 %694, %695
  %conv1098 = zext i1 %cmp1097 to i32
  %696 = load i32, i32* %field2, align 4
  %idxprom1099 = sext i32 %696 to i64
  %697 = load i32*, i32** %reg, align 8
  %arrayidx1100 = getelementptr inbounds i32, i32* %697, i64 %idxprom1099
  store i32 %conv1098, i32* %arrayidx1100, align 4
  br label %sw.epilog.1182

sw.bb.1101:                                       ; preds = %ccl_set_expr
  %698 = load i32, i32* %i, align 4
  %699 = load i32, i32* %j, align 4
  %cmp1102 = icmp ne i32 %698, %699
  %conv1103 = zext i1 %cmp1102 to i32
  %700 = load i32, i32* %field2, align 4
  %idxprom1104 = sext i32 %700 to i64
  %701 = load i32*, i32** %reg, align 8
  %arrayidx1105 = getelementptr inbounds i32, i32* %701, i64 %idxprom1104
  store i32 %conv1103, i32* %arrayidx1105, align 4
  br label %sw.epilog.1182

sw.bb.1106:                                       ; preds = %ccl_set_expr
  %702 = load i32, i32* %i, align 4
  %shl1107 = shl i32 %702, 8
  %703 = load i32, i32* %j, align 4
  %or1108 = or i32 %shl1107, %703
  store i32 %or1108, i32* %i, align 4
  br label %do.body.1109

do.body.1109:                                     ; preds = %sw.bb.1106
  %704 = load i32, i32* %i, align 4
  %shr1110 = ashr i32 %704, 8
  store i32 %shr1110, i32* %s1, align 4
  %705 = load i32, i32* %i, align 4
  %and1111 = and i32 %705, 255
  store i32 %and1111, i32* %s2, align 4
  %706 = load i32, i32* %s2, align 4
  %cmp1112 = icmp sge i32 %706, 159
  br i1 %cmp1112, label %if.then.1114, label %if.else.1121

if.then.1114:                                     ; preds = %do.body.1109
  %707 = load i32, i32* %s1, align 4
  %mul1115 = mul nsw i32 %707, 2
  %708 = load i32, i32* %s1, align 4
  %cmp1116 = icmp sge i32 %708, 224
  %cond1118 = select i1 %cmp1116, i32 352, i32 224
  %sub1119 = sub nsw i32 %mul1115, %cond1118
  store i32 %sub1119, i32* %j1, align 4
  %709 = load i32, i32* %s2, align 4
  %sub1120 = sub nsw i32 %709, 126
  store i32 %sub1120, i32* %j2, align 4
  br label %if.end.1131

if.else.1121:                                     ; preds = %do.body.1109
  %710 = load i32, i32* %s1, align 4
  %mul1122 = mul nsw i32 %710, 2
  %711 = load i32, i32* %s1, align 4
  %cmp1123 = icmp sge i32 %711, 224
  %cond1125 = select i1 %cmp1123, i32 353, i32 225
  %sub1126 = sub nsw i32 %mul1122, %cond1125
  store i32 %sub1126, i32* %j1, align 4
  %712 = load i32, i32* %s2, align 4
  %713 = load i32, i32* %s2, align 4
  %cmp1127 = icmp sge i32 %713, 127
  %cond1129 = select i1 %cmp1127, i32 32, i32 31
  %sub1130 = sub nsw i32 %712, %cond1129
  store i32 %sub1130, i32* %j2, align 4
  br label %if.end.1131

if.end.1131:                                      ; preds = %if.else.1121, %if.then.1114
  %714 = load i32, i32* %j1, align 4
  %shl1132 = shl i32 %714, 8
  %715 = load i32, i32* %j2, align 4
  %or1133 = or i32 %shl1132, %715
  store i32 %or1133, i32* %i, align 4
  br label %do.end.1134

do.end.1134:                                      ; preds = %if.end.1131
  %716 = load i32, i32* %i, align 4
  %shr1135 = ashr i32 %716, 8
  %717 = load i32, i32* %field2, align 4
  %idxprom1136 = sext i32 %717 to i64
  %718 = load i32*, i32** %reg, align 8
  %arrayidx1137 = getelementptr inbounds i32, i32* %718, i64 %idxprom1136
  store i32 %shr1135, i32* %arrayidx1137, align 4
  %719 = load i32, i32* %i, align 4
  %and1138 = and i32 %719, 255
  %720 = load i32*, i32** %reg, align 8
  %arrayidx1139 = getelementptr inbounds i32, i32* %720, i64 7
  store i32 %and1138, i32* %arrayidx1139, align 4
  br label %sw.epilog.1182

sw.bb.1140:                                       ; preds = %ccl_set_expr
  %721 = load i32, i32* %i, align 4
  %shl1141 = shl i32 %721, 8
  %722 = load i32, i32* %j, align 4
  %or1142 = or i32 %shl1141, %722
  store i32 %or1142, i32* %i, align 4
  br label %do.body.1143

do.body.1143:                                     ; preds = %sw.bb.1140
  %723 = load i32, i32* %i, align 4
  %shr1148 = ashr i32 %723, 8
  store i32 %shr1148, i32* %j11146, align 4
  %724 = load i32, i32* %i, align 4
  %and1149 = and i32 %724, 255
  store i32 %and1149, i32* %j21147, align 4
  %725 = load i32, i32* %j11146, align 4
  %and1150 = and i32 %725, 1
  %tobool1151 = icmp ne i32 %and1150, 0
  br i1 %tobool1151, label %if.then.1152, label %if.else.1162

if.then.1152:                                     ; preds = %do.body.1143
  %726 = load i32, i32* %j11146, align 4
  %div1153 = sdiv i32 %726, 2
  %727 = load i32, i32* %j11146, align 4
  %cmp1154 = icmp slt i32 %727, 95
  %cond1156 = select i1 %cmp1154, i32 113, i32 177
  %add1157 = add nsw i32 %div1153, %cond1156
  store i32 %add1157, i32* %s11144, align 4
  %728 = load i32, i32* %j21147, align 4
  %729 = load i32, i32* %j21147, align 4
  %cmp1158 = icmp sge i32 %729, 96
  %cond1160 = select i1 %cmp1158, i32 32, i32 31
  %add1161 = add nsw i32 %728, %cond1160
  store i32 %add1161, i32* %s21145, align 4
  br label %if.end.1169

if.else.1162:                                     ; preds = %do.body.1143
  %730 = load i32, i32* %j11146, align 4
  %div1163 = sdiv i32 %730, 2
  %731 = load i32, i32* %j11146, align 4
  %cmp1164 = icmp slt i32 %731, 95
  %cond1166 = select i1 %cmp1164, i32 112, i32 176
  %add1167 = add nsw i32 %div1163, %cond1166
  store i32 %add1167, i32* %s11144, align 4
  %732 = load i32, i32* %j21147, align 4
  %add1168 = add nsw i32 %732, 126
  store i32 %add1168, i32* %s21145, align 4
  br label %if.end.1169

if.end.1169:                                      ; preds = %if.else.1162, %if.then.1152
  %733 = load i32, i32* %s11144, align 4
  %shl1170 = shl i32 %733, 8
  %734 = load i32, i32* %s21145, align 4
  %or1171 = or i32 %shl1170, %734
  store i32 %or1171, i32* %i, align 4
  br label %do.end.1172

do.end.1172:                                      ; preds = %if.end.1169
  %735 = load i32, i32* %i, align 4
  %shr1173 = ashr i32 %735, 8
  %736 = load i32, i32* %field2, align 4
  %idxprom1174 = sext i32 %736 to i64
  %737 = load i32*, i32** %reg, align 8
  %arrayidx1175 = getelementptr inbounds i32, i32* %737, i64 %idxprom1174
  store i32 %shr1173, i32* %arrayidx1175, align 4
  %738 = load i32, i32* %i, align 4
  %and1176 = and i32 %738, 255
  %739 = load i32*, i32** %reg, align 8
  %arrayidx1177 = getelementptr inbounds i32, i32* %739, i64 7
  store i32 %and1176, i32* %arrayidx1177, align 4
  br label %sw.epilog.1182

sw.default.1178:                                  ; preds = %ccl_set_expr
  br label %do.body.1179

do.body.1179:                                     ; preds = %sw.default.1178
  %740 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1180 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %740, i32 0, i32 6
  store i32 3, i32* %status1180, align 4
  br label %ccl_error_handler

do.end.1181:                                      ; No predecessors!
  br label %sw.epilog.1182

sw.epilog.1182:                                   ; preds = %do.end.1181, %do.end.1172, %do.end.1134, %sw.bb.1101, %sw.bb.1096, %sw.bb.1091, %sw.bb.1086, %sw.bb.1081, %sw.bb.1076, %sw.bb.1070, %sw.bb.1064, %sw.bb.1059, %sw.bb.1055, %sw.bb.1051, %sw.bb.1047, %sw.bb.1043, %sw.bb.1039, %sw.bb.1035, %sw.bb.1031, %sw.bb.1027, %sw.bb.1023, %sw.bb.1019
  %741 = load i32, i32* %code, align 4
  %and1183 = and i32 %741, 31
  store i32 %and1183, i32* %code, align 4
  %742 = load i32, i32* %code, align 4
  %cmp1184 = icmp eq i32 %742, 15
  br i1 %cmp1184, label %if.then.1189, label %lor.lhs.false.1186

lor.lhs.false.1186:                               ; preds = %sw.epilog.1182
  %743 = load i32, i32* %code, align 4
  %cmp1187 = icmp eq i32 %743, 18
  br i1 %cmp1187, label %if.then.1189, label %if.else.1211

if.then.1189:                                     ; preds = %lor.lhs.false.1186, %sw.epilog.1182
  %744 = load i32, i32* %field2, align 4
  %idxprom1190 = sext i32 %744 to i64
  %745 = load i32*, i32** %reg, align 8
  %arrayidx1191 = getelementptr inbounds i32, i32* %745, i64 %idxprom1190
  %746 = load i32, i32* %arrayidx1191, align 4
  store i32 %746, i32* %i, align 4
  br label %do.body.1192

do.body.1192:                                     ; preds = %if.then.1189
  %747 = load i32*, i32** %dst, align 8
  %tobool1193 = icmp ne i32* %747, null
  br i1 %tobool1193, label %if.else.1198, label %if.then.1194

if.then.1194:                                     ; preds = %do.body.1192
  br label %do.body.1195

do.body.1195:                                     ; preds = %if.then.1194
  %748 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1196 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %748, i32 0, i32 6
  store i32 3, i32* %status1196, align 4
  br label %ccl_error_handler

do.end.1197:                                      ; No predecessors!
  br label %if.end.1209

if.else.1198:                                     ; preds = %do.body.1192
  %749 = load i32*, i32** %dst, align 8
  %750 = load i32*, i32** %dst_end, align 8
  %cmp1199 = icmp ult i32* %749, %750
  br i1 %cmp1199, label %if.then.1201, label %if.else.1203

if.then.1201:                                     ; preds = %if.else.1198
  %751 = load i32, i32* %i, align 4
  %752 = load i32*, i32** %dst, align 8
  %incdec.ptr1202 = getelementptr inbounds i32, i32* %752, i32 1
  store i32* %incdec.ptr1202, i32** %dst, align 8
  store i32 %751, i32* %752, align 4
  br label %if.end.1208

if.else.1203:                                     ; preds = %if.else.1198
  br label %do.body.1204

do.body.1204:                                     ; preds = %if.else.1203
  %753 = load i32, i32* %ic, align 4
  %dec1205 = add nsw i32 %753, -1
  store i32 %dec1205, i32* %ic, align 4
  %754 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1206 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %754, i32 0, i32 6
  store i32 2, i32* %status1206, align 4
  br label %ccl_finish

do.end.1207:                                      ; No predecessors!
  br label %if.end.1208

if.end.1208:                                      ; preds = %do.end.1207, %if.then.1201
  br label %if.end.1209

if.end.1209:                                      ; preds = %if.end.1208, %do.end.1197
  br label %do.end.1210

do.end.1210:                                      ; preds = %if.end.1209
  %755 = load i32, i32* %jump_address, align 4
  store i32 %755, i32* %ic, align 4
  br label %if.end.1217

if.else.1211:                                     ; preds = %lor.lhs.false.1186
  %756 = load i32, i32* %field2, align 4
  %idxprom1212 = sext i32 %756 to i64
  %757 = load i32*, i32** %reg, align 8
  %arrayidx1213 = getelementptr inbounds i32, i32* %757, i64 %idxprom1212
  %758 = load i32, i32* %arrayidx1213, align 4
  %tobool1214 = icmp ne i32 %758, 0
  br i1 %tobool1214, label %if.end.1216, label %if.then.1215

if.then.1215:                                     ; preds = %if.else.1211
  %759 = load i32, i32* %jump_address, align 4
  store i32 %759, i32* %ic, align 4
  br label %if.end.1216

if.end.1216:                                      ; preds = %if.then.1215, %if.else.1211
  br label %if.end.1217

if.end.1217:                                      ; preds = %if.end.1216, %do.end.1210
  br label %sw.epilog.2987

sw.bb.1218:                                       ; preds = %do.end.25
  %760 = load i32, i32* %field1, align 4
  %shr1219 = ashr i32 %760, 6
  switch i32 %shr1219, label %sw.default.2976 [
    i32 0, label %sw.bb.1220
    i32 1, label %sw.bb.1274
    i32 2, label %sw.bb.1433
    i32 3, label %sw.bb.1608
    i32 19, label %sw.bb.1805
    i32 20, label %sw.bb.1876
    i32 16, label %sw.bb.2088
    i32 17, label %sw.bb.2351
    i32 18, label %sw.bb.2769
  ]

sw.bb.1220:                                       ; preds = %sw.bb.1218
  %761 = load i32*, i32** %src, align 8
  %tobool1221 = icmp ne i32* %761, null
  br i1 %tobool1221, label %if.end.1226, label %if.then.1222

if.then.1222:                                     ; preds = %sw.bb.1220
  br label %do.body.1223

do.body.1223:                                     ; preds = %if.then.1222
  %762 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1224 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %762, i32 0, i32 6
  store i32 3, i32* %status1224, align 4
  br label %ccl_error_handler

do.end.1225:                                      ; No predecessors!
  br label %if.end.1226

if.end.1226:                                      ; preds = %do.end.1225, %sw.bb.1220
  br label %do.body.1227

do.body.1227:                                     ; preds = %if.end.1226
  %763 = load i32*, i32** %src, align 8
  %tobool1228 = icmp ne i32* %763, null
  br i1 %tobool1228, label %if.else.1233, label %if.then.1229

if.then.1229:                                     ; preds = %do.body.1227
  br label %do.body.1230

do.body.1230:                                     ; preds = %if.then.1229
  %764 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1231 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %764, i32 0, i32 6
  store i32 3, i32* %status1231, align 4
  br label %ccl_error_handler

do.end.1232:                                      ; No predecessors!
  br label %if.end.1252

if.else.1233:                                     ; preds = %do.body.1227
  %765 = load i32*, i32** %src, align 8
  %766 = load i32*, i32** %src_end, align 8
  %cmp1234 = icmp ult i32* %765, %766
  br i1 %cmp1234, label %if.then.1236, label %if.else.1238

if.then.1236:                                     ; preds = %if.else.1233
  %767 = load i32*, i32** %src, align 8
  %incdec.ptr1237 = getelementptr inbounds i32, i32* %767, i32 1
  store i32* %incdec.ptr1237, i32** %src, align 8
  %768 = load i32, i32* %767, align 4
  store i32 %768, i32* %i, align 4
  br label %if.end.1251

if.else.1238:                                     ; preds = %if.else.1233
  %769 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block1239 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %769, i32 0, i32 11
  %bf.load1240 = load i8, i8* %last_block1239, align 4
  %bf.clear1241 = and i8 %bf.load1240, 1
  %bf.cast1242 = trunc i8 %bf.clear1241 to i1
  br i1 %bf.cast1242, label %if.then.1243, label %if.else.1245

if.then.1243:                                     ; preds = %if.else.1238
  store i32 -1, i32* %i, align 4
  %770 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic1244 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %770, i32 0, i32 4
  %771 = load i32, i32* %eof_ic1244, align 4
  store i32 %771, i32* %ic, align 4
  br label %ccl_repeat

if.else.1245:                                     ; preds = %if.else.1238
  br label %do.body.1246

do.body.1246:                                     ; preds = %if.else.1245
  %772 = load i32, i32* %ic, align 4
  %dec1247 = add nsw i32 %772, -1
  store i32 %dec1247, i32* %ic, align 4
  %773 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1248 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %773, i32 0, i32 6
  store i32 1, i32* %status1248, align 4
  br label %ccl_finish

do.end.1249:                                      ; No predecessors!
  br label %if.end.1250

if.end.1250:                                      ; preds = %do.end.1249
  br label %if.end.1251

if.end.1251:                                      ; preds = %if.end.1250, %if.then.1236
  br label %if.end.1252

if.end.1252:                                      ; preds = %if.end.1251, %do.end.1232
  br label %do.end.1253

do.end.1253:                                      ; preds = %if.end.1252
  br label %do.body.1254

do.body.1254:                                     ; preds = %do.end.1253
  %774 = load i32, i32* %i, align 4
  %775 = load i64, i64* %charset_list.addr, align 8
  %call1255 = call %struct.charset* @char_charset(i32 %774, i64 %775, i32* %ncode)
  store %struct.charset* %call1255, %struct.charset** %charset, align 8
  %776 = load %struct.charset*, %struct.charset** %charset, align 8
  %tobool1256 = icmp ne %struct.charset* %776, null
  br i1 %tobool1256, label %if.end.1264, label %land.lhs.true.1257

land.lhs.true.1257:                               ; preds = %do.body.1254
  %777 = load i64, i64* %charset_list.addr, align 8
  %call1258 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1259 = icmp eq i64 %777, %call1258
  br i1 %cmp1259, label %if.end.1264, label %if.then.1261

if.then.1261:                                     ; preds = %land.lhs.true.1257
  %778 = load i32, i32* %i, align 4
  %call1262 = call i64 @builtin_lisp_symbol(i32 0)
  %call1263 = call %struct.charset* @char_charset(i32 %778, i64 %call1262, i32* %ncode)
  store %struct.charset* %call1263, %struct.charset** %charset, align 8
  br label %if.end.1264

if.end.1264:                                      ; preds = %if.then.1261, %land.lhs.true.1257, %do.body.1254
  %779 = load %struct.charset*, %struct.charset** %charset, align 8
  %tobool1265 = icmp ne %struct.charset* %779, null
  br i1 %tobool1265, label %if.then.1266, label %if.end.1272

if.then.1266:                                     ; preds = %if.end.1264
  %780 = load %struct.charset*, %struct.charset** %charset, align 8
  %id = getelementptr inbounds %struct.charset, %struct.charset* %780, i32 0, i32 0
  %781 = load i32, i32* %id, align 4
  %782 = load i32, i32* %field1, align 4
  %and1267 = and i32 %782, 7
  %idxprom1268 = sext i32 %and1267 to i64
  %783 = load i32*, i32** %reg, align 8
  %arrayidx1269 = getelementptr inbounds i32, i32* %783, i64 %idxprom1268
  store i32 %781, i32* %arrayidx1269, align 4
  %784 = load i32, i32* %ncode, align 4
  %785 = load i32, i32* %field2, align 4
  %idxprom1270 = sext i32 %785 to i64
  %786 = load i32*, i32** %reg, align 8
  %arrayidx1271 = getelementptr inbounds i32, i32* %786, i64 %idxprom1270
  store i32 %784, i32* %arrayidx1271, align 4
  br label %if.end.1272

if.end.1272:                                      ; preds = %if.then.1266, %if.end.1264
  br label %do.end.1273

do.end.1273:                                      ; preds = %if.end.1272
  br label %sw.epilog.2981

sw.bb.1274:                                       ; preds = %sw.bb.1218
  %787 = load i32*, i32** %dst, align 8
  %tobool1275 = icmp ne i32* %787, null
  br i1 %tobool1275, label %if.end.1280, label %if.then.1276

if.then.1276:                                     ; preds = %sw.bb.1274
  br label %do.body.1277

do.body.1277:                                     ; preds = %if.then.1276
  %788 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1278 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %788, i32 0, i32 6
  store i32 3, i32* %status1278, align 4
  br label %ccl_error_handler

do.end.1279:                                      ; No predecessors!
  br label %if.end.1280

if.end.1280:                                      ; preds = %do.end.1279, %sw.bb.1274
  %789 = load i32, i32* %field1, align 4
  %and1281 = and i32 %789, 7
  %idxprom1282 = sext i32 %and1281 to i64
  %790 = load i32*, i32** %reg, align 8
  %arrayidx1283 = getelementptr inbounds i32, i32* %790, i64 %idxprom1282
  %791 = load i32, i32* %arrayidx1283, align 4
  %cmp1284 = icmp eq i32 %791, 0
  br i1 %cmp1284, label %cond.true.1286, label %cond.false.1290

cond.true.1286:                                   ; preds = %if.end.1280
  %792 = load i32, i32* %field2, align 4
  %idxprom1287 = sext i32 %792 to i64
  %793 = load i32*, i32** %reg, align 8
  %arrayidx1288 = getelementptr inbounds i32, i32* %793, i64 %idxprom1287
  %794 = load i32, i32* %arrayidx1288, align 4
  %conv1289 = sext i32 %794 to i64
  br label %cond.end.1411

cond.false.1290:                                  ; preds = %if.end.1280
  %795 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %796 = load i32, i32* %field1, align 4
  %and1291 = and i32 %796, 7
  %idxprom1292 = sext i32 %and1291 to i64
  %797 = load i32*, i32** %reg, align 8
  %arrayidx1293 = getelementptr inbounds i32, i32* %797, i64 %idxprom1292
  %798 = load i32, i32* %arrayidx1293, align 4
  %idx.ext1294 = sext i32 %798 to i64
  %add.ptr1295 = getelementptr inbounds %struct.charset, %struct.charset* %795, i64 %idx.ext1294
  store %struct.charset* %add.ptr1295, %struct.charset** %charset, align 8
  br i1 true, label %cond.true.1296, label %cond.false.1302

cond.true.1296:                                   ; preds = %cond.false.1290
  %799 = load i32, i32* %field2, align 4
  %idxprom1297 = sext i32 %799 to i64
  %800 = load i32*, i32** %reg, align 8
  %arrayidx1298 = getelementptr inbounds i32, i32* %800, i64 %idxprom1297
  %801 = load i32, i32* %arrayidx1298, align 4
  %add1299 = add i32 %801, 0
  %cmp1300 = icmp ult i32 %add1299, 128
  br i1 %cmp1300, label %land.lhs.true.1309, label %cond.false.1318

cond.false.1302:                                  ; preds = %cond.false.1290
  %802 = load i32, i32* %field2, align 4
  %idxprom1303 = sext i32 %802 to i64
  %803 = load i32*, i32** %reg, align 8
  %arrayidx1304 = getelementptr inbounds i32, i32* %803, i64 %idxprom1303
  %804 = load i32, i32* %arrayidx1304, align 4
  %conv1305 = sext i32 %804 to i64
  %add1306 = add i64 %conv1305, 0
  %cmp1307 = icmp ult i64 %add1306, 128
  br i1 %cmp1307, label %land.lhs.true.1309, label %cond.false.1318

land.lhs.true.1309:                               ; preds = %cond.false.1302, %cond.true.1296
  %805 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %805, i32 0, i32 5
  %bf.load1310 = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load1310, 2
  %bf.clear1311 = and i8 %bf.lshr, 1
  %bf.cast1312 = trunc i8 %bf.clear1311 to i1
  br i1 %bf.cast1312, label %cond.true.1314, label %cond.false.1318

cond.true.1314:                                   ; preds = %land.lhs.true.1309
  %806 = load i32, i32* %field2, align 4
  %idxprom1315 = sext i32 %806 to i64
  %807 = load i32*, i32** %reg, align 8
  %arrayidx1316 = getelementptr inbounds i32, i32* %807, i64 %idxprom1315
  %808 = load i32, i32* %arrayidx1316, align 4
  %conv1317 = sext i32 %808 to i64
  br label %cond.end.1409

cond.false.1318:                                  ; preds = %land.lhs.true.1309, %cond.false.1302, %cond.true.1296
  %809 = load i32, i32* %field2, align 4
  %idxprom1319 = sext i32 %809 to i64
  %810 = load i32*, i32** %reg, align 8
  %arrayidx1320 = getelementptr inbounds i32, i32* %810, i64 %idxprom1319
  %811 = load i32, i32* %arrayidx1320, align 4
  %812 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %812, i32 0, i32 10
  %813 = load i32, i32* %min_code, align 4
  %cmp1321 = icmp ult i32 %811, %813
  br i1 %cmp1321, label %cond.true.1328, label %lor.lhs.false.1323

lor.lhs.false.1323:                               ; preds = %cond.false.1318
  %814 = load i32, i32* %field2, align 4
  %idxprom1324 = sext i32 %814 to i64
  %815 = load i32*, i32** %reg, align 8
  %arrayidx1325 = getelementptr inbounds i32, i32* %815, i64 %idxprom1324
  %816 = load i32, i32* %arrayidx1325, align 4
  %817 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_code = getelementptr inbounds %struct.charset, %struct.charset* %817, i32 0, i32 11
  %818 = load i32, i32* %max_code, align 4
  %cmp1326 = icmp ugt i32 %816, %818
  br i1 %cmp1326, label %cond.true.1328, label %cond.false.1329

cond.true.1328:                                   ; preds = %lor.lhs.false.1323, %cond.false.1318
  br label %cond.end.1407

cond.false.1329:                                  ; preds = %lor.lhs.false.1323
  %819 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %819, i32 0, i32 5
  %bf.load1330 = load i8, i8* %unified_p, align 8
  %bf.lshr1331 = lshr i8 %bf.load1330, 5
  %bf.clear1332 = and i8 %bf.lshr1331, 1
  %bf.cast1333 = trunc i8 %bf.clear1332 to i1
  br i1 %bf.cast1333, label %cond.true.1335, label %cond.false.1340

cond.true.1335:                                   ; preds = %cond.false.1329
  %820 = load %struct.charset*, %struct.charset** %charset, align 8
  %821 = load i32, i32* %field2, align 4
  %idxprom1336 = sext i32 %821 to i64
  %822 = load i32*, i32** %reg, align 8
  %arrayidx1337 = getelementptr inbounds i32, i32* %822, i64 %idxprom1336
  %823 = load i32, i32* %arrayidx1337, align 4
  %call1338 = call i32 @decode_char(%struct.charset* %820, i32 %823)
  %conv1339 = sext i32 %call1338 to i64
  br label %cond.end.1405

cond.false.1340:                                  ; preds = %cond.false.1329
  %824 = load %struct.charset*, %struct.charset** %charset, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %824, i32 0, i32 9
  %825 = load i32, i32* %method, align 4
  %cmp1341 = icmp eq i32 %825, 0
  br i1 %cmp1341, label %cond.true.1343, label %cond.false.1361

cond.true.1343:                                   ; preds = %cond.false.1340
  %826 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %826, i32 0, i32 5
  %bf.load1344 = load i8, i8* %code_linear_p, align 8
  %bf.clear1345 = and i8 %bf.load1344, 1
  %bf.cast1346 = trunc i8 %bf.clear1345 to i1
  br i1 %bf.cast1346, label %cond.true.1348, label %cond.false.1354

cond.true.1348:                                   ; preds = %cond.true.1343
  %827 = load i32, i32* %field2, align 4
  %idxprom1349 = sext i32 %827 to i64
  %828 = load i32*, i32** %reg, align 8
  %arrayidx1350 = getelementptr inbounds i32, i32* %828, i64 %idxprom1349
  %829 = load i32, i32* %arrayidx1350, align 4
  %830 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1351 = getelementptr inbounds %struct.charset, %struct.charset* %830, i32 0, i32 10
  %831 = load i32, i32* %min_code1351, align 4
  %sub1352 = sub i32 %829, %831
  %832 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %832, i32 0, i32 17
  %833 = load i32, i32* %code_offset, align 4
  %add1353 = add nsw i32 %sub1352, %833
  br label %cond.end.1358

cond.false.1354:                                  ; preds = %cond.true.1343
  %834 = load %struct.charset*, %struct.charset** %charset, align 8
  %835 = load i32, i32* %field2, align 4
  %idxprom1355 = sext i32 %835 to i64
  %836 = load i32*, i32** %reg, align 8
  %arrayidx1356 = getelementptr inbounds i32, i32* %836, i64 %idxprom1355
  %837 = load i32, i32* %arrayidx1356, align 4
  %call1357 = call i32 @decode_char(%struct.charset* %834, i32 %837)
  br label %cond.end.1358

cond.end.1358:                                    ; preds = %cond.false.1354, %cond.true.1348
  %cond1359 = phi i32 [ %add1353, %cond.true.1348 ], [ %call1357, %cond.false.1354 ]
  %conv1360 = sext i32 %cond1359 to i64
  br label %cond.end.1403

cond.false.1361:                                  ; preds = %cond.false.1340
  %838 = load %struct.charset*, %struct.charset** %charset, align 8
  %method1362 = getelementptr inbounds %struct.charset, %struct.charset* %838, i32 0, i32 9
  %839 = load i32, i32* %method1362, align 4
  %cmp1363 = icmp eq i32 %839, 1
  br i1 %cmp1363, label %cond.true.1365, label %cond.false.1396

cond.true.1365:                                   ; preds = %cond.false.1361
  %840 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p1366 = getelementptr inbounds %struct.charset, %struct.charset* %840, i32 0, i32 5
  %bf.load1367 = load i8, i8* %code_linear_p1366, align 8
  %bf.clear1368 = and i8 %bf.load1367, 1
  %bf.cast1369 = trunc i8 %bf.clear1368 to i1
  br i1 %bf.cast1369, label %land.lhs.true.1371, label %cond.false.1389

land.lhs.true.1371:                               ; preds = %cond.true.1365
  %841 = load i64, i64* @Vcharset_hash_table, align 8
  %call1372 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %841)
  %842 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %842, i32 0, i32 1
  %843 = load i64, i64* %hash_index, align 8
  %call1373 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call1372, i64 %843)
  %call1374 = call i64 @AREF(i64 %call1373, i64 4)
  %call1375 = call zeroext i1 @VECTORP(i64 %call1374)
  br i1 %call1375, label %cond.true.1377, label %cond.false.1389

cond.true.1377:                                   ; preds = %land.lhs.true.1371
  %844 = load i64, i64* @Vcharset_hash_table, align 8
  %call1378 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %844)
  %845 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index1379 = getelementptr inbounds %struct.charset, %struct.charset* %845, i32 0, i32 1
  %846 = load i64, i64* %hash_index1379, align 8
  %call1380 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call1378, i64 %846)
  %call1381 = call i64 @AREF(i64 %call1380, i64 4)
  %847 = load i32, i32* %field2, align 4
  %idxprom1382 = sext i32 %847 to i64
  %848 = load i32*, i32** %reg, align 8
  %arrayidx1383 = getelementptr inbounds i32, i32* %848, i64 %idxprom1382
  %849 = load i32, i32* %arrayidx1383, align 4
  %850 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1384 = getelementptr inbounds %struct.charset, %struct.charset* %850, i32 0, i32 10
  %851 = load i32, i32* %min_code1384, align 4
  %sub1385 = sub i32 %849, %851
  %conv1386 = zext i32 %sub1385 to i64
  %call1387 = call i64 @AREF(i64 %call1381, i64 %conv1386)
  %shr1388 = ashr i64 %call1387, 2
  br label %cond.end.1394

cond.false.1389:                                  ; preds = %land.lhs.true.1371, %cond.true.1365
  %852 = load %struct.charset*, %struct.charset** %charset, align 8
  %853 = load i32, i32* %field2, align 4
  %idxprom1390 = sext i32 %853 to i64
  %854 = load i32*, i32** %reg, align 8
  %arrayidx1391 = getelementptr inbounds i32, i32* %854, i64 %idxprom1390
  %855 = load i32, i32* %arrayidx1391, align 4
  %call1392 = call i32 @decode_char(%struct.charset* %852, i32 %855)
  %conv1393 = sext i32 %call1392 to i64
  br label %cond.end.1394

cond.end.1394:                                    ; preds = %cond.false.1389, %cond.true.1377
  %cond1395 = phi i64 [ %shr1388, %cond.true.1377 ], [ %conv1393, %cond.false.1389 ]
  br label %cond.end.1401

cond.false.1396:                                  ; preds = %cond.false.1361
  %856 = load %struct.charset*, %struct.charset** %charset, align 8
  %857 = load i32, i32* %field2, align 4
  %idxprom1397 = sext i32 %857 to i64
  %858 = load i32*, i32** %reg, align 8
  %arrayidx1398 = getelementptr inbounds i32, i32* %858, i64 %idxprom1397
  %859 = load i32, i32* %arrayidx1398, align 4
  %call1399 = call i32 @decode_char(%struct.charset* %856, i32 %859)
  %conv1400 = sext i32 %call1399 to i64
  br label %cond.end.1401

cond.end.1401:                                    ; preds = %cond.false.1396, %cond.end.1394
  %cond1402 = phi i64 [ %cond1395, %cond.end.1394 ], [ %conv1400, %cond.false.1396 ]
  br label %cond.end.1403

cond.end.1403:                                    ; preds = %cond.end.1401, %cond.end.1358
  %cond1404 = phi i64 [ %conv1360, %cond.end.1358 ], [ %cond1402, %cond.end.1401 ]
  br label %cond.end.1405

cond.end.1405:                                    ; preds = %cond.end.1403, %cond.true.1335
  %cond1406 = phi i64 [ %conv1339, %cond.true.1335 ], [ %cond1404, %cond.end.1403 ]
  br label %cond.end.1407

cond.end.1407:                                    ; preds = %cond.end.1405, %cond.true.1328
  %cond1408 = phi i64 [ -1, %cond.true.1328 ], [ %cond1406, %cond.end.1405 ]
  br label %cond.end.1409

cond.end.1409:                                    ; preds = %cond.end.1407, %cond.true.1314
  %cond1410 = phi i64 [ %conv1317, %cond.true.1314 ], [ %cond1408, %cond.end.1407 ]
  br label %cond.end.1411

cond.end.1411:                                    ; preds = %cond.end.1409, %cond.true.1286
  %cond1412 = phi i64 [ %conv1289, %cond.true.1286 ], [ %cond1410, %cond.end.1409 ]
  %conv1413 = trunc i64 %cond1412 to i32
  store i32 %conv1413, i32* %i, align 4
  br label %do.body.1414

do.body.1414:                                     ; preds = %cond.end.1411
  %860 = load i32*, i32** %dst, align 8
  %tobool1415 = icmp ne i32* %860, null
  br i1 %tobool1415, label %if.else.1420, label %if.then.1416

if.then.1416:                                     ; preds = %do.body.1414
  br label %do.body.1417

do.body.1417:                                     ; preds = %if.then.1416
  %861 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1418 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %861, i32 0, i32 6
  store i32 3, i32* %status1418, align 4
  br label %ccl_error_handler

do.end.1419:                                      ; No predecessors!
  br label %if.end.1431

if.else.1420:                                     ; preds = %do.body.1414
  %862 = load i32*, i32** %dst, align 8
  %863 = load i32*, i32** %dst_end, align 8
  %cmp1421 = icmp ult i32* %862, %863
  br i1 %cmp1421, label %if.then.1423, label %if.else.1425

if.then.1423:                                     ; preds = %if.else.1420
  %864 = load i32, i32* %i, align 4
  %865 = load i32*, i32** %dst, align 8
  %incdec.ptr1424 = getelementptr inbounds i32, i32* %865, i32 1
  store i32* %incdec.ptr1424, i32** %dst, align 8
  store i32 %864, i32* %865, align 4
  br label %if.end.1430

if.else.1425:                                     ; preds = %if.else.1420
  br label %do.body.1426

do.body.1426:                                     ; preds = %if.else.1425
  %866 = load i32, i32* %ic, align 4
  %dec1427 = add nsw i32 %866, -1
  store i32 %dec1427, i32* %ic, align 4
  %867 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1428 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %867, i32 0, i32 6
  store i32 2, i32* %status1428, align 4
  br label %ccl_finish

do.end.1429:                                      ; No predecessors!
  br label %if.end.1430

if.end.1430:                                      ; preds = %do.end.1429, %if.then.1423
  br label %if.end.1431

if.end.1431:                                      ; preds = %if.end.1430, %do.end.1419
  br label %do.end.1432

do.end.1432:                                      ; preds = %if.end.1431
  br label %sw.epilog.2981

sw.bb.1433:                                       ; preds = %sw.bb.1218
  %868 = load i32, i32* %field1, align 4
  %and1434 = and i32 %868, 7
  %idxprom1435 = sext i32 %and1434 to i64
  %869 = load i32*, i32** %reg, align 8
  %arrayidx1436 = getelementptr inbounds i32, i32* %869, i64 %idxprom1435
  %870 = load i32, i32* %arrayidx1436, align 4
  %cmp1437 = icmp eq i32 %870, 0
  br i1 %cmp1437, label %cond.true.1439, label %cond.false.1443

cond.true.1439:                                   ; preds = %sw.bb.1433
  %871 = load i32, i32* %field2, align 4
  %idxprom1440 = sext i32 %871 to i64
  %872 = load i32*, i32** %reg, align 8
  %arrayidx1441 = getelementptr inbounds i32, i32* %872, i64 %idxprom1440
  %873 = load i32, i32* %arrayidx1441, align 4
  %conv1442 = sext i32 %873 to i64
  br label %cond.end.1573

cond.false.1443:                                  ; preds = %sw.bb.1433
  %874 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %875 = load i32, i32* %field1, align 4
  %and1444 = and i32 %875, 7
  %idxprom1445 = sext i32 %and1444 to i64
  %876 = load i32*, i32** %reg, align 8
  %arrayidx1446 = getelementptr inbounds i32, i32* %876, i64 %idxprom1445
  %877 = load i32, i32* %arrayidx1446, align 4
  %idx.ext1447 = sext i32 %877 to i64
  %add.ptr1448 = getelementptr inbounds %struct.charset, %struct.charset* %874, i64 %idx.ext1447
  store %struct.charset* %add.ptr1448, %struct.charset** %charset, align 8
  br i1 true, label %cond.true.1449, label %cond.false.1455

cond.true.1449:                                   ; preds = %cond.false.1443
  %878 = load i32, i32* %field2, align 4
  %idxprom1450 = sext i32 %878 to i64
  %879 = load i32*, i32** %reg, align 8
  %arrayidx1451 = getelementptr inbounds i32, i32* %879, i64 %idxprom1450
  %880 = load i32, i32* %arrayidx1451, align 4
  %add1452 = add i32 %880, 0
  %cmp1453 = icmp ult i32 %add1452, 128
  br i1 %cmp1453, label %land.lhs.true.1462, label %cond.false.1473

cond.false.1455:                                  ; preds = %cond.false.1443
  %881 = load i32, i32* %field2, align 4
  %idxprom1456 = sext i32 %881 to i64
  %882 = load i32*, i32** %reg, align 8
  %arrayidx1457 = getelementptr inbounds i32, i32* %882, i64 %idxprom1456
  %883 = load i32, i32* %arrayidx1457, align 4
  %conv1458 = sext i32 %883 to i64
  %add1459 = add i64 %conv1458, 0
  %cmp1460 = icmp ult i64 %add1459, 128
  br i1 %cmp1460, label %land.lhs.true.1462, label %cond.false.1473

land.lhs.true.1462:                               ; preds = %cond.false.1455, %cond.true.1449
  %884 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p1463 = getelementptr inbounds %struct.charset, %struct.charset* %884, i32 0, i32 5
  %bf.load1464 = load i8, i8* %ascii_compatible_p1463, align 8
  %bf.lshr1465 = lshr i8 %bf.load1464, 2
  %bf.clear1466 = and i8 %bf.lshr1465, 1
  %bf.cast1467 = trunc i8 %bf.clear1466 to i1
  br i1 %bf.cast1467, label %cond.true.1469, label %cond.false.1473

cond.true.1469:                                   ; preds = %land.lhs.true.1462
  %885 = load i32, i32* %field2, align 4
  %idxprom1470 = sext i32 %885 to i64
  %886 = load i32*, i32** %reg, align 8
  %arrayidx1471 = getelementptr inbounds i32, i32* %886, i64 %idxprom1470
  %887 = load i32, i32* %arrayidx1471, align 4
  %conv1472 = sext i32 %887 to i64
  br label %cond.end.1571

cond.false.1473:                                  ; preds = %land.lhs.true.1462, %cond.false.1455, %cond.true.1449
  %888 = load i32, i32* %field2, align 4
  %idxprom1474 = sext i32 %888 to i64
  %889 = load i32*, i32** %reg, align 8
  %arrayidx1475 = getelementptr inbounds i32, i32* %889, i64 %idxprom1474
  %890 = load i32, i32* %arrayidx1475, align 4
  %891 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1476 = getelementptr inbounds %struct.charset, %struct.charset* %891, i32 0, i32 10
  %892 = load i32, i32* %min_code1476, align 4
  %cmp1477 = icmp ult i32 %890, %892
  br i1 %cmp1477, label %cond.true.1485, label %lor.lhs.false.1479

lor.lhs.false.1479:                               ; preds = %cond.false.1473
  %893 = load i32, i32* %field2, align 4
  %idxprom1480 = sext i32 %893 to i64
  %894 = load i32*, i32** %reg, align 8
  %arrayidx1481 = getelementptr inbounds i32, i32* %894, i64 %idxprom1480
  %895 = load i32, i32* %arrayidx1481, align 4
  %896 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_code1482 = getelementptr inbounds %struct.charset, %struct.charset* %896, i32 0, i32 11
  %897 = load i32, i32* %max_code1482, align 4
  %cmp1483 = icmp ugt i32 %895, %897
  br i1 %cmp1483, label %cond.true.1485, label %cond.false.1486

cond.true.1485:                                   ; preds = %lor.lhs.false.1479, %cond.false.1473
  br label %cond.end.1569

cond.false.1486:                                  ; preds = %lor.lhs.false.1479
  %898 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p1487 = getelementptr inbounds %struct.charset, %struct.charset* %898, i32 0, i32 5
  %bf.load1488 = load i8, i8* %unified_p1487, align 8
  %bf.lshr1489 = lshr i8 %bf.load1488, 5
  %bf.clear1490 = and i8 %bf.lshr1489, 1
  %bf.cast1491 = trunc i8 %bf.clear1490 to i1
  br i1 %bf.cast1491, label %cond.true.1493, label %cond.false.1498

cond.true.1493:                                   ; preds = %cond.false.1486
  %899 = load %struct.charset*, %struct.charset** %charset, align 8
  %900 = load i32, i32* %field2, align 4
  %idxprom1494 = sext i32 %900 to i64
  %901 = load i32*, i32** %reg, align 8
  %arrayidx1495 = getelementptr inbounds i32, i32* %901, i64 %idxprom1494
  %902 = load i32, i32* %arrayidx1495, align 4
  %call1496 = call i32 @decode_char(%struct.charset* %899, i32 %902)
  %conv1497 = sext i32 %call1496 to i64
  br label %cond.end.1567

cond.false.1498:                                  ; preds = %cond.false.1486
  %903 = load %struct.charset*, %struct.charset** %charset, align 8
  %method1499 = getelementptr inbounds %struct.charset, %struct.charset* %903, i32 0, i32 9
  %904 = load i32, i32* %method1499, align 4
  %cmp1500 = icmp eq i32 %904, 0
  br i1 %cmp1500, label %cond.true.1502, label %cond.false.1522

cond.true.1502:                                   ; preds = %cond.false.1498
  %905 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p1503 = getelementptr inbounds %struct.charset, %struct.charset* %905, i32 0, i32 5
  %bf.load1504 = load i8, i8* %code_linear_p1503, align 8
  %bf.clear1505 = and i8 %bf.load1504, 1
  %bf.cast1506 = trunc i8 %bf.clear1505 to i1
  br i1 %bf.cast1506, label %cond.true.1508, label %cond.false.1515

cond.true.1508:                                   ; preds = %cond.true.1502
  %906 = load i32, i32* %field2, align 4
  %idxprom1509 = sext i32 %906 to i64
  %907 = load i32*, i32** %reg, align 8
  %arrayidx1510 = getelementptr inbounds i32, i32* %907, i64 %idxprom1509
  %908 = load i32, i32* %arrayidx1510, align 4
  %909 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1511 = getelementptr inbounds %struct.charset, %struct.charset* %909, i32 0, i32 10
  %910 = load i32, i32* %min_code1511, align 4
  %sub1512 = sub i32 %908, %910
  %911 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset1513 = getelementptr inbounds %struct.charset, %struct.charset* %911, i32 0, i32 17
  %912 = load i32, i32* %code_offset1513, align 4
  %add1514 = add nsw i32 %sub1512, %912
  br label %cond.end.1519

cond.false.1515:                                  ; preds = %cond.true.1502
  %913 = load %struct.charset*, %struct.charset** %charset, align 8
  %914 = load i32, i32* %field2, align 4
  %idxprom1516 = sext i32 %914 to i64
  %915 = load i32*, i32** %reg, align 8
  %arrayidx1517 = getelementptr inbounds i32, i32* %915, i64 %idxprom1516
  %916 = load i32, i32* %arrayidx1517, align 4
  %call1518 = call i32 @decode_char(%struct.charset* %913, i32 %916)
  br label %cond.end.1519

cond.end.1519:                                    ; preds = %cond.false.1515, %cond.true.1508
  %cond1520 = phi i32 [ %add1514, %cond.true.1508 ], [ %call1518, %cond.false.1515 ]
  %conv1521 = sext i32 %cond1520 to i64
  br label %cond.end.1565

cond.false.1522:                                  ; preds = %cond.false.1498
  %917 = load %struct.charset*, %struct.charset** %charset, align 8
  %method1523 = getelementptr inbounds %struct.charset, %struct.charset* %917, i32 0, i32 9
  %918 = load i32, i32* %method1523, align 4
  %cmp1524 = icmp eq i32 %918, 1
  br i1 %cmp1524, label %cond.true.1526, label %cond.false.1558

cond.true.1526:                                   ; preds = %cond.false.1522
  %919 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p1527 = getelementptr inbounds %struct.charset, %struct.charset* %919, i32 0, i32 5
  %bf.load1528 = load i8, i8* %code_linear_p1527, align 8
  %bf.clear1529 = and i8 %bf.load1528, 1
  %bf.cast1530 = trunc i8 %bf.clear1529 to i1
  br i1 %bf.cast1530, label %land.lhs.true.1532, label %cond.false.1551

land.lhs.true.1532:                               ; preds = %cond.true.1526
  %920 = load i64, i64* @Vcharset_hash_table, align 8
  %call1533 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %920)
  %921 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index1534 = getelementptr inbounds %struct.charset, %struct.charset* %921, i32 0, i32 1
  %922 = load i64, i64* %hash_index1534, align 8
  %call1535 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call1533, i64 %922)
  %call1536 = call i64 @AREF(i64 %call1535, i64 4)
  %call1537 = call zeroext i1 @VECTORP(i64 %call1536)
  br i1 %call1537, label %cond.true.1539, label %cond.false.1551

cond.true.1539:                                   ; preds = %land.lhs.true.1532
  %923 = load i64, i64* @Vcharset_hash_table, align 8
  %call1540 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %923)
  %924 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index1541 = getelementptr inbounds %struct.charset, %struct.charset* %924, i32 0, i32 1
  %925 = load i64, i64* %hash_index1541, align 8
  %call1542 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call1540, i64 %925)
  %call1543 = call i64 @AREF(i64 %call1542, i64 4)
  %926 = load i32, i32* %field2, align 4
  %idxprom1544 = sext i32 %926 to i64
  %927 = load i32*, i32** %reg, align 8
  %arrayidx1545 = getelementptr inbounds i32, i32* %927, i64 %idxprom1544
  %928 = load i32, i32* %arrayidx1545, align 4
  %929 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1546 = getelementptr inbounds %struct.charset, %struct.charset* %929, i32 0, i32 10
  %930 = load i32, i32* %min_code1546, align 4
  %sub1547 = sub i32 %928, %930
  %conv1548 = zext i32 %sub1547 to i64
  %call1549 = call i64 @AREF(i64 %call1543, i64 %conv1548)
  %shr1550 = ashr i64 %call1549, 2
  br label %cond.end.1556

cond.false.1551:                                  ; preds = %land.lhs.true.1532, %cond.true.1526
  %931 = load %struct.charset*, %struct.charset** %charset, align 8
  %932 = load i32, i32* %field2, align 4
  %idxprom1552 = sext i32 %932 to i64
  %933 = load i32*, i32** %reg, align 8
  %arrayidx1553 = getelementptr inbounds i32, i32* %933, i64 %idxprom1552
  %934 = load i32, i32* %arrayidx1553, align 4
  %call1554 = call i32 @decode_char(%struct.charset* %931, i32 %934)
  %conv1555 = sext i32 %call1554 to i64
  br label %cond.end.1556

cond.end.1556:                                    ; preds = %cond.false.1551, %cond.true.1539
  %cond1557 = phi i64 [ %shr1550, %cond.true.1539 ], [ %conv1555, %cond.false.1551 ]
  br label %cond.end.1563

cond.false.1558:                                  ; preds = %cond.false.1522
  %935 = load %struct.charset*, %struct.charset** %charset, align 8
  %936 = load i32, i32* %field2, align 4
  %idxprom1559 = sext i32 %936 to i64
  %937 = load i32*, i32** %reg, align 8
  %arrayidx1560 = getelementptr inbounds i32, i32* %937, i64 %idxprom1559
  %938 = load i32, i32* %arrayidx1560, align 4
  %call1561 = call i32 @decode_char(%struct.charset* %935, i32 %938)
  %conv1562 = sext i32 %call1561 to i64
  br label %cond.end.1563

cond.end.1563:                                    ; preds = %cond.false.1558, %cond.end.1556
  %cond1564 = phi i64 [ %cond1557, %cond.end.1556 ], [ %conv1562, %cond.false.1558 ]
  br label %cond.end.1565

cond.end.1565:                                    ; preds = %cond.end.1563, %cond.end.1519
  %cond1566 = phi i64 [ %conv1521, %cond.end.1519 ], [ %cond1564, %cond.end.1563 ]
  br label %cond.end.1567

cond.end.1567:                                    ; preds = %cond.end.1565, %cond.true.1493
  %cond1568 = phi i64 [ %conv1497, %cond.true.1493 ], [ %cond1566, %cond.end.1565 ]
  br label %cond.end.1569

cond.end.1569:                                    ; preds = %cond.end.1567, %cond.true.1485
  %cond1570 = phi i64 [ -1, %cond.true.1485 ], [ %cond1568, %cond.end.1567 ]
  br label %cond.end.1571

cond.end.1571:                                    ; preds = %cond.end.1569, %cond.true.1469
  %cond1572 = phi i64 [ %conv1472, %cond.true.1469 ], [ %cond1570, %cond.end.1569 ]
  br label %cond.end.1573

cond.end.1573:                                    ; preds = %cond.end.1571, %cond.true.1439
  %cond1574 = phi i64 [ %conv1442, %cond.true.1439 ], [ %cond1572, %cond.end.1571 ]
  %conv1575 = trunc i64 %cond1574 to i32
  store i32 %conv1575, i32* %i, align 4
  %939 = load i32, i32* %field1, align 4
  %shr1576 = ashr i32 %939, 3
  %and1577 = and i32 %shr1576, 7
  %idxprom1578 = sext i32 %and1577 to i64
  %940 = load i32*, i32** %reg, align 8
  %arrayidx1579 = getelementptr inbounds i32, i32* %940, i64 %idxprom1578
  %941 = load i32, i32* %arrayidx1579, align 4
  %idxprom1580 = sext i32 %941 to i64
  %942 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 308), align 8
  %call1581 = call %struct.Lisp_Vector* @XVECTOR(i64 %942)
  %contents1582 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call1581, i32 0, i32 1
  %arrayidx1583 = getelementptr inbounds [0 x i64], [0 x i64]* %contents1582, i32 0, i64 %idxprom1580
  %943 = load i64, i64* %arrayidx1583, align 8
  %sub1584 = sub nsw i64 %943, 3
  %944 = inttoptr i64 %sub1584 to i8*
  %945 = bitcast i8* %944 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %945, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %946 = load i64, i64* %cdr, align 8
  %947 = load i32, i32* %i, align 4
  %call1585 = call i32 @translate_char(i64 %946, i32 %947)
  store i32 %call1585, i32* %op, align 4
  br label %do.body.1586

do.body.1586:                                     ; preds = %cond.end.1573
  %948 = load i32, i32* %op, align 4
  %949 = load i64, i64* %charset_list.addr, align 8
  %call1588 = call %struct.charset* @char_charset(i32 %948, i64 %949, i32* %ncode1587)
  store %struct.charset* %call1588, %struct.charset** %charset, align 8
  %950 = load %struct.charset*, %struct.charset** %charset, align 8
  %tobool1589 = icmp ne %struct.charset* %950, null
  br i1 %tobool1589, label %if.end.1597, label %land.lhs.true.1590

land.lhs.true.1590:                               ; preds = %do.body.1586
  %951 = load i64, i64* %charset_list.addr, align 8
  %call1591 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1592 = icmp eq i64 %951, %call1591
  br i1 %cmp1592, label %if.end.1597, label %if.then.1594

if.then.1594:                                     ; preds = %land.lhs.true.1590
  %952 = load i32, i32* %op, align 4
  %call1595 = call i64 @builtin_lisp_symbol(i32 0)
  %call1596 = call %struct.charset* @char_charset(i32 %952, i64 %call1595, i32* %ncode1587)
  store %struct.charset* %call1596, %struct.charset** %charset, align 8
  br label %if.end.1597

if.end.1597:                                      ; preds = %if.then.1594, %land.lhs.true.1590, %do.body.1586
  %953 = load %struct.charset*, %struct.charset** %charset, align 8
  %tobool1598 = icmp ne %struct.charset* %953, null
  br i1 %tobool1598, label %if.then.1599, label %if.end.1606

if.then.1599:                                     ; preds = %if.end.1597
  %954 = load %struct.charset*, %struct.charset** %charset, align 8
  %id1600 = getelementptr inbounds %struct.charset, %struct.charset* %954, i32 0, i32 0
  %955 = load i32, i32* %id1600, align 4
  %956 = load i32, i32* %field1, align 4
  %and1601 = and i32 %956, 7
  %idxprom1602 = sext i32 %and1601 to i64
  %957 = load i32*, i32** %reg, align 8
  %arrayidx1603 = getelementptr inbounds i32, i32* %957, i64 %idxprom1602
  store i32 %955, i32* %arrayidx1603, align 4
  %958 = load i32, i32* %ncode1587, align 4
  %959 = load i32, i32* %field2, align 4
  %idxprom1604 = sext i32 %959 to i64
  %960 = load i32*, i32** %reg, align 8
  %arrayidx1605 = getelementptr inbounds i32, i32* %960, i64 %idxprom1604
  store i32 %958, i32* %arrayidx1605, align 4
  br label %if.end.1606

if.end.1606:                                      ; preds = %if.then.1599, %if.end.1597
  br label %do.end.1607

do.end.1607:                                      ; preds = %if.end.1606
  br label %sw.epilog.2981

sw.bb.1608:                                       ; preds = %sw.bb.1218
  br label %do.body.1609

do.body.1609:                                     ; preds = %sw.bb.1608
  %961 = load i32, i32* %ic, align 4
  %inc1611 = add nsw i32 %961, 1
  store i32 %inc1611, i32* %ic, align 4
  %idxprom1612 = sext i32 %961 to i64
  %962 = load i64*, i64** %ccl_prog, align 8
  %arrayidx1613 = getelementptr inbounds i64, i64* %962, i64 %idxprom1612
  %963 = load i64, i64* %arrayidx1613, align 8
  %shr1614 = ashr i64 %963, 2
  store i64 %shr1614, i64* %prog_word1610, align 8
  %964 = load i64, i64* %prog_word1610, align 8
  %cmp1615 = icmp sle i64 0, %964
  %conv1616 = zext i1 %cmp1615 to i32
  %965 = load i64, i64* %prog_word1610, align 8
  %966 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 308), align 8
  %call1617 = call zeroext i1 @VECTORP(i64 %966)
  br i1 %call1617, label %cond.true.1619, label %cond.false.1621

cond.true.1619:                                   ; preds = %do.body.1609
  %967 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 308), align 8
  %call1620 = call i64 @ASIZE(i64 %967)
  br label %cond.end.1622

cond.false.1621:                                  ; preds = %do.body.1609
  br label %cond.end.1622

cond.end.1622:                                    ; preds = %cond.false.1621, %cond.true.1619
  %cond1623 = phi i64 [ %call1620, %cond.true.1619 ], [ -1, %cond.false.1621 ]
  %cmp1624 = icmp sle i64 %965, %cond1623
  %conv1625 = zext i1 %cmp1624 to i32
  %and1626 = and i32 %conv1616, %conv1625
  %tobool1627 = icmp ne i32 %and1626, 0
  br i1 %tobool1627, label %if.end.1632, label %if.then.1628

if.then.1628:                                     ; preds = %cond.end.1622
  br label %do.body.1629

do.body.1629:                                     ; preds = %if.then.1628
  %968 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1630 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %968, i32 0, i32 6
  store i32 3, i32* %status1630, align 4
  br label %ccl_error_handler

do.end.1631:                                      ; No predecessors!
  br label %if.end.1632

if.end.1632:                                      ; preds = %do.end.1631, %cond.end.1622
  %969 = load i64, i64* %prog_word1610, align 8
  store i64 %969, i64* %eop, align 8
  br label %do.end.1633

do.end.1633:                                      ; preds = %if.end.1632
  %970 = load i32, i32* %field1, align 4
  %and1634 = and i32 %970, 7
  %idxprom1635 = sext i32 %and1634 to i64
  %971 = load i32*, i32** %reg, align 8
  %arrayidx1636 = getelementptr inbounds i32, i32* %971, i64 %idxprom1635
  %972 = load i32, i32* %arrayidx1636, align 4
  %cmp1637 = icmp eq i32 %972, 0
  br i1 %cmp1637, label %cond.true.1639, label %cond.false.1643

cond.true.1639:                                   ; preds = %do.end.1633
  %973 = load i32, i32* %field2, align 4
  %idxprom1640 = sext i32 %973 to i64
  %974 = load i32*, i32** %reg, align 8
  %arrayidx1641 = getelementptr inbounds i32, i32* %974, i64 %idxprom1640
  %975 = load i32, i32* %arrayidx1641, align 4
  %conv1642 = sext i32 %975 to i64
  br label %cond.end.1773

cond.false.1643:                                  ; preds = %do.end.1633
  %976 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %977 = load i32, i32* %field1, align 4
  %and1644 = and i32 %977, 7
  %idxprom1645 = sext i32 %and1644 to i64
  %978 = load i32*, i32** %reg, align 8
  %arrayidx1646 = getelementptr inbounds i32, i32* %978, i64 %idxprom1645
  %979 = load i32, i32* %arrayidx1646, align 4
  %idx.ext1647 = sext i32 %979 to i64
  %add.ptr1648 = getelementptr inbounds %struct.charset, %struct.charset* %976, i64 %idx.ext1647
  store %struct.charset* %add.ptr1648, %struct.charset** %charset, align 8
  br i1 true, label %cond.true.1649, label %cond.false.1655

cond.true.1649:                                   ; preds = %cond.false.1643
  %980 = load i32, i32* %field2, align 4
  %idxprom1650 = sext i32 %980 to i64
  %981 = load i32*, i32** %reg, align 8
  %arrayidx1651 = getelementptr inbounds i32, i32* %981, i64 %idxprom1650
  %982 = load i32, i32* %arrayidx1651, align 4
  %add1652 = add i32 %982, 0
  %cmp1653 = icmp ult i32 %add1652, 128
  br i1 %cmp1653, label %land.lhs.true.1662, label %cond.false.1673

cond.false.1655:                                  ; preds = %cond.false.1643
  %983 = load i32, i32* %field2, align 4
  %idxprom1656 = sext i32 %983 to i64
  %984 = load i32*, i32** %reg, align 8
  %arrayidx1657 = getelementptr inbounds i32, i32* %984, i64 %idxprom1656
  %985 = load i32, i32* %arrayidx1657, align 4
  %conv1658 = sext i32 %985 to i64
  %add1659 = add i64 %conv1658, 0
  %cmp1660 = icmp ult i64 %add1659, 128
  br i1 %cmp1660, label %land.lhs.true.1662, label %cond.false.1673

land.lhs.true.1662:                               ; preds = %cond.false.1655, %cond.true.1649
  %986 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p1663 = getelementptr inbounds %struct.charset, %struct.charset* %986, i32 0, i32 5
  %bf.load1664 = load i8, i8* %ascii_compatible_p1663, align 8
  %bf.lshr1665 = lshr i8 %bf.load1664, 2
  %bf.clear1666 = and i8 %bf.lshr1665, 1
  %bf.cast1667 = trunc i8 %bf.clear1666 to i1
  br i1 %bf.cast1667, label %cond.true.1669, label %cond.false.1673

cond.true.1669:                                   ; preds = %land.lhs.true.1662
  %987 = load i32, i32* %field2, align 4
  %idxprom1670 = sext i32 %987 to i64
  %988 = load i32*, i32** %reg, align 8
  %arrayidx1671 = getelementptr inbounds i32, i32* %988, i64 %idxprom1670
  %989 = load i32, i32* %arrayidx1671, align 4
  %conv1672 = sext i32 %989 to i64
  br label %cond.end.1771

cond.false.1673:                                  ; preds = %land.lhs.true.1662, %cond.false.1655, %cond.true.1649
  %990 = load i32, i32* %field2, align 4
  %idxprom1674 = sext i32 %990 to i64
  %991 = load i32*, i32** %reg, align 8
  %arrayidx1675 = getelementptr inbounds i32, i32* %991, i64 %idxprom1674
  %992 = load i32, i32* %arrayidx1675, align 4
  %993 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1676 = getelementptr inbounds %struct.charset, %struct.charset* %993, i32 0, i32 10
  %994 = load i32, i32* %min_code1676, align 4
  %cmp1677 = icmp ult i32 %992, %994
  br i1 %cmp1677, label %cond.true.1685, label %lor.lhs.false.1679

lor.lhs.false.1679:                               ; preds = %cond.false.1673
  %995 = load i32, i32* %field2, align 4
  %idxprom1680 = sext i32 %995 to i64
  %996 = load i32*, i32** %reg, align 8
  %arrayidx1681 = getelementptr inbounds i32, i32* %996, i64 %idxprom1680
  %997 = load i32, i32* %arrayidx1681, align 4
  %998 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_code1682 = getelementptr inbounds %struct.charset, %struct.charset* %998, i32 0, i32 11
  %999 = load i32, i32* %max_code1682, align 4
  %cmp1683 = icmp ugt i32 %997, %999
  br i1 %cmp1683, label %cond.true.1685, label %cond.false.1686

cond.true.1685:                                   ; preds = %lor.lhs.false.1679, %cond.false.1673
  br label %cond.end.1769

cond.false.1686:                                  ; preds = %lor.lhs.false.1679
  %1000 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p1687 = getelementptr inbounds %struct.charset, %struct.charset* %1000, i32 0, i32 5
  %bf.load1688 = load i8, i8* %unified_p1687, align 8
  %bf.lshr1689 = lshr i8 %bf.load1688, 5
  %bf.clear1690 = and i8 %bf.lshr1689, 1
  %bf.cast1691 = trunc i8 %bf.clear1690 to i1
  br i1 %bf.cast1691, label %cond.true.1693, label %cond.false.1698

cond.true.1693:                                   ; preds = %cond.false.1686
  %1001 = load %struct.charset*, %struct.charset** %charset, align 8
  %1002 = load i32, i32* %field2, align 4
  %idxprom1694 = sext i32 %1002 to i64
  %1003 = load i32*, i32** %reg, align 8
  %arrayidx1695 = getelementptr inbounds i32, i32* %1003, i64 %idxprom1694
  %1004 = load i32, i32* %arrayidx1695, align 4
  %call1696 = call i32 @decode_char(%struct.charset* %1001, i32 %1004)
  %conv1697 = sext i32 %call1696 to i64
  br label %cond.end.1767

cond.false.1698:                                  ; preds = %cond.false.1686
  %1005 = load %struct.charset*, %struct.charset** %charset, align 8
  %method1699 = getelementptr inbounds %struct.charset, %struct.charset* %1005, i32 0, i32 9
  %1006 = load i32, i32* %method1699, align 4
  %cmp1700 = icmp eq i32 %1006, 0
  br i1 %cmp1700, label %cond.true.1702, label %cond.false.1722

cond.true.1702:                                   ; preds = %cond.false.1698
  %1007 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p1703 = getelementptr inbounds %struct.charset, %struct.charset* %1007, i32 0, i32 5
  %bf.load1704 = load i8, i8* %code_linear_p1703, align 8
  %bf.clear1705 = and i8 %bf.load1704, 1
  %bf.cast1706 = trunc i8 %bf.clear1705 to i1
  br i1 %bf.cast1706, label %cond.true.1708, label %cond.false.1715

cond.true.1708:                                   ; preds = %cond.true.1702
  %1008 = load i32, i32* %field2, align 4
  %idxprom1709 = sext i32 %1008 to i64
  %1009 = load i32*, i32** %reg, align 8
  %arrayidx1710 = getelementptr inbounds i32, i32* %1009, i64 %idxprom1709
  %1010 = load i32, i32* %arrayidx1710, align 4
  %1011 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1711 = getelementptr inbounds %struct.charset, %struct.charset* %1011, i32 0, i32 10
  %1012 = load i32, i32* %min_code1711, align 4
  %sub1712 = sub i32 %1010, %1012
  %1013 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset1713 = getelementptr inbounds %struct.charset, %struct.charset* %1013, i32 0, i32 17
  %1014 = load i32, i32* %code_offset1713, align 4
  %add1714 = add nsw i32 %sub1712, %1014
  br label %cond.end.1719

cond.false.1715:                                  ; preds = %cond.true.1702
  %1015 = load %struct.charset*, %struct.charset** %charset, align 8
  %1016 = load i32, i32* %field2, align 4
  %idxprom1716 = sext i32 %1016 to i64
  %1017 = load i32*, i32** %reg, align 8
  %arrayidx1717 = getelementptr inbounds i32, i32* %1017, i64 %idxprom1716
  %1018 = load i32, i32* %arrayidx1717, align 4
  %call1718 = call i32 @decode_char(%struct.charset* %1015, i32 %1018)
  br label %cond.end.1719

cond.end.1719:                                    ; preds = %cond.false.1715, %cond.true.1708
  %cond1720 = phi i32 [ %add1714, %cond.true.1708 ], [ %call1718, %cond.false.1715 ]
  %conv1721 = sext i32 %cond1720 to i64
  br label %cond.end.1765

cond.false.1722:                                  ; preds = %cond.false.1698
  %1019 = load %struct.charset*, %struct.charset** %charset, align 8
  %method1723 = getelementptr inbounds %struct.charset, %struct.charset* %1019, i32 0, i32 9
  %1020 = load i32, i32* %method1723, align 4
  %cmp1724 = icmp eq i32 %1020, 1
  br i1 %cmp1724, label %cond.true.1726, label %cond.false.1758

cond.true.1726:                                   ; preds = %cond.false.1722
  %1021 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p1727 = getelementptr inbounds %struct.charset, %struct.charset* %1021, i32 0, i32 5
  %bf.load1728 = load i8, i8* %code_linear_p1727, align 8
  %bf.clear1729 = and i8 %bf.load1728, 1
  %bf.cast1730 = trunc i8 %bf.clear1729 to i1
  br i1 %bf.cast1730, label %land.lhs.true.1732, label %cond.false.1751

land.lhs.true.1732:                               ; preds = %cond.true.1726
  %1022 = load i64, i64* @Vcharset_hash_table, align 8
  %call1733 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1022)
  %1023 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index1734 = getelementptr inbounds %struct.charset, %struct.charset* %1023, i32 0, i32 1
  %1024 = load i64, i64* %hash_index1734, align 8
  %call1735 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call1733, i64 %1024)
  %call1736 = call i64 @AREF(i64 %call1735, i64 4)
  %call1737 = call zeroext i1 @VECTORP(i64 %call1736)
  br i1 %call1737, label %cond.true.1739, label %cond.false.1751

cond.true.1739:                                   ; preds = %land.lhs.true.1732
  %1025 = load i64, i64* @Vcharset_hash_table, align 8
  %call1740 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1025)
  %1026 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index1741 = getelementptr inbounds %struct.charset, %struct.charset* %1026, i32 0, i32 1
  %1027 = load i64, i64* %hash_index1741, align 8
  %call1742 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call1740, i64 %1027)
  %call1743 = call i64 @AREF(i64 %call1742, i64 4)
  %1028 = load i32, i32* %field2, align 4
  %idxprom1744 = sext i32 %1028 to i64
  %1029 = load i32*, i32** %reg, align 8
  %arrayidx1745 = getelementptr inbounds i32, i32* %1029, i64 %idxprom1744
  %1030 = load i32, i32* %arrayidx1745, align 4
  %1031 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1746 = getelementptr inbounds %struct.charset, %struct.charset* %1031, i32 0, i32 10
  %1032 = load i32, i32* %min_code1746, align 4
  %sub1747 = sub i32 %1030, %1032
  %conv1748 = zext i32 %sub1747 to i64
  %call1749 = call i64 @AREF(i64 %call1743, i64 %conv1748)
  %shr1750 = ashr i64 %call1749, 2
  br label %cond.end.1756

cond.false.1751:                                  ; preds = %land.lhs.true.1732, %cond.true.1726
  %1033 = load %struct.charset*, %struct.charset** %charset, align 8
  %1034 = load i32, i32* %field2, align 4
  %idxprom1752 = sext i32 %1034 to i64
  %1035 = load i32*, i32** %reg, align 8
  %arrayidx1753 = getelementptr inbounds i32, i32* %1035, i64 %idxprom1752
  %1036 = load i32, i32* %arrayidx1753, align 4
  %call1754 = call i32 @decode_char(%struct.charset* %1033, i32 %1036)
  %conv1755 = sext i32 %call1754 to i64
  br label %cond.end.1756

cond.end.1756:                                    ; preds = %cond.false.1751, %cond.true.1739
  %cond1757 = phi i64 [ %shr1750, %cond.true.1739 ], [ %conv1755, %cond.false.1751 ]
  br label %cond.end.1763

cond.false.1758:                                  ; preds = %cond.false.1722
  %1037 = load %struct.charset*, %struct.charset** %charset, align 8
  %1038 = load i32, i32* %field2, align 4
  %idxprom1759 = sext i32 %1038 to i64
  %1039 = load i32*, i32** %reg, align 8
  %arrayidx1760 = getelementptr inbounds i32, i32* %1039, i64 %idxprom1759
  %1040 = load i32, i32* %arrayidx1760, align 4
  %call1761 = call i32 @decode_char(%struct.charset* %1037, i32 %1040)
  %conv1762 = sext i32 %call1761 to i64
  br label %cond.end.1763

cond.end.1763:                                    ; preds = %cond.false.1758, %cond.end.1756
  %cond1764 = phi i64 [ %cond1757, %cond.end.1756 ], [ %conv1762, %cond.false.1758 ]
  br label %cond.end.1765

cond.end.1765:                                    ; preds = %cond.end.1763, %cond.end.1719
  %cond1766 = phi i64 [ %conv1721, %cond.end.1719 ], [ %cond1764, %cond.end.1763 ]
  br label %cond.end.1767

cond.end.1767:                                    ; preds = %cond.end.1765, %cond.true.1693
  %cond1768 = phi i64 [ %conv1697, %cond.true.1693 ], [ %cond1766, %cond.end.1765 ]
  br label %cond.end.1769

cond.end.1769:                                    ; preds = %cond.end.1767, %cond.true.1685
  %cond1770 = phi i64 [ -1, %cond.true.1685 ], [ %cond1768, %cond.end.1767 ]
  br label %cond.end.1771

cond.end.1771:                                    ; preds = %cond.end.1769, %cond.true.1669
  %cond1772 = phi i64 [ %conv1672, %cond.true.1669 ], [ %cond1770, %cond.end.1769 ]
  br label %cond.end.1773

cond.end.1773:                                    ; preds = %cond.end.1771, %cond.true.1639
  %cond1774 = phi i64 [ %conv1642, %cond.true.1639 ], [ %cond1772, %cond.end.1771 ]
  %conv1775 = trunc i64 %cond1774 to i32
  store i32 %conv1775, i32* %i, align 4
  %1041 = load i64, i64* %eop, align 8
  %1042 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 308), align 8
  %call1776 = call %struct.Lisp_Vector* @XVECTOR(i64 %1042)
  %contents1777 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call1776, i32 0, i32 1
  %arrayidx1778 = getelementptr inbounds [0 x i64], [0 x i64]* %contents1777, i32 0, i64 %1041
  %1043 = load i64, i64* %arrayidx1778, align 8
  %sub1779 = sub nsw i64 %1043, 3
  %1044 = inttoptr i64 %sub1779 to i8*
  %1045 = bitcast i8* %1044 to %struct.Lisp_Cons*
  %u1780 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1045, i32 0, i32 1
  %cdr1781 = bitcast %union.anon* %u1780 to i64*
  %1046 = load i64, i64* %cdr1781, align 8
  %1047 = load i32, i32* %i, align 4
  %call1782 = call i32 @translate_char(i64 %1046, i32 %1047)
  store i32 %call1782, i32* %op, align 4
  br label %do.body.1783

do.body.1783:                                     ; preds = %cond.end.1773
  %1048 = load i32, i32* %op, align 4
  %1049 = load i64, i64* %charset_list.addr, align 8
  %call1785 = call %struct.charset* @char_charset(i32 %1048, i64 %1049, i32* %ncode1784)
  store %struct.charset* %call1785, %struct.charset** %charset, align 8
  %1050 = load %struct.charset*, %struct.charset** %charset, align 8
  %tobool1786 = icmp ne %struct.charset* %1050, null
  br i1 %tobool1786, label %if.end.1794, label %land.lhs.true.1787

land.lhs.true.1787:                               ; preds = %do.body.1783
  %1051 = load i64, i64* %charset_list.addr, align 8
  %call1788 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1789 = icmp eq i64 %1051, %call1788
  br i1 %cmp1789, label %if.end.1794, label %if.then.1791

if.then.1791:                                     ; preds = %land.lhs.true.1787
  %1052 = load i32, i32* %op, align 4
  %call1792 = call i64 @builtin_lisp_symbol(i32 0)
  %call1793 = call %struct.charset* @char_charset(i32 %1052, i64 %call1792, i32* %ncode1784)
  store %struct.charset* %call1793, %struct.charset** %charset, align 8
  br label %if.end.1794

if.end.1794:                                      ; preds = %if.then.1791, %land.lhs.true.1787, %do.body.1783
  %1053 = load %struct.charset*, %struct.charset** %charset, align 8
  %tobool1795 = icmp ne %struct.charset* %1053, null
  br i1 %tobool1795, label %if.then.1796, label %if.end.1803

if.then.1796:                                     ; preds = %if.end.1794
  %1054 = load %struct.charset*, %struct.charset** %charset, align 8
  %id1797 = getelementptr inbounds %struct.charset, %struct.charset* %1054, i32 0, i32 0
  %1055 = load i32, i32* %id1797, align 4
  %1056 = load i32, i32* %field1, align 4
  %and1798 = and i32 %1056, 7
  %idxprom1799 = sext i32 %and1798 to i64
  %1057 = load i32*, i32** %reg, align 8
  %arrayidx1800 = getelementptr inbounds i32, i32* %1057, i64 %idxprom1799
  store i32 %1055, i32* %arrayidx1800, align 4
  %1058 = load i32, i32* %ncode1784, align 4
  %1059 = load i32, i32* %field2, align 4
  %idxprom1801 = sext i32 %1059 to i64
  %1060 = load i32*, i32** %reg, align 8
  %arrayidx1802 = getelementptr inbounds i32, i32* %1060, i64 %idxprom1801
  store i32 %1058, i32* %arrayidx1802, align 4
  br label %if.end.1803

if.end.1803:                                      ; preds = %if.then.1796, %if.end.1794
  br label %do.end.1804

do.end.1804:                                      ; preds = %if.end.1803
  br label %sw.epilog.2981

sw.bb.1805:                                       ; preds = %sw.bb.1218
  br label %do.body.1807

do.body.1807:                                     ; preds = %sw.bb.1805
  %1061 = load i32, i32* %ic, align 4
  %inc1809 = add nsw i32 %1061, 1
  store i32 %inc1809, i32* %ic, align 4
  %idxprom1810 = sext i32 %1061 to i64
  %1062 = load i64*, i64** %ccl_prog, align 8
  %arrayidx1811 = getelementptr inbounds i64, i64* %1062, i64 %idxprom1810
  %1063 = load i64, i64* %arrayidx1811, align 8
  %shr1812 = ashr i64 %1063, 2
  store i64 %shr1812, i64* %prog_word1808, align 8
  %1064 = load i64, i64* %prog_word1808, align 8
  %cmp1813 = icmp sle i64 0, %1064
  %conv1814 = zext i1 %cmp1813 to i32
  %1065 = load i64, i64* %prog_word1808, align 8
  %1066 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 306), align 8
  %call1815 = call zeroext i1 @VECTORP(i64 %1066)
  br i1 %call1815, label %cond.true.1817, label %cond.false.1819

cond.true.1817:                                   ; preds = %do.body.1807
  %1067 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 306), align 8
  %call1818 = call i64 @ASIZE(i64 %1067)
  br label %cond.end.1820

cond.false.1819:                                  ; preds = %do.body.1807
  br label %cond.end.1820

cond.end.1820:                                    ; preds = %cond.false.1819, %cond.true.1817
  %cond1821 = phi i64 [ %call1818, %cond.true.1817 ], [ -1, %cond.false.1819 ]
  %cmp1822 = icmp sle i64 %1065, %cond1821
  %conv1823 = zext i1 %cmp1822 to i32
  %and1824 = and i32 %conv1814, %conv1823
  %tobool1825 = icmp ne i32 %and1824, 0
  br i1 %tobool1825, label %if.end.1830, label %if.then.1826

if.then.1826:                                     ; preds = %cond.end.1820
  br label %do.body.1827

do.body.1827:                                     ; preds = %if.then.1826
  %1068 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1828 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1068, i32 0, i32 6
  store i32 3, i32* %status1828, align 4
  br label %ccl_error_handler

do.end.1829:                                      ; No predecessors!
  br label %if.end.1830

if.end.1830:                                      ; preds = %do.end.1829, %cond.end.1820
  %1069 = load i64, i64* %prog_word1808, align 8
  store i64 %1069, i64* %eop1806, align 8
  br label %do.end.1831

do.end.1831:                                      ; preds = %if.end.1830
  %1070 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 306), align 8
  %1071 = load i64, i64* %eop1806, align 8
  %call1832 = call i64 @AREF(i64 %1070, i64 %1071)
  %sub1833 = sub nsw i64 %call1832, 3
  %1072 = inttoptr i64 %sub1833 to i8*
  %1073 = bitcast i8* %1072 to %struct.Lisp_Cons*
  %u1834 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1073, i32 0, i32 1
  %cdr1835 = bitcast %union.anon* %u1834 to i64*
  %1074 = load i64, i64* %cdr1835, align 8
  %call1836 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1074)
  store %struct.Lisp_Hash_Table* %call1836, %struct.Lisp_Hash_Table** %h, align 8
  %1075 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %1076 = load i32, i32* %field1, align 4
  %and1837 = and i32 %1076, 7
  %idxprom1838 = sext i32 %and1837 to i64
  %1077 = load i32*, i32** %reg, align 8
  %arrayidx1839 = getelementptr inbounds i32, i32* %1077, i64 %idxprom1838
  %1078 = load i32, i32* %arrayidx1839, align 4
  %conv1840 = sext i32 %1078 to i64
  %shl1841 = shl i64 %conv1840, 2
  %add1842 = add i64 %shl1841, 2
  %call1843 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %1075, i64 %add1842, i64* null)
  store i64 %call1843, i64* %eop1806, align 8
  %1079 = load i64, i64* %eop1806, align 8
  %cmp1844 = icmp sge i64 %1079, 0
  br i1 %cmp1844, label %if.then.1846, label %if.else.1873

if.then.1846:                                     ; preds = %do.end.1831
  %1080 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %1081 = load i64, i64* %eop1806, align 8
  %call1847 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %1080, i64 %1081)
  store i64 %call1847, i64* %opl, align 8
  %1082 = load i64, i64* %eop1806, align 8
  %cmp1848 = icmp sle i64 -2147483648, %1082
  %conv1849 = zext i1 %cmp1848 to i32
  %1083 = load i64, i64* %eop1806, align 8
  %cmp1850 = icmp sle i64 %1083, 2147483647
  %conv1851 = zext i1 %cmp1850 to i32
  %and1852 = and i32 %conv1849, %conv1851
  %tobool1853 = icmp ne i32 %and1852, 0
  br i1 %tobool1853, label %land.lhs.true.1854, label %if.then.1861

land.lhs.true.1854:                               ; preds = %if.then.1846
  %1084 = load i64, i64* %opl, align 8
  %call1855 = call zeroext i1 @NATNUMP(i64 %1084)
  br i1 %call1855, label %land.lhs.true.1857, label %if.then.1861

land.lhs.true.1857:                               ; preds = %land.lhs.true.1854
  %1085 = load i64, i64* %opl, align 8
  %shr1858 = ashr i64 %1085, 2
  %cmp1859 = icmp sle i64 %shr1858, 4194303
  br i1 %cmp1859, label %if.end.1865, label %if.then.1861

if.then.1861:                                     ; preds = %land.lhs.true.1857, %land.lhs.true.1854, %if.then.1846
  br label %do.body.1862

do.body.1862:                                     ; preds = %if.then.1861
  %1086 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1863 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1086, i32 0, i32 6
  store i32 3, i32* %status1863, align 4
  br label %ccl_error_handler

do.end.1864:                                      ; No predecessors!
  br label %if.end.1865

if.end.1865:                                      ; preds = %do.end.1864, %land.lhs.true.1857
  %1087 = load i32, i32* @charset_unicode, align 4
  %1088 = load i32, i32* %field1, align 4
  %and1866 = and i32 %1088, 7
  %idxprom1867 = sext i32 %and1866 to i64
  %1089 = load i32*, i32** %reg, align 8
  %arrayidx1868 = getelementptr inbounds i32, i32* %1089, i64 %idxprom1867
  store i32 %1087, i32* %arrayidx1868, align 4
  %1090 = load i64, i64* %eop1806, align 8
  %conv1869 = trunc i64 %1090 to i32
  %1091 = load i32, i32* %field2, align 4
  %idxprom1870 = sext i32 %1091 to i64
  %1092 = load i32*, i32** %reg, align 8
  %arrayidx1871 = getelementptr inbounds i32, i32* %1092, i64 %idxprom1870
  store i32 %conv1869, i32* %arrayidx1871, align 4
  %1093 = load i32*, i32** %reg, align 8
  %arrayidx1872 = getelementptr inbounds i32, i32* %1093, i64 7
  store i32 1, i32* %arrayidx1872, align 4
  br label %if.end.1875

if.else.1873:                                     ; preds = %do.end.1831
  %1094 = load i32*, i32** %reg, align 8
  %arrayidx1874 = getelementptr inbounds i32, i32* %1094, i64 7
  store i32 0, i32* %arrayidx1874, align 4
  br label %if.end.1875

if.end.1875:                                      ; preds = %if.else.1873, %if.end.1865
  br label %sw.epilog.2981

sw.bb.1876:                                       ; preds = %sw.bb.1218
  br label %do.body.1879

do.body.1879:                                     ; preds = %sw.bb.1876
  %1095 = load i32, i32* %ic, align 4
  %inc1881 = add nsw i32 %1095, 1
  store i32 %inc1881, i32* %ic, align 4
  %idxprom1882 = sext i32 %1095 to i64
  %1096 = load i64*, i64** %ccl_prog, align 8
  %arrayidx1883 = getelementptr inbounds i64, i64* %1096, i64 %idxprom1882
  %1097 = load i64, i64* %arrayidx1883, align 8
  %shr1884 = ashr i64 %1097, 2
  store i64 %shr1884, i64* %prog_word1880, align 8
  %1098 = load i64, i64* %prog_word1880, align 8
  %cmp1885 = icmp sle i64 0, %1098
  %conv1886 = zext i1 %cmp1885 to i32
  %1099 = load i64, i64* %prog_word1880, align 8
  %1100 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 306), align 8
  %call1887 = call zeroext i1 @VECTORP(i64 %1100)
  br i1 %call1887, label %cond.true.1889, label %cond.false.1891

cond.true.1889:                                   ; preds = %do.body.1879
  %1101 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 306), align 8
  %call1890 = call i64 @ASIZE(i64 %1101)
  br label %cond.end.1892

cond.false.1891:                                  ; preds = %do.body.1879
  br label %cond.end.1892

cond.end.1892:                                    ; preds = %cond.false.1891, %cond.true.1889
  %cond1893 = phi i64 [ %call1890, %cond.true.1889 ], [ -1, %cond.false.1891 ]
  %cmp1894 = icmp sle i64 %1099, %cond1893
  %conv1895 = zext i1 %cmp1894 to i32
  %and1896 = and i32 %conv1886, %conv1895
  %tobool1897 = icmp ne i32 %and1896, 0
  br i1 %tobool1897, label %if.end.1902, label %if.then.1898

if.then.1898:                                     ; preds = %cond.end.1892
  br label %do.body.1899

do.body.1899:                                     ; preds = %if.then.1898
  %1102 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status1900 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1102, i32 0, i32 6
  store i32 3, i32* %status1900, align 4
  br label %ccl_error_handler

do.end.1901:                                      ; No predecessors!
  br label %if.end.1902

if.end.1902:                                      ; preds = %do.end.1901, %cond.end.1892
  %1103 = load i64, i64* %prog_word1880, align 8
  store i64 %1103, i64* %eop1877, align 8
  br label %do.end.1903

do.end.1903:                                      ; preds = %if.end.1902
  %1104 = load i32, i32* %field1, align 4
  %and1904 = and i32 %1104, 7
  %idxprom1905 = sext i32 %and1904 to i64
  %1105 = load i32*, i32** %reg, align 8
  %arrayidx1906 = getelementptr inbounds i32, i32* %1105, i64 %idxprom1905
  %1106 = load i32, i32* %arrayidx1906, align 4
  %cmp1907 = icmp eq i32 %1106, 0
  br i1 %cmp1907, label %cond.true.1909, label %cond.false.1913

cond.true.1909:                                   ; preds = %do.end.1903
  %1107 = load i32, i32* %field2, align 4
  %idxprom1910 = sext i32 %1107 to i64
  %1108 = load i32*, i32** %reg, align 8
  %arrayidx1911 = getelementptr inbounds i32, i32* %1108, i64 %idxprom1910
  %1109 = load i32, i32* %arrayidx1911, align 4
  %conv1912 = sext i32 %1109 to i64
  br label %cond.end.2043

cond.false.1913:                                  ; preds = %do.end.1903
  %1110 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %1111 = load i32, i32* %field1, align 4
  %and1914 = and i32 %1111, 7
  %idxprom1915 = sext i32 %and1914 to i64
  %1112 = load i32*, i32** %reg, align 8
  %arrayidx1916 = getelementptr inbounds i32, i32* %1112, i64 %idxprom1915
  %1113 = load i32, i32* %arrayidx1916, align 4
  %idx.ext1917 = sext i32 %1113 to i64
  %add.ptr1918 = getelementptr inbounds %struct.charset, %struct.charset* %1110, i64 %idx.ext1917
  store %struct.charset* %add.ptr1918, %struct.charset** %charset, align 8
  br i1 true, label %cond.true.1919, label %cond.false.1925

cond.true.1919:                                   ; preds = %cond.false.1913
  %1114 = load i32, i32* %field2, align 4
  %idxprom1920 = sext i32 %1114 to i64
  %1115 = load i32*, i32** %reg, align 8
  %arrayidx1921 = getelementptr inbounds i32, i32* %1115, i64 %idxprom1920
  %1116 = load i32, i32* %arrayidx1921, align 4
  %add1922 = add i32 %1116, 0
  %cmp1923 = icmp ult i32 %add1922, 128
  br i1 %cmp1923, label %land.lhs.true.1932, label %cond.false.1943

cond.false.1925:                                  ; preds = %cond.false.1913
  %1117 = load i32, i32* %field2, align 4
  %idxprom1926 = sext i32 %1117 to i64
  %1118 = load i32*, i32** %reg, align 8
  %arrayidx1927 = getelementptr inbounds i32, i32* %1118, i64 %idxprom1926
  %1119 = load i32, i32* %arrayidx1927, align 4
  %conv1928 = sext i32 %1119 to i64
  %add1929 = add i64 %conv1928, 0
  %cmp1930 = icmp ult i64 %add1929, 128
  br i1 %cmp1930, label %land.lhs.true.1932, label %cond.false.1943

land.lhs.true.1932:                               ; preds = %cond.false.1925, %cond.true.1919
  %1120 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p1933 = getelementptr inbounds %struct.charset, %struct.charset* %1120, i32 0, i32 5
  %bf.load1934 = load i8, i8* %ascii_compatible_p1933, align 8
  %bf.lshr1935 = lshr i8 %bf.load1934, 2
  %bf.clear1936 = and i8 %bf.lshr1935, 1
  %bf.cast1937 = trunc i8 %bf.clear1936 to i1
  br i1 %bf.cast1937, label %cond.true.1939, label %cond.false.1943

cond.true.1939:                                   ; preds = %land.lhs.true.1932
  %1121 = load i32, i32* %field2, align 4
  %idxprom1940 = sext i32 %1121 to i64
  %1122 = load i32*, i32** %reg, align 8
  %arrayidx1941 = getelementptr inbounds i32, i32* %1122, i64 %idxprom1940
  %1123 = load i32, i32* %arrayidx1941, align 4
  %conv1942 = sext i32 %1123 to i64
  br label %cond.end.2041

cond.false.1943:                                  ; preds = %land.lhs.true.1932, %cond.false.1925, %cond.true.1919
  %1124 = load i32, i32* %field2, align 4
  %idxprom1944 = sext i32 %1124 to i64
  %1125 = load i32*, i32** %reg, align 8
  %arrayidx1945 = getelementptr inbounds i32, i32* %1125, i64 %idxprom1944
  %1126 = load i32, i32* %arrayidx1945, align 4
  %1127 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1946 = getelementptr inbounds %struct.charset, %struct.charset* %1127, i32 0, i32 10
  %1128 = load i32, i32* %min_code1946, align 4
  %cmp1947 = icmp ult i32 %1126, %1128
  br i1 %cmp1947, label %cond.true.1955, label %lor.lhs.false.1949

lor.lhs.false.1949:                               ; preds = %cond.false.1943
  %1129 = load i32, i32* %field2, align 4
  %idxprom1950 = sext i32 %1129 to i64
  %1130 = load i32*, i32** %reg, align 8
  %arrayidx1951 = getelementptr inbounds i32, i32* %1130, i64 %idxprom1950
  %1131 = load i32, i32* %arrayidx1951, align 4
  %1132 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_code1952 = getelementptr inbounds %struct.charset, %struct.charset* %1132, i32 0, i32 11
  %1133 = load i32, i32* %max_code1952, align 4
  %cmp1953 = icmp ugt i32 %1131, %1133
  br i1 %cmp1953, label %cond.true.1955, label %cond.false.1956

cond.true.1955:                                   ; preds = %lor.lhs.false.1949, %cond.false.1943
  br label %cond.end.2039

cond.false.1956:                                  ; preds = %lor.lhs.false.1949
  %1134 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p1957 = getelementptr inbounds %struct.charset, %struct.charset* %1134, i32 0, i32 5
  %bf.load1958 = load i8, i8* %unified_p1957, align 8
  %bf.lshr1959 = lshr i8 %bf.load1958, 5
  %bf.clear1960 = and i8 %bf.lshr1959, 1
  %bf.cast1961 = trunc i8 %bf.clear1960 to i1
  br i1 %bf.cast1961, label %cond.true.1963, label %cond.false.1968

cond.true.1963:                                   ; preds = %cond.false.1956
  %1135 = load %struct.charset*, %struct.charset** %charset, align 8
  %1136 = load i32, i32* %field2, align 4
  %idxprom1964 = sext i32 %1136 to i64
  %1137 = load i32*, i32** %reg, align 8
  %arrayidx1965 = getelementptr inbounds i32, i32* %1137, i64 %idxprom1964
  %1138 = load i32, i32* %arrayidx1965, align 4
  %call1966 = call i32 @decode_char(%struct.charset* %1135, i32 %1138)
  %conv1967 = sext i32 %call1966 to i64
  br label %cond.end.2037

cond.false.1968:                                  ; preds = %cond.false.1956
  %1139 = load %struct.charset*, %struct.charset** %charset, align 8
  %method1969 = getelementptr inbounds %struct.charset, %struct.charset* %1139, i32 0, i32 9
  %1140 = load i32, i32* %method1969, align 4
  %cmp1970 = icmp eq i32 %1140, 0
  br i1 %cmp1970, label %cond.true.1972, label %cond.false.1992

cond.true.1972:                                   ; preds = %cond.false.1968
  %1141 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p1973 = getelementptr inbounds %struct.charset, %struct.charset* %1141, i32 0, i32 5
  %bf.load1974 = load i8, i8* %code_linear_p1973, align 8
  %bf.clear1975 = and i8 %bf.load1974, 1
  %bf.cast1976 = trunc i8 %bf.clear1975 to i1
  br i1 %bf.cast1976, label %cond.true.1978, label %cond.false.1985

cond.true.1978:                                   ; preds = %cond.true.1972
  %1142 = load i32, i32* %field2, align 4
  %idxprom1979 = sext i32 %1142 to i64
  %1143 = load i32*, i32** %reg, align 8
  %arrayidx1980 = getelementptr inbounds i32, i32* %1143, i64 %idxprom1979
  %1144 = load i32, i32* %arrayidx1980, align 4
  %1145 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code1981 = getelementptr inbounds %struct.charset, %struct.charset* %1145, i32 0, i32 10
  %1146 = load i32, i32* %min_code1981, align 4
  %sub1982 = sub i32 %1144, %1146
  %1147 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset1983 = getelementptr inbounds %struct.charset, %struct.charset* %1147, i32 0, i32 17
  %1148 = load i32, i32* %code_offset1983, align 4
  %add1984 = add nsw i32 %sub1982, %1148
  br label %cond.end.1989

cond.false.1985:                                  ; preds = %cond.true.1972
  %1149 = load %struct.charset*, %struct.charset** %charset, align 8
  %1150 = load i32, i32* %field2, align 4
  %idxprom1986 = sext i32 %1150 to i64
  %1151 = load i32*, i32** %reg, align 8
  %arrayidx1987 = getelementptr inbounds i32, i32* %1151, i64 %idxprom1986
  %1152 = load i32, i32* %arrayidx1987, align 4
  %call1988 = call i32 @decode_char(%struct.charset* %1149, i32 %1152)
  br label %cond.end.1989

cond.end.1989:                                    ; preds = %cond.false.1985, %cond.true.1978
  %cond1990 = phi i32 [ %add1984, %cond.true.1978 ], [ %call1988, %cond.false.1985 ]
  %conv1991 = sext i32 %cond1990 to i64
  br label %cond.end.2035

cond.false.1992:                                  ; preds = %cond.false.1968
  %1153 = load %struct.charset*, %struct.charset** %charset, align 8
  %method1993 = getelementptr inbounds %struct.charset, %struct.charset* %1153, i32 0, i32 9
  %1154 = load i32, i32* %method1993, align 4
  %cmp1994 = icmp eq i32 %1154, 1
  br i1 %cmp1994, label %cond.true.1996, label %cond.false.2028

cond.true.1996:                                   ; preds = %cond.false.1992
  %1155 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p1997 = getelementptr inbounds %struct.charset, %struct.charset* %1155, i32 0, i32 5
  %bf.load1998 = load i8, i8* %code_linear_p1997, align 8
  %bf.clear1999 = and i8 %bf.load1998, 1
  %bf.cast2000 = trunc i8 %bf.clear1999 to i1
  br i1 %bf.cast2000, label %land.lhs.true.2002, label %cond.false.2021

land.lhs.true.2002:                               ; preds = %cond.true.1996
  %1156 = load i64, i64* @Vcharset_hash_table, align 8
  %call2003 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1156)
  %1157 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index2004 = getelementptr inbounds %struct.charset, %struct.charset* %1157, i32 0, i32 1
  %1158 = load i64, i64* %hash_index2004, align 8
  %call2005 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call2003, i64 %1158)
  %call2006 = call i64 @AREF(i64 %call2005, i64 4)
  %call2007 = call zeroext i1 @VECTORP(i64 %call2006)
  br i1 %call2007, label %cond.true.2009, label %cond.false.2021

cond.true.2009:                                   ; preds = %land.lhs.true.2002
  %1159 = load i64, i64* @Vcharset_hash_table, align 8
  %call2010 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1159)
  %1160 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index2011 = getelementptr inbounds %struct.charset, %struct.charset* %1160, i32 0, i32 1
  %1161 = load i64, i64* %hash_index2011, align 8
  %call2012 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call2010, i64 %1161)
  %call2013 = call i64 @AREF(i64 %call2012, i64 4)
  %1162 = load i32, i32* %field2, align 4
  %idxprom2014 = sext i32 %1162 to i64
  %1163 = load i32*, i32** %reg, align 8
  %arrayidx2015 = getelementptr inbounds i32, i32* %1163, i64 %idxprom2014
  %1164 = load i32, i32* %arrayidx2015, align 4
  %1165 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code2016 = getelementptr inbounds %struct.charset, %struct.charset* %1165, i32 0, i32 10
  %1166 = load i32, i32* %min_code2016, align 4
  %sub2017 = sub i32 %1164, %1166
  %conv2018 = zext i32 %sub2017 to i64
  %call2019 = call i64 @AREF(i64 %call2013, i64 %conv2018)
  %shr2020 = ashr i64 %call2019, 2
  br label %cond.end.2026

cond.false.2021:                                  ; preds = %land.lhs.true.2002, %cond.true.1996
  %1167 = load %struct.charset*, %struct.charset** %charset, align 8
  %1168 = load i32, i32* %field2, align 4
  %idxprom2022 = sext i32 %1168 to i64
  %1169 = load i32*, i32** %reg, align 8
  %arrayidx2023 = getelementptr inbounds i32, i32* %1169, i64 %idxprom2022
  %1170 = load i32, i32* %arrayidx2023, align 4
  %call2024 = call i32 @decode_char(%struct.charset* %1167, i32 %1170)
  %conv2025 = sext i32 %call2024 to i64
  br label %cond.end.2026

cond.end.2026:                                    ; preds = %cond.false.2021, %cond.true.2009
  %cond2027 = phi i64 [ %shr2020, %cond.true.2009 ], [ %conv2025, %cond.false.2021 ]
  br label %cond.end.2033

cond.false.2028:                                  ; preds = %cond.false.1992
  %1171 = load %struct.charset*, %struct.charset** %charset, align 8
  %1172 = load i32, i32* %field2, align 4
  %idxprom2029 = sext i32 %1172 to i64
  %1173 = load i32*, i32** %reg, align 8
  %arrayidx2030 = getelementptr inbounds i32, i32* %1173, i64 %idxprom2029
  %1174 = load i32, i32* %arrayidx2030, align 4
  %call2031 = call i32 @decode_char(%struct.charset* %1171, i32 %1174)
  %conv2032 = sext i32 %call2031 to i64
  br label %cond.end.2033

cond.end.2033:                                    ; preds = %cond.false.2028, %cond.end.2026
  %cond2034 = phi i64 [ %cond2027, %cond.end.2026 ], [ %conv2032, %cond.false.2028 ]
  br label %cond.end.2035

cond.end.2035:                                    ; preds = %cond.end.2033, %cond.end.1989
  %cond2036 = phi i64 [ %conv1991, %cond.end.1989 ], [ %cond2034, %cond.end.2033 ]
  br label %cond.end.2037

cond.end.2037:                                    ; preds = %cond.end.2035, %cond.true.1963
  %cond2038 = phi i64 [ %conv1967, %cond.true.1963 ], [ %cond2036, %cond.end.2035 ]
  br label %cond.end.2039

cond.end.2039:                                    ; preds = %cond.end.2037, %cond.true.1955
  %cond2040 = phi i64 [ -1, %cond.true.1955 ], [ %cond2038, %cond.end.2037 ]
  br label %cond.end.2041

cond.end.2041:                                    ; preds = %cond.end.2039, %cond.true.1939
  %cond2042 = phi i64 [ %conv1942, %cond.true.1939 ], [ %cond2040, %cond.end.2039 ]
  br label %cond.end.2043

cond.end.2043:                                    ; preds = %cond.end.2041, %cond.true.1909
  %cond2044 = phi i64 [ %conv1912, %cond.true.1909 ], [ %cond2042, %cond.end.2041 ]
  %conv2045 = trunc i64 %cond2044 to i32
  store i32 %conv2045, i32* %i, align 4
  %1175 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 306), align 8
  %1176 = load i64, i64* %eop1877, align 8
  %call2046 = call i64 @AREF(i64 %1175, i64 %1176)
  %sub2047 = sub nsw i64 %call2046, 3
  %1177 = inttoptr i64 %sub2047 to i8*
  %1178 = bitcast i8* %1177 to %struct.Lisp_Cons*
  %u2048 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1178, i32 0, i32 1
  %cdr2049 = bitcast %union.anon* %u2048 to i64*
  %1179 = load i64, i64* %cdr2049, align 8
  %call2050 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1179)
  store %struct.Lisp_Hash_Table* %call2050, %struct.Lisp_Hash_Table** %h1878, align 8
  %1180 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h1878, align 8
  %1181 = load i32, i32* %i, align 4
  %conv2051 = sext i32 %1181 to i64
  %shl2052 = shl i64 %conv2051, 2
  %add2053 = add i64 %shl2052, 2
  %call2054 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %1180, i64 %add2053, i64* null)
  store i64 %call2054, i64* %eop1877, align 8
  %1182 = load i64, i64* %eop1877, align 8
  %cmp2055 = icmp sge i64 %1182, 0
  br i1 %cmp2055, label %if.then.2057, label %if.else.2085

if.then.2057:                                     ; preds = %cond.end.2043
  %1183 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h1878, align 8
  %1184 = load i64, i64* %eop1877, align 8
  %call2059 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %1183, i64 %1184)
  store i64 %call2059, i64* %opl2058, align 8
  %1185 = load i64, i64* %opl2058, align 8
  %and2060 = and i64 %1185, 7
  %conv2061 = trunc i64 %and2060 to i32
  %and2062 = and i32 %conv2061, -5
  %cmp2063 = icmp eq i32 %and2062, 2
  br i1 %cmp2063, label %land.lhs.true.2065, label %if.then.2074

land.lhs.true.2065:                               ; preds = %if.then.2057
  %1186 = load i64, i64* %opl2058, align 8
  %shr2066 = ashr i64 %1186, 2
  %cmp2067 = icmp sle i64 -2147483648, %shr2066
  %conv2068 = zext i1 %cmp2067 to i32
  %1187 = load i64, i64* %opl2058, align 8
  %shr2069 = ashr i64 %1187, 2
  %cmp2070 = icmp sle i64 %shr2069, 2147483647
  %conv2071 = zext i1 %cmp2070 to i32
  %and2072 = and i32 %conv2068, %conv2071
  %tobool2073 = icmp ne i32 %and2072, 0
  br i1 %tobool2073, label %if.end.2078, label %if.then.2074

if.then.2074:                                     ; preds = %land.lhs.true.2065, %if.then.2057
  br label %do.body.2075

do.body.2075:                                     ; preds = %if.then.2074
  %1188 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2076 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1188, i32 0, i32 6
  store i32 3, i32* %status2076, align 4
  br label %ccl_error_handler

do.end.2077:                                      ; No predecessors!
  br label %if.end.2078

if.end.2078:                                      ; preds = %do.end.2077, %land.lhs.true.2065
  %1189 = load i64, i64* %opl2058, align 8
  %shr2079 = ashr i64 %1189, 2
  %conv2080 = trunc i64 %shr2079 to i32
  %1190 = load i32, i32* %field1, align 4
  %and2081 = and i32 %1190, 7
  %idxprom2082 = sext i32 %and2081 to i64
  %1191 = load i32*, i32** %reg, align 8
  %arrayidx2083 = getelementptr inbounds i32, i32* %1191, i64 %idxprom2082
  store i32 %conv2080, i32* %arrayidx2083, align 4
  %1192 = load i32*, i32** %reg, align 8
  %arrayidx2084 = getelementptr inbounds i32, i32* %1192, i64 7
  store i32 1, i32* %arrayidx2084, align 4
  br label %if.end.2087

if.else.2085:                                     ; preds = %cond.end.2043
  %1193 = load i32*, i32** %reg, align 8
  %arrayidx2086 = getelementptr inbounds i32, i32* %1193, i64 7
  store i32 0, i32* %arrayidx2086, align 4
  br label %if.end.2087

if.end.2087:                                      ; preds = %if.else.2085, %if.end.2078
  br label %sw.epilog.2981

sw.bb.2088:                                       ; preds = %sw.bb.1218
  %1194 = load i32, i32* %ic, align 4
  %inc2089 = add nsw i32 %1194, 1
  store i32 %inc2089, i32* %ic, align 4
  %idxprom2090 = sext i32 %1194 to i64
  %1195 = load i64*, i64** %ccl_prog, align 8
  %arrayidx2091 = getelementptr inbounds i64, i64* %1195, i64 %idxprom2090
  %1196 = load i64, i64* %arrayidx2091, align 8
  %shr2092 = ashr i64 %1196, 2
  %conv2093 = trunc i64 %shr2092 to i32
  store i32 %conv2093, i32* %j, align 4
  %1197 = load i32, i32* %ic, align 4
  %1198 = load i32, i32* %j, align 4
  %add2094 = add nsw i32 %1197, %1198
  store i32 %add2094, i32* %fin_ic, align 4
  %1199 = load i32, i32* %field2, align 4
  %idxprom2095 = sext i32 %1199 to i64
  %1200 = load i32*, i32** %reg, align 8
  %arrayidx2096 = getelementptr inbounds i32, i32* %1200, i64 %idxprom2095
  %1201 = load i32, i32* %arrayidx2096, align 4
  store i32 %1201, i32* %op, align 4
  %1202 = load i32, i32* %j, align 4
  %1203 = load i32, i32* %field1, align 4
  %and2097 = and i32 %1203, 7
  %idxprom2098 = sext i32 %and2097 to i64
  %1204 = load i32*, i32** %reg, align 8
  %arrayidx2099 = getelementptr inbounds i32, i32* %1204, i64 %idxprom2098
  %1205 = load i32, i32* %arrayidx2099, align 4
  %cmp2100 = icmp sgt i32 %1202, %1205
  br i1 %cmp2100, label %land.lhs.true.2102, label %if.else.2113

land.lhs.true.2102:                               ; preds = %sw.bb.2088
  %1206 = load i32, i32* %j, align 4
  %cmp2103 = icmp sge i32 %1206, 0
  br i1 %cmp2103, label %if.then.2105, label %if.else.2113

if.then.2105:                                     ; preds = %land.lhs.true.2102
  %1207 = load i32, i32* %field1, align 4
  %and2106 = and i32 %1207, 7
  %idxprom2107 = sext i32 %and2106 to i64
  %1208 = load i32*, i32** %reg, align 8
  %arrayidx2108 = getelementptr inbounds i32, i32* %1208, i64 %idxprom2107
  %1209 = load i32, i32* %arrayidx2108, align 4
  %1210 = load i32, i32* %ic, align 4
  %add2109 = add nsw i32 %1210, %1209
  store i32 %add2109, i32* %ic, align 4
  %1211 = load i32, i32* %field1, align 4
  %and2110 = and i32 %1211, 7
  %idxprom2111 = sext i32 %and2110 to i64
  %1212 = load i32*, i32** %reg, align 8
  %arrayidx2112 = getelementptr inbounds i32, i32* %1212, i64 %idxprom2111
  %1213 = load i32, i32* %arrayidx2112, align 4
  store i32 %1213, i32* %i, align 4
  br label %if.end.2117

if.else.2113:                                     ; preds = %land.lhs.true.2102, %sw.bb.2088
  %1214 = load i32, i32* %field1, align 4
  %and2114 = and i32 %1214, 7
  %idxprom2115 = sext i32 %and2114 to i64
  %1215 = load i32*, i32** %reg, align 8
  %arrayidx2116 = getelementptr inbounds i32, i32* %1215, i64 %idxprom2115
  store i32 -1, i32* %arrayidx2116, align 4
  %1216 = load i32, i32* %fin_ic, align 4
  store i32 %1216, i32* %ic, align 4
  br label %sw.epilog.2981

if.end.2117:                                      ; preds = %if.then.2105
  br label %for.cond.2118

for.cond.2118:                                    ; preds = %for.inc.2341, %if.end.2117
  %1217 = load i32, i32* %i, align 4
  %1218 = load i32, i32* %j, align 4
  %cmp2119 = icmp slt i32 %1217, %1218
  br i1 %cmp2119, label %for.body.2121, label %for.end.2343

for.body.2121:                                    ; preds = %for.cond.2118
  %1219 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %call2122 = call zeroext i1 @VECTORP(i64 %1219)
  br i1 %call2122, label %if.end.2124, label %if.then.2123

if.then.2123:                                     ; preds = %for.body.2121
  br label %for.inc.2341

if.end.2124:                                      ; preds = %for.body.2121
  %1220 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %call2125 = call i64 @ASIZE(i64 %1220)
  store i64 %call2125, i64* %size, align 8
  %1221 = load i32, i32* %ic, align 4
  %inc2126 = add nsw i32 %1221, 1
  store i32 %inc2126, i32* %ic, align 4
  %idxprom2127 = sext i32 %1221 to i64
  %1222 = load i64*, i64** %ccl_prog, align 8
  %arrayidx2128 = getelementptr inbounds i64, i64* %1222, i64 %idxprom2127
  %1223 = load i64, i64* %arrayidx2128, align 8
  %shr2129 = ashr i64 %1223, 2
  store i64 %shr2129, i64* %point, align 8
  %1224 = load i64, i64* %point, align 8
  %cmp2130 = icmp sle i64 0, %1224
  br i1 %cmp2130, label %land.lhs.true.2132, label %if.then.2135

land.lhs.true.2132:                               ; preds = %if.end.2124
  %1225 = load i64, i64* %point, align 8
  %1226 = load i64, i64* %size, align 8
  %cmp2133 = icmp slt i64 %1225, %1226
  br i1 %cmp2133, label %if.end.2136, label %if.then.2135

if.then.2135:                                     ; preds = %land.lhs.true.2132, %if.end.2124
  br label %for.inc.2341

if.end.2136:                                      ; preds = %land.lhs.true.2132
  %1227 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %1228 = load i64, i64* %point, align 8
  %call2137 = call i64 @AREF(i64 %1227, i64 %1228)
  store i64 %call2137, i64* %map, align 8
  %1229 = load i64, i64* %map, align 8
  %and2138 = and i64 %1229, 7
  %conv2139 = trunc i64 %and2138 to i32
  %cmp2140 = icmp eq i32 %conv2139, 3
  br i1 %cmp2140, label %if.end.2143, label %if.then.2142

if.then.2142:                                     ; preds = %if.end.2136
  br label %for.inc.2341

if.end.2143:                                      ; preds = %if.end.2136
  %1230 = load i64, i64* %map, align 8
  %sub2144 = sub nsw i64 %1230, 3
  %1231 = inttoptr i64 %sub2144 to i8*
  %1232 = bitcast i8* %1231 to %struct.Lisp_Cons*
  %u2145 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1232, i32 0, i32 1
  %cdr2146 = bitcast %union.anon* %u2145 to i64*
  %1233 = load i64, i64* %cdr2146, align 8
  store i64 %1233, i64* %map, align 8
  %1234 = load i64, i64* %map, align 8
  %call2147 = call zeroext i1 @VECTORP(i64 %1234)
  br i1 %call2147, label %if.end.2149, label %if.then.2148

if.then.2148:                                     ; preds = %if.end.2143
  br label %for.inc.2341

if.end.2149:                                      ; preds = %if.end.2143
  %1235 = load i64, i64* %map, align 8
  %call2150 = call i64 @ASIZE(i64 %1235)
  store i64 %call2150, i64* %size, align 8
  %1236 = load i64, i64* %size, align 8
  %cmp2151 = icmp sle i64 %1236, 1
  br i1 %cmp2151, label %if.then.2153, label %if.end.2154

if.then.2153:                                     ; preds = %if.end.2149
  br label %for.inc.2341

if.end.2154:                                      ; preds = %if.end.2149
  %1237 = load i64, i64* %map, align 8
  %call2155 = call i64 @AREF(i64 %1237, i64 0)
  store i64 %call2155, i64* %content, align 8
  %1238 = load i64, i64* %content, align 8
  %and2156 = and i64 %1238, 7
  %conv2157 = trunc i64 %and2156 to i32
  %and2158 = and i32 %conv2157, -5
  %cmp2159 = icmp eq i32 %and2158, 2
  br i1 %cmp2159, label %if.then.2161, label %if.else.2178

if.then.2161:                                     ; preds = %if.end.2154
  %1239 = load i64, i64* %content, align 8
  %shr2162 = ashr i64 %1239, 2
  store i64 %shr2162, i64* %point, align 8
  %1240 = load i64, i64* %point, align 8
  %1241 = load i32, i32* %op, align 4
  %conv2163 = sext i32 %1241 to i64
  %cmp2164 = icmp sle i64 %1240, %conv2163
  br i1 %cmp2164, label %land.lhs.true.2166, label %if.then.2172

land.lhs.true.2166:                               ; preds = %if.then.2161
  %1242 = load i32, i32* %op, align 4
  %conv2167 = sext i32 %1242 to i64
  %1243 = load i64, i64* %point, align 8
  %sub2168 = sub nsw i64 %conv2167, %1243
  %add2169 = add nsw i64 %sub2168, 1
  %1244 = load i64, i64* %size, align 8
  %cmp2170 = icmp slt i64 %add2169, %1244
  br i1 %cmp2170, label %if.end.2173, label %if.then.2172

if.then.2172:                                     ; preds = %land.lhs.true.2166, %if.then.2161
  br label %for.inc.2341

if.end.2173:                                      ; preds = %land.lhs.true.2166
  %1245 = load i64, i64* %map, align 8
  %1246 = load i32, i32* %op, align 4
  %conv2174 = sext i32 %1246 to i64
  %1247 = load i64, i64* %point, align 8
  %sub2175 = sub nsw i64 %conv2174, %1247
  %add2176 = add nsw i64 %sub2175, 1
  %call2177 = call i64 @AREF(i64 %1245, i64 %add2176)
  store i64 %call2177, i64* %content, align 8
  br label %if.end.2218

if.else.2178:                                     ; preds = %if.end.2154
  %1248 = load i64, i64* %content, align 8
  %call2179 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp2180 = icmp eq i64 %1248, %call2179
  br i1 %cmp2180, label %if.then.2182, label %if.else.2216

if.then.2182:                                     ; preds = %if.else.2178
  %1249 = load i64, i64* %size, align 8
  %cmp2183 = icmp ne i64 %1249, 4
  br i1 %cmp2183, label %if.then.2185, label %if.end.2186

if.then.2185:                                     ; preds = %if.then.2182
  br label %for.inc.2341

if.end.2186:                                      ; preds = %if.then.2182
  %1250 = load i64, i64* %map, align 8
  %call2187 = call i64 @AREF(i64 %1250, i64 2)
  %and2188 = and i64 %call2187, 7
  %conv2189 = trunc i64 %and2188 to i32
  %and2190 = and i32 %conv2189, -5
  %cmp2191 = icmp eq i32 %and2190, 2
  br i1 %cmp2191, label %land.lhs.true.2193, label %if.else.2214

land.lhs.true.2193:                               ; preds = %if.end.2186
  %1251 = load i64, i64* %map, align 8
  %call2194 = call i64 @AREF(i64 %1251, i64 2)
  %shr2195 = ashr i64 %call2194, 2
  %1252 = load i32, i32* %op, align 4
  %conv2196 = sext i32 %1252 to i64
  %cmp2197 = icmp sle i64 %shr2195, %conv2196
  br i1 %cmp2197, label %land.lhs.true.2199, label %if.else.2214

land.lhs.true.2199:                               ; preds = %land.lhs.true.2193
  %1253 = load i64, i64* %map, align 8
  %call2200 = call i64 @AREF(i64 %1253, i64 3)
  %and2201 = and i64 %call2200, 7
  %conv2202 = trunc i64 %and2201 to i32
  %and2203 = and i32 %conv2202, -5
  %cmp2204 = icmp eq i32 %and2203, 2
  br i1 %cmp2204, label %land.lhs.true.2206, label %if.else.2214

land.lhs.true.2206:                               ; preds = %land.lhs.true.2199
  %1254 = load i32, i32* %op, align 4
  %conv2207 = sext i32 %1254 to i64
  %1255 = load i64, i64* %map, align 8
  %call2208 = call i64 @AREF(i64 %1255, i64 3)
  %shr2209 = ashr i64 %call2208, 2
  %cmp2210 = icmp slt i64 %conv2207, %shr2209
  br i1 %cmp2210, label %if.then.2212, label %if.else.2214

if.then.2212:                                     ; preds = %land.lhs.true.2206
  %1256 = load i64, i64* %map, align 8
  %call2213 = call i64 @AREF(i64 %1256, i64 1)
  store i64 %call2213, i64* %content, align 8
  br label %if.end.2215

if.else.2214:                                     ; preds = %land.lhs.true.2206, %land.lhs.true.2199, %land.lhs.true.2193, %if.end.2186
  br label %for.inc.2341

if.end.2215:                                      ; preds = %if.then.2212
  br label %if.end.2217

if.else.2216:                                     ; preds = %if.else.2178
  br label %for.inc.2341

if.end.2217:                                      ; preds = %if.end.2215
  br label %if.end.2218

if.end.2218:                                      ; preds = %if.end.2217, %if.end.2173
  %1257 = load i64, i64* %content, align 8
  %call2219 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2220 = icmp eq i64 %1257, %call2219
  br i1 %cmp2220, label %if.then.2222, label %if.else.2223

if.then.2222:                                     ; preds = %if.end.2218
  br label %for.inc.2341

if.else.2223:                                     ; preds = %if.end.2218
  %1258 = load i64, i64* %content, align 8
  %and2224 = and i64 %1258, 7
  %conv2225 = trunc i64 %and2224 to i32
  %and2226 = and i32 %conv2225, -5
  %cmp2227 = icmp eq i32 %and2226, 2
  br i1 %cmp2227, label %land.lhs.true.2229, label %if.else.2246

land.lhs.true.2229:                               ; preds = %if.else.2223
  %1259 = load i64, i64* %content, align 8
  %shr2230 = ashr i64 %1259, 2
  %cmp2231 = icmp sle i64 -2147483648, %shr2230
  %conv2232 = zext i1 %cmp2231 to i32
  %1260 = load i64, i64* %content, align 8
  %shr2233 = ashr i64 %1260, 2
  %cmp2234 = icmp sle i64 %shr2233, 2147483647
  %conv2235 = zext i1 %cmp2234 to i32
  %and2236 = and i32 %conv2232, %conv2235
  %tobool2237 = icmp ne i32 %and2236, 0
  br i1 %tobool2237, label %if.then.2238, label %if.else.2246

if.then.2238:                                     ; preds = %land.lhs.true.2229
  %1261 = load i32, i32* %i, align 4
  %1262 = load i32, i32* %field1, align 4
  %and2239 = and i32 %1262, 7
  %idxprom2240 = sext i32 %and2239 to i64
  %1263 = load i32*, i32** %reg, align 8
  %arrayidx2241 = getelementptr inbounds i32, i32* %1263, i64 %idxprom2240
  store i32 %1261, i32* %arrayidx2241, align 4
  %1264 = load i64, i64* %content, align 8
  %shr2242 = ashr i64 %1264, 2
  %conv2243 = trunc i64 %shr2242 to i32
  %1265 = load i32, i32* %field2, align 4
  %idxprom2244 = sext i32 %1265 to i64
  %1266 = load i32*, i32** %reg, align 8
  %arrayidx2245 = getelementptr inbounds i32, i32* %1266, i64 %idxprom2244
  store i32 %conv2243, i32* %arrayidx2245, align 4
  br label %for.end.2343

if.else.2246:                                     ; preds = %land.lhs.true.2229, %if.else.2223
  %1267 = load i64, i64* %content, align 8
  %call2247 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp2248 = icmp eq i64 %1267, %call2247
  br i1 %cmp2248, label %if.then.2254, label %lor.lhs.false.2250

lor.lhs.false.2250:                               ; preds = %if.else.2246
  %1268 = load i64, i64* %content, align 8
  %call2251 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp2252 = icmp eq i64 %1268, %call2251
  br i1 %cmp2252, label %if.then.2254, label %if.else.2258

if.then.2254:                                     ; preds = %lor.lhs.false.2250, %if.else.2246
  %1269 = load i32, i32* %i, align 4
  %1270 = load i32, i32* %field1, align 4
  %and2255 = and i32 %1270, 7
  %idxprom2256 = sext i32 %and2255 to i64
  %1271 = load i32*, i32** %reg, align 8
  %arrayidx2257 = getelementptr inbounds i32, i32* %1271, i64 %idxprom2256
  store i32 %1269, i32* %arrayidx2257, align 4
  br label %for.end.2343

if.else.2258:                                     ; preds = %lor.lhs.false.2250
  %1272 = load i64, i64* %content, align 8
  %and2259 = and i64 %1272, 7
  %conv2260 = trunc i64 %and2259 to i32
  %cmp2261 = icmp eq i32 %conv2260, 3
  br i1 %cmp2261, label %if.then.2263, label %if.else.2297

if.then.2263:                                     ; preds = %if.else.2258
  %1273 = load i64, i64* %content, align 8
  %sub2264 = sub nsw i64 %1273, 3
  %1274 = inttoptr i64 %sub2264 to i8*
  %1275 = bitcast i8* %1274 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1275, i32 0, i32 0
  %1276 = load i64, i64* %car, align 8
  store i64 %1276, i64* %attrib, align 8
  %1277 = load i64, i64* %content, align 8
  %sub2265 = sub nsw i64 %1277, 3
  %1278 = inttoptr i64 %sub2265 to i8*
  %1279 = bitcast i8* %1278 to %struct.Lisp_Cons*
  %u2266 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1279, i32 0, i32 1
  %cdr2267 = bitcast %union.anon* %u2266 to i64*
  %1280 = load i64, i64* %cdr2267, align 8
  store i64 %1280, i64* %value, align 8
  %1281 = load i64, i64* %attrib, align 8
  %and2268 = and i64 %1281, 7
  %conv2269 = trunc i64 %and2268 to i32
  %and2270 = and i32 %conv2269, -5
  %cmp2271 = icmp eq i32 %and2270, 2
  br i1 %cmp2271, label %land.lhs.true.2273, label %if.then.2288

land.lhs.true.2273:                               ; preds = %if.then.2263
  %1282 = load i64, i64* %value, align 8
  %and2274 = and i64 %1282, 7
  %conv2275 = trunc i64 %and2274 to i32
  %and2276 = and i32 %conv2275, -5
  %cmp2277 = icmp eq i32 %and2276, 2
  br i1 %cmp2277, label %land.lhs.true.2279, label %if.then.2288

land.lhs.true.2279:                               ; preds = %land.lhs.true.2273
  %1283 = load i64, i64* %value, align 8
  %shr2280 = ashr i64 %1283, 2
  %cmp2281 = icmp sle i64 -2147483648, %shr2280
  %conv2282 = zext i1 %cmp2281 to i32
  %1284 = load i64, i64* %value, align 8
  %shr2283 = ashr i64 %1284, 2
  %cmp2284 = icmp sle i64 %shr2283, 2147483647
  %conv2285 = zext i1 %cmp2284 to i32
  %and2286 = and i32 %conv2282, %conv2285
  %tobool2287 = icmp ne i32 %and2286, 0
  br i1 %tobool2287, label %if.end.2289, label %if.then.2288

if.then.2288:                                     ; preds = %land.lhs.true.2279, %land.lhs.true.2273, %if.then.2263
  br label %for.inc.2341

if.end.2289:                                      ; preds = %land.lhs.true.2279
  %1285 = load i32, i32* %i, align 4
  %1286 = load i32, i32* %field1, align 4
  %and2290 = and i32 %1286, 7
  %idxprom2291 = sext i32 %and2290 to i64
  %1287 = load i32*, i32** %reg, align 8
  %arrayidx2292 = getelementptr inbounds i32, i32* %1287, i64 %idxprom2291
  store i32 %1285, i32* %arrayidx2292, align 4
  %1288 = load i64, i64* %value, align 8
  %shr2293 = ashr i64 %1288, 2
  %conv2294 = trunc i64 %shr2293 to i32
  %1289 = load i32, i32* %field2, align 4
  %idxprom2295 = sext i32 %1289 to i64
  %1290 = load i32*, i32** %reg, align 8
  %arrayidx2296 = getelementptr inbounds i32, i32* %1290, i64 %idxprom2295
  store i32 %conv2294, i32* %arrayidx2296, align 4
  br label %for.end.2343

if.else.2297:                                     ; preds = %if.else.2258
  %1291 = load i64, i64* %content, align 8
  %and2298 = and i64 %1291, 7
  %conv2299 = trunc i64 %and2298 to i32
  %cmp2300 = icmp eq i32 %conv2299, 0
  br i1 %cmp2300, label %if.then.2302, label %if.else.2332

if.then.2302:                                     ; preds = %if.else.2297
  br label %do.body.2303

do.body.2303:                                     ; preds = %if.then.2302
  %1292 = load i32, i32* %stack_idx, align 4
  %cmp2304 = icmp sge i32 %1292, 256
  br i1 %cmp2304, label %if.then.2308, label %lor.lhs.false.2306

lor.lhs.false.2306:                               ; preds = %do.body.2303
  %1293 = load i64, i64* %content, align 8
  %call2307 = call zeroext i1 @setup_ccl_program(%struct.ccl_program* %called_ccl, i64 %1293)
  br i1 %call2307, label %if.end.2316, label %if.then.2308

if.then.2308:                                     ; preds = %lor.lhs.false.2306, %do.body.2303
  %1294 = load i32, i32* %stack_idx, align 4
  %cmp2309 = icmp sgt i32 %1294, 0
  br i1 %cmp2309, label %if.then.2311, label %if.end.2312

if.then.2311:                                     ; preds = %if.then.2308
  %1295 = load i64*, i64** getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 0), align 8
  store i64* %1295, i64** %ccl_prog, align 8
  %1296 = load i32, i32* getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 1), align 4
  store i32 %1296, i32* %ic, align 4
  %1297 = load i32, i32* getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 2), align 4
  store i32 %1297, i32* %eof_ic, align 4
  br label %if.end.2312

if.end.2312:                                      ; preds = %if.then.2311, %if.then.2308
  br label %do.body.2313

do.body.2313:                                     ; preds = %if.end.2312
  %1298 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2314 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1298, i32 0, i32 6
  store i32 3, i32* %status2314, align 4
  br label %ccl_error_handler

do.end.2315:                                      ; No predecessors!
  br label %if.end.2316

if.end.2316:                                      ; preds = %do.end.2315, %lor.lhs.false.2306
  %1299 = load i64*, i64** %ccl_prog, align 8
  %1300 = load i32, i32* %stack_idx, align 4
  %idxprom2317 = sext i32 %1300 to i64
  %arrayidx2318 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom2317
  %ccl_prog2319 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx2318, i32 0, i32 0
  store i64* %1299, i64** %ccl_prog2319, align 8
  %1301 = load i32, i32* %fin_ic, align 4
  %1302 = load i32, i32* %stack_idx, align 4
  %idxprom2320 = sext i32 %1302 to i64
  %arrayidx2321 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom2320
  %ic2322 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx2321, i32 0, i32 1
  store i32 %1301, i32* %ic2322, align 4
  %1303 = load i32, i32* %eof_ic, align 4
  %1304 = load i32, i32* %stack_idx, align 4
  %idxprom2323 = sext i32 %1304 to i64
  %arrayidx2324 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom2323
  %eof_ic2325 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx2324, i32 0, i32 2
  store i32 %1303, i32* %eof_ic2325, align 4
  %1305 = load i32, i32* %stack_idx, align 4
  %inc2326 = add nsw i32 %1305, 1
  store i32 %inc2326, i32* %stack_idx, align 4
  %prog2327 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %called_ccl, i32 0, i32 2
  %1306 = load i64*, i64** %prog2327, align 8
  store i64* %1306, i64** %ccl_prog, align 8
  store i32 2, i32* %ic, align 4
  %1307 = load i64*, i64** %ccl_prog, align 8
  %arrayidx2328 = getelementptr inbounds i64, i64* %1307, i64 1
  %1308 = load i64, i64* %arrayidx2328, align 8
  %shr2329 = ashr i64 %1308, 2
  %conv2330 = trunc i64 %shr2329 to i32
  store i32 %conv2330, i32* %eof_ic, align 4
  br label %ccl_repeat

do.end.2331:                                      ; No predecessors!
  br label %if.end.2336

if.else.2332:                                     ; preds = %if.else.2297
  br label %do.body.2333

do.body.2333:                                     ; preds = %if.else.2332
  %1309 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2334 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1309, i32 0, i32 6
  store i32 3, i32* %status2334, align 4
  br label %ccl_error_handler

do.end.2335:                                      ; No predecessors!
  br label %if.end.2336

if.end.2336:                                      ; preds = %do.end.2335, %do.end.2331
  br label %if.end.2337

if.end.2337:                                      ; preds = %if.end.2336
  br label %if.end.2338

if.end.2338:                                      ; preds = %if.end.2337
  br label %if.end.2339

if.end.2339:                                      ; preds = %if.end.2338
  br label %if.end.2340

if.end.2340:                                      ; preds = %if.end.2339
  br label %for.inc.2341

for.inc.2341:                                     ; preds = %if.end.2340, %if.then.2288, %if.then.2222, %if.else.2216, %if.else.2214, %if.then.2185, %if.then.2172, %if.then.2153, %if.then.2148, %if.then.2142, %if.then.2135, %if.then.2123
  %1310 = load i32, i32* %i, align 4
  %inc2342 = add nsw i32 %1310, 1
  store i32 %inc2342, i32* %i, align 4
  br label %for.cond.2118

for.end.2343:                                     ; preds = %if.end.2289, %if.then.2254, %if.then.2238, %for.cond.2118
  %1311 = load i32, i32* %i, align 4
  %1312 = load i32, i32* %j, align 4
  %cmp2344 = icmp eq i32 %1311, %1312
  br i1 %cmp2344, label %if.then.2346, label %if.end.2350

if.then.2346:                                     ; preds = %for.end.2343
  %1313 = load i32, i32* %field1, align 4
  %and2347 = and i32 %1313, 7
  %idxprom2348 = sext i32 %and2347 to i64
  %1314 = load i32*, i32** %reg, align 8
  %arrayidx2349 = getelementptr inbounds i32, i32* %1314, i64 %idxprom2348
  store i32 -1, i32* %arrayidx2349, align 4
  br label %if.end.2350

if.end.2350:                                      ; preds = %if.then.2346, %for.end.2343
  %1315 = load i32, i32* %fin_ic, align 4
  store i32 %1315, i32* %ic, align 4
  br label %sw.epilog.2981

sw.bb.2351:                                       ; preds = %sw.bb.1218
  %1316 = load i32, i32* %this_ic, align 4
  store i32 %1316, i32* %current_ic, align 4
  %1317 = load i32, i32* @stack_idx_of_map_multiple, align 4
  %cmp2359 = icmp sgt i32 %1317, 0
  br i1 %cmp2359, label %if.then.2361, label %if.else.2369

if.then.2361:                                     ; preds = %sw.bb.2351
  %1318 = load i32, i32* @stack_idx_of_map_multiple, align 4
  %1319 = load i32, i32* %stack_idx, align 4
  %cmp2362 = icmp sle i32 %1318, %1319
  br i1 %cmp2362, label %if.then.2364, label %if.end.2368

if.then.2364:                                     ; preds = %if.then.2361
  store i32 0, i32* @stack_idx_of_map_multiple, align 4
  store %struct.tr_stack* getelementptr inbounds ([30 x %struct.tr_stack], [30 x %struct.tr_stack]* @mapping_stack, i32 0, i32 0), %struct.tr_stack** @mapping_stack_pointer, align 8
  br label %do.body.2365

do.body.2365:                                     ; preds = %if.then.2364
  %1320 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2366 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1320, i32 0, i32 6
  store i32 3, i32* %status2366, align 4
  br label %ccl_error_handler

do.end.2367:                                      ; No predecessors!
  br label %if.end.2368

if.end.2368:                                      ; preds = %do.end.2367, %if.then.2361
  br label %if.end.2370

if.else.2369:                                     ; preds = %sw.bb.2351
  store %struct.tr_stack* getelementptr inbounds ([30 x %struct.tr_stack], [30 x %struct.tr_stack]* @mapping_stack, i32 0, i32 0), %struct.tr_stack** @mapping_stack_pointer, align 8
  br label %if.end.2370

if.end.2370:                                      ; preds = %if.else.2369, %if.end.2368
  store i32 0, i32* @stack_idx_of_map_multiple, align 4
  %1321 = load i32, i32* %ic, align 4
  %inc2371 = add nsw i32 %1321, 1
  store i32 %inc2371, i32* %ic, align 4
  %idxprom2372 = sext i32 %1321 to i64
  %1322 = load i64*, i64** %ccl_prog, align 8
  %arrayidx2373 = getelementptr inbounds i64, i64* %1322, i64 %idxprom2372
  %1323 = load i64, i64* %arrayidx2373, align 8
  %shr2374 = ashr i64 %1323, 2
  %conv2375 = trunc i64 %shr2374 to i32
  store i32 %conv2375, i32* %map_set_rest_length, align 4
  %1324 = load i32, i32* %ic, align 4
  %1325 = load i32, i32* %map_set_rest_length, align 4
  %add2376 = add nsw i32 %1324, %1325
  store i32 %add2376, i32* %fin_ic2358, align 4
  %1326 = load i32, i32* %field2, align 4
  %idxprom2377 = sext i32 %1326 to i64
  %1327 = load i32*, i32** %reg, align 8
  %arrayidx2378 = getelementptr inbounds i32, i32* %1327, i64 %idxprom2377
  %1328 = load i32, i32* %arrayidx2378, align 4
  store i32 %1328, i32* %op, align 4
  %1329 = load i32, i32* %map_set_rest_length, align 4
  %1330 = load i32, i32* %field1, align 4
  %and2379 = and i32 %1330, 7
  %idxprom2380 = sext i32 %and2379 to i64
  %1331 = load i32*, i32** %reg, align 8
  %arrayidx2381 = getelementptr inbounds i32, i32* %1331, i64 %idxprom2380
  %1332 = load i32, i32* %arrayidx2381, align 4
  %cmp2382 = icmp sgt i32 %1329, %1332
  br i1 %cmp2382, label %land.lhs.true.2384, label %if.else.2399

land.lhs.true.2384:                               ; preds = %if.end.2370
  %1333 = load i32, i32* %field1, align 4
  %and2385 = and i32 %1333, 7
  %idxprom2386 = sext i32 %and2385 to i64
  %1334 = load i32*, i32** %reg, align 8
  %arrayidx2387 = getelementptr inbounds i32, i32* %1334, i64 %idxprom2386
  %1335 = load i32, i32* %arrayidx2387, align 4
  %cmp2388 = icmp sge i32 %1335, 0
  br i1 %cmp2388, label %if.then.2390, label %if.else.2399

if.then.2390:                                     ; preds = %land.lhs.true.2384
  %1336 = load i32, i32* %field1, align 4
  %and2391 = and i32 %1336, 7
  %idxprom2392 = sext i32 %and2391 to i64
  %1337 = load i32*, i32** %reg, align 8
  %arrayidx2393 = getelementptr inbounds i32, i32* %1337, i64 %idxprom2392
  %1338 = load i32, i32* %arrayidx2393, align 4
  %1339 = load i32, i32* %ic, align 4
  %add2394 = add nsw i32 %1339, %1338
  store i32 %add2394, i32* %ic, align 4
  %1340 = load i32, i32* %field1, align 4
  %and2395 = and i32 %1340, 7
  %idxprom2396 = sext i32 %and2395 to i64
  %1341 = load i32*, i32** %reg, align 8
  %arrayidx2397 = getelementptr inbounds i32, i32* %1341, i64 %idxprom2396
  %1342 = load i32, i32* %arrayidx2397, align 4
  store i32 %1342, i32* %i, align 4
  %1343 = load i32, i32* %i, align 4
  %1344 = load i32, i32* %map_set_rest_length, align 4
  %sub2398 = sub nsw i32 %1344, %1343
  store i32 %sub2398, i32* %map_set_rest_length, align 4
  br label %if.end.2403

if.else.2399:                                     ; preds = %land.lhs.true.2384, %if.end.2370
  %1345 = load i32, i32* %fin_ic2358, align 4
  store i32 %1345, i32* %ic, align 4
  %1346 = load i32, i32* %field1, align 4
  %and2400 = and i32 %1346, 7
  %idxprom2401 = sext i32 %and2400 to i64
  %1347 = load i32*, i32** %reg, align 8
  %arrayidx2402 = getelementptr inbounds i32, i32* %1347, i64 %idxprom2401
  store i32 -1, i32* %arrayidx2402, align 4
  store %struct.tr_stack* getelementptr inbounds ([30 x %struct.tr_stack], [30 x %struct.tr_stack]* @mapping_stack, i32 0, i32 0), %struct.tr_stack** @mapping_stack_pointer, align 8
  br label %sw.epilog.2981

if.end.2403:                                      ; preds = %if.then.2390
  %1348 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %cmp2404 = icmp ule %struct.tr_stack* %1348, getelementptr inbounds ([30 x %struct.tr_stack], [30 x %struct.tr_stack]* @mapping_stack, i32 0, i64 1)
  br i1 %cmp2404, label %if.then.2406, label %if.else.2413

if.then.2406:                                     ; preds = %if.end.2403
  store %struct.tr_stack* getelementptr inbounds ([30 x %struct.tr_stack], [30 x %struct.tr_stack]* @mapping_stack, i32 0, i32 0), %struct.tr_stack** @mapping_stack_pointer, align 8
  br label %do.body.2407

do.body.2407:                                     ; preds = %if.then.2406
  %1349 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1349, i32 0, i32 0
  store i32 0, i32* %rest_length, align 4
  %1350 = load i32, i32* %op, align 4
  %1351 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1351, i32 0, i32 1
  store i32 %1350, i32* %orig_val, align 4
  %1352 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2408 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1352, i32 1
  store %struct.tr_stack* %incdec.ptr2408, %struct.tr_stack** @mapping_stack_pointer, align 8
  br label %do.end.2409

do.end.2409:                                      ; preds = %do.body.2407
  %1353 = load i32, i32* %field1, align 4
  %and2410 = and i32 %1353, 7
  %idxprom2411 = sext i32 %and2410 to i64
  %1354 = load i32*, i32** %reg, align 8
  %arrayidx2412 = getelementptr inbounds i32, i32* %1354, i64 %idxprom2411
  store i32 -1, i32* %arrayidx2412, align 4
  br label %if.end.2450

if.else.2413:                                     ; preds = %if.end.2403
  br label %do.body.2414

do.body.2414:                                     ; preds = %if.else.2413
  %1355 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2415 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1355, i32 -1
  store %struct.tr_stack* %incdec.ptr2415, %struct.tr_stack** @mapping_stack_pointer, align 8
  %1356 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2416 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1356, i32 0, i32 0
  %1357 = load i32, i32* %rest_length2416, align 4
  store i32 %1357, i32* %map_set_rest_length, align 4
  %1358 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2417 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1358, i32 0, i32 1
  %1359 = load i32, i32* %orig_val2417, align 4
  store i32 %1359, i32* %orig_op, align 4
  br label %do.end.2418

do.end.2418:                                      ; preds = %do.body.2414
  br label %do.body.2419

do.body.2419:                                     ; preds = %do.end.2418
  %1360 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2420 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1360, i32 -1
  store %struct.tr_stack* %incdec.ptr2420, %struct.tr_stack** @mapping_stack_pointer, align 8
  %1361 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2421 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1361, i32 0, i32 0
  %1362 = load i32, i32* %rest_length2421, align 4
  store i32 %1362, i32* %map_set_rest_length, align 4
  %1363 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2422 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1363, i32 0, i32 1
  %1364 = load i32, i32* %orig_val2422, align 4
  %1365 = load i32, i32* %field2, align 4
  %idxprom2423 = sext i32 %1365 to i64
  %1366 = load i32*, i32** %reg, align 8
  %arrayidx2424 = getelementptr inbounds i32, i32* %1366, i64 %idxprom2423
  store i32 %1364, i32* %arrayidx2424, align 4
  br label %do.end.2425

do.end.2425:                                      ; preds = %do.body.2419
  %1367 = load i32, i32* %op, align 4
  switch i32 %1367, label %sw.default.2439 [
    i32 -1, label %sw.bb.2426
    i32 -2, label %sw.bb.2430
    i32 -3, label %sw.bb.2436
  ]

sw.bb.2426:                                       ; preds = %do.end.2425
  %1368 = load i32, i32* %orig_op, align 4
  store i32 %1368, i32* %op, align 4
  %1369 = load i32, i32* %i, align 4
  %inc2427 = add nsw i32 %1369, 1
  store i32 %inc2427, i32* %i, align 4
  %1370 = load i32, i32* %ic, align 4
  %inc2428 = add nsw i32 %1370, 1
  store i32 %inc2428, i32* %ic, align 4
  %1371 = load i32, i32* %map_set_rest_length, align 4
  %dec2429 = add nsw i32 %1371, -1
  store i32 %dec2429, i32* %map_set_rest_length, align 4
  br label %sw.epilog.2449

sw.bb.2430:                                       ; preds = %do.end.2425
  %1372 = load i32, i32* %field2, align 4
  %idxprom2431 = sext i32 %1372 to i64
  %1373 = load i32*, i32** %reg, align 8
  %arrayidx2432 = getelementptr inbounds i32, i32* %1373, i64 %idxprom2431
  %1374 = load i32, i32* %arrayidx2432, align 4
  store i32 %1374, i32* %op, align 4
  %1375 = load i32, i32* %i, align 4
  %inc2433 = add nsw i32 %1375, 1
  store i32 %inc2433, i32* %i, align 4
  %1376 = load i32, i32* %ic, align 4
  %inc2434 = add nsw i32 %1376, 1
  store i32 %inc2434, i32* %ic, align 4
  %1377 = load i32, i32* %map_set_rest_length, align 4
  %dec2435 = add nsw i32 %1377, -1
  store i32 %dec2435, i32* %map_set_rest_length, align 4
  br label %sw.epilog.2449

sw.bb.2436:                                       ; preds = %do.end.2425
  %1378 = load i32, i32* %orig_op, align 4
  store i32 %1378, i32* %op, align 4
  %1379 = load i32, i32* %map_set_rest_length, align 4
  %1380 = load i32, i32* %i, align 4
  %add2437 = add nsw i32 %1380, %1379
  store i32 %add2437, i32* %i, align 4
  %1381 = load i32, i32* %map_set_rest_length, align 4
  %1382 = load i32, i32* %ic, align 4
  %add2438 = add nsw i32 %1382, %1381
  store i32 %add2438, i32* %ic, align 4
  store i32 0, i32* %map_set_rest_length, align 4
  br label %sw.epilog.2449

sw.default.2439:                                  ; preds = %do.end.2425
  %1383 = load i32, i32* %map_set_rest_length, align 4
  %1384 = load i32, i32* %i, align 4
  %add2440 = add nsw i32 %1384, %1383
  store i32 %add2440, i32* %i, align 4
  %1385 = load i32, i32* %map_set_rest_length, align 4
  %1386 = load i32, i32* %ic, align 4
  %add2441 = add nsw i32 %1386, %1385
  store i32 %add2441, i32* %ic, align 4
  br label %do.body.2442

do.body.2442:                                     ; preds = %sw.default.2439
  %1387 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2443 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1387, i32 -1
  store %struct.tr_stack* %incdec.ptr2443, %struct.tr_stack** @mapping_stack_pointer, align 8
  %1388 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2444 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1388, i32 0, i32 0
  %1389 = load i32, i32* %rest_length2444, align 4
  store i32 %1389, i32* %map_set_rest_length, align 4
  %1390 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2445 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1390, i32 0, i32 1
  %1391 = load i32, i32* %orig_val2445, align 4
  %1392 = load i32, i32* %field2, align 4
  %idxprom2446 = sext i32 %1392 to i64
  %1393 = load i32*, i32** %reg, align 8
  %arrayidx2447 = getelementptr inbounds i32, i32* %1393, i64 %idxprom2446
  store i32 %1391, i32* %arrayidx2447, align 4
  br label %do.end.2448

do.end.2448:                                      ; preds = %do.body.2442
  br label %sw.epilog.2449

sw.epilog.2449:                                   ; preds = %do.end.2448, %sw.bb.2436, %sw.bb.2430, %sw.bb.2426
  br label %if.end.2450

if.end.2450:                                      ; preds = %sw.epilog.2449, %do.end.2409
  %1394 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %call2451 = call zeroext i1 @VECTORP(i64 %1394)
  br i1 %call2451, label %if.end.2456, label %if.then.2452

if.then.2452:                                     ; preds = %if.end.2450
  br label %do.body.2453

do.body.2453:                                     ; preds = %if.then.2452
  %1395 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2454 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1395, i32 0, i32 6
  store i32 3, i32* %status2454, align 4
  br label %ccl_error_handler

do.end.2455:                                      ; No predecessors!
  br label %if.end.2456

if.end.2456:                                      ; preds = %do.end.2455, %if.end.2450
  %1396 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %call2457 = call i64 @ASIZE(i64 %1396)
  store i64 %call2457, i64* %map_vector_size, align 8
  br label %do.body.2458

do.body.2458:                                     ; preds = %do.cond, %if.end.2456
  br label %for.cond.2459

for.cond.2459:                                    ; preds = %for.inc.2741, %do.body.2458
  %1397 = load i32, i32* %map_set_rest_length, align 4
  %cmp2460 = icmp sgt i32 %1397, 0
  br i1 %cmp2460, label %for.body.2462, label %for.end.2745

for.body.2462:                                    ; preds = %for.cond.2459
  %1398 = load i32, i32* %ic, align 4
  %idxprom2463 = sext i32 %1398 to i64
  %1399 = load i64*, i64** %ccl_prog, align 8
  %arrayidx2464 = getelementptr inbounds i64, i64* %1399, i64 %idxprom2463
  %1400 = load i64, i64* %arrayidx2464, align 8
  %shr2465 = ashr i64 %1400, 2
  store i64 %shr2465, i64* %point2356, align 8
  %1401 = load i64, i64* %point2356, align 8
  %cmp2466 = icmp slt i64 %1401, 0
  br i1 %cmp2466, label %if.then.2468, label %if.end.2491

if.then.2468:                                     ; preds = %for.body.2462
  %1402 = load i64, i64* %point2356, align 8
  %sub2469 = sub nsw i64 0, %1402
  %add2470 = add nsw i64 %sub2469, 1
  store i64 %add2470, i64* %point2356, align 8
  %1403 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %cmp2471 = icmp uge %struct.tr_stack* %1403, getelementptr inbounds ([30 x %struct.tr_stack], [30 x %struct.tr_stack]* @mapping_stack, i64 1, i64 0)
  br i1 %cmp2471, label %if.then.2473, label %if.end.2477

if.then.2473:                                     ; preds = %if.then.2468
  br label %do.body.2474

do.body.2474:                                     ; preds = %if.then.2473
  %1404 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2475 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1404, i32 0, i32 6
  store i32 3, i32* %status2475, align 4
  br label %ccl_error_handler

do.end.2476:                                      ; No predecessors!
  br label %if.end.2477

if.end.2477:                                      ; preds = %do.end.2476, %if.then.2468
  br label %do.body.2478

do.body.2478:                                     ; preds = %if.end.2477
  %1405 = load i32, i32* %map_set_rest_length, align 4
  %conv2479 = sext i32 %1405 to i64
  %1406 = load i64, i64* %point2356, align 8
  %sub2480 = sub nsw i64 %conv2479, %1406
  %conv2481 = trunc i64 %sub2480 to i32
  %1407 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2482 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1407, i32 0, i32 0
  store i32 %conv2481, i32* %rest_length2482, align 4
  %1408 = load i32, i32* %field2, align 4
  %idxprom2483 = sext i32 %1408 to i64
  %1409 = load i32*, i32** %reg, align 8
  %arrayidx2484 = getelementptr inbounds i32, i32* %1409, i64 %idxprom2483
  %1410 = load i32, i32* %arrayidx2484, align 4
  %1411 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2485 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1411, i32 0, i32 1
  store i32 %1410, i32* %orig_val2485, align 4
  %1412 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2486 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1412, i32 1
  store %struct.tr_stack* %incdec.ptr2486, %struct.tr_stack** @mapping_stack_pointer, align 8
  br label %do.end.2487

do.end.2487:                                      ; preds = %do.body.2478
  %1413 = load i64, i64* %point2356, align 8
  %conv2488 = trunc i64 %1413 to i32
  store i32 %conv2488, i32* %map_set_rest_length, align 4
  %1414 = load i32, i32* %op, align 4
  %1415 = load i32, i32* %field2, align 4
  %idxprom2489 = sext i32 %1415 to i64
  %1416 = load i32*, i32** %reg, align 8
  %arrayidx2490 = getelementptr inbounds i32, i32* %1416, i64 %idxprom2489
  store i32 %1414, i32* %arrayidx2490, align 4
  br label %for.inc.2741

if.end.2491:                                      ; preds = %for.body.2462
  %1417 = load i64, i64* %point2356, align 8
  %1418 = load i64, i64* %map_vector_size, align 8
  %cmp2492 = icmp sge i64 %1417, %1418
  br i1 %cmp2492, label %if.then.2494, label %if.end.2495

if.then.2494:                                     ; preds = %if.end.2491
  br label %for.inc.2741

if.end.2495:                                      ; preds = %if.end.2491
  %1419 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %1420 = load i64, i64* %point2356, align 8
  %call2496 = call i64 @AREF(i64 %1419, i64 %1420)
  store i64 %call2496, i64* %map2352, align 8
  %1421 = load i64, i64* %map2352, align 8
  %and2497 = and i64 %1421, 7
  %conv2498 = trunc i64 %and2497 to i32
  %cmp2499 = icmp eq i32 %conv2498, 3
  br i1 %cmp2499, label %if.end.2502, label %if.then.2501

if.then.2501:                                     ; preds = %if.end.2495
  br label %for.inc.2741

if.end.2502:                                      ; preds = %if.end.2495
  %1422 = load i64, i64* %map2352, align 8
  %sub2503 = sub nsw i64 %1422, 3
  %1423 = inttoptr i64 %sub2503 to i8*
  %1424 = bitcast i8* %1423 to %struct.Lisp_Cons*
  %u2504 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1424, i32 0, i32 1
  %cdr2505 = bitcast %union.anon* %u2504 to i64*
  %1425 = load i64, i64* %cdr2505, align 8
  store i64 %1425, i64* %map2352, align 8
  %1426 = load i64, i64* %map2352, align 8
  %call2506 = call zeroext i1 @VECTORP(i64 %1426)
  br i1 %call2506, label %if.end.2508, label %if.then.2507

if.then.2507:                                     ; preds = %if.end.2502
  br label %for.inc.2741

if.end.2508:                                      ; preds = %if.end.2502
  %1427 = load i64, i64* %map2352, align 8
  %call2509 = call i64 @ASIZE(i64 %1427)
  store i64 %call2509, i64* %size2357, align 8
  %1428 = load i64, i64* %size2357, align 8
  %cmp2510 = icmp sle i64 %1428, 1
  br i1 %cmp2510, label %if.then.2512, label %if.end.2513

if.then.2512:                                     ; preds = %if.end.2508
  br label %for.inc.2741

if.end.2513:                                      ; preds = %if.end.2508
  %1429 = load i64, i64* %map2352, align 8
  %call2514 = call i64 @AREF(i64 %1429, i64 0)
  store i64 %call2514, i64* %content2353, align 8
  %1430 = load i64, i64* %content2353, align 8
  %and2515 = and i64 %1430, 7
  %conv2516 = trunc i64 %and2515 to i32
  %and2517 = and i32 %conv2516, -5
  %cmp2518 = icmp eq i32 %and2517, 2
  br i1 %cmp2518, label %if.then.2520, label %if.else.2537

if.then.2520:                                     ; preds = %if.end.2513
  %1431 = load i64, i64* %content2353, align 8
  %shr2521 = ashr i64 %1431, 2
  store i64 %shr2521, i64* %point2356, align 8
  %1432 = load i64, i64* %point2356, align 8
  %1433 = load i32, i32* %op, align 4
  %conv2522 = sext i32 %1433 to i64
  %cmp2523 = icmp sle i64 %1432, %conv2522
  br i1 %cmp2523, label %land.lhs.true.2525, label %if.then.2531

land.lhs.true.2525:                               ; preds = %if.then.2520
  %1434 = load i32, i32* %op, align 4
  %conv2526 = sext i32 %1434 to i64
  %1435 = load i64, i64* %point2356, align 8
  %sub2527 = sub nsw i64 %conv2526, %1435
  %add2528 = add nsw i64 %sub2527, 1
  %1436 = load i64, i64* %size2357, align 8
  %cmp2529 = icmp slt i64 %add2528, %1436
  br i1 %cmp2529, label %if.end.2532, label %if.then.2531

if.then.2531:                                     ; preds = %land.lhs.true.2525, %if.then.2520
  br label %for.inc.2741

if.end.2532:                                      ; preds = %land.lhs.true.2525
  %1437 = load i64, i64* %map2352, align 8
  %1438 = load i32, i32* %op, align 4
  %conv2533 = sext i32 %1438 to i64
  %1439 = load i64, i64* %point2356, align 8
  %sub2534 = sub nsw i64 %conv2533, %1439
  %add2535 = add nsw i64 %sub2534, 1
  %call2536 = call i64 @AREF(i64 %1437, i64 %add2535)
  store i64 %call2536, i64* %content2353, align 8
  br label %if.end.2577

if.else.2537:                                     ; preds = %if.end.2513
  %1440 = load i64, i64* %content2353, align 8
  %call2538 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp2539 = icmp eq i64 %1440, %call2538
  br i1 %cmp2539, label %if.then.2541, label %if.else.2575

if.then.2541:                                     ; preds = %if.else.2537
  %1441 = load i64, i64* %size2357, align 8
  %cmp2542 = icmp ne i64 %1441, 4
  br i1 %cmp2542, label %if.then.2544, label %if.end.2545

if.then.2544:                                     ; preds = %if.then.2541
  br label %for.inc.2741

if.end.2545:                                      ; preds = %if.then.2541
  %1442 = load i64, i64* %map2352, align 8
  %call2546 = call i64 @AREF(i64 %1442, i64 2)
  %and2547 = and i64 %call2546, 7
  %conv2548 = trunc i64 %and2547 to i32
  %and2549 = and i32 %conv2548, -5
  %cmp2550 = icmp eq i32 %and2549, 2
  br i1 %cmp2550, label %land.lhs.true.2552, label %if.else.2573

land.lhs.true.2552:                               ; preds = %if.end.2545
  %1443 = load i64, i64* %map2352, align 8
  %call2553 = call i64 @AREF(i64 %1443, i64 2)
  %shr2554 = ashr i64 %call2553, 2
  %1444 = load i32, i32* %op, align 4
  %conv2555 = sext i32 %1444 to i64
  %cmp2556 = icmp sle i64 %shr2554, %conv2555
  br i1 %cmp2556, label %land.lhs.true.2558, label %if.else.2573

land.lhs.true.2558:                               ; preds = %land.lhs.true.2552
  %1445 = load i64, i64* %map2352, align 8
  %call2559 = call i64 @AREF(i64 %1445, i64 3)
  %and2560 = and i64 %call2559, 7
  %conv2561 = trunc i64 %and2560 to i32
  %and2562 = and i32 %conv2561, -5
  %cmp2563 = icmp eq i32 %and2562, 2
  br i1 %cmp2563, label %land.lhs.true.2565, label %if.else.2573

land.lhs.true.2565:                               ; preds = %land.lhs.true.2558
  %1446 = load i32, i32* %op, align 4
  %conv2566 = sext i32 %1446 to i64
  %1447 = load i64, i64* %map2352, align 8
  %call2567 = call i64 @AREF(i64 %1447, i64 3)
  %shr2568 = ashr i64 %call2567, 2
  %cmp2569 = icmp slt i64 %conv2566, %shr2568
  br i1 %cmp2569, label %if.then.2571, label %if.else.2573

if.then.2571:                                     ; preds = %land.lhs.true.2565
  %1448 = load i64, i64* %map2352, align 8
  %call2572 = call i64 @AREF(i64 %1448, i64 1)
  store i64 %call2572, i64* %content2353, align 8
  br label %if.end.2574

if.else.2573:                                     ; preds = %land.lhs.true.2565, %land.lhs.true.2558, %land.lhs.true.2552, %if.end.2545
  br label %for.inc.2741

if.end.2574:                                      ; preds = %if.then.2571
  br label %if.end.2576

if.else.2575:                                     ; preds = %if.else.2537
  br label %for.inc.2741

if.end.2576:                                      ; preds = %if.end.2574
  br label %if.end.2577

if.end.2577:                                      ; preds = %if.end.2576, %if.end.2532
  %1449 = load i64, i64* %content2353, align 8
  %call2578 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2579 = icmp eq i64 %1449, %call2578
  br i1 %cmp2579, label %if.then.2581, label %if.end.2582

if.then.2581:                                     ; preds = %if.end.2577
  br label %for.inc.2741

if.end.2582:                                      ; preds = %if.end.2577
  %1450 = load i32, i32* %i, align 4
  %1451 = load i32, i32* %field1, align 4
  %and2583 = and i32 %1451, 7
  %idxprom2584 = sext i32 %and2583 to i64
  %1452 = load i32*, i32** %reg, align 8
  %arrayidx2585 = getelementptr inbounds i32, i32* %1452, i64 %idxprom2584
  store i32 %1450, i32* %arrayidx2585, align 4
  %1453 = load i64, i64* %content2353, align 8
  %and2586 = and i64 %1453, 7
  %conv2587 = trunc i64 %and2586 to i32
  %and2588 = and i32 %conv2587, -5
  %cmp2589 = icmp eq i32 %and2588, 2
  br i1 %cmp2589, label %land.lhs.true.2591, label %if.else.2615

land.lhs.true.2591:                               ; preds = %if.end.2582
  %1454 = load i64, i64* %content2353, align 8
  %shr2592 = ashr i64 %1454, 2
  %cmp2593 = icmp sle i64 -2147483648, %shr2592
  %conv2594 = zext i1 %cmp2593 to i32
  %1455 = load i64, i64* %content2353, align 8
  %shr2595 = ashr i64 %1455, 2
  %cmp2596 = icmp sle i64 %shr2595, 2147483647
  %conv2597 = zext i1 %cmp2596 to i32
  %and2598 = and i32 %conv2594, %conv2597
  %tobool2599 = icmp ne i32 %and2598, 0
  br i1 %tobool2599, label %if.then.2600, label %if.else.2615

if.then.2600:                                     ; preds = %land.lhs.true.2591
  %1456 = load i64, i64* %content2353, align 8
  %shr2601 = ashr i64 %1456, 2
  %conv2602 = trunc i64 %shr2601 to i32
  store i32 %conv2602, i32* %op, align 4
  %1457 = load i32, i32* %map_set_rest_length, align 4
  %sub2603 = sub nsw i32 %1457, 1
  %1458 = load i32, i32* %i, align 4
  %add2604 = add nsw i32 %1458, %sub2603
  store i32 %add2604, i32* %i, align 4
  %1459 = load i32, i32* %map_set_rest_length, align 4
  %sub2605 = sub nsw i32 %1459, 1
  %1460 = load i32, i32* %ic, align 4
  %add2606 = add nsw i32 %1460, %sub2605
  store i32 %add2606, i32* %ic, align 4
  br label %do.body.2607

do.body.2607:                                     ; preds = %if.then.2600
  %1461 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2608 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1461, i32 -1
  store %struct.tr_stack* %incdec.ptr2608, %struct.tr_stack** @mapping_stack_pointer, align 8
  %1462 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2609 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1462, i32 0, i32 0
  %1463 = load i32, i32* %rest_length2609, align 4
  store i32 %1463, i32* %map_set_rest_length, align 4
  %1464 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2610 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1464, i32 0, i32 1
  %1465 = load i32, i32* %orig_val2610, align 4
  %1466 = load i32, i32* %field2, align 4
  %idxprom2611 = sext i32 %1466 to i64
  %1467 = load i32*, i32** %reg, align 8
  %arrayidx2612 = getelementptr inbounds i32, i32* %1467, i64 %idxprom2611
  store i32 %1465, i32* %arrayidx2612, align 4
  br label %do.end.2613

do.end.2613:                                      ; preds = %do.body.2607
  %1468 = load i32, i32* %map_set_rest_length, align 4
  %inc2614 = add nsw i32 %1468, 1
  store i32 %inc2614, i32* %map_set_rest_length, align 4
  br label %if.end.2740

if.else.2615:                                     ; preds = %land.lhs.true.2591, %if.end.2582
  %1469 = load i64, i64* %content2353, align 8
  %and2616 = and i64 %1469, 7
  %conv2617 = trunc i64 %and2616 to i32
  %cmp2618 = icmp eq i32 %conv2617, 3
  br i1 %cmp2618, label %if.then.2620, label %if.else.2662

if.then.2620:                                     ; preds = %if.else.2615
  %1470 = load i64, i64* %content2353, align 8
  %sub2621 = sub nsw i64 %1470, 3
  %1471 = inttoptr i64 %sub2621 to i8*
  %1472 = bitcast i8* %1471 to %struct.Lisp_Cons*
  %car2622 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1472, i32 0, i32 0
  %1473 = load i64, i64* %car2622, align 8
  store i64 %1473, i64* %attrib2354, align 8
  %1474 = load i64, i64* %content2353, align 8
  %sub2623 = sub nsw i64 %1474, 3
  %1475 = inttoptr i64 %sub2623 to i8*
  %1476 = bitcast i8* %1475 to %struct.Lisp_Cons*
  %u2624 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1476, i32 0, i32 1
  %cdr2625 = bitcast %union.anon* %u2624 to i64*
  %1477 = load i64, i64* %cdr2625, align 8
  store i64 %1477, i64* %value2355, align 8
  %1478 = load i64, i64* %attrib2354, align 8
  %and2626 = and i64 %1478, 7
  %conv2627 = trunc i64 %and2626 to i32
  %and2628 = and i32 %conv2627, -5
  %cmp2629 = icmp eq i32 %and2628, 2
  br i1 %cmp2629, label %land.lhs.true.2631, label %if.then.2646

land.lhs.true.2631:                               ; preds = %if.then.2620
  %1479 = load i64, i64* %value2355, align 8
  %and2632 = and i64 %1479, 7
  %conv2633 = trunc i64 %and2632 to i32
  %and2634 = and i32 %conv2633, -5
  %cmp2635 = icmp eq i32 %and2634, 2
  br i1 %cmp2635, label %land.lhs.true.2637, label %if.then.2646

land.lhs.true.2637:                               ; preds = %land.lhs.true.2631
  %1480 = load i64, i64* %value2355, align 8
  %shr2638 = ashr i64 %1480, 2
  %cmp2639 = icmp sle i64 -2147483648, %shr2638
  %conv2640 = zext i1 %cmp2639 to i32
  %1481 = load i64, i64* %value2355, align 8
  %shr2641 = ashr i64 %1481, 2
  %cmp2642 = icmp sle i64 %shr2641, 2147483647
  %conv2643 = zext i1 %cmp2642 to i32
  %and2644 = and i32 %conv2640, %conv2643
  %tobool2645 = icmp ne i32 %and2644, 0
  br i1 %tobool2645, label %if.end.2647, label %if.then.2646

if.then.2646:                                     ; preds = %land.lhs.true.2637, %land.lhs.true.2631, %if.then.2620
  br label %for.inc.2741

if.end.2647:                                      ; preds = %land.lhs.true.2637
  %1482 = load i64, i64* %value2355, align 8
  %shr2648 = ashr i64 %1482, 2
  %conv2649 = trunc i64 %shr2648 to i32
  store i32 %conv2649, i32* %op, align 4
  %1483 = load i32, i32* %map_set_rest_length, align 4
  %sub2650 = sub nsw i32 %1483, 1
  %1484 = load i32, i32* %i, align 4
  %add2651 = add nsw i32 %1484, %sub2650
  store i32 %add2651, i32* %i, align 4
  %1485 = load i32, i32* %map_set_rest_length, align 4
  %sub2652 = sub nsw i32 %1485, 1
  %1486 = load i32, i32* %ic, align 4
  %add2653 = add nsw i32 %1486, %sub2652
  store i32 %add2653, i32* %ic, align 4
  br label %do.body.2654

do.body.2654:                                     ; preds = %if.end.2647
  %1487 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2655 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1487, i32 -1
  store %struct.tr_stack* %incdec.ptr2655, %struct.tr_stack** @mapping_stack_pointer, align 8
  %1488 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2656 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1488, i32 0, i32 0
  %1489 = load i32, i32* %rest_length2656, align 4
  store i32 %1489, i32* %map_set_rest_length, align 4
  %1490 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2657 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1490, i32 0, i32 1
  %1491 = load i32, i32* %orig_val2657, align 4
  %1492 = load i32, i32* %field2, align 4
  %idxprom2658 = sext i32 %1492 to i64
  %1493 = load i32*, i32** %reg, align 8
  %arrayidx2659 = getelementptr inbounds i32, i32* %1493, i64 %idxprom2658
  store i32 %1491, i32* %arrayidx2659, align 4
  br label %do.end.2660

do.end.2660:                                      ; preds = %do.body.2654
  %1494 = load i32, i32* %map_set_rest_length, align 4
  %inc2661 = add nsw i32 %1494, 1
  store i32 %inc2661, i32* %map_set_rest_length, align 4
  br label %if.end.2739

if.else.2662:                                     ; preds = %if.else.2615
  %1495 = load i64, i64* %content2353, align 8
  %call2663 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp2664 = icmp eq i64 %1495, %call2663
  br i1 %cmp2664, label %if.then.2666, label %if.else.2669

if.then.2666:                                     ; preds = %if.else.2662
  %1496 = load i32, i32* %field2, align 4
  %idxprom2667 = sext i32 %1496 to i64
  %1497 = load i32*, i32** %reg, align 8
  %arrayidx2668 = getelementptr inbounds i32, i32* %1497, i64 %idxprom2667
  %1498 = load i32, i32* %arrayidx2668, align 4
  store i32 %1498, i32* %op, align 4
  br label %if.end.2738

if.else.2669:                                     ; preds = %if.else.2662
  %1499 = load i64, i64* %content2353, align 8
  %call2670 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp2671 = icmp eq i64 %1499, %call2670
  br i1 %cmp2671, label %if.then.2673, label %if.else.2676

if.then.2673:                                     ; preds = %if.else.2669
  %1500 = load i32, i32* %map_set_rest_length, align 4
  %1501 = load i32, i32* %i, align 4
  %add2674 = add nsw i32 %1501, %1500
  store i32 %add2674, i32* %i, align 4
  %1502 = load i32, i32* %map_set_rest_length, align 4
  %1503 = load i32, i32* %ic, align 4
  %add2675 = add nsw i32 %1503, %1502
  store i32 %add2675, i32* %ic, align 4
  br label %for.end.2745

if.else.2676:                                     ; preds = %if.else.2669
  %1504 = load i64, i64* %content2353, align 8
  %and2677 = and i64 %1504, 7
  %conv2678 = trunc i64 %and2677 to i32
  %cmp2679 = icmp eq i32 %conv2678, 0
  br i1 %cmp2679, label %if.then.2681, label %if.else.2732

if.then.2681:                                     ; preds = %if.else.2676
  %1505 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %cmp2682 = icmp uge %struct.tr_stack* %1505, getelementptr inbounds ([30 x %struct.tr_stack], [30 x %struct.tr_stack]* @mapping_stack, i64 1, i64 0)
  br i1 %cmp2682, label %if.then.2684, label %if.end.2688

if.then.2684:                                     ; preds = %if.then.2681
  br label %do.body.2685

do.body.2685:                                     ; preds = %if.then.2684
  %1506 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2686 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1506, i32 0, i32 6
  store i32 3, i32* %status2686, align 4
  br label %ccl_error_handler

do.end.2687:                                      ; No predecessors!
  br label %if.end.2688

if.end.2688:                                      ; preds = %do.end.2687, %if.then.2681
  br label %do.body.2689

do.body.2689:                                     ; preds = %if.end.2688
  %1507 = load i32, i32* %map_set_rest_length, align 4
  %1508 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2690 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1508, i32 0, i32 0
  store i32 %1507, i32* %rest_length2690, align 4
  %1509 = load i32, i32* %field2, align 4
  %idxprom2691 = sext i32 %1509 to i64
  %1510 = load i32*, i32** %reg, align 8
  %arrayidx2692 = getelementptr inbounds i32, i32* %1510, i64 %idxprom2691
  %1511 = load i32, i32* %arrayidx2692, align 4
  %1512 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2693 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1512, i32 0, i32 1
  store i32 %1511, i32* %orig_val2693, align 4
  %1513 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2694 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1513, i32 1
  store %struct.tr_stack* %incdec.ptr2694, %struct.tr_stack** @mapping_stack_pointer, align 8
  br label %do.end.2695

do.end.2695:                                      ; preds = %do.body.2689
  br label %do.body.2696

do.body.2696:                                     ; preds = %do.end.2695
  %1514 = load i32, i32* %map_set_rest_length, align 4
  %1515 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2697 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1515, i32 0, i32 0
  store i32 %1514, i32* %rest_length2697, align 4
  %1516 = load i32, i32* %op, align 4
  %1517 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2698 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1517, i32 0, i32 1
  store i32 %1516, i32* %orig_val2698, align 4
  %1518 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2699 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1518, i32 1
  store %struct.tr_stack* %incdec.ptr2699, %struct.tr_stack** @mapping_stack_pointer, align 8
  br label %do.end.2700

do.end.2700:                                      ; preds = %do.body.2696
  %1519 = load i32, i32* %stack_idx, align 4
  %add2701 = add nsw i32 %1519, 1
  store i32 %add2701, i32* @stack_idx_of_map_multiple, align 4
  br label %do.body.2702

do.body.2702:                                     ; preds = %do.end.2700
  %1520 = load i32, i32* %stack_idx, align 4
  %cmp2704 = icmp sge i32 %1520, 256
  br i1 %cmp2704, label %if.then.2708, label %lor.lhs.false.2706

lor.lhs.false.2706:                               ; preds = %do.body.2702
  %1521 = load i64, i64* %content2353, align 8
  %call2707 = call zeroext i1 @setup_ccl_program(%struct.ccl_program* %called_ccl2703, i64 %1521)
  br i1 %call2707, label %if.end.2716, label %if.then.2708

if.then.2708:                                     ; preds = %lor.lhs.false.2706, %do.body.2702
  %1522 = load i32, i32* %stack_idx, align 4
  %cmp2709 = icmp sgt i32 %1522, 0
  br i1 %cmp2709, label %if.then.2711, label %if.end.2712

if.then.2711:                                     ; preds = %if.then.2708
  %1523 = load i64*, i64** getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 0), align 8
  store i64* %1523, i64** %ccl_prog, align 8
  %1524 = load i32, i32* getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 1), align 4
  store i32 %1524, i32* %ic, align 4
  %1525 = load i32, i32* getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 2), align 4
  store i32 %1525, i32* %eof_ic, align 4
  br label %if.end.2712

if.end.2712:                                      ; preds = %if.then.2711, %if.then.2708
  br label %do.body.2713

do.body.2713:                                     ; preds = %if.end.2712
  %1526 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2714 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1526, i32 0, i32 6
  store i32 3, i32* %status2714, align 4
  br label %ccl_error_handler

do.end.2715:                                      ; No predecessors!
  br label %if.end.2716

if.end.2716:                                      ; preds = %do.end.2715, %lor.lhs.false.2706
  %1527 = load i64*, i64** %ccl_prog, align 8
  %1528 = load i32, i32* %stack_idx, align 4
  %idxprom2717 = sext i32 %1528 to i64
  %arrayidx2718 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom2717
  %ccl_prog2719 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx2718, i32 0, i32 0
  store i64* %1527, i64** %ccl_prog2719, align 8
  %1529 = load i32, i32* %current_ic, align 4
  %1530 = load i32, i32* %stack_idx, align 4
  %idxprom2720 = sext i32 %1530 to i64
  %arrayidx2721 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom2720
  %ic2722 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx2721, i32 0, i32 1
  store i32 %1529, i32* %ic2722, align 4
  %1531 = load i32, i32* %eof_ic, align 4
  %1532 = load i32, i32* %stack_idx, align 4
  %idxprom2723 = sext i32 %1532 to i64
  %arrayidx2724 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom2723
  %eof_ic2725 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx2724, i32 0, i32 2
  store i32 %1531, i32* %eof_ic2725, align 4
  %1533 = load i32, i32* %stack_idx, align 4
  %inc2726 = add nsw i32 %1533, 1
  store i32 %inc2726, i32* %stack_idx, align 4
  %prog2727 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %called_ccl2703, i32 0, i32 2
  %1534 = load i64*, i64** %prog2727, align 8
  store i64* %1534, i64** %ccl_prog, align 8
  store i32 2, i32* %ic, align 4
  %1535 = load i64*, i64** %ccl_prog, align 8
  %arrayidx2728 = getelementptr inbounds i64, i64* %1535, i64 1
  %1536 = load i64, i64* %arrayidx2728, align 8
  %shr2729 = ashr i64 %1536, 2
  %conv2730 = trunc i64 %shr2729 to i32
  store i32 %conv2730, i32* %eof_ic, align 4
  br label %ccl_repeat

do.end.2731:                                      ; No predecessors!
  br label %if.end.2736

if.else.2732:                                     ; preds = %if.else.2676
  br label %do.body.2733

do.body.2733:                                     ; preds = %if.else.2732
  %1537 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2734 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1537, i32 0, i32 6
  store i32 3, i32* %status2734, align 4
  br label %ccl_error_handler

do.end.2735:                                      ; No predecessors!
  br label %if.end.2736

if.end.2736:                                      ; preds = %do.end.2735, %do.end.2731
  br label %if.end.2737

if.end.2737:                                      ; preds = %if.end.2736
  br label %if.end.2738

if.end.2738:                                      ; preds = %if.end.2737, %if.then.2666
  br label %if.end.2739

if.end.2739:                                      ; preds = %if.end.2738, %do.end.2660
  br label %if.end.2740

if.end.2740:                                      ; preds = %if.end.2739, %do.end.2613
  br label %for.inc.2741

for.inc.2741:                                     ; preds = %if.end.2740, %if.then.2646, %if.then.2581, %if.else.2575, %if.else.2573, %if.then.2544, %if.then.2531, %if.then.2512, %if.then.2507, %if.then.2501, %if.then.2494, %do.end.2487
  %1538 = load i32, i32* %i, align 4
  %inc2742 = add nsw i32 %1538, 1
  store i32 %inc2742, i32* %i, align 4
  %1539 = load i32, i32* %ic, align 4
  %inc2743 = add nsw i32 %1539, 1
  store i32 %inc2743, i32* %ic, align 4
  %1540 = load i32, i32* %map_set_rest_length, align 4
  %dec2744 = add nsw i32 %1540, -1
  store i32 %dec2744, i32* %map_set_rest_length, align 4
  br label %for.cond.2459

for.end.2745:                                     ; preds = %if.then.2673, %for.cond.2459
  %1541 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %cmp2746 = icmp ule %struct.tr_stack* %1541, getelementptr inbounds ([30 x %struct.tr_stack], [30 x %struct.tr_stack]* @mapping_stack, i32 0, i64 1)
  br i1 %cmp2746, label %if.then.2748, label %if.end.2749

if.then.2748:                                     ; preds = %for.end.2745
  br label %do.end.2766

if.end.2749:                                      ; preds = %for.end.2745
  br label %do.body.2750

do.body.2750:                                     ; preds = %if.end.2749
  %1542 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2751 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1542, i32 -1
  store %struct.tr_stack* %incdec.ptr2751, %struct.tr_stack** @mapping_stack_pointer, align 8
  %1543 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2752 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1543, i32 0, i32 0
  %1544 = load i32, i32* %rest_length2752, align 4
  store i32 %1544, i32* %map_set_rest_length, align 4
  %1545 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2753 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1545, i32 0, i32 1
  %1546 = load i32, i32* %orig_val2753, align 4
  %1547 = load i32, i32* %field2, align 4
  %idxprom2754 = sext i32 %1547 to i64
  %1548 = load i32*, i32** %reg, align 8
  %arrayidx2755 = getelementptr inbounds i32, i32* %1548, i64 %idxprom2754
  store i32 %1546, i32* %arrayidx2755, align 4
  br label %do.end.2756

do.end.2756:                                      ; preds = %do.body.2750
  %1549 = load i32, i32* %map_set_rest_length, align 4
  %1550 = load i32, i32* %i, align 4
  %add2757 = add nsw i32 %1550, %1549
  store i32 %add2757, i32* %i, align 4
  %1551 = load i32, i32* %map_set_rest_length, align 4
  %1552 = load i32, i32* %ic, align 4
  %add2758 = add nsw i32 %1552, %1551
  store i32 %add2758, i32* %ic, align 4
  br label %do.body.2759

do.body.2759:                                     ; preds = %do.end.2756
  %1553 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %incdec.ptr2760 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1553, i32 -1
  store %struct.tr_stack* %incdec.ptr2760, %struct.tr_stack** @mapping_stack_pointer, align 8
  %1554 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %rest_length2761 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1554, i32 0, i32 0
  %1555 = load i32, i32* %rest_length2761, align 4
  store i32 %1555, i32* %map_set_rest_length, align 4
  %1556 = load %struct.tr_stack*, %struct.tr_stack** @mapping_stack_pointer, align 8
  %orig_val2762 = getelementptr inbounds %struct.tr_stack, %struct.tr_stack* %1556, i32 0, i32 1
  %1557 = load i32, i32* %orig_val2762, align 4
  %1558 = load i32, i32* %field2, align 4
  %idxprom2763 = sext i32 %1558 to i64
  %1559 = load i32*, i32** %reg, align 8
  %arrayidx2764 = getelementptr inbounds i32, i32* %1559, i64 %idxprom2763
  store i32 %1557, i32* %arrayidx2764, align 4
  br label %do.end.2765

do.end.2765:                                      ; preds = %do.body.2759
  br label %do.cond

do.cond:                                          ; preds = %do.end.2765
  br i1 true, label %do.body.2458, label %do.end.2766

do.end.2766:                                      ; preds = %do.cond, %if.then.2748
  %1560 = load i32, i32* %fin_ic2358, align 4
  store i32 %1560, i32* %ic, align 4
  %1561 = load i32, i32* %op, align 4
  %1562 = load i32, i32* %field2, align 4
  %idxprom2767 = sext i32 %1562 to i64
  %1563 = load i32*, i32** %reg, align 8
  %arrayidx2768 = getelementptr inbounds i32, i32* %1563, i64 %idxprom2767
  store i32 %1561, i32* %arrayidx2768, align 4
  br label %sw.epilog.2981

sw.bb.2769:                                       ; preds = %sw.bb.1218
  %1564 = load i32, i32* %ic, align 4
  %inc2775 = add nsw i32 %1564, 1
  store i32 %inc2775, i32* %ic, align 4
  %idxprom2776 = sext i32 %1564 to i64
  %1565 = load i64*, i64** %ccl_prog, align 8
  %arrayidx2777 = getelementptr inbounds i64, i64* %1565, i64 %idxprom2776
  %1566 = load i64, i64* %arrayidx2777, align 8
  %shr2778 = ashr i64 %1566, 2
  %conv2779 = trunc i64 %shr2778 to i32
  store i32 %conv2779, i32* %j, align 4
  %1567 = load i32, i32* %field2, align 4
  %idxprom2780 = sext i32 %1567 to i64
  %1568 = load i32*, i32** %reg, align 8
  %arrayidx2781 = getelementptr inbounds i32, i32* %1568, i64 %idxprom2780
  %1569 = load i32, i32* %arrayidx2781, align 4
  store i32 %1569, i32* %op, align 4
  %1570 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %call2782 = call zeroext i1 @VECTORP(i64 %1570)
  br i1 %call2782, label %land.lhs.true.2784, label %if.then.2789

land.lhs.true.2784:                               ; preds = %sw.bb.2769
  %1571 = load i32, i32* %j, align 4
  %conv2785 = sext i32 %1571 to i64
  %1572 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %call2786 = call i64 @ASIZE(i64 %1572)
  %cmp2787 = icmp slt i64 %conv2785, %call2786
  br i1 %cmp2787, label %if.end.2793, label %if.then.2789

if.then.2789:                                     ; preds = %land.lhs.true.2784, %sw.bb.2769
  %1573 = load i32, i32* %field1, align 4
  %and2790 = and i32 %1573, 7
  %idxprom2791 = sext i32 %and2790 to i64
  %1574 = load i32*, i32** %reg, align 8
  %arrayidx2792 = getelementptr inbounds i32, i32* %1574, i64 %idxprom2791
  store i32 -1, i32* %arrayidx2792, align 4
  br label %sw.epilog.2981

if.end.2793:                                      ; preds = %land.lhs.true.2784
  %1575 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %1576 = load i32, i32* %j, align 4
  %conv2794 = sext i32 %1576 to i64
  %call2795 = call i64 @AREF(i64 %1575, i64 %conv2794)
  store i64 %call2795, i64* %map2770, align 8
  %1577 = load i64, i64* %map2770, align 8
  %and2796 = and i64 %1577, 7
  %conv2797 = trunc i64 %and2796 to i32
  %cmp2798 = icmp eq i32 %conv2797, 3
  br i1 %cmp2798, label %if.end.2804, label %if.then.2800

if.then.2800:                                     ; preds = %if.end.2793
  %1578 = load i32, i32* %field1, align 4
  %and2801 = and i32 %1578, 7
  %idxprom2802 = sext i32 %and2801 to i64
  %1579 = load i32*, i32** %reg, align 8
  %arrayidx2803 = getelementptr inbounds i32, i32* %1579, i64 %idxprom2802
  store i32 -1, i32* %arrayidx2803, align 4
  br label %sw.epilog.2981

if.end.2804:                                      ; preds = %if.end.2793
  %1580 = load i64, i64* %map2770, align 8
  %sub2805 = sub nsw i64 %1580, 3
  %1581 = inttoptr i64 %sub2805 to i8*
  %1582 = bitcast i8* %1581 to %struct.Lisp_Cons*
  %u2806 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1582, i32 0, i32 1
  %cdr2807 = bitcast %union.anon* %u2806 to i64*
  %1583 = load i64, i64* %cdr2807, align 8
  store i64 %1583, i64* %map2770, align 8
  %1584 = load i64, i64* %map2770, align 8
  %call2808 = call zeroext i1 @VECTORP(i64 %1584)
  br i1 %call2808, label %land.lhs.true.2810, label %if.then.2836

land.lhs.true.2810:                               ; preds = %if.end.2804
  %1585 = load i64, i64* %map2770, align 8
  %call2811 = call i64 @ASIZE(i64 %1585)
  %cmp2812 = icmp slt i64 0, %call2811
  br i1 %cmp2812, label %land.lhs.true.2814, label %if.then.2836

land.lhs.true.2814:                               ; preds = %land.lhs.true.2810
  %1586 = load i64, i64* %map2770, align 8
  %call2815 = call i64 @AREF(i64 %1586, i64 0)
  %and2816 = and i64 %call2815, 7
  %conv2817 = trunc i64 %and2816 to i32
  %and2818 = and i32 %conv2817, -5
  %cmp2819 = icmp eq i32 %and2818, 2
  br i1 %cmp2819, label %land.lhs.true.2821, label %if.then.2836

land.lhs.true.2821:                               ; preds = %land.lhs.true.2814
  %1587 = load i64, i64* %map2770, align 8
  %call2822 = call i64 @AREF(i64 %1587, i64 0)
  %shr2823 = ashr i64 %call2822, 2
  %1588 = load i32, i32* %op, align 4
  %conv2824 = sext i32 %1588 to i64
  %cmp2825 = icmp sle i64 %shr2823, %conv2824
  br i1 %cmp2825, label %land.lhs.true.2827, label %if.then.2836

land.lhs.true.2827:                               ; preds = %land.lhs.true.2821
  %1589 = load i32, i32* %op, align 4
  %conv2828 = sext i32 %1589 to i64
  %1590 = load i64, i64* %map2770, align 8
  %call2829 = call i64 @AREF(i64 %1590, i64 0)
  %shr2830 = ashr i64 %call2829, 2
  %sub2831 = sub nsw i64 %conv2828, %shr2830
  %add2832 = add nsw i64 %sub2831, 1
  %1591 = load i64, i64* %map2770, align 8
  %call2833 = call i64 @ASIZE(i64 %1591)
  %cmp2834 = icmp slt i64 %add2832, %call2833
  br i1 %cmp2834, label %if.end.2840, label %if.then.2836

if.then.2836:                                     ; preds = %land.lhs.true.2827, %land.lhs.true.2821, %land.lhs.true.2814, %land.lhs.true.2810, %if.end.2804
  %1592 = load i32, i32* %field1, align 4
  %and2837 = and i32 %1592, 7
  %idxprom2838 = sext i32 %and2837 to i64
  %1593 = load i32*, i32** %reg, align 8
  %arrayidx2839 = getelementptr inbounds i32, i32* %1593, i64 %idxprom2838
  store i32 -1, i32* %arrayidx2839, align 4
  br label %sw.epilog.2981

if.end.2840:                                      ; preds = %land.lhs.true.2827
  %1594 = load i32, i32* %op, align 4
  %conv2841 = sext i32 %1594 to i64
  %1595 = load i64, i64* %map2770, align 8
  %call2842 = call i64 @AREF(i64 %1595, i64 0)
  %shr2843 = ashr i64 %call2842, 2
  %sub2844 = sub nsw i64 %conv2841, %shr2843
  %add2845 = add nsw i64 %sub2844, 1
  %conv2846 = trunc i64 %add2845 to i32
  store i32 %conv2846, i32* %point2774, align 4
  %1596 = load i32, i32* %field1, align 4
  %and2847 = and i32 %1596, 7
  %idxprom2848 = sext i32 %and2847 to i64
  %1597 = load i32*, i32** %reg, align 8
  %arrayidx2849 = getelementptr inbounds i32, i32* %1597, i64 %idxprom2848
  store i32 0, i32* %arrayidx2849, align 4
  %1598 = load i64, i64* %map2770, align 8
  %1599 = load i32, i32* %point2774, align 4
  %conv2850 = sext i32 %1599 to i64
  %call2851 = call i64 @AREF(i64 %1598, i64 %conv2850)
  store i64 %call2851, i64* %content2773, align 8
  %1600 = load i64, i64* %content2773, align 8
  %call2852 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2853 = icmp eq i64 %1600, %call2852
  br i1 %cmp2853, label %if.then.2855, label %if.else.2859

if.then.2855:                                     ; preds = %if.end.2840
  %1601 = load i32, i32* %field1, align 4
  %and2856 = and i32 %1601, 7
  %idxprom2857 = sext i32 %and2856 to i64
  %1602 = load i32*, i32** %reg, align 8
  %arrayidx2858 = getelementptr inbounds i32, i32* %1602, i64 %idxprom2857
  store i32 -1, i32* %arrayidx2858, align 4
  br label %if.end.2975

if.else.2859:                                     ; preds = %if.end.2840
  %1603 = load i64, i64* %content2773, align 8
  %and2860 = and i64 %1603, 7
  %conv2861 = trunc i64 %and2860 to i32
  %and2862 = and i32 %conv2861, -5
  %cmp2863 = icmp eq i32 %and2862, 2
  br i1 %cmp2863, label %land.lhs.true.2865, label %if.else.2883

land.lhs.true.2865:                               ; preds = %if.else.2859
  br i1 false, label %cond.false.2870, label %cond.true.2866

cond.true.2866:                                   ; preds = %land.lhs.true.2865
  %1604 = load i64, i64* %content2773, align 8
  %shr2867 = ashr i64 %1604, 2
  %cmp2868 = icmp sle i64 -2147483648, %shr2867
  br i1 %cmp2868, label %land.lhs.true.2874, label %if.else.2883

cond.false.2870:                                  ; preds = %land.lhs.true.2865
  %1605 = load i64, i64* %content2773, align 8
  %shr2871 = ashr i64 %1605, 2
  %cmp2872 = icmp sle i64 0, %shr2871
  br i1 %cmp2872, label %land.lhs.true.2874, label %if.else.2883

land.lhs.true.2874:                               ; preds = %cond.false.2870, %cond.true.2866
  %1606 = load i64, i64* %content2773, align 8
  %shr2875 = ashr i64 %1606, 2
  %cmp2876 = icmp sle i64 %shr2875, 2147483647
  br i1 %cmp2876, label %if.then.2878, label %if.else.2883

if.then.2878:                                     ; preds = %land.lhs.true.2874
  %1607 = load i64, i64* %content2773, align 8
  %shr2879 = ashr i64 %1607, 2
  %conv2880 = trunc i64 %shr2879 to i32
  %1608 = load i32, i32* %field2, align 4
  %idxprom2881 = sext i32 %1608 to i64
  %1609 = load i32*, i32** %reg, align 8
  %arrayidx2882 = getelementptr inbounds i32, i32* %1609, i64 %idxprom2881
  store i32 %conv2880, i32* %arrayidx2882, align 4
  br label %if.end.2974

if.else.2883:                                     ; preds = %land.lhs.true.2874, %cond.false.2870, %cond.true.2866, %if.else.2859
  %1610 = load i64, i64* %content2773, align 8
  %call2884 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp2885 = icmp eq i64 %1610, %call2884
  br i1 %cmp2885, label %if.then.2887, label %if.else.2888

if.then.2887:                                     ; preds = %if.else.2883
  br label %if.end.2973

if.else.2888:                                     ; preds = %if.else.2883
  %1611 = load i64, i64* %content2773, align 8
  %and2889 = and i64 %1611, 7
  %conv2890 = trunc i64 %and2889 to i32
  %cmp2891 = icmp eq i32 %conv2890, 3
  br i1 %cmp2891, label %if.then.2893, label %if.else.2929

if.then.2893:                                     ; preds = %if.else.2888
  %1612 = load i64, i64* %content2773, align 8
  %sub2894 = sub nsw i64 %1612, 3
  %1613 = inttoptr i64 %sub2894 to i8*
  %1614 = bitcast i8* %1613 to %struct.Lisp_Cons*
  %car2895 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1614, i32 0, i32 0
  %1615 = load i64, i64* %car2895, align 8
  store i64 %1615, i64* %attrib2771, align 8
  %1616 = load i64, i64* %content2773, align 8
  %sub2896 = sub nsw i64 %1616, 3
  %1617 = inttoptr i64 %sub2896 to i8*
  %1618 = bitcast i8* %1617 to %struct.Lisp_Cons*
  %u2897 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1618, i32 0, i32 1
  %cdr2898 = bitcast %union.anon* %u2897 to i64*
  %1619 = load i64, i64* %cdr2898, align 8
  store i64 %1619, i64* %value2772, align 8
  %1620 = load i64, i64* %attrib2771, align 8
  %and2899 = and i64 %1620, 7
  %conv2900 = trunc i64 %and2899 to i32
  %and2901 = and i32 %conv2900, -5
  %cmp2902 = icmp eq i32 %and2901, 2
  br i1 %cmp2902, label %lor.lhs.false.2904, label %if.then.2923

lor.lhs.false.2904:                               ; preds = %if.then.2893
  %1621 = load i64, i64* %value2772, align 8
  %and2905 = and i64 %1621, 7
  %conv2906 = trunc i64 %and2905 to i32
  %and2907 = and i32 %conv2906, -5
  %cmp2908 = icmp eq i32 %and2907, 2
  br i1 %cmp2908, label %land.lhs.true.2910, label %if.then.2923

land.lhs.true.2910:                               ; preds = %lor.lhs.false.2904
  br i1 false, label %cond.false.2915, label %cond.true.2911

cond.true.2911:                                   ; preds = %land.lhs.true.2910
  %1622 = load i64, i64* %value2772, align 8
  %shr2912 = ashr i64 %1622, 2
  %cmp2913 = icmp sle i64 -2147483648, %shr2912
  br i1 %cmp2913, label %land.lhs.true.2919, label %if.then.2923

cond.false.2915:                                  ; preds = %land.lhs.true.2910
  %1623 = load i64, i64* %value2772, align 8
  %shr2916 = ashr i64 %1623, 2
  %cmp2917 = icmp sle i64 0, %shr2916
  br i1 %cmp2917, label %land.lhs.true.2919, label %if.then.2923

land.lhs.true.2919:                               ; preds = %cond.false.2915, %cond.true.2911
  %1624 = load i64, i64* %value2772, align 8
  %shr2920 = ashr i64 %1624, 2
  %cmp2921 = icmp sle i64 %shr2920, 2147483647
  br i1 %cmp2921, label %if.end.2924, label %if.then.2923

if.then.2923:                                     ; preds = %land.lhs.true.2919, %cond.false.2915, %cond.true.2911, %lor.lhs.false.2904, %if.then.2893
  br label %for.cond

if.end.2924:                                      ; preds = %land.lhs.true.2919
  %1625 = load i64, i64* %value2772, align 8
  %shr2925 = ashr i64 %1625, 2
  %conv2926 = trunc i64 %shr2925 to i32
  %1626 = load i32, i32* %field2, align 4
  %idxprom2927 = sext i32 %1626 to i64
  %1627 = load i32*, i32** %reg, align 8
  %arrayidx2928 = getelementptr inbounds i32, i32* %1627, i64 %idxprom2927
  store i32 %conv2926, i32* %arrayidx2928, align 4
  br label %sw.epilog.2981

if.else.2929:                                     ; preds = %if.else.2888
  %1628 = load i64, i64* %content2773, align 8
  %and2930 = and i64 %1628, 7
  %conv2931 = trunc i64 %and2930 to i32
  %cmp2932 = icmp eq i32 %conv2931, 0
  br i1 %cmp2932, label %if.then.2934, label %if.else.2967

if.then.2934:                                     ; preds = %if.else.2929
  br label %do.body.2935

do.body.2935:                                     ; preds = %if.then.2934
  %1629 = load i32, i32* %stack_idx, align 4
  %cmp2937 = icmp sge i32 %1629, 256
  br i1 %cmp2937, label %if.then.2941, label %lor.lhs.false.2939

lor.lhs.false.2939:                               ; preds = %do.body.2935
  %1630 = load i64, i64* %content2773, align 8
  %call2940 = call zeroext i1 @setup_ccl_program(%struct.ccl_program* %called_ccl2936, i64 %1630)
  br i1 %call2940, label %if.end.2950, label %if.then.2941

if.then.2941:                                     ; preds = %lor.lhs.false.2939, %do.body.2935
  %1631 = load i32, i32* %stack_idx, align 4
  %cmp2942 = icmp sgt i32 %1631, 0
  br i1 %cmp2942, label %if.then.2944, label %if.end.2945

if.then.2944:                                     ; preds = %if.then.2941
  %1632 = load i64*, i64** getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 0), align 8
  store i64* %1632, i64** %ccl_prog, align 8
  %1633 = load i32, i32* getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 1), align 4
  store i32 %1633, i32* %ic, align 4
  %1634 = load i32, i32* getelementptr inbounds ([256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 0, i32 2), align 4
  store i32 %1634, i32* %eof_ic, align 4
  br label %if.end.2945

if.end.2945:                                      ; preds = %if.then.2944, %if.then.2941
  br label %do.body.2946

do.body.2946:                                     ; preds = %if.end.2945
  %1635 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2947 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1635, i32 0, i32 6
  store i32 3, i32* %status2947, align 4
  br label %ccl_error_handler

do.end.2949:                                      ; No predecessors!
  br label %if.end.2950

if.end.2950:                                      ; preds = %do.end.2949, %lor.lhs.false.2939
  %1636 = load i64*, i64** %ccl_prog, align 8
  %1637 = load i32, i32* %stack_idx, align 4
  %idxprom2951 = sext i32 %1637 to i64
  %arrayidx2952 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom2951
  %ccl_prog2953 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx2952, i32 0, i32 0
  store i64* %1636, i64** %ccl_prog2953, align 8
  %1638 = load i32, i32* %ic, align 4
  %1639 = load i32, i32* %stack_idx, align 4
  %idxprom2954 = sext i32 %1639 to i64
  %arrayidx2955 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom2954
  %ic2956 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx2955, i32 0, i32 1
  store i32 %1638, i32* %ic2956, align 4
  %1640 = load i32, i32* %eof_ic, align 4
  %1641 = load i32, i32* %stack_idx, align 4
  %idxprom2957 = sext i32 %1641 to i64
  %arrayidx2958 = getelementptr inbounds [256 x %struct.ccl_prog_stack], [256 x %struct.ccl_prog_stack]* @ccl_prog_stack_struct, i32 0, i64 %idxprom2957
  %eof_ic2959 = getelementptr inbounds %struct.ccl_prog_stack, %struct.ccl_prog_stack* %arrayidx2958, i32 0, i32 2
  store i32 %1640, i32* %eof_ic2959, align 4
  %1642 = load i32, i32* %stack_idx, align 4
  %inc2960 = add nsw i32 %1642, 1
  store i32 %inc2960, i32* %stack_idx, align 4
  %prog2961 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %called_ccl2936, i32 0, i32 2
  %1643 = load i64*, i64** %prog2961, align 8
  store i64* %1643, i64** %ccl_prog, align 8
  store i32 2, i32* %ic, align 4
  %1644 = load i64*, i64** %ccl_prog, align 8
  %arrayidx2962 = getelementptr inbounds i64, i64* %1644, i64 1
  %1645 = load i64, i64* %arrayidx2962, align 8
  %shr2963 = ashr i64 %1645, 2
  %conv2964 = trunc i64 %shr2963 to i32
  store i32 %conv2964, i32* %eof_ic, align 4
  br label %ccl_repeat

do.end.2966:                                      ; No predecessors!
  br label %if.end.2971

if.else.2967:                                     ; preds = %if.else.2929
  %1646 = load i32, i32* %field1, align 4
  %and2968 = and i32 %1646, 7
  %idxprom2969 = sext i32 %and2968 to i64
  %1647 = load i32*, i32** %reg, align 8
  %arrayidx2970 = getelementptr inbounds i32, i32* %1647, i64 %idxprom2969
  store i32 -1, i32* %arrayidx2970, align 4
  br label %if.end.2971

if.end.2971:                                      ; preds = %if.else.2967, %do.end.2966
  br label %if.end.2972

if.end.2972:                                      ; preds = %if.end.2971
  br label %if.end.2973

if.end.2973:                                      ; preds = %if.end.2972, %if.then.2887
  br label %if.end.2974

if.end.2974:                                      ; preds = %if.end.2973, %if.then.2878
  br label %if.end.2975

if.end.2975:                                      ; preds = %if.end.2974, %if.then.2855
  br label %sw.epilog.2981

sw.default.2976:                                  ; preds = %sw.bb.1218
  br label %do.body.2977

do.body.2977:                                     ; preds = %sw.default.2976
  %1648 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2978 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1648, i32 0, i32 6
  store i32 3, i32* %status2978, align 4
  br label %ccl_error_handler

do.end.2980:                                      ; No predecessors!
  br label %sw.epilog.2981

sw.epilog.2981:                                   ; preds = %do.end.2980, %if.end.2975, %if.end.2924, %if.then.2836, %if.then.2800, %if.then.2789, %do.end.2766, %if.else.2399, %if.end.2350, %if.else.2113, %if.end.2087, %if.end.1875, %do.end.1804, %do.end.1607, %do.end.1432, %do.end.1273
  br label %sw.epilog.2987

sw.default.2982:                                  ; preds = %do.end.25
  br label %do.body.2983

do.body.2983:                                     ; preds = %sw.default.2982
  %1649 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2984 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1649, i32 0, i32 6
  store i32 3, i32* %status2984, align 4
  br label %ccl_error_handler

do.end.2986:                                      ; No predecessors!
  br label %sw.epilog.2987

sw.epilog.2987:                                   ; preds = %do.end.2986, %sw.epilog.2981, %if.end.1217, %sw.epilog, %if.end.766, %if.end.748, %if.end.714, %if.end.608, %while.end.564, %while.end, %cond.end, %do.end.397, %do.end.362, %do.end.288, %do.end.225, %do.end.168, %do.end.143, %do.end.92, %if.end.73, %sw.bb.65, %if.end.63, %sw.bb.38, %sw.bb.35, %sw.bb
  br label %for.cond

for.end.2988:                                     ; preds = %if.end.14
  br label %ccl_error_handler

ccl_error_handler:                                ; preds = %for.end.2988, %do.body.2983, %do.body.2977, %do.body.2946, %do.body.2733, %do.body.2713, %do.body.2685, %do.body.2474, %do.body.2453, %do.body.2365, %do.body.2333, %do.body.2313, %do.body.2075, %do.body.1899, %do.body.1862, %do.body.1827, %do.body.1629, %do.body.1417, %do.body.1277, %do.body.1230, %do.body.1223, %do.body.1195, %do.body.1179, %do.body.1011, %do.body.961, %do.body.915, %do.body.889, %do.body.732, %do.body.652, %do.body.631, %do.body.605, %do.body.555, %do.body.523, %do.body.497, %do.body.453, %do.body.403, %do.body.370, %do.body.335, %do.body.313, %do.body.237, %do.body.198, %do.body.178, %do.body.153, %do.body.120, %do.body.100, %do.body.80, %do.body.21
  %1650 = load i32*, i32** %destination.addr, align 8
  %tobool2989 = icmp ne i32* %1650, null
  br i1 %tobool2989, label %if.then.2990, label %if.end.3038

if.then.2990:                                     ; preds = %ccl_error_handler
  %1651 = load i32*, i32** %dst, align 8
  %tobool2991 = icmp ne i32* %1651, null
  br i1 %tobool2991, label %if.end.2993, label %if.then.2992

if.then.2992:                                     ; preds = %if.then.2990
  %1652 = load i32*, i32** %destination.addr, align 8
  store i32* %1652, i32** %dst, align 8
  br label %if.end.2993

if.end.2993:                                      ; preds = %if.then.2992, %if.then.2990
  %1653 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status2994 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1653, i32 0, i32 6
  %1654 = load i32, i32* %status2994, align 4
  switch i32 %1654, label %sw.default.3012 [
    i32 3, label %sw.bb.2995
    i32 4, label %sw.bb.3000
  ]

sw.bb.2995:                                       ; preds = %if.end.2993
  %arraydecay2996 = getelementptr inbounds [256 x i8], [256 x i8]* %msg, i32 0, i32 0
  %1655 = load i32, i32* %code, align 4
  %and2997 = and i32 %1655, 31
  %1656 = load i32, i32* %code, align 4
  %add2998 = add i32 %1656, 0
  %1657 = load i32, i32* %this_ic, align 4
  %call2999 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2996, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i32 %and2997, i32 %add2998, i32 %1657) #4
  store i32 %call2999, i32* %msglen, align 4
  br label %sw.epilog.3016

sw.bb.3000:                                       ; preds = %if.end.2993
  %1658 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %quit_silently = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1658, i32 0, i32 11
  %bf.load3001 = load i8, i8* %quit_silently, align 4
  %bf.lshr3002 = lshr i8 %bf.load3001, 1
  %bf.clear3003 = and i8 %bf.lshr3002, 1
  %bf.cast3004 = trunc i8 %bf.clear3003 to i1
  br i1 %bf.cast3004, label %cond.true.3006, label %cond.false.3007

cond.true.3006:                                   ; preds = %sw.bb.3000
  br label %cond.end.3010

cond.false.3007:                                  ; preds = %sw.bb.3000
  %arraydecay3008 = getelementptr inbounds [256 x i8], [256 x i8]* %msg, i32 0, i32 0
  %call3009 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3008, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %cond.end.3010

cond.end.3010:                                    ; preds = %cond.false.3007, %cond.true.3006
  %cond3011 = phi i32 [ 0, %cond.true.3006 ], [ %call3009, %cond.false.3007 ]
  store i32 %cond3011, i32* %msglen, align 4
  br label %sw.epilog.3016

sw.default.3012:                                  ; preds = %if.end.2993
  %arraydecay3013 = getelementptr inbounds [256 x i8], [256 x i8]* %msg, i32 0, i32 0
  %1659 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status3014 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1659, i32 0, i32 6
  %1660 = load i32, i32* %status3014, align 4
  %call3015 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3013, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %1660) #4
  store i32 %call3015, i32* %msglen, align 4
  br label %sw.epilog.3016

sw.epilog.3016:                                   ; preds = %sw.default.3012, %cond.end.3010, %sw.bb.2995
  %1661 = load i32, i32* %msglen, align 4
  %conv3017 = sext i32 %1661 to i64
  %1662 = load i32*, i32** %dst_end, align 8
  %1663 = load i32*, i32** %dst, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1662 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1663 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp3018 = icmp sle i64 %conv3017, %sub.ptr.div
  br i1 %cmp3018, label %if.then.3020, label %if.end.3032

if.then.3020:                                     ; preds = %sw.epilog.3016
  store i32 0, i32* %i, align 4
  br label %for.cond.3021

for.cond.3021:                                    ; preds = %for.inc.3029, %if.then.3020
  %1664 = load i32, i32* %i, align 4
  %1665 = load i32, i32* %msglen, align 4
  %cmp3022 = icmp slt i32 %1664, %1665
  br i1 %cmp3022, label %for.body.3024, label %for.end.3031

for.body.3024:                                    ; preds = %for.cond.3021
  %1666 = load i32, i32* %i, align 4
  %idxprom3025 = sext i32 %1666 to i64
  %arrayidx3026 = getelementptr inbounds [256 x i8], [256 x i8]* %msg, i32 0, i64 %idxprom3025
  %1667 = load i8, i8* %arrayidx3026, align 1
  %conv3027 = sext i8 %1667 to i32
  %1668 = load i32*, i32** %dst, align 8
  %incdec.ptr3028 = getelementptr inbounds i32, i32* %1668, i32 1
  store i32* %incdec.ptr3028, i32** %dst, align 8
  store i32 %conv3027, i32* %1668, align 4
  br label %for.inc.3029

for.inc.3029:                                     ; preds = %for.body.3024
  %1669 = load i32, i32* %i, align 4
  %inc3030 = add nsw i32 %1669, 1
  store i32 %inc3030, i32* %i, align 4
  br label %for.cond.3021

for.end.3031:                                     ; preds = %for.cond.3021
  br label %if.end.3032

if.end.3032:                                      ; preds = %for.end.3031, %sw.epilog.3016
  %1670 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status3033 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1670, i32 0, i32 6
  %1671 = load i32, i32* %status3033, align 4
  %cmp3034 = icmp eq i32 %1671, 3
  br i1 %cmp3034, label %if.then.3036, label %if.end.3037

if.then.3036:                                     ; preds = %if.end.3032
  %1672 = load i32*, i32** %src_end, align 8
  store i32* %1672, i32** %src, align 8
  br label %if.end.3037

if.end.3037:                                      ; preds = %if.then.3036, %if.end.3032
  br label %if.end.3038

if.end.3038:                                      ; preds = %if.end.3037, %ccl_error_handler
  br label %ccl_finish

ccl_finish:                                       ; preds = %if.end.3038, %do.body.1426, %do.body.1246, %do.body.1204, %do.body.981, %do.body.935, %do.body.772, %do.body.741, %do.body.704, %do.body.640, %do.body.532, %do.body.473, %do.body.423, %do.body.390, %do.body.355, %do.body.322, %do.body.282, %do.body.218, %do.body.187, %do.body.162, %do.body.136, %do.body.109, %do.body.87
  %1673 = load i32, i32* %ic, align 4
  %1674 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %ic3039 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1674, i32 0, i32 3
  store i32 %1673, i32* %ic3039, align 4
  %1675 = load i32, i32* %stack_idx, align 4
  %1676 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %stack_idx3040 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1676, i32 0, i32 8
  store i32 %1675, i32* %stack_idx3040, align 4
  %1677 = load i64*, i64** %ccl_prog, align 8
  %1678 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %prog3041 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1678, i32 0, i32 2
  store i64* %1677, i64** %prog3041, align 8
  %1679 = load i32*, i32** %src, align 8
  %1680 = load i32*, i32** %source.addr, align 8
  %sub.ptr.lhs.cast3042 = ptrtoint i32* %1679 to i64
  %sub.ptr.rhs.cast3043 = ptrtoint i32* %1680 to i64
  %sub.ptr.sub3044 = sub i64 %sub.ptr.lhs.cast3042, %sub.ptr.rhs.cast3043
  %sub.ptr.div3045 = sdiv exact i64 %sub.ptr.sub3044, 4
  %conv3046 = trunc i64 %sub.ptr.div3045 to i32
  %1681 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %consumed = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1681, i32 0, i32 9
  store i32 %conv3046, i32* %consumed, align 4
  %1682 = load i32*, i32** %dst, align 8
  %cmp3047 = icmp ne i32* %1682, null
  br i1 %cmp3047, label %if.then.3049, label %if.else.3055

if.then.3049:                                     ; preds = %ccl_finish
  %1683 = load i32*, i32** %dst, align 8
  %1684 = load i32*, i32** %destination.addr, align 8
  %sub.ptr.lhs.cast3050 = ptrtoint i32* %1683 to i64
  %sub.ptr.rhs.cast3051 = ptrtoint i32* %1684 to i64
  %sub.ptr.sub3052 = sub i64 %sub.ptr.lhs.cast3050, %sub.ptr.rhs.cast3051
  %sub.ptr.div3053 = sdiv exact i64 %sub.ptr.sub3052, 4
  %conv3054 = trunc i64 %sub.ptr.div3053 to i32
  %1685 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %produced = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1685, i32 0, i32 10
  store i32 %conv3054, i32* %produced, align 4
  br label %if.end.3057

if.else.3055:                                     ; preds = %ccl_finish
  %1686 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %produced3056 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %1686, i32 0, i32 10
  store i32 0, i32* %produced3056, align 4
  br label %if.end.3057

if.end.3057:                                      ; preds = %if.else.3055, %if.then.3049
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @ASIZE(i64) #1

declare i64 @AREF(i64, i64) #1

declare zeroext i1 @VECTORP(i64) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

declare %struct.charset* @char_charset(i32, i64, i32*) #1

declare i32 @decode_char(%struct.charset*, i32) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i32 @translate_char(i64, i32) #1

declare i64 @hash_lookup(%struct.Lisp_Hash_Table*, i64, i64*) #1

declare zeroext i1 @NATNUMP(i64) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @setup_ccl_program(%struct.ccl_program* %ccl, i64 %ccl_prog) #0 {
entry:
  %retval = alloca i1, align 1
  %ccl.addr = alloca %struct.ccl_program*, align 8
  %ccl_prog.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %vp = alloca %struct.Lisp_Vector*, align 8
  %slot = alloca i64, align 8
  store %struct.ccl_program* %ccl, %struct.ccl_program** %ccl.addr, align 8
  store i64 %ccl_prog, i64* %ccl_prog.addr, align 8
  %0 = load i64, i64* %ccl_prog.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end.20, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %ccl_prog.addr, align 8
  %2 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %idx = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %2, i32 0, i32 0
  %call1 = call i64 @ccl_get_compiled_code(i64 %1, i64* %idx)
  store i64 %call1, i64* %ccl_prog.addr, align 8
  %3 = load i64, i64* %ccl_prog.addr, align 8
  %call2 = call zeroext i1 @VECTORP(i64 %3)
  br i1 %call2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i64, i64* %ccl_prog.addr, align 8
  %call4 = call %struct.Lisp_Vector* @XVECTOR(i64 %4)
  store %struct.Lisp_Vector* %call4, %struct.Lisp_Vector** %vp, align 8
  %5 = load %struct.Lisp_Vector*, %struct.Lisp_Vector** %vp, align 8
  %header = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %5, i32 0, i32 0
  %size = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header, i32 0, i32 0
  %6 = load i64, i64* %size, align 8
  %conv = trunc i64 %6 to i32
  %7 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %size5 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %7, i32 0, i32 1
  store i32 %conv, i32* %size5, align 4
  %8 = load %struct.Lisp_Vector*, %struct.Lisp_Vector** %vp, align 8
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  %9 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %prog = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %9, i32 0, i32 2
  store i64* %arraydecay, i64** %prog, align 8
  %10 = load %struct.Lisp_Vector*, %struct.Lisp_Vector** %vp, align 8
  %contents6 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents6, i32 0, i64 1
  %11 = load i64, i64* %arrayidx, align 8
  %shr = ashr i64 %11, 2
  %conv7 = trunc i64 %shr to i32
  %12 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %eof_ic = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %12, i32 0, i32 4
  store i32 %conv7, i32* %eof_ic, align 4
  %13 = load %struct.Lisp_Vector*, %struct.Lisp_Vector** %vp, align 8
  %contents8 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %13, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [0 x i64], [0 x i64]* %contents8, i32 0, i64 0
  %14 = load i64, i64* %arrayidx9, align 8
  %shr10 = ashr i64 %14, 2
  %conv11 = trunc i64 %shr10 to i32
  %15 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %buf_magnification = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %15, i32 0, i32 7
  store i32 %conv11, i32* %buf_magnification, align 4
  %16 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %idx12 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %16, i32 0, i32 0
  %17 = load i64, i64* %idx12, align 8
  %cmp13 = icmp sge i64 %17, 0
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end
  %18 = load i64, i64* @Vccl_program_table, align 8
  %19 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %idx16 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %19, i32 0, i32 0
  %20 = load i64, i64* %idx16, align 8
  %call17 = call i64 @AREF(i64 %18, i64 %20)
  store i64 %call17, i64* %slot, align 8
  %21 = load i64, i64* %slot, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %21, i64 3, i64 %call18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %22 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %ic = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %22, i32 0, i32 3
  store i32 2, i32* %ic, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %23 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %23, 8
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %reg = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %25, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %reg, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %last_block = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %27, i32 0, i32 11
  %bf.load = load i8, i8* %last_block, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %last_block, align 4
  %28 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %status = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %28, i32 0, i32 6
  store i32 0, i32* %status, align 4
  %29 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %stack_idx = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %29, i32 0, i32 8
  store i32 0, i32* %stack_idx, align 4
  %30 = load %struct.ccl_program*, %struct.ccl_program** %ccl.addr, align 8
  %quit_silently = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %30, i32 0, i32 11
  %bf.load24 = load i8, i8* %quit_silently, align 4
  %bf.clear25 = and i8 %bf.load24, -3
  store i8 %bf.clear25, i8* %quit_silently, align 4
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3
  %31 = load i1, i1* %retval
  ret i1 %31
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i64 @ccl_get_compiled_code(i64 %ccl_prog, i64* %idx) #0 {
entry:
  %retval = alloca i64, align 8
  %ccl_prog.addr = alloca i64, align 8
  %idx.addr = alloca i64*, align 8
  %val = alloca i64, align 8
  %slot = alloca i64, align 8
  store i64 %ccl_prog, i64* %ccl_prog.addr, align 8
  store i64* %idx, i64** %idx.addr, align 8
  %0 = load i64, i64* %ccl_prog.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %ccl_prog.addr, align 8
  %call1 = call i64 @resolve_symbol_ccl_program(i64 %1)
  store i64 %call1, i64* %val, align 8
  %2 = load i64*, i64** %idx.addr, align 8
  store i64 -1, i64* %2, align 8
  %3 = load i64, i64* %val, align 8
  %call2 = call zeroext i1 @VECTORP(i64 %3)
  br i1 %call2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i64, i64* %val, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %call3, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %ccl_prog.addr, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %6 = load i64, i64* %ccl_prog.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 247)
  %call9 = call i64 @Fget(i64 %6, i64 %call8)
  store i64 %call9, i64* %val, align 8
  %7 = load i64, i64* %val, align 8
  %call10 = call zeroext i1 @NATNUMP(i64 %7)
  br i1 %call10, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %if.end.7
  %8 = load i64, i64* %val, align 8
  %shr = ashr i64 %8, 2
  %9 = load i64, i64* @Vccl_program_table, align 8
  %call11 = call i64 @ASIZE(i64 %9)
  %cmp12 = icmp sge i64 %shr, %call11
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.7
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  %10 = load i64, i64* @Vccl_program_table, align 8
  %11 = load i64, i64* %val, align 8
  %shr17 = ashr i64 %11, 2
  %call18 = call i64 @AREF(i64 %10, i64 %shr17)
  store i64 %call18, i64* %slot, align 8
  %12 = load i64, i64* %slot, align 8
  %call19 = call zeroext i1 @VECTORP(i64 %12)
  br i1 %call19, label %lor.lhs.false.20, label %if.then.27

lor.lhs.false.20:                                 ; preds = %if.end.16
  %13 = load i64, i64* %slot, align 8
  %call21 = call i64 @ASIZE(i64 %13)
  %cmp22 = icmp ne i64 %call21, 4
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %14 = load i64, i64* %slot, align 8
  %call25 = call i64 @AREF(i64 %14, i64 1)
  %call26 = call zeroext i1 @VECTORP(i64 %call25)
  br i1 %call26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.20, %if.end.16
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call28, i64* %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false.24
  %15 = load i64, i64* %val, align 8
  %shr30 = ashr i64 %15, 2
  %16 = load i64*, i64** %idx.addr, align 8
  store i64 %shr30, i64* %16, align 8
  %17 = load i64, i64* %slot, align 8
  %call31 = call i64 @AREF(i64 %17, i64 2)
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %call31, %call32
  br i1 %cmp33, label %if.then.35, label %if.end.43

if.then.35:                                       ; preds = %if.end.29
  %18 = load i64, i64* %slot, align 8
  %call36 = call i64 @AREF(i64 %18, i64 1)
  %call37 = call i64 @resolve_symbol_ccl_program(i64 %call36)
  store i64 %call37, i64* %val, align 8
  %19 = load i64, i64* %val, align 8
  %call38 = call zeroext i1 @VECTORP(i64 %19)
  br i1 %call38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %if.then.35
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call40, i64* %retval
  br label %return

if.end.41:                                        ; preds = %if.then.35
  %20 = load i64, i64* %slot, align 8
  %21 = load i64, i64* %val, align 8
  call void @ASET(i64 %20, i64 1, i64 %21)
  %22 = load i64, i64* %slot, align 8
  %call42 = call i64 @builtin_lisp_symbol(i32 901)
  call void @ASET(i64 %22, i64 2, i64 %call42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.41, %if.end.29
  %23 = load i64, i64* %slot, align 8
  %call44 = call i64 @AREF(i64 %23, i64 1)
  store i64 %call44, i64* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.39, %if.then.27, %if.then.14, %if.then.5, %cond.end
  %24 = load i64, i64* %retval
  ret i64 %24
}

declare void @ASET(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fccl_program_p(i64 %object) #0 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call1 = call i64 @resolve_symbol_ccl_program(i64 %1)
  store i64 %call1, i64* %val, align 8
  %2 = load i64, i64* %val, align 8
  %call2 = call zeroext i1 @VECTORP(i64 %2)
  br i1 %call2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call3, %cond.true ], [ %call4, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %object.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %4 = load i64, i64* %object.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 247)
  %call10 = call i64 @Fget(i64 %4, i64 %call9)
  store i64 %call10, i64* %val, align 8
  %5 = load i64, i64* %val, align 8
  %call11 = call zeroext i1 @NATNUMP(i64 %5)
  br i1 %call11, label %lor.lhs.false, label %cond.true.15

lor.lhs.false:                                    ; preds = %if.end.8
  %6 = load i64, i64* %val, align 8
  %shr = ashr i64 %6, 2
  %7 = load i64, i64* @Vccl_program_table, align 8
  %call12 = call i64 @ASIZE(i64 %7)
  %cmp13 = icmp sge i64 %shr, %call12
  br i1 %cmp13, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %lor.lhs.false, %if.end.8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.19

cond.false.17:                                    ; preds = %lor.lhs.false
  %call18 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.15
  %cond20 = phi i64 [ %call16, %cond.true.15 ], [ %call18, %cond.false.17 ]
  store i64 %cond20, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.19, %if.then.6, %cond.end
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @resolve_symbol_ccl_program(i64 %ccl) #0 {
entry:
  %retval = alloca i64, align 8
  %ccl.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %veclen = alloca i32, align 4
  %unresolved = alloca i32, align 4
  %result = alloca i64, align 8
  %contents = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %ccl, i64* %ccl.addr, align 8
  store i32 0, i32* %unresolved, align 4
  %0 = load i64, i64* %ccl.addr, align 8
  %call = call i64 @ASIZE(i64 %0)
  %cmp = icmp slt i64 2, %call
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %ccl.addr, align 8
  %call1 = call i64 @ASIZE(i64 %1)
  %cmp2 = icmp sle i64 %call1, 2147483647
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %2 = load i64, i64* %ccl.addr, align 8
  %call4 = call i64 @Fcopy_sequence(i64 %2)
  store i64 %call4, i64* %result, align 8
  %3 = load i64, i64* %result, align 8
  %call5 = call i64 @ASIZE(i64 %3)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %veclen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %veclen, align 4
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %result, align 8
  %7 = load i32, i32* %i, align 4
  %conv8 = sext i32 %7 to i64
  %call9 = call i64 @AREF(i64 %6, i64 %conv8)
  store i64 %call9, i64* %contents, align 8
  %8 = load i64, i64* %contents, align 8
  %and = and i64 %8, 7
  %conv10 = trunc i64 %and to i32
  %and11 = and i32 %conv10, -5
  %cmp12 = icmp eq i32 %and11, 2
  br i1 %cmp12, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %for.body
  br i1 false, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true.14
  %9 = load i64, i64* %contents, align 8
  %shr = ashr i64 %9, 2
  %cmp15 = icmp sle i64 -2147483648, %shr
  br i1 %cmp15, label %land.lhs.true.20, label %if.else

cond.false:                                       ; preds = %land.lhs.true.14
  %10 = load i64, i64* %contents, align 8
  %shr17 = ashr i64 %10, 2
  %cmp18 = icmp sle i64 0, %shr17
  br i1 %cmp18, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %cond.false, %cond.true
  %11 = load i64, i64* %contents, align 8
  %shr21 = ashr i64 %11, 2
  %cmp22 = icmp sle i64 %shr21, 2147483647
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true.20
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.20, %cond.false, %cond.true, %for.body
  %12 = load i64, i64* %contents, align 8
  %and25 = and i64 %12, 7
  %conv26 = trunc i64 %and25 to i32
  %cmp27 = icmp eq i32 %conv26, 3
  br i1 %cmp27, label %land.lhs.true.29, label %if.else.52

land.lhs.true.29:                                 ; preds = %if.else
  %13 = load i64, i64* %contents, align 8
  %sub = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car, align 8
  %and30 = and i64 %16, 7
  %conv31 = trunc i64 %and30 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %land.lhs.true.34, label %if.else.52

land.lhs.true.34:                                 ; preds = %land.lhs.true.29
  %17 = load i64, i64* %contents, align 8
  %sub35 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub35 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %20 = load i64, i64* %cdr, align 8
  %and36 = and i64 %20, 7
  %conv37 = trunc i64 %and36 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.else.52

if.then.40:                                       ; preds = %land.lhs.true.34
  %21 = load i64, i64* %contents, align 8
  %sub41 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub41 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %car42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 0
  %24 = load i64, i64* %car42, align 8
  %25 = load i64, i64* %contents, align 8
  %sub43 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub43 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %u44 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 1
  %cdr45 = bitcast %union.anon* %u44 to i64*
  %28 = load i64, i64* %cdr45, align 8
  %call46 = call i64 @Fget(i64 %24, i64 %28)
  store i64 %call46, i64* %val, align 8
  %29 = load i64, i64* %val, align 8
  %call47 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %29, i64 2147483647)
  br i1 %call47, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %if.then.40
  %30 = load i64, i64* %result, align 8
  %31 = load i32, i32* %i, align 4
  %conv49 = sext i32 %31 to i64
  %32 = load i64, i64* %val, align 8
  call void @ASET(i64 %30, i64 %conv49, i64 %32)
  br label %if.end.51

if.else.50:                                       ; preds = %if.then.40
  store i32 1, i32* %unresolved, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.48
  br label %for.inc

if.else.52:                                       ; preds = %land.lhs.true.34, %land.lhs.true.29, %if.else
  %33 = load i64, i64* %contents, align 8
  %and53 = and i64 %33, 7
  %conv54 = trunc i64 %and53 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.79

if.then.57:                                       ; preds = %if.else.52
  %34 = load i64, i64* %contents, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 935)
  %call59 = call i64 @Fget(i64 %34, i64 %call58)
  store i64 %call59, i64* %val, align 8
  %35 = load i64, i64* %val, align 8
  %call60 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %35, i64 2147483647)
  br i1 %call60, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.then.57
  %36 = load i64, i64* %result, align 8
  %37 = load i32, i32* %i, align 4
  %conv62 = sext i32 %37 to i64
  %38 = load i64, i64* %val, align 8
  call void @ASET(i64 %36, i64 %conv62, i64 %38)
  br label %if.end.78

if.else.63:                                       ; preds = %if.then.57
  %39 = load i64, i64* %contents, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 275)
  %call65 = call i64 @Fget(i64 %39, i64 %call64)
  store i64 %call65, i64* %val, align 8
  %40 = load i64, i64* %val, align 8
  %call66 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %40, i64 2147483647)
  br i1 %call66, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %if.else.63
  %41 = load i64, i64* %result, align 8
  %42 = load i32, i32* %i, align 4
  %conv68 = sext i32 %42 to i64
  %43 = load i64, i64* %val, align 8
  call void @ASET(i64 %41, i64 %conv68, i64 %43)
  br label %if.end.77

if.else.69:                                       ; preds = %if.else.63
  %44 = load i64, i64* %contents, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 247)
  %call71 = call i64 @Fget(i64 %44, i64 %call70)
  store i64 %call71, i64* %val, align 8
  %45 = load i64, i64* %val, align 8
  %call72 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %45, i64 2147483647)
  br i1 %call72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.else.69
  %46 = load i64, i64* %result, align 8
  %47 = load i32, i32* %i, align 4
  %conv74 = sext i32 %47 to i64
  %48 = load i64, i64* %val, align 8
  call void @ASET(i64 %46, i64 %conv74, i64 %48)
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.69
  store i32 1, i32* %unresolved, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.73
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.67
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.61
  br label %for.inc

if.end.79:                                        ; preds = %if.else.52
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call82, i64* %retval
  br label %return

for.inc:                                          ; preds = %if.end.78, %if.end.51, %if.then.24
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i64, i64* %result, align 8
  %call83 = call i64 @AREF(i64 %50, i64 0)
  %shr84 = ashr i64 %call83, 2
  %cmp85 = icmp sle i64 0, %shr84
  br i1 %cmp85, label %land.lhs.true.87, label %if.then.98

land.lhs.true.87:                                 ; preds = %for.end
  %51 = load i64, i64* %result, align 8
  %call88 = call i64 @AREF(i64 %51, i64 1)
  %shr89 = ashr i64 %call88, 2
  %cmp90 = icmp sle i64 0, %shr89
  %conv91 = zext i1 %cmp90 to i32
  %52 = load i64, i64* %result, align 8
  %call92 = call i64 @AREF(i64 %52, i64 1)
  %shr93 = ashr i64 %call92, 2
  %53 = load i64, i64* %ccl.addr, align 8
  %call94 = call i64 @ASIZE(i64 %53)
  %cmp95 = icmp sle i64 %shr93, %call94
  %conv96 = zext i1 %cmp95 to i32
  %and97 = and i32 %conv91, %conv96
  %tobool = icmp ne i32 %and97, 0
  br i1 %tobool, label %if.end.100, label %if.then.98

if.then.98:                                       ; preds = %land.lhs.true.87, %for.end
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call99, i64* %retval
  br label %return

if.end.100:                                       ; preds = %land.lhs.true.87
  %54 = load i32, i32* %unresolved, align 4
  %tobool101 = icmp ne i32 %54, 0
  br i1 %tobool101, label %cond.true.102, label %cond.false.104

cond.true.102:                                    ; preds = %if.end.100
  %call103 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false.104:                                   ; preds = %if.end.100
  %55 = load i64, i64* %result, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.104, %cond.true.102
  %cond = phi i64 [ %call103, %cond.true.102 ], [ %55, %cond.false.104 ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.98, %if.end.81, %if.then
  %56 = load i64, i64* %retval
  ret i64 %56
}

declare i64 @Fget(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fccl_execute(i64 %ccl_prog, i64 %reg) #0 {
entry:
  %ccl_prog.addr = alloca i64, align 8
  %reg.addr = alloca i64, align 8
  %ccl = alloca %struct.ccl_program, align 8
  %i = alloca i32, align 4
  store i64 %ccl_prog, i64* %ccl_prog.addr, align 8
  store i64 %reg, i64* %reg.addr, align 8
  %0 = load i64, i64* %ccl_prog.addr, align 8
  %call = call zeroext i1 @setup_ccl_program(%struct.ccl_program* %ccl, i64 %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %reg.addr, align 8
  call void @CHECK_VECTOR(i64 %1)
  %2 = load i64, i64* %reg.addr, align 8
  %call1 = call i64 @ASIZE(i64 %2)
  %cmp = icmp ne i64 %call1, 8
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #5
  unreachable

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %3 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %3, 8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %reg.addr, align 8
  %5 = load i32, i32* %i, align 4
  %conv = sext i32 %5 to i64
  %call5 = call i64 @AREF(i64 %4, i64 %conv)
  %and = and i64 %call5, 7
  %conv6 = trunc i64 %and to i32
  %and7 = and i32 %conv6, -5
  %cmp8 = icmp eq i32 %and7, 2
  br i1 %cmp8, label %land.lhs.true, label %cond.false.29

land.lhs.true:                                    ; preds = %for.body
  br i1 false, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i64, i64* %reg.addr, align 8
  %7 = load i32, i32* %i, align 4
  %conv10 = sext i32 %7 to i64
  %call11 = call i64 @AREF(i64 %6, i64 %conv10)
  %shr = ashr i64 %call11, 2
  %cmp12 = icmp sle i64 -2147483648, %shr
  br i1 %cmp12, label %land.lhs.true.19, label %cond.false.29

cond.false:                                       ; preds = %land.lhs.true
  %8 = load i64, i64* %reg.addr, align 8
  %9 = load i32, i32* %i, align 4
  %conv14 = sext i32 %9 to i64
  %call15 = call i64 @AREF(i64 %8, i64 %conv14)
  %shr16 = ashr i64 %call15, 2
  %cmp17 = icmp sle i64 0, %shr16
  br i1 %cmp17, label %land.lhs.true.19, label %cond.false.29

land.lhs.true.19:                                 ; preds = %cond.false, %cond.true
  %10 = load i64, i64* %reg.addr, align 8
  %11 = load i32, i32* %i, align 4
  %conv20 = sext i32 %11 to i64
  %call21 = call i64 @AREF(i64 %10, i64 %conv20)
  %shr22 = ashr i64 %call21, 2
  %cmp23 = icmp sle i64 %shr22, 2147483647
  br i1 %cmp23, label %cond.true.25, label %cond.false.29

cond.true.25:                                     ; preds = %land.lhs.true.19
  %12 = load i64, i64* %reg.addr, align 8
  %13 = load i32, i32* %i, align 4
  %conv26 = sext i32 %13 to i64
  %call27 = call i64 @AREF(i64 %12, i64 %conv26)
  %shr28 = ashr i64 %call27, 2
  br label %cond.end

cond.false.29:                                    ; preds = %land.lhs.true.19, %cond.false, %cond.true, %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false.29, %cond.true.25
  %cond = phi i64 [ %shr28, %cond.true.25 ], [ 0, %cond.false.29 ]
  %conv30 = trunc i64 %cond to i32
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %reg31 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %reg31, i32 0, i64 %idxprom
  store i32 %conv30, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ccl_driver(%struct.ccl_program* %ccl, i32* null, i32* null, i32 0, i32 0, i64 %call32)
  br label %do.body

do.body:                                          ; preds = %for.end
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %16, %call33
  br i1 %cmp34, label %if.else, label %land.lhs.true.36

land.lhs.true.36:                                 ; preds = %do.body
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %17, %call37
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %land.lhs.true.36
  call void @process_quit_flag()
  br label %if.end.43

if.else:                                          ; preds = %land.lhs.true.36, %do.body
  %18 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %18 to i1
  br i1 %tobool, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.40
  br label %do.end

do.end:                                           ; preds = %if.end.43
  %status = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 6
  %19 = load i32, i32* %status, align 4
  %cmp44 = icmp ne i32 %19, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end
  %ic = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 3
  %20 = load i32, i32* %ic, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i32 %20) #5
  unreachable

if.end.47:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.57, %if.end.47
  %21 = load i32, i32* %i, align 4
  %cmp49 = icmp slt i32 %21, 8
  br i1 %cmp49, label %for.body.51, label %for.end.59

for.body.51:                                      ; preds = %for.cond.48
  %22 = load i64, i64* %reg.addr, align 8
  %23 = load i32, i32* %i, align 4
  %conv52 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %24 to i64
  %reg54 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 5
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %reg54, i32 0, i64 %idxprom53
  %25 = load i32, i32* %arrayidx55, align 4
  %conv56 = sext i32 %25 to i64
  %shl = shl i64 %conv56, 2
  %add = add i64 %shl, 2
  call void @ASET(i64 %22, i64 %conv52, i64 %add)
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.51
  %26 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %26, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.48

for.end.59:                                       ; preds = %for.cond.48
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call60
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #3

declare void @CHECK_VECTOR(i64) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

; Function Attrs: nounwind uwtable
define i64 @Fccl_execute_on_string(i64 %ccl_prog, i64 %status, i64 %str, i64 %contin, i64 %unibyte_p) #0 {
entry:
  %ccl_prog.addr = alloca i64, align 8
  %status.addr = alloca i64, align 8
  %str.addr = alloca i64, align 8
  %contin.addr = alloca i64, align 8
  %unibyte_p.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %ccl = alloca %struct.ccl_program, align 8
  %i = alloca i32, align 4
  %outbufsize = alloca i64, align 8
  %outbuf = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %str_chars = alloca i64, align 8
  %str_bytes = alloca i64, align 8
  %source = alloca [1024 x i32], align 16
  %destination = alloca [1024 x i32], align 16
  %consumed_chars = alloca i64, align 8
  %consumed_bytes = alloca i64, align 8
  %produced_chars = alloca i64, align 8
  %buf_magnification = alloca i32, align 4
  %p = alloca i8*, align 8
  %endp = alloca i8*, align 8
  %j = alloca i32, align 4
  %src = alloca i32*, align 8
  %src_size = alloca i32, align 4
  %max_expansion = alloca i32, align 4
  %offset = alloca i64, align 8
  %shortfall = alloca i64, align 8
  store i64 %ccl_prog, i64* %ccl_prog.addr, align 8
  store i64 %status, i64* %status.addr, align 8
  store i64 %str, i64* %str.addr, align 8
  store i64 %contin, i64* %contin.addr, align 8
  store i64 %unibyte_p, i64* %unibyte_p.addr, align 8
  %0 = load i64, i64* %ccl_prog.addr, align 8
  %call = call zeroext i1 @setup_ccl_program(%struct.ccl_program* %ccl, i64 %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %status.addr, align 8
  call void @CHECK_VECTOR(i64 %1)
  %2 = load i64, i64* %status.addr, align 8
  %call1 = call i64 @ASIZE(i64 %2)
  %cmp = icmp ne i64 %call1, 9
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0)) #5
  unreachable

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* %str.addr, align 8
  call void @CHECK_STRING(i64 %3)
  %4 = load i64, i64* %str.addr, align 8
  %call4 = call i64 @SCHARS(i64 %4)
  store i64 %call4, i64* %str_chars, align 8
  %5 = load i64, i64* %str.addr, align 8
  %call5 = call i64 @SBYTES(i64 %5)
  store i64 %call5, i64* %str_bytes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %6, 8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %status.addr, align 8
  %8 = load i32, i32* %i, align 4
  %conv = sext i32 %8 to i64
  %call7 = call i64 @AREF(i64 %7, i64 %conv)
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %call7, %call8
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.body
  %9 = load i64, i64* %status.addr, align 8
  %10 = load i32, i32* %i, align 4
  %conv12 = sext i32 %10 to i64
  call void @ASET(i64 %9, i64 %conv12, i64 2)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %for.body
  %11 = load i64, i64* %status.addr, align 8
  %12 = load i32, i32* %i, align 4
  %conv14 = sext i32 %12 to i64
  %call15 = call i64 @AREF(i64 %11, i64 %conv14)
  %and = and i64 %call15, 7
  %conv16 = trunc i64 %and to i32
  %and17 = and i32 %conv16, -5
  %cmp18 = icmp eq i32 %and17, 2
  br i1 %cmp18, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end.13
  br i1 false, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %13 = load i64, i64* %status.addr, align 8
  %14 = load i32, i32* %i, align 4
  %conv20 = sext i32 %14 to i64
  %call21 = call i64 @AREF(i64 %13, i64 %conv20)
  %shr = ashr i64 %call21, 2
  %cmp22 = icmp sle i64 -2147483648, %shr
  br i1 %cmp22, label %land.lhs.true.29, label %if.end.40

cond.false:                                       ; preds = %land.lhs.true
  %15 = load i64, i64* %status.addr, align 8
  %16 = load i32, i32* %i, align 4
  %conv24 = sext i32 %16 to i64
  %call25 = call i64 @AREF(i64 %15, i64 %conv24)
  %shr26 = ashr i64 %call25, 2
  %cmp27 = icmp sle i64 0, %shr26
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.40

land.lhs.true.29:                                 ; preds = %cond.false, %cond.true
  %17 = load i64, i64* %status.addr, align 8
  %18 = load i32, i32* %i, align 4
  %conv30 = sext i32 %18 to i64
  %call31 = call i64 @AREF(i64 %17, i64 %conv30)
  %shr32 = ashr i64 %call31, 2
  %cmp33 = icmp sle i64 %shr32, 2147483647
  br i1 %cmp33, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %land.lhs.true.29
  %19 = load i64, i64* %status.addr, align 8
  %20 = load i32, i32* %i, align 4
  %conv36 = sext i32 %20 to i64
  %call37 = call i64 @AREF(i64 %19, i64 %conv36)
  %shr38 = ashr i64 %call37, 2
  %conv39 = trunc i64 %shr38 to i32
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %reg = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %reg, i32 0, i64 %idxprom
  store i32 %conv39, i32* %arrayidx, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %land.lhs.true.29, %cond.false, %cond.true, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i64, i64* %status.addr, align 8
  %24 = load i32, i32* %i, align 4
  %conv41 = sext i32 %24 to i64
  %call42 = call i64 @AREF(i64 %23, i64 %conv41)
  %and43 = and i64 %call42, 7
  %conv44 = trunc i64 %and43 to i32
  %and45 = and i32 %conv44, -5
  %cmp46 = icmp eq i32 %and45, 2
  br i1 %cmp46, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %for.end
  %25 = load i64, i64* %status.addr, align 8
  %call49 = call i64 @AREF(i64 %25, i64 8)
  %shr50 = ashr i64 %call49, 2
  %conv51 = trunc i64 %shr50 to i32
  store i32 %conv51, i32* %i, align 4
  %ic = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 3
  %26 = load i32, i32* %ic, align 4
  %27 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %26, %27
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.59

land.lhs.true.54:                                 ; preds = %if.then.48
  %28 = load i32, i32* %i, align 4
  %size = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 1
  %29 = load i32, i32* %size, align 4
  %cmp55 = icmp slt i32 %28, %29
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %land.lhs.true.54
  %30 = load i32, i32* %i, align 4
  %ic58 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 3
  store i32 %30, i32* %ic58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %land.lhs.true.54, %if.then.48
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %for.end
  %buf_magnification61 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 7
  %31 = load i32, i32* %buf_magnification61, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %if.end.60
  %buf_magnification63 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 7
  %32 = load i32, i32* %buf_magnification63, align 4
  br label %cond.end

cond.false.64:                                    ; preds = %if.end.60
  br label %cond.end

cond.end:                                         ; preds = %cond.false.64, %cond.true.62
  %cond = phi i32 [ %32, %cond.true.62 ], [ 1, %cond.false.64 ]
  store i32 %cond, i32* %buf_magnification, align 4
  %33 = load i64, i64* %str_bytes, align 8
  store i64 %33, i64* %outbufsize, align 8
  br i1 false, label %cond.true.65, label %cond.false.719

cond.true.65:                                     ; preds = %cond.end
  br i1 false, label %cond.true.66, label %cond.false.434

cond.true.66:                                     ; preds = %cond.true.65
  %34 = load i64, i64* %outbufsize, align 8
  %conv67 = trunc i64 %34 to i8
  %conv68 = sext i8 %conv67 to i32
  %mul = mul nsw i32 0, %conv68
  %35 = load i32, i32* %buf_magnification, align 4
  %conv69 = trunc i32 %35 to i8
  %conv70 = sext i8 %conv69 to i32
  %add = add nsw i32 %mul, %conv70
  %mul71 = mul nsw i32 0, %add
  %sub = sub nsw i32 %mul71, 1
  %cmp72 = icmp slt i32 %sub, 0
  br i1 %cmp72, label %cond.true.74, label %cond.false.98

cond.true.74:                                     ; preds = %cond.true.66
  %36 = load i64, i64* %outbufsize, align 8
  %conv75 = trunc i64 %36 to i8
  %conv76 = sext i8 %conv75 to i32
  %mul77 = mul nsw i32 0, %conv76
  %37 = load i32, i32* %buf_magnification, align 4
  %conv78 = trunc i32 %37 to i8
  %conv79 = sext i8 %conv78 to i32
  %add80 = add nsw i32 %mul77, %conv79
  %mul81 = mul nsw i32 0, %add80
  %add82 = add nsw i32 %mul81, 0
  %neg = xor i32 %add82, -1
  %cmp83 = icmp eq i32 %neg, -1
  %conv84 = zext i1 %cmp83 to i32
  %sub85 = sub nsw i32 0, %conv84
  %38 = load i64, i64* %outbufsize, align 8
  %conv86 = trunc i64 %38 to i8
  %conv87 = sext i8 %conv86 to i32
  %mul88 = mul nsw i32 0, %conv87
  %39 = load i32, i32* %buf_magnification, align 4
  %conv89 = trunc i32 %39 to i8
  %conv90 = sext i8 %conv89 to i32
  %add91 = add nsw i32 %mul88, %conv90
  %mul92 = mul nsw i32 0, %add91
  %add93 = add nsw i32 %mul92, 1
  %shl = shl i32 %add93, 30
  %sub94 = sub nsw i32 %shl, 1
  %mul95 = mul nsw i32 %sub94, 2
  %add96 = add nsw i32 %mul95, 1
  %sub97 = sub nsw i32 %sub85, %add96
  br label %cond.end.107

cond.false.98:                                    ; preds = %cond.true.66
  %40 = load i64, i64* %outbufsize, align 8
  %conv99 = trunc i64 %40 to i8
  %conv100 = sext i8 %conv99 to i32
  %mul101 = mul nsw i32 0, %conv100
  %41 = load i32, i32* %buf_magnification, align 4
  %conv102 = trunc i32 %41 to i8
  %conv103 = sext i8 %conv102 to i32
  %add104 = add nsw i32 %mul101, %conv103
  %mul105 = mul nsw i32 0, %add104
  %add106 = add nsw i32 %mul105, 0
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.98, %cond.true.74
  %cond108 = phi i32 [ %sub97, %cond.true.74 ], [ %add106, %cond.false.98 ]
  %cmp109 = icmp eq i32 %cond108, 0
  br i1 %cmp109, label %land.lhs.true.111, label %lor.lhs.false.130

land.lhs.true.111:                                ; preds = %cond.end.107
  %42 = load i32, i32* %buf_magnification, align 4
  %conv112 = trunc i32 %42 to i8
  %conv113 = sext i8 %conv112 to i32
  %cmp114 = icmp slt i32 %conv113, 0
  br i1 %cmp114, label %land.lhs.true.116, label %lor.lhs.false

land.lhs.true.116:                                ; preds = %land.lhs.true.111
  %43 = load i64, i64* %outbufsize, align 8
  %conv117 = trunc i64 %43 to i8
  %conv118 = sext i8 %conv117 to i32
  %cmp119 = icmp slt i32 0, %conv118
  br i1 %cmp119, label %cond.true.376, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.116, %land.lhs.true.111
  %44 = load i64, i64* %outbufsize, align 8
  %conv121 = trunc i64 %44 to i8
  %conv122 = sext i8 %conv121 to i32
  %cmp123 = icmp slt i32 %conv122, 0
  br i1 %cmp123, label %land.lhs.true.125, label %lor.lhs.false.130

land.lhs.true.125:                                ; preds = %lor.lhs.false
  %45 = load i32, i32* %buf_magnification, align 4
  %conv126 = trunc i32 %45 to i8
  %conv127 = sext i8 %conv126 to i32
  %cmp128 = icmp slt i32 0, %conv127
  br i1 %cmp128, label %cond.true.376, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %land.lhs.true.125, %lor.lhs.false, %cond.end.107
  %46 = load i64, i64* %outbufsize, align 8
  %conv131 = trunc i64 %46 to i8
  %conv132 = sext i8 %conv131 to i32
  %cmp133 = icmp slt i32 %conv132, 0
  br i1 %cmp133, label %cond.true.135, label %cond.false.242

cond.true.135:                                    ; preds = %lor.lhs.false.130
  %47 = load i32, i32* %buf_magnification, align 4
  %conv136 = trunc i32 %47 to i8
  %conv137 = sext i8 %conv136 to i32
  %cmp138 = icmp slt i32 %conv137, 0
  br i1 %cmp138, label %cond.true.140, label %cond.false.181

cond.true.140:                                    ; preds = %cond.true.135
  %48 = load i32, i32* %buf_magnification, align 4
  %conv141 = trunc i32 %48 to i8
  %conv142 = sext i8 %conv141 to i32
  %49 = load i64, i64* %outbufsize, align 8
  %conv143 = trunc i64 %49 to i8
  %conv144 = sext i8 %conv143 to i32
  %mul145 = mul nsw i32 0, %conv144
  %50 = load i32, i32* %buf_magnification, align 4
  %conv146 = trunc i32 %50 to i8
  %conv147 = sext i8 %conv146 to i32
  %add148 = add nsw i32 %mul145, %conv147
  %mul149 = mul nsw i32 0, %add148
  %sub150 = sub nsw i32 %mul149, 1
  %cmp151 = icmp slt i32 %sub150, 0
  br i1 %cmp151, label %cond.true.153, label %cond.false.166

cond.true.153:                                    ; preds = %cond.true.140
  %51 = load i64, i64* %outbufsize, align 8
  %conv154 = trunc i64 %51 to i8
  %conv155 = sext i8 %conv154 to i32
  %mul156 = mul nsw i32 0, %conv155
  %52 = load i32, i32* %buf_magnification, align 4
  %conv157 = trunc i32 %52 to i8
  %conv158 = sext i8 %conv157 to i32
  %add159 = add nsw i32 %mul156, %conv158
  %mul160 = mul nsw i32 0, %add159
  %add161 = add nsw i32 %mul160, 1
  %shl162 = shl i32 %add161, 30
  %sub163 = sub nsw i32 %shl162, 1
  %mul164 = mul nsw i32 %sub163, 2
  %add165 = add nsw i32 %mul164, 1
  br label %cond.end.175

cond.false.166:                                   ; preds = %cond.true.140
  %53 = load i64, i64* %outbufsize, align 8
  %conv167 = trunc i64 %53 to i8
  %conv168 = sext i8 %conv167 to i32
  %mul169 = mul nsw i32 0, %conv168
  %54 = load i32, i32* %buf_magnification, align 4
  %conv170 = trunc i32 %54 to i8
  %conv171 = sext i8 %conv170 to i32
  %add172 = add nsw i32 %mul169, %conv171
  %mul173 = mul nsw i32 0, %add172
  %sub174 = sub nsw i32 %mul173, 1
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.166, %cond.true.153
  %cond176 = phi i32 [ %add165, %cond.true.153 ], [ %sub174, %cond.false.166 ]
  %55 = load i64, i64* %outbufsize, align 8
  %conv177 = trunc i64 %55 to i8
  %conv178 = sext i8 %conv177 to i32
  %div = sdiv i32 %cond176, %conv178
  %cmp179 = icmp slt i32 %conv142, %div
  br i1 %cmp179, label %cond.true.376, label %lor.lhs.false.350

cond.false.181:                                   ; preds = %cond.true.135
  %56 = load i64, i64* %outbufsize, align 8
  %conv182 = trunc i64 %56 to i8
  %conv183 = sext i8 %conv182 to i32
  %cmp184 = icmp eq i32 %conv183, -1
  br i1 %cmp184, label %cond.true.186, label %cond.false.187

cond.true.186:                                    ; preds = %cond.false.181
  br i1 false, label %cond.true.376, label %lor.lhs.false.350

cond.false.187:                                   ; preds = %cond.false.181
  %57 = load i64, i64* %outbufsize, align 8
  %conv188 = trunc i64 %57 to i8
  %conv189 = sext i8 %conv188 to i32
  %mul190 = mul nsw i32 0, %conv189
  %58 = load i32, i32* %buf_magnification, align 4
  %conv191 = trunc i32 %58 to i8
  %conv192 = sext i8 %conv191 to i32
  %add193 = add nsw i32 %mul190, %conv192
  %mul194 = mul nsw i32 0, %add193
  %sub195 = sub nsw i32 %mul194, 1
  %cmp196 = icmp slt i32 %sub195, 0
  br i1 %cmp196, label %cond.true.198, label %cond.false.224

cond.true.198:                                    ; preds = %cond.false.187
  %59 = load i64, i64* %outbufsize, align 8
  %conv199 = trunc i64 %59 to i8
  %conv200 = sext i8 %conv199 to i32
  %mul201 = mul nsw i32 0, %conv200
  %60 = load i32, i32* %buf_magnification, align 4
  %conv202 = trunc i32 %60 to i8
  %conv203 = sext i8 %conv202 to i32
  %add204 = add nsw i32 %mul201, %conv203
  %mul205 = mul nsw i32 0, %add204
  %add206 = add nsw i32 %mul205, 0
  %neg207 = xor i32 %add206, -1
  %cmp208 = icmp eq i32 %neg207, -1
  %conv209 = zext i1 %cmp208 to i32
  %sub210 = sub nsw i32 0, %conv209
  %61 = load i64, i64* %outbufsize, align 8
  %conv211 = trunc i64 %61 to i8
  %conv212 = sext i8 %conv211 to i32
  %mul213 = mul nsw i32 0, %conv212
  %62 = load i32, i32* %buf_magnification, align 4
  %conv214 = trunc i32 %62 to i8
  %conv215 = sext i8 %conv214 to i32
  %add216 = add nsw i32 %mul213, %conv215
  %mul217 = mul nsw i32 0, %add216
  %add218 = add nsw i32 %mul217, 1
  %shl219 = shl i32 %add218, 30
  %sub220 = sub nsw i32 %shl219, 1
  %mul221 = mul nsw i32 %sub220, 2
  %add222 = add nsw i32 %mul221, 1
  %sub223 = sub nsw i32 %sub210, %add222
  br label %cond.end.233

cond.false.224:                                   ; preds = %cond.false.187
  %63 = load i64, i64* %outbufsize, align 8
  %conv225 = trunc i64 %63 to i8
  %conv226 = sext i8 %conv225 to i32
  %mul227 = mul nsw i32 0, %conv226
  %64 = load i32, i32* %buf_magnification, align 4
  %conv228 = trunc i32 %64 to i8
  %conv229 = sext i8 %conv228 to i32
  %add230 = add nsw i32 %mul227, %conv229
  %mul231 = mul nsw i32 0, %add230
  %add232 = add nsw i32 %mul231, 0
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.224, %cond.true.198
  %cond234 = phi i32 [ %sub223, %cond.true.198 ], [ %add232, %cond.false.224 ]
  %65 = load i64, i64* %outbufsize, align 8
  %conv235 = trunc i64 %65 to i8
  %conv236 = sext i8 %conv235 to i32
  %div237 = sdiv i32 %cond234, %conv236
  %66 = load i32, i32* %buf_magnification, align 4
  %conv238 = trunc i32 %66 to i8
  %conv239 = sext i8 %conv238 to i32
  %cmp240 = icmp slt i32 %div237, %conv239
  br i1 %cmp240, label %cond.true.376, label %lor.lhs.false.350

cond.false.242:                                   ; preds = %lor.lhs.false.130
  %67 = load i64, i64* %outbufsize, align 8
  %conv243 = trunc i64 %67 to i8
  %conv244 = sext i8 %conv243 to i32
  %cmp245 = icmp eq i32 %conv244, 0
  br i1 %cmp245, label %cond.true.247, label %cond.false.248

cond.true.247:                                    ; preds = %cond.false.242
  br i1 false, label %cond.true.376, label %lor.lhs.false.350

cond.false.248:                                   ; preds = %cond.false.242
  %68 = load i32, i32* %buf_magnification, align 4
  %conv249 = trunc i32 %68 to i8
  %conv250 = sext i8 %conv249 to i32
  %cmp251 = icmp slt i32 %conv250, 0
  br i1 %cmp251, label %cond.true.253, label %cond.false.308

cond.true.253:                                    ; preds = %cond.false.248
  %69 = load i32, i32* %buf_magnification, align 4
  %conv254 = trunc i32 %69 to i8
  %conv255 = sext i8 %conv254 to i32
  %70 = load i64, i64* %outbufsize, align 8
  %conv256 = trunc i64 %70 to i8
  %conv257 = sext i8 %conv256 to i32
  %mul258 = mul nsw i32 0, %conv257
  %71 = load i32, i32* %buf_magnification, align 4
  %conv259 = trunc i32 %71 to i8
  %conv260 = sext i8 %conv259 to i32
  %add261 = add nsw i32 %mul258, %conv260
  %mul262 = mul nsw i32 0, %add261
  %sub263 = sub nsw i32 %mul262, 1
  %cmp264 = icmp slt i32 %sub263, 0
  br i1 %cmp264, label %cond.true.266, label %cond.false.292

cond.true.266:                                    ; preds = %cond.true.253
  %72 = load i64, i64* %outbufsize, align 8
  %conv267 = trunc i64 %72 to i8
  %conv268 = sext i8 %conv267 to i32
  %mul269 = mul nsw i32 0, %conv268
  %73 = load i32, i32* %buf_magnification, align 4
  %conv270 = trunc i32 %73 to i8
  %conv271 = sext i8 %conv270 to i32
  %add272 = add nsw i32 %mul269, %conv271
  %mul273 = mul nsw i32 0, %add272
  %add274 = add nsw i32 %mul273, 0
  %neg275 = xor i32 %add274, -1
  %cmp276 = icmp eq i32 %neg275, -1
  %conv277 = zext i1 %cmp276 to i32
  %sub278 = sub nsw i32 0, %conv277
  %74 = load i64, i64* %outbufsize, align 8
  %conv279 = trunc i64 %74 to i8
  %conv280 = sext i8 %conv279 to i32
  %mul281 = mul nsw i32 0, %conv280
  %75 = load i32, i32* %buf_magnification, align 4
  %conv282 = trunc i32 %75 to i8
  %conv283 = sext i8 %conv282 to i32
  %add284 = add nsw i32 %mul281, %conv283
  %mul285 = mul nsw i32 0, %add284
  %add286 = add nsw i32 %mul285, 1
  %shl287 = shl i32 %add286, 30
  %sub288 = sub nsw i32 %shl287, 1
  %mul289 = mul nsw i32 %sub288, 2
  %add290 = add nsw i32 %mul289, 1
  %sub291 = sub nsw i32 %sub278, %add290
  br label %cond.end.301

cond.false.292:                                   ; preds = %cond.true.253
  %76 = load i64, i64* %outbufsize, align 8
  %conv293 = trunc i64 %76 to i8
  %conv294 = sext i8 %conv293 to i32
  %mul295 = mul nsw i32 0, %conv294
  %77 = load i32, i32* %buf_magnification, align 4
  %conv296 = trunc i32 %77 to i8
  %conv297 = sext i8 %conv296 to i32
  %add298 = add nsw i32 %mul295, %conv297
  %mul299 = mul nsw i32 0, %add298
  %add300 = add nsw i32 %mul299, 0
  br label %cond.end.301

cond.end.301:                                     ; preds = %cond.false.292, %cond.true.266
  %cond302 = phi i32 [ %sub291, %cond.true.266 ], [ %add300, %cond.false.292 ]
  %78 = load i64, i64* %outbufsize, align 8
  %conv303 = trunc i64 %78 to i8
  %conv304 = sext i8 %conv303 to i32
  %div305 = sdiv i32 %cond302, %conv304
  %cmp306 = icmp slt i32 %conv255, %div305
  br i1 %cmp306, label %cond.true.376, label %lor.lhs.false.350

cond.false.308:                                   ; preds = %cond.false.248
  %79 = load i64, i64* %outbufsize, align 8
  %conv309 = trunc i64 %79 to i8
  %conv310 = sext i8 %conv309 to i32
  %mul311 = mul nsw i32 0, %conv310
  %80 = load i32, i32* %buf_magnification, align 4
  %conv312 = trunc i32 %80 to i8
  %conv313 = sext i8 %conv312 to i32
  %add314 = add nsw i32 %mul311, %conv313
  %mul315 = mul nsw i32 0, %add314
  %sub316 = sub nsw i32 %mul315, 1
  %cmp317 = icmp slt i32 %sub316, 0
  br i1 %cmp317, label %cond.true.319, label %cond.false.332

cond.true.319:                                    ; preds = %cond.false.308
  %81 = load i64, i64* %outbufsize, align 8
  %conv320 = trunc i64 %81 to i8
  %conv321 = sext i8 %conv320 to i32
  %mul322 = mul nsw i32 0, %conv321
  %82 = load i32, i32* %buf_magnification, align 4
  %conv323 = trunc i32 %82 to i8
  %conv324 = sext i8 %conv323 to i32
  %add325 = add nsw i32 %mul322, %conv324
  %mul326 = mul nsw i32 0, %add325
  %add327 = add nsw i32 %mul326, 1
  %shl328 = shl i32 %add327, 30
  %sub329 = sub nsw i32 %shl328, 1
  %mul330 = mul nsw i32 %sub329, 2
  %add331 = add nsw i32 %mul330, 1
  br label %cond.end.341

cond.false.332:                                   ; preds = %cond.false.308
  %83 = load i64, i64* %outbufsize, align 8
  %conv333 = trunc i64 %83 to i8
  %conv334 = sext i8 %conv333 to i32
  %mul335 = mul nsw i32 0, %conv334
  %84 = load i32, i32* %buf_magnification, align 4
  %conv336 = trunc i32 %84 to i8
  %conv337 = sext i8 %conv336 to i32
  %add338 = add nsw i32 %mul335, %conv337
  %mul339 = mul nsw i32 0, %add338
  %sub340 = sub nsw i32 %mul339, 1
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.332, %cond.true.319
  %cond342 = phi i32 [ %add331, %cond.true.319 ], [ %sub340, %cond.false.332 ]
  %85 = load i64, i64* %outbufsize, align 8
  %conv343 = trunc i64 %85 to i8
  %conv344 = sext i8 %conv343 to i32
  %div345 = sdiv i32 %cond342, %conv344
  %86 = load i32, i32* %buf_magnification, align 4
  %conv346 = trunc i32 %86 to i8
  %conv347 = sext i8 %conv346 to i32
  %cmp348 = icmp slt i32 %div345, %conv347
  br i1 %cmp348, label %cond.true.376, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %cond.end.341, %cond.end.301, %cond.true.247, %cond.end.233, %cond.true.186, %cond.end.175
  %87 = load i32, i32* %buf_magnification, align 4
  %conv351 = trunc i32 %87 to i8
  %conv352 = sext i8 %conv351 to i32
  %88 = load i64, i64* %outbufsize, align 8
  %conv353 = trunc i64 %88 to i8
  %conv354 = sext i8 %conv353 to i32
  %mul355 = mul nsw i32 %conv352, %conv354
  %mul356 = mul nsw i32 0, %mul355
  %sub357 = sub nsw i32 %mul356, 1
  %cmp358 = icmp slt i32 %sub357, 0
  br i1 %cmp358, label %land.lhs.true.360, label %lor.lhs.false.368

land.lhs.true.360:                                ; preds = %lor.lhs.false.350
  %89 = load i32, i32* %buf_magnification, align 4
  %conv361 = trunc i32 %89 to i8
  %conv362 = sext i8 %conv361 to i32
  %90 = load i64, i64* %outbufsize, align 8
  %conv363 = trunc i64 %90 to i8
  %conv364 = sext i8 %conv363 to i32
  %mul365 = mul nsw i32 %conv362, %conv364
  %cmp366 = icmp slt i32 %mul365, -128
  br i1 %cmp366, label %cond.true.376, label %lor.lhs.false.368

lor.lhs.false.368:                                ; preds = %land.lhs.true.360, %lor.lhs.false.350
  %91 = load i32, i32* %buf_magnification, align 4
  %conv369 = trunc i32 %91 to i8
  %conv370 = sext i8 %conv369 to i32
  %92 = load i64, i64* %outbufsize, align 8
  %conv371 = trunc i64 %92 to i8
  %conv372 = sext i8 %conv371 to i32
  %mul373 = mul nsw i32 %conv370, %conv372
  %cmp374 = icmp slt i32 127, %mul373
  br i1 %cmp374, label %cond.true.376, label %cond.false.405

cond.true.376:                                    ; preds = %lor.lhs.false.368, %land.lhs.true.360, %cond.end.341, %cond.end.301, %cond.true.247, %cond.end.233, %cond.true.186, %cond.end.175, %land.lhs.true.125, %land.lhs.true.116
  %93 = load i32, i32* %buf_magnification, align 4
  %conv377 = trunc i32 %93 to i8
  %conv378 = zext i8 %conv377 to i32
  %94 = load i64, i64* %outbufsize, align 8
  %conv379 = trunc i64 %94 to i8
  %conv380 = zext i8 %conv379 to i32
  %mul381 = mul nsw i32 %conv378, %conv380
  %cmp382 = icmp sle i32 %mul381, 127
  br i1 %cmp382, label %cond.true.384, label %cond.false.392

cond.true.384:                                    ; preds = %cond.true.376
  %95 = load i32, i32* %buf_magnification, align 4
  %conv385 = trunc i32 %95 to i8
  %conv386 = zext i8 %conv385 to i32
  %96 = load i64, i64* %outbufsize, align 8
  %conv387 = trunc i64 %96 to i8
  %conv388 = zext i8 %conv387 to i32
  %mul389 = mul nsw i32 %conv386, %conv388
  %conv390 = trunc i32 %mul389 to i8
  %conv391 = sext i8 %conv390 to i32
  br label %cond.end.402

cond.false.392:                                   ; preds = %cond.true.376
  %97 = load i32, i32* %buf_magnification, align 4
  %conv393 = trunc i32 %97 to i8
  %conv394 = zext i8 %conv393 to i32
  %98 = load i64, i64* %outbufsize, align 8
  %conv395 = trunc i64 %98 to i8
  %conv396 = zext i8 %conv395 to i32
  %mul397 = mul nsw i32 %conv394, %conv396
  %sub398 = sub nsw i32 %mul397, -128
  %conv399 = trunc i32 %sub398 to i8
  %conv400 = sext i8 %conv399 to i32
  %add401 = add nsw i32 %conv400, -128
  br label %cond.end.402

cond.end.402:                                     ; preds = %cond.false.392, %cond.true.384
  %cond403 = phi i32 [ %conv391, %cond.true.384 ], [ %add401, %cond.false.392 ]
  %conv404 = sext i32 %cond403 to i64
  store i64 %conv404, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.405:                                   ; preds = %lor.lhs.false.368
  %99 = load i32, i32* %buf_magnification, align 4
  %conv406 = trunc i32 %99 to i8
  %conv407 = zext i8 %conv406 to i32
  %100 = load i64, i64* %outbufsize, align 8
  %conv408 = trunc i64 %100 to i8
  %conv409 = zext i8 %conv408 to i32
  %mul410 = mul nsw i32 %conv407, %conv409
  %cmp411 = icmp sle i32 %mul410, 127
  br i1 %cmp411, label %cond.true.413, label %cond.false.421

cond.true.413:                                    ; preds = %cond.false.405
  %101 = load i32, i32* %buf_magnification, align 4
  %conv414 = trunc i32 %101 to i8
  %conv415 = zext i8 %conv414 to i32
  %102 = load i64, i64* %outbufsize, align 8
  %conv416 = trunc i64 %102 to i8
  %conv417 = zext i8 %conv416 to i32
  %mul418 = mul nsw i32 %conv415, %conv417
  %conv419 = trunc i32 %mul418 to i8
  %conv420 = sext i8 %conv419 to i32
  br label %cond.end.431

cond.false.421:                                   ; preds = %cond.false.405
  %103 = load i32, i32* %buf_magnification, align 4
  %conv422 = trunc i32 %103 to i8
  %conv423 = zext i8 %conv422 to i32
  %104 = load i64, i64* %outbufsize, align 8
  %conv424 = trunc i64 %104 to i8
  %conv425 = zext i8 %conv424 to i32
  %mul426 = mul nsw i32 %conv423, %conv425
  %sub427 = sub nsw i32 %mul426, -128
  %conv428 = trunc i32 %sub427 to i8
  %conv429 = sext i8 %conv428 to i32
  %add430 = add nsw i32 %conv429, -128
  br label %cond.end.431

cond.end.431:                                     ; preds = %cond.false.421, %cond.true.413
  %cond432 = phi i32 [ %conv420, %cond.true.413 ], [ %add430, %cond.false.421 ]
  %conv433 = sext i32 %cond432 to i64
  store i64 %conv433, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

cond.false.434:                                   ; preds = %cond.true.65
  %105 = load i64, i64* %outbufsize, align 8
  %mul435 = mul nsw i64 0, %105
  %106 = load i32, i32* %buf_magnification, align 4
  %conv436 = sext i32 %106 to i64
  %add437 = add nsw i64 %mul435, %conv436
  %mul438 = mul nsw i64 0, %add437
  %sub439 = sub nsw i64 %mul438, 1
  %cmp440 = icmp slt i64 %sub439, 0
  br i1 %cmp440, label %cond.true.442, label %cond.false.463

cond.true.442:                                    ; preds = %cond.false.434
  %107 = load i64, i64* %outbufsize, align 8
  %mul443 = mul nsw i64 0, %107
  %108 = load i32, i32* %buf_magnification, align 4
  %conv444 = sext i32 %108 to i64
  %add445 = add nsw i64 %mul443, %conv444
  %mul446 = mul nsw i64 0, %add445
  %add447 = add nsw i64 %mul446, 0
  %neg448 = xor i64 %add447, -1
  %cmp449 = icmp eq i64 %neg448, -1
  %conv450 = zext i1 %cmp449 to i32
  %sub451 = sub nsw i32 0, %conv450
  %conv452 = sext i32 %sub451 to i64
  %109 = load i64, i64* %outbufsize, align 8
  %mul453 = mul nsw i64 0, %109
  %110 = load i32, i32* %buf_magnification, align 4
  %conv454 = sext i32 %110 to i64
  %add455 = add nsw i64 %mul453, %conv454
  %mul456 = mul nsw i64 0, %add455
  %add457 = add nsw i64 %mul456, 1
  %shl458 = shl i64 %add457, 62
  %sub459 = sub nsw i64 %shl458, 1
  %mul460 = mul nsw i64 %sub459, 2
  %add461 = add nsw i64 %mul460, 1
  %sub462 = sub nsw i64 %conv452, %add461
  br label %cond.end.469

cond.false.463:                                   ; preds = %cond.false.434
  %111 = load i64, i64* %outbufsize, align 8
  %mul464 = mul nsw i64 0, %111
  %112 = load i32, i32* %buf_magnification, align 4
  %conv465 = sext i32 %112 to i64
  %add466 = add nsw i64 %mul464, %conv465
  %mul467 = mul nsw i64 0, %add466
  %add468 = add nsw i64 %mul467, 0
  br label %cond.end.469

cond.end.469:                                     ; preds = %cond.false.463, %cond.true.442
  %cond470 = phi i64 [ %sub462, %cond.true.442 ], [ %add468, %cond.false.463 ]
  %cmp471 = icmp eq i64 %cond470, 0
  br i1 %cmp471, label %land.lhs.true.473, label %lor.lhs.false.485

land.lhs.true.473:                                ; preds = %cond.end.469
  %113 = load i32, i32* %buf_magnification, align 4
  %cmp474 = icmp slt i32 %113, 0
  br i1 %cmp474, label %land.lhs.true.476, label %lor.lhs.false.479

land.lhs.true.476:                                ; preds = %land.lhs.true.473
  %114 = load i64, i64* %outbufsize, align 8
  %cmp477 = icmp slt i64 0, %114
  br i1 %cmp477, label %cond.true.661, label %lor.lhs.false.479

lor.lhs.false.479:                                ; preds = %land.lhs.true.476, %land.lhs.true.473
  %115 = load i64, i64* %outbufsize, align 8
  %cmp480 = icmp slt i64 %115, 0
  br i1 %cmp480, label %land.lhs.true.482, label %lor.lhs.false.485

land.lhs.true.482:                                ; preds = %lor.lhs.false.479
  %116 = load i32, i32* %buf_magnification, align 4
  %cmp483 = icmp slt i32 0, %116
  br i1 %cmp483, label %cond.true.661, label %lor.lhs.false.485

lor.lhs.false.485:                                ; preds = %land.lhs.true.482, %lor.lhs.false.479, %cond.end.469
  %117 = load i64, i64* %outbufsize, align 8
  %cmp486 = icmp slt i64 %117, 0
  br i1 %cmp486, label %cond.true.488, label %cond.false.566

cond.true.488:                                    ; preds = %lor.lhs.false.485
  %118 = load i32, i32* %buf_magnification, align 4
  %cmp489 = icmp slt i32 %118, 0
  br i1 %cmp489, label %cond.true.491, label %cond.false.521

cond.true.491:                                    ; preds = %cond.true.488
  %119 = load i32, i32* %buf_magnification, align 4
  %conv492 = sext i32 %119 to i64
  %120 = load i64, i64* %outbufsize, align 8
  %mul493 = mul nsw i64 0, %120
  %121 = load i32, i32* %buf_magnification, align 4
  %conv494 = sext i32 %121 to i64
  %add495 = add nsw i64 %mul493, %conv494
  %mul496 = mul nsw i64 0, %add495
  %sub497 = sub nsw i64 %mul496, 1
  %cmp498 = icmp slt i64 %sub497, 0
  br i1 %cmp498, label %cond.true.500, label %cond.false.510

cond.true.500:                                    ; preds = %cond.true.491
  %122 = load i64, i64* %outbufsize, align 8
  %mul501 = mul nsw i64 0, %122
  %123 = load i32, i32* %buf_magnification, align 4
  %conv502 = sext i32 %123 to i64
  %add503 = add nsw i64 %mul501, %conv502
  %mul504 = mul nsw i64 0, %add503
  %add505 = add nsw i64 %mul504, 1
  %shl506 = shl i64 %add505, 62
  %sub507 = sub nsw i64 %shl506, 1
  %mul508 = mul nsw i64 %sub507, 2
  %add509 = add nsw i64 %mul508, 1
  br label %cond.end.516

cond.false.510:                                   ; preds = %cond.true.491
  %124 = load i64, i64* %outbufsize, align 8
  %mul511 = mul nsw i64 0, %124
  %125 = load i32, i32* %buf_magnification, align 4
  %conv512 = sext i32 %125 to i64
  %add513 = add nsw i64 %mul511, %conv512
  %mul514 = mul nsw i64 0, %add513
  %sub515 = sub nsw i64 %mul514, 1
  br label %cond.end.516

cond.end.516:                                     ; preds = %cond.false.510, %cond.true.500
  %cond517 = phi i64 [ %add509, %cond.true.500 ], [ %sub515, %cond.false.510 ]
  %126 = load i64, i64* %outbufsize, align 8
  %div518 = sdiv i64 %cond517, %126
  %cmp519 = icmp slt i64 %conv492, %div518
  br i1 %cmp519, label %cond.true.661, label %lor.lhs.false.644

cond.false.521:                                   ; preds = %cond.true.488
  %127 = load i64, i64* %outbufsize, align 8
  %cmp522 = icmp eq i64 %127, -1
  br i1 %cmp522, label %cond.true.524, label %cond.false.525

cond.true.524:                                    ; preds = %cond.false.521
  br i1 false, label %cond.true.661, label %lor.lhs.false.644

cond.false.525:                                   ; preds = %cond.false.521
  %128 = load i64, i64* %outbufsize, align 8
  %mul526 = mul nsw i64 0, %128
  %129 = load i32, i32* %buf_magnification, align 4
  %conv527 = sext i32 %129 to i64
  %add528 = add nsw i64 %mul526, %conv527
  %mul529 = mul nsw i64 0, %add528
  %sub530 = sub nsw i64 %mul529, 1
  %cmp531 = icmp slt i64 %sub530, 0
  br i1 %cmp531, label %cond.true.533, label %cond.false.554

cond.true.533:                                    ; preds = %cond.false.525
  %130 = load i64, i64* %outbufsize, align 8
  %mul534 = mul nsw i64 0, %130
  %131 = load i32, i32* %buf_magnification, align 4
  %conv535 = sext i32 %131 to i64
  %add536 = add nsw i64 %mul534, %conv535
  %mul537 = mul nsw i64 0, %add536
  %add538 = add nsw i64 %mul537, 0
  %neg539 = xor i64 %add538, -1
  %cmp540 = icmp eq i64 %neg539, -1
  %conv541 = zext i1 %cmp540 to i32
  %sub542 = sub nsw i32 0, %conv541
  %conv543 = sext i32 %sub542 to i64
  %132 = load i64, i64* %outbufsize, align 8
  %mul544 = mul nsw i64 0, %132
  %133 = load i32, i32* %buf_magnification, align 4
  %conv545 = sext i32 %133 to i64
  %add546 = add nsw i64 %mul544, %conv545
  %mul547 = mul nsw i64 0, %add546
  %add548 = add nsw i64 %mul547, 1
  %shl549 = shl i64 %add548, 62
  %sub550 = sub nsw i64 %shl549, 1
  %mul551 = mul nsw i64 %sub550, 2
  %add552 = add nsw i64 %mul551, 1
  %sub553 = sub nsw i64 %conv543, %add552
  br label %cond.end.560

cond.false.554:                                   ; preds = %cond.false.525
  %134 = load i64, i64* %outbufsize, align 8
  %mul555 = mul nsw i64 0, %134
  %135 = load i32, i32* %buf_magnification, align 4
  %conv556 = sext i32 %135 to i64
  %add557 = add nsw i64 %mul555, %conv556
  %mul558 = mul nsw i64 0, %add557
  %add559 = add nsw i64 %mul558, 0
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.554, %cond.true.533
  %cond561 = phi i64 [ %sub553, %cond.true.533 ], [ %add559, %cond.false.554 ]
  %136 = load i64, i64* %outbufsize, align 8
  %div562 = sdiv i64 %cond561, %136
  %137 = load i32, i32* %buf_magnification, align 4
  %conv563 = sext i32 %137 to i64
  %cmp564 = icmp slt i64 %div562, %conv563
  br i1 %cmp564, label %cond.true.661, label %lor.lhs.false.644

cond.false.566:                                   ; preds = %lor.lhs.false.485
  %138 = load i64, i64* %outbufsize, align 8
  %cmp567 = icmp eq i64 %138, 0
  br i1 %cmp567, label %cond.true.569, label %cond.false.570

cond.true.569:                                    ; preds = %cond.false.566
  br i1 false, label %cond.true.661, label %lor.lhs.false.644

cond.false.570:                                   ; preds = %cond.false.566
  %139 = load i32, i32* %buf_magnification, align 4
  %cmp571 = icmp slt i32 %139, 0
  br i1 %cmp571, label %cond.true.573, label %cond.false.614

cond.true.573:                                    ; preds = %cond.false.570
  %140 = load i32, i32* %buf_magnification, align 4
  %conv574 = sext i32 %140 to i64
  %141 = load i64, i64* %outbufsize, align 8
  %mul575 = mul nsw i64 0, %141
  %142 = load i32, i32* %buf_magnification, align 4
  %conv576 = sext i32 %142 to i64
  %add577 = add nsw i64 %mul575, %conv576
  %mul578 = mul nsw i64 0, %add577
  %sub579 = sub nsw i64 %mul578, 1
  %cmp580 = icmp slt i64 %sub579, 0
  br i1 %cmp580, label %cond.true.582, label %cond.false.603

cond.true.582:                                    ; preds = %cond.true.573
  %143 = load i64, i64* %outbufsize, align 8
  %mul583 = mul nsw i64 0, %143
  %144 = load i32, i32* %buf_magnification, align 4
  %conv584 = sext i32 %144 to i64
  %add585 = add nsw i64 %mul583, %conv584
  %mul586 = mul nsw i64 0, %add585
  %add587 = add nsw i64 %mul586, 0
  %neg588 = xor i64 %add587, -1
  %cmp589 = icmp eq i64 %neg588, -1
  %conv590 = zext i1 %cmp589 to i32
  %sub591 = sub nsw i32 0, %conv590
  %conv592 = sext i32 %sub591 to i64
  %145 = load i64, i64* %outbufsize, align 8
  %mul593 = mul nsw i64 0, %145
  %146 = load i32, i32* %buf_magnification, align 4
  %conv594 = sext i32 %146 to i64
  %add595 = add nsw i64 %mul593, %conv594
  %mul596 = mul nsw i64 0, %add595
  %add597 = add nsw i64 %mul596, 1
  %shl598 = shl i64 %add597, 62
  %sub599 = sub nsw i64 %shl598, 1
  %mul600 = mul nsw i64 %sub599, 2
  %add601 = add nsw i64 %mul600, 1
  %sub602 = sub nsw i64 %conv592, %add601
  br label %cond.end.609

cond.false.603:                                   ; preds = %cond.true.573
  %147 = load i64, i64* %outbufsize, align 8
  %mul604 = mul nsw i64 0, %147
  %148 = load i32, i32* %buf_magnification, align 4
  %conv605 = sext i32 %148 to i64
  %add606 = add nsw i64 %mul604, %conv605
  %mul607 = mul nsw i64 0, %add606
  %add608 = add nsw i64 %mul607, 0
  br label %cond.end.609

cond.end.609:                                     ; preds = %cond.false.603, %cond.true.582
  %cond610 = phi i64 [ %sub602, %cond.true.582 ], [ %add608, %cond.false.603 ]
  %149 = load i64, i64* %outbufsize, align 8
  %div611 = sdiv i64 %cond610, %149
  %cmp612 = icmp slt i64 %conv574, %div611
  br i1 %cmp612, label %cond.true.661, label %lor.lhs.false.644

cond.false.614:                                   ; preds = %cond.false.570
  %150 = load i64, i64* %outbufsize, align 8
  %mul615 = mul nsw i64 0, %150
  %151 = load i32, i32* %buf_magnification, align 4
  %conv616 = sext i32 %151 to i64
  %add617 = add nsw i64 %mul615, %conv616
  %mul618 = mul nsw i64 0, %add617
  %sub619 = sub nsw i64 %mul618, 1
  %cmp620 = icmp slt i64 %sub619, 0
  br i1 %cmp620, label %cond.true.622, label %cond.false.632

cond.true.622:                                    ; preds = %cond.false.614
  %152 = load i64, i64* %outbufsize, align 8
  %mul623 = mul nsw i64 0, %152
  %153 = load i32, i32* %buf_magnification, align 4
  %conv624 = sext i32 %153 to i64
  %add625 = add nsw i64 %mul623, %conv624
  %mul626 = mul nsw i64 0, %add625
  %add627 = add nsw i64 %mul626, 1
  %shl628 = shl i64 %add627, 62
  %sub629 = sub nsw i64 %shl628, 1
  %mul630 = mul nsw i64 %sub629, 2
  %add631 = add nsw i64 %mul630, 1
  br label %cond.end.638

cond.false.632:                                   ; preds = %cond.false.614
  %154 = load i64, i64* %outbufsize, align 8
  %mul633 = mul nsw i64 0, %154
  %155 = load i32, i32* %buf_magnification, align 4
  %conv634 = sext i32 %155 to i64
  %add635 = add nsw i64 %mul633, %conv634
  %mul636 = mul nsw i64 0, %add635
  %sub637 = sub nsw i64 %mul636, 1
  br label %cond.end.638

cond.end.638:                                     ; preds = %cond.false.632, %cond.true.622
  %cond639 = phi i64 [ %add631, %cond.true.622 ], [ %sub637, %cond.false.632 ]
  %156 = load i64, i64* %outbufsize, align 8
  %div640 = sdiv i64 %cond639, %156
  %157 = load i32, i32* %buf_magnification, align 4
  %conv641 = sext i32 %157 to i64
  %cmp642 = icmp slt i64 %div640, %conv641
  br i1 %cmp642, label %cond.true.661, label %lor.lhs.false.644

lor.lhs.false.644:                                ; preds = %cond.end.638, %cond.end.609, %cond.true.569, %cond.end.560, %cond.true.524, %cond.end.516
  %158 = load i32, i32* %buf_magnification, align 4
  %conv645 = sext i32 %158 to i64
  %159 = load i64, i64* %outbufsize, align 8
  %mul646 = mul nsw i64 %conv645, %159
  %mul647 = mul nsw i64 0, %mul646
  %sub648 = sub nsw i64 %mul647, 1
  %cmp649 = icmp slt i64 %sub648, 0
  br i1 %cmp649, label %land.lhs.true.651, label %lor.lhs.false.656

land.lhs.true.651:                                ; preds = %lor.lhs.false.644
  %160 = load i32, i32* %buf_magnification, align 4
  %conv652 = sext i32 %160 to i64
  %161 = load i64, i64* %outbufsize, align 8
  %mul653 = mul nsw i64 %conv652, %161
  %cmp654 = icmp slt i64 %mul653, -128
  br i1 %cmp654, label %cond.true.661, label %lor.lhs.false.656

lor.lhs.false.656:                                ; preds = %land.lhs.true.651, %lor.lhs.false.644
  %162 = load i32, i32* %buf_magnification, align 4
  %conv657 = sext i32 %162 to i64
  %163 = load i64, i64* %outbufsize, align 8
  %mul658 = mul nsw i64 %conv657, %163
  %cmp659 = icmp slt i64 127, %mul658
  br i1 %cmp659, label %cond.true.661, label %cond.false.690

cond.true.661:                                    ; preds = %lor.lhs.false.656, %land.lhs.true.651, %cond.end.638, %cond.end.609, %cond.true.569, %cond.end.560, %cond.true.524, %cond.end.516, %land.lhs.true.482, %land.lhs.true.476
  %164 = load i32, i32* %buf_magnification, align 4
  %conv662 = trunc i32 %164 to i8
  %conv663 = zext i8 %conv662 to i32
  %165 = load i64, i64* %outbufsize, align 8
  %conv664 = trunc i64 %165 to i8
  %conv665 = zext i8 %conv664 to i32
  %mul666 = mul nsw i32 %conv663, %conv665
  %cmp667 = icmp sle i32 %mul666, 127
  br i1 %cmp667, label %cond.true.669, label %cond.false.677

cond.true.669:                                    ; preds = %cond.true.661
  %166 = load i32, i32* %buf_magnification, align 4
  %conv670 = trunc i32 %166 to i8
  %conv671 = zext i8 %conv670 to i32
  %167 = load i64, i64* %outbufsize, align 8
  %conv672 = trunc i64 %167 to i8
  %conv673 = zext i8 %conv672 to i32
  %mul674 = mul nsw i32 %conv671, %conv673
  %conv675 = trunc i32 %mul674 to i8
  %conv676 = sext i8 %conv675 to i32
  br label %cond.end.687

cond.false.677:                                   ; preds = %cond.true.661
  %168 = load i32, i32* %buf_magnification, align 4
  %conv678 = trunc i32 %168 to i8
  %conv679 = zext i8 %conv678 to i32
  %169 = load i64, i64* %outbufsize, align 8
  %conv680 = trunc i64 %169 to i8
  %conv681 = zext i8 %conv680 to i32
  %mul682 = mul nsw i32 %conv679, %conv681
  %sub683 = sub nsw i32 %mul682, -128
  %conv684 = trunc i32 %sub683 to i8
  %conv685 = sext i8 %conv684 to i32
  %add686 = add nsw i32 %conv685, -128
  br label %cond.end.687

cond.end.687:                                     ; preds = %cond.false.677, %cond.true.669
  %cond688 = phi i32 [ %conv676, %cond.true.669 ], [ %add686, %cond.false.677 ]
  %conv689 = sext i32 %cond688 to i64
  store i64 %conv689, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.690:                                   ; preds = %lor.lhs.false.656
  %170 = load i32, i32* %buf_magnification, align 4
  %conv691 = trunc i32 %170 to i8
  %conv692 = zext i8 %conv691 to i32
  %171 = load i64, i64* %outbufsize, align 8
  %conv693 = trunc i64 %171 to i8
  %conv694 = zext i8 %conv693 to i32
  %mul695 = mul nsw i32 %conv692, %conv694
  %cmp696 = icmp sle i32 %mul695, 127
  br i1 %cmp696, label %cond.true.698, label %cond.false.706

cond.true.698:                                    ; preds = %cond.false.690
  %172 = load i32, i32* %buf_magnification, align 4
  %conv699 = trunc i32 %172 to i8
  %conv700 = zext i8 %conv699 to i32
  %173 = load i64, i64* %outbufsize, align 8
  %conv701 = trunc i64 %173 to i8
  %conv702 = zext i8 %conv701 to i32
  %mul703 = mul nsw i32 %conv700, %conv702
  %conv704 = trunc i32 %mul703 to i8
  %conv705 = sext i8 %conv704 to i32
  br label %cond.end.716

cond.false.706:                                   ; preds = %cond.false.690
  %174 = load i32, i32* %buf_magnification, align 4
  %conv707 = trunc i32 %174 to i8
  %conv708 = zext i8 %conv707 to i32
  %175 = load i64, i64* %outbufsize, align 8
  %conv709 = trunc i64 %175 to i8
  %conv710 = zext i8 %conv709 to i32
  %mul711 = mul nsw i32 %conv708, %conv710
  %sub712 = sub nsw i32 %mul711, -128
  %conv713 = trunc i32 %sub712 to i8
  %conv714 = sext i8 %conv713 to i32
  %add715 = add nsw i32 %conv714, -128
  br label %cond.end.716

cond.end.716:                                     ; preds = %cond.false.706, %cond.true.698
  %cond717 = phi i32 [ %conv705, %cond.true.698 ], [ %add715, %cond.false.706 ]
  %conv718 = sext i32 %cond717 to i64
  store i64 %conv718, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

cond.false.719:                                   ; preds = %cond.end
  br i1 false, label %cond.true.720, label %cond.false.1381

cond.true.720:                                    ; preds = %cond.false.719
  br i1 false, label %cond.true.721, label %cond.false.1096

cond.true.721:                                    ; preds = %cond.true.720
  %176 = load i64, i64* %outbufsize, align 8
  %conv722 = trunc i64 %176 to i16
  %conv723 = sext i16 %conv722 to i32
  %mul724 = mul nsw i32 0, %conv723
  %177 = load i32, i32* %buf_magnification, align 4
  %conv725 = trunc i32 %177 to i16
  %conv726 = sext i16 %conv725 to i32
  %add727 = add nsw i32 %mul724, %conv726
  %mul728 = mul nsw i32 0, %add727
  %sub729 = sub nsw i32 %mul728, 1
  %cmp730 = icmp slt i32 %sub729, 0
  br i1 %cmp730, label %cond.true.732, label %cond.false.758

cond.true.732:                                    ; preds = %cond.true.721
  %178 = load i64, i64* %outbufsize, align 8
  %conv733 = trunc i64 %178 to i16
  %conv734 = sext i16 %conv733 to i32
  %mul735 = mul nsw i32 0, %conv734
  %179 = load i32, i32* %buf_magnification, align 4
  %conv736 = trunc i32 %179 to i16
  %conv737 = sext i16 %conv736 to i32
  %add738 = add nsw i32 %mul735, %conv737
  %mul739 = mul nsw i32 0, %add738
  %add740 = add nsw i32 %mul739, 0
  %neg741 = xor i32 %add740, -1
  %cmp742 = icmp eq i32 %neg741, -1
  %conv743 = zext i1 %cmp742 to i32
  %sub744 = sub nsw i32 0, %conv743
  %180 = load i64, i64* %outbufsize, align 8
  %conv745 = trunc i64 %180 to i16
  %conv746 = sext i16 %conv745 to i32
  %mul747 = mul nsw i32 0, %conv746
  %181 = load i32, i32* %buf_magnification, align 4
  %conv748 = trunc i32 %181 to i16
  %conv749 = sext i16 %conv748 to i32
  %add750 = add nsw i32 %mul747, %conv749
  %mul751 = mul nsw i32 0, %add750
  %add752 = add nsw i32 %mul751, 1
  %shl753 = shl i32 %add752, 30
  %sub754 = sub nsw i32 %shl753, 1
  %mul755 = mul nsw i32 %sub754, 2
  %add756 = add nsw i32 %mul755, 1
  %sub757 = sub nsw i32 %sub744, %add756
  br label %cond.end.767

cond.false.758:                                   ; preds = %cond.true.721
  %182 = load i64, i64* %outbufsize, align 8
  %conv759 = trunc i64 %182 to i16
  %conv760 = sext i16 %conv759 to i32
  %mul761 = mul nsw i32 0, %conv760
  %183 = load i32, i32* %buf_magnification, align 4
  %conv762 = trunc i32 %183 to i16
  %conv763 = sext i16 %conv762 to i32
  %add764 = add nsw i32 %mul761, %conv763
  %mul765 = mul nsw i32 0, %add764
  %add766 = add nsw i32 %mul765, 0
  br label %cond.end.767

cond.end.767:                                     ; preds = %cond.false.758, %cond.true.732
  %cond768 = phi i32 [ %sub757, %cond.true.732 ], [ %add766, %cond.false.758 ]
  %cmp769 = icmp eq i32 %cond768, 0
  br i1 %cmp769, label %land.lhs.true.771, label %lor.lhs.false.791

land.lhs.true.771:                                ; preds = %cond.end.767
  %184 = load i32, i32* %buf_magnification, align 4
  %conv772 = trunc i32 %184 to i16
  %conv773 = sext i16 %conv772 to i32
  %cmp774 = icmp slt i32 %conv773, 0
  br i1 %cmp774, label %land.lhs.true.776, label %lor.lhs.false.781

land.lhs.true.776:                                ; preds = %land.lhs.true.771
  %185 = load i64, i64* %outbufsize, align 8
  %conv777 = trunc i64 %185 to i16
  %conv778 = sext i16 %conv777 to i32
  %cmp779 = icmp slt i32 0, %conv778
  br i1 %cmp779, label %cond.true.1038, label %lor.lhs.false.781

lor.lhs.false.781:                                ; preds = %land.lhs.true.776, %land.lhs.true.771
  %186 = load i64, i64* %outbufsize, align 8
  %conv782 = trunc i64 %186 to i16
  %conv783 = sext i16 %conv782 to i32
  %cmp784 = icmp slt i32 %conv783, 0
  br i1 %cmp784, label %land.lhs.true.786, label %lor.lhs.false.791

land.lhs.true.786:                                ; preds = %lor.lhs.false.781
  %187 = load i32, i32* %buf_magnification, align 4
  %conv787 = trunc i32 %187 to i16
  %conv788 = sext i16 %conv787 to i32
  %cmp789 = icmp slt i32 0, %conv788
  br i1 %cmp789, label %cond.true.1038, label %lor.lhs.false.791

lor.lhs.false.791:                                ; preds = %land.lhs.true.786, %lor.lhs.false.781, %cond.end.767
  %188 = load i64, i64* %outbufsize, align 8
  %conv792 = trunc i64 %188 to i16
  %conv793 = sext i16 %conv792 to i32
  %cmp794 = icmp slt i32 %conv793, 0
  br i1 %cmp794, label %cond.true.796, label %cond.false.904

cond.true.796:                                    ; preds = %lor.lhs.false.791
  %189 = load i32, i32* %buf_magnification, align 4
  %conv797 = trunc i32 %189 to i16
  %conv798 = sext i16 %conv797 to i32
  %cmp799 = icmp slt i32 %conv798, 0
  br i1 %cmp799, label %cond.true.801, label %cond.false.843

cond.true.801:                                    ; preds = %cond.true.796
  %190 = load i32, i32* %buf_magnification, align 4
  %conv802 = trunc i32 %190 to i16
  %conv803 = sext i16 %conv802 to i32
  %191 = load i64, i64* %outbufsize, align 8
  %conv804 = trunc i64 %191 to i16
  %conv805 = sext i16 %conv804 to i32
  %mul806 = mul nsw i32 0, %conv805
  %192 = load i32, i32* %buf_magnification, align 4
  %conv807 = trunc i32 %192 to i16
  %conv808 = sext i16 %conv807 to i32
  %add809 = add nsw i32 %mul806, %conv808
  %mul810 = mul nsw i32 0, %add809
  %sub811 = sub nsw i32 %mul810, 1
  %cmp812 = icmp slt i32 %sub811, 0
  br i1 %cmp812, label %cond.true.814, label %cond.false.827

cond.true.814:                                    ; preds = %cond.true.801
  %193 = load i64, i64* %outbufsize, align 8
  %conv815 = trunc i64 %193 to i16
  %conv816 = sext i16 %conv815 to i32
  %mul817 = mul nsw i32 0, %conv816
  %194 = load i32, i32* %buf_magnification, align 4
  %conv818 = trunc i32 %194 to i16
  %conv819 = sext i16 %conv818 to i32
  %add820 = add nsw i32 %mul817, %conv819
  %mul821 = mul nsw i32 0, %add820
  %add822 = add nsw i32 %mul821, 1
  %shl823 = shl i32 %add822, 30
  %sub824 = sub nsw i32 %shl823, 1
  %mul825 = mul nsw i32 %sub824, 2
  %add826 = add nsw i32 %mul825, 1
  br label %cond.end.836

cond.false.827:                                   ; preds = %cond.true.801
  %195 = load i64, i64* %outbufsize, align 8
  %conv828 = trunc i64 %195 to i16
  %conv829 = sext i16 %conv828 to i32
  %mul830 = mul nsw i32 0, %conv829
  %196 = load i32, i32* %buf_magnification, align 4
  %conv831 = trunc i32 %196 to i16
  %conv832 = sext i16 %conv831 to i32
  %add833 = add nsw i32 %mul830, %conv832
  %mul834 = mul nsw i32 0, %add833
  %sub835 = sub nsw i32 %mul834, 1
  br label %cond.end.836

cond.end.836:                                     ; preds = %cond.false.827, %cond.true.814
  %cond837 = phi i32 [ %add826, %cond.true.814 ], [ %sub835, %cond.false.827 ]
  %197 = load i64, i64* %outbufsize, align 8
  %conv838 = trunc i64 %197 to i16
  %conv839 = sext i16 %conv838 to i32
  %div840 = sdiv i32 %cond837, %conv839
  %cmp841 = icmp slt i32 %conv803, %div840
  br i1 %cmp841, label %cond.true.1038, label %lor.lhs.false.1012

cond.false.843:                                   ; preds = %cond.true.796
  %198 = load i64, i64* %outbufsize, align 8
  %conv844 = trunc i64 %198 to i16
  %conv845 = sext i16 %conv844 to i32
  %cmp846 = icmp eq i32 %conv845, -1
  br i1 %cmp846, label %cond.true.848, label %cond.false.849

cond.true.848:                                    ; preds = %cond.false.843
  br i1 false, label %cond.true.1038, label %lor.lhs.false.1012

cond.false.849:                                   ; preds = %cond.false.843
  %199 = load i64, i64* %outbufsize, align 8
  %conv850 = trunc i64 %199 to i16
  %conv851 = sext i16 %conv850 to i32
  %mul852 = mul nsw i32 0, %conv851
  %200 = load i32, i32* %buf_magnification, align 4
  %conv853 = trunc i32 %200 to i16
  %conv854 = sext i16 %conv853 to i32
  %add855 = add nsw i32 %mul852, %conv854
  %mul856 = mul nsw i32 0, %add855
  %sub857 = sub nsw i32 %mul856, 1
  %cmp858 = icmp slt i32 %sub857, 0
  br i1 %cmp858, label %cond.true.860, label %cond.false.886

cond.true.860:                                    ; preds = %cond.false.849
  %201 = load i64, i64* %outbufsize, align 8
  %conv861 = trunc i64 %201 to i16
  %conv862 = sext i16 %conv861 to i32
  %mul863 = mul nsw i32 0, %conv862
  %202 = load i32, i32* %buf_magnification, align 4
  %conv864 = trunc i32 %202 to i16
  %conv865 = sext i16 %conv864 to i32
  %add866 = add nsw i32 %mul863, %conv865
  %mul867 = mul nsw i32 0, %add866
  %add868 = add nsw i32 %mul867, 0
  %neg869 = xor i32 %add868, -1
  %cmp870 = icmp eq i32 %neg869, -1
  %conv871 = zext i1 %cmp870 to i32
  %sub872 = sub nsw i32 0, %conv871
  %203 = load i64, i64* %outbufsize, align 8
  %conv873 = trunc i64 %203 to i16
  %conv874 = sext i16 %conv873 to i32
  %mul875 = mul nsw i32 0, %conv874
  %204 = load i32, i32* %buf_magnification, align 4
  %conv876 = trunc i32 %204 to i16
  %conv877 = sext i16 %conv876 to i32
  %add878 = add nsw i32 %mul875, %conv877
  %mul879 = mul nsw i32 0, %add878
  %add880 = add nsw i32 %mul879, 1
  %shl881 = shl i32 %add880, 30
  %sub882 = sub nsw i32 %shl881, 1
  %mul883 = mul nsw i32 %sub882, 2
  %add884 = add nsw i32 %mul883, 1
  %sub885 = sub nsw i32 %sub872, %add884
  br label %cond.end.895

cond.false.886:                                   ; preds = %cond.false.849
  %205 = load i64, i64* %outbufsize, align 8
  %conv887 = trunc i64 %205 to i16
  %conv888 = sext i16 %conv887 to i32
  %mul889 = mul nsw i32 0, %conv888
  %206 = load i32, i32* %buf_magnification, align 4
  %conv890 = trunc i32 %206 to i16
  %conv891 = sext i16 %conv890 to i32
  %add892 = add nsw i32 %mul889, %conv891
  %mul893 = mul nsw i32 0, %add892
  %add894 = add nsw i32 %mul893, 0
  br label %cond.end.895

cond.end.895:                                     ; preds = %cond.false.886, %cond.true.860
  %cond896 = phi i32 [ %sub885, %cond.true.860 ], [ %add894, %cond.false.886 ]
  %207 = load i64, i64* %outbufsize, align 8
  %conv897 = trunc i64 %207 to i16
  %conv898 = sext i16 %conv897 to i32
  %div899 = sdiv i32 %cond896, %conv898
  %208 = load i32, i32* %buf_magnification, align 4
  %conv900 = trunc i32 %208 to i16
  %conv901 = sext i16 %conv900 to i32
  %cmp902 = icmp slt i32 %div899, %conv901
  br i1 %cmp902, label %cond.true.1038, label %lor.lhs.false.1012

cond.false.904:                                   ; preds = %lor.lhs.false.791
  %209 = load i64, i64* %outbufsize, align 8
  %conv905 = trunc i64 %209 to i16
  %conv906 = sext i16 %conv905 to i32
  %cmp907 = icmp eq i32 %conv906, 0
  br i1 %cmp907, label %cond.true.909, label %cond.false.910

cond.true.909:                                    ; preds = %cond.false.904
  br i1 false, label %cond.true.1038, label %lor.lhs.false.1012

cond.false.910:                                   ; preds = %cond.false.904
  %210 = load i32, i32* %buf_magnification, align 4
  %conv911 = trunc i32 %210 to i16
  %conv912 = sext i16 %conv911 to i32
  %cmp913 = icmp slt i32 %conv912, 0
  br i1 %cmp913, label %cond.true.915, label %cond.false.970

cond.true.915:                                    ; preds = %cond.false.910
  %211 = load i32, i32* %buf_magnification, align 4
  %conv916 = trunc i32 %211 to i16
  %conv917 = sext i16 %conv916 to i32
  %212 = load i64, i64* %outbufsize, align 8
  %conv918 = trunc i64 %212 to i16
  %conv919 = sext i16 %conv918 to i32
  %mul920 = mul nsw i32 0, %conv919
  %213 = load i32, i32* %buf_magnification, align 4
  %conv921 = trunc i32 %213 to i16
  %conv922 = sext i16 %conv921 to i32
  %add923 = add nsw i32 %mul920, %conv922
  %mul924 = mul nsw i32 0, %add923
  %sub925 = sub nsw i32 %mul924, 1
  %cmp926 = icmp slt i32 %sub925, 0
  br i1 %cmp926, label %cond.true.928, label %cond.false.954

cond.true.928:                                    ; preds = %cond.true.915
  %214 = load i64, i64* %outbufsize, align 8
  %conv929 = trunc i64 %214 to i16
  %conv930 = sext i16 %conv929 to i32
  %mul931 = mul nsw i32 0, %conv930
  %215 = load i32, i32* %buf_magnification, align 4
  %conv932 = trunc i32 %215 to i16
  %conv933 = sext i16 %conv932 to i32
  %add934 = add nsw i32 %mul931, %conv933
  %mul935 = mul nsw i32 0, %add934
  %add936 = add nsw i32 %mul935, 0
  %neg937 = xor i32 %add936, -1
  %cmp938 = icmp eq i32 %neg937, -1
  %conv939 = zext i1 %cmp938 to i32
  %sub940 = sub nsw i32 0, %conv939
  %216 = load i64, i64* %outbufsize, align 8
  %conv941 = trunc i64 %216 to i16
  %conv942 = sext i16 %conv941 to i32
  %mul943 = mul nsw i32 0, %conv942
  %217 = load i32, i32* %buf_magnification, align 4
  %conv944 = trunc i32 %217 to i16
  %conv945 = sext i16 %conv944 to i32
  %add946 = add nsw i32 %mul943, %conv945
  %mul947 = mul nsw i32 0, %add946
  %add948 = add nsw i32 %mul947, 1
  %shl949 = shl i32 %add948, 30
  %sub950 = sub nsw i32 %shl949, 1
  %mul951 = mul nsw i32 %sub950, 2
  %add952 = add nsw i32 %mul951, 1
  %sub953 = sub nsw i32 %sub940, %add952
  br label %cond.end.963

cond.false.954:                                   ; preds = %cond.true.915
  %218 = load i64, i64* %outbufsize, align 8
  %conv955 = trunc i64 %218 to i16
  %conv956 = sext i16 %conv955 to i32
  %mul957 = mul nsw i32 0, %conv956
  %219 = load i32, i32* %buf_magnification, align 4
  %conv958 = trunc i32 %219 to i16
  %conv959 = sext i16 %conv958 to i32
  %add960 = add nsw i32 %mul957, %conv959
  %mul961 = mul nsw i32 0, %add960
  %add962 = add nsw i32 %mul961, 0
  br label %cond.end.963

cond.end.963:                                     ; preds = %cond.false.954, %cond.true.928
  %cond964 = phi i32 [ %sub953, %cond.true.928 ], [ %add962, %cond.false.954 ]
  %220 = load i64, i64* %outbufsize, align 8
  %conv965 = trunc i64 %220 to i16
  %conv966 = sext i16 %conv965 to i32
  %div967 = sdiv i32 %cond964, %conv966
  %cmp968 = icmp slt i32 %conv917, %div967
  br i1 %cmp968, label %cond.true.1038, label %lor.lhs.false.1012

cond.false.970:                                   ; preds = %cond.false.910
  %221 = load i64, i64* %outbufsize, align 8
  %conv971 = trunc i64 %221 to i16
  %conv972 = sext i16 %conv971 to i32
  %mul973 = mul nsw i32 0, %conv972
  %222 = load i32, i32* %buf_magnification, align 4
  %conv974 = trunc i32 %222 to i16
  %conv975 = sext i16 %conv974 to i32
  %add976 = add nsw i32 %mul973, %conv975
  %mul977 = mul nsw i32 0, %add976
  %sub978 = sub nsw i32 %mul977, 1
  %cmp979 = icmp slt i32 %sub978, 0
  br i1 %cmp979, label %cond.true.981, label %cond.false.994

cond.true.981:                                    ; preds = %cond.false.970
  %223 = load i64, i64* %outbufsize, align 8
  %conv982 = trunc i64 %223 to i16
  %conv983 = sext i16 %conv982 to i32
  %mul984 = mul nsw i32 0, %conv983
  %224 = load i32, i32* %buf_magnification, align 4
  %conv985 = trunc i32 %224 to i16
  %conv986 = sext i16 %conv985 to i32
  %add987 = add nsw i32 %mul984, %conv986
  %mul988 = mul nsw i32 0, %add987
  %add989 = add nsw i32 %mul988, 1
  %shl990 = shl i32 %add989, 30
  %sub991 = sub nsw i32 %shl990, 1
  %mul992 = mul nsw i32 %sub991, 2
  %add993 = add nsw i32 %mul992, 1
  br label %cond.end.1003

cond.false.994:                                   ; preds = %cond.false.970
  %225 = load i64, i64* %outbufsize, align 8
  %conv995 = trunc i64 %225 to i16
  %conv996 = sext i16 %conv995 to i32
  %mul997 = mul nsw i32 0, %conv996
  %226 = load i32, i32* %buf_magnification, align 4
  %conv998 = trunc i32 %226 to i16
  %conv999 = sext i16 %conv998 to i32
  %add1000 = add nsw i32 %mul997, %conv999
  %mul1001 = mul nsw i32 0, %add1000
  %sub1002 = sub nsw i32 %mul1001, 1
  br label %cond.end.1003

cond.end.1003:                                    ; preds = %cond.false.994, %cond.true.981
  %cond1004 = phi i32 [ %add993, %cond.true.981 ], [ %sub1002, %cond.false.994 ]
  %227 = load i64, i64* %outbufsize, align 8
  %conv1005 = trunc i64 %227 to i16
  %conv1006 = sext i16 %conv1005 to i32
  %div1007 = sdiv i32 %cond1004, %conv1006
  %228 = load i32, i32* %buf_magnification, align 4
  %conv1008 = trunc i32 %228 to i16
  %conv1009 = sext i16 %conv1008 to i32
  %cmp1010 = icmp slt i32 %div1007, %conv1009
  br i1 %cmp1010, label %cond.true.1038, label %lor.lhs.false.1012

lor.lhs.false.1012:                               ; preds = %cond.end.1003, %cond.end.963, %cond.true.909, %cond.end.895, %cond.true.848, %cond.end.836
  %229 = load i32, i32* %buf_magnification, align 4
  %conv1013 = trunc i32 %229 to i16
  %conv1014 = sext i16 %conv1013 to i32
  %230 = load i64, i64* %outbufsize, align 8
  %conv1015 = trunc i64 %230 to i16
  %conv1016 = sext i16 %conv1015 to i32
  %mul1017 = mul nsw i32 %conv1014, %conv1016
  %mul1018 = mul nsw i32 0, %mul1017
  %sub1019 = sub nsw i32 %mul1018, 1
  %cmp1020 = icmp slt i32 %sub1019, 0
  br i1 %cmp1020, label %land.lhs.true.1022, label %lor.lhs.false.1030

land.lhs.true.1022:                               ; preds = %lor.lhs.false.1012
  %231 = load i32, i32* %buf_magnification, align 4
  %conv1023 = trunc i32 %231 to i16
  %conv1024 = sext i16 %conv1023 to i32
  %232 = load i64, i64* %outbufsize, align 8
  %conv1025 = trunc i64 %232 to i16
  %conv1026 = sext i16 %conv1025 to i32
  %mul1027 = mul nsw i32 %conv1024, %conv1026
  %cmp1028 = icmp slt i32 %mul1027, -32768
  br i1 %cmp1028, label %cond.true.1038, label %lor.lhs.false.1030

lor.lhs.false.1030:                               ; preds = %land.lhs.true.1022, %lor.lhs.false.1012
  %233 = load i32, i32* %buf_magnification, align 4
  %conv1031 = trunc i32 %233 to i16
  %conv1032 = sext i16 %conv1031 to i32
  %234 = load i64, i64* %outbufsize, align 8
  %conv1033 = trunc i64 %234 to i16
  %conv1034 = sext i16 %conv1033 to i32
  %mul1035 = mul nsw i32 %conv1032, %conv1034
  %cmp1036 = icmp slt i32 32767, %mul1035
  br i1 %cmp1036, label %cond.true.1038, label %cond.false.1067

cond.true.1038:                                   ; preds = %lor.lhs.false.1030, %land.lhs.true.1022, %cond.end.1003, %cond.end.963, %cond.true.909, %cond.end.895, %cond.true.848, %cond.end.836, %land.lhs.true.786, %land.lhs.true.776
  %235 = load i32, i32* %buf_magnification, align 4
  %conv1039 = trunc i32 %235 to i16
  %conv1040 = zext i16 %conv1039 to i32
  %236 = load i64, i64* %outbufsize, align 8
  %conv1041 = trunc i64 %236 to i16
  %conv1042 = zext i16 %conv1041 to i32
  %mul1043 = mul nsw i32 %conv1040, %conv1042
  %cmp1044 = icmp sle i32 %mul1043, 32767
  br i1 %cmp1044, label %cond.true.1046, label %cond.false.1054

cond.true.1046:                                   ; preds = %cond.true.1038
  %237 = load i32, i32* %buf_magnification, align 4
  %conv1047 = trunc i32 %237 to i16
  %conv1048 = zext i16 %conv1047 to i32
  %238 = load i64, i64* %outbufsize, align 8
  %conv1049 = trunc i64 %238 to i16
  %conv1050 = zext i16 %conv1049 to i32
  %mul1051 = mul nsw i32 %conv1048, %conv1050
  %conv1052 = trunc i32 %mul1051 to i16
  %conv1053 = sext i16 %conv1052 to i32
  br label %cond.end.1064

cond.false.1054:                                  ; preds = %cond.true.1038
  %239 = load i32, i32* %buf_magnification, align 4
  %conv1055 = trunc i32 %239 to i16
  %conv1056 = zext i16 %conv1055 to i32
  %240 = load i64, i64* %outbufsize, align 8
  %conv1057 = trunc i64 %240 to i16
  %conv1058 = zext i16 %conv1057 to i32
  %mul1059 = mul nsw i32 %conv1056, %conv1058
  %sub1060 = sub nsw i32 %mul1059, -32768
  %conv1061 = trunc i32 %sub1060 to i16
  %conv1062 = sext i16 %conv1061 to i32
  %add1063 = add nsw i32 %conv1062, -32768
  br label %cond.end.1064

cond.end.1064:                                    ; preds = %cond.false.1054, %cond.true.1046
  %cond1065 = phi i32 [ %conv1053, %cond.true.1046 ], [ %add1063, %cond.false.1054 ]
  %conv1066 = sext i32 %cond1065 to i64
  store i64 %conv1066, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.1067:                                  ; preds = %lor.lhs.false.1030
  %241 = load i32, i32* %buf_magnification, align 4
  %conv1068 = trunc i32 %241 to i16
  %conv1069 = zext i16 %conv1068 to i32
  %242 = load i64, i64* %outbufsize, align 8
  %conv1070 = trunc i64 %242 to i16
  %conv1071 = zext i16 %conv1070 to i32
  %mul1072 = mul nsw i32 %conv1069, %conv1071
  %cmp1073 = icmp sle i32 %mul1072, 32767
  br i1 %cmp1073, label %cond.true.1075, label %cond.false.1083

cond.true.1075:                                   ; preds = %cond.false.1067
  %243 = load i32, i32* %buf_magnification, align 4
  %conv1076 = trunc i32 %243 to i16
  %conv1077 = zext i16 %conv1076 to i32
  %244 = load i64, i64* %outbufsize, align 8
  %conv1078 = trunc i64 %244 to i16
  %conv1079 = zext i16 %conv1078 to i32
  %mul1080 = mul nsw i32 %conv1077, %conv1079
  %conv1081 = trunc i32 %mul1080 to i16
  %conv1082 = sext i16 %conv1081 to i32
  br label %cond.end.1093

cond.false.1083:                                  ; preds = %cond.false.1067
  %245 = load i32, i32* %buf_magnification, align 4
  %conv1084 = trunc i32 %245 to i16
  %conv1085 = zext i16 %conv1084 to i32
  %246 = load i64, i64* %outbufsize, align 8
  %conv1086 = trunc i64 %246 to i16
  %conv1087 = zext i16 %conv1086 to i32
  %mul1088 = mul nsw i32 %conv1085, %conv1087
  %sub1089 = sub nsw i32 %mul1088, -32768
  %conv1090 = trunc i32 %sub1089 to i16
  %conv1091 = sext i16 %conv1090 to i32
  %add1092 = add nsw i32 %conv1091, -32768
  br label %cond.end.1093

cond.end.1093:                                    ; preds = %cond.false.1083, %cond.true.1075
  %cond1094 = phi i32 [ %conv1082, %cond.true.1075 ], [ %add1092, %cond.false.1083 ]
  %conv1095 = sext i32 %cond1094 to i64
  store i64 %conv1095, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

cond.false.1096:                                  ; preds = %cond.true.720
  %247 = load i64, i64* %outbufsize, align 8
  %mul1097 = mul nsw i64 0, %247
  %248 = load i32, i32* %buf_magnification, align 4
  %conv1098 = sext i32 %248 to i64
  %add1099 = add nsw i64 %mul1097, %conv1098
  %mul1100 = mul nsw i64 0, %add1099
  %sub1101 = sub nsw i64 %mul1100, 1
  %cmp1102 = icmp slt i64 %sub1101, 0
  br i1 %cmp1102, label %cond.true.1104, label %cond.false.1125

cond.true.1104:                                   ; preds = %cond.false.1096
  %249 = load i64, i64* %outbufsize, align 8
  %mul1105 = mul nsw i64 0, %249
  %250 = load i32, i32* %buf_magnification, align 4
  %conv1106 = sext i32 %250 to i64
  %add1107 = add nsw i64 %mul1105, %conv1106
  %mul1108 = mul nsw i64 0, %add1107
  %add1109 = add nsw i64 %mul1108, 0
  %neg1110 = xor i64 %add1109, -1
  %cmp1111 = icmp eq i64 %neg1110, -1
  %conv1112 = zext i1 %cmp1111 to i32
  %sub1113 = sub nsw i32 0, %conv1112
  %conv1114 = sext i32 %sub1113 to i64
  %251 = load i64, i64* %outbufsize, align 8
  %mul1115 = mul nsw i64 0, %251
  %252 = load i32, i32* %buf_magnification, align 4
  %conv1116 = sext i32 %252 to i64
  %add1117 = add nsw i64 %mul1115, %conv1116
  %mul1118 = mul nsw i64 0, %add1117
  %add1119 = add nsw i64 %mul1118, 1
  %shl1120 = shl i64 %add1119, 62
  %sub1121 = sub nsw i64 %shl1120, 1
  %mul1122 = mul nsw i64 %sub1121, 2
  %add1123 = add nsw i64 %mul1122, 1
  %sub1124 = sub nsw i64 %conv1114, %add1123
  br label %cond.end.1131

cond.false.1125:                                  ; preds = %cond.false.1096
  %253 = load i64, i64* %outbufsize, align 8
  %mul1126 = mul nsw i64 0, %253
  %254 = load i32, i32* %buf_magnification, align 4
  %conv1127 = sext i32 %254 to i64
  %add1128 = add nsw i64 %mul1126, %conv1127
  %mul1129 = mul nsw i64 0, %add1128
  %add1130 = add nsw i64 %mul1129, 0
  br label %cond.end.1131

cond.end.1131:                                    ; preds = %cond.false.1125, %cond.true.1104
  %cond1132 = phi i64 [ %sub1124, %cond.true.1104 ], [ %add1130, %cond.false.1125 ]
  %cmp1133 = icmp eq i64 %cond1132, 0
  br i1 %cmp1133, label %land.lhs.true.1135, label %lor.lhs.false.1147

land.lhs.true.1135:                               ; preds = %cond.end.1131
  %255 = load i32, i32* %buf_magnification, align 4
  %cmp1136 = icmp slt i32 %255, 0
  br i1 %cmp1136, label %land.lhs.true.1138, label %lor.lhs.false.1141

land.lhs.true.1138:                               ; preds = %land.lhs.true.1135
  %256 = load i64, i64* %outbufsize, align 8
  %cmp1139 = icmp slt i64 0, %256
  br i1 %cmp1139, label %cond.true.1323, label %lor.lhs.false.1141

lor.lhs.false.1141:                               ; preds = %land.lhs.true.1138, %land.lhs.true.1135
  %257 = load i64, i64* %outbufsize, align 8
  %cmp1142 = icmp slt i64 %257, 0
  br i1 %cmp1142, label %land.lhs.true.1144, label %lor.lhs.false.1147

land.lhs.true.1144:                               ; preds = %lor.lhs.false.1141
  %258 = load i32, i32* %buf_magnification, align 4
  %cmp1145 = icmp slt i32 0, %258
  br i1 %cmp1145, label %cond.true.1323, label %lor.lhs.false.1147

lor.lhs.false.1147:                               ; preds = %land.lhs.true.1144, %lor.lhs.false.1141, %cond.end.1131
  %259 = load i64, i64* %outbufsize, align 8
  %cmp1148 = icmp slt i64 %259, 0
  br i1 %cmp1148, label %cond.true.1150, label %cond.false.1228

cond.true.1150:                                   ; preds = %lor.lhs.false.1147
  %260 = load i32, i32* %buf_magnification, align 4
  %cmp1151 = icmp slt i32 %260, 0
  br i1 %cmp1151, label %cond.true.1153, label %cond.false.1183

cond.true.1153:                                   ; preds = %cond.true.1150
  %261 = load i32, i32* %buf_magnification, align 4
  %conv1154 = sext i32 %261 to i64
  %262 = load i64, i64* %outbufsize, align 8
  %mul1155 = mul nsw i64 0, %262
  %263 = load i32, i32* %buf_magnification, align 4
  %conv1156 = sext i32 %263 to i64
  %add1157 = add nsw i64 %mul1155, %conv1156
  %mul1158 = mul nsw i64 0, %add1157
  %sub1159 = sub nsw i64 %mul1158, 1
  %cmp1160 = icmp slt i64 %sub1159, 0
  br i1 %cmp1160, label %cond.true.1162, label %cond.false.1172

cond.true.1162:                                   ; preds = %cond.true.1153
  %264 = load i64, i64* %outbufsize, align 8
  %mul1163 = mul nsw i64 0, %264
  %265 = load i32, i32* %buf_magnification, align 4
  %conv1164 = sext i32 %265 to i64
  %add1165 = add nsw i64 %mul1163, %conv1164
  %mul1166 = mul nsw i64 0, %add1165
  %add1167 = add nsw i64 %mul1166, 1
  %shl1168 = shl i64 %add1167, 62
  %sub1169 = sub nsw i64 %shl1168, 1
  %mul1170 = mul nsw i64 %sub1169, 2
  %add1171 = add nsw i64 %mul1170, 1
  br label %cond.end.1178

cond.false.1172:                                  ; preds = %cond.true.1153
  %266 = load i64, i64* %outbufsize, align 8
  %mul1173 = mul nsw i64 0, %266
  %267 = load i32, i32* %buf_magnification, align 4
  %conv1174 = sext i32 %267 to i64
  %add1175 = add nsw i64 %mul1173, %conv1174
  %mul1176 = mul nsw i64 0, %add1175
  %sub1177 = sub nsw i64 %mul1176, 1
  br label %cond.end.1178

cond.end.1178:                                    ; preds = %cond.false.1172, %cond.true.1162
  %cond1179 = phi i64 [ %add1171, %cond.true.1162 ], [ %sub1177, %cond.false.1172 ]
  %268 = load i64, i64* %outbufsize, align 8
  %div1180 = sdiv i64 %cond1179, %268
  %cmp1181 = icmp slt i64 %conv1154, %div1180
  br i1 %cmp1181, label %cond.true.1323, label %lor.lhs.false.1306

cond.false.1183:                                  ; preds = %cond.true.1150
  %269 = load i64, i64* %outbufsize, align 8
  %cmp1184 = icmp eq i64 %269, -1
  br i1 %cmp1184, label %cond.true.1186, label %cond.false.1187

cond.true.1186:                                   ; preds = %cond.false.1183
  br i1 false, label %cond.true.1323, label %lor.lhs.false.1306

cond.false.1187:                                  ; preds = %cond.false.1183
  %270 = load i64, i64* %outbufsize, align 8
  %mul1188 = mul nsw i64 0, %270
  %271 = load i32, i32* %buf_magnification, align 4
  %conv1189 = sext i32 %271 to i64
  %add1190 = add nsw i64 %mul1188, %conv1189
  %mul1191 = mul nsw i64 0, %add1190
  %sub1192 = sub nsw i64 %mul1191, 1
  %cmp1193 = icmp slt i64 %sub1192, 0
  br i1 %cmp1193, label %cond.true.1195, label %cond.false.1216

cond.true.1195:                                   ; preds = %cond.false.1187
  %272 = load i64, i64* %outbufsize, align 8
  %mul1196 = mul nsw i64 0, %272
  %273 = load i32, i32* %buf_magnification, align 4
  %conv1197 = sext i32 %273 to i64
  %add1198 = add nsw i64 %mul1196, %conv1197
  %mul1199 = mul nsw i64 0, %add1198
  %add1200 = add nsw i64 %mul1199, 0
  %neg1201 = xor i64 %add1200, -1
  %cmp1202 = icmp eq i64 %neg1201, -1
  %conv1203 = zext i1 %cmp1202 to i32
  %sub1204 = sub nsw i32 0, %conv1203
  %conv1205 = sext i32 %sub1204 to i64
  %274 = load i64, i64* %outbufsize, align 8
  %mul1206 = mul nsw i64 0, %274
  %275 = load i32, i32* %buf_magnification, align 4
  %conv1207 = sext i32 %275 to i64
  %add1208 = add nsw i64 %mul1206, %conv1207
  %mul1209 = mul nsw i64 0, %add1208
  %add1210 = add nsw i64 %mul1209, 1
  %shl1211 = shl i64 %add1210, 62
  %sub1212 = sub nsw i64 %shl1211, 1
  %mul1213 = mul nsw i64 %sub1212, 2
  %add1214 = add nsw i64 %mul1213, 1
  %sub1215 = sub nsw i64 %conv1205, %add1214
  br label %cond.end.1222

cond.false.1216:                                  ; preds = %cond.false.1187
  %276 = load i64, i64* %outbufsize, align 8
  %mul1217 = mul nsw i64 0, %276
  %277 = load i32, i32* %buf_magnification, align 4
  %conv1218 = sext i32 %277 to i64
  %add1219 = add nsw i64 %mul1217, %conv1218
  %mul1220 = mul nsw i64 0, %add1219
  %add1221 = add nsw i64 %mul1220, 0
  br label %cond.end.1222

cond.end.1222:                                    ; preds = %cond.false.1216, %cond.true.1195
  %cond1223 = phi i64 [ %sub1215, %cond.true.1195 ], [ %add1221, %cond.false.1216 ]
  %278 = load i64, i64* %outbufsize, align 8
  %div1224 = sdiv i64 %cond1223, %278
  %279 = load i32, i32* %buf_magnification, align 4
  %conv1225 = sext i32 %279 to i64
  %cmp1226 = icmp slt i64 %div1224, %conv1225
  br i1 %cmp1226, label %cond.true.1323, label %lor.lhs.false.1306

cond.false.1228:                                  ; preds = %lor.lhs.false.1147
  %280 = load i64, i64* %outbufsize, align 8
  %cmp1229 = icmp eq i64 %280, 0
  br i1 %cmp1229, label %cond.true.1231, label %cond.false.1232

cond.true.1231:                                   ; preds = %cond.false.1228
  br i1 false, label %cond.true.1323, label %lor.lhs.false.1306

cond.false.1232:                                  ; preds = %cond.false.1228
  %281 = load i32, i32* %buf_magnification, align 4
  %cmp1233 = icmp slt i32 %281, 0
  br i1 %cmp1233, label %cond.true.1235, label %cond.false.1276

cond.true.1235:                                   ; preds = %cond.false.1232
  %282 = load i32, i32* %buf_magnification, align 4
  %conv1236 = sext i32 %282 to i64
  %283 = load i64, i64* %outbufsize, align 8
  %mul1237 = mul nsw i64 0, %283
  %284 = load i32, i32* %buf_magnification, align 4
  %conv1238 = sext i32 %284 to i64
  %add1239 = add nsw i64 %mul1237, %conv1238
  %mul1240 = mul nsw i64 0, %add1239
  %sub1241 = sub nsw i64 %mul1240, 1
  %cmp1242 = icmp slt i64 %sub1241, 0
  br i1 %cmp1242, label %cond.true.1244, label %cond.false.1265

cond.true.1244:                                   ; preds = %cond.true.1235
  %285 = load i64, i64* %outbufsize, align 8
  %mul1245 = mul nsw i64 0, %285
  %286 = load i32, i32* %buf_magnification, align 4
  %conv1246 = sext i32 %286 to i64
  %add1247 = add nsw i64 %mul1245, %conv1246
  %mul1248 = mul nsw i64 0, %add1247
  %add1249 = add nsw i64 %mul1248, 0
  %neg1250 = xor i64 %add1249, -1
  %cmp1251 = icmp eq i64 %neg1250, -1
  %conv1252 = zext i1 %cmp1251 to i32
  %sub1253 = sub nsw i32 0, %conv1252
  %conv1254 = sext i32 %sub1253 to i64
  %287 = load i64, i64* %outbufsize, align 8
  %mul1255 = mul nsw i64 0, %287
  %288 = load i32, i32* %buf_magnification, align 4
  %conv1256 = sext i32 %288 to i64
  %add1257 = add nsw i64 %mul1255, %conv1256
  %mul1258 = mul nsw i64 0, %add1257
  %add1259 = add nsw i64 %mul1258, 1
  %shl1260 = shl i64 %add1259, 62
  %sub1261 = sub nsw i64 %shl1260, 1
  %mul1262 = mul nsw i64 %sub1261, 2
  %add1263 = add nsw i64 %mul1262, 1
  %sub1264 = sub nsw i64 %conv1254, %add1263
  br label %cond.end.1271

cond.false.1265:                                  ; preds = %cond.true.1235
  %289 = load i64, i64* %outbufsize, align 8
  %mul1266 = mul nsw i64 0, %289
  %290 = load i32, i32* %buf_magnification, align 4
  %conv1267 = sext i32 %290 to i64
  %add1268 = add nsw i64 %mul1266, %conv1267
  %mul1269 = mul nsw i64 0, %add1268
  %add1270 = add nsw i64 %mul1269, 0
  br label %cond.end.1271

cond.end.1271:                                    ; preds = %cond.false.1265, %cond.true.1244
  %cond1272 = phi i64 [ %sub1264, %cond.true.1244 ], [ %add1270, %cond.false.1265 ]
  %291 = load i64, i64* %outbufsize, align 8
  %div1273 = sdiv i64 %cond1272, %291
  %cmp1274 = icmp slt i64 %conv1236, %div1273
  br i1 %cmp1274, label %cond.true.1323, label %lor.lhs.false.1306

cond.false.1276:                                  ; preds = %cond.false.1232
  %292 = load i64, i64* %outbufsize, align 8
  %mul1277 = mul nsw i64 0, %292
  %293 = load i32, i32* %buf_magnification, align 4
  %conv1278 = sext i32 %293 to i64
  %add1279 = add nsw i64 %mul1277, %conv1278
  %mul1280 = mul nsw i64 0, %add1279
  %sub1281 = sub nsw i64 %mul1280, 1
  %cmp1282 = icmp slt i64 %sub1281, 0
  br i1 %cmp1282, label %cond.true.1284, label %cond.false.1294

cond.true.1284:                                   ; preds = %cond.false.1276
  %294 = load i64, i64* %outbufsize, align 8
  %mul1285 = mul nsw i64 0, %294
  %295 = load i32, i32* %buf_magnification, align 4
  %conv1286 = sext i32 %295 to i64
  %add1287 = add nsw i64 %mul1285, %conv1286
  %mul1288 = mul nsw i64 0, %add1287
  %add1289 = add nsw i64 %mul1288, 1
  %shl1290 = shl i64 %add1289, 62
  %sub1291 = sub nsw i64 %shl1290, 1
  %mul1292 = mul nsw i64 %sub1291, 2
  %add1293 = add nsw i64 %mul1292, 1
  br label %cond.end.1300

cond.false.1294:                                  ; preds = %cond.false.1276
  %296 = load i64, i64* %outbufsize, align 8
  %mul1295 = mul nsw i64 0, %296
  %297 = load i32, i32* %buf_magnification, align 4
  %conv1296 = sext i32 %297 to i64
  %add1297 = add nsw i64 %mul1295, %conv1296
  %mul1298 = mul nsw i64 0, %add1297
  %sub1299 = sub nsw i64 %mul1298, 1
  br label %cond.end.1300

cond.end.1300:                                    ; preds = %cond.false.1294, %cond.true.1284
  %cond1301 = phi i64 [ %add1293, %cond.true.1284 ], [ %sub1299, %cond.false.1294 ]
  %298 = load i64, i64* %outbufsize, align 8
  %div1302 = sdiv i64 %cond1301, %298
  %299 = load i32, i32* %buf_magnification, align 4
  %conv1303 = sext i32 %299 to i64
  %cmp1304 = icmp slt i64 %div1302, %conv1303
  br i1 %cmp1304, label %cond.true.1323, label %lor.lhs.false.1306

lor.lhs.false.1306:                               ; preds = %cond.end.1300, %cond.end.1271, %cond.true.1231, %cond.end.1222, %cond.true.1186, %cond.end.1178
  %300 = load i32, i32* %buf_magnification, align 4
  %conv1307 = sext i32 %300 to i64
  %301 = load i64, i64* %outbufsize, align 8
  %mul1308 = mul nsw i64 %conv1307, %301
  %mul1309 = mul nsw i64 0, %mul1308
  %sub1310 = sub nsw i64 %mul1309, 1
  %cmp1311 = icmp slt i64 %sub1310, 0
  br i1 %cmp1311, label %land.lhs.true.1313, label %lor.lhs.false.1318

land.lhs.true.1313:                               ; preds = %lor.lhs.false.1306
  %302 = load i32, i32* %buf_magnification, align 4
  %conv1314 = sext i32 %302 to i64
  %303 = load i64, i64* %outbufsize, align 8
  %mul1315 = mul nsw i64 %conv1314, %303
  %cmp1316 = icmp slt i64 %mul1315, -32768
  br i1 %cmp1316, label %cond.true.1323, label %lor.lhs.false.1318

lor.lhs.false.1318:                               ; preds = %land.lhs.true.1313, %lor.lhs.false.1306
  %304 = load i32, i32* %buf_magnification, align 4
  %conv1319 = sext i32 %304 to i64
  %305 = load i64, i64* %outbufsize, align 8
  %mul1320 = mul nsw i64 %conv1319, %305
  %cmp1321 = icmp slt i64 32767, %mul1320
  br i1 %cmp1321, label %cond.true.1323, label %cond.false.1352

cond.true.1323:                                   ; preds = %lor.lhs.false.1318, %land.lhs.true.1313, %cond.end.1300, %cond.end.1271, %cond.true.1231, %cond.end.1222, %cond.true.1186, %cond.end.1178, %land.lhs.true.1144, %land.lhs.true.1138
  %306 = load i32, i32* %buf_magnification, align 4
  %conv1324 = trunc i32 %306 to i16
  %conv1325 = zext i16 %conv1324 to i32
  %307 = load i64, i64* %outbufsize, align 8
  %conv1326 = trunc i64 %307 to i16
  %conv1327 = zext i16 %conv1326 to i32
  %mul1328 = mul nsw i32 %conv1325, %conv1327
  %cmp1329 = icmp sle i32 %mul1328, 32767
  br i1 %cmp1329, label %cond.true.1331, label %cond.false.1339

cond.true.1331:                                   ; preds = %cond.true.1323
  %308 = load i32, i32* %buf_magnification, align 4
  %conv1332 = trunc i32 %308 to i16
  %conv1333 = zext i16 %conv1332 to i32
  %309 = load i64, i64* %outbufsize, align 8
  %conv1334 = trunc i64 %309 to i16
  %conv1335 = zext i16 %conv1334 to i32
  %mul1336 = mul nsw i32 %conv1333, %conv1335
  %conv1337 = trunc i32 %mul1336 to i16
  %conv1338 = sext i16 %conv1337 to i32
  br label %cond.end.1349

cond.false.1339:                                  ; preds = %cond.true.1323
  %310 = load i32, i32* %buf_magnification, align 4
  %conv1340 = trunc i32 %310 to i16
  %conv1341 = zext i16 %conv1340 to i32
  %311 = load i64, i64* %outbufsize, align 8
  %conv1342 = trunc i64 %311 to i16
  %conv1343 = zext i16 %conv1342 to i32
  %mul1344 = mul nsw i32 %conv1341, %conv1343
  %sub1345 = sub nsw i32 %mul1344, -32768
  %conv1346 = trunc i32 %sub1345 to i16
  %conv1347 = sext i16 %conv1346 to i32
  %add1348 = add nsw i32 %conv1347, -32768
  br label %cond.end.1349

cond.end.1349:                                    ; preds = %cond.false.1339, %cond.true.1331
  %cond1350 = phi i32 [ %conv1338, %cond.true.1331 ], [ %add1348, %cond.false.1339 ]
  %conv1351 = sext i32 %cond1350 to i64
  store i64 %conv1351, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.1352:                                  ; preds = %lor.lhs.false.1318
  %312 = load i32, i32* %buf_magnification, align 4
  %conv1353 = trunc i32 %312 to i16
  %conv1354 = zext i16 %conv1353 to i32
  %313 = load i64, i64* %outbufsize, align 8
  %conv1355 = trunc i64 %313 to i16
  %conv1356 = zext i16 %conv1355 to i32
  %mul1357 = mul nsw i32 %conv1354, %conv1356
  %cmp1358 = icmp sle i32 %mul1357, 32767
  br i1 %cmp1358, label %cond.true.1360, label %cond.false.1368

cond.true.1360:                                   ; preds = %cond.false.1352
  %314 = load i32, i32* %buf_magnification, align 4
  %conv1361 = trunc i32 %314 to i16
  %conv1362 = zext i16 %conv1361 to i32
  %315 = load i64, i64* %outbufsize, align 8
  %conv1363 = trunc i64 %315 to i16
  %conv1364 = zext i16 %conv1363 to i32
  %mul1365 = mul nsw i32 %conv1362, %conv1364
  %conv1366 = trunc i32 %mul1365 to i16
  %conv1367 = sext i16 %conv1366 to i32
  br label %cond.end.1378

cond.false.1368:                                  ; preds = %cond.false.1352
  %316 = load i32, i32* %buf_magnification, align 4
  %conv1369 = trunc i32 %316 to i16
  %conv1370 = zext i16 %conv1369 to i32
  %317 = load i64, i64* %outbufsize, align 8
  %conv1371 = trunc i64 %317 to i16
  %conv1372 = zext i16 %conv1371 to i32
  %mul1373 = mul nsw i32 %conv1370, %conv1372
  %sub1374 = sub nsw i32 %mul1373, -32768
  %conv1375 = trunc i32 %sub1374 to i16
  %conv1376 = sext i16 %conv1375 to i32
  %add1377 = add nsw i32 %conv1376, -32768
  br label %cond.end.1378

cond.end.1378:                                    ; preds = %cond.false.1368, %cond.true.1360
  %cond1379 = phi i32 [ %conv1367, %cond.true.1360 ], [ %add1377, %cond.false.1368 ]
  %conv1380 = sext i32 %cond1379 to i64
  store i64 %conv1380, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

cond.false.1381:                                  ; preds = %cond.false.719
  br i1 false, label %cond.true.1382, label %cond.false.1903

cond.true.1382:                                   ; preds = %cond.false.1381
  br i1 false, label %cond.true.1383, label %cond.false.1644

cond.true.1383:                                   ; preds = %cond.true.1382
  %318 = load i64, i64* %outbufsize, align 8
  %conv1384 = trunc i64 %318 to i32
  %mul1385 = mul nsw i32 0, %conv1384
  %319 = load i32, i32* %buf_magnification, align 4
  %add1386 = add nsw i32 %mul1385, %319
  %mul1387 = mul nsw i32 0, %add1386
  %sub1388 = sub nsw i32 %mul1387, 1
  %cmp1389 = icmp slt i32 %sub1388, 0
  br i1 %cmp1389, label %cond.true.1391, label %cond.false.1411

cond.true.1391:                                   ; preds = %cond.true.1383
  %320 = load i64, i64* %outbufsize, align 8
  %conv1392 = trunc i64 %320 to i32
  %mul1393 = mul nsw i32 0, %conv1392
  %321 = load i32, i32* %buf_magnification, align 4
  %add1394 = add nsw i32 %mul1393, %321
  %mul1395 = mul nsw i32 0, %add1394
  %add1396 = add nsw i32 %mul1395, 0
  %neg1397 = xor i32 %add1396, -1
  %cmp1398 = icmp eq i32 %neg1397, -1
  %conv1399 = zext i1 %cmp1398 to i32
  %sub1400 = sub nsw i32 0, %conv1399
  %322 = load i64, i64* %outbufsize, align 8
  %conv1401 = trunc i64 %322 to i32
  %mul1402 = mul nsw i32 0, %conv1401
  %323 = load i32, i32* %buf_magnification, align 4
  %add1403 = add nsw i32 %mul1402, %323
  %mul1404 = mul nsw i32 0, %add1403
  %add1405 = add nsw i32 %mul1404, 1
  %shl1406 = shl i32 %add1405, 30
  %sub1407 = sub nsw i32 %shl1406, 1
  %mul1408 = mul nsw i32 %sub1407, 2
  %add1409 = add nsw i32 %mul1408, 1
  %sub1410 = sub nsw i32 %sub1400, %add1409
  br label %cond.end.1417

cond.false.1411:                                  ; preds = %cond.true.1383
  %324 = load i64, i64* %outbufsize, align 8
  %conv1412 = trunc i64 %324 to i32
  %mul1413 = mul nsw i32 0, %conv1412
  %325 = load i32, i32* %buf_magnification, align 4
  %add1414 = add nsw i32 %mul1413, %325
  %mul1415 = mul nsw i32 0, %add1414
  %add1416 = add nsw i32 %mul1415, 0
  br label %cond.end.1417

cond.end.1417:                                    ; preds = %cond.false.1411, %cond.true.1391
  %cond1418 = phi i32 [ %sub1410, %cond.true.1391 ], [ %add1416, %cond.false.1411 ]
  %cmp1419 = icmp eq i32 %cond1418, 0
  br i1 %cmp1419, label %land.lhs.true.1421, label %lor.lhs.false.1435

land.lhs.true.1421:                               ; preds = %cond.end.1417
  %326 = load i32, i32* %buf_magnification, align 4
  %cmp1422 = icmp slt i32 %326, 0
  br i1 %cmp1422, label %land.lhs.true.1424, label %lor.lhs.false.1428

land.lhs.true.1424:                               ; preds = %land.lhs.true.1421
  %327 = load i64, i64* %outbufsize, align 8
  %conv1425 = trunc i64 %327 to i32
  %cmp1426 = icmp slt i32 0, %conv1425
  br i1 %cmp1426, label %cond.true.1612, label %lor.lhs.false.1428

lor.lhs.false.1428:                               ; preds = %land.lhs.true.1424, %land.lhs.true.1421
  %328 = load i64, i64* %outbufsize, align 8
  %conv1429 = trunc i64 %328 to i32
  %cmp1430 = icmp slt i32 %conv1429, 0
  br i1 %cmp1430, label %land.lhs.true.1432, label %lor.lhs.false.1435

land.lhs.true.1432:                               ; preds = %lor.lhs.false.1428
  %329 = load i32, i32* %buf_magnification, align 4
  %cmp1433 = icmp slt i32 0, %329
  br i1 %cmp1433, label %cond.true.1612, label %lor.lhs.false.1435

lor.lhs.false.1435:                               ; preds = %land.lhs.true.1432, %lor.lhs.false.1428, %cond.end.1417
  %330 = load i64, i64* %outbufsize, align 8
  %conv1436 = trunc i64 %330 to i32
  %cmp1437 = icmp slt i32 %conv1436, 0
  br i1 %cmp1437, label %cond.true.1439, label %cond.false.1517

cond.true.1439:                                   ; preds = %lor.lhs.false.1435
  %331 = load i32, i32* %buf_magnification, align 4
  %cmp1440 = icmp slt i32 %331, 0
  br i1 %cmp1440, label %cond.true.1442, label %cond.false.1472

cond.true.1442:                                   ; preds = %cond.true.1439
  %332 = load i32, i32* %buf_magnification, align 4
  %333 = load i64, i64* %outbufsize, align 8
  %conv1443 = trunc i64 %333 to i32
  %mul1444 = mul nsw i32 0, %conv1443
  %334 = load i32, i32* %buf_magnification, align 4
  %add1445 = add nsw i32 %mul1444, %334
  %mul1446 = mul nsw i32 0, %add1445
  %sub1447 = sub nsw i32 %mul1446, 1
  %cmp1448 = icmp slt i32 %sub1447, 0
  br i1 %cmp1448, label %cond.true.1450, label %cond.false.1460

cond.true.1450:                                   ; preds = %cond.true.1442
  %335 = load i64, i64* %outbufsize, align 8
  %conv1451 = trunc i64 %335 to i32
  %mul1452 = mul nsw i32 0, %conv1451
  %336 = load i32, i32* %buf_magnification, align 4
  %add1453 = add nsw i32 %mul1452, %336
  %mul1454 = mul nsw i32 0, %add1453
  %add1455 = add nsw i32 %mul1454, 1
  %shl1456 = shl i32 %add1455, 30
  %sub1457 = sub nsw i32 %shl1456, 1
  %mul1458 = mul nsw i32 %sub1457, 2
  %add1459 = add nsw i32 %mul1458, 1
  br label %cond.end.1466

cond.false.1460:                                  ; preds = %cond.true.1442
  %337 = load i64, i64* %outbufsize, align 8
  %conv1461 = trunc i64 %337 to i32
  %mul1462 = mul nsw i32 0, %conv1461
  %338 = load i32, i32* %buf_magnification, align 4
  %add1463 = add nsw i32 %mul1462, %338
  %mul1464 = mul nsw i32 0, %add1463
  %sub1465 = sub nsw i32 %mul1464, 1
  br label %cond.end.1466

cond.end.1466:                                    ; preds = %cond.false.1460, %cond.true.1450
  %cond1467 = phi i32 [ %add1459, %cond.true.1450 ], [ %sub1465, %cond.false.1460 ]
  %339 = load i64, i64* %outbufsize, align 8
  %conv1468 = trunc i64 %339 to i32
  %div1469 = sdiv i32 %cond1467, %conv1468
  %cmp1470 = icmp slt i32 %332, %div1469
  br i1 %cmp1470, label %cond.true.1612, label %lor.lhs.false.1595

cond.false.1472:                                  ; preds = %cond.true.1439
  %340 = load i64, i64* %outbufsize, align 8
  %conv1473 = trunc i64 %340 to i32
  %cmp1474 = icmp eq i32 %conv1473, -1
  br i1 %cmp1474, label %cond.true.1476, label %cond.false.1477

cond.true.1476:                                   ; preds = %cond.false.1472
  br i1 false, label %cond.true.1612, label %lor.lhs.false.1595

cond.false.1477:                                  ; preds = %cond.false.1472
  %341 = load i64, i64* %outbufsize, align 8
  %conv1478 = trunc i64 %341 to i32
  %mul1479 = mul nsw i32 0, %conv1478
  %342 = load i32, i32* %buf_magnification, align 4
  %add1480 = add nsw i32 %mul1479, %342
  %mul1481 = mul nsw i32 0, %add1480
  %sub1482 = sub nsw i32 %mul1481, 1
  %cmp1483 = icmp slt i32 %sub1482, 0
  br i1 %cmp1483, label %cond.true.1485, label %cond.false.1505

cond.true.1485:                                   ; preds = %cond.false.1477
  %343 = load i64, i64* %outbufsize, align 8
  %conv1486 = trunc i64 %343 to i32
  %mul1487 = mul nsw i32 0, %conv1486
  %344 = load i32, i32* %buf_magnification, align 4
  %add1488 = add nsw i32 %mul1487, %344
  %mul1489 = mul nsw i32 0, %add1488
  %add1490 = add nsw i32 %mul1489, 0
  %neg1491 = xor i32 %add1490, -1
  %cmp1492 = icmp eq i32 %neg1491, -1
  %conv1493 = zext i1 %cmp1492 to i32
  %sub1494 = sub nsw i32 0, %conv1493
  %345 = load i64, i64* %outbufsize, align 8
  %conv1495 = trunc i64 %345 to i32
  %mul1496 = mul nsw i32 0, %conv1495
  %346 = load i32, i32* %buf_magnification, align 4
  %add1497 = add nsw i32 %mul1496, %346
  %mul1498 = mul nsw i32 0, %add1497
  %add1499 = add nsw i32 %mul1498, 1
  %shl1500 = shl i32 %add1499, 30
  %sub1501 = sub nsw i32 %shl1500, 1
  %mul1502 = mul nsw i32 %sub1501, 2
  %add1503 = add nsw i32 %mul1502, 1
  %sub1504 = sub nsw i32 %sub1494, %add1503
  br label %cond.end.1511

cond.false.1505:                                  ; preds = %cond.false.1477
  %347 = load i64, i64* %outbufsize, align 8
  %conv1506 = trunc i64 %347 to i32
  %mul1507 = mul nsw i32 0, %conv1506
  %348 = load i32, i32* %buf_magnification, align 4
  %add1508 = add nsw i32 %mul1507, %348
  %mul1509 = mul nsw i32 0, %add1508
  %add1510 = add nsw i32 %mul1509, 0
  br label %cond.end.1511

cond.end.1511:                                    ; preds = %cond.false.1505, %cond.true.1485
  %cond1512 = phi i32 [ %sub1504, %cond.true.1485 ], [ %add1510, %cond.false.1505 ]
  %349 = load i64, i64* %outbufsize, align 8
  %conv1513 = trunc i64 %349 to i32
  %div1514 = sdiv i32 %cond1512, %conv1513
  %350 = load i32, i32* %buf_magnification, align 4
  %cmp1515 = icmp slt i32 %div1514, %350
  br i1 %cmp1515, label %cond.true.1612, label %lor.lhs.false.1595

cond.false.1517:                                  ; preds = %lor.lhs.false.1435
  %351 = load i64, i64* %outbufsize, align 8
  %conv1518 = trunc i64 %351 to i32
  %cmp1519 = icmp eq i32 %conv1518, 0
  br i1 %cmp1519, label %cond.true.1521, label %cond.false.1522

cond.true.1521:                                   ; preds = %cond.false.1517
  br i1 false, label %cond.true.1612, label %lor.lhs.false.1595

cond.false.1522:                                  ; preds = %cond.false.1517
  %352 = load i32, i32* %buf_magnification, align 4
  %cmp1523 = icmp slt i32 %352, 0
  br i1 %cmp1523, label %cond.true.1525, label %cond.false.1565

cond.true.1525:                                   ; preds = %cond.false.1522
  %353 = load i32, i32* %buf_magnification, align 4
  %354 = load i64, i64* %outbufsize, align 8
  %conv1526 = trunc i64 %354 to i32
  %mul1527 = mul nsw i32 0, %conv1526
  %355 = load i32, i32* %buf_magnification, align 4
  %add1528 = add nsw i32 %mul1527, %355
  %mul1529 = mul nsw i32 0, %add1528
  %sub1530 = sub nsw i32 %mul1529, 1
  %cmp1531 = icmp slt i32 %sub1530, 0
  br i1 %cmp1531, label %cond.true.1533, label %cond.false.1553

cond.true.1533:                                   ; preds = %cond.true.1525
  %356 = load i64, i64* %outbufsize, align 8
  %conv1534 = trunc i64 %356 to i32
  %mul1535 = mul nsw i32 0, %conv1534
  %357 = load i32, i32* %buf_magnification, align 4
  %add1536 = add nsw i32 %mul1535, %357
  %mul1537 = mul nsw i32 0, %add1536
  %add1538 = add nsw i32 %mul1537, 0
  %neg1539 = xor i32 %add1538, -1
  %cmp1540 = icmp eq i32 %neg1539, -1
  %conv1541 = zext i1 %cmp1540 to i32
  %sub1542 = sub nsw i32 0, %conv1541
  %358 = load i64, i64* %outbufsize, align 8
  %conv1543 = trunc i64 %358 to i32
  %mul1544 = mul nsw i32 0, %conv1543
  %359 = load i32, i32* %buf_magnification, align 4
  %add1545 = add nsw i32 %mul1544, %359
  %mul1546 = mul nsw i32 0, %add1545
  %add1547 = add nsw i32 %mul1546, 1
  %shl1548 = shl i32 %add1547, 30
  %sub1549 = sub nsw i32 %shl1548, 1
  %mul1550 = mul nsw i32 %sub1549, 2
  %add1551 = add nsw i32 %mul1550, 1
  %sub1552 = sub nsw i32 %sub1542, %add1551
  br label %cond.end.1559

cond.false.1553:                                  ; preds = %cond.true.1525
  %360 = load i64, i64* %outbufsize, align 8
  %conv1554 = trunc i64 %360 to i32
  %mul1555 = mul nsw i32 0, %conv1554
  %361 = load i32, i32* %buf_magnification, align 4
  %add1556 = add nsw i32 %mul1555, %361
  %mul1557 = mul nsw i32 0, %add1556
  %add1558 = add nsw i32 %mul1557, 0
  br label %cond.end.1559

cond.end.1559:                                    ; preds = %cond.false.1553, %cond.true.1533
  %cond1560 = phi i32 [ %sub1552, %cond.true.1533 ], [ %add1558, %cond.false.1553 ]
  %362 = load i64, i64* %outbufsize, align 8
  %conv1561 = trunc i64 %362 to i32
  %div1562 = sdiv i32 %cond1560, %conv1561
  %cmp1563 = icmp slt i32 %353, %div1562
  br i1 %cmp1563, label %cond.true.1612, label %lor.lhs.false.1595

cond.false.1565:                                  ; preds = %cond.false.1522
  %363 = load i64, i64* %outbufsize, align 8
  %conv1566 = trunc i64 %363 to i32
  %mul1567 = mul nsw i32 0, %conv1566
  %364 = load i32, i32* %buf_magnification, align 4
  %add1568 = add nsw i32 %mul1567, %364
  %mul1569 = mul nsw i32 0, %add1568
  %sub1570 = sub nsw i32 %mul1569, 1
  %cmp1571 = icmp slt i32 %sub1570, 0
  br i1 %cmp1571, label %cond.true.1573, label %cond.false.1583

cond.true.1573:                                   ; preds = %cond.false.1565
  %365 = load i64, i64* %outbufsize, align 8
  %conv1574 = trunc i64 %365 to i32
  %mul1575 = mul nsw i32 0, %conv1574
  %366 = load i32, i32* %buf_magnification, align 4
  %add1576 = add nsw i32 %mul1575, %366
  %mul1577 = mul nsw i32 0, %add1576
  %add1578 = add nsw i32 %mul1577, 1
  %shl1579 = shl i32 %add1578, 30
  %sub1580 = sub nsw i32 %shl1579, 1
  %mul1581 = mul nsw i32 %sub1580, 2
  %add1582 = add nsw i32 %mul1581, 1
  br label %cond.end.1589

cond.false.1583:                                  ; preds = %cond.false.1565
  %367 = load i64, i64* %outbufsize, align 8
  %conv1584 = trunc i64 %367 to i32
  %mul1585 = mul nsw i32 0, %conv1584
  %368 = load i32, i32* %buf_magnification, align 4
  %add1586 = add nsw i32 %mul1585, %368
  %mul1587 = mul nsw i32 0, %add1586
  %sub1588 = sub nsw i32 %mul1587, 1
  br label %cond.end.1589

cond.end.1589:                                    ; preds = %cond.false.1583, %cond.true.1573
  %cond1590 = phi i32 [ %add1582, %cond.true.1573 ], [ %sub1588, %cond.false.1583 ]
  %369 = load i64, i64* %outbufsize, align 8
  %conv1591 = trunc i64 %369 to i32
  %div1592 = sdiv i32 %cond1590, %conv1591
  %370 = load i32, i32* %buf_magnification, align 4
  %cmp1593 = icmp slt i32 %div1592, %370
  br i1 %cmp1593, label %cond.true.1612, label %lor.lhs.false.1595

lor.lhs.false.1595:                               ; preds = %cond.end.1589, %cond.end.1559, %cond.true.1521, %cond.end.1511, %cond.true.1476, %cond.end.1466
  %371 = load i32, i32* %buf_magnification, align 4
  %372 = load i64, i64* %outbufsize, align 8
  %conv1596 = trunc i64 %372 to i32
  %mul1597 = mul nsw i32 %371, %conv1596
  %mul1598 = mul nsw i32 0, %mul1597
  %sub1599 = sub nsw i32 %mul1598, 1
  %cmp1600 = icmp slt i32 %sub1599, 0
  br i1 %cmp1600, label %land.lhs.true.1602, label %lor.lhs.false.1607

land.lhs.true.1602:                               ; preds = %lor.lhs.false.1595
  %373 = load i32, i32* %buf_magnification, align 4
  %374 = load i64, i64* %outbufsize, align 8
  %conv1603 = trunc i64 %374 to i32
  %mul1604 = mul nsw i32 %373, %conv1603
  %cmp1605 = icmp slt i32 %mul1604, -2147483648
  br i1 %cmp1605, label %cond.true.1612, label %lor.lhs.false.1607

lor.lhs.false.1607:                               ; preds = %land.lhs.true.1602, %lor.lhs.false.1595
  %375 = load i32, i32* %buf_magnification, align 4
  %376 = load i64, i64* %outbufsize, align 8
  %conv1608 = trunc i64 %376 to i32
  %mul1609 = mul nsw i32 %375, %conv1608
  %cmp1610 = icmp slt i32 2147483647, %mul1609
  br i1 %cmp1610, label %cond.true.1612, label %cond.false.1628

cond.true.1612:                                   ; preds = %lor.lhs.false.1607, %land.lhs.true.1602, %cond.end.1589, %cond.end.1559, %cond.true.1521, %cond.end.1511, %cond.true.1476, %cond.end.1466, %land.lhs.true.1432, %land.lhs.true.1424
  %377 = load i32, i32* %buf_magnification, align 4
  %378 = load i64, i64* %outbufsize, align 8
  %conv1613 = trunc i64 %378 to i32
  %mul1614 = mul i32 %377, %conv1613
  %cmp1615 = icmp ule i32 %mul1614, 2147483647
  br i1 %cmp1615, label %cond.true.1617, label %cond.false.1620

cond.true.1617:                                   ; preds = %cond.true.1612
  %379 = load i32, i32* %buf_magnification, align 4
  %380 = load i64, i64* %outbufsize, align 8
  %conv1618 = trunc i64 %380 to i32
  %mul1619 = mul i32 %379, %conv1618
  br label %cond.end.1625

cond.false.1620:                                  ; preds = %cond.true.1612
  %381 = load i32, i32* %buf_magnification, align 4
  %382 = load i64, i64* %outbufsize, align 8
  %conv1621 = trunc i64 %382 to i32
  %mul1622 = mul i32 %381, %conv1621
  %sub1623 = sub i32 %mul1622, -2147483648
  %add1624 = add nsw i32 %sub1623, -2147483648
  br label %cond.end.1625

cond.end.1625:                                    ; preds = %cond.false.1620, %cond.true.1617
  %cond1626 = phi i32 [ %mul1619, %cond.true.1617 ], [ %add1624, %cond.false.1620 ]
  %conv1627 = sext i32 %cond1626 to i64
  store i64 %conv1627, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.1628:                                  ; preds = %lor.lhs.false.1607
  %383 = load i32, i32* %buf_magnification, align 4
  %384 = load i64, i64* %outbufsize, align 8
  %conv1629 = trunc i64 %384 to i32
  %mul1630 = mul i32 %383, %conv1629
  %cmp1631 = icmp ule i32 %mul1630, 2147483647
  br i1 %cmp1631, label %cond.true.1633, label %cond.false.1636

cond.true.1633:                                   ; preds = %cond.false.1628
  %385 = load i32, i32* %buf_magnification, align 4
  %386 = load i64, i64* %outbufsize, align 8
  %conv1634 = trunc i64 %386 to i32
  %mul1635 = mul i32 %385, %conv1634
  br label %cond.end.1641

cond.false.1636:                                  ; preds = %cond.false.1628
  %387 = load i32, i32* %buf_magnification, align 4
  %388 = load i64, i64* %outbufsize, align 8
  %conv1637 = trunc i64 %388 to i32
  %mul1638 = mul i32 %387, %conv1637
  %sub1639 = sub i32 %mul1638, -2147483648
  %add1640 = add nsw i32 %sub1639, -2147483648
  br label %cond.end.1641

cond.end.1641:                                    ; preds = %cond.false.1636, %cond.true.1633
  %cond1642 = phi i32 [ %mul1635, %cond.true.1633 ], [ %add1640, %cond.false.1636 ]
  %conv1643 = sext i32 %cond1642 to i64
  store i64 %conv1643, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

cond.false.1644:                                  ; preds = %cond.true.1382
  %389 = load i64, i64* %outbufsize, align 8
  %mul1645 = mul nsw i64 0, %389
  %390 = load i32, i32* %buf_magnification, align 4
  %conv1646 = sext i32 %390 to i64
  %add1647 = add nsw i64 %mul1645, %conv1646
  %mul1648 = mul nsw i64 0, %add1647
  %sub1649 = sub nsw i64 %mul1648, 1
  %cmp1650 = icmp slt i64 %sub1649, 0
  br i1 %cmp1650, label %cond.true.1652, label %cond.false.1673

cond.true.1652:                                   ; preds = %cond.false.1644
  %391 = load i64, i64* %outbufsize, align 8
  %mul1653 = mul nsw i64 0, %391
  %392 = load i32, i32* %buf_magnification, align 4
  %conv1654 = sext i32 %392 to i64
  %add1655 = add nsw i64 %mul1653, %conv1654
  %mul1656 = mul nsw i64 0, %add1655
  %add1657 = add nsw i64 %mul1656, 0
  %neg1658 = xor i64 %add1657, -1
  %cmp1659 = icmp eq i64 %neg1658, -1
  %conv1660 = zext i1 %cmp1659 to i32
  %sub1661 = sub nsw i32 0, %conv1660
  %conv1662 = sext i32 %sub1661 to i64
  %393 = load i64, i64* %outbufsize, align 8
  %mul1663 = mul nsw i64 0, %393
  %394 = load i32, i32* %buf_magnification, align 4
  %conv1664 = sext i32 %394 to i64
  %add1665 = add nsw i64 %mul1663, %conv1664
  %mul1666 = mul nsw i64 0, %add1665
  %add1667 = add nsw i64 %mul1666, 1
  %shl1668 = shl i64 %add1667, 62
  %sub1669 = sub nsw i64 %shl1668, 1
  %mul1670 = mul nsw i64 %sub1669, 2
  %add1671 = add nsw i64 %mul1670, 1
  %sub1672 = sub nsw i64 %conv1662, %add1671
  br label %cond.end.1679

cond.false.1673:                                  ; preds = %cond.false.1644
  %395 = load i64, i64* %outbufsize, align 8
  %mul1674 = mul nsw i64 0, %395
  %396 = load i32, i32* %buf_magnification, align 4
  %conv1675 = sext i32 %396 to i64
  %add1676 = add nsw i64 %mul1674, %conv1675
  %mul1677 = mul nsw i64 0, %add1676
  %add1678 = add nsw i64 %mul1677, 0
  br label %cond.end.1679

cond.end.1679:                                    ; preds = %cond.false.1673, %cond.true.1652
  %cond1680 = phi i64 [ %sub1672, %cond.true.1652 ], [ %add1678, %cond.false.1673 ]
  %cmp1681 = icmp eq i64 %cond1680, 0
  br i1 %cmp1681, label %land.lhs.true.1683, label %lor.lhs.false.1695

land.lhs.true.1683:                               ; preds = %cond.end.1679
  %397 = load i32, i32* %buf_magnification, align 4
  %cmp1684 = icmp slt i32 %397, 0
  br i1 %cmp1684, label %land.lhs.true.1686, label %lor.lhs.false.1689

land.lhs.true.1686:                               ; preds = %land.lhs.true.1683
  %398 = load i64, i64* %outbufsize, align 8
  %cmp1687 = icmp slt i64 0, %398
  br i1 %cmp1687, label %cond.true.1871, label %lor.lhs.false.1689

lor.lhs.false.1689:                               ; preds = %land.lhs.true.1686, %land.lhs.true.1683
  %399 = load i64, i64* %outbufsize, align 8
  %cmp1690 = icmp slt i64 %399, 0
  br i1 %cmp1690, label %land.lhs.true.1692, label %lor.lhs.false.1695

land.lhs.true.1692:                               ; preds = %lor.lhs.false.1689
  %400 = load i32, i32* %buf_magnification, align 4
  %cmp1693 = icmp slt i32 0, %400
  br i1 %cmp1693, label %cond.true.1871, label %lor.lhs.false.1695

lor.lhs.false.1695:                               ; preds = %land.lhs.true.1692, %lor.lhs.false.1689, %cond.end.1679
  %401 = load i64, i64* %outbufsize, align 8
  %cmp1696 = icmp slt i64 %401, 0
  br i1 %cmp1696, label %cond.true.1698, label %cond.false.1776

cond.true.1698:                                   ; preds = %lor.lhs.false.1695
  %402 = load i32, i32* %buf_magnification, align 4
  %cmp1699 = icmp slt i32 %402, 0
  br i1 %cmp1699, label %cond.true.1701, label %cond.false.1731

cond.true.1701:                                   ; preds = %cond.true.1698
  %403 = load i32, i32* %buf_magnification, align 4
  %conv1702 = sext i32 %403 to i64
  %404 = load i64, i64* %outbufsize, align 8
  %mul1703 = mul nsw i64 0, %404
  %405 = load i32, i32* %buf_magnification, align 4
  %conv1704 = sext i32 %405 to i64
  %add1705 = add nsw i64 %mul1703, %conv1704
  %mul1706 = mul nsw i64 0, %add1705
  %sub1707 = sub nsw i64 %mul1706, 1
  %cmp1708 = icmp slt i64 %sub1707, 0
  br i1 %cmp1708, label %cond.true.1710, label %cond.false.1720

cond.true.1710:                                   ; preds = %cond.true.1701
  %406 = load i64, i64* %outbufsize, align 8
  %mul1711 = mul nsw i64 0, %406
  %407 = load i32, i32* %buf_magnification, align 4
  %conv1712 = sext i32 %407 to i64
  %add1713 = add nsw i64 %mul1711, %conv1712
  %mul1714 = mul nsw i64 0, %add1713
  %add1715 = add nsw i64 %mul1714, 1
  %shl1716 = shl i64 %add1715, 62
  %sub1717 = sub nsw i64 %shl1716, 1
  %mul1718 = mul nsw i64 %sub1717, 2
  %add1719 = add nsw i64 %mul1718, 1
  br label %cond.end.1726

cond.false.1720:                                  ; preds = %cond.true.1701
  %408 = load i64, i64* %outbufsize, align 8
  %mul1721 = mul nsw i64 0, %408
  %409 = load i32, i32* %buf_magnification, align 4
  %conv1722 = sext i32 %409 to i64
  %add1723 = add nsw i64 %mul1721, %conv1722
  %mul1724 = mul nsw i64 0, %add1723
  %sub1725 = sub nsw i64 %mul1724, 1
  br label %cond.end.1726

cond.end.1726:                                    ; preds = %cond.false.1720, %cond.true.1710
  %cond1727 = phi i64 [ %add1719, %cond.true.1710 ], [ %sub1725, %cond.false.1720 ]
  %410 = load i64, i64* %outbufsize, align 8
  %div1728 = sdiv i64 %cond1727, %410
  %cmp1729 = icmp slt i64 %conv1702, %div1728
  br i1 %cmp1729, label %cond.true.1871, label %lor.lhs.false.1854

cond.false.1731:                                  ; preds = %cond.true.1698
  %411 = load i64, i64* %outbufsize, align 8
  %cmp1732 = icmp eq i64 %411, -1
  br i1 %cmp1732, label %cond.true.1734, label %cond.false.1735

cond.true.1734:                                   ; preds = %cond.false.1731
  br i1 false, label %cond.true.1871, label %lor.lhs.false.1854

cond.false.1735:                                  ; preds = %cond.false.1731
  %412 = load i64, i64* %outbufsize, align 8
  %mul1736 = mul nsw i64 0, %412
  %413 = load i32, i32* %buf_magnification, align 4
  %conv1737 = sext i32 %413 to i64
  %add1738 = add nsw i64 %mul1736, %conv1737
  %mul1739 = mul nsw i64 0, %add1738
  %sub1740 = sub nsw i64 %mul1739, 1
  %cmp1741 = icmp slt i64 %sub1740, 0
  br i1 %cmp1741, label %cond.true.1743, label %cond.false.1764

cond.true.1743:                                   ; preds = %cond.false.1735
  %414 = load i64, i64* %outbufsize, align 8
  %mul1744 = mul nsw i64 0, %414
  %415 = load i32, i32* %buf_magnification, align 4
  %conv1745 = sext i32 %415 to i64
  %add1746 = add nsw i64 %mul1744, %conv1745
  %mul1747 = mul nsw i64 0, %add1746
  %add1748 = add nsw i64 %mul1747, 0
  %neg1749 = xor i64 %add1748, -1
  %cmp1750 = icmp eq i64 %neg1749, -1
  %conv1751 = zext i1 %cmp1750 to i32
  %sub1752 = sub nsw i32 0, %conv1751
  %conv1753 = sext i32 %sub1752 to i64
  %416 = load i64, i64* %outbufsize, align 8
  %mul1754 = mul nsw i64 0, %416
  %417 = load i32, i32* %buf_magnification, align 4
  %conv1755 = sext i32 %417 to i64
  %add1756 = add nsw i64 %mul1754, %conv1755
  %mul1757 = mul nsw i64 0, %add1756
  %add1758 = add nsw i64 %mul1757, 1
  %shl1759 = shl i64 %add1758, 62
  %sub1760 = sub nsw i64 %shl1759, 1
  %mul1761 = mul nsw i64 %sub1760, 2
  %add1762 = add nsw i64 %mul1761, 1
  %sub1763 = sub nsw i64 %conv1753, %add1762
  br label %cond.end.1770

cond.false.1764:                                  ; preds = %cond.false.1735
  %418 = load i64, i64* %outbufsize, align 8
  %mul1765 = mul nsw i64 0, %418
  %419 = load i32, i32* %buf_magnification, align 4
  %conv1766 = sext i32 %419 to i64
  %add1767 = add nsw i64 %mul1765, %conv1766
  %mul1768 = mul nsw i64 0, %add1767
  %add1769 = add nsw i64 %mul1768, 0
  br label %cond.end.1770

cond.end.1770:                                    ; preds = %cond.false.1764, %cond.true.1743
  %cond1771 = phi i64 [ %sub1763, %cond.true.1743 ], [ %add1769, %cond.false.1764 ]
  %420 = load i64, i64* %outbufsize, align 8
  %div1772 = sdiv i64 %cond1771, %420
  %421 = load i32, i32* %buf_magnification, align 4
  %conv1773 = sext i32 %421 to i64
  %cmp1774 = icmp slt i64 %div1772, %conv1773
  br i1 %cmp1774, label %cond.true.1871, label %lor.lhs.false.1854

cond.false.1776:                                  ; preds = %lor.lhs.false.1695
  %422 = load i64, i64* %outbufsize, align 8
  %cmp1777 = icmp eq i64 %422, 0
  br i1 %cmp1777, label %cond.true.1779, label %cond.false.1780

cond.true.1779:                                   ; preds = %cond.false.1776
  br i1 false, label %cond.true.1871, label %lor.lhs.false.1854

cond.false.1780:                                  ; preds = %cond.false.1776
  %423 = load i32, i32* %buf_magnification, align 4
  %cmp1781 = icmp slt i32 %423, 0
  br i1 %cmp1781, label %cond.true.1783, label %cond.false.1824

cond.true.1783:                                   ; preds = %cond.false.1780
  %424 = load i32, i32* %buf_magnification, align 4
  %conv1784 = sext i32 %424 to i64
  %425 = load i64, i64* %outbufsize, align 8
  %mul1785 = mul nsw i64 0, %425
  %426 = load i32, i32* %buf_magnification, align 4
  %conv1786 = sext i32 %426 to i64
  %add1787 = add nsw i64 %mul1785, %conv1786
  %mul1788 = mul nsw i64 0, %add1787
  %sub1789 = sub nsw i64 %mul1788, 1
  %cmp1790 = icmp slt i64 %sub1789, 0
  br i1 %cmp1790, label %cond.true.1792, label %cond.false.1813

cond.true.1792:                                   ; preds = %cond.true.1783
  %427 = load i64, i64* %outbufsize, align 8
  %mul1793 = mul nsw i64 0, %427
  %428 = load i32, i32* %buf_magnification, align 4
  %conv1794 = sext i32 %428 to i64
  %add1795 = add nsw i64 %mul1793, %conv1794
  %mul1796 = mul nsw i64 0, %add1795
  %add1797 = add nsw i64 %mul1796, 0
  %neg1798 = xor i64 %add1797, -1
  %cmp1799 = icmp eq i64 %neg1798, -1
  %conv1800 = zext i1 %cmp1799 to i32
  %sub1801 = sub nsw i32 0, %conv1800
  %conv1802 = sext i32 %sub1801 to i64
  %429 = load i64, i64* %outbufsize, align 8
  %mul1803 = mul nsw i64 0, %429
  %430 = load i32, i32* %buf_magnification, align 4
  %conv1804 = sext i32 %430 to i64
  %add1805 = add nsw i64 %mul1803, %conv1804
  %mul1806 = mul nsw i64 0, %add1805
  %add1807 = add nsw i64 %mul1806, 1
  %shl1808 = shl i64 %add1807, 62
  %sub1809 = sub nsw i64 %shl1808, 1
  %mul1810 = mul nsw i64 %sub1809, 2
  %add1811 = add nsw i64 %mul1810, 1
  %sub1812 = sub nsw i64 %conv1802, %add1811
  br label %cond.end.1819

cond.false.1813:                                  ; preds = %cond.true.1783
  %431 = load i64, i64* %outbufsize, align 8
  %mul1814 = mul nsw i64 0, %431
  %432 = load i32, i32* %buf_magnification, align 4
  %conv1815 = sext i32 %432 to i64
  %add1816 = add nsw i64 %mul1814, %conv1815
  %mul1817 = mul nsw i64 0, %add1816
  %add1818 = add nsw i64 %mul1817, 0
  br label %cond.end.1819

cond.end.1819:                                    ; preds = %cond.false.1813, %cond.true.1792
  %cond1820 = phi i64 [ %sub1812, %cond.true.1792 ], [ %add1818, %cond.false.1813 ]
  %433 = load i64, i64* %outbufsize, align 8
  %div1821 = sdiv i64 %cond1820, %433
  %cmp1822 = icmp slt i64 %conv1784, %div1821
  br i1 %cmp1822, label %cond.true.1871, label %lor.lhs.false.1854

cond.false.1824:                                  ; preds = %cond.false.1780
  %434 = load i64, i64* %outbufsize, align 8
  %mul1825 = mul nsw i64 0, %434
  %435 = load i32, i32* %buf_magnification, align 4
  %conv1826 = sext i32 %435 to i64
  %add1827 = add nsw i64 %mul1825, %conv1826
  %mul1828 = mul nsw i64 0, %add1827
  %sub1829 = sub nsw i64 %mul1828, 1
  %cmp1830 = icmp slt i64 %sub1829, 0
  br i1 %cmp1830, label %cond.true.1832, label %cond.false.1842

cond.true.1832:                                   ; preds = %cond.false.1824
  %436 = load i64, i64* %outbufsize, align 8
  %mul1833 = mul nsw i64 0, %436
  %437 = load i32, i32* %buf_magnification, align 4
  %conv1834 = sext i32 %437 to i64
  %add1835 = add nsw i64 %mul1833, %conv1834
  %mul1836 = mul nsw i64 0, %add1835
  %add1837 = add nsw i64 %mul1836, 1
  %shl1838 = shl i64 %add1837, 62
  %sub1839 = sub nsw i64 %shl1838, 1
  %mul1840 = mul nsw i64 %sub1839, 2
  %add1841 = add nsw i64 %mul1840, 1
  br label %cond.end.1848

cond.false.1842:                                  ; preds = %cond.false.1824
  %438 = load i64, i64* %outbufsize, align 8
  %mul1843 = mul nsw i64 0, %438
  %439 = load i32, i32* %buf_magnification, align 4
  %conv1844 = sext i32 %439 to i64
  %add1845 = add nsw i64 %mul1843, %conv1844
  %mul1846 = mul nsw i64 0, %add1845
  %sub1847 = sub nsw i64 %mul1846, 1
  br label %cond.end.1848

cond.end.1848:                                    ; preds = %cond.false.1842, %cond.true.1832
  %cond1849 = phi i64 [ %add1841, %cond.true.1832 ], [ %sub1847, %cond.false.1842 ]
  %440 = load i64, i64* %outbufsize, align 8
  %div1850 = sdiv i64 %cond1849, %440
  %441 = load i32, i32* %buf_magnification, align 4
  %conv1851 = sext i32 %441 to i64
  %cmp1852 = icmp slt i64 %div1850, %conv1851
  br i1 %cmp1852, label %cond.true.1871, label %lor.lhs.false.1854

lor.lhs.false.1854:                               ; preds = %cond.end.1848, %cond.end.1819, %cond.true.1779, %cond.end.1770, %cond.true.1734, %cond.end.1726
  %442 = load i32, i32* %buf_magnification, align 4
  %conv1855 = sext i32 %442 to i64
  %443 = load i64, i64* %outbufsize, align 8
  %mul1856 = mul nsw i64 %conv1855, %443
  %mul1857 = mul nsw i64 0, %mul1856
  %sub1858 = sub nsw i64 %mul1857, 1
  %cmp1859 = icmp slt i64 %sub1858, 0
  br i1 %cmp1859, label %land.lhs.true.1861, label %lor.lhs.false.1866

land.lhs.true.1861:                               ; preds = %lor.lhs.false.1854
  %444 = load i32, i32* %buf_magnification, align 4
  %conv1862 = sext i32 %444 to i64
  %445 = load i64, i64* %outbufsize, align 8
  %mul1863 = mul nsw i64 %conv1862, %445
  %cmp1864 = icmp slt i64 %mul1863, -2147483648
  br i1 %cmp1864, label %cond.true.1871, label %lor.lhs.false.1866

lor.lhs.false.1866:                               ; preds = %land.lhs.true.1861, %lor.lhs.false.1854
  %446 = load i32, i32* %buf_magnification, align 4
  %conv1867 = sext i32 %446 to i64
  %447 = load i64, i64* %outbufsize, align 8
  %mul1868 = mul nsw i64 %conv1867, %447
  %cmp1869 = icmp slt i64 2147483647, %mul1868
  br i1 %cmp1869, label %cond.true.1871, label %cond.false.1887

cond.true.1871:                                   ; preds = %lor.lhs.false.1866, %land.lhs.true.1861, %cond.end.1848, %cond.end.1819, %cond.true.1779, %cond.end.1770, %cond.true.1734, %cond.end.1726, %land.lhs.true.1692, %land.lhs.true.1686
  %448 = load i32, i32* %buf_magnification, align 4
  %449 = load i64, i64* %outbufsize, align 8
  %conv1872 = trunc i64 %449 to i32
  %mul1873 = mul i32 %448, %conv1872
  %cmp1874 = icmp ule i32 %mul1873, 2147483647
  br i1 %cmp1874, label %cond.true.1876, label %cond.false.1879

cond.true.1876:                                   ; preds = %cond.true.1871
  %450 = load i32, i32* %buf_magnification, align 4
  %451 = load i64, i64* %outbufsize, align 8
  %conv1877 = trunc i64 %451 to i32
  %mul1878 = mul i32 %450, %conv1877
  br label %cond.end.1884

cond.false.1879:                                  ; preds = %cond.true.1871
  %452 = load i32, i32* %buf_magnification, align 4
  %453 = load i64, i64* %outbufsize, align 8
  %conv1880 = trunc i64 %453 to i32
  %mul1881 = mul i32 %452, %conv1880
  %sub1882 = sub i32 %mul1881, -2147483648
  %add1883 = add nsw i32 %sub1882, -2147483648
  br label %cond.end.1884

cond.end.1884:                                    ; preds = %cond.false.1879, %cond.true.1876
  %cond1885 = phi i32 [ %mul1878, %cond.true.1876 ], [ %add1883, %cond.false.1879 ]
  %conv1886 = sext i32 %cond1885 to i64
  store i64 %conv1886, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.1887:                                  ; preds = %lor.lhs.false.1866
  %454 = load i32, i32* %buf_magnification, align 4
  %455 = load i64, i64* %outbufsize, align 8
  %conv1888 = trunc i64 %455 to i32
  %mul1889 = mul i32 %454, %conv1888
  %cmp1890 = icmp ule i32 %mul1889, 2147483647
  br i1 %cmp1890, label %cond.true.1892, label %cond.false.1895

cond.true.1892:                                   ; preds = %cond.false.1887
  %456 = load i32, i32* %buf_magnification, align 4
  %457 = load i64, i64* %outbufsize, align 8
  %conv1893 = trunc i64 %457 to i32
  %mul1894 = mul i32 %456, %conv1893
  br label %cond.end.1900

cond.false.1895:                                  ; preds = %cond.false.1887
  %458 = load i32, i32* %buf_magnification, align 4
  %459 = load i64, i64* %outbufsize, align 8
  %conv1896 = trunc i64 %459 to i32
  %mul1897 = mul i32 %458, %conv1896
  %sub1898 = sub i32 %mul1897, -2147483648
  %add1899 = add nsw i32 %sub1898, -2147483648
  br label %cond.end.1900

cond.end.1900:                                    ; preds = %cond.false.1895, %cond.true.1892
  %cond1901 = phi i32 [ %mul1894, %cond.true.1892 ], [ %add1899, %cond.false.1895 ]
  %conv1902 = sext i32 %cond1901 to i64
  store i64 %conv1902, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

cond.false.1903:                                  ; preds = %cond.false.1381
  br i1 true, label %cond.true.1904, label %cond.false.2423

cond.true.1904:                                   ; preds = %cond.false.1903
  br i1 false, label %cond.true.1905, label %cond.false.2166

cond.true.1905:                                   ; preds = %cond.true.1904
  %460 = load i64, i64* %outbufsize, align 8
  %mul1906 = mul nsw i64 0, %460
  %461 = load i32, i32* %buf_magnification, align 4
  %conv1907 = sext i32 %461 to i64
  %add1908 = add nsw i64 %mul1906, %conv1907
  %mul1909 = mul nsw i64 0, %add1908
  %sub1910 = sub nsw i64 %mul1909, 1
  %cmp1911 = icmp slt i64 %sub1910, 0
  br i1 %cmp1911, label %cond.true.1913, label %cond.false.1934

cond.true.1913:                                   ; preds = %cond.true.1905
  %462 = load i64, i64* %outbufsize, align 8
  %mul1914 = mul nsw i64 0, %462
  %463 = load i32, i32* %buf_magnification, align 4
  %conv1915 = sext i32 %463 to i64
  %add1916 = add nsw i64 %mul1914, %conv1915
  %mul1917 = mul nsw i64 0, %add1916
  %add1918 = add nsw i64 %mul1917, 0
  %neg1919 = xor i64 %add1918, -1
  %cmp1920 = icmp eq i64 %neg1919, -1
  %conv1921 = zext i1 %cmp1920 to i32
  %sub1922 = sub nsw i32 0, %conv1921
  %conv1923 = sext i32 %sub1922 to i64
  %464 = load i64, i64* %outbufsize, align 8
  %mul1924 = mul nsw i64 0, %464
  %465 = load i32, i32* %buf_magnification, align 4
  %conv1925 = sext i32 %465 to i64
  %add1926 = add nsw i64 %mul1924, %conv1925
  %mul1927 = mul nsw i64 0, %add1926
  %add1928 = add nsw i64 %mul1927, 1
  %shl1929 = shl i64 %add1928, 62
  %sub1930 = sub nsw i64 %shl1929, 1
  %mul1931 = mul nsw i64 %sub1930, 2
  %add1932 = add nsw i64 %mul1931, 1
  %sub1933 = sub nsw i64 %conv1923, %add1932
  br label %cond.end.1940

cond.false.1934:                                  ; preds = %cond.true.1905
  %466 = load i64, i64* %outbufsize, align 8
  %mul1935 = mul nsw i64 0, %466
  %467 = load i32, i32* %buf_magnification, align 4
  %conv1936 = sext i32 %467 to i64
  %add1937 = add nsw i64 %mul1935, %conv1936
  %mul1938 = mul nsw i64 0, %add1937
  %add1939 = add nsw i64 %mul1938, 0
  br label %cond.end.1940

cond.end.1940:                                    ; preds = %cond.false.1934, %cond.true.1913
  %cond1941 = phi i64 [ %sub1933, %cond.true.1913 ], [ %add1939, %cond.false.1934 ]
  %cmp1942 = icmp eq i64 %cond1941, 0
  br i1 %cmp1942, label %land.lhs.true.1944, label %lor.lhs.false.1958

land.lhs.true.1944:                               ; preds = %cond.end.1940
  %468 = load i32, i32* %buf_magnification, align 4
  %conv1945 = sext i32 %468 to i64
  %cmp1946 = icmp slt i64 %conv1945, 0
  br i1 %cmp1946, label %land.lhs.true.1948, label %lor.lhs.false.1951

land.lhs.true.1948:                               ; preds = %land.lhs.true.1944
  %469 = load i64, i64* %outbufsize, align 8
  %cmp1949 = icmp slt i64 0, %469
  br i1 %cmp1949, label %cond.true.2136, label %lor.lhs.false.1951

lor.lhs.false.1951:                               ; preds = %land.lhs.true.1948, %land.lhs.true.1944
  %470 = load i64, i64* %outbufsize, align 8
  %cmp1952 = icmp slt i64 %470, 0
  br i1 %cmp1952, label %land.lhs.true.1954, label %lor.lhs.false.1958

land.lhs.true.1954:                               ; preds = %lor.lhs.false.1951
  %471 = load i32, i32* %buf_magnification, align 4
  %conv1955 = sext i32 %471 to i64
  %cmp1956 = icmp slt i64 0, %conv1955
  br i1 %cmp1956, label %cond.true.2136, label %lor.lhs.false.1958

lor.lhs.false.1958:                               ; preds = %land.lhs.true.1954, %lor.lhs.false.1951, %cond.end.1940
  %472 = load i64, i64* %outbufsize, align 8
  %cmp1959 = icmp slt i64 %472, 0
  br i1 %cmp1959, label %cond.true.1961, label %cond.false.2040

cond.true.1961:                                   ; preds = %lor.lhs.false.1958
  %473 = load i32, i32* %buf_magnification, align 4
  %conv1962 = sext i32 %473 to i64
  %cmp1963 = icmp slt i64 %conv1962, 0
  br i1 %cmp1963, label %cond.true.1965, label %cond.false.1995

cond.true.1965:                                   ; preds = %cond.true.1961
  %474 = load i32, i32* %buf_magnification, align 4
  %conv1966 = sext i32 %474 to i64
  %475 = load i64, i64* %outbufsize, align 8
  %mul1967 = mul nsw i64 0, %475
  %476 = load i32, i32* %buf_magnification, align 4
  %conv1968 = sext i32 %476 to i64
  %add1969 = add nsw i64 %mul1967, %conv1968
  %mul1970 = mul nsw i64 0, %add1969
  %sub1971 = sub nsw i64 %mul1970, 1
  %cmp1972 = icmp slt i64 %sub1971, 0
  br i1 %cmp1972, label %cond.true.1974, label %cond.false.1984

cond.true.1974:                                   ; preds = %cond.true.1965
  %477 = load i64, i64* %outbufsize, align 8
  %mul1975 = mul nsw i64 0, %477
  %478 = load i32, i32* %buf_magnification, align 4
  %conv1976 = sext i32 %478 to i64
  %add1977 = add nsw i64 %mul1975, %conv1976
  %mul1978 = mul nsw i64 0, %add1977
  %add1979 = add nsw i64 %mul1978, 1
  %shl1980 = shl i64 %add1979, 62
  %sub1981 = sub nsw i64 %shl1980, 1
  %mul1982 = mul nsw i64 %sub1981, 2
  %add1983 = add nsw i64 %mul1982, 1
  br label %cond.end.1990

cond.false.1984:                                  ; preds = %cond.true.1965
  %479 = load i64, i64* %outbufsize, align 8
  %mul1985 = mul nsw i64 0, %479
  %480 = load i32, i32* %buf_magnification, align 4
  %conv1986 = sext i32 %480 to i64
  %add1987 = add nsw i64 %mul1985, %conv1986
  %mul1988 = mul nsw i64 0, %add1987
  %sub1989 = sub nsw i64 %mul1988, 1
  br label %cond.end.1990

cond.end.1990:                                    ; preds = %cond.false.1984, %cond.true.1974
  %cond1991 = phi i64 [ %add1983, %cond.true.1974 ], [ %sub1989, %cond.false.1984 ]
  %481 = load i64, i64* %outbufsize, align 8
  %div1992 = sdiv i64 %cond1991, %481
  %cmp1993 = icmp slt i64 %conv1966, %div1992
  br i1 %cmp1993, label %cond.true.2136, label %lor.lhs.false.2119

cond.false.1995:                                  ; preds = %cond.true.1961
  %482 = load i64, i64* %outbufsize, align 8
  %cmp1996 = icmp eq i64 %482, -1
  br i1 %cmp1996, label %cond.true.1998, label %cond.false.1999

cond.true.1998:                                   ; preds = %cond.false.1995
  br i1 false, label %cond.true.2136, label %lor.lhs.false.2119

cond.false.1999:                                  ; preds = %cond.false.1995
  %483 = load i64, i64* %outbufsize, align 8
  %mul2000 = mul nsw i64 0, %483
  %484 = load i32, i32* %buf_magnification, align 4
  %conv2001 = sext i32 %484 to i64
  %add2002 = add nsw i64 %mul2000, %conv2001
  %mul2003 = mul nsw i64 0, %add2002
  %sub2004 = sub nsw i64 %mul2003, 1
  %cmp2005 = icmp slt i64 %sub2004, 0
  br i1 %cmp2005, label %cond.true.2007, label %cond.false.2028

cond.true.2007:                                   ; preds = %cond.false.1999
  %485 = load i64, i64* %outbufsize, align 8
  %mul2008 = mul nsw i64 0, %485
  %486 = load i32, i32* %buf_magnification, align 4
  %conv2009 = sext i32 %486 to i64
  %add2010 = add nsw i64 %mul2008, %conv2009
  %mul2011 = mul nsw i64 0, %add2010
  %add2012 = add nsw i64 %mul2011, 0
  %neg2013 = xor i64 %add2012, -1
  %cmp2014 = icmp eq i64 %neg2013, -1
  %conv2015 = zext i1 %cmp2014 to i32
  %sub2016 = sub nsw i32 0, %conv2015
  %conv2017 = sext i32 %sub2016 to i64
  %487 = load i64, i64* %outbufsize, align 8
  %mul2018 = mul nsw i64 0, %487
  %488 = load i32, i32* %buf_magnification, align 4
  %conv2019 = sext i32 %488 to i64
  %add2020 = add nsw i64 %mul2018, %conv2019
  %mul2021 = mul nsw i64 0, %add2020
  %add2022 = add nsw i64 %mul2021, 1
  %shl2023 = shl i64 %add2022, 62
  %sub2024 = sub nsw i64 %shl2023, 1
  %mul2025 = mul nsw i64 %sub2024, 2
  %add2026 = add nsw i64 %mul2025, 1
  %sub2027 = sub nsw i64 %conv2017, %add2026
  br label %cond.end.2034

cond.false.2028:                                  ; preds = %cond.false.1999
  %489 = load i64, i64* %outbufsize, align 8
  %mul2029 = mul nsw i64 0, %489
  %490 = load i32, i32* %buf_magnification, align 4
  %conv2030 = sext i32 %490 to i64
  %add2031 = add nsw i64 %mul2029, %conv2030
  %mul2032 = mul nsw i64 0, %add2031
  %add2033 = add nsw i64 %mul2032, 0
  br label %cond.end.2034

cond.end.2034:                                    ; preds = %cond.false.2028, %cond.true.2007
  %cond2035 = phi i64 [ %sub2027, %cond.true.2007 ], [ %add2033, %cond.false.2028 ]
  %491 = load i64, i64* %outbufsize, align 8
  %div2036 = sdiv i64 %cond2035, %491
  %492 = load i32, i32* %buf_magnification, align 4
  %conv2037 = sext i32 %492 to i64
  %cmp2038 = icmp slt i64 %div2036, %conv2037
  br i1 %cmp2038, label %cond.true.2136, label %lor.lhs.false.2119

cond.false.2040:                                  ; preds = %lor.lhs.false.1958
  %493 = load i64, i64* %outbufsize, align 8
  %cmp2041 = icmp eq i64 %493, 0
  br i1 %cmp2041, label %cond.true.2043, label %cond.false.2044

cond.true.2043:                                   ; preds = %cond.false.2040
  br i1 false, label %cond.true.2136, label %lor.lhs.false.2119

cond.false.2044:                                  ; preds = %cond.false.2040
  %494 = load i32, i32* %buf_magnification, align 4
  %conv2045 = sext i32 %494 to i64
  %cmp2046 = icmp slt i64 %conv2045, 0
  br i1 %cmp2046, label %cond.true.2048, label %cond.false.2089

cond.true.2048:                                   ; preds = %cond.false.2044
  %495 = load i32, i32* %buf_magnification, align 4
  %conv2049 = sext i32 %495 to i64
  %496 = load i64, i64* %outbufsize, align 8
  %mul2050 = mul nsw i64 0, %496
  %497 = load i32, i32* %buf_magnification, align 4
  %conv2051 = sext i32 %497 to i64
  %add2052 = add nsw i64 %mul2050, %conv2051
  %mul2053 = mul nsw i64 0, %add2052
  %sub2054 = sub nsw i64 %mul2053, 1
  %cmp2055 = icmp slt i64 %sub2054, 0
  br i1 %cmp2055, label %cond.true.2057, label %cond.false.2078

cond.true.2057:                                   ; preds = %cond.true.2048
  %498 = load i64, i64* %outbufsize, align 8
  %mul2058 = mul nsw i64 0, %498
  %499 = load i32, i32* %buf_magnification, align 4
  %conv2059 = sext i32 %499 to i64
  %add2060 = add nsw i64 %mul2058, %conv2059
  %mul2061 = mul nsw i64 0, %add2060
  %add2062 = add nsw i64 %mul2061, 0
  %neg2063 = xor i64 %add2062, -1
  %cmp2064 = icmp eq i64 %neg2063, -1
  %conv2065 = zext i1 %cmp2064 to i32
  %sub2066 = sub nsw i32 0, %conv2065
  %conv2067 = sext i32 %sub2066 to i64
  %500 = load i64, i64* %outbufsize, align 8
  %mul2068 = mul nsw i64 0, %500
  %501 = load i32, i32* %buf_magnification, align 4
  %conv2069 = sext i32 %501 to i64
  %add2070 = add nsw i64 %mul2068, %conv2069
  %mul2071 = mul nsw i64 0, %add2070
  %add2072 = add nsw i64 %mul2071, 1
  %shl2073 = shl i64 %add2072, 62
  %sub2074 = sub nsw i64 %shl2073, 1
  %mul2075 = mul nsw i64 %sub2074, 2
  %add2076 = add nsw i64 %mul2075, 1
  %sub2077 = sub nsw i64 %conv2067, %add2076
  br label %cond.end.2084

cond.false.2078:                                  ; preds = %cond.true.2048
  %502 = load i64, i64* %outbufsize, align 8
  %mul2079 = mul nsw i64 0, %502
  %503 = load i32, i32* %buf_magnification, align 4
  %conv2080 = sext i32 %503 to i64
  %add2081 = add nsw i64 %mul2079, %conv2080
  %mul2082 = mul nsw i64 0, %add2081
  %add2083 = add nsw i64 %mul2082, 0
  br label %cond.end.2084

cond.end.2084:                                    ; preds = %cond.false.2078, %cond.true.2057
  %cond2085 = phi i64 [ %sub2077, %cond.true.2057 ], [ %add2083, %cond.false.2078 ]
  %504 = load i64, i64* %outbufsize, align 8
  %div2086 = sdiv i64 %cond2085, %504
  %cmp2087 = icmp slt i64 %conv2049, %div2086
  br i1 %cmp2087, label %cond.true.2136, label %lor.lhs.false.2119

cond.false.2089:                                  ; preds = %cond.false.2044
  %505 = load i64, i64* %outbufsize, align 8
  %mul2090 = mul nsw i64 0, %505
  %506 = load i32, i32* %buf_magnification, align 4
  %conv2091 = sext i32 %506 to i64
  %add2092 = add nsw i64 %mul2090, %conv2091
  %mul2093 = mul nsw i64 0, %add2092
  %sub2094 = sub nsw i64 %mul2093, 1
  %cmp2095 = icmp slt i64 %sub2094, 0
  br i1 %cmp2095, label %cond.true.2097, label %cond.false.2107

cond.true.2097:                                   ; preds = %cond.false.2089
  %507 = load i64, i64* %outbufsize, align 8
  %mul2098 = mul nsw i64 0, %507
  %508 = load i32, i32* %buf_magnification, align 4
  %conv2099 = sext i32 %508 to i64
  %add2100 = add nsw i64 %mul2098, %conv2099
  %mul2101 = mul nsw i64 0, %add2100
  %add2102 = add nsw i64 %mul2101, 1
  %shl2103 = shl i64 %add2102, 62
  %sub2104 = sub nsw i64 %shl2103, 1
  %mul2105 = mul nsw i64 %sub2104, 2
  %add2106 = add nsw i64 %mul2105, 1
  br label %cond.end.2113

cond.false.2107:                                  ; preds = %cond.false.2089
  %509 = load i64, i64* %outbufsize, align 8
  %mul2108 = mul nsw i64 0, %509
  %510 = load i32, i32* %buf_magnification, align 4
  %conv2109 = sext i32 %510 to i64
  %add2110 = add nsw i64 %mul2108, %conv2109
  %mul2111 = mul nsw i64 0, %add2110
  %sub2112 = sub nsw i64 %mul2111, 1
  br label %cond.end.2113

cond.end.2113:                                    ; preds = %cond.false.2107, %cond.true.2097
  %cond2114 = phi i64 [ %add2106, %cond.true.2097 ], [ %sub2112, %cond.false.2107 ]
  %511 = load i64, i64* %outbufsize, align 8
  %div2115 = sdiv i64 %cond2114, %511
  %512 = load i32, i32* %buf_magnification, align 4
  %conv2116 = sext i32 %512 to i64
  %cmp2117 = icmp slt i64 %div2115, %conv2116
  br i1 %cmp2117, label %cond.true.2136, label %lor.lhs.false.2119

lor.lhs.false.2119:                               ; preds = %cond.end.2113, %cond.end.2084, %cond.true.2043, %cond.end.2034, %cond.true.1998, %cond.end.1990
  %513 = load i32, i32* %buf_magnification, align 4
  %conv2120 = sext i32 %513 to i64
  %514 = load i64, i64* %outbufsize, align 8
  %mul2121 = mul nsw i64 %conv2120, %514
  %mul2122 = mul nsw i64 0, %mul2121
  %sub2123 = sub nsw i64 %mul2122, 1
  %cmp2124 = icmp slt i64 %sub2123, 0
  br i1 %cmp2124, label %land.lhs.true.2126, label %lor.lhs.false.2131

land.lhs.true.2126:                               ; preds = %lor.lhs.false.2119
  %515 = load i32, i32* %buf_magnification, align 4
  %conv2127 = sext i32 %515 to i64
  %516 = load i64, i64* %outbufsize, align 8
  %mul2128 = mul nsw i64 %conv2127, %516
  %cmp2129 = icmp slt i64 %mul2128, -9223372036854775808
  br i1 %cmp2129, label %cond.true.2136, label %lor.lhs.false.2131

lor.lhs.false.2131:                               ; preds = %land.lhs.true.2126, %lor.lhs.false.2119
  %517 = load i32, i32* %buf_magnification, align 4
  %conv2132 = sext i32 %517 to i64
  %518 = load i64, i64* %outbufsize, align 8
  %mul2133 = mul nsw i64 %conv2132, %518
  %cmp2134 = icmp slt i64 9223372036854775807, %mul2133
  br i1 %cmp2134, label %cond.true.2136, label %cond.false.2151

cond.true.2136:                                   ; preds = %lor.lhs.false.2131, %land.lhs.true.2126, %cond.end.2113, %cond.end.2084, %cond.true.2043, %cond.end.2034, %cond.true.1998, %cond.end.1990, %land.lhs.true.1954, %land.lhs.true.1948
  %519 = load i32, i32* %buf_magnification, align 4
  %conv2137 = sext i32 %519 to i64
  %520 = load i64, i64* %outbufsize, align 8
  %mul2138 = mul i64 %conv2137, %520
  %cmp2139 = icmp ule i64 %mul2138, 9223372036854775807
  br i1 %cmp2139, label %cond.true.2141, label %cond.false.2144

cond.true.2141:                                   ; preds = %cond.true.2136
  %521 = load i32, i32* %buf_magnification, align 4
  %conv2142 = sext i32 %521 to i64
  %522 = load i64, i64* %outbufsize, align 8
  %mul2143 = mul i64 %conv2142, %522
  br label %cond.end.2149

cond.false.2144:                                  ; preds = %cond.true.2136
  %523 = load i32, i32* %buf_magnification, align 4
  %conv2145 = sext i32 %523 to i64
  %524 = load i64, i64* %outbufsize, align 8
  %mul2146 = mul i64 %conv2145, %524
  %sub2147 = sub i64 %mul2146, -9223372036854775808
  %add2148 = add nsw i64 %sub2147, -9223372036854775808
  br label %cond.end.2149

cond.end.2149:                                    ; preds = %cond.false.2144, %cond.true.2141
  %cond2150 = phi i64 [ %mul2143, %cond.true.2141 ], [ %add2148, %cond.false.2144 ]
  store i64 %cond2150, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.2151:                                  ; preds = %lor.lhs.false.2131
  %525 = load i32, i32* %buf_magnification, align 4
  %conv2152 = sext i32 %525 to i64
  %526 = load i64, i64* %outbufsize, align 8
  %mul2153 = mul i64 %conv2152, %526
  %cmp2154 = icmp ule i64 %mul2153, 9223372036854775807
  br i1 %cmp2154, label %cond.true.2156, label %cond.false.2159

cond.true.2156:                                   ; preds = %cond.false.2151
  %527 = load i32, i32* %buf_magnification, align 4
  %conv2157 = sext i32 %527 to i64
  %528 = load i64, i64* %outbufsize, align 8
  %mul2158 = mul i64 %conv2157, %528
  br label %cond.end.2164

cond.false.2159:                                  ; preds = %cond.false.2151
  %529 = load i32, i32* %buf_magnification, align 4
  %conv2160 = sext i32 %529 to i64
  %530 = load i64, i64* %outbufsize, align 8
  %mul2161 = mul i64 %conv2160, %530
  %sub2162 = sub i64 %mul2161, -9223372036854775808
  %add2163 = add nsw i64 %sub2162, -9223372036854775808
  br label %cond.end.2164

cond.end.2164:                                    ; preds = %cond.false.2159, %cond.true.2156
  %cond2165 = phi i64 [ %mul2158, %cond.true.2156 ], [ %add2163, %cond.false.2159 ]
  store i64 %cond2165, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

cond.false.2166:                                  ; preds = %cond.true.1904
  %531 = load i64, i64* %outbufsize, align 8
  %mul2167 = mul nsw i64 0, %531
  %532 = load i32, i32* %buf_magnification, align 4
  %conv2168 = sext i32 %532 to i64
  %add2169 = add nsw i64 %mul2167, %conv2168
  %mul2170 = mul nsw i64 0, %add2169
  %sub2171 = sub nsw i64 %mul2170, 1
  %cmp2172 = icmp slt i64 %sub2171, 0
  br i1 %cmp2172, label %cond.true.2174, label %cond.false.2195

cond.true.2174:                                   ; preds = %cond.false.2166
  %533 = load i64, i64* %outbufsize, align 8
  %mul2175 = mul nsw i64 0, %533
  %534 = load i32, i32* %buf_magnification, align 4
  %conv2176 = sext i32 %534 to i64
  %add2177 = add nsw i64 %mul2175, %conv2176
  %mul2178 = mul nsw i64 0, %add2177
  %add2179 = add nsw i64 %mul2178, 0
  %neg2180 = xor i64 %add2179, -1
  %cmp2181 = icmp eq i64 %neg2180, -1
  %conv2182 = zext i1 %cmp2181 to i32
  %sub2183 = sub nsw i32 0, %conv2182
  %conv2184 = sext i32 %sub2183 to i64
  %535 = load i64, i64* %outbufsize, align 8
  %mul2185 = mul nsw i64 0, %535
  %536 = load i32, i32* %buf_magnification, align 4
  %conv2186 = sext i32 %536 to i64
  %add2187 = add nsw i64 %mul2185, %conv2186
  %mul2188 = mul nsw i64 0, %add2187
  %add2189 = add nsw i64 %mul2188, 1
  %shl2190 = shl i64 %add2189, 62
  %sub2191 = sub nsw i64 %shl2190, 1
  %mul2192 = mul nsw i64 %sub2191, 2
  %add2193 = add nsw i64 %mul2192, 1
  %sub2194 = sub nsw i64 %conv2184, %add2193
  br label %cond.end.2201

cond.false.2195:                                  ; preds = %cond.false.2166
  %537 = load i64, i64* %outbufsize, align 8
  %mul2196 = mul nsw i64 0, %537
  %538 = load i32, i32* %buf_magnification, align 4
  %conv2197 = sext i32 %538 to i64
  %add2198 = add nsw i64 %mul2196, %conv2197
  %mul2199 = mul nsw i64 0, %add2198
  %add2200 = add nsw i64 %mul2199, 0
  br label %cond.end.2201

cond.end.2201:                                    ; preds = %cond.false.2195, %cond.true.2174
  %cond2202 = phi i64 [ %sub2194, %cond.true.2174 ], [ %add2200, %cond.false.2195 ]
  %cmp2203 = icmp eq i64 %cond2202, 0
  br i1 %cmp2203, label %land.lhs.true.2205, label %lor.lhs.false.2217

land.lhs.true.2205:                               ; preds = %cond.end.2201
  %539 = load i32, i32* %buf_magnification, align 4
  %cmp2206 = icmp slt i32 %539, 0
  br i1 %cmp2206, label %land.lhs.true.2208, label %lor.lhs.false.2211

land.lhs.true.2208:                               ; preds = %land.lhs.true.2205
  %540 = load i64, i64* %outbufsize, align 8
  %cmp2209 = icmp slt i64 0, %540
  br i1 %cmp2209, label %cond.true.2393, label %lor.lhs.false.2211

lor.lhs.false.2211:                               ; preds = %land.lhs.true.2208, %land.lhs.true.2205
  %541 = load i64, i64* %outbufsize, align 8
  %cmp2212 = icmp slt i64 %541, 0
  br i1 %cmp2212, label %land.lhs.true.2214, label %lor.lhs.false.2217

land.lhs.true.2214:                               ; preds = %lor.lhs.false.2211
  %542 = load i32, i32* %buf_magnification, align 4
  %cmp2215 = icmp slt i32 0, %542
  br i1 %cmp2215, label %cond.true.2393, label %lor.lhs.false.2217

lor.lhs.false.2217:                               ; preds = %land.lhs.true.2214, %lor.lhs.false.2211, %cond.end.2201
  %543 = load i64, i64* %outbufsize, align 8
  %cmp2218 = icmp slt i64 %543, 0
  br i1 %cmp2218, label %cond.true.2220, label %cond.false.2298

cond.true.2220:                                   ; preds = %lor.lhs.false.2217
  %544 = load i32, i32* %buf_magnification, align 4
  %cmp2221 = icmp slt i32 %544, 0
  br i1 %cmp2221, label %cond.true.2223, label %cond.false.2253

cond.true.2223:                                   ; preds = %cond.true.2220
  %545 = load i32, i32* %buf_magnification, align 4
  %conv2224 = sext i32 %545 to i64
  %546 = load i64, i64* %outbufsize, align 8
  %mul2225 = mul nsw i64 0, %546
  %547 = load i32, i32* %buf_magnification, align 4
  %conv2226 = sext i32 %547 to i64
  %add2227 = add nsw i64 %mul2225, %conv2226
  %mul2228 = mul nsw i64 0, %add2227
  %sub2229 = sub nsw i64 %mul2228, 1
  %cmp2230 = icmp slt i64 %sub2229, 0
  br i1 %cmp2230, label %cond.true.2232, label %cond.false.2242

cond.true.2232:                                   ; preds = %cond.true.2223
  %548 = load i64, i64* %outbufsize, align 8
  %mul2233 = mul nsw i64 0, %548
  %549 = load i32, i32* %buf_magnification, align 4
  %conv2234 = sext i32 %549 to i64
  %add2235 = add nsw i64 %mul2233, %conv2234
  %mul2236 = mul nsw i64 0, %add2235
  %add2237 = add nsw i64 %mul2236, 1
  %shl2238 = shl i64 %add2237, 62
  %sub2239 = sub nsw i64 %shl2238, 1
  %mul2240 = mul nsw i64 %sub2239, 2
  %add2241 = add nsw i64 %mul2240, 1
  br label %cond.end.2248

cond.false.2242:                                  ; preds = %cond.true.2223
  %550 = load i64, i64* %outbufsize, align 8
  %mul2243 = mul nsw i64 0, %550
  %551 = load i32, i32* %buf_magnification, align 4
  %conv2244 = sext i32 %551 to i64
  %add2245 = add nsw i64 %mul2243, %conv2244
  %mul2246 = mul nsw i64 0, %add2245
  %sub2247 = sub nsw i64 %mul2246, 1
  br label %cond.end.2248

cond.end.2248:                                    ; preds = %cond.false.2242, %cond.true.2232
  %cond2249 = phi i64 [ %add2241, %cond.true.2232 ], [ %sub2247, %cond.false.2242 ]
  %552 = load i64, i64* %outbufsize, align 8
  %div2250 = sdiv i64 %cond2249, %552
  %cmp2251 = icmp slt i64 %conv2224, %div2250
  br i1 %cmp2251, label %cond.true.2393, label %lor.lhs.false.2376

cond.false.2253:                                  ; preds = %cond.true.2220
  %553 = load i64, i64* %outbufsize, align 8
  %cmp2254 = icmp eq i64 %553, -1
  br i1 %cmp2254, label %cond.true.2256, label %cond.false.2257

cond.true.2256:                                   ; preds = %cond.false.2253
  br i1 false, label %cond.true.2393, label %lor.lhs.false.2376

cond.false.2257:                                  ; preds = %cond.false.2253
  %554 = load i64, i64* %outbufsize, align 8
  %mul2258 = mul nsw i64 0, %554
  %555 = load i32, i32* %buf_magnification, align 4
  %conv2259 = sext i32 %555 to i64
  %add2260 = add nsw i64 %mul2258, %conv2259
  %mul2261 = mul nsw i64 0, %add2260
  %sub2262 = sub nsw i64 %mul2261, 1
  %cmp2263 = icmp slt i64 %sub2262, 0
  br i1 %cmp2263, label %cond.true.2265, label %cond.false.2286

cond.true.2265:                                   ; preds = %cond.false.2257
  %556 = load i64, i64* %outbufsize, align 8
  %mul2266 = mul nsw i64 0, %556
  %557 = load i32, i32* %buf_magnification, align 4
  %conv2267 = sext i32 %557 to i64
  %add2268 = add nsw i64 %mul2266, %conv2267
  %mul2269 = mul nsw i64 0, %add2268
  %add2270 = add nsw i64 %mul2269, 0
  %neg2271 = xor i64 %add2270, -1
  %cmp2272 = icmp eq i64 %neg2271, -1
  %conv2273 = zext i1 %cmp2272 to i32
  %sub2274 = sub nsw i32 0, %conv2273
  %conv2275 = sext i32 %sub2274 to i64
  %558 = load i64, i64* %outbufsize, align 8
  %mul2276 = mul nsw i64 0, %558
  %559 = load i32, i32* %buf_magnification, align 4
  %conv2277 = sext i32 %559 to i64
  %add2278 = add nsw i64 %mul2276, %conv2277
  %mul2279 = mul nsw i64 0, %add2278
  %add2280 = add nsw i64 %mul2279, 1
  %shl2281 = shl i64 %add2280, 62
  %sub2282 = sub nsw i64 %shl2281, 1
  %mul2283 = mul nsw i64 %sub2282, 2
  %add2284 = add nsw i64 %mul2283, 1
  %sub2285 = sub nsw i64 %conv2275, %add2284
  br label %cond.end.2292

cond.false.2286:                                  ; preds = %cond.false.2257
  %560 = load i64, i64* %outbufsize, align 8
  %mul2287 = mul nsw i64 0, %560
  %561 = load i32, i32* %buf_magnification, align 4
  %conv2288 = sext i32 %561 to i64
  %add2289 = add nsw i64 %mul2287, %conv2288
  %mul2290 = mul nsw i64 0, %add2289
  %add2291 = add nsw i64 %mul2290, 0
  br label %cond.end.2292

cond.end.2292:                                    ; preds = %cond.false.2286, %cond.true.2265
  %cond2293 = phi i64 [ %sub2285, %cond.true.2265 ], [ %add2291, %cond.false.2286 ]
  %562 = load i64, i64* %outbufsize, align 8
  %div2294 = sdiv i64 %cond2293, %562
  %563 = load i32, i32* %buf_magnification, align 4
  %conv2295 = sext i32 %563 to i64
  %cmp2296 = icmp slt i64 %div2294, %conv2295
  br i1 %cmp2296, label %cond.true.2393, label %lor.lhs.false.2376

cond.false.2298:                                  ; preds = %lor.lhs.false.2217
  %564 = load i64, i64* %outbufsize, align 8
  %cmp2299 = icmp eq i64 %564, 0
  br i1 %cmp2299, label %cond.true.2301, label %cond.false.2302

cond.true.2301:                                   ; preds = %cond.false.2298
  br i1 false, label %cond.true.2393, label %lor.lhs.false.2376

cond.false.2302:                                  ; preds = %cond.false.2298
  %565 = load i32, i32* %buf_magnification, align 4
  %cmp2303 = icmp slt i32 %565, 0
  br i1 %cmp2303, label %cond.true.2305, label %cond.false.2346

cond.true.2305:                                   ; preds = %cond.false.2302
  %566 = load i32, i32* %buf_magnification, align 4
  %conv2306 = sext i32 %566 to i64
  %567 = load i64, i64* %outbufsize, align 8
  %mul2307 = mul nsw i64 0, %567
  %568 = load i32, i32* %buf_magnification, align 4
  %conv2308 = sext i32 %568 to i64
  %add2309 = add nsw i64 %mul2307, %conv2308
  %mul2310 = mul nsw i64 0, %add2309
  %sub2311 = sub nsw i64 %mul2310, 1
  %cmp2312 = icmp slt i64 %sub2311, 0
  br i1 %cmp2312, label %cond.true.2314, label %cond.false.2335

cond.true.2314:                                   ; preds = %cond.true.2305
  %569 = load i64, i64* %outbufsize, align 8
  %mul2315 = mul nsw i64 0, %569
  %570 = load i32, i32* %buf_magnification, align 4
  %conv2316 = sext i32 %570 to i64
  %add2317 = add nsw i64 %mul2315, %conv2316
  %mul2318 = mul nsw i64 0, %add2317
  %add2319 = add nsw i64 %mul2318, 0
  %neg2320 = xor i64 %add2319, -1
  %cmp2321 = icmp eq i64 %neg2320, -1
  %conv2322 = zext i1 %cmp2321 to i32
  %sub2323 = sub nsw i32 0, %conv2322
  %conv2324 = sext i32 %sub2323 to i64
  %571 = load i64, i64* %outbufsize, align 8
  %mul2325 = mul nsw i64 0, %571
  %572 = load i32, i32* %buf_magnification, align 4
  %conv2326 = sext i32 %572 to i64
  %add2327 = add nsw i64 %mul2325, %conv2326
  %mul2328 = mul nsw i64 0, %add2327
  %add2329 = add nsw i64 %mul2328, 1
  %shl2330 = shl i64 %add2329, 62
  %sub2331 = sub nsw i64 %shl2330, 1
  %mul2332 = mul nsw i64 %sub2331, 2
  %add2333 = add nsw i64 %mul2332, 1
  %sub2334 = sub nsw i64 %conv2324, %add2333
  br label %cond.end.2341

cond.false.2335:                                  ; preds = %cond.true.2305
  %573 = load i64, i64* %outbufsize, align 8
  %mul2336 = mul nsw i64 0, %573
  %574 = load i32, i32* %buf_magnification, align 4
  %conv2337 = sext i32 %574 to i64
  %add2338 = add nsw i64 %mul2336, %conv2337
  %mul2339 = mul nsw i64 0, %add2338
  %add2340 = add nsw i64 %mul2339, 0
  br label %cond.end.2341

cond.end.2341:                                    ; preds = %cond.false.2335, %cond.true.2314
  %cond2342 = phi i64 [ %sub2334, %cond.true.2314 ], [ %add2340, %cond.false.2335 ]
  %575 = load i64, i64* %outbufsize, align 8
  %div2343 = sdiv i64 %cond2342, %575
  %cmp2344 = icmp slt i64 %conv2306, %div2343
  br i1 %cmp2344, label %cond.true.2393, label %lor.lhs.false.2376

cond.false.2346:                                  ; preds = %cond.false.2302
  %576 = load i64, i64* %outbufsize, align 8
  %mul2347 = mul nsw i64 0, %576
  %577 = load i32, i32* %buf_magnification, align 4
  %conv2348 = sext i32 %577 to i64
  %add2349 = add nsw i64 %mul2347, %conv2348
  %mul2350 = mul nsw i64 0, %add2349
  %sub2351 = sub nsw i64 %mul2350, 1
  %cmp2352 = icmp slt i64 %sub2351, 0
  br i1 %cmp2352, label %cond.true.2354, label %cond.false.2364

cond.true.2354:                                   ; preds = %cond.false.2346
  %578 = load i64, i64* %outbufsize, align 8
  %mul2355 = mul nsw i64 0, %578
  %579 = load i32, i32* %buf_magnification, align 4
  %conv2356 = sext i32 %579 to i64
  %add2357 = add nsw i64 %mul2355, %conv2356
  %mul2358 = mul nsw i64 0, %add2357
  %add2359 = add nsw i64 %mul2358, 1
  %shl2360 = shl i64 %add2359, 62
  %sub2361 = sub nsw i64 %shl2360, 1
  %mul2362 = mul nsw i64 %sub2361, 2
  %add2363 = add nsw i64 %mul2362, 1
  br label %cond.end.2370

cond.false.2364:                                  ; preds = %cond.false.2346
  %580 = load i64, i64* %outbufsize, align 8
  %mul2365 = mul nsw i64 0, %580
  %581 = load i32, i32* %buf_magnification, align 4
  %conv2366 = sext i32 %581 to i64
  %add2367 = add nsw i64 %mul2365, %conv2366
  %mul2368 = mul nsw i64 0, %add2367
  %sub2369 = sub nsw i64 %mul2368, 1
  br label %cond.end.2370

cond.end.2370:                                    ; preds = %cond.false.2364, %cond.true.2354
  %cond2371 = phi i64 [ %add2363, %cond.true.2354 ], [ %sub2369, %cond.false.2364 ]
  %582 = load i64, i64* %outbufsize, align 8
  %div2372 = sdiv i64 %cond2371, %582
  %583 = load i32, i32* %buf_magnification, align 4
  %conv2373 = sext i32 %583 to i64
  %cmp2374 = icmp slt i64 %div2372, %conv2373
  br i1 %cmp2374, label %cond.true.2393, label %lor.lhs.false.2376

lor.lhs.false.2376:                               ; preds = %cond.end.2370, %cond.end.2341, %cond.true.2301, %cond.end.2292, %cond.true.2256, %cond.end.2248
  %584 = load i32, i32* %buf_magnification, align 4
  %conv2377 = sext i32 %584 to i64
  %585 = load i64, i64* %outbufsize, align 8
  %mul2378 = mul nsw i64 %conv2377, %585
  %mul2379 = mul nsw i64 0, %mul2378
  %sub2380 = sub nsw i64 %mul2379, 1
  %cmp2381 = icmp slt i64 %sub2380, 0
  br i1 %cmp2381, label %land.lhs.true.2383, label %lor.lhs.false.2388

land.lhs.true.2383:                               ; preds = %lor.lhs.false.2376
  %586 = load i32, i32* %buf_magnification, align 4
  %conv2384 = sext i32 %586 to i64
  %587 = load i64, i64* %outbufsize, align 8
  %mul2385 = mul nsw i64 %conv2384, %587
  %cmp2386 = icmp slt i64 %mul2385, -9223372036854775808
  br i1 %cmp2386, label %cond.true.2393, label %lor.lhs.false.2388

lor.lhs.false.2388:                               ; preds = %land.lhs.true.2383, %lor.lhs.false.2376
  %588 = load i32, i32* %buf_magnification, align 4
  %conv2389 = sext i32 %588 to i64
  %589 = load i64, i64* %outbufsize, align 8
  %mul2390 = mul nsw i64 %conv2389, %589
  %cmp2391 = icmp slt i64 9223372036854775807, %mul2390
  br i1 %cmp2391, label %cond.true.2393, label %cond.false.2408

cond.true.2393:                                   ; preds = %lor.lhs.false.2388, %land.lhs.true.2383, %cond.end.2370, %cond.end.2341, %cond.true.2301, %cond.end.2292, %cond.true.2256, %cond.end.2248, %land.lhs.true.2214, %land.lhs.true.2208
  %590 = load i32, i32* %buf_magnification, align 4
  %conv2394 = sext i32 %590 to i64
  %591 = load i64, i64* %outbufsize, align 8
  %mul2395 = mul i64 %conv2394, %591
  %cmp2396 = icmp ule i64 %mul2395, 9223372036854775807
  br i1 %cmp2396, label %cond.true.2398, label %cond.false.2401

cond.true.2398:                                   ; preds = %cond.true.2393
  %592 = load i32, i32* %buf_magnification, align 4
  %conv2399 = sext i32 %592 to i64
  %593 = load i64, i64* %outbufsize, align 8
  %mul2400 = mul i64 %conv2399, %593
  br label %cond.end.2406

cond.false.2401:                                  ; preds = %cond.true.2393
  %594 = load i32, i32* %buf_magnification, align 4
  %conv2402 = sext i32 %594 to i64
  %595 = load i64, i64* %outbufsize, align 8
  %mul2403 = mul i64 %conv2402, %595
  %sub2404 = sub i64 %mul2403, -9223372036854775808
  %add2405 = add nsw i64 %sub2404, -9223372036854775808
  br label %cond.end.2406

cond.end.2406:                                    ; preds = %cond.false.2401, %cond.true.2398
  %cond2407 = phi i64 [ %mul2400, %cond.true.2398 ], [ %add2405, %cond.false.2401 ]
  store i64 %cond2407, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.2408:                                  ; preds = %lor.lhs.false.2388
  %596 = load i32, i32* %buf_magnification, align 4
  %conv2409 = sext i32 %596 to i64
  %597 = load i64, i64* %outbufsize, align 8
  %mul2410 = mul i64 %conv2409, %597
  %cmp2411 = icmp ule i64 %mul2410, 9223372036854775807
  br i1 %cmp2411, label %cond.true.2413, label %cond.false.2416

cond.true.2413:                                   ; preds = %cond.false.2408
  %598 = load i32, i32* %buf_magnification, align 4
  %conv2414 = sext i32 %598 to i64
  %599 = load i64, i64* %outbufsize, align 8
  %mul2415 = mul i64 %conv2414, %599
  br label %cond.end.2421

cond.false.2416:                                  ; preds = %cond.false.2408
  %600 = load i32, i32* %buf_magnification, align 4
  %conv2417 = sext i32 %600 to i64
  %601 = load i64, i64* %outbufsize, align 8
  %mul2418 = mul i64 %conv2417, %601
  %sub2419 = sub i64 %mul2418, -9223372036854775808
  %add2420 = add nsw i64 %sub2419, -9223372036854775808
  br label %cond.end.2421

cond.end.2421:                                    ; preds = %cond.false.2416, %cond.true.2413
  %cond2422 = phi i64 [ %mul2415, %cond.true.2413 ], [ %add2420, %cond.false.2416 ]
  store i64 %cond2422, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

cond.false.2423:                                  ; preds = %cond.false.1903
  br i1 false, label %cond.true.2424, label %cond.false.2685

cond.true.2424:                                   ; preds = %cond.false.2423
  %602 = load i64, i64* %outbufsize, align 8
  %mul2425 = mul nsw i64 0, %602
  %603 = load i32, i32* %buf_magnification, align 4
  %conv2426 = sext i32 %603 to i64
  %add2427 = add nsw i64 %mul2425, %conv2426
  %mul2428 = mul nsw i64 0, %add2427
  %sub2429 = sub nsw i64 %mul2428, 1
  %cmp2430 = icmp slt i64 %sub2429, 0
  br i1 %cmp2430, label %cond.true.2432, label %cond.false.2453

cond.true.2432:                                   ; preds = %cond.true.2424
  %604 = load i64, i64* %outbufsize, align 8
  %mul2433 = mul nsw i64 0, %604
  %605 = load i32, i32* %buf_magnification, align 4
  %conv2434 = sext i32 %605 to i64
  %add2435 = add nsw i64 %mul2433, %conv2434
  %mul2436 = mul nsw i64 0, %add2435
  %add2437 = add nsw i64 %mul2436, 0
  %neg2438 = xor i64 %add2437, -1
  %cmp2439 = icmp eq i64 %neg2438, -1
  %conv2440 = zext i1 %cmp2439 to i32
  %sub2441 = sub nsw i32 0, %conv2440
  %conv2442 = sext i32 %sub2441 to i64
  %606 = load i64, i64* %outbufsize, align 8
  %mul2443 = mul nsw i64 0, %606
  %607 = load i32, i32* %buf_magnification, align 4
  %conv2444 = sext i32 %607 to i64
  %add2445 = add nsw i64 %mul2443, %conv2444
  %mul2446 = mul nsw i64 0, %add2445
  %add2447 = add nsw i64 %mul2446, 1
  %shl2448 = shl i64 %add2447, 62
  %sub2449 = sub nsw i64 %shl2448, 1
  %mul2450 = mul nsw i64 %sub2449, 2
  %add2451 = add nsw i64 %mul2450, 1
  %sub2452 = sub nsw i64 %conv2442, %add2451
  br label %cond.end.2459

cond.false.2453:                                  ; preds = %cond.true.2424
  %608 = load i64, i64* %outbufsize, align 8
  %mul2454 = mul nsw i64 0, %608
  %609 = load i32, i32* %buf_magnification, align 4
  %conv2455 = sext i32 %609 to i64
  %add2456 = add nsw i64 %mul2454, %conv2455
  %mul2457 = mul nsw i64 0, %add2456
  %add2458 = add nsw i64 %mul2457, 0
  br label %cond.end.2459

cond.end.2459:                                    ; preds = %cond.false.2453, %cond.true.2432
  %cond2460 = phi i64 [ %sub2452, %cond.true.2432 ], [ %add2458, %cond.false.2453 ]
  %cmp2461 = icmp eq i64 %cond2460, 0
  br i1 %cmp2461, label %land.lhs.true.2463, label %lor.lhs.false.2477

land.lhs.true.2463:                               ; preds = %cond.end.2459
  %610 = load i32, i32* %buf_magnification, align 4
  %conv2464 = sext i32 %610 to i64
  %cmp2465 = icmp slt i64 %conv2464, 0
  br i1 %cmp2465, label %land.lhs.true.2467, label %lor.lhs.false.2470

land.lhs.true.2467:                               ; preds = %land.lhs.true.2463
  %611 = load i64, i64* %outbufsize, align 8
  %cmp2468 = icmp slt i64 0, %611
  br i1 %cmp2468, label %cond.true.2655, label %lor.lhs.false.2470

lor.lhs.false.2470:                               ; preds = %land.lhs.true.2467, %land.lhs.true.2463
  %612 = load i64, i64* %outbufsize, align 8
  %cmp2471 = icmp slt i64 %612, 0
  br i1 %cmp2471, label %land.lhs.true.2473, label %lor.lhs.false.2477

land.lhs.true.2473:                               ; preds = %lor.lhs.false.2470
  %613 = load i32, i32* %buf_magnification, align 4
  %conv2474 = sext i32 %613 to i64
  %cmp2475 = icmp slt i64 0, %conv2474
  br i1 %cmp2475, label %cond.true.2655, label %lor.lhs.false.2477

lor.lhs.false.2477:                               ; preds = %land.lhs.true.2473, %lor.lhs.false.2470, %cond.end.2459
  %614 = load i64, i64* %outbufsize, align 8
  %cmp2478 = icmp slt i64 %614, 0
  br i1 %cmp2478, label %cond.true.2480, label %cond.false.2559

cond.true.2480:                                   ; preds = %lor.lhs.false.2477
  %615 = load i32, i32* %buf_magnification, align 4
  %conv2481 = sext i32 %615 to i64
  %cmp2482 = icmp slt i64 %conv2481, 0
  br i1 %cmp2482, label %cond.true.2484, label %cond.false.2514

cond.true.2484:                                   ; preds = %cond.true.2480
  %616 = load i32, i32* %buf_magnification, align 4
  %conv2485 = sext i32 %616 to i64
  %617 = load i64, i64* %outbufsize, align 8
  %mul2486 = mul nsw i64 0, %617
  %618 = load i32, i32* %buf_magnification, align 4
  %conv2487 = sext i32 %618 to i64
  %add2488 = add nsw i64 %mul2486, %conv2487
  %mul2489 = mul nsw i64 0, %add2488
  %sub2490 = sub nsw i64 %mul2489, 1
  %cmp2491 = icmp slt i64 %sub2490, 0
  br i1 %cmp2491, label %cond.true.2493, label %cond.false.2503

cond.true.2493:                                   ; preds = %cond.true.2484
  %619 = load i64, i64* %outbufsize, align 8
  %mul2494 = mul nsw i64 0, %619
  %620 = load i32, i32* %buf_magnification, align 4
  %conv2495 = sext i32 %620 to i64
  %add2496 = add nsw i64 %mul2494, %conv2495
  %mul2497 = mul nsw i64 0, %add2496
  %add2498 = add nsw i64 %mul2497, 1
  %shl2499 = shl i64 %add2498, 62
  %sub2500 = sub nsw i64 %shl2499, 1
  %mul2501 = mul nsw i64 %sub2500, 2
  %add2502 = add nsw i64 %mul2501, 1
  br label %cond.end.2509

cond.false.2503:                                  ; preds = %cond.true.2484
  %621 = load i64, i64* %outbufsize, align 8
  %mul2504 = mul nsw i64 0, %621
  %622 = load i32, i32* %buf_magnification, align 4
  %conv2505 = sext i32 %622 to i64
  %add2506 = add nsw i64 %mul2504, %conv2505
  %mul2507 = mul nsw i64 0, %add2506
  %sub2508 = sub nsw i64 %mul2507, 1
  br label %cond.end.2509

cond.end.2509:                                    ; preds = %cond.false.2503, %cond.true.2493
  %cond2510 = phi i64 [ %add2502, %cond.true.2493 ], [ %sub2508, %cond.false.2503 ]
  %623 = load i64, i64* %outbufsize, align 8
  %div2511 = sdiv i64 %cond2510, %623
  %cmp2512 = icmp slt i64 %conv2485, %div2511
  br i1 %cmp2512, label %cond.true.2655, label %lor.lhs.false.2638

cond.false.2514:                                  ; preds = %cond.true.2480
  %624 = load i64, i64* %outbufsize, align 8
  %cmp2515 = icmp eq i64 %624, -1
  br i1 %cmp2515, label %cond.true.2517, label %cond.false.2518

cond.true.2517:                                   ; preds = %cond.false.2514
  br i1 false, label %cond.true.2655, label %lor.lhs.false.2638

cond.false.2518:                                  ; preds = %cond.false.2514
  %625 = load i64, i64* %outbufsize, align 8
  %mul2519 = mul nsw i64 0, %625
  %626 = load i32, i32* %buf_magnification, align 4
  %conv2520 = sext i32 %626 to i64
  %add2521 = add nsw i64 %mul2519, %conv2520
  %mul2522 = mul nsw i64 0, %add2521
  %sub2523 = sub nsw i64 %mul2522, 1
  %cmp2524 = icmp slt i64 %sub2523, 0
  br i1 %cmp2524, label %cond.true.2526, label %cond.false.2547

cond.true.2526:                                   ; preds = %cond.false.2518
  %627 = load i64, i64* %outbufsize, align 8
  %mul2527 = mul nsw i64 0, %627
  %628 = load i32, i32* %buf_magnification, align 4
  %conv2528 = sext i32 %628 to i64
  %add2529 = add nsw i64 %mul2527, %conv2528
  %mul2530 = mul nsw i64 0, %add2529
  %add2531 = add nsw i64 %mul2530, 0
  %neg2532 = xor i64 %add2531, -1
  %cmp2533 = icmp eq i64 %neg2532, -1
  %conv2534 = zext i1 %cmp2533 to i32
  %sub2535 = sub nsw i32 0, %conv2534
  %conv2536 = sext i32 %sub2535 to i64
  %629 = load i64, i64* %outbufsize, align 8
  %mul2537 = mul nsw i64 0, %629
  %630 = load i32, i32* %buf_magnification, align 4
  %conv2538 = sext i32 %630 to i64
  %add2539 = add nsw i64 %mul2537, %conv2538
  %mul2540 = mul nsw i64 0, %add2539
  %add2541 = add nsw i64 %mul2540, 1
  %shl2542 = shl i64 %add2541, 62
  %sub2543 = sub nsw i64 %shl2542, 1
  %mul2544 = mul nsw i64 %sub2543, 2
  %add2545 = add nsw i64 %mul2544, 1
  %sub2546 = sub nsw i64 %conv2536, %add2545
  br label %cond.end.2553

cond.false.2547:                                  ; preds = %cond.false.2518
  %631 = load i64, i64* %outbufsize, align 8
  %mul2548 = mul nsw i64 0, %631
  %632 = load i32, i32* %buf_magnification, align 4
  %conv2549 = sext i32 %632 to i64
  %add2550 = add nsw i64 %mul2548, %conv2549
  %mul2551 = mul nsw i64 0, %add2550
  %add2552 = add nsw i64 %mul2551, 0
  br label %cond.end.2553

cond.end.2553:                                    ; preds = %cond.false.2547, %cond.true.2526
  %cond2554 = phi i64 [ %sub2546, %cond.true.2526 ], [ %add2552, %cond.false.2547 ]
  %633 = load i64, i64* %outbufsize, align 8
  %div2555 = sdiv i64 %cond2554, %633
  %634 = load i32, i32* %buf_magnification, align 4
  %conv2556 = sext i32 %634 to i64
  %cmp2557 = icmp slt i64 %div2555, %conv2556
  br i1 %cmp2557, label %cond.true.2655, label %lor.lhs.false.2638

cond.false.2559:                                  ; preds = %lor.lhs.false.2477
  %635 = load i64, i64* %outbufsize, align 8
  %cmp2560 = icmp eq i64 %635, 0
  br i1 %cmp2560, label %cond.true.2562, label %cond.false.2563

cond.true.2562:                                   ; preds = %cond.false.2559
  br i1 false, label %cond.true.2655, label %lor.lhs.false.2638

cond.false.2563:                                  ; preds = %cond.false.2559
  %636 = load i32, i32* %buf_magnification, align 4
  %conv2564 = sext i32 %636 to i64
  %cmp2565 = icmp slt i64 %conv2564, 0
  br i1 %cmp2565, label %cond.true.2567, label %cond.false.2608

cond.true.2567:                                   ; preds = %cond.false.2563
  %637 = load i32, i32* %buf_magnification, align 4
  %conv2568 = sext i32 %637 to i64
  %638 = load i64, i64* %outbufsize, align 8
  %mul2569 = mul nsw i64 0, %638
  %639 = load i32, i32* %buf_magnification, align 4
  %conv2570 = sext i32 %639 to i64
  %add2571 = add nsw i64 %mul2569, %conv2570
  %mul2572 = mul nsw i64 0, %add2571
  %sub2573 = sub nsw i64 %mul2572, 1
  %cmp2574 = icmp slt i64 %sub2573, 0
  br i1 %cmp2574, label %cond.true.2576, label %cond.false.2597

cond.true.2576:                                   ; preds = %cond.true.2567
  %640 = load i64, i64* %outbufsize, align 8
  %mul2577 = mul nsw i64 0, %640
  %641 = load i32, i32* %buf_magnification, align 4
  %conv2578 = sext i32 %641 to i64
  %add2579 = add nsw i64 %mul2577, %conv2578
  %mul2580 = mul nsw i64 0, %add2579
  %add2581 = add nsw i64 %mul2580, 0
  %neg2582 = xor i64 %add2581, -1
  %cmp2583 = icmp eq i64 %neg2582, -1
  %conv2584 = zext i1 %cmp2583 to i32
  %sub2585 = sub nsw i32 0, %conv2584
  %conv2586 = sext i32 %sub2585 to i64
  %642 = load i64, i64* %outbufsize, align 8
  %mul2587 = mul nsw i64 0, %642
  %643 = load i32, i32* %buf_magnification, align 4
  %conv2588 = sext i32 %643 to i64
  %add2589 = add nsw i64 %mul2587, %conv2588
  %mul2590 = mul nsw i64 0, %add2589
  %add2591 = add nsw i64 %mul2590, 1
  %shl2592 = shl i64 %add2591, 62
  %sub2593 = sub nsw i64 %shl2592, 1
  %mul2594 = mul nsw i64 %sub2593, 2
  %add2595 = add nsw i64 %mul2594, 1
  %sub2596 = sub nsw i64 %conv2586, %add2595
  br label %cond.end.2603

cond.false.2597:                                  ; preds = %cond.true.2567
  %644 = load i64, i64* %outbufsize, align 8
  %mul2598 = mul nsw i64 0, %644
  %645 = load i32, i32* %buf_magnification, align 4
  %conv2599 = sext i32 %645 to i64
  %add2600 = add nsw i64 %mul2598, %conv2599
  %mul2601 = mul nsw i64 0, %add2600
  %add2602 = add nsw i64 %mul2601, 0
  br label %cond.end.2603

cond.end.2603:                                    ; preds = %cond.false.2597, %cond.true.2576
  %cond2604 = phi i64 [ %sub2596, %cond.true.2576 ], [ %add2602, %cond.false.2597 ]
  %646 = load i64, i64* %outbufsize, align 8
  %div2605 = sdiv i64 %cond2604, %646
  %cmp2606 = icmp slt i64 %conv2568, %div2605
  br i1 %cmp2606, label %cond.true.2655, label %lor.lhs.false.2638

cond.false.2608:                                  ; preds = %cond.false.2563
  %647 = load i64, i64* %outbufsize, align 8
  %mul2609 = mul nsw i64 0, %647
  %648 = load i32, i32* %buf_magnification, align 4
  %conv2610 = sext i32 %648 to i64
  %add2611 = add nsw i64 %mul2609, %conv2610
  %mul2612 = mul nsw i64 0, %add2611
  %sub2613 = sub nsw i64 %mul2612, 1
  %cmp2614 = icmp slt i64 %sub2613, 0
  br i1 %cmp2614, label %cond.true.2616, label %cond.false.2626

cond.true.2616:                                   ; preds = %cond.false.2608
  %649 = load i64, i64* %outbufsize, align 8
  %mul2617 = mul nsw i64 0, %649
  %650 = load i32, i32* %buf_magnification, align 4
  %conv2618 = sext i32 %650 to i64
  %add2619 = add nsw i64 %mul2617, %conv2618
  %mul2620 = mul nsw i64 0, %add2619
  %add2621 = add nsw i64 %mul2620, 1
  %shl2622 = shl i64 %add2621, 62
  %sub2623 = sub nsw i64 %shl2622, 1
  %mul2624 = mul nsw i64 %sub2623, 2
  %add2625 = add nsw i64 %mul2624, 1
  br label %cond.end.2632

cond.false.2626:                                  ; preds = %cond.false.2608
  %651 = load i64, i64* %outbufsize, align 8
  %mul2627 = mul nsw i64 0, %651
  %652 = load i32, i32* %buf_magnification, align 4
  %conv2628 = sext i32 %652 to i64
  %add2629 = add nsw i64 %mul2627, %conv2628
  %mul2630 = mul nsw i64 0, %add2629
  %sub2631 = sub nsw i64 %mul2630, 1
  br label %cond.end.2632

cond.end.2632:                                    ; preds = %cond.false.2626, %cond.true.2616
  %cond2633 = phi i64 [ %add2625, %cond.true.2616 ], [ %sub2631, %cond.false.2626 ]
  %653 = load i64, i64* %outbufsize, align 8
  %div2634 = sdiv i64 %cond2633, %653
  %654 = load i32, i32* %buf_magnification, align 4
  %conv2635 = sext i32 %654 to i64
  %cmp2636 = icmp slt i64 %div2634, %conv2635
  br i1 %cmp2636, label %cond.true.2655, label %lor.lhs.false.2638

lor.lhs.false.2638:                               ; preds = %cond.end.2632, %cond.end.2603, %cond.true.2562, %cond.end.2553, %cond.true.2517, %cond.end.2509
  %655 = load i32, i32* %buf_magnification, align 4
  %conv2639 = sext i32 %655 to i64
  %656 = load i64, i64* %outbufsize, align 8
  %mul2640 = mul nsw i64 %conv2639, %656
  %mul2641 = mul nsw i64 0, %mul2640
  %sub2642 = sub nsw i64 %mul2641, 1
  %cmp2643 = icmp slt i64 %sub2642, 0
  br i1 %cmp2643, label %land.lhs.true.2645, label %lor.lhs.false.2650

land.lhs.true.2645:                               ; preds = %lor.lhs.false.2638
  %657 = load i32, i32* %buf_magnification, align 4
  %conv2646 = sext i32 %657 to i64
  %658 = load i64, i64* %outbufsize, align 8
  %mul2647 = mul nsw i64 %conv2646, %658
  %cmp2648 = icmp slt i64 %mul2647, -9223372036854775808
  br i1 %cmp2648, label %cond.true.2655, label %lor.lhs.false.2650

lor.lhs.false.2650:                               ; preds = %land.lhs.true.2645, %lor.lhs.false.2638
  %659 = load i32, i32* %buf_magnification, align 4
  %conv2651 = sext i32 %659 to i64
  %660 = load i64, i64* %outbufsize, align 8
  %mul2652 = mul nsw i64 %conv2651, %660
  %cmp2653 = icmp slt i64 9223372036854775807, %mul2652
  br i1 %cmp2653, label %cond.true.2655, label %cond.false.2670

cond.true.2655:                                   ; preds = %lor.lhs.false.2650, %land.lhs.true.2645, %cond.end.2632, %cond.end.2603, %cond.true.2562, %cond.end.2553, %cond.true.2517, %cond.end.2509, %land.lhs.true.2473, %land.lhs.true.2467
  %661 = load i32, i32* %buf_magnification, align 4
  %conv2656 = sext i32 %661 to i64
  %662 = load i64, i64* %outbufsize, align 8
  %mul2657 = mul i64 %conv2656, %662
  %cmp2658 = icmp ule i64 %mul2657, 9223372036854775807
  br i1 %cmp2658, label %cond.true.2660, label %cond.false.2663

cond.true.2660:                                   ; preds = %cond.true.2655
  %663 = load i32, i32* %buf_magnification, align 4
  %conv2661 = sext i32 %663 to i64
  %664 = load i64, i64* %outbufsize, align 8
  %mul2662 = mul i64 %conv2661, %664
  br label %cond.end.2668

cond.false.2663:                                  ; preds = %cond.true.2655
  %665 = load i32, i32* %buf_magnification, align 4
  %conv2664 = sext i32 %665 to i64
  %666 = load i64, i64* %outbufsize, align 8
  %mul2665 = mul i64 %conv2664, %666
  %sub2666 = sub i64 %mul2665, -9223372036854775808
  %add2667 = add nsw i64 %sub2666, -9223372036854775808
  br label %cond.end.2668

cond.end.2668:                                    ; preds = %cond.false.2663, %cond.true.2660
  %cond2669 = phi i64 [ %mul2662, %cond.true.2660 ], [ %add2667, %cond.false.2663 ]
  store i64 %cond2669, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.2670:                                  ; preds = %lor.lhs.false.2650
  %667 = load i32, i32* %buf_magnification, align 4
  %conv2671 = sext i32 %667 to i64
  %668 = load i64, i64* %outbufsize, align 8
  %mul2672 = mul i64 %conv2671, %668
  %cmp2673 = icmp ule i64 %mul2672, 9223372036854775807
  br i1 %cmp2673, label %cond.true.2675, label %cond.false.2678

cond.true.2675:                                   ; preds = %cond.false.2670
  %669 = load i32, i32* %buf_magnification, align 4
  %conv2676 = sext i32 %669 to i64
  %670 = load i64, i64* %outbufsize, align 8
  %mul2677 = mul i64 %conv2676, %670
  br label %cond.end.2683

cond.false.2678:                                  ; preds = %cond.false.2670
  %671 = load i32, i32* %buf_magnification, align 4
  %conv2679 = sext i32 %671 to i64
  %672 = load i64, i64* %outbufsize, align 8
  %mul2680 = mul i64 %conv2679, %672
  %sub2681 = sub i64 %mul2680, -9223372036854775808
  %add2682 = add nsw i64 %sub2681, -9223372036854775808
  br label %cond.end.2683

cond.end.2683:                                    ; preds = %cond.false.2678, %cond.true.2675
  %cond2684 = phi i64 [ %mul2677, %cond.true.2675 ], [ %add2682, %cond.false.2678 ]
  store i64 %cond2684, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

cond.false.2685:                                  ; preds = %cond.false.2423
  %673 = load i64, i64* %outbufsize, align 8
  %mul2686 = mul nsw i64 0, %673
  %674 = load i32, i32* %buf_magnification, align 4
  %conv2687 = sext i32 %674 to i64
  %add2688 = add nsw i64 %mul2686, %conv2687
  %mul2689 = mul nsw i64 0, %add2688
  %sub2690 = sub nsw i64 %mul2689, 1
  %cmp2691 = icmp slt i64 %sub2690, 0
  br i1 %cmp2691, label %cond.true.2693, label %cond.false.2714

cond.true.2693:                                   ; preds = %cond.false.2685
  %675 = load i64, i64* %outbufsize, align 8
  %mul2694 = mul nsw i64 0, %675
  %676 = load i32, i32* %buf_magnification, align 4
  %conv2695 = sext i32 %676 to i64
  %add2696 = add nsw i64 %mul2694, %conv2695
  %mul2697 = mul nsw i64 0, %add2696
  %add2698 = add nsw i64 %mul2697, 0
  %neg2699 = xor i64 %add2698, -1
  %cmp2700 = icmp eq i64 %neg2699, -1
  %conv2701 = zext i1 %cmp2700 to i32
  %sub2702 = sub nsw i32 0, %conv2701
  %conv2703 = sext i32 %sub2702 to i64
  %677 = load i64, i64* %outbufsize, align 8
  %mul2704 = mul nsw i64 0, %677
  %678 = load i32, i32* %buf_magnification, align 4
  %conv2705 = sext i32 %678 to i64
  %add2706 = add nsw i64 %mul2704, %conv2705
  %mul2707 = mul nsw i64 0, %add2706
  %add2708 = add nsw i64 %mul2707, 1
  %shl2709 = shl i64 %add2708, 62
  %sub2710 = sub nsw i64 %shl2709, 1
  %mul2711 = mul nsw i64 %sub2710, 2
  %add2712 = add nsw i64 %mul2711, 1
  %sub2713 = sub nsw i64 %conv2703, %add2712
  br label %cond.end.2720

cond.false.2714:                                  ; preds = %cond.false.2685
  %679 = load i64, i64* %outbufsize, align 8
  %mul2715 = mul nsw i64 0, %679
  %680 = load i32, i32* %buf_magnification, align 4
  %conv2716 = sext i32 %680 to i64
  %add2717 = add nsw i64 %mul2715, %conv2716
  %mul2718 = mul nsw i64 0, %add2717
  %add2719 = add nsw i64 %mul2718, 0
  br label %cond.end.2720

cond.end.2720:                                    ; preds = %cond.false.2714, %cond.true.2693
  %cond2721 = phi i64 [ %sub2713, %cond.true.2693 ], [ %add2719, %cond.false.2714 ]
  %cmp2722 = icmp eq i64 %cond2721, 0
  br i1 %cmp2722, label %land.lhs.true.2724, label %lor.lhs.false.2736

land.lhs.true.2724:                               ; preds = %cond.end.2720
  %681 = load i32, i32* %buf_magnification, align 4
  %cmp2725 = icmp slt i32 %681, 0
  br i1 %cmp2725, label %land.lhs.true.2727, label %lor.lhs.false.2730

land.lhs.true.2727:                               ; preds = %land.lhs.true.2724
  %682 = load i64, i64* %outbufsize, align 8
  %cmp2728 = icmp slt i64 0, %682
  br i1 %cmp2728, label %cond.true.2912, label %lor.lhs.false.2730

lor.lhs.false.2730:                               ; preds = %land.lhs.true.2727, %land.lhs.true.2724
  %683 = load i64, i64* %outbufsize, align 8
  %cmp2731 = icmp slt i64 %683, 0
  br i1 %cmp2731, label %land.lhs.true.2733, label %lor.lhs.false.2736

land.lhs.true.2733:                               ; preds = %lor.lhs.false.2730
  %684 = load i32, i32* %buf_magnification, align 4
  %cmp2734 = icmp slt i32 0, %684
  br i1 %cmp2734, label %cond.true.2912, label %lor.lhs.false.2736

lor.lhs.false.2736:                               ; preds = %land.lhs.true.2733, %lor.lhs.false.2730, %cond.end.2720
  %685 = load i64, i64* %outbufsize, align 8
  %cmp2737 = icmp slt i64 %685, 0
  br i1 %cmp2737, label %cond.true.2739, label %cond.false.2817

cond.true.2739:                                   ; preds = %lor.lhs.false.2736
  %686 = load i32, i32* %buf_magnification, align 4
  %cmp2740 = icmp slt i32 %686, 0
  br i1 %cmp2740, label %cond.true.2742, label %cond.false.2772

cond.true.2742:                                   ; preds = %cond.true.2739
  %687 = load i32, i32* %buf_magnification, align 4
  %conv2743 = sext i32 %687 to i64
  %688 = load i64, i64* %outbufsize, align 8
  %mul2744 = mul nsw i64 0, %688
  %689 = load i32, i32* %buf_magnification, align 4
  %conv2745 = sext i32 %689 to i64
  %add2746 = add nsw i64 %mul2744, %conv2745
  %mul2747 = mul nsw i64 0, %add2746
  %sub2748 = sub nsw i64 %mul2747, 1
  %cmp2749 = icmp slt i64 %sub2748, 0
  br i1 %cmp2749, label %cond.true.2751, label %cond.false.2761

cond.true.2751:                                   ; preds = %cond.true.2742
  %690 = load i64, i64* %outbufsize, align 8
  %mul2752 = mul nsw i64 0, %690
  %691 = load i32, i32* %buf_magnification, align 4
  %conv2753 = sext i32 %691 to i64
  %add2754 = add nsw i64 %mul2752, %conv2753
  %mul2755 = mul nsw i64 0, %add2754
  %add2756 = add nsw i64 %mul2755, 1
  %shl2757 = shl i64 %add2756, 62
  %sub2758 = sub nsw i64 %shl2757, 1
  %mul2759 = mul nsw i64 %sub2758, 2
  %add2760 = add nsw i64 %mul2759, 1
  br label %cond.end.2767

cond.false.2761:                                  ; preds = %cond.true.2742
  %692 = load i64, i64* %outbufsize, align 8
  %mul2762 = mul nsw i64 0, %692
  %693 = load i32, i32* %buf_magnification, align 4
  %conv2763 = sext i32 %693 to i64
  %add2764 = add nsw i64 %mul2762, %conv2763
  %mul2765 = mul nsw i64 0, %add2764
  %sub2766 = sub nsw i64 %mul2765, 1
  br label %cond.end.2767

cond.end.2767:                                    ; preds = %cond.false.2761, %cond.true.2751
  %cond2768 = phi i64 [ %add2760, %cond.true.2751 ], [ %sub2766, %cond.false.2761 ]
  %694 = load i64, i64* %outbufsize, align 8
  %div2769 = sdiv i64 %cond2768, %694
  %cmp2770 = icmp slt i64 %conv2743, %div2769
  br i1 %cmp2770, label %cond.true.2912, label %lor.lhs.false.2895

cond.false.2772:                                  ; preds = %cond.true.2739
  %695 = load i64, i64* %outbufsize, align 8
  %cmp2773 = icmp eq i64 %695, -1
  br i1 %cmp2773, label %cond.true.2775, label %cond.false.2776

cond.true.2775:                                   ; preds = %cond.false.2772
  br i1 false, label %cond.true.2912, label %lor.lhs.false.2895

cond.false.2776:                                  ; preds = %cond.false.2772
  %696 = load i64, i64* %outbufsize, align 8
  %mul2777 = mul nsw i64 0, %696
  %697 = load i32, i32* %buf_magnification, align 4
  %conv2778 = sext i32 %697 to i64
  %add2779 = add nsw i64 %mul2777, %conv2778
  %mul2780 = mul nsw i64 0, %add2779
  %sub2781 = sub nsw i64 %mul2780, 1
  %cmp2782 = icmp slt i64 %sub2781, 0
  br i1 %cmp2782, label %cond.true.2784, label %cond.false.2805

cond.true.2784:                                   ; preds = %cond.false.2776
  %698 = load i64, i64* %outbufsize, align 8
  %mul2785 = mul nsw i64 0, %698
  %699 = load i32, i32* %buf_magnification, align 4
  %conv2786 = sext i32 %699 to i64
  %add2787 = add nsw i64 %mul2785, %conv2786
  %mul2788 = mul nsw i64 0, %add2787
  %add2789 = add nsw i64 %mul2788, 0
  %neg2790 = xor i64 %add2789, -1
  %cmp2791 = icmp eq i64 %neg2790, -1
  %conv2792 = zext i1 %cmp2791 to i32
  %sub2793 = sub nsw i32 0, %conv2792
  %conv2794 = sext i32 %sub2793 to i64
  %700 = load i64, i64* %outbufsize, align 8
  %mul2795 = mul nsw i64 0, %700
  %701 = load i32, i32* %buf_magnification, align 4
  %conv2796 = sext i32 %701 to i64
  %add2797 = add nsw i64 %mul2795, %conv2796
  %mul2798 = mul nsw i64 0, %add2797
  %add2799 = add nsw i64 %mul2798, 1
  %shl2800 = shl i64 %add2799, 62
  %sub2801 = sub nsw i64 %shl2800, 1
  %mul2802 = mul nsw i64 %sub2801, 2
  %add2803 = add nsw i64 %mul2802, 1
  %sub2804 = sub nsw i64 %conv2794, %add2803
  br label %cond.end.2811

cond.false.2805:                                  ; preds = %cond.false.2776
  %702 = load i64, i64* %outbufsize, align 8
  %mul2806 = mul nsw i64 0, %702
  %703 = load i32, i32* %buf_magnification, align 4
  %conv2807 = sext i32 %703 to i64
  %add2808 = add nsw i64 %mul2806, %conv2807
  %mul2809 = mul nsw i64 0, %add2808
  %add2810 = add nsw i64 %mul2809, 0
  br label %cond.end.2811

cond.end.2811:                                    ; preds = %cond.false.2805, %cond.true.2784
  %cond2812 = phi i64 [ %sub2804, %cond.true.2784 ], [ %add2810, %cond.false.2805 ]
  %704 = load i64, i64* %outbufsize, align 8
  %div2813 = sdiv i64 %cond2812, %704
  %705 = load i32, i32* %buf_magnification, align 4
  %conv2814 = sext i32 %705 to i64
  %cmp2815 = icmp slt i64 %div2813, %conv2814
  br i1 %cmp2815, label %cond.true.2912, label %lor.lhs.false.2895

cond.false.2817:                                  ; preds = %lor.lhs.false.2736
  %706 = load i64, i64* %outbufsize, align 8
  %cmp2818 = icmp eq i64 %706, 0
  br i1 %cmp2818, label %cond.true.2820, label %cond.false.2821

cond.true.2820:                                   ; preds = %cond.false.2817
  br i1 false, label %cond.true.2912, label %lor.lhs.false.2895

cond.false.2821:                                  ; preds = %cond.false.2817
  %707 = load i32, i32* %buf_magnification, align 4
  %cmp2822 = icmp slt i32 %707, 0
  br i1 %cmp2822, label %cond.true.2824, label %cond.false.2865

cond.true.2824:                                   ; preds = %cond.false.2821
  %708 = load i32, i32* %buf_magnification, align 4
  %conv2825 = sext i32 %708 to i64
  %709 = load i64, i64* %outbufsize, align 8
  %mul2826 = mul nsw i64 0, %709
  %710 = load i32, i32* %buf_magnification, align 4
  %conv2827 = sext i32 %710 to i64
  %add2828 = add nsw i64 %mul2826, %conv2827
  %mul2829 = mul nsw i64 0, %add2828
  %sub2830 = sub nsw i64 %mul2829, 1
  %cmp2831 = icmp slt i64 %sub2830, 0
  br i1 %cmp2831, label %cond.true.2833, label %cond.false.2854

cond.true.2833:                                   ; preds = %cond.true.2824
  %711 = load i64, i64* %outbufsize, align 8
  %mul2834 = mul nsw i64 0, %711
  %712 = load i32, i32* %buf_magnification, align 4
  %conv2835 = sext i32 %712 to i64
  %add2836 = add nsw i64 %mul2834, %conv2835
  %mul2837 = mul nsw i64 0, %add2836
  %add2838 = add nsw i64 %mul2837, 0
  %neg2839 = xor i64 %add2838, -1
  %cmp2840 = icmp eq i64 %neg2839, -1
  %conv2841 = zext i1 %cmp2840 to i32
  %sub2842 = sub nsw i32 0, %conv2841
  %conv2843 = sext i32 %sub2842 to i64
  %713 = load i64, i64* %outbufsize, align 8
  %mul2844 = mul nsw i64 0, %713
  %714 = load i32, i32* %buf_magnification, align 4
  %conv2845 = sext i32 %714 to i64
  %add2846 = add nsw i64 %mul2844, %conv2845
  %mul2847 = mul nsw i64 0, %add2846
  %add2848 = add nsw i64 %mul2847, 1
  %shl2849 = shl i64 %add2848, 62
  %sub2850 = sub nsw i64 %shl2849, 1
  %mul2851 = mul nsw i64 %sub2850, 2
  %add2852 = add nsw i64 %mul2851, 1
  %sub2853 = sub nsw i64 %conv2843, %add2852
  br label %cond.end.2860

cond.false.2854:                                  ; preds = %cond.true.2824
  %715 = load i64, i64* %outbufsize, align 8
  %mul2855 = mul nsw i64 0, %715
  %716 = load i32, i32* %buf_magnification, align 4
  %conv2856 = sext i32 %716 to i64
  %add2857 = add nsw i64 %mul2855, %conv2856
  %mul2858 = mul nsw i64 0, %add2857
  %add2859 = add nsw i64 %mul2858, 0
  br label %cond.end.2860

cond.end.2860:                                    ; preds = %cond.false.2854, %cond.true.2833
  %cond2861 = phi i64 [ %sub2853, %cond.true.2833 ], [ %add2859, %cond.false.2854 ]
  %717 = load i64, i64* %outbufsize, align 8
  %div2862 = sdiv i64 %cond2861, %717
  %cmp2863 = icmp slt i64 %conv2825, %div2862
  br i1 %cmp2863, label %cond.true.2912, label %lor.lhs.false.2895

cond.false.2865:                                  ; preds = %cond.false.2821
  %718 = load i64, i64* %outbufsize, align 8
  %mul2866 = mul nsw i64 0, %718
  %719 = load i32, i32* %buf_magnification, align 4
  %conv2867 = sext i32 %719 to i64
  %add2868 = add nsw i64 %mul2866, %conv2867
  %mul2869 = mul nsw i64 0, %add2868
  %sub2870 = sub nsw i64 %mul2869, 1
  %cmp2871 = icmp slt i64 %sub2870, 0
  br i1 %cmp2871, label %cond.true.2873, label %cond.false.2883

cond.true.2873:                                   ; preds = %cond.false.2865
  %720 = load i64, i64* %outbufsize, align 8
  %mul2874 = mul nsw i64 0, %720
  %721 = load i32, i32* %buf_magnification, align 4
  %conv2875 = sext i32 %721 to i64
  %add2876 = add nsw i64 %mul2874, %conv2875
  %mul2877 = mul nsw i64 0, %add2876
  %add2878 = add nsw i64 %mul2877, 1
  %shl2879 = shl i64 %add2878, 62
  %sub2880 = sub nsw i64 %shl2879, 1
  %mul2881 = mul nsw i64 %sub2880, 2
  %add2882 = add nsw i64 %mul2881, 1
  br label %cond.end.2889

cond.false.2883:                                  ; preds = %cond.false.2865
  %722 = load i64, i64* %outbufsize, align 8
  %mul2884 = mul nsw i64 0, %722
  %723 = load i32, i32* %buf_magnification, align 4
  %conv2885 = sext i32 %723 to i64
  %add2886 = add nsw i64 %mul2884, %conv2885
  %mul2887 = mul nsw i64 0, %add2886
  %sub2888 = sub nsw i64 %mul2887, 1
  br label %cond.end.2889

cond.end.2889:                                    ; preds = %cond.false.2883, %cond.true.2873
  %cond2890 = phi i64 [ %add2882, %cond.true.2873 ], [ %sub2888, %cond.false.2883 ]
  %724 = load i64, i64* %outbufsize, align 8
  %div2891 = sdiv i64 %cond2890, %724
  %725 = load i32, i32* %buf_magnification, align 4
  %conv2892 = sext i32 %725 to i64
  %cmp2893 = icmp slt i64 %div2891, %conv2892
  br i1 %cmp2893, label %cond.true.2912, label %lor.lhs.false.2895

lor.lhs.false.2895:                               ; preds = %cond.end.2889, %cond.end.2860, %cond.true.2820, %cond.end.2811, %cond.true.2775, %cond.end.2767
  %726 = load i32, i32* %buf_magnification, align 4
  %conv2896 = sext i32 %726 to i64
  %727 = load i64, i64* %outbufsize, align 8
  %mul2897 = mul nsw i64 %conv2896, %727
  %mul2898 = mul nsw i64 0, %mul2897
  %sub2899 = sub nsw i64 %mul2898, 1
  %cmp2900 = icmp slt i64 %sub2899, 0
  br i1 %cmp2900, label %land.lhs.true.2902, label %lor.lhs.false.2907

land.lhs.true.2902:                               ; preds = %lor.lhs.false.2895
  %728 = load i32, i32* %buf_magnification, align 4
  %conv2903 = sext i32 %728 to i64
  %729 = load i64, i64* %outbufsize, align 8
  %mul2904 = mul nsw i64 %conv2903, %729
  %cmp2905 = icmp slt i64 %mul2904, -9223372036854775808
  br i1 %cmp2905, label %cond.true.2912, label %lor.lhs.false.2907

lor.lhs.false.2907:                               ; preds = %land.lhs.true.2902, %lor.lhs.false.2895
  %730 = load i32, i32* %buf_magnification, align 4
  %conv2908 = sext i32 %730 to i64
  %731 = load i64, i64* %outbufsize, align 8
  %mul2909 = mul nsw i64 %conv2908, %731
  %cmp2910 = icmp slt i64 9223372036854775807, %mul2909
  br i1 %cmp2910, label %cond.true.2912, label %cond.false.2927

cond.true.2912:                                   ; preds = %lor.lhs.false.2907, %land.lhs.true.2902, %cond.end.2889, %cond.end.2860, %cond.true.2820, %cond.end.2811, %cond.true.2775, %cond.end.2767, %land.lhs.true.2733, %land.lhs.true.2727
  %732 = load i32, i32* %buf_magnification, align 4
  %conv2913 = sext i32 %732 to i64
  %733 = load i64, i64* %outbufsize, align 8
  %mul2914 = mul i64 %conv2913, %733
  %cmp2915 = icmp ule i64 %mul2914, 9223372036854775807
  br i1 %cmp2915, label %cond.true.2917, label %cond.false.2920

cond.true.2917:                                   ; preds = %cond.true.2912
  %734 = load i32, i32* %buf_magnification, align 4
  %conv2918 = sext i32 %734 to i64
  %735 = load i64, i64* %outbufsize, align 8
  %mul2919 = mul i64 %conv2918, %735
  br label %cond.end.2925

cond.false.2920:                                  ; preds = %cond.true.2912
  %736 = load i32, i32* %buf_magnification, align 4
  %conv2921 = sext i32 %736 to i64
  %737 = load i64, i64* %outbufsize, align 8
  %mul2922 = mul i64 %conv2921, %737
  %sub2923 = sub i64 %mul2922, -9223372036854775808
  %add2924 = add nsw i64 %sub2923, -9223372036854775808
  br label %cond.end.2925

cond.end.2925:                                    ; preds = %cond.false.2920, %cond.true.2917
  %cond2926 = phi i64 [ %mul2919, %cond.true.2917 ], [ %add2924, %cond.false.2920 ]
  store i64 %cond2926, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %lor.lhs.false.2942

cond.false.2927:                                  ; preds = %lor.lhs.false.2907
  %738 = load i32, i32* %buf_magnification, align 4
  %conv2928 = sext i32 %738 to i64
  %739 = load i64, i64* %outbufsize, align 8
  %mul2929 = mul i64 %conv2928, %739
  %cmp2930 = icmp ule i64 %mul2929, 9223372036854775807
  br i1 %cmp2930, label %cond.true.2932, label %cond.false.2935

cond.true.2932:                                   ; preds = %cond.false.2927
  %740 = load i32, i32* %buf_magnification, align 4
  %conv2933 = sext i32 %740 to i64
  %741 = load i64, i64* %outbufsize, align 8
  %mul2934 = mul i64 %conv2933, %741
  br label %cond.end.2940

cond.false.2935:                                  ; preds = %cond.false.2927
  %742 = load i32, i32* %buf_magnification, align 4
  %conv2936 = sext i32 %742 to i64
  %743 = load i64, i64* %outbufsize, align 8
  %mul2937 = mul i64 %conv2936, %743
  %sub2938 = sub i64 %mul2937, -9223372036854775808
  %add2939 = add nsw i64 %sub2938, -9223372036854775808
  br label %cond.end.2940

cond.end.2940:                                    ; preds = %cond.false.2935, %cond.true.2932
  %cond2941 = phi i64 [ %mul2934, %cond.true.2932 ], [ %add2939, %cond.false.2935 ]
  store i64 %cond2941, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %lor.lhs.false.2942

lor.lhs.false.2942:                               ; preds = %cond.end.2940, %cond.end.2925, %cond.end.2683, %cond.end.2668, %cond.end.2421, %cond.end.2406, %cond.end.2164, %cond.end.2149, %cond.end.1900, %cond.end.1884, %cond.end.1641, %cond.end.1625, %cond.end.1378, %cond.end.1349, %cond.end.1093, %cond.end.1064, %cond.end.716, %cond.end.687, %cond.end.431, %cond.end.402
  br i1 false, label %cond.true.2943, label %cond.false.3340

cond.true.2943:                                   ; preds = %lor.lhs.false.2942
  br i1 false, label %cond.true.2944, label %cond.false.3164

cond.true.2944:                                   ; preds = %cond.true.2943
  %744 = load i64, i64* %outbufsize, align 8
  %conv2945 = trunc i64 %744 to i8
  %conv2946 = sext i8 %conv2945 to i32
  %mul2947 = mul nsw i32 0, %conv2946
  %add2948 = add nsw i32 %mul2947, 0
  %mul2949 = mul nsw i32 0, %add2948
  %sub2950 = sub nsw i32 %mul2949, 1
  %cmp2951 = icmp slt i32 %sub2950, 0
  br i1 %cmp2951, label %cond.true.2953, label %cond.false.2975

cond.true.2953:                                   ; preds = %cond.true.2944
  %745 = load i64, i64* %outbufsize, align 8
  %conv2954 = trunc i64 %745 to i8
  %conv2955 = sext i8 %conv2954 to i32
  %mul2956 = mul nsw i32 0, %conv2955
  %add2957 = add nsw i32 %mul2956, 0
  %mul2958 = mul nsw i32 0, %add2957
  %add2959 = add nsw i32 %mul2958, 0
  %neg2960 = xor i32 %add2959, -1
  %cmp2961 = icmp eq i32 %neg2960, -1
  %conv2962 = zext i1 %cmp2961 to i32
  %sub2963 = sub nsw i32 0, %conv2962
  %746 = load i64, i64* %outbufsize, align 8
  %conv2964 = trunc i64 %746 to i8
  %conv2965 = sext i8 %conv2964 to i32
  %mul2966 = mul nsw i32 0, %conv2965
  %add2967 = add nsw i32 %mul2966, 0
  %mul2968 = mul nsw i32 0, %add2967
  %add2969 = add nsw i32 %mul2968, 1
  %shl2970 = shl i32 %add2969, 30
  %sub2971 = sub nsw i32 %shl2970, 1
  %mul2972 = mul nsw i32 %sub2971, 2
  %add2973 = add nsw i32 %mul2972, 1
  %sub2974 = sub nsw i32 %sub2963, %add2973
  br label %cond.end.2982

cond.false.2975:                                  ; preds = %cond.true.2944
  %747 = load i64, i64* %outbufsize, align 8
  %conv2976 = trunc i64 %747 to i8
  %conv2977 = sext i8 %conv2976 to i32
  %mul2978 = mul nsw i32 0, %conv2977
  %add2979 = add nsw i32 %mul2978, 0
  %mul2980 = mul nsw i32 0, %add2979
  %add2981 = add nsw i32 %mul2980, 0
  br label %cond.end.2982

cond.end.2982:                                    ; preds = %cond.false.2975, %cond.true.2953
  %cond2983 = phi i32 [ %sub2974, %cond.true.2953 ], [ %add2981, %cond.false.2975 ]
  %cmp2984 = icmp slt i32 %cond2983, 0
  br i1 %cmp2984, label %cond.true.2986, label %cond.false.3070

cond.true.2986:                                   ; preds = %cond.end.2982
  %748 = load i64, i64* %outbufsize, align 8
  %conv2987 = trunc i64 %748 to i8
  %conv2988 = sext i8 %conv2987 to i32
  %cmp2989 = icmp slt i32 %conv2988, 0
  br i1 %cmp2989, label %cond.true.2991, label %cond.false.3036

cond.true.2991:                                   ; preds = %cond.true.2986
  %749 = load i64, i64* %outbufsize, align 8
  %conv2992 = trunc i64 %749 to i8
  %conv2993 = sext i8 %conv2992 to i32
  %mul2994 = mul nsw i32 0, %conv2993
  %add2995 = add nsw i32 %mul2994, 0
  %mul2996 = mul nsw i32 0, %add2995
  %sub2997 = sub nsw i32 %mul2996, 1
  %cmp2998 = icmp slt i32 %sub2997, 0
  br i1 %cmp2998, label %cond.true.3000, label %cond.false.3022

cond.true.3000:                                   ; preds = %cond.true.2991
  %750 = load i64, i64* %outbufsize, align 8
  %conv3001 = trunc i64 %750 to i8
  %conv3002 = sext i8 %conv3001 to i32
  %mul3003 = mul nsw i32 0, %conv3002
  %add3004 = add nsw i32 %mul3003, 0
  %mul3005 = mul nsw i32 0, %add3004
  %add3006 = add nsw i32 %mul3005, 0
  %neg3007 = xor i32 %add3006, -1
  %cmp3008 = icmp eq i32 %neg3007, -1
  %conv3009 = zext i1 %cmp3008 to i32
  %sub3010 = sub nsw i32 0, %conv3009
  %751 = load i64, i64* %outbufsize, align 8
  %conv3011 = trunc i64 %751 to i8
  %conv3012 = sext i8 %conv3011 to i32
  %mul3013 = mul nsw i32 0, %conv3012
  %add3014 = add nsw i32 %mul3013, 0
  %mul3015 = mul nsw i32 0, %add3014
  %add3016 = add nsw i32 %mul3015, 1
  %shl3017 = shl i32 %add3016, 30
  %sub3018 = sub nsw i32 %shl3017, 1
  %mul3019 = mul nsw i32 %sub3018, 2
  %add3020 = add nsw i32 %mul3019, 1
  %sub3021 = sub nsw i32 %sub3010, %add3020
  br label %cond.end.3029

cond.false.3022:                                  ; preds = %cond.true.2991
  %752 = load i64, i64* %outbufsize, align 8
  %conv3023 = trunc i64 %752 to i8
  %conv3024 = sext i8 %conv3023 to i32
  %mul3025 = mul nsw i32 0, %conv3024
  %add3026 = add nsw i32 %mul3025, 0
  %mul3027 = mul nsw i32 0, %add3026
  %add3028 = add nsw i32 %mul3027, 0
  br label %cond.end.3029

cond.end.3029:                                    ; preds = %cond.false.3022, %cond.true.3000
  %cond3030 = phi i32 [ %sub3021, %cond.true.3000 ], [ %add3028, %cond.false.3022 ]
  %753 = load i64, i64* %outbufsize, align 8
  %conv3031 = trunc i64 %753 to i8
  %conv3032 = sext i8 %conv3031 to i32
  %sub3033 = sub nsw i32 %cond3030, %conv3032
  %cmp3034 = icmp slt i32 0, %sub3033
  br i1 %cmp3034, label %cond.true.3118, label %lor.lhs.false.3098

cond.false.3036:                                  ; preds = %cond.true.2986
  %754 = load i64, i64* %outbufsize, align 8
  %conv3037 = trunc i64 %754 to i8
  %conv3038 = sext i8 %conv3037 to i32
  %mul3039 = mul nsw i32 0, %conv3038
  %add3040 = add nsw i32 %mul3039, 0
  %mul3041 = mul nsw i32 0, %add3040
  %sub3042 = sub nsw i32 %mul3041, 1
  %cmp3043 = icmp slt i32 %sub3042, 0
  br i1 %cmp3043, label %cond.true.3045, label %cond.false.3056

cond.true.3045:                                   ; preds = %cond.false.3036
  %755 = load i64, i64* %outbufsize, align 8
  %conv3046 = trunc i64 %755 to i8
  %conv3047 = sext i8 %conv3046 to i32
  %mul3048 = mul nsw i32 0, %conv3047
  %add3049 = add nsw i32 %mul3048, 0
  %mul3050 = mul nsw i32 0, %add3049
  %add3051 = add nsw i32 %mul3050, 1
  %shl3052 = shl i32 %add3051, 30
  %sub3053 = sub nsw i32 %shl3052, 1
  %mul3054 = mul nsw i32 %sub3053, 2
  %add3055 = add nsw i32 %mul3054, 1
  br label %cond.end.3063

cond.false.3056:                                  ; preds = %cond.false.3036
  %756 = load i64, i64* %outbufsize, align 8
  %conv3057 = trunc i64 %756 to i8
  %conv3058 = sext i8 %conv3057 to i32
  %mul3059 = mul nsw i32 0, %conv3058
  %add3060 = add nsw i32 %mul3059, 0
  %mul3061 = mul nsw i32 0, %add3060
  %sub3062 = sub nsw i32 %mul3061, 1
  br label %cond.end.3063

cond.end.3063:                                    ; preds = %cond.false.3056, %cond.true.3045
  %cond3064 = phi i32 [ %add3055, %cond.true.3045 ], [ %sub3062, %cond.false.3056 ]
  %757 = load i64, i64* %outbufsize, align 8
  %conv3065 = trunc i64 %757 to i8
  %conv3066 = sext i8 %conv3065 to i32
  %sub3067 = sub nsw i32 %cond3064, %conv3066
  %cmp3068 = icmp slt i32 %sub3067, 0
  br i1 %cmp3068, label %cond.true.3118, label %lor.lhs.false.3098

cond.false.3070:                                  ; preds = %cond.end.2982
  br i1 false, label %cond.true.3071, label %cond.false.3079

cond.true.3071:                                   ; preds = %cond.false.3070
  %758 = load i64, i64* %outbufsize, align 8
  %conv3072 = trunc i64 %758 to i8
  %conv3073 = sext i8 %conv3072 to i32
  %759 = load i64, i64* %outbufsize, align 8
  %conv3074 = trunc i64 %759 to i8
  %conv3075 = sext i8 %conv3074 to i32
  %add3076 = add nsw i32 0, %conv3075
  %cmp3077 = icmp sle i32 %conv3073, %add3076
  br i1 %cmp3077, label %cond.true.3118, label %lor.lhs.false.3098

cond.false.3079:                                  ; preds = %cond.false.3070
  %760 = load i64, i64* %outbufsize, align 8
  %conv3080 = trunc i64 %760 to i8
  %conv3081 = sext i8 %conv3080 to i32
  %cmp3082 = icmp slt i32 %conv3081, 0
  br i1 %cmp3082, label %cond.true.3084, label %cond.false.3090

cond.true.3084:                                   ; preds = %cond.false.3079
  %761 = load i64, i64* %outbufsize, align 8
  %conv3085 = trunc i64 %761 to i8
  %conv3086 = sext i8 %conv3085 to i32
  %add3087 = add nsw i32 0, %conv3086
  %cmp3088 = icmp sle i32 0, %add3087
  br i1 %cmp3088, label %cond.true.3118, label %lor.lhs.false.3098

cond.false.3090:                                  ; preds = %cond.false.3079
  %762 = load i64, i64* %outbufsize, align 8
  %conv3091 = trunc i64 %762 to i8
  %conv3092 = sext i8 %conv3091 to i32
  %add3093 = add nsw i32 0, %conv3092
  %763 = load i64, i64* %outbufsize, align 8
  %conv3094 = trunc i64 %763 to i8
  %conv3095 = sext i8 %conv3094 to i32
  %cmp3096 = icmp slt i32 %add3093, %conv3095
  br i1 %cmp3096, label %cond.true.3118, label %lor.lhs.false.3098

lor.lhs.false.3098:                               ; preds = %cond.false.3090, %cond.true.3084, %cond.true.3071, %cond.end.3063, %cond.end.3029
  %764 = load i64, i64* %outbufsize, align 8
  %conv3099 = trunc i64 %764 to i8
  %conv3100 = sext i8 %conv3099 to i32
  %add3101 = add nsw i32 0, %conv3100
  %mul3102 = mul nsw i32 0, %add3101
  %sub3103 = sub nsw i32 %mul3102, 1
  %cmp3104 = icmp slt i32 %sub3103, 0
  br i1 %cmp3104, label %land.lhs.true.3106, label %lor.lhs.false.3112

land.lhs.true.3106:                               ; preds = %lor.lhs.false.3098
  %765 = load i64, i64* %outbufsize, align 8
  %conv3107 = trunc i64 %765 to i8
  %conv3108 = sext i8 %conv3107 to i32
  %add3109 = add nsw i32 0, %conv3108
  %cmp3110 = icmp slt i32 %add3109, -128
  br i1 %cmp3110, label %cond.true.3118, label %lor.lhs.false.3112

lor.lhs.false.3112:                               ; preds = %land.lhs.true.3106, %lor.lhs.false.3098
  %766 = load i64, i64* %outbufsize, align 8
  %conv3113 = trunc i64 %766 to i8
  %conv3114 = sext i8 %conv3113 to i32
  %add3115 = add nsw i32 0, %conv3114
  %cmp3116 = icmp slt i32 127, %add3115
  br i1 %cmp3116, label %cond.true.3118, label %cond.false.3141

cond.true.3118:                                   ; preds = %lor.lhs.false.3112, %land.lhs.true.3106, %cond.false.3090, %cond.true.3084, %cond.true.3071, %cond.end.3063, %cond.end.3029
  %767 = load i64, i64* %outbufsize, align 8
  %conv3119 = trunc i64 %767 to i8
  %conv3120 = zext i8 %conv3119 to i32
  %add3121 = add nsw i32 0, %conv3120
  %cmp3122 = icmp sle i32 %add3121, 127
  br i1 %cmp3122, label %cond.true.3124, label %cond.false.3130

cond.true.3124:                                   ; preds = %cond.true.3118
  %768 = load i64, i64* %outbufsize, align 8
  %conv3125 = trunc i64 %768 to i8
  %conv3126 = zext i8 %conv3125 to i32
  %add3127 = add nsw i32 0, %conv3126
  %conv3128 = trunc i32 %add3127 to i8
  %conv3129 = sext i8 %conv3128 to i32
  br label %cond.end.3138

cond.false.3130:                                  ; preds = %cond.true.3118
  %769 = load i64, i64* %outbufsize, align 8
  %conv3131 = trunc i64 %769 to i8
  %conv3132 = zext i8 %conv3131 to i32
  %add3133 = add nsw i32 0, %conv3132
  %sub3134 = sub nsw i32 %add3133, -128
  %conv3135 = trunc i32 %sub3134 to i8
  %conv3136 = sext i8 %conv3135 to i32
  %add3137 = add nsw i32 %conv3136, -128
  br label %cond.end.3138

cond.end.3138:                                    ; preds = %cond.false.3130, %cond.true.3124
  %cond3139 = phi i32 [ %conv3129, %cond.true.3124 ], [ %add3137, %cond.false.3130 ]
  %conv3140 = sext i32 %cond3139 to i64
  store i64 %conv3140, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.3141:                                  ; preds = %lor.lhs.false.3112
  %770 = load i64, i64* %outbufsize, align 8
  %conv3142 = trunc i64 %770 to i8
  %conv3143 = zext i8 %conv3142 to i32
  %add3144 = add nsw i32 0, %conv3143
  %cmp3145 = icmp sle i32 %add3144, 127
  br i1 %cmp3145, label %cond.true.3147, label %cond.false.3153

cond.true.3147:                                   ; preds = %cond.false.3141
  %771 = load i64, i64* %outbufsize, align 8
  %conv3148 = trunc i64 %771 to i8
  %conv3149 = zext i8 %conv3148 to i32
  %add3150 = add nsw i32 0, %conv3149
  %conv3151 = trunc i32 %add3150 to i8
  %conv3152 = sext i8 %conv3151 to i32
  br label %cond.end.3161

cond.false.3153:                                  ; preds = %cond.false.3141
  %772 = load i64, i64* %outbufsize, align 8
  %conv3154 = trunc i64 %772 to i8
  %conv3155 = zext i8 %conv3154 to i32
  %add3156 = add nsw i32 0, %conv3155
  %sub3157 = sub nsw i32 %add3156, -128
  %conv3158 = trunc i32 %sub3157 to i8
  %conv3159 = sext i8 %conv3158 to i32
  %add3160 = add nsw i32 %conv3159, -128
  br label %cond.end.3161

cond.end.3161:                                    ; preds = %cond.false.3153, %cond.true.3147
  %cond3162 = phi i32 [ %conv3152, %cond.true.3147 ], [ %add3160, %cond.false.3153 ]
  %conv3163 = sext i32 %cond3162 to i64
  store i64 %conv3163, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

cond.false.3164:                                  ; preds = %cond.true.2943
  %773 = load i64, i64* %outbufsize, align 8
  %mul3165 = mul nsw i64 0, %773
  %add3166 = add nsw i64 %mul3165, 256
  %mul3167 = mul nsw i64 0, %add3166
  %sub3168 = sub nsw i64 %mul3167, 1
  %cmp3169 = icmp slt i64 %sub3168, 0
  br i1 %cmp3169, label %cond.true.3171, label %cond.false.3190

cond.true.3171:                                   ; preds = %cond.false.3164
  %774 = load i64, i64* %outbufsize, align 8
  %mul3172 = mul nsw i64 0, %774
  %add3173 = add nsw i64 %mul3172, 256
  %mul3174 = mul nsw i64 0, %add3173
  %add3175 = add nsw i64 %mul3174, 0
  %neg3176 = xor i64 %add3175, -1
  %cmp3177 = icmp eq i64 %neg3176, -1
  %conv3178 = zext i1 %cmp3177 to i32
  %sub3179 = sub nsw i32 0, %conv3178
  %conv3180 = sext i32 %sub3179 to i64
  %775 = load i64, i64* %outbufsize, align 8
  %mul3181 = mul nsw i64 0, %775
  %add3182 = add nsw i64 %mul3181, 256
  %mul3183 = mul nsw i64 0, %add3182
  %add3184 = add nsw i64 %mul3183, 1
  %shl3185 = shl i64 %add3184, 62
  %sub3186 = sub nsw i64 %shl3185, 1
  %mul3187 = mul nsw i64 %sub3186, 2
  %add3188 = add nsw i64 %mul3187, 1
  %sub3189 = sub nsw i64 %conv3180, %add3188
  br label %cond.end.3195

cond.false.3190:                                  ; preds = %cond.false.3164
  %776 = load i64, i64* %outbufsize, align 8
  %mul3191 = mul nsw i64 0, %776
  %add3192 = add nsw i64 %mul3191, 256
  %mul3193 = mul nsw i64 0, %add3192
  %add3194 = add nsw i64 %mul3193, 0
  br label %cond.end.3195

cond.end.3195:                                    ; preds = %cond.false.3190, %cond.true.3171
  %cond3196 = phi i64 [ %sub3189, %cond.true.3171 ], [ %add3194, %cond.false.3190 ]
  %cmp3197 = icmp slt i64 %cond3196, 0
  br i1 %cmp3197, label %cond.true.3199, label %cond.false.3264

cond.true.3199:                                   ; preds = %cond.end.3195
  %777 = load i64, i64* %outbufsize, align 8
  %cmp3200 = icmp slt i64 %777, 0
  br i1 %cmp3200, label %cond.true.3202, label %cond.false.3238

cond.true.3202:                                   ; preds = %cond.true.3199
  %778 = load i64, i64* %outbufsize, align 8
  %mul3203 = mul nsw i64 0, %778
  %add3204 = add nsw i64 %mul3203, 256
  %mul3205 = mul nsw i64 0, %add3204
  %sub3206 = sub nsw i64 %mul3205, 1
  %cmp3207 = icmp slt i64 %sub3206, 0
  br i1 %cmp3207, label %cond.true.3209, label %cond.false.3228

cond.true.3209:                                   ; preds = %cond.true.3202
  %779 = load i64, i64* %outbufsize, align 8
  %mul3210 = mul nsw i64 0, %779
  %add3211 = add nsw i64 %mul3210, 256
  %mul3212 = mul nsw i64 0, %add3211
  %add3213 = add nsw i64 %mul3212, 0
  %neg3214 = xor i64 %add3213, -1
  %cmp3215 = icmp eq i64 %neg3214, -1
  %conv3216 = zext i1 %cmp3215 to i32
  %sub3217 = sub nsw i32 0, %conv3216
  %conv3218 = sext i32 %sub3217 to i64
  %780 = load i64, i64* %outbufsize, align 8
  %mul3219 = mul nsw i64 0, %780
  %add3220 = add nsw i64 %mul3219, 256
  %mul3221 = mul nsw i64 0, %add3220
  %add3222 = add nsw i64 %mul3221, 1
  %shl3223 = shl i64 %add3222, 62
  %sub3224 = sub nsw i64 %shl3223, 1
  %mul3225 = mul nsw i64 %sub3224, 2
  %add3226 = add nsw i64 %mul3225, 1
  %sub3227 = sub nsw i64 %conv3218, %add3226
  br label %cond.end.3233

cond.false.3228:                                  ; preds = %cond.true.3202
  %781 = load i64, i64* %outbufsize, align 8
  %mul3229 = mul nsw i64 0, %781
  %add3230 = add nsw i64 %mul3229, 256
  %mul3231 = mul nsw i64 0, %add3230
  %add3232 = add nsw i64 %mul3231, 0
  br label %cond.end.3233

cond.end.3233:                                    ; preds = %cond.false.3228, %cond.true.3209
  %cond3234 = phi i64 [ %sub3227, %cond.true.3209 ], [ %add3232, %cond.false.3228 ]
  %782 = load i64, i64* %outbufsize, align 8
  %sub3235 = sub nsw i64 %cond3234, %782
  %cmp3236 = icmp slt i64 256, %sub3235
  br i1 %cmp3236, label %cond.true.3294, label %lor.lhs.false.3280

cond.false.3238:                                  ; preds = %cond.true.3199
  %783 = load i64, i64* %outbufsize, align 8
  %mul3239 = mul nsw i64 0, %783
  %add3240 = add nsw i64 %mul3239, 256
  %mul3241 = mul nsw i64 0, %add3240
  %sub3242 = sub nsw i64 %mul3241, 1
  %cmp3243 = icmp slt i64 %sub3242, 0
  br i1 %cmp3243, label %cond.true.3245, label %cond.false.3254

cond.true.3245:                                   ; preds = %cond.false.3238
  %784 = load i64, i64* %outbufsize, align 8
  %mul3246 = mul nsw i64 0, %784
  %add3247 = add nsw i64 %mul3246, 256
  %mul3248 = mul nsw i64 0, %add3247
  %add3249 = add nsw i64 %mul3248, 1
  %shl3250 = shl i64 %add3249, 62
  %sub3251 = sub nsw i64 %shl3250, 1
  %mul3252 = mul nsw i64 %sub3251, 2
  %add3253 = add nsw i64 %mul3252, 1
  br label %cond.end.3259

cond.false.3254:                                  ; preds = %cond.false.3238
  %785 = load i64, i64* %outbufsize, align 8
  %mul3255 = mul nsw i64 0, %785
  %add3256 = add nsw i64 %mul3255, 256
  %mul3257 = mul nsw i64 0, %add3256
  %sub3258 = sub nsw i64 %mul3257, 1
  br label %cond.end.3259

cond.end.3259:                                    ; preds = %cond.false.3254, %cond.true.3245
  %cond3260 = phi i64 [ %add3253, %cond.true.3245 ], [ %sub3258, %cond.false.3254 ]
  %786 = load i64, i64* %outbufsize, align 8
  %sub3261 = sub nsw i64 %cond3260, %786
  %cmp3262 = icmp slt i64 %sub3261, 256
  br i1 %cmp3262, label %cond.true.3294, label %lor.lhs.false.3280

cond.false.3264:                                  ; preds = %cond.end.3195
  br i1 false, label %cond.true.3265, label %cond.false.3269

cond.true.3265:                                   ; preds = %cond.false.3264
  %787 = load i64, i64* %outbufsize, align 8
  %788 = load i64, i64* %outbufsize, align 8
  %add3266 = add nsw i64 256, %788
  %cmp3267 = icmp sle i64 %787, %add3266
  br i1 %cmp3267, label %cond.true.3294, label %lor.lhs.false.3280

cond.false.3269:                                  ; preds = %cond.false.3264
  %789 = load i64, i64* %outbufsize, align 8
  %cmp3270 = icmp slt i64 %789, 0
  br i1 %cmp3270, label %cond.true.3272, label %cond.false.3276

cond.true.3272:                                   ; preds = %cond.false.3269
  %790 = load i64, i64* %outbufsize, align 8
  %add3273 = add nsw i64 256, %790
  %cmp3274 = icmp sle i64 256, %add3273
  br i1 %cmp3274, label %cond.true.3294, label %lor.lhs.false.3280

cond.false.3276:                                  ; preds = %cond.false.3269
  %791 = load i64, i64* %outbufsize, align 8
  %add3277 = add nsw i64 256, %791
  %792 = load i64, i64* %outbufsize, align 8
  %cmp3278 = icmp slt i64 %add3277, %792
  br i1 %cmp3278, label %cond.true.3294, label %lor.lhs.false.3280

lor.lhs.false.3280:                               ; preds = %cond.false.3276, %cond.true.3272, %cond.true.3265, %cond.end.3259, %cond.end.3233
  %793 = load i64, i64* %outbufsize, align 8
  %add3281 = add nsw i64 256, %793
  %mul3282 = mul nsw i64 0, %add3281
  %sub3283 = sub nsw i64 %mul3282, 1
  %cmp3284 = icmp slt i64 %sub3283, 0
  br i1 %cmp3284, label %land.lhs.true.3286, label %lor.lhs.false.3290

land.lhs.true.3286:                               ; preds = %lor.lhs.false.3280
  %794 = load i64, i64* %outbufsize, align 8
  %add3287 = add nsw i64 256, %794
  %cmp3288 = icmp slt i64 %add3287, -128
  br i1 %cmp3288, label %cond.true.3294, label %lor.lhs.false.3290

lor.lhs.false.3290:                               ; preds = %land.lhs.true.3286, %lor.lhs.false.3280
  %795 = load i64, i64* %outbufsize, align 8
  %add3291 = add nsw i64 256, %795
  %cmp3292 = icmp slt i64 127, %add3291
  br i1 %cmp3292, label %cond.true.3294, label %cond.false.3317

cond.true.3294:                                   ; preds = %lor.lhs.false.3290, %land.lhs.true.3286, %cond.false.3276, %cond.true.3272, %cond.true.3265, %cond.end.3259, %cond.end.3233
  %796 = load i64, i64* %outbufsize, align 8
  %conv3295 = trunc i64 %796 to i8
  %conv3296 = zext i8 %conv3295 to i32
  %add3297 = add nsw i32 0, %conv3296
  %cmp3298 = icmp sle i32 %add3297, 127
  br i1 %cmp3298, label %cond.true.3300, label %cond.false.3306

cond.true.3300:                                   ; preds = %cond.true.3294
  %797 = load i64, i64* %outbufsize, align 8
  %conv3301 = trunc i64 %797 to i8
  %conv3302 = zext i8 %conv3301 to i32
  %add3303 = add nsw i32 0, %conv3302
  %conv3304 = trunc i32 %add3303 to i8
  %conv3305 = sext i8 %conv3304 to i32
  br label %cond.end.3314

cond.false.3306:                                  ; preds = %cond.true.3294
  %798 = load i64, i64* %outbufsize, align 8
  %conv3307 = trunc i64 %798 to i8
  %conv3308 = zext i8 %conv3307 to i32
  %add3309 = add nsw i32 0, %conv3308
  %sub3310 = sub nsw i32 %add3309, -128
  %conv3311 = trunc i32 %sub3310 to i8
  %conv3312 = sext i8 %conv3311 to i32
  %add3313 = add nsw i32 %conv3312, -128
  br label %cond.end.3314

cond.end.3314:                                    ; preds = %cond.false.3306, %cond.true.3300
  %cond3315 = phi i32 [ %conv3305, %cond.true.3300 ], [ %add3313, %cond.false.3306 ]
  %conv3316 = sext i32 %cond3315 to i64
  store i64 %conv3316, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.3317:                                  ; preds = %lor.lhs.false.3290
  %799 = load i64, i64* %outbufsize, align 8
  %conv3318 = trunc i64 %799 to i8
  %conv3319 = zext i8 %conv3318 to i32
  %add3320 = add nsw i32 0, %conv3319
  %cmp3321 = icmp sle i32 %add3320, 127
  br i1 %cmp3321, label %cond.true.3323, label %cond.false.3329

cond.true.3323:                                   ; preds = %cond.false.3317
  %800 = load i64, i64* %outbufsize, align 8
  %conv3324 = trunc i64 %800 to i8
  %conv3325 = zext i8 %conv3324 to i32
  %add3326 = add nsw i32 0, %conv3325
  %conv3327 = trunc i32 %add3326 to i8
  %conv3328 = sext i8 %conv3327 to i32
  br label %cond.end.3337

cond.false.3329:                                  ; preds = %cond.false.3317
  %801 = load i64, i64* %outbufsize, align 8
  %conv3330 = trunc i64 %801 to i8
  %conv3331 = zext i8 %conv3330 to i32
  %add3332 = add nsw i32 0, %conv3331
  %sub3333 = sub nsw i32 %add3332, -128
  %conv3334 = trunc i32 %sub3333 to i8
  %conv3335 = sext i8 %conv3334 to i32
  %add3336 = add nsw i32 %conv3335, -128
  br label %cond.end.3337

cond.end.3337:                                    ; preds = %cond.false.3329, %cond.true.3323
  %cond3338 = phi i32 [ %conv3328, %cond.true.3323 ], [ %add3336, %cond.false.3329 ]
  %conv3339 = sext i32 %cond3338 to i64
  store i64 %conv3339, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

cond.false.3340:                                  ; preds = %lor.lhs.false.2942
  br i1 false, label %cond.true.3341, label %cond.false.3738

cond.true.3341:                                   ; preds = %cond.false.3340
  br i1 false, label %cond.true.3342, label %cond.false.3562

cond.true.3342:                                   ; preds = %cond.true.3341
  %802 = load i64, i64* %outbufsize, align 8
  %conv3343 = trunc i64 %802 to i16
  %conv3344 = sext i16 %conv3343 to i32
  %mul3345 = mul nsw i32 0, %conv3344
  %add3346 = add nsw i32 %mul3345, 256
  %mul3347 = mul nsw i32 0, %add3346
  %sub3348 = sub nsw i32 %mul3347, 1
  %cmp3349 = icmp slt i32 %sub3348, 0
  br i1 %cmp3349, label %cond.true.3351, label %cond.false.3373

cond.true.3351:                                   ; preds = %cond.true.3342
  %803 = load i64, i64* %outbufsize, align 8
  %conv3352 = trunc i64 %803 to i16
  %conv3353 = sext i16 %conv3352 to i32
  %mul3354 = mul nsw i32 0, %conv3353
  %add3355 = add nsw i32 %mul3354, 256
  %mul3356 = mul nsw i32 0, %add3355
  %add3357 = add nsw i32 %mul3356, 0
  %neg3358 = xor i32 %add3357, -1
  %cmp3359 = icmp eq i32 %neg3358, -1
  %conv3360 = zext i1 %cmp3359 to i32
  %sub3361 = sub nsw i32 0, %conv3360
  %804 = load i64, i64* %outbufsize, align 8
  %conv3362 = trunc i64 %804 to i16
  %conv3363 = sext i16 %conv3362 to i32
  %mul3364 = mul nsw i32 0, %conv3363
  %add3365 = add nsw i32 %mul3364, 256
  %mul3366 = mul nsw i32 0, %add3365
  %add3367 = add nsw i32 %mul3366, 1
  %shl3368 = shl i32 %add3367, 30
  %sub3369 = sub nsw i32 %shl3368, 1
  %mul3370 = mul nsw i32 %sub3369, 2
  %add3371 = add nsw i32 %mul3370, 1
  %sub3372 = sub nsw i32 %sub3361, %add3371
  br label %cond.end.3380

cond.false.3373:                                  ; preds = %cond.true.3342
  %805 = load i64, i64* %outbufsize, align 8
  %conv3374 = trunc i64 %805 to i16
  %conv3375 = sext i16 %conv3374 to i32
  %mul3376 = mul nsw i32 0, %conv3375
  %add3377 = add nsw i32 %mul3376, 256
  %mul3378 = mul nsw i32 0, %add3377
  %add3379 = add nsw i32 %mul3378, 0
  br label %cond.end.3380

cond.end.3380:                                    ; preds = %cond.false.3373, %cond.true.3351
  %cond3381 = phi i32 [ %sub3372, %cond.true.3351 ], [ %add3379, %cond.false.3373 ]
  %cmp3382 = icmp slt i32 %cond3381, 0
  br i1 %cmp3382, label %cond.true.3384, label %cond.false.3468

cond.true.3384:                                   ; preds = %cond.end.3380
  %806 = load i64, i64* %outbufsize, align 8
  %conv3385 = trunc i64 %806 to i16
  %conv3386 = sext i16 %conv3385 to i32
  %cmp3387 = icmp slt i32 %conv3386, 0
  br i1 %cmp3387, label %cond.true.3389, label %cond.false.3434

cond.true.3389:                                   ; preds = %cond.true.3384
  %807 = load i64, i64* %outbufsize, align 8
  %conv3390 = trunc i64 %807 to i16
  %conv3391 = sext i16 %conv3390 to i32
  %mul3392 = mul nsw i32 0, %conv3391
  %add3393 = add nsw i32 %mul3392, 256
  %mul3394 = mul nsw i32 0, %add3393
  %sub3395 = sub nsw i32 %mul3394, 1
  %cmp3396 = icmp slt i32 %sub3395, 0
  br i1 %cmp3396, label %cond.true.3398, label %cond.false.3420

cond.true.3398:                                   ; preds = %cond.true.3389
  %808 = load i64, i64* %outbufsize, align 8
  %conv3399 = trunc i64 %808 to i16
  %conv3400 = sext i16 %conv3399 to i32
  %mul3401 = mul nsw i32 0, %conv3400
  %add3402 = add nsw i32 %mul3401, 256
  %mul3403 = mul nsw i32 0, %add3402
  %add3404 = add nsw i32 %mul3403, 0
  %neg3405 = xor i32 %add3404, -1
  %cmp3406 = icmp eq i32 %neg3405, -1
  %conv3407 = zext i1 %cmp3406 to i32
  %sub3408 = sub nsw i32 0, %conv3407
  %809 = load i64, i64* %outbufsize, align 8
  %conv3409 = trunc i64 %809 to i16
  %conv3410 = sext i16 %conv3409 to i32
  %mul3411 = mul nsw i32 0, %conv3410
  %add3412 = add nsw i32 %mul3411, 256
  %mul3413 = mul nsw i32 0, %add3412
  %add3414 = add nsw i32 %mul3413, 1
  %shl3415 = shl i32 %add3414, 30
  %sub3416 = sub nsw i32 %shl3415, 1
  %mul3417 = mul nsw i32 %sub3416, 2
  %add3418 = add nsw i32 %mul3417, 1
  %sub3419 = sub nsw i32 %sub3408, %add3418
  br label %cond.end.3427

cond.false.3420:                                  ; preds = %cond.true.3389
  %810 = load i64, i64* %outbufsize, align 8
  %conv3421 = trunc i64 %810 to i16
  %conv3422 = sext i16 %conv3421 to i32
  %mul3423 = mul nsw i32 0, %conv3422
  %add3424 = add nsw i32 %mul3423, 256
  %mul3425 = mul nsw i32 0, %add3424
  %add3426 = add nsw i32 %mul3425, 0
  br label %cond.end.3427

cond.end.3427:                                    ; preds = %cond.false.3420, %cond.true.3398
  %cond3428 = phi i32 [ %sub3419, %cond.true.3398 ], [ %add3426, %cond.false.3420 ]
  %811 = load i64, i64* %outbufsize, align 8
  %conv3429 = trunc i64 %811 to i16
  %conv3430 = sext i16 %conv3429 to i32
  %sub3431 = sub nsw i32 %cond3428, %conv3430
  %cmp3432 = icmp slt i32 256, %sub3431
  br i1 %cmp3432, label %cond.true.3516, label %lor.lhs.false.3496

cond.false.3434:                                  ; preds = %cond.true.3384
  %812 = load i64, i64* %outbufsize, align 8
  %conv3435 = trunc i64 %812 to i16
  %conv3436 = sext i16 %conv3435 to i32
  %mul3437 = mul nsw i32 0, %conv3436
  %add3438 = add nsw i32 %mul3437, 256
  %mul3439 = mul nsw i32 0, %add3438
  %sub3440 = sub nsw i32 %mul3439, 1
  %cmp3441 = icmp slt i32 %sub3440, 0
  br i1 %cmp3441, label %cond.true.3443, label %cond.false.3454

cond.true.3443:                                   ; preds = %cond.false.3434
  %813 = load i64, i64* %outbufsize, align 8
  %conv3444 = trunc i64 %813 to i16
  %conv3445 = sext i16 %conv3444 to i32
  %mul3446 = mul nsw i32 0, %conv3445
  %add3447 = add nsw i32 %mul3446, 256
  %mul3448 = mul nsw i32 0, %add3447
  %add3449 = add nsw i32 %mul3448, 1
  %shl3450 = shl i32 %add3449, 30
  %sub3451 = sub nsw i32 %shl3450, 1
  %mul3452 = mul nsw i32 %sub3451, 2
  %add3453 = add nsw i32 %mul3452, 1
  br label %cond.end.3461

cond.false.3454:                                  ; preds = %cond.false.3434
  %814 = load i64, i64* %outbufsize, align 8
  %conv3455 = trunc i64 %814 to i16
  %conv3456 = sext i16 %conv3455 to i32
  %mul3457 = mul nsw i32 0, %conv3456
  %add3458 = add nsw i32 %mul3457, 256
  %mul3459 = mul nsw i32 0, %add3458
  %sub3460 = sub nsw i32 %mul3459, 1
  br label %cond.end.3461

cond.end.3461:                                    ; preds = %cond.false.3454, %cond.true.3443
  %cond3462 = phi i32 [ %add3453, %cond.true.3443 ], [ %sub3460, %cond.false.3454 ]
  %815 = load i64, i64* %outbufsize, align 8
  %conv3463 = trunc i64 %815 to i16
  %conv3464 = sext i16 %conv3463 to i32
  %sub3465 = sub nsw i32 %cond3462, %conv3464
  %cmp3466 = icmp slt i32 %sub3465, 256
  br i1 %cmp3466, label %cond.true.3516, label %lor.lhs.false.3496

cond.false.3468:                                  ; preds = %cond.end.3380
  br i1 false, label %cond.true.3469, label %cond.false.3477

cond.true.3469:                                   ; preds = %cond.false.3468
  %816 = load i64, i64* %outbufsize, align 8
  %conv3470 = trunc i64 %816 to i16
  %conv3471 = sext i16 %conv3470 to i32
  %817 = load i64, i64* %outbufsize, align 8
  %conv3472 = trunc i64 %817 to i16
  %conv3473 = sext i16 %conv3472 to i32
  %add3474 = add nsw i32 256, %conv3473
  %cmp3475 = icmp sle i32 %conv3471, %add3474
  br i1 %cmp3475, label %cond.true.3516, label %lor.lhs.false.3496

cond.false.3477:                                  ; preds = %cond.false.3468
  %818 = load i64, i64* %outbufsize, align 8
  %conv3478 = trunc i64 %818 to i16
  %conv3479 = sext i16 %conv3478 to i32
  %cmp3480 = icmp slt i32 %conv3479, 0
  br i1 %cmp3480, label %cond.true.3482, label %cond.false.3488

cond.true.3482:                                   ; preds = %cond.false.3477
  %819 = load i64, i64* %outbufsize, align 8
  %conv3483 = trunc i64 %819 to i16
  %conv3484 = sext i16 %conv3483 to i32
  %add3485 = add nsw i32 256, %conv3484
  %cmp3486 = icmp sle i32 256, %add3485
  br i1 %cmp3486, label %cond.true.3516, label %lor.lhs.false.3496

cond.false.3488:                                  ; preds = %cond.false.3477
  %820 = load i64, i64* %outbufsize, align 8
  %conv3489 = trunc i64 %820 to i16
  %conv3490 = sext i16 %conv3489 to i32
  %add3491 = add nsw i32 256, %conv3490
  %821 = load i64, i64* %outbufsize, align 8
  %conv3492 = trunc i64 %821 to i16
  %conv3493 = sext i16 %conv3492 to i32
  %cmp3494 = icmp slt i32 %add3491, %conv3493
  br i1 %cmp3494, label %cond.true.3516, label %lor.lhs.false.3496

lor.lhs.false.3496:                               ; preds = %cond.false.3488, %cond.true.3482, %cond.true.3469, %cond.end.3461, %cond.end.3427
  %822 = load i64, i64* %outbufsize, align 8
  %conv3497 = trunc i64 %822 to i16
  %conv3498 = sext i16 %conv3497 to i32
  %add3499 = add nsw i32 256, %conv3498
  %mul3500 = mul nsw i32 0, %add3499
  %sub3501 = sub nsw i32 %mul3500, 1
  %cmp3502 = icmp slt i32 %sub3501, 0
  br i1 %cmp3502, label %land.lhs.true.3504, label %lor.lhs.false.3510

land.lhs.true.3504:                               ; preds = %lor.lhs.false.3496
  %823 = load i64, i64* %outbufsize, align 8
  %conv3505 = trunc i64 %823 to i16
  %conv3506 = sext i16 %conv3505 to i32
  %add3507 = add nsw i32 256, %conv3506
  %cmp3508 = icmp slt i32 %add3507, -32768
  br i1 %cmp3508, label %cond.true.3516, label %lor.lhs.false.3510

lor.lhs.false.3510:                               ; preds = %land.lhs.true.3504, %lor.lhs.false.3496
  %824 = load i64, i64* %outbufsize, align 8
  %conv3511 = trunc i64 %824 to i16
  %conv3512 = sext i16 %conv3511 to i32
  %add3513 = add nsw i32 256, %conv3512
  %cmp3514 = icmp slt i32 32767, %add3513
  br i1 %cmp3514, label %cond.true.3516, label %cond.false.3539

cond.true.3516:                                   ; preds = %lor.lhs.false.3510, %land.lhs.true.3504, %cond.false.3488, %cond.true.3482, %cond.true.3469, %cond.end.3461, %cond.end.3427
  %825 = load i64, i64* %outbufsize, align 8
  %conv3517 = trunc i64 %825 to i16
  %conv3518 = zext i16 %conv3517 to i32
  %add3519 = add nsw i32 256, %conv3518
  %cmp3520 = icmp sle i32 %add3519, 32767
  br i1 %cmp3520, label %cond.true.3522, label %cond.false.3528

cond.true.3522:                                   ; preds = %cond.true.3516
  %826 = load i64, i64* %outbufsize, align 8
  %conv3523 = trunc i64 %826 to i16
  %conv3524 = zext i16 %conv3523 to i32
  %add3525 = add nsw i32 256, %conv3524
  %conv3526 = trunc i32 %add3525 to i16
  %conv3527 = sext i16 %conv3526 to i32
  br label %cond.end.3536

cond.false.3528:                                  ; preds = %cond.true.3516
  %827 = load i64, i64* %outbufsize, align 8
  %conv3529 = trunc i64 %827 to i16
  %conv3530 = zext i16 %conv3529 to i32
  %add3531 = add nsw i32 256, %conv3530
  %sub3532 = sub nsw i32 %add3531, -32768
  %conv3533 = trunc i32 %sub3532 to i16
  %conv3534 = sext i16 %conv3533 to i32
  %add3535 = add nsw i32 %conv3534, -32768
  br label %cond.end.3536

cond.end.3536:                                    ; preds = %cond.false.3528, %cond.true.3522
  %cond3537 = phi i32 [ %conv3527, %cond.true.3522 ], [ %add3535, %cond.false.3528 ]
  %conv3538 = sext i32 %cond3537 to i64
  store i64 %conv3538, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.3539:                                  ; preds = %lor.lhs.false.3510
  %828 = load i64, i64* %outbufsize, align 8
  %conv3540 = trunc i64 %828 to i16
  %conv3541 = zext i16 %conv3540 to i32
  %add3542 = add nsw i32 256, %conv3541
  %cmp3543 = icmp sle i32 %add3542, 32767
  br i1 %cmp3543, label %cond.true.3545, label %cond.false.3551

cond.true.3545:                                   ; preds = %cond.false.3539
  %829 = load i64, i64* %outbufsize, align 8
  %conv3546 = trunc i64 %829 to i16
  %conv3547 = zext i16 %conv3546 to i32
  %add3548 = add nsw i32 256, %conv3547
  %conv3549 = trunc i32 %add3548 to i16
  %conv3550 = sext i16 %conv3549 to i32
  br label %cond.end.3559

cond.false.3551:                                  ; preds = %cond.false.3539
  %830 = load i64, i64* %outbufsize, align 8
  %conv3552 = trunc i64 %830 to i16
  %conv3553 = zext i16 %conv3552 to i32
  %add3554 = add nsw i32 256, %conv3553
  %sub3555 = sub nsw i32 %add3554, -32768
  %conv3556 = trunc i32 %sub3555 to i16
  %conv3557 = sext i16 %conv3556 to i32
  %add3558 = add nsw i32 %conv3557, -32768
  br label %cond.end.3559

cond.end.3559:                                    ; preds = %cond.false.3551, %cond.true.3545
  %cond3560 = phi i32 [ %conv3550, %cond.true.3545 ], [ %add3558, %cond.false.3551 ]
  %conv3561 = sext i32 %cond3560 to i64
  store i64 %conv3561, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

cond.false.3562:                                  ; preds = %cond.true.3341
  %831 = load i64, i64* %outbufsize, align 8
  %mul3563 = mul nsw i64 0, %831
  %add3564 = add nsw i64 %mul3563, 256
  %mul3565 = mul nsw i64 0, %add3564
  %sub3566 = sub nsw i64 %mul3565, 1
  %cmp3567 = icmp slt i64 %sub3566, 0
  br i1 %cmp3567, label %cond.true.3569, label %cond.false.3588

cond.true.3569:                                   ; preds = %cond.false.3562
  %832 = load i64, i64* %outbufsize, align 8
  %mul3570 = mul nsw i64 0, %832
  %add3571 = add nsw i64 %mul3570, 256
  %mul3572 = mul nsw i64 0, %add3571
  %add3573 = add nsw i64 %mul3572, 0
  %neg3574 = xor i64 %add3573, -1
  %cmp3575 = icmp eq i64 %neg3574, -1
  %conv3576 = zext i1 %cmp3575 to i32
  %sub3577 = sub nsw i32 0, %conv3576
  %conv3578 = sext i32 %sub3577 to i64
  %833 = load i64, i64* %outbufsize, align 8
  %mul3579 = mul nsw i64 0, %833
  %add3580 = add nsw i64 %mul3579, 256
  %mul3581 = mul nsw i64 0, %add3580
  %add3582 = add nsw i64 %mul3581, 1
  %shl3583 = shl i64 %add3582, 62
  %sub3584 = sub nsw i64 %shl3583, 1
  %mul3585 = mul nsw i64 %sub3584, 2
  %add3586 = add nsw i64 %mul3585, 1
  %sub3587 = sub nsw i64 %conv3578, %add3586
  br label %cond.end.3593

cond.false.3588:                                  ; preds = %cond.false.3562
  %834 = load i64, i64* %outbufsize, align 8
  %mul3589 = mul nsw i64 0, %834
  %add3590 = add nsw i64 %mul3589, 256
  %mul3591 = mul nsw i64 0, %add3590
  %add3592 = add nsw i64 %mul3591, 0
  br label %cond.end.3593

cond.end.3593:                                    ; preds = %cond.false.3588, %cond.true.3569
  %cond3594 = phi i64 [ %sub3587, %cond.true.3569 ], [ %add3592, %cond.false.3588 ]
  %cmp3595 = icmp slt i64 %cond3594, 0
  br i1 %cmp3595, label %cond.true.3597, label %cond.false.3662

cond.true.3597:                                   ; preds = %cond.end.3593
  %835 = load i64, i64* %outbufsize, align 8
  %cmp3598 = icmp slt i64 %835, 0
  br i1 %cmp3598, label %cond.true.3600, label %cond.false.3636

cond.true.3600:                                   ; preds = %cond.true.3597
  %836 = load i64, i64* %outbufsize, align 8
  %mul3601 = mul nsw i64 0, %836
  %add3602 = add nsw i64 %mul3601, 256
  %mul3603 = mul nsw i64 0, %add3602
  %sub3604 = sub nsw i64 %mul3603, 1
  %cmp3605 = icmp slt i64 %sub3604, 0
  br i1 %cmp3605, label %cond.true.3607, label %cond.false.3626

cond.true.3607:                                   ; preds = %cond.true.3600
  %837 = load i64, i64* %outbufsize, align 8
  %mul3608 = mul nsw i64 0, %837
  %add3609 = add nsw i64 %mul3608, 256
  %mul3610 = mul nsw i64 0, %add3609
  %add3611 = add nsw i64 %mul3610, 0
  %neg3612 = xor i64 %add3611, -1
  %cmp3613 = icmp eq i64 %neg3612, -1
  %conv3614 = zext i1 %cmp3613 to i32
  %sub3615 = sub nsw i32 0, %conv3614
  %conv3616 = sext i32 %sub3615 to i64
  %838 = load i64, i64* %outbufsize, align 8
  %mul3617 = mul nsw i64 0, %838
  %add3618 = add nsw i64 %mul3617, 256
  %mul3619 = mul nsw i64 0, %add3618
  %add3620 = add nsw i64 %mul3619, 1
  %shl3621 = shl i64 %add3620, 62
  %sub3622 = sub nsw i64 %shl3621, 1
  %mul3623 = mul nsw i64 %sub3622, 2
  %add3624 = add nsw i64 %mul3623, 1
  %sub3625 = sub nsw i64 %conv3616, %add3624
  br label %cond.end.3631

cond.false.3626:                                  ; preds = %cond.true.3600
  %839 = load i64, i64* %outbufsize, align 8
  %mul3627 = mul nsw i64 0, %839
  %add3628 = add nsw i64 %mul3627, 256
  %mul3629 = mul nsw i64 0, %add3628
  %add3630 = add nsw i64 %mul3629, 0
  br label %cond.end.3631

cond.end.3631:                                    ; preds = %cond.false.3626, %cond.true.3607
  %cond3632 = phi i64 [ %sub3625, %cond.true.3607 ], [ %add3630, %cond.false.3626 ]
  %840 = load i64, i64* %outbufsize, align 8
  %sub3633 = sub nsw i64 %cond3632, %840
  %cmp3634 = icmp slt i64 256, %sub3633
  br i1 %cmp3634, label %cond.true.3692, label %lor.lhs.false.3678

cond.false.3636:                                  ; preds = %cond.true.3597
  %841 = load i64, i64* %outbufsize, align 8
  %mul3637 = mul nsw i64 0, %841
  %add3638 = add nsw i64 %mul3637, 256
  %mul3639 = mul nsw i64 0, %add3638
  %sub3640 = sub nsw i64 %mul3639, 1
  %cmp3641 = icmp slt i64 %sub3640, 0
  br i1 %cmp3641, label %cond.true.3643, label %cond.false.3652

cond.true.3643:                                   ; preds = %cond.false.3636
  %842 = load i64, i64* %outbufsize, align 8
  %mul3644 = mul nsw i64 0, %842
  %add3645 = add nsw i64 %mul3644, 256
  %mul3646 = mul nsw i64 0, %add3645
  %add3647 = add nsw i64 %mul3646, 1
  %shl3648 = shl i64 %add3647, 62
  %sub3649 = sub nsw i64 %shl3648, 1
  %mul3650 = mul nsw i64 %sub3649, 2
  %add3651 = add nsw i64 %mul3650, 1
  br label %cond.end.3657

cond.false.3652:                                  ; preds = %cond.false.3636
  %843 = load i64, i64* %outbufsize, align 8
  %mul3653 = mul nsw i64 0, %843
  %add3654 = add nsw i64 %mul3653, 256
  %mul3655 = mul nsw i64 0, %add3654
  %sub3656 = sub nsw i64 %mul3655, 1
  br label %cond.end.3657

cond.end.3657:                                    ; preds = %cond.false.3652, %cond.true.3643
  %cond3658 = phi i64 [ %add3651, %cond.true.3643 ], [ %sub3656, %cond.false.3652 ]
  %844 = load i64, i64* %outbufsize, align 8
  %sub3659 = sub nsw i64 %cond3658, %844
  %cmp3660 = icmp slt i64 %sub3659, 256
  br i1 %cmp3660, label %cond.true.3692, label %lor.lhs.false.3678

cond.false.3662:                                  ; preds = %cond.end.3593
  br i1 false, label %cond.true.3663, label %cond.false.3667

cond.true.3663:                                   ; preds = %cond.false.3662
  %845 = load i64, i64* %outbufsize, align 8
  %846 = load i64, i64* %outbufsize, align 8
  %add3664 = add nsw i64 256, %846
  %cmp3665 = icmp sle i64 %845, %add3664
  br i1 %cmp3665, label %cond.true.3692, label %lor.lhs.false.3678

cond.false.3667:                                  ; preds = %cond.false.3662
  %847 = load i64, i64* %outbufsize, align 8
  %cmp3668 = icmp slt i64 %847, 0
  br i1 %cmp3668, label %cond.true.3670, label %cond.false.3674

cond.true.3670:                                   ; preds = %cond.false.3667
  %848 = load i64, i64* %outbufsize, align 8
  %add3671 = add nsw i64 256, %848
  %cmp3672 = icmp sle i64 256, %add3671
  br i1 %cmp3672, label %cond.true.3692, label %lor.lhs.false.3678

cond.false.3674:                                  ; preds = %cond.false.3667
  %849 = load i64, i64* %outbufsize, align 8
  %add3675 = add nsw i64 256, %849
  %850 = load i64, i64* %outbufsize, align 8
  %cmp3676 = icmp slt i64 %add3675, %850
  br i1 %cmp3676, label %cond.true.3692, label %lor.lhs.false.3678

lor.lhs.false.3678:                               ; preds = %cond.false.3674, %cond.true.3670, %cond.true.3663, %cond.end.3657, %cond.end.3631
  %851 = load i64, i64* %outbufsize, align 8
  %add3679 = add nsw i64 256, %851
  %mul3680 = mul nsw i64 0, %add3679
  %sub3681 = sub nsw i64 %mul3680, 1
  %cmp3682 = icmp slt i64 %sub3681, 0
  br i1 %cmp3682, label %land.lhs.true.3684, label %lor.lhs.false.3688

land.lhs.true.3684:                               ; preds = %lor.lhs.false.3678
  %852 = load i64, i64* %outbufsize, align 8
  %add3685 = add nsw i64 256, %852
  %cmp3686 = icmp slt i64 %add3685, -32768
  br i1 %cmp3686, label %cond.true.3692, label %lor.lhs.false.3688

lor.lhs.false.3688:                               ; preds = %land.lhs.true.3684, %lor.lhs.false.3678
  %853 = load i64, i64* %outbufsize, align 8
  %add3689 = add nsw i64 256, %853
  %cmp3690 = icmp slt i64 32767, %add3689
  br i1 %cmp3690, label %cond.true.3692, label %cond.false.3715

cond.true.3692:                                   ; preds = %lor.lhs.false.3688, %land.lhs.true.3684, %cond.false.3674, %cond.true.3670, %cond.true.3663, %cond.end.3657, %cond.end.3631
  %854 = load i64, i64* %outbufsize, align 8
  %conv3693 = trunc i64 %854 to i16
  %conv3694 = zext i16 %conv3693 to i32
  %add3695 = add nsw i32 256, %conv3694
  %cmp3696 = icmp sle i32 %add3695, 32767
  br i1 %cmp3696, label %cond.true.3698, label %cond.false.3704

cond.true.3698:                                   ; preds = %cond.true.3692
  %855 = load i64, i64* %outbufsize, align 8
  %conv3699 = trunc i64 %855 to i16
  %conv3700 = zext i16 %conv3699 to i32
  %add3701 = add nsw i32 256, %conv3700
  %conv3702 = trunc i32 %add3701 to i16
  %conv3703 = sext i16 %conv3702 to i32
  br label %cond.end.3712

cond.false.3704:                                  ; preds = %cond.true.3692
  %856 = load i64, i64* %outbufsize, align 8
  %conv3705 = trunc i64 %856 to i16
  %conv3706 = zext i16 %conv3705 to i32
  %add3707 = add nsw i32 256, %conv3706
  %sub3708 = sub nsw i32 %add3707, -32768
  %conv3709 = trunc i32 %sub3708 to i16
  %conv3710 = sext i16 %conv3709 to i32
  %add3711 = add nsw i32 %conv3710, -32768
  br label %cond.end.3712

cond.end.3712:                                    ; preds = %cond.false.3704, %cond.true.3698
  %cond3713 = phi i32 [ %conv3703, %cond.true.3698 ], [ %add3711, %cond.false.3704 ]
  %conv3714 = sext i32 %cond3713 to i64
  store i64 %conv3714, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.3715:                                  ; preds = %lor.lhs.false.3688
  %857 = load i64, i64* %outbufsize, align 8
  %conv3716 = trunc i64 %857 to i16
  %conv3717 = zext i16 %conv3716 to i32
  %add3718 = add nsw i32 256, %conv3717
  %cmp3719 = icmp sle i32 %add3718, 32767
  br i1 %cmp3719, label %cond.true.3721, label %cond.false.3727

cond.true.3721:                                   ; preds = %cond.false.3715
  %858 = load i64, i64* %outbufsize, align 8
  %conv3722 = trunc i64 %858 to i16
  %conv3723 = zext i16 %conv3722 to i32
  %add3724 = add nsw i32 256, %conv3723
  %conv3725 = trunc i32 %add3724 to i16
  %conv3726 = sext i16 %conv3725 to i32
  br label %cond.end.3735

cond.false.3727:                                  ; preds = %cond.false.3715
  %859 = load i64, i64* %outbufsize, align 8
  %conv3728 = trunc i64 %859 to i16
  %conv3729 = zext i16 %conv3728 to i32
  %add3730 = add nsw i32 256, %conv3729
  %sub3731 = sub nsw i32 %add3730, -32768
  %conv3732 = trunc i32 %sub3731 to i16
  %conv3733 = sext i16 %conv3732 to i32
  %add3734 = add nsw i32 %conv3733, -32768
  br label %cond.end.3735

cond.end.3735:                                    ; preds = %cond.false.3727, %cond.true.3721
  %cond3736 = phi i32 [ %conv3726, %cond.true.3721 ], [ %add3734, %cond.false.3727 ]
  %conv3737 = sext i32 %cond3736 to i64
  store i64 %conv3737, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

cond.false.3738:                                  ; preds = %cond.false.3340
  br i1 false, label %cond.true.3739, label %cond.false.4085

cond.true.3739:                                   ; preds = %cond.false.3738
  br i1 false, label %cond.true.3740, label %cond.false.3923

cond.true.3740:                                   ; preds = %cond.true.3739
  %860 = load i64, i64* %outbufsize, align 8
  %conv3741 = trunc i64 %860 to i32
  %mul3742 = mul nsw i32 0, %conv3741
  %add3743 = add nsw i32 %mul3742, 256
  %mul3744 = mul nsw i32 0, %add3743
  %sub3745 = sub nsw i32 %mul3744, 1
  %cmp3746 = icmp slt i32 %sub3745, 0
  br i1 %cmp3746, label %cond.true.3748, label %cond.false.3768

cond.true.3748:                                   ; preds = %cond.true.3740
  %861 = load i64, i64* %outbufsize, align 8
  %conv3749 = trunc i64 %861 to i32
  %mul3750 = mul nsw i32 0, %conv3749
  %add3751 = add nsw i32 %mul3750, 256
  %mul3752 = mul nsw i32 0, %add3751
  %add3753 = add nsw i32 %mul3752, 0
  %neg3754 = xor i32 %add3753, -1
  %cmp3755 = icmp eq i32 %neg3754, -1
  %conv3756 = zext i1 %cmp3755 to i32
  %sub3757 = sub nsw i32 0, %conv3756
  %862 = load i64, i64* %outbufsize, align 8
  %conv3758 = trunc i64 %862 to i32
  %mul3759 = mul nsw i32 0, %conv3758
  %add3760 = add nsw i32 %mul3759, 256
  %mul3761 = mul nsw i32 0, %add3760
  %add3762 = add nsw i32 %mul3761, 1
  %shl3763 = shl i32 %add3762, 30
  %sub3764 = sub nsw i32 %shl3763, 1
  %mul3765 = mul nsw i32 %sub3764, 2
  %add3766 = add nsw i32 %mul3765, 1
  %sub3767 = sub nsw i32 %sub3757, %add3766
  br label %cond.end.3774

cond.false.3768:                                  ; preds = %cond.true.3740
  %863 = load i64, i64* %outbufsize, align 8
  %conv3769 = trunc i64 %863 to i32
  %mul3770 = mul nsw i32 0, %conv3769
  %add3771 = add nsw i32 %mul3770, 256
  %mul3772 = mul nsw i32 0, %add3771
  %add3773 = add nsw i32 %mul3772, 0
  br label %cond.end.3774

cond.end.3774:                                    ; preds = %cond.false.3768, %cond.true.3748
  %cond3775 = phi i32 [ %sub3767, %cond.true.3748 ], [ %add3773, %cond.false.3768 ]
  %cmp3776 = icmp slt i32 %cond3775, 0
  br i1 %cmp3776, label %cond.true.3778, label %cond.false.3852

cond.true.3778:                                   ; preds = %cond.end.3774
  %864 = load i64, i64* %outbufsize, align 8
  %conv3779 = trunc i64 %864 to i32
  %cmp3780 = icmp slt i32 %conv3779, 0
  br i1 %cmp3780, label %cond.true.3782, label %cond.false.3822

cond.true.3782:                                   ; preds = %cond.true.3778
  %865 = load i64, i64* %outbufsize, align 8
  %conv3783 = trunc i64 %865 to i32
  %mul3784 = mul nsw i32 0, %conv3783
  %add3785 = add nsw i32 %mul3784, 256
  %mul3786 = mul nsw i32 0, %add3785
  %sub3787 = sub nsw i32 %mul3786, 1
  %cmp3788 = icmp slt i32 %sub3787, 0
  br i1 %cmp3788, label %cond.true.3790, label %cond.false.3810

cond.true.3790:                                   ; preds = %cond.true.3782
  %866 = load i64, i64* %outbufsize, align 8
  %conv3791 = trunc i64 %866 to i32
  %mul3792 = mul nsw i32 0, %conv3791
  %add3793 = add nsw i32 %mul3792, 256
  %mul3794 = mul nsw i32 0, %add3793
  %add3795 = add nsw i32 %mul3794, 0
  %neg3796 = xor i32 %add3795, -1
  %cmp3797 = icmp eq i32 %neg3796, -1
  %conv3798 = zext i1 %cmp3797 to i32
  %sub3799 = sub nsw i32 0, %conv3798
  %867 = load i64, i64* %outbufsize, align 8
  %conv3800 = trunc i64 %867 to i32
  %mul3801 = mul nsw i32 0, %conv3800
  %add3802 = add nsw i32 %mul3801, 256
  %mul3803 = mul nsw i32 0, %add3802
  %add3804 = add nsw i32 %mul3803, 1
  %shl3805 = shl i32 %add3804, 30
  %sub3806 = sub nsw i32 %shl3805, 1
  %mul3807 = mul nsw i32 %sub3806, 2
  %add3808 = add nsw i32 %mul3807, 1
  %sub3809 = sub nsw i32 %sub3799, %add3808
  br label %cond.end.3816

cond.false.3810:                                  ; preds = %cond.true.3782
  %868 = load i64, i64* %outbufsize, align 8
  %conv3811 = trunc i64 %868 to i32
  %mul3812 = mul nsw i32 0, %conv3811
  %add3813 = add nsw i32 %mul3812, 256
  %mul3814 = mul nsw i32 0, %add3813
  %add3815 = add nsw i32 %mul3814, 0
  br label %cond.end.3816

cond.end.3816:                                    ; preds = %cond.false.3810, %cond.true.3790
  %cond3817 = phi i32 [ %sub3809, %cond.true.3790 ], [ %add3815, %cond.false.3810 ]
  %869 = load i64, i64* %outbufsize, align 8
  %conv3818 = trunc i64 %869 to i32
  %sub3819 = sub nsw i32 %cond3817, %conv3818
  %cmp3820 = icmp slt i32 256, %sub3819
  br i1 %cmp3820, label %cond.true.3891, label %lor.lhs.false.3874

cond.false.3822:                                  ; preds = %cond.true.3778
  %870 = load i64, i64* %outbufsize, align 8
  %conv3823 = trunc i64 %870 to i32
  %mul3824 = mul nsw i32 0, %conv3823
  %add3825 = add nsw i32 %mul3824, 256
  %mul3826 = mul nsw i32 0, %add3825
  %sub3827 = sub nsw i32 %mul3826, 1
  %cmp3828 = icmp slt i32 %sub3827, 0
  br i1 %cmp3828, label %cond.true.3830, label %cond.false.3840

cond.true.3830:                                   ; preds = %cond.false.3822
  %871 = load i64, i64* %outbufsize, align 8
  %conv3831 = trunc i64 %871 to i32
  %mul3832 = mul nsw i32 0, %conv3831
  %add3833 = add nsw i32 %mul3832, 256
  %mul3834 = mul nsw i32 0, %add3833
  %add3835 = add nsw i32 %mul3834, 1
  %shl3836 = shl i32 %add3835, 30
  %sub3837 = sub nsw i32 %shl3836, 1
  %mul3838 = mul nsw i32 %sub3837, 2
  %add3839 = add nsw i32 %mul3838, 1
  br label %cond.end.3846

cond.false.3840:                                  ; preds = %cond.false.3822
  %872 = load i64, i64* %outbufsize, align 8
  %conv3841 = trunc i64 %872 to i32
  %mul3842 = mul nsw i32 0, %conv3841
  %add3843 = add nsw i32 %mul3842, 256
  %mul3844 = mul nsw i32 0, %add3843
  %sub3845 = sub nsw i32 %mul3844, 1
  br label %cond.end.3846

cond.end.3846:                                    ; preds = %cond.false.3840, %cond.true.3830
  %cond3847 = phi i32 [ %add3839, %cond.true.3830 ], [ %sub3845, %cond.false.3840 ]
  %873 = load i64, i64* %outbufsize, align 8
  %conv3848 = trunc i64 %873 to i32
  %sub3849 = sub nsw i32 %cond3847, %conv3848
  %cmp3850 = icmp slt i32 %sub3849, 256
  br i1 %cmp3850, label %cond.true.3891, label %lor.lhs.false.3874

cond.false.3852:                                  ; preds = %cond.end.3774
  br i1 false, label %cond.true.3853, label %cond.false.3859

cond.true.3853:                                   ; preds = %cond.false.3852
  %874 = load i64, i64* %outbufsize, align 8
  %conv3854 = trunc i64 %874 to i32
  %875 = load i64, i64* %outbufsize, align 8
  %conv3855 = trunc i64 %875 to i32
  %add3856 = add nsw i32 256, %conv3855
  %cmp3857 = icmp sle i32 %conv3854, %add3856
  br i1 %cmp3857, label %cond.true.3891, label %lor.lhs.false.3874

cond.false.3859:                                  ; preds = %cond.false.3852
  %876 = load i64, i64* %outbufsize, align 8
  %conv3860 = trunc i64 %876 to i32
  %cmp3861 = icmp slt i32 %conv3860, 0
  br i1 %cmp3861, label %cond.true.3863, label %cond.false.3868

cond.true.3863:                                   ; preds = %cond.false.3859
  %877 = load i64, i64* %outbufsize, align 8
  %conv3864 = trunc i64 %877 to i32
  %add3865 = add nsw i32 256, %conv3864
  %cmp3866 = icmp sle i32 256, %add3865
  br i1 %cmp3866, label %cond.true.3891, label %lor.lhs.false.3874

cond.false.3868:                                  ; preds = %cond.false.3859
  %878 = load i64, i64* %outbufsize, align 8
  %conv3869 = trunc i64 %878 to i32
  %add3870 = add nsw i32 256, %conv3869
  %879 = load i64, i64* %outbufsize, align 8
  %conv3871 = trunc i64 %879 to i32
  %cmp3872 = icmp slt i32 %add3870, %conv3871
  br i1 %cmp3872, label %cond.true.3891, label %lor.lhs.false.3874

lor.lhs.false.3874:                               ; preds = %cond.false.3868, %cond.true.3863, %cond.true.3853, %cond.end.3846, %cond.end.3816
  %880 = load i64, i64* %outbufsize, align 8
  %conv3875 = trunc i64 %880 to i32
  %add3876 = add nsw i32 256, %conv3875
  %mul3877 = mul nsw i32 0, %add3876
  %sub3878 = sub nsw i32 %mul3877, 1
  %cmp3879 = icmp slt i32 %sub3878, 0
  br i1 %cmp3879, label %land.lhs.true.3881, label %lor.lhs.false.3886

land.lhs.true.3881:                               ; preds = %lor.lhs.false.3874
  %881 = load i64, i64* %outbufsize, align 8
  %conv3882 = trunc i64 %881 to i32
  %add3883 = add nsw i32 256, %conv3882
  %cmp3884 = icmp slt i32 %add3883, -2147483648
  br i1 %cmp3884, label %cond.true.3891, label %lor.lhs.false.3886

lor.lhs.false.3886:                               ; preds = %land.lhs.true.3881, %lor.lhs.false.3874
  %882 = load i64, i64* %outbufsize, align 8
  %conv3887 = trunc i64 %882 to i32
  %add3888 = add nsw i32 256, %conv3887
  %cmp3889 = icmp slt i32 2147483647, %add3888
  br i1 %cmp3889, label %cond.true.3891, label %cond.false.3907

cond.true.3891:                                   ; preds = %lor.lhs.false.3886, %land.lhs.true.3881, %cond.false.3868, %cond.true.3863, %cond.true.3853, %cond.end.3846, %cond.end.3816
  %883 = load i64, i64* %outbufsize, align 8
  %conv3892 = trunc i64 %883 to i32
  %add3893 = add i32 256, %conv3892
  %cmp3894 = icmp ule i32 %add3893, 2147483647
  br i1 %cmp3894, label %cond.true.3896, label %cond.false.3899

cond.true.3896:                                   ; preds = %cond.true.3891
  %884 = load i64, i64* %outbufsize, align 8
  %conv3897 = trunc i64 %884 to i32
  %add3898 = add i32 256, %conv3897
  br label %cond.end.3904

cond.false.3899:                                  ; preds = %cond.true.3891
  %885 = load i64, i64* %outbufsize, align 8
  %conv3900 = trunc i64 %885 to i32
  %add3901 = add i32 256, %conv3900
  %sub3902 = sub i32 %add3901, -2147483648
  %add3903 = add nsw i32 %sub3902, -2147483648
  br label %cond.end.3904

cond.end.3904:                                    ; preds = %cond.false.3899, %cond.true.3896
  %cond3905 = phi i32 [ %add3898, %cond.true.3896 ], [ %add3903, %cond.false.3899 ]
  %conv3906 = sext i32 %cond3905 to i64
  store i64 %conv3906, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.3907:                                  ; preds = %lor.lhs.false.3886
  %886 = load i64, i64* %outbufsize, align 8
  %conv3908 = trunc i64 %886 to i32
  %add3909 = add i32 256, %conv3908
  %cmp3910 = icmp ule i32 %add3909, 2147483647
  br i1 %cmp3910, label %cond.true.3912, label %cond.false.3915

cond.true.3912:                                   ; preds = %cond.false.3907
  %887 = load i64, i64* %outbufsize, align 8
  %conv3913 = trunc i64 %887 to i32
  %add3914 = add i32 256, %conv3913
  br label %cond.end.3920

cond.false.3915:                                  ; preds = %cond.false.3907
  %888 = load i64, i64* %outbufsize, align 8
  %conv3916 = trunc i64 %888 to i32
  %add3917 = add i32 256, %conv3916
  %sub3918 = sub i32 %add3917, -2147483648
  %add3919 = add nsw i32 %sub3918, -2147483648
  br label %cond.end.3920

cond.end.3920:                                    ; preds = %cond.false.3915, %cond.true.3912
  %cond3921 = phi i32 [ %add3914, %cond.true.3912 ], [ %add3919, %cond.false.3915 ]
  %conv3922 = sext i32 %cond3921 to i64
  store i64 %conv3922, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

cond.false.3923:                                  ; preds = %cond.true.3739
  %889 = load i64, i64* %outbufsize, align 8
  %mul3924 = mul nsw i64 0, %889
  %add3925 = add nsw i64 %mul3924, 256
  %mul3926 = mul nsw i64 0, %add3925
  %sub3927 = sub nsw i64 %mul3926, 1
  %cmp3928 = icmp slt i64 %sub3927, 0
  br i1 %cmp3928, label %cond.true.3930, label %cond.false.3949

cond.true.3930:                                   ; preds = %cond.false.3923
  %890 = load i64, i64* %outbufsize, align 8
  %mul3931 = mul nsw i64 0, %890
  %add3932 = add nsw i64 %mul3931, 256
  %mul3933 = mul nsw i64 0, %add3932
  %add3934 = add nsw i64 %mul3933, 0
  %neg3935 = xor i64 %add3934, -1
  %cmp3936 = icmp eq i64 %neg3935, -1
  %conv3937 = zext i1 %cmp3936 to i32
  %sub3938 = sub nsw i32 0, %conv3937
  %conv3939 = sext i32 %sub3938 to i64
  %891 = load i64, i64* %outbufsize, align 8
  %mul3940 = mul nsw i64 0, %891
  %add3941 = add nsw i64 %mul3940, 256
  %mul3942 = mul nsw i64 0, %add3941
  %add3943 = add nsw i64 %mul3942, 1
  %shl3944 = shl i64 %add3943, 62
  %sub3945 = sub nsw i64 %shl3944, 1
  %mul3946 = mul nsw i64 %sub3945, 2
  %add3947 = add nsw i64 %mul3946, 1
  %sub3948 = sub nsw i64 %conv3939, %add3947
  br label %cond.end.3954

cond.false.3949:                                  ; preds = %cond.false.3923
  %892 = load i64, i64* %outbufsize, align 8
  %mul3950 = mul nsw i64 0, %892
  %add3951 = add nsw i64 %mul3950, 256
  %mul3952 = mul nsw i64 0, %add3951
  %add3953 = add nsw i64 %mul3952, 0
  br label %cond.end.3954

cond.end.3954:                                    ; preds = %cond.false.3949, %cond.true.3930
  %cond3955 = phi i64 [ %sub3948, %cond.true.3930 ], [ %add3953, %cond.false.3949 ]
  %cmp3956 = icmp slt i64 %cond3955, 0
  br i1 %cmp3956, label %cond.true.3958, label %cond.false.4023

cond.true.3958:                                   ; preds = %cond.end.3954
  %893 = load i64, i64* %outbufsize, align 8
  %cmp3959 = icmp slt i64 %893, 0
  br i1 %cmp3959, label %cond.true.3961, label %cond.false.3997

cond.true.3961:                                   ; preds = %cond.true.3958
  %894 = load i64, i64* %outbufsize, align 8
  %mul3962 = mul nsw i64 0, %894
  %add3963 = add nsw i64 %mul3962, 256
  %mul3964 = mul nsw i64 0, %add3963
  %sub3965 = sub nsw i64 %mul3964, 1
  %cmp3966 = icmp slt i64 %sub3965, 0
  br i1 %cmp3966, label %cond.true.3968, label %cond.false.3987

cond.true.3968:                                   ; preds = %cond.true.3961
  %895 = load i64, i64* %outbufsize, align 8
  %mul3969 = mul nsw i64 0, %895
  %add3970 = add nsw i64 %mul3969, 256
  %mul3971 = mul nsw i64 0, %add3970
  %add3972 = add nsw i64 %mul3971, 0
  %neg3973 = xor i64 %add3972, -1
  %cmp3974 = icmp eq i64 %neg3973, -1
  %conv3975 = zext i1 %cmp3974 to i32
  %sub3976 = sub nsw i32 0, %conv3975
  %conv3977 = sext i32 %sub3976 to i64
  %896 = load i64, i64* %outbufsize, align 8
  %mul3978 = mul nsw i64 0, %896
  %add3979 = add nsw i64 %mul3978, 256
  %mul3980 = mul nsw i64 0, %add3979
  %add3981 = add nsw i64 %mul3980, 1
  %shl3982 = shl i64 %add3981, 62
  %sub3983 = sub nsw i64 %shl3982, 1
  %mul3984 = mul nsw i64 %sub3983, 2
  %add3985 = add nsw i64 %mul3984, 1
  %sub3986 = sub nsw i64 %conv3977, %add3985
  br label %cond.end.3992

cond.false.3987:                                  ; preds = %cond.true.3961
  %897 = load i64, i64* %outbufsize, align 8
  %mul3988 = mul nsw i64 0, %897
  %add3989 = add nsw i64 %mul3988, 256
  %mul3990 = mul nsw i64 0, %add3989
  %add3991 = add nsw i64 %mul3990, 0
  br label %cond.end.3992

cond.end.3992:                                    ; preds = %cond.false.3987, %cond.true.3968
  %cond3993 = phi i64 [ %sub3986, %cond.true.3968 ], [ %add3991, %cond.false.3987 ]
  %898 = load i64, i64* %outbufsize, align 8
  %sub3994 = sub nsw i64 %cond3993, %898
  %cmp3995 = icmp slt i64 256, %sub3994
  br i1 %cmp3995, label %cond.true.4053, label %lor.lhs.false.4039

cond.false.3997:                                  ; preds = %cond.true.3958
  %899 = load i64, i64* %outbufsize, align 8
  %mul3998 = mul nsw i64 0, %899
  %add3999 = add nsw i64 %mul3998, 256
  %mul4000 = mul nsw i64 0, %add3999
  %sub4001 = sub nsw i64 %mul4000, 1
  %cmp4002 = icmp slt i64 %sub4001, 0
  br i1 %cmp4002, label %cond.true.4004, label %cond.false.4013

cond.true.4004:                                   ; preds = %cond.false.3997
  %900 = load i64, i64* %outbufsize, align 8
  %mul4005 = mul nsw i64 0, %900
  %add4006 = add nsw i64 %mul4005, 256
  %mul4007 = mul nsw i64 0, %add4006
  %add4008 = add nsw i64 %mul4007, 1
  %shl4009 = shl i64 %add4008, 62
  %sub4010 = sub nsw i64 %shl4009, 1
  %mul4011 = mul nsw i64 %sub4010, 2
  %add4012 = add nsw i64 %mul4011, 1
  br label %cond.end.4018

cond.false.4013:                                  ; preds = %cond.false.3997
  %901 = load i64, i64* %outbufsize, align 8
  %mul4014 = mul nsw i64 0, %901
  %add4015 = add nsw i64 %mul4014, 256
  %mul4016 = mul nsw i64 0, %add4015
  %sub4017 = sub nsw i64 %mul4016, 1
  br label %cond.end.4018

cond.end.4018:                                    ; preds = %cond.false.4013, %cond.true.4004
  %cond4019 = phi i64 [ %add4012, %cond.true.4004 ], [ %sub4017, %cond.false.4013 ]
  %902 = load i64, i64* %outbufsize, align 8
  %sub4020 = sub nsw i64 %cond4019, %902
  %cmp4021 = icmp slt i64 %sub4020, 256
  br i1 %cmp4021, label %cond.true.4053, label %lor.lhs.false.4039

cond.false.4023:                                  ; preds = %cond.end.3954
  br i1 false, label %cond.true.4024, label %cond.false.4028

cond.true.4024:                                   ; preds = %cond.false.4023
  %903 = load i64, i64* %outbufsize, align 8
  %904 = load i64, i64* %outbufsize, align 8
  %add4025 = add nsw i64 256, %904
  %cmp4026 = icmp sle i64 %903, %add4025
  br i1 %cmp4026, label %cond.true.4053, label %lor.lhs.false.4039

cond.false.4028:                                  ; preds = %cond.false.4023
  %905 = load i64, i64* %outbufsize, align 8
  %cmp4029 = icmp slt i64 %905, 0
  br i1 %cmp4029, label %cond.true.4031, label %cond.false.4035

cond.true.4031:                                   ; preds = %cond.false.4028
  %906 = load i64, i64* %outbufsize, align 8
  %add4032 = add nsw i64 256, %906
  %cmp4033 = icmp sle i64 256, %add4032
  br i1 %cmp4033, label %cond.true.4053, label %lor.lhs.false.4039

cond.false.4035:                                  ; preds = %cond.false.4028
  %907 = load i64, i64* %outbufsize, align 8
  %add4036 = add nsw i64 256, %907
  %908 = load i64, i64* %outbufsize, align 8
  %cmp4037 = icmp slt i64 %add4036, %908
  br i1 %cmp4037, label %cond.true.4053, label %lor.lhs.false.4039

lor.lhs.false.4039:                               ; preds = %cond.false.4035, %cond.true.4031, %cond.true.4024, %cond.end.4018, %cond.end.3992
  %909 = load i64, i64* %outbufsize, align 8
  %add4040 = add nsw i64 256, %909
  %mul4041 = mul nsw i64 0, %add4040
  %sub4042 = sub nsw i64 %mul4041, 1
  %cmp4043 = icmp slt i64 %sub4042, 0
  br i1 %cmp4043, label %land.lhs.true.4045, label %lor.lhs.false.4049

land.lhs.true.4045:                               ; preds = %lor.lhs.false.4039
  %910 = load i64, i64* %outbufsize, align 8
  %add4046 = add nsw i64 256, %910
  %cmp4047 = icmp slt i64 %add4046, -2147483648
  br i1 %cmp4047, label %cond.true.4053, label %lor.lhs.false.4049

lor.lhs.false.4049:                               ; preds = %land.lhs.true.4045, %lor.lhs.false.4039
  %911 = load i64, i64* %outbufsize, align 8
  %add4050 = add nsw i64 256, %911
  %cmp4051 = icmp slt i64 2147483647, %add4050
  br i1 %cmp4051, label %cond.true.4053, label %cond.false.4069

cond.true.4053:                                   ; preds = %lor.lhs.false.4049, %land.lhs.true.4045, %cond.false.4035, %cond.true.4031, %cond.true.4024, %cond.end.4018, %cond.end.3992
  %912 = load i64, i64* %outbufsize, align 8
  %conv4054 = trunc i64 %912 to i32
  %add4055 = add i32 256, %conv4054
  %cmp4056 = icmp ule i32 %add4055, 2147483647
  br i1 %cmp4056, label %cond.true.4058, label %cond.false.4061

cond.true.4058:                                   ; preds = %cond.true.4053
  %913 = load i64, i64* %outbufsize, align 8
  %conv4059 = trunc i64 %913 to i32
  %add4060 = add i32 256, %conv4059
  br label %cond.end.4066

cond.false.4061:                                  ; preds = %cond.true.4053
  %914 = load i64, i64* %outbufsize, align 8
  %conv4062 = trunc i64 %914 to i32
  %add4063 = add i32 256, %conv4062
  %sub4064 = sub i32 %add4063, -2147483648
  %add4065 = add nsw i32 %sub4064, -2147483648
  br label %cond.end.4066

cond.end.4066:                                    ; preds = %cond.false.4061, %cond.true.4058
  %cond4067 = phi i32 [ %add4060, %cond.true.4058 ], [ %add4065, %cond.false.4061 ]
  %conv4068 = sext i32 %cond4067 to i64
  store i64 %conv4068, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.4069:                                  ; preds = %lor.lhs.false.4049
  %915 = load i64, i64* %outbufsize, align 8
  %conv4070 = trunc i64 %915 to i32
  %add4071 = add i32 256, %conv4070
  %cmp4072 = icmp ule i32 %add4071, 2147483647
  br i1 %cmp4072, label %cond.true.4074, label %cond.false.4077

cond.true.4074:                                   ; preds = %cond.false.4069
  %916 = load i64, i64* %outbufsize, align 8
  %conv4075 = trunc i64 %916 to i32
  %add4076 = add i32 256, %conv4075
  br label %cond.end.4082

cond.false.4077:                                  ; preds = %cond.false.4069
  %917 = load i64, i64* %outbufsize, align 8
  %conv4078 = trunc i64 %917 to i32
  %add4079 = add i32 256, %conv4078
  %sub4080 = sub i32 %add4079, -2147483648
  %add4081 = add nsw i32 %sub4080, -2147483648
  br label %cond.end.4082

cond.end.4082:                                    ; preds = %cond.false.4077, %cond.true.4074
  %cond4083 = phi i32 [ %add4076, %cond.true.4074 ], [ %add4081, %cond.false.4077 ]
  %conv4084 = sext i32 %cond4083 to i64
  store i64 %conv4084, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

cond.false.4085:                                  ; preds = %cond.false.3738
  br i1 true, label %cond.true.4086, label %cond.false.4395

cond.true.4086:                                   ; preds = %cond.false.4085
  br i1 false, label %cond.true.4087, label %cond.false.4241

cond.true.4087:                                   ; preds = %cond.true.4086
  %918 = load i64, i64* %outbufsize, align 8
  %mul4088 = mul nsw i64 0, %918
  %add4089 = add nsw i64 %mul4088, 256
  %mul4090 = mul nsw i64 0, %add4089
  %sub4091 = sub nsw i64 %mul4090, 1
  %cmp4092 = icmp slt i64 %sub4091, 0
  br i1 %cmp4092, label %cond.true.4094, label %cond.false.4113

cond.true.4094:                                   ; preds = %cond.true.4087
  %919 = load i64, i64* %outbufsize, align 8
  %mul4095 = mul nsw i64 0, %919
  %add4096 = add nsw i64 %mul4095, 256
  %mul4097 = mul nsw i64 0, %add4096
  %add4098 = add nsw i64 %mul4097, 0
  %neg4099 = xor i64 %add4098, -1
  %cmp4100 = icmp eq i64 %neg4099, -1
  %conv4101 = zext i1 %cmp4100 to i32
  %sub4102 = sub nsw i32 0, %conv4101
  %conv4103 = sext i32 %sub4102 to i64
  %920 = load i64, i64* %outbufsize, align 8
  %mul4104 = mul nsw i64 0, %920
  %add4105 = add nsw i64 %mul4104, 256
  %mul4106 = mul nsw i64 0, %add4105
  %add4107 = add nsw i64 %mul4106, 1
  %shl4108 = shl i64 %add4107, 62
  %sub4109 = sub nsw i64 %shl4108, 1
  %mul4110 = mul nsw i64 %sub4109, 2
  %add4111 = add nsw i64 %mul4110, 1
  %sub4112 = sub nsw i64 %conv4103, %add4111
  br label %cond.end.4118

cond.false.4113:                                  ; preds = %cond.true.4087
  %921 = load i64, i64* %outbufsize, align 8
  %mul4114 = mul nsw i64 0, %921
  %add4115 = add nsw i64 %mul4114, 256
  %mul4116 = mul nsw i64 0, %add4115
  %add4117 = add nsw i64 %mul4116, 0
  br label %cond.end.4118

cond.end.4118:                                    ; preds = %cond.false.4113, %cond.true.4094
  %cond4119 = phi i64 [ %sub4112, %cond.true.4094 ], [ %add4117, %cond.false.4113 ]
  %cmp4120 = icmp slt i64 %cond4119, 0
  br i1 %cmp4120, label %cond.true.4122, label %cond.false.4187

cond.true.4122:                                   ; preds = %cond.end.4118
  %922 = load i64, i64* %outbufsize, align 8
  %cmp4123 = icmp slt i64 %922, 0
  br i1 %cmp4123, label %cond.true.4125, label %cond.false.4161

cond.true.4125:                                   ; preds = %cond.true.4122
  %923 = load i64, i64* %outbufsize, align 8
  %mul4126 = mul nsw i64 0, %923
  %add4127 = add nsw i64 %mul4126, 256
  %mul4128 = mul nsw i64 0, %add4127
  %sub4129 = sub nsw i64 %mul4128, 1
  %cmp4130 = icmp slt i64 %sub4129, 0
  br i1 %cmp4130, label %cond.true.4132, label %cond.false.4151

cond.true.4132:                                   ; preds = %cond.true.4125
  %924 = load i64, i64* %outbufsize, align 8
  %mul4133 = mul nsw i64 0, %924
  %add4134 = add nsw i64 %mul4133, 256
  %mul4135 = mul nsw i64 0, %add4134
  %add4136 = add nsw i64 %mul4135, 0
  %neg4137 = xor i64 %add4136, -1
  %cmp4138 = icmp eq i64 %neg4137, -1
  %conv4139 = zext i1 %cmp4138 to i32
  %sub4140 = sub nsw i32 0, %conv4139
  %conv4141 = sext i32 %sub4140 to i64
  %925 = load i64, i64* %outbufsize, align 8
  %mul4142 = mul nsw i64 0, %925
  %add4143 = add nsw i64 %mul4142, 256
  %mul4144 = mul nsw i64 0, %add4143
  %add4145 = add nsw i64 %mul4144, 1
  %shl4146 = shl i64 %add4145, 62
  %sub4147 = sub nsw i64 %shl4146, 1
  %mul4148 = mul nsw i64 %sub4147, 2
  %add4149 = add nsw i64 %mul4148, 1
  %sub4150 = sub nsw i64 %conv4141, %add4149
  br label %cond.end.4156

cond.false.4151:                                  ; preds = %cond.true.4125
  %926 = load i64, i64* %outbufsize, align 8
  %mul4152 = mul nsw i64 0, %926
  %add4153 = add nsw i64 %mul4152, 256
  %mul4154 = mul nsw i64 0, %add4153
  %add4155 = add nsw i64 %mul4154, 0
  br label %cond.end.4156

cond.end.4156:                                    ; preds = %cond.false.4151, %cond.true.4132
  %cond4157 = phi i64 [ %sub4150, %cond.true.4132 ], [ %add4155, %cond.false.4151 ]
  %927 = load i64, i64* %outbufsize, align 8
  %sub4158 = sub nsw i64 %cond4157, %927
  %cmp4159 = icmp slt i64 256, %sub4158
  br i1 %cmp4159, label %cond.true.4217, label %lor.lhs.false.4203

cond.false.4161:                                  ; preds = %cond.true.4122
  %928 = load i64, i64* %outbufsize, align 8
  %mul4162 = mul nsw i64 0, %928
  %add4163 = add nsw i64 %mul4162, 256
  %mul4164 = mul nsw i64 0, %add4163
  %sub4165 = sub nsw i64 %mul4164, 1
  %cmp4166 = icmp slt i64 %sub4165, 0
  br i1 %cmp4166, label %cond.true.4168, label %cond.false.4177

cond.true.4168:                                   ; preds = %cond.false.4161
  %929 = load i64, i64* %outbufsize, align 8
  %mul4169 = mul nsw i64 0, %929
  %add4170 = add nsw i64 %mul4169, 256
  %mul4171 = mul nsw i64 0, %add4170
  %add4172 = add nsw i64 %mul4171, 1
  %shl4173 = shl i64 %add4172, 62
  %sub4174 = sub nsw i64 %shl4173, 1
  %mul4175 = mul nsw i64 %sub4174, 2
  %add4176 = add nsw i64 %mul4175, 1
  br label %cond.end.4182

cond.false.4177:                                  ; preds = %cond.false.4161
  %930 = load i64, i64* %outbufsize, align 8
  %mul4178 = mul nsw i64 0, %930
  %add4179 = add nsw i64 %mul4178, 256
  %mul4180 = mul nsw i64 0, %add4179
  %sub4181 = sub nsw i64 %mul4180, 1
  br label %cond.end.4182

cond.end.4182:                                    ; preds = %cond.false.4177, %cond.true.4168
  %cond4183 = phi i64 [ %add4176, %cond.true.4168 ], [ %sub4181, %cond.false.4177 ]
  %931 = load i64, i64* %outbufsize, align 8
  %sub4184 = sub nsw i64 %cond4183, %931
  %cmp4185 = icmp slt i64 %sub4184, 256
  br i1 %cmp4185, label %cond.true.4217, label %lor.lhs.false.4203

cond.false.4187:                                  ; preds = %cond.end.4118
  br i1 false, label %cond.true.4188, label %cond.false.4192

cond.true.4188:                                   ; preds = %cond.false.4187
  %932 = load i64, i64* %outbufsize, align 8
  %933 = load i64, i64* %outbufsize, align 8
  %add4189 = add nsw i64 256, %933
  %cmp4190 = icmp sle i64 %932, %add4189
  br i1 %cmp4190, label %cond.true.4217, label %lor.lhs.false.4203

cond.false.4192:                                  ; preds = %cond.false.4187
  %934 = load i64, i64* %outbufsize, align 8
  %cmp4193 = icmp slt i64 %934, 0
  br i1 %cmp4193, label %cond.true.4195, label %cond.false.4199

cond.true.4195:                                   ; preds = %cond.false.4192
  %935 = load i64, i64* %outbufsize, align 8
  %add4196 = add nsw i64 256, %935
  %cmp4197 = icmp sle i64 256, %add4196
  br i1 %cmp4197, label %cond.true.4217, label %lor.lhs.false.4203

cond.false.4199:                                  ; preds = %cond.false.4192
  %936 = load i64, i64* %outbufsize, align 8
  %add4200 = add nsw i64 256, %936
  %937 = load i64, i64* %outbufsize, align 8
  %cmp4201 = icmp slt i64 %add4200, %937
  br i1 %cmp4201, label %cond.true.4217, label %lor.lhs.false.4203

lor.lhs.false.4203:                               ; preds = %cond.false.4199, %cond.true.4195, %cond.true.4188, %cond.end.4182, %cond.end.4156
  %938 = load i64, i64* %outbufsize, align 8
  %add4204 = add nsw i64 256, %938
  %mul4205 = mul nsw i64 0, %add4204
  %sub4206 = sub nsw i64 %mul4205, 1
  %cmp4207 = icmp slt i64 %sub4206, 0
  br i1 %cmp4207, label %land.lhs.true.4209, label %lor.lhs.false.4213

land.lhs.true.4209:                               ; preds = %lor.lhs.false.4203
  %939 = load i64, i64* %outbufsize, align 8
  %add4210 = add nsw i64 256, %939
  %cmp4211 = icmp slt i64 %add4210, -9223372036854775808
  br i1 %cmp4211, label %cond.true.4217, label %lor.lhs.false.4213

lor.lhs.false.4213:                               ; preds = %land.lhs.true.4209, %lor.lhs.false.4203
  %940 = load i64, i64* %outbufsize, align 8
  %add4214 = add nsw i64 256, %940
  %cmp4215 = icmp slt i64 9223372036854775807, %add4214
  br i1 %cmp4215, label %cond.true.4217, label %cond.false.4229

cond.true.4217:                                   ; preds = %lor.lhs.false.4213, %land.lhs.true.4209, %cond.false.4199, %cond.true.4195, %cond.true.4188, %cond.end.4182, %cond.end.4156
  %941 = load i64, i64* %outbufsize, align 8
  %add4218 = add i64 256, %941
  %cmp4219 = icmp ule i64 %add4218, 9223372036854775807
  br i1 %cmp4219, label %cond.true.4221, label %cond.false.4223

cond.true.4221:                                   ; preds = %cond.true.4217
  %942 = load i64, i64* %outbufsize, align 8
  %add4222 = add i64 256, %942
  br label %cond.end.4227

cond.false.4223:                                  ; preds = %cond.true.4217
  %943 = load i64, i64* %outbufsize, align 8
  %add4224 = add i64 256, %943
  %sub4225 = sub i64 %add4224, -9223372036854775808
  %add4226 = add nsw i64 %sub4225, -9223372036854775808
  br label %cond.end.4227

cond.end.4227:                                    ; preds = %cond.false.4223, %cond.true.4221
  %cond4228 = phi i64 [ %add4222, %cond.true.4221 ], [ %add4226, %cond.false.4223 ]
  store i64 %cond4228, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.4229:                                  ; preds = %lor.lhs.false.4213
  %944 = load i64, i64* %outbufsize, align 8
  %add4230 = add i64 256, %944
  %cmp4231 = icmp ule i64 %add4230, 9223372036854775807
  br i1 %cmp4231, label %cond.true.4233, label %cond.false.4235

cond.true.4233:                                   ; preds = %cond.false.4229
  %945 = load i64, i64* %outbufsize, align 8
  %add4234 = add i64 256, %945
  br label %cond.end.4239

cond.false.4235:                                  ; preds = %cond.false.4229
  %946 = load i64, i64* %outbufsize, align 8
  %add4236 = add i64 256, %946
  %sub4237 = sub i64 %add4236, -9223372036854775808
  %add4238 = add nsw i64 %sub4237, -9223372036854775808
  br label %cond.end.4239

cond.end.4239:                                    ; preds = %cond.false.4235, %cond.true.4233
  %cond4240 = phi i64 [ %add4234, %cond.true.4233 ], [ %add4238, %cond.false.4235 ]
  store i64 %cond4240, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

cond.false.4241:                                  ; preds = %cond.true.4086
  %947 = load i64, i64* %outbufsize, align 8
  %mul4242 = mul nsw i64 0, %947
  %add4243 = add nsw i64 %mul4242, 256
  %mul4244 = mul nsw i64 0, %add4243
  %sub4245 = sub nsw i64 %mul4244, 1
  %cmp4246 = icmp slt i64 %sub4245, 0
  br i1 %cmp4246, label %cond.true.4248, label %cond.false.4267

cond.true.4248:                                   ; preds = %cond.false.4241
  %948 = load i64, i64* %outbufsize, align 8
  %mul4249 = mul nsw i64 0, %948
  %add4250 = add nsw i64 %mul4249, 256
  %mul4251 = mul nsw i64 0, %add4250
  %add4252 = add nsw i64 %mul4251, 0
  %neg4253 = xor i64 %add4252, -1
  %cmp4254 = icmp eq i64 %neg4253, -1
  %conv4255 = zext i1 %cmp4254 to i32
  %sub4256 = sub nsw i32 0, %conv4255
  %conv4257 = sext i32 %sub4256 to i64
  %949 = load i64, i64* %outbufsize, align 8
  %mul4258 = mul nsw i64 0, %949
  %add4259 = add nsw i64 %mul4258, 256
  %mul4260 = mul nsw i64 0, %add4259
  %add4261 = add nsw i64 %mul4260, 1
  %shl4262 = shl i64 %add4261, 62
  %sub4263 = sub nsw i64 %shl4262, 1
  %mul4264 = mul nsw i64 %sub4263, 2
  %add4265 = add nsw i64 %mul4264, 1
  %sub4266 = sub nsw i64 %conv4257, %add4265
  br label %cond.end.4272

cond.false.4267:                                  ; preds = %cond.false.4241
  %950 = load i64, i64* %outbufsize, align 8
  %mul4268 = mul nsw i64 0, %950
  %add4269 = add nsw i64 %mul4268, 256
  %mul4270 = mul nsw i64 0, %add4269
  %add4271 = add nsw i64 %mul4270, 0
  br label %cond.end.4272

cond.end.4272:                                    ; preds = %cond.false.4267, %cond.true.4248
  %cond4273 = phi i64 [ %sub4266, %cond.true.4248 ], [ %add4271, %cond.false.4267 ]
  %cmp4274 = icmp slt i64 %cond4273, 0
  br i1 %cmp4274, label %cond.true.4276, label %cond.false.4341

cond.true.4276:                                   ; preds = %cond.end.4272
  %951 = load i64, i64* %outbufsize, align 8
  %cmp4277 = icmp slt i64 %951, 0
  br i1 %cmp4277, label %cond.true.4279, label %cond.false.4315

cond.true.4279:                                   ; preds = %cond.true.4276
  %952 = load i64, i64* %outbufsize, align 8
  %mul4280 = mul nsw i64 0, %952
  %add4281 = add nsw i64 %mul4280, 256
  %mul4282 = mul nsw i64 0, %add4281
  %sub4283 = sub nsw i64 %mul4282, 1
  %cmp4284 = icmp slt i64 %sub4283, 0
  br i1 %cmp4284, label %cond.true.4286, label %cond.false.4305

cond.true.4286:                                   ; preds = %cond.true.4279
  %953 = load i64, i64* %outbufsize, align 8
  %mul4287 = mul nsw i64 0, %953
  %add4288 = add nsw i64 %mul4287, 256
  %mul4289 = mul nsw i64 0, %add4288
  %add4290 = add nsw i64 %mul4289, 0
  %neg4291 = xor i64 %add4290, -1
  %cmp4292 = icmp eq i64 %neg4291, -1
  %conv4293 = zext i1 %cmp4292 to i32
  %sub4294 = sub nsw i32 0, %conv4293
  %conv4295 = sext i32 %sub4294 to i64
  %954 = load i64, i64* %outbufsize, align 8
  %mul4296 = mul nsw i64 0, %954
  %add4297 = add nsw i64 %mul4296, 256
  %mul4298 = mul nsw i64 0, %add4297
  %add4299 = add nsw i64 %mul4298, 1
  %shl4300 = shl i64 %add4299, 62
  %sub4301 = sub nsw i64 %shl4300, 1
  %mul4302 = mul nsw i64 %sub4301, 2
  %add4303 = add nsw i64 %mul4302, 1
  %sub4304 = sub nsw i64 %conv4295, %add4303
  br label %cond.end.4310

cond.false.4305:                                  ; preds = %cond.true.4279
  %955 = load i64, i64* %outbufsize, align 8
  %mul4306 = mul nsw i64 0, %955
  %add4307 = add nsw i64 %mul4306, 256
  %mul4308 = mul nsw i64 0, %add4307
  %add4309 = add nsw i64 %mul4308, 0
  br label %cond.end.4310

cond.end.4310:                                    ; preds = %cond.false.4305, %cond.true.4286
  %cond4311 = phi i64 [ %sub4304, %cond.true.4286 ], [ %add4309, %cond.false.4305 ]
  %956 = load i64, i64* %outbufsize, align 8
  %sub4312 = sub nsw i64 %cond4311, %956
  %cmp4313 = icmp slt i64 256, %sub4312
  br i1 %cmp4313, label %cond.true.4371, label %lor.lhs.false.4357

cond.false.4315:                                  ; preds = %cond.true.4276
  %957 = load i64, i64* %outbufsize, align 8
  %mul4316 = mul nsw i64 0, %957
  %add4317 = add nsw i64 %mul4316, 256
  %mul4318 = mul nsw i64 0, %add4317
  %sub4319 = sub nsw i64 %mul4318, 1
  %cmp4320 = icmp slt i64 %sub4319, 0
  br i1 %cmp4320, label %cond.true.4322, label %cond.false.4331

cond.true.4322:                                   ; preds = %cond.false.4315
  %958 = load i64, i64* %outbufsize, align 8
  %mul4323 = mul nsw i64 0, %958
  %add4324 = add nsw i64 %mul4323, 256
  %mul4325 = mul nsw i64 0, %add4324
  %add4326 = add nsw i64 %mul4325, 1
  %shl4327 = shl i64 %add4326, 62
  %sub4328 = sub nsw i64 %shl4327, 1
  %mul4329 = mul nsw i64 %sub4328, 2
  %add4330 = add nsw i64 %mul4329, 1
  br label %cond.end.4336

cond.false.4331:                                  ; preds = %cond.false.4315
  %959 = load i64, i64* %outbufsize, align 8
  %mul4332 = mul nsw i64 0, %959
  %add4333 = add nsw i64 %mul4332, 256
  %mul4334 = mul nsw i64 0, %add4333
  %sub4335 = sub nsw i64 %mul4334, 1
  br label %cond.end.4336

cond.end.4336:                                    ; preds = %cond.false.4331, %cond.true.4322
  %cond4337 = phi i64 [ %add4330, %cond.true.4322 ], [ %sub4335, %cond.false.4331 ]
  %960 = load i64, i64* %outbufsize, align 8
  %sub4338 = sub nsw i64 %cond4337, %960
  %cmp4339 = icmp slt i64 %sub4338, 256
  br i1 %cmp4339, label %cond.true.4371, label %lor.lhs.false.4357

cond.false.4341:                                  ; preds = %cond.end.4272
  br i1 false, label %cond.true.4342, label %cond.false.4346

cond.true.4342:                                   ; preds = %cond.false.4341
  %961 = load i64, i64* %outbufsize, align 8
  %962 = load i64, i64* %outbufsize, align 8
  %add4343 = add nsw i64 256, %962
  %cmp4344 = icmp sle i64 %961, %add4343
  br i1 %cmp4344, label %cond.true.4371, label %lor.lhs.false.4357

cond.false.4346:                                  ; preds = %cond.false.4341
  %963 = load i64, i64* %outbufsize, align 8
  %cmp4347 = icmp slt i64 %963, 0
  br i1 %cmp4347, label %cond.true.4349, label %cond.false.4353

cond.true.4349:                                   ; preds = %cond.false.4346
  %964 = load i64, i64* %outbufsize, align 8
  %add4350 = add nsw i64 256, %964
  %cmp4351 = icmp sle i64 256, %add4350
  br i1 %cmp4351, label %cond.true.4371, label %lor.lhs.false.4357

cond.false.4353:                                  ; preds = %cond.false.4346
  %965 = load i64, i64* %outbufsize, align 8
  %add4354 = add nsw i64 256, %965
  %966 = load i64, i64* %outbufsize, align 8
  %cmp4355 = icmp slt i64 %add4354, %966
  br i1 %cmp4355, label %cond.true.4371, label %lor.lhs.false.4357

lor.lhs.false.4357:                               ; preds = %cond.false.4353, %cond.true.4349, %cond.true.4342, %cond.end.4336, %cond.end.4310
  %967 = load i64, i64* %outbufsize, align 8
  %add4358 = add nsw i64 256, %967
  %mul4359 = mul nsw i64 0, %add4358
  %sub4360 = sub nsw i64 %mul4359, 1
  %cmp4361 = icmp slt i64 %sub4360, 0
  br i1 %cmp4361, label %land.lhs.true.4363, label %lor.lhs.false.4367

land.lhs.true.4363:                               ; preds = %lor.lhs.false.4357
  %968 = load i64, i64* %outbufsize, align 8
  %add4364 = add nsw i64 256, %968
  %cmp4365 = icmp slt i64 %add4364, -9223372036854775808
  br i1 %cmp4365, label %cond.true.4371, label %lor.lhs.false.4367

lor.lhs.false.4367:                               ; preds = %land.lhs.true.4363, %lor.lhs.false.4357
  %969 = load i64, i64* %outbufsize, align 8
  %add4368 = add nsw i64 256, %969
  %cmp4369 = icmp slt i64 9223372036854775807, %add4368
  br i1 %cmp4369, label %cond.true.4371, label %cond.false.4383

cond.true.4371:                                   ; preds = %lor.lhs.false.4367, %land.lhs.true.4363, %cond.false.4353, %cond.true.4349, %cond.true.4342, %cond.end.4336, %cond.end.4310
  %970 = load i64, i64* %outbufsize, align 8
  %add4372 = add i64 256, %970
  %cmp4373 = icmp ule i64 %add4372, 9223372036854775807
  br i1 %cmp4373, label %cond.true.4375, label %cond.false.4377

cond.true.4375:                                   ; preds = %cond.true.4371
  %971 = load i64, i64* %outbufsize, align 8
  %add4376 = add i64 256, %971
  br label %cond.end.4381

cond.false.4377:                                  ; preds = %cond.true.4371
  %972 = load i64, i64* %outbufsize, align 8
  %add4378 = add i64 256, %972
  %sub4379 = sub i64 %add4378, -9223372036854775808
  %add4380 = add nsw i64 %sub4379, -9223372036854775808
  br label %cond.end.4381

cond.end.4381:                                    ; preds = %cond.false.4377, %cond.true.4375
  %cond4382 = phi i64 [ %add4376, %cond.true.4375 ], [ %add4380, %cond.false.4377 ]
  store i64 %cond4382, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.4383:                                  ; preds = %lor.lhs.false.4367
  %973 = load i64, i64* %outbufsize, align 8
  %add4384 = add i64 256, %973
  %cmp4385 = icmp ule i64 %add4384, 9223372036854775807
  br i1 %cmp4385, label %cond.true.4387, label %cond.false.4389

cond.true.4387:                                   ; preds = %cond.false.4383
  %974 = load i64, i64* %outbufsize, align 8
  %add4388 = add i64 256, %974
  br label %cond.end.4393

cond.false.4389:                                  ; preds = %cond.false.4383
  %975 = load i64, i64* %outbufsize, align 8
  %add4390 = add i64 256, %975
  %sub4391 = sub i64 %add4390, -9223372036854775808
  %add4392 = add nsw i64 %sub4391, -9223372036854775808
  br label %cond.end.4393

cond.end.4393:                                    ; preds = %cond.false.4389, %cond.true.4387
  %cond4394 = phi i64 [ %add4388, %cond.true.4387 ], [ %add4392, %cond.false.4389 ]
  store i64 %cond4394, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

cond.false.4395:                                  ; preds = %cond.false.4085
  br i1 false, label %cond.true.4396, label %cond.false.4550

cond.true.4396:                                   ; preds = %cond.false.4395
  %976 = load i64, i64* %outbufsize, align 8
  %mul4397 = mul nsw i64 0, %976
  %add4398 = add nsw i64 %mul4397, 256
  %mul4399 = mul nsw i64 0, %add4398
  %sub4400 = sub nsw i64 %mul4399, 1
  %cmp4401 = icmp slt i64 %sub4400, 0
  br i1 %cmp4401, label %cond.true.4403, label %cond.false.4422

cond.true.4403:                                   ; preds = %cond.true.4396
  %977 = load i64, i64* %outbufsize, align 8
  %mul4404 = mul nsw i64 0, %977
  %add4405 = add nsw i64 %mul4404, 256
  %mul4406 = mul nsw i64 0, %add4405
  %add4407 = add nsw i64 %mul4406, 0
  %neg4408 = xor i64 %add4407, -1
  %cmp4409 = icmp eq i64 %neg4408, -1
  %conv4410 = zext i1 %cmp4409 to i32
  %sub4411 = sub nsw i32 0, %conv4410
  %conv4412 = sext i32 %sub4411 to i64
  %978 = load i64, i64* %outbufsize, align 8
  %mul4413 = mul nsw i64 0, %978
  %add4414 = add nsw i64 %mul4413, 256
  %mul4415 = mul nsw i64 0, %add4414
  %add4416 = add nsw i64 %mul4415, 1
  %shl4417 = shl i64 %add4416, 62
  %sub4418 = sub nsw i64 %shl4417, 1
  %mul4419 = mul nsw i64 %sub4418, 2
  %add4420 = add nsw i64 %mul4419, 1
  %sub4421 = sub nsw i64 %conv4412, %add4420
  br label %cond.end.4427

cond.false.4422:                                  ; preds = %cond.true.4396
  %979 = load i64, i64* %outbufsize, align 8
  %mul4423 = mul nsw i64 0, %979
  %add4424 = add nsw i64 %mul4423, 256
  %mul4425 = mul nsw i64 0, %add4424
  %add4426 = add nsw i64 %mul4425, 0
  br label %cond.end.4427

cond.end.4427:                                    ; preds = %cond.false.4422, %cond.true.4403
  %cond4428 = phi i64 [ %sub4421, %cond.true.4403 ], [ %add4426, %cond.false.4422 ]
  %cmp4429 = icmp slt i64 %cond4428, 0
  br i1 %cmp4429, label %cond.true.4431, label %cond.false.4496

cond.true.4431:                                   ; preds = %cond.end.4427
  %980 = load i64, i64* %outbufsize, align 8
  %cmp4432 = icmp slt i64 %980, 0
  br i1 %cmp4432, label %cond.true.4434, label %cond.false.4470

cond.true.4434:                                   ; preds = %cond.true.4431
  %981 = load i64, i64* %outbufsize, align 8
  %mul4435 = mul nsw i64 0, %981
  %add4436 = add nsw i64 %mul4435, 256
  %mul4437 = mul nsw i64 0, %add4436
  %sub4438 = sub nsw i64 %mul4437, 1
  %cmp4439 = icmp slt i64 %sub4438, 0
  br i1 %cmp4439, label %cond.true.4441, label %cond.false.4460

cond.true.4441:                                   ; preds = %cond.true.4434
  %982 = load i64, i64* %outbufsize, align 8
  %mul4442 = mul nsw i64 0, %982
  %add4443 = add nsw i64 %mul4442, 256
  %mul4444 = mul nsw i64 0, %add4443
  %add4445 = add nsw i64 %mul4444, 0
  %neg4446 = xor i64 %add4445, -1
  %cmp4447 = icmp eq i64 %neg4446, -1
  %conv4448 = zext i1 %cmp4447 to i32
  %sub4449 = sub nsw i32 0, %conv4448
  %conv4450 = sext i32 %sub4449 to i64
  %983 = load i64, i64* %outbufsize, align 8
  %mul4451 = mul nsw i64 0, %983
  %add4452 = add nsw i64 %mul4451, 256
  %mul4453 = mul nsw i64 0, %add4452
  %add4454 = add nsw i64 %mul4453, 1
  %shl4455 = shl i64 %add4454, 62
  %sub4456 = sub nsw i64 %shl4455, 1
  %mul4457 = mul nsw i64 %sub4456, 2
  %add4458 = add nsw i64 %mul4457, 1
  %sub4459 = sub nsw i64 %conv4450, %add4458
  br label %cond.end.4465

cond.false.4460:                                  ; preds = %cond.true.4434
  %984 = load i64, i64* %outbufsize, align 8
  %mul4461 = mul nsw i64 0, %984
  %add4462 = add nsw i64 %mul4461, 256
  %mul4463 = mul nsw i64 0, %add4462
  %add4464 = add nsw i64 %mul4463, 0
  br label %cond.end.4465

cond.end.4465:                                    ; preds = %cond.false.4460, %cond.true.4441
  %cond4466 = phi i64 [ %sub4459, %cond.true.4441 ], [ %add4464, %cond.false.4460 ]
  %985 = load i64, i64* %outbufsize, align 8
  %sub4467 = sub nsw i64 %cond4466, %985
  %cmp4468 = icmp slt i64 256, %sub4467
  br i1 %cmp4468, label %cond.true.4526, label %lor.lhs.false.4512

cond.false.4470:                                  ; preds = %cond.true.4431
  %986 = load i64, i64* %outbufsize, align 8
  %mul4471 = mul nsw i64 0, %986
  %add4472 = add nsw i64 %mul4471, 256
  %mul4473 = mul nsw i64 0, %add4472
  %sub4474 = sub nsw i64 %mul4473, 1
  %cmp4475 = icmp slt i64 %sub4474, 0
  br i1 %cmp4475, label %cond.true.4477, label %cond.false.4486

cond.true.4477:                                   ; preds = %cond.false.4470
  %987 = load i64, i64* %outbufsize, align 8
  %mul4478 = mul nsw i64 0, %987
  %add4479 = add nsw i64 %mul4478, 256
  %mul4480 = mul nsw i64 0, %add4479
  %add4481 = add nsw i64 %mul4480, 1
  %shl4482 = shl i64 %add4481, 62
  %sub4483 = sub nsw i64 %shl4482, 1
  %mul4484 = mul nsw i64 %sub4483, 2
  %add4485 = add nsw i64 %mul4484, 1
  br label %cond.end.4491

cond.false.4486:                                  ; preds = %cond.false.4470
  %988 = load i64, i64* %outbufsize, align 8
  %mul4487 = mul nsw i64 0, %988
  %add4488 = add nsw i64 %mul4487, 256
  %mul4489 = mul nsw i64 0, %add4488
  %sub4490 = sub nsw i64 %mul4489, 1
  br label %cond.end.4491

cond.end.4491:                                    ; preds = %cond.false.4486, %cond.true.4477
  %cond4492 = phi i64 [ %add4485, %cond.true.4477 ], [ %sub4490, %cond.false.4486 ]
  %989 = load i64, i64* %outbufsize, align 8
  %sub4493 = sub nsw i64 %cond4492, %989
  %cmp4494 = icmp slt i64 %sub4493, 256
  br i1 %cmp4494, label %cond.true.4526, label %lor.lhs.false.4512

cond.false.4496:                                  ; preds = %cond.end.4427
  br i1 false, label %cond.true.4497, label %cond.false.4501

cond.true.4497:                                   ; preds = %cond.false.4496
  %990 = load i64, i64* %outbufsize, align 8
  %991 = load i64, i64* %outbufsize, align 8
  %add4498 = add nsw i64 256, %991
  %cmp4499 = icmp sle i64 %990, %add4498
  br i1 %cmp4499, label %cond.true.4526, label %lor.lhs.false.4512

cond.false.4501:                                  ; preds = %cond.false.4496
  %992 = load i64, i64* %outbufsize, align 8
  %cmp4502 = icmp slt i64 %992, 0
  br i1 %cmp4502, label %cond.true.4504, label %cond.false.4508

cond.true.4504:                                   ; preds = %cond.false.4501
  %993 = load i64, i64* %outbufsize, align 8
  %add4505 = add nsw i64 256, %993
  %cmp4506 = icmp sle i64 256, %add4505
  br i1 %cmp4506, label %cond.true.4526, label %lor.lhs.false.4512

cond.false.4508:                                  ; preds = %cond.false.4501
  %994 = load i64, i64* %outbufsize, align 8
  %add4509 = add nsw i64 256, %994
  %995 = load i64, i64* %outbufsize, align 8
  %cmp4510 = icmp slt i64 %add4509, %995
  br i1 %cmp4510, label %cond.true.4526, label %lor.lhs.false.4512

lor.lhs.false.4512:                               ; preds = %cond.false.4508, %cond.true.4504, %cond.true.4497, %cond.end.4491, %cond.end.4465
  %996 = load i64, i64* %outbufsize, align 8
  %add4513 = add nsw i64 256, %996
  %mul4514 = mul nsw i64 0, %add4513
  %sub4515 = sub nsw i64 %mul4514, 1
  %cmp4516 = icmp slt i64 %sub4515, 0
  br i1 %cmp4516, label %land.lhs.true.4518, label %lor.lhs.false.4522

land.lhs.true.4518:                               ; preds = %lor.lhs.false.4512
  %997 = load i64, i64* %outbufsize, align 8
  %add4519 = add nsw i64 256, %997
  %cmp4520 = icmp slt i64 %add4519, -9223372036854775808
  br i1 %cmp4520, label %cond.true.4526, label %lor.lhs.false.4522

lor.lhs.false.4522:                               ; preds = %land.lhs.true.4518, %lor.lhs.false.4512
  %998 = load i64, i64* %outbufsize, align 8
  %add4523 = add nsw i64 256, %998
  %cmp4524 = icmp slt i64 9223372036854775807, %add4523
  br i1 %cmp4524, label %cond.true.4526, label %cond.false.4538

cond.true.4526:                                   ; preds = %lor.lhs.false.4522, %land.lhs.true.4518, %cond.false.4508, %cond.true.4504, %cond.true.4497, %cond.end.4491, %cond.end.4465
  %999 = load i64, i64* %outbufsize, align 8
  %add4527 = add i64 256, %999
  %cmp4528 = icmp ule i64 %add4527, 9223372036854775807
  br i1 %cmp4528, label %cond.true.4530, label %cond.false.4532

cond.true.4530:                                   ; preds = %cond.true.4526
  %1000 = load i64, i64* %outbufsize, align 8
  %add4531 = add i64 256, %1000
  br label %cond.end.4536

cond.false.4532:                                  ; preds = %cond.true.4526
  %1001 = load i64, i64* %outbufsize, align 8
  %add4533 = add i64 256, %1001
  %sub4534 = sub i64 %add4533, -9223372036854775808
  %add4535 = add nsw i64 %sub4534, -9223372036854775808
  br label %cond.end.4536

cond.end.4536:                                    ; preds = %cond.false.4532, %cond.true.4530
  %cond4537 = phi i64 [ %add4531, %cond.true.4530 ], [ %add4535, %cond.false.4532 ]
  store i64 %cond4537, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.4538:                                  ; preds = %lor.lhs.false.4522
  %1002 = load i64, i64* %outbufsize, align 8
  %add4539 = add i64 256, %1002
  %cmp4540 = icmp ule i64 %add4539, 9223372036854775807
  br i1 %cmp4540, label %cond.true.4542, label %cond.false.4544

cond.true.4542:                                   ; preds = %cond.false.4538
  %1003 = load i64, i64* %outbufsize, align 8
  %add4543 = add i64 256, %1003
  br label %cond.end.4548

cond.false.4544:                                  ; preds = %cond.false.4538
  %1004 = load i64, i64* %outbufsize, align 8
  %add4545 = add i64 256, %1004
  %sub4546 = sub i64 %add4545, -9223372036854775808
  %add4547 = add nsw i64 %sub4546, -9223372036854775808
  br label %cond.end.4548

cond.end.4548:                                    ; preds = %cond.false.4544, %cond.true.4542
  %cond4549 = phi i64 [ %add4543, %cond.true.4542 ], [ %add4547, %cond.false.4544 ]
  store i64 %cond4549, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

cond.false.4550:                                  ; preds = %cond.false.4395
  %1005 = load i64, i64* %outbufsize, align 8
  %mul4551 = mul nsw i64 0, %1005
  %add4552 = add nsw i64 %mul4551, 256
  %mul4553 = mul nsw i64 0, %add4552
  %sub4554 = sub nsw i64 %mul4553, 1
  %cmp4555 = icmp slt i64 %sub4554, 0
  br i1 %cmp4555, label %cond.true.4557, label %cond.false.4576

cond.true.4557:                                   ; preds = %cond.false.4550
  %1006 = load i64, i64* %outbufsize, align 8
  %mul4558 = mul nsw i64 0, %1006
  %add4559 = add nsw i64 %mul4558, 256
  %mul4560 = mul nsw i64 0, %add4559
  %add4561 = add nsw i64 %mul4560, 0
  %neg4562 = xor i64 %add4561, -1
  %cmp4563 = icmp eq i64 %neg4562, -1
  %conv4564 = zext i1 %cmp4563 to i32
  %sub4565 = sub nsw i32 0, %conv4564
  %conv4566 = sext i32 %sub4565 to i64
  %1007 = load i64, i64* %outbufsize, align 8
  %mul4567 = mul nsw i64 0, %1007
  %add4568 = add nsw i64 %mul4567, 256
  %mul4569 = mul nsw i64 0, %add4568
  %add4570 = add nsw i64 %mul4569, 1
  %shl4571 = shl i64 %add4570, 62
  %sub4572 = sub nsw i64 %shl4571, 1
  %mul4573 = mul nsw i64 %sub4572, 2
  %add4574 = add nsw i64 %mul4573, 1
  %sub4575 = sub nsw i64 %conv4566, %add4574
  br label %cond.end.4581

cond.false.4576:                                  ; preds = %cond.false.4550
  %1008 = load i64, i64* %outbufsize, align 8
  %mul4577 = mul nsw i64 0, %1008
  %add4578 = add nsw i64 %mul4577, 256
  %mul4579 = mul nsw i64 0, %add4578
  %add4580 = add nsw i64 %mul4579, 0
  br label %cond.end.4581

cond.end.4581:                                    ; preds = %cond.false.4576, %cond.true.4557
  %cond4582 = phi i64 [ %sub4575, %cond.true.4557 ], [ %add4580, %cond.false.4576 ]
  %cmp4583 = icmp slt i64 %cond4582, 0
  br i1 %cmp4583, label %cond.true.4585, label %cond.false.4650

cond.true.4585:                                   ; preds = %cond.end.4581
  %1009 = load i64, i64* %outbufsize, align 8
  %cmp4586 = icmp slt i64 %1009, 0
  br i1 %cmp4586, label %cond.true.4588, label %cond.false.4624

cond.true.4588:                                   ; preds = %cond.true.4585
  %1010 = load i64, i64* %outbufsize, align 8
  %mul4589 = mul nsw i64 0, %1010
  %add4590 = add nsw i64 %mul4589, 256
  %mul4591 = mul nsw i64 0, %add4590
  %sub4592 = sub nsw i64 %mul4591, 1
  %cmp4593 = icmp slt i64 %sub4592, 0
  br i1 %cmp4593, label %cond.true.4595, label %cond.false.4614

cond.true.4595:                                   ; preds = %cond.true.4588
  %1011 = load i64, i64* %outbufsize, align 8
  %mul4596 = mul nsw i64 0, %1011
  %add4597 = add nsw i64 %mul4596, 256
  %mul4598 = mul nsw i64 0, %add4597
  %add4599 = add nsw i64 %mul4598, 0
  %neg4600 = xor i64 %add4599, -1
  %cmp4601 = icmp eq i64 %neg4600, -1
  %conv4602 = zext i1 %cmp4601 to i32
  %sub4603 = sub nsw i32 0, %conv4602
  %conv4604 = sext i32 %sub4603 to i64
  %1012 = load i64, i64* %outbufsize, align 8
  %mul4605 = mul nsw i64 0, %1012
  %add4606 = add nsw i64 %mul4605, 256
  %mul4607 = mul nsw i64 0, %add4606
  %add4608 = add nsw i64 %mul4607, 1
  %shl4609 = shl i64 %add4608, 62
  %sub4610 = sub nsw i64 %shl4609, 1
  %mul4611 = mul nsw i64 %sub4610, 2
  %add4612 = add nsw i64 %mul4611, 1
  %sub4613 = sub nsw i64 %conv4604, %add4612
  br label %cond.end.4619

cond.false.4614:                                  ; preds = %cond.true.4588
  %1013 = load i64, i64* %outbufsize, align 8
  %mul4615 = mul nsw i64 0, %1013
  %add4616 = add nsw i64 %mul4615, 256
  %mul4617 = mul nsw i64 0, %add4616
  %add4618 = add nsw i64 %mul4617, 0
  br label %cond.end.4619

cond.end.4619:                                    ; preds = %cond.false.4614, %cond.true.4595
  %cond4620 = phi i64 [ %sub4613, %cond.true.4595 ], [ %add4618, %cond.false.4614 ]
  %1014 = load i64, i64* %outbufsize, align 8
  %sub4621 = sub nsw i64 %cond4620, %1014
  %cmp4622 = icmp slt i64 256, %sub4621
  br i1 %cmp4622, label %cond.true.4680, label %lor.lhs.false.4666

cond.false.4624:                                  ; preds = %cond.true.4585
  %1015 = load i64, i64* %outbufsize, align 8
  %mul4625 = mul nsw i64 0, %1015
  %add4626 = add nsw i64 %mul4625, 256
  %mul4627 = mul nsw i64 0, %add4626
  %sub4628 = sub nsw i64 %mul4627, 1
  %cmp4629 = icmp slt i64 %sub4628, 0
  br i1 %cmp4629, label %cond.true.4631, label %cond.false.4640

cond.true.4631:                                   ; preds = %cond.false.4624
  %1016 = load i64, i64* %outbufsize, align 8
  %mul4632 = mul nsw i64 0, %1016
  %add4633 = add nsw i64 %mul4632, 256
  %mul4634 = mul nsw i64 0, %add4633
  %add4635 = add nsw i64 %mul4634, 1
  %shl4636 = shl i64 %add4635, 62
  %sub4637 = sub nsw i64 %shl4636, 1
  %mul4638 = mul nsw i64 %sub4637, 2
  %add4639 = add nsw i64 %mul4638, 1
  br label %cond.end.4645

cond.false.4640:                                  ; preds = %cond.false.4624
  %1017 = load i64, i64* %outbufsize, align 8
  %mul4641 = mul nsw i64 0, %1017
  %add4642 = add nsw i64 %mul4641, 256
  %mul4643 = mul nsw i64 0, %add4642
  %sub4644 = sub nsw i64 %mul4643, 1
  br label %cond.end.4645

cond.end.4645:                                    ; preds = %cond.false.4640, %cond.true.4631
  %cond4646 = phi i64 [ %add4639, %cond.true.4631 ], [ %sub4644, %cond.false.4640 ]
  %1018 = load i64, i64* %outbufsize, align 8
  %sub4647 = sub nsw i64 %cond4646, %1018
  %cmp4648 = icmp slt i64 %sub4647, 256
  br i1 %cmp4648, label %cond.true.4680, label %lor.lhs.false.4666

cond.false.4650:                                  ; preds = %cond.end.4581
  br i1 false, label %cond.true.4651, label %cond.false.4655

cond.true.4651:                                   ; preds = %cond.false.4650
  %1019 = load i64, i64* %outbufsize, align 8
  %1020 = load i64, i64* %outbufsize, align 8
  %add4652 = add nsw i64 256, %1020
  %cmp4653 = icmp sle i64 %1019, %add4652
  br i1 %cmp4653, label %cond.true.4680, label %lor.lhs.false.4666

cond.false.4655:                                  ; preds = %cond.false.4650
  %1021 = load i64, i64* %outbufsize, align 8
  %cmp4656 = icmp slt i64 %1021, 0
  br i1 %cmp4656, label %cond.true.4658, label %cond.false.4662

cond.true.4658:                                   ; preds = %cond.false.4655
  %1022 = load i64, i64* %outbufsize, align 8
  %add4659 = add nsw i64 256, %1022
  %cmp4660 = icmp sle i64 256, %add4659
  br i1 %cmp4660, label %cond.true.4680, label %lor.lhs.false.4666

cond.false.4662:                                  ; preds = %cond.false.4655
  %1023 = load i64, i64* %outbufsize, align 8
  %add4663 = add nsw i64 256, %1023
  %1024 = load i64, i64* %outbufsize, align 8
  %cmp4664 = icmp slt i64 %add4663, %1024
  br i1 %cmp4664, label %cond.true.4680, label %lor.lhs.false.4666

lor.lhs.false.4666:                               ; preds = %cond.false.4662, %cond.true.4658, %cond.true.4651, %cond.end.4645, %cond.end.4619
  %1025 = load i64, i64* %outbufsize, align 8
  %add4667 = add nsw i64 256, %1025
  %mul4668 = mul nsw i64 0, %add4667
  %sub4669 = sub nsw i64 %mul4668, 1
  %cmp4670 = icmp slt i64 %sub4669, 0
  br i1 %cmp4670, label %land.lhs.true.4672, label %lor.lhs.false.4676

land.lhs.true.4672:                               ; preds = %lor.lhs.false.4666
  %1026 = load i64, i64* %outbufsize, align 8
  %add4673 = add nsw i64 256, %1026
  %cmp4674 = icmp slt i64 %add4673, -9223372036854775808
  br i1 %cmp4674, label %cond.true.4680, label %lor.lhs.false.4676

lor.lhs.false.4676:                               ; preds = %land.lhs.true.4672, %lor.lhs.false.4666
  %1027 = load i64, i64* %outbufsize, align 8
  %add4677 = add nsw i64 256, %1027
  %cmp4678 = icmp slt i64 9223372036854775807, %add4677
  br i1 %cmp4678, label %cond.true.4680, label %cond.false.4692

cond.true.4680:                                   ; preds = %lor.lhs.false.4676, %land.lhs.true.4672, %cond.false.4662, %cond.true.4658, %cond.true.4651, %cond.end.4645, %cond.end.4619
  %1028 = load i64, i64* %outbufsize, align 8
  %add4681 = add i64 256, %1028
  %cmp4682 = icmp ule i64 %add4681, 9223372036854775807
  br i1 %cmp4682, label %cond.true.4684, label %cond.false.4686

cond.true.4684:                                   ; preds = %cond.true.4680
  %1029 = load i64, i64* %outbufsize, align 8
  %add4685 = add i64 256, %1029
  br label %cond.end.4690

cond.false.4686:                                  ; preds = %cond.true.4680
  %1030 = load i64, i64* %outbufsize, align 8
  %add4687 = add i64 256, %1030
  %sub4688 = sub i64 %add4687, -9223372036854775808
  %add4689 = add nsw i64 %sub4688, -9223372036854775808
  br label %cond.end.4690

cond.end.4690:                                    ; preds = %cond.false.4686, %cond.true.4684
  %cond4691 = phi i64 [ %add4685, %cond.true.4684 ], [ %add4689, %cond.false.4686 ]
  store i64 %cond4691, i64* %outbufsize, align 8
  br i1 true, label %if.then.4704, label %if.end.4705

cond.false.4692:                                  ; preds = %lor.lhs.false.4676
  %1031 = load i64, i64* %outbufsize, align 8
  %add4693 = add i64 256, %1031
  %cmp4694 = icmp ule i64 %add4693, 9223372036854775807
  br i1 %cmp4694, label %cond.true.4696, label %cond.false.4698

cond.true.4696:                                   ; preds = %cond.false.4692
  %1032 = load i64, i64* %outbufsize, align 8
  %add4697 = add i64 256, %1032
  br label %cond.end.4702

cond.false.4698:                                  ; preds = %cond.false.4692
  %1033 = load i64, i64* %outbufsize, align 8
  %add4699 = add i64 256, %1033
  %sub4700 = sub i64 %add4699, -9223372036854775808
  %add4701 = add nsw i64 %sub4700, -9223372036854775808
  br label %cond.end.4702

cond.end.4702:                                    ; preds = %cond.false.4698, %cond.true.4696
  %cond4703 = phi i64 [ %add4697, %cond.true.4696 ], [ %add4701, %cond.false.4698 ]
  store i64 %cond4703, i64* %outbufsize, align 8
  br i1 false, label %if.then.4704, label %if.end.4705

if.then.4704:                                     ; preds = %cond.end.4702, %cond.end.4690, %cond.end.4548, %cond.end.4536, %cond.end.4393, %cond.end.4381, %cond.end.4239, %cond.end.4227, %cond.end.4082, %cond.end.4066, %cond.end.3920, %cond.end.3904, %cond.end.3735, %cond.end.3712, %cond.end.3559, %cond.end.3536, %cond.end.3337, %cond.end.3314, %cond.end.3161, %cond.end.3138, %cond.end.2940, %cond.end.2925, %cond.end.2683, %cond.end.2668, %cond.end.2421, %cond.end.2406, %cond.end.2164, %cond.end.2149, %cond.end.1900, %cond.end.1884, %cond.end.1641, %cond.end.1625, %cond.end.1378, %cond.end.1349, %cond.end.1093, %cond.end.1064, %cond.end.716, %cond.end.687, %cond.end.431, %cond.end.402
  call void @memory_full(i64 -1) #5
  unreachable

if.end.4705:                                      ; preds = %cond.end.4702, %cond.end.4690, %cond.end.4548, %cond.end.4536, %cond.end.4393, %cond.end.4381, %cond.end.4239, %cond.end.4227, %cond.end.4082, %cond.end.4066, %cond.end.3920, %cond.end.3904, %cond.end.3735, %cond.end.3712, %cond.end.3559, %cond.end.3536, %cond.end.3337, %cond.end.3314, %cond.end.3161, %cond.end.3138
  %1034 = load i64, i64* %outbufsize, align 8
  %call4706 = call noalias i8* @xmalloc(i64 %1034)
  store i8* %call4706, i8** %outbuf, align 8
  store i8* %call4706, i8** %outp, align 8
  store i64 0, i64* %consumed_bytes, align 8
  store i64 0, i64* %consumed_chars, align 8
  store i64 0, i64* %produced_chars, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.4705, %if.end.4933
  %1035 = load i64, i64* %str.addr, align 8
  %call4707 = call i8* @SDATA(i64 %1035)
  %1036 = load i64, i64* %consumed_bytes, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call4707, i64 %1036
  store i8* %add.ptr, i8** %p, align 8
  %1037 = load i64, i64* %str.addr, align 8
  %call4708 = call i8* @SDATA(i64 %1037)
  %1038 = load i64, i64* %str_bytes, align 8
  %add.ptr4709 = getelementptr inbounds i8, i8* %call4708, i64 %1038
  store i8* %add.ptr4709, i8** %endp, align 8
  store i32 0, i32* %j, align 4
  %1039 = load i8*, i8** %endp, align 8
  %1040 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1039 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1040 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %1041 = load i64, i64* %str_chars, align 8
  %1042 = load i64, i64* %consumed_chars, align 8
  %sub4710 = sub nsw i64 %1041, %1042
  %cmp4711 = icmp eq i64 %sub.ptr.sub, %sub4710
  br i1 %cmp4711, label %if.then.4713, label %if.else

if.then.4713:                                     ; preds = %while.body
  br label %while.cond.4714

while.cond.4714:                                  ; preds = %while.body.4719, %if.then.4713
  %1043 = load i32, i32* %j, align 4
  %cmp4715 = icmp slt i32 %1043, 1024
  br i1 %cmp4715, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.4714
  %1044 = load i8*, i8** %p, align 8
  %1045 = load i8*, i8** %endp, align 8
  %cmp4717 = icmp ult i8* %1044, %1045
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.4714
  %1046 = phi i1 [ false, %while.cond.4714 ], [ %cmp4717, %land.rhs ]
  br i1 %1046, label %while.body.4719, label %while.end

while.body.4719:                                  ; preds = %land.end
  %1047 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1047, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %1048 = load i8, i8* %1047, align 1
  %conv4720 = zext i8 %1048 to i32
  %1049 = load i32, i32* %j, align 4
  %inc4721 = add nsw i32 %1049, 1
  store i32 %inc4721, i32* %j, align 4
  %idxprom4722 = sext i32 %1049 to i64
  %arrayidx4723 = getelementptr inbounds [1024 x i32], [1024 x i32]* %source, i32 0, i64 %idxprom4722
  store i32 %conv4720, i32* %arrayidx4723, align 4
  br label %while.cond.4714

while.end:                                        ; preds = %land.end
  br label %if.end.4791

if.else:                                          ; preds = %while.body
  br label %while.cond.4724

while.cond.4724:                                  ; preds = %cond.end.4785, %if.else
  %1050 = load i32, i32* %j, align 4
  %cmp4725 = icmp slt i32 %1050, 1024
  br i1 %cmp4725, label %land.rhs.4727, label %land.end.4730

land.rhs.4727:                                    ; preds = %while.cond.4724
  %1051 = load i8*, i8** %p, align 8
  %1052 = load i8*, i8** %endp, align 8
  %cmp4728 = icmp ult i8* %1051, %1052
  br label %land.end.4730

land.end.4730:                                    ; preds = %land.rhs.4727, %while.cond.4724
  %1053 = phi i1 [ false, %while.cond.4724 ], [ %cmp4728, %land.rhs.4727 ]
  br i1 %1053, label %while.body.4731, label %while.end.4790

while.body.4731:                                  ; preds = %land.end.4730
  %1054 = load i8*, i8** %p, align 8
  %arrayidx4732 = getelementptr inbounds i8, i8* %1054, i64 0
  %1055 = load i8, i8* %arrayidx4732, align 1
  %conv4733 = zext i8 %1055 to i32
  %and4734 = and i32 %conv4733, 128
  %tobool4735 = icmp ne i32 %and4734, 0
  br i1 %tobool4735, label %cond.false.4739, label %cond.true.4736

cond.true.4736:                                   ; preds = %while.body.4731
  %1056 = load i8*, i8** %p, align 8
  %incdec.ptr4737 = getelementptr inbounds i8, i8* %1056, i32 1
  store i8* %incdec.ptr4737, i8** %p, align 8
  %1057 = load i8, i8* %1056, align 1
  %conv4738 = zext i8 %1057 to i32
  br label %cond.end.4785

cond.false.4739:                                  ; preds = %while.body.4731
  %1058 = load i8*, i8** %p, align 8
  %arrayidx4740 = getelementptr inbounds i8, i8* %1058, i64 0
  %1059 = load i8, i8* %arrayidx4740, align 1
  %conv4741 = zext i8 %1059 to i32
  %and4742 = and i32 %conv4741, 32
  %tobool4743 = icmp ne i32 %and4742, 0
  br i1 %tobool4743, label %cond.false.4759, label %cond.true.4744

cond.true.4744:                                   ; preds = %cond.false.4739
  %1060 = load i8*, i8** %p, align 8
  %add.ptr4745 = getelementptr inbounds i8, i8* %1060, i64 2
  store i8* %add.ptr4745, i8** %p, align 8
  %1061 = load i8*, i8** %p, align 8
  %arrayidx4746 = getelementptr inbounds i8, i8* %1061, i64 -2
  %1062 = load i8, i8* %arrayidx4746, align 1
  %conv4747 = zext i8 %1062 to i32
  %and4748 = and i32 %conv4747, 31
  %shl4749 = shl i32 %and4748, 6
  %1063 = load i8*, i8** %p, align 8
  %arrayidx4750 = getelementptr inbounds i8, i8* %1063, i64 -1
  %1064 = load i8, i8* %arrayidx4750, align 1
  %conv4751 = zext i8 %1064 to i32
  %and4752 = and i32 %conv4751, 63
  %or = or i32 %shl4749, %and4752
  %1065 = load i8*, i8** %p, align 8
  %arrayidx4753 = getelementptr inbounds i8, i8* %1065, i64 -2
  %1066 = load i8, i8* %arrayidx4753, align 1
  %conv4754 = zext i8 %1066 to i32
  %cmp4755 = icmp slt i32 %conv4754, 194
  %cond4757 = select i1 %cmp4755, i32 4194176, i32 0
  %or4758 = or i32 %or, %cond4757
  br label %cond.end.4783

cond.false.4759:                                  ; preds = %cond.false.4739
  %1067 = load i8*, i8** %p, align 8
  %arrayidx4760 = getelementptr inbounds i8, i8* %1067, i64 0
  %1068 = load i8, i8* %arrayidx4760, align 1
  %conv4761 = zext i8 %1068 to i32
  %and4762 = and i32 %conv4761, 16
  %tobool4763 = icmp ne i32 %and4762, 0
  br i1 %tobool4763, label %cond.false.4779, label %cond.true.4764

cond.true.4764:                                   ; preds = %cond.false.4759
  %1069 = load i8*, i8** %p, align 8
  %add.ptr4765 = getelementptr inbounds i8, i8* %1069, i64 3
  store i8* %add.ptr4765, i8** %p, align 8
  %1070 = load i8*, i8** %p, align 8
  %arrayidx4766 = getelementptr inbounds i8, i8* %1070, i64 -3
  %1071 = load i8, i8* %arrayidx4766, align 1
  %conv4767 = zext i8 %1071 to i32
  %and4768 = and i32 %conv4767, 15
  %shl4769 = shl i32 %and4768, 12
  %1072 = load i8*, i8** %p, align 8
  %arrayidx4770 = getelementptr inbounds i8, i8* %1072, i64 -2
  %1073 = load i8, i8* %arrayidx4770, align 1
  %conv4771 = zext i8 %1073 to i32
  %and4772 = and i32 %conv4771, 63
  %shl4773 = shl i32 %and4772, 6
  %or4774 = or i32 %shl4769, %shl4773
  %1074 = load i8*, i8** %p, align 8
  %arrayidx4775 = getelementptr inbounds i8, i8* %1074, i64 -1
  %1075 = load i8, i8* %arrayidx4775, align 1
  %conv4776 = zext i8 %1075 to i32
  %and4777 = and i32 %conv4776, 63
  %or4778 = or i32 %or4774, %and4777
  br label %cond.end.4781

cond.false.4779:                                  ; preds = %cond.false.4759
  %1076 = load i8*, i8** %p, align 8
  %call4780 = call i32 @string_char(i8* %1076, i8** %p, i32* null)
  br label %cond.end.4781

cond.end.4781:                                    ; preds = %cond.false.4779, %cond.true.4764
  %cond4782 = phi i32 [ %or4778, %cond.true.4764 ], [ %call4780, %cond.false.4779 ]
  br label %cond.end.4783

cond.end.4783:                                    ; preds = %cond.end.4781, %cond.true.4744
  %cond4784 = phi i32 [ %or4758, %cond.true.4744 ], [ %cond4782, %cond.end.4781 ]
  br label %cond.end.4785

cond.end.4785:                                    ; preds = %cond.end.4783, %cond.true.4736
  %cond4786 = phi i32 [ %conv4738, %cond.true.4736 ], [ %cond4784, %cond.end.4783 ]
  %1077 = load i32, i32* %j, align 4
  %inc4787 = add nsw i32 %1077, 1
  store i32 %inc4787, i32* %j, align 4
  %idxprom4788 = sext i32 %1077 to i64
  %arrayidx4789 = getelementptr inbounds [1024 x i32], [1024 x i32]* %source, i32 0, i64 %idxprom4788
  store i32 %cond4786, i32* %arrayidx4789, align 4
  br label %while.cond.4724

while.end.4790:                                   ; preds = %land.end.4730
  br label %if.end.4791

if.end.4791:                                      ; preds = %while.end.4790, %while.end
  %1078 = load i32, i32* %j, align 4
  %conv4792 = sext i32 %1078 to i64
  %1079 = load i64, i64* %consumed_chars, align 8
  %add4793 = add nsw i64 %1079, %conv4792
  store i64 %add4793, i64* %consumed_chars, align 8
  %1080 = load i8*, i8** %p, align 8
  %1081 = load i64, i64* %str.addr, align 8
  %call4794 = call i8* @SDATA(i64 %1081)
  %sub.ptr.lhs.cast4795 = ptrtoint i8* %1080 to i64
  %sub.ptr.rhs.cast4796 = ptrtoint i8* %call4794 to i64
  %sub.ptr.sub4797 = sub i64 %sub.ptr.lhs.cast4795, %sub.ptr.rhs.cast4796
  store i64 %sub.ptr.sub4797, i64* %consumed_bytes, align 8
  %1082 = load i64, i64* %consumed_bytes, align 8
  %1083 = load i64, i64* %str_bytes, align 8
  %cmp4798 = icmp eq i64 %1082, %1083
  br i1 %cmp4798, label %if.then.4800, label %if.end.4805

if.then.4800:                                     ; preds = %if.end.4791
  %1084 = load i64, i64* %contin.addr, align 8
  %call4801 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4802 = icmp eq i64 %1084, %call4801
  %last_block = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 11
  %1085 = zext i1 %cmp4802 to i8
  %bf.load = load i8, i8* %last_block, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %1085
  store i8 %bf.set, i8* %last_block, align 4
  %tobool4804 = trunc i8 %1085 to i1
  br label %if.end.4805

if.end.4805:                                      ; preds = %if.then.4800, %if.end.4791
  %arraydecay = getelementptr inbounds [1024 x i32], [1024 x i32]* %source, i32 0, i32 0
  store i32* %arraydecay, i32** %src, align 8
  %1086 = load i32, i32* %j, align 4
  store i32 %1086, i32* %src_size, align 4
  br label %while.body.4807

while.body.4807:                                  ; preds = %if.end.4805, %if.end.4924
  %1087 = load i64, i64* %unibyte_p.addr, align 8
  %call4808 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4809 = icmp eq i64 %1087, %call4808
  %cond4811 = select i1 %cmp4809, i32 5, i32 1
  store i32 %cond4811, i32* %max_expansion, align 4
  %1088 = load i32*, i32** %src, align 8
  %arraydecay4812 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i32 0
  %1089 = load i32, i32* %src_size, align 4
  %call4813 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ccl_driver(%struct.ccl_program* %ccl, i32* %1088, i32* %arraydecay4812, i32 %1089, i32 1024, i64 %call4813)
  %produced = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 10
  %1090 = load i32, i32* %produced, align 4
  %conv4814 = sext i32 %1090 to i64
  %1091 = load i64, i64* %produced_chars, align 8
  %add4815 = add nsw i64 %1091, %conv4814
  store i64 %add4815, i64* %produced_chars, align 8
  %1092 = load i8*, i8** %outp, align 8
  %1093 = load i8*, i8** %outbuf, align 8
  %sub.ptr.lhs.cast4816 = ptrtoint i8* %1092 to i64
  %sub.ptr.rhs.cast4817 = ptrtoint i8* %1093 to i64
  %sub.ptr.sub4818 = sub i64 %sub.ptr.lhs.cast4816, %sub.ptr.rhs.cast4817
  store i64 %sub.ptr.sub4818, i64* %offset, align 8
  %produced4819 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 10
  %1094 = load i32, i32* %produced4819, align 4
  %1095 = load i32, i32* %max_expansion, align 4
  %mul4820 = mul nsw i32 %1094, %1095
  %conv4821 = sext i32 %mul4820 to i64
  %1096 = load i64, i64* %outbufsize, align 8
  %1097 = load i64, i64* %offset, align 8
  %sub4822 = sub nsw i64 %1096, %1097
  %sub4823 = sub nsw i64 %conv4821, %sub4822
  store i64 %sub4823, i64* %shortfall, align 8
  %1098 = load i64, i64* %shortfall, align 8
  %cmp4824 = icmp sgt i64 %1098, 0
  br i1 %cmp4824, label %if.then.4826, label %if.end.4829

if.then.4826:                                     ; preds = %while.body.4807
  %1099 = load i8*, i8** %outbuf, align 8
  %1100 = load i64, i64* %shortfall, align 8
  %call4827 = call i8* @xpalloc(i8* %1099, i64* %outbufsize, i64 %1100, i64 -1, i64 1)
  store i8* %call4827, i8** %outbuf, align 8
  %1101 = load i8*, i8** %outbuf, align 8
  %1102 = load i64, i64* %offset, align 8
  %add.ptr4828 = getelementptr inbounds i8, i8* %1101, i64 %1102
  store i8* %add.ptr4828, i8** %outp, align 8
  br label %if.end.4829

if.end.4829:                                      ; preds = %if.then.4826, %while.body.4807
  %1103 = load i64, i64* %unibyte_p.addr, align 8
  %call4830 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4831 = icmp eq i64 %1103, %call4830
  br i1 %cmp4831, label %if.then.4833, label %if.else.4902

if.then.4833:                                     ; preds = %if.end.4829
  store i32 0, i32* %j, align 4
  br label %for.cond.4834

for.cond.4834:                                    ; preds = %for.inc.4899, %if.then.4833
  %1104 = load i32, i32* %j, align 4
  %produced4835 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 10
  %1105 = load i32, i32* %produced4835, align 4
  %cmp4836 = icmp slt i32 %1104, %1105
  br i1 %cmp4836, label %for.body.4838, label %for.end.4901

for.body.4838:                                    ; preds = %for.cond.4834
  br label %do.body

do.body:                                          ; preds = %for.body.4838
  %1106 = load i32, i32* %j, align 4
  %idxprom4839 = sext i32 %1106 to i64
  %arrayidx4840 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4839
  %1107 = load i32, i32* %arrayidx4840, align 4
  %cmp4841 = icmp sle i32 %1107, 127
  br i1 %cmp4841, label %if.then.4843, label %if.else.4848

if.then.4843:                                     ; preds = %do.body
  %1108 = load i32, i32* %j, align 4
  %idxprom4844 = sext i32 %1108 to i64
  %arrayidx4845 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4844
  %1109 = load i32, i32* %arrayidx4845, align 4
  %conv4846 = trunc i32 %1109 to i8
  %1110 = load i8*, i8** %outp, align 8
  %incdec.ptr4847 = getelementptr inbounds i8, i8* %1110, i32 1
  store i8* %incdec.ptr4847, i8** %outp, align 8
  store i8 %conv4846, i8* %1110, align 1
  br label %if.end.4898

if.else.4848:                                     ; preds = %do.body
  %1111 = load i32, i32* %j, align 4
  %idxprom4849 = sext i32 %1111 to i64
  %arrayidx4850 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4849
  %1112 = load i32, i32* %arrayidx4850, align 4
  %cmp4851 = icmp sle i32 %1112, 2047
  br i1 %cmp4851, label %if.then.4853, label %if.else.4866

if.then.4853:                                     ; preds = %if.else.4848
  %1113 = load i32, i32* %j, align 4
  %idxprom4854 = sext i32 %1113 to i64
  %arrayidx4855 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4854
  %1114 = load i32, i32* %arrayidx4855, align 4
  %shr4856 = ashr i32 %1114, 6
  %or4857 = or i32 192, %shr4856
  %conv4858 = trunc i32 %or4857 to i8
  %1115 = load i8*, i8** %outp, align 8
  %incdec.ptr4859 = getelementptr inbounds i8, i8* %1115, i32 1
  store i8* %incdec.ptr4859, i8** %outp, align 8
  store i8 %conv4858, i8* %1115, align 1
  %1116 = load i32, i32* %j, align 4
  %idxprom4860 = sext i32 %1116 to i64
  %arrayidx4861 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4860
  %1117 = load i32, i32* %arrayidx4861, align 4
  %and4862 = and i32 %1117, 63
  %or4863 = or i32 128, %and4862
  %conv4864 = trunc i32 %or4863 to i8
  %1118 = load i8*, i8** %outp, align 8
  %incdec.ptr4865 = getelementptr inbounds i8, i8* %1118, i32 1
  store i8* %incdec.ptr4865, i8** %outp, align 8
  store i8 %conv4864, i8* %1118, align 1
  br label %if.end.4897

if.else.4866:                                     ; preds = %if.else.4848
  %1119 = load i32, i32* %j, align 4
  %idxprom4867 = sext i32 %1119 to i64
  %arrayidx4868 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4867
  %1120 = load i32, i32* %arrayidx4868, align 4
  %cmp4869 = icmp sle i32 %1120, 65535
  br i1 %cmp4869, label %if.then.4871, label %if.else.4891

if.then.4871:                                     ; preds = %if.else.4866
  %1121 = load i32, i32* %j, align 4
  %idxprom4872 = sext i32 %1121 to i64
  %arrayidx4873 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4872
  %1122 = load i32, i32* %arrayidx4873, align 4
  %shr4874 = ashr i32 %1122, 12
  %or4875 = or i32 224, %shr4874
  %conv4876 = trunc i32 %or4875 to i8
  %1123 = load i8*, i8** %outp, align 8
  %incdec.ptr4877 = getelementptr inbounds i8, i8* %1123, i32 1
  store i8* %incdec.ptr4877, i8** %outp, align 8
  store i8 %conv4876, i8* %1123, align 1
  %1124 = load i32, i32* %j, align 4
  %idxprom4878 = sext i32 %1124 to i64
  %arrayidx4879 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4878
  %1125 = load i32, i32* %arrayidx4879, align 4
  %shr4880 = ashr i32 %1125, 6
  %and4881 = and i32 %shr4880, 63
  %or4882 = or i32 128, %and4881
  %conv4883 = trunc i32 %or4882 to i8
  %1126 = load i8*, i8** %outp, align 8
  %incdec.ptr4884 = getelementptr inbounds i8, i8* %1126, i32 1
  store i8* %incdec.ptr4884, i8** %outp, align 8
  store i8 %conv4883, i8* %1126, align 1
  %1127 = load i32, i32* %j, align 4
  %idxprom4885 = sext i32 %1127 to i64
  %arrayidx4886 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4885
  %1128 = load i32, i32* %arrayidx4886, align 4
  %and4887 = and i32 %1128, 63
  %or4888 = or i32 128, %and4887
  %conv4889 = trunc i32 %or4888 to i8
  %1129 = load i8*, i8** %outp, align 8
  %incdec.ptr4890 = getelementptr inbounds i8, i8* %1129, i32 1
  store i8* %incdec.ptr4890, i8** %outp, align 8
  store i8 %conv4889, i8* %1129, align 1
  br label %if.end.4896

if.else.4891:                                     ; preds = %if.else.4866
  %1130 = load i32, i32* %j, align 4
  %idxprom4892 = sext i32 %1130 to i64
  %arrayidx4893 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4892
  %1131 = load i32, i32* %arrayidx4893, align 4
  %1132 = load i8*, i8** %outp, align 8
  %call4894 = call i32 @char_string(i32 %1131, i8* %1132)
  %1133 = load i8*, i8** %outp, align 8
  %idx.ext = sext i32 %call4894 to i64
  %add.ptr4895 = getelementptr inbounds i8, i8* %1133, i64 %idx.ext
  store i8* %add.ptr4895, i8** %outp, align 8
  br label %if.end.4896

if.end.4896:                                      ; preds = %if.else.4891, %if.then.4871
  br label %if.end.4897

if.end.4897:                                      ; preds = %if.end.4896, %if.then.4853
  br label %if.end.4898

if.end.4898:                                      ; preds = %if.end.4897, %if.then.4843
  br label %do.end

do.end:                                           ; preds = %if.end.4898
  br label %for.inc.4899

for.inc.4899:                                     ; preds = %do.end
  %1134 = load i32, i32* %j, align 4
  %inc4900 = add nsw i32 %1134, 1
  store i32 %inc4900, i32* %j, align 4
  br label %for.cond.4834

for.end.4901:                                     ; preds = %for.cond.4834
  br label %if.end.4915

if.else.4902:                                     ; preds = %if.end.4829
  store i32 0, i32* %j, align 4
  br label %for.cond.4903

for.cond.4903:                                    ; preds = %for.inc.4912, %if.else.4902
  %1135 = load i32, i32* %j, align 4
  %produced4904 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 10
  %1136 = load i32, i32* %produced4904, align 4
  %cmp4905 = icmp slt i32 %1135, %1136
  br i1 %cmp4905, label %for.body.4907, label %for.end.4914

for.body.4907:                                    ; preds = %for.cond.4903
  %1137 = load i32, i32* %j, align 4
  %idxprom4908 = sext i32 %1137 to i64
  %arrayidx4909 = getelementptr inbounds [1024 x i32], [1024 x i32]* %destination, i32 0, i64 %idxprom4908
  %1138 = load i32, i32* %arrayidx4909, align 4
  %conv4910 = trunc i32 %1138 to i8
  %1139 = load i8*, i8** %outp, align 8
  %incdec.ptr4911 = getelementptr inbounds i8, i8* %1139, i32 1
  store i8* %incdec.ptr4911, i8** %outp, align 8
  store i8 %conv4910, i8* %1139, align 1
  br label %for.inc.4912

for.inc.4912:                                     ; preds = %for.body.4907
  %1140 = load i32, i32* %j, align 4
  %inc4913 = add nsw i32 %1140, 1
  store i32 %inc4913, i32* %j, align 4
  br label %for.cond.4903

for.end.4914:                                     ; preds = %for.cond.4903
  br label %if.end.4915

if.end.4915:                                      ; preds = %for.end.4914, %for.end.4901
  %consumed = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 9
  %1141 = load i32, i32* %consumed, align 4
  %1142 = load i32*, i32** %src, align 8
  %idx.ext4916 = sext i32 %1141 to i64
  %add.ptr4917 = getelementptr inbounds i32, i32* %1142, i64 %idx.ext4916
  store i32* %add.ptr4917, i32** %src, align 8
  %consumed4918 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 9
  %1143 = load i32, i32* %consumed4918, align 4
  %1144 = load i32, i32* %src_size, align 4
  %sub4919 = sub nsw i32 %1144, %1143
  store i32 %sub4919, i32* %src_size, align 4
  %status4920 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 6
  %1145 = load i32, i32* %status4920, align 4
  %cmp4921 = icmp ne i32 %1145, 2
  br i1 %cmp4921, label %if.then.4923, label %if.end.4924

if.then.4923:                                     ; preds = %if.end.4915
  br label %while.end.4925

if.end.4924:                                      ; preds = %if.end.4915
  br label %while.body.4807

while.end.4925:                                   ; preds = %if.then.4923
  %status4926 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 6
  %1146 = load i32, i32* %status4926, align 4
  %cmp4927 = icmp ne i32 %1146, 1
  br i1 %cmp4927, label %if.then.4932, label %lor.lhs.false.4929

lor.lhs.false.4929:                               ; preds = %while.end.4925
  %1147 = load i64, i64* %str_chars, align 8
  %1148 = load i64, i64* %consumed_chars, align 8
  %cmp4930 = icmp eq i64 %1147, %1148
  br i1 %cmp4930, label %if.then.4932, label %if.end.4933

if.then.4932:                                     ; preds = %lor.lhs.false.4929, %while.end.4925
  br label %while.end.4934

if.end.4933:                                      ; preds = %lor.lhs.false.4929
  br label %while.body

while.end.4934:                                   ; preds = %if.then.4932
  %status4935 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 6
  %1149 = load i32, i32* %status4935, align 4
  %cmp4936 = icmp eq i32 %1149, 3
  br i1 %cmp4936, label %if.then.4938, label %if.end.4940

if.then.4938:                                     ; preds = %while.end.4934
  %ic4939 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 3
  %1150 = load i32, i32* %ic4939, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i32 %1150) #5
  unreachable

if.end.4940:                                      ; preds = %while.end.4934
  %status4941 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 6
  %1151 = load i32, i32* %status4941, align 4
  %cmp4942 = icmp eq i32 %1151, 4
  br i1 %cmp4942, label %if.then.4944, label %if.end.4946

if.then.4944:                                     ; preds = %if.end.4940
  %ic4945 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 3
  %1152 = load i32, i32* %ic4945, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i32 %1152) #5
  unreachable

if.end.4946:                                      ; preds = %if.end.4940
  store i32 0, i32* %i, align 4
  br label %for.cond.4947

for.cond.4947:                                    ; preds = %for.inc.4958, %if.end.4946
  %1153 = load i32, i32* %i, align 4
  %cmp4948 = icmp slt i32 %1153, 8
  br i1 %cmp4948, label %for.body.4950, label %for.end.4960

for.body.4950:                                    ; preds = %for.cond.4947
  %1154 = load i64, i64* %status.addr, align 8
  %1155 = load i32, i32* %i, align 4
  %conv4951 = sext i32 %1155 to i64
  %1156 = load i32, i32* %i, align 4
  %idxprom4952 = sext i32 %1156 to i64
  %reg4953 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 5
  %arrayidx4954 = getelementptr inbounds [8 x i32], [8 x i32]* %reg4953, i32 0, i64 %idxprom4952
  %1157 = load i32, i32* %arrayidx4954, align 4
  %conv4955 = sext i32 %1157 to i64
  %shl4956 = shl i64 %conv4955, 2
  %add4957 = add i64 %shl4956, 2
  call void @ASET(i64 %1154, i64 %conv4951, i64 %add4957)
  br label %for.inc.4958

for.inc.4958:                                     ; preds = %for.body.4950
  %1158 = load i32, i32* %i, align 4
  %inc4959 = add nsw i32 %1158, 1
  store i32 %inc4959, i32* %i, align 4
  br label %for.cond.4947

for.end.4960:                                     ; preds = %for.cond.4947
  %1159 = load i64, i64* %status.addr, align 8
  %ic4961 = getelementptr inbounds %struct.ccl_program, %struct.ccl_program* %ccl, i32 0, i32 3
  %1160 = load i32, i32* %ic4961, align 4
  %conv4962 = sext i32 %1160 to i64
  %shl4963 = shl i64 %conv4962, 2
  %add4964 = add i64 %shl4963, 2
  call void @ASET(i64 %1159, i64 8, i64 %add4964)
  %1161 = load i8*, i8** %outbuf, align 8
  %1162 = load i64, i64* %produced_chars, align 8
  %1163 = load i8*, i8** %outp, align 8
  %1164 = load i8*, i8** %outbuf, align 8
  %sub.ptr.lhs.cast4965 = ptrtoint i8* %1163 to i64
  %sub.ptr.rhs.cast4966 = ptrtoint i8* %1164 to i64
  %sub.ptr.sub4967 = sub i64 %sub.ptr.lhs.cast4965, %sub.ptr.rhs.cast4966
  %1165 = load i64, i64* %unibyte_p.addr, align 8
  %call4968 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4969 = icmp eq i64 %1165, %call4968
  %call4971 = call i64 @make_specified_string(i8* %1161, i64 %1162, i64 %sub.ptr.sub4967, i1 zeroext %cmp4969)
  store i64 %call4971, i64* %val, align 8
  %1166 = load i8*, i8** %outbuf, align 8
  call void @xfree(i8* %1166)
  %1167 = load i64, i64* %val, align 8
  ret i64 %1167
}

declare void @CHECK_STRING(i64) #1

declare i64 @SCHARS(i64) #1

declare i64 @SBYTES(i64) #1

; Function Attrs: noreturn
declare void @memory_full(i64) #3

declare noalias i8* @xmalloc(i64) #1

declare i8* @SDATA(i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

declare i32 @char_string(i32, i8*) #1

declare i64 @make_specified_string(i8*, i64, i64, i1 zeroext) #1

declare void @xfree(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fregister_ccl_program(i64 %name, i64 %ccl_prog) #0 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca i64, align 8
  %ccl_prog.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %idx = alloca i64, align 8
  %resolved = alloca i64, align 8
  %slot = alloca i64, align 8
  %elt = alloca i64, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %ccl_prog, i64* %ccl_prog.addr, align 8
  %0 = load i64, i64* @Vccl_program_table, align 8
  %call = call i64 @ASIZE(i64 %0)
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %name.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 897)
  %2 = load i64, i64* %name.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call2, i64 %2) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %resolved, align 8
  %5 = load i64, i64* %ccl_prog.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %if.end.17, label %if.then

if.then:                                          ; preds = %cond.end
  %6 = load i64, i64* %ccl_prog.addr, align 8
  call void @CHECK_VECTOR(i64 %6)
  %7 = load i64, i64* %ccl_prog.addr, align 8
  %call7 = call i64 @resolve_symbol_ccl_program(i64 %7)
  store i64 %call7, i64* %resolved, align 8
  %8 = load i64, i64* %resolved, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %8, %call8
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %resolved, align 8
  %call12 = call zeroext i1 @VECTORP(i64 %9)
  br i1 %call12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %10 = load i64, i64* %resolved, align 8
  store i64 %10, i64* %ccl_prog.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call14, i64* %resolved, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %resolved, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %cond.end
  store i64 0, i64* %idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %11 = load i64, i64* %idx, align 8
  %12 = load i64, i64* %len, align 8
  %cmp18 = icmp slt i64 %11, %12
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* @Vccl_program_table, align 8
  %14 = load i64, i64* %idx, align 8
  %call20 = call i64 @AREF(i64 %13, i64 %14)
  store i64 %call20, i64* %slot, align 8
  %15 = load i64, i64* %slot, align 8
  %call21 = call zeroext i1 @VECTORP(i64 %15)
  br i1 %call21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %for.body
  br label %for.end

if.end.23:                                        ; preds = %for.body
  %16 = load i64, i64* %name.addr, align 8
  %17 = load i64, i64* %slot, align 8
  %call24 = call i64 @AREF(i64 %17, i64 0)
  %cmp25 = icmp eq i64 %16, %call24
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %18 = load i64, i64* %slot, align 8
  %19 = load i64, i64* %ccl_prog.addr, align 8
  call void @ASET(i64 %18, i64 1, i64 %19)
  %20 = load i64, i64* %slot, align 8
  %21 = load i64, i64* %resolved, align 8
  call void @ASET(i64 %20, i64 2, i64 %21)
  %22 = load i64, i64* %slot, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 901)
  call void @ASET(i64 %22, i64 3, i64 %call28)
  %23 = load i64, i64* %idx, align 8
  %shl = shl i64 %23, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %24 = load i64, i64* %idx, align 8
  %inc = add nsw i64 %24, 1
  store i64 %inc, i64* %idx, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.22, %for.cond
  %25 = load i64, i64* %idx, align 8
  %26 = load i64, i64* %len, align 8
  %cmp30 = icmp eq i64 %25, %26
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.end
  %27 = load i64, i64* @Vccl_program_table, align 8
  %call33 = call i64 @larger_vector(i64 %27, i64 1, i64 -1)
  store i64 %call33, i64* @Vccl_program_table, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %for.end
  %call35 = call i64 @make_uninit_vector(i64 4)
  store i64 %call35, i64* %elt, align 8
  %28 = load i64, i64* %elt, align 8
  %29 = load i64, i64* %name.addr, align 8
  call void @ASET(i64 %28, i64 0, i64 %29)
  %30 = load i64, i64* %elt, align 8
  %31 = load i64, i64* %ccl_prog.addr, align 8
  call void @ASET(i64 %30, i64 1, i64 %31)
  %32 = load i64, i64* %elt, align 8
  %33 = load i64, i64* %resolved, align 8
  call void @ASET(i64 %32, i64 2, i64 %33)
  %34 = load i64, i64* %elt, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 901)
  call void @ASET(i64 %34, i64 3, i64 %call36)
  %35 = load i64, i64* @Vccl_program_table, align 8
  %36 = load i64, i64* %idx, align 8
  %37 = load i64, i64* %elt, align 8
  call void @ASET(i64 %35, i64 %36, i64 %37)
  %38 = load i64, i64* %name.addr, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 247)
  %39 = load i64, i64* %idx, align 8
  %shl38 = shl i64 %39, 2
  %add39 = add i64 %shl38, 2
  %call40 = call i64 @Fput(i64 %38, i64 %call37, i64 %add39)
  %40 = load i64, i64* %idx, align 8
  %shl41 = shl i64 %40, 2
  %add42 = add i64 %shl41, 2
  store i64 %add42, i64* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.27
  %41 = load i64, i64* %retval
  ret i64 %41
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #3

declare i64 @larger_vector(i64, i64, i64) #1

declare i64 @make_uninit_vector(i64) #1

declare i64 @Fput(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fregister_code_conversion_map(i64 %symbol, i64 %map) #0 {
entry:
  %retval = alloca i64, align 8
  %symbol.addr = alloca i64, align 8
  %map.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %idx = alloca i64, align 8
  %slot = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %map, i64* %map.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %map.addr, align 8
  call void @CHECK_VECTOR(i64 %4)
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %call2 = call zeroext i1 @VECTORP(i64 %5)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %cond.end
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %call3 = call i64 @ASIZE(i64 %6)
  store i64 %call3, i64* %len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %len, align 8
  %cmp4 = icmp slt i64 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %10 = load i64, i64* %i, align 8
  %call6 = call i64 @AREF(i64 %9, i64 %10)
  store i64 %call6, i64* %slot, align 8
  %11 = load i64, i64* %slot, align 8
  %and7 = and i64 %11, 7
  %conv8 = trunc i64 %and7 to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br i1 %cmp9, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.body
  br label %for.end

if.end.12:                                        ; preds = %for.body
  %12 = load i64, i64* %symbol.addr, align 8
  %13 = load i64, i64* %slot, align 8
  %sub = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car, align 8
  %cmp13 = icmp eq i64 %12, %16
  br i1 %cmp13, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.12
  %17 = load i64, i64* %i, align 8
  %shl = shl i64 %17, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %idx, align 8
  %18 = load i64, i64* %slot, align 8
  %19 = load i64, i64* %map.addr, align 8
  call void @XSETCDR(i64 %18, i64 %19)
  %20 = load i64, i64* %symbol.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 274)
  %21 = load i64, i64* %map.addr, align 8
  %call17 = call i64 @Fput(i64 %20, i64 %call16, i64 %21)
  %22 = load i64, i64* %symbol.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 275)
  %23 = load i64, i64* %idx, align 8
  %call19 = call i64 @Fput(i64 %22, i64 %call18, i64 %23)
  %24 = load i64, i64* %idx, align 8
  store i64 %24, i64* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %25 = load i64, i64* %i, align 8
  %inc = add nsw i64 %25, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %for.cond
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %len, align 8
  %cmp21 = icmp eq i64 %26, %27
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %for.end
  %28 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %call24 = call i64 @larger_vector(i64 %28, i64 1, i64 -1)
  store i64 %call24, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %for.end
  %29 = load i64, i64* %i, align 8
  %shl26 = shl i64 %29, 2
  %add27 = add i64 %shl26, 2
  store i64 %add27, i64* %idx, align 8
  %30 = load i64, i64* %symbol.addr, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 274)
  %31 = load i64, i64* %map.addr, align 8
  %call29 = call i64 @Fput(i64 %30, i64 %call28, i64 %31)
  %32 = load i64, i64* %symbol.addr, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 275)
  %33 = load i64, i64* %idx, align 8
  %call31 = call i64 @Fput(i64 %32, i64 %call30, i64 %33)
  %34 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %symbol.addr, align 8
  %37 = load i64, i64* %map.addr, align 8
  %call32 = call i64 @Fcons(i64 %36, i64 %37)
  call void @ASET(i64 %34, i64 %35, i64 %call32)
  %38 = load i64, i64* %idx, align 8
  store i64 %38, i64* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15
  %39 = load i64, i64* %retval
  ret i64 %39
}

declare void @XSETCDR(i64, i64) #1

declare i64 @Fcons(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_ccl() #0 {
entry:
  call void @staticpro(i64* @Vccl_program_table)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fmake_vector(i64 130, i64 %call)
  store i64 %call1, i64* @Vccl_program_table, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_ccl.o_fwd, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @Fmake_vector(i64 66, i64 %call2)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 32), align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_ccl.o_fwd.11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 101))
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 101), align 8
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.5
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_ccl.o_fwd.13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 306))
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 306), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sccl_program_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sccl_execute to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sccl_execute_on_string to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sregister_ccl_program to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sregister_code_conversion_map to %struct.Lisp_Subr*))
  ret void
}

declare void @staticpro(i64*) #1

declare i64 @Fmake_vector(i64, i64) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i64 @Fcopy_sequence(i64) #1

declare zeroext i1 @RANGED_INTEGERP(i64, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
