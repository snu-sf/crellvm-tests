; ModuleID = './trio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._trio_class_t = type { {}*, void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*)*, i8*, i32, i32, %union.anon, i32, i32 }
%union.anon = type { i32 }
%struct.trio_parameter_t = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.0 }
%union.anon.0 = type { x86_fp80 }
%struct._trio_reference_t = type { %struct._trio_class_t*, %struct.trio_parameter_t* }
%union.anon.1 = type { i64 }

@stdout = external global %struct._IO_FILE*, align 8
@trio_printfv.unused = internal global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@trio_fprintfv.unused = internal global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@trio_dprintfv.unused = internal global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@trio_sprintfv.unused = internal global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@trio_snprintfv.unused = internal global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@internalNullString = internal constant [6 x i8] c"(nil)\00", align 1
@internalDecimalPointLength = internal global i32 1, align 4
@internalDecimalPoint = internal global i8 46, align 1
@internalDecimalPointString = internal global [17 x i8] c".\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@internalThousandSeparator = internal global [17 x i8] c",\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@internalThousandSeparatorLength = internal global i32 1, align 4
@internalGrouping = internal global [64 x i8] c"\7F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@stdin = external global %struct._IO_FILE*, align 8
@trio_scanfv.unused = internal global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@trio_fscanfv.unused = internal global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@trio_dscanfv.unused = internal global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@trio_sscanfv.unused = internal global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"End of file\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Too many arguments\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Double reference\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Reference gap\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Invalid range\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Custom error\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"-INF\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@internalDigitsUpper = internal constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@internalDigitsLower = internal constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 16
@trio_ninf.ninf_value = internal global double 0.000000e+00, align 8
@trio_pinf.pinf_value = internal global double 0.000000e+00, align 8
@trio_nan.nan_value = internal global double 0.000000e+00, align 8
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internalDigitsUnconverted = internal global i32 1, align 4
@internalDigitArray = internal global [128 x i32] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"INFINITE\00", align 1

; Function Attrs: nounwind uwtable
define i32 @trio_printf(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %3 = bitcast %struct._IO_FILE* %2 to i8*
  %4 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @TrioFormat(i8* %3, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamFile, i8* %4, %struct.__va_list_tag* %arraydecay2, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %6 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #1
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %5
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @TrioFormat(i8* %destination, i64 %destinationSize, void (%struct._trio_class_t*, i32)* %OutStream, i8* %format, %struct.__va_list_tag* %arglist, i8** %argarray) #0 {
entry:
  %retval = alloca i32, align 4
  %destination.addr = alloca i8*, align 8
  %destinationSize.addr = alloca i64, align 8
  %OutStream.addr = alloca void (%struct._trio_class_t*, i32)*, align 8
  %format.addr = alloca i8*, align 8
  %arglist.addr = alloca %struct.__va_list_tag*, align 8
  %argarray.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %data = alloca %struct._trio_class_t, align 8
  %parameters = alloca [64 x %struct.trio_parameter_t], align 16
  %cleanup.dest.slot = alloca i32
  store i8* %destination, i8** %destination.addr, align 8, !tbaa !1
  store i64 %destinationSize, i64* %destinationSize.addr, align 8, !tbaa !7
  store void (%struct._trio_class_t*, i32)* %OutStream, void (%struct._trio_class_t*, i32)** %OutStream.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %arglist, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  store i8** %argarray, i8*** %argarray.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._trio_class_t* %data to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #1
  %2 = bitcast [64 x %struct.trio_parameter_t]* %parameters to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %2) #1
  %3 = bitcast %struct._trio_class_t* %data to i8*
  %call = call i8* @memset(i8* %3, i32 0, i64 56) #9
  %4 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream.addr, align 8, !tbaa !1
  %OutStream1 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 0
  %OutStream2 = bitcast {}** %OutStream1 to void (%struct._trio_class_t*, i32)**
  store void (%struct._trio_class_t*, i32)* %4, void (%struct._trio_class_t*, i32)** %OutStream2, align 8, !tbaa !9
  %5 = load i8*, i8** %destination.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 3
  store i8* %5, i8** %location, align 8, !tbaa !11
  %6 = load i64, i64* %destinationSize.addr, align 8, !tbaa !7
  %conv = trunc i64 %6 to i32
  %max = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 7
  store i32 %conv, i32* %max, align 4, !tbaa !12
  %error = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 8
  store i32 0, i32* %error, align 4, !tbaa !13
  %7 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x %struct.trio_parameter_t], [64 x %struct.trio_parameter_t]* %parameters, i32 0, i32 0
  %8 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %9 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %call3 = call i32 @TrioParse(i32 1, i8* %7, %struct.trio_parameter_t* %arraydecay, %struct.__va_list_tag* %8, i8** %9) #8
  store i32 %call3, i32* %status, align 4, !tbaa !5
  %10 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [64 x %struct.trio_parameter_t], [64 x %struct.trio_parameter_t]* %parameters, i32 0, i32 0
  %call6 = call i32 @TrioFormatProcess(%struct._trio_class_t* %data, i8* %12, %struct.trio_parameter_t* %arraydecay5) #8
  store i32 %call6, i32* %status, align 4, !tbaa !5
  %error7 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 8
  %13 = load i32, i32* %error7, align 4, !tbaa !13
  %cmp8 = icmp ne i32 %13, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %error11 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 8
  %14 = load i32, i32* %error11, align 4, !tbaa !13
  store i32 %14, i32* %status, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %15 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then
  %16 = bitcast [64 x %struct.trio_parameter_t]* %parameters to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %16) #1
  %17 = bitcast %struct._trio_class_t* %data to i8*
  call void @llvm.lifetime.end(i64 56, i8* %17) #1
  %18 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @TrioOutStreamFile(%struct._trio_class_t* %self, i32 %output) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %output.addr = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i32 %output, i32* %output.addr, align 4, !tbaa !5
  %0 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %1, i32 0, i32 3
  %2 = load i8*, i8** %location, align 8, !tbaa !11
  %3 = bitcast i8* %2 to %struct._IO_FILE*
  store %struct._IO_FILE* %3, %struct._IO_FILE** %file, align 8, !tbaa !1
  %4 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %4, i32 0, i32 5
  %5 = load i32, i32* %processed, align 4, !tbaa !14
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %processed, align 4, !tbaa !14
  %6 = load i32, i32* %output.addr, align 4, !tbaa !5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %6, %struct._IO_FILE* %7) #8
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %8, i32 0, i32 8
  store i32 -1, i32* %error, align 4, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %9, i32 0, i32 6
  %committed = bitcast %union.anon* %actually to i32*
  %10 = load i32, i32* %committed, align 4, !tbaa !5
  %inc1 = add nsw i32 %10, 1
  store i32 %inc1, i32* %committed, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @trio_vprintf(i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %1, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamFile, i8* %2, %struct.__va_list_tag* %3, i8** null) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_printfv(i8* %format, i8** %args) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %1, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamFile, i8* %2, %struct.__va_list_tag* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @trio_printfv.unused, i32 0, i32 0), i8** %3) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_fprintf(%struct._IO_FILE* %file, i8* %format, ...) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %3 = bitcast %struct._IO_FILE* %2 to i8*
  %4 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @TrioFormat(i8* %3, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamFile, i8* %4, %struct.__va_list_tag* %arraydecay2, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %6 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #1
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @trio_vfprintf(%struct._IO_FILE* %file, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %1, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamFile, i8* %2, %struct.__va_list_tag* %3, i8** null) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_fprintfv(%struct._IO_FILE* %file, i8* %format, i8** %args) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %1, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamFile, i8* %2, %struct.__va_list_tag* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @trio_fprintfv.unused, i32 0, i32 0), i8** %3) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_dprintf(i32 %fd, i8* %format, ...) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = bitcast i32* %fd.addr to i8*
  %3 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @TrioFormat(i8* %2, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamFileDescriptor, i8* %3, %struct.__va_list_tag* %arraydecay2, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %4 = load i32, i32* %status, align 4, !tbaa !5
  %5 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %5) #1
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @TrioOutStreamFileDescriptor(%struct._trio_class_t* %self, i32 %output) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %output.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %ch = alloca i8, align 1
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i32 %output, i32* %output.addr, align 4, !tbaa !5
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %1, i32 0, i32 3
  %2 = load i8*, i8** %location, align 8, !tbaa !11
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !5
  store i32 %4, i32* %fd, align 4, !tbaa !5
  %5 = load i32, i32* %output.addr, align 4, !tbaa !5
  %conv = trunc i32 %5 to i8
  store i8 %conv, i8* %ch, align 1, !tbaa !15
  %6 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %6, i32 0, i32 5
  %7 = load i32, i32* %processed, align 4, !tbaa !14
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %processed, align 4, !tbaa !14
  %8 = load i32, i32* %fd, align 4, !tbaa !5
  %call = call i64 @write(i32 %8, i8* %ch, i64 1) #8
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %9, i32 0, i32 8
  store i32 -8, i32* %error, align 4, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %10, i32 0, i32 6
  %committed = bitcast %union.anon* %actually to i32*
  %11 = load i32, i32* %committed, align 4, !tbaa !5
  %inc2 = add nsw i32 %11, 1
  store i32 %inc2, i32* %committed, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %12 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @trio_vdprintf(i32 %fd, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fd.addr to i8*
  %1 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %0, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamFileDescriptor, i8* %1, %struct.__va_list_tag* %2, i8** null) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_dprintfv(i32 %fd, i8* %format, i8** %args) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fd.addr to i8*
  %1 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %0, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamFileDescriptor, i8* %1, %struct.__va_list_tag* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @trio_dprintfv.unused, i32 0, i32 0), i8** %2) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_sprintf(i8* %buffer, i8* %format, ...) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = bitcast i8** %buffer.addr to i8*
  %3 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @TrioFormat(i8* %2, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamString, i8* %3, %struct.__va_list_tag* %arraydecay2, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %4 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8 0, i8* %4, align 1, !tbaa !15
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %6 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #1
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @TrioOutStreamString(%struct._trio_class_t* %self, i32 %output) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %output.addr = alloca i32, align 4
  %buffer = alloca i8**, align 8
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i32 %output, i32* %output.addr, align 4, !tbaa !5
  %0 = bitcast i8*** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %1, i32 0, i32 3
  %2 = load i8*, i8** %location, align 8, !tbaa !11
  %3 = bitcast i8* %2 to i8**
  store i8** %3, i8*** %buffer, align 8, !tbaa !1
  %4 = load i32, i32* %output.addr, align 4, !tbaa !5
  %conv = trunc i32 %4 to i8
  %5 = load i8**, i8*** %buffer, align 8, !tbaa !1
  %6 = load i8*, i8** %5, align 8, !tbaa !1
  store i8 %conv, i8* %6, align 1, !tbaa !15
  %7 = load i8**, i8*** %buffer, align 8, !tbaa !1
  %8 = load i8*, i8** %7, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %7, align 8, !tbaa !1
  %9 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %9, i32 0, i32 5
  %10 = load i32, i32* %processed, align 4, !tbaa !14
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %processed, align 4, !tbaa !14
  %11 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %11, i32 0, i32 6
  %committed = bitcast %union.anon* %actually to i32*
  %12 = load i32, i32* %committed, align 4, !tbaa !5
  %inc1 = add nsw i32 %12, 1
  store i32 %inc1, i32* %committed, align 4, !tbaa !5
  %13 = bitcast i8*** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @trio_vsprintf(i8* %buffer, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %status = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %buffer.addr to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %1, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamString, i8* %2, %struct.__va_list_tag* %3, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %4 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8 0, i8* %4, align 1, !tbaa !15
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @trio_sprintfv(i8* %buffer, i8* %format, i8** %args) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %buffer.addr to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %1, i64 0, void (%struct._trio_class_t*, i32)* @TrioOutStreamString, i8* %2, %struct.__va_list_tag* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @trio_sprintfv.unused, i32 0, i32 0), i8** %3) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %4 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8 0, i8* %4, align 1, !tbaa !15
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @trio_snprintf(i8* %buffer, i64 %max, i8* %format, ...) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i64 %max, i64* %max.addr, align 8, !tbaa !7
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = bitcast i8** %buffer.addr to i8*
  %3 = load i64, i64* %max.addr, align 8, !tbaa !7
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %max.addr, align 8, !tbaa !7
  %sub = sub i64 %4, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %5 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @TrioFormat(i8* %2, i64 %cond, void (%struct._trio_class_t*, i32)* @TrioOutStreamStringMax, i8* %5, %struct.__va_list_tag* %arraydecay2, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %6 = load i64, i64* %max.addr, align 8, !tbaa !7
  %cmp3 = icmp ugt i64 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8 0, i8* %7, align 1, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %8 = load i32, i32* %status, align 4, !tbaa !5
  %9 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  %10 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @TrioOutStreamStringMax(%struct._trio_class_t* %self, i32 %output) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %output.addr = alloca i32, align 4
  %buffer = alloca i8**, align 8
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i32 %output, i32* %output.addr, align 4, !tbaa !5
  %0 = bitcast i8*** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %1, i32 0, i32 3
  %2 = load i8*, i8** %location, align 8, !tbaa !11
  %3 = bitcast i8* %2 to i8**
  store i8** %3, i8*** %buffer, align 8, !tbaa !1
  %4 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %4, i32 0, i32 5
  %5 = load i32, i32* %processed, align 4, !tbaa !14
  %6 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %max = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %6, i32 0, i32 7
  %7 = load i32, i32* %max, align 4, !tbaa !12
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %output.addr, align 4, !tbaa !5
  %conv = trunc i32 %8 to i8
  %9 = load i8**, i8*** %buffer, align 8, !tbaa !1
  %10 = load i8*, i8** %9, align 8, !tbaa !1
  store i8 %conv, i8* %10, align 1, !tbaa !15
  %11 = load i8**, i8*** %buffer, align 8, !tbaa !1
  %12 = load i8*, i8** %11, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %11, align 8, !tbaa !1
  %13 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %13, i32 0, i32 6
  %committed = bitcast %union.anon* %actually to i32*
  %14 = load i32, i32* %committed, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %committed, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed1 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %15, i32 0, i32 5
  %16 = load i32, i32* %processed1, align 4, !tbaa !14
  %inc2 = add nsw i32 %16, 1
  store i32 %inc2, i32* %processed1, align 4, !tbaa !14
  %17 = bitcast i8*** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @trio_vsnprintf(i8* %buffer, i64 %max, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %status = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i64 %max, i64* %max.addr, align 8, !tbaa !7
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %buffer.addr to i8*
  %2 = load i64, i64* %max.addr, align 8, !tbaa !7
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %max.addr, align 8, !tbaa !7
  %sub = sub i64 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %4 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %5 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %1, i64 %cond, void (%struct._trio_class_t*, i32)* @TrioOutStreamStringMax, i8* %4, %struct.__va_list_tag* %5, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %6 = load i64, i64* %max.addr, align 8, !tbaa !7
  %cmp1 = icmp ugt i64 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8 0, i8* %7, align 1, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %8 = load i32, i32* %status, align 4, !tbaa !5
  %9 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @trio_snprintfv(i8* %buffer, i64 %max, i8* %format, i8** %args) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i64 %max, i64* %max.addr, align 8, !tbaa !7
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %buffer.addr to i8*
  %2 = load i64, i64* %max.addr, align 8, !tbaa !7
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %max.addr, align 8, !tbaa !7
  %sub = sub i64 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %4 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %5 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioFormat(i8* %1, i64 %cond, void (%struct._trio_class_t*, i32)* @TrioOutStreamStringMax, i8* %4, %struct.__va_list_tag* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @trio_snprintfv.unused, i32 0, i32 0), i8** %5) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %6 = load i64, i64* %max.addr, align 8, !tbaa !7
  %cmp1 = icmp ugt i64 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8 0, i8* %7, align 1, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %8 = load i32, i32* %status, align 4, !tbaa !5
  %9 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @trio_print_pointer(i8* %ref, i8* %pointer) #0 {
entry:
  %ref.addr = alloca i8*, align 8
  %pointer.addr = alloca i8*, align 8
  %self = alloca %struct._trio_reference_t*, align 8
  %flags = alloca i64, align 8
  %number = alloca i64, align 8
  %string = alloca i8*, align 8
  store i8* %ref, i8** %ref.addr, align 8, !tbaa !1
  store i8* %pointer, i8** %pointer.addr, align 8, !tbaa !1
  %0 = bitcast %struct._trio_reference_t** %self to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ref.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._trio_reference_t*
  store %struct._trio_reference_t* %2, %struct._trio_reference_t** %self, align 8, !tbaa !1
  %3 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %number to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %pointer.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* null, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast i8** %string to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @internalNullString, i32 0, i32 0), i8** %string, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %7 = load i8*, i8** %string, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !15
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._trio_reference_t*, %struct._trio_reference_t** %self, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._trio_reference_t, %struct._trio_reference_t* %9, i32 0, i32 0
  %10 = load %struct._trio_class_t*, %struct._trio_class_t** %data, align 8, !tbaa !16
  %OutStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %10, i32 0, i32 0
  %OutStream1 = bitcast {}** %OutStream to void (%struct._trio_class_t*, i32)**
  %11 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream1, align 8, !tbaa !9
  %12 = load %struct._trio_reference_t*, %struct._trio_reference_t** %self, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct._trio_reference_t, %struct._trio_reference_t* %12, i32 0, i32 0
  %13 = load %struct._trio_class_t*, %struct._trio_class_t** %data2, align 8, !tbaa !16
  %14 = load i8*, i8** %string, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %string, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !15
  %conv = sext i8 %15 to i32
  call void %11(%struct._trio_class_t* %13, i32 %conv) #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = bitcast i8** %string to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load i8*, i8** %pointer.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  store i64 %sub.ptr.sub, i64* %number, align 8, !tbaa !7
  %18 = load i64, i64* %number, align 8, !tbaa !7
  store i64 %18, i64* %number, align 8, !tbaa !7
  %19 = load %struct._trio_reference_t*, %struct._trio_reference_t** %self, align 8, !tbaa !1
  %parameter = getelementptr inbounds %struct._trio_reference_t, %struct._trio_reference_t* %19, i32 0, i32 1
  %20 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter, align 8, !tbaa !18
  %flags3 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %20, i32 0, i32 1
  %21 = load i64, i64* %flags3, align 8, !tbaa !19
  store i64 %21, i64* %flags, align 8, !tbaa !7
  %22 = load i64, i64* %flags, align 8, !tbaa !7
  %or = or i64 %22, 24592
  store i64 %or, i64* %flags, align 8, !tbaa !7
  %23 = load %struct._trio_reference_t*, %struct._trio_reference_t** %self, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct._trio_reference_t, %struct._trio_reference_t* %23, i32 0, i32 0
  %24 = load %struct._trio_class_t*, %struct._trio_class_t** %data4, align 8, !tbaa !16
  %25 = load i64, i64* %number, align 8, !tbaa !7
  %26 = load i64, i64* %flags, align 8, !tbaa !7
  call void @TrioWriteNumber(%struct._trio_class_t* %24, i64 %25, i64 %26, i32 18, i32 -1, i32 16) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %27 = bitcast i64* %number to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct._trio_reference_t** %self to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TrioWriteNumber(%struct._trio_class_t* %self, i64 %number, i64 %flags, i32 %width, i32 %precision, i32 %base) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %number.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %precision.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %isNegative = alloca i32, align 4
  %isNumberZero = alloca i32, align 4
  %isPrecisionZero = alloca i32, align 4
  %ignoreNumber = alloca i32, align 4
  %buffer = alloca [1089 x i8], align 16
  %bufferend = alloca i8*, align 8
  %pointer = alloca i8*, align 8
  %digits = alloca i8*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %digitOffset = alloca i32, align 4
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i64 %number, i64* %number.addr, align 8, !tbaa !7
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %precision, i32* %precision.addr, align 4, !tbaa !5
  store i32 %base, i32* %base.addr, align 4, !tbaa !5
  %0 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %isNumberZero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %isPrecisionZero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ignoreNumber to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [1089 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 1089, i8* %4) #1
  %5 = bitcast i8** %bufferend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %pointer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %digits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %digitOffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and = and i64 %11, 32768
  %tobool = icmp ne i64 %and, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @internalDigitsUpper, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @internalDigitsLower, i32 0, i32 0)
  store i8* %cond, i8** %digits, align 8, !tbaa !1
  %12 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %12, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %base.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i64, i64* %number.addr, align 8, !tbaa !7
  %cmp1 = icmp eq i64 %13, 0
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %isNumberZero, align 4, !tbaa !5
  %14 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %14, 0
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* %isPrecisionZero, align 4, !tbaa !5
  %15 = load i32, i32* %isNumberZero, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %15, 0
  br i1 %tobool4, label %land.lhs.true, label %land.end.11

land.lhs.true:                                    ; preds = %if.end
  %16 = load i32, i32* %isPrecisionZero, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %16, 0
  br i1 %tobool5, label %land.rhs, label %land.end.11

land.rhs:                                         ; preds = %land.lhs.true
  %17 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and6 = and i64 %17, 16
  %tobool7 = icmp ne i64 %and6, 0
  br i1 %tobool7, label %land.rhs.8, label %land.end

land.rhs.8:                                       ; preds = %land.rhs
  %18 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %18, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs.8, %land.rhs
  %19 = phi i1 [ false, %land.rhs ], [ %cmp9, %land.rhs.8 ]
  %lnot = xor i1 %19, true
  br label %land.end.11

land.end.11:                                      ; preds = %land.end, %land.lhs.true, %if.end
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %lnot, %land.end ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, i32* %ignoreNumber, align 4, !tbaa !5
  %21 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and12 = and i64 %21, 16384
  %tobool13 = icmp ne i64 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.end.11
  store i32 0, i32* %isNegative, align 4, !tbaa !5
  %22 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and15 = and i64 %22, -5
  store i64 %and15, i64* %flags.addr, align 8, !tbaa !7
  br label %if.end.21

if.else:                                          ; preds = %land.end.11
  %23 = load i64, i64* %number.addr, align 8, !tbaa !7
  %cmp16 = icmp slt i64 %23, 0
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %isNegative, align 4, !tbaa !5
  %24 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  %25 = load i64, i64* %number.addr, align 8, !tbaa !7
  %sub = sub nsw i64 0, %25
  store i64 %sub, i64* %number.addr, align 8, !tbaa !7
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.14
  %26 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and22 = and i64 %26, 256
  %tobool23 = icmp ne i64 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.21
  %27 = load i64, i64* %number.addr, align 8, !tbaa !7
  store i64 %27, i64* %number.addr, align 8, !tbaa !7
  br label %if.end.32

if.else.25:                                       ; preds = %if.end.21
  %28 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and26 = and i64 %28, 128
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.else.25
  %29 = load i64, i64* %number.addr, align 8, !tbaa !7
  store i64 %29, i64* %number.addr, align 8, !tbaa !7
  br label %if.end.31

if.else.29:                                       ; preds = %if.else.25
  %30 = load i64, i64* %number.addr, align 8, !tbaa !7
  %and30 = and i64 %30, 4294967295
  store i64 %and30, i64* %number.addr, align 8, !tbaa !7
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.24
  %arrayidx = getelementptr inbounds [1089 x i8], [1089 x i8]* %buffer, i32 0, i64 1088
  store i8* %arrayidx, i8** %bufferend, align 8, !tbaa !1
  store i8* %arrayidx, i8** %pointer, align 8, !tbaa !1
  %31 = load i8*, i8** %pointer, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr, i8** %pointer, align 8, !tbaa !1
  store i8 0, i8* %31, align 1, !tbaa !15
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %32, 1089
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i64, i64* %number.addr, align 8, !tbaa !7
  %34 = load i32, i32* %base.addr, align 4, !tbaa !5
  %conv35 = sext i32 %34 to i64
  %rem = urem i64 %33, %conv35
  %conv36 = trunc i64 %rem to i32
  store i32 %conv36, i32* %digitOffset, align 4, !tbaa !5
  %35 = load i32, i32* %digitOffset, align 4, !tbaa !5
  %idxprom = sext i32 %35 to i64
  %36 = load i8*, i8** %digits, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %36, i64 %idxprom
  %37 = load i8, i8* %arrayidx37, align 1, !tbaa !15
  %38 = load i8*, i8** %pointer, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %incdec.ptr38, i8** %pointer, align 8, !tbaa !1
  store i8 %37, i8* %38, align 1, !tbaa !15
  %39 = load i32, i32* %base.addr, align 4, !tbaa !5
  %conv39 = sext i32 %39 to i64
  %40 = load i64, i64* %number.addr, align 8, !tbaa !7
  %div = udiv i64 %40, %conv39
  store i64 %div, i64* %number.addr, align 8, !tbaa !7
  %41 = load i64, i64* %number.addr, align 8, !tbaa !7
  %cmp40 = icmp eq i64 %41, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body
  br label %for.end

if.end.43:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.42, %for.cond
  %43 = load i32, i32* %ignoreNumber, align 4, !tbaa !5
  %tobool44 = icmp ne i32 %43, 0
  br i1 %tobool44, label %if.end.50, label %if.then.45

if.then.45:                                       ; preds = %for.end
  %44 = load i8*, i8** %bufferend, align 8, !tbaa !1
  %45 = load i8*, i8** %pointer, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub46 = sub nsw i64 %sub.ptr.sub, 1
  %46 = load i32, i32* %width.addr, align 4, !tbaa !5
  %conv47 = sext i32 %46 to i64
  %sub48 = sub nsw i64 %conv47, %sub46
  %conv49 = trunc i64 %sub48 to i32
  store i32 %conv49, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %for.end
  %47 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp51 = icmp ne i32 -1, %47
  br i1 %cmp51, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %if.end.50
  %48 = load i8*, i8** %bufferend, align 8, !tbaa !1
  %49 = load i8*, i8** %pointer, align 8, !tbaa !1
  %sub.ptr.lhs.cast54 = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast55 = ptrtoint i8* %49 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %sub57 = sub nsw i64 %sub.ptr.sub56, 1
  %50 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %conv58 = sext i32 %50 to i64
  %sub59 = sub nsw i64 %conv58, %sub57
  %conv60 = trunc i64 %sub59 to i32
  store i32 %conv60, i32* %precision.addr, align 4, !tbaa !5
  %51 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %51, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.53
  store i32 0, i32* %precision.addr, align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.53
  %52 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %or = or i64 %52, 8192
  store i64 %or, i64* %flags.addr, align 8, !tbaa !7
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.50
  %53 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and66 = and i64 %53, 8
  %tobool67 = icmp ne i64 %and66, 0
  br i1 %tobool67, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.65
  %54 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %54, -1
  br i1 %cmp68, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %55 = load i32, i32* %precision.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %if.end.65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond70 = phi i32 [ %55, %cond.true ], [ 0, %cond.false ]
  store i32 %cond70, i32* %count, align 4, !tbaa !5
  %56 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool71 = icmp ne i32 %56, 0
  br i1 %tobool71, label %if.then.78, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %cond.end
  %57 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and73 = and i64 %57, 4
  %tobool74 = icmp ne i64 %and73, 0
  br i1 %tobool74, label %if.then.78, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.72
  %58 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and76 = and i64 %58, 2
  %tobool77 = icmp ne i64 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.75, %lor.lhs.false.72, %cond.end
  %59 = load i32, i32* %width.addr, align 4, !tbaa !5
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %lor.lhs.false.75
  %60 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and80 = and i64 %60, 16
  %tobool81 = icmp ne i64 %and80, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.end.95

land.lhs.true.82:                                 ; preds = %if.end.79
  %61 = load i32, i32* %isNumberZero, align 4, !tbaa !5
  %tobool83 = icmp ne i32 %61, 0
  br i1 %tobool83, label %if.end.95, label %if.then.84

if.then.84:                                       ; preds = %land.lhs.true.82
  %62 = load i32, i32* %base.addr, align 4, !tbaa !5
  switch i32 %62, label %sw.default [
    i32 2, label %sw.bb
    i32 16, label %sw.bb
    i32 8, label %sw.bb.86
  ]

sw.bb:                                            ; preds = %if.then.84, %if.then.84
  %63 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub85 = sub nsw i32 %63, 2
  store i32 %sub85, i32* %width.addr, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.86:                                         ; preds = %if.then.84
  %64 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and87 = and i64 %64, 8192
  %tobool88 = icmp ne i64 %and87, 0
  br i1 %tobool88, label %lor.lhs.false.89, label %if.then.92

lor.lhs.false.89:                                 ; preds = %sw.bb.86
  %65 = load i32, i32* %count, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %65, 0
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %lor.lhs.false.89, %sw.bb.86
  %66 = load i32, i32* %width.addr, align 4, !tbaa !5
  %dec93 = add nsw i32 %66, -1
  store i32 %dec93, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %lor.lhs.false.89
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.84
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.94, %sw.bb
  br label %if.end.95

if.end.95:                                        ; preds = %sw.epilog, %land.lhs.true.82, %if.end.79
  %67 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and96 = and i64 %67, 8
  %tobool97 = icmp ne i64 %and96, 0
  br i1 %tobool97, label %if.end.109, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.end.95
  %68 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and99 = and i64 %68, 8192
  %tobool100 = icmp ne i64 %and99, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.then.104

land.lhs.true.101:                                ; preds = %lor.lhs.false.98
  %69 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp102 = icmp eq i32 %69, -1
  br i1 %cmp102, label %if.end.109, label %if.then.104

if.then.104:                                      ; preds = %land.lhs.true.101, %lor.lhs.false.98
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.104
  %70 = load i32, i32* %width.addr, align 4, !tbaa !5
  %dec105 = add nsw i32 %70, -1
  store i32 %dec105, i32* %width.addr, align 4, !tbaa !5
  %71 = load i32, i32* %count, align 4, !tbaa !5
  %cmp106 = icmp sgt i32 %70, %71
  br i1 %cmp106, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %72 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %72, i32 0, i32 0
  %OutStream108 = bitcast {}** %OutStream to void (%struct._trio_class_t*, i32)**
  %73 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream108, align 8, !tbaa !9
  %74 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %73(%struct._trio_class_t* %74, i32 32) #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.109

if.end.109:                                       ; preds = %while.end, %land.lhs.true.101, %if.end.95
  %75 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool110 = icmp ne i32 %75, 0
  br i1 %tobool110, label %if.then.111, label %if.else.114

if.then.111:                                      ; preds = %if.end.109
  %76 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream112 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %76, i32 0, i32 0
  %OutStream113 = bitcast {}** %OutStream112 to void (%struct._trio_class_t*, i32)**
  %77 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream113, align 8, !tbaa !9
  %78 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %77(%struct._trio_class_t* %78, i32 45) #8
  br label %if.end.128

if.else.114:                                      ; preds = %if.end.109
  %79 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and115 = and i64 %79, 4
  %tobool116 = icmp ne i64 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.else.120

if.then.117:                                      ; preds = %if.else.114
  %80 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream118 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %80, i32 0, i32 0
  %OutStream119 = bitcast {}** %OutStream118 to void (%struct._trio_class_t*, i32)**
  %81 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream119, align 8, !tbaa !9
  %82 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %81(%struct._trio_class_t* %82, i32 43) #8
  br label %if.end.127

if.else.120:                                      ; preds = %if.else.114
  %83 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and121 = and i64 %83, 2
  %tobool122 = icmp ne i64 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.126

if.then.123:                                      ; preds = %if.else.120
  %84 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream124 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %84, i32 0, i32 0
  %OutStream125 = bitcast {}** %OutStream124 to void (%struct._trio_class_t*, i32)**
  %85 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream125, align 8, !tbaa !9
  %86 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %85(%struct._trio_class_t* %86, i32 32) #8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.123, %if.else.120
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.117
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.111
  %87 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and129 = and i64 %87, 16
  %tobool130 = icmp ne i64 %and129, 0
  br i1 %tobool130, label %land.lhs.true.131, label %if.end.162

land.lhs.true.131:                                ; preds = %if.end.128
  %88 = load i32, i32* %isNumberZero, align 4, !tbaa !5
  %tobool132 = icmp ne i32 %88, 0
  br i1 %tobool132, label %if.end.162, label %if.then.133

if.then.133:                                      ; preds = %land.lhs.true.131
  %89 = load i32, i32* %base.addr, align 4, !tbaa !5
  switch i32 %89, label %sw.default.160 [
    i32 2, label %sw.bb.134
    i32 8, label %sw.bb.142
    i32 16, label %sw.bb.152
  ]

sw.bb.134:                                        ; preds = %if.then.133
  %90 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream135 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %90, i32 0, i32 0
  %OutStream136 = bitcast {}** %OutStream135 to void (%struct._trio_class_t*, i32)**
  %91 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream136, align 8, !tbaa !9
  %92 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %91(%struct._trio_class_t* %92, i32 48) #8
  %93 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream137 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %93, i32 0, i32 0
  %OutStream138 = bitcast {}** %OutStream137 to void (%struct._trio_class_t*, i32)**
  %94 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream138, align 8, !tbaa !9
  %95 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %96 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and139 = and i64 %96, 32768
  %tobool140 = icmp ne i64 %and139, 0
  %cond141 = select i1 %tobool140, i32 66, i32 98
  call void %94(%struct._trio_class_t* %95, i32 %cond141) #8
  br label %sw.epilog.161

sw.bb.142:                                        ; preds = %if.then.133
  %97 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and143 = and i64 %97, 8192
  %tobool144 = icmp ne i64 %and143, 0
  br i1 %tobool144, label %lor.lhs.false.145, label %if.then.148

lor.lhs.false.145:                                ; preds = %sw.bb.142
  %98 = load i32, i32* %count, align 4, !tbaa !5
  %cmp146 = icmp eq i32 %98, 0
  br i1 %cmp146, label %if.then.148, label %if.end.151

if.then.148:                                      ; preds = %lor.lhs.false.145, %sw.bb.142
  %99 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream149 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %99, i32 0, i32 0
  %OutStream150 = bitcast {}** %OutStream149 to void (%struct._trio_class_t*, i32)**
  %100 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream150, align 8, !tbaa !9
  %101 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %100(%struct._trio_class_t* %101, i32 48) #8
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.148, %lor.lhs.false.145
  br label %sw.epilog.161

sw.bb.152:                                        ; preds = %if.then.133
  %102 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream153 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %102, i32 0, i32 0
  %OutStream154 = bitcast {}** %OutStream153 to void (%struct._trio_class_t*, i32)**
  %103 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream154, align 8, !tbaa !9
  %104 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %103(%struct._trio_class_t* %104, i32 48) #8
  %105 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream155 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %105, i32 0, i32 0
  %OutStream156 = bitcast {}** %OutStream155 to void (%struct._trio_class_t*, i32)**
  %106 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream156, align 8, !tbaa !9
  %107 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %108 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and157 = and i64 %108, 32768
  %tobool158 = icmp ne i64 %and157, 0
  %cond159 = select i1 %tobool158, i32 88, i32 120
  call void %106(%struct._trio_class_t* %107, i32 %cond159) #8
  br label %sw.epilog.161

sw.default.160:                                   ; preds = %if.then.133
  br label %sw.epilog.161

sw.epilog.161:                                    ; preds = %sw.default.160, %sw.bb.152, %if.end.151, %sw.bb.134
  br label %if.end.162

if.end.162:                                       ; preds = %sw.epilog.161, %land.lhs.true.131, %if.end.128
  %109 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and163 = and i64 %109, 8192
  %tobool164 = icmp ne i64 %and163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.179

if.then.165:                                      ; preds = %if.end.162
  %110 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp166 = icmp eq i32 %110, -1
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.then.165
  %111 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %111, i32* %precision.addr, align 4, !tbaa !5
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.then.165
  br label %while.cond.170

while.cond.170:                                   ; preds = %while.body.174, %if.end.169
  %112 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %dec171 = add nsw i32 %112, -1
  store i32 %dec171, i32* %precision.addr, align 4, !tbaa !5
  %cmp172 = icmp sgt i32 %112, 0
  br i1 %cmp172, label %while.body.174, label %while.end.178

while.body.174:                                   ; preds = %while.cond.170
  %113 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream175 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %113, i32 0, i32 0
  %OutStream176 = bitcast {}** %OutStream175 to void (%struct._trio_class_t*, i32)**
  %114 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream176, align 8, !tbaa !9
  %115 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %114(%struct._trio_class_t* %115, i32 48) #8
  %116 = load i32, i32* %width.addr, align 4, !tbaa !5
  %dec177 = add nsw i32 %116, -1
  store i32 %dec177, i32* %width.addr, align 4, !tbaa !5
  br label %while.cond.170

while.end.178:                                    ; preds = %while.cond.170
  br label %if.end.179

if.end.179:                                       ; preds = %while.end.178, %if.end.162
  %117 = load i32, i32* %ignoreNumber, align 4, !tbaa !5
  %tobool180 = icmp ne i32 %117, 0
  br i1 %tobool180, label %if.end.190, label %if.then.181

if.then.181:                                      ; preds = %if.end.179
  br label %while.cond.182

while.cond.182:                                   ; preds = %while.body.185, %if.then.181
  %118 = load i8*, i8** %pointer, align 8, !tbaa !1
  %incdec.ptr183 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr183, i8** %pointer, align 8, !tbaa !1
  %119 = load i8, i8* %incdec.ptr183, align 1, !tbaa !15
  %tobool184 = icmp ne i8 %119, 0
  br i1 %tobool184, label %while.body.185, label %while.end.189

while.body.185:                                   ; preds = %while.cond.182
  %120 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream186 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %120, i32 0, i32 0
  %OutStream187 = bitcast {}** %OutStream186 to void (%struct._trio_class_t*, i32)**
  %121 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream187, align 8, !tbaa !9
  %122 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %123 = load i8*, i8** %pointer, align 8, !tbaa !1
  %124 = load i8, i8* %123, align 1, !tbaa !15
  %conv188 = sext i8 %124 to i32
  call void %121(%struct._trio_class_t* %122, i32 %conv188) #8
  br label %while.cond.182

while.end.189:                                    ; preds = %while.cond.182
  br label %if.end.190

if.end.190:                                       ; preds = %while.end.189, %if.end.179
  %125 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and191 = and i64 %125, 8
  %tobool192 = icmp ne i64 %and191, 0
  br i1 %tobool192, label %if.then.193, label %if.end.202

if.then.193:                                      ; preds = %if.end.190
  br label %while.cond.194

while.cond.194:                                   ; preds = %while.body.198, %if.then.193
  %126 = load i32, i32* %width.addr, align 4, !tbaa !5
  %dec195 = add nsw i32 %126, -1
  store i32 %dec195, i32* %width.addr, align 4, !tbaa !5
  %cmp196 = icmp sgt i32 %126, 0
  br i1 %cmp196, label %while.body.198, label %while.end.201

while.body.198:                                   ; preds = %while.cond.194
  %127 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream199 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %127, i32 0, i32 0
  %OutStream200 = bitcast {}** %OutStream199 to void (%struct._trio_class_t*, i32)**
  %128 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream200, align 8, !tbaa !9
  %129 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %128(%struct._trio_class_t* %129, i32 32) #8
  br label %while.cond.194

while.end.201:                                    ; preds = %while.cond.194
  br label %if.end.202

if.end.202:                                       ; preds = %while.end.201, %if.end.190
  %130 = bitcast i32* %digitOffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i8** %digits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i8** %pointer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i8** %bufferend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast [1089 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 1089, i8* %136) #1
  %137 = bitcast i32* %ignoreNumber to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %isPrecisionZero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %isNumberZero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @trio_locale_set_decimal_point(i8* %decimalPoint) #0 {
entry:
  %decimalPoint.addr = alloca i8*, align 8
  store i8* %decimalPoint, i8** %decimalPoint.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %decimalPoint.addr, align 8, !tbaa !1
  %call = call i64 @trio_length(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @internalDecimalPointLength, align 4, !tbaa !5
  %1 = load i32, i32* @internalDecimalPointLength, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %decimalPoint.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !15
  store i8 %3, i8* @internalDecimalPoint, align 1, !tbaa !15
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 0, i8* @internalDecimalPoint, align 1, !tbaa !15
  %4 = load i8*, i8** %decimalPoint.addr, align 8, !tbaa !1
  %call2 = call i32 @trio_copy_max(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @internalDecimalPointString, i32 0, i32 0), i64 17, i8* %4) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @trio_length(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %0) #10
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @trio_copy_max(i8* %target, i64 %max, i8* %source) #0 {
entry:
  %target.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %source.addr = alloca i8*, align 8
  store i8* %target, i8** %target.addr, align 8, !tbaa !1
  store i64 %max, i64* %max.addr, align 8, !tbaa !7
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %2 = load i64, i64* %max.addr, align 8, !tbaa !7
  %sub = sub i64 %2, 1
  %call = call i8* @strncpy(i8* %0, i8* %1, i64 %sub) #9
  %3 = load i64, i64* %max.addr, align 8, !tbaa !7
  %sub1 = sub i64 %3, 1
  %4 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %sub1
  store i8 0, i8* %arrayidx, align 1, !tbaa !15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @trio_locale_set_thousand_separator(i8* %thousandSeparator) #0 {
entry:
  %thousandSeparator.addr = alloca i8*, align 8
  store i8* %thousandSeparator, i8** %thousandSeparator.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %thousandSeparator.addr, align 8, !tbaa !1
  %call = call i32 @trio_copy_max(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @internalThousandSeparator, i32 0, i32 0), i64 17, i8* %0) #8
  %call1 = call i64 @trio_length(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @internalThousandSeparator, i32 0, i32 0)) #8
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* @internalThousandSeparatorLength, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @trio_locale_set_grouping(i8* %grouping) #0 {
entry:
  %grouping.addr = alloca i8*, align 8
  store i8* %grouping, i8** %grouping.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %grouping.addr, align 8, !tbaa !1
  %call = call i32 @trio_copy_max(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @internalGrouping, i32 0, i32 0), i64 64, i8* %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @trio_scanf(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  %3 = bitcast %struct._IO_FILE* %2 to i8*
  %4 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @TrioScan(i8* %3, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamFile, void (%struct._trio_class_t*)* @TrioUndoStreamFile, i8* %4, %struct.__va_list_tag* %arraydecay2, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %6 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #1
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioScan(i8* %source, i64 %sourceSize, void (%struct._trio_class_t*, i32*)* %InStream, void (%struct._trio_class_t*)* %UndoStream, i8* %format, %struct.__va_list_tag* %arglist, i8** %argarray) #0 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca i8*, align 8
  %sourceSize.addr = alloca i64, align 8
  %InStream.addr = alloca void (%struct._trio_class_t*, i32*)*, align 8
  %UndoStream.addr = alloca void (%struct._trio_class_t*)*, align 8
  %format.addr = alloca i8*, align 8
  %arglist.addr = alloca %struct.__va_list_tag*, align 8
  %argarray.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %parameters = alloca [64 x %struct.trio_parameter_t], align 16
  %data = alloca %struct._trio_class_t, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i64 %sourceSize, i64* %sourceSize.addr, align 8, !tbaa !7
  store void (%struct._trio_class_t*, i32*)* %InStream, void (%struct._trio_class_t*, i32*)** %InStream.addr, align 8, !tbaa !1
  store void (%struct._trio_class_t*)* %UndoStream, void (%struct._trio_class_t*)** %UndoStream.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %arglist, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  store i8** %argarray, i8*** %argarray.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [64 x %struct.trio_parameter_t]* %parameters to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  %2 = bitcast %struct._trio_class_t* %data to i8*
  call void @llvm.lifetime.start(i64 56, i8* %2) #1
  %3 = bitcast %struct._trio_class_t* %data to i8*
  %call = call i8* @memset(i8* %3, i32 0, i64 56) #9
  %4 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream.addr, align 8, !tbaa !1
  %InStream1 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 1
  store void (%struct._trio_class_t*, i32*)* %4, void (%struct._trio_class_t*, i32*)** %InStream1, align 8, !tbaa !21
  %5 = load void (%struct._trio_class_t*)*, void (%struct._trio_class_t*)** %UndoStream.addr, align 8, !tbaa !1
  %UndoStream2 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 2
  store void (%struct._trio_class_t*)* %5, void (%struct._trio_class_t*)** %UndoStream2, align 8, !tbaa !22
  %6 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 3
  store i8* %6, i8** %location, align 8, !tbaa !11
  %7 = load i64, i64* %sourceSize.addr, align 8, !tbaa !7
  %conv = trunc i64 %7 to i32
  %max = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 7
  store i32 %conv, i32* %max, align 4, !tbaa !12
  %error = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 8
  store i32 0, i32* %error, align 4, !tbaa !13
  %8 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x %struct.trio_parameter_t], [64 x %struct.trio_parameter_t]* %parameters, i32 0, i32 0
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %10 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %call3 = call i32 @TrioParse(i32 2, i8* %8, %struct.trio_parameter_t* %arraydecay, %struct.__va_list_tag* %9, i8** %10) #8
  store i32 %call3, i32* %status, align 4, !tbaa !5
  %11 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [64 x %struct.trio_parameter_t], [64 x %struct.trio_parameter_t]* %parameters, i32 0, i32 0
  %call6 = call i32 @TrioScanProcess(%struct._trio_class_t* %data, i8* %13, %struct.trio_parameter_t* %arraydecay5) #8
  store i32 %call6, i32* %status, align 4, !tbaa !5
  %error7 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 8
  %14 = load i32, i32* %error7, align 4, !tbaa !13
  %cmp8 = icmp ne i32 %14, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %error11 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %data, i32 0, i32 8
  %15 = load i32, i32* %error11, align 4, !tbaa !13
  store i32 %15, i32* %status, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %16 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then
  %17 = bitcast %struct._trio_class_t* %data to i8*
  call void @llvm.lifetime.end(i64 56, i8* %17) #1
  %18 = bitcast [64 x %struct.trio_parameter_t]* %parameters to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %18) #1
  %19 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @TrioInStreamFile(%struct._trio_class_t* %self, i32* %intPointer) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %intPointer.addr = alloca i32*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i32* %intPointer, i32** %intPointer.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %1, i32 0, i32 3
  %2 = load i8*, i8** %location, align 8, !tbaa !11
  %3 = bitcast i8* %2 to %struct._IO_FILE*
  store %struct._IO_FILE* %3, %struct._IO_FILE** %file, align 8, !tbaa !1
  %4 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %4, i32 0, i32 6
  %cached = bitcast %union.anon* %actually to i32*
  store i32 0, i32* %cached, align 4, !tbaa !5
  %5 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %5, i32 0, i32 4
  %6 = load i32, i32* %current, align 4, !tbaa !23
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = call i32 @ferror(%struct._IO_FILE* %7) #9
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 -8, i32 -1
  %8 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %8, i32 0, i32 8
  store i32 %cond, i32* %error, align 4, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %9, i32 0, i32 5
  %10 = load i32, i32* %processed, align 4, !tbaa !14
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %processed, align 4, !tbaa !14
  %11 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually1 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %11, i32 0, i32 6
  %cached2 = bitcast %union.anon* %actually1 to i32*
  %12 = load i32, i32* %cached2, align 4, !tbaa !5
  %inc3 = add nsw i32 %12, 1
  store i32 %inc3, i32* %cached2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call4 = call i32 @fgetc(%struct._IO_FILE* %13) #8
  %14 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current5 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %14, i32 0, i32 4
  store i32 %call4, i32* %current5, align 4, !tbaa !23
  %15 = load i32*, i32** %intPointer.addr, align 8, !tbaa !1
  %cmp6 = icmp ne i32* null, %15
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %16 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current8 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %16, i32 0, i32 4
  %17 = load i32, i32* %current8, align 4, !tbaa !23
  %18 = load i32*, i32** %intPointer.addr, align 8, !tbaa !1
  store i32 %17, i32* %18, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %19 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TrioUndoStreamFile(%struct._trio_class_t* %self) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %1, i32 0, i32 3
  %2 = load i8*, i8** %location, align 8, !tbaa !11
  %3 = bitcast i8* %2 to %struct._IO_FILE*
  store %struct._IO_FILE* %3, %struct._IO_FILE** %file, align 8, !tbaa !1
  %4 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %4, i32 0, i32 6
  %cached = bitcast %union.anon* %actually to i32*
  %5 = load i32, i32* %cached, align 4, !tbaa !5
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %6, i32 0, i32 4
  %7 = load i32, i32* %current, align 4, !tbaa !23
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = call i32 @ungetc(i32 %7, %struct._IO_FILE* %8) #8
  %9 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current1 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %9, i32 0, i32 4
  store i32 %call, i32* %current1, align 4, !tbaa !23
  %10 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually2 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %10, i32 0, i32 6
  %cached3 = bitcast %union.anon* %actually2 to i32*
  store i32 0, i32* %cached3, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @trio_vscanf(i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioScan(i8* %1, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamFile, void (%struct._trio_class_t*)* @TrioUndoStreamFile, i8* %2, %struct.__va_list_tag* %3, i8** null) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_scanfv(i8* %format, i8** %args) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioScan(i8* %1, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamFile, void (%struct._trio_class_t*)* @TrioUndoStreamFile, i8* %2, %struct.__va_list_tag* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @trio_scanfv.unused, i32 0, i32 0), i8** %3) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_fscanf(%struct._IO_FILE* %file, i8* %format, ...) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %3 = bitcast %struct._IO_FILE* %2 to i8*
  %4 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @TrioScan(i8* %3, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamFile, void (%struct._trio_class_t*)* @TrioUndoStreamFile, i8* %4, %struct.__va_list_tag* %arraydecay2, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %6 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #1
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @trio_vfscanf(%struct._IO_FILE* %file, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioScan(i8* %1, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamFile, void (%struct._trio_class_t*)* @TrioUndoStreamFile, i8* %2, %struct.__va_list_tag* %3, i8** null) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_fscanfv(%struct._IO_FILE* %file, i8* %format, i8** %args) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioScan(i8* %1, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamFile, void (%struct._trio_class_t*)* @TrioUndoStreamFile, i8* %2, %struct.__va_list_tag* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @trio_fscanfv.unused, i32 0, i32 0), i8** %3) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_dscanf(i32 %fd, i8* %format, ...) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = bitcast i32* %fd.addr to i8*
  %3 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @TrioScan(i8* %2, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamFileDescriptor, void (%struct._trio_class_t*)* null, i8* %3, %struct.__va_list_tag* %arraydecay2, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %4 = load i32, i32* %status, align 4, !tbaa !5
  %5 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %5) #1
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @TrioInStreamFileDescriptor(%struct._trio_class_t* %self, i32* %intPointer) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %intPointer.addr = alloca i32*, align 8
  %fd = alloca i32, align 4
  %size = alloca i32, align 4
  %input = alloca i8, align 1
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i32* %intPointer, i32** %intPointer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %1, i32 0, i32 3
  %2 = load i8*, i8** %location, align 8, !tbaa !11
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !5
  store i32 %4, i32* %fd, align 4, !tbaa !5
  %5 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  call void @llvm.lifetime.start(i64 1, i8* %input) #1
  %6 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %6, i32 0, i32 6
  %cached = bitcast %union.anon* %actually to i32*
  store i32 0, i32* %cached, align 4, !tbaa !5
  %7 = load i32, i32* %fd, align 4, !tbaa !5
  %call = call i64 @read(i32 %7, i8* %input, i64 1) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %size, align 4, !tbaa !5
  %8 = load i32, i32* %size, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %9, i32 0, i32 8
  store i32 -8, i32* %error, align 4, !tbaa !13
  %10 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %10, i32 0, i32 4
  store i32 -1, i32* %current, align 4, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %size, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %12 = load i8, i8* %input, align 1, !tbaa !15
  %conv4 = zext i8 %12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv4, %cond.false ]
  %13 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current5 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %13, i32 0, i32 4
  store i32 %cond, i32* %current5, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %14 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current6 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %14, i32 0, i32 4
  %15 = load i32, i32* %current6, align 4, !tbaa !23
  %cmp7 = icmp ne i32 %15, -1
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %16 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually10 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %16, i32 0, i32 6
  %cached11 = bitcast %union.anon* %actually10 to i32*
  %17 = load i32, i32* %cached11, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %cached11, align 4, !tbaa !5
  %18 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %18, i32 0, i32 5
  %19 = load i32, i32* %processed, align 4, !tbaa !14
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* %processed, align 4, !tbaa !14
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %20 = load i32*, i32** %intPointer.addr, align 8, !tbaa !1
  %cmp14 = icmp ne i32* null, %20
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %21 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current17 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %21, i32 0, i32 4
  %22 = load i32, i32* %current17, align 4, !tbaa !23
  %23 = load i32*, i32** %intPointer.addr, align 8, !tbaa !1
  store i32 %22, i32* %23, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  call void @llvm.lifetime.end(i64 1, i8* %input) #1
  %24 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @trio_vdscanf(i32 %fd, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fd.addr to i8*
  %1 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioScan(i8* %0, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamFileDescriptor, void (%struct._trio_class_t*)* null, i8* %1, %struct.__va_list_tag* %2, i8** null) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_dscanfv(i32 %fd, i8* %format, i8** %args) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fd.addr to i8*
  %1 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioScan(i8* %0, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamFileDescriptor, void (%struct._trio_class_t*)* null, i8* %1, %struct.__va_list_tag* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @trio_dscanfv.unused, i32 0, i32 0), i8** %2) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_sscanf(i8* %buffer, i8* %format, ...) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = bitcast i8** %buffer.addr to i8*
  %3 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @TrioScan(i8* %2, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamString, void (%struct._trio_class_t*)* null, i8* %3, %struct.__va_list_tag* %arraydecay2, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %4 = load i32, i32* %status, align 4, !tbaa !5
  %5 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %5) #1
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @TrioInStreamString(%struct._trio_class_t* %self, i32* %intPointer) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %intPointer.addr = alloca i32*, align 8
  %buffer = alloca i8**, align 8
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i32* %intPointer, i32** %intPointer.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %1, i32 0, i32 6
  %cached = bitcast %union.anon* %actually to i32*
  store i32 0, i32* %cached, align 4, !tbaa !5
  %2 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %location = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %2, i32 0, i32 3
  %3 = load i8*, i8** %location, align 8, !tbaa !11
  %4 = bitcast i8* %3 to i8**
  store i8** %4, i8*** %buffer, align 8, !tbaa !1
  %5 = load i8**, i8*** %buffer, align 8, !tbaa !1
  %6 = load i8*, i8** %5, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %7 to i32
  %8 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %8, i32 0, i32 4
  store i32 %conv, i32* %current, align 4, !tbaa !23
  %9 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current1 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %9, i32 0, i32 4
  %10 = load i32, i32* %current1, align 4, !tbaa !23
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current3 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %11, i32 0, i32 4
  store i32 -1, i32* %current3, align 4, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i8**, i8*** %buffer, align 8, !tbaa !1
  %13 = load i8*, i8** %12, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %12, align 8, !tbaa !1
  %14 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %14, i32 0, i32 5
  %15 = load i32, i32* %processed, align 4, !tbaa !14
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %processed, align 4, !tbaa !14
  %16 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %actually4 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %16, i32 0, i32 6
  %cached5 = bitcast %union.anon* %actually4 to i32*
  %17 = load i32, i32* %cached5, align 4, !tbaa !5
  %inc6 = add nsw i32 %17, 1
  store i32 %inc6, i32* %cached5, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32*, i32** %intPointer.addr, align 8, !tbaa !1
  %cmp7 = icmp ne i32* null, %18
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %19 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current10 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %19, i32 0, i32 4
  %20 = load i32, i32* %current10, align 4, !tbaa !23
  %21 = load i32*, i32** %intPointer.addr, align 8, !tbaa !1
  store i32 %20, i32* %21, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %22 = bitcast i8*** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @trio_vsscanf(i8* %buffer, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %0 = bitcast i8** %buffer.addr to i8*
  %1 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioScan(i8* %0, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamString, void (%struct._trio_class_t*)* null, i8* %1, %struct.__va_list_tag* %2, i8** null) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @trio_sscanfv(i8* %buffer, i8* %format, i8** %args) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  %0 = bitcast i8** %buffer.addr to i8*
  %1 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call = call i32 @TrioScan(i8* %0, i64 0, void (%struct._trio_class_t*, i32*)* @TrioInStreamString, void (%struct._trio_class_t*)* null, i8* %1, %struct.__va_list_tag* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @trio_sscanfv.unused, i32 0, i32 0), i8** %2) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i8* @trio_strerror(i32 %errorcode) #0 {
entry:
  %retval = alloca i8*, align 8
  %errorcode.addr = alloca i32, align 4
  store i32 %errorcode, i32* %errorcode.addr, align 4, !tbaa !5
  %0 = load i32, i32* %errorcode.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %0
  %and = and i32 %sub, 255
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.4
    i32 6, label %sw.bb.5
    i32 7, label %sw.bb.6
    i32 9, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @TrioParse(i32 %type, i8* %format, %struct.trio_parameter_t* %parameters, %struct.__va_list_tag* %arglist, i8** %argarray) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %parameters.addr = alloca %struct.trio_parameter_t*, align 8
  %arglist.addr = alloca %struct.__va_list_tag*, align 8
  %argarray.addr = alloca i8**, align 8
  %usedEntries = alloca [64 x i16], align 16
  %parameterPosition = alloca i32, align 4
  %maxParam = alloca i32, align 4
  %offset = alloca i32, align 4
  %positional = alloca i32, align 4
  %indices = alloca [64 x i32], align 16
  %pos = alloca i32, align 4
  %charlen = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %workParameter = alloca %struct.trio_parameter_t, align 16
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %varsize = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.trio_parameter_t* %parameters, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %arglist, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  store i8** %argarray, i8*** %argarray.addr, align 8, !tbaa !1
  %0 = bitcast [64 x i16]* %usedEntries to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast i32* %parameterPosition to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %maxParam to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -1, i32* %maxParam, align 4, !tbaa !5
  %3 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %positional to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [64 x i32]* %indices to i8*
  call void @llvm.lifetime.start(i64 256, i8* %5) #1
  %6 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %pos, align 4, !tbaa !5
  %7 = bitcast i32* %charlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1, i32* %i, align 4, !tbaa !5
  %10 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast %struct.trio_parameter_t* %workParameter to i8*
  call void @llvm.lifetime.start(i64 64, i8* %11) #1
  %12 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %usedEntries, i32 0, i32 0
  %13 = bitcast i16* %arraydecay to i8*
  %call = call i8* @memset(i8* %13, i32 0, i64 128) #9
  %call1 = call i32* @__errno_location() #11
  %14 = load i32, i32* %call1, align 4, !tbaa !5
  store i32 %14, i32* %save_errno, align 4, !tbaa !5
  store i32 0, i32* %offset, align 4, !tbaa !5
  store i32 0, i32* %parameterPosition, align 4, !tbaa !5
  %call2 = call i32 @mblen(i8* null, i64 0) #9
  store i32 %call2, i32* %charlen, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.188, %sw.default, %if.then.19, %cond.end, %entry
  %15 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @TrioInitializeParameter(%struct.trio_parameter_t* %workParameter) #8
  %18 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom3 = sext i32 %18 to i64
  %19 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %19, i64 %idxprom3
  %20 = load i8, i8* %arrayidx4, align 1, !tbaa !15
  %conv = sext i8 %20 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom6 = sext i32 %21 to i64
  %22 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %22, i64 %idxprom6
  %call8 = call i32 @mblen(i8* %arrayidx7, i64 16) #9
  store i32 %call8, i32* %charlen, align 4, !tbaa !5
  %23 = load i32, i32* %charlen, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %23, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %24 = load i32, i32* %charlen, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ 1, %cond.false ]
  %25 = load i32, i32* %offset, align 4, !tbaa !5
  %add = add nsw i32 %25, %cond
  store i32 %add, i32* %offset, align 4, !tbaa !5
  br label %while.cond

if.end:                                           ; preds = %while.body
  %26 = load i32, i32* %offset, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %offset, align 4, !tbaa !5
  %idxprom11 = sext i32 %26 to i64
  %27 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %27, i64 %idxprom11
  %28 = load i8, i8* %arrayidx12, align 1, !tbaa !15
  %conv13 = sext i8 %28 to i32
  switch i32 %conv13, label %sw.default [
    i32 37, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %29 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom14 = sext i32 %29 to i64
  %30 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %30, i64 %idxprom14
  %31 = load i8, i8* %arrayidx15, align 1, !tbaa !15
  %conv16 = sext i8 %31 to i32
  %cmp17 = icmp eq i32 37, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %sw.bb
  %32 = load i32, i32* %offset, align 4, !tbaa !5
  %inc20 = add nsw i32 %32, 1
  store i32 %inc20, i32* %offset, align 4, !tbaa !5
  br label %while.cond

if.end.21:                                        ; preds = %sw.bb
  %33 = load i32, i32* %type.addr, align 4, !tbaa !5
  %34 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %35 = load i32, i32* %offset, align 4, !tbaa !5
  %call22 = call i32 @TrioParseQualifiers(i32 %33, i8* %34, i32 %35, %struct.trio_parameter_t* %workParameter) #8
  store i32 %call22, i32* %status, align 4, !tbaa !5
  %36 = load i32, i32* %status, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %36, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %37 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %38 = load i32, i32* %type.addr, align 4, !tbaa !5
  %39 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %endOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 8
  %40 = load i32, i32* %endOffset, align 4, !tbaa !24
  %call27 = call i32 @TrioParseSpecifier(i32 %38, i8* %39, i32 %40, %struct.trio_parameter_t* %workParameter) #8
  store i32 %call27, i32* %status, align 4, !tbaa !5
  %41 = load i32, i32* %status, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %41, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  %42 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.26
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %while.cond

sw.epilog:                                        ; preds = %if.end.31
  %position = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  %43 = load i32, i32* %position, align 4, !tbaa !25
  %cmp32 = icmp ne i32 -1, %43
  %conv33 = zext i1 %cmp32 to i32
  store i32 %conv33, i32* %positional, align 4, !tbaa !5
  %flags = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 1
  %44 = load i64, i64* %flags, align 8, !tbaa !19
  %and34 = and i64 %44, 131072
  %tobool35 = icmp ne i64 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.72

if.then.36:                                       ; preds = %sw.epilog
  %width = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 2
  %45 = load i32, i32* %width, align 4, !tbaa !26
  %cmp37 = icmp eq i32 %45, 0
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.36
  %46 = load i32, i32* %parameterPosition, align 4, !tbaa !5
  %inc40 = add nsw i32 %46, 1
  store i32 %inc40, i32* %parameterPosition, align 4, !tbaa !5
  %width41 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 2
  store i32 %46, i32* %width41, align 4, !tbaa !26
  br label %if.end.48

if.else:                                          ; preds = %if.then.36
  %47 = load i32, i32* %positional, align 4, !tbaa !5
  %tobool42 = icmp ne i32 %47, 0
  br i1 %tobool42, label %if.end.47, label %if.then.43

if.then.43:                                       ; preds = %if.else
  %width44 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 2
  %48 = load i32, i32* %width44, align 4, !tbaa !26
  %add45 = add nsw i32 %48, 1
  %position46 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  store i32 %add45, i32* %position46, align 4, !tbaa !25
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.39
  %width49 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 2
  %49 = load i32, i32* %width49, align 4, !tbaa !26
  %idxprom50 = sext i32 %49 to i64
  %arrayidx51 = getelementptr inbounds [64 x i16], [64 x i16]* %usedEntries, i32 0, i64 %idxprom50
  %50 = load i16, i16* %arrayidx51, align 2, !tbaa !27
  %conv52 = zext i16 %50 to i32
  %add53 = add nsw i32 %conv52, 1
  %conv54 = trunc i32 %add53 to i16
  store i16 %conv54, i16* %arrayidx51, align 2, !tbaa !27
  %width55 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 2
  %51 = load i32, i32* %width55, align 4, !tbaa !26
  %52 = load i32, i32* %maxParam, align 4, !tbaa !5
  %cmp56 = icmp sgt i32 %51, %52
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.48
  %width59 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 2
  %53 = load i32, i32* %width59, align 4, !tbaa !26
  store i32 %53, i32* %maxParam, align 4, !tbaa !5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.48
  %54 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom61 = sext i32 %54 to i64
  %55 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %55, i64 %idxprom61
  %type63 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx62, i32 0, i32 0
  store i32 7, i32* %type63, align 4, !tbaa !29
  %56 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom64 = sext i32 %56 to i64
  %57 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %57, i64 %idxprom64
  %flags66 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx65, i32 0, i32 1
  store i64 0, i64* %flags66, align 8, !tbaa !19
  %58 = load i32, i32* %pos, align 4, !tbaa !5
  %width67 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 2
  %59 = load i32, i32* %width67, align 4, !tbaa !26
  %idxprom68 = sext i32 %59 to i64
  %arrayidx69 = getelementptr inbounds [64 x i32], [64 x i32]* %indices, i32 0, i64 %idxprom68
  store i32 %58, i32* %arrayidx69, align 4, !tbaa !5
  %60 = load i32, i32* %pos, align 4, !tbaa !5
  %inc70 = add nsw i32 %60, 1
  store i32 %inc70, i32* %pos, align 4, !tbaa !5
  %width71 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 2
  store i32 %60, i32* %width71, align 4, !tbaa !26
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.60, %sw.epilog
  %flags73 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 1
  %61 = load i64, i64* %flags73, align 8, !tbaa !19
  %and74 = and i64 %61, 524288
  %tobool75 = icmp ne i64 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.113

if.then.76:                                       ; preds = %if.end.72
  %precision = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 3
  %62 = load i32, i32* %precision, align 4, !tbaa !30
  %cmp77 = icmp eq i32 %62, -1
  br i1 %cmp77, label %if.then.79, label %if.else.82

if.then.79:                                       ; preds = %if.then.76
  %63 = load i32, i32* %parameterPosition, align 4, !tbaa !5
  %inc80 = add nsw i32 %63, 1
  store i32 %inc80, i32* %parameterPosition, align 4, !tbaa !5
  %precision81 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 3
  store i32 %63, i32* %precision81, align 4, !tbaa !30
  br label %if.end.89

if.else.82:                                       ; preds = %if.then.76
  %64 = load i32, i32* %positional, align 4, !tbaa !5
  %tobool83 = icmp ne i32 %64, 0
  br i1 %tobool83, label %if.end.88, label %if.then.84

if.then.84:                                       ; preds = %if.else.82
  %precision85 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 3
  %65 = load i32, i32* %precision85, align 4, !tbaa !30
  %add86 = add nsw i32 %65, 1
  %position87 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  store i32 %add86, i32* %position87, align 4, !tbaa !25
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.else.82
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.79
  %precision90 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 3
  %66 = load i32, i32* %precision90, align 4, !tbaa !30
  %idxprom91 = sext i32 %66 to i64
  %arrayidx92 = getelementptr inbounds [64 x i16], [64 x i16]* %usedEntries, i32 0, i64 %idxprom91
  %67 = load i16, i16* %arrayidx92, align 2, !tbaa !27
  %conv93 = zext i16 %67 to i32
  %add94 = add nsw i32 %conv93, 1
  %conv95 = trunc i32 %add94 to i16
  store i16 %conv95, i16* %arrayidx92, align 2, !tbaa !27
  %precision96 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 3
  %68 = load i32, i32* %precision96, align 4, !tbaa !30
  %69 = load i32, i32* %maxParam, align 4, !tbaa !5
  %cmp97 = icmp sgt i32 %68, %69
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.89
  %precision100 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 3
  %70 = load i32, i32* %precision100, align 4, !tbaa !30
  store i32 %70, i32* %maxParam, align 4, !tbaa !5
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.89
  %71 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom102 = sext i32 %71 to i64
  %72 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %72, i64 %idxprom102
  %type104 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx103, i32 0, i32 0
  store i32 7, i32* %type104, align 4, !tbaa !29
  %73 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom105 = sext i32 %73 to i64
  %74 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %74, i64 %idxprom105
  %flags107 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx106, i32 0, i32 1
  store i64 0, i64* %flags107, align 8, !tbaa !19
  %75 = load i32, i32* %pos, align 4, !tbaa !5
  %precision108 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 3
  %76 = load i32, i32* %precision108, align 4, !tbaa !30
  %idxprom109 = sext i32 %76 to i64
  %arrayidx110 = getelementptr inbounds [64 x i32], [64 x i32]* %indices, i32 0, i64 %idxprom109
  store i32 %75, i32* %arrayidx110, align 4, !tbaa !5
  %77 = load i32, i32* %pos, align 4, !tbaa !5
  %inc111 = add nsw i32 %77, 1
  store i32 %inc111, i32* %pos, align 4, !tbaa !5
  %precision112 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 3
  store i32 %77, i32* %precision112, align 4, !tbaa !30
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.101, %if.end.72
  %flags114 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 1
  %78 = load i64, i64* %flags114, align 8, !tbaa !19
  %and115 = and i64 %78, 2097152
  %tobool116 = icmp ne i64 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.154

if.then.117:                                      ; preds = %if.end.113
  %base = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  %79 = load i32, i32* %base, align 4, !tbaa !31
  %cmp118 = icmp eq i32 %79, -1
  br i1 %cmp118, label %if.then.120, label %if.else.123

if.then.120:                                      ; preds = %if.then.117
  %80 = load i32, i32* %parameterPosition, align 4, !tbaa !5
  %inc121 = add nsw i32 %80, 1
  store i32 %inc121, i32* %parameterPosition, align 4, !tbaa !5
  %base122 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  store i32 %80, i32* %base122, align 4, !tbaa !31
  br label %if.end.130

if.else.123:                                      ; preds = %if.then.117
  %81 = load i32, i32* %positional, align 4, !tbaa !5
  %tobool124 = icmp ne i32 %81, 0
  br i1 %tobool124, label %if.end.129, label %if.then.125

if.then.125:                                      ; preds = %if.else.123
  %base126 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  %82 = load i32, i32* %base126, align 4, !tbaa !31
  %add127 = add nsw i32 %82, 1
  %position128 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  store i32 %add127, i32* %position128, align 4, !tbaa !25
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %if.else.123
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.120
  %base131 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  %83 = load i32, i32* %base131, align 4, !tbaa !31
  %idxprom132 = sext i32 %83 to i64
  %arrayidx133 = getelementptr inbounds [64 x i16], [64 x i16]* %usedEntries, i32 0, i64 %idxprom132
  %84 = load i16, i16* %arrayidx133, align 2, !tbaa !27
  %conv134 = zext i16 %84 to i32
  %add135 = add nsw i32 %conv134, 1
  %conv136 = trunc i32 %add135 to i16
  store i16 %conv136, i16* %arrayidx133, align 2, !tbaa !27
  %base137 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  %85 = load i32, i32* %base137, align 4, !tbaa !31
  %86 = load i32, i32* %maxParam, align 4, !tbaa !5
  %cmp138 = icmp sgt i32 %85, %86
  br i1 %cmp138, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.end.130
  %base141 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  %87 = load i32, i32* %base141, align 4, !tbaa !31
  store i32 %87, i32* %maxParam, align 4, !tbaa !5
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.end.130
  %88 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom143 = sext i32 %88 to i64
  %89 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %89, i64 %idxprom143
  %type145 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx144, i32 0, i32 0
  store i32 7, i32* %type145, align 4, !tbaa !29
  %90 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom146 = sext i32 %90 to i64
  %91 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %91, i64 %idxprom146
  %flags148 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx147, i32 0, i32 1
  store i64 0, i64* %flags148, align 8, !tbaa !19
  %92 = load i32, i32* %pos, align 4, !tbaa !5
  %base149 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  %93 = load i32, i32* %base149, align 4, !tbaa !31
  %idxprom150 = sext i32 %93 to i64
  %arrayidx151 = getelementptr inbounds [64 x i32], [64 x i32]* %indices, i32 0, i64 %idxprom150
  store i32 %92, i32* %arrayidx151, align 4, !tbaa !5
  %94 = load i32, i32* %pos, align 4, !tbaa !5
  %inc152 = add nsw i32 %94, 1
  store i32 %inc152, i32* %pos, align 4, !tbaa !5
  %base153 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  store i32 %94, i32* %base153, align 4, !tbaa !31
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.142, %if.end.113
  %position155 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  %95 = load i32, i32* %position155, align 4, !tbaa !25
  %cmp156 = icmp eq i32 -1, %95
  br i1 %cmp156, label %if.then.158, label %if.end.161

if.then.158:                                      ; preds = %if.end.154
  %96 = load i32, i32* %parameterPosition, align 4, !tbaa !5
  %inc159 = add nsw i32 %96, 1
  store i32 %inc159, i32* %parameterPosition, align 4, !tbaa !5
  %position160 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  store i32 %96, i32* %position160, align 4, !tbaa !25
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %if.end.154
  %position162 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  %97 = load i32, i32* %position162, align 4, !tbaa !25
  %98 = load i32, i32* %maxParam, align 4, !tbaa !5
  %cmp163 = icmp sgt i32 %97, %98
  br i1 %cmp163, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %if.end.161
  %position166 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  %99 = load i32, i32* %position166, align 4, !tbaa !25
  store i32 %99, i32* %maxParam, align 4, !tbaa !5
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %if.end.161
  %position168 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  %100 = load i32, i32* %position168, align 4, !tbaa !25
  %cmp169 = icmp sge i32 %100, 64
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %if.end.167
  %101 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %101, 8
  %add172 = add nsw i32 3, %shl
  %sub = sub nsw i32 0, %add172
  store i32 %sub, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.173:                                       ; preds = %if.end.167
  %102 = load i32, i32* %pos, align 4, !tbaa !5
  %position174 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  %103 = load i32, i32* %position174, align 4, !tbaa !25
  %idxprom175 = sext i32 %103 to i64
  %arrayidx176 = getelementptr inbounds [64 x i32], [64 x i32]* %indices, i32 0, i64 %idxprom175
  store i32 %102, i32* %arrayidx176, align 4, !tbaa !5
  %position177 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 9
  %104 = load i32, i32* %position177, align 4, !tbaa !25
  %idxprom178 = sext i32 %104 to i64
  %arrayidx179 = getelementptr inbounds [64 x i16], [64 x i16]* %usedEntries, i32 0, i64 %idxprom178
  %105 = load i16, i16* %arrayidx179, align 2, !tbaa !27
  %conv180 = zext i16 %105 to i32
  %add181 = add nsw i32 %conv180, 1
  %conv182 = trunc i32 %add181 to i16
  store i16 %conv182, i16* %arrayidx179, align 2, !tbaa !27
  %base183 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  %106 = load i32, i32* %base183, align 4, !tbaa !31
  %cmp184 = icmp eq i32 %106, -1
  br i1 %cmp184, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %if.end.173
  %base187 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 4
  store i32 10, i32* %base187, align 4, !tbaa !31
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %if.end.173
  %endOffset189 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %workParameter, i32 0, i32 8
  %107 = load i32, i32* %endOffset189, align 4, !tbaa !24
  store i32 %107, i32* %offset, align 4, !tbaa !5
  %108 = load i32, i32* %pos, align 4, !tbaa !5
  %inc190 = add nsw i32 %108, 1
  store i32 %inc190, i32* %pos, align 4, !tbaa !5
  %idxprom191 = sext i32 %108 to i64
  %109 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %109, i64 %idxprom191
  call void @TrioCopyParameter(%struct.trio_parameter_t* %arrayidx192, %struct.trio_parameter_t* %workParameter) #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %110 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom193 = sext i32 %110 to i64
  %111 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %111, i64 %idxprom193
  %type195 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx194, i32 0, i32 0
  store i32 -1, i32* %type195, align 4, !tbaa !29
  %112 = load i32, i32* %offset, align 4, !tbaa !5
  %113 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom196 = sext i32 %113 to i64
  %114 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %114, i64 %idxprom196
  %beginOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx197, i32 0, i32 7
  store i32 %112, i32* %beginOffset, align 4, !tbaa !32
  store i32 0, i32* %num, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %115 = load i32, i32* %num, align 4, !tbaa !5
  %116 = load i32, i32* %maxParam, align 4, !tbaa !5
  %cmp198 = icmp sle i32 %115, %116
  br i1 %cmp198, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %117 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom200 = sext i32 %117 to i64
  %arrayidx201 = getelementptr inbounds [64 x i16], [64 x i16]* %usedEntries, i32 0, i64 %idxprom200
  %118 = load i16, i16* %arrayidx201, align 2, !tbaa !27
  %conv202 = zext i16 %118 to i32
  %cmp203 = icmp ne i32 %conv202, 1
  br i1 %cmp203, label %if.then.205, label %if.end.219

if.then.205:                                      ; preds = %for.body
  %119 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom206 = sext i32 %119 to i64
  %arrayidx207 = getelementptr inbounds [64 x i16], [64 x i16]* %usedEntries, i32 0, i64 %idxprom206
  %120 = load i16, i16* %arrayidx207, align 2, !tbaa !27
  %conv208 = zext i16 %120 to i32
  %cmp209 = icmp eq i32 %conv208, 0
  br i1 %cmp209, label %if.then.211, label %if.else.215

if.then.211:                                      ; preds = %if.then.205
  %121 = load i32, i32* %num, align 4, !tbaa !5
  %shl212 = shl i32 %121, 8
  %add213 = add nsw i32 5, %shl212
  %sub214 = sub nsw i32 0, %add213
  store i32 %sub214, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.215:                                      ; preds = %if.then.205
  %122 = load i32, i32* %num, align 4, !tbaa !5
  %shl216 = shl i32 %122, 8
  %add217 = add nsw i32 4, %shl216
  %sub218 = sub nsw i32 0, %add217
  store i32 %sub218, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.219:                                       ; preds = %for.body
  %123 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom220 = sext i32 %123 to i64
  %arrayidx221 = getelementptr inbounds [64 x i32], [64 x i32]* %indices, i32 0, i64 %idxprom220
  %124 = load i32, i32* %arrayidx221, align 4, !tbaa !5
  store i32 %124, i32* %i, align 4, !tbaa !5
  %125 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom222 = sext i32 %125 to i64
  %126 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %126, i64 %idxprom222
  %type224 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx223, i32 0, i32 0
  %127 = load i32, i32* %type224, align 4, !tbaa !29
  %cmp225 = icmp ne i32 %127, 7
  br i1 %cmp225, label %land.lhs.true, label %if.end.233

land.lhs.true:                                    ; preds = %if.end.219
  %128 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom227 = sext i32 %128 to i64
  %129 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %129, i64 %idxprom227
  %flags229 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx228, i32 0, i32 1
  %130 = load i64, i64* %flags229, align 8, !tbaa !19
  %and230 = and i64 %130, 67108864
  %tobool231 = icmp ne i64 %and230, 0
  br i1 %tobool231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %land.lhs.true
  br label %for.inc

if.end.233:                                       ; preds = %land.lhs.true, %if.end.219
  %131 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom234 = sext i32 %131 to i64
  %132 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %132, i64 %idxprom234
  %type236 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx235, i32 0, i32 0
  %133 = load i32, i32* %type236, align 4, !tbaa !29
  switch i32 %133, label %sw.default.821 [
    i32 8, label %sw.bb.237
    i32 4, label %sw.bb.237
    i32 5, label %sw.bb.248
    i32 6, label %sw.bb.248
    i32 0, label %sw.bb.248
    i32 3, label %sw.bb.271
    i32 1, label %sw.bb.271
    i32 7, label %sw.bb.608
    i32 2, label %sw.bb.666
    i32 9, label %sw.bb.817
  ]

sw.bb.237:                                        ; preds = %if.end.233, %if.end.233
  %134 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp238 = icmp eq i8** %134, null
  br i1 %cmp238, label %cond.true.240, label %cond.false.241

cond.true.240:                                    ; preds = %sw.bb.237
  %135 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %135, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %cond.true.240
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %135, i32 0, i32 3
  %reg_save_area = load i8*, i8** %136
  %137 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %138 = bitcast i8* %137 to i8**
  %139 = add i32 %gp_offset, 8
  store i32 %139, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %cond.true.240
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %135, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %140 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %138, %vaarg.in_reg ], [ %140, %vaarg.in_mem ]
  %141 = load i8*, i8** %vaarg.addr
  br label %cond.end.244

cond.false.241:                                   ; preds = %sw.bb.237
  %142 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom242 = sext i32 %142 to i64
  %143 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i8*, i8** %143, i64 %idxprom242
  %144 = load i8*, i8** %arrayidx243, align 8, !tbaa !1
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.241, %vaarg.end
  %cond245 = phi i8* [ %141, %vaarg.end ], [ %144, %cond.false.241 ]
  %145 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom246 = sext i32 %145 to i64
  %146 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %146, i64 %idxprom246
  %data = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx247, i32 0, i32 10
  %string = bitcast %union.anon.0* %data to i8**
  store i8* %cond245, i8** %string, align 8, !tbaa !1
  br label %sw.epilog.822

sw.bb.248:                                        ; preds = %if.end.233, %if.end.233, %if.end.233
  %147 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp249 = icmp eq i8** %147, null
  br i1 %cmp249, label %cond.true.251, label %cond.false.263

cond.true.251:                                    ; preds = %sw.bb.248
  %148 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p252 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %148, i32 0, i32 0
  %gp_offset253 = load i32, i32* %gp_offset_p252
  %fits_in_gp254 = icmp ule i32 %gp_offset253, 40
  br i1 %fits_in_gp254, label %vaarg.in_reg.255, label %vaarg.in_mem.257

vaarg.in_reg.255:                                 ; preds = %cond.true.251
  %149 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %148, i32 0, i32 3
  %reg_save_area256 = load i8*, i8** %149
  %150 = getelementptr i8, i8* %reg_save_area256, i32 %gp_offset253
  %151 = bitcast i8* %150 to i8**
  %152 = add i32 %gp_offset253, 8
  store i32 %152, i32* %gp_offset_p252
  br label %vaarg.end.261

vaarg.in_mem.257:                                 ; preds = %cond.true.251
  %overflow_arg_area_p258 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %148, i32 0, i32 2
  %overflow_arg_area259 = load i8*, i8** %overflow_arg_area_p258
  %153 = bitcast i8* %overflow_arg_area259 to i8**
  %overflow_arg_area.next260 = getelementptr i8, i8* %overflow_arg_area259, i32 8
  store i8* %overflow_arg_area.next260, i8** %overflow_arg_area_p258
  br label %vaarg.end.261

vaarg.end.261:                                    ; preds = %vaarg.in_mem.257, %vaarg.in_reg.255
  %vaarg.addr262 = phi i8** [ %151, %vaarg.in_reg.255 ], [ %153, %vaarg.in_mem.257 ]
  %154 = load i8*, i8** %vaarg.addr262
  br label %cond.end.266

cond.false.263:                                   ; preds = %sw.bb.248
  %155 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom264 = sext i32 %155 to i64
  %156 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i8*, i8** %156, i64 %idxprom264
  %157 = load i8*, i8** %arrayidx265, align 8, !tbaa !1
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.263, %vaarg.end.261
  %cond267 = phi i8* [ %154, %vaarg.end.261 ], [ %157, %cond.false.263 ]
  %158 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom268 = sext i32 %158 to i64
  %159 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %159, i64 %idxprom268
  %data270 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx269, i32 0, i32 10
  %pointer = bitcast %union.anon.0* %data270 to i8**
  store i8* %cond267, i8** %pointer, align 8, !tbaa !1
  br label %sw.epilog.822

sw.bb.271:                                        ; preds = %if.end.233, %if.end.233
  %160 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp272 = icmp eq i32 2, %160
  br i1 %cmp272, label %if.then.274, label %if.else.329

if.then.274:                                      ; preds = %sw.bb.271
  %161 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp275 = icmp eq i8** %161, null
  br i1 %cmp275, label %if.then.277, label %if.else.293

if.then.277:                                      ; preds = %if.then.274
  %162 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p278 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %162, i32 0, i32 0
  %gp_offset279 = load i32, i32* %gp_offset_p278
  %fits_in_gp280 = icmp ule i32 %gp_offset279, 40
  br i1 %fits_in_gp280, label %vaarg.in_reg.281, label %vaarg.in_mem.283

vaarg.in_reg.281:                                 ; preds = %if.then.277
  %163 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %162, i32 0, i32 3
  %reg_save_area282 = load i8*, i8** %163
  %164 = getelementptr i8, i8* %reg_save_area282, i32 %gp_offset279
  %165 = bitcast i8* %164 to i8**
  %166 = add i32 %gp_offset279, 8
  store i32 %166, i32* %gp_offset_p278
  br label %vaarg.end.287

vaarg.in_mem.283:                                 ; preds = %if.then.277
  %overflow_arg_area_p284 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %162, i32 0, i32 2
  %overflow_arg_area285 = load i8*, i8** %overflow_arg_area_p284
  %167 = bitcast i8* %overflow_arg_area285 to i8**
  %overflow_arg_area.next286 = getelementptr i8, i8* %overflow_arg_area285, i32 8
  store i8* %overflow_arg_area.next286, i8** %overflow_arg_area_p284
  br label %vaarg.end.287

vaarg.end.287:                                    ; preds = %vaarg.in_mem.283, %vaarg.in_reg.281
  %vaarg.addr288 = phi i8** [ %165, %vaarg.in_reg.281 ], [ %167, %vaarg.in_mem.283 ]
  %168 = load i8*, i8** %vaarg.addr288
  %169 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom289 = sext i32 %169 to i64
  %170 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %170, i64 %idxprom289
  %data291 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx290, i32 0, i32 10
  %pointer292 = bitcast %union.anon.0* %data291 to i8**
  store i8* %168, i8** %pointer292, align 8, !tbaa !1
  br label %if.end.328

if.else.293:                                      ; preds = %if.then.274
  %171 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom294 = sext i32 %171 to i64
  %172 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx295 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %172, i64 %idxprom294
  %type296 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx295, i32 0, i32 0
  %173 = load i32, i32* %type296, align 4, !tbaa !29
  %cmp297 = icmp eq i32 %173, 3
  br i1 %cmp297, label %if.then.299, label %if.else.306

if.then.299:                                      ; preds = %if.else.293
  %174 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom300 = sext i32 %174 to i64
  %175 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds i8*, i8** %175, i64 %idxprom300
  %176 = load i8*, i8** %arrayidx301, align 8, !tbaa !1
  %177 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom302 = sext i32 %177 to i64
  %178 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %178, i64 %idxprom302
  %data304 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx303, i32 0, i32 10
  %pointer305 = bitcast %union.anon.0* %data304 to i8**
  store i8* %176, i8** %pointer305, align 8, !tbaa !1
  br label %if.end.327

if.else.306:                                      ; preds = %if.else.293
  %179 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom307 = sext i32 %179 to i64
  %180 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %180, i64 %idxprom307
  %flags309 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx308, i32 0, i32 1
  %181 = load i64, i64* %flags309, align 8, !tbaa !19
  %and310 = and i64 %181, 32
  %tobool311 = icmp ne i64 %and310, 0
  br i1 %tobool311, label %if.then.312, label %if.else.319

if.then.312:                                      ; preds = %if.else.306
  %182 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom313 = sext i32 %182 to i64
  %183 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx314 = getelementptr inbounds i8*, i8** %183, i64 %idxprom313
  %184 = load i8*, i8** %arrayidx314, align 8, !tbaa !1
  %185 = bitcast i8* %184 to i16*
  %186 = bitcast i16* %185 to i8*
  %187 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom315 = sext i32 %187 to i64
  %188 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx316 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %188, i64 %idxprom315
  %data317 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx316, i32 0, i32 10
  %pointer318 = bitcast %union.anon.0* %data317 to i8**
  store i8* %186, i8** %pointer318, align 8, !tbaa !1
  br label %if.end.326

if.else.319:                                      ; preds = %if.else.306
  %189 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom320 = sext i32 %189 to i64
  %190 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx321 = getelementptr inbounds i8*, i8** %190, i64 %idxprom320
  %191 = load i8*, i8** %arrayidx321, align 8, !tbaa !1
  %192 = bitcast i8* %191 to i32*
  %193 = bitcast i32* %192 to i8*
  %194 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom322 = sext i32 %194 to i64
  %195 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx323 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %195, i64 %idxprom322
  %data324 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx323, i32 0, i32 10
  %pointer325 = bitcast %union.anon.0* %data324 to i8**
  store i8* %193, i8** %pointer325, align 8, !tbaa !1
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.319, %if.then.312
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.299
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %vaarg.end.287
  br label %if.end.607

if.else.329:                                      ; preds = %sw.bb.271
  %196 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom330 = sext i32 %196 to i64
  %197 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %197, i64 %idxprom330
  %flags332 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx331, i32 0, i32 1
  %198 = load i64, i64* %flags332, align 8, !tbaa !19
  %and333 = and i64 %198, 805306368
  %tobool334 = icmp ne i64 %and333, 0
  br i1 %tobool334, label %if.then.335, label %if.end.384

if.then.335:                                      ; preds = %if.else.329
  %199 = bitcast i32* %varsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #1
  %200 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom336 = sext i32 %200 to i64
  %201 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %201, i64 %idxprom336
  %flags338 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx337, i32 0, i32 1
  %202 = load i64, i64* %flags338, align 8, !tbaa !19
  %and339 = and i64 %202, 268435456
  %tobool340 = icmp ne i64 %and339, 0
  br i1 %tobool340, label %if.then.341, label %if.else.349

if.then.341:                                      ; preds = %if.then.335
  %203 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom342 = sext i32 %203 to i64
  %204 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx343 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %204, i64 %idxprom342
  %varsize344 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx343, i32 0, i32 6
  %205 = load i32, i32* %varsize344, align 4, !tbaa !33
  %idxprom345 = sext i32 %205 to i64
  %206 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx346 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %206, i64 %idxprom345
  %data347 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx346, i32 0, i32 10
  %number = bitcast %union.anon.0* %data347 to %union.anon.1*
  %as_unsigned = bitcast %union.anon.1* %number to i64*
  %207 = load i64, i64* %as_unsigned, align 8, !tbaa !7
  %conv348 = trunc i64 %207 to i32
  store i32 %conv348, i32* %varsize, align 4, !tbaa !5
  br label %if.end.353

if.else.349:                                      ; preds = %if.then.335
  %208 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom350 = sext i32 %208 to i64
  %209 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx351 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %209, i64 %idxprom350
  %varsize352 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx351, i32 0, i32 6
  %210 = load i32, i32* %varsize352, align 4, !tbaa !33
  store i32 %210, i32* %varsize, align 4, !tbaa !5
  br label %if.end.353

if.end.353:                                       ; preds = %if.else.349, %if.then.341
  %211 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom354 = sext i32 %211 to i64
  %212 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx355 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %212, i64 %idxprom354
  %flags356 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx355, i32 0, i32 1
  %213 = load i64, i64* %flags356, align 8, !tbaa !19
  %and357 = and i64 %213, -7553
  store i64 %and357, i64* %flags356, align 8, !tbaa !19
  %214 = load i32, i32* %varsize, align 4, !tbaa !5
  %cmp358 = icmp sle i32 %214, 4
  br i1 %cmp358, label %if.then.360, label %if.else.361

if.then.360:                                      ; preds = %if.end.353
  br label %if.end.383

if.else.361:                                      ; preds = %if.end.353
  %215 = load i32, i32* %varsize, align 4, !tbaa !5
  %cmp362 = icmp sle i32 %215, 8
  br i1 %cmp362, label %if.then.364, label %if.else.368

if.then.364:                                      ; preds = %if.else.361
  %216 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom365 = sext i32 %216 to i64
  %217 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx366 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %217, i64 %idxprom365
  %flags367 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx366, i32 0, i32 1
  %218 = load i64, i64* %flags367, align 8, !tbaa !19
  %or = or i64 %218, 128
  store i64 %or, i64* %flags367, align 8, !tbaa !19
  br label %if.end.382

if.else.368:                                      ; preds = %if.else.361
  %219 = load i32, i32* %varsize, align 4, !tbaa !5
  %cmp369 = icmp sle i32 %219, 8
  br i1 %cmp369, label %if.then.371, label %if.else.376

if.then.371:                                      ; preds = %if.else.368
  %220 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom372 = sext i32 %220 to i64
  %221 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx373 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %221, i64 %idxprom372
  %flags374 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx373, i32 0, i32 1
  %222 = load i64, i64* %flags374, align 8, !tbaa !19
  %or375 = or i64 %222, 256
  store i64 %or375, i64* %flags374, align 8, !tbaa !19
  br label %if.end.381

if.else.376:                                      ; preds = %if.else.368
  %223 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom377 = sext i32 %223 to i64
  %224 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %224, i64 %idxprom377
  %flags379 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx378, i32 0, i32 1
  %225 = load i64, i64* %flags379, align 8, !tbaa !19
  %or380 = or i64 %225, 4096
  store i64 %or380, i64* %flags379, align 8, !tbaa !19
  br label %if.end.381

if.end.381:                                       ; preds = %if.else.376, %if.then.371
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.then.364
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %if.then.360
  %226 = bitcast i32* %varsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %if.else.329
  %227 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom385 = sext i32 %227 to i64
  %228 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx386 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %228, i64 %idxprom385
  %flags387 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx386, i32 0, i32 1
  %229 = load i64, i64* %flags387, align 8, !tbaa !19
  %and388 = and i64 %229, 1024
  %tobool389 = icmp ne i64 %and388, 0
  br i1 %tobool389, label %if.then.390, label %if.else.415

if.then.390:                                      ; preds = %if.end.384
  %230 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp391 = icmp eq i8** %230, null
  br i1 %cmp391, label %cond.true.393, label %cond.false.405

cond.true.393:                                    ; preds = %if.then.390
  %231 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p394 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %231, i32 0, i32 0
  %gp_offset395 = load i32, i32* %gp_offset_p394
  %fits_in_gp396 = icmp ule i32 %gp_offset395, 40
  br i1 %fits_in_gp396, label %vaarg.in_reg.397, label %vaarg.in_mem.399

vaarg.in_reg.397:                                 ; preds = %cond.true.393
  %232 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %231, i32 0, i32 3
  %reg_save_area398 = load i8*, i8** %232
  %233 = getelementptr i8, i8* %reg_save_area398, i32 %gp_offset395
  %234 = bitcast i8* %233 to i64*
  %235 = add i32 %gp_offset395, 8
  store i32 %235, i32* %gp_offset_p394
  br label %vaarg.end.403

vaarg.in_mem.399:                                 ; preds = %cond.true.393
  %overflow_arg_area_p400 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %231, i32 0, i32 2
  %overflow_arg_area401 = load i8*, i8** %overflow_arg_area_p400
  %236 = bitcast i8* %overflow_arg_area401 to i64*
  %overflow_arg_area.next402 = getelementptr i8, i8* %overflow_arg_area401, i32 8
  store i8* %overflow_arg_area.next402, i8** %overflow_arg_area_p400
  br label %vaarg.end.403

vaarg.end.403:                                    ; preds = %vaarg.in_mem.399, %vaarg.in_reg.397
  %vaarg.addr404 = phi i64* [ %234, %vaarg.in_reg.397 ], [ %236, %vaarg.in_mem.399 ]
  %237 = load i64, i64* %vaarg.addr404
  br label %cond.end.408

cond.false.405:                                   ; preds = %if.then.390
  %238 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom406 = sext i32 %238 to i64
  %239 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx407 = getelementptr inbounds i8*, i8** %239, i64 %idxprom406
  %240 = load i8*, i8** %arrayidx407, align 8, !tbaa !1
  %241 = bitcast i8* %240 to i64*
  %242 = load i64, i64* %241, align 8, !tbaa !7
  br label %cond.end.408

cond.end.408:                                     ; preds = %cond.false.405, %vaarg.end.403
  %cond409 = phi i64 [ %237, %vaarg.end.403 ], [ %242, %cond.false.405 ]
  %243 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom410 = sext i32 %243 to i64
  %244 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx411 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %244, i64 %idxprom410
  %data412 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx411, i32 0, i32 10
  %number413 = bitcast %union.anon.0* %data412 to %union.anon.1*
  %as_unsigned414 = bitcast %union.anon.1* %number413 to i64*
  store i64 %cond409, i64* %as_unsigned414, align 8, !tbaa !7
  br label %if.end.606

if.else.415:                                      ; preds = %if.end.384
  %245 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom416 = sext i32 %245 to i64
  %246 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx417 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %246, i64 %idxprom416
  %flags418 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx417, i32 0, i32 1
  %247 = load i64, i64* %flags418, align 8, !tbaa !19
  %and419 = and i64 %247, 2048
  %tobool420 = icmp ne i64 %and419, 0
  br i1 %tobool420, label %if.then.421, label %if.else.446

if.then.421:                                      ; preds = %if.else.415
  %248 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp422 = icmp eq i8** %248, null
  br i1 %cmp422, label %cond.true.424, label %cond.false.436

cond.true.424:                                    ; preds = %if.then.421
  %249 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p425 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %249, i32 0, i32 0
  %gp_offset426 = load i32, i32* %gp_offset_p425
  %fits_in_gp427 = icmp ule i32 %gp_offset426, 40
  br i1 %fits_in_gp427, label %vaarg.in_reg.428, label %vaarg.in_mem.430

vaarg.in_reg.428:                                 ; preds = %cond.true.424
  %250 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %249, i32 0, i32 3
  %reg_save_area429 = load i8*, i8** %250
  %251 = getelementptr i8, i8* %reg_save_area429, i32 %gp_offset426
  %252 = bitcast i8* %251 to i64*
  %253 = add i32 %gp_offset426, 8
  store i32 %253, i32* %gp_offset_p425
  br label %vaarg.end.434

vaarg.in_mem.430:                                 ; preds = %cond.true.424
  %overflow_arg_area_p431 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %249, i32 0, i32 2
  %overflow_arg_area432 = load i8*, i8** %overflow_arg_area_p431
  %254 = bitcast i8* %overflow_arg_area432 to i64*
  %overflow_arg_area.next433 = getelementptr i8, i8* %overflow_arg_area432, i32 8
  store i8* %overflow_arg_area.next433, i8** %overflow_arg_area_p431
  br label %vaarg.end.434

vaarg.end.434:                                    ; preds = %vaarg.in_mem.430, %vaarg.in_reg.428
  %vaarg.addr435 = phi i64* [ %252, %vaarg.in_reg.428 ], [ %254, %vaarg.in_mem.430 ]
  %255 = load i64, i64* %vaarg.addr435
  br label %cond.end.439

cond.false.436:                                   ; preds = %if.then.421
  %256 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom437 = sext i32 %256 to i64
  %257 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx438 = getelementptr inbounds i8*, i8** %257, i64 %idxprom437
  %258 = load i8*, i8** %arrayidx438, align 8, !tbaa !1
  %259 = bitcast i8* %258 to i64*
  %260 = load i64, i64* %259, align 8, !tbaa !7
  br label %cond.end.439

cond.end.439:                                     ; preds = %cond.false.436, %vaarg.end.434
  %cond440 = phi i64 [ %255, %vaarg.end.434 ], [ %260, %cond.false.436 ]
  %261 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom441 = sext i32 %261 to i64
  %262 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx442 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %262, i64 %idxprom441
  %data443 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx442, i32 0, i32 10
  %number444 = bitcast %union.anon.0* %data443 to %union.anon.1*
  %as_unsigned445 = bitcast %union.anon.1* %number444 to i64*
  store i64 %cond440, i64* %as_unsigned445, align 8, !tbaa !7
  br label %if.end.605

if.else.446:                                      ; preds = %if.else.415
  %263 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom447 = sext i32 %263 to i64
  %264 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx448 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %264, i64 %idxprom447
  %flags449 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx448, i32 0, i32 1
  %265 = load i64, i64* %flags449, align 8, !tbaa !19
  %and450 = and i64 %265, 4096
  %tobool451 = icmp ne i64 %and450, 0
  br i1 %tobool451, label %if.then.452, label %if.else.477

if.then.452:                                      ; preds = %if.else.446
  %266 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp453 = icmp eq i8** %266, null
  br i1 %cmp453, label %cond.true.455, label %cond.false.467

cond.true.455:                                    ; preds = %if.then.452
  %267 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p456 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %267, i32 0, i32 0
  %gp_offset457 = load i32, i32* %gp_offset_p456
  %fits_in_gp458 = icmp ule i32 %gp_offset457, 40
  br i1 %fits_in_gp458, label %vaarg.in_reg.459, label %vaarg.in_mem.461

vaarg.in_reg.459:                                 ; preds = %cond.true.455
  %268 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %267, i32 0, i32 3
  %reg_save_area460 = load i8*, i8** %268
  %269 = getelementptr i8, i8* %reg_save_area460, i32 %gp_offset457
  %270 = bitcast i8* %269 to i64*
  %271 = add i32 %gp_offset457, 8
  store i32 %271, i32* %gp_offset_p456
  br label %vaarg.end.465

vaarg.in_mem.461:                                 ; preds = %cond.true.455
  %overflow_arg_area_p462 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %267, i32 0, i32 2
  %overflow_arg_area463 = load i8*, i8** %overflow_arg_area_p462
  %272 = bitcast i8* %overflow_arg_area463 to i64*
  %overflow_arg_area.next464 = getelementptr i8, i8* %overflow_arg_area463, i32 8
  store i8* %overflow_arg_area.next464, i8** %overflow_arg_area_p462
  br label %vaarg.end.465

vaarg.end.465:                                    ; preds = %vaarg.in_mem.461, %vaarg.in_reg.459
  %vaarg.addr466 = phi i64* [ %270, %vaarg.in_reg.459 ], [ %272, %vaarg.in_mem.461 ]
  %273 = load i64, i64* %vaarg.addr466
  br label %cond.end.470

cond.false.467:                                   ; preds = %if.then.452
  %274 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom468 = sext i32 %274 to i64
  %275 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx469 = getelementptr inbounds i8*, i8** %275, i64 %idxprom468
  %276 = load i8*, i8** %arrayidx469, align 8, !tbaa !1
  %277 = bitcast i8* %276 to i64*
  %278 = load i64, i64* %277, align 8, !tbaa !7
  br label %cond.end.470

cond.end.470:                                     ; preds = %cond.false.467, %vaarg.end.465
  %cond471 = phi i64 [ %273, %vaarg.end.465 ], [ %278, %cond.false.467 ]
  %279 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom472 = sext i32 %279 to i64
  %280 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx473 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %280, i64 %idxprom472
  %data474 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx473, i32 0, i32 10
  %number475 = bitcast %union.anon.0* %data474 to %union.anon.1*
  %as_unsigned476 = bitcast %union.anon.1* %number475 to i64*
  store i64 %cond471, i64* %as_unsigned476, align 8, !tbaa !7
  br label %if.end.604

if.else.477:                                      ; preds = %if.else.446
  %281 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom478 = sext i32 %281 to i64
  %282 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx479 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %282, i64 %idxprom478
  %flags480 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx479, i32 0, i32 1
  %283 = load i64, i64* %flags480, align 8, !tbaa !19
  %and481 = and i64 %283, 256
  %tobool482 = icmp ne i64 %and481, 0
  br i1 %tobool482, label %if.then.483, label %if.else.508

if.then.483:                                      ; preds = %if.else.477
  %284 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp484 = icmp eq i8** %284, null
  br i1 %cmp484, label %cond.true.486, label %cond.false.498

cond.true.486:                                    ; preds = %if.then.483
  %285 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p487 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %285, i32 0, i32 0
  %gp_offset488 = load i32, i32* %gp_offset_p487
  %fits_in_gp489 = icmp ule i32 %gp_offset488, 40
  br i1 %fits_in_gp489, label %vaarg.in_reg.490, label %vaarg.in_mem.492

vaarg.in_reg.490:                                 ; preds = %cond.true.486
  %286 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %285, i32 0, i32 3
  %reg_save_area491 = load i8*, i8** %286
  %287 = getelementptr i8, i8* %reg_save_area491, i32 %gp_offset488
  %288 = bitcast i8* %287 to i64*
  %289 = add i32 %gp_offset488, 8
  store i32 %289, i32* %gp_offset_p487
  br label %vaarg.end.496

vaarg.in_mem.492:                                 ; preds = %cond.true.486
  %overflow_arg_area_p493 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %285, i32 0, i32 2
  %overflow_arg_area494 = load i8*, i8** %overflow_arg_area_p493
  %290 = bitcast i8* %overflow_arg_area494 to i64*
  %overflow_arg_area.next495 = getelementptr i8, i8* %overflow_arg_area494, i32 8
  store i8* %overflow_arg_area.next495, i8** %overflow_arg_area_p493
  br label %vaarg.end.496

vaarg.end.496:                                    ; preds = %vaarg.in_mem.492, %vaarg.in_reg.490
  %vaarg.addr497 = phi i64* [ %288, %vaarg.in_reg.490 ], [ %290, %vaarg.in_mem.492 ]
  %291 = load i64, i64* %vaarg.addr497
  br label %cond.end.501

cond.false.498:                                   ; preds = %if.then.483
  %292 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom499 = sext i32 %292 to i64
  %293 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx500 = getelementptr inbounds i8*, i8** %293, i64 %idxprom499
  %294 = load i8*, i8** %arrayidx500, align 8, !tbaa !1
  %295 = bitcast i8* %294 to i64*
  %296 = load i64, i64* %295, align 8, !tbaa !34
  br label %cond.end.501

cond.end.501:                                     ; preds = %cond.false.498, %vaarg.end.496
  %cond502 = phi i64 [ %291, %vaarg.end.496 ], [ %296, %cond.false.498 ]
  %297 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom503 = sext i32 %297 to i64
  %298 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx504 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %298, i64 %idxprom503
  %data505 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx504, i32 0, i32 10
  %number506 = bitcast %union.anon.0* %data505 to %union.anon.1*
  %as_unsigned507 = bitcast %union.anon.1* %number506 to i64*
  store i64 %cond502, i64* %as_unsigned507, align 8, !tbaa !7
  br label %if.end.603

if.else.508:                                      ; preds = %if.else.477
  %299 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom509 = sext i32 %299 to i64
  %300 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx510 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %300, i64 %idxprom509
  %flags511 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx510, i32 0, i32 1
  %301 = load i64, i64* %flags511, align 8, !tbaa !19
  %and512 = and i64 %301, 128
  %tobool513 = icmp ne i64 %and512, 0
  br i1 %tobool513, label %if.then.514, label %if.else.539

if.then.514:                                      ; preds = %if.else.508
  %302 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp515 = icmp eq i8** %302, null
  br i1 %cmp515, label %cond.true.517, label %cond.false.529

cond.true.517:                                    ; preds = %if.then.514
  %303 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p518 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %303, i32 0, i32 0
  %gp_offset519 = load i32, i32* %gp_offset_p518
  %fits_in_gp520 = icmp ule i32 %gp_offset519, 40
  br i1 %fits_in_gp520, label %vaarg.in_reg.521, label %vaarg.in_mem.523

vaarg.in_reg.521:                                 ; preds = %cond.true.517
  %304 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %303, i32 0, i32 3
  %reg_save_area522 = load i8*, i8** %304
  %305 = getelementptr i8, i8* %reg_save_area522, i32 %gp_offset519
  %306 = bitcast i8* %305 to i64*
  %307 = add i32 %gp_offset519, 8
  store i32 %307, i32* %gp_offset_p518
  br label %vaarg.end.527

vaarg.in_mem.523:                                 ; preds = %cond.true.517
  %overflow_arg_area_p524 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %303, i32 0, i32 2
  %overflow_arg_area525 = load i8*, i8** %overflow_arg_area_p524
  %308 = bitcast i8* %overflow_arg_area525 to i64*
  %overflow_arg_area.next526 = getelementptr i8, i8* %overflow_arg_area525, i32 8
  store i8* %overflow_arg_area.next526, i8** %overflow_arg_area_p524
  br label %vaarg.end.527

vaarg.end.527:                                    ; preds = %vaarg.in_mem.523, %vaarg.in_reg.521
  %vaarg.addr528 = phi i64* [ %306, %vaarg.in_reg.521 ], [ %308, %vaarg.in_mem.523 ]
  %309 = load i64, i64* %vaarg.addr528
  br label %cond.end.532

cond.false.529:                                   ; preds = %if.then.514
  %310 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom530 = sext i32 %310 to i64
  %311 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx531 = getelementptr inbounds i8*, i8** %311, i64 %idxprom530
  %312 = load i8*, i8** %arrayidx531, align 8, !tbaa !1
  %313 = bitcast i8* %312 to i64*
  %314 = load i64, i64* %313, align 8, !tbaa !7
  br label %cond.end.532

cond.end.532:                                     ; preds = %cond.false.529, %vaarg.end.527
  %cond533 = phi i64 [ %309, %vaarg.end.527 ], [ %314, %cond.false.529 ]
  %315 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom534 = sext i32 %315 to i64
  %316 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx535 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %316, i64 %idxprom534
  %data536 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx535, i32 0, i32 10
  %number537 = bitcast %union.anon.0* %data536 to %union.anon.1*
  %as_unsigned538 = bitcast %union.anon.1* %number537 to i64*
  store i64 %cond533, i64* %as_unsigned538, align 8, !tbaa !7
  br label %if.end.602

if.else.539:                                      ; preds = %if.else.508
  %317 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp540 = icmp eq i8** %317, null
  br i1 %cmp540, label %if.then.542, label %if.else.560

if.then.542:                                      ; preds = %if.else.539
  %318 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p543 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %318, i32 0, i32 0
  %gp_offset544 = load i32, i32* %gp_offset_p543
  %fits_in_gp545 = icmp ule i32 %gp_offset544, 40
  br i1 %fits_in_gp545, label %vaarg.in_reg.546, label %vaarg.in_mem.548

vaarg.in_reg.546:                                 ; preds = %if.then.542
  %319 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %318, i32 0, i32 3
  %reg_save_area547 = load i8*, i8** %319
  %320 = getelementptr i8, i8* %reg_save_area547, i32 %gp_offset544
  %321 = bitcast i8* %320 to i32*
  %322 = add i32 %gp_offset544, 8
  store i32 %322, i32* %gp_offset_p543
  br label %vaarg.end.552

vaarg.in_mem.548:                                 ; preds = %if.then.542
  %overflow_arg_area_p549 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %318, i32 0, i32 2
  %overflow_arg_area550 = load i8*, i8** %overflow_arg_area_p549
  %323 = bitcast i8* %overflow_arg_area550 to i32*
  %overflow_arg_area.next551 = getelementptr i8, i8* %overflow_arg_area550, i32 8
  store i8* %overflow_arg_area.next551, i8** %overflow_arg_area_p549
  br label %vaarg.end.552

vaarg.end.552:                                    ; preds = %vaarg.in_mem.548, %vaarg.in_reg.546
  %vaarg.addr553 = phi i32* [ %321, %vaarg.in_reg.546 ], [ %323, %vaarg.in_mem.548 ]
  %324 = load i32, i32* %vaarg.addr553
  %conv554 = sext i32 %324 to i64
  %325 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom555 = sext i32 %325 to i64
  %326 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx556 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %326, i64 %idxprom555
  %data557 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx556, i32 0, i32 10
  %number558 = bitcast %union.anon.0* %data557 to %union.anon.1*
  %as_unsigned559 = bitcast %union.anon.1* %number558 to i64*
  store i64 %conv554, i64* %as_unsigned559, align 8, !tbaa !7
  br label %if.end.601

if.else.560:                                      ; preds = %if.else.539
  %327 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom561 = sext i32 %327 to i64
  %328 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx562 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %328, i64 %idxprom561
  %type563 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx562, i32 0, i32 0
  %329 = load i32, i32* %type563, align 4, !tbaa !29
  %cmp564 = icmp eq i32 %329, 3
  br i1 %cmp564, label %if.then.566, label %if.else.575

if.then.566:                                      ; preds = %if.else.560
  %330 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom567 = sext i32 %330 to i64
  %331 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx568 = getelementptr inbounds i8*, i8** %331, i64 %idxprom567
  %332 = load i8*, i8** %arrayidx568, align 8, !tbaa !1
  %333 = load i8, i8* %332, align 1, !tbaa !15
  %conv569 = sext i8 %333 to i64
  %334 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom570 = sext i32 %334 to i64
  %335 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx571 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %335, i64 %idxprom570
  %data572 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx571, i32 0, i32 10
  %number573 = bitcast %union.anon.0* %data572 to %union.anon.1*
  %as_unsigned574 = bitcast %union.anon.1* %number573 to i64*
  store i64 %conv569, i64* %as_unsigned574, align 8, !tbaa !7
  br label %if.end.600

if.else.575:                                      ; preds = %if.else.560
  %336 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom576 = sext i32 %336 to i64
  %337 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx577 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %337, i64 %idxprom576
  %flags578 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx577, i32 0, i32 1
  %338 = load i64, i64* %flags578, align 8, !tbaa !19
  %and579 = and i64 %338, 32
  %tobool580 = icmp ne i64 %and579, 0
  br i1 %tobool580, label %if.then.581, label %if.else.590

if.then.581:                                      ; preds = %if.else.575
  %339 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom582 = sext i32 %339 to i64
  %340 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx583 = getelementptr inbounds i8*, i8** %340, i64 %idxprom582
  %341 = load i8*, i8** %arrayidx583, align 8, !tbaa !1
  %342 = bitcast i8* %341 to i16*
  %343 = load i16, i16* %342, align 2, !tbaa !27
  %conv584 = sext i16 %343 to i64
  %344 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom585 = sext i32 %344 to i64
  %345 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx586 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %345, i64 %idxprom585
  %data587 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx586, i32 0, i32 10
  %number588 = bitcast %union.anon.0* %data587 to %union.anon.1*
  %as_unsigned589 = bitcast %union.anon.1* %number588 to i64*
  store i64 %conv584, i64* %as_unsigned589, align 8, !tbaa !7
  br label %if.end.599

if.else.590:                                      ; preds = %if.else.575
  %346 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom591 = sext i32 %346 to i64
  %347 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx592 = getelementptr inbounds i8*, i8** %347, i64 %idxprom591
  %348 = load i8*, i8** %arrayidx592, align 8, !tbaa !1
  %349 = bitcast i8* %348 to i32*
  %350 = load i32, i32* %349, align 4, !tbaa !5
  %conv593 = sext i32 %350 to i64
  %351 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom594 = sext i32 %351 to i64
  %352 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx595 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %352, i64 %idxprom594
  %data596 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx595, i32 0, i32 10
  %number597 = bitcast %union.anon.0* %data596 to %union.anon.1*
  %as_unsigned598 = bitcast %union.anon.1* %number597 to i64*
  store i64 %conv593, i64* %as_unsigned598, align 8, !tbaa !7
  br label %if.end.599

if.end.599:                                       ; preds = %if.else.590, %if.then.581
  br label %if.end.600

if.end.600:                                       ; preds = %if.end.599, %if.then.566
  br label %if.end.601

if.end.601:                                       ; preds = %if.end.600, %vaarg.end.552
  br label %if.end.602

if.end.602:                                       ; preds = %if.end.601, %cond.end.532
  br label %if.end.603

if.end.603:                                       ; preds = %if.end.602, %cond.end.501
  br label %if.end.604

if.end.604:                                       ; preds = %if.end.603, %cond.end.470
  br label %if.end.605

if.end.605:                                       ; preds = %if.end.604, %cond.end.439
  br label %if.end.606

if.end.606:                                       ; preds = %if.end.605, %cond.end.408
  br label %if.end.607

if.end.607:                                       ; preds = %if.end.606, %if.end.328
  br label %sw.epilog.822

sw.bb.608:                                        ; preds = %if.end.233
  %353 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom609 = sext i32 %353 to i64
  %354 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx610 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %354, i64 %idxprom609
  %flags611 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx610, i32 0, i32 1
  %355 = load i64, i64* %flags611, align 8, !tbaa !19
  %and612 = and i64 %355, 67108864
  %tobool613 = icmp ne i64 %and612, 0
  br i1 %tobool613, label %if.then.614, label %if.else.638

if.then.614:                                      ; preds = %sw.bb.608
  %356 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp615 = icmp eq i8** %356, null
  br i1 %cmp615, label %cond.true.617, label %cond.false.629

cond.true.617:                                    ; preds = %if.then.614
  %357 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p618 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %357, i32 0, i32 0
  %gp_offset619 = load i32, i32* %gp_offset_p618
  %fits_in_gp620 = icmp ule i32 %gp_offset619, 40
  br i1 %fits_in_gp620, label %vaarg.in_reg.621, label %vaarg.in_mem.623

vaarg.in_reg.621:                                 ; preds = %cond.true.617
  %358 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %357, i32 0, i32 3
  %reg_save_area622 = load i8*, i8** %358
  %359 = getelementptr i8, i8* %reg_save_area622, i32 %gp_offset619
  %360 = bitcast i8* %359 to i8**
  %361 = add i32 %gp_offset619, 8
  store i32 %361, i32* %gp_offset_p618
  br label %vaarg.end.627

vaarg.in_mem.623:                                 ; preds = %cond.true.617
  %overflow_arg_area_p624 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %357, i32 0, i32 2
  %overflow_arg_area625 = load i8*, i8** %overflow_arg_area_p624
  %362 = bitcast i8* %overflow_arg_area625 to i8**
  %overflow_arg_area.next626 = getelementptr i8, i8* %overflow_arg_area625, i32 8
  store i8* %overflow_arg_area.next626, i8** %overflow_arg_area_p624
  br label %vaarg.end.627

vaarg.end.627:                                    ; preds = %vaarg.in_mem.623, %vaarg.in_reg.621
  %vaarg.addr628 = phi i8** [ %360, %vaarg.in_reg.621 ], [ %362, %vaarg.in_mem.623 ]
  %363 = load i8*, i8** %vaarg.addr628
  br label %cond.end.632

cond.false.629:                                   ; preds = %if.then.614
  %364 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom630 = sext i32 %364 to i64
  %365 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx631 = getelementptr inbounds i8*, i8** %365, i64 %idxprom630
  %366 = load i8*, i8** %arrayidx631, align 8, !tbaa !1
  br label %cond.end.632

cond.end.632:                                     ; preds = %cond.false.629, %vaarg.end.627
  %cond633 = phi i8* [ %363, %vaarg.end.627 ], [ %366, %cond.false.629 ]
  %367 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom634 = sext i32 %367 to i64
  %368 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx635 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %368, i64 %idxprom634
  %data636 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx635, i32 0, i32 10
  %pointer637 = bitcast %union.anon.0* %data636 to i8**
  store i8* %cond633, i8** %pointer637, align 8, !tbaa !1
  br label %if.end.665

if.else.638:                                      ; preds = %sw.bb.608
  %369 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp639 = icmp eq i8** %369, null
  br i1 %cmp639, label %cond.true.641, label %cond.false.654

cond.true.641:                                    ; preds = %if.else.638
  %370 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p642 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %370, i32 0, i32 0
  %gp_offset643 = load i32, i32* %gp_offset_p642
  %fits_in_gp644 = icmp ule i32 %gp_offset643, 40
  br i1 %fits_in_gp644, label %vaarg.in_reg.645, label %vaarg.in_mem.647

vaarg.in_reg.645:                                 ; preds = %cond.true.641
  %371 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %370, i32 0, i32 3
  %reg_save_area646 = load i8*, i8** %371
  %372 = getelementptr i8, i8* %reg_save_area646, i32 %gp_offset643
  %373 = bitcast i8* %372 to i32*
  %374 = add i32 %gp_offset643, 8
  store i32 %374, i32* %gp_offset_p642
  br label %vaarg.end.651

vaarg.in_mem.647:                                 ; preds = %cond.true.641
  %overflow_arg_area_p648 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %370, i32 0, i32 2
  %overflow_arg_area649 = load i8*, i8** %overflow_arg_area_p648
  %375 = bitcast i8* %overflow_arg_area649 to i32*
  %overflow_arg_area.next650 = getelementptr i8, i8* %overflow_arg_area649, i32 8
  store i8* %overflow_arg_area.next650, i8** %overflow_arg_area_p648
  br label %vaarg.end.651

vaarg.end.651:                                    ; preds = %vaarg.in_mem.647, %vaarg.in_reg.645
  %vaarg.addr652 = phi i32* [ %373, %vaarg.in_reg.645 ], [ %375, %vaarg.in_mem.647 ]
  %376 = load i32, i32* %vaarg.addr652
  %conv653 = sext i32 %376 to i64
  br label %cond.end.658

cond.false.654:                                   ; preds = %if.else.638
  %377 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom655 = sext i32 %377 to i64
  %378 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx656 = getelementptr inbounds i8*, i8** %378, i64 %idxprom655
  %379 = load i8*, i8** %arrayidx656, align 8, !tbaa !1
  %380 = bitcast i8* %379 to i32*
  %381 = load i32, i32* %380, align 4, !tbaa !5
  %conv657 = sext i32 %381 to i64
  br label %cond.end.658

cond.end.658:                                     ; preds = %cond.false.654, %vaarg.end.651
  %cond659 = phi i64 [ %conv653, %vaarg.end.651 ], [ %conv657, %cond.false.654 ]
  %382 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom660 = sext i32 %382 to i64
  %383 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx661 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %383, i64 %idxprom660
  %data662 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx661, i32 0, i32 10
  %number663 = bitcast %union.anon.0* %data662 to %union.anon.1*
  %as_unsigned664 = bitcast %union.anon.1* %number663 to i64*
  store i64 %cond659, i64* %as_unsigned664, align 8, !tbaa !7
  br label %if.end.665

if.end.665:                                       ; preds = %cond.end.658, %cond.end.632
  br label %sw.epilog.822

sw.bb.666:                                        ; preds = %if.end.233
  %384 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp667 = icmp eq i32 2, %384
  br i1 %cmp667, label %if.then.669, label %if.else.753

if.then.669:                                      ; preds = %sw.bb.666
  %385 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom670 = sext i32 %385 to i64
  %386 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx671 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %386, i64 %idxprom670
  %flags672 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx671, i32 0, i32 1
  %387 = load i64, i64* %flags672, align 8, !tbaa !19
  %and673 = and i64 %387, 512
  %tobool674 = icmp ne i64 %and673, 0
  br i1 %tobool674, label %if.then.675, label %if.else.698

if.then.675:                                      ; preds = %if.then.669
  %388 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp676 = icmp eq i8** %388, null
  br i1 %cmp676, label %cond.true.678, label %cond.false.690

cond.true.678:                                    ; preds = %if.then.675
  %389 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p679 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %389, i32 0, i32 0
  %gp_offset680 = load i32, i32* %gp_offset_p679
  %fits_in_gp681 = icmp ule i32 %gp_offset680, 40
  br i1 %fits_in_gp681, label %vaarg.in_reg.682, label %vaarg.in_mem.684

vaarg.in_reg.682:                                 ; preds = %cond.true.678
  %390 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %389, i32 0, i32 3
  %reg_save_area683 = load i8*, i8** %390
  %391 = getelementptr i8, i8* %reg_save_area683, i32 %gp_offset680
  %392 = bitcast i8* %391 to x86_fp80**
  %393 = add i32 %gp_offset680, 8
  store i32 %393, i32* %gp_offset_p679
  br label %vaarg.end.688

vaarg.in_mem.684:                                 ; preds = %cond.true.678
  %overflow_arg_area_p685 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %389, i32 0, i32 2
  %overflow_arg_area686 = load i8*, i8** %overflow_arg_area_p685
  %394 = bitcast i8* %overflow_arg_area686 to x86_fp80**
  %overflow_arg_area.next687 = getelementptr i8, i8* %overflow_arg_area686, i32 8
  store i8* %overflow_arg_area.next687, i8** %overflow_arg_area_p685
  br label %vaarg.end.688

vaarg.end.688:                                    ; preds = %vaarg.in_mem.684, %vaarg.in_reg.682
  %vaarg.addr689 = phi x86_fp80** [ %392, %vaarg.in_reg.682 ], [ %394, %vaarg.in_mem.684 ]
  %395 = load x86_fp80*, x86_fp80** %vaarg.addr689
  br label %cond.end.693

cond.false.690:                                   ; preds = %if.then.675
  %396 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom691 = sext i32 %396 to i64
  %397 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx692 = getelementptr inbounds i8*, i8** %397, i64 %idxprom691
  %398 = load i8*, i8** %arrayidx692, align 8, !tbaa !1
  %399 = bitcast i8* %398 to x86_fp80*
  br label %cond.end.693

cond.end.693:                                     ; preds = %cond.false.690, %vaarg.end.688
  %cond694 = phi x86_fp80* [ %395, %vaarg.end.688 ], [ %399, %cond.false.690 ]
  %400 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom695 = sext i32 %400 to i64
  %401 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx696 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %401, i64 %idxprom695
  %data697 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx696, i32 0, i32 10
  %longdoublePointer = bitcast %union.anon.0* %data697 to x86_fp80**
  store x86_fp80* %cond694, x86_fp80** %longdoublePointer, align 8, !tbaa !1
  br label %if.end.752

if.else.698:                                      ; preds = %if.then.669
  %402 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom699 = sext i32 %402 to i64
  %403 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx700 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %403, i64 %idxprom699
  %flags701 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx700, i32 0, i32 1
  %404 = load i64, i64* %flags701, align 8, !tbaa !19
  %and702 = and i64 %404, 128
  %tobool703 = icmp ne i64 %and702, 0
  br i1 %tobool703, label %if.then.704, label %if.else.727

if.then.704:                                      ; preds = %if.else.698
  %405 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp705 = icmp eq i8** %405, null
  br i1 %cmp705, label %cond.true.707, label %cond.false.719

cond.true.707:                                    ; preds = %if.then.704
  %406 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p708 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %406, i32 0, i32 0
  %gp_offset709 = load i32, i32* %gp_offset_p708
  %fits_in_gp710 = icmp ule i32 %gp_offset709, 40
  br i1 %fits_in_gp710, label %vaarg.in_reg.711, label %vaarg.in_mem.713

vaarg.in_reg.711:                                 ; preds = %cond.true.707
  %407 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %406, i32 0, i32 3
  %reg_save_area712 = load i8*, i8** %407
  %408 = getelementptr i8, i8* %reg_save_area712, i32 %gp_offset709
  %409 = bitcast i8* %408 to double**
  %410 = add i32 %gp_offset709, 8
  store i32 %410, i32* %gp_offset_p708
  br label %vaarg.end.717

vaarg.in_mem.713:                                 ; preds = %cond.true.707
  %overflow_arg_area_p714 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %406, i32 0, i32 2
  %overflow_arg_area715 = load i8*, i8** %overflow_arg_area_p714
  %411 = bitcast i8* %overflow_arg_area715 to double**
  %overflow_arg_area.next716 = getelementptr i8, i8* %overflow_arg_area715, i32 8
  store i8* %overflow_arg_area.next716, i8** %overflow_arg_area_p714
  br label %vaarg.end.717

vaarg.end.717:                                    ; preds = %vaarg.in_mem.713, %vaarg.in_reg.711
  %vaarg.addr718 = phi double** [ %409, %vaarg.in_reg.711 ], [ %411, %vaarg.in_mem.713 ]
  %412 = load double*, double** %vaarg.addr718
  br label %cond.end.722

cond.false.719:                                   ; preds = %if.then.704
  %413 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom720 = sext i32 %413 to i64
  %414 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx721 = getelementptr inbounds i8*, i8** %414, i64 %idxprom720
  %415 = load i8*, i8** %arrayidx721, align 8, !tbaa !1
  %416 = bitcast i8* %415 to double*
  br label %cond.end.722

cond.end.722:                                     ; preds = %cond.false.719, %vaarg.end.717
  %cond723 = phi double* [ %412, %vaarg.end.717 ], [ %416, %cond.false.719 ]
  %417 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom724 = sext i32 %417 to i64
  %418 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx725 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %418, i64 %idxprom724
  %data726 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx725, i32 0, i32 10
  %doublePointer = bitcast %union.anon.0* %data726 to double**
  store double* %cond723, double** %doublePointer, align 8, !tbaa !1
  br label %if.end.751

if.else.727:                                      ; preds = %if.else.698
  %419 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp728 = icmp eq i8** %419, null
  br i1 %cmp728, label %cond.true.730, label %cond.false.742

cond.true.730:                                    ; preds = %if.else.727
  %420 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %gp_offset_p731 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %420, i32 0, i32 0
  %gp_offset732 = load i32, i32* %gp_offset_p731
  %fits_in_gp733 = icmp ule i32 %gp_offset732, 40
  br i1 %fits_in_gp733, label %vaarg.in_reg.734, label %vaarg.in_mem.736

vaarg.in_reg.734:                                 ; preds = %cond.true.730
  %421 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %420, i32 0, i32 3
  %reg_save_area735 = load i8*, i8** %421
  %422 = getelementptr i8, i8* %reg_save_area735, i32 %gp_offset732
  %423 = bitcast i8* %422 to float**
  %424 = add i32 %gp_offset732, 8
  store i32 %424, i32* %gp_offset_p731
  br label %vaarg.end.740

vaarg.in_mem.736:                                 ; preds = %cond.true.730
  %overflow_arg_area_p737 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %420, i32 0, i32 2
  %overflow_arg_area738 = load i8*, i8** %overflow_arg_area_p737
  %425 = bitcast i8* %overflow_arg_area738 to float**
  %overflow_arg_area.next739 = getelementptr i8, i8* %overflow_arg_area738, i32 8
  store i8* %overflow_arg_area.next739, i8** %overflow_arg_area_p737
  br label %vaarg.end.740

vaarg.end.740:                                    ; preds = %vaarg.in_mem.736, %vaarg.in_reg.734
  %vaarg.addr741 = phi float** [ %423, %vaarg.in_reg.734 ], [ %425, %vaarg.in_mem.736 ]
  %426 = load float*, float** %vaarg.addr741
  %427 = bitcast float* %426 to double*
  br label %cond.end.745

cond.false.742:                                   ; preds = %if.else.727
  %428 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom743 = sext i32 %428 to i64
  %429 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx744 = getelementptr inbounds i8*, i8** %429, i64 %idxprom743
  %430 = load i8*, i8** %arrayidx744, align 8, !tbaa !1
  %431 = bitcast i8* %430 to float*
  %432 = bitcast float* %431 to double*
  br label %cond.end.745

cond.end.745:                                     ; preds = %cond.false.742, %vaarg.end.740
  %cond746 = phi double* [ %427, %vaarg.end.740 ], [ %432, %cond.false.742 ]
  %433 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom747 = sext i32 %433 to i64
  %434 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx748 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %434, i64 %idxprom747
  %data749 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx748, i32 0, i32 10
  %doublePointer750 = bitcast %union.anon.0* %data749 to double**
  store double* %cond746, double** %doublePointer750, align 8, !tbaa !1
  br label %if.end.751

if.end.751:                                       ; preds = %cond.end.745, %cond.end.722
  br label %if.end.752

if.end.752:                                       ; preds = %if.end.751, %cond.end.693
  br label %if.end.816

if.else.753:                                      ; preds = %sw.bb.666
  %435 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom754 = sext i32 %435 to i64
  %436 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx755 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %436, i64 %idxprom754
  %flags756 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx755, i32 0, i32 1
  %437 = load i64, i64* %flags756, align 8, !tbaa !19
  %and757 = and i64 %437, 512
  %tobool758 = icmp ne i64 %and757, 0
  br i1 %tobool758, label %if.then.759, label %if.else.774

if.then.759:                                      ; preds = %if.else.753
  %438 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp760 = icmp eq i8** %438, null
  br i1 %cmp760, label %cond.true.762, label %cond.false.766

cond.true.762:                                    ; preds = %if.then.759
  %439 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %overflow_arg_area_p763 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %439, i32 0, i32 2
  %overflow_arg_area764 = load i8*, i8** %overflow_arg_area_p763
  %440 = getelementptr i8, i8* %overflow_arg_area764, i64 15
  %441 = ptrtoint i8* %440 to i64
  %442 = and i64 %441, -16
  %overflow_arg_area.align = inttoptr i64 %442 to i8*
  %443 = bitcast i8* %overflow_arg_area.align to x86_fp80*
  %overflow_arg_area.next765 = getelementptr i8, i8* %overflow_arg_area.align, i32 16
  store i8* %overflow_arg_area.next765, i8** %overflow_arg_area_p763
  %444 = load x86_fp80, x86_fp80* %443
  br label %cond.end.769

cond.false.766:                                   ; preds = %if.then.759
  %445 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom767 = sext i32 %445 to i64
  %446 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx768 = getelementptr inbounds i8*, i8** %446, i64 %idxprom767
  %447 = load i8*, i8** %arrayidx768, align 8, !tbaa !1
  %448 = bitcast i8* %447 to x86_fp80*
  %449 = load x86_fp80, x86_fp80* %448, align 16, !tbaa !36
  br label %cond.end.769

cond.end.769:                                     ; preds = %cond.false.766, %cond.true.762
  %cond770 = phi x86_fp80 [ %444, %cond.true.762 ], [ %449, %cond.false.766 ]
  %450 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom771 = sext i32 %450 to i64
  %451 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx772 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %451, i64 %idxprom771
  %data773 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx772, i32 0, i32 10
  %longdoubleNumber = bitcast %union.anon.0* %data773 to x86_fp80*
  store x86_fp80 %cond770, x86_fp80* %longdoubleNumber, align 16, !tbaa !36
  br label %if.end.815

if.else.774:                                      ; preds = %if.else.753
  %452 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %cmp775 = icmp eq i8** %452, null
  br i1 %cmp775, label %if.then.777, label %if.else.791

if.then.777:                                      ; preds = %if.else.774
  %453 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arglist.addr, align 8, !tbaa !1
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %453, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.778, label %vaarg.in_mem.780

vaarg.in_reg.778:                                 ; preds = %if.then.777
  %454 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %453, i32 0, i32 3
  %reg_save_area779 = load i8*, i8** %454
  %455 = getelementptr i8, i8* %reg_save_area779, i32 %fp_offset
  %456 = bitcast i8* %455 to double*
  %457 = add i32 %fp_offset, 16
  store i32 %457, i32* %fp_offset_p
  br label %vaarg.end.784

vaarg.in_mem.780:                                 ; preds = %if.then.777
  %overflow_arg_area_p781 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %453, i32 0, i32 2
  %overflow_arg_area782 = load i8*, i8** %overflow_arg_area_p781
  %458 = bitcast i8* %overflow_arg_area782 to double*
  %overflow_arg_area.next783 = getelementptr i8, i8* %overflow_arg_area782, i32 8
  store i8* %overflow_arg_area.next783, i8** %overflow_arg_area_p781
  br label %vaarg.end.784

vaarg.end.784:                                    ; preds = %vaarg.in_mem.780, %vaarg.in_reg.778
  %vaarg.addr785 = phi double* [ %456, %vaarg.in_reg.778 ], [ %458, %vaarg.in_mem.780 ]
  %459 = load double, double* %vaarg.addr785
  %conv786 = fpext double %459 to x86_fp80
  %460 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom787 = sext i32 %460 to i64
  %461 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx788 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %461, i64 %idxprom787
  %data789 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx788, i32 0, i32 10
  %longdoubleNumber790 = bitcast %union.anon.0* %data789 to x86_fp80*
  store x86_fp80 %conv786, x86_fp80* %longdoubleNumber790, align 16, !tbaa !36
  br label %if.end.814

if.else.791:                                      ; preds = %if.else.774
  %462 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom792 = sext i32 %462 to i64
  %463 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx793 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %463, i64 %idxprom792
  %flags794 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx793, i32 0, i32 1
  %464 = load i64, i64* %flags794, align 8, !tbaa !19
  %and795 = and i64 %464, 32
  %tobool796 = icmp ne i64 %and795, 0
  br i1 %tobool796, label %if.then.797, label %if.else.805

if.then.797:                                      ; preds = %if.else.791
  %465 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom798 = sext i32 %465 to i64
  %466 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx799 = getelementptr inbounds i8*, i8** %466, i64 %idxprom798
  %467 = load i8*, i8** %arrayidx799, align 8, !tbaa !1
  %468 = bitcast i8* %467 to float*
  %469 = load float, float* %468, align 4, !tbaa !38
  %conv800 = fpext float %469 to x86_fp80
  %470 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom801 = sext i32 %470 to i64
  %471 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx802 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %471, i64 %idxprom801
  %data803 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx802, i32 0, i32 10
  %longdoubleNumber804 = bitcast %union.anon.0* %data803 to x86_fp80*
  store x86_fp80 %conv800, x86_fp80* %longdoubleNumber804, align 16, !tbaa !36
  br label %if.end.813

if.else.805:                                      ; preds = %if.else.791
  %472 = load i32, i32* %num, align 4, !tbaa !5
  %idxprom806 = sext i32 %472 to i64
  %473 = load i8**, i8*** %argarray.addr, align 8, !tbaa !1
  %arrayidx807 = getelementptr inbounds i8*, i8** %473, i64 %idxprom806
  %474 = load i8*, i8** %arrayidx807, align 8, !tbaa !1
  %475 = bitcast i8* %474 to double*
  %476 = load double, double* %475, align 8, !tbaa !40
  %conv808 = fpext double %476 to x86_fp80
  %477 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom809 = sext i32 %477 to i64
  %478 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx810 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %478, i64 %idxprom809
  %data811 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx810, i32 0, i32 10
  %longdoubleNumber812 = bitcast %union.anon.0* %data811 to x86_fp80*
  store x86_fp80 %conv808, x86_fp80* %longdoubleNumber812, align 16, !tbaa !36
  br label %if.end.813

if.end.813:                                       ; preds = %if.else.805, %if.then.797
  br label %if.end.814

if.end.814:                                       ; preds = %if.end.813, %vaarg.end.784
  br label %if.end.815

if.end.815:                                       ; preds = %if.end.814, %cond.end.769
  br label %if.end.816

if.end.816:                                       ; preds = %if.end.815, %if.end.752
  br label %sw.epilog.822

sw.bb.817:                                        ; preds = %if.end.233
  %479 = load i32, i32* %save_errno, align 4, !tbaa !5
  %480 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom818 = sext i32 %480 to i64
  %481 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx819 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %481, i64 %idxprom818
  %data820 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx819, i32 0, i32 10
  %errorNumber = bitcast %union.anon.0* %data820 to i32*
  store i32 %479, i32* %errorNumber, align 4, !tbaa !5
  br label %sw.epilog.822

sw.default.821:                                   ; preds = %if.end.233
  br label %sw.epilog.822

sw.epilog.822:                                    ; preds = %sw.default.821, %sw.bb.817, %if.end.816, %if.end.665, %if.end.607, %cond.end.266, %cond.end.244
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.822, %if.then.232
  %482 = load i32, i32* %num, align 4, !tbaa !5
  %inc823 = add nsw i32 %482, 1
  store i32 %inc823, i32* %num, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %483 = load i32, i32* %num, align 4, !tbaa !5
  store i32 %483, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.215, %if.then.211, %if.then.171, %if.then.30, %if.then.25
  %484 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %484) #1
  %485 = bitcast %struct.trio_parameter_t* %workParameter to i8*
  call void @llvm.lifetime.end(i64 64, i8* %485) #1
  %486 = bitcast i32* %num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %487) #1
  %488 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %488) #1
  %489 = bitcast i32* %charlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %489) #1
  %490 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %490) #1
  %491 = bitcast [64 x i32]* %indices to i8*
  call void @llvm.lifetime.end(i64 256, i8* %491) #1
  %492 = bitcast i32* %positional to i8*
  call void @llvm.lifetime.end(i64 4, i8* %492) #1
  %493 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %493) #1
  %494 = bitcast i32* %maxParam to i8*
  call void @llvm.lifetime.end(i64 4, i8* %494) #1
  %495 = bitcast i32* %parameterPosition to i8*
  call void @llvm.lifetime.end(i64 4, i8* %495) #1
  %496 = bitcast [64 x i16]* %usedEntries to i8*
  call void @llvm.lifetime.end(i64 128, i8* %496) #1
  %497 = load i32, i32* %retval
  ret i32 %497
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioFormatProcess(%struct._trio_class_t* %data, i8* %format, %struct.trio_parameter_t* %parameters) #0 {
entry:
  %data.addr = alloca %struct._trio_class_t*, align 8
  %format.addr = alloca i8*, align 8
  %parameters.addr = alloca %struct.trio_parameter_t*, align 8
  %i = alloca i32, align 4
  %string = alloca i8*, align 8
  %pointer = alloca i8*, align 8
  %flags = alloca i64, align 8
  %width = alloca i32, align 4
  %precision = alloca i32, align 4
  %base = alloca i32, align 4
  %offset = alloca i32, align 4
  %reference = alloca %struct._trio_reference_t, align 8
  store %struct._trio_class_t* %data, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.trio_parameter_t* %parameters, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %string to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %pointer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %precision to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %base to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %offset, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %9, i64 %idxprom
  %type = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %type, align 4, !tbaa !29
  %cmp = icmp eq i32 %10, 7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.end
  %12 = load i32, i32* %offset, align 4, !tbaa !5
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %13 to i64
  %14 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %14, i64 %idxprom2
  %beginOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx3, i32 0, i32 7
  %15 = load i32, i32* %beginOffset, align 4, !tbaa !32
  %cmp4 = icmp slt i32 %12, %15
  br i1 %cmp4, label %while.body.5, label %while.end.23

while.body.5:                                     ; preds = %while.cond.1
  %16 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom6 = sext i32 %16 to i64
  %17 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %17, i64 %idxprom6
  %18 = load i8, i8* %arrayidx7, align 1, !tbaa !15
  %conv = sext i8 %18 to i32
  %cmp8 = icmp eq i32 37, %conv
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body.5
  %19 = load i32, i32* %offset, align 4, !tbaa !5
  %add = add nsw i32 %19, 1
  %idxprom10 = sext i32 %add to i64
  %20 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 %idxprom10
  %21 = load i8, i8* %arrayidx11, align 1, !tbaa !15
  %conv12 = sext i8 %21 to i32
  %cmp13 = icmp eq i32 37, %conv12
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %22 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %OutStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %22, i32 0, i32 0
  %OutStream15 = bitcast {}** %OutStream to void (%struct._trio_class_t*, i32)**
  %23 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream15, align 8, !tbaa !9
  %24 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  call void %23(%struct._trio_class_t* %24, i32 37) #8
  %25 = load i32, i32* %offset, align 4, !tbaa !5
  %add16 = add nsw i32 %25, 2
  store i32 %add16, i32* %offset, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body.5
  %26 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %OutStream17 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %26, i32 0, i32 0
  %OutStream18 = bitcast {}** %OutStream17 to void (%struct._trio_class_t*, i32)**
  %27 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream18, align 8, !tbaa !9
  %28 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %29 = load i32, i32* %offset, align 4, !tbaa !5
  %inc19 = add nsw i32 %29, 1
  store i32 %inc19, i32* %offset, align 4, !tbaa !5
  %idxprom20 = sext i32 %29 to i64
  %30 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %30, i64 %idxprom20
  %31 = load i8, i8* %arrayidx21, align 1, !tbaa !15
  %conv22 = sext i8 %31 to i32
  call void %27(%struct._trio_class_t* %28, i32 %conv22) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond.1

while.end.23:                                     ; preds = %while.cond.1
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %32 to i64
  %33 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %33, i64 %idxprom24
  %type26 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx25, i32 0, i32 0
  %34 = load i32, i32* %type26, align 4, !tbaa !29
  %cmp27 = icmp eq i32 %34, -1
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.end.23
  br label %for.end

if.end.30:                                        ; preds = %while.end.23
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %35 to i64
  %36 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %36, i64 %idxprom31
  %flags33 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx32, i32 0, i32 1
  %37 = load i64, i64* %flags33, align 8, !tbaa !19
  store i64 %37, i64* %flags, align 8, !tbaa !7
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %38 to i64
  %39 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %39, i64 %idxprom34
  %width36 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx35, i32 0, i32 2
  %40 = load i32, i32* %width36, align 4, !tbaa !26
  store i32 %40, i32* %width, align 4, !tbaa !5
  %41 = load i64, i64* %flags, align 8, !tbaa !7
  %and = and i64 %41, 131072
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %if.end.30
  %42 = load i32, i32* %width, align 4, !tbaa !5
  %idxprom38 = sext i32 %42 to i64
  %43 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %43, i64 %idxprom38
  %data40 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx39, i32 0, i32 10
  %number = bitcast %union.anon.0* %data40 to %union.anon.1*
  %as_signed = bitcast %union.anon.1* %number to i64*
  %44 = load i64, i64* %as_signed, align 8, !tbaa !7
  %conv41 = trunc i64 %44 to i32
  store i32 %conv41, i32* %width, align 4, !tbaa !5
  %45 = load i32, i32* %width, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %45, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.37
  %46 = load i64, i64* %flags, align 8, !tbaa !7
  %or = or i64 %46, 8
  store i64 %or, i64* %flags, align 8, !tbaa !7
  %47 = load i64, i64* %flags, align 8, !tbaa !7
  %and45 = and i64 %47, -8193
  store i64 %and45, i64* %flags, align 8, !tbaa !7
  %48 = load i32, i32* %width, align 4, !tbaa !5
  %sub = sub nsw i32 0, %48
  store i32 %sub, i32* %width, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.37
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.30
  %49 = load i64, i64* %flags, align 8, !tbaa !7
  %and48 = and i64 %49, 262144
  %tobool49 = icmp ne i64 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.else.68

if.then.50:                                       ; preds = %if.end.47
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %50 to i64
  %51 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %51, i64 %idxprom51
  %precision53 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx52, i32 0, i32 3
  %52 = load i32, i32* %precision53, align 4, !tbaa !30
  store i32 %52, i32* %precision, align 4, !tbaa !5
  %53 = load i64, i64* %flags, align 8, !tbaa !7
  %and54 = and i64 %53, 524288
  %tobool55 = icmp ne i64 %and54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.67

if.then.56:                                       ; preds = %if.then.50
  %54 = load i32, i32* %precision, align 4, !tbaa !5
  %idxprom57 = sext i32 %54 to i64
  %55 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %55, i64 %idxprom57
  %data59 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx58, i32 0, i32 10
  %number60 = bitcast %union.anon.0* %data59 to %union.anon.1*
  %as_signed61 = bitcast %union.anon.1* %number60 to i64*
  %56 = load i64, i64* %as_signed61, align 8, !tbaa !7
  %conv62 = trunc i64 %56 to i32
  store i32 %conv62, i32* %precision, align 4, !tbaa !5
  %57 = load i32, i32* %precision, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %57, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.56
  store i32 -1, i32* %precision, align 4, !tbaa !5
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.56
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.50
  br label %if.end.69

if.else.68:                                       ; preds = %if.end.47
  store i32 -1, i32* %precision, align 4, !tbaa !5
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.end.67
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %58 to i64
  %59 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %59, i64 %idxprom70
  %baseSpecifier = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx71, i32 0, i32 5
  %60 = load i32, i32* %baseSpecifier, align 4, !tbaa !42
  %cmp72 = icmp ne i32 -1, %60
  br i1 %cmp72, label %if.then.74, label %if.else.78

if.then.74:                                       ; preds = %if.end.69
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %61 to i64
  %62 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %62, i64 %idxprom75
  %baseSpecifier77 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx76, i32 0, i32 5
  %63 = load i32, i32* %baseSpecifier77, align 4, !tbaa !42
  store i32 %63, i32* %base, align 4, !tbaa !5
  br label %if.end.96

if.else.78:                                       ; preds = %if.end.69
  %64 = load i64, i64* %flags, align 8, !tbaa !7
  %and79 = and i64 %64, 2097152
  %tobool80 = icmp ne i64 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.91

if.then.81:                                       ; preds = %if.else.78
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %65 to i64
  %66 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %66, i64 %idxprom82
  %base84 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx83, i32 0, i32 4
  %67 = load i32, i32* %base84, align 4, !tbaa !31
  store i32 %67, i32* %base, align 4, !tbaa !5
  %68 = load i32, i32* %base, align 4, !tbaa !5
  %idxprom85 = sext i32 %68 to i64
  %69 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %69, i64 %idxprom85
  %data87 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx86, i32 0, i32 10
  %number88 = bitcast %union.anon.0* %data87 to %union.anon.1*
  %as_signed89 = bitcast %union.anon.1* %number88 to i64*
  %70 = load i64, i64* %as_signed89, align 8, !tbaa !7
  %conv90 = trunc i64 %70 to i32
  store i32 %conv90, i32* %base, align 4, !tbaa !5
  br label %if.end.95

if.else.91:                                       ; preds = %if.else.78
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %71 to i64
  %72 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %72, i64 %idxprom92
  %base94 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx93, i32 0, i32 4
  %73 = load i32, i32* %base94, align 4, !tbaa !31
  store i32 %73, i32* %base, align 4, !tbaa !5
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.91, %if.then.81
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.74
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom97 = sext i32 %74 to i64
  %75 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %75, i64 %idxprom97
  %type99 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx98, i32 0, i32 0
  %76 = load i32, i32* %type99, align 4, !tbaa !29
  switch i32 %76, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb.129
    i32 2, label %sw.bb.134
    i32 4, label %sw.bb.138
    i32 5, label %sw.bb.143
    i32 6, label %sw.bb.151
    i32 7, label %sw.epilog
    i32 9, label %sw.bb.208
  ]

sw.bb:                                            ; preds = %if.end.96
  %77 = load i64, i64* %flags, align 8, !tbaa !7
  %and100 = and i64 %77, 8
  %tobool101 = icmp ne i64 %and100, 0
  br i1 %tobool101, label %if.end.110, label %if.then.102

if.then.102:                                      ; preds = %sw.bb
  br label %while.cond.103

while.cond.103:                                   ; preds = %while.body.106, %if.then.102
  %78 = load i32, i32* %width, align 4, !tbaa !5
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %width, align 4, !tbaa !5
  %cmp104 = icmp sgt i32 %dec, 0
  br i1 %cmp104, label %while.body.106, label %while.end.109

while.body.106:                                   ; preds = %while.cond.103
  %79 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %OutStream107 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %79, i32 0, i32 0
  %OutStream108 = bitcast {}** %OutStream107 to void (%struct._trio_class_t*, i32)**
  %80 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream108, align 8, !tbaa !9
  %81 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  call void %80(%struct._trio_class_t* %81, i32 32) #8
  br label %while.cond.103

while.end.109:                                    ; preds = %while.cond.103
  br label %if.end.110

if.end.110:                                       ; preds = %while.end.109, %sw.bb
  %82 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %83 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom111 = sext i32 %83 to i64
  %84 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %84, i64 %idxprom111
  %data113 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx112, i32 0, i32 10
  %number114 = bitcast %union.anon.0* %data113 to %union.anon.1*
  %as_signed115 = bitcast %union.anon.1* %number114 to i64*
  %85 = load i64, i64* %as_signed115, align 8, !tbaa !7
  %conv116 = trunc i64 %85 to i32
  %86 = load i64, i64* %flags, align 8, !tbaa !7
  call void @TrioWriteStringCharacter(%struct._trio_class_t* %82, i32 %conv116, i64 %86) #8
  %87 = load i64, i64* %flags, align 8, !tbaa !7
  %and117 = and i64 %87, 8
  %tobool118 = icmp ne i64 %and117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.128

if.then.119:                                      ; preds = %if.end.110
  br label %while.cond.120

while.cond.120:                                   ; preds = %while.body.124, %if.then.119
  %88 = load i32, i32* %width, align 4, !tbaa !5
  %dec121 = add nsw i32 %88, -1
  store i32 %dec121, i32* %width, align 4, !tbaa !5
  %cmp122 = icmp sgt i32 %dec121, 0
  br i1 %cmp122, label %while.body.124, label %while.end.127

while.body.124:                                   ; preds = %while.cond.120
  %89 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %OutStream125 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %89, i32 0, i32 0
  %OutStream126 = bitcast {}** %OutStream125 to void (%struct._trio_class_t*, i32)**
  %90 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream126, align 8, !tbaa !9
  %91 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  call void %90(%struct._trio_class_t* %91, i32 32) #8
  br label %while.cond.120

while.end.127:                                    ; preds = %while.cond.120
  br label %if.end.128

if.end.128:                                       ; preds = %while.end.127, %if.end.110
  br label %sw.epilog

sw.bb.129:                                        ; preds = %if.end.96
  %92 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom130 = sext i32 %93 to i64
  %94 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %94, i64 %idxprom130
  %data132 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx131, i32 0, i32 10
  %number133 = bitcast %union.anon.0* %data132 to %union.anon.1*
  %as_unsigned = bitcast %union.anon.1* %number133 to i64*
  %95 = load i64, i64* %as_unsigned, align 8, !tbaa !7
  %96 = load i64, i64* %flags, align 8, !tbaa !7
  %97 = load i32, i32* %width, align 4, !tbaa !5
  %98 = load i32, i32* %precision, align 4, !tbaa !5
  %99 = load i32, i32* %base, align 4, !tbaa !5
  call void @TrioWriteNumber(%struct._trio_class_t* %92, i64 %95, i64 %96, i32 %97, i32 %98, i32 %99) #8
  br label %sw.epilog

sw.bb.134:                                        ; preds = %if.end.96
  %100 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom135 = sext i32 %101 to i64
  %102 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %102, i64 %idxprom135
  %data137 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx136, i32 0, i32 10
  %longdoubleNumber = bitcast %union.anon.0* %data137 to x86_fp80*
  %103 = load x86_fp80, x86_fp80* %longdoubleNumber, align 16, !tbaa !36
  %104 = load i64, i64* %flags, align 8, !tbaa !7
  %105 = load i32, i32* %width, align 4, !tbaa !5
  %106 = load i32, i32* %precision, align 4, !tbaa !5
  %107 = load i32, i32* %base, align 4, !tbaa !5
  call void @TrioWriteDouble(%struct._trio_class_t* %100, x86_fp80 %103, i64 %104, i32 %105, i32 %106, i32 %107) #8
  br label %sw.epilog

sw.bb.138:                                        ; preds = %if.end.96
  %108 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %109 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom139 = sext i32 %109 to i64
  %110 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %110, i64 %idxprom139
  %data141 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx140, i32 0, i32 10
  %string142 = bitcast %union.anon.0* %data141 to i8**
  %111 = load i8*, i8** %string142, align 8, !tbaa !1
  %112 = load i64, i64* %flags, align 8, !tbaa !7
  %113 = load i32, i32* %width, align 4, !tbaa !5
  %114 = load i32, i32* %precision, align 4, !tbaa !5
  call void @TrioWriteString(%struct._trio_class_t* %108, i8* %111, i64 %112, i32 %113, i32 %114) #8
  br label %sw.epilog

sw.bb.143:                                        ; preds = %if.end.96
  %115 = bitcast %struct._trio_reference_t* %reference to i8*
  call void @llvm.lifetime.start(i64 16, i8* %115) #1
  %116 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %data144 = getelementptr inbounds %struct._trio_reference_t, %struct._trio_reference_t* %reference, i32 0, i32 0
  store %struct._trio_class_t* %116, %struct._trio_class_t** %data144, align 8, !tbaa !16
  %117 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom145 = sext i32 %117 to i64
  %118 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %118, i64 %idxprom145
  %parameter = getelementptr inbounds %struct._trio_reference_t, %struct._trio_reference_t* %reference, i32 0, i32 1
  store %struct.trio_parameter_t* %arrayidx146, %struct.trio_parameter_t** %parameter, align 8, !tbaa !18
  %119 = bitcast %struct._trio_reference_t* %reference to i8*
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom147 = sext i32 %120 to i64
  %121 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %121, i64 %idxprom147
  %data149 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx148, i32 0, i32 10
  %pointer150 = bitcast %union.anon.0* %data149 to i8**
  %122 = load i8*, i8** %pointer150, align 8, !tbaa !1
  call void @trio_print_pointer(i8* %119, i8* %122) #8
  %123 = bitcast %struct._trio_reference_t* %reference to i8*
  call void @llvm.lifetime.end(i64 16, i8* %123) #1
  br label %sw.epilog

sw.bb.151:                                        ; preds = %if.end.96
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom152 = sext i32 %124 to i64
  %125 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %125, i64 %idxprom152
  %data154 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx153, i32 0, i32 10
  %pointer155 = bitcast %union.anon.0* %data154 to i8**
  %126 = load i8*, i8** %pointer155, align 8, !tbaa !1
  store i8* %126, i8** %pointer, align 8, !tbaa !1
  %127 = load i8*, i8** %pointer, align 8, !tbaa !1
  %cmp156 = icmp ne i8* null, %127
  br i1 %cmp156, label %if.then.158, label %if.end.207

if.then.158:                                      ; preds = %sw.bb.151
  %128 = load i64, i64* %flags, align 8, !tbaa !7
  %and159 = and i64 %128, 1024
  %tobool160 = icmp ne i64 %and159, 0
  br i1 %tobool160, label %if.then.161, label %if.else.163

if.then.161:                                      ; preds = %if.then.158
  %129 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %actually = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %129, i32 0, i32 6
  %committed = bitcast %union.anon* %actually to i32*
  %130 = load i32, i32* %committed, align 4, !tbaa !5
  %conv162 = sext i32 %130 to i64
  %131 = load i8*, i8** %pointer, align 8, !tbaa !1
  %132 = bitcast i8* %131 to i64*
  store i64 %conv162, i64* %132, align 8, !tbaa !7
  br label %if.end.206

if.else.163:                                      ; preds = %if.then.158
  %133 = load i64, i64* %flags, align 8, !tbaa !7
  %and164 = and i64 %133, 2048
  %tobool165 = icmp ne i64 %and164, 0
  br i1 %tobool165, label %if.then.166, label %if.else.170

if.then.166:                                      ; preds = %if.else.163
  %134 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %actually167 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %134, i32 0, i32 6
  %committed168 = bitcast %union.anon* %actually167 to i32*
  %135 = load i32, i32* %committed168, align 4, !tbaa !5
  %conv169 = sext i32 %135 to i64
  %136 = load i8*, i8** %pointer, align 8, !tbaa !1
  %137 = bitcast i8* %136 to i64*
  store i64 %conv169, i64* %137, align 8, !tbaa !7
  br label %if.end.205

if.else.170:                                      ; preds = %if.else.163
  %138 = load i64, i64* %flags, align 8, !tbaa !7
  %and171 = and i64 %138, 4096
  %tobool172 = icmp ne i64 %and171, 0
  br i1 %tobool172, label %if.then.173, label %if.else.177

if.then.173:                                      ; preds = %if.else.170
  %139 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %actually174 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %139, i32 0, i32 6
  %committed175 = bitcast %union.anon* %actually174 to i32*
  %140 = load i32, i32* %committed175, align 4, !tbaa !5
  %conv176 = sext i32 %140 to i64
  %141 = load i8*, i8** %pointer, align 8, !tbaa !1
  %142 = bitcast i8* %141 to i64*
  store i64 %conv176, i64* %142, align 8, !tbaa !7
  br label %if.end.204

if.else.177:                                      ; preds = %if.else.170
  %143 = load i64, i64* %flags, align 8, !tbaa !7
  %and178 = and i64 %143, 256
  %tobool179 = icmp ne i64 %and178, 0
  br i1 %tobool179, label %if.then.180, label %if.else.184

if.then.180:                                      ; preds = %if.else.177
  %144 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %actually181 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %144, i32 0, i32 6
  %committed182 = bitcast %union.anon* %actually181 to i32*
  %145 = load i32, i32* %committed182, align 4, !tbaa !5
  %conv183 = sext i32 %145 to i64
  %146 = load i8*, i8** %pointer, align 8, !tbaa !1
  %147 = bitcast i8* %146 to i64*
  store i64 %conv183, i64* %147, align 8, !tbaa !34
  br label %if.end.203

if.else.184:                                      ; preds = %if.else.177
  %148 = load i64, i64* %flags, align 8, !tbaa !7
  %and185 = and i64 %148, 128
  %tobool186 = icmp ne i64 %and185, 0
  br i1 %tobool186, label %if.then.187, label %if.else.191

if.then.187:                                      ; preds = %if.else.184
  %149 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %actually188 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %149, i32 0, i32 6
  %committed189 = bitcast %union.anon* %actually188 to i32*
  %150 = load i32, i32* %committed189, align 4, !tbaa !5
  %conv190 = sext i32 %150 to i64
  %151 = load i8*, i8** %pointer, align 8, !tbaa !1
  %152 = bitcast i8* %151 to i64*
  store i64 %conv190, i64* %152, align 8, !tbaa !7
  br label %if.end.202

if.else.191:                                      ; preds = %if.else.184
  %153 = load i64, i64* %flags, align 8, !tbaa !7
  %and192 = and i64 %153, 32
  %tobool193 = icmp ne i64 %and192, 0
  br i1 %tobool193, label %if.then.194, label %if.else.198

if.then.194:                                      ; preds = %if.else.191
  %154 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %actually195 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %154, i32 0, i32 6
  %committed196 = bitcast %union.anon* %actually195 to i32*
  %155 = load i32, i32* %committed196, align 4, !tbaa !5
  %conv197 = trunc i32 %155 to i16
  %156 = load i8*, i8** %pointer, align 8, !tbaa !1
  %157 = bitcast i8* %156 to i16*
  store i16 %conv197, i16* %157, align 2, !tbaa !27
  br label %if.end.201

if.else.198:                                      ; preds = %if.else.191
  %158 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %actually199 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %158, i32 0, i32 6
  %committed200 = bitcast %union.anon* %actually199 to i32*
  %159 = load i32, i32* %committed200, align 4, !tbaa !5
  %160 = load i8*, i8** %pointer, align 8, !tbaa !1
  %161 = bitcast i8* %160 to i32*
  store i32 %159, i32* %161, align 4, !tbaa !5
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.198, %if.then.194
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.then.187
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.180
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.173
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.166
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.161
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %sw.bb.151
  br label %sw.epilog

sw.bb.208:                                        ; preds = %if.end.96
  %162 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom209 = sext i32 %162 to i64
  %163 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %163, i64 %idxprom209
  %data211 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx210, i32 0, i32 10
  %errorNumber = bitcast %union.anon.0* %data211 to i32*
  %164 = load i32, i32* %errorNumber, align 4, !tbaa !5
  %call = call i8* @trio_error(i32 %164) #8
  store i8* %call, i8** %string, align 8, !tbaa !1
  %165 = load i8*, i8** %string, align 8, !tbaa !1
  %tobool212 = icmp ne i8* %165, null
  br i1 %tobool212, label %if.then.213, label %if.else.214

if.then.213:                                      ; preds = %sw.bb.208
  %166 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %167 = load i8*, i8** %string, align 8, !tbaa !1
  %168 = load i64, i64* %flags, align 8, !tbaa !7
  %169 = load i32, i32* %width, align 4, !tbaa !5
  %170 = load i32, i32* %precision, align 4, !tbaa !5
  call void @TrioWriteString(%struct._trio_class_t* %166, i8* %167, i64 %168, i32 %169, i32 %170) #8
  br label %if.end.222

if.else.214:                                      ; preds = %sw.bb.208
  %171 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %OutStream215 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %171, i32 0, i32 0
  %OutStream216 = bitcast {}** %OutStream215 to void (%struct._trio_class_t*, i32)**
  %172 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream216, align 8, !tbaa !9
  %173 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  call void %172(%struct._trio_class_t* %173, i32 35) #8
  %174 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %175 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom217 = sext i32 %175 to i64
  %176 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %176, i64 %idxprom217
  %data219 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx218, i32 0, i32 10
  %errorNumber220 = bitcast %union.anon.0* %data219 to i32*
  %177 = load i32, i32* %errorNumber220, align 4, !tbaa !5
  %conv221 = sext i32 %177 to i64
  %178 = load i64, i64* %flags, align 8, !tbaa !7
  %179 = load i32, i32* %width, align 4, !tbaa !5
  %180 = load i32, i32* %precision, align 4, !tbaa !5
  call void @TrioWriteNumber(%struct._trio_class_t* %174, i64 %conv221, i64 %178, i32 %179, i32 %180, i32 10) #8
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.214, %if.then.213
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.96
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.222, %if.end.96, %if.end.207, %sw.bb.143, %sw.bb.138, %sw.bb.134, %sw.bb.129, %if.end.128
  %181 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom223 = sext i32 %181 to i64
  %182 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %182, i64 %idxprom223
  %endOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx224, i32 0, i32 8
  %183 = load i32, i32* %endOffset, align 4, !tbaa !24
  store i32 %183, i32* %offset, align 4, !tbaa !5
  %184 = load i32, i32* %i, align 4, !tbaa !5
  %inc225 = add nsw i32 %184, 1
  store i32 %inc225, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.29
  %185 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %185, i32 0, i32 5
  %186 = load i32, i32* %processed, align 4, !tbaa !14
  %187 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %base to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %precision to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i8** %pointer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i8** %string to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  ret i32 %186
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i32 @mblen(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @TrioInitializeParameter(%struct.trio_parameter_t* %parameter) #0 {
entry:
  %parameter.addr = alloca %struct.trio_parameter_t*, align 8
  store %struct.trio_parameter_t* %parameter, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %0 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %0, i32 0, i32 0
  store i32 0, i32* %type, align 4, !tbaa !29
  %1 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %1, i32 0, i32 1
  store i64 0, i64* %flags, align 8, !tbaa !19
  %2 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %2, i32 0, i32 2
  store i32 0, i32* %width, align 4, !tbaa !26
  %3 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %precision = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %3, i32 0, i32 3
  store i32 0, i32* %precision, align 4, !tbaa !30
  %4 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %4, i32 0, i32 4
  store i32 0, i32* %base, align 4, !tbaa !31
  %5 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %baseSpecifier = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %5, i32 0, i32 5
  store i32 0, i32* %baseSpecifier, align 4, !tbaa !42
  %6 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %varsize = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %6, i32 0, i32 6
  store i32 0, i32* %varsize, align 4, !tbaa !33
  %7 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %beginOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %7, i32 0, i32 7
  store i32 0, i32* %beginOffset, align 4, !tbaa !32
  %8 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %endOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %8, i32 0, i32 8
  store i32 0, i32* %endOffset, align 4, !tbaa !24
  %9 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %9, i32 0, i32 9
  store i32 0, i32* %position, align 4, !tbaa !25
  %10 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %10, i32 0, i32 10
  %pointer = bitcast %union.anon.0* %data to i8**
  store i8* null, i8** %pointer, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioParseQualifiers(i32 %type, i8* %format, i32 %offset, %struct.trio_parameter_t* %parameter) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %parameter.addr = alloca %struct.trio_parameter_t*, align 8
  %ch = alloca i8, align 1
  %dots = alloca i32, align 4
  %tmpformat = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %width89 = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store %struct.trio_parameter_t* %parameter, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %0 = bitcast i32* %dots to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %dots, align 4, !tbaa !5
  %1 = bitcast i8** %tmpformat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %3 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %beginOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %3, i32 0, i32 7
  store i32 %sub, i32* %beginOffset, align 4, !tbaa !32
  %4 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %4, i32 0, i32 1
  store i64 0, i64* %flags, align 8, !tbaa !19
  %5 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %call = call i32 @TrioGetPosition(i8* %5, i32* %offset.addr) #8
  %6 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %6, i32 0, i32 9
  store i32 %call, i32* %position, align 4, !tbaa !25
  %7 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %7, i32 0, i32 2
  store i32 0, i32* %width, align 4, !tbaa !26
  %8 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %precision = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %8, i32 0, i32 3
  store i32 -1, i32* %precision, align 4, !tbaa !30
  %9 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %9, i32 0, i32 4
  store i32 -1, i32* %base, align 4, !tbaa !31
  %10 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %varsize = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %10, i32 0, i32 6
  store i32 -1, i32* %varsize, align 4, !tbaa !33
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %11 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %call1 = call i32 @TrioIsQualifier(i8 signext %13) #8
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %offset.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %14 to i64
  %15 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %15, i64 %idxprom2
  %16 = load i8, i8* %arrayidx3, align 1, !tbaa !15
  store i8 %16, i8* %ch, align 1, !tbaa !15
  %17 = load i8, i8* %ch, align 1, !tbaa !15
  %conv = sext i8 %17 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 43, label %sw.bb.5
    i32 45, label %sw.bb.8
    i32 35, label %sw.bb.12
    i32 46, label %sw.bb.15
    i32 42, label %sw.bb.85
    i32 48, label %sw.bb.102
    i32 49, label %sw.bb.110
    i32 50, label %sw.bb.110
    i32 51, label %sw.bb.110
    i32 52, label %sw.bb.110
    i32 53, label %sw.bb.110
    i32 54, label %sw.bb.110
    i32 55, label %sw.bb.110
    i32 56, label %sw.bb.110
    i32 57, label %sw.bb.110
    i32 104, label %sw.bb.123
    i32 108, label %sw.bb.143
    i32 76, label %sw.bb.163
    i32 122, label %sw.bb.166
    i32 116, label %sw.bb.171
    i32 106, label %sw.bb.176
    i32 113, label %sw.bb.181
    i32 73, label %sw.bb.184
    i32 119, label %sw.bb.266
    i32 90, label %sw.epilog
  ]

sw.bb:                                            ; preds = %while.body
  %18 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags4 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %18, i32 0, i32 1
  %19 = load i64, i64* %flags4, align 8, !tbaa !19
  %or = or i64 %19, 2
  store i64 %or, i64* %flags4, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  %20 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags6 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %20, i32 0, i32 1
  %21 = load i64, i64* %flags6, align 8, !tbaa !19
  %or7 = or i64 %21, 4
  store i64 %or7, i64* %flags6, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  %22 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags9 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %22, i32 0, i32 1
  %23 = load i64, i64* %flags9, align 8, !tbaa !19
  %or10 = or i64 %23, 8
  store i64 %or10, i64* %flags9, align 8, !tbaa !19
  %24 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags11 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %24, i32 0, i32 1
  %25 = load i64, i64* %flags11, align 8, !tbaa !19
  %and = and i64 %25, -8193
  store i64 %and, i64* %flags11, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body
  %26 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags13 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %26, i32 0, i32 1
  %27 = load i64, i64* %flags13, align 8, !tbaa !19
  %or14 = or i64 %27, 16
  store i64 %or14, i64* %flags13, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  %28 = load i32, i32* %dots, align 4, !tbaa !5
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.then, label %if.else.44

if.then:                                          ; preds = %sw.bb.15
  %29 = load i32, i32* %dots, align 4, !tbaa !5
  %inc17 = add nsw i32 %29, 1
  store i32 %inc17, i32* %dots, align 4, !tbaa !5
  %30 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom18 = sext i32 %30 to i64
  %31 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %31, i64 %idxprom18
  %32 = load i8, i8* %arrayidx19, align 1, !tbaa !15
  %conv20 = sext i8 %32 to i32
  %cmp21 = icmp eq i32 46, %conv20
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %33 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags24 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %33, i32 0, i32 1
  %34 = load i64, i64* %flags24, align 8, !tbaa !19
  %or25 = or i64 %34, 262144
  store i64 %or25, i64* %flags24, align 8, !tbaa !19
  %35 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom26 = sext i32 %35 to i64
  %36 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %36, i64 %idxprom26
  %37 = load i8, i8* %arrayidx27, align 1, !tbaa !15
  %conv28 = sext i8 %37 to i32
  %cmp29 = icmp eq i32 42, %conv28
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end
  %38 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %offset.addr, align 4, !tbaa !5
  %39 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags33 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %39, i32 0, i32 1
  %40 = load i64, i64* %flags33, align 8, !tbaa !19
  %or34 = or i64 %40, 524288
  store i64 %or34, i64* %flags33, align 8, !tbaa !19
  %41 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %call35 = call i32 @TrioGetPosition(i8* %41, i32* %offset.addr) #8
  %42 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %precision36 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %42, i32 0, i32 3
  store i32 %call35, i32* %precision36, align 4, !tbaa !30
  br label %if.end.43

if.else:                                          ; preds = %if.end
  %43 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom37 = sext i32 %43 to i64
  %44 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %44, i64 %idxprom37
  %call39 = call i64 @trio_to_long(i8* %arrayidx38, i8** %tmpformat, i32 10) #8
  %conv40 = trunc i64 %call39 to i32
  %45 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %precision41 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %45, i32 0, i32 3
  store i32 %conv40, i32* %precision41, align 4, !tbaa !30
  %46 = load i8*, i8** %tmpformat, align 8, !tbaa !1
  %47 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv42 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv42, i32* %offset.addr, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.31
  br label %if.end.84

if.else.44:                                       ; preds = %sw.bb.15
  %48 = load i32, i32* %dots, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %48, 1
  br i1 %cmp45, label %if.then.47, label %if.else.79

if.then.47:                                       ; preds = %if.else.44
  %49 = load i32, i32* %dots, align 4, !tbaa !5
  %inc48 = add nsw i32 %49, 1
  store i32 %inc48, i32* %dots, align 4, !tbaa !5
  %50 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags49 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %50, i32 0, i32 1
  %51 = load i64, i64* %flags49, align 8, !tbaa !19
  %or50 = or i64 %51, 1048576
  store i64 %or50, i64* %flags49, align 8, !tbaa !19
  %52 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom51 = sext i32 %52 to i64
  %53 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %53, i64 %idxprom51
  %54 = load i8, i8* %arrayidx52, align 1, !tbaa !15
  %conv53 = sext i8 %54 to i32
  %cmp54 = icmp eq i32 42, %conv53
  br i1 %cmp54, label %if.then.56, label %if.else.62

if.then.56:                                       ; preds = %if.then.47
  %55 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc57 = add nsw i32 %55, 1
  store i32 %inc57, i32* %offset.addr, align 4, !tbaa !5
  %56 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags58 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %56, i32 0, i32 1
  %57 = load i64, i64* %flags58, align 8, !tbaa !19
  %or59 = or i64 %57, 2097152
  store i64 %or59, i64* %flags58, align 8, !tbaa !19
  %58 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %call60 = call i32 @TrioGetPosition(i8* %58, i32* %offset.addr) #8
  %59 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %base61 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %59, i32 0, i32 4
  store i32 %call60, i32* %base61, align 4, !tbaa !31
  br label %if.end.78

if.else.62:                                       ; preds = %if.then.47
  %60 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom63 = sext i32 %60 to i64
  %61 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %61, i64 %idxprom63
  %call65 = call i64 @trio_to_long(i8* %arrayidx64, i8** %tmpformat, i32 10) #8
  %conv66 = trunc i64 %call65 to i32
  %62 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %base67 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %62, i32 0, i32 4
  store i32 %conv66, i32* %base67, align 4, !tbaa !31
  %63 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %base68 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %63, i32 0, i32 4
  %64 = load i32, i32* %base68, align 4, !tbaa !31
  %cmp69 = icmp sgt i32 %64, 36
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.else.62
  %65 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shl = shl i32 %65, 8
  %add = add nsw i32 2, %shl
  %sub72 = sub nsw i32 0, %add
  store i32 %sub72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.else.62
  %66 = load i8*, i8** %tmpformat, align 8, !tbaa !1
  %67 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast74 = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast75 = ptrtoint i8* %67 to i64
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  %conv77 = trunc i64 %sub.ptr.sub76 to i32
  store i32 %conv77, i32* %offset.addr, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.73, %if.then.56
  br label %if.end.83

if.else.79:                                       ; preds = %if.else.44
  %68 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shl80 = shl i32 %68, 8
  %add81 = add nsw i32 2, %shl80
  %sub82 = sub nsw i32 0, %add81
  store i32 %sub82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.end.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.43
  br label %sw.epilog

sw.bb.85:                                         ; preds = %while.body
  %69 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp86 = icmp eq i32 1, %69
  br i1 %cmp86, label %if.then.88, label %if.else.98

if.then.88:                                       ; preds = %sw.bb.85
  %70 = bitcast i32* %width89 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %call90 = call i32 @TrioGetPosition(i8* %71, i32* %offset.addr) #8
  store i32 %call90, i32* %width89, align 4, !tbaa !5
  %72 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags91 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %72, i32 0, i32 1
  %73 = load i64, i64* %flags91, align 8, !tbaa !19
  %or92 = or i64 %73, 196608
  store i64 %or92, i64* %flags91, align 8, !tbaa !19
  %74 = load i32, i32* %width89, align 4, !tbaa !5
  %cmp93 = icmp ne i32 -1, %74
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.then.88
  %75 = load i32, i32* %width89, align 4, !tbaa !5
  %76 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %width96 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %76, i32 0, i32 2
  store i32 %75, i32* %width96, align 4, !tbaa !26
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.then.88
  %77 = bitcast i32* %width89 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  br label %if.end.101

if.else.98:                                       ; preds = %sw.bb.85
  %78 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags99 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %78, i32 0, i32 1
  %79 = load i64, i64* %flags99, align 8, !tbaa !19
  %or100 = or i64 %79, 67108864
  store i64 %or100, i64* %flags99, align 8, !tbaa !19
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.98, %if.end.97
  br label %sw.epilog

sw.bb.102:                                        ; preds = %while.body
  %80 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags103 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %80, i32 0, i32 1
  %81 = load i64, i64* %flags103, align 8, !tbaa !19
  %and104 = and i64 %81, 8
  %tobool105 = icmp ne i64 %and104, 0
  br i1 %tobool105, label %if.end.109, label %if.then.106

if.then.106:                                      ; preds = %sw.bb.102
  %82 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags107 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %82, i32 0, i32 1
  %83 = load i64, i64* %flags107, align 8, !tbaa !19
  %or108 = or i64 %83, 8192
  store i64 %or108, i64* %flags107, align 8, !tbaa !19
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %sw.bb.102
  br label %sw.bb.110

sw.bb.110:                                        ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %if.end.109
  %84 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags111 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %84, i32 0, i32 1
  %85 = load i64, i64* %flags111, align 8, !tbaa !19
  %or112 = or i64 %85, 65536
  store i64 %or112, i64* %flags111, align 8, !tbaa !19
  %86 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %sub113 = sub nsw i32 %86, 1
  %idxprom114 = sext i32 %sub113 to i64
  %87 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %87, i64 %idxprom114
  %call116 = call i64 @trio_to_long(i8* %arrayidx115, i8** %tmpformat, i32 10) #8
  %conv117 = trunc i64 %call116 to i32
  %88 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %width118 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %88, i32 0, i32 2
  store i32 %conv117, i32* %width118, align 4, !tbaa !26
  %89 = load i8*, i8** %tmpformat, align 8, !tbaa !1
  %90 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast119 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast120 = ptrtoint i8* %90 to i64
  %sub.ptr.sub121 = sub i64 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %conv122 = trunc i64 %sub.ptr.sub121 to i32
  store i32 %conv122, i32* %offset.addr, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.123:                                        ; preds = %while.body
  %91 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags124 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %91, i32 0, i32 1
  %92 = load i64, i64* %flags124, align 8, !tbaa !19
  %and125 = and i64 %92, 64
  %tobool126 = icmp ne i64 %and125, 0
  br i1 %tobool126, label %if.then.127, label %if.else.131

if.then.127:                                      ; preds = %sw.bb.123
  %93 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shl128 = shl i32 %93, 8
  %add129 = add nsw i32 2, %shl128
  %sub130 = sub nsw i32 0, %add129
  store i32 %sub130, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.131:                                      ; preds = %sw.bb.123
  %94 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags132 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %94, i32 0, i32 1
  %95 = load i64, i64* %flags132, align 8, !tbaa !19
  %and133 = and i64 %95, 32
  %tobool134 = icmp ne i64 %and133, 0
  br i1 %tobool134, label %if.then.135, label %if.else.138

if.then.135:                                      ; preds = %if.else.131
  %96 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags136 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %96, i32 0, i32 1
  %97 = load i64, i64* %flags136, align 8, !tbaa !19
  %or137 = or i64 %97, 64
  store i64 %or137, i64* %flags136, align 8, !tbaa !19
  br label %if.end.141

if.else.138:                                      ; preds = %if.else.131
  %98 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags139 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %98, i32 0, i32 1
  %99 = load i64, i64* %flags139, align 8, !tbaa !19
  %or140 = or i64 %99, 32
  store i64 %or140, i64* %flags139, align 8, !tbaa !19
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.135
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141
  br label %sw.epilog

sw.bb.143:                                        ; preds = %while.body
  %100 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags144 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %100, i32 0, i32 1
  %101 = load i64, i64* %flags144, align 8, !tbaa !19
  %and145 = and i64 %101, 256
  %tobool146 = icmp ne i64 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.else.151

if.then.147:                                      ; preds = %sw.bb.143
  %102 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shl148 = shl i32 %102, 8
  %add149 = add nsw i32 2, %shl148
  %sub150 = sub nsw i32 0, %add149
  store i32 %sub150, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.151:                                      ; preds = %sw.bb.143
  %103 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags152 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %103, i32 0, i32 1
  %104 = load i64, i64* %flags152, align 8, !tbaa !19
  %and153 = and i64 %104, 128
  %tobool154 = icmp ne i64 %and153, 0
  br i1 %tobool154, label %if.then.155, label %if.else.158

if.then.155:                                      ; preds = %if.else.151
  %105 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags156 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %105, i32 0, i32 1
  %106 = load i64, i64* %flags156, align 8, !tbaa !19
  %or157 = or i64 %106, 256
  store i64 %or157, i64* %flags156, align 8, !tbaa !19
  br label %if.end.161

if.else.158:                                      ; preds = %if.else.151
  %107 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags159 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %107, i32 0, i32 1
  %108 = load i64, i64* %flags159, align 8, !tbaa !19
  %or160 = or i64 %108, 128
  store i64 %or160, i64* %flags159, align 8, !tbaa !19
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.158, %if.then.155
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161
  br label %sw.epilog

sw.bb.163:                                        ; preds = %while.body
  %109 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags164 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %109, i32 0, i32 1
  %110 = load i64, i64* %flags164, align 8, !tbaa !19
  %or165 = or i64 %110, 512
  store i64 %or165, i64* %flags164, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.166:                                        ; preds = %while.body
  %111 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags167 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %111, i32 0, i32 1
  %112 = load i64, i64* %flags167, align 8, !tbaa !19
  %or168 = or i64 %112, 1024
  store i64 %or168, i64* %flags167, align 8, !tbaa !19
  %113 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags169 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %113, i32 0, i32 1
  %114 = load i64, i64* %flags169, align 8, !tbaa !19
  %or170 = or i64 %114, 256
  store i64 %or170, i64* %flags169, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.171:                                        ; preds = %while.body
  %115 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags172 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %115, i32 0, i32 1
  %116 = load i64, i64* %flags172, align 8, !tbaa !19
  %or173 = or i64 %116, 2048
  store i64 %or173, i64* %flags172, align 8, !tbaa !19
  %117 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags174 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %117, i32 0, i32 1
  %118 = load i64, i64* %flags174, align 8, !tbaa !19
  %or175 = or i64 %118, 256
  store i64 %or175, i64* %flags174, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.176:                                        ; preds = %while.body
  %119 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags177 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %119, i32 0, i32 1
  %120 = load i64, i64* %flags177, align 8, !tbaa !19
  %or178 = or i64 %120, 4096
  store i64 %or178, i64* %flags177, align 8, !tbaa !19
  %121 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags179 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %121, i32 0, i32 1
  %122 = load i64, i64* %flags179, align 8, !tbaa !19
  %or180 = or i64 %122, 256
  store i64 %or180, i64* %flags179, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.181:                                        ; preds = %while.body
  %123 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags182 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %123, i32 0, i32 1
  %124 = load i64, i64* %flags182, align 8, !tbaa !19
  %or183 = or i64 %124, 256
  store i64 %or183, i64* %flags182, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.184:                                        ; preds = %while.body
  %125 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags185 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %125, i32 0, i32 1
  %126 = load i64, i64* %flags185, align 8, !tbaa !19
  %and186 = and i64 %126, 536870912
  %tobool187 = icmp ne i64 %and186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.192

if.then.188:                                      ; preds = %sw.bb.184
  %127 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shl189 = shl i32 %127, 8
  %add190 = add nsw i32 2, %shl189
  %sub191 = sub nsw i32 0, %add190
  store i32 %sub191, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.192:                                       ; preds = %sw.bb.184
  %128 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags193 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %128, i32 0, i32 1
  %129 = load i64, i64* %flags193, align 8, !tbaa !19
  %and194 = and i64 %129, 301998048
  %tobool195 = icmp ne i64 %and194, 0
  br i1 %tobool195, label %if.then.196, label %if.end.200

if.then.196:                                      ; preds = %if.end.192
  %130 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shl197 = shl i32 %130, 8
  %add198 = add nsw i32 2, %shl197
  %sub199 = sub nsw i32 0, %add198
  store i32 %sub199, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.200:                                       ; preds = %if.end.192
  %131 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom201 = sext i32 %131 to i64
  %132 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i8, i8* %132, i64 %idxprom201
  %133 = load i8, i8* %arrayidx202, align 1, !tbaa !15
  %conv203 = sext i8 %133 to i32
  %cmp204 = icmp eq i32 %conv203, 54
  br i1 %cmp204, label %land.lhs.true, label %if.else.215

land.lhs.true:                                    ; preds = %if.end.200
  %134 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %add206 = add nsw i32 %134, 1
  %idxprom207 = sext i32 %add206 to i64
  %135 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %135, i64 %idxprom207
  %136 = load i8, i8* %arrayidx208, align 1, !tbaa !15
  %conv209 = sext i8 %136 to i32
  %cmp210 = icmp eq i32 %conv209, 52
  br i1 %cmp210, label %if.then.212, label %if.else.215

if.then.212:                                      ; preds = %land.lhs.true
  %137 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %varsize213 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %137, i32 0, i32 6
  store i32 8, i32* %varsize213, align 4, !tbaa !33
  %138 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %add214 = add nsw i32 %138, 2
  store i32 %add214, i32* %offset.addr, align 4, !tbaa !5
  br label %if.end.263

if.else.215:                                      ; preds = %land.lhs.true, %if.end.200
  %139 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom216 = sext i32 %139 to i64
  %140 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i8, i8* %140, i64 %idxprom216
  %141 = load i8, i8* %arrayidx217, align 1, !tbaa !15
  %conv218 = sext i8 %141 to i32
  %cmp219 = icmp eq i32 %conv218, 51
  br i1 %cmp219, label %land.lhs.true.221, label %if.else.231

land.lhs.true.221:                                ; preds = %if.else.215
  %142 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %add222 = add nsw i32 %142, 1
  %idxprom223 = sext i32 %add222 to i64
  %143 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i8, i8* %143, i64 %idxprom223
  %144 = load i8, i8* %arrayidx224, align 1, !tbaa !15
  %conv225 = sext i8 %144 to i32
  %cmp226 = icmp eq i32 %conv225, 50
  br i1 %cmp226, label %if.then.228, label %if.else.231

if.then.228:                                      ; preds = %land.lhs.true.221
  %145 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %varsize229 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %145, i32 0, i32 6
  store i32 4, i32* %varsize229, align 4, !tbaa !33
  %146 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %add230 = add nsw i32 %146, 2
  store i32 %add230, i32* %offset.addr, align 4, !tbaa !5
  br label %if.end.262

if.else.231:                                      ; preds = %land.lhs.true.221, %if.else.215
  %147 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom232 = sext i32 %147 to i64
  %148 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds i8, i8* %148, i64 %idxprom232
  %149 = load i8, i8* %arrayidx233, align 1, !tbaa !15
  %conv234 = sext i8 %149 to i32
  %cmp235 = icmp eq i32 %conv234, 49
  br i1 %cmp235, label %land.lhs.true.237, label %if.else.247

land.lhs.true.237:                                ; preds = %if.else.231
  %150 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %add238 = add nsw i32 %150, 1
  %idxprom239 = sext i32 %add238 to i64
  %151 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i8, i8* %151, i64 %idxprom239
  %152 = load i8, i8* %arrayidx240, align 1, !tbaa !15
  %conv241 = sext i8 %152 to i32
  %cmp242 = icmp eq i32 %conv241, 54
  br i1 %cmp242, label %if.then.244, label %if.else.247

if.then.244:                                      ; preds = %land.lhs.true.237
  %153 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %varsize245 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %153, i32 0, i32 6
  store i32 2, i32* %varsize245, align 4, !tbaa !33
  %154 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %add246 = add nsw i32 %154, 2
  store i32 %add246, i32* %offset.addr, align 4, !tbaa !5
  br label %if.end.261

if.else.247:                                      ; preds = %land.lhs.true.237, %if.else.231
  %155 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom248 = sext i32 %155 to i64
  %156 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds i8, i8* %156, i64 %idxprom248
  %157 = load i8, i8* %arrayidx249, align 1, !tbaa !15
  %conv250 = sext i8 %157 to i32
  %cmp251 = icmp eq i32 %conv250, 56
  br i1 %cmp251, label %if.then.253, label %if.else.256

if.then.253:                                      ; preds = %if.else.247
  %158 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %varsize254 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %158, i32 0, i32 6
  store i32 1, i32* %varsize254, align 4, !tbaa !33
  %159 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc255 = add nsw i32 %159, 1
  store i32 %inc255, i32* %offset.addr, align 4, !tbaa !5
  br label %if.end.260

if.else.256:                                      ; preds = %if.else.247
  %160 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shl257 = shl i32 %160, 8
  %add258 = add nsw i32 2, %shl257
  %sub259 = sub nsw i32 0, %add258
  store i32 %sub259, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.260:                                       ; preds = %if.then.253
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.then.244
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.then.228
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.then.212
  %161 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags264 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %161, i32 0, i32 1
  %162 = load i64, i64* %flags264, align 8, !tbaa !19
  %or265 = or i64 %162, 536870912
  store i64 %or265, i64* %flags264, align 8, !tbaa !19
  br label %sw.epilog

sw.bb.266:                                        ; preds = %while.body
  %163 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags267 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %163, i32 0, i32 1
  %164 = load i64, i64* %flags267, align 8, !tbaa !19
  %or268 = or i64 %164, 33554432
  store i64 %or268, i64* %flags267, align 8, !tbaa !19
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %165 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shl269 = shl i32 %165, 8
  %add270 = add nsw i32 2, %shl269
  %sub271 = sub nsw i32 0, %add270
  store i32 %sub271, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %while.body, %sw.bb.266, %if.end.263, %sw.bb.181, %sw.bb.176, %sw.bb.171, %sw.bb.166, %sw.bb.163, %if.end.162, %if.end.142, %sw.bb.110, %if.end.101, %if.end.84, %if.then.23, %sw.bb.12, %sw.bb.8, %sw.bb.5, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %166 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %167 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %endOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %167, i32 0, i32 8
  store i32 %166, i32* %endOffset, align 4, !tbaa !24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sw.default, %if.else.256, %if.then.196, %if.then.188, %if.then.147, %if.then.127, %if.else.79, %if.then.71
  %168 = bitcast i8** %tmpformat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i32* %dots to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %170 = load i32, i32* %retval
  ret i32 %170
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioParseSpecifier(i32 %type, i8* %format, i32 %offset, %struct.trio_parameter_t* %parameter) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %parameter.addr = alloca %struct.trio_parameter_t*, align 8
  %depth = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store %struct.trio_parameter_t* %parameter, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %0 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %baseSpecifier = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %0, i32 0, i32 5
  store i32 -1, i32* %baseSpecifier, align 4, !tbaa !42
  %1 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %offset.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 67, label %sw.bb
    i32 99, label %sw.bb.1
    i32 83, label %sw.bb.13
    i32 115, label %sw.bb.16
    i32 91, label %sw.bb.33
    i32 105, label %sw.bb.89
    i32 117, label %sw.bb.91
    i32 100, label %sw.bb.95
    i32 111, label %sw.bb.98
    i32 88, label %sw.bb.103
    i32 120, label %sw.bb.106
    i32 69, label %sw.bb.111
    i32 101, label %sw.bb.114
    i32 71, label %sw.bb.118
    i32 103, label %sw.bb.121
    i32 70, label %sw.bb.125
    i32 102, label %sw.bb.128
    i32 112, label %sw.bb.130
    i32 110, label %sw.bb.134
    i32 65, label %sw.bb.136
    i32 97, label %sw.bb.139
    i32 109, label %sw.bb.142
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %4, i32 0, i32 1
  %5 = load i64, i64* %flags, align 8, !tbaa !19
  %or = or i64 %5, 33554432
  store i64 %or, i64* %flags, align 8, !tbaa !19
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  %6 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags2 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %6, i32 0, i32 1
  %7 = load i64, i64* %flags2, align 8, !tbaa !19
  %and = and i64 %7, 128
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags3 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %8, i32 0, i32 1
  %9 = load i64, i64* %flags3, align 8, !tbaa !19
  %or4 = or i64 %9, 33554432
  store i64 %or4, i64* %flags3, align 8, !tbaa !19
  br label %if.end.11

if.else:                                          ; preds = %sw.bb.1
  %10 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags5 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %10, i32 0, i32 1
  %11 = load i64, i64* %flags5, align 8, !tbaa !19
  %and6 = and i64 %11, 32
  %tobool7 = icmp ne i64 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %12 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags9 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %12, i32 0, i32 1
  %13 = load i64, i64* %flags9, align 8, !tbaa !19
  %and10 = and i64 %13, -33554433
  store i64 %and10, i64* %flags9, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %14 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type12 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %14, i32 0, i32 0
  store i32 3, i32* %type12, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %15 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags14 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %15, i32 0, i32 1
  %16 = load i64, i64* %flags14, align 8, !tbaa !19
  %or15 = or i64 %16, 33554432
  store i64 %or15, i64* %flags14, align 8, !tbaa !19
  br label %sw.bb.16

sw.bb.16:                                         ; preds = %entry, %sw.bb.13
  %17 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags17 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %17, i32 0, i32 1
  %18 = load i64, i64* %flags17, align 8, !tbaa !19
  %and18 = and i64 %18, 128
  %tobool19 = icmp ne i64 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %sw.bb.16
  %19 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags21 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %19, i32 0, i32 1
  %20 = load i64, i64* %flags21, align 8, !tbaa !19
  %or22 = or i64 %20, 33554432
  store i64 %or22, i64* %flags21, align 8, !tbaa !19
  br label %if.end.31

if.else.23:                                       ; preds = %sw.bb.16
  %21 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags24 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %21, i32 0, i32 1
  %22 = load i64, i64* %flags24, align 8, !tbaa !19
  %and25 = and i64 %22, 32
  %tobool26 = icmp ne i64 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.else.23
  %23 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags28 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %23, i32 0, i32 1
  %24 = load i64, i64* %flags28, align 8, !tbaa !19
  %and29 = and i64 %24, -33554433
  store i64 %and29, i64* %flags28, align 8, !tbaa !19
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.else.23
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.20
  %25 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type32 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %25, i32 0, i32 0
  store i32 4, i32* %type32, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %26 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 2, %26
  br i1 %cmp, label %if.then.35, label %if.end.88

if.then.35:                                       ; preds = %sw.bb.33
  %27 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 1, i32* %depth, align 4, !tbaa !5
  %28 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type36 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %28, i32 0, i32 0
  store i32 8, i32* %type36, align 4, !tbaa !29
  %29 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom37 = sext i32 %29 to i64
  %30 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %30, i64 %idxprom37
  %31 = load i8, i8* %arrayidx38, align 1, !tbaa !15
  %conv39 = sext i8 %31 to i32
  %cmp40 = icmp eq i32 %conv39, 94
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.then.35
  %32 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc43 = add nsw i32 %32, 1
  store i32 %inc43, i32* %offset.addr, align 4, !tbaa !5
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.then.35
  %33 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom45 = sext i32 %33 to i64
  %34 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %34, i64 %idxprom45
  %35 = load i8, i8* %arrayidx46, align 1, !tbaa !15
  %conv47 = sext i8 %35 to i32
  %cmp48 = icmp eq i32 %conv47, 93
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.44
  %36 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc51 = add nsw i32 %36, 1
  store i32 %inc51, i32* %offset.addr, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.44
  %37 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom53 = sext i32 %37 to i64
  %38 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %38, i64 %idxprom53
  %39 = load i8, i8* %arrayidx54, align 1, !tbaa !15
  %conv55 = sext i8 %39 to i32
  %cmp56 = icmp eq i32 %conv55, 45
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.52
  %40 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc59 = add nsw i32 %40, 1
  store i32 %inc59, i32* %offset.addr, align 4, !tbaa !5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.52
  br label %while.cond

while.cond:                                       ; preds = %if.end.86, %if.end.60
  %41 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom61 = sext i32 %41 to i64
  %42 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %42, i64 %idxprom61
  %43 = load i8, i8* %arrayidx62, align 1, !tbaa !15
  %conv63 = sext i8 %43 to i32
  %cmp64 = icmp ne i32 %conv63, 0
  br i1 %cmp64, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom66 = sext i32 %44 to i64
  %45 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %45, i64 %idxprom66
  %46 = load i8, i8* %arrayidx67, align 1, !tbaa !15
  %conv68 = sext i8 %46 to i32
  %cmp69 = icmp eq i32 %conv68, 91
  br i1 %cmp69, label %if.then.71, label %if.else.73

if.then.71:                                       ; preds = %while.body
  %47 = load i32, i32* %depth, align 4, !tbaa !5
  %inc72 = add nsw i32 %47, 1
  store i32 %inc72, i32* %depth, align 4, !tbaa !5
  br label %if.end.86

if.else.73:                                       ; preds = %while.body
  %48 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idxprom74 = sext i32 %48 to i64
  %49 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %49, i64 %idxprom74
  %50 = load i8, i8* %arrayidx75, align 1, !tbaa !15
  %conv76 = sext i8 %50 to i32
  %cmp77 = icmp eq i32 %conv76, 93
  br i1 %cmp77, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %if.else.73
  %51 = load i32, i32* %depth, align 4, !tbaa !5
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %depth, align 4, !tbaa !5
  %cmp80 = icmp sle i32 %dec, 0
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.79
  %52 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc83 = add nsw i32 %52, 1
  store i32 %inc83, i32* %offset.addr, align 4, !tbaa !5
  br label %while.end

if.end.84:                                        ; preds = %if.then.79
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.else.73
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.71
  %53 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %inc87 = add nsw i32 %53, 1
  store i32 %inc87, i32* %offset.addr, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %if.then.82, %while.cond
  %54 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  br label %if.end.88

if.end.88:                                        ; preds = %while.end, %sw.bb.33
  br label %sw.epilog

sw.bb.89:                                         ; preds = %entry
  %55 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type90 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %55, i32 0, i32 0
  store i32 1, i32* %type90, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.91:                                         ; preds = %entry
  %56 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags92 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %56, i32 0, i32 1
  %57 = load i64, i64* %flags92, align 8, !tbaa !19
  %or93 = or i64 %57, 16384
  store i64 %or93, i64* %flags92, align 8, !tbaa !19
  %58 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type94 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %58, i32 0, i32 0
  store i32 1, i32* %type94, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.95:                                         ; preds = %entry
  %59 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %baseSpecifier96 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %59, i32 0, i32 5
  store i32 10, i32* %baseSpecifier96, align 4, !tbaa !42
  %60 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type97 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %60, i32 0, i32 0
  store i32 1, i32* %type97, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.98:                                         ; preds = %entry
  %61 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags99 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %61, i32 0, i32 1
  %62 = load i64, i64* %flags99, align 8, !tbaa !19
  %or100 = or i64 %62, 16384
  store i64 %or100, i64* %flags99, align 8, !tbaa !19
  %63 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %baseSpecifier101 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %63, i32 0, i32 5
  store i32 8, i32* %baseSpecifier101, align 4, !tbaa !42
  %64 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type102 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %64, i32 0, i32 0
  store i32 1, i32* %type102, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.103:                                        ; preds = %entry
  %65 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags104 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %65, i32 0, i32 1
  %66 = load i64, i64* %flags104, align 8, !tbaa !19
  %or105 = or i64 %66, 32768
  store i64 %or105, i64* %flags104, align 8, !tbaa !19
  br label %sw.bb.106

sw.bb.106:                                        ; preds = %entry, %sw.bb.103
  %67 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags107 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %67, i32 0, i32 1
  %68 = load i64, i64* %flags107, align 8, !tbaa !19
  %or108 = or i64 %68, 16384
  store i64 %or108, i64* %flags107, align 8, !tbaa !19
  %69 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %baseSpecifier109 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %69, i32 0, i32 5
  store i32 16, i32* %baseSpecifier109, align 4, !tbaa !42
  %70 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type110 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %70, i32 0, i32 0
  store i32 1, i32* %type110, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.111:                                        ; preds = %entry
  %71 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags112 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %71, i32 0, i32 1
  %72 = load i64, i64* %flags112, align 8, !tbaa !19
  %or113 = or i64 %72, 32768
  store i64 %or113, i64* %flags112, align 8, !tbaa !19
  br label %sw.bb.114

sw.bb.114:                                        ; preds = %entry, %sw.bb.111
  %73 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags115 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %73, i32 0, i32 1
  %74 = load i64, i64* %flags115, align 8, !tbaa !19
  %or116 = or i64 %74, 4194304
  store i64 %or116, i64* %flags115, align 8, !tbaa !19
  %75 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type117 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %75, i32 0, i32 0
  store i32 2, i32* %type117, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.118:                                        ; preds = %entry
  %76 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags119 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %76, i32 0, i32 1
  %77 = load i64, i64* %flags119, align 8, !tbaa !19
  %or120 = or i64 %77, 32768
  store i64 %or120, i64* %flags119, align 8, !tbaa !19
  br label %sw.bb.121

sw.bb.121:                                        ; preds = %entry, %sw.bb.118
  %78 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags122 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %78, i32 0, i32 1
  %79 = load i64, i64* %flags122, align 8, !tbaa !19
  %or123 = or i64 %79, 8388608
  store i64 %or123, i64* %flags122, align 8, !tbaa !19
  %80 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type124 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %80, i32 0, i32 0
  store i32 2, i32* %type124, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.125:                                        ; preds = %entry
  %81 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags126 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %81, i32 0, i32 1
  %82 = load i64, i64* %flags126, align 8, !tbaa !19
  %or127 = or i64 %82, 32768
  store i64 %or127, i64* %flags126, align 8, !tbaa !19
  br label %sw.bb.128

sw.bb.128:                                        ; preds = %entry, %sw.bb.125
  %83 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type129 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %83, i32 0, i32 0
  store i32 2, i32* %type129, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.130:                                        ; preds = %entry
  %84 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags131 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %84, i32 0, i32 1
  %85 = load i64, i64* %flags131, align 8, !tbaa !19
  %or132 = or i64 %85, 256
  store i64 %or132, i64* %flags131, align 8, !tbaa !19
  %86 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type133 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %86, i32 0, i32 0
  store i32 5, i32* %type133, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.134:                                        ; preds = %entry
  %87 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type135 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %87, i32 0, i32 0
  store i32 6, i32* %type135, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.136:                                        ; preds = %entry
  %88 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %flags137 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %88, i32 0, i32 1
  %89 = load i64, i64* %flags137, align 8, !tbaa !19
  %or138 = or i64 %89, 32768
  store i64 %or138, i64* %flags137, align 8, !tbaa !19
  br label %sw.bb.139

sw.bb.139:                                        ; preds = %entry, %sw.bb.136
  %90 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %baseSpecifier140 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %90, i32 0, i32 5
  store i32 16, i32* %baseSpecifier140, align 4, !tbaa !42
  %91 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type141 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %91, i32 0, i32 0
  store i32 2, i32* %type141, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.142:                                        ; preds = %entry
  %92 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %type143 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %92, i32 0, i32 0
  store i32 9, i32* %type143, align 4, !tbaa !29
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %93 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %shl = shl i32 %93, 8
  %add = add nsw i32 2, %shl
  %sub = sub nsw i32 0, %add
  store i32 %sub, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.142, %sw.bb.139, %sw.bb.134, %sw.bb.130, %sw.bb.128, %sw.bb.121, %sw.bb.114, %sw.bb.106, %sw.bb.98, %sw.bb.95, %sw.bb.91, %sw.bb.89, %if.end.88, %if.end.31, %if.end.11
  %94 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %95 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameter.addr, align 8, !tbaa !1
  %endOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %95, i32 0, i32 8
  store i32 %94, i32* %endOffset, align 4, !tbaa !24
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal void @TrioCopyParameter(%struct.trio_parameter_t* %target, %struct.trio_parameter_t* %source) #0 {
entry:
  %target.addr = alloca %struct.trio_parameter_t*, align 8
  %source.addr = alloca %struct.trio_parameter_t*, align 8
  store %struct.trio_parameter_t* %target, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  store %struct.trio_parameter_t* %source, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %0 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4, !tbaa !29
  %2 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %2, i32 0, i32 0
  store i32 %1, i32* %type1, align 4, !tbaa !29
  %3 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %3, i32 0, i32 1
  %4 = load i64, i64* %flags, align 8, !tbaa !19
  %5 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %flags2 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %5, i32 0, i32 1
  store i64 %4, i64* %flags2, align 8, !tbaa !19
  %6 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %6, i32 0, i32 2
  %7 = load i32, i32* %width, align 4, !tbaa !26
  %8 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %8, i32 0, i32 2
  store i32 %7, i32* %width3, align 4, !tbaa !26
  %9 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %precision = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %9, i32 0, i32 3
  %10 = load i32, i32* %precision, align 4, !tbaa !30
  %11 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %precision4 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %11, i32 0, i32 3
  store i32 %10, i32* %precision4, align 4, !tbaa !30
  %12 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %12, i32 0, i32 4
  %13 = load i32, i32* %base, align 4, !tbaa !31
  %14 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %base5 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %14, i32 0, i32 4
  store i32 %13, i32* %base5, align 4, !tbaa !31
  %15 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %baseSpecifier = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %15, i32 0, i32 5
  %16 = load i32, i32* %baseSpecifier, align 4, !tbaa !42
  %17 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %baseSpecifier6 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %17, i32 0, i32 5
  store i32 %16, i32* %baseSpecifier6, align 4, !tbaa !42
  %18 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %varsize = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %18, i32 0, i32 6
  %19 = load i32, i32* %varsize, align 4, !tbaa !33
  %20 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %varsize7 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %20, i32 0, i32 6
  store i32 %19, i32* %varsize7, align 4, !tbaa !33
  %21 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %beginOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %21, i32 0, i32 7
  %22 = load i32, i32* %beginOffset, align 4, !tbaa !32
  %23 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %beginOffset8 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %23, i32 0, i32 7
  store i32 %22, i32* %beginOffset8, align 4, !tbaa !32
  %24 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %endOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %24, i32 0, i32 8
  %25 = load i32, i32* %endOffset, align 4, !tbaa !24
  %26 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %endOffset9 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %26, i32 0, i32 8
  store i32 %25, i32* %endOffset9, align 4, !tbaa !24
  %27 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %27, i32 0, i32 9
  %28 = load i32, i32* %position, align 4, !tbaa !25
  %29 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %position10 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %29, i32 0, i32 9
  store i32 %28, i32* %position10, align 4, !tbaa !25
  %30 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %target.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %30, i32 0, i32 10
  %31 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %source.addr, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %31, i32 0, i32 10
  %32 = bitcast %union.anon.0* %data to i8*
  %33 = bitcast %union.anon.0* %data11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 16, i1 false), !tbaa.struct !43
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioGetPosition(i8* %format, i32* %offsetPointer) #0 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %offsetPointer.addr = alloca i32*, align 8
  %tmpformat = alloca i8*, align 8
  %number = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i32* %offsetPointer, i32** %offsetPointer.addr, align 8, !tbaa !1
  %0 = bitcast i8** %tmpformat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %number, align 4, !tbaa !5
  %2 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32*, i32** %offsetPointer.addr, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !5
  store i32 %4, i32* %offset, align 4, !tbaa !5
  %5 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %call = call i64 @trio_to_long(i8* %arrayidx, i8** %tmpformat, i32 10) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %number, align 4, !tbaa !5
  %7 = load i8*, i8** %tmpformat, align 8, !tbaa !1
  %8 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv1 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv1, i32* %offset, align 4, !tbaa !5
  %9 = load i32, i32* %number, align 4, !tbaa !5
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %offset, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %offset, align 4, !tbaa !5
  %idxprom3 = sext i32 %10 to i64
  %11 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %idxprom3
  %12 = load i8, i8* %arrayidx4, align 1, !tbaa !15
  %conv5 = sext i8 %12 to i32
  %cmp6 = icmp eq i32 36, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %offset, align 4, !tbaa !5
  %14 = load i32*, i32** %offsetPointer.addr, align 8, !tbaa !1
  store i32 %13, i32* %14, align 4, !tbaa !5
  %15 = load i32, i32* %number, align 4, !tbaa !5
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i8** %tmpformat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioIsQualifier(i8 signext %character) #0 {
entry:
  %retval = alloca i32, align 4
  %character.addr = alloca i8, align 1
  store i8 %character, i8* %character.addr, align 1, !tbaa !15
  %0 = load i8, i8* %character.addr, align 1, !tbaa !15
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 43, label %sw.bb
    i32 45, label %sw.bb
    i32 32, label %sw.bb
    i32 46, label %sw.bb
    i32 42, label %sw.bb
    i32 35, label %sw.bb
    i32 104, label %sw.bb
    i32 108, label %sw.bb
    i32 94, label %sw.bb
    i32 76, label %sw.bb
    i32 122, label %sw.bb
    i32 116, label %sw.bb
    i32 106, label %sw.bb
    i32 113, label %sw.bb
    i32 90, label %sw.bb
    i32 119, label %sw.bb
    i32 39, label %sw.bb
    i32 33, label %sw.bb
    i32 38, label %sw.bb
    i32 73, label %sw.bb
    i32 82, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @trio_to_long(i8* %string, i8** %endp, i32 %base) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %endp.addr = alloca i8**, align 8
  %base.addr = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8, !tbaa !1
  store i8** %endp, i8*** %endp.addr, align 8, !tbaa !1
  store i32 %base, i32* %base.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %1 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  %2 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call = call i64 @strtol(i8* %0, i8** %1, i32 %2) #9
  ret i64 %call
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @TrioWriteStringCharacter(%struct._trio_class_t* %self, i32 %ch, i64 %flags) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %ch.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !5
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  %0 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and = and i64 %0, 16
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else.41

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %call = call i16** @__ctype_b_loc() #11
  %2 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %conv = zext i16 %3 to i32
  %and1 = and i32 %conv, 16384
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %4, i32 0, i32 0
  %OutStream4 = bitcast {}** %OutStream to void (%struct._trio_class_t*, i32)**
  %5 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream4, align 8, !tbaa !9
  %6 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %5(%struct._trio_class_t* %6, i32 92) #8
  %7 = load i32, i32* %ch.addr, align 4, !tbaa !5
  switch i32 %7, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb.7
    i32 12, label %sw.bb.10
    i32 10, label %sw.bb.13
    i32 13, label %sw.bb.16
    i32 9, label %sw.bb.19
    i32 11, label %sw.bb.22
    i32 92, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.then.3
  %8 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream5 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %8, i32 0, i32 0
  %OutStream6 = bitcast {}** %OutStream5 to void (%struct._trio_class_t*, i32)**
  %9 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream6, align 8, !tbaa !9
  %10 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %9(%struct._trio_class_t* %10, i32 97) #8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then.3
  %11 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream8 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %11, i32 0, i32 0
  %OutStream9 = bitcast {}** %OutStream8 to void (%struct._trio_class_t*, i32)**
  %12 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream9, align 8, !tbaa !9
  %13 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %12(%struct._trio_class_t* %13, i32 98) #8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then.3
  %14 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream11 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %14, i32 0, i32 0
  %OutStream12 = bitcast {}** %OutStream11 to void (%struct._trio_class_t*, i32)**
  %15 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream12, align 8, !tbaa !9
  %16 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %15(%struct._trio_class_t* %16, i32 102) #8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then.3
  %17 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream14 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %17, i32 0, i32 0
  %OutStream15 = bitcast {}** %OutStream14 to void (%struct._trio_class_t*, i32)**
  %18 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream15, align 8, !tbaa !9
  %19 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %18(%struct._trio_class_t* %19, i32 110) #8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then.3
  %20 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream17 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %20, i32 0, i32 0
  %OutStream18 = bitcast {}** %OutStream17 to void (%struct._trio_class_t*, i32)**
  %21 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream18, align 8, !tbaa !9
  %22 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %21(%struct._trio_class_t* %22, i32 114) #8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then.3
  %23 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream20 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %23, i32 0, i32 0
  %OutStream21 = bitcast {}** %OutStream20 to void (%struct._trio_class_t*, i32)**
  %24 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream21, align 8, !tbaa !9
  %25 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %24(%struct._trio_class_t* %25, i32 116) #8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then.3
  %26 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream23 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %26, i32 0, i32 0
  %OutStream24 = bitcast {}** %OutStream23 to void (%struct._trio_class_t*, i32)**
  %27 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream24, align 8, !tbaa !9
  %28 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %27(%struct._trio_class_t* %28, i32 118) #8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.3
  %29 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream26 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %29, i32 0, i32 0
  %OutStream27 = bitcast {}** %OutStream26 to void (%struct._trio_class_t*, i32)**
  %30 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream27, align 8, !tbaa !9
  %31 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %30(%struct._trio_class_t* %31, i32 92) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.3
  %32 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream28 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %32, i32 0, i32 0
  %OutStream29 = bitcast {}** %OutStream28 to void (%struct._trio_class_t*, i32)**
  %33 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream29, align 8, !tbaa !9
  %34 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %33(%struct._trio_class_t* %34, i32 120) #8
  %35 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %36 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %conv30 = sext i32 %36 to i64
  call void @TrioWriteNumber(%struct._trio_class_t* %35, i64 %conv30, i64 24576, i32 2, i32 2, i32 16) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.25, %sw.bb.22, %sw.bb.19, %sw.bb.16, %sw.bb.13, %sw.bb.10, %sw.bb.7, %sw.bb
  br label %if.end.40

if.else:                                          ; preds = %if.then
  %37 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %37, 92
  br i1 %cmp, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %if.else
  %38 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream33 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %38, i32 0, i32 0
  %OutStream34 = bitcast {}** %OutStream33 to void (%struct._trio_class_t*, i32)**
  %39 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream34, align 8, !tbaa !9
  %40 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %39(%struct._trio_class_t* %40, i32 92) #8
  %41 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream35 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %41, i32 0, i32 0
  %OutStream36 = bitcast {}** %OutStream35 to void (%struct._trio_class_t*, i32)**
  %42 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream36, align 8, !tbaa !9
  %43 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %42(%struct._trio_class_t* %43, i32 92) #8
  br label %if.end

if.else.37:                                       ; preds = %if.else
  %44 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream38 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %44, i32 0, i32 0
  %OutStream39 = bitcast {}** %OutStream38 to void (%struct._trio_class_t*, i32)**
  %45 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream39, align 8, !tbaa !9
  %46 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %47 = load i32, i32* %ch.addr, align 4, !tbaa !5
  call void %45(%struct._trio_class_t* %46, i32 %47) #8
  br label %if.end

if.end:                                           ; preds = %if.else.37, %if.then.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %sw.epilog
  br label %if.end.44

if.else.41:                                       ; preds = %entry
  %48 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream42 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %48, i32 0, i32 0
  %OutStream43 = bitcast {}** %OutStream42 to void (%struct._trio_class_t*, i32)**
  %49 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream43, align 8, !tbaa !9
  %50 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %51 = load i32, i32* %ch.addr, align 4, !tbaa !5
  call void %49(%struct._trio_class_t* %50, i32 %51) #8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.end.40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TrioWriteDouble(%struct._trio_class_t* %self, x86_fp80 %number, i64 %flags, i32 %width, i32 %precision, i32 %base) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %number.addr = alloca x86_fp80, align 16
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %precision.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %integerNumber = alloca x86_fp80, align 16
  %fractionNumber = alloca x86_fp80, align 16
  %workNumber = alloca x86_fp80, align 16
  %integerDigits = alloca i32, align 4
  %fractionDigits = alloca i32, align 4
  %exponentDigits = alloca i32, align 4
  %workDigits = alloca i32, align 4
  %baseDigits = alloca i32, align 4
  %integerThreshold = alloca i32, align 4
  %fractionThreshold = alloca i32, align 4
  %expectedWidth = alloca i32, align 4
  %exponent = alloca i32, align 4
  %uExponent = alloca i32, align 4
  %exponentBase = alloca i32, align 4
  %dblBase = alloca x86_fp80, align 16
  %dblFractionBase = alloca x86_fp80, align 16
  %integerAdjust = alloca x86_fp80, align 16
  %fractionAdjust = alloca x86_fp80, align 16
  %workFractionNumber = alloca x86_fp80, align 16
  %workFractionAdjust = alloca x86_fp80, align 16
  %fractionDigitsInspect = alloca i32, align 4
  %isNegative = alloca i32, align 4
  %isExponentNegative = alloca i32, align 4
  %requireTwoDigitExponent = alloca i32, align 4
  %isHex = alloca i32, align 4
  %digits = alloca i8*, align 8
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  %hasOnlyZeroes = alloca i32, align 4
  %leadingFractionZeroes = alloca i32, align 4
  %trailingZeroes = alloca i32, align 4
  %keepTrailingZeroes = alloca i32, align 4
  %keepDecimalPoint = alloca i32, align 4
  %epsilon = alloca x86_fp80, align 16
  %adjustNumber = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store x86_fp80 %number, x86_fp80* %number.addr, align 16, !tbaa !36
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %precision, i32* %precision.addr, align 4, !tbaa !5
  store i32 %base, i32* %base.addr, align 4, !tbaa !5
  %0 = bitcast x86_fp80* %integerNumber to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast x86_fp80* %fractionNumber to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast x86_fp80* %workNumber to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %integerDigits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %fractionDigits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %exponentDigits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %workDigits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %baseDigits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %integerThreshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %fractionThreshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %expectedWidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %exponent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %exponent, align 4, !tbaa !5
  %12 = bitcast i32* %uExponent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %uExponent, align 4, !tbaa !5
  %13 = bitcast i32* %exponentBase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast x86_fp80* %dblBase to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast x86_fp80* %dblFractionBase to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast x86_fp80* %integerAdjust to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = bitcast x86_fp80* %fractionAdjust to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = bitcast x86_fp80* %workFractionNumber to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #1
  %19 = bitcast x86_fp80* %workFractionAdjust to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = bitcast i32* %fractionDigitsInspect to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %isExponentNegative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %isExponentNegative, align 4, !tbaa !5
  %23 = bitcast i32* %requireTwoDigitExponent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %isHex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i8** %digits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %hasOnlyZeroes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %leadingFractionZeroes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 -1, i32* %leadingFractionZeroes, align 4, !tbaa !5
  %30 = bitcast i32* %trailingZeroes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %keepTrailingZeroes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %keepDecimalPoint to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast x86_fp80* %epsilon to i8*
  call void @llvm.lifetime.start(i64 16, i8* %33) #1
  %34 = bitcast i32* %adjustNumber to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 0, i32* %adjustNumber, align 4, !tbaa !5
  %35 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %conv = fptrunc x86_fp80 %35 to double
  %call = call i32 @trio_fpclassify_and_signbit(double %conv, i32* %isNegative) #8
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %36 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %37 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and = and i64 %37, 32768
  %tobool = icmp ne i64 %and, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)
  %38 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %39 = load i32, i32* %width.addr, align 4, !tbaa !5
  %40 = load i32, i32* %precision.addr, align 4, !tbaa !5
  call void @TrioWriteString(%struct._trio_class_t* %36, i8* %cond, i64 %38, i32 %39, i32 %40) #8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %41 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %41, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %42 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %43 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and3 = and i64 %43, 32768
  %tobool4 = icmp ne i64 %and3, 0
  %cond5 = select i1 %tobool4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)
  %44 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %45 = load i32, i32* %width.addr, align 4, !tbaa !5
  %46 = load i32, i32* %precision.addr, align 4, !tbaa !5
  call void @TrioWriteString(%struct._trio_class_t* %42, i8* %cond5, i64 %44, i32 %45, i32 %46) #8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %sw.bb.1
  %47 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %48 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and6 = and i64 %48, 32768
  %tobool7 = icmp ne i64 %and6, 0
  %cond8 = select i1 %tobool7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)
  %49 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %50 = load i32, i32* %width.addr, align 4, !tbaa !5
  %51 = load i32, i32* %precision.addr, align 4, !tbaa !5
  call void @TrioWriteString(%struct._trio_class_t* %47, i8* %cond8, i64 %49, i32 %50, i32 %51) #8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %52 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and9 = and i64 %52, 512
  %tobool10 = icmp ne i64 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %sw.epilog
  %53 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %53, 10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  %54 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call13 = call double @TrioLogarithmBase(i32 %54) #8
  %div = fdiv double 6.400000e+01, %call13
  %conv14 = fpext double %div to x86_fp80
  %call15 = call x86_fp80 @floorl(x86_fp80 %conv14) #11
  %conv16 = fptosi x86_fp80 %call15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond17 = phi i32 [ 18, %cond.true ], [ %conv16, %cond.false ]
  store i32 %cond17, i32* %baseDigits, align 4, !tbaa !5
  store x86_fp80 0xK3FC08000000000000000, x86_fp80* %epsilon, align 16, !tbaa !36
  br label %if.end.45

if.else.18:                                       ; preds = %sw.epilog
  %55 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and19 = and i64 %55, 32
  %tobool20 = icmp ne i64 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.33

if.then.21:                                       ; preds = %if.else.18
  %56 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %56, 10
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.then.21
  br label %cond.end.31

cond.false.25:                                    ; preds = %if.then.21
  %57 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call26 = call double @TrioLogarithmBase(i32 %57) #8
  %div27 = fdiv double 2.400000e+01, %call26
  %conv28 = fpext double %div27 to x86_fp80
  %call29 = call x86_fp80 @floorl(x86_fp80 %conv28) #11
  %conv30 = fptosi x86_fp80 %call29 to i32
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.25, %cond.true.24
  %cond32 = phi i32 [ 6, %cond.true.24 ], [ %conv30, %cond.false.25 ]
  store i32 %cond32, i32* %baseDigits, align 4, !tbaa !5
  store x86_fp80 0xK3FE88000000000000000, x86_fp80* %epsilon, align 16, !tbaa !36
  br label %if.end

if.else.33:                                       ; preds = %if.else.18
  %58 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %58, 10
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %if.else.33
  br label %cond.end.43

cond.false.37:                                    ; preds = %if.else.33
  %59 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call38 = call double @TrioLogarithmBase(i32 %59) #8
  %div39 = fdiv double 5.300000e+01, %call38
  %conv40 = fpext double %div39 to x86_fp80
  %call41 = call x86_fp80 @floorl(x86_fp80 %conv40) #11
  %conv42 = fptosi x86_fp80 %call41 to i32
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.37, %cond.true.36
  %cond44 = phi i32 [ 15, %cond.true.36 ], [ %conv42, %cond.false.37 ]
  store i32 %cond44, i32* %baseDigits, align 4, !tbaa !5
  store x86_fp80 0xK3FCB8000000000000000, x86_fp80* %epsilon, align 16, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %cond.end.43, %cond.end.31
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %cond.end
  %60 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and46 = and i64 %60, 32768
  %tobool47 = icmp ne i64 %and46, 0
  %cond48 = select i1 %tobool47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @internalDigitsUpper, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @internalDigitsLower, i32 0, i32 0)
  store i8* %cond48, i8** %digits, align 8, !tbaa !1
  %61 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %61, 16
  %conv50 = zext i1 %cmp49 to i32
  store i32 %conv50, i32* %isHex, align 4, !tbaa !5
  %62 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp51 = icmp eq i32 %62, -1
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.45
  store i32 10, i32* %base.addr, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.45
  %63 = load i32, i32* %base.addr, align 4, !tbaa !5
  %conv55 = sitofp i32 %63 to x86_fp80
  store x86_fp80 %conv55, x86_fp80* %dblBase, align 16, !tbaa !36
  %64 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and56 = and i64 %64, 4096
  %tobool57 = icmp ne i64 %and56, 0
  br i1 %tobool57, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.54
  %65 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and58 = and i64 %65, 8388608
  %tobool59 = icmp ne i64 %and58, 0
  br i1 %tobool59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %66 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and60 = and i64 %66, 16
  %tobool61 = icmp ne i64 %and60, 0
  %lnot = xor i1 %tobool61, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %67 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end.54
  %68 = phi i1 [ true, %if.end.54 ], [ %67, %land.end ]
  %lnot62 = xor i1 %68, true
  %lnot.ext = zext i1 %lnot62 to i32
  store i32 %lnot.ext, i32* %keepTrailingZeroes, align 4, !tbaa !5
  %69 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp63 = icmp eq i32 %69, -1
  br i1 %cmp63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %lor.end
  %70 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool66 = icmp ne i32 %70, 0
  br i1 %tobool66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.then.65
  store i32 0, i32* %keepTrailingZeroes, align 4, !tbaa !5
  store i32 24, i32* %precision.addr, align 4, !tbaa !5
  br label %if.end.69

if.else.68:                                       ; preds = %if.then.65
  store i32 6, i32* %precision.addr, align 4, !tbaa !5
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.then.67
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %lor.end
  %71 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool71 = icmp ne i32 %71, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.70
  %72 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %sub = fsub x86_fp80 0xK80000000000000000000, %72
  store x86_fp80 %sub, x86_fp80* %number.addr, align 16, !tbaa !36
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.70
  %73 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool74 = icmp ne i32 %73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  %74 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %or = or i64 %74, 4194304
  store i64 %or, i64* %flags.addr, align 8, !tbaa !7
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.73
  br label %reprocess

reprocess:                                        ; preds = %if.then.242, %if.end.76
  %75 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and77 = and i64 %75, 8388608
  %tobool78 = icmp ne i64 %and77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.115

if.then.79:                                       ; preds = %reprocess
  %76 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %76, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.79
  store i32 1, i32* %precision.addr, align 4, !tbaa !5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.then.79
  %77 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %cmp84 = fcmp olt x86_fp80 %77, 0xK3FF1D1B715F90A1B4845
  br i1 %cmp84, label %if.then.91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.83
  %78 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %79 = load i32, i32* %base.addr, align 4, !tbaa !5
  %80 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %conv86 = sitofp i32 %80 to x86_fp80
  %conv87 = fptosi x86_fp80 %conv86 to i32
  %call88 = call x86_fp80 @TrioPower(i32 %79, i32 %conv87) #8
  %cmp89 = fcmp oge x86_fp80 %78, %call88
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %lor.lhs.false, %if.end.83
  %81 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %or92 = or i64 %81, 4194304
  store i64 %or92, i64* %flags.addr, align 8, !tbaa !7
  br label %if.end.114

if.else.93:                                       ; preds = %lor.lhs.false
  %82 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %cmp94 = fcmp olt x86_fp80 %82, 0xK3FFF8000000000000000
  br i1 %cmp94, label %if.then.96, label %if.end.113

if.then.96:                                       ; preds = %if.else.93
  %83 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %84 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call97 = call x86_fp80 @TrioLogarithm(x86_fp80 %83, i32 %84) #8
  store x86_fp80 %call97, x86_fp80* %workNumber, align 16, !tbaa !36
  %85 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %cmp98 = fcmp olt x86_fp80 %85, 0xK00000000000000000000
  br i1 %cmp98, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %if.then.96
  %86 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %sub101 = fsub x86_fp80 0xK80000000000000000000, %86
  br label %cond.end.103

cond.false.102:                                   ; preds = %if.then.96
  %87 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.100
  %cond104 = phi x86_fp80 [ %sub101, %cond.true.100 ], [ %87, %cond.false.102 ]
  store x86_fp80 %cond104, x86_fp80* %workNumber, align 16, !tbaa !36
  %88 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %89 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %call105 = call x86_fp80 @floorl(x86_fp80 %89) #11
  %sub106 = fsub x86_fp80 %88, %call105
  %90 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp107 = fcmp olt x86_fp80 %sub106, %90
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %cond.end.103
  %91 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %dec = fadd x86_fp80 %91, 0xKBFFF8000000000000000
  store x86_fp80 %dec, x86_fp80* %workNumber, align 16, !tbaa !36
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %cond.end.103
  %92 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %call111 = call x86_fp80 @floorl(x86_fp80 %92) #11
  %conv112 = fptosi x86_fp80 %call111 to i32
  store i32 %conv112, i32* %leadingFractionZeroes, align 4, !tbaa !5
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.110, %if.else.93
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.91
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %reprocess
  %93 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and116 = and i64 %93, 4194304
  %tobool117 = icmp ne i64 %and116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.169

if.then.118:                                      ; preds = %if.end.115
  %94 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %95 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call119 = call x86_fp80 @TrioLogarithm(x86_fp80 %94, i32 %95) #8
  store x86_fp80 %call119, x86_fp80* %workNumber, align 16, !tbaa !36
  %96 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %conv120 = fptrunc x86_fp80 %96 to double
  %call121 = call i32 @trio_isinf(double %conv120) #8
  %cmp122 = icmp eq i32 %call121, -1
  br i1 %cmp122, label %if.then.124, label %if.else.130

if.then.124:                                      ; preds = %if.then.118
  store i32 0, i32* %exponent, align 4, !tbaa !5
  %97 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and125 = and i64 %97, 8388608
  %tobool126 = icmp ne i64 %and125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.then.124
  %98 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and128 = and i64 %98, -4194305
  store i64 %and128, i64* %flags.addr, align 8, !tbaa !7
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.then.124
  br label %if.end.168

if.else.130:                                      ; preds = %if.then.118
  %99 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %call131 = call x86_fp80 @floorl(x86_fp80 %99) #11
  %conv132 = fptosi x86_fp80 %call131 to i32
  store i32 %conv132, i32* %exponent, align 4, !tbaa !5
  %100 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  store x86_fp80 %100, x86_fp80* %workNumber, align 16, !tbaa !36
  %101 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %conv133 = fptosi x86_fp80 %101 to i32
  %102 = load i32, i32* %exponent, align 4, !tbaa !5
  %sub134 = sub nsw i32 0, %102
  %conv135 = sitofp i32 %sub134 to x86_fp80
  %conv136 = fptosi x86_fp80 %conv135 to i32
  %call137 = call x86_fp80 @TrioPower(i32 %conv133, i32 %conv136) #8
  %103 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %mul = fmul x86_fp80 %103, %call137
  store x86_fp80 %mul, x86_fp80* %workNumber, align 16, !tbaa !36
  %104 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %conv138 = fptrunc x86_fp80 %104 to double
  %call139 = call i32 @trio_isinf(double %conv138) #8
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.155

if.then.141:                                      ; preds = %if.else.130
  %105 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %conv142 = fptosi x86_fp80 %105 to i32
  %106 = load i32, i32* %exponent, align 4, !tbaa !5
  %div143 = sdiv i32 %106, 2
  %conv144 = sitofp i32 %div143 to x86_fp80
  %conv145 = fptosi x86_fp80 %conv144 to i32
  %call146 = call x86_fp80 @TrioPower(i32 %conv142, i32 %conv145) #8
  %107 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %div147 = fdiv x86_fp80 %107, %call146
  store x86_fp80 %div147, x86_fp80* %workNumber, align 16, !tbaa !36
  %108 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %conv148 = fptosi x86_fp80 %108 to i32
  %109 = load i32, i32* %exponent, align 4, !tbaa !5
  %110 = load i32, i32* %exponent, align 4, !tbaa !5
  %div149 = sdiv i32 %110, 2
  %sub150 = sub nsw i32 %109, %div149
  %conv151 = sitofp i32 %sub150 to x86_fp80
  %conv152 = fptosi x86_fp80 %conv151 to i32
  %call153 = call x86_fp80 @TrioPower(i32 %conv148, i32 %conv152) #8
  %111 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %div154 = fdiv x86_fp80 %111, %call153
  store x86_fp80 %div154, x86_fp80* %workNumber, align 16, !tbaa !36
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.141, %if.else.130
  %112 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  store x86_fp80 %112, x86_fp80* %number.addr, align 16, !tbaa !36
  %113 = load i32, i32* %exponent, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %113, 0
  %conv157 = zext i1 %cmp156 to i32
  store i32 %conv157, i32* %isExponentNegative, align 4, !tbaa !5
  %114 = load i32, i32* %isExponentNegative, align 4, !tbaa !5
  %tobool158 = icmp ne i32 %114, 0
  br i1 %tobool158, label %cond.true.159, label %cond.false.161

cond.true.159:                                    ; preds = %if.end.155
  %115 = load i32, i32* %exponent, align 4, !tbaa !5
  %sub160 = sub nsw i32 0, %115
  br label %cond.end.162

cond.false.161:                                   ; preds = %if.end.155
  %116 = load i32, i32* %exponent, align 4, !tbaa !5
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.161, %cond.true.159
  %cond163 = phi i32 [ %sub160, %cond.true.159 ], [ %116, %cond.false.161 ]
  store i32 %cond163, i32* %uExponent, align 4, !tbaa !5
  %117 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool164 = icmp ne i32 %117, 0
  br i1 %tobool164, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %cond.end.162
  %118 = load i32, i32* %uExponent, align 4, !tbaa !5
  %mul166 = mul i32 %118, 4
  store i32 %mul166, i32* %uExponent, align 4, !tbaa !5
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %cond.end.162
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.129
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.115
  %119 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %call170 = call x86_fp80 @floorl(x86_fp80 %119) #11
  store x86_fp80 %call170, x86_fp80* %integerNumber, align 16, !tbaa !36
  %120 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %121 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %sub171 = fsub x86_fp80 %120, %121
  store x86_fp80 %sub171, x86_fp80* %fractionNumber, align 16, !tbaa !36
  store i32 1, i32* %integerDigits, align 4, !tbaa !5
  %122 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %123 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp172 = fcmp ogt x86_fp80 %122, %123
  br i1 %cmp172, label %if.then.174, label %if.end.177

if.then.174:                                      ; preds = %if.end.169
  %124 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %125 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call175 = call x86_fp80 @TrioLogarithm(x86_fp80 %124, i32 %125) #8
  %conv176 = fptosi x86_fp80 %call175 to i32
  %126 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %add = add nsw i32 %126, %conv176
  store i32 %add, i32* %integerDigits, align 4, !tbaa !5
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.174, %if.end.169
  %127 = load i32, i32* %precision.addr, align 4, !tbaa !5
  store i32 %127, i32* %fractionDigits, align 4, !tbaa !5
  %128 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and178 = and i64 %128, 8388608
  %tobool179 = icmp ne i64 %and178, 0
  br i1 %tobool179, label %if.then.180, label %if.end.194

if.then.180:                                      ; preds = %if.end.177
  %129 = load i32, i32* %leadingFractionZeroes, align 4, !tbaa !5
  %cmp181 = icmp sgt i32 %129, 0
  br i1 %cmp181, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.then.180
  %130 = load i32, i32* %leadingFractionZeroes, align 4, !tbaa !5
  %131 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %add184 = add nsw i32 %131, %130
  store i32 %add184, i32* %fractionDigits, align 4, !tbaa !5
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.then.180
  %132 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %133 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp186 = fcmp ogt x86_fp80 %132, %133
  br i1 %cmp186, label %if.then.191, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %if.end.185
  %134 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %135 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp189 = fcmp ole x86_fp80 %134, %135
  br i1 %cmp189, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %lor.lhs.false.188, %if.end.185
  %136 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %137 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %sub192 = sub nsw i32 %137, %136
  store i32 %sub192, i32* %fractionDigits, align 4, !tbaa !5
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.191, %lor.lhs.false.188
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.177
  %138 = load i32, i32* %base.addr, align 4, !tbaa !5
  %139 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %call195 = call x86_fp80 @TrioPower(i32 %138, i32 %139) #8
  store x86_fp80 %call195, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %140 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %cmp196 = fcmp olt x86_fp80 %140, 0xK3FFF8000000000000000
  br i1 %cmp196, label %if.then.198, label %if.else.219

if.then.198:                                      ; preds = %if.end.194
  %141 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %142 = load x86_fp80, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %mul199 = fmul x86_fp80 %141, %142
  %add200 = fadd x86_fp80 %mul199, 0xK3FFE8000000000000000
  store x86_fp80 %add200, x86_fp80* %workNumber, align 16, !tbaa !36
  %143 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %144 = load x86_fp80, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %mul201 = fmul x86_fp80 %143, %144
  %call202 = call x86_fp80 @floorl(x86_fp80 %mul201) #11
  %145 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %call203 = call x86_fp80 @floorl(x86_fp80 %145) #11
  %cmp204 = fcmp une x86_fp80 %call202, %call203
  br i1 %cmp204, label %if.then.206, label %if.end.217

if.then.206:                                      ; preds = %if.then.198
  store i32 1, i32* %adjustNumber, align 4, !tbaa !5
  %146 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %147 = load x86_fp80, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %mul207 = fmul x86_fp80 %146, %147
  %148 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call208 = call x86_fp80 @TrioLogarithm(x86_fp80 %mul207, i32 %148) #8
  %conv209 = fptosi x86_fp80 %call208 to i32
  %149 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %150 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call210 = call x86_fp80 @TrioLogarithm(x86_fp80 %149, i32 %150) #8
  %conv211 = fptosi x86_fp80 %call210 to i32
  %cmp212 = icmp ne i32 %conv209, %conv211
  br i1 %cmp212, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %if.then.206
  %151 = load i32, i32* %leadingFractionZeroes, align 4, !tbaa !5
  %dec215 = add nsw i32 %151, -1
  store i32 %dec215, i32* %leadingFractionZeroes, align 4, !tbaa !5
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.214, %if.then.206
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.198
  %152 = load x86_fp80, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %153 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %div218 = fdiv x86_fp80 %153, %152
  store x86_fp80 %div218, x86_fp80* %workNumber, align 16, !tbaa !36
  br label %if.end.226

if.else.219:                                      ; preds = %if.end.194
  %154 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %155 = load x86_fp80, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %div220 = fdiv x86_fp80 0xK3FFE8000000000000000, %155
  %add221 = fadd x86_fp80 %154, %div220
  store x86_fp80 %add221, x86_fp80* %workNumber, align 16, !tbaa !36
  %156 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %call222 = call x86_fp80 @floorl(x86_fp80 %156) #11
  %157 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %call223 = call x86_fp80 @floorl(x86_fp80 %157) #11
  %cmp224 = fcmp une x86_fp80 %call222, %call223
  %conv225 = zext i1 %cmp224 to i32
  store i32 %conv225, i32* %adjustNumber, align 4, !tbaa !5
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.219, %if.end.217
  %158 = load i32, i32* %adjustNumber, align 4, !tbaa !5
  %tobool227 = icmp ne i32 %158, 0
  br i1 %tobool227, label %if.then.228, label %if.end.336

if.then.228:                                      ; preds = %if.end.226
  %159 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and229 = and i64 %159, 8388608
  %tobool230 = icmp ne i64 %and229, 0
  br i1 %tobool230, label %land.lhs.true, label %if.end.245

land.lhs.true:                                    ; preds = %if.then.228
  %160 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and231 = and i64 %160, 4194304
  %tobool232 = icmp ne i64 %and231, 0
  br i1 %tobool232, label %if.end.245, label %if.then.233

if.then.233:                                      ; preds = %land.lhs.true
  %161 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %cmp234 = fcmp olt x86_fp80 %161, 0xK3FF1D1B71758E219652C
  br i1 %cmp234, label %if.then.242, label %lor.lhs.false.236

lor.lhs.false.236:                                ; preds = %if.then.233
  %162 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %163 = load i32, i32* %base.addr, align 4, !tbaa !5
  %164 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %conv237 = sitofp i32 %164 to x86_fp80
  %conv238 = fptosi x86_fp80 %conv237 to i32
  %call239 = call x86_fp80 @TrioPower(i32 %163, i32 %conv238) #8
  %cmp240 = fcmp oge x86_fp80 %162, %call239
  br i1 %cmp240, label %if.then.242, label %if.end.244

if.then.242:                                      ; preds = %lor.lhs.false.236, %if.then.233
  %165 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %or243 = or i64 %165, 4194304
  store i64 %or243, i64* %flags.addr, align 8, !tbaa !7
  br label %reprocess

if.end.244:                                       ; preds = %lor.lhs.false.236
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %land.lhs.true, %if.then.228
  %166 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and246 = and i64 %166, 4194304
  %tobool247 = icmp ne i64 %and246, 0
  br i1 %tobool247, label %if.then.248, label %if.else.279

if.then.248:                                      ; preds = %if.end.245
  %167 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %call249 = call x86_fp80 @floorl(x86_fp80 %167) #11
  %168 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call250 = call x86_fp80 @TrioLogarithm(x86_fp80 %call249, i32 %168) #8
  %add251 = fadd x86_fp80 0xK3FFF8000000000000000, %call250
  %conv252 = fptosi x86_fp80 %add251 to i32
  store i32 %conv252, i32* %workDigits, align 4, !tbaa !5
  %169 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %170 = load i32, i32* %workDigits, align 4, !tbaa !5
  %cmp253 = icmp eq i32 %169, %170
  br i1 %cmp253, label %if.then.255, label %if.else.260

if.then.255:                                      ; preds = %if.then.248
  %171 = load x86_fp80, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %div256 = fdiv x86_fp80 0xK3FFE8000000000000000, %171
  %172 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %add257 = fadd x86_fp80 %172, %div256
  store x86_fp80 %add257, x86_fp80* %number.addr, align 16, !tbaa !36
  %173 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %call258 = call x86_fp80 @floorl(x86_fp80 %173) #11
  store x86_fp80 %call258, x86_fp80* %integerNumber, align 16, !tbaa !36
  %174 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %175 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %sub259 = fsub x86_fp80 %174, %175
  store x86_fp80 %sub259, x86_fp80* %fractionNumber, align 16, !tbaa !36
  br label %if.end.278

if.else.260:                                      ; preds = %if.then.248
  %176 = load i32, i32* %exponent, align 4, !tbaa !5
  %inc = add nsw i32 %176, 1
  store i32 %inc, i32* %exponent, align 4, !tbaa !5
  %177 = load i32, i32* %exponent, align 4, !tbaa !5
  %cmp261 = icmp slt i32 %177, 0
  %conv262 = zext i1 %cmp261 to i32
  store i32 %conv262, i32* %isExponentNegative, align 4, !tbaa !5
  %178 = load i32, i32* %isExponentNegative, align 4, !tbaa !5
  %tobool263 = icmp ne i32 %178, 0
  br i1 %tobool263, label %cond.true.264, label %cond.false.266

cond.true.264:                                    ; preds = %if.else.260
  %179 = load i32, i32* %exponent, align 4, !tbaa !5
  %sub265 = sub nsw i32 0, %179
  br label %cond.end.267

cond.false.266:                                   ; preds = %if.else.260
  %180 = load i32, i32* %exponent, align 4, !tbaa !5
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.false.266, %cond.true.264
  %cond268 = phi i32 [ %sub265, %cond.true.264 ], [ %180, %cond.false.266 ]
  store i32 %cond268, i32* %uExponent, align 4, !tbaa !5
  %181 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool269 = icmp ne i32 %181, 0
  br i1 %tobool269, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %cond.end.267
  %182 = load i32, i32* %uExponent, align 4, !tbaa !5
  %mul271 = mul i32 %182, 4
  store i32 %mul271, i32* %uExponent, align 4, !tbaa !5
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %cond.end.267
  %183 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %184 = load x86_fp80, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %div273 = fdiv x86_fp80 0xK3FFE8000000000000000, %184
  %add274 = fadd x86_fp80 %183, %div273
  %185 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %div275 = fdiv x86_fp80 %add274, %185
  store x86_fp80 %div275, x86_fp80* %workNumber, align 16, !tbaa !36
  %186 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %call276 = call x86_fp80 @floorl(x86_fp80 %186) #11
  store x86_fp80 %call276, x86_fp80* %integerNumber, align 16, !tbaa !36
  %187 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %188 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %sub277 = fsub x86_fp80 %187, %188
  store x86_fp80 %sub277, x86_fp80* %fractionNumber, align 16, !tbaa !36
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.272, %if.then.255
  br label %if.end.335

if.else.279:                                      ; preds = %if.end.245
  %189 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %cmp280 = fcmp ogt x86_fp80 %189, 0xK3FFF8000000000000000
  br i1 %cmp280, label %if.then.282, label %if.else.310

if.then.282:                                      ; preds = %if.else.279
  %190 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %call283 = call x86_fp80 @floorl(x86_fp80 %190) #11
  store x86_fp80 %call283, x86_fp80* %integerNumber, align 16, !tbaa !36
  store x86_fp80 0xK00000000000000000000, x86_fp80* %fractionNumber, align 16, !tbaa !36
  %191 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %192 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp284 = fcmp ogt x86_fp80 %191, %192
  br i1 %cmp284, label %cond.true.286, label %cond.false.290

cond.true.286:                                    ; preds = %if.then.282
  %193 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %194 = load i32, i32* %base.addr, align 4, !tbaa !5
  %call287 = call x86_fp80 @TrioLogarithm(x86_fp80 %193, i32 %194) #8
  %conv288 = fptosi x86_fp80 %call287 to i32
  %add289 = add nsw i32 1, %conv288
  br label %cond.end.291

cond.false.290:                                   ; preds = %if.then.282
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.290, %cond.true.286
  %cond292 = phi i32 [ %add289, %cond.true.286 ], [ 1, %cond.false.290 ]
  store i32 %cond292, i32* %integerDigits, align 4, !tbaa !5
  %195 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and293 = and i64 %195, 8388608
  %tobool294 = icmp ne i64 %and293, 0
  br i1 %tobool294, label %if.then.295, label %if.end.309

if.then.295:                                      ; preds = %cond.end.291
  %196 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and296 = and i64 %196, 16
  %tobool297 = icmp ne i64 %and296, 0
  br i1 %tobool297, label %if.then.298, label %if.else.307

if.then.298:                                      ; preds = %if.then.295
  %197 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %198 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp299 = fcmp ogt x86_fp80 %197, %198
  br i1 %cmp299, label %if.then.304, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %if.then.298
  %199 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %200 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp302 = fcmp ole x86_fp80 %199, %200
  br i1 %cmp302, label %if.then.304, label %if.end.306

if.then.304:                                      ; preds = %lor.lhs.false.301, %if.then.298
  %201 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %202 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %sub305 = sub nsw i32 %202, %201
  store i32 %sub305, i32* %fractionDigits, align 4, !tbaa !5
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.304, %lor.lhs.false.301
  br label %if.end.308

if.else.307:                                      ; preds = %if.then.295
  store i32 0, i32* %fractionDigits, align 4, !tbaa !5
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.307, %if.end.306
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %cond.end.291
  br label %if.end.334

if.else.310:                                      ; preds = %if.else.279
  %203 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %call311 = call x86_fp80 @floorl(x86_fp80 %203) #11
  store x86_fp80 %call311, x86_fp80* %integerNumber, align 16, !tbaa !36
  %204 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %205 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %sub312 = fsub x86_fp80 %204, %205
  store x86_fp80 %sub312, x86_fp80* %fractionNumber, align 16, !tbaa !36
  %206 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and313 = and i64 %206, 8388608
  %tobool314 = icmp ne i64 %and313, 0
  br i1 %tobool314, label %if.then.315, label %if.end.333

if.then.315:                                      ; preds = %if.else.310
  %207 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and316 = and i64 %207, 16
  %tobool317 = icmp ne i64 %and316, 0
  br i1 %tobool317, label %if.then.318, label %if.end.332

if.then.318:                                      ; preds = %if.then.315
  %208 = load i32, i32* %precision.addr, align 4, !tbaa !5
  store i32 %208, i32* %fractionDigits, align 4, !tbaa !5
  %209 = load i32, i32* %leadingFractionZeroes, align 4, !tbaa !5
  %cmp319 = icmp sgt i32 %209, 0
  br i1 %cmp319, label %if.then.321, label %if.end.323

if.then.321:                                      ; preds = %if.then.318
  %210 = load i32, i32* %leadingFractionZeroes, align 4, !tbaa !5
  %211 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %add322 = add nsw i32 %211, %210
  store i32 %add322, i32* %fractionDigits, align 4, !tbaa !5
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.321, %if.then.318
  %212 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %213 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp324 = fcmp ogt x86_fp80 %212, %213
  br i1 %cmp324, label %if.then.329, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %if.end.323
  %214 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %215 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp327 = fcmp ole x86_fp80 %214, %215
  br i1 %cmp327, label %if.then.329, label %if.end.331

if.then.329:                                      ; preds = %lor.lhs.false.326, %if.end.323
  %216 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %217 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %sub330 = sub nsw i32 %217, %216
  store i32 %sub330, i32* %fractionDigits, align 4, !tbaa !5
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.329, %lor.lhs.false.326
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %if.then.315
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.else.310
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.end.309
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.end.278
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.226
  store x86_fp80 0xK3FFE8000000000000000, x86_fp80* %fractionAdjust, align 16, !tbaa !36
  store x86_fp80 0xK3FFE8000000000000000, x86_fp80* %integerAdjust, align 16, !tbaa !36
  store i32 2147483647, i32* %integerThreshold, align 4, !tbaa !5
  store i32 2147483647, i32* %fractionThreshold, align 4, !tbaa !5
  %218 = load x86_fp80, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %219 = load x86_fp80, x86_fp80* %fractionAdjust, align 16, !tbaa !36
  %div337 = fdiv x86_fp80 %219, %218
  store x86_fp80 %div337, x86_fp80* %fractionAdjust, align 16, !tbaa !36
  %220 = load x86_fp80, x86_fp80* %fractionNumber, align 16, !tbaa !36
  %221 = load x86_fp80, x86_fp80* %fractionAdjust, align 16, !tbaa !36
  %add338 = fadd x86_fp80 %220, %221
  %222 = load x86_fp80, x86_fp80* %dblFractionBase, align 16, !tbaa !36
  %mul339 = fmul x86_fp80 %add338, %222
  %call340 = call x86_fp80 @floorl(x86_fp80 %mul339) #11
  %223 = load x86_fp80, x86_fp80* %epsilon, align 16, !tbaa !36
  %cmp341 = fcmp olt x86_fp80 %call340, %223
  %conv342 = zext i1 %cmp341 to i32
  store i32 %conv342, i32* %hasOnlyZeroes, align 4, !tbaa !5
  %224 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and343 = and i64 %224, 16
  %tobool344 = icmp ne i64 %and343, 0
  br i1 %tobool344, label %lor.end.356, label %lor.rhs.345

lor.rhs.345:                                      ; preds = %if.end.336
  %225 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp346 = icmp eq i32 %225, 0
  br i1 %cmp346, label %lor.end.353, label %lor.rhs.348

lor.rhs.348:                                      ; preds = %lor.rhs.345
  %226 = load i32, i32* %keepTrailingZeroes, align 4, !tbaa !5
  %tobool349 = icmp ne i32 %226, 0
  br i1 %tobool349, label %land.end.352, label %land.rhs.350

land.rhs.350:                                     ; preds = %lor.rhs.348
  %227 = load i32, i32* %hasOnlyZeroes, align 4, !tbaa !5
  %tobool351 = icmp ne i32 %227, 0
  br label %land.end.352

land.end.352:                                     ; preds = %land.rhs.350, %lor.rhs.348
  %228 = phi i1 [ false, %lor.rhs.348 ], [ %tobool351, %land.rhs.350 ]
  br label %lor.end.353

lor.end.353:                                      ; preds = %land.end.352, %lor.rhs.345
  %229 = phi i1 [ true, %lor.rhs.345 ], [ %228, %land.end.352 ]
  %lnot354 = xor i1 %229, true
  br label %lor.end.356

lor.end.356:                                      ; preds = %lor.end.353, %if.end.336
  %230 = phi i1 [ true, %if.end.336 ], [ %lnot354, %lor.end.353 ]
  %lor.ext = zext i1 %230 to i32
  store i32 %lor.ext, i32* %keepDecimalPoint, align 4, !tbaa !5
  %231 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %232 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %add357 = add nsw i32 %231, %232
  store i32 %add357, i32* %expectedWidth, align 4, !tbaa !5
  %233 = load i32, i32* %keepTrailingZeroes, align 4, !tbaa !5
  %tobool358 = icmp ne i32 %233, 0
  br i1 %tobool358, label %if.end.388, label %if.then.359

if.then.359:                                      ; preds = %lor.end.356
  store i32 0, i32* %trailingZeroes, align 4, !tbaa !5
  %234 = load x86_fp80, x86_fp80* %fractionNumber, align 16, !tbaa !36
  store x86_fp80 %234, x86_fp80* %workFractionNumber, align 16, !tbaa !36
  %235 = load x86_fp80, x86_fp80* %fractionAdjust, align 16, !tbaa !36
  store x86_fp80 %235, x86_fp80* %workFractionAdjust, align 16, !tbaa !36
  %236 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  store i32 %236, i32* %fractionDigitsInspect, align 4, !tbaa !5
  %237 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %238 = load i32, i32* %integerThreshold, align 4, !tbaa !5
  %cmp360 = icmp sgt i32 %237, %238
  br i1 %cmp360, label %if.then.362, label %if.else.363

if.then.362:                                      ; preds = %if.then.359
  store i32 0, i32* %fractionDigitsInspect, align 4, !tbaa !5
  br label %if.end.369

if.else.363:                                      ; preds = %if.then.359
  %239 = load i32, i32* %fractionThreshold, align 4, !tbaa !5
  %240 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %cmp364 = icmp sle i32 %239, %240
  br i1 %cmp364, label %if.then.366, label %if.end.368

if.then.366:                                      ; preds = %if.else.363
  %241 = load i32, i32* %fractionThreshold, align 4, !tbaa !5
  %add367 = add nsw i32 %241, 1
  store i32 %add367, i32* %fractionDigitsInspect, align 4, !tbaa !5
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.366, %if.else.363
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %if.then.362
  %242 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %243 = load i32, i32* %fractionDigitsInspect, align 4, !tbaa !5
  %sub370 = sub nsw i32 %242, %243
  store i32 %sub370, i32* %trailingZeroes, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.369
  %244 = load i32, i32* %i, align 4, !tbaa !5
  %245 = load i32, i32* %fractionDigitsInspect, align 4, !tbaa !5
  %cmp371 = icmp slt i32 %244, %245
  br i1 %cmp371, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %246 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %247 = load x86_fp80, x86_fp80* %workFractionNumber, align 16, !tbaa !36
  %mul373 = fmul x86_fp80 %247, %246
  store x86_fp80 %mul373, x86_fp80* %workFractionNumber, align 16, !tbaa !36
  %248 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %249 = load x86_fp80, x86_fp80* %workFractionAdjust, align 16, !tbaa !36
  %mul374 = fmul x86_fp80 %249, %248
  store x86_fp80 %mul374, x86_fp80* %workFractionAdjust, align 16, !tbaa !36
  %250 = load x86_fp80, x86_fp80* %workFractionNumber, align 16, !tbaa !36
  %251 = load x86_fp80, x86_fp80* %workFractionAdjust, align 16, !tbaa !36
  %add375 = fadd x86_fp80 %250, %251
  %call376 = call x86_fp80 @floorl(x86_fp80 %add375) #11
  store x86_fp80 %call376, x86_fp80* %workNumber, align 16, !tbaa !36
  %252 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %253 = load x86_fp80, x86_fp80* %workFractionNumber, align 16, !tbaa !36
  %sub377 = fsub x86_fp80 %253, %252
  store x86_fp80 %sub377, x86_fp80* %workFractionNumber, align 16, !tbaa !36
  %254 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %255 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %call378 = call x86_fp80 @fmodl(x86_fp80 %254, x86_fp80 %255) #9
  %conv379 = fptosi x86_fp80 %call378 to i32
  store i32 %conv379, i32* %offset, align 4, !tbaa !5
  %256 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp380 = icmp eq i32 %256, 0
  br i1 %cmp380, label %if.then.382, label %if.else.384

if.then.382:                                      ; preds = %for.body
  %257 = load i32, i32* %trailingZeroes, align 4, !tbaa !5
  %inc383 = add nsw i32 %257, 1
  store i32 %inc383, i32* %trailingZeroes, align 4, !tbaa !5
  br label %if.end.385

if.else.384:                                      ; preds = %for.body
  store i32 0, i32* %trailingZeroes, align 4, !tbaa !5
  br label %if.end.385

if.end.385:                                       ; preds = %if.else.384, %if.then.382
  br label %for.inc

for.inc:                                          ; preds = %if.end.385
  %258 = load i32, i32* %i, align 4, !tbaa !5
  %inc386 = add nsw i32 %258, 1
  store i32 %inc386, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %259 = load i32, i32* %trailingZeroes, align 4, !tbaa !5
  %260 = load i32, i32* %expectedWidth, align 4, !tbaa !5
  %sub387 = sub nsw i32 %260, %259
  store i32 %sub387, i32* %expectedWidth, align 4, !tbaa !5
  br label %if.end.388

if.end.388:                                       ; preds = %for.end, %lor.end.356
  %261 = load i32, i32* %keepDecimalPoint, align 4, !tbaa !5
  %tobool389 = icmp ne i32 %261, 0
  br i1 %tobool389, label %if.then.390, label %if.end.392

if.then.390:                                      ; preds = %if.end.388
  %262 = load i32, i32* @internalDecimalPointLength, align 4, !tbaa !5
  %263 = load i32, i32* %expectedWidth, align 4, !tbaa !5
  %add391 = add nsw i32 %263, %262
  store i32 %add391, i32* %expectedWidth, align 4, !tbaa !5
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.390, %if.end.388
  %264 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool393 = icmp ne i32 %264, 0
  br i1 %tobool393, label %if.then.400, label %lor.lhs.false.394

lor.lhs.false.394:                                ; preds = %if.end.392
  %265 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and395 = and i64 %265, 4
  %tobool396 = icmp ne i64 %and395, 0
  br i1 %tobool396, label %if.then.400, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %lor.lhs.false.394
  %266 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and398 = and i64 %266, 2
  %tobool399 = icmp ne i64 %and398, 0
  br i1 %tobool399, label %if.then.400, label %if.end.404

if.then.400:                                      ; preds = %lor.lhs.false.397, %lor.lhs.false.394, %if.end.392
  %267 = load i32, i32* %expectedWidth, align 4, !tbaa !5
  %conv401 = sext i32 %267 to i64
  %add402 = add i64 %conv401, 1
  %conv403 = trunc i64 %add402 to i32
  store i32 %conv403, i32* %expectedWidth, align 4, !tbaa !5
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.400, %lor.lhs.false.397
  store i32 0, i32* %exponentDigits, align 4, !tbaa !5
  %268 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and405 = and i64 %268, 4194304
  %tobool406 = icmp ne i64 %and405, 0
  br i1 %tobool406, label %if.then.407, label %if.end.425

if.then.407:                                      ; preds = %if.end.404
  %269 = load i32, i32* %uExponent, align 4, !tbaa !5
  %cmp408 = icmp eq i32 %269, 0
  br i1 %cmp408, label %cond.true.410, label %cond.false.411

cond.true.410:                                    ; preds = %if.then.407
  br label %cond.end.423

cond.false.411:                                   ; preds = %if.then.407
  %270 = load i32, i32* %uExponent, align 4, !tbaa !5
  %add412 = add i32 %270, 1
  %conv413 = uitofp i32 %add412 to double
  %conv414 = fpext double %conv413 to x86_fp80
  %271 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool415 = icmp ne i32 %271, 0
  br i1 %tobool415, label %cond.true.416, label %cond.false.417

cond.true.416:                                    ; preds = %cond.false.411
  br label %cond.end.418

cond.false.417:                                   ; preds = %cond.false.411
  %272 = load i32, i32* %base.addr, align 4, !tbaa !5
  br label %cond.end.418

cond.end.418:                                     ; preds = %cond.false.417, %cond.true.416
  %cond419 = phi i32 [ 10, %cond.true.416 ], [ %272, %cond.false.417 ]
  %call420 = call x86_fp80 @TrioLogarithm(x86_fp80 %conv414, i32 %cond419) #8
  %call421 = call x86_fp80 @ceill(x86_fp80 %call420) #11
  %conv422 = fptosi x86_fp80 %call421 to i32
  br label %cond.end.423

cond.end.423:                                     ; preds = %cond.end.418, %cond.true.410
  %cond424 = phi i32 [ 1, %cond.true.410 ], [ %conv422, %cond.end.418 ]
  store i32 %cond424, i32* %exponentDigits, align 4, !tbaa !5
  br label %if.end.425

if.end.425:                                       ; preds = %cond.end.423, %if.end.404
  %273 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp426 = icmp eq i32 %273, 10
  br i1 %cmp426, label %land.rhs.428, label %land.end.431

land.rhs.428:                                     ; preds = %if.end.425
  %274 = load i32, i32* %exponentDigits, align 4, !tbaa !5
  %cmp429 = icmp eq i32 %274, 1
  br label %land.end.431

land.end.431:                                     ; preds = %land.rhs.428, %if.end.425
  %275 = phi i1 [ false, %if.end.425 ], [ %cmp429, %land.rhs.428 ]
  %land.ext = zext i1 %275 to i32
  store i32 %land.ext, i32* %requireTwoDigitExponent, align 4, !tbaa !5
  %276 = load i32, i32* %exponentDigits, align 4, !tbaa !5
  %cmp432 = icmp sgt i32 %276, 0
  br i1 %cmp432, label %if.then.434, label %if.end.441

if.then.434:                                      ; preds = %land.end.431
  %277 = load i32, i32* %exponentDigits, align 4, !tbaa !5
  %278 = load i32, i32* %expectedWidth, align 4, !tbaa !5
  %add435 = add nsw i32 %278, %277
  store i32 %add435, i32* %expectedWidth, align 4, !tbaa !5
  %279 = load i32, i32* %requireTwoDigitExponent, align 4, !tbaa !5
  %tobool436 = icmp ne i32 %279, 0
  %cond437 = select i1 %tobool436, i64 3, i64 2
  %280 = load i32, i32* %expectedWidth, align 4, !tbaa !5
  %conv438 = sext i32 %280 to i64
  %add439 = add i64 %conv438, %cond437
  %conv440 = trunc i64 %add439 to i32
  store i32 %conv440, i32* %expectedWidth, align 4, !tbaa !5
  br label %if.end.441

if.end.441:                                       ; preds = %if.then.434, %land.end.431
  %281 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool442 = icmp ne i32 %281, 0
  br i1 %tobool442, label %if.then.443, label %if.end.447

if.then.443:                                      ; preds = %if.end.441
  %282 = load i32, i32* %expectedWidth, align 4, !tbaa !5
  %conv444 = sext i32 %282 to i64
  %add445 = add i64 %conv444, 2
  %conv446 = trunc i64 %add445 to i32
  store i32 %conv446, i32* %expectedWidth, align 4, !tbaa !5
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.443, %if.end.441
  %283 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and448 = and i64 %283, 8192
  %tobool449 = icmp ne i64 %and448, 0
  br i1 %tobool449, label %if.then.450, label %if.else.492

if.then.450:                                      ; preds = %if.end.447
  %284 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool451 = icmp ne i32 %284, 0
  br i1 %tobool451, label %if.then.452, label %if.else.454

if.then.452:                                      ; preds = %if.then.450
  %285 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %285, i32 0, i32 0
  %OutStream453 = bitcast {}** %OutStream to void (%struct._trio_class_t*, i32)**
  %286 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream453, align 8, !tbaa !9
  %287 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %286(%struct._trio_class_t* %287, i32 45) #8
  br label %if.end.468

if.else.454:                                      ; preds = %if.then.450
  %288 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and455 = and i64 %288, 4
  %tobool456 = icmp ne i64 %and455, 0
  br i1 %tobool456, label %if.then.457, label %if.else.460

if.then.457:                                      ; preds = %if.else.454
  %289 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream458 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %289, i32 0, i32 0
  %OutStream459 = bitcast {}** %OutStream458 to void (%struct._trio_class_t*, i32)**
  %290 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream459, align 8, !tbaa !9
  %291 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %290(%struct._trio_class_t* %291, i32 43) #8
  br label %if.end.467

if.else.460:                                      ; preds = %if.else.454
  %292 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and461 = and i64 %292, 2
  %tobool462 = icmp ne i64 %and461, 0
  br i1 %tobool462, label %if.then.463, label %if.end.466

if.then.463:                                      ; preds = %if.else.460
  %293 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream464 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %293, i32 0, i32 0
  %OutStream465 = bitcast {}** %OutStream464 to void (%struct._trio_class_t*, i32)**
  %294 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream465, align 8, !tbaa !9
  %295 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %294(%struct._trio_class_t* %295, i32 32) #8
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.463, %if.else.460
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.466, %if.then.457
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %if.then.452
  %296 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool469 = icmp ne i32 %296, 0
  br i1 %tobool469, label %if.then.470, label %if.end.478

if.then.470:                                      ; preds = %if.end.468
  %297 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream471 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %297, i32 0, i32 0
  %OutStream472 = bitcast {}** %OutStream471 to void (%struct._trio_class_t*, i32)**
  %298 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream472, align 8, !tbaa !9
  %299 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %298(%struct._trio_class_t* %299, i32 48) #8
  %300 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream473 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %300, i32 0, i32 0
  %OutStream474 = bitcast {}** %OutStream473 to void (%struct._trio_class_t*, i32)**
  %301 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream474, align 8, !tbaa !9
  %302 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %303 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and475 = and i64 %303, 32768
  %tobool476 = icmp ne i64 %and475, 0
  %cond477 = select i1 %tobool476, i32 88, i32 120
  call void %301(%struct._trio_class_t* %302, i32 %cond477) #8
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.470, %if.end.468
  %304 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and479 = and i64 %304, 8
  %tobool480 = icmp ne i64 %and479, 0
  br i1 %tobool480, label %if.end.491, label %if.then.481

if.then.481:                                      ; preds = %if.end.478
  %305 = load i32, i32* %expectedWidth, align 4, !tbaa !5
  store i32 %305, i32* %i, align 4, !tbaa !5
  br label %for.cond.482

for.cond.482:                                     ; preds = %for.inc.488, %if.then.481
  %306 = load i32, i32* %i, align 4, !tbaa !5
  %307 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp483 = icmp slt i32 %306, %307
  br i1 %cmp483, label %for.body.485, label %for.end.490

for.body.485:                                     ; preds = %for.cond.482
  %308 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream486 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %308, i32 0, i32 0
  %OutStream487 = bitcast {}** %OutStream486 to void (%struct._trio_class_t*, i32)**
  %309 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream487, align 8, !tbaa !9
  %310 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %309(%struct._trio_class_t* %310, i32 48) #8
  br label %for.inc.488

for.inc.488:                                      ; preds = %for.body.485
  %311 = load i32, i32* %i, align 4, !tbaa !5
  %inc489 = add nsw i32 %311, 1
  store i32 %inc489, i32* %i, align 4, !tbaa !5
  br label %for.cond.482

for.end.490:                                      ; preds = %for.cond.482
  br label %if.end.491

if.end.491:                                       ; preds = %for.end.490, %if.end.478
  br label %if.end.535

if.else.492:                                      ; preds = %if.end.447
  %312 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and493 = and i64 %312, 8
  %tobool494 = icmp ne i64 %and493, 0
  br i1 %tobool494, label %if.end.505, label %if.then.495

if.then.495:                                      ; preds = %if.else.492
  %313 = load i32, i32* %expectedWidth, align 4, !tbaa !5
  store i32 %313, i32* %i, align 4, !tbaa !5
  br label %for.cond.496

for.cond.496:                                     ; preds = %for.inc.502, %if.then.495
  %314 = load i32, i32* %i, align 4, !tbaa !5
  %315 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp497 = icmp slt i32 %314, %315
  br i1 %cmp497, label %for.body.499, label %for.end.504

for.body.499:                                     ; preds = %for.cond.496
  %316 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream500 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %316, i32 0, i32 0
  %OutStream501 = bitcast {}** %OutStream500 to void (%struct._trio_class_t*, i32)**
  %317 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream501, align 8, !tbaa !9
  %318 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %317(%struct._trio_class_t* %318, i32 32) #8
  br label %for.inc.502

for.inc.502:                                      ; preds = %for.body.499
  %319 = load i32, i32* %i, align 4, !tbaa !5
  %inc503 = add nsw i32 %319, 1
  store i32 %inc503, i32* %i, align 4, !tbaa !5
  br label %for.cond.496

for.end.504:                                      ; preds = %for.cond.496
  br label %if.end.505

if.end.505:                                       ; preds = %for.end.504, %if.else.492
  %320 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool506 = icmp ne i32 %320, 0
  br i1 %tobool506, label %if.then.507, label %if.else.510

if.then.507:                                      ; preds = %if.end.505
  %321 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream508 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %321, i32 0, i32 0
  %OutStream509 = bitcast {}** %OutStream508 to void (%struct._trio_class_t*, i32)**
  %322 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream509, align 8, !tbaa !9
  %323 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %322(%struct._trio_class_t* %323, i32 45) #8
  br label %if.end.524

if.else.510:                                      ; preds = %if.end.505
  %324 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and511 = and i64 %324, 4
  %tobool512 = icmp ne i64 %and511, 0
  br i1 %tobool512, label %if.then.513, label %if.else.516

if.then.513:                                      ; preds = %if.else.510
  %325 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream514 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %325, i32 0, i32 0
  %OutStream515 = bitcast {}** %OutStream514 to void (%struct._trio_class_t*, i32)**
  %326 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream515, align 8, !tbaa !9
  %327 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %326(%struct._trio_class_t* %327, i32 43) #8
  br label %if.end.523

if.else.516:                                      ; preds = %if.else.510
  %328 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and517 = and i64 %328, 2
  %tobool518 = icmp ne i64 %and517, 0
  br i1 %tobool518, label %if.then.519, label %if.end.522

if.then.519:                                      ; preds = %if.else.516
  %329 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream520 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %329, i32 0, i32 0
  %OutStream521 = bitcast {}** %OutStream520 to void (%struct._trio_class_t*, i32)**
  %330 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream521, align 8, !tbaa !9
  %331 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %330(%struct._trio_class_t* %331, i32 32) #8
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.519, %if.else.516
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.522, %if.then.513
  br label %if.end.524

if.end.524:                                       ; preds = %if.end.523, %if.then.507
  %332 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool525 = icmp ne i32 %332, 0
  br i1 %tobool525, label %if.then.526, label %if.end.534

if.then.526:                                      ; preds = %if.end.524
  %333 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream527 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %333, i32 0, i32 0
  %OutStream528 = bitcast {}** %OutStream527 to void (%struct._trio_class_t*, i32)**
  %334 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream528, align 8, !tbaa !9
  %335 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %334(%struct._trio_class_t* %335, i32 48) #8
  %336 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream529 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %336, i32 0, i32 0
  %OutStream530 = bitcast {}** %OutStream529 to void (%struct._trio_class_t*, i32)**
  %337 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream530, align 8, !tbaa !9
  %338 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %339 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and531 = and i64 %339, 32768
  %tobool532 = icmp ne i64 %and531, 0
  %cond533 = select i1 %tobool532, i32 88, i32 120
  call void %337(%struct._trio_class_t* %338, i32 %cond533) #8
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.526, %if.end.524
  br label %if.end.535

if.end.535:                                       ; preds = %if.end.534, %if.end.491
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.536

for.cond.536:                                     ; preds = %for.inc.560, %if.end.535
  %340 = load i32, i32* %i, align 4, !tbaa !5
  %341 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %cmp537 = icmp slt i32 %340, %341
  br i1 %cmp537, label %for.body.539, label %for.end.562

for.body.539:                                     ; preds = %for.cond.536
  %342 = load x86_fp80, x86_fp80* %integerNumber, align 16, !tbaa !36
  %343 = load x86_fp80, x86_fp80* %integerAdjust, align 16, !tbaa !36
  %add540 = fadd x86_fp80 %342, %343
  %344 = load i32, i32* %base.addr, align 4, !tbaa !5
  %345 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %346 = load i32, i32* %i, align 4, !tbaa !5
  %sub541 = sub nsw i32 %345, %346
  %sub542 = sub nsw i32 %sub541, 1
  %call543 = call x86_fp80 @TrioPower(i32 %344, i32 %sub542) #8
  %div544 = fdiv x86_fp80 %add540, %call543
  %call545 = call x86_fp80 @floorl(x86_fp80 %div544) #11
  store x86_fp80 %call545, x86_fp80* %workNumber, align 16, !tbaa !36
  %347 = load i32, i32* %i, align 4, !tbaa !5
  %348 = load i32, i32* %integerThreshold, align 4, !tbaa !5
  %cmp546 = icmp sgt i32 %347, %348
  br i1 %cmp546, label %if.then.548, label %if.else.552

if.then.548:                                      ; preds = %for.body.539
  %349 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream549 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %349, i32 0, i32 0
  %OutStream550 = bitcast {}** %OutStream549 to void (%struct._trio_class_t*, i32)**
  %350 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream550, align 8, !tbaa !9
  %351 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %352 = load i8*, i8** %digits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %352, i64 0
  %353 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv551 = sext i8 %353 to i32
  call void %350(%struct._trio_class_t* %351, i32 %conv551) #8
  br label %if.end.559

if.else.552:                                      ; preds = %for.body.539
  %354 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream553 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %354, i32 0, i32 0
  %OutStream554 = bitcast {}** %OutStream553 to void (%struct._trio_class_t*, i32)**
  %355 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream554, align 8, !tbaa !9
  %356 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %357 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %358 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %call555 = call x86_fp80 @fmodl(x86_fp80 %357, x86_fp80 %358) #9
  %conv556 = fptosi x86_fp80 %call555 to i32
  %idxprom = sext i32 %conv556 to i64
  %359 = load i8*, i8** %digits, align 8, !tbaa !1
  %arrayidx557 = getelementptr inbounds i8, i8* %359, i64 %idxprom
  %360 = load i8, i8* %arrayidx557, align 1, !tbaa !15
  %conv558 = sext i8 %360 to i32
  call void %355(%struct._trio_class_t* %356, i32 %conv558) #8
  br label %if.end.559

if.end.559:                                       ; preds = %if.else.552, %if.then.548
  br label %for.inc.560

for.inc.560:                                      ; preds = %if.end.559
  %361 = load i32, i32* %i, align 4, !tbaa !5
  %inc561 = add nsw i32 %361, 1
  store i32 %inc561, i32* %i, align 4, !tbaa !5
  br label %for.cond.536

for.end.562:                                      ; preds = %for.cond.536
  store i32 0, i32* %trailingZeroes, align 4, !tbaa !5
  %362 = load i32, i32* %keepDecimalPoint, align 4, !tbaa !5
  %tobool563 = icmp ne i32 %362, 0
  br i1 %tobool563, label %if.then.564, label %if.end.584

if.then.564:                                      ; preds = %for.end.562
  %363 = load i8, i8* @internalDecimalPoint, align 1, !tbaa !15
  %tobool565 = icmp ne i8 %363, 0
  br i1 %tobool565, label %if.then.566, label %if.else.570

if.then.566:                                      ; preds = %if.then.564
  %364 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream567 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %364, i32 0, i32 0
  %OutStream568 = bitcast {}** %OutStream567 to void (%struct._trio_class_t*, i32)**
  %365 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream568, align 8, !tbaa !9
  %366 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %367 = load i8, i8* @internalDecimalPoint, align 1, !tbaa !15
  %conv569 = sext i8 %367 to i32
  call void %365(%struct._trio_class_t* %366, i32 %conv569) #8
  br label %if.end.583

if.else.570:                                      ; preds = %if.then.564
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.571

for.cond.571:                                     ; preds = %for.inc.580, %if.else.570
  %368 = load i32, i32* %i, align 4, !tbaa !5
  %369 = load i32, i32* @internalDecimalPointLength, align 4, !tbaa !5
  %cmp572 = icmp slt i32 %368, %369
  br i1 %cmp572, label %for.body.574, label %for.end.582

for.body.574:                                     ; preds = %for.cond.571
  %370 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream575 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %370, i32 0, i32 0
  %OutStream576 = bitcast {}** %OutStream575 to void (%struct._trio_class_t*, i32)**
  %371 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream576, align 8, !tbaa !9
  %372 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %373 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom577 = sext i32 %373 to i64
  %arrayidx578 = getelementptr inbounds [17 x i8], [17 x i8]* @internalDecimalPointString, i32 0, i64 %idxprom577
  %374 = load i8, i8* %arrayidx578, align 1, !tbaa !15
  %conv579 = sext i8 %374 to i32
  call void %371(%struct._trio_class_t* %372, i32 %conv579) #8
  br label %for.inc.580

for.inc.580:                                      ; preds = %for.body.574
  %375 = load i32, i32* %i, align 4, !tbaa !5
  %inc581 = add nsw i32 %375, 1
  store i32 %inc581, i32* %i, align 4, !tbaa !5
  br label %for.cond.571

for.end.582:                                      ; preds = %for.cond.571
  br label %if.end.583

if.end.583:                                       ; preds = %for.end.582, %if.then.566
  br label %if.end.584

if.end.584:                                       ; preds = %if.end.583, %for.end.562
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.585

for.cond.585:                                     ; preds = %for.inc.628, %if.end.584
  %376 = load i32, i32* %i, align 4, !tbaa !5
  %377 = load i32, i32* %fractionDigits, align 4, !tbaa !5
  %cmp586 = icmp slt i32 %376, %377
  br i1 %cmp586, label %for.body.588, label %for.end.630

for.body.588:                                     ; preds = %for.cond.585
  %378 = load i32, i32* %integerDigits, align 4, !tbaa !5
  %379 = load i32, i32* %integerThreshold, align 4, !tbaa !5
  %cmp589 = icmp sgt i32 %378, %379
  br i1 %cmp589, label %if.then.594, label %lor.lhs.false.591

lor.lhs.false.591:                                ; preds = %for.body.588
  %380 = load i32, i32* %i, align 4, !tbaa !5
  %381 = load i32, i32* %fractionThreshold, align 4, !tbaa !5
  %cmp592 = icmp sgt i32 %380, %381
  br i1 %cmp592, label %if.then.594, label %if.else.596

if.then.594:                                      ; preds = %lor.lhs.false.591, %for.body.588
  %382 = load i32, i32* %trailingZeroes, align 4, !tbaa !5
  %inc595 = add nsw i32 %382, 1
  store i32 %inc595, i32* %trailingZeroes, align 4, !tbaa !5
  br label %if.end.627

if.else.596:                                      ; preds = %lor.lhs.false.591
  %383 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %384 = load x86_fp80, x86_fp80* %fractionNumber, align 16, !tbaa !36
  %mul597 = fmul x86_fp80 %384, %383
  store x86_fp80 %mul597, x86_fp80* %fractionNumber, align 16, !tbaa !36
  %385 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %386 = load x86_fp80, x86_fp80* %fractionAdjust, align 16, !tbaa !36
  %mul598 = fmul x86_fp80 %386, %385
  store x86_fp80 %mul598, x86_fp80* %fractionAdjust, align 16, !tbaa !36
  %387 = load x86_fp80, x86_fp80* %fractionNumber, align 16, !tbaa !36
  %388 = load x86_fp80, x86_fp80* %fractionAdjust, align 16, !tbaa !36
  %add599 = fadd x86_fp80 %387, %388
  %call600 = call x86_fp80 @floorl(x86_fp80 %add599) #11
  store x86_fp80 %call600, x86_fp80* %workNumber, align 16, !tbaa !36
  %389 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %390 = load x86_fp80, x86_fp80* %fractionNumber, align 16, !tbaa !36
  %cmp601 = fcmp ogt x86_fp80 %389, %390
  br i1 %cmp601, label %if.then.603, label %if.else.604

if.then.603:                                      ; preds = %if.else.596
  store x86_fp80 0xK00000000000000000000, x86_fp80* %fractionNumber, align 16, !tbaa !36
  store x86_fp80 0xK00000000000000000000, x86_fp80* %fractionAdjust, align 16, !tbaa !36
  br label %if.end.606

if.else.604:                                      ; preds = %if.else.596
  %391 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %392 = load x86_fp80, x86_fp80* %fractionNumber, align 16, !tbaa !36
  %sub605 = fsub x86_fp80 %392, %391
  store x86_fp80 %sub605, x86_fp80* %fractionNumber, align 16, !tbaa !36
  br label %if.end.606

if.end.606:                                       ; preds = %if.else.604, %if.then.603
  %393 = load x86_fp80, x86_fp80* %workNumber, align 16, !tbaa !36
  %394 = load x86_fp80, x86_fp80* %dblBase, align 16, !tbaa !36
  %call607 = call x86_fp80 @fmodl(x86_fp80 %393, x86_fp80 %394) #9
  %conv608 = fptosi x86_fp80 %call607 to i32
  store i32 %conv608, i32* %offset, align 4, !tbaa !5
  %395 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp609 = icmp eq i32 %395, 0
  br i1 %cmp609, label %if.then.611, label %if.else.613

if.then.611:                                      ; preds = %if.end.606
  %396 = load i32, i32* %trailingZeroes, align 4, !tbaa !5
  %inc612 = add nsw i32 %396, 1
  store i32 %inc612, i32* %trailingZeroes, align 4, !tbaa !5
  br label %if.end.626

if.else.613:                                      ; preds = %if.end.606
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.613
  %397 = load i32, i32* %trailingZeroes, align 4, !tbaa !5
  %cmp614 = icmp sgt i32 %397, 0
  br i1 %cmp614, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %398 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream616 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %398, i32 0, i32 0
  %OutStream617 = bitcast {}** %OutStream616 to void (%struct._trio_class_t*, i32)**
  %399 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream617, align 8, !tbaa !9
  %400 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %401 = load i8*, i8** %digits, align 8, !tbaa !1
  %arrayidx618 = getelementptr inbounds i8, i8* %401, i64 0
  %402 = load i8, i8* %arrayidx618, align 1, !tbaa !15
  %conv619 = sext i8 %402 to i32
  call void %399(%struct._trio_class_t* %400, i32 %conv619) #8
  %403 = load i32, i32* %trailingZeroes, align 4, !tbaa !5
  %dec620 = add nsw i32 %403, -1
  store i32 %dec620, i32* %trailingZeroes, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %404 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream621 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %404, i32 0, i32 0
  %OutStream622 = bitcast {}** %OutStream621 to void (%struct._trio_class_t*, i32)**
  %405 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream622, align 8, !tbaa !9
  %406 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %407 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom623 = sext i32 %407 to i64
  %408 = load i8*, i8** %digits, align 8, !tbaa !1
  %arrayidx624 = getelementptr inbounds i8, i8* %408, i64 %idxprom623
  %409 = load i8, i8* %arrayidx624, align 1, !tbaa !15
  %conv625 = sext i8 %409 to i32
  call void %405(%struct._trio_class_t* %406, i32 %conv625) #8
  br label %if.end.626

if.end.626:                                       ; preds = %while.end, %if.then.611
  br label %if.end.627

if.end.627:                                       ; preds = %if.end.626, %if.then.594
  br label %for.inc.628

for.inc.628:                                      ; preds = %if.end.627
  %410 = load i32, i32* %i, align 4, !tbaa !5
  %inc629 = add nsw i32 %410, 1
  store i32 %inc629, i32* %i, align 4, !tbaa !5
  br label %for.cond.585

for.end.630:                                      ; preds = %for.cond.585
  %411 = load i32, i32* %keepTrailingZeroes, align 4, !tbaa !5
  %tobool631 = icmp ne i32 %411, 0
  br i1 %tobool631, label %if.then.632, label %if.end.643

if.then.632:                                      ; preds = %for.end.630
  br label %while.cond.633

while.cond.633:                                   ; preds = %while.body.636, %if.then.632
  %412 = load i32, i32* %trailingZeroes, align 4, !tbaa !5
  %cmp634 = icmp sgt i32 %412, 0
  br i1 %cmp634, label %while.body.636, label %while.end.642

while.body.636:                                   ; preds = %while.cond.633
  %413 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream637 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %413, i32 0, i32 0
  %OutStream638 = bitcast {}** %OutStream637 to void (%struct._trio_class_t*, i32)**
  %414 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream638, align 8, !tbaa !9
  %415 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %416 = load i8*, i8** %digits, align 8, !tbaa !1
  %arrayidx639 = getelementptr inbounds i8, i8* %416, i64 0
  %417 = load i8, i8* %arrayidx639, align 1, !tbaa !15
  %conv640 = sext i8 %417 to i32
  call void %414(%struct._trio_class_t* %415, i32 %conv640) #8
  %418 = load i32, i32* %trailingZeroes, align 4, !tbaa !5
  %dec641 = add nsw i32 %418, -1
  store i32 %dec641, i32* %trailingZeroes, align 4, !tbaa !5
  br label %while.cond.633

while.end.642:                                    ; preds = %while.cond.633
  br label %if.end.643

if.end.643:                                       ; preds = %while.end.642, %for.end.630
  %419 = load i32, i32* %exponentDigits, align 4, !tbaa !5
  %cmp644 = icmp sgt i32 %419, 0
  br i1 %cmp644, label %if.then.646, label %if.end.689

if.then.646:                                      ; preds = %if.end.643
  %420 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream647 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %420, i32 0, i32 0
  %OutStream648 = bitcast {}** %OutStream647 to void (%struct._trio_class_t*, i32)**
  %421 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream648, align 8, !tbaa !9
  %422 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %423 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool649 = icmp ne i32 %423, 0
  br i1 %tobool649, label %cond.true.650, label %cond.false.654

cond.true.650:                                    ; preds = %if.then.646
  %424 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and651 = and i64 %424, 32768
  %tobool652 = icmp ne i64 %and651, 0
  %cond653 = select i1 %tobool652, i32 80, i32 112
  br label %cond.end.658

cond.false.654:                                   ; preds = %if.then.646
  %425 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and655 = and i64 %425, 32768
  %tobool656 = icmp ne i64 %and655, 0
  %cond657 = select i1 %tobool656, i32 69, i32 101
  br label %cond.end.658

cond.end.658:                                     ; preds = %cond.false.654, %cond.true.650
  %cond659 = phi i32 [ %cond653, %cond.true.650 ], [ %cond657, %cond.false.654 ]
  call void %421(%struct._trio_class_t* %422, i32 %cond659) #8
  %426 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream660 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %426, i32 0, i32 0
  %OutStream661 = bitcast {}** %OutStream660 to void (%struct._trio_class_t*, i32)**
  %427 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream661, align 8, !tbaa !9
  %428 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %429 = load i32, i32* %isExponentNegative, align 4, !tbaa !5
  %tobool662 = icmp ne i32 %429, 0
  %cond663 = select i1 %tobool662, i32 45, i32 43
  call void %427(%struct._trio_class_t* %428, i32 %cond663) #8
  %430 = load i32, i32* %requireTwoDigitExponent, align 4, !tbaa !5
  %tobool664 = icmp ne i32 %430, 0
  br i1 %tobool664, label %if.then.665, label %if.end.668

if.then.665:                                      ; preds = %cond.end.658
  %431 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream666 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %431, i32 0, i32 0
  %OutStream667 = bitcast {}** %OutStream666 to void (%struct._trio_class_t*, i32)**
  %432 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream667, align 8, !tbaa !9
  %433 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %432(%struct._trio_class_t* %433, i32 48) #8
  br label %if.end.668

if.end.668:                                       ; preds = %if.then.665, %cond.end.658
  %434 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool669 = icmp ne i32 %434, 0
  br i1 %tobool669, label %if.then.670, label %if.end.671

if.then.670:                                      ; preds = %if.end.668
  store i32 10, i32* %base.addr, align 4, !tbaa !5
  br label %if.end.671

if.end.671:                                       ; preds = %if.then.670, %if.end.668
  %435 = load i32, i32* %base.addr, align 4, !tbaa !5
  %436 = load i32, i32* %exponentDigits, align 4, !tbaa !5
  %sub672 = sub nsw i32 %436, 1
  %call673 = call x86_fp80 @TrioPower(i32 %435, i32 %sub672) #8
  %conv674 = fptosi x86_fp80 %call673 to i32
  store i32 %conv674, i32* %exponentBase, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.675

for.cond.675:                                     ; preds = %for.inc.686, %if.end.671
  %437 = load i32, i32* %i, align 4, !tbaa !5
  %438 = load i32, i32* %exponentDigits, align 4, !tbaa !5
  %cmp676 = icmp slt i32 %437, %438
  br i1 %cmp676, label %for.body.678, label %for.end.688

for.body.678:                                     ; preds = %for.cond.675
  %439 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream679 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %439, i32 0, i32 0
  %OutStream680 = bitcast {}** %OutStream679 to void (%struct._trio_class_t*, i32)**
  %440 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream680, align 8, !tbaa !9
  %441 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %442 = load i32, i32* %uExponent, align 4, !tbaa !5
  %443 = load i32, i32* %exponentBase, align 4, !tbaa !5
  %div681 = udiv i32 %442, %443
  %444 = load i32, i32* %base.addr, align 4, !tbaa !5
  %rem = urem i32 %div681, %444
  %idxprom682 = zext i32 %rem to i64
  %445 = load i8*, i8** %digits, align 8, !tbaa !1
  %arrayidx683 = getelementptr inbounds i8, i8* %445, i64 %idxprom682
  %446 = load i8, i8* %arrayidx683, align 1, !tbaa !15
  %conv684 = sext i8 %446 to i32
  call void %440(%struct._trio_class_t* %441, i32 %conv684) #8
  %447 = load i32, i32* %base.addr, align 4, !tbaa !5
  %448 = load i32, i32* %exponentBase, align 4, !tbaa !5
  %div685 = sdiv i32 %448, %447
  store i32 %div685, i32* %exponentBase, align 4, !tbaa !5
  br label %for.inc.686

for.inc.686:                                      ; preds = %for.body.678
  %449 = load i32, i32* %i, align 4, !tbaa !5
  %inc687 = add nsw i32 %449, 1
  store i32 %inc687, i32* %i, align 4, !tbaa !5
  br label %for.cond.675

for.end.688:                                      ; preds = %for.cond.675
  br label %if.end.689

if.end.689:                                       ; preds = %for.end.688, %if.end.643
  %450 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and690 = and i64 %450, 8
  %tobool691 = icmp ne i64 %and690, 0
  br i1 %tobool691, label %if.then.692, label %if.end.702

if.then.692:                                      ; preds = %if.end.689
  %451 = load i32, i32* %expectedWidth, align 4, !tbaa !5
  store i32 %451, i32* %i, align 4, !tbaa !5
  br label %for.cond.693

for.cond.693:                                     ; preds = %for.inc.699, %if.then.692
  %452 = load i32, i32* %i, align 4, !tbaa !5
  %453 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp694 = icmp slt i32 %452, %453
  br i1 %cmp694, label %for.body.696, label %for.end.701

for.body.696:                                     ; preds = %for.cond.693
  %454 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream697 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %454, i32 0, i32 0
  %OutStream698 = bitcast {}** %OutStream697 to void (%struct._trio_class_t*, i32)**
  %455 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream698, align 8, !tbaa !9
  %456 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %455(%struct._trio_class_t* %456, i32 32) #8
  br label %for.inc.699

for.inc.699:                                      ; preds = %for.body.696
  %457 = load i32, i32* %i, align 4, !tbaa !5
  %inc700 = add nsw i32 %457, 1
  store i32 %inc700, i32* %i, align 4, !tbaa !5
  br label %for.cond.693

for.end.701:                                      ; preds = %for.cond.693
  br label %if.end.702

if.end.702:                                       ; preds = %for.end.701, %if.end.689
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.702, %if.else, %if.then, %sw.bb
  %458 = bitcast i32* %adjustNumber to i8*
  call void @llvm.lifetime.end(i64 4, i8* %458) #1
  %459 = bitcast x86_fp80* %epsilon to i8*
  call void @llvm.lifetime.end(i64 16, i8* %459) #1
  %460 = bitcast i32* %keepDecimalPoint to i8*
  call void @llvm.lifetime.end(i64 4, i8* %460) #1
  %461 = bitcast i32* %keepTrailingZeroes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %461) #1
  %462 = bitcast i32* %trailingZeroes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %462) #1
  %463 = bitcast i32* %leadingFractionZeroes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %463) #1
  %464 = bitcast i32* %hasOnlyZeroes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %464) #1
  %465 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %465) #1
  %466 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %466) #1
  %467 = bitcast i8** %digits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %467) #1
  %468 = bitcast i32* %isHex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %468) #1
  %469 = bitcast i32* %requireTwoDigitExponent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #1
  %470 = bitcast i32* %isExponentNegative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %470) #1
  %471 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast i32* %fractionDigitsInspect to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast x86_fp80* %workFractionAdjust to i8*
  call void @llvm.lifetime.end(i64 16, i8* %473) #1
  %474 = bitcast x86_fp80* %workFractionNumber to i8*
  call void @llvm.lifetime.end(i64 16, i8* %474) #1
  %475 = bitcast x86_fp80* %fractionAdjust to i8*
  call void @llvm.lifetime.end(i64 16, i8* %475) #1
  %476 = bitcast x86_fp80* %integerAdjust to i8*
  call void @llvm.lifetime.end(i64 16, i8* %476) #1
  %477 = bitcast x86_fp80* %dblFractionBase to i8*
  call void @llvm.lifetime.end(i64 16, i8* %477) #1
  %478 = bitcast x86_fp80* %dblBase to i8*
  call void @llvm.lifetime.end(i64 16, i8* %478) #1
  %479 = bitcast i32* %exponentBase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #1
  %480 = bitcast i32* %uExponent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast i32* %exponent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %481) #1
  %482 = bitcast i32* %expectedWidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %482) #1
  %483 = bitcast i32* %fractionThreshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %483) #1
  %484 = bitcast i32* %integerThreshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %484) #1
  %485 = bitcast i32* %baseDigits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %485) #1
  %486 = bitcast i32* %workDigits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i32* %exponentDigits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %487) #1
  %488 = bitcast i32* %fractionDigits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %488) #1
  %489 = bitcast i32* %integerDigits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %489) #1
  %490 = bitcast x86_fp80* %workNumber to i8*
  call void @llvm.lifetime.end(i64 16, i8* %490) #1
  %491 = bitcast x86_fp80* %fractionNumber to i8*
  call void @llvm.lifetime.end(i64 16, i8* %491) #1
  %492 = bitcast x86_fp80* %integerNumber to i8*
  call void @llvm.lifetime.end(i64 16, i8* %492) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @TrioWriteString(%struct._trio_class_t* %self, i8* %string, i64 %flags, i32 %width, i32 %precision) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %string.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %precision.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %ch = alloca i32, align 4
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i8* %string, i8** %string.addr, align 8, !tbaa !1
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %precision, i32* %precision.addr, align 4, !tbaa !5
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @internalNullString, i32 0, i32 0), i8** %string.addr, align 8, !tbaa !1
  store i32 5, i32* %length, align 4, !tbaa !5
  store i32 0, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %4 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %call = call i64 @trio_length(i8* %4) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4, !tbaa !5
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %5 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %6 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %conv4 = sext i32 %6 to i64
  %call5 = call i64 @trio_length_max(i8* %5, i64 %conv4) #8
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %length, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %cmp8 = icmp ne i32 -1, %7
  br i1 %cmp8, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.7
  %8 = load i32, i32* %precision.addr, align 4, !tbaa !5
  %9 = load i32, i32* %length, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  %10 = load i32, i32* %precision.addr, align 4, !tbaa !5
  store i32 %10, i32* %length, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.7
  %11 = load i32, i32* %length, align 4, !tbaa !5
  %12 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %11
  store i32 %sub, i32* %width.addr, align 4, !tbaa !5
  %13 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and = and i64 %13, 8
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.end.18, label %if.then.14

if.then.14:                                       ; preds = %if.end.13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.14
  %14 = load i32, i32* %width.addr, align 4, !tbaa !5
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %width.addr, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %14, 0
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %15, i32 0, i32 0
  %OutStream17 = bitcast {}** %OutStream to void (%struct._trio_class_t*, i32)**
  %16 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream17, align 8, !tbaa !9
  %17 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %16(%struct._trio_class_t* %17, i32 32) #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.18

if.end.18:                                        ; preds = %while.end, %if.end.13
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.23, %if.end.18
  %18 = load i32, i32* %length, align 4, !tbaa !5
  %dec20 = add nsw i32 %18, -1
  store i32 %dec20, i32* %length, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %18, 0
  br i1 %cmp21, label %while.body.23, label %while.end.25

while.body.23:                                    ; preds = %while.cond.19
  %19 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !15
  %conv24 = zext i8 %20 to i32
  store i32 %conv24, i32* %ch, align 4, !tbaa !5
  %21 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %22 = load i32, i32* %ch, align 4, !tbaa !5
  %23 = load i64, i64* %flags.addr, align 8, !tbaa !7
  call void @TrioWriteStringCharacter(%struct._trio_class_t* %21, i32 %22, i64 %23) #8
  br label %while.cond.19

while.end.25:                                     ; preds = %while.cond.19
  %24 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and26 = and i64 %24, 8
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.37

if.then.28:                                       ; preds = %while.end.25
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.33, %if.then.28
  %25 = load i32, i32* %width.addr, align 4, !tbaa !5
  %dec30 = add nsw i32 %25, -1
  store i32 %dec30, i32* %width.addr, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %25, 0
  br i1 %cmp31, label %while.body.33, label %while.end.36

while.body.33:                                    ; preds = %while.cond.29
  %26 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %OutStream34 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %26, i32 0, i32 0
  %OutStream35 = bitcast {}** %OutStream34 to void (%struct._trio_class_t*, i32)**
  %27 = load void (%struct._trio_class_t*, i32)*, void (%struct._trio_class_t*, i32)** %OutStream35, align 8, !tbaa !9
  %28 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %27(%struct._trio_class_t* %28, i32 32) #8
  br label %while.cond.29

while.end.36:                                     ; preds = %while.cond.29
  br label %if.end.37

if.end.37:                                        ; preds = %while.end.36, %while.end.25
  %29 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @trio_error(i32 %error_number) #0 {
entry:
  %error_number.addr = alloca i32, align 4
  store i32 %error_number, i32* %error_number.addr, align 4, !tbaa !5
  %0 = load i32, i32* %error_number.addr, align 4, !tbaa !5
  %call = call i8* @strerror(i32 %0) #9
  ret i8* %call
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define internal i32 @trio_fpclassify_and_signbit(double %number, i32* %is_negative) #0 {
entry:
  %number.addr = alloca double, align 8
  %is_negative.addr = alloca i32*, align 8
  store double %number, double* %number.addr, align 8, !tbaa !40
  store i32* %is_negative, i32** %is_negative.addr, align 8, !tbaa !1
  %0 = load double, double* %number.addr, align 8, !tbaa !40
  %1 = load i32*, i32** %is_negative.addr, align 8, !tbaa !1
  %call = call i32 @c99_fpclassify_and_signbit(double %0, i32* %1) #8
  ret i32 %call
}

; Function Attrs: nounwind readnone
declare x86_fp80 @floorl(x86_fp80) #3

; Function Attrs: nounwind uwtable
define internal double @TrioLogarithmBase(i32 %base) #0 {
entry:
  %retval = alloca double, align 8
  %base.addr = alloca i32, align 4
  store i32 %base, i32* %base.addr, align 4, !tbaa !5
  %0 = load i32, i32* %base.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 8, label %sw.bb.1
    i32 10, label %sw.bb.2
    i32 16, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store double 1.000000e+00, double* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store double 3.000000e+00, double* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store double 0x400A934F0979A371, double* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store double 4.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %base.addr, align 4, !tbaa !5
  %conv = sitofp i32 %1 to double
  %conv4 = fpext double %conv to x86_fp80
  %call = call x86_fp80 @TrioLogarithm(x86_fp80 %conv4, i32 2) #8
  %conv5 = fptrunc x86_fp80 %call to double
  store double %conv5, double* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load double, double* %retval
  ret double %2
}

; Function Attrs: nounwind uwtable
define internal x86_fp80 @TrioPower(i32 %number, i32 %exponent) #0 {
entry:
  %retval = alloca x86_fp80, align 16
  %number.addr = alloca i32, align 4
  %exponent.addr = alloca i32, align 4
  %result = alloca x86_fp80, align 16
  %cleanup.dest.slot = alloca i32
  store i32 %number, i32* %number.addr, align 4, !tbaa !5
  store i32 %exponent, i32* %exponent.addr, align 4, !tbaa !5
  %0 = bitcast x86_fp80* %result to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i32, i32* %number.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %exponent.addr, align 4, !tbaa !5
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.13
    i32 6, label %sw.bb.16
    i32 7, label %sw.bb.19
    i32 8, label %sw.bb.22
    i32 9, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.then
  %3 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv = sitofp i32 %3 to x86_fp80
  %mul = fmul x86_fp80 %conv, 0xK3FFBCCCCCCCCCCCCCCCD
  store x86_fp80 %mul, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.then
  %4 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv2 = sitofp i32 %4 to x86_fp80
  %mul3 = fmul x86_fp80 %conv2, 0xK3FFF8000000000000000
  store x86_fp80 %mul3, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  %5 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv5 = sitofp i32 %5 to x86_fp80
  %mul6 = fmul x86_fp80 %conv5, 0xK4002A000000000000000
  store x86_fp80 %mul6, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  %6 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv8 = sitofp i32 %6 to x86_fp80
  %mul9 = fmul x86_fp80 %conv8, 0xK4005C800000000000000
  store x86_fp80 %mul9, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  %7 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv11 = sitofp i32 %7 to x86_fp80
  %mul12 = fmul x86_fp80 %conv11, 0xK4008FA00000000000000
  store x86_fp80 %mul12, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  %8 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv14 = sitofp i32 %8 to x86_fp80
  %mul15 = fmul x86_fp80 %conv14, 0xK400C9C40000000000000
  store x86_fp80 %mul15, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then
  %9 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv17 = sitofp i32 %9 to x86_fp80
  %mul18 = fmul x86_fp80 %conv17, 0xK400FC350000000000000
  store x86_fp80 %mul18, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then
  %10 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv20 = sitofp i32 %10 to x86_fp80
  %mul21 = fmul x86_fp80 %conv20, 0xK4012F424000000000000
  store x86_fp80 %mul21, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then
  %11 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv23 = sitofp i32 %11 to x86_fp80
  %mul24 = fmul x86_fp80 %conv23, 0xK40169896800000000000
  store x86_fp80 %mul24, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then
  %12 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv26 = sitofp i32 %12 to x86_fp80
  %mul27 = fmul x86_fp80 %conv26, 0xK4019BEBC200000000000
  store x86_fp80 %mul27, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %13 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv28 = sitofp i32 %13 to x86_fp80
  %14 = load i32, i32* %exponent.addr, align 4, !tbaa !5
  %conv29 = sitofp i32 %14 to x86_fp80
  %call = call x86_fp80 @powl(x86_fp80 %conv28, x86_fp80 %conv29) #9
  store x86_fp80 %call, x86_fp80* %result, align 16, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.25, %sw.bb.22, %sw.bb.19, %sw.bb.16, %sw.bb.13, %sw.bb.10, %sw.bb.7, %sw.bb.4, %sw.bb.1, %sw.bb
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %number.addr, align 4, !tbaa !5
  %conv30 = sitofp i32 %15 to x86_fp80
  %16 = load i32, i32* %exponent.addr, align 4, !tbaa !5
  %conv31 = sitofp i32 %16 to x86_fp80
  %call32 = call x86_fp80 @powl(x86_fp80 %conv30, x86_fp80 %conv31) #9
  store x86_fp80 %call32, x86_fp80* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %17 = load x86_fp80, x86_fp80* %result, align 16, !tbaa !36
  store x86_fp80 %17, x86_fp80* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else
  %18 = bitcast x86_fp80* %result to i8*
  call void @llvm.lifetime.end(i64 16, i8* %18) #1
  %19 = load x86_fp80, x86_fp80* %retval
  ret x86_fp80 %19
}

; Function Attrs: nounwind uwtable
define internal x86_fp80 @TrioLogarithm(x86_fp80 %number, i32 %base) #0 {
entry:
  %number.addr = alloca x86_fp80, align 16
  %base.addr = alloca i32, align 4
  %result = alloca x86_fp80, align 16
  store x86_fp80 %number, x86_fp80* %number.addr, align 16, !tbaa !36
  store i32 %base, i32* %base.addr, align 4, !tbaa !5
  %0 = bitcast x86_fp80* %result to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %cmp = fcmp ole x86_fp80 %1, 0xK00000000000000000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %cmp1 = fcmp oeq x86_fp80 %2, 0xK00000000000000000000
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call = call double @trio_ninf() #8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call2 = call double @trio_nan() #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call, %cond.true ], [ %call2, %cond.false ]
  %conv = fpext double %cond to x86_fp80
  store x86_fp80 %conv, x86_fp80* %result, align 16, !tbaa !36
  br label %if.end.12

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %3, 10
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %4 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %call6 = call x86_fp80 @log10l(x86_fp80 %4) #9
  store x86_fp80 %call6, x86_fp80* %result, align 16, !tbaa !36
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %5 = load x86_fp80, x86_fp80* %number.addr, align 16, !tbaa !36
  %call8 = call x86_fp80 @log10l(x86_fp80 %5) #9
  %6 = load i32, i32* %base.addr, align 4, !tbaa !5
  %conv9 = sitofp i32 %6 to double
  %conv10 = fpext double %conv9 to x86_fp80
  %call11 = call x86_fp80 @log10l(x86_fp80 %conv10) #9
  %div = fdiv x86_fp80 %call8, %call11
  store x86_fp80 %div, x86_fp80* %result, align 16, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %cond.end
  %7 = load x86_fp80, x86_fp80* %result, align 16, !tbaa !36
  %8 = bitcast x86_fp80* %result to i8*
  call void @llvm.lifetime.end(i64 16, i8* %8) #1
  ret x86_fp80 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @trio_isinf(double %number) #0 {
entry:
  %retval = alloca i32, align 4
  %number.addr = alloca double, align 8
  %is_negative = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store double %number, double* %number.addr, align 8, !tbaa !40
  %0 = bitcast i32* %is_negative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %number.addr, align 8, !tbaa !40
  %call = call i32 @trio_fpclassify_and_signbit(double %1, i32* %is_negative) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %is_negative, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 -1, i32 1
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %3 = bitcast i32* %is_negative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind
declare x86_fp80 @fmodl(x86_fp80, x86_fp80) #2

; Function Attrs: nounwind readnone
declare x86_fp80 @ceill(x86_fp80) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @c99_fpclassify_and_signbit(double %number, i32* %is_negative) #4 {
entry:
  %retval = alloca i32, align 4
  %number.addr = alloca double, align 8
  %is_negative.addr = alloca i32*, align 8
  store double %number, double* %number.addr, align 8, !tbaa !40
  store i32* %is_negative, i32** %is_negative.addr, align 8, !tbaa !1
  %0 = load double, double* %number.addr, align 8, !tbaa !40
  %call = call i32 @__signbit(double %0) #11
  %1 = load i32*, i32** %is_negative.addr, align 8, !tbaa !1
  store i32 %call, i32* %1, align 4, !tbaa !5
  %2 = load double, double* %number.addr, align 8, !tbaa !40
  %call1 = call i32 @__fpclassify(double %2) #11
  switch i32 %call1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: alwaysinline inlinehint nounwind readnone uwtable
define available_externally i32 @__signbit(double %__x) #5 {
entry:
  %__x.addr = alloca double, align 8
  %__m = alloca i32, align 4
  store double %__x, double* %__x.addr, align 8, !tbaa !40
  %0 = bitcast i32* %__m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %__x.addr, align 8, !tbaa !40
  %2 = call i32 asm "pmovmskb $1, $0", "=r,x,~{dirflag},~{fpsr},~{flags}"(double %1) #12, !srcloc !44
  store i32 %2, i32* %__m, align 4, !tbaa !5
  %3 = load i32, i32* %__m, align 4, !tbaa !5
  %and = and i32 %3, 128
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %4 = bitcast i32* %__m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  ret i32 %conv
}

; Function Attrs: nounwind readnone
declare i32 @__fpclassify(double) #3

; Function Attrs: nounwind
declare x86_fp80 @powl(x86_fp80, x86_fp80) #2

; Function Attrs: nounwind uwtable
define internal double @trio_ninf() #0 {
entry:
  %0 = load double, double* @trio_ninf.ninf_value, align 8, !tbaa !40
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double @trio_pinf() #8
  %sub = fsub double -0.000000e+00, %call
  store double %sub, double* @trio_ninf.ninf_value, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* @trio_ninf.ninf_value, align 8, !tbaa !40
  ret double %1
}

; Function Attrs: nounwind uwtable
define internal double @trio_nan() #0 {
entry:
  %0 = load double, double* @trio_nan.nan_value, align 8, !tbaa !40
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double @nan(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0)) #11
  store double %call, double* @trio_nan.nan_value, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* @trio_nan.nan_value, align 8, !tbaa !40
  ret double %1
}

; Function Attrs: nounwind
declare x86_fp80 @log10l(x86_fp80) #2

; Function Attrs: nounwind uwtable
define internal double @trio_pinf() #0 {
entry:
  %0 = load double, double* @trio_pinf.pinf_value, align 8, !tbaa !40
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0x7FF0000000000000, double* @trio_pinf.pinf_value, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* @trio_pinf.pinf_value, align 8, !tbaa !40
  ret double %1
}

; Function Attrs: nounwind readnone
declare double @nan(i8*) #3

; Function Attrs: nounwind uwtable
define internal i64 @trio_length_max(i8* %string, i64 %max) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8, !tbaa !1
  store i64 %max, i64* %max.addr, align 8, !tbaa !7
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !tbaa !7
  %2 = load i64, i64* %max.addr, align 8, !tbaa !7
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8, !tbaa !7
  %4 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %3
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %i, align 8, !tbaa !7
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i64, i64* %i, align 8, !tbaa !7
  %8 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i64 %7
}

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #6

declare i64 @write(i32, i8*, i64) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @TrioScanProcess(%struct._trio_class_t* %data, i8* %format, %struct.trio_parameter_t* %parameters) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._trio_class_t*, align 8
  %format.addr = alloca i8*, align 8
  %parameters.addr = alloca %struct.trio_parameter_t*, align 8
  %status = alloca i32, align 4
  %assignment = alloca i32, align 4
  %ch = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %flags = alloca i64, align 8
  %width = alloca i32, align 4
  %base = alloca i32, align 4
  %pointer = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %number114 = alloca i64, align 8
  %characterclass = alloca [257 x i32], align 16
  %count = alloca i32, align 4
  store %struct._trio_class_t* %data, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.trio_parameter_t* %parameters, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %assignment to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %base to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i8** %pointer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.360

if.end:                                           ; preds = %entry
  store i32 0, i32* %status, align 4, !tbaa !5
  store i32 0, i32* %assignment, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %offset, align 4, !tbaa !5
  %11 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %InStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %11, i32 0, i32 1
  %12 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream, align 8, !tbaa !21
  %13 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  call void %12(%struct._trio_class_t* %13, i32* %ch) #8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %15, i64 %idxprom
  %type = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx2, i32 0, i32 0
  %16 = load i32, i32* %type, align 4, !tbaa !29
  %cmp3 = icmp eq i32 %16, 7
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.5

while.cond.5:                                     ; preds = %if.end.49, %if.then.24, %while.end
  %18 = load i32, i32* %offset, align 4, !tbaa !5
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %20, i64 %idxprom6
  %beginOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx7, i32 0, i32 7
  %21 = load i32, i32* %beginOffset, align 4, !tbaa !32
  %cmp8 = icmp slt i32 %18, %21
  br i1 %cmp8, label %while.body.10, label %while.end.50

while.body.10:                                    ; preds = %while.cond.5
  %22 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom11 = sext i32 %22 to i64
  %23 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %23, i64 %idxprom11
  %24 = load i8, i8* %arrayidx12, align 1, !tbaa !15
  %conv13 = sext i8 %24 to i32
  %cmp14 = icmp eq i32 37, %conv13
  br i1 %cmp14, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %while.body.10
  %25 = load i32, i32* %offset, align 4, !tbaa !5
  %add = add nsw i32 %25, 1
  %idxprom16 = sext i32 %add to i64
  %26 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %26, i64 %idxprom16
  %27 = load i8, i8* %arrayidx17, align 1, !tbaa !15
  %conv18 = sext i8 %27 to i32
  %cmp19 = icmp eq i32 37, %conv18
  br i1 %cmp19, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp22 = icmp eq i32 37, %28
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.21
  %29 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %InStream25 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %29, i32 0, i32 1
  %30 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream25, align 8, !tbaa !21
  %31 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  call void %30(%struct._trio_class_t* %31, i32* %ch) #8
  %32 = load i32, i32* %offset, align 4, !tbaa !5
  %add26 = add nsw i32 %32, 2
  store i32 %add26, i32* %offset, align 4, !tbaa !5
  br label %while.cond.5

if.else:                                          ; preds = %if.then.21
  %33 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %33, 8
  %add27 = add nsw i32 2, %shl
  %sub = sub nsw i32 0, %add27
  store i32 %sub, i32* %status, align 4, !tbaa !5
  br label %end

if.else.28:                                       ; preds = %land.lhs.true, %while.body.10
  %34 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom29 = sext i32 %34 to i64
  %35 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %35, i64 %idxprom29
  %36 = load i8, i8* %arrayidx30, align 1, !tbaa !15
  %conv31 = sext i8 %36 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %call = call i16** @__ctype_b_loc() #11
  %37 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %37, i64 %idxprom32
  %38 = load i16, i16* %arrayidx33, align 2, !tbaa !27
  %conv34 = zext i16 %38 to i32
  %and = and i32 %conv34, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.else.28
  %39 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %call36 = call i32 @TrioSkipWhitespaces(%struct._trio_class_t* %39) #8
  store i32 %call36, i32* %ch, align 4, !tbaa !5
  br label %if.end.47

if.else.37:                                       ; preds = %if.else.28
  %40 = load i32, i32* %ch, align 4, !tbaa !5
  %41 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom38 = sext i32 %41 to i64
  %42 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %42, i64 %idxprom38
  %43 = load i8, i8* %arrayidx39, align 1, !tbaa !15
  %conv40 = sext i8 %43 to i32
  %cmp41 = icmp eq i32 %40, %conv40
  br i1 %cmp41, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.else.37
  %44 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %InStream44 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %44, i32 0, i32 1
  %45 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream44, align 8, !tbaa !21
  %46 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  call void %45(%struct._trio_class_t* %46, i32* %ch) #8
  br label %if.end.46

if.else.45:                                       ; preds = %if.else.37
  %47 = load i32, i32* %assignment, align 4, !tbaa !5
  store i32 %47, i32* %status, align 4, !tbaa !5
  br label %end

if.end.46:                                        ; preds = %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.35
  %48 = load i32, i32* %offset, align 4, !tbaa !5
  %inc48 = add nsw i32 %48, 1
  store i32 %inc48, i32* %offset, align 4, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.47
  br label %while.cond.5

while.end.50:                                     ; preds = %while.cond.5
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %49 to i64
  %50 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %50, i64 %idxprom51
  %type53 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx52, i32 0, i32 0
  %51 = load i32, i32* %type53, align 4, !tbaa !29
  %cmp54 = icmp eq i32 %51, -1
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %while.end.50
  br label %for.end

if.end.57:                                        ; preds = %while.end.50
  %52 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp58 = icmp eq i32 -1, %52
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.69

land.lhs.true.60:                                 ; preds = %if.end.57
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %53 to i64
  %54 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %54, i64 %idxprom61
  %type63 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx62, i32 0, i32 0
  %55 = load i32, i32* %type63, align 4, !tbaa !29
  %cmp64 = icmp ne i32 %55, 6
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %land.lhs.true.60
  %56 = load i32, i32* %assignment, align 4, !tbaa !5
  %cmp67 = icmp sgt i32 %56, 0
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.66
  %57 = load i32, i32* %assignment, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %57, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %status, align 4, !tbaa !5
  br label %end

if.end.69:                                        ; preds = %land.lhs.true.60, %if.end.57
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %58 to i64
  %59 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %59, i64 %idxprom70
  %flags72 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx71, i32 0, i32 1
  %60 = load i64, i64* %flags72, align 8, !tbaa !19
  store i64 %60, i64* %flags, align 8, !tbaa !7
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom73 = sext i32 %61 to i64
  %62 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %62, i64 %idxprom73
  %width75 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx74, i32 0, i32 2
  %63 = load i32, i32* %width75, align 4, !tbaa !26
  store i32 %63, i32* %width, align 4, !tbaa !5
  %64 = load i64, i64* %flags, align 8, !tbaa !7
  %and76 = and i64 %64, 131072
  %tobool77 = icmp ne i64 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %if.end.69
  %65 = load i32, i32* %width, align 4, !tbaa !5
  %idxprom79 = sext i32 %65 to i64
  %66 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %66, i64 %idxprom79
  %data81 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx80, i32 0, i32 10
  %number = bitcast %union.anon.0* %data81 to %union.anon.1*
  %as_signed = bitcast %union.anon.1* %number to i64*
  %67 = load i64, i64* %as_signed, align 8, !tbaa !7
  %conv82 = trunc i64 %67 to i32
  store i32 %conv82, i32* %width, align 4, !tbaa !5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %if.end.69
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom84 = sext i32 %68 to i64
  %69 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %69, i64 %idxprom84
  %baseSpecifier = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx85, i32 0, i32 5
  %70 = load i32, i32* %baseSpecifier, align 4, !tbaa !42
  %cmp86 = icmp ne i32 -1, %70
  br i1 %cmp86, label %if.then.88, label %if.else.92

if.then.88:                                       ; preds = %if.end.83
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %71 to i64
  %72 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %72, i64 %idxprom89
  %baseSpecifier91 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx90, i32 0, i32 5
  %73 = load i32, i32* %baseSpecifier91, align 4, !tbaa !42
  store i32 %73, i32* %base, align 4, !tbaa !5
  br label %if.end.110

if.else.92:                                       ; preds = %if.end.83
  %74 = load i64, i64* %flags, align 8, !tbaa !7
  %and93 = and i64 %74, 2097152
  %tobool94 = icmp ne i64 %and93, 0
  br i1 %tobool94, label %if.then.95, label %if.else.105

if.then.95:                                       ; preds = %if.else.92
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom96 = sext i32 %75 to i64
  %76 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %76, i64 %idxprom96
  %base98 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx97, i32 0, i32 4
  %77 = load i32, i32* %base98, align 4, !tbaa !31
  store i32 %77, i32* %base, align 4, !tbaa !5
  %78 = load i32, i32* %base, align 4, !tbaa !5
  %idxprom99 = sext i32 %78 to i64
  %79 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %79, i64 %idxprom99
  %data101 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx100, i32 0, i32 10
  %number102 = bitcast %union.anon.0* %data101 to %union.anon.1*
  %as_signed103 = bitcast %union.anon.1* %number102 to i64*
  %80 = load i64, i64* %as_signed103, align 8, !tbaa !7
  %conv104 = trunc i64 %80 to i32
  store i32 %conv104, i32* %base, align 4, !tbaa !5
  br label %if.end.109

if.else.105:                                      ; preds = %if.else.92
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom106 = sext i32 %81 to i64
  %82 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %82, i64 %idxprom106
  %base108 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx107, i32 0, i32 4
  %83 = load i32, i32* %base108, align 4, !tbaa !31
  store i32 %83, i32* %base, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.105, %if.then.95
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.88
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom111 = sext i32 %84 to i64
  %85 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %85, i64 %idxprom111
  %type113 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx112, i32 0, i32 0
  %86 = load i32, i32* %type113, align 4, !tbaa !29
  switch i32 %86, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.164
    i32 2, label %sw.bb.183
    i32 8, label %sw.bb.210
    i32 6, label %sw.bb.254
    i32 3, label %sw.bb.303
    i32 5, label %sw.bb.330
    i32 7, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end.110
  %87 = bitcast i64* %number114 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load i32, i32* %base, align 4, !tbaa !5
  %cmp115 = icmp eq i32 0, %88
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %sw.bb
  store i32 10, i32* %base, align 4, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %sw.bb
  %89 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %90 = load i64, i64* %flags, align 8, !tbaa !7
  %91 = load i32, i32* %width, align 4, !tbaa !5
  %92 = load i32, i32* %base, align 4, !tbaa !5
  %call119 = call i32 @TrioReadNumber(%struct._trio_class_t* %89, i64* %number114, i64 %90, i32 %91, i32 %92) #8
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %if.end.118
  %93 = load i32, i32* %assignment, align 4, !tbaa !5
  store i32 %93, i32* %status, align 4, !tbaa !5
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.122:                                       ; preds = %if.end.118
  %94 = load i64, i64* %flags, align 8, !tbaa !7
  %and123 = and i64 %94, 67108864
  %tobool124 = icmp ne i64 %and123, 0
  br i1 %tobool124, label %if.end.163, label %if.then.125

if.then.125:                                      ; preds = %if.end.122
  %95 = load i32, i32* %assignment, align 4, !tbaa !5
  %inc126 = add nsw i32 %95, 1
  store i32 %inc126, i32* %assignment, align 4, !tbaa !5
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom127 = sext i32 %96 to i64
  %97 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %97, i64 %idxprom127
  %data129 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx128, i32 0, i32 10
  %pointer130 = bitcast %union.anon.0* %data129 to i8**
  %98 = load i8*, i8** %pointer130, align 8, !tbaa !1
  store i8* %98, i8** %pointer, align 8, !tbaa !1
  %99 = load i64, i64* %flags, align 8, !tbaa !7
  %and131 = and i64 %99, 1024
  %tobool132 = icmp ne i64 %and131, 0
  br i1 %tobool132, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %if.then.125
  %100 = load i64, i64* %number114, align 8, !tbaa !7
  %101 = load i8*, i8** %pointer, align 8, !tbaa !1
  %102 = bitcast i8* %101 to i64*
  store i64 %100, i64* %102, align 8, !tbaa !7
  br label %if.end.162

if.else.134:                                      ; preds = %if.then.125
  %103 = load i64, i64* %flags, align 8, !tbaa !7
  %and135 = and i64 %103, 2048
  %tobool136 = icmp ne i64 %and135, 0
  br i1 %tobool136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %if.else.134
  %104 = load i64, i64* %number114, align 8, !tbaa !7
  %105 = load i8*, i8** %pointer, align 8, !tbaa !1
  %106 = bitcast i8* %105 to i64*
  store i64 %104, i64* %106, align 8, !tbaa !7
  br label %if.end.161

if.else.138:                                      ; preds = %if.else.134
  %107 = load i64, i64* %flags, align 8, !tbaa !7
  %and139 = and i64 %107, 4096
  %tobool140 = icmp ne i64 %and139, 0
  br i1 %tobool140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.else.138
  %108 = load i64, i64* %number114, align 8, !tbaa !7
  %109 = load i8*, i8** %pointer, align 8, !tbaa !1
  %110 = bitcast i8* %109 to i64*
  store i64 %108, i64* %110, align 8, !tbaa !7
  br label %if.end.160

if.else.142:                                      ; preds = %if.else.138
  %111 = load i64, i64* %flags, align 8, !tbaa !7
  %and143 = and i64 %111, 256
  %tobool144 = icmp ne i64 %and143, 0
  br i1 %tobool144, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %if.else.142
  %112 = load i64, i64* %number114, align 8, !tbaa !7
  %113 = load i8*, i8** %pointer, align 8, !tbaa !1
  %114 = bitcast i8* %113 to i64*
  store i64 %112, i64* %114, align 8, !tbaa !34
  br label %if.end.159

if.else.146:                                      ; preds = %if.else.142
  %115 = load i64, i64* %flags, align 8, !tbaa !7
  %and147 = and i64 %115, 128
  %tobool148 = icmp ne i64 %and147, 0
  br i1 %tobool148, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %if.else.146
  %116 = load i64, i64* %number114, align 8, !tbaa !7
  %117 = load i8*, i8** %pointer, align 8, !tbaa !1
  %118 = bitcast i8* %117 to i64*
  store i64 %116, i64* %118, align 8, !tbaa !7
  br label %if.end.158

if.else.150:                                      ; preds = %if.else.146
  %119 = load i64, i64* %flags, align 8, !tbaa !7
  %and151 = and i64 %119, 32
  %tobool152 = icmp ne i64 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.else.155

if.then.153:                                      ; preds = %if.else.150
  %120 = load i64, i64* %number114, align 8, !tbaa !7
  %conv154 = trunc i64 %120 to i16
  %121 = load i8*, i8** %pointer, align 8, !tbaa !1
  %122 = bitcast i8* %121 to i16*
  store i16 %conv154, i16* %122, align 2, !tbaa !27
  br label %if.end.157

if.else.155:                                      ; preds = %if.else.150
  %123 = load i64, i64* %number114, align 8, !tbaa !7
  %conv156 = trunc i64 %123 to i32
  %124 = load i8*, i8** %pointer, align 8, !tbaa !1
  %125 = bitcast i8* %124 to i32*
  store i32 %conv156, i32* %125, align 4, !tbaa !5
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.155, %if.then.153
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.149
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.145
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.141
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.137
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.133
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.122
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.121, %if.end.163
  %126 = bitcast i64* %number114 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.360 [
    i32 0, label %cleanup.cont
    i32 8, label %end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.bb.164:                                        ; preds = %if.end.110
  %127 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %128 = load i64, i64* %flags, align 8, !tbaa !7
  %and165 = and i64 %128, 67108864
  %tobool166 = icmp ne i64 %and165, 0
  br i1 %tobool166, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %sw.bb.164
  br label %cond.end.172

cond.false.168:                                   ; preds = %sw.bb.164
  %129 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom169 = sext i32 %129 to i64
  %130 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %130, i64 %idxprom169
  %data171 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx170, i32 0, i32 10
  %string = bitcast %union.anon.0* %data171 to i8**
  %131 = load i8*, i8** %string, align 8, !tbaa !1
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.168, %cond.true.167
  %cond173 = phi i8* [ null, %cond.true.167 ], [ %131, %cond.false.168 ]
  %132 = load i64, i64* %flags, align 8, !tbaa !7
  %133 = load i32, i32* %width, align 4, !tbaa !5
  %call174 = call i32 @TrioReadString(%struct._trio_class_t* %127, i8* %cond173, i64 %132, i32 %133) #8
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.end.177, label %if.then.176

if.then.176:                                      ; preds = %cond.end.172
  %134 = load i32, i32* %assignment, align 4, !tbaa !5
  store i32 %134, i32* %status, align 4, !tbaa !5
  br label %end

if.end.177:                                       ; preds = %cond.end.172
  %135 = load i64, i64* %flags, align 8, !tbaa !7
  %and178 = and i64 %135, 67108864
  %tobool179 = icmp ne i64 %and178, 0
  br i1 %tobool179, label %if.end.182, label %if.then.180

if.then.180:                                      ; preds = %if.end.177
  %136 = load i32, i32* %assignment, align 4, !tbaa !5
  %inc181 = add nsw i32 %136, 1
  store i32 %inc181, i32* %assignment, align 4, !tbaa !5
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %if.end.177
  br label %sw.epilog

sw.bb.183:                                        ; preds = %if.end.110
  %137 = load i64, i64* %flags, align 8, !tbaa !7
  %and184 = and i64 %137, 67108864
  %tobool185 = icmp ne i64 %and184, 0
  br i1 %tobool185, label %if.then.186, label %if.else.187

if.then.186:                                      ; preds = %sw.bb.183
  store i8* null, i8** %pointer, align 8, !tbaa !1
  br label %if.end.200

if.else.187:                                      ; preds = %sw.bb.183
  %138 = load i64, i64* %flags, align 8, !tbaa !7
  %and188 = and i64 %138, 512
  %tobool189 = icmp ne i64 %and188, 0
  br i1 %tobool189, label %cond.true.190, label %cond.false.194

cond.true.190:                                    ; preds = %if.else.187
  %139 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom191 = sext i32 %139 to i64
  %140 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %140, i64 %idxprom191
  %data193 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx192, i32 0, i32 10
  %longdoublePointer = bitcast %union.anon.0* %data193 to x86_fp80**
  %141 = load x86_fp80*, x86_fp80** %longdoublePointer, align 8, !tbaa !1
  %142 = bitcast x86_fp80* %141 to i8*
  br label %cond.end.198

cond.false.194:                                   ; preds = %if.else.187
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom195 = sext i32 %143 to i64
  %144 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %144, i64 %idxprom195
  %data197 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx196, i32 0, i32 10
  %doublePointer = bitcast %union.anon.0* %data197 to double**
  %145 = load double*, double** %doublePointer, align 8, !tbaa !1
  %146 = bitcast double* %145 to i8*
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.194, %cond.true.190
  %cond199 = phi i8* [ %142, %cond.true.190 ], [ %146, %cond.false.194 ]
  store i8* %cond199, i8** %pointer, align 8, !tbaa !1
  br label %if.end.200

if.end.200:                                       ; preds = %cond.end.198, %if.then.186
  %147 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %148 = load i8*, i8** %pointer, align 8, !tbaa !1
  %149 = load i64, i64* %flags, align 8, !tbaa !7
  %150 = load i32, i32* %width, align 4, !tbaa !5
  %call201 = call i32 @TrioReadDouble(%struct._trio_class_t* %147, i8* %148, i64 %149, i32 %150) #8
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.end.204, label %if.then.203

if.then.203:                                      ; preds = %if.end.200
  %151 = load i32, i32* %assignment, align 4, !tbaa !5
  store i32 %151, i32* %status, align 4, !tbaa !5
  br label %end

if.end.204:                                       ; preds = %if.end.200
  %152 = load i64, i64* %flags, align 8, !tbaa !7
  %and205 = and i64 %152, 67108864
  %tobool206 = icmp ne i64 %and205, 0
  br i1 %tobool206, label %if.end.209, label %if.then.207

if.then.207:                                      ; preds = %if.end.204
  %153 = load i32, i32* %assignment, align 4, !tbaa !5
  %inc208 = add nsw i32 %153, 1
  store i32 %inc208, i32* %assignment, align 4, !tbaa !5
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %if.end.204
  br label %sw.epilog

sw.bb.210:                                        ; preds = %if.end.110
  %154 = bitcast [257 x i32]* %characterclass to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %154) #1
  br label %while.cond.211

while.cond.211:                                   ; preds = %while.body.217, %sw.bb.210
  %155 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom212 = sext i32 %155 to i64
  %156 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i8, i8* %156, i64 %idxprom212
  %157 = load i8, i8* %arrayidx213, align 1, !tbaa !15
  %conv214 = sext i8 %157 to i32
  %cmp215 = icmp ne i32 %conv214, 91
  br i1 %cmp215, label %while.body.217, label %while.end.219

while.body.217:                                   ; preds = %while.cond.211
  %158 = load i32, i32* %offset, align 4, !tbaa !5
  %inc218 = add nsw i32 %158, 1
  store i32 %inc218, i32* %offset, align 4, !tbaa !5
  br label %while.cond.211

while.end.219:                                    ; preds = %while.cond.211
  %159 = load i32, i32* %offset, align 4, !tbaa !5
  %inc220 = add nsw i32 %159, 1
  store i32 %inc220, i32* %offset, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [257 x i32], [257 x i32]* %characterclass, i32 0, i32 0
  %160 = bitcast i32* %arraydecay to i8*
  %call221 = call i8* @memset(i8* %160, i32 0, i64 1028) #9
  %161 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay222 = getelementptr inbounds [257 x i32], [257 x i32]* %characterclass, i32 0, i32 0
  %call223 = call i32 @TrioGetCharacterClass(i8* %161, i32* %offset, i64* %flags, i32* %arraydecay222) #8
  store i32 %call223, i32* %status, align 4, !tbaa !5
  %162 = load i32, i32* %status, align 4, !tbaa !5
  %cmp224 = icmp slt i32 %162, 0
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %while.end.219
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.251

if.end.227:                                       ; preds = %while.end.219
  %163 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %164 = load i64, i64* %flags, align 8, !tbaa !7
  %and228 = and i64 %164, 67108864
  %tobool229 = icmp ne i64 %and228, 0
  br i1 %tobool229, label %cond.true.230, label %cond.false.231

cond.true.230:                                    ; preds = %if.end.227
  br label %cond.end.236

cond.false.231:                                   ; preds = %if.end.227
  %165 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom232 = sext i32 %165 to i64
  %166 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %166, i64 %idxprom232
  %data234 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx233, i32 0, i32 10
  %string235 = bitcast %union.anon.0* %data234 to i8**
  %167 = load i8*, i8** %string235, align 8, !tbaa !1
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.231, %cond.true.230
  %cond237 = phi i8* [ null, %cond.true.230 ], [ %167, %cond.false.231 ]
  %arraydecay238 = getelementptr inbounds [257 x i32], [257 x i32]* %characterclass, i32 0, i32 0
  %168 = load i64, i64* %flags, align 8, !tbaa !7
  %169 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom239 = sext i32 %169 to i64
  %170 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %170, i64 %idxprom239
  %width241 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx240, i32 0, i32 2
  %171 = load i32, i32* %width241, align 4, !tbaa !26
  %call242 = call i32 @TrioReadGroup(%struct._trio_class_t* %163, i8* %cond237, i32* %arraydecay238, i64 %168, i32 %171) #8
  %tobool243 = icmp ne i32 %call242, 0
  br i1 %tobool243, label %if.end.245, label %if.then.244

if.then.244:                                      ; preds = %cond.end.236
  %172 = load i32, i32* %assignment, align 4, !tbaa !5
  store i32 %172, i32* %status, align 4, !tbaa !5
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.251

if.end.245:                                       ; preds = %cond.end.236
  %173 = load i64, i64* %flags, align 8, !tbaa !7
  %and246 = and i64 %173, 67108864
  %tobool247 = icmp ne i64 %and246, 0
  br i1 %tobool247, label %if.end.250, label %if.then.248

if.then.248:                                      ; preds = %if.end.245
  %174 = load i32, i32* %assignment, align 4, !tbaa !5
  %inc249 = add nsw i32 %174, 1
  store i32 %inc249, i32* %assignment, align 4, !tbaa !5
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.248, %if.end.245
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.251

cleanup.251:                                      ; preds = %if.then.244, %if.then.226, %if.end.250
  %175 = bitcast [257 x i32]* %characterclass to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %175) #1
  %cleanup.dest.252 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.252, label %cleanup.360 [
    i32 0, label %cleanup.cont.253
    i32 8, label %end
  ]

cleanup.cont.253:                                 ; preds = %cleanup.251
  br label %sw.epilog

sw.bb.254:                                        ; preds = %if.end.110
  %176 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom255 = sext i32 %176 to i64
  %177 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx256 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %177, i64 %idxprom255
  %data257 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx256, i32 0, i32 10
  %pointer258 = bitcast %union.anon.0* %data257 to i8**
  %178 = load i8*, i8** %pointer258, align 8, !tbaa !1
  store i8* %178, i8** %pointer, align 8, !tbaa !1
  %179 = load i8*, i8** %pointer, align 8, !tbaa !1
  %cmp259 = icmp ne i8* null, %179
  br i1 %cmp259, label %if.then.261, label %if.end.302

if.then.261:                                      ; preds = %sw.bb.254
  %180 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  %181 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %181, i32 0, i32 5
  %182 = load i32, i32* %processed, align 4, !tbaa !14
  store i32 %182, i32* %count, align 4, !tbaa !5
  %183 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp262 = icmp ne i32 %183, -1
  br i1 %cmp262, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %if.then.261
  %184 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add nsw i32 %184, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.264, %if.then.261
  %185 = load i64, i64* %flags, align 8, !tbaa !7
  %and266 = and i64 %185, 1024
  %tobool267 = icmp ne i64 %and266, 0
  br i1 %tobool267, label %if.then.268, label %if.else.270

if.then.268:                                      ; preds = %if.end.265
  %186 = load i32, i32* %count, align 4, !tbaa !5
  %conv269 = sext i32 %186 to i64
  %187 = load i8*, i8** %pointer, align 8, !tbaa !1
  %188 = bitcast i8* %187 to i64*
  store i64 %conv269, i64* %188, align 8, !tbaa !7
  br label %if.end.301

if.else.270:                                      ; preds = %if.end.265
  %189 = load i64, i64* %flags, align 8, !tbaa !7
  %and271 = and i64 %189, 2048
  %tobool272 = icmp ne i64 %and271, 0
  br i1 %tobool272, label %if.then.273, label %if.else.275

if.then.273:                                      ; preds = %if.else.270
  %190 = load i32, i32* %count, align 4, !tbaa !5
  %conv274 = sext i32 %190 to i64
  %191 = load i8*, i8** %pointer, align 8, !tbaa !1
  %192 = bitcast i8* %191 to i64*
  store i64 %conv274, i64* %192, align 8, !tbaa !7
  br label %if.end.300

if.else.275:                                      ; preds = %if.else.270
  %193 = load i64, i64* %flags, align 8, !tbaa !7
  %and276 = and i64 %193, 4096
  %tobool277 = icmp ne i64 %and276, 0
  br i1 %tobool277, label %if.then.278, label %if.else.280

if.then.278:                                      ; preds = %if.else.275
  %194 = load i32, i32* %count, align 4, !tbaa !5
  %conv279 = sext i32 %194 to i64
  %195 = load i8*, i8** %pointer, align 8, !tbaa !1
  %196 = bitcast i8* %195 to i64*
  store i64 %conv279, i64* %196, align 8, !tbaa !7
  br label %if.end.299

if.else.280:                                      ; preds = %if.else.275
  %197 = load i64, i64* %flags, align 8, !tbaa !7
  %and281 = and i64 %197, 256
  %tobool282 = icmp ne i64 %and281, 0
  br i1 %tobool282, label %if.then.283, label %if.else.285

if.then.283:                                      ; preds = %if.else.280
  %198 = load i32, i32* %count, align 4, !tbaa !5
  %conv284 = sext i32 %198 to i64
  %199 = load i8*, i8** %pointer, align 8, !tbaa !1
  %200 = bitcast i8* %199 to i64*
  store i64 %conv284, i64* %200, align 8, !tbaa !34
  br label %if.end.298

if.else.285:                                      ; preds = %if.else.280
  %201 = load i64, i64* %flags, align 8, !tbaa !7
  %and286 = and i64 %201, 128
  %tobool287 = icmp ne i64 %and286, 0
  br i1 %tobool287, label %if.then.288, label %if.else.290

if.then.288:                                      ; preds = %if.else.285
  %202 = load i32, i32* %count, align 4, !tbaa !5
  %conv289 = sext i32 %202 to i64
  %203 = load i8*, i8** %pointer, align 8, !tbaa !1
  %204 = bitcast i8* %203 to i64*
  store i64 %conv289, i64* %204, align 8, !tbaa !7
  br label %if.end.297

if.else.290:                                      ; preds = %if.else.285
  %205 = load i64, i64* %flags, align 8, !tbaa !7
  %and291 = and i64 %205, 32
  %tobool292 = icmp ne i64 %and291, 0
  br i1 %tobool292, label %if.then.293, label %if.else.295

if.then.293:                                      ; preds = %if.else.290
  %206 = load i32, i32* %count, align 4, !tbaa !5
  %conv294 = trunc i32 %206 to i16
  %207 = load i8*, i8** %pointer, align 8, !tbaa !1
  %208 = bitcast i8* %207 to i16*
  store i16 %conv294, i16* %208, align 2, !tbaa !27
  br label %if.end.296

if.else.295:                                      ; preds = %if.else.290
  %209 = load i32, i32* %count, align 4, !tbaa !5
  %210 = load i8*, i8** %pointer, align 8, !tbaa !1
  %211 = bitcast i8* %210 to i32*
  store i32 %209, i32* %211, align 4, !tbaa !5
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.295, %if.then.293
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.288
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.then.283
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.then.278
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.then.273
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %if.then.268
  %212 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %sw.bb.254
  br label %sw.epilog

sw.bb.303:                                        ; preds = %if.end.110
  %213 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %214 = load i64, i64* %flags, align 8, !tbaa !7
  %and304 = and i64 %214, 67108864
  %tobool305 = icmp ne i64 %and304, 0
  br i1 %tobool305, label %cond.true.306, label %cond.false.307

cond.true.306:                                    ; preds = %sw.bb.303
  br label %cond.end.312

cond.false.307:                                   ; preds = %sw.bb.303
  %215 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom308 = sext i32 %215 to i64
  %216 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx309 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %216, i64 %idxprom308
  %data310 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx309, i32 0, i32 10
  %string311 = bitcast %union.anon.0* %data310 to i8**
  %217 = load i8*, i8** %string311, align 8, !tbaa !1
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.307, %cond.true.306
  %cond313 = phi i8* [ null, %cond.true.306 ], [ %217, %cond.false.307 ]
  %218 = load i64, i64* %flags, align 8, !tbaa !7
  %219 = load i32, i32* %width, align 4, !tbaa !5
  %cmp314 = icmp eq i32 %219, 0
  br i1 %cmp314, label %cond.true.316, label %cond.false.317

cond.true.316:                                    ; preds = %cond.end.312
  br label %cond.end.318

cond.false.317:                                   ; preds = %cond.end.312
  %220 = load i32, i32* %width, align 4, !tbaa !5
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.317, %cond.true.316
  %cond319 = phi i32 [ 1, %cond.true.316 ], [ %220, %cond.false.317 ]
  %call320 = call i32 @TrioReadChar(%struct._trio_class_t* %213, i8* %cond313, i64 %218, i32 %cond319) #8
  %cmp321 = icmp eq i32 %call320, 0
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %cond.end.318
  %221 = load i32, i32* %assignment, align 4, !tbaa !5
  store i32 %221, i32* %status, align 4, !tbaa !5
  br label %end

if.end.324:                                       ; preds = %cond.end.318
  %222 = load i64, i64* %flags, align 8, !tbaa !7
  %and325 = and i64 %222, 67108864
  %tobool326 = icmp ne i64 %and325, 0
  br i1 %tobool326, label %if.end.329, label %if.then.327

if.then.327:                                      ; preds = %if.end.324
  %223 = load i32, i32* %assignment, align 4, !tbaa !5
  %inc328 = add nsw i32 %223, 1
  store i32 %inc328, i32* %assignment, align 4, !tbaa !5
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.327, %if.end.324
  br label %sw.epilog

sw.bb.330:                                        ; preds = %if.end.110
  %224 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %225 = load i64, i64* %flags, align 8, !tbaa !7
  %and331 = and i64 %225, 67108864
  %tobool332 = icmp ne i64 %and331, 0
  br i1 %tobool332, label %cond.true.333, label %cond.false.334

cond.true.333:                                    ; preds = %sw.bb.330
  br label %cond.end.339

cond.false.334:                                   ; preds = %sw.bb.330
  %226 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom335 = sext i32 %226 to i64
  %227 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %227, i64 %idxprom335
  %data337 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx336, i32 0, i32 10
  %pointer338 = bitcast %union.anon.0* %data337 to i8**
  %228 = load i8*, i8** %pointer338, align 8, !tbaa !1
  %229 = bitcast i8* %228 to i8**
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.334, %cond.true.333
  %cond340 = phi i8** [ null, %cond.true.333 ], [ %229, %cond.false.334 ]
  %230 = load i64, i64* %flags, align 8, !tbaa !7
  %call341 = call i32 @TrioReadPointer(%struct._trio_class_t* %224, i8** %cond340, i64 %230) #8
  %tobool342 = icmp ne i32 %call341, 0
  br i1 %tobool342, label %if.end.344, label %if.then.343

if.then.343:                                      ; preds = %cond.end.339
  %231 = load i32, i32* %assignment, align 4, !tbaa !5
  store i32 %231, i32* %status, align 4, !tbaa !5
  br label %end

if.end.344:                                       ; preds = %cond.end.339
  %232 = load i64, i64* %flags, align 8, !tbaa !7
  %and345 = and i64 %232, 67108864
  %tobool346 = icmp ne i64 %and345, 0
  br i1 %tobool346, label %if.end.349, label %if.then.347

if.then.347:                                      ; preds = %if.end.344
  %233 = load i32, i32* %assignment, align 4, !tbaa !5
  %inc348 = add nsw i32 %233, 1
  store i32 %inc348, i32* %assignment, align 4, !tbaa !5
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.347, %if.end.344
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.110
  %234 = load i32, i32* %offset, align 4, !tbaa !5
  %shl350 = shl i32 %234, 8
  %add351 = add nsw i32 2, %shl350
  %sub352 = sub nsw i32 0, %add351
  store i32 %sub352, i32* %status, align 4, !tbaa !5
  br label %end

sw.epilog:                                        ; preds = %if.end.110, %if.end.349, %if.end.329, %if.end.302, %cleanup.cont.253, %if.end.209, %if.end.182, %cleanup.cont
  %235 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %235, i32 0, i32 4
  %236 = load i32, i32* %current, align 4, !tbaa !23
  store i32 %236, i32* %ch, align 4, !tbaa !5
  %237 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom353 = sext i32 %237 to i64
  %238 = load %struct.trio_parameter_t*, %struct.trio_parameter_t** %parameters.addr, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %238, i64 %idxprom353
  %endOffset = getelementptr inbounds %struct.trio_parameter_t, %struct.trio_parameter_t* %arrayidx354, i32 0, i32 8
  %239 = load i32, i32* %endOffset, align 4, !tbaa !24
  store i32 %239, i32* %offset, align 4, !tbaa !5
  %240 = load i32, i32* %i, align 4, !tbaa !5
  %inc355 = add nsw i32 %240, 1
  store i32 %inc355, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.56
  %241 = load i32, i32* %assignment, align 4, !tbaa !5
  store i32 %241, i32* %status, align 4, !tbaa !5
  br label %end

end:                                              ; preds = %for.end, %cleanup.251, %cleanup, %sw.default, %if.then.343, %if.then.323, %if.then.203, %if.then.176, %cond.end, %if.else.45, %if.else
  %242 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %UndoStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %242, i32 0, i32 2
  %243 = load void (%struct._trio_class_t*)*, void (%struct._trio_class_t*)** %UndoStream, align 8, !tbaa !22
  %tobool356 = icmp ne void (%struct._trio_class_t*)* %243, null
  br i1 %tobool356, label %if.then.357, label %if.end.359

if.then.357:                                      ; preds = %end
  %244 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  %UndoStream358 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %244, i32 0, i32 2
  %245 = load void (%struct._trio_class_t*)*, void (%struct._trio_class_t*)** %UndoStream358, align 8, !tbaa !22
  %246 = load %struct._trio_class_t*, %struct._trio_class_t** %data.addr, align 8, !tbaa !1
  call void %245(%struct._trio_class_t* %246) #8
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.357, %end
  %247 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %247, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.360

cleanup.360:                                      ; preds = %if.end.359, %cleanup.251, %cleanup, %if.then
  %248 = bitcast i8** %pointer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast i32* %base to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %251 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %252 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #1
  %253 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i32* %assignment to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = load i32, i32* %retval
  ret i32 %257
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioSkipWhitespaces(%struct._trio_class_t* %self) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %ch = alloca i32, align 4
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %1, i32 0, i32 4
  %2 = load i32, i32* %current, align 4, !tbaa !23
  store i32 %2, i32* %ch, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %call = call i16** @__ctype_b_loc() #11
  %4 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %6, i32 0, i32 1
  %7 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream, align 8, !tbaa !21
  %8 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %7(%struct._trio_class_t* %8, i32* %ch) #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %ch, align 4, !tbaa !5
  %10 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioReadNumber(%struct._trio_class_t* %self, i64* %target, i64 %flags, i32 %width, i32 %base) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._trio_class_t*, align 8
  %target.addr = alloca i64*, align 8
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %number = alloca i64, align 8
  %digit = alloca i32, align 4
  %count = alloca i32, align 4
  %isNegative = alloca i32, align 4
  %gotNumber = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i64* %target, i64** %target.addr, align 8, !tbaa !1
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %base, i32* %base.addr, align 4, !tbaa !5
  %0 = bitcast i64* %number to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %number, align 8, !tbaa !7
  %1 = bitcast i32* %digit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %isNegative, align 4, !tbaa !5
  %4 = bitcast i32* %gotNumber to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %gotNumber, align 4, !tbaa !5
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* @internalDigitsUnconverted, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @memset(i8* bitcast ([128 x i32]* @internalDigitArray to i8*), i32 -1, i64 512) #9
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %j, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 36
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j, align 4, !tbaa !5
  %9 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [37 x i8], [37 x i8]* @internalDigitsLower, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %10 to i32
  %idxprom1 = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* @internalDigitArray, i32 0, i64 %idxprom1
  store i32 %8, i32* %arrayidx2, align 4, !tbaa !5
  %11 = load i32, i32* %j, align 4, !tbaa !5
  %12 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds [37 x i8], [37 x i8]* @internalDigitsUpper, i32 0, i64 %idxprom3
  %13 = load i8, i8* %arrayidx4, align 1, !tbaa !15
  %conv5 = sext i8 %13 to i32
  %idxprom6 = sext i32 %conv5 to i64
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @internalDigitArray, i32 0, i64 %idxprom6
  store i32 %11, i32* %arrayidx7, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @internalDigitsUnconverted, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %call8 = call i32 @TrioSkipWhitespaces(%struct._trio_class_t* %15) #8
  %16 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %16, i32 0, i32 4
  %17 = load i32, i32* %current, align 4, !tbaa !23
  %cmp9 = icmp eq i32 %17, 43
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %18 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %18, i32 0, i32 1
  %19 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream, align 8, !tbaa !21
  %20 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %19(%struct._trio_class_t* %20, i32* null) #8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %21 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current12 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %21, i32 0, i32 4
  %22 = load i32, i32* %current12, align 4, !tbaa !23
  %cmp13 = icmp eq i32 %22, 45
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.else
  %23 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream16 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %23, i32 0, i32 1
  %24 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream16, align 8, !tbaa !21
  %25 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %24(%struct._trio_class_t* %25, i32* null) #8
  store i32 1, i32* %isNegative, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  %26 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %26, i32 0, i32 5
  %27 = load i32, i32* %processed, align 4, !tbaa !14
  store i32 %27, i32* %count, align 4, !tbaa !5
  %28 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and = and i64 %28, 16
  %tobool19 = icmp ne i64 %and, 0
  br i1 %tobool19, label %if.then.20, label %if.end.52

if.then.20:                                       ; preds = %if.end.18
  %29 = load i32, i32* %base.addr, align 4, !tbaa !5
  switch i32 %29, label %sw.default [
    i32 -1, label %sw.bb
    i32 8, label %sw.bb
    i32 16, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.20, %if.then.20, %if.then.20, %if.then.20
  %30 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current21 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %30, i32 0, i32 4
  %31 = load i32, i32* %current21, align 4, !tbaa !23
  %cmp22 = icmp eq i32 %31, 48
  br i1 %cmp22, label %if.then.24, label %if.else.50

if.then.24:                                       ; preds = %sw.bb
  %32 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream25 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %32, i32 0, i32 1
  %33 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream25, align 8, !tbaa !21
  %34 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %33(%struct._trio_class_t* %34, i32* null) #8
  %35 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current26 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %35, i32 0, i32 4
  %36 = load i32, i32* %current26, align 4, !tbaa !23
  %tobool27 = icmp ne i32 %36, 0
  br i1 %tobool27, label %if.then.28, label %if.end.49

if.then.28:                                       ; preds = %if.then.24
  %37 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %37, 16
  br i1 %cmp29, label %land.lhs.true, label %if.else.37

land.lhs.true:                                    ; preds = %if.then.28
  %38 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current31 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %38, i32 0, i32 4
  %39 = load i32, i32* %current31, align 4, !tbaa !23
  %call32 = call i32 @trio_to_upper(i32 %39) #8
  %cmp33 = icmp eq i32 %call32, 88
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %land.lhs.true
  %40 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream36 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %40, i32 0, i32 1
  %41 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream36, align 8, !tbaa !21
  %42 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %41(%struct._trio_class_t* %42, i32* null) #8
  br label %if.end.48

if.else.37:                                       ; preds = %land.lhs.true, %if.then.28
  %43 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %43, 2
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.47

land.lhs.true.40:                                 ; preds = %if.else.37
  %44 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current41 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %44, i32 0, i32 4
  %45 = load i32, i32* %current41, align 4, !tbaa !23
  %call42 = call i32 @trio_to_upper(i32 %45) #8
  %cmp43 = icmp eq i32 %call42, 66
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true.40
  %46 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream46 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %46, i32 0, i32 1
  %47 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream46, align 8, !tbaa !21
  %48 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %47(%struct._trio_class_t* %48, i32* null) #8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %land.lhs.true.40, %if.else.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.35
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.24
  br label %if.end.51

if.else.50:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.49
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.51
  br label %if.end.52

if.end.52:                                        ; preds = %sw.epilog, %if.end.18
  br label %while.cond

while.cond:                                       ; preds = %if.end.84, %if.end.52
  %49 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp53 = icmp eq i32 %49, 0
  br i1 %cmp53, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %50 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %processed55 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %50, i32 0, i32 5
  %51 = load i32, i32* %processed55, align 4, !tbaa !14
  %52 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub nsw i32 %51, %52
  %53 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %sub, %53
  br i1 %cmp56, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond
  %54 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current58 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %54, i32 0, i32 4
  %55 = load i32, i32* %current58, align 4, !tbaa !23
  %cmp59 = icmp eq i32 %55, -1
  br i1 %cmp59, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %56 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current61 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %56, i32 0, i32 4
  %57 = load i32, i32* %current61, align 4, !tbaa !23
  %idxprom62 = sext i32 %57 to i64
  %call63 = call i16** @__ctype_b_loc() #11
  %58 = load i16*, i16** %call63, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %58, i64 %idxprom62
  %59 = load i16, i16* %arrayidx64, align 2, !tbaa !27
  %conv65 = zext i16 %59 to i32
  %and66 = and i32 %conv65, 8192
  %tobool67 = icmp ne i32 %and66, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %60 = phi i1 [ true, %land.rhs ], [ %tobool67, %lor.rhs ]
  %lnot = xor i1 %60, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false
  %61 = phi i1 [ false, %lor.lhs.false ], [ %lnot, %lor.end ]
  br i1 %61, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %62 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current68 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %62, i32 0, i32 4
  %63 = load i32, i32* %current68, align 4, !tbaa !23
  %and69 = and i32 %63, -128
  %cmp70 = icmp eq i32 %and69, 0
  br i1 %cmp70, label %if.then.72, label %if.else.83

if.then.72:                                       ; preds = %while.body
  %64 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current73 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %64, i32 0, i32 4
  %65 = load i32, i32* %current73, align 4, !tbaa !23
  %idxprom74 = sext i32 %65 to i64
  %arrayidx75 = getelementptr inbounds [128 x i32], [128 x i32]* @internalDigitArray, i32 0, i64 %idxprom74
  %66 = load i32, i32* %arrayidx75, align 4, !tbaa !5
  store i32 %66, i32* %digit, align 4, !tbaa !5
  %67 = load i32, i32* %digit, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %67, -1
  br i1 %cmp76, label %if.then.81, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.then.72
  %68 = load i32, i32* %digit, align 4, !tbaa !5
  %69 = load i32, i32* %base.addr, align 4, !tbaa !5
  %cmp79 = icmp sge i32 %68, %69
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %lor.lhs.false.78, %if.then.72
  br label %while.end

if.end.82:                                        ; preds = %lor.lhs.false.78
  br label %if.end.84

if.else.83:                                       ; preds = %while.body
  br label %while.end

if.end.84:                                        ; preds = %if.end.82
  %70 = load i32, i32* %base.addr, align 4, !tbaa !5
  %conv85 = sext i32 %70 to i64
  %71 = load i64, i64* %number, align 8, !tbaa !7
  %mul = mul i64 %71, %conv85
  store i64 %mul, i64* %number, align 8, !tbaa !7
  %72 = load i32, i32* %digit, align 4, !tbaa !5
  %conv86 = sext i32 %72 to i64
  %73 = load i64, i64* %number, align 8, !tbaa !7
  %add = add i64 %73, %conv86
  store i64 %add, i64* %number, align 8, !tbaa !7
  store i32 1, i32* %gotNumber, align 4, !tbaa !5
  %74 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream87 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %74, i32 0, i32 1
  %75 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream87, align 8, !tbaa !21
  %76 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %75(%struct._trio_class_t* %76, i32* null) #8
  br label %while.cond

while.end:                                        ; preds = %if.else.83, %if.then.81, %land.end
  %77 = load i32, i32* %gotNumber, align 4, !tbaa !5
  %tobool88 = icmp ne i32 %77, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %while.end
  %78 = load i64*, i64** %target.addr, align 8, !tbaa !1
  %tobool91 = icmp ne i64* %78, null
  br i1 %tobool91, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.end.90
  %79 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool93 = icmp ne i32 %79, 0
  br i1 %tobool93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.92
  %80 = load i64, i64* %number, align 8, !tbaa !7
  %sub94 = sub nsw i64 0, %80
  br label %cond.end

cond.false:                                       ; preds = %if.then.92
  %81 = load i64, i64* %number, align 8, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub94, %cond.true ], [ %81, %cond.false ]
  %82 = load i64*, i64** %target.addr, align 8, !tbaa !1
  store i64 %cond, i64* %82, align 8, !tbaa !7
  br label %if.end.95

if.end.95:                                        ; preds = %cond.end, %if.end.90
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.95, %if.then.89, %if.else.50
  %83 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %gotNumber to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %digit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i64* %number to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioReadString(%struct._trio_class_t* %self, i8* %target, i64 %flags, i32 %width) #0 {
entry:
  %self.addr = alloca %struct._trio_class_t*, align 8
  %target.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i8* %target, i8** %target.addr, align 8, !tbaa !1
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %call = call i32 @TrioSkipWhitespaces(%struct._trio_class_t* %1) #8
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %for.cond
  %5 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %5, i32 0, i32 4
  %6 = load i32, i32* %current, align 4, !tbaa !23
  %cmp2 = icmp eq i32 %6, -1
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current3 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %7, i32 0, i32 4
  %8 = load i32, i32* %current3, align 4, !tbaa !23
  %idxprom = sext i32 %8 to i64
  %call4 = call i16** @__ctype_b_loc() #11
  %9 = load i16*, i16** %call4, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %11 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  %lnot = xor i1 %11, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false
  %12 = phi i1 [ false, %lor.lhs.false ], [ %lnot, %lor.end ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %tobool5 = icmp ne i8* %14, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %15 to i64
  %16 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %16, i64 %idxprom6
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arrayidx7, %cond.true ], [ null, %cond.false ]
  %17 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %call8 = call i32 @TrioReadChar(%struct._trio_class_t* %13, i8* %cond, i64 %17, i32 1) #8
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %for.end

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %land.end
  %19 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %tobool11 = icmp ne i8* %19, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %20 to i64
  %21 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %21, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1, !tbaa !15
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %for.end
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioReadDouble(%struct._trio_class_t* %self, i8* %target, i64 %flags, i32 %width) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._trio_class_t*, align 8
  %target.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %doubleString = alloca [512 x i8], align 16
  %offset = alloca i32, align 4
  %start = alloca i32, align 4
  %isHex = alloca i32, align 4
  %infinity = alloca x86_fp80, align 16
  %cleanup.dest.slot = alloca i32
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i8* %target, i8** %target.addr, align 8, !tbaa !1
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [512 x i8]* %doubleString to i8*
  call void @llvm.lifetime.start(i64 512, i8* %1) #1
  %2 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %offset, align 4, !tbaa !5
  %3 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %isHex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %isHex, align 4, !tbaa !5
  %5 = bitcast x86_fp80* %infinity to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !15
  %6 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %7, 511
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 511, i32* %width.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %call = call i32 @TrioSkipWhitespaces(%struct._trio_class_t* %8) #8
  %9 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %9, i32 0, i32 4
  %10 = load i32, i32* %current, align 4, !tbaa !23
  store i32 %10, i32* %ch, align 4, !tbaa !5
  %11 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %11, 43
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end
  %12 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %12, 45
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.end
  %13 = load i32, i32* %ch, align 4, !tbaa !5
  %conv = trunc i32 %13 to i8
  %14 = load i32, i32* %offset, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %offset, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx6, align 1, !tbaa !15
  %15 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %15, i32 0, i32 1
  %16 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream, align 8, !tbaa !21
  %17 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %16(%struct._trio_class_t* %17, i32* %ch) #8
  %18 = load i32, i32* %width.addr, align 4, !tbaa !5
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %lor.lhs.false.3
  %19 = load i32, i32* %offset, align 4, !tbaa !5
  store i32 %19, i32* %start, align 4, !tbaa !5
  %20 = load i32, i32* %ch, align 4, !tbaa !5
  switch i32 %20, label %sw.default [
    i32 110, label %sw.bb
    i32 78, label %sw.bb
    i32 105, label %sw.bb.12
    i32 73, label %sw.bb.12
    i32 48, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %if.end.7, %if.end.7
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %21, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.11:                                        ; preds = %sw.bb
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %if.end.7, %if.end.7, %if.end.11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.12
  %22 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom13 = sext i32 %22 to i64
  %call14 = call i16** @__ctype_b_loc() #11
  %23 = load i16*, i16** %call14, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %23, i64 %idxprom13
  %24 = load i16, i16* %arrayidx15, align 2, !tbaa !27
  %conv16 = zext i16 %24 to i32
  %and = and i32 %conv16, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load i32, i32* %offset, align 4, !tbaa !5
  %26 = load i32, i32* %start, align 4, !tbaa !5
  %sub = sub nsw i32 %25, %26
  %27 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %sub, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load i32, i32* %ch, align 4, !tbaa !5
  %conv19 = trunc i32 %29 to i8
  %30 = load i32, i32* %offset, align 4, !tbaa !5
  %inc20 = add nsw i32 %30, 1
  store i32 %inc20, i32* %offset, align 4, !tbaa !5
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom21
  store i8 %conv19, i8* %arrayidx22, align 1, !tbaa !15
  %31 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream23 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %31, i32 0, i32 1
  %32 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream23, align 8, !tbaa !21
  %33 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %32(%struct._trio_class_t* %33, i32* %ch) #8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom24 = sext i32 %34 to i64
  %arrayidx25 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom24
  store i8 0, i8* %arrayidx25, align 1, !tbaa !15
  %35 = load i32, i32* %start, align 4, !tbaa !5
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom26
  %call28 = call i32 @trio_equal(i8* %arrayidx27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #8
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.35, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %while.end
  %36 = load i32, i32* %start, align 4, !tbaa !5
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom31
  %call33 = call i32 @trio_equal(i8* %arrayidx32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.56

if.then.35:                                       ; preds = %lor.lhs.false.30, %while.end
  %37 = load i32, i32* %start, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %37, 1
  br i1 %cmp36, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.35
  %arrayidx38 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 0
  %38 = load i8, i8* %arrayidx38, align 1, !tbaa !15
  %conv39 = sext i8 %38 to i32
  %cmp40 = icmp eq i32 %conv39, 45
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %call42 = call double @trio_ninf() #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.35
  %call43 = call double @trio_pinf() #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call42, %cond.true ], [ %call43, %cond.false ]
  %conv44 = fpext double %cond to x86_fp80
  store x86_fp80 %conv44, x86_fp80* %infinity, align 16, !tbaa !36
  %39 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and45 = and i64 %39, 512
  %tobool46 = icmp ne i64 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %cond.end
  %40 = load x86_fp80, x86_fp80* %infinity, align 16, !tbaa !36
  %41 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %42 = bitcast i8* %41 to x86_fp80*
  store x86_fp80 %40, x86_fp80* %42, align 16, !tbaa !36
  br label %if.end.55

if.else:                                          ; preds = %cond.end
  %43 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and48 = and i64 %43, 128
  %tobool49 = icmp ne i64 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.else
  %44 = load x86_fp80, x86_fp80* %infinity, align 16, !tbaa !36
  %conv51 = fptrunc x86_fp80 %44 to double
  %45 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %46 = bitcast i8* %45 to double*
  store double %conv51, double* %46, align 8, !tbaa !40
  br label %if.end.54

if.else.52:                                       ; preds = %if.else
  %47 = load x86_fp80, x86_fp80* %infinity, align 16, !tbaa !36
  %conv53 = fptrunc x86_fp80 %47 to float
  %48 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %49 = bitcast i8* %48 to float*
  store float %conv53, float* %49, align 4, !tbaa !38
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.47
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false.30
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i32 0
  %call57 = call i32 @trio_equal(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)) #8
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.75

if.then.59:                                       ; preds = %if.end.56
  %50 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and60 = and i64 %50, 512
  %tobool61 = icmp ne i64 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.65

if.then.62:                                       ; preds = %if.then.59
  %call63 = call double @trio_nan() #8
  %conv64 = fpext double %call63 to x86_fp80
  %51 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to x86_fp80*
  store x86_fp80 %conv64, x86_fp80* %52, align 16, !tbaa !36
  br label %if.end.74

if.else.65:                                       ; preds = %if.then.59
  %53 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and66 = and i64 %53, 128
  %tobool67 = icmp ne i64 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.else.65
  %call69 = call double @trio_nan() #8
  %54 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %55 = bitcast i8* %54 to double*
  store double %call69, double* %55, align 8, !tbaa !40
  br label %if.end.73

if.else.70:                                       ; preds = %if.else.65
  %call71 = call double @trio_nan() #8
  %conv72 = fptrunc double %call71 to float
  %56 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %57 = bitcast i8* %56 to float*
  store float %conv72, float* %57, align 4, !tbaa !38
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.62
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.end.56
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.76:                                         ; preds = %if.end.7
  %58 = load i32, i32* %ch, align 4, !tbaa !5
  %conv77 = trunc i32 %58 to i8
  %59 = load i32, i32* %offset, align 4, !tbaa !5
  %inc78 = add nsw i32 %59, 1
  store i32 %inc78, i32* %offset, align 4, !tbaa !5
  %idxprom79 = sext i32 %59 to i64
  %arrayidx80 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom79
  store i8 %conv77, i8* %arrayidx80, align 1, !tbaa !15
  %60 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream81 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %60, i32 0, i32 1
  %61 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream81, align 8, !tbaa !21
  %62 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %61(%struct._trio_class_t* %62, i32* %ch) #8
  %63 = load i32, i32* %ch, align 4, !tbaa !5
  %call82 = call i32 @trio_to_upper(i32 %63) #8
  %cmp83 = icmp eq i32 %call82, 88
  br i1 %cmp83, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %sw.bb.76
  store i32 1, i32* %isHex, align 4, !tbaa !5
  %64 = load i32, i32* %ch, align 4, !tbaa !5
  %conv86 = trunc i32 %64 to i8
  %65 = load i32, i32* %offset, align 4, !tbaa !5
  %inc87 = add nsw i32 %65, 1
  store i32 %inc87, i32* %offset, align 4, !tbaa !5
  %idxprom88 = sext i32 %65 to i64
  %arrayidx89 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom88
  store i8 %conv86, i8* %arrayidx89, align 1, !tbaa !15
  %66 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream90 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %66, i32 0, i32 1
  %67 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream90, align 8, !tbaa !21
  %68 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %67(%struct._trio_class_t* %68, i32* %ch) #8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.85, %sw.bb.76
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.91, %if.then.10
  br label %while.cond.92

while.cond.92:                                    ; preds = %if.end.123, %sw.epilog
  %69 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp93 = icmp ne i32 %69, -1
  br i1 %cmp93, label %land.rhs.95, label %land.end.99

land.rhs.95:                                      ; preds = %while.cond.92
  %70 = load i32, i32* %offset, align 4, !tbaa !5
  %71 = load i32, i32* %start, align 4, !tbaa !5
  %sub96 = sub nsw i32 %70, %71
  %72 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %sub96, %72
  br label %land.end.99

land.end.99:                                      ; preds = %land.rhs.95, %while.cond.92
  %73 = phi i1 [ false, %while.cond.92 ], [ %cmp97, %land.rhs.95 ]
  br i1 %73, label %while.body.100, label %while.end.124

while.body.100:                                   ; preds = %land.end.99
  %74 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool101 = icmp ne i32 %74, 0
  br i1 %tobool101, label %cond.true.102, label %cond.false.109

cond.true.102:                                    ; preds = %while.body.100
  %75 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom103 = sext i32 %75 to i64
  %call104 = call i16** @__ctype_b_loc() #11
  %76 = load i16*, i16** %call104, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i16, i16* %76, i64 %idxprom103
  %77 = load i16, i16* %arrayidx105, align 2, !tbaa !27
  %conv106 = zext i16 %77 to i32
  %and107 = and i32 %conv106, 4096
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %if.then.116, label %if.else.122

cond.false.109:                                   ; preds = %while.body.100
  %78 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom110 = sext i32 %78 to i64
  %call111 = call i16** @__ctype_b_loc() #11
  %79 = load i16*, i16** %call111, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i16, i16* %79, i64 %idxprom110
  %80 = load i16, i16* %arrayidx112, align 2, !tbaa !27
  %conv113 = zext i16 %80 to i32
  %and114 = and i32 %conv113, 2048
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then.116, label %if.else.122

if.then.116:                                      ; preds = %cond.false.109, %cond.true.102
  %81 = load i32, i32* %ch, align 4, !tbaa !5
  %conv117 = trunc i32 %81 to i8
  %82 = load i32, i32* %offset, align 4, !tbaa !5
  %inc118 = add nsw i32 %82, 1
  store i32 %inc118, i32* %offset, align 4, !tbaa !5
  %idxprom119 = sext i32 %82 to i64
  %arrayidx120 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom119
  store i8 %conv117, i8* %arrayidx120, align 1, !tbaa !15
  %83 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream121 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %83, i32 0, i32 1
  %84 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream121, align 8, !tbaa !21
  %85 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %84(%struct._trio_class_t* %85, i32* %ch) #8
  br label %if.end.123

if.else.122:                                      ; preds = %cond.false.109, %cond.true.102
  br label %while.end.124

if.end.123:                                       ; preds = %if.then.116
  br label %while.cond.92

while.end.124:                                    ; preds = %if.else.122, %land.end.99
  %86 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp125 = icmp eq i32 %86, 46
  br i1 %cmp125, label %if.then.127, label %if.end.161

if.then.127:                                      ; preds = %while.end.124
  %87 = load i32, i32* %ch, align 4, !tbaa !5
  %conv128 = trunc i32 %87 to i8
  %88 = load i32, i32* %offset, align 4, !tbaa !5
  %inc129 = add nsw i32 %88, 1
  store i32 %inc129, i32* %offset, align 4, !tbaa !5
  %idxprom130 = sext i32 %88 to i64
  %arrayidx131 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom130
  store i8 %conv128, i8* %arrayidx131, align 1, !tbaa !15
  %89 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream132 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %89, i32 0, i32 1
  %90 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream132, align 8, !tbaa !21
  %91 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %90(%struct._trio_class_t* %91, i32* %ch) #8
  br label %while.cond.133

while.cond.133:                                   ; preds = %while.body.154, %if.then.127
  %92 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool134 = icmp ne i32 %92, 0
  br i1 %tobool134, label %cond.true.135, label %cond.false.142

cond.true.135:                                    ; preds = %while.cond.133
  %93 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom136 = sext i32 %93 to i64
  %call137 = call i16** @__ctype_b_loc() #11
  %94 = load i16*, i16** %call137, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i16, i16* %94, i64 %idxprom136
  %95 = load i16, i16* %arrayidx138, align 2, !tbaa !27
  %conv139 = zext i16 %95 to i32
  %and140 = and i32 %conv139, 4096
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %land.rhs.149, label %land.end.153

cond.false.142:                                   ; preds = %while.cond.133
  %96 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom143 = sext i32 %96 to i64
  %call144 = call i16** @__ctype_b_loc() #11
  %97 = load i16*, i16** %call144, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i16, i16* %97, i64 %idxprom143
  %98 = load i16, i16* %arrayidx145, align 2, !tbaa !27
  %conv146 = zext i16 %98 to i32
  %and147 = and i32 %conv146, 2048
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %land.rhs.149, label %land.end.153

land.rhs.149:                                     ; preds = %cond.false.142, %cond.true.135
  %99 = load i32, i32* %offset, align 4, !tbaa !5
  %100 = load i32, i32* %start, align 4, !tbaa !5
  %sub150 = sub nsw i32 %99, %100
  %101 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp151 = icmp slt i32 %sub150, %101
  br label %land.end.153

land.end.153:                                     ; preds = %land.rhs.149, %cond.false.142, %cond.true.135
  %102 = phi i1 [ false, %cond.false.142 ], [ false, %cond.true.135 ], [ %cmp151, %land.rhs.149 ]
  br i1 %102, label %while.body.154, label %while.end.160

while.body.154:                                   ; preds = %land.end.153
  %103 = load i32, i32* %ch, align 4, !tbaa !5
  %conv155 = trunc i32 %103 to i8
  %104 = load i32, i32* %offset, align 4, !tbaa !5
  %inc156 = add nsw i32 %104, 1
  store i32 %inc156, i32* %offset, align 4, !tbaa !5
  %idxprom157 = sext i32 %104 to i64
  %arrayidx158 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom157
  store i8 %conv155, i8* %arrayidx158, align 1, !tbaa !15
  %105 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream159 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %105, i32 0, i32 1
  %106 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream159, align 8, !tbaa !21
  %107 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %106(%struct._trio_class_t* %107, i32* %ch) #8
  br label %while.cond.133

while.end.160:                                    ; preds = %land.end.153
  br label %if.end.161

if.end.161:                                       ; preds = %while.end.160, %while.end.124
  %108 = load i32, i32* %isHex, align 4, !tbaa !5
  %tobool162 = icmp ne i32 %108, 0
  br i1 %tobool162, label %cond.true.163, label %cond.false.167

cond.true.163:                                    ; preds = %if.end.161
  %109 = load i32, i32* %ch, align 4, !tbaa !5
  %call164 = call i32 @trio_to_upper(i32 %109) #8
  %cmp165 = icmp eq i32 %call164, 80
  br i1 %cmp165, label %if.then.171, label %if.end.208

cond.false.167:                                   ; preds = %if.end.161
  %110 = load i32, i32* %ch, align 4, !tbaa !5
  %call168 = call i32 @trio_to_upper(i32 %110) #8
  %cmp169 = icmp eq i32 %call168, 69
  br i1 %cmp169, label %if.then.171, label %if.end.208

if.then.171:                                      ; preds = %cond.false.167, %cond.true.163
  %111 = load i32, i32* %ch, align 4, !tbaa !5
  %conv172 = trunc i32 %111 to i8
  %112 = load i32, i32* %offset, align 4, !tbaa !5
  %inc173 = add nsw i32 %112, 1
  store i32 %inc173, i32* %offset, align 4, !tbaa !5
  %idxprom174 = sext i32 %112 to i64
  %arrayidx175 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom174
  store i8 %conv172, i8* %arrayidx175, align 1, !tbaa !15
  %113 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream176 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %113, i32 0, i32 1
  %114 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream176, align 8, !tbaa !21
  %115 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %114(%struct._trio_class_t* %115, i32* %ch) #8
  %116 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp177 = icmp eq i32 %116, 43
  br i1 %cmp177, label %if.then.182, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %if.then.171
  %117 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp180 = icmp eq i32 %117, 45
  br i1 %cmp180, label %if.then.182, label %if.end.188

if.then.182:                                      ; preds = %lor.lhs.false.179, %if.then.171
  %118 = load i32, i32* %ch, align 4, !tbaa !5
  %conv183 = trunc i32 %118 to i8
  %119 = load i32, i32* %offset, align 4, !tbaa !5
  %inc184 = add nsw i32 %119, 1
  store i32 %inc184, i32* %offset, align 4, !tbaa !5
  %idxprom185 = sext i32 %119 to i64
  %arrayidx186 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom185
  store i8 %conv183, i8* %arrayidx186, align 1, !tbaa !15
  %120 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream187 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %120, i32 0, i32 1
  %121 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream187, align 8, !tbaa !21
  %122 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %121(%struct._trio_class_t* %122, i32* %ch) #8
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.182, %lor.lhs.false.179
  br label %while.cond.189

while.cond.189:                                   ; preds = %while.body.201, %if.end.188
  %123 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom190 = sext i32 %123 to i64
  %call191 = call i16** @__ctype_b_loc() #11
  %124 = load i16*, i16** %call191, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i16, i16* %124, i64 %idxprom190
  %125 = load i16, i16* %arrayidx192, align 2, !tbaa !27
  %conv193 = zext i16 %125 to i32
  %and194 = and i32 %conv193, 2048
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %land.rhs.196, label %land.end.200

land.rhs.196:                                     ; preds = %while.cond.189
  %126 = load i32, i32* %offset, align 4, !tbaa !5
  %127 = load i32, i32* %start, align 4, !tbaa !5
  %sub197 = sub nsw i32 %126, %127
  %128 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp198 = icmp slt i32 %sub197, %128
  br label %land.end.200

land.end.200:                                     ; preds = %land.rhs.196, %while.cond.189
  %129 = phi i1 [ false, %while.cond.189 ], [ %cmp198, %land.rhs.196 ]
  br i1 %129, label %while.body.201, label %while.end.207

while.body.201:                                   ; preds = %land.end.200
  %130 = load i32, i32* %ch, align 4, !tbaa !5
  %conv202 = trunc i32 %130 to i8
  %131 = load i32, i32* %offset, align 4, !tbaa !5
  %inc203 = add nsw i32 %131, 1
  store i32 %inc203, i32* %offset, align 4, !tbaa !5
  %idxprom204 = sext i32 %131 to i64
  %arrayidx205 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom204
  store i8 %conv202, i8* %arrayidx205, align 1, !tbaa !15
  %132 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream206 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %132, i32 0, i32 1
  %133 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream206, align 8, !tbaa !21
  %134 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %133(%struct._trio_class_t* %134, i32* %ch) #8
  br label %while.cond.189

while.end.207:                                    ; preds = %land.end.200
  br label %if.end.208

if.end.208:                                       ; preds = %while.end.207, %cond.false.167, %cond.true.163
  %135 = load i32, i32* %offset, align 4, !tbaa !5
  %136 = load i32, i32* %start, align 4, !tbaa !5
  %cmp209 = icmp eq i32 %135, %136
  br i1 %cmp209, label %if.then.216, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %if.end.208
  %arraydecay212 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i32 0
  %137 = load i8, i8* %arraydecay212, align 1, !tbaa !15
  %conv213 = sext i8 %137 to i32
  %cmp214 = icmp eq i32 %conv213, 0
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %lor.lhs.false.211, %if.end.208
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.217:                                       ; preds = %lor.lhs.false.211
  %138 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom218 = sext i32 %138 to i64
  %arrayidx219 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i64 %idxprom218
  store i8 0, i8* %arrayidx219, align 1, !tbaa !15
  %139 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and220 = and i64 %139, 512
  %tobool221 = icmp ne i64 %and220, 0
  br i1 %tobool221, label %if.then.222, label %if.else.225

if.then.222:                                      ; preds = %if.end.217
  %arraydecay223 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i32 0
  %call224 = call x86_fp80 @trio_to_long_double(i8* %arraydecay223, i8** null) #8
  %140 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %141 = bitcast i8* %140 to x86_fp80*
  store x86_fp80 %call224, x86_fp80* %141, align 16, !tbaa !36
  br label %if.end.235

if.else.225:                                      ; preds = %if.end.217
  %142 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and226 = and i64 %142, 128
  %tobool227 = icmp ne i64 %and226, 0
  br i1 %tobool227, label %if.then.228, label %if.else.231

if.then.228:                                      ; preds = %if.else.225
  %arraydecay229 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i32 0
  %call230 = call double @trio_to_double(i8* %arraydecay229, i8** null) #8
  %143 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %144 = bitcast i8* %143 to double*
  store double %call230, double* %144, align 8, !tbaa !40
  br label %if.end.234

if.else.231:                                      ; preds = %if.else.225
  %arraydecay232 = getelementptr inbounds [512 x i8], [512 x i8]* %doubleString, i32 0, i32 0
  %call233 = call float @trio_to_float(i8* %arraydecay232, i8** null) #8
  %145 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %146 = bitcast i8* %145 to float*
  store float %call233, float* %146, align 4, !tbaa !38
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.231, %if.then.228
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.222
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.235, %if.then.216, %if.end.75, %if.end.74, %if.end.55
  %147 = bitcast x86_fp80* %infinity to i8*
  call void @llvm.lifetime.end(i64 16, i8* %147) #1
  %148 = bitcast i32* %isHex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast [512 x i8]* %doubleString to i8*
  call void @llvm.lifetime.end(i64 512, i8* %151) #1
  %152 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = load i32, i32* %retval
  ret i32 %153
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioGetCharacterClass(i8* %format, i32* %offsetPointer, i64* %flagsPointer, i32* %characterclass) #0 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %offsetPointer.addr = alloca i32*, align 8
  %flagsPointer.addr = alloca i64*, align 8
  %characterclass.addr = alloca i32*, align 8
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  %range_begin = alloca i8, align 1
  %range_end = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store i32* %offsetPointer, i32** %offsetPointer.addr, align 8, !tbaa !1
  store i64* %flagsPointer, i64** %flagsPointer.addr, align 8, !tbaa !1
  store i32* %characterclass, i32** %characterclass.addr, align 8, !tbaa !1
  %0 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32*, i32** %offsetPointer.addr, align 8, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !5
  store i32 %2, i32* %offset, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  call void @llvm.lifetime.start(i64 1, i8* %range_begin) #1
  call void @llvm.lifetime.start(i64 1, i8* %range_end) #1
  %4 = load i64*, i64** %flagsPointer.addr, align 8, !tbaa !1
  %5 = load i64, i64* %4, align 8, !tbaa !7
  %and = and i64 %5, -33
  store i64 %and, i64* %4, align 8, !tbaa !7
  %6 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 94
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i64*, i64** %flagsPointer.addr, align 8, !tbaa !1
  %10 = load i64, i64* %9, align 8, !tbaa !7
  %or = or i64 %10, 32
  store i64 %or, i64* %9, align 8, !tbaa !7
  %11 = load i32, i32* %offset, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %offset, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom2 = sext i32 %12 to i64
  %13 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 %idxprom2
  %14 = load i8, i8* %arrayidx3, align 1, !tbaa !15
  %conv4 = sext i8 %14 to i32
  %cmp5 = icmp eq i32 %conv4, 93
  br i1 %cmp5, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %15 = load i32*, i32** %characterclass.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 93
  %16 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, i32* %arrayidx8, align 4, !tbaa !5
  %17 = load i32, i32* %offset, align 4, !tbaa !5
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, i32* %offset, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %18 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom12 = sext i32 %18 to i64
  %19 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 %idxprom12
  %20 = load i8, i8* %arrayidx13, align 1, !tbaa !15
  %conv14 = sext i8 %20 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.11
  %21 = load i32*, i32** %characterclass.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i32, i32* %21, i64 45
  %22 = load i32, i32* %arrayidx18, align 4, !tbaa !5
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %arrayidx18, align 4, !tbaa !5
  %23 = load i32, i32* %offset, align 4, !tbaa !5
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, i32* %offset, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.11
  %24 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom22 = sext i32 %24 to i64
  %25 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %25, i64 %idxprom22
  %26 = load i8, i8* %arrayidx23, align 1, !tbaa !15
  store i8 %26, i8* %ch, align 1, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %if.end.21
  %27 = load i8, i8* %ch, align 1, !tbaa !15
  %conv24 = sext i8 %27 to i32
  %cmp25 = icmp ne i32 %conv24, 93
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %28 = load i8, i8* %ch, align 1, !tbaa !15
  %conv27 = sext i8 %28 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %29 = phi i1 [ false, %for.cond ], [ %cmp28, %land.rhs ]
  br i1 %29, label %for.body, label %for.end.78

for.body:                                         ; preds = %land.end
  %30 = load i8, i8* %ch, align 1, !tbaa !15
  %conv30 = sext i8 %30 to i32
  switch i32 %conv30, label %sw.default [
    i32 45, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body
  %31 = load i32, i32* %offset, align 4, !tbaa !5
  %sub = sub nsw i32 %31, 1
  %idxprom31 = sext i32 %sub to i64
  %32 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %32, i64 %idxprom31
  %33 = load i8, i8* %arrayidx32, align 1, !tbaa !15
  store i8 %33, i8* %range_begin, align 1, !tbaa !15
  %34 = load i32, i32* %offset, align 4, !tbaa !5
  %inc33 = add nsw i32 %34, 1
  store i32 %inc33, i32* %offset, align 4, !tbaa !5
  %idxprom34 = sext i32 %inc33 to i64
  %35 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %35, i64 %idxprom34
  %36 = load i8, i8* %arrayidx35, align 1, !tbaa !15
  store i8 %36, i8* %range_end, align 1, !tbaa !15
  %37 = load i8, i8* %range_end, align 1, !tbaa !15
  %conv36 = sext i8 %37 to i32
  %cmp37 = icmp eq i32 %conv36, 93
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %sw.bb
  %38 = load i8, i8* %ch, align 1, !tbaa !15
  %conv40 = sext i8 %38 to i32
  %idxprom41 = sext i32 %conv40 to i64
  %39 = load i32*, i32** %characterclass.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %39, i64 %idxprom41
  %40 = load i32, i32* %arrayidx42, align 4, !tbaa !5
  %inc43 = add nsw i32 %40, 1
  store i32 %inc43, i32* %arrayidx42, align 4, !tbaa !5
  %41 = load i8, i8* %range_end, align 1, !tbaa !15
  store i8 %41, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

if.end.44:                                        ; preds = %sw.bb
  %42 = load i8, i8* %range_end, align 1, !tbaa !15
  %conv45 = sext i8 %42 to i32
  %cmp46 = icmp eq i32 %conv45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.44
  %43 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %43, 8
  %add = add nsw i32 2, %shl
  %sub49 = sub nsw i32 0, %add
  store i32 %sub49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.44
  %44 = load i8, i8* %range_begin, align 1, !tbaa !15
  %conv51 = sext i8 %44 to i32
  %45 = load i8, i8* %range_end, align 1, !tbaa !15
  %conv52 = sext i8 %45 to i32
  %cmp53 = icmp sgt i32 %conv51, %conv52
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end.50
  %46 = load i32, i32* %offset, align 4, !tbaa !5
  %shl56 = shl i32 %46, 8
  %add57 = add nsw i32 7, %shl56
  %sub58 = sub nsw i32 0, %add57
  store i32 %sub58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.50
  %47 = load i8, i8* %range_begin, align 1, !tbaa !15
  %conv60 = sext i8 %47 to i32
  store i32 %conv60, i32* %i, align 4, !tbaa !5
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %if.end.59
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %49 = load i8, i8* %range_end, align 1, !tbaa !15
  %conv62 = sext i8 %49 to i32
  %cmp63 = icmp sle i32 %48, %conv62
  br i1 %cmp63, label %for.body.65, label %for.end

for.body.65:                                      ; preds = %for.cond.61
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %50 to i64
  %51 = load i32*, i32** %characterclass.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i32, i32* %51, i64 %idxprom66
  %52 = load i32, i32* %arrayidx67, align 4, !tbaa !5
  %inc68 = add nsw i32 %52, 1
  store i32 %inc68, i32* %arrayidx67, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.65
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %inc69 = add nsw i32 %53, 1
  store i32 %inc69, i32* %i, align 4, !tbaa !5
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  %54 = load i8, i8* %range_end, align 1, !tbaa !15
  store i8 %54, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %55 = load i8, i8* %ch, align 1, !tbaa !15
  %conv70 = sext i8 %55 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %56 = load i32*, i32** %characterclass.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i32, i32* %56, i64 %idxprom71
  %57 = load i32, i32* %arrayidx72, align 4, !tbaa !5
  %inc73 = add nsw i32 %57, 1
  store i32 %inc73, i32* %arrayidx72, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %if.then.39
  br label %for.inc.74

for.inc.74:                                       ; preds = %sw.epilog
  %58 = load i32, i32* %offset, align 4, !tbaa !5
  %inc75 = add nsw i32 %58, 1
  store i32 %inc75, i32* %offset, align 4, !tbaa !5
  %idxprom76 = sext i32 %inc75 to i64
  %59 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %59, i64 %idxprom76
  %60 = load i8, i8* %arrayidx77, align 1, !tbaa !15
  store i8 %60, i8* %ch, align 1, !tbaa !15
  br label %for.cond

for.end.78:                                       ; preds = %land.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.78, %if.then.55, %if.then.48
  call void @llvm.lifetime.end(i64 1, i8* %range_end) #1
  call void @llvm.lifetime.end(i64 1, i8* %range_begin) #1
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioReadGroup(%struct._trio_class_t* %self, i8* %target, i32* %characterclass, i64 %flags, i32 %width) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._trio_class_t*, align 8
  %target.addr = alloca i8*, align 8
  %characterclass.addr = alloca i32*, align 8
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i8* %target, i8** %target.addr, align 8, !tbaa !1
  store i32* %characterclass, i32** %characterclass.addr, align 8, !tbaa !1
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %2, i32 0, i32 4
  %3 = load i32, i32* %current, align 4, !tbaa !23
  store i32 %3, i32* %ch, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %for.cond
  %7 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %7, -1
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and = and i64 %8, 32
  %cmp3 = icmp ne i64 %and, 0
  %conv = zext i1 %cmp3 to i32
  %9 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** %characterclass.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %11, 0
  %conv5 = zext i1 %cmp4 to i32
  %xor = xor i32 %conv, %conv5
  %tobool = icmp ne i32 %xor, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  %lnot = xor i1 %12, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false
  %13 = phi i1 [ false, %lor.lhs.false ], [ %lnot, %lor.end ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %tobool6 = icmp ne i8* %14, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %ch, align 4, !tbaa !5
  %conv7 = trunc i32 %15 to i8
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %16 to i64
  %17 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %18, i32 0, i32 1
  %19 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream, align 8, !tbaa !21
  %20 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %19(%struct._trio_class_t* %20, i32* %ch) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %22, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %for.end
  %23 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %tobool14 = icmp ne i8* %23, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %24 to i64
  %25 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 %idxprom16
  store i8 0, i8* %arrayidx17, align 1, !tbaa !15
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.12
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioReadChar(%struct._trio_class_t* %self, i8* %target, i64 %flags, i32 %width) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._trio_class_t*, align 8
  %target.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  %number = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i8* %target, i8** %target.addr, align 8, !tbaa !1
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %1 = bitcast i64* %number to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %2, i32 0, i32 4
  %3 = load i32, i32* %current, align 4, !tbaa !23
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current2 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %7, i32 0, i32 4
  %8 = load i32, i32* %current2, align 4, !tbaa !23
  %conv = trunc i32 %8 to i8
  store i8 %conv, i8* %ch, align 1, !tbaa !15
  %9 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %9, i32 0, i32 1
  %10 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream, align 8, !tbaa !21
  %11 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %10(%struct._trio_class_t* %11, i32* null) #8
  %12 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and = and i64 %12, 16
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %for.body
  %13 = load i8, i8* %ch, align 1, !tbaa !15
  %conv3 = sext i8 %13 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %if.then, label %if.end.39

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current6 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %14, i32 0, i32 4
  %15 = load i32, i32* %current6, align 4, !tbaa !23
  switch i32 %15, label %sw.default [
    i32 92, label %sw.bb
    i32 97, label %sw.bb.7
    i32 98, label %sw.bb.8
    i32 102, label %sw.bb.9
    i32 110, label %sw.bb.10
    i32 114, label %sw.bb.11
    i32 116, label %sw.bb.12
    i32 118, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.then
  store i8 92, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  store i8 7, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  store i8 8, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  store i8 12, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  store i8 10, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  store i8 13, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  store i8 9, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  store i8 11, i8* %ch, align 1, !tbaa !15
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %16 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current14 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %16, i32 0, i32 4
  %17 = load i32, i32* %current14, align 4, !tbaa !23
  %idxprom = sext i32 %17 to i64
  %call = call i16** @__ctype_b_loc() #11
  %18 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %conv15 = zext i16 %19 to i32
  %and16 = and i32 %conv15, 2048
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %sw.default
  %20 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %call19 = call i32 @TrioReadNumber(%struct._trio_class_t* %20, i64* %number, i64 0, i32 3, i32 8) #8
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.18
  %21 = load i64, i64* %number, align 8, !tbaa !7
  %conv22 = trunc i64 %21 to i8
  store i8 %conv22, i8* %ch, align 1, !tbaa !15
  br label %if.end.38

if.else:                                          ; preds = %sw.default
  %22 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current23 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %22, i32 0, i32 4
  %23 = load i32, i32* %current23, align 4, !tbaa !23
  %call24 = call i32 @trio_to_upper(i32 %23) #8
  %cmp25 = icmp eq i32 %call24, 88
  br i1 %cmp25, label %if.then.27, label %if.else.34

if.then.27:                                       ; preds = %if.else
  %24 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %InStream28 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %24, i32 0, i32 1
  %25 = load void (%struct._trio_class_t*, i32*)*, void (%struct._trio_class_t*, i32*)** %InStream28, align 8, !tbaa !21
  %26 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  call void %25(%struct._trio_class_t* %26, i32* null) #8
  %27 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %call29 = call i32 @TrioReadNumber(%struct._trio_class_t* %27, i64* %number, i64 0, i32 2, i32 16) #8
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.27
  %28 = load i64, i64* %number, align 8, !tbaa !7
  %conv33 = trunc i64 %28 to i8
  store i8 %conv33, i8* %ch, align 1, !tbaa !15
  br label %if.end.37

if.else.34:                                       ; preds = %if.else
  %29 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %current35 = getelementptr inbounds %struct._trio_class_t, %struct._trio_class_t* %29, i32 0, i32 4
  %30 = load i32, i32* %current35, align 4, !tbaa !23
  %conv36 = trunc i32 %30 to i8
  store i8 %conv36, i8* %ch, align 1, !tbaa !15
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.end.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.38, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb
  br label %if.end.39

if.end.39:                                        ; preds = %sw.epilog, %land.lhs.true, %for.body
  %31 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %tobool40 = icmp ne i8* %31, null
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.39
  %32 = load i8, i8* %ch, align 1, !tbaa !15
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %33 to i64
  %34 = load i8*, i8** %target.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %34, i64 %idxprom42
  store i8 %32, i8* %arrayidx43, align 1, !tbaa !15
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %36, 1
  store i32 %add, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.31, %if.then.21
  %37 = bitcast i64* %number to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @TrioReadPointer(%struct._trio_class_t* %self, i8** %target, i64 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._trio_class_t*, align 8
  %target.addr = alloca i8**, align 8
  %flags.addr = alloca i64, align 8
  %number = alloca i64, align 8
  %buffer = alloca [6 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct._trio_class_t* %self, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  store i8** %target, i8*** %target.addr, align 8, !tbaa !1
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !7
  %0 = bitcast i64* %number to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [6 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 6, i8* %1) #1
  %2 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %or = or i64 %2, 24592
  store i64 %or, i64* %flags.addr, align 8, !tbaa !7
  %3 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %4 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %call = call i32 @TrioReadNumber(%struct._trio_class_t* %3, i64* %number, i64 %4, i32 18, i32 16) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %target.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %5, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load i64, i64* %number, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* null, i64 %6
  %7 = load i8**, i8*** %target.addr, align 8, !tbaa !1
  store i8* %arrayidx, i8** %7, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load %struct._trio_class_t*, %struct._trio_class_t** %self.addr, align 8, !tbaa !1
  %9 = load i64, i64* %flags.addr, align 8, !tbaa !7
  %and = and i64 %9, 67108864
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %buffer, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %arraydecay, %cond.false ]
  %call4 = call i32 @TrioReadString(%struct._trio_class_t* %8, i8* %cond, i64 0, i32 5) #8
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %cond.end
  %arraydecay7 = getelementptr inbounds [6 x i8], [6 x i8]* %buffer, i32 0, i32 0
  %call8 = call i32 @trio_equal_case(i8* %arraydecay7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @internalNullString, i32 0, i32 0)) #8
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.then.6
  %10 = load i8**, i8*** %target.addr, align 8, !tbaa !1
  %tobool11 = icmp ne i8** %10, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %11 = load i8**, i8*** %target.addr, align 8, !tbaa !1
  store i8* null, i8** %11, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.6
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %cond.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.end.13, %if.end
  %12 = bitcast [6 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 6, i8* %12) #1
  %13 = bitcast i64* %number to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @trio_to_upper(i32 %source) #0 {
entry:
  %source.addr = alloca i32, align 4
  store i32 %source, i32* %source.addr, align 4, !tbaa !5
  %0 = load i32, i32* %source.addr, align 4, !tbaa !5
  %call = call i32 @internal_to_upper(i32 %0) #8
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @internal_to_upper(i32 %source) #4 {
entry:
  %source.addr = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %source, i32* %source.addr, align 4, !tbaa !5
  %0 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %source.addr, align 4, !tbaa !5
  %call = call i32 @toupper(i32 %1) #9
  store i32 %call, i32* %__res, align 4, !tbaa !5
  %2 = load i32, i32* %__res, align 4, !tbaa !5
  store i32 %2, i32* %tmp, !tbaa !5
  %3 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  %4 = load i32, i32* %tmp, !tbaa !5
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @toupper(i32 %__c) #4 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !5
  %0 = load i32, i32* %__c.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, -128
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %__c.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, 256
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %__c.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %call = call i32** @__ctype_toupper_loc() #11
  %3 = load i32*, i32** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %__c.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() #3

; Function Attrs: nounwind uwtable
define internal i32 @trio_equal(i8* %first, i8* %second) #0 {
entry:
  %retval = alloca i32, align 4
  %first.addr = alloca i8*, align 8
  %second.addr = alloca i8*, align 8
  store i8* %first, i8** %first.addr, align 8, !tbaa !1
  store i8* %second, i8** %second.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %second.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %second.addr, align 8, !tbaa !1
  %call = call i32 @strcasecmp(i8* %2, i8* %3) #10
  %cmp2 = icmp eq i32 0, %call
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal x86_fp80 @trio_to_long_double(i8* %source, i8** %endp) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %endp.addr = alloca i8**, align 8
  %isNegative = alloca i32, align 4
  %isExponentNegative = alloca i32, align 4
  %integer = alloca x86_fp80, align 16
  %fraction = alloca x86_fp80, align 16
  %exponent = alloca i64, align 8
  %base = alloca x86_fp80, align 16
  %fracdiv = alloca x86_fp80, align 16
  %value = alloca x86_fp80, align 16
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i8** %endp, i8*** %endp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %isNegative, align 4, !tbaa !5
  %1 = bitcast i32* %isExponentNegative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %isExponentNegative, align 4, !tbaa !5
  %2 = bitcast x86_fp80* %integer to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %integer, align 16, !tbaa !36
  %3 = bitcast x86_fp80* %fraction to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %fraction, align 16, !tbaa !36
  %4 = bitcast i64* %exponent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 0, i64* %exponent, align 8, !tbaa !7
  %5 = bitcast x86_fp80* %base to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast x86_fp80* %fracdiv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %fracdiv, align 16, !tbaa !36
  %7 = bitcast x86_fp80* %value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %value, align 16, !tbaa !36
  %8 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx2, align 1, !tbaa !15
  %conv3 = sext i8 %11 to i32
  %cmp4 = icmp eq i32 %conv3, 120
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx6, align 1, !tbaa !15
  %conv7 = sext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 88
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store x86_fp80 0xK40038000000000000000, x86_fp80* %base, align 16, !tbaa !36
  %14 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then
  %15 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !15
  %conv10 = sext i8 %16 to i32
  %idxprom = sext i32 %conv10 to i64
  %call = call i16** @__ctype_b_loc() #11
  %17 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %18 = load i16, i16* %arrayidx11, align 2, !tbaa !27
  %conv12 = zext i16 %18 to i32
  %and = and i32 %conv12, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !36
  %20 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !36
  %mul = fmul x86_fp80 %20, %19
  store x86_fp80 %mul, x86_fp80* %integer, align 16, !tbaa !36
  %21 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !15
  %conv13 = sext i8 %22 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %call15 = call i16** @__ctype_b_loc() #11
  %23 = load i16*, i16** %call15, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %23, i64 %idxprom14
  %24 = load i16, i16* %arrayidx16, align 2, !tbaa !27
  %conv17 = zext i16 %24 to i32
  %and18 = and i32 %conv17, 2048
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %25 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !15
  %conv20 = sext i8 %26 to i32
  %sub = sub nsw i32 %conv20, 48
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %27 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !15
  %conv21 = sext i8 %28 to i32
  %call22 = call i32 @internal_to_upper(i32 %conv21) #8
  %sub23 = sub nsw i32 %call22, 65
  %add = add nsw i32 10, %sub23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add, %cond.false ]
  %conv24 = sitofp i32 %cond to x86_fp80
  %29 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !36
  %add25 = fadd x86_fp80 %29, %conv24
  store x86_fp80 %add25, x86_fp80* %integer, align 16, !tbaa !36
  %30 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !15
  %conv26 = sext i8 %32 to i32
  %cmp27 = icmp eq i32 %conv26, 46
  br i1 %cmp27, label %if.then.29, label %if.end.100

if.then.29:                                       ; preds = %while.end
  %33 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr30, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.31

while.cond.31:                                    ; preds = %cond.end.55, %if.then.29
  %34 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !15
  %conv32 = sext i8 %35 to i32
  %idxprom33 = sext i32 %conv32 to i64
  %call34 = call i16** @__ctype_b_loc() #11
  %36 = load i16*, i16** %call34, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %36, i64 %idxprom33
  %37 = load i16, i16* %arrayidx35, align 2, !tbaa !27
  %conv36 = zext i16 %37 to i32
  %and37 = and i32 %conv36, 4096
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %while.body.39, label %while.end.61

while.body.39:                                    ; preds = %while.cond.31
  %38 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !36
  %39 = load x86_fp80, x86_fp80* %fracdiv, align 16, !tbaa !36
  %div = fdiv x86_fp80 %39, %38
  store x86_fp80 %div, x86_fp80* %fracdiv, align 16, !tbaa !36
  %40 = load x86_fp80, x86_fp80* %fracdiv, align 16, !tbaa !36
  %41 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !15
  %conv40 = sext i8 %42 to i32
  %idxprom41 = sext i32 %conv40 to i64
  %call42 = call i16** @__ctype_b_loc() #11
  %43 = load i16*, i16** %call42, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i16, i16* %43, i64 %idxprom41
  %44 = load i16, i16* %arrayidx43, align 2, !tbaa !27
  %conv44 = zext i16 %44 to i32
  %and45 = and i32 %conv44, 2048
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %cond.true.47, label %cond.false.50

cond.true.47:                                     ; preds = %while.body.39
  %45 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !15
  %conv48 = sext i8 %46 to i32
  %sub49 = sub nsw i32 %conv48, 48
  br label %cond.end.55

cond.false.50:                                    ; preds = %while.body.39
  %47 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !15
  %conv51 = sext i8 %48 to i32
  %call52 = call i32 @internal_to_upper(i32 %conv51) #8
  %sub53 = sub nsw i32 %call52, 65
  %add54 = add nsw i32 10, %sub53
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.50, %cond.true.47
  %cond56 = phi i32 [ %sub49, %cond.true.47 ], [ %add54, %cond.false.50 ]
  %conv57 = sitofp i32 %cond56 to x86_fp80
  %mul58 = fmul x86_fp80 %40, %conv57
  %49 = load x86_fp80, x86_fp80* %fraction, align 16, !tbaa !36
  %add59 = fadd x86_fp80 %49, %mul58
  store x86_fp80 %add59, x86_fp80* %fraction, align 16, !tbaa !36
  %50 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr60, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.31

while.end.61:                                     ; preds = %while.cond.31
  %51 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !15
  %conv62 = sext i8 %52 to i32
  %cmp63 = icmp eq i32 %conv62, 112
  br i1 %cmp63, label %if.then.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %while.end.61
  %53 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !15
  %conv66 = sext i8 %54 to i32
  %cmp67 = icmp eq i32 %conv66, 80
  br i1 %cmp67, label %if.then.69, label %if.end.99

if.then.69:                                       ; preds = %lor.lhs.false.65, %while.end.61
  %55 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr70, i8** %source.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !15
  %conv71 = sext i8 %57 to i32
  %cmp72 = icmp eq i32 %conv71, 43
  br i1 %cmp72, label %if.then.78, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.then.69
  %58 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !15
  %conv75 = sext i8 %59 to i32
  %cmp76 = icmp eq i32 %conv75, 45
  br i1 %cmp76, label %if.then.78, label %if.end

if.then.78:                                       ; preds = %lor.lhs.false.74, %if.then.69
  %60 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %61 = load i8, i8* %60, align 1, !tbaa !15
  %conv79 = sext i8 %61 to i32
  %cmp80 = icmp eq i32 %conv79, 45
  %conv81 = zext i1 %cmp80 to i32
  store i32 %conv81, i32* %isExponentNegative, align 4, !tbaa !5
  %62 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr82 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr82, i8** %source.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.78, %lor.lhs.false.74
  br label %while.cond.83

while.cond.83:                                    ; preds = %while.body.91, %if.end
  %63 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %64 = load i8, i8* %63, align 1, !tbaa !15
  %conv84 = sext i8 %64 to i32
  %idxprom85 = sext i32 %conv84 to i64
  %call86 = call i16** @__ctype_b_loc() #11
  %65 = load i16*, i16** %call86, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i16, i16* %65, i64 %idxprom85
  %66 = load i16, i16* %arrayidx87, align 2, !tbaa !27
  %conv88 = zext i16 %66 to i32
  %and89 = and i32 %conv88, 2048
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %while.body.91, label %while.end.98

while.body.91:                                    ; preds = %while.cond.83
  %67 = load i64, i64* %exponent, align 8, !tbaa !7
  %mul92 = mul i64 %67, 10
  store i64 %mul92, i64* %exponent, align 8, !tbaa !7
  %68 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !15
  %conv93 = sext i8 %69 to i32
  %sub94 = sub nsw i32 %conv93, 48
  %conv95 = sext i32 %sub94 to i64
  %70 = load i64, i64* %exponent, align 8, !tbaa !7
  %add96 = add i64 %70, %conv95
  store i64 %add96, i64* %exponent, align 8, !tbaa !7
  %71 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr97, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.83

while.end.98:                                     ; preds = %while.cond.83
  br label %if.end.99

if.end.99:                                        ; preds = %while.end.98, %lor.lhs.false.65
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %while.end
  store x86_fp80 0xK40008000000000000000, x86_fp80* %base, align 16, !tbaa !36
  br label %if.end.202

if.else:                                          ; preds = %lor.lhs.false, %entry
  store x86_fp80 0xK4002A000000000000000, x86_fp80* %base, align 16, !tbaa !36
  %72 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !15
  %conv101 = sext i8 %73 to i32
  %cmp102 = icmp eq i32 %conv101, 45
  %conv103 = zext i1 %cmp102 to i32
  store i32 %conv103, i32* %isNegative, align 4, !tbaa !5
  %74 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !15
  %conv104 = sext i8 %75 to i32
  %cmp105 = icmp eq i32 %conv104, 43
  br i1 %cmp105, label %if.then.111, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.else
  %76 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !15
  %conv108 = sext i8 %77 to i32
  %cmp109 = icmp eq i32 %conv108, 45
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %lor.lhs.false.107, %if.else
  %78 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr112, i8** %source.addr, align 8, !tbaa !1
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %lor.lhs.false.107
  br label %while.cond.114

while.cond.114:                                   ; preds = %while.body.122, %if.end.113
  %79 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !15
  %conv115 = sext i8 %80 to i32
  %idxprom116 = sext i32 %conv115 to i64
  %call117 = call i16** @__ctype_b_loc() #11
  %81 = load i16*, i16** %call117, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i16, i16* %81, i64 %idxprom116
  %82 = load i16, i16* %arrayidx118, align 2, !tbaa !27
  %conv119 = zext i16 %82 to i32
  %and120 = and i32 %conv119, 2048
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %while.body.122, label %while.end.129

while.body.122:                                   ; preds = %while.cond.114
  %83 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !36
  %84 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !36
  %mul123 = fmul x86_fp80 %84, %83
  store x86_fp80 %mul123, x86_fp80* %integer, align 16, !tbaa !36
  %85 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %86 = load i8, i8* %85, align 1, !tbaa !15
  %conv124 = sext i8 %86 to i32
  %sub125 = sub nsw i32 %conv124, 48
  %conv126 = sitofp i32 %sub125 to x86_fp80
  %87 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !36
  %add127 = fadd x86_fp80 %87, %conv126
  store x86_fp80 %add127, x86_fp80* %integer, align 16, !tbaa !36
  %88 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr128 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr128, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.114

while.end.129:                                    ; preds = %while.cond.114
  %89 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !15
  %conv130 = sext i8 %90 to i32
  %cmp131 = icmp eq i32 %conv130, 46
  br i1 %cmp131, label %if.then.133, label %if.end.152

if.then.133:                                      ; preds = %while.end.129
  %91 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr134, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.135

while.cond.135:                                   ; preds = %while.body.143, %if.then.133
  %92 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %93 = load i8, i8* %92, align 1, !tbaa !15
  %conv136 = sext i8 %93 to i32
  %idxprom137 = sext i32 %conv136 to i64
  %call138 = call i16** @__ctype_b_loc() #11
  %94 = load i16*, i16** %call138, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i16, i16* %94, i64 %idxprom137
  %95 = load i16, i16* %arrayidx139, align 2, !tbaa !27
  %conv140 = zext i16 %95 to i32
  %and141 = and i32 %conv140, 2048
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %while.body.143, label %while.end.151

while.body.143:                                   ; preds = %while.cond.135
  %96 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !36
  %97 = load x86_fp80, x86_fp80* %fracdiv, align 16, !tbaa !36
  %div144 = fdiv x86_fp80 %97, %96
  store x86_fp80 %div144, x86_fp80* %fracdiv, align 16, !tbaa !36
  %98 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %99 = load i8, i8* %98, align 1, !tbaa !15
  %conv145 = sext i8 %99 to i32
  %sub146 = sub nsw i32 %conv145, 48
  %conv147 = sitofp i32 %sub146 to x86_fp80
  %100 = load x86_fp80, x86_fp80* %fracdiv, align 16, !tbaa !36
  %mul148 = fmul x86_fp80 %conv147, %100
  %101 = load x86_fp80, x86_fp80* %fraction, align 16, !tbaa !36
  %add149 = fadd x86_fp80 %101, %mul148
  store x86_fp80 %add149, x86_fp80* %fraction, align 16, !tbaa !36
  %102 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr150 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr150, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.135

while.end.151:                                    ; preds = %while.cond.135
  br label %if.end.152

if.end.152:                                       ; preds = %while.end.151, %while.end.129
  %103 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !15
  %conv153 = sext i8 %104 to i32
  %cmp154 = icmp eq i32 %conv153, 101
  br i1 %cmp154, label %if.then.168, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %if.end.152
  %105 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !15
  %conv157 = sext i8 %106 to i32
  %cmp158 = icmp eq i32 %conv157, 69
  br i1 %cmp158, label %if.then.168, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.156
  %107 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %108 = load i8, i8* %107, align 1, !tbaa !15
  %conv161 = sext i8 %108 to i32
  %cmp162 = icmp eq i32 %conv161, 100
  br i1 %cmp162, label %if.then.168, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %lor.lhs.false.160
  %109 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !15
  %conv165 = sext i8 %110 to i32
  %cmp166 = icmp eq i32 %conv165, 68
  br i1 %cmp166, label %if.then.168, label %if.end.201

if.then.168:                                      ; preds = %lor.lhs.false.164, %lor.lhs.false.160, %lor.lhs.false.156, %if.end.152
  %111 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr169 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr169, i8** %source.addr, align 8, !tbaa !1
  %112 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %113 = load i8, i8* %112, align 1, !tbaa !15
  %conv170 = sext i8 %113 to i32
  %cmp171 = icmp eq i32 %conv170, 45
  %conv172 = zext i1 %cmp171 to i32
  store i32 %conv172, i32* %isExponentNegative, align 4, !tbaa !5
  %114 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %115 = load i8, i8* %114, align 1, !tbaa !15
  %conv173 = sext i8 %115 to i32
  %cmp174 = icmp eq i32 %conv173, 43
  br i1 %cmp174, label %if.then.180, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %if.then.168
  %116 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !15
  %conv177 = sext i8 %117 to i32
  %cmp178 = icmp eq i32 %conv177, 45
  br i1 %cmp178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %lor.lhs.false.176, %if.then.168
  %118 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr181 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr181, i8** %source.addr, align 8, !tbaa !1
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %lor.lhs.false.176
  br label %while.cond.183

while.cond.183:                                   ; preds = %while.body.191, %if.end.182
  %119 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %120 = load i8, i8* %119, align 1, !tbaa !15
  %conv184 = sext i8 %120 to i32
  %idxprom185 = sext i32 %conv184 to i64
  %call186 = call i16** @__ctype_b_loc() #11
  %121 = load i16*, i16** %call186, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i16, i16* %121, i64 %idxprom185
  %122 = load i16, i16* %arrayidx187, align 2, !tbaa !27
  %conv188 = zext i16 %122 to i32
  %and189 = and i32 %conv188, 2048
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %while.body.191, label %while.end.200

while.body.191:                                   ; preds = %while.cond.183
  %123 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !36
  %conv192 = fptosi x86_fp80 %123 to i32
  %conv193 = sext i32 %conv192 to i64
  %124 = load i64, i64* %exponent, align 8, !tbaa !7
  %mul194 = mul i64 %124, %conv193
  store i64 %mul194, i64* %exponent, align 8, !tbaa !7
  %125 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !15
  %conv195 = sext i8 %126 to i32
  %sub196 = sub nsw i32 %conv195, 48
  %conv197 = sext i32 %sub196 to i64
  %127 = load i64, i64* %exponent, align 8, !tbaa !7
  %add198 = add i64 %127, %conv197
  store i64 %add198, i64* %exponent, align 8, !tbaa !7
  %128 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr199 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr199, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.183

while.end.200:                                    ; preds = %while.cond.183
  br label %if.end.201

if.end.201:                                       ; preds = %while.end.200, %lor.lhs.false.164
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.100
  %129 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !36
  %130 = load x86_fp80, x86_fp80* %fraction, align 16, !tbaa !36
  %add203 = fadd x86_fp80 %129, %130
  store x86_fp80 %add203, x86_fp80* %value, align 16, !tbaa !36
  %131 = load i64, i64* %exponent, align 8, !tbaa !7
  %cmp204 = icmp ne i64 %131, 0
  br i1 %cmp204, label %if.then.206, label %if.end.217

if.then.206:                                      ; preds = %if.end.202
  %132 = load i32, i32* %isExponentNegative, align 4, !tbaa !5
  %tobool207 = icmp ne i32 %132, 0
  br i1 %tobool207, label %if.then.208, label %if.else.212

if.then.208:                                      ; preds = %if.then.206
  %133 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !36
  %134 = load i64, i64* %exponent, align 8, !tbaa !7
  %conv209 = uitofp i64 %134 to x86_fp80
  %call210 = call x86_fp80 @powl(x86_fp80 %133, x86_fp80 %conv209) #9
  %135 = load x86_fp80, x86_fp80* %value, align 16, !tbaa !36
  %div211 = fdiv x86_fp80 %135, %call210
  store x86_fp80 %div211, x86_fp80* %value, align 16, !tbaa !36
  br label %if.end.216

if.else.212:                                      ; preds = %if.then.206
  %136 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !36
  %137 = load i64, i64* %exponent, align 8, !tbaa !7
  %conv213 = uitofp i64 %137 to x86_fp80
  %call214 = call x86_fp80 @powl(x86_fp80 %136, x86_fp80 %conv213) #9
  %138 = load x86_fp80, x86_fp80* %value, align 16, !tbaa !36
  %mul215 = fmul x86_fp80 %138, %call214
  store x86_fp80 %mul215, x86_fp80* %value, align 16, !tbaa !36
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.212, %if.then.208
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.202
  %139 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool218 = icmp ne i32 %139, 0
  br i1 %tobool218, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %if.end.217
  %140 = load x86_fp80, x86_fp80* %value, align 16, !tbaa !36
  %sub220 = fsub x86_fp80 0xK80000000000000000000, %140
  store x86_fp80 %sub220, x86_fp80* %value, align 16, !tbaa !36
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %if.end.217
  %141 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  %tobool222 = icmp ne i8** %141, null
  br i1 %tobool222, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.end.221
  %142 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %143 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  store i8* %142, i8** %143, align 8, !tbaa !1
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.223, %if.end.221
  %144 = load x86_fp80, x86_fp80* %value, align 16, !tbaa !36
  %145 = bitcast x86_fp80* %value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %145) #1
  %146 = bitcast x86_fp80* %fracdiv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %146) #1
  %147 = bitcast x86_fp80* %base to i8*
  call void @llvm.lifetime.end(i64 16, i8* %147) #1
  %148 = bitcast i64* %exponent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast x86_fp80* %fraction to i8*
  call void @llvm.lifetime.end(i64 16, i8* %149) #1
  %150 = bitcast x86_fp80* %integer to i8*
  call void @llvm.lifetime.end(i64 16, i8* %150) #1
  %151 = bitcast i32* %isExponentNegative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  ret x86_fp80 %144
}

; Function Attrs: nounwind uwtable
define internal double @trio_to_double(i8* %source, i8** %endp) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %endp.addr = alloca i8**, align 8
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i8** %endp, i8*** %endp.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %1 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  %call = call double @strtod(i8* %0, i8** %1) #9
  ret double %call
}

; Function Attrs: nounwind uwtable
define internal float @trio_to_float(i8* %source, i8** %endp) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %endp.addr = alloca i8**, align 8
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i8** %endp, i8*** %endp.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %1 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  %call = call float @strtof(i8* %0, i8** %1) #9
  ret float %call
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #7

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #2

; Function Attrs: nounwind
declare float @strtof(i8*, i8**) #2

; Function Attrs: nounwind uwtable
define internal i32 @trio_equal_case(i8* %first, i8* %second) #0 {
entry:
  %retval = alloca i32, align 4
  %first.addr = alloca i8*, align 8
  %second.addr = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %first, i8** %first.addr, align 8, !tbaa !1
  store i8* %second, i8** %second.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %second.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %first.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %second.addr, align 8, !tbaa !1
  %call = call i32 @strcmp(i8* %4, i8* %5) #9
  store i32 %call, i32* %tmp, !tbaa !5
  %6 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  %8 = load i32, i32* %tmp, !tbaa !5
  %cmp2 = icmp eq i32 0, %8
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @fgetc(%struct._IO_FILE*) #6

declare i32 @ungetc(i32, %struct._IO_FILE*) #6

declare i64 @read(i32, i8*, i64) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline inlinehint nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin nounwind readonly }
attributes #11 = { nobuiltin nounwind readnone }
attributes #12 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !2, i64 0}
!10 = !{!"_trio_class_t", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !6, i64 36, !3, i64 40, !6, i64 44, !6, i64 48}
!11 = !{!10, !2, i64 24}
!12 = !{!10, !6, i64 44}
!13 = !{!10, !6, i64 48}
!14 = !{!10, !6, i64 36}
!15 = !{!3, !3, i64 0}
!16 = !{!17, !2, i64 0}
!17 = !{!"_trio_reference_t", !2, i64 0, !2, i64 8}
!18 = !{!17, !2, i64 8}
!19 = !{!20, !8, i64 8}
!20 = !{!"", !6, i64 0, !8, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !3, i64 48}
!21 = !{!10, !2, i64 8}
!22 = !{!10, !2, i64 16}
!23 = !{!10, !6, i64 32}
!24 = !{!20, !6, i64 40}
!25 = !{!20, !6, i64 44}
!26 = !{!20, !6, i64 16}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !3, i64 0}
!29 = !{!20, !6, i64 0}
!30 = !{!20, !6, i64 20}
!31 = !{!20, !6, i64 24}
!32 = !{!20, !6, i64 36}
!33 = !{!20, !6, i64 32}
!34 = !{!35, !35, i64 0}
!35 = !{!"long long", !3, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"long double", !3, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !3, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"double", !3, i64 0}
!42 = !{!20, !6, i64 28}
!43 = !{i64 0, i64 8, !1, i64 0, i64 8, !1, i64 0, i64 8, !7, i64 0, i64 8, !7, i64 0, i64 8, !40, i64 0, i64 8, !1, i64 0, i64 16, !36, i64 0, i64 8, !1, i64 0, i64 4, !5}
!44 = !{i32 129459}
