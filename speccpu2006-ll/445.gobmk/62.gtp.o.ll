; ModuleID = 'interface/gtp.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gtp_command = type { i8*, i32 (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@current_id = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" %s %n\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"unknown command\00", align 1
@gtp_boardsize = internal global i32 -1, align 4
@vertex_transform_input_hook = internal global void (i32, i32, i32*, i32*)* null, align 8
@vertex_transform_output_hook = internal global void (i32, i32, i32*, i32*)* null, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\0A\0AUnknown format character '%c'\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"! panic\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%6s%n\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" %c%d%n\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%5s%n\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: nounwind uwtable
define void @gtp_main_loop(%struct.gtp_command* %commands, %struct._IO_FILE* %gtp_input) #0 {
entry:
  %commands.addr = alloca %struct.gtp_command*, align 8
  %gtp_input.addr = alloca %struct._IO_FILE*, align 8
  %line = alloca [1000 x i8], align 16
  %command = alloca [1000 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %status = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.gtp_command* %commands, %struct.gtp_command** %commands.addr, align 8
  store %struct._IO_FILE* %gtp_input, %struct._IO_FILE** %gtp_input.addr, align 8
  store i32 0, i32* %status, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.83, %if.then.47, %entry
  %0 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %gtp_input.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %1)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  store i32 0, i32* %i, align 4
  %arraydecay1 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool2 = icmp ne i8 %3, 0
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  store i8 %5, i8* %c, align 1
  %6 = load i8, i8* %c, align 1
  %conv = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv, 9
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 32, i8* %7, align 1
  br label %if.end.35

if.else:                                          ; preds = %for.body
  %8 = load i8, i8* %c, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp sgt i32 %conv8, 0
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  %9 = load i8, i8* %c, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp sle i32 %conv11, 9
  br i1 %cmp12, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %10 = load i8, i8* %c, align 1
  %conv14 = sext i8 %10 to i32
  %cmp15 = icmp sge i32 %conv14, 11
  br i1 %cmp15, label %land.lhs.true.17, label %lor.lhs.false.21

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %11 = load i8, i8* %c, align 1
  %conv18 = sext i8 %11 to i32
  %cmp19 = icmp sle i32 %conv18, 31
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.17, %lor.lhs.false
  %12 = load i8, i8* %c, align 1
  %conv22 = sext i8 %12 to i32
  %cmp23 = icmp eq i32 %conv22, 127
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %lor.lhs.false.21, %land.lhs.true.17, %land.lhs.true
  br label %for.inc

if.else.26:                                       ; preds = %lor.lhs.false.21
  %13 = load i8, i8* %c, align 1
  %conv27 = sext i8 %13 to i32
  %cmp28 = icmp eq i32 %conv27, 35
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.26
  br label %for.end

if.else.31:                                       ; preds = %if.else.26
  %14 = load i8, i8* %c, align 1
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr32, i8** %p, align 8
  store i8 %14, i8* %15, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.35, %if.then.25
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.30, %for.cond
  %17 = load i8*, i8** %p, align 8
  store i8 0, i8* %17, align 1
  %arraydecay36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay36, i8** %p, align 8
  %18 = load i8*, i8** %p, align 8
  %call37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32* @current_id, i32* %n) #4
  %cmp38 = icmp eq i32 %call37, 1
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %for.end
  %19 = load i32, i32* %n, align 4
  %20 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.42

if.else.41:                                       ; preds = %for.end
  store i32 -1, i32* @current_id, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  %21 = load i8*, i8** %p, align 8
  %arraydecay43 = getelementptr inbounds [1000 x i8], [1000 x i8]* %command, i32 0, i32 0
  %call44 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay43, i32* %n) #4
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.42
  br label %while.cond

if.end.48:                                        ; preds = %if.end.42
  %22 = load i32, i32* %n, align 4
  %23 = load i8*, i8** %p, align 8
  %idx.ext49 = sext i32 %22 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %23, i64 %idx.ext49
  store i8* %add.ptr50, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.69, %if.end.48
  %24 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %24 to i64
  %25 = load %struct.gtp_command*, %struct.gtp_command** %commands.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %25, i64 %idxprom52
  %name = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %arrayidx53, i32 0, i32 0
  %26 = load i8*, i8** %name, align 8
  %cmp54 = icmp ne i8* %26, null
  br i1 %cmp54, label %for.body.56, label %for.end.71

for.body.56:                                      ; preds = %for.cond.51
  %arraydecay57 = getelementptr inbounds [1000 x i8], [1000 x i8]* %command, i32 0, i32 0
  %27 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %27 to i64
  %28 = load %struct.gtp_command*, %struct.gtp_command** %commands.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %28, i64 %idxprom58
  %name60 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %arrayidx59, i32 0, i32 0
  %29 = load i8*, i8** %name60, align 8
  %call61 = call i32 @strcmp(i8* %arraydecay57, i8* %29) #5
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %for.body.56
  %30 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %30 to i64
  %31 = load %struct.gtp_command*, %struct.gtp_command** %commands.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %31, i64 %idxprom65
  %function = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %arrayidx66, i32 0, i32 1
  %32 = load i32 (i8*)*, i32 (i8*)** %function, align 8
  %33 = load i8*, i8** %p, align 8
  %call67 = call i32 %32(i8* %33)
  store i32 %call67, i32* %status, align 4
  br label %for.end.71

if.end.68:                                        ; preds = %for.body.56
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %34 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %34, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.51

for.end.71:                                       ; preds = %if.then.64, %for.cond.51
  %35 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %35 to i64
  %36 = load %struct.gtp_command*, %struct.gtp_command** %commands.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %36, i64 %idxprom72
  %name74 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %arrayidx73, i32 0, i32 0
  %37 = load i8*, i8** %name74, align 8
  %cmp75 = icmp eq i8* %37, null
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %for.end.71
  %call78 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %for.end.71
  %38 = load i32, i32* %status, align 4
  %cmp80 = icmp eq i32 %38, 1
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.79
  call void @gtp_panic()
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.79
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gtp_failure(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  call void @gtp_start_response(i32 1)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %call5 = call i32 @gtp_finish_response()
  ret i32 %call5
}

; Function Attrs: nounwind uwtable
define void @gtp_panic() #0 {
entry:
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtp_internal_set_boardsize(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  store i32 %0, i32* @gtp_boardsize, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtp_set_vertex_transform_hooks(void (i32, i32, i32*, i32*)* %in, void (i32, i32, i32*, i32*)* %out) #0 {
entry:
  %in.addr = alloca void (i32, i32, i32*, i32*)*, align 8
  %out.addr = alloca void (i32, i32, i32*, i32*)*, align 8
  store void (i32, i32, i32*, i32*)* %in, void (i32, i32, i32*, i32*)** %in.addr, align 8
  store void (i32, i32, i32*, i32*)* %out, void (i32, i32, i32*, i32*)** %out.addr, align 8
  %0 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** %in.addr, align 8
  store void (i32, i32, i32*, i32*)* %0, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8
  %1 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** %out.addr, align 8
  store void (i32, i32, i32*, i32*)* %1, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtp_mprintf(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %f = alloca double, align 8
  %s = alloca i8*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %color = alloca i32, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %fmt.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %fmt.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.else.95

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %fmt.addr, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv3 = sext i8 %5 to i32
  switch i32 %conv3, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb.5
    i32 102, label %sw.bb.19
    i32 115, label %sw.bb.30
    i32 109, label %sw.bb.44
    i32 67, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %if.then
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 3
  %reg_save_area = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %8 = bitcast i8* %7 to i32*
  %9 = add i32 %gp_offset, 8
  store i32 %9, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %10 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %8, %vaarg.in_reg ], [ %10, %vaarg.in_mem ]
  %11 = load i32, i32* %vaarg.addr
  store i32 %11, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @_IO_putc(i32 %12, %struct._IO_FILE* %13)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 0
  %gp_offset8 = load i32, i32* %gp_offset_p7
  %fits_in_gp9 = icmp ule i32 %gp_offset8, 40
  br i1 %fits_in_gp9, label %vaarg.in_reg.10, label %vaarg.in_mem.12

vaarg.in_reg.10:                                  ; preds = %sw.bb.5
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 3
  %reg_save_area11 = load i8*, i8** %14
  %15 = getelementptr i8, i8* %reg_save_area11, i32 %gp_offset8
  %16 = bitcast i8* %15 to i32*
  %17 = add i32 %gp_offset8, 8
  store i32 %17, i32* %gp_offset_p7
  br label %vaarg.end.16

vaarg.in_mem.12:                                  ; preds = %sw.bb.5
  %overflow_arg_area_p13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay6, i32 0, i32 2
  %overflow_arg_area14 = load i8*, i8** %overflow_arg_area_p13
  %18 = bitcast i8* %overflow_arg_area14 to i32*
  %overflow_arg_area.next15 = getelementptr i8, i8* %overflow_arg_area14, i32 8
  store i8* %overflow_arg_area.next15, i8** %overflow_arg_area_p13
  br label %vaarg.end.16

vaarg.end.16:                                     ; preds = %vaarg.in_mem.12, %vaarg.in_reg.10
  %vaarg.addr17 = phi i32* [ %16, %vaarg.in_reg.10 ], [ %18, %vaarg.in_mem.12 ]
  %19 = load i32, i32* %vaarg.addr17
  store i32 %19, i32* %d, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = load i32, i32* %d, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %21)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay20, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.21, label %vaarg.in_mem.23

vaarg.in_reg.21:                                  ; preds = %sw.bb.19
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay20, i32 0, i32 3
  %reg_save_area22 = load i8*, i8** %22
  %23 = getelementptr i8, i8* %reg_save_area22, i32 %fp_offset
  %24 = bitcast i8* %23 to double*
  %25 = add i32 %fp_offset, 16
  store i32 %25, i32* %fp_offset_p
  br label %vaarg.end.27

vaarg.in_mem.23:                                  ; preds = %sw.bb.19
  %overflow_arg_area_p24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay20, i32 0, i32 2
  %overflow_arg_area25 = load i8*, i8** %overflow_arg_area_p24
  %26 = bitcast i8* %overflow_arg_area25 to double*
  %overflow_arg_area.next26 = getelementptr i8, i8* %overflow_arg_area25, i32 8
  store i8* %overflow_arg_area.next26, i8** %overflow_arg_area_p24
  br label %vaarg.end.27

vaarg.end.27:                                     ; preds = %vaarg.in_mem.23, %vaarg.in_reg.21
  %vaarg.addr28 = phi double* [ %24, %vaarg.in_reg.21 ], [ %26, %vaarg.in_mem.23 ]
  %27 = load double, double* %vaarg.addr28
  store double %27, double* %f, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = load double, double* %f, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %29)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then
  %arraydecay31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay31, i32 0, i32 0
  %gp_offset33 = load i32, i32* %gp_offset_p32
  %fits_in_gp34 = icmp ule i32 %gp_offset33, 40
  br i1 %fits_in_gp34, label %vaarg.in_reg.35, label %vaarg.in_mem.37

vaarg.in_reg.35:                                  ; preds = %sw.bb.30
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay31, i32 0, i32 3
  %reg_save_area36 = load i8*, i8** %30
  %31 = getelementptr i8, i8* %reg_save_area36, i32 %gp_offset33
  %32 = bitcast i8* %31 to i8**
  %33 = add i32 %gp_offset33, 8
  store i32 %33, i32* %gp_offset_p32
  br label %vaarg.end.41

vaarg.in_mem.37:                                  ; preds = %sw.bb.30
  %overflow_arg_area_p38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay31, i32 0, i32 2
  %overflow_arg_area39 = load i8*, i8** %overflow_arg_area_p38
  %34 = bitcast i8* %overflow_arg_area39 to i8**
  %overflow_arg_area.next40 = getelementptr i8, i8* %overflow_arg_area39, i32 8
  store i8* %overflow_arg_area.next40, i8** %overflow_arg_area_p38
  br label %vaarg.end.41

vaarg.end.41:                                     ; preds = %vaarg.in_mem.37, %vaarg.in_reg.35
  %vaarg.addr42 = phi i8** [ %32, %vaarg.in_reg.35 ], [ %34, %vaarg.in_mem.37 ]
  %35 = load i8*, i8** %vaarg.addr42
  store i8* %35, i8** %s, align 8
  %36 = load i8*, i8** %s, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call43 = call i32 @fputs(i8* %36, %struct._IO_FILE* %37)
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.then
  %arraydecay45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 0
  %gp_offset47 = load i32, i32* %gp_offset_p46
  %fits_in_gp48 = icmp ule i32 %gp_offset47, 40
  br i1 %fits_in_gp48, label %vaarg.in_reg.49, label %vaarg.in_mem.51

vaarg.in_reg.49:                                  ; preds = %sw.bb.44
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 3
  %reg_save_area50 = load i8*, i8** %38
  %39 = getelementptr i8, i8* %reg_save_area50, i32 %gp_offset47
  %40 = bitcast i8* %39 to i32*
  %41 = add i32 %gp_offset47, 8
  store i32 %41, i32* %gp_offset_p46
  br label %vaarg.end.55

vaarg.in_mem.51:                                  ; preds = %sw.bb.44
  %overflow_arg_area_p52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 2
  %overflow_arg_area53 = load i8*, i8** %overflow_arg_area_p52
  %42 = bitcast i8* %overflow_arg_area53 to i32*
  %overflow_arg_area.next54 = getelementptr i8, i8* %overflow_arg_area53, i32 8
  store i8* %overflow_arg_area.next54, i8** %overflow_arg_area_p52
  br label %vaarg.end.55

vaarg.end.55:                                     ; preds = %vaarg.in_mem.51, %vaarg.in_reg.49
  %vaarg.addr56 = phi i32* [ %40, %vaarg.in_reg.49 ], [ %42, %vaarg.in_mem.51 ]
  %43 = load i32, i32* %vaarg.addr56
  store i32 %43, i32* %m, align 4
  %arraydecay57 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay57, i32 0, i32 0
  %gp_offset59 = load i32, i32* %gp_offset_p58
  %fits_in_gp60 = icmp ule i32 %gp_offset59, 40
  br i1 %fits_in_gp60, label %vaarg.in_reg.61, label %vaarg.in_mem.63

vaarg.in_reg.61:                                  ; preds = %vaarg.end.55
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay57, i32 0, i32 3
  %reg_save_area62 = load i8*, i8** %44
  %45 = getelementptr i8, i8* %reg_save_area62, i32 %gp_offset59
  %46 = bitcast i8* %45 to i32*
  %47 = add i32 %gp_offset59, 8
  store i32 %47, i32* %gp_offset_p58
  br label %vaarg.end.67

vaarg.in_mem.63:                                  ; preds = %vaarg.end.55
  %overflow_arg_area_p64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay57, i32 0, i32 2
  %overflow_arg_area65 = load i8*, i8** %overflow_arg_area_p64
  %48 = bitcast i8* %overflow_arg_area65 to i32*
  %overflow_arg_area.next66 = getelementptr i8, i8* %overflow_arg_area65, i32 8
  store i8* %overflow_arg_area.next66, i8** %overflow_arg_area_p64
  br label %vaarg.end.67

vaarg.end.67:                                     ; preds = %vaarg.in_mem.63, %vaarg.in_reg.61
  %vaarg.addr68 = phi i32* [ %46, %vaarg.in_reg.61 ], [ %48, %vaarg.in_mem.63 ]
  %49 = load i32, i32* %vaarg.addr68
  store i32 %49, i32* %n, align 4
  %50 = load i32, i32* %m, align 4
  %51 = load i32, i32* %n, align 4
  call void @gtp_print_vertex(i32 %50, i32 %51)
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.then
  %arraydecay70 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay70, i32 0, i32 0
  %gp_offset72 = load i32, i32* %gp_offset_p71
  %fits_in_gp73 = icmp ule i32 %gp_offset72, 40
  br i1 %fits_in_gp73, label %vaarg.in_reg.74, label %vaarg.in_mem.76

vaarg.in_reg.74:                                  ; preds = %sw.bb.69
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay70, i32 0, i32 3
  %reg_save_area75 = load i8*, i8** %52
  %53 = getelementptr i8, i8* %reg_save_area75, i32 %gp_offset72
  %54 = bitcast i8* %53 to i32*
  %55 = add i32 %gp_offset72, 8
  store i32 %55, i32* %gp_offset_p71
  br label %vaarg.end.80

vaarg.in_mem.76:                                  ; preds = %sw.bb.69
  %overflow_arg_area_p77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay70, i32 0, i32 2
  %overflow_arg_area78 = load i8*, i8** %overflow_arg_area_p77
  %56 = bitcast i8* %overflow_arg_area78 to i32*
  %overflow_arg_area.next79 = getelementptr i8, i8* %overflow_arg_area78, i32 8
  store i8* %overflow_arg_area.next79, i8** %overflow_arg_area_p77
  br label %vaarg.end.80

vaarg.end.80:                                     ; preds = %vaarg.in_mem.76, %vaarg.in_reg.74
  %vaarg.addr81 = phi i32* [ %54, %vaarg.in_reg.74 ], [ %56, %vaarg.in_mem.76 ]
  %57 = load i32, i32* %vaarg.addr81
  store i32 %57, i32* %color, align 4
  %58 = load i32, i32* %color, align 4
  %cmp82 = icmp eq i32 %58, 1
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %vaarg.end.80
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call85 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %59)
  br label %if.end.92

if.else:                                          ; preds = %vaarg.end.80
  %60 = load i32, i32* %color, align 4
  %cmp86 = icmp eq i32 %60, 2
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.else
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call89 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %61)
  br label %if.end

if.else.90:                                       ; preds = %if.else
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call91 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %62)
  br label %if.end

if.end:                                           ; preds = %if.else.90, %if.then.88
  br label %if.end.92

if.end.92:                                        ; preds = %if.end, %if.then.84
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %64 = load i8*, i8** %fmt.addr, align 8
  %65 = load i8, i8* %64, align 1
  %conv93 = sext i8 %65 to i32
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i32 %conv93)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.92, %vaarg.end.67, %vaarg.end.41, %vaarg.end.27, %vaarg.end.16, %vaarg.end
  br label %if.end.98

if.else.95:                                       ; preds = %for.body
  %66 = load i8*, i8** %fmt.addr, align 8
  %67 = load i8, i8* %66, align 1
  %conv96 = sext i8 %67 to i32
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call97 = call i32 @_IO_putc(i32 %conv96, %struct._IO_FILE* %68)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %69 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr99, i8** %fmt.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay100 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay100101 = bitcast %struct.__va_list_tag* %arraydecay100 to i8*
  call void @llvm.va_end(i8* %arraydecay100101)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @gtp_print_vertex(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  call void @gtp_print_vertices(i32 1, i32* %i.addr, i32* %j.addr)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define void @gtp_printf(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define void @gtp_start_response(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @current_id, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  %2 = load i32, i32* @current_id, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %2)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gtp_finish_response() #0 {
entry:
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gtp_success(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  call void @gtp_start_response(i32 0)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %call5 = call i32 @gtp_finish_response()
  ret i32 %call5
}

; Function Attrs: nounwind uwtable
define i32 @gtp_decode_color(i8* %s, i32* %color) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %color.addr = alloca i32*, align 8
  %color_string = alloca [7 x i8], align 1
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32* %color, i32** %color.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %color_string, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay, i32* %n) #4
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %arraydecay1 = getelementptr inbounds [7 x i8], [7 x i8]* %color_string, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #5
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %1, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %color_string, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %3 to i32
  %call6 = call i32 @tolower(i32 %conv5) #4
  %conv7 = trunc i32 %call6 to i8
  %4 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds [7 x i8], [7 x i8]* %color_string, i32 0, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay10 = getelementptr inbounds [7 x i8], [7 x i8]* %color_string, i32 0, i32 0
  %call11 = call i32 @strcmp(i8* %arraydecay10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %arraydecay14 = getelementptr inbounds [7 x i8], [7 x i8]* %color_string, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %arraydecay14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false, %for.end
  %6 = load i32*, i32** %color.addr, align 8
  store i32 2, i32* %6, align 4
  br label %if.end.31

if.else:                                          ; preds = %lor.lhs.false
  %arraydecay19 = getelementptr inbounds [7 x i8], [7 x i8]* %color_string, i32 0, i32 0
  %call20 = call i32 @strcmp(i8* %arraydecay19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #5
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.28, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else
  %arraydecay24 = getelementptr inbounds [7 x i8], [7 x i8]* %color_string, i32 0, i32 0
  %call25 = call i32 @strcmp(i8* %arraydecay24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %lor.lhs.false.23, %if.else
  %7 = load i32*, i32** %color.addr, align 8
  store i32 1, i32* %7, align 4
  br label %if.end.30

if.else.29:                                       ; preds = %lor.lhs.false.23
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.28
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.18
  %8 = load i32, i32* %n, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.else.29, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind uwtable
define i32 @gtp_decode_coord(i8* %s, i32* %i, i32* %j) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %column = alloca i8, align 1
  %row = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* %column, i32* %row, i32* %n) #4
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %column, align 1
  %conv = sext i8 %1 to i32
  %call1 = call i32 @tolower(i32 %conv) #4
  %cmp2 = icmp eq i32 %call1, 105
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %2 = load i8, i8* %column, align 1
  %conv6 = sext i8 %2 to i32
  %call7 = call i32 @tolower(i32 %conv6) #4
  %sub = sub nsw i32 %call7, 97
  %3 = load i32*, i32** %j.addr, align 8
  store i32 %sub, i32* %3, align 4
  %4 = load i8, i8* %column, align 1
  %conv8 = sext i8 %4 to i32
  %call9 = call i32 @tolower(i32 %conv8) #4
  %cmp10 = icmp sgt i32 %call9, 105
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.5
  %5 = load i32*, i32** %j.addr, align 8
  %6 = load i32, i32* %5, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %5, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.5
  %7 = load i32, i32* @gtp_boardsize, align 4
  %8 = load i32, i32* %row, align 4
  %sub14 = sub nsw i32 %7, %8
  %9 = load i32*, i32** %i.addr, align 8
  store i32 %sub14, i32* %9, align 4
  %10 = load i32*, i32** %i.addr, align 8
  %11 = load i32, i32* %10, align 4
  %cmp15 = icmp slt i32 %11, 0
  br i1 %cmp15, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %12 = load i32*, i32** %i.addr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @gtp_boardsize, align 4
  %cmp17 = icmp sge i32 %13, %14
  br i1 %cmp17, label %if.then.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %15 = load i32*, i32** %j.addr, align 8
  %16 = load i32, i32* %15, align 4
  %cmp20 = icmp slt i32 %16, 0
  br i1 %cmp20, label %if.then.25, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %17 = load i32*, i32** %j.addr, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @gtp_boardsize, align 4
  %cmp23 = icmp sge i32 %18, %19
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.22, %lor.lhs.false.19, %lor.lhs.false, %if.end.13
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false.22
  %20 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8
  %cmp27 = icmp ne void (i32, i32, i32*, i32*)* %20, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %21 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8
  %22 = load i32*, i32** %i.addr, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %j.addr, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %i.addr, align 8
  %27 = load i32*, i32** %j.addr, align 8
  call void %21(i32 %23, i32 %25, i32* %26, i32* %27)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  %28 = load i32, i32* %n, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.25, %if.then.4, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @gtp_decode_move(i8* %s, i32* %color, i32* %i, i32* %j) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %color.addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %k = alloca i32, align 4
  %buf = alloca [6 x i8], align 1
  store i8* %s, i8** %s.addr, align 8
  store i32* %color, i32** %color.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32*, i32** %color.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %1)
  store i32 %call, i32* %n1, align 4
  %2 = load i32, i32* %n1, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i32, i32* %n1, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %5 = load i32*, i32** %i.addr, align 8
  %6 = load i32*, i32** %j.addr, align 8
  %call1 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %5, i32* %6)
  store i32 %call1, i32* %n2, align 4
  %7 = load i32, i32* %n2, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.25

if.then.3:                                        ; preds = %if.end
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i32, i32* %n1, align 4
  %idx.ext4 = sext i32 %9 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %8, i64 %idx.ext4
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i32 0
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay, i32* %n2) #4
  %cmp7 = icmp ne i32 %call6, 1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.3
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.3
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %10 = load i32, i32* %k, align 4
  %arraydecay10 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i32 0
  %call11 = call i64 @strlen(i8* %arraydecay10) #5
  %conv = trunc i64 %call11 to i32
  %cmp12 = icmp slt i32 %10, %conv
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %k, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv14 = sext i8 %12 to i32
  %call15 = call i32 @tolower(i32 %conv14) #4
  %conv16 = trunc i32 %call15 to i8
  %13 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i64 %idxprom17
  store i8 %conv16, i8* %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay19 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i32 0, i32 0
  %call20 = call i32 @strcmp(i8* %arraydecay19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #5
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %for.end
  %15 = load i32*, i32** %i.addr, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32*, i32** %j.addr, align 8
  store i32 -1, i32* %16, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %17 = load i32, i32* %n1, align 4
  %18 = load i32, i32* %n2, align 4
  %add = add nsw i32 %17, %18
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.23, %if.then.8, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @gtp_print_vertices(i32 %n, i32* %movei, i32* %movej) #0 {
entry:
  %n.addr = alloca i32, align 4
  %movei.addr = alloca i32*, align 8
  %movej.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %ri = alloca i32, align 4
  %rj = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %movei, i32** %movei.addr, align 8
  store i32* %movej, i32** %movej.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32*, i32** %movei.addr, align 8
  %2 = load i32*, i32** %movej.addr, align 8
  call void @sort_moves(i32 %0, i32* %1, i32* %2)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %movei.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp eq i32 %8, -1
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i32*, i32** %movej.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %11, -1
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32*, i32** %movei.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp slt i32 %14, 0
  br i1 %cmp9, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %15 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i32*, i32** %movei.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %18 = load i32, i32* @gtp_boardsize, align 4
  %cmp12 = icmp sge i32 %17, %18
  br i1 %cmp12, label %if.then.21, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load i32*, i32** %movej.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom14
  %21 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp slt i32 %21, 0
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %22 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load i32*, i32** %movej.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %23, i64 %idxprom18
  %24 = load i32, i32* %arrayidx19, align 4
  %25 = load i32, i32* @gtp_boardsize, align 4
  %cmp20 = icmp sge i32 %24, %25
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.13, %lor.lhs.false, %if.else
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.37

if.else.22:                                       ; preds = %lor.lhs.false.17
  %26 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8
  %cmp23 = icmp ne void (i32, i32, i32*, i32*)* %26, null
  br i1 %cmp23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %if.else.22
  %27 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8
  %28 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load i32*, i32** %movei.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %29, i64 %idxprom25
  %30 = load i32, i32* %arrayidx26, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %31 to i64
  %32 = load i32*, i32** %movej.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %32, i64 %idxprom27
  %33 = load i32, i32* %arrayidx28, align 4
  call void %27(i32 %30, i32 %33, i32* %ri, i32* %rj)
  br label %if.end.34

if.else.29:                                       ; preds = %if.else.22
  %34 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load i32*, i32** %movei.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %35, i64 %idxprom30
  %36 = load i32, i32* %arrayidx31, align 4
  store i32 %36, i32* %ri, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %37 to i64
  %38 = load i32*, i32** %movej.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %38, i64 %idxprom32
  %39 = load i32, i32* %arrayidx33, align 4
  store i32 %39, i32* %rj, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.29, %if.then.24
  %40 = load i32, i32* %rj, align 4
  %add = add nsw i32 65, %40
  %41 = load i32, i32* %rj, align 4
  %cmp35 = icmp sge i32 %41, 8
  %conv = zext i1 %cmp35 to i32
  %add36 = add nsw i32 %add, %conv
  %42 = load i32, i32* @gtp_boardsize, align 4
  %43 = load i32, i32* %ri, align 4
  %sub = sub nsw i32 %42, %43
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 %add36, i32 %sub)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.34, %if.then.21
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %44 = load i32, i32* %k, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_moves(i32 %n, i32* %movei, i32* %movej) #0 {
entry:
  %n.addr = alloca i32, align 4
  %movei.addr = alloca i32*, align 8
  %movej.addr = alloca i32*, align 8
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %movei, i32** %movei.addr, align 8
  store i32* %movej, i32** %movej.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %1 = load i32, i32* %b, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %a, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %a, align 4
  %3 = load i32, i32* %b, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %a, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %movei.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %b, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %movei.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %6, %9
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.3
  %10 = load i32, i32* %a, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32*, i32** %movei.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %b, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i32*, i32** %movei.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp eq i32 %12, %15
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %16 = load i32, i32* %a, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load i32*, i32** %movej.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4
  %19 = load i32, i32* %b, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load i32*, i32** %movej.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom14
  %21 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp sgt i32 %18, %21
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %for.body.3
  %22 = load i32, i32* %b, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i32*, i32** %movei.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %23, i64 %idxprom17
  %24 = load i32, i32* %arrayidx18, align 4
  store i32 %24, i32* %tmp, align 4
  %25 = load i32, i32* %a, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i32*, i32** %movei.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom19
  %27 = load i32, i32* %arrayidx20, align 4
  %28 = load i32, i32* %b, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load i32*, i32** %movei.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %29, i64 %idxprom21
  store i32 %27, i32* %arrayidx22, align 4
  %30 = load i32, i32* %tmp, align 4
  %31 = load i32, i32* %a, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load i32*, i32** %movei.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %32, i64 %idxprom23
  store i32 %30, i32* %arrayidx24, align 4
  %33 = load i32, i32* %b, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load i32*, i32** %movej.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %34, i64 %idxprom25
  %35 = load i32, i32* %arrayidx26, align 4
  store i32 %35, i32* %tmp, align 4
  %36 = load i32, i32* %a, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load i32*, i32** %movej.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %37, i64 %idxprom27
  %38 = load i32, i32* %arrayidx28, align 4
  %39 = load i32, i32* %b, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load i32*, i32** %movej.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %40, i64 %idxprom29
  store i32 %38, i32* %arrayidx30, align 4
  %41 = load i32, i32* %tmp, align 4
  %42 = load i32, i32* %a, align 4
  %idxprom31 = sext i32 %42 to i64
  %43 = load i32*, i32** %movej.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %43, i64 %idxprom31
  store i32 %41, i32* %arrayidx32, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %44 = load i32, i32* %a, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %45 = load i32, i32* %b, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %b, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
