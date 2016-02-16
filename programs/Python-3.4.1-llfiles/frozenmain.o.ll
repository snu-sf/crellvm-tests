; ModuleID = 'frozenmain.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyCompilerFlags = type { i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@Py_FrozenFlag = external global i32, align 4
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"PYTHONINSPECT\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"PYTHONUNBUFFERED\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Unable to decode the command line argument #%i\0A\00", align 1
@Py_VerboseFlag = external global i32, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Python %s\0A%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"__main__ not frozen\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Py_FrozenMain(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !14, metadata !32), !dbg !33
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !15, metadata !32), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !19, metadata !32), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !20, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !21, metadata !32), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !22, metadata !32), !dbg !38
  tail call void @llvm.dbg.value(metadata i32** null, i64 0, metadata !23, metadata !32), !dbg !39
  tail call void @llvm.dbg.value(metadata i32** null, i64 0, metadata !28, metadata !32), !dbg !40
  %conv = sext i32 %argc to i64, !dbg !41
  %mul = shl nsw i64 %conv, 3, !dbg !42
  %call = tail call i8* @PyMem_RawMalloc(i64 %mul) #6, !dbg !43
  %0 = bitcast i8* %call to i32**, !dbg !43
  tail call void @llvm.dbg.value(metadata i32** %0, i64 0, metadata !23, metadata !32), !dbg !39
  %call3 = tail call i8* @PyMem_RawMalloc(i64 %mul) #6, !dbg !44
  %1 = bitcast i8* %call3 to i32**, !dbg !44
  tail call void @llvm.dbg.value(metadata i32** %1, i64 0, metadata !28, metadata !32), !dbg !40
  %tobool = icmp ne i8* %call, null, !dbg !45
  %tobool4 = icmp ne i8* %call3, null, !dbg !47
  %or.cond = and i1 %tobool, %tobool4, !dbg !49
  br i1 %or.cond, label %if.end, label %if.then, !dbg !49

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !50, !tbaa !52
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %2) #7, !dbg !56
  br label %error, !dbg !57

if.end:                                           ; preds = %entry
  store i32 1, i32* @Py_FrozenFlag, align 4, !dbg !58, !tbaa !59
  %4 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4, !dbg !61, !tbaa !59
  %tobool6 = icmp eq i32 %4, 0, !dbg !63
  br i1 %tobool6, label %cond.end, label %if.end.28, !dbg !63

cond.end:                                         ; preds = %if.end
  %call7 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !65
  tail call void @llvm.dbg.value(metadata i8* %call7, i64 0, metadata !16, metadata !32), !dbg !67
  %tobool8 = icmp eq i8* %call7, null, !dbg !68
  br i1 %tobool8, label %cond.end.17, label %land.lhs.true, !dbg !71

land.lhs.true:                                    ; preds = %cond.end
  %5 = load i8, i8* %call7, align 1, !dbg !72, !tbaa !73
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !20, metadata !32), !dbg !36
  %not.cmp = icmp ne i8 %5, 0, !dbg !74
  %. = zext i1 %not.cmp to i32, !dbg !74
  br label %cond.end.17, !dbg !74

cond.end.17:                                      ; preds = %cond.end, %land.lhs.true
  %inspect.0.ph = phi i32 [ %., %land.lhs.true ], [ 0, %cond.end ]
  %call16 = tail call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !75
  tail call void @llvm.dbg.value(metadata i8* %call16, i64 0, metadata !16, metadata !32), !dbg !67
  %tobool19 = icmp eq i8* %call16, null, !dbg !77
  br i1 %tobool19, label %if.end.28, label %land.lhs.true.20, !dbg !80

land.lhs.true.20:                                 ; preds = %cond.end.17
  %6 = load i8, i8* %call16, align 1, !dbg !81, !tbaa !73
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !21, metadata !32), !dbg !37
  %not.cmp22 = icmp eq i8 %6, 0, !dbg !82
  br i1 %not.cmp22, label %if.end.28, label %if.then.27, !dbg !83

if.then.27:                                       ; preds = %land.lhs.true.20
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !84, !tbaa !52
  tail call void @setbuf(%struct._IO_FILE* %7, i8* null) #6, !dbg !87
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !88, !tbaa !52
  tail call void @setbuf(%struct._IO_FILE* %8, i8* null) #6, !dbg !89
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !90, !tbaa !52
  tail call void @setbuf(%struct._IO_FILE* %9, i8* null) #6, !dbg !91
  br label %if.end.28, !dbg !92

if.end.28:                                        ; preds = %land.lhs.true.20, %if.end, %cond.end.17, %if.then.27
  %inspect.0133 = phi i32 [ %inspect.0.ph, %cond.end.17 ], [ %inspect.0.ph, %if.then.27 ], [ %inspect.0.ph, %land.lhs.true.20 ], [ 0, %if.end ]
  %call29 = tail call i8* @setlocale(i32 6, i8* null) #6, !dbg !93
  %call30 = tail call i8* @_PyMem_RawStrdup(i8* %call29) #6, !dbg !94
  tail call void @llvm.dbg.value(metadata i8* %call30, i64 0, metadata !22, metadata !32), !dbg !38
  %tobool31 = icmp eq i8* %call30, null, !dbg !95
  br i1 %tobool31, label %if.then.32, label %if.end.34, !dbg !97

if.then.32:                                       ; preds = %if.end.28
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !98, !tbaa !52
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %10) #7, !dbg !100
  br label %error, !dbg !101

if.end.34:                                        ; preds = %if.end.28
  %call35 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !102
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !17, metadata !32), !dbg !103
  %cmp36.138 = icmp sgt i32 %argc, 0, !dbg !104
  br i1 %cmp36.138, label %for.body.preheader, label %for.end, !dbg !107

for.body.preheader:                               ; preds = %if.end.34
  br label %for.body, !dbg !108

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.0139 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %idxprom = sext i32 %i.0139 to i64, !dbg !108
  %arrayidx = getelementptr i8*, i8** %argv, i64 %idxprom, !dbg !108
  %12 = load i8*, i8** %arrayidx, align 8, !dbg !108, !tbaa !52
  %call38 = tail call i32* @_Py_char2wchar(i8* %12, i64* null) #6, !dbg !110
  %arrayidx40 = getelementptr i32*, i32** %0, i64 %idxprom, !dbg !111
  store i32* %call38, i32** %arrayidx40, align 8, !dbg !112, !tbaa !52
  %arrayidx44 = getelementptr i32*, i32** %1, i64 %idxprom, !dbg !113
  store i32* %call38, i32** %arrayidx44, align 8, !dbg !114, !tbaa !52
  %13 = load i32*, i32** %arrayidx40, align 8, !dbg !115, !tbaa !52
  %tobool47 = icmp eq i32* %13, null, !dbg !115
  br i1 %tobool47, label %if.then.48, label %for.inc, !dbg !117

if.then.48:                                       ; preds = %for.body
  %i.0139.lcssa = phi i32 [ %i.0139, %for.body ]
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !118, !tbaa !52
  %add = add i32 %i.0139.lcssa, 1, !dbg !120
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %add) #8, !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !14, metadata !32), !dbg !33
  br label %error, !dbg !122

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0139, 1, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !17, metadata !32), !dbg !103
  %cmp36 = icmp slt i32 %inc, %argc, !dbg !104
  br i1 %cmp36, label %for.body, label %for.end.loopexit, !dbg !107

for.end.loopexit:                                 ; preds = %for.inc
  br label %for.end, !dbg !124

for.end:                                          ; preds = %for.end.loopexit, %if.end.34
  %call51 = tail call i8* @setlocale(i32 6, i8* %call30) #6, !dbg !124
  tail call void @PyMem_RawFree(i8* %call30) #6, !dbg !125
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !22, metadata !32), !dbg !38
  %15 = load i32*, i32** %0, align 8, !dbg !126, !tbaa !52
  tail call void @Py_SetProgramName(i32* %15) #6, !dbg !127
  tail call void @Py_Initialize() #6, !dbg !128
  %16 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !129, !tbaa !59
  %tobool53 = icmp eq i32 %16, 0, !dbg !129
  br i1 %tobool53, label %if.end.58, label %if.then.54, !dbg !131

if.then.54:                                       ; preds = %for.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !132, !tbaa !52
  %call55 = tail call i8* @Py_GetVersion() #6, !dbg !133
  %call56 = tail call i8* @Py_GetCopyright() #6, !dbg !134
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %call55, i8* %call56) #8, !dbg !135
  br label %if.end.58, !dbg !135

if.end.58:                                        ; preds = %for.end, %if.then.54
  tail call void @PySys_SetArgv(i32 %argc, i32** %0) #6, !dbg !136
  %call59 = tail call i32 @PyImport_ImportFrozenModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %call59, i64 0, metadata !18, metadata !32), !dbg !138
  %cmp60 = icmp eq i32 %call59, 0, !dbg !139
  br i1 %cmp60, label %if.then.62, label %if.end.63, !dbg !141

if.then.62:                                       ; preds = %if.end.58
  tail call void @Py_FatalError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !142
  unreachable, !dbg !142

if.end.63:                                        ; preds = %if.end.58
  %cmp64 = icmp slt i32 %call59, 0, !dbg !143
  br i1 %cmp64, label %if.then.66, label %if.end.67, !dbg !145

if.then.66:                                       ; preds = %if.end.63
  tail call void @PyErr_Print() #6, !dbg !146
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !19, metadata !32), !dbg !35
  br label %if.end.67, !dbg !148

if.end.67:                                        ; preds = %if.end.63, %if.then.66
  %sts.0 = phi i32 [ 1, %if.then.66 ], [ 0, %if.end.63 ]
  %tobool68 = icmp eq i32 %inspect.0133, 0, !dbg !149
  br i1 %tobool68, label %if.end.77, label %land.lhs.true.69, !dbg !151

land.lhs.true.69:                                 ; preds = %if.end.67
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !152, !tbaa !52
  %call70 = tail call i32 @fileno(%struct._IO_FILE* %18) #6, !dbg !154
  %call71 = tail call i32 @isatty(i32 %call70) #6, !dbg !155
  %tobool72 = icmp eq i32 %call71, 0, !dbg !155
  br i1 %tobool72, label %if.end.77, label %if.then.73, !dbg !156

if.then.73:                                       ; preds = %land.lhs.true.69
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !157, !tbaa !52
  %call74 = tail call i32 @PyRun_AnyFileExFlags(%struct._IO_FILE* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 0, %struct.PyCompilerFlags* null) #6, !dbg !157
  %cmp75 = icmp ne i32 %call74, 0, !dbg !158
  %conv76 = zext i1 %cmp75 to i32, !dbg !158
  tail call void @llvm.dbg.value(metadata i32 %conv76, i64 0, metadata !19, metadata !32), !dbg !35
  br label %if.end.77, !dbg !159

if.end.77:                                        ; preds = %land.lhs.true.69, %if.end.67, %if.then.73
  %sts.1 = phi i32 [ %conv76, %if.then.73 ], [ %sts.0, %land.lhs.true.69 ], [ %sts.0, %if.end.67 ]
  tail call void @Py_Finalize() #6, !dbg !160
  br label %error, !dbg !160

error:                                            ; preds = %if.end.77, %if.then.48, %if.then.32, %if.then
  %argc.addr.0 = phi i32 [ %i.0139.lcssa, %if.then.48 ], [ %argc, %if.end.77 ], [ %argc, %if.then.32 ], [ %argc, %if.then ]
  %sts.2 = phi i32 [ 1, %if.then.48 ], [ %sts.1, %if.end.77 ], [ 1, %if.then.32 ], [ 1, %if.then ]
  %oldloc.0 = phi i8* [ %call30, %if.then.48 ], [ null, %if.end.77 ], [ null, %if.then.32 ], [ null, %if.then ]
  tail call void @PyMem_RawFree(i8* %call) #6, !dbg !161
  br i1 %tobool4, label %for.cond.80.preheader, label %if.end.89, !dbg !162

for.cond.80.preheader:                            ; preds = %error
  %cmp81.136 = icmp sgt i32 %argc.addr.0, 0, !dbg !163
  br i1 %cmp81.136, label %for.body.83.preheader, label %for.end.88, !dbg !168

for.body.83.preheader:                            ; preds = %for.cond.80.preheader
  br label %for.body.83, !dbg !169

for.body.83:                                      ; preds = %for.body.83.preheader, %for.body.83
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.83 ], [ 0, %for.body.83.preheader ]
  %arrayidx85 = getelementptr i32*, i32** %1, i64 %indvars.iv, !dbg !169
  %20 = bitcast i32** %arrayidx85 to i8**, !dbg !169
  %21 = load i8*, i8** %20, align 8, !dbg !169, !tbaa !52
  tail call void @PyMem_RawFree(i8* %21) #6, !dbg !170
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !168
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !168
  %exitcond = icmp eq i32 %lftr.wideiv, %argc.addr.0, !dbg !168
  br i1 %exitcond, label %for.end.88.loopexit, label %for.body.83, !dbg !168

for.end.88.loopexit:                              ; preds = %for.body.83
  br label %for.end.88, !dbg !171

for.end.88:                                       ; preds = %for.end.88.loopexit, %for.cond.80.preheader
  tail call void @PyMem_RawFree(i8* %call3) #6, !dbg !171
  br label %if.end.89, !dbg !172

if.end.89:                                        ; preds = %for.end.88, %error
  tail call void @PyMem_RawFree(i8* %oldloc.0) #6, !dbg !173
  ret i32 %sts.2, !dbg !174
}

declare i8* @PyMem_RawMalloc(i64) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) #3

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE* nocapture, i8*) #2

declare i8* @_PyMem_RawStrdup(i8*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

declare i32* @_Py_char2wchar(i8*, i64*) #1

declare void @PyMem_RawFree(i8*) #1

declare void @Py_SetProgramName(i32*) #1

declare void @Py_Initialize() #1

declare i8* @Py_GetVersion() #1

declare i8* @Py_GetCopyright() #1

declare void @PySys_SetArgv(i32, i32**) #1

declare i32 @PyImport_ImportFrozenModule(i8*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

declare void @PyErr_Print() #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) #2

declare i32 @PyRun_AnyFileExFlags(%struct._IO_FILE*, i8*, i32, %struct.PyCompilerFlags*) #1

declare void @Py_Finalize() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8)
!1 = !DIFile(filename: "Python/frozenmain.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubprogram(name: "Py_FrozenMain", scope: !1, file: !1, line: 16, type: !10, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @Py_FrozenMain, variables: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!7, !7, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !28}
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !9, file: !1, line: 16, type: !7)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !9, file: !1, line: 16, type: !12)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !9, file: !1, line: 18, type: !4)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !9, file: !1, line: 19, type: !7)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !9, file: !1, line: 19, type: !7)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sts", scope: !9, file: !1, line: 19, type: !7)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inspect", scope: !9, file: !1, line: 20, type: !7)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unbuffered", scope: !9, file: !1, line: 21, type: !7)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldloc", scope: !9, file: !1, line: 22, type: !4)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv_copy", scope: !9, file: !1, line: 23, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !27, line: 90, baseType: !7)
!27 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv_copy2", scope: !9, file: !1, line: 25, type: !24)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!32 = !DIExpression()
!33 = !DILocation(line: 16, column: 19, scope: !9)
!34 = !DILocation(line: 16, column: 32, scope: !9)
!35 = !DILocation(line: 19, column: 15, scope: !9)
!36 = !DILocation(line: 20, column: 9, scope: !9)
!37 = !DILocation(line: 21, column: 9, scope: !9)
!38 = !DILocation(line: 22, column: 11, scope: !9)
!39 = !DILocation(line: 23, column: 15, scope: !9)
!40 = !DILocation(line: 25, column: 15, scope: !9)
!41 = !DILocation(line: 27, column: 52, scope: !9)
!42 = !DILocation(line: 27, column: 50, scope: !9)
!43 = !DILocation(line: 27, column: 17, scope: !9)
!44 = !DILocation(line: 28, column: 18, scope: !9)
!45 = !DILocation(line: 29, column: 10, scope: !46)
!46 = distinct !DILexicalBlock(scope: !9, file: !1, line: 29, column: 9)
!47 = !DILocation(line: 29, column: 24, scope: !48)
!48 = !DILexicalBlockFile(scope: !46, file: !1, discriminator: 1)
!49 = !DILocation(line: 29, column: 20, scope: !46)
!50 = !DILocation(line: 30, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 29, column: 36)
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 30, column: 9, scope: !51)
!57 = !DILocation(line: 31, column: 9, scope: !51)
!58 = !DILocation(line: 34, column: 19, scope: !9)
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !54, i64 0}
!61 = !DILocation(line: 38, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !9, file: !1, line: 38, column: 9)
!63 = !DILocation(line: 36, column: 14, scope: !64)
!64 = distinct !DILexicalBlock(scope: !9, file: !1, line: 36, column: 9)
!65 = !DILocation(line: 36, column: 14, scope: !66)
!66 = !DILexicalBlockFile(scope: !64, file: !1, discriminator: 2)
!67 = !DILocation(line: 18, column: 11, scope: !9)
!68 = !DILocation(line: 36, column: 12, scope: !69)
!69 = !DILexicalBlockFile(scope: !70, file: !1, discriminator: 4)
!70 = !DILexicalBlockFile(scope: !64, file: !1, discriminator: 3)
!71 = !DILocation(line: 36, column: 42, scope: !64)
!72 = !DILocation(line: 36, column: 45, scope: !64)
!73 = !{!54, !54, i64 0}
!74 = !DILocation(line: 36, column: 9, scope: !9)
!75 = !DILocation(line: 38, column: 14, scope: !76)
!76 = !DILexicalBlockFile(scope: !62, file: !1, discriminator: 2)
!77 = !DILocation(line: 38, column: 12, scope: !78)
!78 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 4)
!79 = !DILexicalBlockFile(scope: !62, file: !1, discriminator: 3)
!80 = !DILocation(line: 38, column: 45, scope: !62)
!81 = !DILocation(line: 38, column: 48, scope: !62)
!82 = !DILocation(line: 38, column: 9, scope: !9)
!83 = !DILocation(line: 41, column: 9, scope: !9)
!84 = !DILocation(line: 42, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 41, column: 21)
!86 = distinct !DILexicalBlock(scope: !9, file: !1, line: 41, column: 9)
!87 = !DILocation(line: 42, column: 9, scope: !85)
!88 = !DILocation(line: 43, column: 16, scope: !85)
!89 = !DILocation(line: 43, column: 9, scope: !85)
!90 = !DILocation(line: 44, column: 16, scope: !85)
!91 = !DILocation(line: 44, column: 9, scope: !85)
!92 = !DILocation(line: 45, column: 5, scope: !85)
!93 = !DILocation(line: 47, column: 31, scope: !9)
!94 = !DILocation(line: 47, column: 14, scope: !9)
!95 = !DILocation(line: 48, column: 10, scope: !96)
!96 = distinct !DILexicalBlock(scope: !9, file: !1, line: 48, column: 9)
!97 = !DILocation(line: 48, column: 9, scope: !9)
!98 = !DILocation(line: 49, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 48, column: 18)
!100 = !DILocation(line: 49, column: 9, scope: !99)
!101 = !DILocation(line: 50, column: 9, scope: !99)
!102 = !DILocation(line: 53, column: 5, scope: !9)
!103 = !DILocation(line: 19, column: 9, scope: !9)
!104 = !DILocation(line: 54, column: 19, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 54, column: 5)
!106 = distinct !DILexicalBlock(scope: !9, file: !1, line: 54, column: 5)
!107 = !DILocation(line: 54, column: 5, scope: !106)
!108 = !DILocation(line: 55, column: 39, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 54, column: 32)
!110 = !DILocation(line: 55, column: 24, scope: !109)
!111 = !DILocation(line: 55, column: 9, scope: !109)
!112 = !DILocation(line: 55, column: 22, scope: !109)
!113 = !DILocation(line: 56, column: 9, scope: !109)
!114 = !DILocation(line: 56, column: 23, scope: !109)
!115 = !DILocation(line: 57, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !109, file: !1, line: 57, column: 13)
!117 = !DILocation(line: 57, column: 13, scope: !109)
!118 = !DILocation(line: 58, column: 21, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 57, column: 28)
!120 = !DILocation(line: 59, column: 31, scope: !119)
!121 = !DILocation(line: 58, column: 13, scope: !119)
!122 = !DILocation(line: 61, column: 13, scope: !119)
!123 = !DILocation(line: 54, column: 28, scope: !105)
!124 = !DILocation(line: 64, column: 5, scope: !9)
!125 = !DILocation(line: 65, column: 5, scope: !9)
!126 = !DILocation(line: 71, column: 23, scope: !9)
!127 = !DILocation(line: 71, column: 5, scope: !9)
!128 = !DILocation(line: 72, column: 5, scope: !9)
!129 = !DILocation(line: 77, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !9, file: !1, line: 77, column: 9)
!131 = !DILocation(line: 77, column: 9, scope: !9)
!132 = !DILocation(line: 78, column: 17, scope: !130)
!133 = !DILocation(line: 79, column: 13, scope: !130)
!134 = !DILocation(line: 79, column: 30, scope: !130)
!135 = !DILocation(line: 78, column: 9, scope: !130)
!136 = !DILocation(line: 81, column: 5, scope: !9)
!137 = !DILocation(line: 83, column: 9, scope: !9)
!138 = !DILocation(line: 19, column: 12, scope: !9)
!139 = !DILocation(line: 84, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !9, file: !1, line: 84, column: 9)
!141 = !DILocation(line: 84, column: 9, scope: !9)
!142 = !DILocation(line: 85, column: 9, scope: !140)
!143 = !DILocation(line: 86, column: 11, scope: !144)
!144 = distinct !DILexicalBlock(scope: !9, file: !1, line: 86, column: 9)
!145 = !DILocation(line: 86, column: 9, scope: !9)
!146 = !DILocation(line: 87, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !1, line: 86, column: 16)
!148 = !DILocation(line: 89, column: 5, scope: !147)
!149 = !DILocation(line: 93, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !9, file: !1, line: 93, column: 9)
!151 = !DILocation(line: 93, column: 17, scope: !150)
!152 = !DILocation(line: 93, column: 39, scope: !153)
!153 = !DILexicalBlockFile(scope: !150, file: !1, discriminator: 1)
!154 = !DILocation(line: 93, column: 32, scope: !150)
!155 = !DILocation(line: 93, column: 20, scope: !150)
!156 = !DILocation(line: 93, column: 9, scope: !9)
!157 = !DILocation(line: 94, column: 15, scope: !150)
!158 = !DILocation(line: 94, column: 47, scope: !150)
!159 = !DILocation(line: 94, column: 9, scope: !150)
!160 = !DILocation(line: 99, column: 5, scope: !9)
!161 = !DILocation(line: 102, column: 5, scope: !9)
!162 = !DILocation(line: 103, column: 9, scope: !9)
!163 = !DILocation(line: 104, column: 23, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 104, column: 9)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 104, column: 9)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 103, column: 21)
!167 = distinct !DILexicalBlock(scope: !9, file: !1, line: 103, column: 9)
!168 = !DILocation(line: 104, column: 9, scope: !165)
!169 = !DILocation(line: 105, column: 27, scope: !164)
!170 = !DILocation(line: 105, column: 13, scope: !164)
!171 = !DILocation(line: 106, column: 9, scope: !166)
!172 = !DILocation(line: 107, column: 5, scope: !166)
!173 = !DILocation(line: 108, column: 5, scope: !9)
!174 = !DILocation(line: 109, column: 5, scope: !9)
