; ModuleID = 'irs-onlybc/getopt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@_PyOS_opterr = global i32 1, align 4
@_PyOS_optind = global i32 1, align 4
@_PyOS_optarg = global i32* null, align 8
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@opt_ptr = internal global i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [3 x i32] [i32 45, i32 45, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 45, i32 45, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@.str.3 = private unnamed_addr constant [10 x i32] [i32 45, i32 45, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"-J is reserved for Jython\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Unknown option: -%c\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Argument expected for the -%c option\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @_PyOS_ResetGetOpt() #0 {
entry:
  store i32 1, i32* @_PyOS_opterr, align 4, !dbg !33, !tbaa !34
  store i32 1, i32* @_PyOS_optind, align 4, !dbg !38, !tbaa !34
  store i32* null, i32** @_PyOS_optarg, align 8, !dbg !39, !tbaa !40
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i32 0, i32 0), i32** @opt_ptr, align 8, !dbg !42, !tbaa !40
  ret void, !dbg !43
}

; Function Attrs: nounwind uwtable
define i32 @_PyOS_GetOpt(i32 %argc, i32** %argv, i32* %optstring) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i32**, align 8
  %optstring.addr = alloca i32*, align 8
  %ptr = alloca i32*, align 8
  %option = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !34
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !20, metadata !44), !dbg !45
  store i32** %argv, i32*** %argv.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32*** %argv.addr, metadata !21, metadata !44), !dbg !46
  store i32* %optstring, i32** %optstring.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %optstring.addr, metadata !22, metadata !44), !dbg !47
  %0 = bitcast i32** %ptr to i8*, !dbg !48
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !48
  call void @llvm.dbg.declare(metadata i32** %ptr, metadata !23, metadata !44), !dbg !49
  %1 = bitcast i32* %option to i8*, !dbg !50
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %option, metadata !24, metadata !44), !dbg !51
  %2 = load i32*, i32** @opt_ptr, align 8, !dbg !52, !tbaa !40
  %3 = load i32, i32* %2, align 4, !dbg !54, !tbaa !34
  %cmp = icmp eq i32 %3, 0, !dbg !55
  br i1 %cmp, label %if.then, label %if.end.37, !dbg !56

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @_PyOS_optind, align 4, !dbg !57, !tbaa !34
  %5 = load i32, i32* %argc.addr, align 4, !dbg !60, !tbaa !34
  %cmp1 = icmp sge i32 %4, %5, !dbg !61
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !62

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval, !dbg !63
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !63

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* @_PyOS_optind, align 4, !dbg !64, !tbaa !34
  %idxprom = sext i32 %6 to i64, !dbg !66
  %7 = load i32**, i32*** %argv.addr, align 8, !dbg !66, !tbaa !40
  %arrayidx = getelementptr i32*, i32** %7, i64 %idxprom, !dbg !66
  %8 = load i32*, i32** %arrayidx, align 8, !dbg !66, !tbaa !40
  %arrayidx3 = getelementptr i32, i32* %8, i64 0, !dbg !66
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !66, !tbaa !34
  %cmp4 = icmp ne i32 %9, 45, !dbg !67
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false, !dbg !68

lor.lhs.false:                                    ; preds = %if.else
  %10 = load i32, i32* @_PyOS_optind, align 4, !dbg !69, !tbaa !34
  %idxprom5 = sext i32 %10 to i64, !dbg !70
  %11 = load i32**, i32*** %argv.addr, align 8, !dbg !70, !tbaa !40
  %arrayidx6 = getelementptr i32*, i32** %11, i64 %idxprom5, !dbg !70
  %12 = load i32*, i32** %arrayidx6, align 8, !dbg !70, !tbaa !40
  %arrayidx7 = getelementptr i32, i32* %12, i64 1, !dbg !70
  %13 = load i32, i32* %arrayidx7, align 4, !dbg !70, !tbaa !34
  %cmp8 = icmp eq i32 %13, 0, !dbg !71
  br i1 %cmp8, label %if.then.9, label %if.else.10, !dbg !72

if.then.9:                                        ; preds = %lor.lhs.false, %if.else
  store i32 -1, i32* %retval, !dbg !73
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !73

if.else.10:                                       ; preds = %lor.lhs.false
  %14 = load i32, i32* @_PyOS_optind, align 4, !dbg !74, !tbaa !34
  %idxprom11 = sext i32 %14 to i64, !dbg !76
  %15 = load i32**, i32*** %argv.addr, align 8, !dbg !76, !tbaa !40
  %arrayidx12 = getelementptr i32*, i32** %15, i64 %idxprom11, !dbg !76
  %16 = load i32*, i32** %arrayidx12, align 8, !dbg !76, !tbaa !40
  %call = call i32 @wcscmp(i32* %16, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.1, i32 0, i32 0)) #5, !dbg !77
  %cmp13 = icmp eq i32 %call, 0, !dbg !78
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !79

if.then.14:                                       ; preds = %if.else.10
  %17 = load i32, i32* @_PyOS_optind, align 4, !dbg !80, !tbaa !34
  %inc = add i32 %17, 1, !dbg !80
  store i32 %inc, i32* @_PyOS_optind, align 4, !dbg !80, !tbaa !34
  store i32 -1, i32* %retval, !dbg !82
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !82

if.else.15:                                       ; preds = %if.else.10
  %18 = load i32, i32* @_PyOS_optind, align 4, !dbg !83, !tbaa !34
  %idxprom16 = sext i32 %18 to i64, !dbg !85
  %19 = load i32**, i32*** %argv.addr, align 8, !dbg !85, !tbaa !40
  %arrayidx17 = getelementptr i32*, i32** %19, i64 %idxprom16, !dbg !85
  %20 = load i32*, i32** %arrayidx17, align 8, !dbg !85, !tbaa !40
  %call18 = call i32 @wcscmp(i32* %20, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.2, i32 0, i32 0)) #5, !dbg !86
  %cmp19 = icmp eq i32 %call18, 0, !dbg !87
  br i1 %cmp19, label %if.then.20, label %if.else.22, !dbg !88

if.then.20:                                       ; preds = %if.else.15
  %21 = load i32, i32* @_PyOS_optind, align 4, !dbg !89, !tbaa !34
  %inc21 = add i32 %21, 1, !dbg !89
  store i32 %inc21, i32* @_PyOS_optind, align 4, !dbg !89, !tbaa !34
  store i32 104, i32* %retval, !dbg !91
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !91

if.else.22:                                       ; preds = %if.else.15
  %22 = load i32, i32* @_PyOS_optind, align 4, !dbg !92, !tbaa !34
  %idxprom23 = sext i32 %22 to i64, !dbg !94
  %23 = load i32**, i32*** %argv.addr, align 8, !dbg !94, !tbaa !40
  %arrayidx24 = getelementptr i32*, i32** %23, i64 %idxprom23, !dbg !94
  %24 = load i32*, i32** %arrayidx24, align 8, !dbg !94, !tbaa !40
  %call25 = call i32 @wcscmp(i32* %24, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @.str.3, i32 0, i32 0)) #5, !dbg !95
  %cmp26 = icmp eq i32 %call25, 0, !dbg !96
  br i1 %cmp26, label %if.then.27, label %if.end, !dbg !97

if.then.27:                                       ; preds = %if.else.22
  %25 = load i32, i32* @_PyOS_optind, align 4, !dbg !98, !tbaa !34
  %inc28 = add i32 %25, 1, !dbg !98
  store i32 %inc28, i32* @_PyOS_optind, align 4, !dbg !98, !tbaa !34
  store i32 86, i32* %retval, !dbg !100
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !100

if.end:                                           ; preds = %if.else.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  %26 = load i32, i32* @_PyOS_optind, align 4, !dbg !101, !tbaa !34
  %inc33 = add i32 %26, 1, !dbg !101
  store i32 %inc33, i32* @_PyOS_optind, align 4, !dbg !101, !tbaa !34
  %idxprom34 = sext i32 %26 to i64, !dbg !102
  %27 = load i32**, i32*** %argv.addr, align 8, !dbg !102, !tbaa !40
  %arrayidx35 = getelementptr i32*, i32** %27, i64 %idxprom34, !dbg !102
  %28 = load i32*, i32** %arrayidx35, align 8, !dbg !102, !tbaa !40
  %arrayidx36 = getelementptr i32, i32* %28, i64 1, !dbg !102
  store i32* %arrayidx36, i32** @opt_ptr, align 8, !dbg !103, !tbaa !40
  br label %if.end.37, !dbg !104

if.end.37:                                        ; preds = %if.end.32, %entry
  %29 = load i32*, i32** @opt_ptr, align 8, !dbg !105, !tbaa !40
  %incdec.ptr = getelementptr i32, i32* %29, i32 1, !dbg !105
  store i32* %incdec.ptr, i32** @opt_ptr, align 8, !dbg !105, !tbaa !40
  %30 = load i32, i32* %29, align 4, !dbg !107, !tbaa !34
  store i32 %30, i32* %option, align 4, !dbg !108, !tbaa !34
  %cmp38 = icmp eq i32 %30, 0, !dbg !109
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !110

if.then.39:                                       ; preds = %if.end.37
  store i32 -1, i32* %retval, !dbg !111
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !111

if.end.40:                                        ; preds = %if.end.37
  %31 = load i32, i32* %option, align 4, !dbg !112, !tbaa !34
  %cmp41 = icmp eq i32 %31, 74, !dbg !114
  br i1 %cmp41, label %if.then.42, label %if.end.46, !dbg !115

if.then.42:                                       ; preds = %if.end.40
  %32 = load i32, i32* @_PyOS_opterr, align 4, !dbg !116, !tbaa !34
  %tobool = icmp ne i32 %32, 0, !dbg !116
  br i1 %tobool, label %if.then.43, label %if.end.45, !dbg !119

if.then.43:                                       ; preds = %if.then.42
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !120, !tbaa !40
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)), !dbg !121
  br label %if.end.45, !dbg !121

if.end.45:                                        ; preds = %if.then.43, %if.then.42
  store i32 95, i32* %retval, !dbg !122
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !122

if.end.46:                                        ; preds = %if.end.40
  %34 = load i32*, i32** %optstring.addr, align 8, !dbg !123, !tbaa !40
  %35 = load i32, i32* %option, align 4, !dbg !125, !tbaa !34
  %call47 = call i32* @wcschr(i32* %34, i32 %35) #5, !dbg !126
  store i32* %call47, i32** %ptr, align 8, !dbg !127, !tbaa !40
  %cmp48 = icmp eq i32* %call47, null, !dbg !128
  br i1 %cmp48, label %if.then.49, label %if.end.55, !dbg !129

if.then.49:                                       ; preds = %if.end.46
  %36 = load i32, i32* @_PyOS_opterr, align 4, !dbg !130, !tbaa !34
  %tobool50 = icmp ne i32 %36, 0, !dbg !130
  br i1 %tobool50, label %if.then.51, label %if.end.54, !dbg !133

if.then.51:                                       ; preds = %if.then.49
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !134, !tbaa !40
  %38 = load i32, i32* %option, align 4, !dbg !135, !tbaa !34
  %conv = trunc i32 %38 to i8, !dbg !136
  %conv52 = sext i8 %conv to i32, !dbg !136
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 %conv52), !dbg !137
  br label %if.end.54, !dbg !137

if.end.54:                                        ; preds = %if.then.51, %if.then.49
  store i32 95, i32* %retval, !dbg !138
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !138

if.end.55:                                        ; preds = %if.end.46
  %39 = load i32*, i32** %ptr, align 8, !dbg !139, !tbaa !40
  %add.ptr = getelementptr i32, i32* %39, i64 1, !dbg !141
  %40 = load i32, i32* %add.ptr, align 4, !dbg !142, !tbaa !34
  %cmp56 = icmp eq i32 %40, 58, !dbg !143
  br i1 %cmp56, label %if.then.58, label %if.end.77, !dbg !144

if.then.58:                                       ; preds = %if.end.55
  %41 = load i32*, i32** @opt_ptr, align 8, !dbg !145, !tbaa !40
  %42 = load i32, i32* %41, align 4, !dbg !148, !tbaa !34
  %cmp59 = icmp ne i32 %42, 0, !dbg !149
  br i1 %cmp59, label %if.then.61, label %if.else.62, !dbg !150

if.then.61:                                       ; preds = %if.then.58
  %43 = load i32*, i32** @opt_ptr, align 8, !dbg !151, !tbaa !40
  store i32* %43, i32** @_PyOS_optarg, align 8, !dbg !153, !tbaa !40
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i32 0, i32 0), i32** @opt_ptr, align 8, !dbg !154, !tbaa !40
  br label %if.end.76, !dbg !155

if.else.62:                                       ; preds = %if.then.58
  %44 = load i32, i32* @_PyOS_optind, align 4, !dbg !156, !tbaa !34
  %45 = load i32, i32* %argc.addr, align 4, !dbg !159, !tbaa !34
  %cmp63 = icmp sge i32 %44, %45, !dbg !160
  br i1 %cmp63, label %if.then.65, label %if.end.72, !dbg !161

if.then.65:                                       ; preds = %if.else.62
  %46 = load i32, i32* @_PyOS_opterr, align 4, !dbg !162, !tbaa !34
  %tobool66 = icmp ne i32 %46, 0, !dbg !162
  br i1 %tobool66, label %if.then.67, label %if.end.71, !dbg !165

if.then.67:                                       ; preds = %if.then.65
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !166, !tbaa !40
  %48 = load i32, i32* %option, align 4, !dbg !167, !tbaa !34
  %conv68 = trunc i32 %48 to i8, !dbg !168
  %conv69 = sext i8 %conv68 to i32, !dbg !168
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 %conv69), !dbg !169
  br label %if.end.71, !dbg !169

if.end.71:                                        ; preds = %if.then.67, %if.then.65
  store i32 95, i32* %retval, !dbg !170
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !170

if.end.72:                                        ; preds = %if.else.62
  %49 = load i32, i32* @_PyOS_optind, align 4, !dbg !171, !tbaa !34
  %inc73 = add i32 %49, 1, !dbg !171
  store i32 %inc73, i32* @_PyOS_optind, align 4, !dbg !171, !tbaa !34
  %idxprom74 = sext i32 %49 to i64, !dbg !172
  %50 = load i32**, i32*** %argv.addr, align 8, !dbg !172, !tbaa !40
  %arrayidx75 = getelementptr i32*, i32** %50, i64 %idxprom74, !dbg !172
  %51 = load i32*, i32** %arrayidx75, align 8, !dbg !172, !tbaa !40
  store i32* %51, i32** @_PyOS_optarg, align 8, !dbg !173, !tbaa !40
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.72, %if.then.61
  br label %if.end.77, !dbg !174

if.end.77:                                        ; preds = %if.end.76, %if.end.55
  %52 = load i32, i32* %option, align 4, !dbg !175, !tbaa !34
  store i32 %52, i32* %retval, !dbg !176
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !176

cleanup:                                          ; preds = %if.end.77, %if.end.71, %if.end.54, %if.end.45, %if.then.39, %if.then.27, %if.then.20, %if.then.14, %if.then.9, %if.then.2
  %53 = bitcast i32* %option to i8*, !dbg !177
  call void @llvm.lifetime.end(i64 4, i8* %53) #2, !dbg !177
  %54 = bitcast i32** %ptr to i8*, !dbg !177
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !177
  %55 = load i32, i32* %retval, !dbg !177
  ret i32 %55, !dbg !177
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i32 @wcscmp(i32*, i32*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind readonly
declare i32* @wcschr(i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !25)
!1 = !DIFile(filename: "getopt.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !{!7, !11}
!7 = !DISubprogram(name: "_PyOS_ResetGetOpt", scope: !8, file: !8, line: 46, type: !9, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyOS_ResetGetOpt, variables: !2)
!8 = !DIFile(filename: "Python/getopt.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !DISubprogram(name: "_PyOS_GetOpt", scope: !8, file: !8, line: 54, type: !12, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32**, i32*)* @_PyOS_GetOpt, variables: !19)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !15, !16}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !18, line: 90, baseType: !14)
!18 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !{!20, !21, !22, !23, !24}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !11, file: !8, line: 54, type: !14)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !11, file: !8, line: 54, type: !15)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 3, scope: !11, file: !8, line: 54, type: !16)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !11, file: !8, line: 56, type: !16)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "option", scope: !11, file: !8, line: 57, type: !17)
!25 = !{!26, !27, !28, !29}
!26 = !DIGlobalVariable(name: "_PyOS_opterr", scope: !0, file: !8, line: 40, type: !14, isLocal: false, isDefinition: true, variable: i32* @_PyOS_opterr)
!27 = !DIGlobalVariable(name: "_PyOS_optind", scope: !0, file: !8, line: 41, type: !14, isLocal: false, isDefinition: true, variable: i32* @_PyOS_optind)
!28 = !DIGlobalVariable(name: "_PyOS_optarg", scope: !0, file: !8, line: 42, type: !16, isLocal: false, isDefinition: true, variable: i32** @_PyOS_optarg)
!29 = !DIGlobalVariable(name: "opt_ptr", scope: !0, file: !8, line: 44, type: !16, isLocal: true, isDefinition: true, variable: i32** @opt_ptr)
!30 = !{i32 2, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!33 = !DILocation(line: 48, column: 18, scope: !7)
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 49, column: 18, scope: !7)
!39 = !DILocation(line: 50, column: 18, scope: !7)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = !DILocation(line: 51, column: 13, scope: !7)
!43 = !DILocation(line: 52, column: 1, scope: !7)
!44 = !DIExpression()
!45 = !DILocation(line: 54, column: 22, scope: !11)
!46 = !DILocation(line: 54, column: 38, scope: !11)
!47 = !DILocation(line: 54, column: 53, scope: !11)
!48 = !DILocation(line: 56, column: 5, scope: !11)
!49 = !DILocation(line: 56, column: 14, scope: !11)
!50 = !DILocation(line: 57, column: 5, scope: !11)
!51 = !DILocation(line: 57, column: 13, scope: !11)
!52 = !DILocation(line: 59, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !11, file: !8, line: 59, column: 9)
!54 = !DILocation(line: 59, column: 9, scope: !53)
!55 = !DILocation(line: 59, column: 18, scope: !53)
!56 = !DILocation(line: 59, column: 9, scope: !11)
!57 = !DILocation(line: 61, column: 13, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !8, line: 61, column: 13)
!59 = distinct !DILexicalBlock(scope: !53, file: !8, line: 59, column: 27)
!60 = !DILocation(line: 61, column: 29, scope: !58)
!61 = !DILocation(line: 61, column: 26, scope: !58)
!62 = !DILocation(line: 61, column: 13, scope: !59)
!63 = !DILocation(line: 62, column: 13, scope: !58)
!64 = !DILocation(line: 70, column: 23, scope: !65)
!65 = distinct !DILexicalBlock(scope: !58, file: !8, line: 70, column: 18)
!66 = !DILocation(line: 70, column: 18, scope: !65)
!67 = !DILocation(line: 70, column: 40, scope: !65)
!68 = !DILocation(line: 70, column: 48, scope: !65)
!69 = !DILocation(line: 71, column: 23, scope: !65)
!70 = !DILocation(line: 71, column: 18, scope: !65)
!71 = !DILocation(line: 71, column: 40, scope: !65)
!72 = !DILocation(line: 70, column: 18, scope: !58)
!73 = !DILocation(line: 72, column: 13, scope: !65)
!74 = !DILocation(line: 74, column: 30, scope: !75)
!75 = distinct !DILexicalBlock(scope: !65, file: !8, line: 74, column: 18)
!76 = !DILocation(line: 74, column: 25, scope: !75)
!77 = !DILocation(line: 74, column: 18, scope: !75)
!78 = !DILocation(line: 74, column: 52, scope: !75)
!79 = !DILocation(line: 74, column: 18, scope: !65)
!80 = !DILocation(line: 75, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !8, line: 74, column: 58)
!82 = !DILocation(line: 76, column: 13, scope: !81)
!83 = !DILocation(line: 79, column: 30, scope: !84)
!84 = distinct !DILexicalBlock(scope: !75, file: !8, line: 79, column: 18)
!85 = !DILocation(line: 79, column: 25, scope: !84)
!86 = !DILocation(line: 79, column: 18, scope: !84)
!87 = !DILocation(line: 79, column: 56, scope: !84)
!88 = !DILocation(line: 79, column: 18, scope: !75)
!89 = !DILocation(line: 80, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !8, line: 79, column: 62)
!91 = !DILocation(line: 81, column: 13, scope: !90)
!92 = !DILocation(line: 84, column: 30, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !8, line: 84, column: 18)
!94 = !DILocation(line: 84, column: 25, scope: !93)
!95 = !DILocation(line: 84, column: 18, scope: !93)
!96 = !DILocation(line: 84, column: 59, scope: !93)
!97 = !DILocation(line: 84, column: 18, scope: !84)
!98 = !DILocation(line: 85, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !8, line: 84, column: 65)
!100 = !DILocation(line: 86, column: 13, scope: !99)
!101 = !DILocation(line: 90, column: 37, scope: !59)
!102 = !DILocation(line: 90, column: 20, scope: !59)
!103 = !DILocation(line: 90, column: 17, scope: !59)
!104 = !DILocation(line: 91, column: 5, scope: !59)
!105 = !DILocation(line: 93, column: 27, scope: !106)
!106 = distinct !DILexicalBlock(scope: !11, file: !8, line: 93, column: 9)
!107 = !DILocation(line: 93, column: 19, scope: !106)
!108 = !DILocation(line: 93, column: 17, scope: !106)
!109 = !DILocation(line: 93, column: 31, scope: !106)
!110 = !DILocation(line: 93, column: 9, scope: !11)
!111 = !DILocation(line: 94, column: 9, scope: !106)
!112 = !DILocation(line: 96, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !11, file: !8, line: 96, column: 9)
!114 = !DILocation(line: 96, column: 16, scope: !113)
!115 = !DILocation(line: 96, column: 9, scope: !11)
!116 = !DILocation(line: 97, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !8, line: 97, column: 13)
!118 = distinct !DILexicalBlock(scope: !113, file: !8, line: 96, column: 24)
!119 = !DILocation(line: 97, column: 13, scope: !118)
!120 = !DILocation(line: 98, column: 21, scope: !117)
!121 = !DILocation(line: 98, column: 13, scope: !117)
!122 = !DILocation(line: 99, column: 9, scope: !118)
!123 = !DILocation(line: 102, column: 23, scope: !124)
!124 = distinct !DILexicalBlock(scope: !11, file: !8, line: 102, column: 9)
!125 = !DILocation(line: 102, column: 34, scope: !124)
!126 = !DILocation(line: 102, column: 16, scope: !124)
!127 = !DILocation(line: 102, column: 14, scope: !124)
!128 = !DILocation(line: 102, column: 43, scope: !124)
!129 = !DILocation(line: 102, column: 9, scope: !11)
!130 = !DILocation(line: 103, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !8, line: 103, column: 13)
!132 = distinct !DILexicalBlock(scope: !124, file: !8, line: 102, column: 58)
!133 = !DILocation(line: 103, column: 13, scope: !132)
!134 = !DILocation(line: 104, column: 21, scope: !131)
!135 = !DILocation(line: 104, column: 60, scope: !131)
!136 = !DILocation(line: 104, column: 54, scope: !131)
!137 = !DILocation(line: 104, column: 13, scope: !131)
!138 = !DILocation(line: 105, column: 9, scope: !132)
!139 = !DILocation(line: 108, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !11, file: !8, line: 108, column: 9)
!141 = !DILocation(line: 108, column: 15, scope: !140)
!142 = !DILocation(line: 108, column: 9, scope: !140)
!143 = !DILocation(line: 108, column: 20, scope: !140)
!144 = !DILocation(line: 108, column: 9, scope: !11)
!145 = !DILocation(line: 109, column: 14, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !8, line: 109, column: 13)
!147 = distinct !DILexicalBlock(scope: !140, file: !8, line: 108, column: 29)
!148 = !DILocation(line: 109, column: 13, scope: !146)
!149 = !DILocation(line: 109, column: 22, scope: !146)
!150 = !DILocation(line: 109, column: 13, scope: !147)
!151 = !DILocation(line: 110, column: 28, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !8, line: 109, column: 32)
!153 = !DILocation(line: 110, column: 26, scope: !152)
!154 = !DILocation(line: 111, column: 21, scope: !152)
!155 = !DILocation(line: 112, column: 9, scope: !152)
!156 = !DILocation(line: 115, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !8, line: 115, column: 17)
!158 = distinct !DILexicalBlock(scope: !146, file: !8, line: 114, column: 14)
!159 = !DILocation(line: 115, column: 33, scope: !157)
!160 = !DILocation(line: 115, column: 30, scope: !157)
!161 = !DILocation(line: 115, column: 17, scope: !158)
!162 = !DILocation(line: 116, column: 21, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !8, line: 116, column: 21)
!164 = distinct !DILexicalBlock(scope: !157, file: !8, line: 115, column: 39)
!165 = !DILocation(line: 116, column: 21, scope: !164)
!166 = !DILocation(line: 117, column: 29, scope: !163)
!167 = !DILocation(line: 118, column: 73, scope: !163)
!168 = !DILocation(line: 118, column: 67, scope: !163)
!169 = !DILocation(line: 117, column: 21, scope: !163)
!170 = !DILocation(line: 119, column: 17, scope: !164)
!171 = !DILocation(line: 122, column: 45, scope: !158)
!172 = !DILocation(line: 122, column: 28, scope: !158)
!173 = !DILocation(line: 122, column: 26, scope: !158)
!174 = !DILocation(line: 124, column: 5, scope: !147)
!175 = !DILocation(line: 126, column: 12, scope: !11)
!176 = !DILocation(line: 126, column: 5, scope: !11)
!177 = !DILocation(line: 127, column: 1, scope: !11)
