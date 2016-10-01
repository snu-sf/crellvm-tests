; ModuleID = './MultiSource.Benchmarks.mediabench/93.mpeg2.mpeg2dec.store.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@progressive_sequence = external global i32, align 4
@progressive_frame = external global i32, align 4
@Frame_Store_Flag = external global i32, align 4
@Output_Picture_Filename = external global i8*, align 8
@Coded_Picture_Width = external global i32, align 4
@vertical_size = external global i32, align 4
@Output_Type = external global i32, align 4
@horizontal_size = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@chroma_format = external global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@Quiet_Flag = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"saving %s\0A\00", align 1
@outfile = internal global i32 0, align 4
@Error_Text = external global [256 x i8], align 16
@.str.4 = private unnamed_addr constant [20 x i8] c"Couldn't create %s\0A\00", align 1
@obfr = internal global [4096 x i8] zeroinitializer, align 16
@optr = internal global i8* null, align 8
@store_sif.u422 = internal global i8* null, align 8
@store_sif.v422 = internal global i8* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"4:4:4 not supported for SIF format\00", align 1
@Coded_Picture_Height = external global i32, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".SIF\00", align 1
@Clip = external global i8*, align 8
@store_ppm_tga.tga24 = internal global [14 x i8] c"\00\00\02\00\00\00\00\00\00\00\00\00\18 ", align 1
@store_ppm_tga.u422 = internal global i8* null, align 8
@store_ppm_tga.v422 = internal global i8* null, align 8
@store_ppm_tga.u444 = internal global i8* null, align 8
@store_ppm_tga.v444 = internal global i8* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".ppm\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1
@matrix_coefficients = external global i32, align 4
@Inverse_Table_6_9 = external global [8 x [4 x i32]], align 16
@base = external global %struct.layer_data, align 8

; Function Attrs: nounwind uwtable
define void @Write_Frame(i8** %src, i32 %frame) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %frame.addr = alloca i32, align 4
  %outname = alloca [256 x i8], align 16
  store i8** %src, i8*** %src.addr, align 8
  store i32 %frame, i32* %frame.addr, align 4
  %0 = load i32, i32* @progressive_sequence, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @progressive_frame, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* @Frame_Store_Flag, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %3 = load i8*, i8** @Output_Picture_Filename, align 8
  %4 = load i32, i32* %frame.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %3, i32 %4, i32 102) #4
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %5 = load i8**, i8*** %src.addr, align 8
  %6 = load i32, i32* @Coded_Picture_Width, align 4
  %7 = load i32, i32* @vertical_size, align 4
  call void @store_one(i8* %arraydecay4, i8** %5, i32 0, i32 %6, i32 %7)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.2
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %8 = load i8*, i8** @Output_Picture_Filename, align 8
  %9 = load i32, i32* %frame.addr, align 4
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5, i8* %8, i32 %9, i32 97) #4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %10 = load i8**, i8*** %src.addr, align 8
  %11 = load i32, i32* @Coded_Picture_Width, align 4
  %shl = shl i32 %11, 1
  %12 = load i32, i32* @vertical_size, align 4
  %shr = ashr i32 %12, 1
  call void @store_one(i8* %arraydecay7, i8** %10, i32 0, i32 %shl, i32 %shr)
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %13 = load i8*, i8** @Output_Picture_Filename, align 8
  %14 = load i32, i32* %frame.addr, align 4
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay8, i8* %13, i32 %14, i32 98) #4
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %15 = load i8**, i8*** %src.addr, align 8
  %16 = load i32, i32* @Coded_Picture_Width, align 4
  %17 = load i32, i32* @Coded_Picture_Width, align 4
  %shl11 = shl i32 %17, 1
  %18 = load i32, i32* @vertical_size, align 4
  %shr12 = ashr i32 %18, 1
  call void @store_one(i8* %arraydecay10, i8** %15, i32 %16, i32 %shl11, i32 %shr12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @store_one(i8* %outname, i8** %src, i32 %offset, i32 %incr, i32 %height) #0 {
entry:
  %outname.addr = alloca i8*, align 8
  %src.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %incr.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i8* %outname, i8** %outname.addr, align 8
  store i8** %src, i8*** %src.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %incr, i32* %incr.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* @Output_Type, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %outname.addr, align 8
  %2 = load i8**, i8*** %src.addr, align 8
  %3 = load i32, i32* %offset.addr, align 4
  %4 = load i32, i32* %incr.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  call void @store_yuv(i8* %1, i8** %2, i32 %3, i32 %4, i32 %5)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load i8*, i8** %outname.addr, align 8
  %7 = load i8**, i8*** %src.addr, align 8
  %8 = load i32, i32* %offset.addr, align 4
  %9 = load i32, i32* %incr.addr, align 4
  %10 = load i32, i32* %height.addr, align 4
  call void @store_sif(i8* %6, i8** %7, i32 %8, i32 %9, i32 %10)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %11 = load i8*, i8** %outname.addr, align 8
  %12 = load i8**, i8*** %src.addr, align 8
  %13 = load i32, i32* %offset.addr, align 4
  %14 = load i32, i32* %incr.addr, align 4
  %15 = load i32, i32* %height.addr, align 4
  call void @store_ppm_tga(i8* %11, i8** %12, i32 %13, i32 %14, i32 %15, i32 1)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %16 = load i8*, i8** %outname.addr, align 8
  %17 = load i8**, i8*** %src.addr, align 8
  %18 = load i32, i32* %offset.addr, align 4
  %19 = load i32, i32* %incr.addr, align 4
  %20 = load i32, i32* %height.addr, align 4
  call void @store_ppm_tga(i8* %16, i8** %17, i32 %18, i32 %19, i32 %20, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @store_yuv(i8* %outname, i8** %src, i32 %offset, i32 %incr, i32 %height) #0 {
entry:
  %outname.addr = alloca i8*, align 8
  %src.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %incr.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %hsize = alloca i32, align 4
  %tmpname = alloca [256 x i8], align 16
  store i8* %outname, i8** %outname.addr, align 8
  store i8** %src, i8*** %src.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %incr, i32* %incr.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* @horizontal_size, align 4
  store i32 %0, i32* %hsize, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %tmpname, i32 0, i32 0
  %1 = load i8*, i8** %outname.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %1) #4
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %tmpname, i32 0, i32 0
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %4 = load i32, i32* %offset.addr, align 4
  %5 = load i32, i32* %incr.addr, align 4
  %6 = load i32, i32* %hsize, align 4
  %7 = load i32, i32* %height.addr, align 4
  call void @store_yuv1(i8* %arraydecay1, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7)
  %8 = load i32, i32* @chroma_format, align 4
  %cmp = icmp ne i32 %8, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %offset.addr, align 4
  %shr = ashr i32 %9, 1
  store i32 %shr, i32* %offset.addr, align 4
  %10 = load i32, i32* %incr.addr, align 4
  %shr2 = ashr i32 %10, 1
  store i32 %shr2, i32* %incr.addr, align 4
  %11 = load i32, i32* %hsize, align 4
  %shr3 = ashr i32 %11, 1
  store i32 %shr3, i32* %hsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* @chroma_format, align 4
  %cmp4 = icmp eq i32 %12, 1
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* %height.addr, align 4
  %shr6 = ashr i32 %13, 1
  store i32 %shr6, i32* %height.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %tmpname, i32 0, i32 0
  %14 = load i8*, i8** %outname.addr, align 8
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %14) #4
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %tmpname, i32 0, i32 0
  %15 = load i8**, i8*** %src.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx11, align 8
  %17 = load i32, i32* %offset.addr, align 4
  %18 = load i32, i32* %incr.addr, align 4
  %19 = load i32, i32* %hsize, align 4
  %20 = load i32, i32* %height.addr, align 4
  call void @store_yuv1(i8* %arraydecay10, i8* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %tmpname, i32 0, i32 0
  %21 = load i8*, i8** %outname.addr, align 8
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %21) #4
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %tmpname, i32 0, i32 0
  %22 = load i8**, i8*** %src.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %22, i64 2
  %23 = load i8*, i8** %arrayidx15, align 8
  %24 = load i32, i32* %offset.addr, align 4
  %25 = load i32, i32* %incr.addr, align 4
  %26 = load i32, i32* %hsize, align 4
  %27 = load i32, i32* %height.addr, align 4
  call void @store_yuv1(i8* %arraydecay14, i8* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @store_sif(i8* %outname, i8** %src, i32 %offset, i32 %incr, i32 %height) #0 {
entry:
  %outname.addr = alloca i8*, align 8
  %src.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %incr.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %py = alloca i8*, align 8
  %pu = alloca i8*, align 8
  %pv = alloca i8*, align 8
  store i8* %outname, i8** %outname.addr, align 8
  store i8** %src, i8*** %src.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %incr, i32* %incr.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* @chroma_format, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @chroma_format, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %2 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** @store_sif.u422, align 8
  %4 = load i8**, i8*** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  store i8* %5, i8** @store_sif.v422, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** @store_sif.u422, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.end.15, label %if.then.4

if.then.4:                                        ; preds = %if.else
  %7 = load i32, i32* @Coded_Picture_Width, align 4
  %shr = ashr i32 %7, 1
  %8 = load i32, i32* @Coded_Picture_Height, align 4
  %mul = mul nsw i32 %shr, %8
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @malloc(i64 %conv) #4
  store i8* %call, i8** @store_sif.u422, align 8
  %tobool5 = icmp ne i8* %call, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.4
  %9 = load i32, i32* @Coded_Picture_Width, align 4
  %shr8 = ashr i32 %9, 1
  %10 = load i32, i32* @Coded_Picture_Height, align 4
  %mul9 = mul nsw i32 %shr8, %10
  %conv10 = sext i32 %mul9 to i64
  %call11 = call noalias i8* @malloc(i64 %conv10) #4
  store i8* %call11, i8** @store_sif.v422, align 8
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.7
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.else
  %11 = load i8**, i8*** %src.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %11, i64 1
  %12 = load i8*, i8** %arrayidx16, align 8
  %13 = load i8*, i8** @store_sif.u422, align 8
  call void @conv420to422(i8* %12, i8* %13)
  %14 = load i8**, i8*** %src.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %14, i64 2
  %15 = load i8*, i8** %arrayidx17, align 8
  %16 = load i8*, i8** @store_sif.v422, align 8
  call void @conv420to422(i8* %15, i8* %16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.then.2
  %17 = load i8*, i8** %outname.addr, align 8
  %call19 = call i8* @strcat(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #4
  %18 = load i32, i32* @Quiet_Flag, align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = load i8*, i8** %outname.addr, align 8
  %call22 = call i8* @mybasename(i8* %20)
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* %call22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.18
  %21 = load i8*, i8** %outname.addr, align 8
  %call25 = call i32 (i8*, i32, ...) @open(i8* %21, i32 577, i32 438)
  store i32 %call25, i32* @outfile, align 4
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.24
  %22 = load i8*, i8** %outname.addr, align 8
  %call29 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %22) #4
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.24
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0), i8** @optr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %if.end.30
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %height.addr, align 4
  %cmp31 = icmp slt i32 %23, %24
  br i1 %cmp31, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %25 = load i8**, i8*** %src.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx33, align 8
  %27 = load i32, i32* %offset.addr, align 4
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  %28 = load i32, i32* %incr.addr, align 4
  %29 = load i32, i32* %i, align 4
  %mul34 = mul nsw i32 %28, %29
  %idx.ext35 = sext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext35
  store i8* %add.ptr36, i8** %py, align 8
  %30 = load i8*, i8** @store_sif.u422, align 8
  %31 = load i32, i32* %offset.addr, align 4
  %shr37 = ashr i32 %31, 1
  %idx.ext38 = sext i32 %shr37 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %30, i64 %idx.ext38
  %32 = load i32, i32* %incr.addr, align 4
  %shr40 = ashr i32 %32, 1
  %33 = load i32, i32* %i, align 4
  %mul41 = mul nsw i32 %shr40, %33
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr39, i64 %idx.ext42
  store i8* %add.ptr43, i8** %pu, align 8
  %34 = load i8*, i8** @store_sif.v422, align 8
  %35 = load i32, i32* %offset.addr, align 4
  %shr44 = ashr i32 %35, 1
  %idx.ext45 = sext i32 %shr44 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %34, i64 %idx.ext45
  %36 = load i32, i32* %incr.addr, align 4
  %shr47 = ashr i32 %36, 1
  %37 = load i32, i32* %i, align 4
  %mul48 = mul nsw i32 %shr47, %37
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %add.ptr46, i64 %idx.ext49
  store i8* %add.ptr50, i8** %pv, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %for.body
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* @horizontal_size, align 4
  %cmp52 = icmp slt i32 %38, %39
  br i1 %cmp52, label %for.body.54, label %for.end

for.body.54:                                      ; preds = %for.cond.51
  %40 = load i8*, i8** %pu, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %pu, align 8
  %41 = load i8, i8* %40, align 1
  %conv55 = zext i8 %41 to i32
  call void @putbyte(i32 %conv55)
  %42 = load i8*, i8** %py, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr56, i8** %py, align 8
  %43 = load i8, i8* %42, align 1
  %conv57 = zext i8 %43 to i32
  call void @putbyte(i32 %conv57)
  %44 = load i8*, i8** %pv, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr58, i8** %pv, align 8
  %45 = load i8, i8* %44, align 1
  %conv59 = zext i8 %45 to i32
  call void @putbyte(i32 %conv59)
  %46 = load i8*, i8** %py, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr60, i8** %py, align 8
  %47 = load i8, i8* %46, align 1
  %conv61 = zext i8 %47 to i32
  call void @putbyte(i32 %conv61)
  br label %for.inc

for.inc:                                          ; preds = %for.body.54
  %48 = load i32, i32* %j, align 4
  %add = add nsw i32 %48, 2
  store i32 %add, i32* %j, align 4
  br label %for.cond.51

for.end:                                          ; preds = %for.cond.51
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  %50 = load i8*, i8** @optr, align 8
  %cmp64 = icmp ne i8* %50, getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0)
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %for.end.63
  %51 = load i32, i32* @outfile, align 4
  %52 = load i8*, i8** @optr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([4096 x i8]* @obfr to i64)
  %call67 = call i64 @write(i32 %51, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0), i64 %sub.ptr.sub)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %for.end.63
  %53 = load i32, i32* @outfile, align 4
  %call69 = call i32 @close(i32 %53)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @store_ppm_tga(i8* %outname, i8** %src, i32 %offset, i32 %incr, i32 %height, i32 %tgaflag) #0 {
entry:
  %outname.addr = alloca i8*, align 8
  %src.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %incr.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %tgaflag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %y = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %crv = alloca i32, align 4
  %cbu = alloca i32, align 4
  %cgu = alloca i32, align 4
  %cgv = alloca i32, align 4
  %py = alloca i8*, align 8
  %pu = alloca i8*, align 8
  %pv = alloca i8*, align 8
  %header = alloca [256 x i8], align 16
  store i8* %outname, i8** %outname.addr, align 8
  store i8** %src, i8*** %src.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %incr, i32* %incr.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %tgaflag, i32* %tgaflag.addr, align 4
  %0 = load i32, i32* @chroma_format, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** @store_ppm_tga.u444, align 8
  %3 = load i8**, i8*** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 2
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** @store_ppm_tga.v444, align 8
  br label %if.end.37

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** @store_ppm_tga.u444, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end.27, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %6 = load i32, i32* @chroma_format, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.then.2
  %7 = load i32, i32* @Coded_Picture_Width, align 4
  %shr = ashr i32 %7, 1
  %8 = load i32, i32* @Coded_Picture_Height, align 4
  %mul = mul nsw i32 %shr, %8
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @malloc(i64 %conv) #4
  store i8* %call, i8** @store_ppm_tga.u422, align 8
  %tobool5 = icmp ne i8* %call, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  %9 = load i32, i32* @Coded_Picture_Width, align 4
  %shr7 = ashr i32 %9, 1
  %10 = load i32, i32* @Coded_Picture_Height, align 4
  %mul8 = mul nsw i32 %shr7, %10
  %conv9 = sext i32 %mul8 to i64
  %call10 = call noalias i8* @malloc(i64 %conv9) #4
  store i8* %call10, i8** @store_ppm_tga.v422, align 8
  %tobool11 = icmp ne i8* %call10, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.2
  %11 = load i32, i32* @Coded_Picture_Width, align 4
  %12 = load i32, i32* @Coded_Picture_Height, align 4
  %mul15 = mul nsw i32 %11, %12
  %conv16 = sext i32 %mul15 to i64
  %call17 = call noalias i8* @malloc(i64 %conv16) #4
  store i8* %call17, i8** @store_ppm_tga.u444, align 8
  %tobool18 = icmp ne i8* %call17, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.14
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.14
  %13 = load i32, i32* @Coded_Picture_Width, align 4
  %14 = load i32, i32* @Coded_Picture_Height, align 4
  %mul21 = mul nsw i32 %13, %14
  %conv22 = sext i32 %mul21 to i64
  %call23 = call noalias i8* @malloc(i64 %conv22) #4
  store i8* %call23, i8** @store_ppm_tga.v444, align 8
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.20
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.else
  %15 = load i32, i32* @chroma_format, align 4
  %cmp28 = icmp eq i32 %15, 1
  br i1 %cmp28, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %if.end.27
  %16 = load i8**, i8*** %src.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %16, i64 1
  %17 = load i8*, i8** %arrayidx31, align 8
  %18 = load i8*, i8** @store_ppm_tga.u422, align 8
  call void @conv420to422(i8* %17, i8* %18)
  %19 = load i8**, i8*** %src.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %19, i64 2
  %20 = load i8*, i8** %arrayidx32, align 8
  %21 = load i8*, i8** @store_ppm_tga.v422, align 8
  call void @conv420to422(i8* %20, i8* %21)
  %22 = load i8*, i8** @store_ppm_tga.u422, align 8
  %23 = load i8*, i8** @store_ppm_tga.u444, align 8
  call void @conv422to444(i8* %22, i8* %23)
  %24 = load i8*, i8** @store_ppm_tga.v422, align 8
  %25 = load i8*, i8** @store_ppm_tga.v444, align 8
  call void @conv422to444(i8* %24, i8* %25)
  br label %if.end.36

if.else.33:                                       ; preds = %if.end.27
  %26 = load i8**, i8*** %src.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %26, i64 1
  %27 = load i8*, i8** %arrayidx34, align 8
  %28 = load i8*, i8** @store_ppm_tga.u444, align 8
  call void @conv422to444(i8* %27, i8* %28)
  %29 = load i8**, i8*** %src.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %29, i64 2
  %30 = load i8*, i8** %arrayidx35, align 8
  %31 = load i8*, i8** @store_ppm_tga.v444, align 8
  call void @conv422to444(i8* %30, i8* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then
  %32 = load i8*, i8** %outname.addr, align 8
  %33 = load i32, i32* %tgaflag.addr, align 4
  %tobool38 = icmp ne i32 %33, 0
  %cond = select i1 %tobool38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)
  %call39 = call i8* @strcat(i8* %32, i8* %cond) #4
  %34 = load i32, i32* @Quiet_Flag, align 4
  %tobool40 = icmp ne i32 %34, 0
  br i1 %tobool40, label %if.end.44, label %if.then.41

if.then.41:                                       ; preds = %if.end.37
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = load i8*, i8** %outname.addr, align 8
  %call42 = call i8* @mybasename(i8* %36)
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* %call42)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.37
  %37 = load i8*, i8** %outname.addr, align 8
  %call45 = call i32 (i8*, i32, ...) @open(i8* %37, i32 577, i32 438)
  store i32 %call45, i32* @outfile, align 4
  %cmp46 = icmp eq i32 %call45, -1
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.44
  %38 = load i8*, i8** %outname.addr, align 8
  %call49 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %38) #4
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.44
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0), i8** @optr, align 8
  %39 = load i32, i32* %tgaflag.addr, align 4
  %tobool51 = icmp ne i32 %39, 0
  br i1 %tobool51, label %if.then.52, label %if.else.59

if.then.52:                                       ; preds = %if.end.50
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.52
  %40 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %40, 12
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %i, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx55 = getelementptr inbounds [14 x i8], [14 x i8]* @store_ppm_tga.tga24, i32 0, i64 %idxprom
  %42 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %42 to i32
  call void @putbyte(i32 %conv56)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i32, i32* @horizontal_size, align 4
  call void @putword(i32 %44)
  %45 = load i32, i32* %height.addr, align 4
  call void @putword(i32 %45)
  %46 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @store_ppm_tga.tga24, i32 0, i64 12), align 1
  %conv57 = zext i8 %46 to i32
  call void @putbyte(i32 %conv57)
  %47 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @store_ppm_tga.tga24, i32 0, i64 13), align 1
  %conv58 = zext i8 %47 to i32
  call void @putbyte(i32 %conv58)
  br label %if.end.74

if.else.59:                                       ; preds = %if.end.50
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %header, i32 0, i32 0
  %48 = load i32, i32* @horizontal_size, align 4
  %49 = load i32, i32* %height.addr, align 4
  %call60 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %48, i32 %49) #4
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.71, %if.else.59
  %50 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds [256 x i8], [256 x i8]* %header, i32 0, i64 %idxprom62
  %51 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %51 to i32
  %cmp65 = icmp ne i32 %conv64, 0
  br i1 %cmp65, label %for.body.67, label %for.end.73

for.body.67:                                      ; preds = %for.cond.61
  %52 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %52 to i64
  %arrayidx69 = getelementptr inbounds [256 x i8], [256 x i8]* %header, i32 0, i64 %idxprom68
  %53 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %53 to i32
  call void @putbyte(i32 %conv70)
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.67
  %54 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %54, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.61

for.end.73:                                       ; preds = %for.cond.61
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %for.end
  %55 = load i32, i32* @matrix_coefficients, align 4
  %idxprom75 = sext i32 %55 to i64
  %arrayidx76 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @Inverse_Table_6_9, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx76, i32 0, i64 0
  %56 = load i32, i32* %arrayidx77, align 4
  store i32 %56, i32* %crv, align 4
  %57 = load i32, i32* @matrix_coefficients, align 4
  %idxprom78 = sext i32 %57 to i64
  %arrayidx79 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @Inverse_Table_6_9, i32 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx79, i32 0, i64 1
  %58 = load i32, i32* %arrayidx80, align 4
  store i32 %58, i32* %cbu, align 4
  %59 = load i32, i32* @matrix_coefficients, align 4
  %idxprom81 = sext i32 %59 to i64
  %arrayidx82 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @Inverse_Table_6_9, i32 0, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx82, i32 0, i64 2
  %60 = load i32, i32* %arrayidx83, align 4
  store i32 %60, i32* %cgu, align 4
  %61 = load i32, i32* @matrix_coefficients, align 4
  %idxprom84 = sext i32 %61 to i64
  %arrayidx85 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @Inverse_Table_6_9, i32 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx85, i32 0, i64 3
  %62 = load i32, i32* %arrayidx86, align 4
  store i32 %62, i32* %cgv, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.146, %if.end.74
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %height.addr, align 4
  %cmp88 = icmp slt i32 %63, %64
  br i1 %cmp88, label %for.body.90, label %for.end.148

for.body.90:                                      ; preds = %for.cond.87
  %65 = load i8**, i8*** %src.addr, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %65, i64 0
  %66 = load i8*, i8** %arrayidx91, align 8
  %67 = load i32, i32* %offset.addr, align 4
  %idx.ext = sext i32 %67 to i64
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 %idx.ext
  %68 = load i32, i32* %incr.addr, align 4
  %69 = load i32, i32* %i, align 4
  %mul92 = mul nsw i32 %68, %69
  %idx.ext93 = sext i32 %mul92 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext93
  store i8* %add.ptr94, i8** %py, align 8
  %70 = load i8*, i8** @store_ppm_tga.u444, align 8
  %71 = load i32, i32* %offset.addr, align 4
  %idx.ext95 = sext i32 %71 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %70, i64 %idx.ext95
  %72 = load i32, i32* %incr.addr, align 4
  %73 = load i32, i32* %i, align 4
  %mul97 = mul nsw i32 %72, %73
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %add.ptr96, i64 %idx.ext98
  store i8* %add.ptr99, i8** %pu, align 8
  %74 = load i8*, i8** @store_ppm_tga.v444, align 8
  %75 = load i32, i32* %offset.addr, align 4
  %idx.ext100 = sext i32 %75 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %74, i64 %idx.ext100
  %76 = load i32, i32* %incr.addr, align 4
  %77 = load i32, i32* %i, align 4
  %mul102 = mul nsw i32 %76, %77
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %add.ptr101, i64 %idx.ext103
  store i8* %add.ptr104, i8** %pv, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.143, %for.body.90
  %78 = load i32, i32* %j, align 4
  %79 = load i32, i32* @horizontal_size, align 4
  %cmp106 = icmp slt i32 %78, %79
  br i1 %cmp106, label %for.body.108, label %for.end.145

for.body.108:                                     ; preds = %for.cond.105
  %80 = load i8*, i8** %pu, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr, i8** %pu, align 8
  %81 = load i8, i8* %80, align 1
  %conv109 = zext i8 %81 to i32
  %sub = sub nsw i32 %conv109, 128
  store i32 %sub, i32* %u, align 4
  %82 = load i8*, i8** %pv, align 8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr110, i8** %pv, align 8
  %83 = load i8, i8* %82, align 1
  %conv111 = zext i8 %83 to i32
  %sub112 = sub nsw i32 %conv111, 128
  store i32 %sub112, i32* %v, align 4
  %84 = load i8*, i8** %py, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr113, i8** %py, align 8
  %85 = load i8, i8* %84, align 1
  %conv114 = zext i8 %85 to i32
  %sub115 = sub nsw i32 %conv114, 16
  %mul116 = mul nsw i32 76309, %sub115
  store i32 %mul116, i32* %y, align 4
  %86 = load i32, i32* %y, align 4
  %87 = load i32, i32* %crv, align 4
  %88 = load i32, i32* %v, align 4
  %mul117 = mul nsw i32 %87, %88
  %add = add nsw i32 %86, %mul117
  %add118 = add nsw i32 %add, 32768
  %shr119 = ashr i32 %add118, 16
  %idxprom120 = sext i32 %shr119 to i64
  %89 = load i8*, i8** @Clip, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %89, i64 %idxprom120
  %90 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %90 to i32
  store i32 %conv122, i32* %r, align 4
  %91 = load i32, i32* %y, align 4
  %92 = load i32, i32* %cgu, align 4
  %93 = load i32, i32* %u, align 4
  %mul123 = mul nsw i32 %92, %93
  %sub124 = sub nsw i32 %91, %mul123
  %94 = load i32, i32* %cgv, align 4
  %95 = load i32, i32* %v, align 4
  %mul125 = mul nsw i32 %94, %95
  %sub126 = sub nsw i32 %sub124, %mul125
  %add127 = add nsw i32 %sub126, 32768
  %shr128 = ashr i32 %add127, 16
  %idxprom129 = sext i32 %shr128 to i64
  %96 = load i8*, i8** @Clip, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %96, i64 %idxprom129
  %97 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %97 to i32
  store i32 %conv131, i32* %g, align 4
  %98 = load i32, i32* %y, align 4
  %99 = load i32, i32* %cbu, align 4
  %100 = load i32, i32* %u, align 4
  %mul132 = mul nsw i32 %99, %100
  %add133 = add nsw i32 %98, %mul132
  %add134 = add nsw i32 %add133, 32786
  %shr135 = ashr i32 %add134, 16
  %idxprom136 = sext i32 %shr135 to i64
  %101 = load i8*, i8** @Clip, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %101, i64 %idxprom136
  %102 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %102 to i32
  store i32 %conv138, i32* %b, align 4
  %103 = load i32, i32* %tgaflag.addr, align 4
  %tobool139 = icmp ne i32 %103, 0
  br i1 %tobool139, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %for.body.108
  %104 = load i32, i32* %b, align 4
  call void @putbyte(i32 %104)
  %105 = load i32, i32* %g, align 4
  call void @putbyte(i32 %105)
  %106 = load i32, i32* %r, align 4
  call void @putbyte(i32 %106)
  br label %if.end.142

if.else.141:                                      ; preds = %for.body.108
  %107 = load i32, i32* %r, align 4
  call void @putbyte(i32 %107)
  %108 = load i32, i32* %g, align 4
  call void @putbyte(i32 %108)
  %109 = load i32, i32* %b, align 4
  call void @putbyte(i32 %109)
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.141, %if.then.140
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %110 = load i32, i32* %j, align 4
  %inc144 = add nsw i32 %110, 1
  store i32 %inc144, i32* %j, align 4
  br label %for.cond.105

for.end.145:                                      ; preds = %for.cond.105
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.end.145
  %111 = load i32, i32* %i, align 4
  %inc147 = add nsw i32 %111, 1
  store i32 %inc147, i32* %i, align 4
  br label %for.cond.87

for.end.148:                                      ; preds = %for.cond.87
  %112 = load i8*, i8** @optr, align 8
  %cmp149 = icmp ne i8* %112, getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0)
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %for.end.148
  %113 = load i32, i32* @outfile, align 4
  %114 = load i8*, i8** @optr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %114 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([4096 x i8]* @obfr to i64)
  %call152 = call i64 @write(i32 %113, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0), i64 %sub.ptr.sub)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %for.end.148
  %115 = load i32, i32* @outfile, align 4
  %call154 = call i32 @close(i32 %115)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @store_yuv1(i8* %name, i8* %src, i32 %offset, i32 %incr, i32 %width, i32 %height) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %incr.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %incr, i32* %incr.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i8* @mybasename(i8* %2)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %name.addr, align 8
  %call2 = call i32 (i8*, i32, ...) @open(i8* %3, i32 577, i32 438)
  store i32 %call2, i32* @outfile, align 4
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %4) #4
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0), i8** @optr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %if.end.5
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %height.addr, align 4
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i32, i32* %offset.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %9 = load i32, i32* %incr.addr, align 4
  %10 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, %10
  %idx.ext7 = sext i32 %mul to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext7
  store i8* %add.ptr8, i8** %p, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  call void @putbyte(i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %17 = load i8*, i8** @optr, align 8
  %cmp15 = icmp ne i8* %17, getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0)
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.end.14
  %18 = load i32, i32* @outfile, align 4
  %19 = load i8*, i8** @optr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([4096 x i8]* @obfr to i64)
  %call18 = call i64 @write(i32 %18, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0), i64 %sub.ptr.sub)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %for.end.14
  %20 = load i32, i32* @outfile, align 4
  %call20 = call i32 @close(i32 %20)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #5
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

declare i32 @open(i8*, i32, ...) #2

declare void @Error(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @putbyte(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load i8*, i8** @optr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** @optr, align 8
  store i8 %conv, i8* %1, align 1
  %2 = load i8*, i8** @optr, align 8
  %cmp = icmp eq i8* %2, getelementptr inbounds (i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0), i64 4096)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @outfile, align 4
  %call = call i64 @write(i32 %3, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0), i64 4096)
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i32 0, i32 0), i8** @optr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @write(i32, i8*, i64) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @conv420to422(i8* %src, i8* %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j2 = alloca i32, align 4
  %jm6 = alloca i32, align 4
  %jm5 = alloca i32, align 4
  %jm4 = alloca i32, align 4
  %jm3 = alloca i32, align 4
  %jm2 = alloca i32, align 4
  %jm1 = alloca i32, align 4
  %jp1 = alloca i32, align 4
  %jp2 = alloca i32, align 4
  %jp3 = alloca i32, align 4
  %jp4 = alloca i32, align 4
  %jp5 = alloca i32, align 4
  %jp6 = alloca i32, align 4
  %jp7 = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  %0 = load i32, i32* @Coded_Picture_Width, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %w, align 4
  %1 = load i32, i32* @Coded_Picture_Height, align 4
  %shr1 = ashr i32 %1, 1
  store i32 %shr1, i32* %h, align 4
  %2 = load i32, i32* @progressive_frame, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.123, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %w, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.125

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %h, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %7 = load i32, i32* %j, align 4
  %shl = shl i32 %7, 1
  store i32 %shl, i32* %j2, align 4
  %8 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %8, 3
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.4
  br label %cond.end

cond.false:                                       ; preds = %for.body.4
  %9 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %9, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %jm3, align 4
  %10 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %10, 2
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %11 = load i32, i32* %j, align 4
  %sub9 = sub nsw i32 %11, 2
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i32 [ 0, %cond.true.7 ], [ %sub9, %cond.false.8 ]
  store i32 %cond11, i32* %jm2, align 4
  %12 = load i32, i32* %j, align 4
  %cmp12 = icmp slt i32 %12, 1
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.10
  br label %cond.end.16

cond.false.14:                                    ; preds = %cond.end.10
  %13 = load i32, i32* %j, align 4
  %sub15 = sub nsw i32 %13, 1
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.13
  %cond17 = phi i32 [ 0, %cond.true.13 ], [ %sub15, %cond.false.14 ]
  store i32 %cond17, i32* %jm1, align 4
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %h, align 4
  %sub18 = sub nsw i32 %15, 1
  %cmp19 = icmp slt i32 %14, %sub18
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.16
  %16 = load i32, i32* %j, align 4
  %add = add nsw i32 %16, 1
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.end.16
  %17 = load i32, i32* %h, align 4
  %sub22 = sub nsw i32 %17, 1
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.20
  %cond24 = phi i32 [ %add, %cond.true.20 ], [ %sub22, %cond.false.21 ]
  store i32 %cond24, i32* %jp1, align 4
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %h, align 4
  %sub25 = sub nsw i32 %19, 2
  %cmp26 = icmp slt i32 %18, %sub25
  br i1 %cmp26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %cond.end.23
  %20 = load i32, i32* %j, align 4
  %add28 = add nsw i32 %20, 2
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.end.23
  %21 = load i32, i32* %h, align 4
  %sub30 = sub nsw i32 %21, 1
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.27
  %cond32 = phi i32 [ %add28, %cond.true.27 ], [ %sub30, %cond.false.29 ]
  store i32 %cond32, i32* %jp2, align 4
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %h, align 4
  %sub33 = sub nsw i32 %23, 3
  %cmp34 = icmp slt i32 %22, %sub33
  br i1 %cmp34, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %cond.end.31
  %24 = load i32, i32* %j, align 4
  %add36 = add nsw i32 %24, 3
  br label %cond.end.39

cond.false.37:                                    ; preds = %cond.end.31
  %25 = load i32, i32* %h, align 4
  %sub38 = sub nsw i32 %25, 1
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.35
  %cond40 = phi i32 [ %add36, %cond.true.35 ], [ %sub38, %cond.false.37 ]
  store i32 %cond40, i32* %jp3, align 4
  %26 = load i32, i32* %w, align 4
  %27 = load i32, i32* %jm3, align 4
  %mul = mul nsw i32 %26, %27
  %idxprom = sext i32 %mul to i64
  %28 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %29 to i32
  %mul41 = mul nsw i32 3, %conv
  %30 = load i32, i32* %w, align 4
  %31 = load i32, i32* %jm2, align 4
  %mul42 = mul nsw i32 %30, %31
  %idxprom43 = sext i32 %mul42 to i64
  %32 = load i8*, i8** %src.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %32, i64 %idxprom43
  %33 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %33 to i32
  %mul46 = mul nsw i32 16, %conv45
  %sub47 = sub nsw i32 %mul41, %mul46
  %34 = load i32, i32* %w, align 4
  %35 = load i32, i32* %jm1, align 4
  %mul48 = mul nsw i32 %34, %35
  %idxprom49 = sext i32 %mul48 to i64
  %36 = load i8*, i8** %src.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %36, i64 %idxprom49
  %37 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %37 to i32
  %mul52 = mul nsw i32 67, %conv51
  %add53 = add nsw i32 %sub47, %mul52
  %38 = load i32, i32* %w, align 4
  %39 = load i32, i32* %j, align 4
  %mul54 = mul nsw i32 %38, %39
  %idxprom55 = sext i32 %mul54 to i64
  %40 = load i8*, i8** %src.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %40, i64 %idxprom55
  %41 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %41 to i32
  %mul58 = mul nsw i32 227, %conv57
  %add59 = add nsw i32 %add53, %mul58
  %42 = load i32, i32* %w, align 4
  %43 = load i32, i32* %jp1, align 4
  %mul60 = mul nsw i32 %42, %43
  %idxprom61 = sext i32 %mul60 to i64
  %44 = load i8*, i8** %src.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %44, i64 %idxprom61
  %45 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %45 to i32
  %mul64 = mul nsw i32 32, %conv63
  %sub65 = sub nsw i32 %add59, %mul64
  %46 = load i32, i32* %w, align 4
  %47 = load i32, i32* %jp2, align 4
  %mul66 = mul nsw i32 %46, %47
  %idxprom67 = sext i32 %mul66 to i64
  %48 = load i8*, i8** %src.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %48, i64 %idxprom67
  %49 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %49 to i32
  %mul70 = mul nsw i32 7, %conv69
  %add71 = add nsw i32 %sub65, %mul70
  %add72 = add nsw i32 %add71, 128
  %shr73 = ashr i32 %add72, 8
  %idxprom74 = sext i32 %shr73 to i64
  %50 = load i8*, i8** @Clip, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %50, i64 %idxprom74
  %51 = load i8, i8* %arrayidx75, align 1
  %52 = load i32, i32* %w, align 4
  %53 = load i32, i32* %j2, align 4
  %mul76 = mul nsw i32 %52, %53
  %idxprom77 = sext i32 %mul76 to i64
  %54 = load i8*, i8** %dst.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %54, i64 %idxprom77
  store i8 %51, i8* %arrayidx78, align 1
  %55 = load i32, i32* %w, align 4
  %56 = load i32, i32* %jp3, align 4
  %mul79 = mul nsw i32 %55, %56
  %idxprom80 = sext i32 %mul79 to i64
  %57 = load i8*, i8** %src.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %57, i64 %idxprom80
  %58 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %58 to i32
  %mul83 = mul nsw i32 3, %conv82
  %59 = load i32, i32* %w, align 4
  %60 = load i32, i32* %jp2, align 4
  %mul84 = mul nsw i32 %59, %60
  %idxprom85 = sext i32 %mul84 to i64
  %61 = load i8*, i8** %src.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %61, i64 %idxprom85
  %62 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %62 to i32
  %mul88 = mul nsw i32 16, %conv87
  %sub89 = sub nsw i32 %mul83, %mul88
  %63 = load i32, i32* %w, align 4
  %64 = load i32, i32* %jp1, align 4
  %mul90 = mul nsw i32 %63, %64
  %idxprom91 = sext i32 %mul90 to i64
  %65 = load i8*, i8** %src.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %65, i64 %idxprom91
  %66 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %66 to i32
  %mul94 = mul nsw i32 67, %conv93
  %add95 = add nsw i32 %sub89, %mul94
  %67 = load i32, i32* %w, align 4
  %68 = load i32, i32* %j, align 4
  %mul96 = mul nsw i32 %67, %68
  %idxprom97 = sext i32 %mul96 to i64
  %69 = load i8*, i8** %src.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %69, i64 %idxprom97
  %70 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %70 to i32
  %mul100 = mul nsw i32 227, %conv99
  %add101 = add nsw i32 %add95, %mul100
  %71 = load i32, i32* %w, align 4
  %72 = load i32, i32* %jm1, align 4
  %mul102 = mul nsw i32 %71, %72
  %idxprom103 = sext i32 %mul102 to i64
  %73 = load i8*, i8** %src.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %73, i64 %idxprom103
  %74 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %74 to i32
  %mul106 = mul nsw i32 32, %conv105
  %sub107 = sub nsw i32 %add101, %mul106
  %75 = load i32, i32* %w, align 4
  %76 = load i32, i32* %jm2, align 4
  %mul108 = mul nsw i32 %75, %76
  %idxprom109 = sext i32 %mul108 to i64
  %77 = load i8*, i8** %src.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %77, i64 %idxprom109
  %78 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %78 to i32
  %mul112 = mul nsw i32 7, %conv111
  %add113 = add nsw i32 %sub107, %mul112
  %add114 = add nsw i32 %add113, 128
  %shr115 = ashr i32 %add114, 8
  %idxprom116 = sext i32 %shr115 to i64
  %79 = load i8*, i8** @Clip, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %79, i64 %idxprom116
  %80 = load i8, i8* %arrayidx117, align 1
  %81 = load i32, i32* %w, align 4
  %82 = load i32, i32* %j2, align 4
  %add118 = add nsw i32 %82, 1
  %mul119 = mul nsw i32 %81, %add118
  %idxprom120 = sext i32 %mul119 to i64
  %83 = load i8*, i8** %dst.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %83, i64 %idxprom120
  store i8 %80, i8* %arrayidx121, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.39
  %84 = load i32, i32* %j, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %85 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %86 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr122, i8** %dst.addr, align 8
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.end
  %87 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %87, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond

for.end.125:                                      ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.416, %if.else
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %w, align 4
  %cmp127 = icmp slt i32 %88, %89
  br i1 %cmp127, label %for.body.129, label %for.end.418

for.body.129:                                     ; preds = %for.cond.126
  store i32 0, i32* %j, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.411, %for.body.129
  %90 = load i32, i32* %j, align 4
  %91 = load i32, i32* %h, align 4
  %cmp131 = icmp slt i32 %90, %91
  br i1 %cmp131, label %for.body.133, label %for.end.413

for.body.133:                                     ; preds = %for.cond.130
  %92 = load i32, i32* %j, align 4
  %shl134 = shl i32 %92, 1
  store i32 %shl134, i32* %j2, align 4
  %93 = load i32, i32* %j, align 4
  %cmp135 = icmp slt i32 %93, 6
  br i1 %cmp135, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %for.body.133
  br label %cond.end.140

cond.false.138:                                   ; preds = %for.body.133
  %94 = load i32, i32* %j, align 4
  %sub139 = sub nsw i32 %94, 6
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.138, %cond.true.137
  %cond141 = phi i32 [ 0, %cond.true.137 ], [ %sub139, %cond.false.138 ]
  store i32 %cond141, i32* %jm6, align 4
  %95 = load i32, i32* %j, align 4
  %cmp142 = icmp slt i32 %95, 4
  br i1 %cmp142, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %cond.end.140
  br label %cond.end.147

cond.false.145:                                   ; preds = %cond.end.140
  %96 = load i32, i32* %j, align 4
  %sub146 = sub nsw i32 %96, 4
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.145, %cond.true.144
  %cond148 = phi i32 [ 0, %cond.true.144 ], [ %sub146, %cond.false.145 ]
  store i32 %cond148, i32* %jm4, align 4
  %97 = load i32, i32* %j, align 4
  %cmp149 = icmp slt i32 %97, 2
  br i1 %cmp149, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %cond.end.147
  br label %cond.end.154

cond.false.152:                                   ; preds = %cond.end.147
  %98 = load i32, i32* %j, align 4
  %sub153 = sub nsw i32 %98, 2
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.152, %cond.true.151
  %cond155 = phi i32 [ 0, %cond.true.151 ], [ %sub153, %cond.false.152 ]
  store i32 %cond155, i32* %jm2, align 4
  %99 = load i32, i32* %j, align 4
  %100 = load i32, i32* %h, align 4
  %sub156 = sub nsw i32 %100, 2
  %cmp157 = icmp slt i32 %99, %sub156
  br i1 %cmp157, label %cond.true.159, label %cond.false.161

cond.true.159:                                    ; preds = %cond.end.154
  %101 = load i32, i32* %j, align 4
  %add160 = add nsw i32 %101, 2
  br label %cond.end.163

cond.false.161:                                   ; preds = %cond.end.154
  %102 = load i32, i32* %h, align 4
  %sub162 = sub nsw i32 %102, 2
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.161, %cond.true.159
  %cond164 = phi i32 [ %add160, %cond.true.159 ], [ %sub162, %cond.false.161 ]
  store i32 %cond164, i32* %jp2, align 4
  %103 = load i32, i32* %j, align 4
  %104 = load i32, i32* %h, align 4
  %sub165 = sub nsw i32 %104, 4
  %cmp166 = icmp slt i32 %103, %sub165
  br i1 %cmp166, label %cond.true.168, label %cond.false.170

cond.true.168:                                    ; preds = %cond.end.163
  %105 = load i32, i32* %j, align 4
  %add169 = add nsw i32 %105, 4
  br label %cond.end.172

cond.false.170:                                   ; preds = %cond.end.163
  %106 = load i32, i32* %h, align 4
  %sub171 = sub nsw i32 %106, 2
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.170, %cond.true.168
  %cond173 = phi i32 [ %add169, %cond.true.168 ], [ %sub171, %cond.false.170 ]
  store i32 %cond173, i32* %jp4, align 4
  %107 = load i32, i32* %j, align 4
  %108 = load i32, i32* %h, align 4
  %sub174 = sub nsw i32 %108, 6
  %cmp175 = icmp slt i32 %107, %sub174
  br i1 %cmp175, label %cond.true.177, label %cond.false.179

cond.true.177:                                    ; preds = %cond.end.172
  %109 = load i32, i32* %j, align 4
  %add178 = add nsw i32 %109, 6
  br label %cond.end.181

cond.false.179:                                   ; preds = %cond.end.172
  %110 = load i32, i32* %h, align 4
  %sub180 = sub nsw i32 %110, 2
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.179, %cond.true.177
  %cond182 = phi i32 [ %add178, %cond.true.177 ], [ %sub180, %cond.false.179 ]
  store i32 %cond182, i32* %jp6, align 4
  %111 = load i32, i32* %w, align 4
  %112 = load i32, i32* %jm6, align 4
  %mul183 = mul nsw i32 %111, %112
  %idxprom184 = sext i32 %mul183 to i64
  %113 = load i8*, i8** %src.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %113, i64 %idxprom184
  %114 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %114 to i32
  %mul187 = mul nsw i32 1, %conv186
  %115 = load i32, i32* %w, align 4
  %116 = load i32, i32* %jm4, align 4
  %mul188 = mul nsw i32 %115, %116
  %idxprom189 = sext i32 %mul188 to i64
  %117 = load i8*, i8** %src.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %117, i64 %idxprom189
  %118 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %118 to i32
  %mul192 = mul nsw i32 7, %conv191
  %sub193 = sub nsw i32 %mul187, %mul192
  %119 = load i32, i32* %w, align 4
  %120 = load i32, i32* %jm2, align 4
  %mul194 = mul nsw i32 %119, %120
  %idxprom195 = sext i32 %mul194 to i64
  %121 = load i8*, i8** %src.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %121, i64 %idxprom195
  %122 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %122 to i32
  %mul198 = mul nsw i32 30, %conv197
  %add199 = add nsw i32 %sub193, %mul198
  %123 = load i32, i32* %w, align 4
  %124 = load i32, i32* %j, align 4
  %mul200 = mul nsw i32 %123, %124
  %idxprom201 = sext i32 %mul200 to i64
  %125 = load i8*, i8** %src.addr, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %125, i64 %idxprom201
  %126 = load i8, i8* %arrayidx202, align 1
  %conv203 = zext i8 %126 to i32
  %mul204 = mul nsw i32 248, %conv203
  %add205 = add nsw i32 %add199, %mul204
  %127 = load i32, i32* %w, align 4
  %128 = load i32, i32* %jp2, align 4
  %mul206 = mul nsw i32 %127, %128
  %idxprom207 = sext i32 %mul206 to i64
  %129 = load i8*, i8** %src.addr, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %129, i64 %idxprom207
  %130 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %130 to i32
  %mul210 = mul nsw i32 21, %conv209
  %sub211 = sub nsw i32 %add205, %mul210
  %131 = load i32, i32* %w, align 4
  %132 = load i32, i32* %jp4, align 4
  %mul212 = mul nsw i32 %131, %132
  %idxprom213 = sext i32 %mul212 to i64
  %133 = load i8*, i8** %src.addr, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %133, i64 %idxprom213
  %134 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %134 to i32
  %mul216 = mul nsw i32 5, %conv215
  %add217 = add nsw i32 %sub211, %mul216
  %add218 = add nsw i32 %add217, 128
  %shr219 = ashr i32 %add218, 8
  %idxprom220 = sext i32 %shr219 to i64
  %135 = load i8*, i8** @Clip, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %135, i64 %idxprom220
  %136 = load i8, i8* %arrayidx221, align 1
  %137 = load i32, i32* %w, align 4
  %138 = load i32, i32* %j2, align 4
  %mul222 = mul nsw i32 %137, %138
  %idxprom223 = sext i32 %mul222 to i64
  %139 = load i8*, i8** %dst.addr, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %139, i64 %idxprom223
  store i8 %136, i8* %arrayidx224, align 1
  %140 = load i32, i32* %w, align 4
  %141 = load i32, i32* %jm4, align 4
  %mul225 = mul nsw i32 %140, %141
  %idxprom226 = sext i32 %mul225 to i64
  %142 = load i8*, i8** %src.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %142, i64 %idxprom226
  %143 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %143 to i32
  %mul229 = mul nsw i32 7, %conv228
  %144 = load i32, i32* %w, align 4
  %145 = load i32, i32* %jm2, align 4
  %mul230 = mul nsw i32 %144, %145
  %idxprom231 = sext i32 %mul230 to i64
  %146 = load i8*, i8** %src.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %146, i64 %idxprom231
  %147 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %147 to i32
  %mul234 = mul nsw i32 35, %conv233
  %sub235 = sub nsw i32 %mul229, %mul234
  %148 = load i32, i32* %w, align 4
  %149 = load i32, i32* %j, align 4
  %mul236 = mul nsw i32 %148, %149
  %idxprom237 = sext i32 %mul236 to i64
  %150 = load i8*, i8** %src.addr, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %150, i64 %idxprom237
  %151 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %151 to i32
  %mul240 = mul nsw i32 194, %conv239
  %add241 = add nsw i32 %sub235, %mul240
  %152 = load i32, i32* %w, align 4
  %153 = load i32, i32* %jp2, align 4
  %mul242 = mul nsw i32 %152, %153
  %idxprom243 = sext i32 %mul242 to i64
  %154 = load i8*, i8** %src.addr, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %154, i64 %idxprom243
  %155 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %155 to i32
  %mul246 = mul nsw i32 110, %conv245
  %add247 = add nsw i32 %add241, %mul246
  %156 = load i32, i32* %w, align 4
  %157 = load i32, i32* %jp4, align 4
  %mul248 = mul nsw i32 %156, %157
  %idxprom249 = sext i32 %mul248 to i64
  %158 = load i8*, i8** %src.addr, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %158, i64 %idxprom249
  %159 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %159 to i32
  %mul252 = mul nsw i32 24, %conv251
  %sub253 = sub nsw i32 %add247, %mul252
  %160 = load i32, i32* %w, align 4
  %161 = load i32, i32* %jp6, align 4
  %mul254 = mul nsw i32 %160, %161
  %idxprom255 = sext i32 %mul254 to i64
  %162 = load i8*, i8** %src.addr, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %162, i64 %idxprom255
  %163 = load i8, i8* %arrayidx256, align 1
  %conv257 = zext i8 %163 to i32
  %mul258 = mul nsw i32 4, %conv257
  %add259 = add nsw i32 %sub253, %mul258
  %add260 = add nsw i32 %add259, 128
  %shr261 = ashr i32 %add260, 8
  %idxprom262 = sext i32 %shr261 to i64
  %164 = load i8*, i8** @Clip, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %164, i64 %idxprom262
  %165 = load i8, i8* %arrayidx263, align 1
  %166 = load i32, i32* %w, align 4
  %167 = load i32, i32* %j2, align 4
  %add264 = add nsw i32 %167, 2
  %mul265 = mul nsw i32 %166, %add264
  %idxprom266 = sext i32 %mul265 to i64
  %168 = load i8*, i8** %dst.addr, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %168, i64 %idxprom266
  store i8 %165, i8* %arrayidx267, align 1
  %169 = load i32, i32* %j, align 4
  %cmp268 = icmp slt i32 %169, 5
  br i1 %cmp268, label %cond.true.270, label %cond.false.271

cond.true.270:                                    ; preds = %cond.end.181
  br label %cond.end.273

cond.false.271:                                   ; preds = %cond.end.181
  %170 = load i32, i32* %j, align 4
  %sub272 = sub nsw i32 %170, 5
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.271, %cond.true.270
  %cond274 = phi i32 [ 1, %cond.true.270 ], [ %sub272, %cond.false.271 ]
  store i32 %cond274, i32* %jm5, align 4
  %171 = load i32, i32* %j, align 4
  %cmp275 = icmp slt i32 %171, 3
  br i1 %cmp275, label %cond.true.277, label %cond.false.278

cond.true.277:                                    ; preds = %cond.end.273
  br label %cond.end.280

cond.false.278:                                   ; preds = %cond.end.273
  %172 = load i32, i32* %j, align 4
  %sub279 = sub nsw i32 %172, 3
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.278, %cond.true.277
  %cond281 = phi i32 [ 1, %cond.true.277 ], [ %sub279, %cond.false.278 ]
  store i32 %cond281, i32* %jm3, align 4
  %173 = load i32, i32* %j, align 4
  %cmp282 = icmp slt i32 %173, 1
  br i1 %cmp282, label %cond.true.284, label %cond.false.285

cond.true.284:                                    ; preds = %cond.end.280
  br label %cond.end.287

cond.false.285:                                   ; preds = %cond.end.280
  %174 = load i32, i32* %j, align 4
  %sub286 = sub nsw i32 %174, 1
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.false.285, %cond.true.284
  %cond288 = phi i32 [ 1, %cond.true.284 ], [ %sub286, %cond.false.285 ]
  store i32 %cond288, i32* %jm1, align 4
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* %h, align 4
  %sub289 = sub nsw i32 %176, 1
  %cmp290 = icmp slt i32 %175, %sub289
  br i1 %cmp290, label %cond.true.292, label %cond.false.294

cond.true.292:                                    ; preds = %cond.end.287
  %177 = load i32, i32* %j, align 4
  %add293 = add nsw i32 %177, 1
  br label %cond.end.296

cond.false.294:                                   ; preds = %cond.end.287
  %178 = load i32, i32* %h, align 4
  %sub295 = sub nsw i32 %178, 1
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.false.294, %cond.true.292
  %cond297 = phi i32 [ %add293, %cond.true.292 ], [ %sub295, %cond.false.294 ]
  store i32 %cond297, i32* %jp1, align 4
  %179 = load i32, i32* %j, align 4
  %180 = load i32, i32* %h, align 4
  %sub298 = sub nsw i32 %180, 3
  %cmp299 = icmp slt i32 %179, %sub298
  br i1 %cmp299, label %cond.true.301, label %cond.false.303

cond.true.301:                                    ; preds = %cond.end.296
  %181 = load i32, i32* %j, align 4
  %add302 = add nsw i32 %181, 3
  br label %cond.end.305

cond.false.303:                                   ; preds = %cond.end.296
  %182 = load i32, i32* %h, align 4
  %sub304 = sub nsw i32 %182, 1
  br label %cond.end.305

cond.end.305:                                     ; preds = %cond.false.303, %cond.true.301
  %cond306 = phi i32 [ %add302, %cond.true.301 ], [ %sub304, %cond.false.303 ]
  store i32 %cond306, i32* %jp3, align 4
  %183 = load i32, i32* %j, align 4
  %184 = load i32, i32* %h, align 4
  %sub307 = sub nsw i32 %184, 5
  %cmp308 = icmp slt i32 %183, %sub307
  br i1 %cmp308, label %cond.true.310, label %cond.false.312

cond.true.310:                                    ; preds = %cond.end.305
  %185 = load i32, i32* %j, align 4
  %add311 = add nsw i32 %185, 5
  br label %cond.end.314

cond.false.312:                                   ; preds = %cond.end.305
  %186 = load i32, i32* %h, align 4
  %sub313 = sub nsw i32 %186, 1
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.312, %cond.true.310
  %cond315 = phi i32 [ %add311, %cond.true.310 ], [ %sub313, %cond.false.312 ]
  store i32 %cond315, i32* %jp5, align 4
  %187 = load i32, i32* %j, align 4
  %188 = load i32, i32* %h, align 4
  %sub316 = sub nsw i32 %188, 7
  %cmp317 = icmp slt i32 %187, %sub316
  br i1 %cmp317, label %cond.true.319, label %cond.false.321

cond.true.319:                                    ; preds = %cond.end.314
  %189 = load i32, i32* %j, align 4
  %add320 = add nsw i32 %189, 7
  br label %cond.end.323

cond.false.321:                                   ; preds = %cond.end.314
  %190 = load i32, i32* %h, align 4
  %sub322 = sub nsw i32 %190, 1
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.321, %cond.true.319
  %cond324 = phi i32 [ %add320, %cond.true.319 ], [ %sub322, %cond.false.321 ]
  store i32 %cond324, i32* %jp7, align 4
  %191 = load i32, i32* %w, align 4
  %192 = load i32, i32* %jp5, align 4
  %mul325 = mul nsw i32 %191, %192
  %idxprom326 = sext i32 %mul325 to i64
  %193 = load i8*, i8** %src.addr, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %193, i64 %idxprom326
  %194 = load i8, i8* %arrayidx327, align 1
  %conv328 = zext i8 %194 to i32
  %mul329 = mul nsw i32 7, %conv328
  %195 = load i32, i32* %w, align 4
  %196 = load i32, i32* %jp3, align 4
  %mul330 = mul nsw i32 %195, %196
  %idxprom331 = sext i32 %mul330 to i64
  %197 = load i8*, i8** %src.addr, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %197, i64 %idxprom331
  %198 = load i8, i8* %arrayidx332, align 1
  %conv333 = zext i8 %198 to i32
  %mul334 = mul nsw i32 35, %conv333
  %sub335 = sub nsw i32 %mul329, %mul334
  %199 = load i32, i32* %w, align 4
  %200 = load i32, i32* %jp1, align 4
  %mul336 = mul nsw i32 %199, %200
  %idxprom337 = sext i32 %mul336 to i64
  %201 = load i8*, i8** %src.addr, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %201, i64 %idxprom337
  %202 = load i8, i8* %arrayidx338, align 1
  %conv339 = zext i8 %202 to i32
  %mul340 = mul nsw i32 194, %conv339
  %add341 = add nsw i32 %sub335, %mul340
  %203 = load i32, i32* %w, align 4
  %204 = load i32, i32* %jm1, align 4
  %mul342 = mul nsw i32 %203, %204
  %idxprom343 = sext i32 %mul342 to i64
  %205 = load i8*, i8** %src.addr, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %205, i64 %idxprom343
  %206 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %206 to i32
  %mul346 = mul nsw i32 110, %conv345
  %add347 = add nsw i32 %add341, %mul346
  %207 = load i32, i32* %w, align 4
  %208 = load i32, i32* %jm3, align 4
  %mul348 = mul nsw i32 %207, %208
  %idxprom349 = sext i32 %mul348 to i64
  %209 = load i8*, i8** %src.addr, align 8
  %arrayidx350 = getelementptr inbounds i8, i8* %209, i64 %idxprom349
  %210 = load i8, i8* %arrayidx350, align 1
  %conv351 = zext i8 %210 to i32
  %mul352 = mul nsw i32 24, %conv351
  %sub353 = sub nsw i32 %add347, %mul352
  %211 = load i32, i32* %w, align 4
  %212 = load i32, i32* %jm5, align 4
  %mul354 = mul nsw i32 %211, %212
  %idxprom355 = sext i32 %mul354 to i64
  %213 = load i8*, i8** %src.addr, align 8
  %arrayidx356 = getelementptr inbounds i8, i8* %213, i64 %idxprom355
  %214 = load i8, i8* %arrayidx356, align 1
  %conv357 = zext i8 %214 to i32
  %mul358 = mul nsw i32 4, %conv357
  %add359 = add nsw i32 %sub353, %mul358
  %add360 = add nsw i32 %add359, 128
  %shr361 = ashr i32 %add360, 8
  %idxprom362 = sext i32 %shr361 to i64
  %215 = load i8*, i8** @Clip, align 8
  %arrayidx363 = getelementptr inbounds i8, i8* %215, i64 %idxprom362
  %216 = load i8, i8* %arrayidx363, align 1
  %217 = load i32, i32* %w, align 4
  %218 = load i32, i32* %j2, align 4
  %add364 = add nsw i32 %218, 1
  %mul365 = mul nsw i32 %217, %add364
  %idxprom366 = sext i32 %mul365 to i64
  %219 = load i8*, i8** %dst.addr, align 8
  %arrayidx367 = getelementptr inbounds i8, i8* %219, i64 %idxprom366
  store i8 %216, i8* %arrayidx367, align 1
  %220 = load i32, i32* %w, align 4
  %221 = load i32, i32* %jp7, align 4
  %mul368 = mul nsw i32 %220, %221
  %idxprom369 = sext i32 %mul368 to i64
  %222 = load i8*, i8** %src.addr, align 8
  %arrayidx370 = getelementptr inbounds i8, i8* %222, i64 %idxprom369
  %223 = load i8, i8* %arrayidx370, align 1
  %conv371 = zext i8 %223 to i32
  %mul372 = mul nsw i32 1, %conv371
  %224 = load i32, i32* %w, align 4
  %225 = load i32, i32* %jp5, align 4
  %mul373 = mul nsw i32 %224, %225
  %idxprom374 = sext i32 %mul373 to i64
  %226 = load i8*, i8** %src.addr, align 8
  %arrayidx375 = getelementptr inbounds i8, i8* %226, i64 %idxprom374
  %227 = load i8, i8* %arrayidx375, align 1
  %conv376 = zext i8 %227 to i32
  %mul377 = mul nsw i32 7, %conv376
  %sub378 = sub nsw i32 %mul372, %mul377
  %228 = load i32, i32* %w, align 4
  %229 = load i32, i32* %jp3, align 4
  %mul379 = mul nsw i32 %228, %229
  %idxprom380 = sext i32 %mul379 to i64
  %230 = load i8*, i8** %src.addr, align 8
  %arrayidx381 = getelementptr inbounds i8, i8* %230, i64 %idxprom380
  %231 = load i8, i8* %arrayidx381, align 1
  %conv382 = zext i8 %231 to i32
  %mul383 = mul nsw i32 30, %conv382
  %add384 = add nsw i32 %sub378, %mul383
  %232 = load i32, i32* %w, align 4
  %233 = load i32, i32* %jp1, align 4
  %mul385 = mul nsw i32 %232, %233
  %idxprom386 = sext i32 %mul385 to i64
  %234 = load i8*, i8** %src.addr, align 8
  %arrayidx387 = getelementptr inbounds i8, i8* %234, i64 %idxprom386
  %235 = load i8, i8* %arrayidx387, align 1
  %conv388 = zext i8 %235 to i32
  %mul389 = mul nsw i32 248, %conv388
  %add390 = add nsw i32 %add384, %mul389
  %236 = load i32, i32* %w, align 4
  %237 = load i32, i32* %jm1, align 4
  %mul391 = mul nsw i32 %236, %237
  %idxprom392 = sext i32 %mul391 to i64
  %238 = load i8*, i8** %src.addr, align 8
  %arrayidx393 = getelementptr inbounds i8, i8* %238, i64 %idxprom392
  %239 = load i8, i8* %arrayidx393, align 1
  %conv394 = zext i8 %239 to i32
  %mul395 = mul nsw i32 21, %conv394
  %sub396 = sub nsw i32 %add390, %mul395
  %240 = load i32, i32* %w, align 4
  %241 = load i32, i32* %jm3, align 4
  %mul397 = mul nsw i32 %240, %241
  %idxprom398 = sext i32 %mul397 to i64
  %242 = load i8*, i8** %src.addr, align 8
  %arrayidx399 = getelementptr inbounds i8, i8* %242, i64 %idxprom398
  %243 = load i8, i8* %arrayidx399, align 1
  %conv400 = zext i8 %243 to i32
  %mul401 = mul nsw i32 5, %conv400
  %add402 = add nsw i32 %sub396, %mul401
  %add403 = add nsw i32 %add402, 128
  %shr404 = ashr i32 %add403, 8
  %idxprom405 = sext i32 %shr404 to i64
  %244 = load i8*, i8** @Clip, align 8
  %arrayidx406 = getelementptr inbounds i8, i8* %244, i64 %idxprom405
  %245 = load i8, i8* %arrayidx406, align 1
  %246 = load i32, i32* %w, align 4
  %247 = load i32, i32* %j2, align 4
  %add407 = add nsw i32 %247, 3
  %mul408 = mul nsw i32 %246, %add407
  %idxprom409 = sext i32 %mul408 to i64
  %248 = load i8*, i8** %dst.addr, align 8
  %arrayidx410 = getelementptr inbounds i8, i8* %248, i64 %idxprom409
  store i8 %245, i8* %arrayidx410, align 1
  br label %for.inc.411

for.inc.411:                                      ; preds = %cond.end.323
  %249 = load i32, i32* %j, align 4
  %add412 = add nsw i32 %249, 2
  store i32 %add412, i32* %j, align 4
  br label %for.cond.130

for.end.413:                                      ; preds = %for.cond.130
  %250 = load i8*, i8** %src.addr, align 8
  %incdec.ptr414 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %incdec.ptr414, i8** %src.addr, align 8
  %251 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr415 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %incdec.ptr415, i8** %dst.addr, align 8
  br label %for.inc.416

for.inc.416:                                      ; preds = %for.end.413
  %252 = load i32, i32* %i, align 4
  %inc417 = add nsw i32 %252, 1
  store i32 %inc417, i32* %i, align 4
  br label %for.cond.126

for.end.418:                                      ; preds = %for.cond.126
  br label %if.end

if.end:                                           ; preds = %for.end.418, %for.end.125
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @conv422to444(i8* %src, i8* %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %w = alloca i32, align 4
  %j = alloca i32, align 4
  %im3 = alloca i32, align 4
  %im2 = alloca i32, align 4
  %im1 = alloca i32, align 4
  %ip1 = alloca i32, align 4
  %ip2 = alloca i32, align 4
  %ip3 = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  %0 = load i32, i32* @Coded_Picture_Width, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %w, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %if.then
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @Coded_Picture_Height, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %w, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %shl = shl i32 %6, 1
  store i32 %shl, i32* %i2, align 4
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %7, 2
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %8, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %im2, align 4
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %9, 1
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %10 = load i32, i32* %i, align 4
  %sub8 = sub nsw i32 %10, 1
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.6
  %cond10 = phi i32 [ 0, %cond.true.6 ], [ %sub8, %cond.false.7 ]
  store i32 %cond10, i32* %im1, align 4
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %w, align 4
  %sub11 = sub nsw i32 %12, 1
  %cmp12 = icmp slt i32 %11, %sub11
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.9
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  br label %cond.end.16

cond.false.14:                                    ; preds = %cond.end.9
  %14 = load i32, i32* %w, align 4
  %sub15 = sub nsw i32 %14, 1
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.13
  %cond17 = phi i32 [ %add, %cond.true.13 ], [ %sub15, %cond.false.14 ]
  store i32 %cond17, i32* %ip1, align 4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %w, align 4
  %sub18 = sub nsw i32 %16, 2
  %cmp19 = icmp slt i32 %15, %sub18
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.end.16
  %17 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %17, 2
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.end.16
  %18 = load i32, i32* %w, align 4
  %sub23 = sub nsw i32 %18, 1
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.20
  %cond25 = phi i32 [ %add21, %cond.true.20 ], [ %sub23, %cond.false.22 ]
  store i32 %cond25, i32* %ip2, align 4
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %w, align 4
  %sub26 = sub nsw i32 %20, 3
  %cmp27 = icmp slt i32 %19, %sub26
  br i1 %cmp27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.end.24
  %21 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %21, 3
  br label %cond.end.32

cond.false.30:                                    ; preds = %cond.end.24
  %22 = load i32, i32* %w, align 4
  %sub31 = sub nsw i32 %22, 1
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.28
  %cond33 = phi i32 [ %add29, %cond.true.28 ], [ %sub31, %cond.false.30 ]
  store i32 %cond33, i32* %ip3, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %26 = load i32, i32* %i2, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i8*, i8** %dst.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 %idxprom34
  store i8 %25, i8* %arrayidx35, align 1
  %28 = load i32, i32* %im2, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load i8*, i8** %src.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %29, i64 %idxprom36
  %30 = load i8, i8* %arrayidx37, align 1
  %conv = zext i8 %30 to i32
  %31 = load i32, i32* %ip3, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load i8*, i8** %src.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %32, i64 %idxprom38
  %33 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %33 to i32
  %add41 = add nsw i32 %conv, %conv40
  %mul = mul nsw i32 21, %add41
  %34 = load i32, i32* %im1, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load i8*, i8** %src.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %35, i64 %idxprom42
  %36 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %36 to i32
  %37 = load i32, i32* %ip2, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load i8*, i8** %src.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %38, i64 %idxprom45
  %39 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %39 to i32
  %add48 = add nsw i32 %conv44, %conv47
  %mul49 = mul nsw i32 52, %add48
  %sub50 = sub nsw i32 %mul, %mul49
  %40 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %40 to i64
  %41 = load i8*, i8** %src.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %41, i64 %idxprom51
  %42 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %42 to i32
  %43 = load i32, i32* %ip1, align 4
  %idxprom54 = sext i32 %43 to i64
  %44 = load i8*, i8** %src.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %44, i64 %idxprom54
  %45 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %45 to i32
  %add57 = add nsw i32 %conv53, %conv56
  %mul58 = mul nsw i32 159, %add57
  %add59 = add nsw i32 %sub50, %mul58
  %add60 = add nsw i32 %add59, 128
  %shr61 = ashr i32 %add60, 8
  %idxprom62 = sext i32 %shr61 to i64
  %46 = load i8*, i8** @Clip, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %46, i64 %idxprom62
  %47 = load i8, i8* %arrayidx63, align 1
  %48 = load i32, i32* %i2, align 4
  %add64 = add nsw i32 %48, 1
  %idxprom65 = sext i32 %add64 to i64
  %49 = load i8*, i8** %dst.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %49, i64 %idxprom65
  store i8 %47, i8* %arrayidx66, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.32
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %51 = load i32, i32* %w, align 4
  %52 = load i8*, i8** %src.addr, align 8
  %idx.ext = sext i32 %51 to i64
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8
  %53 = load i32, i32* @Coded_Picture_Width, align 4
  %54 = load i8*, i8** %dst.addr, align 8
  %idx.ext67 = sext i32 %53 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %54, i64 %idx.ext67
  store i8* %add.ptr68, i8** %dst.addr, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end
  %55 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %55, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.207, %if.else
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* @Coded_Picture_Height, align 4
  %cmp73 = icmp slt i32 %56, %57
  br i1 %cmp73, label %for.body.75, label %for.end.209

for.body.75:                                      ; preds = %for.cond.72
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.200, %for.body.75
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %w, align 4
  %cmp77 = icmp slt i32 %58, %59
  br i1 %cmp77, label %for.body.79, label %for.end.202

for.body.79:                                      ; preds = %for.cond.76
  %60 = load i32, i32* %i, align 4
  %shl80 = shl i32 %60, 1
  store i32 %shl80, i32* %i2, align 4
  %61 = load i32, i32* %i, align 4
  %cmp81 = icmp slt i32 %61, 3
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %for.body.79
  br label %cond.end.86

cond.false.84:                                    ; preds = %for.body.79
  %62 = load i32, i32* %i, align 4
  %sub85 = sub nsw i32 %62, 3
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.84, %cond.true.83
  %cond87 = phi i32 [ 0, %cond.true.83 ], [ %sub85, %cond.false.84 ]
  store i32 %cond87, i32* %im3, align 4
  %63 = load i32, i32* %i, align 4
  %cmp88 = icmp slt i32 %63, 2
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.end.86
  br label %cond.end.93

cond.false.91:                                    ; preds = %cond.end.86
  %64 = load i32, i32* %i, align 4
  %sub92 = sub nsw i32 %64, 2
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.91, %cond.true.90
  %cond94 = phi i32 [ 0, %cond.true.90 ], [ %sub92, %cond.false.91 ]
  store i32 %cond94, i32* %im2, align 4
  %65 = load i32, i32* %i, align 4
  %cmp95 = icmp slt i32 %65, 1
  br i1 %cmp95, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %cond.end.93
  br label %cond.end.100

cond.false.98:                                    ; preds = %cond.end.93
  %66 = load i32, i32* %i, align 4
  %sub99 = sub nsw i32 %66, 1
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.98, %cond.true.97
  %cond101 = phi i32 [ 0, %cond.true.97 ], [ %sub99, %cond.false.98 ]
  store i32 %cond101, i32* %im1, align 4
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %w, align 4
  %sub102 = sub nsw i32 %68, 1
  %cmp103 = icmp slt i32 %67, %sub102
  br i1 %cmp103, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %cond.end.100
  %69 = load i32, i32* %i, align 4
  %add106 = add nsw i32 %69, 1
  br label %cond.end.109

cond.false.107:                                   ; preds = %cond.end.100
  %70 = load i32, i32* %w, align 4
  %sub108 = sub nsw i32 %70, 1
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.107, %cond.true.105
  %cond110 = phi i32 [ %add106, %cond.true.105 ], [ %sub108, %cond.false.107 ]
  store i32 %cond110, i32* %ip1, align 4
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %w, align 4
  %sub111 = sub nsw i32 %72, 2
  %cmp112 = icmp slt i32 %71, %sub111
  br i1 %cmp112, label %cond.true.114, label %cond.false.116

cond.true.114:                                    ; preds = %cond.end.109
  %73 = load i32, i32* %i, align 4
  %add115 = add nsw i32 %73, 2
  br label %cond.end.118

cond.false.116:                                   ; preds = %cond.end.109
  %74 = load i32, i32* %w, align 4
  %sub117 = sub nsw i32 %74, 1
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.116, %cond.true.114
  %cond119 = phi i32 [ %add115, %cond.true.114 ], [ %sub117, %cond.false.116 ]
  store i32 %cond119, i32* %ip2, align 4
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %w, align 4
  %sub120 = sub nsw i32 %76, 3
  %cmp121 = icmp slt i32 %75, %sub120
  br i1 %cmp121, label %cond.true.123, label %cond.false.125

cond.true.123:                                    ; preds = %cond.end.118
  %77 = load i32, i32* %i, align 4
  %add124 = add nsw i32 %77, 3
  br label %cond.end.127

cond.false.125:                                   ; preds = %cond.end.118
  %78 = load i32, i32* %w, align 4
  %sub126 = sub nsw i32 %78, 1
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.125, %cond.true.123
  %cond128 = phi i32 [ %add124, %cond.true.123 ], [ %sub126, %cond.false.125 ]
  store i32 %cond128, i32* %ip3, align 4
  %79 = load i32, i32* %im3, align 4
  %idxprom129 = sext i32 %79 to i64
  %80 = load i8*, i8** %src.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %80, i64 %idxprom129
  %81 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %81 to i32
  %mul132 = mul nsw i32 5, %conv131
  %82 = load i32, i32* %im2, align 4
  %idxprom133 = sext i32 %82 to i64
  %83 = load i8*, i8** %src.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %83, i64 %idxprom133
  %84 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %84 to i32
  %mul136 = mul nsw i32 21, %conv135
  %sub137 = sub nsw i32 %mul132, %mul136
  %85 = load i32, i32* %im1, align 4
  %idxprom138 = sext i32 %85 to i64
  %86 = load i8*, i8** %src.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %86, i64 %idxprom138
  %87 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %87 to i32
  %mul141 = mul nsw i32 70, %conv140
  %add142 = add nsw i32 %sub137, %mul141
  %88 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %88 to i64
  %89 = load i8*, i8** %src.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %89, i64 %idxprom143
  %90 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %90 to i32
  %mul146 = mul nsw i32 228, %conv145
  %add147 = add nsw i32 %add142, %mul146
  %91 = load i32, i32* %ip1, align 4
  %idxprom148 = sext i32 %91 to i64
  %92 = load i8*, i8** %src.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %92, i64 %idxprom148
  %93 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %93 to i32
  %mul151 = mul nsw i32 37, %conv150
  %sub152 = sub nsw i32 %add147, %mul151
  %94 = load i32, i32* %ip2, align 4
  %idxprom153 = sext i32 %94 to i64
  %95 = load i8*, i8** %src.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %95, i64 %idxprom153
  %96 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %96 to i32
  %mul156 = mul nsw i32 11, %conv155
  %add157 = add nsw i32 %sub152, %mul156
  %add158 = add nsw i32 %add157, 128
  %shr159 = ashr i32 %add158, 8
  %idxprom160 = sext i32 %shr159 to i64
  %97 = load i8*, i8** @Clip, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %97, i64 %idxprom160
  %98 = load i8, i8* %arrayidx161, align 1
  %99 = load i32, i32* %i2, align 4
  %idxprom162 = sext i32 %99 to i64
  %100 = load i8*, i8** %dst.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %100, i64 %idxprom162
  store i8 %98, i8* %arrayidx163, align 1
  %101 = load i32, i32* %ip3, align 4
  %idxprom164 = sext i32 %101 to i64
  %102 = load i8*, i8** %src.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %102, i64 %idxprom164
  %103 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %103 to i32
  %mul167 = mul nsw i32 5, %conv166
  %104 = load i32, i32* %ip2, align 4
  %idxprom168 = sext i32 %104 to i64
  %105 = load i8*, i8** %src.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %105, i64 %idxprom168
  %106 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %106 to i32
  %mul171 = mul nsw i32 21, %conv170
  %sub172 = sub nsw i32 %mul167, %mul171
  %107 = load i32, i32* %ip1, align 4
  %idxprom173 = sext i32 %107 to i64
  %108 = load i8*, i8** %src.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %108, i64 %idxprom173
  %109 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %109 to i32
  %mul176 = mul nsw i32 70, %conv175
  %add177 = add nsw i32 %sub172, %mul176
  %110 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %110 to i64
  %111 = load i8*, i8** %src.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %111, i64 %idxprom178
  %112 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %112 to i32
  %mul181 = mul nsw i32 228, %conv180
  %add182 = add nsw i32 %add177, %mul181
  %113 = load i32, i32* %im1, align 4
  %idxprom183 = sext i32 %113 to i64
  %114 = load i8*, i8** %src.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %114, i64 %idxprom183
  %115 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %115 to i32
  %mul186 = mul nsw i32 37, %conv185
  %sub187 = sub nsw i32 %add182, %mul186
  %116 = load i32, i32* %im2, align 4
  %idxprom188 = sext i32 %116 to i64
  %117 = load i8*, i8** %src.addr, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %117, i64 %idxprom188
  %118 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %118 to i32
  %mul191 = mul nsw i32 11, %conv190
  %add192 = add nsw i32 %sub187, %mul191
  %add193 = add nsw i32 %add192, 128
  %shr194 = ashr i32 %add193, 8
  %idxprom195 = sext i32 %shr194 to i64
  %119 = load i8*, i8** @Clip, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %119, i64 %idxprom195
  %120 = load i8, i8* %arrayidx196, align 1
  %121 = load i32, i32* %i2, align 4
  %add197 = add nsw i32 %121, 1
  %idxprom198 = sext i32 %add197 to i64
  %122 = load i8*, i8** %dst.addr, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %122, i64 %idxprom198
  store i8 %120, i8* %arrayidx199, align 1
  br label %for.inc.200

for.inc.200:                                      ; preds = %cond.end.127
  %123 = load i32, i32* %i, align 4
  %inc201 = add nsw i32 %123, 1
  store i32 %inc201, i32* %i, align 4
  br label %for.cond.76

for.end.202:                                      ; preds = %for.cond.76
  %124 = load i32, i32* %w, align 4
  %125 = load i8*, i8** %src.addr, align 8
  %idx.ext203 = sext i32 %124 to i64
  %add.ptr204 = getelementptr inbounds i8, i8* %125, i64 %idx.ext203
  store i8* %add.ptr204, i8** %src.addr, align 8
  %126 = load i32, i32* @Coded_Picture_Width, align 4
  %127 = load i8*, i8** %dst.addr, align 8
  %idx.ext205 = sext i32 %126 to i64
  %add.ptr206 = getelementptr inbounds i8, i8* %127, i64 %idx.ext205
  store i8* %add.ptr206, i8** %dst.addr, align 8
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.end.202
  %128 = load i32, i32* %j, align 4
  %inc208 = add nsw i32 %128, 1
  store i32 %inc208, i32* %j, align 4
  br label %for.cond.72

for.end.209:                                      ; preds = %for.cond.72
  br label %if.end

if.end:                                           ; preds = %for.end.209, %for.end.71
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @putword(i32 %w) #0 {
entry:
  %w.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  call void @putbyte(i32 %0)
  %1 = load i32, i32* %w.addr, align 4
  %shr = ashr i32 %1, 8
  call void @putbyte(i32 %shr)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
