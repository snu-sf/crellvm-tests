; ModuleID = './MultiSource.Benchmarks.mediabench/100.mpeg2.mpeg2dec.subspic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@Substitute_Frame_Buffer.previous_temporal_reference = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_bitstream_framenum = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_temporal_reference = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_bitstream_framenum = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_picture_coding_type = internal global i32 0, align 4
@Substitute_Frame_Buffer.bgate = internal global i32 0, align 4
@Second_Field = external global i32, align 4
@picture_structure = external global i32, align 4
@picture_coding_type = external global i32, align 4
@Substitute_Picture_Filename = external global i8*, align 8
@forward_reference_frame = external global [3 x i8*], align 16
@temporal_reference = external global i32, align 4
@backward_reference_frame = external global [3 x i8*], align 16
@current_frame = external global [3 x i8*], align 16
@.str = private unnamed_addr constant [40 x i8] c"ERROR: framenum (%d) is less than zero\0A\00", align 1
@Big_Picture_Flag = external global i32, align 4
@substitute_frame = external global [3 x i8*], align 16
@.str.1 = private unnamed_addr constant [32 x i8] c"was unable to substitute frame\0A\00", align 1
@Coded_Picture_Width = external global i32, align 4
@Coded_Picture_Height = external global i32, align 4
@Chroma_Width = external global i32, align 4
@Chroma_Height = external global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@Error_Text = external global [256 x i8], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@chroma_format = external global i32, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"ERROR: chroma_format (%d) not recognized\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"ERROR: unable to open reference filename (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"was able to read only %d bytes of %d of file %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @Substitute_Frame_Buffer(i32 %bitstream_framenum, i32 %sequence_framenum) #0 {
entry:
  %bitstream_framenum.addr = alloca i32, align 4
  %sequence_framenum.addr = alloca i32, align 4
  %substitute_display_framenum = alloca i32, align 4
  store i32 %bitstream_framenum, i32* %bitstream_framenum.addr, align 4
  store i32 %sequence_framenum, i32* %sequence_framenum.addr, align 4
  %0 = load i32, i32* %sequence_framenum.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @Second_Field, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* @picture_structure, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %if.then
  %3 = load i32, i32* @Second_Field, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.else.13, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false.2, %if.then
  %4 = load i32, i32* @picture_coding_type, align 4
  %cmp5 = icmp eq i32 %4, 2
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %5 = load i32, i32* %bitstream_framenum.addr, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %substitute_display_framenum, align 4
  %6 = load i8*, i8** @Substitute_Picture_Filename, align 8
  %7 = load i32, i32* %substitute_display_framenum, align 4
  call void @Read_Frame(i8* %6, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %7)
  br label %if.end.12

if.else:                                          ; preds = %if.then.4
  %8 = load i32, i32* @picture_coding_type, align 4
  %cmp7 = icmp eq i32 %8, 3
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %9 = load i32, i32* @Substitute_Frame_Buffer.bgate, align 4
  %cmp8 = icmp ne i32 %9, 1
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4
  %11 = load i32, i32* @temporal_reference, align 4
  %sub10 = sub nsw i32 %10, %11
  %12 = load i32, i32* %bitstream_framenum.addr, align 4
  %add = add nsw i32 %sub10, %12
  %sub11 = sub nsw i32 %add, 1
  store i32 %sub11, i32* %substitute_display_framenum, align 4
  %13 = load i8*, i8** @Substitute_Picture_Filename, align 8
  %14 = load i32, i32* %substitute_display_framenum, align 4
  call void @Read_Frame(i8* %13, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  br label %if.end.28

if.else.13:                                       ; preds = %lor.lhs.false.2
  %15 = load i32, i32* @Second_Field, align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.27

land.lhs.true.15:                                 ; preds = %if.else.13
  %16 = load i32, i32* @picture_coding_type, align 4
  %cmp16 = icmp eq i32 %16, 2
  br i1 %cmp16, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %land.lhs.true.15
  %17 = load i32, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4
  %cmp18 = icmp eq i32 %17, 1
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.22

land.lhs.true.19:                                 ; preds = %if.then.17
  %18 = load i32, i32* @picture_coding_type, align 4
  %cmp20 = icmp eq i32 %18, 2
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true.19
  %19 = load i32, i32* %bitstream_framenum.addr, align 4
  store i32 %19, i32* %substitute_display_framenum, align 4
  br label %if.end.26

if.else.22:                                       ; preds = %land.lhs.true.19, %if.then.17
  %20 = load i32, i32* @temporal_reference, align 4
  %21 = load i32, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4
  %sub23 = sub nsw i32 %20, %21
  %22 = load i32, i32* %bitstream_framenum.addr, align 4
  %add24 = add nsw i32 %sub23, %22
  %sub25 = sub nsw i32 %add24, 1
  store i32 %sub25, i32* %substitute_display_framenum, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22, %if.then.21
  %23 = load i8*, i8** @Substitute_Picture_Filename, align 8
  %24 = load i32, i32* %substitute_display_framenum, align 4
  call void @Read_Frame(i8* %23, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 %24)
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true.15, %if.else.13
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.12
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.lhs.false
  %25 = load i32, i32* @picture_coding_type, align 4
  %cmp30 = icmp eq i32 %25, 3
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.29
  store i32 1, i32* @Substitute_Frame_Buffer.bgate, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.29
  store i32 0, i32* @Substitute_Frame_Buffer.bgate, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  %26 = load i32, i32* @picture_structure, align 4
  %cmp34 = icmp eq i32 %26, 3
  br i1 %cmp34, label %if.then.37, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.33
  %27 = load i32, i32* @Second_Field, align 4
  %tobool36 = icmp ne i32 %27, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false.35, %if.end.33
  %28 = load i32, i32* @temporal_reference, align 4
  store i32 %28, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4
  %29 = load i32, i32* %bitstream_framenum.addr, align 4
  store i32 %29, i32* @Substitute_Frame_Buffer.previous_bitstream_framenum, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %lor.lhs.false.35
  %30 = load i32, i32* @picture_coding_type, align 4
  %cmp39 = icmp ne i32 %30, 3
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %if.end.38
  %31 = load i32, i32* @picture_structure, align 4
  %cmp41 = icmp eq i32 %31, 3
  br i1 %cmp41, label %if.then.44, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.40
  %32 = load i32, i32* @Second_Field, align 4
  %tobool43 = icmp ne i32 %32, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.42, %land.lhs.true.40
  %33 = load i32, i32* @temporal_reference, align 4
  store i32 %33, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4
  %34 = load i32, i32* %bitstream_framenum.addr, align 4
  store i32 %34, i32* @Substitute_Frame_Buffer.previous_anchor_bitstream_framenum, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false.42, %if.end.38
  %35 = load i32, i32* @picture_coding_type, align 4
  store i32 %35, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Read_Frame(i8* %fname, i8** %frame, i32 %framenum) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %frame.addr = alloca i8**, align 8
  %framenum.addr = alloca i32, align 4
  %parity = alloca i32, align 4
  %rerr = alloca i32, align 4
  %field_mode = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8
  store i8** %frame, i8*** %frame.addr, align 8
  store i32 %framenum, i32* %framenum.addr, align 4
  store i32 0, i32* %rerr, align 4
  %0 = load i32, i32* %framenum.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %framenum.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @Big_Picture_Flag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load i8*, i8** %fname.addr, align 8
  %4 = load i32, i32* %framenum.addr, align 4
  %call2 = call i32 @Extract_Components(i8* %3, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i32 0), i32 %4)
  store i32 %call2, i32* %rerr, align 4
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %fname.addr, align 8
  %6 = load i32, i32* %framenum.addr, align 4
  %call3 = call i32 @Read_Components(i8* %5, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i32 0), i32 %6)
  store i32 %call3, i32* %rerr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  %7 = load i32, i32* %rerr, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %8 = load i32, i32* @Second_Field, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.end.8
  %9 = load i32, i32* @picture_coding_type, align 4
  %cmp10 = icmp eq i32 %9, 2
  br i1 %cmp10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %land.lhs.true
  %10 = load i32, i32* @picture_structure, align 4
  %cmp12 = icmp eq i32 %10, 1
  %cond = select i1 %cmp12, i32 1, i32 0
  store i32 %cond, i32* %parity, align 4
  %11 = load i32, i32* @picture_structure, align 4
  %cmp13 = icmp eq i32 %11, 3
  %cond14 = select i1 %cmp13, i32 0, i32 1
  store i32 %cond14, i32* %field_mode, align 4
  br label %if.end.16

if.else.15:                                       ; preds = %land.lhs.true, %if.end.8
  store i32 0, i32* %parity, align 4
  store i32 0, i32* %field_mode, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.11
  %12 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i64 0), align 8
  %13 = load i8**, i8*** %frame.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx, align 8
  %15 = load i32, i32* @Coded_Picture_Width, align 4
  %16 = load i32, i32* @Coded_Picture_Height, align 4
  %17 = load i32, i32* %parity, align 4
  %18 = load i32, i32* %field_mode, align 4
  call void @Copy_Frame(i8* %12, i8* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %19 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i64 1), align 8
  %20 = load i8**, i8*** %frame.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %20, i64 1
  %21 = load i8*, i8** %arrayidx17, align 8
  %22 = load i32, i32* @Chroma_Width, align 4
  %23 = load i32, i32* @Chroma_Height, align 4
  %24 = load i32, i32* %parity, align 4
  %25 = load i32, i32* %field_mode, align 4
  call void @Copy_Frame(i8* %19, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %26 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i64 2), align 8
  %27 = load i8**, i8*** %frame.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %27, i64 2
  %28 = load i8*, i8** %arrayidx18, align 8
  %29 = load i32, i32* @Chroma_Width, align 4
  %30 = load i32, i32* @Chroma_Height, align 4
  %31 = load i32, i32* %parity, align 4
  %32 = load i32, i32* %field_mode, align 4
  call void @Copy_Frame(i8* %26, i8* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @Extract_Components(i8* %filename, i8** %frame, i32 %framenum) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %frame.addr = alloca i8**, align 8
  %framenum.addr = alloca i32, align 4
  %fd = alloca %struct._IO_FILE*, align 8
  %line = alloca i32, align 4
  %size = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8** %frame, i8*** %frame.addr, align 8
  store i32 %framenum, i32* %framenum.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fd, align 8
  %tobool = icmp ne %struct._IO_FILE* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* %1) #3
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @Coded_Picture_Width, align 4
  %3 = load i32, i32* @Coded_Picture_Height, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %size, align 4
  %4 = load i32, i32* @chroma_format, align 4
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %size, align 4
  %mul3 = mul nsw i32 %5, 3
  store i32 %mul3, i32* %size, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* @chroma_format, align 4
  %cmp4 = icmp eq i32 %6, 2
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %7 = load i32, i32* %size, align 4
  %mul6 = mul nsw i32 %7, 2
  store i32 %mul6, i32* %size, align 4
  br label %if.end.14

if.else.7:                                        ; preds = %if.else
  %8 = load i32, i32* @chroma_format, align 4
  %cmp8 = icmp eq i32 %8, 1
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %9 = load i32, i32* %size, align 4
  %mul10 = mul nsw i32 %9, 3
  %shr = ashr i32 %mul10, 1
  store i32 %shr, i32* %size, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %if.else.7
  %10 = load i32, i32* @chroma_format, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i32 %10)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.2
  %11 = load i32, i32* %size, align 4
  %12 = load i32, i32* %framenum.addr, align 4
  %mul16 = mul nsw i32 %11, %12
  store i32 %mul16, i32* %offset, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %14 = load i32, i32* %offset, align 4
  %conv = sext i32 %14 to i64
  %call17 = call i32 @fseek(%struct._IO_FILE* %13, i64 %conv, i32 0)
  store i32 0, i32* %line, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %15 = load i32, i32* %line, align 4
  %16 = load i32, i32* @Coded_Picture_Height, align 4
  %cmp18 = icmp slt i32 %15, %16
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8**, i8*** %frame.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx, align 8
  %19 = load i32, i32* %line, align 4
  %20 = load i32, i32* @Coded_Picture_Width, align 4
  %mul20 = mul nsw i32 %19, %20
  %idx.ext = sext i32 %mul20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %21 = load i32, i32* @Coded_Picture_Width, align 4
  %conv21 = sext i32 %21 to i64
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call22 = call i64 @fread(i8* %add.ptr, i64 1, i64 %conv21, %struct._IO_FILE* %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %line, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %line, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %line, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.33, %for.end
  %24 = load i32, i32* %line, align 4
  %25 = load i32, i32* @Chroma_Height, align 4
  %cmp24 = icmp slt i32 %24, %25
  br i1 %cmp24, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.23
  %26 = load i8**, i8*** %frame.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %26, i64 1
  %27 = load i8*, i8** %arrayidx27, align 8
  %28 = load i32, i32* %line, align 4
  %29 = load i32, i32* @Chroma_Width, align 4
  %mul28 = mul nsw i32 %28, %29
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %27, i64 %idx.ext29
  %30 = load i32, i32* @Chroma_Width, align 4
  %conv31 = sext i32 %30 to i64
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call32 = call i64 @fread(i8* %add.ptr30, i64 1, i64 %conv31, %struct._IO_FILE* %31)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.26
  %32 = load i32, i32* %line, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %line, align 4
  br label %for.cond.23

for.end.35:                                       ; preds = %for.cond.23
  store i32 0, i32* %line, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.46, %for.end.35
  %33 = load i32, i32* %line, align 4
  %34 = load i32, i32* @Chroma_Height, align 4
  %cmp37 = icmp slt i32 %33, %34
  br i1 %cmp37, label %for.body.39, label %for.end.48

for.body.39:                                      ; preds = %for.cond.36
  %35 = load i8**, i8*** %frame.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %35, i64 2
  %36 = load i8*, i8** %arrayidx40, align 8
  %37 = load i32, i32* %line, align 4
  %38 = load i32, i32* @Chroma_Width, align 4
  %mul41 = mul nsw i32 %37, %38
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %36, i64 %idx.ext42
  %39 = load i32, i32* @Chroma_Width, align 4
  %conv44 = sext i32 %39 to i64
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call45 = call i64 @fread(i8* %add.ptr43, i64 1, i64 %conv44, %struct._IO_FILE* %40)
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.39
  %41 = load i32, i32* %line, align 4
  %inc47 = add nsw i32 %41, 1
  store i32 %inc47, i32* %line, align 4
  br label %for.cond.36

for.end.48:                                       ; preds = %for.cond.36
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %42)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.48, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @Read_Components(i8* %filename, i8** %frame, i32 %framenum) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %frame.addr = alloca i8**, align 8
  %framenum.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %outname = alloca [256 x i8], align 16
  %name = alloca [256 x i8], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store i8** %frame, i8*** %frame.addr, align 8
  store i32 %framenum, i32* %framenum.addr, align 4
  store i32 0, i32* %err, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i32, i32* %framenum.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %0, i32 %1) #3
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay2) #3
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %2 = load i8**, i8*** %frame.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %4 = load i32, i32* @Coded_Picture_Width, align 4
  %5 = load i32, i32* @Coded_Picture_Height, align 4
  %call5 = call i32 @Read_Component(i8* %arraydecay4, i8* %3, i32 %4, i32 %5)
  %6 = load i32, i32* %err, align 4
  %add = add nsw i32 %6, %call5
  store i32 %add, i32* %err, align 4
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay7) #3
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %7 = load i8**, i8*** %frame.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx10, align 8
  %9 = load i32, i32* @Chroma_Width, align 4
  %10 = load i32, i32* @Chroma_Height, align 4
  %call11 = call i32 @Read_Component(i8* %arraydecay9, i8* %8, i32 %9, i32 %10)
  %11 = load i32, i32* %err, align 4
  %add12 = add nsw i32 %11, %call11
  store i32 %add12, i32* %err, align 4
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %call15 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay14) #3
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %12 = load i8**, i8*** %frame.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %12, i64 2
  %13 = load i8*, i8** %arrayidx17, align 8
  %14 = load i32, i32* @Chroma_Width, align 4
  %15 = load i32, i32* @Chroma_Height, align 4
  %call18 = call i32 @Read_Component(i8* %arraydecay16, i8* %13, i32 %14, i32 %15)
  %16 = load i32, i32* %err, align 4
  %add19 = add nsw i32 %16, %call18
  store i32 %add19, i32* %err, align 4
  %17 = load i32, i32* %err, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @Copy_Frame(i8* %src, i8* %dst, i32 %width, i32 %height, i32 %parity, i32 %field_mode) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %field_mode.addr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %incr = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store i32 %field_mode, i32* %field_mode.addr, align 4
  store i32 0, i32* %d, align 4
  store i32 0, i32* %s, align 4
  %0 = load i32, i32* %field_mode.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %incr, align 4
  %1 = load i32, i32* %parity.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %s, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.2

if.else:                                          ; preds = %entry
  store i32 1, i32* %incr, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.end
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.end.2
  %4 = load i32, i32* %row, align 4
  %5 = load i32, i32* %height.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %col, align 4
  %7 = load i32, i32* %width.addr, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %s, align 4
  %9 = load i32, i32* %col, align 4
  %add7 = add nsw i32 %8, %9
  %idxprom = sext i32 %add7 to i64
  %10 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %12 = load i32, i32* %d, align 4
  %13 = load i32, i32* %col, align 4
  %add8 = add nsw i32 %12, %13
  %idxprom9 = sext i32 %add8 to i64
  %14 = load i8*, i8** %dst.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  store i8 %11, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %15 = load i32, i32* %col, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %16 = load i32, i32* %width.addr, align 4
  %17 = load i32, i32* %incr, align 4
  %mul = mul nsw i32 %16, %17
  %18 = load i32, i32* %d, align 4
  %add11 = add nsw i32 %18, %mul
  store i32 %add11, i32* %d, align 4
  %19 = load i32, i32* %width.addr, align 4
  %20 = load i32, i32* %incr, align 4
  %mul12 = mul nsw i32 %19, %20
  %21 = load i32, i32* %s, align 4
  %add13 = add nsw i32 %21, %mul12
  store i32 %add13, i32* %s, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %22 = load i32, i32* %incr, align 4
  %23 = load i32, i32* %row, align 4
  %add15 = add nsw i32 %23, %22
  store i32 %add15, i32* %row, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @Read_Component(i8* %Filename, i8* %Frame, i32 %Width, i32 %Height) #0 {
entry:
  %retval = alloca i32, align 4
  %Filename.addr = alloca i8*, align 8
  %Frame.addr = alloca i8*, align 8
  %Width.addr = alloca i32, align 4
  %Height.addr = alloca i32, align 4
  %Size = alloca i32, align 4
  %Bytes_Read = alloca i32, align 4
  %Infile = alloca i32, align 4
  store i8* %Filename, i8** %Filename.addr, align 8
  store i8* %Frame, i8** %Frame.addr, align 8
  store i32 %Width, i32* %Width.addr, align 4
  store i32 %Height, i32* %Height.addr, align 4
  %0 = load i32, i32* %Width.addr, align 4
  %1 = load i32, i32* %Height.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %Size, align 4
  %2 = load i8*, i8** %Filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %2, i32 0)
  store i32 %call, i32* %Infile, align 4
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp = icmp slt i32 %lnot.ext, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %Filename.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i8* %3)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %Infile, align 4
  %5 = load i8*, i8** %Frame.addr, align 8
  %6 = load i32, i32* %Size, align 4
  %conv = sext i32 %6 to i64
  %call2 = call i64 @read(i32 %4, i8* %5, i64 %conv)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %Bytes_Read, align 4
  %7 = load i32, i32* %Bytes_Read, align 4
  %8 = load i32, i32* %Size, align 4
  %cmp4 = icmp ne i32 %7, %8
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %9 = load i32, i32* %Bytes_Read, align 4
  %10 = load i32, i32* %Size, align 4
  %11 = load i8*, i8** %Filename.addr, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i32 %9, i32 %10, i8* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %12 = load i32, i32* %Infile, align 4
  %call9 = call i32 @close(i32 %12)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @open(i8*, i32, ...) #1

declare i64 @read(i32, i8*, i64) #1

declare i32 @close(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
