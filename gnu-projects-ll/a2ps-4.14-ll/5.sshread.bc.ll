; ModuleID = './src/sshread.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fface_s = type { i32, i32 }
%struct.token = type { %struct.re_registers*, %struct.darray* }
%struct.re_registers = type { i32, i32*, i32* }
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.sequence = type { %struct.rule*, %struct.fface_s, %struct.words*, %struct.words* }
%struct.rule = type { i8*, %struct.re_pattern_buffer*, %struct.darray* }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.words = type { %struct.darray*, %struct.darray*, [256 x %struct.rule**], [256 x %struct.rule**] }
%struct.buffer_s = type { i8*, i64, i64, %struct._IO_FILE*, i8, i8*, i32, i8, i8*, i64, i64, i64, i64, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.style_sheet = type { i8*, i8*, i8*, [4 x i32], [4 x i32], i8*, %struct.darray*, i32, [256 x i8], [256 x i8], %struct.words*, %struct.words*, %struct.darray* }
%struct.faced_string = type { i8*, i32, %struct.fface_s }
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Plain_fface = external global %struct.fface_s, align 4
@token = internal global %struct.token* null, align 8
@plain_rhs = internal global %struct.darray* null, align 8
@job = external global %struct.a2ps_job*, align 8
@.str = private unnamed_addr constant [31 x i8] c"unknown encoding `%s', ignored\00", align 1
@ssh_get_token.return_to_plain = internal global i32 0, align 4
@ssh_get_token.sequence = internal global %struct.sequence* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"An error occured while matching\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @ssh_print_postscript(%struct.a2ps_job* %Job, %struct.buffer_s* %buffer, %struct.style_sheet* %sheet) #0 {
entry:
  %Job.addr = alloca %struct.a2ps_job*, align 8
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %fface = alloca %struct.fface_s, align 4
  %bufenc = alloca [512 x i8], align 16
  %grabbing_encoding = alloca i32, align 4
  %i = alloca i64, align 8
  %newenc = alloca %struct.encoding*, align 8
  store %struct.a2ps_job* %Job, %struct.a2ps_job** %Job.addr, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  store i32 0, i32* %grabbing_encoding, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %bufenc, i32 0, i32 0
  store i8 0, i8* %arraydecay, align 1
  %0 = bitcast %struct.fface_s* %fface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.fface_s* @Plain_fface to i8*), i64 8, i32 4, i1 false)
  %1 = load %struct.token*, %struct.token** @token, align 8
  %tobool = icmp ne %struct.token* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.token* @token_new()
  store %struct.token* %call, %struct.token** @token, align 8
  %call1 = call %struct.darray* @rhs_plain_new()
  store %struct.darray* %call1, %struct.darray** @plain_rhs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %3 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %call2 = call i32 @ssh_get_token(%struct.buffer_s* %2, %struct.style_sheet* %3)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.token*, %struct.token** @token, align 8
  %rhs = getelementptr inbounds %struct.token, %struct.token* %5, i32 0, i32 1
  %6 = load %struct.darray*, %struct.darray** %rhs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 5
  %7 = load i64, i64* %len, align 8
  %cmp3 = icmp ult i64 %4, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %face = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 0
  %8 = load i32, i32* %face, align 4
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.token*, %struct.token** @token, align 8
  %rhs4 = getelementptr inbounds %struct.token, %struct.token* %10, i32 0, i32 1
  %11 = load %struct.darray*, %struct.darray** %rhs4, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 6
  %12 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %9
  %13 = load i8*, i8** %arrayidx, align 8
  %14 = bitcast i8* %13 to %struct.faced_string*
  %face5 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %14, i32 0, i32 2
  %face6 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %face5, i32 0, i32 0
  %15 = load i32, i32* %face6, align 4
  %cmp7 = icmp eq i32 %8, %15
  br i1 %cmp7, label %land.lhs.true, label %if.then.14

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %16 = load i32, i32* %flags, align 4
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.token*, %struct.token** @token, align 8
  %rhs8 = getelementptr inbounds %struct.token, %struct.token* %18, i32 0, i32 1
  %19 = load %struct.darray*, %struct.darray** %rhs8, align 8
  %content9 = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 6
  %20 = load i8**, i8*** %content9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %20, i64 %17
  %21 = load i8*, i8** %arrayidx10, align 8
  %22 = bitcast i8* %21 to %struct.faced_string*
  %face11 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %22, i32 0, i32 2
  %flags12 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %face11, i32 0, i32 1
  %23 = load i32, i32* %flags12, align 4
  %cmp13 = icmp eq i32 %16, %23
  br i1 %cmp13, label %if.end.78, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true, %for.body
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.token*, %struct.token** @token, align 8
  %rhs15 = getelementptr inbounds %struct.token, %struct.token* %25, i32 0, i32 1
  %26 = load %struct.darray*, %struct.darray** %rhs15, align 8
  %content16 = getelementptr inbounds %struct.darray, %struct.darray* %26, i32 0, i32 6
  %27 = load i8**, i8*** %content16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %27, i64 %24
  %28 = load i8*, i8** %arrayidx17, align 8
  %29 = bitcast i8* %28 to %struct.faced_string*
  %face18 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %29, i32 0, i32 2
  %flags19 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %face18, i32 0, i32 1
  %30 = load i32, i32* %flags19, align 4
  %and = and i32 %30, 2
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.14
  %31 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %31, i32 0, i32 59
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %tag1, i32 0, i32 0
  store i8 0, i8* %arraydecay22, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.14
  %32 = load i64, i64* %i, align 8
  %33 = load %struct.token*, %struct.token** @token, align 8
  %rhs24 = getelementptr inbounds %struct.token, %struct.token* %33, i32 0, i32 1
  %34 = load %struct.darray*, %struct.darray** %rhs24, align 8
  %content25 = getelementptr inbounds %struct.darray, %struct.darray* %34, i32 0, i32 6
  %35 = load i8**, i8*** %content25, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %35, i64 %32
  %36 = load i8*, i8** %arrayidx26, align 8
  %37 = bitcast i8* %36 to %struct.faced_string*
  %face27 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %37, i32 0, i32 2
  %flags28 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %face27, i32 0, i32 1
  %38 = load i32, i32* %flags28, align 4
  %and29 = and i32 %38, 4
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.23
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %39, i32 0, i32 60
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %tag2, i32 0, i32 0
  store i8 0, i8* %arraydecay32, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.23
  %40 = load i64, i64* %i, align 8
  %41 = load %struct.token*, %struct.token** @token, align 8
  %rhs34 = getelementptr inbounds %struct.token, %struct.token* %41, i32 0, i32 1
  %42 = load %struct.darray*, %struct.darray** %rhs34, align 8
  %content35 = getelementptr inbounds %struct.darray, %struct.darray* %42, i32 0, i32 6
  %43 = load i8**, i8*** %content35, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %43, i64 %40
  %44 = load i8*, i8** %arrayidx36, align 8
  %45 = bitcast i8* %44 to %struct.faced_string*
  %face37 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %45, i32 0, i32 2
  %flags38 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %face37, i32 0, i32 1
  %46 = load i32, i32* %flags38, align 4
  %and39 = and i32 %46, 8
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.33
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 61
  %arraydecay42 = getelementptr inbounds [256 x i8], [256 x i8]* %tag3, i32 0, i32 0
  store i8 0, i8* %arraydecay42, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.33
  %48 = load i64, i64* %i, align 8
  %49 = load %struct.token*, %struct.token** @token, align 8
  %rhs44 = getelementptr inbounds %struct.token, %struct.token* %49, i32 0, i32 1
  %50 = load %struct.darray*, %struct.darray** %rhs44, align 8
  %content45 = getelementptr inbounds %struct.darray, %struct.darray* %50, i32 0, i32 6
  %51 = load i8**, i8*** %content45, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %51, i64 %48
  %52 = load i8*, i8** %arrayidx46, align 8
  %53 = bitcast i8* %52 to %struct.faced_string*
  %face47 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %53, i32 0, i32 2
  %flags48 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %face47, i32 0, i32 1
  %54 = load i32, i32* %flags48, align 4
  %and49 = and i32 %54, 16
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.43
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 62
  %arraydecay52 = getelementptr inbounds [256 x i8], [256 x i8]* %tag4, i32 0, i32 0
  store i8 0, i8* %arraydecay52, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.43
  %56 = load i32, i32* %grabbing_encoding, align 4
  %tobool54 = icmp ne i32 %56, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.73

land.lhs.true.55:                                 ; preds = %if.end.53
  %57 = load i64, i64* %i, align 8
  %58 = load %struct.token*, %struct.token** @token, align 8
  %rhs56 = getelementptr inbounds %struct.token, %struct.token* %58, i32 0, i32 1
  %59 = load %struct.darray*, %struct.darray** %rhs56, align 8
  %content57 = getelementptr inbounds %struct.darray, %struct.darray* %59, i32 0, i32 6
  %60 = load i8**, i8*** %content57, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %60, i64 %57
  %61 = load i8*, i8** %arrayidx58, align 8
  %62 = bitcast i8* %61 to %struct.faced_string*
  %face59 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %62, i32 0, i32 2
  %flags60 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %face59, i32 0, i32 1
  %63 = load i32, i32* %flags60, align 4
  %and61 = and i32 %63, 512
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.end.73, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.55
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %arraydecay64 = getelementptr inbounds [512 x i8], [512 x i8]* %bufenc, i32 0, i32 0
  %call65 = call %struct.encoding* @get_encoding_by_alias(%struct.a2ps_job* %64, i8* %arraydecay64)
  store %struct.encoding* %call65, %struct.encoding** %newenc, align 8
  %65 = load %struct.encoding*, %struct.encoding** %newenc, align 8
  %tobool66 = icmp ne %struct.encoding* %65, null
  br i1 %tobool66, label %if.else, label %if.then.67

if.then.67:                                       ; preds = %if.then.63
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #1
  %arraydecay69 = getelementptr inbounds [512 x i8], [512 x i8]* %bufenc, i32 0, i32 0
  %call70 = call i8* @quotearg(i8* %arraydecay69)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call68, i8* %call70)
  br label %if.end.71

if.else:                                          ; preds = %if.then.63
  %66 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %67 = load %struct.encoding*, %struct.encoding** %newenc, align 8
  call void @ps_switch_encoding(%struct.a2ps_job* %66, %struct.encoding* %67)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else, %if.then.67
  %arraydecay72 = getelementptr inbounds [512 x i8], [512 x i8]* %bufenc, i32 0, i32 0
  store i8 0, i8* %arraydecay72, align 1
  store i32 0, i32* %grabbing_encoding, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.71, %land.lhs.true.55, %if.end.53
  %68 = load i64, i64* %i, align 8
  %69 = load %struct.token*, %struct.token** @token, align 8
  %rhs74 = getelementptr inbounds %struct.token, %struct.token* %69, i32 0, i32 1
  %70 = load %struct.darray*, %struct.darray** %rhs74, align 8
  %content75 = getelementptr inbounds %struct.darray, %struct.darray* %70, i32 0, i32 6
  %71 = load i8**, i8*** %content75, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %71, i64 %68
  %72 = load i8*, i8** %arrayidx76, align 8
  %73 = bitcast i8* %72 to %struct.faced_string*
  %face77 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %73, i32 0, i32 2
  %74 = bitcast %struct.fface_s* %fface to i8*
  %75 = bitcast %struct.fface_s* %face77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 8, i32 4, i1 false)
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.73, %land.lhs.true
  %76 = load i64, i64* %i, align 8
  %77 = load %struct.token*, %struct.token** @token, align 8
  %rhs79 = getelementptr inbounds %struct.token, %struct.token* %77, i32 0, i32 1
  %78 = load %struct.darray*, %struct.darray** %rhs79, align 8
  %content80 = getelementptr inbounds %struct.darray, %struct.darray* %78, i32 0, i32 6
  %79 = load i8**, i8*** %content80, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %79, i64 %76
  %80 = load i8*, i8** %arrayidx81, align 8
  %81 = bitcast i8* %80 to %struct.faced_string*
  %string = getelementptr inbounds %struct.faced_string, %struct.faced_string* %81, i32 0, i32 0
  %82 = load i8*, i8** %string, align 8
  %tobool82 = icmp ne i8* %82, null
  br i1 %tobool82, label %if.then.83, label %if.else.143

if.then.83:                                       ; preds = %if.end.78
  %flags84 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %83 = load i32, i32* %flags84, align 4
  %and85 = and i32 %83, 2
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.95

if.then.87:                                       ; preds = %if.then.83
  %84 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag188 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %84, i32 0, i32 59
  %arraydecay89 = getelementptr inbounds [256 x i8], [256 x i8]* %tag188, i32 0, i32 0
  %85 = load i64, i64* %i, align 8
  %86 = load %struct.token*, %struct.token** @token, align 8
  %rhs90 = getelementptr inbounds %struct.token, %struct.token* %86, i32 0, i32 1
  %87 = load %struct.darray*, %struct.darray** %rhs90, align 8
  %content91 = getelementptr inbounds %struct.darray, %struct.darray* %87, i32 0, i32 6
  %88 = load i8**, i8*** %content91, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %88, i64 %85
  %89 = load i8*, i8** %arrayidx92, align 8
  %90 = bitcast i8* %89 to %struct.faced_string*
  %string93 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %90, i32 0, i32 0
  %91 = load i8*, i8** %string93, align 8
  %call94 = call i8* @strcat(i8* %arraydecay89, i8* %91) #1
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.87, %if.then.83
  %flags96 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %92 = load i32, i32* %flags96, align 4
  %and97 = and i32 %92, 4
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.107

if.then.99:                                       ; preds = %if.end.95
  %93 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag2100 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %93, i32 0, i32 60
  %arraydecay101 = getelementptr inbounds [256 x i8], [256 x i8]* %tag2100, i32 0, i32 0
  %94 = load i64, i64* %i, align 8
  %95 = load %struct.token*, %struct.token** @token, align 8
  %rhs102 = getelementptr inbounds %struct.token, %struct.token* %95, i32 0, i32 1
  %96 = load %struct.darray*, %struct.darray** %rhs102, align 8
  %content103 = getelementptr inbounds %struct.darray, %struct.darray* %96, i32 0, i32 6
  %97 = load i8**, i8*** %content103, align 8
  %arrayidx104 = getelementptr inbounds i8*, i8** %97, i64 %94
  %98 = load i8*, i8** %arrayidx104, align 8
  %99 = bitcast i8* %98 to %struct.faced_string*
  %string105 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %99, i32 0, i32 0
  %100 = load i8*, i8** %string105, align 8
  %call106 = call i8* @strcat(i8* %arraydecay101, i8* %100) #1
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.99, %if.end.95
  %flags108 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %101 = load i32, i32* %flags108, align 4
  %and109 = and i32 %101, 8
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.119

if.then.111:                                      ; preds = %if.end.107
  %102 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag3112 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %102, i32 0, i32 61
  %arraydecay113 = getelementptr inbounds [256 x i8], [256 x i8]* %tag3112, i32 0, i32 0
  %103 = load i64, i64* %i, align 8
  %104 = load %struct.token*, %struct.token** @token, align 8
  %rhs114 = getelementptr inbounds %struct.token, %struct.token* %104, i32 0, i32 1
  %105 = load %struct.darray*, %struct.darray** %rhs114, align 8
  %content115 = getelementptr inbounds %struct.darray, %struct.darray* %105, i32 0, i32 6
  %106 = load i8**, i8*** %content115, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %106, i64 %103
  %107 = load i8*, i8** %arrayidx116, align 8
  %108 = bitcast i8* %107 to %struct.faced_string*
  %string117 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %108, i32 0, i32 0
  %109 = load i8*, i8** %string117, align 8
  %call118 = call i8* @strcat(i8* %arraydecay113, i8* %109) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.111, %if.end.107
  %flags120 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %110 = load i32, i32* %flags120, align 4
  %and121 = and i32 %110, 16
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.131

if.then.123:                                      ; preds = %if.end.119
  %111 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag4124 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %111, i32 0, i32 62
  %arraydecay125 = getelementptr inbounds [256 x i8], [256 x i8]* %tag4124, i32 0, i32 0
  %112 = load i64, i64* %i, align 8
  %113 = load %struct.token*, %struct.token** @token, align 8
  %rhs126 = getelementptr inbounds %struct.token, %struct.token* %113, i32 0, i32 1
  %114 = load %struct.darray*, %struct.darray** %rhs126, align 8
  %content127 = getelementptr inbounds %struct.darray, %struct.darray* %114, i32 0, i32 6
  %115 = load i8**, i8*** %content127, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %115, i64 %112
  %116 = load i8*, i8** %arrayidx128, align 8
  %117 = bitcast i8* %116 to %struct.faced_string*
  %string129 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %117, i32 0, i32 0
  %118 = load i8*, i8** %string129, align 8
  %call130 = call i8* @strcat(i8* %arraydecay125, i8* %118) #1
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.123, %if.end.119
  %flags132 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %119 = load i32, i32* %flags132, align 4
  %and133 = and i32 %119, 512
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.142

if.then.135:                                      ; preds = %if.end.131
  store i32 1, i32* %grabbing_encoding, align 4
  %arraydecay136 = getelementptr inbounds [512 x i8], [512 x i8]* %bufenc, i32 0, i32 0
  %120 = load i64, i64* %i, align 8
  %121 = load %struct.token*, %struct.token** @token, align 8
  %rhs137 = getelementptr inbounds %struct.token, %struct.token* %121, i32 0, i32 1
  %122 = load %struct.darray*, %struct.darray** %rhs137, align 8
  %content138 = getelementptr inbounds %struct.darray, %struct.darray* %122, i32 0, i32 6
  %123 = load i8**, i8*** %content138, align 8
  %arrayidx139 = getelementptr inbounds i8*, i8** %123, i64 %120
  %124 = load i8*, i8** %arrayidx139, align 8
  %125 = bitcast i8* %124 to %struct.faced_string*
  %string140 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %125, i32 0, i32 0
  %126 = load i8*, i8** %string140, align 8
  %call141 = call i8* @strcat(i8* %arraydecay136, i8* %126) #1
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.135, %if.end.131
  br label %if.end.327

if.else.143:                                      ; preds = %if.end.78
  %flags144 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %127 = load i32, i32* %flags144, align 4
  %and145 = and i32 %127, 2
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.171

if.then.147:                                      ; preds = %if.else.143
  br label %do.body

do.body:                                          ; preds = %if.then.147
  %128 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag1148 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %128, i32 0, i32 59
  %arraydecay149 = getelementptr inbounds [256 x i8], [256 x i8]* %tag1148, i32 0, i32 0
  %129 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content150 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %129, i32 0, i32 5
  %130 = load i8*, i8** %content150, align 8
  %131 = load i64, i64* %i, align 8
  %132 = load %struct.token*, %struct.token** @token, align 8
  %rhs151 = getelementptr inbounds %struct.token, %struct.token* %132, i32 0, i32 1
  %133 = load %struct.darray*, %struct.darray** %rhs151, align 8
  %content152 = getelementptr inbounds %struct.darray, %struct.darray* %133, i32 0, i32 6
  %134 = load i8**, i8*** %content152, align 8
  %arrayidx153 = getelementptr inbounds i8*, i8** %134, i64 %131
  %135 = load i8*, i8** %arrayidx153, align 8
  %136 = bitcast i8* %135 to %struct.faced_string*
  %reg_ref = getelementptr inbounds %struct.faced_string, %struct.faced_string* %136, i32 0, i32 1
  %137 = load i32, i32* %reg_ref, align 4
  %idxprom = sext i32 %137 to i64
  %138 = load %struct.token*, %struct.token** @token, align 8
  %registers = getelementptr inbounds %struct.token, %struct.token* %138, i32 0, i32 0
  %139 = load %struct.re_registers*, %struct.re_registers** %registers, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %139, i32 0, i32 1
  %140 = load i32*, i32** %start, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %140, i64 %idxprom
  %141 = load i32, i32* %arrayidx154, align 4
  %idx.ext = sext i32 %141 to i64
  %add.ptr = getelementptr inbounds i8, i8* %130, i64 %idx.ext
  %142 = load i64, i64* %i, align 8
  %143 = load %struct.token*, %struct.token** @token, align 8
  %rhs155 = getelementptr inbounds %struct.token, %struct.token* %143, i32 0, i32 1
  %144 = load %struct.darray*, %struct.darray** %rhs155, align 8
  %content156 = getelementptr inbounds %struct.darray, %struct.darray* %144, i32 0, i32 6
  %145 = load i8**, i8*** %content156, align 8
  %arrayidx157 = getelementptr inbounds i8*, i8** %145, i64 %142
  %146 = load i8*, i8** %arrayidx157, align 8
  %147 = bitcast i8* %146 to %struct.faced_string*
  %reg_ref158 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %147, i32 0, i32 1
  %148 = load i32, i32* %reg_ref158, align 4
  %idxprom159 = sext i32 %148 to i64
  %149 = load %struct.token*, %struct.token** @token, align 8
  %registers160 = getelementptr inbounds %struct.token, %struct.token* %149, i32 0, i32 0
  %150 = load %struct.re_registers*, %struct.re_registers** %registers160, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %150, i32 0, i32 2
  %151 = load i32*, i32** %end, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %151, i64 %idxprom159
  %152 = load i32, i32* %arrayidx161, align 4
  %153 = load i64, i64* %i, align 8
  %154 = load %struct.token*, %struct.token** @token, align 8
  %rhs162 = getelementptr inbounds %struct.token, %struct.token* %154, i32 0, i32 1
  %155 = load %struct.darray*, %struct.darray** %rhs162, align 8
  %content163 = getelementptr inbounds %struct.darray, %struct.darray* %155, i32 0, i32 6
  %156 = load i8**, i8*** %content163, align 8
  %arrayidx164 = getelementptr inbounds i8*, i8** %156, i64 %153
  %157 = load i8*, i8** %arrayidx164, align 8
  %158 = bitcast i8* %157 to %struct.faced_string*
  %reg_ref165 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %158, i32 0, i32 1
  %159 = load i32, i32* %reg_ref165, align 4
  %idxprom166 = sext i32 %159 to i64
  %160 = load %struct.token*, %struct.token** @token, align 8
  %registers167 = getelementptr inbounds %struct.token, %struct.token* %160, i32 0, i32 0
  %161 = load %struct.re_registers*, %struct.re_registers** %registers167, align 8
  %start168 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %161, i32 0, i32 1
  %162 = load i32*, i32** %start168, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %162, i64 %idxprom166
  %163 = load i32, i32* %arrayidx169, align 4
  %sub = sub nsw i32 %152, %163
  %conv = sext i32 %sub to i64
  %call170 = call i8* @strncat(i8* %arraydecay149, i8* %add.ptr, i64 %conv) #1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.171

if.end.171:                                       ; preds = %do.end, %if.else.143
  %flags172 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %164 = load i32, i32* %flags172, align 4
  %and173 = and i32 %164, 4
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.then.175, label %if.end.210

if.then.175:                                      ; preds = %if.end.171
  br label %do.body.176

do.body.176:                                      ; preds = %if.then.175
  %165 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag2177 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %165, i32 0, i32 60
  %arraydecay178 = getelementptr inbounds [256 x i8], [256 x i8]* %tag2177, i32 0, i32 0
  %166 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content179 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %166, i32 0, i32 5
  %167 = load i8*, i8** %content179, align 8
  %168 = load i64, i64* %i, align 8
  %169 = load %struct.token*, %struct.token** @token, align 8
  %rhs180 = getelementptr inbounds %struct.token, %struct.token* %169, i32 0, i32 1
  %170 = load %struct.darray*, %struct.darray** %rhs180, align 8
  %content181 = getelementptr inbounds %struct.darray, %struct.darray* %170, i32 0, i32 6
  %171 = load i8**, i8*** %content181, align 8
  %arrayidx182 = getelementptr inbounds i8*, i8** %171, i64 %168
  %172 = load i8*, i8** %arrayidx182, align 8
  %173 = bitcast i8* %172 to %struct.faced_string*
  %reg_ref183 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %173, i32 0, i32 1
  %174 = load i32, i32* %reg_ref183, align 4
  %idxprom184 = sext i32 %174 to i64
  %175 = load %struct.token*, %struct.token** @token, align 8
  %registers185 = getelementptr inbounds %struct.token, %struct.token* %175, i32 0, i32 0
  %176 = load %struct.re_registers*, %struct.re_registers** %registers185, align 8
  %start186 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %176, i32 0, i32 1
  %177 = load i32*, i32** %start186, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %177, i64 %idxprom184
  %178 = load i32, i32* %arrayidx187, align 4
  %idx.ext188 = sext i32 %178 to i64
  %add.ptr189 = getelementptr inbounds i8, i8* %167, i64 %idx.ext188
  %179 = load i64, i64* %i, align 8
  %180 = load %struct.token*, %struct.token** @token, align 8
  %rhs190 = getelementptr inbounds %struct.token, %struct.token* %180, i32 0, i32 1
  %181 = load %struct.darray*, %struct.darray** %rhs190, align 8
  %content191 = getelementptr inbounds %struct.darray, %struct.darray* %181, i32 0, i32 6
  %182 = load i8**, i8*** %content191, align 8
  %arrayidx192 = getelementptr inbounds i8*, i8** %182, i64 %179
  %183 = load i8*, i8** %arrayidx192, align 8
  %184 = bitcast i8* %183 to %struct.faced_string*
  %reg_ref193 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %184, i32 0, i32 1
  %185 = load i32, i32* %reg_ref193, align 4
  %idxprom194 = sext i32 %185 to i64
  %186 = load %struct.token*, %struct.token** @token, align 8
  %registers195 = getelementptr inbounds %struct.token, %struct.token* %186, i32 0, i32 0
  %187 = load %struct.re_registers*, %struct.re_registers** %registers195, align 8
  %end196 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %187, i32 0, i32 2
  %188 = load i32*, i32** %end196, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %188, i64 %idxprom194
  %189 = load i32, i32* %arrayidx197, align 4
  %190 = load i64, i64* %i, align 8
  %191 = load %struct.token*, %struct.token** @token, align 8
  %rhs198 = getelementptr inbounds %struct.token, %struct.token* %191, i32 0, i32 1
  %192 = load %struct.darray*, %struct.darray** %rhs198, align 8
  %content199 = getelementptr inbounds %struct.darray, %struct.darray* %192, i32 0, i32 6
  %193 = load i8**, i8*** %content199, align 8
  %arrayidx200 = getelementptr inbounds i8*, i8** %193, i64 %190
  %194 = load i8*, i8** %arrayidx200, align 8
  %195 = bitcast i8* %194 to %struct.faced_string*
  %reg_ref201 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %195, i32 0, i32 1
  %196 = load i32, i32* %reg_ref201, align 4
  %idxprom202 = sext i32 %196 to i64
  %197 = load %struct.token*, %struct.token** @token, align 8
  %registers203 = getelementptr inbounds %struct.token, %struct.token* %197, i32 0, i32 0
  %198 = load %struct.re_registers*, %struct.re_registers** %registers203, align 8
  %start204 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %198, i32 0, i32 1
  %199 = load i32*, i32** %start204, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %199, i64 %idxprom202
  %200 = load i32, i32* %arrayidx205, align 4
  %sub206 = sub nsw i32 %189, %200
  %conv207 = sext i32 %sub206 to i64
  %call208 = call i8* @strncat(i8* %arraydecay178, i8* %add.ptr189, i64 %conv207) #1
  br label %do.end.209

do.end.209:                                       ; preds = %do.body.176
  br label %if.end.210

if.end.210:                                       ; preds = %do.end.209, %if.end.171
  %flags211 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %201 = load i32, i32* %flags211, align 4
  %and212 = and i32 %201, 8
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %if.then.214, label %if.end.249

if.then.214:                                      ; preds = %if.end.210
  br label %do.body.215

do.body.215:                                      ; preds = %if.then.214
  %202 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag3216 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %202, i32 0, i32 61
  %arraydecay217 = getelementptr inbounds [256 x i8], [256 x i8]* %tag3216, i32 0, i32 0
  %203 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content218 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %203, i32 0, i32 5
  %204 = load i8*, i8** %content218, align 8
  %205 = load i64, i64* %i, align 8
  %206 = load %struct.token*, %struct.token** @token, align 8
  %rhs219 = getelementptr inbounds %struct.token, %struct.token* %206, i32 0, i32 1
  %207 = load %struct.darray*, %struct.darray** %rhs219, align 8
  %content220 = getelementptr inbounds %struct.darray, %struct.darray* %207, i32 0, i32 6
  %208 = load i8**, i8*** %content220, align 8
  %arrayidx221 = getelementptr inbounds i8*, i8** %208, i64 %205
  %209 = load i8*, i8** %arrayidx221, align 8
  %210 = bitcast i8* %209 to %struct.faced_string*
  %reg_ref222 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %210, i32 0, i32 1
  %211 = load i32, i32* %reg_ref222, align 4
  %idxprom223 = sext i32 %211 to i64
  %212 = load %struct.token*, %struct.token** @token, align 8
  %registers224 = getelementptr inbounds %struct.token, %struct.token* %212, i32 0, i32 0
  %213 = load %struct.re_registers*, %struct.re_registers** %registers224, align 8
  %start225 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %213, i32 0, i32 1
  %214 = load i32*, i32** %start225, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %214, i64 %idxprom223
  %215 = load i32, i32* %arrayidx226, align 4
  %idx.ext227 = sext i32 %215 to i64
  %add.ptr228 = getelementptr inbounds i8, i8* %204, i64 %idx.ext227
  %216 = load i64, i64* %i, align 8
  %217 = load %struct.token*, %struct.token** @token, align 8
  %rhs229 = getelementptr inbounds %struct.token, %struct.token* %217, i32 0, i32 1
  %218 = load %struct.darray*, %struct.darray** %rhs229, align 8
  %content230 = getelementptr inbounds %struct.darray, %struct.darray* %218, i32 0, i32 6
  %219 = load i8**, i8*** %content230, align 8
  %arrayidx231 = getelementptr inbounds i8*, i8** %219, i64 %216
  %220 = load i8*, i8** %arrayidx231, align 8
  %221 = bitcast i8* %220 to %struct.faced_string*
  %reg_ref232 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %221, i32 0, i32 1
  %222 = load i32, i32* %reg_ref232, align 4
  %idxprom233 = sext i32 %222 to i64
  %223 = load %struct.token*, %struct.token** @token, align 8
  %registers234 = getelementptr inbounds %struct.token, %struct.token* %223, i32 0, i32 0
  %224 = load %struct.re_registers*, %struct.re_registers** %registers234, align 8
  %end235 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %224, i32 0, i32 2
  %225 = load i32*, i32** %end235, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %225, i64 %idxprom233
  %226 = load i32, i32* %arrayidx236, align 4
  %227 = load i64, i64* %i, align 8
  %228 = load %struct.token*, %struct.token** @token, align 8
  %rhs237 = getelementptr inbounds %struct.token, %struct.token* %228, i32 0, i32 1
  %229 = load %struct.darray*, %struct.darray** %rhs237, align 8
  %content238 = getelementptr inbounds %struct.darray, %struct.darray* %229, i32 0, i32 6
  %230 = load i8**, i8*** %content238, align 8
  %arrayidx239 = getelementptr inbounds i8*, i8** %230, i64 %227
  %231 = load i8*, i8** %arrayidx239, align 8
  %232 = bitcast i8* %231 to %struct.faced_string*
  %reg_ref240 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %232, i32 0, i32 1
  %233 = load i32, i32* %reg_ref240, align 4
  %idxprom241 = sext i32 %233 to i64
  %234 = load %struct.token*, %struct.token** @token, align 8
  %registers242 = getelementptr inbounds %struct.token, %struct.token* %234, i32 0, i32 0
  %235 = load %struct.re_registers*, %struct.re_registers** %registers242, align 8
  %start243 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %235, i32 0, i32 1
  %236 = load i32*, i32** %start243, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %236, i64 %idxprom241
  %237 = load i32, i32* %arrayidx244, align 4
  %sub245 = sub nsw i32 %226, %237
  %conv246 = sext i32 %sub245 to i64
  %call247 = call i8* @strncat(i8* %arraydecay217, i8* %add.ptr228, i64 %conv246) #1
  br label %do.end.248

do.end.248:                                       ; preds = %do.body.215
  br label %if.end.249

if.end.249:                                       ; preds = %do.end.248, %if.end.210
  %flags250 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %238 = load i32, i32* %flags250, align 4
  %and251 = and i32 %238, 16
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %if.then.253, label %if.end.288

if.then.253:                                      ; preds = %if.end.249
  br label %do.body.254

do.body.254:                                      ; preds = %if.then.253
  %239 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %tag4255 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %239, i32 0, i32 62
  %arraydecay256 = getelementptr inbounds [256 x i8], [256 x i8]* %tag4255, i32 0, i32 0
  %240 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content257 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %240, i32 0, i32 5
  %241 = load i8*, i8** %content257, align 8
  %242 = load i64, i64* %i, align 8
  %243 = load %struct.token*, %struct.token** @token, align 8
  %rhs258 = getelementptr inbounds %struct.token, %struct.token* %243, i32 0, i32 1
  %244 = load %struct.darray*, %struct.darray** %rhs258, align 8
  %content259 = getelementptr inbounds %struct.darray, %struct.darray* %244, i32 0, i32 6
  %245 = load i8**, i8*** %content259, align 8
  %arrayidx260 = getelementptr inbounds i8*, i8** %245, i64 %242
  %246 = load i8*, i8** %arrayidx260, align 8
  %247 = bitcast i8* %246 to %struct.faced_string*
  %reg_ref261 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %247, i32 0, i32 1
  %248 = load i32, i32* %reg_ref261, align 4
  %idxprom262 = sext i32 %248 to i64
  %249 = load %struct.token*, %struct.token** @token, align 8
  %registers263 = getelementptr inbounds %struct.token, %struct.token* %249, i32 0, i32 0
  %250 = load %struct.re_registers*, %struct.re_registers** %registers263, align 8
  %start264 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %250, i32 0, i32 1
  %251 = load i32*, i32** %start264, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %251, i64 %idxprom262
  %252 = load i32, i32* %arrayidx265, align 4
  %idx.ext266 = sext i32 %252 to i64
  %add.ptr267 = getelementptr inbounds i8, i8* %241, i64 %idx.ext266
  %253 = load i64, i64* %i, align 8
  %254 = load %struct.token*, %struct.token** @token, align 8
  %rhs268 = getelementptr inbounds %struct.token, %struct.token* %254, i32 0, i32 1
  %255 = load %struct.darray*, %struct.darray** %rhs268, align 8
  %content269 = getelementptr inbounds %struct.darray, %struct.darray* %255, i32 0, i32 6
  %256 = load i8**, i8*** %content269, align 8
  %arrayidx270 = getelementptr inbounds i8*, i8** %256, i64 %253
  %257 = load i8*, i8** %arrayidx270, align 8
  %258 = bitcast i8* %257 to %struct.faced_string*
  %reg_ref271 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %258, i32 0, i32 1
  %259 = load i32, i32* %reg_ref271, align 4
  %idxprom272 = sext i32 %259 to i64
  %260 = load %struct.token*, %struct.token** @token, align 8
  %registers273 = getelementptr inbounds %struct.token, %struct.token* %260, i32 0, i32 0
  %261 = load %struct.re_registers*, %struct.re_registers** %registers273, align 8
  %end274 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %261, i32 0, i32 2
  %262 = load i32*, i32** %end274, align 8
  %arrayidx275 = getelementptr inbounds i32, i32* %262, i64 %idxprom272
  %263 = load i32, i32* %arrayidx275, align 4
  %264 = load i64, i64* %i, align 8
  %265 = load %struct.token*, %struct.token** @token, align 8
  %rhs276 = getelementptr inbounds %struct.token, %struct.token* %265, i32 0, i32 1
  %266 = load %struct.darray*, %struct.darray** %rhs276, align 8
  %content277 = getelementptr inbounds %struct.darray, %struct.darray* %266, i32 0, i32 6
  %267 = load i8**, i8*** %content277, align 8
  %arrayidx278 = getelementptr inbounds i8*, i8** %267, i64 %264
  %268 = load i8*, i8** %arrayidx278, align 8
  %269 = bitcast i8* %268 to %struct.faced_string*
  %reg_ref279 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %269, i32 0, i32 1
  %270 = load i32, i32* %reg_ref279, align 4
  %idxprom280 = sext i32 %270 to i64
  %271 = load %struct.token*, %struct.token** @token, align 8
  %registers281 = getelementptr inbounds %struct.token, %struct.token* %271, i32 0, i32 0
  %272 = load %struct.re_registers*, %struct.re_registers** %registers281, align 8
  %start282 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %272, i32 0, i32 1
  %273 = load i32*, i32** %start282, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %273, i64 %idxprom280
  %274 = load i32, i32* %arrayidx283, align 4
  %sub284 = sub nsw i32 %263, %274
  %conv285 = sext i32 %sub284 to i64
  %call286 = call i8* @strncat(i8* %arraydecay256, i8* %add.ptr267, i64 %conv285) #1
  br label %do.end.287

do.end.287:                                       ; preds = %do.body.254
  br label %if.end.288

if.end.288:                                       ; preds = %do.end.287, %if.end.249
  %flags289 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %275 = load i32, i32* %flags289, align 4
  %and290 = and i32 %275, 512
  %tobool291 = icmp ne i32 %and290, 0
  br i1 %tobool291, label %if.then.292, label %if.end.326

if.then.292:                                      ; preds = %if.end.288
  store i32 1, i32* %grabbing_encoding, align 4
  br label %do.body.293

do.body.293:                                      ; preds = %if.then.292
  %arraydecay294 = getelementptr inbounds [512 x i8], [512 x i8]* %bufenc, i32 0, i32 0
  %276 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content295 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %276, i32 0, i32 5
  %277 = load i8*, i8** %content295, align 8
  %278 = load i64, i64* %i, align 8
  %279 = load %struct.token*, %struct.token** @token, align 8
  %rhs296 = getelementptr inbounds %struct.token, %struct.token* %279, i32 0, i32 1
  %280 = load %struct.darray*, %struct.darray** %rhs296, align 8
  %content297 = getelementptr inbounds %struct.darray, %struct.darray* %280, i32 0, i32 6
  %281 = load i8**, i8*** %content297, align 8
  %arrayidx298 = getelementptr inbounds i8*, i8** %281, i64 %278
  %282 = load i8*, i8** %arrayidx298, align 8
  %283 = bitcast i8* %282 to %struct.faced_string*
  %reg_ref299 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %283, i32 0, i32 1
  %284 = load i32, i32* %reg_ref299, align 4
  %idxprom300 = sext i32 %284 to i64
  %285 = load %struct.token*, %struct.token** @token, align 8
  %registers301 = getelementptr inbounds %struct.token, %struct.token* %285, i32 0, i32 0
  %286 = load %struct.re_registers*, %struct.re_registers** %registers301, align 8
  %start302 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %286, i32 0, i32 1
  %287 = load i32*, i32** %start302, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %287, i64 %idxprom300
  %288 = load i32, i32* %arrayidx303, align 4
  %idx.ext304 = sext i32 %288 to i64
  %add.ptr305 = getelementptr inbounds i8, i8* %277, i64 %idx.ext304
  %289 = load i64, i64* %i, align 8
  %290 = load %struct.token*, %struct.token** @token, align 8
  %rhs306 = getelementptr inbounds %struct.token, %struct.token* %290, i32 0, i32 1
  %291 = load %struct.darray*, %struct.darray** %rhs306, align 8
  %content307 = getelementptr inbounds %struct.darray, %struct.darray* %291, i32 0, i32 6
  %292 = load i8**, i8*** %content307, align 8
  %arrayidx308 = getelementptr inbounds i8*, i8** %292, i64 %289
  %293 = load i8*, i8** %arrayidx308, align 8
  %294 = bitcast i8* %293 to %struct.faced_string*
  %reg_ref309 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %294, i32 0, i32 1
  %295 = load i32, i32* %reg_ref309, align 4
  %idxprom310 = sext i32 %295 to i64
  %296 = load %struct.token*, %struct.token** @token, align 8
  %registers311 = getelementptr inbounds %struct.token, %struct.token* %296, i32 0, i32 0
  %297 = load %struct.re_registers*, %struct.re_registers** %registers311, align 8
  %end312 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %297, i32 0, i32 2
  %298 = load i32*, i32** %end312, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %298, i64 %idxprom310
  %299 = load i32, i32* %arrayidx313, align 4
  %300 = load i64, i64* %i, align 8
  %301 = load %struct.token*, %struct.token** @token, align 8
  %rhs314 = getelementptr inbounds %struct.token, %struct.token* %301, i32 0, i32 1
  %302 = load %struct.darray*, %struct.darray** %rhs314, align 8
  %content315 = getelementptr inbounds %struct.darray, %struct.darray* %302, i32 0, i32 6
  %303 = load i8**, i8*** %content315, align 8
  %arrayidx316 = getelementptr inbounds i8*, i8** %303, i64 %300
  %304 = load i8*, i8** %arrayidx316, align 8
  %305 = bitcast i8* %304 to %struct.faced_string*
  %reg_ref317 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %305, i32 0, i32 1
  %306 = load i32, i32* %reg_ref317, align 4
  %idxprom318 = sext i32 %306 to i64
  %307 = load %struct.token*, %struct.token** @token, align 8
  %registers319 = getelementptr inbounds %struct.token, %struct.token* %307, i32 0, i32 0
  %308 = load %struct.re_registers*, %struct.re_registers** %registers319, align 8
  %start320 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %308, i32 0, i32 1
  %309 = load i32*, i32** %start320, align 8
  %arrayidx321 = getelementptr inbounds i32, i32* %309, i64 %idxprom318
  %310 = load i32, i32* %arrayidx321, align 4
  %sub322 = sub nsw i32 %299, %310
  %conv323 = sext i32 %sub322 to i64
  %call324 = call i8* @strncat(i8* %arraydecay294, i8* %add.ptr305, i64 %conv323) #1
  br label %do.end.325

do.end.325:                                       ; preds = %do.body.293
  br label %if.end.326

if.end.326:                                       ; preds = %do.end.325, %if.end.288
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.end.142
  %flags328 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %311 = load i32, i32* %flags328, align 4
  %and329 = and i32 %311, 1
  %tobool330 = icmp ne i32 %and329, 0
  br i1 %tobool330, label %if.end.365, label %if.then.331

if.then.331:                                      ; preds = %if.end.327
  %312 = load i64, i64* %i, align 8
  %313 = load %struct.token*, %struct.token** @token, align 8
  %rhs332 = getelementptr inbounds %struct.token, %struct.token* %313, i32 0, i32 1
  %314 = load %struct.darray*, %struct.darray** %rhs332, align 8
  %content333 = getelementptr inbounds %struct.darray, %struct.darray* %314, i32 0, i32 6
  %315 = load i8**, i8*** %content333, align 8
  %arrayidx334 = getelementptr inbounds i8*, i8** %315, i64 %312
  %316 = load i8*, i8** %arrayidx334, align 8
  %317 = bitcast i8* %316 to %struct.faced_string*
  %string335 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %317, i32 0, i32 0
  %318 = load i8*, i8** %string335, align 8
  %tobool336 = icmp ne i8* %318, null
  br i1 %tobool336, label %if.then.337, label %if.else.343

if.then.337:                                      ; preds = %if.then.331
  %319 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %320 = load i64, i64* %i, align 8
  %321 = load %struct.token*, %struct.token** @token, align 8
  %rhs338 = getelementptr inbounds %struct.token, %struct.token* %321, i32 0, i32 1
  %322 = load %struct.darray*, %struct.darray** %rhs338, align 8
  %content339 = getelementptr inbounds %struct.darray, %struct.darray* %322, i32 0, i32 6
  %323 = load i8**, i8*** %content339, align 8
  %arrayidx340 = getelementptr inbounds i8*, i8** %323, i64 %320
  %324 = load i8*, i8** %arrayidx340, align 8
  %325 = bitcast i8* %324 to %struct.faced_string*
  %string341 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %325, i32 0, i32 0
  %326 = load i8*, i8** %string341, align 8
  %face342 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 0
  %327 = load i32, i32* %face342, align 4
  call void @ps_print_string(%struct.a2ps_job* %319, i8* %326, i32 %327)
  br label %if.end.364

if.else.343:                                      ; preds = %if.then.331
  %328 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %329 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content344 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %329, i32 0, i32 5
  %330 = load i8*, i8** %content344, align 8
  %331 = load i64, i64* %i, align 8
  %332 = load %struct.token*, %struct.token** @token, align 8
  %rhs345 = getelementptr inbounds %struct.token, %struct.token* %332, i32 0, i32 1
  %333 = load %struct.darray*, %struct.darray** %rhs345, align 8
  %content346 = getelementptr inbounds %struct.darray, %struct.darray* %333, i32 0, i32 6
  %334 = load i8**, i8*** %content346, align 8
  %arrayidx347 = getelementptr inbounds i8*, i8** %334, i64 %331
  %335 = load i8*, i8** %arrayidx347, align 8
  %336 = bitcast i8* %335 to %struct.faced_string*
  %reg_ref348 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %336, i32 0, i32 1
  %337 = load i32, i32* %reg_ref348, align 4
  %idxprom349 = sext i32 %337 to i64
  %338 = load %struct.token*, %struct.token** @token, align 8
  %registers350 = getelementptr inbounds %struct.token, %struct.token* %338, i32 0, i32 0
  %339 = load %struct.re_registers*, %struct.re_registers** %registers350, align 8
  %start351 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %339, i32 0, i32 1
  %340 = load i32*, i32** %start351, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %340, i64 %idxprom349
  %341 = load i32, i32* %arrayidx352, align 4
  %conv353 = sext i32 %341 to i64
  %342 = load i64, i64* %i, align 8
  %343 = load %struct.token*, %struct.token** @token, align 8
  %rhs354 = getelementptr inbounds %struct.token, %struct.token* %343, i32 0, i32 1
  %344 = load %struct.darray*, %struct.darray** %rhs354, align 8
  %content355 = getelementptr inbounds %struct.darray, %struct.darray* %344, i32 0, i32 6
  %345 = load i8**, i8*** %content355, align 8
  %arrayidx356 = getelementptr inbounds i8*, i8** %345, i64 %342
  %346 = load i8*, i8** %arrayidx356, align 8
  %347 = bitcast i8* %346 to %struct.faced_string*
  %reg_ref357 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %347, i32 0, i32 1
  %348 = load i32, i32* %reg_ref357, align 4
  %idxprom358 = sext i32 %348 to i64
  %349 = load %struct.token*, %struct.token** @token, align 8
  %registers359 = getelementptr inbounds %struct.token, %struct.token* %349, i32 0, i32 0
  %350 = load %struct.re_registers*, %struct.re_registers** %registers359, align 8
  %end360 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %350, i32 0, i32 2
  %351 = load i32*, i32** %end360, align 8
  %arrayidx361 = getelementptr inbounds i32, i32* %351, i64 %idxprom358
  %352 = load i32, i32* %arrayidx361, align 4
  %conv362 = sext i32 %352 to i64
  %face363 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 0
  %353 = load i32, i32* %face363, align 4
  call void @ps_print_buffer(%struct.a2ps_job* %328, i8* %330, i64 %conv353, i64 %conv362, i32 %353)
  br label %if.end.364

if.end.364:                                       ; preds = %if.else.343, %if.then.337
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.end.327
  br label %for.inc

for.inc:                                          ; preds = %if.end.365
  %354 = load i64, i64* %i, align 8
  %inc = add i64 %354, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.token* @token_new() #2 {
entry:
  %res = alloca %struct.token*, align 8
  %call = call i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.token*
  store %struct.token* %0, %struct.token** %res, align 8
  %call1 = call i8* @xmalloc(i64 24)
  %1 = bitcast i8* %call1 to %struct.re_registers*
  %2 = load %struct.token*, %struct.token** %res, align 8
  %registers = getelementptr inbounds %struct.token, %struct.token* %2, i32 0, i32 0
  store %struct.re_registers* %1, %struct.re_registers** %registers, align 8
  %call2 = call i8* @xmalloc(i64 120)
  %3 = bitcast i8* %call2 to i32*
  %4 = load %struct.token*, %struct.token** %res, align 8
  %registers3 = getelementptr inbounds %struct.token, %struct.token* %4, i32 0, i32 0
  %5 = load %struct.re_registers*, %struct.re_registers** %registers3, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i32 0, i32 1
  store i32* %3, i32** %start, align 8
  %call4 = call i8* @xmalloc(i64 120)
  %6 = bitcast i8* %call4 to i32*
  %7 = load %struct.token*, %struct.token** %res, align 8
  %registers5 = getelementptr inbounds %struct.token, %struct.token* %7, i32 0, i32 0
  %8 = load %struct.re_registers*, %struct.re_registers** %registers5, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %8, i32 0, i32 2
  store i32* %6, i32** %end, align 8
  %9 = load %struct.token*, %struct.token** %res, align 8
  ret %struct.token* %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.darray* @rhs_plain_new() #2 {
entry:
  %0 = load i64, i64* bitcast (%struct.fface_s* @Plain_fface to i64*), align 4
  %call = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %0)
  ret %struct.darray* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ssh_get_token(%struct.buffer_s* %buffer, %struct.style_sheet* %sheet) #2 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %sheet.addr = alloca %struct.style_sheet*, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 12
  %1 = load i64, i64* %curr, align 8
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 11
  %3 = load i64, i64* %len, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  call void @buffer_get(%struct.buffer_s* %4)
  %5 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %line = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 9
  %6 = load i64, i64* %line, align 8
  %conv = trunc i64 %6 to i32
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 68
  %8 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 5
  %9 = load i64, i64* %len1, align 8
  %sub = sub i64 %9, 1
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 68
  %11 = load %struct.darray*, %struct.darray** %jobs2, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 6
  %12 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %sub
  %13 = load i8*, i8** %arrayidx, align 8
  %14 = bitcast i8* %13 to %struct.file_job*
  %lines = getelementptr inbounds %struct.file_job, %struct.file_job* %14, i32 0, i32 17
  store i32 %conv, i32* %lines, align 4
  %15 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len3 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %15, i32 0, i32 11
  %16 = load i64, i64* %len3, align 8
  %cmp4 = icmp eq i64 %16, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store %struct.sequence* null, %struct.sequence** @ssh_get_token.sequence, align 8
  store i32 0, i32* @ssh_get_token.return_to_plain, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %17 = load i32, i32* @ssh_get_token.return_to_plain, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.7
  store i32 0, i32* @ssh_get_token.return_to_plain, align 4
  %18 = load %struct.darray*, %struct.darray** @plain_rhs, align 8
  %19 = load %struct.token*, %struct.token** @token, align 8
  %rhs = getelementptr inbounds %struct.token, %struct.token* %19, i32 0, i32 1
  store %struct.darray* %18, %struct.darray** %rhs, align 8
  %20 = load %struct.token*, %struct.token** @token, align 8
  %rhs9 = getelementptr inbounds %struct.token, %struct.token* %20, i32 0, i32 1
  %21 = load %struct.darray*, %struct.darray** %rhs9, align 8
  %content10 = getelementptr inbounds %struct.darray, %struct.darray* %21, i32 0, i32 6
  %22 = load i8**, i8*** %content10, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %22, i64 0
  %23 = load i8*, i8** %arrayidx11, align 8
  %24 = bitcast i8* %23 to %struct.faced_string*
  %face = getelementptr inbounds %struct.faced_string, %struct.faced_string* %24, i32 0, i32 2
  %25 = bitcast %struct.fface_s* %face to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.fface_s* @Plain_fface to i8*), i64 8, i32 4, i1 false)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.7
  %26 = load %struct.sequence*, %struct.sequence** @ssh_get_token.sequence, align 8
  %tobool13 = icmp ne %struct.sequence* %26, null
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %27 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %28 = load %struct.sequence*, %struct.sequence** @ssh_get_token.sequence, align 8
  %exceptions = getelementptr inbounds %struct.sequence, %struct.sequence* %28, i32 0, i32 2
  %29 = load %struct.words*, %struct.words** %exceptions, align 8
  %call = call i32 @match_operator(%struct.buffer_s* %27, %struct.words* %29)
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.14
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.14
  %30 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %31 = load %struct.sequence*, %struct.sequence** @ssh_get_token.sequence, align 8
  %close = getelementptr inbounds %struct.sequence, %struct.sequence* %31, i32 0, i32 3
  %32 = load %struct.words*, %struct.words** %close, align 8
  %call18 = call i32 @match_operator(%struct.buffer_s* %30, %struct.words* %32)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store i32 1, i32* @ssh_get_token.return_to_plain, align 4
  store %struct.sequence* null, %struct.sequence** @ssh_get_token.sequence, align 8
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %33 = load %struct.darray*, %struct.darray** @plain_rhs, align 8
  %34 = load %struct.token*, %struct.token** @token, align 8
  %rhs22 = getelementptr inbounds %struct.token, %struct.token* %34, i32 0, i32 1
  store %struct.darray* %33, %struct.darray** %rhs22, align 8
  %35 = load %struct.token*, %struct.token** @token, align 8
  %rhs23 = getelementptr inbounds %struct.token, %struct.token* %35, i32 0, i32 1
  %36 = load %struct.darray*, %struct.darray** %rhs23, align 8
  %content24 = getelementptr inbounds %struct.darray, %struct.darray* %36, i32 0, i32 6
  %37 = load i8**, i8*** %content24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx25, align 8
  %39 = bitcast i8* %38 to %struct.faced_string*
  %face26 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %39, i32 0, i32 2
  %40 = load %struct.sequence*, %struct.sequence** @ssh_get_token.sequence, align 8
  %face27 = getelementptr inbounds %struct.sequence, %struct.sequence* %40, i32 0, i32 1
  %41 = bitcast %struct.fface_s* %face26 to i8*
  %42 = bitcast %struct.fface_s* %face27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 4, i1 false)
  %43 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr28 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %43, i32 0, i32 12
  %44 = load i64, i64* %curr28, align 8
  %inc = add i64 %44, 1
  store i64 %inc, i64* %curr28, align 8
  %conv29 = trunc i64 %44 to i32
  %45 = load %struct.token*, %struct.token** @token, align 8
  %registers = getelementptr inbounds %struct.token, %struct.token* %45, i32 0, i32 0
  %46 = load %struct.re_registers*, %struct.re_registers** %registers, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %46, i32 0, i32 1
  %47 = load i32*, i32** %start, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %conv29, i32* %arrayidx30, align 4
  %48 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr31 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %48, i32 0, i32 12
  %49 = load i64, i64* %curr31, align 8
  %conv32 = trunc i64 %49 to i32
  %50 = load %struct.token*, %struct.token** @token, align 8
  %registers33 = getelementptr inbounds %struct.token, %struct.token* %50, i32 0, i32 0
  %51 = load %struct.re_registers*, %struct.re_registers** %registers33, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %51, i32 0, i32 2
  %52 = load i32*, i32** %end, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %conv32, i32* %arrayidx34, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.12
  %53 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %54 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %call35 = call %struct.sequence* @match_sequence(%struct.buffer_s* %53, %struct.style_sheet* %54)
  store %struct.sequence* %call35, %struct.sequence** @ssh_get_token.sequence, align 8
  %tobool36 = icmp ne %struct.sequence* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.38:                                       ; preds = %if.else
  %55 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr39 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %55, i32 0, i32 12
  %56 = load i64, i64* %curr39, align 8
  %57 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content40 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %57, i32 0, i32 5
  %58 = load i8*, i8** %content40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %58, i64 %56
  %59 = load i8, i8* %arrayidx41, align 1
  %idxprom = zext i8 %59 to i64
  %60 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %60, i32 0, i32 8
  %arrayidx42 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha1, i32 0, i64 %idxprom
  %61 = load i8, i8* %arrayidx42, align 1
  %tobool43 = icmp ne i8 %61, 0
  br i1 %tobool43, label %if.then.44, label %if.else.51

if.then.44:                                       ; preds = %if.else.38
  %62 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %63 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %keywords = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %63, i32 0, i32 10
  %64 = load %struct.words*, %struct.words** %keywords, align 8
  %65 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %65, i32 0, i32 9
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %alpha2, i32 0, i32 0
  %call45 = call i32 @match_keyword(%struct.buffer_s* %62, %struct.words* %64, i8* %arraydecay)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.44
  %66 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %67 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %operators = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %67, i32 0, i32 11
  %68 = load %struct.words*, %struct.words** %operators, align 8
  %call47 = call i32 @match_operator(%struct.buffer_s* %66, %struct.words* %68)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %lor.lhs.false, %if.then.44
  store i32 1, i32* @ssh_get_token.return_to_plain, align 4
  store i32 1, i32* %retval
  br label %return

if.else.50:                                       ; preds = %lor.lhs.false
  %69 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %70 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  call void @match_word(%struct.buffer_s* %69, %struct.style_sheet* %70)
  store i32 1, i32* %retval
  br label %return

if.else.51:                                       ; preds = %if.else.38
  %71 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %72 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %operators52 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %72, i32 0, i32 11
  %73 = load %struct.words*, %struct.words** %operators52, align 8
  %call53 = call i32 @match_operator(%struct.buffer_s* %71, %struct.words* %73)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.51
  store i32 1, i32* @ssh_get_token.return_to_plain, align 4
  store i32 1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.else.51
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  %74 = load %struct.darray*, %struct.darray** @plain_rhs, align 8
  %75 = load %struct.token*, %struct.token** @token, align 8
  %rhs60 = getelementptr inbounds %struct.token, %struct.token* %75, i32 0, i32 1
  store %struct.darray* %74, %struct.darray** %rhs60, align 8
  %76 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr61 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %76, i32 0, i32 12
  %77 = load i64, i64* %curr61, align 8
  %inc62 = add i64 %77, 1
  store i64 %inc62, i64* %curr61, align 8
  %conv63 = trunc i64 %77 to i32
  %78 = load %struct.token*, %struct.token** @token, align 8
  %registers64 = getelementptr inbounds %struct.token, %struct.token* %78, i32 0, i32 0
  %79 = load %struct.re_registers*, %struct.re_registers** %registers64, align 8
  %start65 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %79, i32 0, i32 1
  %80 = load i32*, i32** %start65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %conv63, i32* %arrayidx66, align 4
  %81 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr67 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %81, i32 0, i32 12
  %82 = load i64, i64* %curr67, align 8
  %conv68 = trunc i64 %82 to i32
  %83 = load %struct.token*, %struct.token** @token, align 8
  %registers69 = getelementptr inbounds %struct.token, %struct.token* %83, i32 0, i32 0
  %84 = load %struct.re_registers*, %struct.re_registers** %registers69, align 8
  %end70 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %84, i32 0, i32 2
  %85 = load i32*, i32** %end70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %conv68, i32* %arrayidx71, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.55, %if.else.50, %if.then.49, %if.then.37, %if.end.21, %if.then.20, %if.then.16, %if.then.6
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare %struct.encoding* @get_encoding_by_alias(%struct.a2ps_job*, i8*) #3

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @quotearg(i8*) #3

declare void @ps_switch_encoding(%struct.a2ps_job*, %struct.encoding*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #4

declare void @ps_print_string(%struct.a2ps_job*, i8*, i32) #3

declare void @ps_print_buffer(%struct.a2ps_job*, i8*, i64, i64, i32) #3

declare i8* @xmalloc(i64) #3

declare %struct.darray* @rhs_new_single(i8*, i32, i64) #3

declare void @buffer_get(%struct.buffer_s*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @match_operator(%struct.buffer_s* %buffer, %struct.words* %words) #2 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %words.addr = alloca %struct.words*, align 8
  %key = alloca %struct.rule**, align 8
  %string = alloca i8*, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 8
  %1 = load i8*, i8** %value, align 8
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 12
  %3 = load i64, i64* %curr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %3
  store i8* %add.ptr, i8** %string, align 8
  %4 = load i8*, i8** %string, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i64
  %6 = load %struct.words*, %struct.words** %words.addr, align 8
  %min = getelementptr inbounds %struct.words, %struct.words* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %min, i32 0, i64 %idxprom
  %7 = load %struct.rule**, %struct.rule*** %arrayidx, align 8
  %tobool = icmp ne %struct.rule** %7, null
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %string, align 8
  %9 = load i8, i8* %8, align 1
  %idxprom1 = zext i8 %9 to i64
  %10 = load %struct.words*, %struct.words** %words.addr, align 8
  %max = getelementptr inbounds %struct.words, %struct.words* %10, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %max, i32 0, i64 %idxprom1
  %11 = load %struct.rule**, %struct.rule*** %arrayidx2, align 8
  store %struct.rule** %11, %struct.rule*** %key, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i8*, i8** %string, align 8
  %13 = load i8, i8* %12, align 1
  %idxprom3 = zext i8 %13 to i64
  %14 = load %struct.words*, %struct.words** %words.addr, align 8
  %min4 = getelementptr inbounds %struct.words, %struct.words* %14, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %min4, i32 0, i64 %idxprom3
  %15 = load %struct.rule**, %struct.rule*** %arrayidx5, align 8
  %16 = load %struct.rule**, %struct.rule*** %key, align 8
  %cmp = icmp ule %struct.rule** %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.rule**, %struct.rule*** %key, align 8
  %18 = load %struct.rule*, %struct.rule** %17, align 8
  %word = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 0
  %19 = load i8*, i8** %word, align 8
  %20 = load i8*, i8** %string, align 8
  %21 = load %struct.rule**, %struct.rule*** %key, align 8
  %22 = load %struct.rule*, %struct.rule** %21, align 8
  %word6 = getelementptr inbounds %struct.rule, %struct.rule* %22, i32 0, i32 0
  %23 = load i8*, i8** %word6, align 8
  %call = call i64 @strlen(i8* %23) #6
  %call7 = call i32 @strncmp(i8* %19, i8* %20, i64 %call) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %for.body
  %24 = load %struct.rule**, %struct.rule*** %key, align 8
  %25 = load %struct.rule*, %struct.rule** %24, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %25, i32 0, i32 2
  %26 = load %struct.darray*, %struct.darray** %rhs, align 8
  %27 = load %struct.token*, %struct.token** @token, align 8
  %rhs10 = getelementptr inbounds %struct.token, %struct.token* %27, i32 0, i32 1
  store %struct.darray* %26, %struct.darray** %rhs10, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %28 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr11 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %28, i32 0, i32 12
  %29 = load i64, i64* %curr11, align 8
  %conv = trunc i64 %29 to i32
  %30 = load %struct.token*, %struct.token** @token, align 8
  %registers = getelementptr inbounds %struct.token, %struct.token* %30, i32 0, i32 0
  %31 = load %struct.re_registers*, %struct.re_registers** %registers, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %31, i32 0, i32 1
  %32 = load i32*, i32** %start, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %conv, i32* %arrayidx12, align 4
  %33 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr13 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %33, i32 0, i32 12
  %34 = load i64, i64* %curr13, align 8
  %35 = load %struct.rule**, %struct.rule*** %key, align 8
  %36 = load %struct.rule*, %struct.rule** %35, align 8
  %word14 = getelementptr inbounds %struct.rule, %struct.rule* %36, i32 0, i32 0
  %37 = load i8*, i8** %word14, align 8
  %call15 = call i64 @strlen(i8* %37) #6
  %add = add i64 %34, %call15
  %conv16 = trunc i64 %add to i32
  %38 = load %struct.token*, %struct.token** @token, align 8
  %registers17 = getelementptr inbounds %struct.token, %struct.token* %38, i32 0, i32 0
  %39 = load %struct.re_registers*, %struct.re_registers** %registers17, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %39, i32 0, i32 2
  %40 = load i32*, i32** %end, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %conv16, i32* %arrayidx18, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %41 = load %struct.rule**, %struct.rule*** %key, align 8
  %42 = load %struct.rule*, %struct.rule** %41, align 8
  %word19 = getelementptr inbounds %struct.rule, %struct.rule* %42, i32 0, i32 0
  %43 = load i8*, i8** %word19, align 8
  %call20 = call i64 @strlen(i8* %43) #6
  %44 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr21 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %44, i32 0, i32 12
  %45 = load i64, i64* %curr21, align 8
  %add22 = add i64 %45, %call20
  store i64 %add22, i64* %curr21, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %46 = load %struct.rule**, %struct.rule*** %key, align 8
  %incdec.ptr = getelementptr inbounds %struct.rule*, %struct.rule** %46, i32 -1
  store %struct.rule** %incdec.ptr, %struct.rule*** %key, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.23

if.end.23:                                        ; preds = %for.end, %entry
  %47 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %47, i32 0, i32 1
  %48 = load %struct.darray*, %struct.darray** %regexps, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %48, i32 0, i32 5
  %49 = load i64, i64* %len, align 8
  %conv24 = trunc i64 %49 to i32
  %sub = sub nsw i32 %conv24, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.50, %if.end.23
  %50 = load i32, i32* %i, align 4
  %cmp26 = icmp sge i32 %50, 0
  br i1 %cmp26, label %for.body.28, label %for.end.51

for.body.28:                                      ; preds = %for.cond.25
  %51 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %51 to i64
  %52 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps30 = getelementptr inbounds %struct.words, %struct.words* %52, i32 0, i32 1
  %53 = load %struct.darray*, %struct.darray** %regexps30, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %53, i32 0, i32 6
  %54 = load i8**, i8*** %content, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %54, i64 %idxprom29
  %55 = load i8*, i8** %arrayidx31, align 8
  %56 = bitcast i8* %55 to %struct.rule*
  %regex = getelementptr inbounds %struct.rule, %struct.rule* %56, i32 0, i32 1
  %57 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex, align 8
  %58 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value32 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %58, i32 0, i32 8
  %59 = load i8*, i8** %value32, align 8
  %60 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len33 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %60, i32 0, i32 11
  %61 = load i64, i64* %len33, align 8
  %conv34 = trunc i64 %61 to i32
  %62 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr35 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %62, i32 0, i32 12
  %63 = load i64, i64* %curr35, align 8
  %conv36 = trunc i64 %63 to i32
  %64 = load %struct.token*, %struct.token** @token, align 8
  %registers37 = getelementptr inbounds %struct.token, %struct.token* %64, i32 0, i32 0
  %65 = load %struct.re_registers*, %struct.re_registers** %registers37, align 8
  %call38 = call i32 @re_match(%struct.re_pattern_buffer* %57, i8* %59, i32 %conv34, i32 %conv36, %struct.re_registers* %65)
  store i32 %call38, i32* %res, align 4
  %66 = load i32, i32* %res, align 4
  switch i32 %66, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %for.body.28
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.bb.40:                                         ; preds = %for.body.28
  br label %for.inc.50

sw.default:                                       ; preds = %for.body.28
  %68 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %68 to i64
  %69 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps42 = getelementptr inbounds %struct.words, %struct.words* %69, i32 0, i32 1
  %70 = load %struct.darray*, %struct.darray** %regexps42, align 8
  %content43 = getelementptr inbounds %struct.darray, %struct.darray* %70, i32 0, i32 6
  %71 = load i8**, i8*** %content43, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %71, i64 %idxprom41
  %72 = load i8*, i8** %arrayidx44, align 8
  %73 = bitcast i8* %72 to %struct.rule*
  %rhs45 = getelementptr inbounds %struct.rule, %struct.rule* %73, i32 0, i32 2
  %74 = load %struct.darray*, %struct.darray** %rhs45, align 8
  %75 = load %struct.token*, %struct.token** @token, align 8
  %rhs46 = getelementptr inbounds %struct.token, %struct.token* %75, i32 0, i32 1
  store %struct.darray* %74, %struct.darray** %rhs46, align 8
  %76 = load i32, i32* %res, align 4
  %conv47 = sext i32 %76 to i64
  %77 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr48 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %77, i32 0, i32 12
  %78 = load i64, i64* %curr48, align 8
  %add49 = add i64 %78, %conv47
  store i64 %add49, i64* %curr48, align 8
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  br label %for.inc.50

for.inc.50:                                       ; preds = %sw.epilog, %sw.bb.40
  %79 = load i32, i32* %i, align 4
  %dec = add nsw i32 %79, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.25

for.end.51:                                       ; preds = %for.cond.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.51, %sw.default, %do.end
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.sequence* @match_sequence(%struct.buffer_s* %buffer, %struct.style_sheet* %sheet) #2 {
entry:
  %retval = alloca %struct.sequence*, align 8
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %string = alloca i8*, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 8
  %1 = load i8*, i8** %value, align 8
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 12
  %3 = load i64, i64* %curr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %3
  store i8* %add.ptr, i8** %string, align 8
  %4 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %4, i32 0, i32 12
  %5 = load %struct.darray*, %struct.darray** %sequences, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 5
  %6 = load i64, i64* %len, align 8
  %conv = trunc i64 %6 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %9, i32 0, i32 12
  %10 = load %struct.darray*, %struct.darray** %sequences2, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 6
  %11 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = bitcast i8* %12 to %struct.sequence*
  %open = getelementptr inbounds %struct.sequence, %struct.sequence* %13, i32 0, i32 0
  %14 = load %struct.rule*, %struct.rule** %open, align 8
  %regex = getelementptr inbounds %struct.rule, %struct.rule* %14, i32 0, i32 1
  %15 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex, align 8
  %tobool = icmp ne %struct.re_pattern_buffer* %15, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %16 to i64
  %17 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences4 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %17, i32 0, i32 12
  %18 = load %struct.darray*, %struct.darray** %sequences4, align 8
  %content5 = getelementptr inbounds %struct.darray, %struct.darray* %18, i32 0, i32 6
  %19 = load i8**, i8*** %content5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %19, i64 %idxprom3
  %20 = load i8*, i8** %arrayidx6, align 8
  %21 = bitcast i8* %20 to %struct.sequence*
  %open7 = getelementptr inbounds %struct.sequence, %struct.sequence* %21, i32 0, i32 0
  %22 = load %struct.rule*, %struct.rule** %open7, align 8
  %regex8 = getelementptr inbounds %struct.rule, %struct.rule* %22, i32 0, i32 1
  %23 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex8, align 8
  %24 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value9 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %24, i32 0, i32 8
  %25 = load i8*, i8** %value9, align 8
  %26 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len10 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %26, i32 0, i32 11
  %27 = load i64, i64* %len10, align 8
  %conv11 = trunc i64 %27 to i32
  %28 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr12 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %28, i32 0, i32 12
  %29 = load i64, i64* %curr12, align 8
  %conv13 = trunc i64 %29 to i32
  %30 = load %struct.token*, %struct.token** @token, align 8
  %registers = getelementptr inbounds %struct.token, %struct.token* %30, i32 0, i32 0
  %31 = load %struct.re_registers*, %struct.re_registers** %registers, align 8
  %call = call i32 @re_match(%struct.re_pattern_buffer* %23, i8* %25, i32 %conv11, i32 %conv13, %struct.re_registers* %31)
  store i32 %call, i32* %res, align 4
  %32 = load i32, i32* %res, align 4
  switch i32 %32, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.then
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then
  br label %for.inc

sw.default:                                       ; preds = %if.then
  %34 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %34 to i64
  %35 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences17 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %35, i32 0, i32 12
  %36 = load %struct.darray*, %struct.darray** %sequences17, align 8
  %content18 = getelementptr inbounds %struct.darray, %struct.darray* %36, i32 0, i32 6
  %37 = load i8**, i8*** %content18, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %37, i64 %idxprom16
  %38 = load i8*, i8** %arrayidx19, align 8
  %39 = bitcast i8* %38 to %struct.sequence*
  %open20 = getelementptr inbounds %struct.sequence, %struct.sequence* %39, i32 0, i32 0
  %40 = load %struct.rule*, %struct.rule** %open20, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %40, i32 0, i32 2
  %41 = load %struct.darray*, %struct.darray** %rhs, align 8
  %42 = load %struct.token*, %struct.token** @token, align 8
  %rhs21 = getelementptr inbounds %struct.token, %struct.token* %42, i32 0, i32 1
  store %struct.darray* %41, %struct.darray** %rhs21, align 8
  %43 = load i32, i32* %res, align 4
  %conv22 = sext i32 %43 to i64
  %44 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr23 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %44, i32 0, i32 12
  %45 = load i64, i64* %curr23, align 8
  %add = add i64 %45, %conv22
  store i64 %add, i64* %curr23, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %46 to i64
  %47 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences25 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %47, i32 0, i32 12
  %48 = load %struct.darray*, %struct.darray** %sequences25, align 8
  %content26 = getelementptr inbounds %struct.darray, %struct.darray* %48, i32 0, i32 6
  %49 = load i8**, i8*** %content26, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %49, i64 %idxprom24
  %50 = load i8*, i8** %arrayidx27, align 8
  %51 = bitcast i8* %50 to %struct.sequence*
  store %struct.sequence* %51, %struct.sequence** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end.79

if.else:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %52 to i64
  %53 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences29 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %53, i32 0, i32 12
  %54 = load %struct.darray*, %struct.darray** %sequences29, align 8
  %content30 = getelementptr inbounds %struct.darray, %struct.darray* %54, i32 0, i32 6
  %55 = load i8**, i8*** %content30, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %55, i64 %idxprom28
  %56 = load i8*, i8** %arrayidx31, align 8
  %57 = bitcast i8* %56 to %struct.sequence*
  %open32 = getelementptr inbounds %struct.sequence, %struct.sequence* %57, i32 0, i32 0
  %58 = load %struct.rule*, %struct.rule** %open32, align 8
  %word = getelementptr inbounds %struct.rule, %struct.rule* %58, i32 0, i32 0
  %59 = load i8*, i8** %word, align 8
  %60 = load i8*, i8** %string, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %61 to i64
  %62 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences34 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %62, i32 0, i32 12
  %63 = load %struct.darray*, %struct.darray** %sequences34, align 8
  %content35 = getelementptr inbounds %struct.darray, %struct.darray* %63, i32 0, i32 6
  %64 = load i8**, i8*** %content35, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %64, i64 %idxprom33
  %65 = load i8*, i8** %arrayidx36, align 8
  %66 = bitcast i8* %65 to %struct.sequence*
  %open37 = getelementptr inbounds %struct.sequence, %struct.sequence* %66, i32 0, i32 0
  %67 = load %struct.rule*, %struct.rule** %open37, align 8
  %word38 = getelementptr inbounds %struct.rule, %struct.rule* %67, i32 0, i32 0
  %68 = load i8*, i8** %word38, align 8
  %call39 = call i64 @strlen(i8* %68) #6
  %call40 = call i32 @strncmp(i8* %59, i8* %60, i64 %call39) #6
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end, label %if.then.42

if.then.42:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.42
  %69 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr43 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %69, i32 0, i32 12
  %70 = load i64, i64* %curr43, align 8
  %conv44 = trunc i64 %70 to i32
  %71 = load %struct.token*, %struct.token** @token, align 8
  %registers45 = getelementptr inbounds %struct.token, %struct.token* %71, i32 0, i32 0
  %72 = load %struct.re_registers*, %struct.re_registers** %registers45, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %72, i32 0, i32 1
  %73 = load i32*, i32** %start, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %conv44, i32* %arrayidx46, align 4
  %74 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr47 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %74, i32 0, i32 12
  %75 = load i64, i64* %curr47, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %76 to i64
  %77 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences49 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %77, i32 0, i32 12
  %78 = load %struct.darray*, %struct.darray** %sequences49, align 8
  %content50 = getelementptr inbounds %struct.darray, %struct.darray* %78, i32 0, i32 6
  %79 = load i8**, i8*** %content50, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %79, i64 %idxprom48
  %80 = load i8*, i8** %arrayidx51, align 8
  %81 = bitcast i8* %80 to %struct.sequence*
  %open52 = getelementptr inbounds %struct.sequence, %struct.sequence* %81, i32 0, i32 0
  %82 = load %struct.rule*, %struct.rule** %open52, align 8
  %word53 = getelementptr inbounds %struct.rule, %struct.rule* %82, i32 0, i32 0
  %83 = load i8*, i8** %word53, align 8
  %call54 = call i64 @strlen(i8* %83) #6
  %add55 = add i64 %75, %call54
  %conv56 = trunc i64 %add55 to i32
  %84 = load %struct.token*, %struct.token** @token, align 8
  %registers57 = getelementptr inbounds %struct.token, %struct.token* %84, i32 0, i32 0
  %85 = load %struct.re_registers*, %struct.re_registers** %registers57, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %85, i32 0, i32 2
  %86 = load i32*, i32** %end, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %conv56, i32* %arrayidx58, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %87 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %87 to i64
  %88 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences60 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %88, i32 0, i32 12
  %89 = load %struct.darray*, %struct.darray** %sequences60, align 8
  %content61 = getelementptr inbounds %struct.darray, %struct.darray* %89, i32 0, i32 6
  %90 = load i8**, i8*** %content61, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %90, i64 %idxprom59
  %91 = load i8*, i8** %arrayidx62, align 8
  %92 = bitcast i8* %91 to %struct.sequence*
  %open63 = getelementptr inbounds %struct.sequence, %struct.sequence* %92, i32 0, i32 0
  %93 = load %struct.rule*, %struct.rule** %open63, align 8
  %rhs64 = getelementptr inbounds %struct.rule, %struct.rule* %93, i32 0, i32 2
  %94 = load %struct.darray*, %struct.darray** %rhs64, align 8
  %95 = load %struct.token*, %struct.token** @token, align 8
  %rhs65 = getelementptr inbounds %struct.token, %struct.token* %95, i32 0, i32 1
  store %struct.darray* %94, %struct.darray** %rhs65, align 8
  %96 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %96 to i64
  %97 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences67 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %97, i32 0, i32 12
  %98 = load %struct.darray*, %struct.darray** %sequences67, align 8
  %content68 = getelementptr inbounds %struct.darray, %struct.darray* %98, i32 0, i32 6
  %99 = load i8**, i8*** %content68, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %99, i64 %idxprom66
  %100 = load i8*, i8** %arrayidx69, align 8
  %101 = bitcast i8* %100 to %struct.sequence*
  %open70 = getelementptr inbounds %struct.sequence, %struct.sequence* %101, i32 0, i32 0
  %102 = load %struct.rule*, %struct.rule** %open70, align 8
  %word71 = getelementptr inbounds %struct.rule, %struct.rule* %102, i32 0, i32 0
  %103 = load i8*, i8** %word71, align 8
  %call72 = call i64 @strlen(i8* %103) #6
  %104 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr73 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %104, i32 0, i32 12
  %105 = load i64, i64* %curr73, align 8
  %add74 = add i64 %105, %call72
  store i64 %add74, i64* %curr73, align 8
  %106 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %106 to i64
  %107 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences76 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %107, i32 0, i32 12
  %108 = load %struct.darray*, %struct.darray** %sequences76, align 8
  %content77 = getelementptr inbounds %struct.darray, %struct.darray* %108, i32 0, i32 6
  %109 = load i8**, i8*** %content77, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %109, i64 %idxprom75
  %110 = load i8*, i8** %arrayidx78, align 8
  %111 = bitcast i8* %110 to %struct.sequence*
  store %struct.sequence* %111, %struct.sequence** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.79

if.end.79:                                        ; preds = %if.end, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.79, %sw.bb.15
  %112 = load i32, i32* %i, align 4
  %dec = add nsw i32 %112, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.sequence* null, %struct.sequence** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %sw.default
  %113 = load %struct.sequence*, %struct.sequence** %retval
  ret %struct.sequence* %113
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @match_keyword(%struct.buffer_s* %buffer, %struct.words* %words, i8* %alphabet) #2 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %words.addr = alloca %struct.words*, align 8
  %alphabet.addr = alloca i8*, align 8
  %key = alloca %struct.rule**, align 8
  %string = alloca i8*, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  store i8* %alphabet, i8** %alphabet.addr, align 8
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 8
  %1 = load i8*, i8** %value, align 8
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 12
  %3 = load i64, i64* %curr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %3
  store i8* %add.ptr, i8** %string, align 8
  %4 = load i8*, i8** %string, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i64
  %6 = load %struct.words*, %struct.words** %words.addr, align 8
  %min = getelementptr inbounds %struct.words, %struct.words* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %min, i32 0, i64 %idxprom
  %7 = load %struct.rule**, %struct.rule*** %arrayidx, align 8
  %tobool = icmp ne %struct.rule** %7, null
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %string, align 8
  %9 = load i8, i8* %8, align 1
  %idxprom1 = zext i8 %9 to i64
  %10 = load %struct.words*, %struct.words** %words.addr, align 8
  %max = getelementptr inbounds %struct.words, %struct.words* %10, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %max, i32 0, i64 %idxprom1
  %11 = load %struct.rule**, %struct.rule*** %arrayidx2, align 8
  store %struct.rule** %11, %struct.rule*** %key, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i8*, i8** %string, align 8
  %13 = load i8, i8* %12, align 1
  %idxprom3 = zext i8 %13 to i64
  %14 = load %struct.words*, %struct.words** %words.addr, align 8
  %min4 = getelementptr inbounds %struct.words, %struct.words* %14, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %min4, i32 0, i64 %idxprom3
  %15 = load %struct.rule**, %struct.rule*** %arrayidx5, align 8
  %16 = load %struct.rule**, %struct.rule*** %key, align 8
  %cmp = icmp ule %struct.rule** %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.rule**, %struct.rule*** %key, align 8
  %18 = load %struct.rule*, %struct.rule** %17, align 8
  %word = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 0
  %19 = load i8*, i8** %word, align 8
  %20 = load i8*, i8** %string, align 8
  %21 = load %struct.rule**, %struct.rule*** %key, align 8
  %22 = load %struct.rule*, %struct.rule** %21, align 8
  %word6 = getelementptr inbounds %struct.rule, %struct.rule* %22, i32 0, i32 0
  %23 = load i8*, i8** %word6, align 8
  %call = call i64 @strlen(i8* %23) #6
  %call7 = call i32 @strncmp(i8* %19, i8* %20, i64 %call) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %24 = load %struct.rule**, %struct.rule*** %key, align 8
  %25 = load %struct.rule*, %struct.rule** %24, align 8
  %word9 = getelementptr inbounds %struct.rule, %struct.rule* %25, i32 0, i32 0
  %26 = load i8*, i8** %word9, align 8
  %call10 = call i64 @strlen(i8* %26) #6
  %27 = load i8*, i8** %string, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %27, i64 %call10
  %28 = load i8, i8* %arrayidx11, align 1
  %idxprom12 = zext i8 %28 to i64
  %29 = load i8*, i8** %alphabet.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %29, i64 %idxprom12
  %30 = load i8, i8* %arrayidx13, align 1
  %tobool14 = icmp ne i8 %30, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  %31 = load %struct.rule**, %struct.rule*** %key, align 8
  %32 = load %struct.rule*, %struct.rule** %31, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %32, i32 0, i32 2
  %33 = load %struct.darray*, %struct.darray** %rhs, align 8
  %34 = load %struct.token*, %struct.token** @token, align 8
  %rhs16 = getelementptr inbounds %struct.token, %struct.token* %34, i32 0, i32 1
  store %struct.darray* %33, %struct.darray** %rhs16, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %35 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr17 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %35, i32 0, i32 12
  %36 = load i64, i64* %curr17, align 8
  %conv = trunc i64 %36 to i32
  %37 = load %struct.token*, %struct.token** @token, align 8
  %registers = getelementptr inbounds %struct.token, %struct.token* %37, i32 0, i32 0
  %38 = load %struct.re_registers*, %struct.re_registers** %registers, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %38, i32 0, i32 1
  %39 = load i32*, i32** %start, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %conv, i32* %arrayidx18, align 4
  %40 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr19 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %40, i32 0, i32 12
  %41 = load i64, i64* %curr19, align 8
  %42 = load %struct.rule**, %struct.rule*** %key, align 8
  %43 = load %struct.rule*, %struct.rule** %42, align 8
  %word20 = getelementptr inbounds %struct.rule, %struct.rule* %43, i32 0, i32 0
  %44 = load i8*, i8** %word20, align 8
  %call21 = call i64 @strlen(i8* %44) #6
  %add = add i64 %41, %call21
  %conv22 = trunc i64 %add to i32
  %45 = load %struct.token*, %struct.token** @token, align 8
  %registers23 = getelementptr inbounds %struct.token, %struct.token* %45, i32 0, i32 0
  %46 = load %struct.re_registers*, %struct.re_registers** %registers23, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %46, i32 0, i32 2
  %47 = load i32*, i32** %end, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %conv22, i32* %arrayidx24, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %48 = load %struct.rule**, %struct.rule*** %key, align 8
  %49 = load %struct.rule*, %struct.rule** %48, align 8
  %word25 = getelementptr inbounds %struct.rule, %struct.rule* %49, i32 0, i32 0
  %50 = load i8*, i8** %word25, align 8
  %call26 = call i64 @strlen(i8* %50) #6
  %51 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr27 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %51, i32 0, i32 12
  %52 = load i64, i64* %curr27, align 8
  %add28 = add i64 %52, %call26
  store i64 %add28, i64* %curr27, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %53 = load %struct.rule**, %struct.rule*** %key, align 8
  %incdec.ptr = getelementptr inbounds %struct.rule*, %struct.rule** %53, i32 -1
  store %struct.rule** %incdec.ptr, %struct.rule*** %key, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %entry
  %54 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %54, i32 0, i32 1
  %55 = load %struct.darray*, %struct.darray** %regexps, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %55, i32 0, i32 5
  %56 = load i64, i64* %len, align 8
  %conv30 = trunc i64 %56 to i32
  %sub = sub nsw i32 %conv30, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.56, %if.end.29
  %57 = load i32, i32* %i, align 4
  %cmp32 = icmp sge i32 %57, 0
  br i1 %cmp32, label %for.body.34, label %for.end.57

for.body.34:                                      ; preds = %for.cond.31
  %58 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %58 to i64
  %59 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps36 = getelementptr inbounds %struct.words, %struct.words* %59, i32 0, i32 1
  %60 = load %struct.darray*, %struct.darray** %regexps36, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %60, i32 0, i32 6
  %61 = load i8**, i8*** %content, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %61, i64 %idxprom35
  %62 = load i8*, i8** %arrayidx37, align 8
  %63 = bitcast i8* %62 to %struct.rule*
  %regex = getelementptr inbounds %struct.rule, %struct.rule* %63, i32 0, i32 1
  %64 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex, align 8
  %65 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value38 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %65, i32 0, i32 8
  %66 = load i8*, i8** %value38, align 8
  %67 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len39 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %67, i32 0, i32 11
  %68 = load i64, i64* %len39, align 8
  %conv40 = trunc i64 %68 to i32
  %69 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr41 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %69, i32 0, i32 12
  %70 = load i64, i64* %curr41, align 8
  %conv42 = trunc i64 %70 to i32
  %71 = load %struct.token*, %struct.token** @token, align 8
  %registers43 = getelementptr inbounds %struct.token, %struct.token* %71, i32 0, i32 0
  %72 = load %struct.re_registers*, %struct.re_registers** %registers43, align 8
  %call44 = call i32 @re_match(%struct.re_pattern_buffer* %64, i8* %66, i32 %conv40, i32 %conv42, %struct.re_registers* %72)
  store i32 %call44, i32* %res, align 4
  %73 = load i32, i32* %res, align 4
  switch i32 %73, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %for.body.34
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.bb.46:                                         ; preds = %for.body.34
  br label %for.inc.56

sw.default:                                       ; preds = %for.body.34
  %75 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %75 to i64
  %76 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps48 = getelementptr inbounds %struct.words, %struct.words* %76, i32 0, i32 1
  %77 = load %struct.darray*, %struct.darray** %regexps48, align 8
  %content49 = getelementptr inbounds %struct.darray, %struct.darray* %77, i32 0, i32 6
  %78 = load i8**, i8*** %content49, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %78, i64 %idxprom47
  %79 = load i8*, i8** %arrayidx50, align 8
  %80 = bitcast i8* %79 to %struct.rule*
  %rhs51 = getelementptr inbounds %struct.rule, %struct.rule* %80, i32 0, i32 2
  %81 = load %struct.darray*, %struct.darray** %rhs51, align 8
  %82 = load %struct.token*, %struct.token** @token, align 8
  %rhs52 = getelementptr inbounds %struct.token, %struct.token* %82, i32 0, i32 1
  store %struct.darray* %81, %struct.darray** %rhs52, align 8
  %83 = load i32, i32* %res, align 4
  %conv53 = sext i32 %83 to i64
  %84 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr54 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %84, i32 0, i32 12
  %85 = load i64, i64* %curr54, align 8
  %add55 = add i64 %85, %conv53
  store i64 %add55, i64* %curr54, align 8
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  br label %for.inc.56

for.inc.56:                                       ; preds = %sw.epilog, %sw.bb.46
  %86 = load i32, i32* %i, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.31

for.end.57:                                       ; preds = %for.cond.31
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.57, %sw.default, %do.end
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @match_word(%struct.buffer_s* %buffer, %struct.style_sheet* %sheet) #2 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %start = alloca i32, align 4
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 12
  %1 = load i64, i64* %curr, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %start, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr1 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 12
  %3 = load i64, i64* %curr1, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %curr1, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %4, i32 0, i32 5
  %5 = load i8*, i8** %content, align 8
  %6 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr2 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %6, i32 0, i32 12
  %7 = load i64, i64* %curr2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %7
  %8 = load i8, i8* %add.ptr, align 1
  %idxprom = zext i8 %8 to i64
  %9 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %9, i32 0, i32 9
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %alpha2, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %10 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %11 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr4 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %11, i32 0, i32 12
  %12 = load i64, i64* %curr4, align 8
  %13 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %13, i32 0, i32 11
  %14 = load i64, i64* %len, align 8
  %cmp = icmp uge i64 %12, %14
  %lnot = xor i1 %cmp, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %15 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %15, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %16 = load %struct.darray*, %struct.darray** @plain_rhs, align 8
  %17 = load %struct.token*, %struct.token** @token, align 8
  %rhs = getelementptr inbounds %struct.token, %struct.token* %17, i32 0, i32 1
  store %struct.darray* %16, %struct.darray** %rhs, align 8
  %18 = load %struct.token*, %struct.token** @token, align 8
  %rhs6 = getelementptr inbounds %struct.token, %struct.token* %18, i32 0, i32 1
  %19 = load %struct.darray*, %struct.darray** %rhs6, align 8
  %content7 = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 6
  %20 = load i8**, i8*** %content7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx8, align 8
  %22 = bitcast i8* %21 to %struct.faced_string*
  %face = getelementptr inbounds %struct.faced_string, %struct.faced_string* %22, i32 0, i32 2
  %23 = bitcast %struct.fface_s* %face to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.fface_s* @Plain_fface to i8*), i64 8, i32 4, i1 false)
  %24 = load i32, i32* %start, align 4
  %25 = load %struct.token*, %struct.token** @token, align 8
  %registers = getelementptr inbounds %struct.token, %struct.token* %25, i32 0, i32 0
  %26 = load %struct.re_registers*, %struct.re_registers** %registers, align 8
  %start9 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %26, i32 0, i32 1
  %27 = load i32*, i32** %start9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %arrayidx10, align 4
  %28 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr11 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %28, i32 0, i32 12
  %29 = load i64, i64* %curr11, align 8
  %conv12 = trunc i64 %29 to i32
  %30 = load %struct.token*, %struct.token** @token, align 8
  %registers13 = getelementptr inbounds %struct.token, %struct.token* %30, i32 0, i32 0
  %31 = load %struct.re_registers*, %struct.re_registers** %registers13, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %31, i32 0, i32 2
  %32 = load i32*, i32** %end, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %conv12, i32* %arrayidx14, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @re_match(%struct.re_pattern_buffer*, i8*, i32, i32, %struct.re_registers*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
