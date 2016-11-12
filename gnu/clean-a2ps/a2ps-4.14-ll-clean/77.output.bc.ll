; ModuleID = './lib/output.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.output = type { i8*, %struct.dstring*, %struct.darray*, i32 }
%struct.dstring = type { i64, i32, i64, i64, i64, i8* }
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.derivation = type { i32, i8*, void (%struct._IO_FILE*, i8*)*, i8*, i32*, i8**, %struct.output* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type { i8, %struct._IO_FILE* }
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.page_range = type opaque
%struct.file_job = type opaque

@.str = private unnamed_addr constant [12 x i8] c"derivations\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Output `%s' stats:\0A\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Outputing file %s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"% -- code follows this line --\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%%EndFontUsed\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%%IfFontUsed:\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%%IncludeResource:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"missing argument for `%s'\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Including file '%s' upon request given in '%s':%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%%DocumentProcessColors:\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"%%BeginResource:\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%%EndSetup\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"`setup' incoherence in output_file\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"%%BeginSetup\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%Face:\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"invalid face `%s'\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"  f%s %s scalefont setfont\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%Font:\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%Expand:\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Expand: requirement\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"`%s' with no matching `%s'\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"The derivations:\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"At %x: \00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"nothing \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"delayed_int (%d)\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"delayed_string \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"##BROKEN##\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"delayed_routine \00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"delayed_chunk \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define %struct.output* @output_new(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %res = alloca %struct.output*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.output* null, %struct.output** %res, align 8
  %call = call i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.output*
  store %struct.output* %0, %struct.output** %res, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.output*, %struct.output** %res, align 8
  %name1 = getelementptr inbounds %struct.output, %struct.output* %2, i32 0, i32 0
  store i8* %1, i8** %name1, align 8
  %call2 = call %struct.dstring* @ds_new(i64 51200, i32 2, i64 2)
  %3 = load %struct.output*, %struct.output** %res, align 8
  %chunk = getelementptr inbounds %struct.output, %struct.output* %3, i32 0, i32 1
  store %struct.dstring* %call2, %struct.dstring** %chunk, align 8
  %call3 = call %struct.darray* @da_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 10, i32 2, i64 2, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.derivation*, %struct._IO_FILE*)* @derivation_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* null)
  %4 = load %struct.output*, %struct.output** %res, align 8
  %derivations = getelementptr inbounds %struct.output, %struct.output* %4, i32 0, i32 2
  store %struct.darray* %call3, %struct.darray** %derivations, align 8
  %5 = load %struct.output*, %struct.output** %res, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %5, i32 0, i32 3
  store i32 0, i32* %to_void, align 4
  %6 = load %struct.output*, %struct.output** %res, align 8
  ret %struct.output* %6
}

declare i8* @xmalloc(i64) #1

declare %struct.dstring* @ds_new(i64, i32, i64) #1

declare %struct.darray* @da_new(i8*, i64, i32, i64, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @derivation_self_print(%struct.derivation* %derivation, %struct._IO_FILE* %stream) #0 {
entry:
  %derivation.addr = alloca %struct.derivation*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.derivation* %derivation, %struct.derivation** %derivation.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %2 = ptrtoint %struct.derivation* %1 to i32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 %2)
  %3 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %type = getelementptr inbounds %struct.derivation, %struct.derivation* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.9
    i32 4, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %7 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %delayed_int = getelementptr inbounds %struct.derivation, %struct.derivation* %7, i32 0, i32 4
  %8 = load i32*, i32** %delayed_int, align 8
  %9 = load i32, i32* %8, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i32 %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0))
  %11 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %delayed_string = getelementptr inbounds %struct.derivation, %struct.derivation* %11, i32 0, i32 5
  %12 = load i8**, i8*** %delayed_string, align 8
  %13 = load i8*, i8** %12, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %delayed_string6 = getelementptr inbounds %struct.derivation, %struct.derivation* %15, i32 0, i32 5
  %16 = load i8**, i8*** %delayed_string6, align 8
  %17 = load i8*, i8** %16, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* %17)
  br label %if.end

if.else:                                          ; preds = %sw.bb.4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0))
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.11, %sw.bb.9, %if.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_free(%struct.output* %out) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  %chunk = getelementptr inbounds %struct.output, %struct.output* %0, i32 0, i32 1
  %1 = load %struct.dstring*, %struct.dstring** %chunk, align 8
  call void @ds_erase(%struct.dstring* %1)
  %2 = load %struct.output*, %struct.output** %out.addr, align 8
  %derivations = getelementptr inbounds %struct.output, %struct.output* %2, i32 0, i32 2
  %3 = load %struct.darray*, %struct.darray** %derivations, align 8
  call void @da_free(%struct.darray* %3, void (i8*)* @free)
  %4 = load %struct.output*, %struct.output** %out.addr, align 8
  %5 = bitcast %struct.output* %4 to i8*
  call void @free(i8* %5) #3
  ret void
}

declare void @ds_erase(%struct.dstring*) #1

declare void @da_free(%struct.darray*, void (i8*)*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @output_report(%struct.output* %out, %struct._IO_FILE* %stream) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load %struct.output*, %struct.output** %out.addr, align 8
  %name = getelementptr inbounds %struct.output, %struct.output* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %2)
  %3 = load %struct.output*, %struct.output** %out.addr, align 8
  %chunk = getelementptr inbounds %struct.output, %struct.output* %3, i32 0, i32 1
  %4 = load %struct.dstring*, %struct.dstring** %chunk, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @ds_print_stats(%struct.dstring* %4, %struct._IO_FILE* %5)
  %6 = load %struct.output*, %struct.output** %out.addr, align 8
  %derivations = getelementptr inbounds %struct.output, %struct.output* %6, i32 0, i32 2
  %7 = load %struct.darray*, %struct.darray** %derivations, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @da_print_stats(%struct.darray* %7, %struct._IO_FILE* %8)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @ds_print_stats(%struct.dstring*, %struct._IO_FILE*) #1

declare void @da_print_stats(%struct.darray*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @output_to_void(%struct.output* %out, i32 %forget) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %forget.addr = alloca i32, align 4
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store i32 %forget, i32* %forget.addr, align 4
  %0 = load i32, i32* %forget.addr, align 4
  %1 = load %struct.output*, %struct.output** %out.addr, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %1, i32 0, i32 3
  store i32 %0, i32* %to_void, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @output_is_to_void(%struct.output* %out) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %0, i32 0, i32 3
  %1 = load i32, i32* %to_void, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @output(%struct.output* %out, i8* %format, ...) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %0, i32 0, i32 3
  %1 = load i32, i32* %to_void, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.output*, %struct.output** %out.addr, align 8
  %chunk = getelementptr inbounds %struct.output, %struct.output* %2, i32 0, i32 1
  %3 = load %struct.dstring*, %struct.dstring** %chunk, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @ds_unsafe_cat_vsprintf(%struct.dstring* %3, i8* %4, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @ds_unsafe_cat_vsprintf(%struct.dstring*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define void @output_char(%struct.output* %out, i8 zeroext %c) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %c.addr = alloca i8, align 1
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %0, i32 0, i32 3
  %1 = load i32, i32* %to_void, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.output*, %struct.output** %out.addr, align 8
  %chunk = getelementptr inbounds %struct.output, %struct.output* %2, i32 0, i32 1
  %3 = load %struct.dstring*, %struct.dstring** %chunk, align 8
  %4 = load i8, i8* %c.addr, align 1
  call void @ds_strccat(%struct.dstring* %3, i8 signext %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @ds_strccat(%struct.dstring*, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @output_delayed_routine(%struct.output* %out, void (%struct._IO_FILE*, i8*)* %fn, i8* %fn_arg) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %fn.addr = alloca void (%struct._IO_FILE*, i8*)*, align 8
  %fn_arg.addr = alloca i8*, align 8
  %tmp = alloca %struct.derivation*, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store void (%struct._IO_FILE*, i8*)* %fn, void (%struct._IO_FILE*, i8*)** %fn.addr, align 8
  store i8* %fn_arg, i8** %fn_arg.addr, align 8
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %0, i32 0, i32 3
  %1 = load i32, i32* %to_void, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.derivation* @new_derivation(i32 3)
  store %struct.derivation* %call, %struct.derivation** %tmp, align 8
  %2 = load void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, i8*)** %fn.addr, align 8
  %3 = load %struct.derivation*, %struct.derivation** %tmp, align 8
  %delayed_routine = getelementptr inbounds %struct.derivation, %struct.derivation* %3, i32 0, i32 2
  store void (%struct._IO_FILE*, i8*)* %2, void (%struct._IO_FILE*, i8*)** %delayed_routine, align 8
  %4 = load i8*, i8** %fn_arg.addr, align 8
  %5 = load %struct.derivation*, %struct.derivation** %tmp, align 8
  %delayed_routine_arg = getelementptr inbounds %struct.derivation, %struct.derivation* %5, i32 0, i32 3
  store i8* %4, i8** %delayed_routine_arg, align 8
  %6 = load %struct.output*, %struct.output** %out.addr, align 8
  call void @output_char(%struct.output* %6, i8 zeroext 0)
  %7 = load %struct.output*, %struct.output** %out.addr, align 8
  %derivations = getelementptr inbounds %struct.output, %struct.output* %7, i32 0, i32 2
  %8 = load %struct.darray*, %struct.darray** %derivations, align 8
  %9 = load %struct.derivation*, %struct.derivation** %tmp, align 8
  %10 = bitcast %struct.derivation* %9 to i8*
  call void @da_append(%struct.darray* %8, i8* %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.derivation* @new_derivation(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %res = alloca %struct.derivation*, align 8
  store i32 %type, i32* %type.addr, align 4
  %call = call i8* @xmalloc(i64 56)
  %0 = bitcast i8* %call to %struct.derivation*
  store %struct.derivation* %0, %struct.derivation** %res, align 8
  %1 = load i32, i32* %type.addr, align 4
  %2 = load %struct.derivation*, %struct.derivation** %res, align 8
  %type1 = getelementptr inbounds %struct.derivation, %struct.derivation* %2, i32 0, i32 0
  store i32 %1, i32* %type1, align 4
  %3 = load %struct.derivation*, %struct.derivation** %res, align 8
  ret %struct.derivation* %3
}

declare void @da_append(%struct.darray*, i8*) #1

; Function Attrs: nounwind uwtable
define void @output_delayed_chunk(%struct.output* %out, %struct.output* %out2) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %out2.addr = alloca %struct.output*, align 8
  %tmp = alloca %struct.derivation*, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store %struct.output* %out2, %struct.output** %out2.addr, align 8
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %0, i32 0, i32 3
  %1 = load i32, i32* %to_void, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.derivation* @new_derivation(i32 4)
  store %struct.derivation* %call, %struct.derivation** %tmp, align 8
  %2 = load %struct.output*, %struct.output** %out2.addr, align 8
  %3 = load %struct.derivation*, %struct.derivation** %tmp, align 8
  %delayed_chunk = getelementptr inbounds %struct.derivation, %struct.derivation* %3, i32 0, i32 6
  store %struct.output* %2, %struct.output** %delayed_chunk, align 8
  %4 = load %struct.output*, %struct.output** %out.addr, align 8
  call void @output_char(%struct.output* %4, i8 zeroext 0)
  %5 = load %struct.output*, %struct.output** %out.addr, align 8
  %derivations = getelementptr inbounds %struct.output, %struct.output* %5, i32 0, i32 2
  %6 = load %struct.darray*, %struct.darray** %derivations, align 8
  %7 = load %struct.derivation*, %struct.derivation** %tmp, align 8
  %8 = bitcast %struct.derivation* %7 to i8*
  call void @da_append(%struct.darray* %6, i8* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_delayed_int(%struct.output* %out, i32* %ptr) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %ptr.addr = alloca i32*, align 8
  %tmp = alloca %struct.derivation*, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store i32* %ptr, i32** %ptr.addr, align 8
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %0, i32 0, i32 3
  %1 = load i32, i32* %to_void, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.derivation* @new_derivation(i32 1)
  store %struct.derivation* %call, %struct.derivation** %tmp, align 8
  %2 = load i32*, i32** %ptr.addr, align 8
  %3 = load %struct.derivation*, %struct.derivation** %tmp, align 8
  %delayed_int = getelementptr inbounds %struct.derivation, %struct.derivation* %3, i32 0, i32 4
  store i32* %2, i32** %delayed_int, align 8
  %4 = load %struct.output*, %struct.output** %out.addr, align 8
  call void @output_char(%struct.output* %4, i8 zeroext 0)
  %5 = load %struct.output*, %struct.output** %out.addr, align 8
  %derivations = getelementptr inbounds %struct.output, %struct.output* %5, i32 0, i32 2
  %6 = load %struct.darray*, %struct.darray** %derivations, align 8
  %7 = load %struct.derivation*, %struct.derivation** %tmp, align 8
  %8 = bitcast %struct.derivation* %7 to i8*
  call void @da_append(%struct.darray* %6, i8* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_delayed_string(%struct.output* %out, i8** %ptr) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %ptr.addr = alloca i8**, align 8
  %tmp = alloca %struct.derivation*, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %0, i32 0, i32 3
  %1 = load i32, i32* %to_void, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.derivation* @new_derivation(i32 2)
  store %struct.derivation* %call, %struct.derivation** %tmp, align 8
  %2 = load i8**, i8*** %ptr.addr, align 8
  %3 = load %struct.derivation*, %struct.derivation** %tmp, align 8
  %delayed_string = getelementptr inbounds %struct.derivation, %struct.derivation* %3, i32 0, i32 5
  store i8** %2, i8*** %delayed_string, align 8
  %4 = load %struct.output*, %struct.output** %out.addr, align 8
  call void @output_char(%struct.output* %4, i8 zeroext 0)
  %5 = load %struct.output*, %struct.output** %out.addr, align 8
  %derivations = getelementptr inbounds %struct.output, %struct.output* %5, i32 0, i32 2
  %6 = load %struct.darray*, %struct.darray** %derivations, align 8
  %7 = load %struct.derivation*, %struct.derivation** %tmp, align 8
  %8 = bitcast %struct.derivation* %7 to i8*
  call void @da_append(%struct.darray* %6, i8* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_file(%struct.output* %out, %struct.a2ps_job* %job, i8* %name, i8* %suffix) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %name.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %stream = alloca %struct._IO_FILE*, align 8
  %filename = alloca i8*, align 8
  %token = alloca i8*, align 8
  %token2 = alloca i8*, align 8
  %line = alloca i32, align 4
  %dont_output = alloca i32, align 4
  %dest = alloca %struct.output*, align 8
  %value = alloca i8*, align 8
  %res = alloca i8*, align 8
  %buf2 = alloca i8*, align 8
  %res97 = alloca i8*, align 8
  %fontname = alloca i8*, align 8
  %face = alloca i32, align 4
  %basefontname = alloca i8*, align 8
  %true_font_name = alloca i8*, align 8
  %expansion = alloca i8*, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  store i8* null, i8** %token, align 8
  store i8* null, i8** %token2, align 8
  store i32 0, i32* %line, align 4
  store i32 0, i32* %dont_output, align 4
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  store %struct.output* %0, %struct.output** %dest, align 8
  %1 = load %struct.output*, %struct.output** %out.addr, align 8
  %to_void = getelementptr inbounds %struct.output, %struct.output* %1, i32 0, i32 3
  %2 = load i32, i32* %to_void, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %3
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %6 = load i8*, i8** %suffix.addr, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %7 = load i8*, i8** %suffix.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %cond.true ], [ %7, %cond.false ]
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* %5, i8* %cond)
  br label %if.end.3

if.end.3:                                         ; preds = %cond.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %9 = load i8**, i8*** %path, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load i8*, i8** %suffix.addr, align 8
  %call4 = call i8* @xpw_find_file(i8** %9, i8* %10, i8* %11)
  store i8* %call4, i8** %filename, align 8
  %12 = load i8*, i8** %filename, align 8
  %call5 = call %struct._IO_FILE* @xrfopen(i8* %12)
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %do.end
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call6 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %13)
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %line, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %line, align 4
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call9 = call i32 @strncmp(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay8, i64 30) #7
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %while.body
  br label %while.end

if.end.12:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.11, %while.cond
  br label %while.cond.13

while.cond.13:                                    ; preds = %if.end.193, %if.then.182, %if.end.175, %if.end.156, %if.then.125, %if.end.120, %if.end.112, %while.end.91, %if.end.73, %if.then.29, %if.then.24, %if.then.22, %while.end
  %arraydecay14 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call15 = call i8* @fgets(i8* %arraydecay14, i32 512, %struct._IO_FILE* %15)
  %tobool16 = icmp ne i8* %call15, null
  br i1 %tobool16, label %while.body.17, label %while.end.195

while.body.17:                                    ; preds = %while.cond.13
  %16 = load i32, i32* %line, align 4
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, i32* %line, align 4
  %arraydecay19 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call20 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay19, i64 13) #7
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %while.body.17
  store i32 0, i32* %dont_output, align 4
  br label %while.cond.13

if.else:                                          ; preds = %while.body.17
  %17 = load i32, i32* %dont_output, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else
  br label %while.cond.13

if.else.25:                                       ; preds = %if.else
  %arraydecay26 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call27 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay26, i64 13) #7
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.else.25
  br label %while.cond.13

if.end.30:                                        ; preds = %if.else.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  %arraydecay33 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call34 = call i32 @strncmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay33, i64 18) #7
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.else.74, label %if.then.36

if.then.36:                                       ; preds = %if.end.32
  %arraydecay37 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call38 = call i8* @xstrdup(i8* %arraydecay37)
  store i8* %call38, i8** %buf2, align 8
  %arraydecay39 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call40 = call i8* @strtok(i8* %arraydecay39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call40, i8** %token, align 8
  %call41 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call41, i8** %token2, align 8
  %18 = load i8*, i8** %token2, align 8
  %cmp42 = icmp eq i8* %18, null
  br i1 %cmp42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.36
  %19 = load i8*, i8** %filename, align 8
  %20 = load i32, i32* %line, align 4
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %21 = load i8*, i8** %token, align 8
  %call45 = call i8* @quotearg(i8* %21)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %19, i32 %20, i8* %call44, i8* %call45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.36
  %22 = load i8*, i8** %token2, align 8
  store i8* %22, i8** %res, align 8
  %23 = load i8*, i8** %res, align 8
  %call47 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #7
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.67

if.then.49:                                       ; preds = %if.end.46
  %call50 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call50, i8** %token2, align 8
  %24 = load i8*, i8** %token2, align 8
  %cmp51 = icmp eq i8* %24, null
  br i1 %cmp51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.then.49
  %25 = load i8*, i8** %filename, align 8
  %26 = load i32, i32* %line, align 4
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %27 = load i8*, i8** %token, align 8
  %call54 = call i8* @quotearg(i8* %27)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %25, i32 %26, i8* %call53, i8* %call54)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.then.49
  %28 = load i8*, i8** %token2, align 8
  store i8* %28, i8** %value, align 8
  %29 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %30 = load i8*, i8** %res, align 8
  %31 = load i8*, i8** %value, align 8
  %call56 = call i32 @exist_resource(%struct.a2ps_job* %29, i8* %30, i8* %31)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.66, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %33 = load i8*, i8** %res, align 8
  %34 = load i8*, i8** %value, align 8
  call void @add_needed_resource(%struct.a2ps_job* %32, i8* %33, i8* %34)
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %35 = load i32, i32* @msg_verbosity, align 4
  %and60 = and i32 64, %35
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %do.body.59
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i8*, i8** %value, align 8
  %38 = load i8*, i8** %filename, align 8
  %39 = load i32, i32* %line, align 4
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0), i8* %37, i8* %38, i32 %39)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %do.body.59
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %40 = load %struct.output*, %struct.output** %dest, align 8
  %41 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %42 = load i8*, i8** %value, align 8
  call void @output_file(%struct.output* %40, %struct.a2ps_job* %41, i8* %42, i8* null)
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.65, %if.end.55
  br label %if.end.73

if.else.67:                                       ; preds = %if.end.46
  %43 = load %struct.output*, %struct.output** %dest, align 8
  %44 = load i8*, i8** %buf2, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %44)
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.71, %if.else.67
  %call69 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call69, i8** %value, align 8
  %tobool70 = icmp ne i8* %call69, null
  br i1 %tobool70, label %while.body.71, label %while.end.72

while.body.71:                                    ; preds = %while.cond.68
  %45 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %46 = load i8*, i8** %res, align 8
  %47 = load i8*, i8** %value, align 8
  call void @add_needed_resource(%struct.a2ps_job* %45, i8* %46, i8* %47)
  br label %while.cond.68

while.end.72:                                     ; preds = %while.cond.68
  br label %if.end.73

if.end.73:                                        ; preds = %while.end.72, %if.end.66
  %48 = load i8*, i8** %buf2, align 8
  call void @free(i8* %48) #3
  br label %while.cond.13

if.else.74:                                       ; preds = %if.end.32
  %arraydecay75 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call76 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay75, i64 24) #7
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.else.92, label %if.then.78

if.then.78:                                       ; preds = %if.else.74
  %arraydecay79 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call80 = call i8* @strtok(i8* %arraydecay79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call80, i8** %token, align 8
  %call81 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call81, i8** %token2, align 8
  %49 = load i8*, i8** %token2, align 8
  %cmp82 = icmp eq i8* %49, null
  br i1 %cmp82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.then.78
  %50 = load i8*, i8** %filename, align 8
  %51 = load i32, i32* %line, align 4
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %52 = load i8*, i8** %token, align 8
  %call85 = call i8* @quotearg(i8* %52)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %50, i32 %51, i8* %call84, i8* %call85)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.then.78
  %53 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %54 = load i8*, i8** %token2, align 8
  call void @add_process_color(%struct.a2ps_job* %53, i8* %54)
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.90, %if.end.86
  %call88 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call88, i8** %token2, align 8
  %tobool89 = icmp ne i8* %call88, null
  br i1 %tobool89, label %while.body.90, label %while.end.91

while.body.90:                                    ; preds = %while.cond.87
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %56 = load i8*, i8** %token2, align 8
  call void @add_process_color(%struct.a2ps_job* %55, i8* %56)
  br label %while.cond.87

while.end.91:                                     ; preds = %while.cond.87
  br label %while.cond.13

if.else.92:                                       ; preds = %if.else.74
  %arraydecay93 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call94 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay93, i64 16) #7
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.else.113, label %if.then.96

if.then.96:                                       ; preds = %if.else.92
  %57 = load %struct.output*, %struct.output** %dest, align 8
  %arraydecay98 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  call void (%struct.output*, i8*, ...) @output(%struct.output* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay98)
  %arraydecay99 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call100 = call i8* @strtok(i8* %arraydecay99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call100, i8** %token, align 8
  %call101 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call101, i8** %token2, align 8
  %58 = load i8*, i8** %token2, align 8
  %cmp102 = icmp eq i8* %58, null
  br i1 %cmp102, label %if.then.103, label %if.end.106

if.then.103:                                      ; preds = %if.then.96
  %59 = load i8*, i8** %filename, align 8
  %60 = load i32, i32* %line, align 4
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %61 = load i8*, i8** %token, align 8
  %call105 = call i8* @quotearg(i8* %61)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %59, i32 %60, i8* %call104, i8* %call105)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.103, %if.then.96
  %62 = load i8*, i8** %token2, align 8
  store i8* %62, i8** %res97, align 8
  %call107 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call107, i8** %token2, align 8
  %63 = load i8*, i8** %token2, align 8
  %cmp108 = icmp eq i8* %63, null
  br i1 %cmp108, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %if.end.106
  %64 = load i8*, i8** %filename, align 8
  %65 = load i32, i32* %line, align 4
  %call110 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %66 = load i8*, i8** %token, align 8
  %call111 = call i8* @quotearg(i8* %66)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %64, i32 %65, i8* %call110, i8* %call111)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %if.end.106
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %68 = load i8*, i8** %res97, align 8
  %69 = load i8*, i8** %token2, align 8
  call void @add_supplied_resource(%struct.a2ps_job* %67, i8* %68, i8* %69)
  br label %while.cond.13

if.else.113:                                      ; preds = %if.else.92
  %arraydecay114 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call115 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay114, i64 10) #7
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.else.121, label %if.then.117

if.then.117:                                      ; preds = %if.else.113
  %70 = load %struct.output*, %struct.output** %dest, align 8
  %71 = load %struct.output*, %struct.output** %out.addr, align 8
  %cmp118 = icmp eq %struct.output* %70, %71
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.then.117
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.then.117
  %72 = load %struct.output*, %struct.output** %out.addr, align 8
  store %struct.output* %72, %struct.output** %dest, align 8
  br label %while.cond.13

if.else.121:                                      ; preds = %if.else.113
  %arraydecay122 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call123 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay122, i64 12) #7
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.else.126, label %if.then.125

if.then.125:                                      ; preds = %if.else.121
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %73, i32 0, i32 64
  %74 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %setup = getelementptr inbounds %struct.ps_status, %struct.ps_status* %74, i32 0, i32 14
  %75 = load %struct.output*, %struct.output** %setup, align 8
  store %struct.output* %75, %struct.output** %dest, align 8
  br label %while.cond.13

if.else.126:                                      ; preds = %if.else.121
  %arraydecay127 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call128 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay127, i64 6) #7
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.else.157, label %if.then.130

if.then.130:                                      ; preds = %if.else.126
  %arraydecay131 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call132 = call i8* @strtok(i8* %arraydecay131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call132, i8** %token, align 8
  %call133 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call133, i8** %token2, align 8
  %76 = load i8*, i8** %token2, align 8
  %cmp134 = icmp eq i8* %76, null
  br i1 %cmp134, label %if.then.135, label %if.end.138

if.then.135:                                      ; preds = %if.then.130
  %77 = load i8*, i8** %filename, align 8
  %78 = load i32, i32* %line, align 4
  %call136 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %79 = load i8*, i8** %token, align 8
  %call137 = call i8* @quotearg(i8* %79)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %77, i32 %78, i8* %call136, i8* %call137)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.135, %if.then.130
  %80 = load i8*, i8** %token2, align 8
  %call139 = call i32 @string_to_face(i8* %80)
  store i32 %call139, i32* %face, align 4
  %81 = load i32, i32* %face, align 4
  %cmp140 = icmp eq i32 %81, -1
  br i1 %cmp140, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %if.end.138
  %82 = load i8*, i8** %filename, align 8
  %83 = load i32, i32* %line, align 4
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0)) #3
  %84 = load i8*, i8** %token2, align 8
  %call143 = call i8* @quotearg(i8* %84)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %82, i32 %83, i8* %call142, i8* %call143)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %if.end.138
  %call145 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call145, i8** %token2, align 8
  %85 = load i8*, i8** %token2, align 8
  %cmp146 = icmp eq i8* %85, null
  br i1 %cmp146, label %if.then.147, label %if.end.150

if.then.147:                                      ; preds = %if.end.144
  %86 = load i8*, i8** %filename, align 8
  %87 = load i32, i32* %line, align 4
  %call148 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %88 = load i8*, i8** %token, align 8
  %call149 = call i8* @quotearg(i8* %88)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %86, i32 %87, i8* %call148, i8* %call149)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.147, %if.end.144
  %89 = load i8*, i8** %token2, align 8
  store i8* %89, i8** %fontname, align 8
  %90 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %91 = load i32, i32* %face, align 4
  %92 = load i8*, i8** %fontname, align 8
  call void @face_set_font(%struct.a2ps_job* %90, i32 %91, i8* %92)
  %call151 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #3
  store i8* %call151, i8** %token2, align 8
  %93 = load i8*, i8** %token2, align 8
  %cmp152 = icmp eq i8* %93, null
  br i1 %cmp152, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.end.150
  %94 = load i8*, i8** %filename, align 8
  %95 = load i32, i32* %line, align 4
  %call154 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %96 = load i8*, i8** %token, align 8
  %call155 = call i8* @quotearg(i8* %96)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %94, i32 %95, i8* %call154, i8* %call155)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.end.150
  %97 = load %struct.output*, %struct.output** %dest, align 8
  %98 = load i8*, i8** %fontname, align 8
  %99 = load i8*, i8** %token2, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* %98, i8* %99)
  br label %while.cond.13

if.else.157:                                      ; preds = %if.else.126
  %arraydecay158 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call159 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay158, i64 6) #7
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.else.178, label %if.then.161

if.then.161:                                      ; preds = %if.else.157
  %arraydecay162 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call163 = call i8* @strtok(i8* %arraydecay162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call163, i8** %token, align 8
  %call164 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  store i8* %call164, i8** %token2, align 8
  %100 = load i8*, i8** %token2, align 8
  %cmp165 = icmp eq i8* %100, null
  br i1 %cmp165, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %if.then.161
  %101 = load i8*, i8** %filename, align 8
  %102 = load i32, i32* %line, align 4
  %call167 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %103 = load i8*, i8** %token, align 8
  %call168 = call i8* @quotearg(i8* %103)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %101, i32 %102, i8* %call167, i8* %call168)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %if.then.161
  %104 = load i8*, i8** %token2, align 8
  store i8* %104, i8** %basefontname, align 8
  %call170 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #3
  store i8* %call170, i8** %token2, align 8
  %105 = load i8*, i8** %token2, align 8
  %cmp171 = icmp eq i8* %105, null
  br i1 %cmp171, label %if.then.172, label %if.end.175

if.then.172:                                      ; preds = %if.end.169
  %106 = load i8*, i8** %filename, align 8
  %107 = load i32, i32* %line, align 4
  %call173 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #3
  %108 = load i8*, i8** %token, align 8
  %call174 = call i8* @quotearg(i8* %108)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %106, i32 %107, i8* %call173, i8* %call174)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.172, %if.end.169
  %109 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %109, i32 0, i32 45
  %110 = load %struct.encoding*, %struct.encoding** %requested_encoding, align 8
  %111 = load i8*, i8** %basefontname, align 8
  call void @encoding_add_font_name_used(%struct.encoding* %110, i8* %111)
  %112 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %113 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding176 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %113, i32 0, i32 45
  %114 = load %struct.encoding*, %struct.encoding** %requested_encoding176, align 8
  %115 = load i8*, i8** %basefontname, align 8
  %call177 = call i8* @encoding_resolve_font_substitute(%struct.a2ps_job* %112, %struct.encoding* %114, i8* %115)
  store i8* %call177, i8** %true_font_name, align 8
  %116 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %117 = load i8*, i8** %true_font_name, align 8
  call void @add_required_font(%struct.a2ps_job* %116, i8* %117)
  %118 = load %struct.output*, %struct.output** %dest, align 8
  %119 = load i8*, i8** %basefontname, align 8
  %120 = load i8*, i8** %token2, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* %119, i8* %120)
  br label %while.cond.13

if.else.178:                                      ; preds = %if.else.157
  %arraydecay179 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call180 = call i32 @strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay179, i64 8) #7
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.end.186, label %if.then.182

if.then.182:                                      ; preds = %if.else.178
  %arraydecay183 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay183, i64 8
  %call184 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #3
  store i8* %call184, i8** %token, align 8
  %121 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %122 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %122, i32 0, i32 68
  %123 = load %struct.darray*, %struct.darray** %jobs, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %123, i32 0, i32 6
  %124 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %124, i64 0
  %125 = load i8*, i8** %arrayidx, align 8
  %126 = bitcast i8* %125 to %struct.file_job*
  %127 = load i8*, i8** %token, align 8
  %call185 = call i8* @expand_user_string(%struct.a2ps_job* %121, %struct.file_job* %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %127)
  store i8* %call185, i8** %expansion, align 8
  %128 = load %struct.output*, %struct.output** %dest, align 8
  %129 = load i8*, i8** %expansion, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %128, i8* %129)
  br label %while.cond.13

if.end.186:                                       ; preds = %if.else.178
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192
  %130 = load %struct.output*, %struct.output** %dest, align 8
  %arraydecay194 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  call void (%struct.output*, i8*, ...) @output(%struct.output* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay194)
  br label %while.cond.13

while.end.195:                                    ; preds = %while.cond.13
  %131 = load %struct.output*, %struct.output** %dest, align 8
  %132 = load %struct.output*, %struct.output** %out.addr, align 8
  %cmp196 = icmp ne %struct.output* %131, %132
  br i1 %cmp196, label %if.then.197, label %if.end.199

if.then.197:                                      ; preds = %while.end.195
  %133 = load i8*, i8** %filename, align 8
  %134 = load i32, i32* %line, align 4
  %call198 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0)) #3
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %133, i32 %134, i8* %call198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.197, %while.end.195
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call200 = call i32 @fclose(%struct._IO_FILE* %135)
  %136 = load i8*, i8** %filename, align 8
  call void @free(i8* %136) #3
  br label %return

return:                                           ; preds = %if.end.199, %if.then
  ret void
}

declare i8* @xpw_find_file(i8**, i8*, i8*) #1

declare %struct._IO_FILE* @xrfopen(i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @quotearg(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @exist_resource(%struct.a2ps_job*, i8*, i8*) #1

declare void @add_needed_resource(%struct.a2ps_job*, i8*, i8*) #1

declare void @add_process_color(%struct.a2ps_job*, i8*) #1

declare void @add_supplied_resource(%struct.a2ps_job*, i8*, i8*) #1

declare void @error(i32, i32, i8*, ...) #1

declare i32 @string_to_face(i8*) #1

declare void @face_set_font(%struct.a2ps_job*, i32, i8*) #1

declare void @encoding_add_font_name_used(%struct.encoding*, i8*) #1

declare i8* @encoding_resolve_font_substitute(%struct.a2ps_job*, %struct.encoding*, i8*) #1

declare void @add_required_font(%struct.a2ps_job*, i8*) #1

declare i8* @expand_user_string(%struct.a2ps_job*, %struct.file_job*, i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @output_self_print(%struct.output* %out, %struct._IO_FILE* %stream) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0))
  %1 = load %struct.output*, %struct.output** %out.addr, align 8
  %derivations = getelementptr inbounds %struct.output, %struct.output* %1, i32 0, i32 2
  %2 = load %struct.darray*, %struct.darray** %derivations, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @da_self_print(%struct.darray* %2, %struct._IO_FILE* %3)
  ret void
}

declare void @da_self_print(%struct.darray*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @output_dump(%struct.output* %out, %struct._IO_FILE* %stream) #0 {
entry:
  %out.addr = alloca %struct.output*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  %piece = alloca i8*, align 8
  %derivations = alloca %struct.derivation**, align 8
  store %struct.output* %out, %struct.output** %out.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.output*, %struct.output** %out.addr, align 8
  %chunk = getelementptr inbounds %struct.output, %struct.output* %0, i32 0, i32 1
  %1 = load %struct.dstring*, %struct.dstring** %chunk, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %1, i32 0, i32 5
  %2 = load i8*, i8** %content, align 8
  store i8* %2, i8** %piece, align 8
  %3 = load %struct.output*, %struct.output** %out.addr, align 8
  %derivations1 = getelementptr inbounds %struct.output, %struct.output* %3, i32 0, i32 2
  %4 = load %struct.darray*, %struct.darray** %derivations1, align 8
  %content2 = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 6
  %5 = load i8**, i8*** %content2, align 8
  %6 = bitcast i8** %5 to %struct.derivation**
  store %struct.derivation** %6, %struct.derivation*** %derivations, align 8
  %7 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 128, %7
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.output*, %struct.output** %out.addr, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @output_report(%struct.output* %8, %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** %piece, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* %10, %struct._IO_FILE* %11)
  %12 = load i8*, i8** %piece, align 8
  %call3 = call i64 @strlen(i8* %12) #7
  %13 = load i8*, i8** %piece, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %call3
  store i8* %add.ptr, i8** %piece, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.output*, %struct.output** %out.addr, align 8
  %derivations4 = getelementptr inbounds %struct.output, %struct.output* %15, i32 0, i32 2
  %16 = load %struct.darray*, %struct.darray** %derivations4, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %16, i32 0, i32 5
  %17 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %14, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.derivation**, %struct.derivation*** %derivations, align 8
  %arrayidx = getelementptr inbounds %struct.derivation*, %struct.derivation** %20, i64 %19
  %21 = load %struct.derivation*, %struct.derivation** %arrayidx, align 8
  call void @underivation(%struct._IO_FILE* %18, %struct.derivation* %21)
  %22 = load i8*, i8** %piece, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %piece, align 8
  %23 = load i8*, i8** %piece, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i32 @fputs(i8* %23, %struct._IO_FILE* %24)
  %25 = load i8*, i8** %piece, align 8
  %call6 = call i64 @strlen(i8* %25) #7
  %26 = load i8*, i8** %piece, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %26, i64 %call6
  store i8* %add.ptr7, i8** %piece, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %i, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @underivation(%struct._IO_FILE* %stream, %struct.derivation* %derivation) #5 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %derivation.addr = alloca %struct.derivation*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.derivation* %derivation, %struct.derivation** %derivation.addr, align 8
  %0 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %type = getelementptr inbounds %struct.derivation, %struct.derivation* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 4, label %sw.bb.4
    i32 0, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %delayed_routine = getelementptr inbounds %struct.derivation, %struct.derivation* %2, i32 0, i32 2
  %3 = load void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, i8*)** %delayed_routine, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %delayed_routine_arg = getelementptr inbounds %struct.derivation, %struct.derivation* %5, i32 0, i32 3
  %6 = load i8*, i8** %delayed_routine_arg, align 8
  call void %3(%struct._IO_FILE* %4, i8* %6)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %8 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %delayed_int = getelementptr inbounds %struct.derivation, %struct.derivation* %8, i32 0, i32 4
  %9 = load i32*, i32** %delayed_int, align 8
  %10 = load i32, i32* %9, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 %10)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %12 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %delayed_string = getelementptr inbounds %struct.derivation, %struct.derivation* %12, i32 0, i32 5
  %13 = load i8**, i8*** %delayed_string, align 8
  %14 = load i8*, i8** %13, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %14)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %15 = load %struct.derivation*, %struct.derivation** %derivation.addr, align 8
  %delayed_chunk = getelementptr inbounds %struct.derivation, %struct.derivation* %15, i32 0, i32 6
  %16 = load %struct.output*, %struct.output** %delayed_chunk, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @output_dump(%struct.output* %16, %struct._IO_FILE* %17)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb.4, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @undivert(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @a2ps_open_output_stream(%struct.a2ps_job* %0)
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 65
  %2 = load %struct.output*, %struct.output** %divertion, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_stream = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 27
  %4 = load %struct.stream*, %struct.stream** %output_stream, align 8
  %fp = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @output_dump(%struct.output* %2, %struct._IO_FILE* %5)
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @a2ps_close_output_stream(%struct.a2ps_job* %6)
  ret void
}

declare void @a2ps_open_output_stream(%struct.a2ps_job*) #1

declare void @a2ps_close_output_stream(%struct.a2ps_job*) #1

; Function Attrs: noreturn nounwind
declare void @abort() #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
