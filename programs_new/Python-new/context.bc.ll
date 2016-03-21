; ModuleID = 'irs-onlybc/context.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpd_context_t = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@mpd_traphandler = hidden global void (%struct.mpd_context_t*)* @mpd_dflt_traphandler, align 8
@mpd_setminalloc.minalloc_is_set = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s:%d: warning: \00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/context.c\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"mpd_setminalloc: ignoring request to set MPD_MINALLOC a second time\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s:%d: error: \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"illegal value for MPD_MINALLOC\00", align 1
@MPD_MINALLOC = external hidden global i64, align 8

; Function Attrs: nounwind uwtable
define hidden void @mpd_dflt_traphandler(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !44, metadata !158), !dbg !159
  %call = call i32 @raise(i32 8) #5, !dbg !160
  ret void, !dbg !161
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @raise(i32) #2

; Function Attrs: nounwind uwtable
define hidden void @mpd_setminalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !162
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !49, metadata !158), !dbg !164
  %0 = load i32, i32* @mpd_setminalloc.minalloc_is_set, align 4, !dbg !165, !tbaa !167
  %tobool = icmp ne i32 %0, 0, !dbg !165
  br i1 %tobool, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !170

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !172, !tbaa !154
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i32 0, i32 0), i32 55), !dbg !175
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !176, !tbaa !154
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i32 0, i32 0)), !dbg !177
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !154
  %call2 = call i32 @fputc(i32 10, %struct._IO_FILE* %3), !dbg !179
  br label %do.end, !dbg !180

do.end:                                           ; preds = %do.body
  br label %return, !dbg !181

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %n.addr, align 8, !dbg !182, !tbaa !162
  %cmp = icmp slt i64 %4, 2, !dbg !184
  br i1 %cmp, label %if.then.4, label %lor.lhs.false, !dbg !185

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %n.addr, align 8, !dbg !186, !tbaa !162
  %cmp3 = icmp sgt i64 %5, 64, !dbg !188
  br i1 %cmp3, label %if.then.4, label %if.end.10, !dbg !189

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  br label %do.body.5, !dbg !190

do.body.5:                                        ; preds = %if.then.4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !192, !tbaa !154
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i32 0, i32 0), i32 59), !dbg !195
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !154
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)), !dbg !197
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !198, !tbaa !154
  %call8 = call i32 @fputc(i32 10, %struct._IO_FILE* %8), !dbg !199
  call void @abort() #6, !dbg !200
  unreachable, !dbg !200

do.end.9:                                         ; No predecessors!
  br label %if.end.10, !dbg !201

if.end.10:                                        ; preds = %do.end.9, %lor.lhs.false
  %9 = load i64, i64* %n.addr, align 8, !dbg !202, !tbaa !162
  store i64 %9, i64* @MPD_MINALLOC, align 8, !dbg !203, !tbaa !162
  store i32 1, i32* @mpd_setminalloc.minalloc_is_set, align 4, !dbg !204, !tbaa !167
  br label %return, !dbg !205

return:                                           ; preds = %if.end.10, %do.end
  ret void, !dbg !206
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fputc(i32, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind uwtable
define hidden void @mpd_init(%struct.mpd_context_t* %ctx, i64 %prec) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %prec.addr = alloca i64, align 8
  %ideal_minalloc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !54, metadata !158), !dbg !208
  store i64 %prec, i64* %prec.addr, align 8, !tbaa !162
  call void @llvm.dbg.declare(metadata i64* %prec.addr, metadata !55, metadata !158), !dbg !209
  %0 = bitcast i64* %ideal_minalloc to i8*, !dbg !210
  call void @llvm.lifetime.start(i64 8, i8* %0) #5, !dbg !210
  call void @llvm.dbg.declare(metadata i64* %ideal_minalloc, metadata !56, metadata !158), !dbg !211
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !212, !tbaa !154
  call void @mpd_defaultcontext(%struct.mpd_context_t* %1), !dbg !213
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !214, !tbaa !154
  %3 = load i64, i64* %prec.addr, align 8, !dbg !216, !tbaa !162
  %call = call i32 @mpd_qsetprec(%struct.mpd_context_t* %2, i64 %3), !dbg !217
  %tobool = icmp ne i32 %call, 0, !dbg !217
  br i1 %tobool, label %if.end, label %if.then, !dbg !218

if.then:                                          ; preds = %entry
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !219, !tbaa !154
  call void @mpd_addstatus_raise(%struct.mpd_context_t* %4, i32 128), !dbg !221
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !222

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %prec.addr, align 8, !dbg !223, !tbaa !162
  %add = add i64 %5, 19, !dbg !224
  %sub = sub i64 %add, 1, !dbg !225
  %div = sdiv i64 %sub, 19, !dbg !226
  %mul = mul i64 2, %div, !dbg !227
  store i64 %mul, i64* %ideal_minalloc, align 8, !dbg !228, !tbaa !162
  %6 = load i64, i64* %ideal_minalloc, align 8, !dbg !229, !tbaa !162
  %cmp = icmp slt i64 %6, 2, !dbg !231
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !232

if.then.1:                                        ; preds = %if.end
  store i64 2, i64* %ideal_minalloc, align 8, !dbg !233, !tbaa !162
  br label %if.end.2, !dbg !235

if.end.2:                                         ; preds = %if.then.1, %if.end
  %7 = load i64, i64* %ideal_minalloc, align 8, !dbg !236, !tbaa !162
  %cmp3 = icmp sgt i64 %7, 64, !dbg !238
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !239

if.then.4:                                        ; preds = %if.end.2
  store i64 64, i64* %ideal_minalloc, align 8, !dbg !240, !tbaa !162
  br label %if.end.5, !dbg !242

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %8 = load i64, i64* %ideal_minalloc, align 8, !dbg !243, !tbaa !162
  call void @mpd_setminalloc(i64 %8), !dbg !244
  store i32 0, i32* %cleanup.dest.slot, !dbg !245
  br label %cleanup, !dbg !245

cleanup:                                          ; preds = %if.end.5, %if.then
  %9 = bitcast i64* %ideal_minalloc to i8*, !dbg !246
  call void @llvm.lifetime.end(i64 8, i8* %9) #5, !dbg !246
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !245

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind uwtable
define hidden void @mpd_defaultcontext(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !62, metadata !158), !dbg !248
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !249, !tbaa !154
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 0, !dbg !250
  store i64 38, i64* %prec, align 8, !dbg !251, !tbaa !252
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !254, !tbaa !154
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %1, i32 0, i32 1, !dbg !255
  store i64 999999999999999999, i64* %emax, align 8, !dbg !256, !tbaa !257
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !258, !tbaa !154
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 2, !dbg !259
  store i64 -999999999999999999, i64* %emin, align 8, !dbg !260, !tbaa !261
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !262, !tbaa !154
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 6, !dbg !263
  store i32 4, i32* %round, align 4, !dbg !264, !tbaa !265
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !266, !tbaa !154
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 3, !dbg !267
  store i32 19390, i32* %traps, align 4, !dbg !268, !tbaa !269
  %5 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !270, !tbaa !154
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %5, i32 0, i32 4, !dbg !271
  store i32 0, i32* %status, align 4, !dbg !272, !tbaa !273
  %6 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !274, !tbaa !154
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %6, i32 0, i32 5, !dbg !275
  store i32 0, i32* %newtrap, align 4, !dbg !276, !tbaa !277
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !278, !tbaa !154
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 7, !dbg !279
  store i32 0, i32* %clamp, align 4, !dbg !280, !tbaa !281
  %8 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !282, !tbaa !154
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %8, i32 0, i32 8, !dbg !283
  store i32 1, i32* %allcr, align 4, !dbg !284, !tbaa !285
  ret void, !dbg !286
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetprec(%struct.mpd_context_t* %ctx, i64 %prec) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %prec.addr = alloca i64, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !108, metadata !158), !dbg !287
  store i64 %prec, i64* %prec.addr, align 8, !tbaa !162
  call void @llvm.dbg.declare(metadata i64* %prec.addr, metadata !109, metadata !158), !dbg !288
  %0 = load i64, i64* %prec.addr, align 8, !dbg !289, !tbaa !162
  %cmp = icmp sle i64 %0, 0, !dbg !291
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !292

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %prec.addr, align 8, !dbg !293, !tbaa !162
  %cmp1 = icmp sgt i64 %1, 999999999999999999, !dbg !295
  br i1 %cmp1, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, !dbg !297
  br label %return, !dbg !297

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %prec.addr, align 8, !dbg !299, !tbaa !162
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !300, !tbaa !154
  %prec2 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 0, !dbg !301
  store i64 %2, i64* %prec2, align 8, !dbg !302, !tbaa !252
  store i32 1, i32* %retval, !dbg !303
  br label %return, !dbg !303

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, !dbg !304
  ret i32 %4, !dbg !304
}

; Function Attrs: nounwind uwtable
define hidden void @mpd_addstatus_raise(%struct.mpd_context_t* %ctx, i32 %flags) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !144, metadata !158), !dbg !305
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !167
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !145, metadata !158), !dbg !306
  %0 = load i32, i32* %flags.addr, align 4, !dbg !307, !tbaa !167
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !308, !tbaa !154
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %1, i32 0, i32 4, !dbg !309
  %2 = load i32, i32* %status, align 4, !dbg !310, !tbaa !273
  %or = or i32 %2, %0, !dbg !310
  store i32 %or, i32* %status, align 4, !dbg !310, !tbaa !273
  %3 = load i32, i32* %flags.addr, align 4, !dbg !311, !tbaa !167
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !313, !tbaa !154
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 3, !dbg !314
  %5 = load i32, i32* %traps, align 4, !dbg !314, !tbaa !269
  %and = and i32 %3, %5, !dbg !315
  %tobool = icmp ne i32 %and, 0, !dbg !315
  br i1 %tobool, label %if.then, label %if.end, !dbg !316

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %flags.addr, align 4, !dbg !317, !tbaa !167
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !319, !tbaa !154
  %traps1 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 3, !dbg !320
  %8 = load i32, i32* %traps1, align 4, !dbg !320, !tbaa !269
  %and2 = and i32 %6, %8, !dbg !321
  %9 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !322, !tbaa !154
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %9, i32 0, i32 5, !dbg !323
  store i32 %and2, i32* %newtrap, align 4, !dbg !324, !tbaa !277
  %10 = load void (%struct.mpd_context_t*)*, void (%struct.mpd_context_t*)** @mpd_traphandler, align 8, !dbg !325, !tbaa !154
  %11 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !326, !tbaa !154
  call void %10(%struct.mpd_context_t* %11), !dbg !325
  br label %if.end, !dbg !327

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !328
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind uwtable
define hidden void @mpd_maxcontext(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !59, metadata !158), !dbg !329
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !330, !tbaa !154
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 0, !dbg !331
  store i64 999999999999999999, i64* %prec, align 8, !dbg !332, !tbaa !252
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !333, !tbaa !154
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %1, i32 0, i32 1, !dbg !334
  store i64 999999999999999999, i64* %emax, align 8, !dbg !335, !tbaa !257
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !336, !tbaa !154
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 2, !dbg !337
  store i64 -999999999999999999, i64* %emin, align 8, !dbg !338, !tbaa !261
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !339, !tbaa !154
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 6, !dbg !340
  store i32 6, i32* %round, align 4, !dbg !341, !tbaa !265
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !342, !tbaa !154
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 3, !dbg !343
  store i32 19390, i32* %traps, align 4, !dbg !344, !tbaa !269
  %5 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !345, !tbaa !154
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %5, i32 0, i32 4, !dbg !346
  store i32 0, i32* %status, align 4, !dbg !347, !tbaa !273
  %6 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !348, !tbaa !154
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %6, i32 0, i32 5, !dbg !349
  store i32 0, i32* %newtrap, align 4, !dbg !350, !tbaa !277
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !351, !tbaa !154
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 7, !dbg !352
  store i32 0, i32* %clamp, align 4, !dbg !353, !tbaa !281
  %8 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !354, !tbaa !154
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %8, i32 0, i32 8, !dbg !355
  store i32 1, i32* %allcr, align 4, !dbg !356, !tbaa !285
  ret void, !dbg !357
}

; Function Attrs: nounwind uwtable
define hidden void @mpd_basiccontext(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !65, metadata !158), !dbg !358
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !359, !tbaa !154
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 0, !dbg !360
  store i64 9, i64* %prec, align 8, !dbg !361, !tbaa !252
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !362, !tbaa !154
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %1, i32 0, i32 1, !dbg !363
  store i64 999999999999999999, i64* %emax, align 8, !dbg !364, !tbaa !257
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !365, !tbaa !154
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 2, !dbg !366
  store i64 -999999999999999999, i64* %emin, align 8, !dbg !367, !tbaa !261
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !368, !tbaa !154
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 6, !dbg !369
  store i32 4, i32* %round, align 4, !dbg !370, !tbaa !265
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !371, !tbaa !154
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 3, !dbg !372
  store i32 19391, i32* %traps, align 4, !dbg !373, !tbaa !269
  %5 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !374, !tbaa !154
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %5, i32 0, i32 4, !dbg !375
  store i32 0, i32* %status, align 4, !dbg !376, !tbaa !273
  %6 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !377, !tbaa !154
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %6, i32 0, i32 5, !dbg !378
  store i32 0, i32* %newtrap, align 4, !dbg !379, !tbaa !277
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !380, !tbaa !154
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 7, !dbg !381
  store i32 0, i32* %clamp, align 4, !dbg !382, !tbaa !281
  %8 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !383, !tbaa !154
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %8, i32 0, i32 8, !dbg !384
  store i32 1, i32* %allcr, align 4, !dbg !385, !tbaa !285
  ret void, !dbg !386
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_ieee_context(%struct.mpd_context_t* %ctx, i32 %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %bits.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !70, metadata !158), !dbg !387
  store i32 %bits, i32* %bits.addr, align 4, !tbaa !167
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !71, metadata !158), !dbg !388
  %0 = load i32, i32* %bits.addr, align 4, !dbg !389, !tbaa !167
  %cmp = icmp sle i32 %0, 0, !dbg !391
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !392

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %bits.addr, align 4, !dbg !393, !tbaa !167
  %cmp1 = icmp sgt i32 %1, 512, !dbg !395
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2, !dbg !396

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %bits.addr, align 4, !dbg !397, !tbaa !167
  %rem = srem i32 %2, 32, !dbg !399
  %tobool = icmp ne i32 %rem, 0, !dbg !399
  br i1 %tobool, label %if.then, label %if.end, !dbg !400

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, !dbg !401
  br label %return, !dbg !401

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %bits.addr, align 4, !dbg !403, !tbaa !167
  %div = sdiv i32 %3, 32, !dbg !404
  %mul = mul i32 9, %div, !dbg !405
  %sub = sub i32 %mul, 2, !dbg !406
  %conv = sext i32 %sub to i64, !dbg !407
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !408, !tbaa !154
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 0, !dbg !409
  store i64 %conv, i64* %prec, align 8, !dbg !410, !tbaa !252
  %5 = load i32, i32* %bits.addr, align 4, !dbg !411, !tbaa !167
  %div3 = sdiv i32 %5, 16, !dbg !412
  %add = add i32 %div3, 3, !dbg !413
  %sh_prom = zext i32 %add to i64, !dbg !414
  %shl = shl i64 1, %sh_prom, !dbg !414
  %mul4 = mul i64 3, %shl, !dbg !415
  %6 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !416, !tbaa !154
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %6, i32 0, i32 1, !dbg !417
  store i64 %mul4, i64* %emax, align 8, !dbg !418, !tbaa !257
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !419, !tbaa !154
  %emax5 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 1, !dbg !420
  %8 = load i64, i64* %emax5, align 8, !dbg !420, !tbaa !257
  %sub6 = sub i64 1, %8, !dbg !421
  %9 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !422, !tbaa !154
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %9, i32 0, i32 2, !dbg !423
  store i64 %sub6, i64* %emin, align 8, !dbg !424, !tbaa !261
  %10 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !425, !tbaa !154
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %10, i32 0, i32 6, !dbg !426
  store i32 6, i32* %round, align 4, !dbg !427, !tbaa !265
  %11 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !428, !tbaa !154
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %11, i32 0, i32 3, !dbg !429
  store i32 0, i32* %traps, align 4, !dbg !430, !tbaa !269
  %12 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !431, !tbaa !154
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %12, i32 0, i32 4, !dbg !432
  store i32 0, i32* %status, align 4, !dbg !433, !tbaa !273
  %13 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !434, !tbaa !154
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %13, i32 0, i32 5, !dbg !435
  store i32 0, i32* %newtrap, align 4, !dbg !436, !tbaa !277
  %14 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !437, !tbaa !154
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %14, i32 0, i32 7, !dbg !438
  store i32 1, i32* %clamp, align 4, !dbg !439, !tbaa !281
  %15 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !440, !tbaa !154
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %15, i32 0, i32 8, !dbg !441
  store i32 1, i32* %allcr, align 4, !dbg !442, !tbaa !285
  store i32 0, i32* %retval, !dbg !443
  br label %return, !dbg !443

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, !dbg !444
  ret i32 %16, !dbg !444
}

; Function Attrs: nounwind uwtable
define hidden i64 @mpd_getprec(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !78, metadata !158), !dbg !445
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !446, !tbaa !154
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 0, !dbg !447
  %1 = load i64, i64* %prec, align 8, !dbg !447, !tbaa !252
  ret i64 %1, !dbg !448
}

; Function Attrs: nounwind uwtable
define hidden i64 @mpd_getemax(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !81, metadata !158), !dbg !449
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !450, !tbaa !154
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 1, !dbg !451
  %1 = load i64, i64* %emax, align 8, !dbg !451, !tbaa !257
  ret i64 %1, !dbg !452
}

; Function Attrs: nounwind uwtable
define hidden i64 @mpd_getemin(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !84, metadata !158), !dbg !453
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !454, !tbaa !154
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 2, !dbg !455
  %1 = load i64, i64* %emin, align 8, !dbg !455, !tbaa !261
  ret i64 %1, !dbg !456
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_getround(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !89, metadata !158), !dbg !457
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !458, !tbaa !154
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 6, !dbg !459
  %1 = load i32, i32* %round, align 4, !dbg !459, !tbaa !265
  ret i32 %1, !dbg !460
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_gettraps(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !94, metadata !158), !dbg !461
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !462, !tbaa !154
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 3, !dbg !463
  %1 = load i32, i32* %traps, align 4, !dbg !463, !tbaa !269
  ret i32 %1, !dbg !464
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_getstatus(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !97, metadata !158), !dbg !465
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !466, !tbaa !154
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 4, !dbg !467
  %1 = load i32, i32* %status, align 4, !dbg !467, !tbaa !273
  ret i32 %1, !dbg !468
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_getclamp(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !100, metadata !158), !dbg !469
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !470, !tbaa !154
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 7, !dbg !471
  %1 = load i32, i32* %clamp, align 4, !dbg !471, !tbaa !281
  ret i32 %1, !dbg !472
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_getcr(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !103, metadata !158), !dbg !473
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !474, !tbaa !154
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 8, !dbg !475
  %1 = load i32, i32* %allcr, align 4, !dbg !475, !tbaa !285
  ret i32 %1, !dbg !476
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetemax(%struct.mpd_context_t* %ctx, i64 %emax) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %emax.addr = alloca i64, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !112, metadata !158), !dbg !477
  store i64 %emax, i64* %emax.addr, align 8, !tbaa !162
  call void @llvm.dbg.declare(metadata i64* %emax.addr, metadata !113, metadata !158), !dbg !478
  %0 = load i64, i64* %emax.addr, align 8, !dbg !479, !tbaa !162
  %cmp = icmp slt i64 %0, 0, !dbg !481
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !482

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %emax.addr, align 8, !dbg !483, !tbaa !162
  %cmp1 = icmp sgt i64 %1, 999999999999999999, !dbg !485
  br i1 %cmp1, label %if.then, label %if.end, !dbg !486

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, !dbg !487
  br label %return, !dbg !487

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %emax.addr, align 8, !dbg !489, !tbaa !162
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !490, !tbaa !154
  %emax2 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 1, !dbg !491
  store i64 %2, i64* %emax2, align 8, !dbg !492, !tbaa !257
  store i32 1, i32* %retval, !dbg !493
  br label %return, !dbg !493

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, !dbg !494
  ret i32 %4, !dbg !494
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetemin(%struct.mpd_context_t* %ctx, i64 %emin) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %emin.addr = alloca i64, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !116, metadata !158), !dbg !495
  store i64 %emin, i64* %emin.addr, align 8, !tbaa !162
  call void @llvm.dbg.declare(metadata i64* %emin.addr, metadata !117, metadata !158), !dbg !496
  %0 = load i64, i64* %emin.addr, align 8, !dbg !497, !tbaa !162
  %cmp = icmp sgt i64 %0, 0, !dbg !499
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !500

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %emin.addr, align 8, !dbg !501, !tbaa !162
  %cmp1 = icmp slt i64 %1, -999999999999999999, !dbg !503
  br i1 %cmp1, label %if.then, label %if.end, !dbg !504

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, !dbg !505
  br label %return, !dbg !505

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %emin.addr, align 8, !dbg !507, !tbaa !162
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !508, !tbaa !154
  %emin2 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 2, !dbg !509
  store i64 %2, i64* %emin2, align 8, !dbg !510, !tbaa !261
  store i32 1, i32* %retval, !dbg !511
  br label %return, !dbg !511

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, !dbg !512
  ret i32 %4, !dbg !512
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetround(%struct.mpd_context_t* %ctx, i32 %round) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %round.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !120, metadata !158), !dbg !513
  store i32 %round, i32* %round.addr, align 4, !tbaa !167
  call void @llvm.dbg.declare(metadata i32* %round.addr, metadata !121, metadata !158), !dbg !514
  %0 = load i32, i32* %round.addr, align 4, !dbg !515, !tbaa !167
  %cmp = icmp sle i32 0, %0, !dbg !517
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !518

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %round.addr, align 4, !dbg !519, !tbaa !167
  %cmp1 = icmp slt i32 %1, 9, !dbg !521
  br i1 %cmp1, label %if.end, label %if.then, !dbg !522

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, !dbg !523
  br label %return, !dbg !523

if.end:                                           ; preds = %land.lhs.true
  %2 = load i32, i32* %round.addr, align 4, !dbg !525, !tbaa !167
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !526, !tbaa !154
  %round2 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 6, !dbg !527
  store i32 %2, i32* %round2, align 4, !dbg !528, !tbaa !265
  store i32 1, i32* %retval, !dbg !529
  br label %return, !dbg !529

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, !dbg !530
  ret i32 %4, !dbg !530
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsettraps(%struct.mpd_context_t* %ctx, i32 %traps) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %traps.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !126, metadata !158), !dbg !531
  store i32 %traps, i32* %traps.addr, align 4, !tbaa !167
  call void @llvm.dbg.declare(metadata i32* %traps.addr, metadata !127, metadata !158), !dbg !532
  %0 = load i32, i32* %traps.addr, align 4, !dbg !533, !tbaa !167
  %cmp = icmp ugt i32 %0, 32767, !dbg !535
  br i1 %cmp, label %if.then, label %if.end, !dbg !536

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !537
  br label %return, !dbg !537

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %traps.addr, align 4, !dbg !539, !tbaa !167
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !540, !tbaa !154
  %traps1 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 3, !dbg !541
  store i32 %1, i32* %traps1, align 4, !dbg !542, !tbaa !269
  store i32 1, i32* %retval, !dbg !543
  br label %return, !dbg !543

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, !dbg !544
  ret i32 %3, !dbg !544
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetstatus(%struct.mpd_context_t* %ctx, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !130, metadata !158), !dbg !545
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !167
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !131, metadata !158), !dbg !546
  %0 = load i32, i32* %flags.addr, align 4, !dbg !547, !tbaa !167
  %cmp = icmp ugt i32 %0, 32767, !dbg !549
  br i1 %cmp, label %if.then, label %if.end, !dbg !550

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !551
  br label %return, !dbg !551

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4, !dbg !553, !tbaa !167
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !554, !tbaa !154
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 4, !dbg !555
  store i32 %1, i32* %status, align 4, !dbg !556, !tbaa !273
  store i32 1, i32* %retval, !dbg !557
  br label %return, !dbg !557

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, !dbg !558
  ret i32 %3, !dbg !558
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetclamp(%struct.mpd_context_t* %ctx, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %c.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !134, metadata !158), !dbg !559
  store i32 %c, i32* %c.addr, align 4, !tbaa !167
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !135, metadata !158), !dbg !560
  %0 = load i32, i32* %c.addr, align 4, !dbg !561, !tbaa !167
  %cmp = icmp ne i32 %0, 0, !dbg !563
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !564

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !565, !tbaa !167
  %cmp1 = icmp ne i32 %1, 1, !dbg !567
  br i1 %cmp1, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !569
  br label %return, !dbg !569

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %c.addr, align 4, !dbg !571, !tbaa !167
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !572, !tbaa !154
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 7, !dbg !573
  store i32 %2, i32* %clamp, align 4, !dbg !574, !tbaa !281
  store i32 1, i32* %retval, !dbg !575
  br label %return, !dbg !575

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, !dbg !576
  ret i32 %4, !dbg !576
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetcr(%struct.mpd_context_t* %ctx, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %c.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8, !tbaa !154
  call void @llvm.dbg.declare(metadata %struct.mpd_context_t** %ctx.addr, metadata !138, metadata !158), !dbg !577
  store i32 %c, i32* %c.addr, align 4, !tbaa !167
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !139, metadata !158), !dbg !578
  %0 = load i32, i32* %c.addr, align 4, !dbg !579, !tbaa !167
  %cmp = icmp ne i32 %0, 0, !dbg !581
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !582

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !583, !tbaa !167
  %cmp1 = icmp ne i32 %1, 1, !dbg !585
  br i1 %cmp1, label %if.then, label %if.end, !dbg !586

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !587
  br label %return, !dbg !587

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %c.addr, align 4, !dbg !589, !tbaa !167
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8, !dbg !590, !tbaa !154
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 8, !dbg !591
  store i32 %2, i32* %allcr, align 4, !dbg !592, !tbaa !285
  store i32 1, i32* %retval, !dbg !593
  br label %return, !dbg !593

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, !dbg !594
  ret i32 %4, !dbg !594
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!150, !151, !152}
!llvm.ident = !{!153}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !16, subprograms: !21, globals: !146)
!1 = !DIFile(filename: "context.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 241, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/mpdecimal.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !DIEnumerator(name: "MPD_ROUND_UP", value: 0)
!7 = !DIEnumerator(name: "MPD_ROUND_DOWN", value: 1)
!8 = !DIEnumerator(name: "MPD_ROUND_CEILING", value: 2)
!9 = !DIEnumerator(name: "MPD_ROUND_FLOOR", value: 3)
!10 = !DIEnumerator(name: "MPD_ROUND_HALF_UP", value: 4)
!11 = !DIEnumerator(name: "MPD_ROUND_HALF_DOWN", value: 5)
!12 = !DIEnumerator(name: "MPD_ROUND_HALF_EVEN", value: 6)
!13 = !DIEnumerator(name: "MPD_ROUND_05UP", value: 7)
!14 = !DIEnumerator(name: "MPD_ROUND_TRUNC", value: 8)
!15 = !DIEnumerator(name: "MPD_ROUND_GUARD", value: 9)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_ssize_t", file: !4, line: 157, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !19, line: 197, baseType: !20)
!19 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !{!22, !45, !50, !57, !60, !63, !66, !72, !79, !82, !85, !90, !95, !98, !101, !104, !110, !114, !118, !122, !128, !132, !136, !140}
!22 = !DISubprogram(name: "mpd_dflt_traphandler", scope: !23, file: !23, line: 36, type: !24, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mpd_context_t*)* @mpd_dflt_traphandler, variables: !43)
!23 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/context.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_context_t", file: !4, line: 270, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "mpd_context_t", file: !4, line: 260, size: 384, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33, !37, !38, !39, !41, !42}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "prec", scope: !28, file: !4, line: 261, baseType: !17, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !28, file: !4, line: 262, baseType: !17, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !28, file: !4, line: 263, baseType: !17, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !28, file: !4, line: 264, baseType: !34, size: 32, align: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 51, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!36 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !28, file: !4, line: 265, baseType: !34, size: 32, align: 32, offset: 224)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "newtrap", scope: !28, file: !4, line: 266, baseType: !34, size: 32, align: 32, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "round", scope: !28, file: !4, line: 267, baseType: !40, size: 32, align: 32, offset: 288)
!40 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "clamp", scope: !28, file: !4, line: 268, baseType: !40, size: 32, align: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "allcr", scope: !28, file: !4, line: 269, baseType: !40, size: 32, align: 32, offset: 352)
!43 = !{!44}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !22, file: !23, line: 36, type: !26)
!45 = !DISubprogram(name: "mpd_setminalloc", scope: !23, file: !23, line: 49, type: !46, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: void (i64)* @mpd_setminalloc, variables: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !17}
!48 = !{!49}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !45, file: !23, line: 49, type: !17)
!50 = !DISubprogram(name: "mpd_init", scope: !23, file: !23, line: 66, type: !51, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mpd_context_t*, i64)* @mpd_init, variables: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !26, !17}
!53 = !{!54, !55, !56}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !50, file: !23, line: 66, type: !26)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prec", arg: 2, scope: !50, file: !23, line: 66, type: !17)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ideal_minalloc", scope: !50, file: !23, line: 68, type: !17)
!57 = !DISubprogram(name: "mpd_maxcontext", scope: !23, file: !23, line: 85, type: !24, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mpd_context_t*)* @mpd_maxcontext, variables: !58)
!58 = !{!59}
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !57, file: !23, line: 85, type: !26)
!60 = !DISubprogram(name: "mpd_defaultcontext", scope: !23, file: !23, line: 99, type: !24, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mpd_context_t*)* @mpd_defaultcontext, variables: !61)
!61 = !{!62}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !60, file: !23, line: 99, type: !26)
!63 = !DISubprogram(name: "mpd_basiccontext", scope: !23, file: !23, line: 113, type: !24, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mpd_context_t*)* @mpd_basiccontext, variables: !64)
!64 = !{!65}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !63, file: !23, line: 113, type: !26)
!66 = !DISubprogram(name: "mpd_ieee_context", scope: !23, file: !23, line: 127, type: !67, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*, i32)* @mpd_ieee_context, variables: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{!40, !26, !40}
!69 = !{!70, !71}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !66, file: !23, line: 127, type: !26)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bits", arg: 2, scope: !66, file: !23, line: 127, type: !40)
!72 = !DISubprogram(name: "mpd_getprec", scope: !23, file: !23, line: 147, type: !73, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.mpd_context_t*)* @mpd_getprec, variables: !77)
!73 = !DISubroutineType(types: !74)
!74 = !{!17, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!77 = !{!78}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !72, file: !23, line: 147, type: !75)
!79 = !DISubprogram(name: "mpd_getemax", scope: !23, file: !23, line: 153, type: !73, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.mpd_context_t*)* @mpd_getemax, variables: !80)
!80 = !{!81}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !79, file: !23, line: 153, type: !75)
!82 = !DISubprogram(name: "mpd_getemin", scope: !23, file: !23, line: 159, type: !73, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.mpd_context_t*)* @mpd_getemin, variables: !83)
!83 = !{!84}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !82, file: !23, line: 159, type: !75)
!85 = !DISubprogram(name: "mpd_getround", scope: !23, file: !23, line: 165, type: !86, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*)* @mpd_getround, variables: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!40, !75}
!88 = !{!89}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !85, file: !23, line: 165, type: !75)
!90 = !DISubprogram(name: "mpd_gettraps", scope: !23, file: !23, line: 171, type: !91, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*)* @mpd_gettraps, variables: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!34, !75}
!93 = !{!94}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !90, file: !23, line: 171, type: !75)
!95 = !DISubprogram(name: "mpd_getstatus", scope: !23, file: !23, line: 177, type: !91, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*)* @mpd_getstatus, variables: !96)
!96 = !{!97}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !95, file: !23, line: 177, type: !75)
!98 = !DISubprogram(name: "mpd_getclamp", scope: !23, file: !23, line: 183, type: !86, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*)* @mpd_getclamp, variables: !99)
!99 = !{!100}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !98, file: !23, line: 183, type: !75)
!101 = !DISubprogram(name: "mpd_getcr", scope: !23, file: !23, line: 189, type: !86, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*)* @mpd_getcr, variables: !102)
!102 = !{!103}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !101, file: !23, line: 189, type: !75)
!104 = !DISubprogram(name: "mpd_qsetprec", scope: !23, file: !23, line: 196, type: !105, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*, i64)* @mpd_qsetprec, variables: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!40, !26, !17}
!107 = !{!108, !109}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !104, file: !23, line: 196, type: !26)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prec", arg: 2, scope: !104, file: !23, line: 196, type: !17)
!110 = !DISubprogram(name: "mpd_qsetemax", scope: !23, file: !23, line: 206, type: !105, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*, i64)* @mpd_qsetemax, variables: !111)
!111 = !{!112, !113}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !110, file: !23, line: 206, type: !26)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "emax", arg: 2, scope: !110, file: !23, line: 206, type: !17)
!114 = !DISubprogram(name: "mpd_qsetemin", scope: !23, file: !23, line: 216, type: !105, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*, i64)* @mpd_qsetemin, variables: !115)
!115 = !{!116, !117}
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !114, file: !23, line: 216, type: !26)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "emin", arg: 2, scope: !114, file: !23, line: 216, type: !17)
!118 = !DISubprogram(name: "mpd_qsetround", scope: !23, file: !23, line: 226, type: !67, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*, i32)* @mpd_qsetround, variables: !119)
!119 = !{!120, !121}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !118, file: !23, line: 226, type: !26)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "round", arg: 2, scope: !118, file: !23, line: 226, type: !40)
!122 = !DISubprogram(name: "mpd_qsettraps", scope: !23, file: !23, line: 236, type: !123, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*, i32)* @mpd_qsettraps, variables: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!40, !26, !34}
!125 = !{!126, !127}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !122, file: !23, line: 236, type: !26)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traps", arg: 2, scope: !122, file: !23, line: 236, type: !34)
!128 = !DISubprogram(name: "mpd_qsetstatus", scope: !23, file: !23, line: 246, type: !123, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*, i32)* @mpd_qsetstatus, variables: !129)
!129 = !{!130, !131}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !128, file: !23, line: 246, type: !26)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 2, scope: !128, file: !23, line: 246, type: !34)
!132 = !DISubprogram(name: "mpd_qsetclamp", scope: !23, file: !23, line: 256, type: !67, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*, i32)* @mpd_qsetclamp, variables: !133)
!133 = !{!134, !135}
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !132, file: !23, line: 256, type: !26)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !132, file: !23, line: 256, type: !40)
!136 = !DISubprogram(name: "mpd_qsetcr", scope: !23, file: !23, line: 266, type: !67, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mpd_context_t*, i32)* @mpd_qsetcr, variables: !137)
!137 = !{!138, !139}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !136, file: !23, line: 266, type: !26)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !136, file: !23, line: 266, type: !40)
!140 = !DISubprogram(name: "mpd_addstatus_raise", scope: !23, file: !23, line: 277, type: !141, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mpd_context_t*, i32)* @mpd_addstatus_raise, variables: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !26, !34}
!143 = !{!144, !145}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !140, file: !23, line: 277, type: !26)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 2, scope: !140, file: !23, line: 277, type: !34)
!146 = !{!147, !149}
!147 = !DIGlobalVariable(name: "mpd_traphandler", scope: !0, file: !23, line: 41, type: !148, isLocal: false, isDefinition: true, variable: void (%struct.mpd_context_t*)** @mpd_traphandler)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!149 = !DIGlobalVariable(name: "minalloc_is_set", scope: !45, file: !23, line: 51, type: !40, isLocal: true, isDefinition: true, variable: i32* @mpd_setminalloc.minalloc_is_set)
!150 = !{i32 2, !"Dwarf Version", i32 4}
!151 = !{i32 2, !"Debug Info Version", i32 3}
!152 = !{i32 1, !"PIC Level", i32 2}
!153 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!154 = !{!155, !155, i64 0}
!155 = !{!"any pointer", !156, i64 0}
!156 = !{!"omnipotent char", !157, i64 0}
!157 = !{!"Simple C/C++ TBAA"}
!158 = !DIExpression()
!159 = !DILocation(line: 36, column: 37, scope: !22)
!160 = !DILocation(line: 38, column: 5, scope: !22)
!161 = !DILocation(line: 39, column: 1, scope: !22)
!162 = !{!163, !163, i64 0}
!163 = !{!"long", !156, i64 0}
!164 = !DILocation(line: 49, column: 29, scope: !45)
!165 = !DILocation(line: 53, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !45, file: !23, line: 53, column: 9)
!167 = !{!168, !168, i64 0}
!168 = !{!"int", !156, i64 0}
!169 = !DILocation(line: 53, column: 9, scope: !45)
!170 = !DILocation(line: 54, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !23, line: 53, column: 26)
!172 = !DILocation(line: 54, column: 21, scope: !173)
!173 = !DILexicalBlockFile(scope: !174, file: !23, discriminator: 1)
!174 = distinct !DILexicalBlock(scope: !171, file: !23, line: 54, column: 12)
!175 = !DILocation(line: 54, column: 13, scope: !174)
!176 = !DILocation(line: 54, column: 155, scope: !174)
!177 = !DILocation(line: 54, column: 147, scope: !174)
!178 = !DILocation(line: 54, column: 252, scope: !174)
!179 = !DILocation(line: 54, column: 240, scope: !174)
!180 = !DILocation(line: 54, column: 261, scope: !174)
!181 = !DILocation(line: 56, column: 9, scope: !171)
!182 = !DILocation(line: 58, column: 9, scope: !183)
!183 = distinct !DILexicalBlock(scope: !45, file: !23, line: 58, column: 9)
!184 = !DILocation(line: 58, column: 11, scope: !183)
!185 = !DILocation(line: 58, column: 15, scope: !183)
!186 = !DILocation(line: 58, column: 18, scope: !187)
!187 = !DILexicalBlockFile(scope: !183, file: !23, discriminator: 1)
!188 = !DILocation(line: 58, column: 20, scope: !183)
!189 = !DILocation(line: 58, column: 9, scope: !45)
!190 = !DILocation(line: 59, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !23, line: 58, column: 26)
!192 = !DILocation(line: 59, column: 21, scope: !193)
!193 = !DILexicalBlockFile(scope: !194, file: !23, discriminator: 1)
!194 = distinct !DILexicalBlock(scope: !191, file: !23, line: 59, column: 12)
!195 = !DILocation(line: 59, column: 13, scope: !194)
!196 = !DILocation(line: 59, column: 153, scope: !194)
!197 = !DILocation(line: 59, column: 145, scope: !194)
!198 = !DILocation(line: 59, column: 208, scope: !194)
!199 = !DILocation(line: 59, column: 196, scope: !194)
!200 = !DILocation(line: 59, column: 217, scope: !194)
!201 = !DILocation(line: 60, column: 5, scope: !191)
!202 = !DILocation(line: 61, column: 20, scope: !45)
!203 = !DILocation(line: 61, column: 18, scope: !45)
!204 = !DILocation(line: 62, column: 21, scope: !45)
!205 = !DILocation(line: 63, column: 1, scope: !45)
!206 = !DILocation(line: 63, column: 1, scope: !207)
!207 = !DILexicalBlockFile(scope: !45, file: !23, discriminator: 1)
!208 = !DILocation(line: 66, column: 25, scope: !50)
!209 = !DILocation(line: 66, column: 42, scope: !50)
!210 = !DILocation(line: 68, column: 5, scope: !50)
!211 = !DILocation(line: 68, column: 17, scope: !50)
!212 = !DILocation(line: 70, column: 24, scope: !50)
!213 = !DILocation(line: 70, column: 5, scope: !50)
!214 = !DILocation(line: 72, column: 23, scope: !215)
!215 = distinct !DILexicalBlock(scope: !50, file: !23, line: 72, column: 9)
!216 = !DILocation(line: 72, column: 28, scope: !215)
!217 = !DILocation(line: 72, column: 10, scope: !215)
!218 = !DILocation(line: 72, column: 9, scope: !50)
!219 = !DILocation(line: 73, column: 29, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !23, line: 72, column: 35)
!221 = !DILocation(line: 73, column: 9, scope: !220)
!222 = !DILocation(line: 74, column: 9, scope: !220)
!223 = !DILocation(line: 77, column: 28, scope: !50)
!224 = !DILocation(line: 77, column: 32, scope: !50)
!225 = !DILocation(line: 77, column: 36, scope: !50)
!226 = !DILocation(line: 77, column: 40, scope: !50)
!227 = !DILocation(line: 77, column: 24, scope: !50)
!228 = !DILocation(line: 77, column: 20, scope: !50)
!229 = !DILocation(line: 78, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !50, file: !23, line: 78, column: 9)
!231 = !DILocation(line: 78, column: 24, scope: !230)
!232 = !DILocation(line: 78, column: 9, scope: !50)
!233 = !DILocation(line: 78, column: 44, scope: !234)
!234 = !DILexicalBlockFile(scope: !230, file: !23, discriminator: 1)
!235 = !DILocation(line: 78, column: 29, scope: !230)
!236 = !DILocation(line: 79, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !50, file: !23, line: 79, column: 9)
!238 = !DILocation(line: 79, column: 24, scope: !237)
!239 = !DILocation(line: 79, column: 9, scope: !50)
!240 = !DILocation(line: 79, column: 45, scope: !241)
!241 = !DILexicalBlockFile(scope: !237, file: !23, discriminator: 1)
!242 = !DILocation(line: 79, column: 30, scope: !237)
!243 = !DILocation(line: 81, column: 21, scope: !50)
!244 = !DILocation(line: 81, column: 5, scope: !50)
!245 = !DILocation(line: 82, column: 1, scope: !50)
!246 = !DILocation(line: 82, column: 1, scope: !247)
!247 = !DILexicalBlockFile(scope: !50, file: !23, discriminator: 1)
!248 = !DILocation(line: 99, column: 35, scope: !60)
!249 = !DILocation(line: 101, column: 5, scope: !60)
!250 = !DILocation(line: 101, column: 10, scope: !60)
!251 = !DILocation(line: 101, column: 14, scope: !60)
!252 = !{!253, !163, i64 0}
!253 = !{!"mpd_context_t", !163, i64 0, !163, i64 8, !163, i64 16, !168, i64 24, !168, i64 28, !168, i64 32, !168, i64 36, !168, i64 40, !168, i64 44}
!254 = !DILocation(line: 102, column: 5, scope: !60)
!255 = !DILocation(line: 102, column: 10, scope: !60)
!256 = !DILocation(line: 102, column: 14, scope: !60)
!257 = !{!253, !163, i64 8}
!258 = !DILocation(line: 103, column: 5, scope: !60)
!259 = !DILocation(line: 103, column: 10, scope: !60)
!260 = !DILocation(line: 103, column: 14, scope: !60)
!261 = !{!253, !163, i64 16}
!262 = !DILocation(line: 104, column: 5, scope: !60)
!263 = !DILocation(line: 104, column: 10, scope: !60)
!264 = !DILocation(line: 104, column: 15, scope: !60)
!265 = !{!253, !168, i64 36}
!266 = !DILocation(line: 105, column: 5, scope: !60)
!267 = !DILocation(line: 105, column: 10, scope: !60)
!268 = !DILocation(line: 105, column: 15, scope: !60)
!269 = !{!253, !168, i64 24}
!270 = !DILocation(line: 106, column: 5, scope: !60)
!271 = !DILocation(line: 106, column: 10, scope: !60)
!272 = !DILocation(line: 106, column: 16, scope: !60)
!273 = !{!253, !168, i64 28}
!274 = !DILocation(line: 107, column: 5, scope: !60)
!275 = !DILocation(line: 107, column: 10, scope: !60)
!276 = !DILocation(line: 107, column: 17, scope: !60)
!277 = !{!253, !168, i64 32}
!278 = !DILocation(line: 108, column: 5, scope: !60)
!279 = !DILocation(line: 108, column: 10, scope: !60)
!280 = !DILocation(line: 108, column: 15, scope: !60)
!281 = !{!253, !168, i64 40}
!282 = !DILocation(line: 109, column: 5, scope: !60)
!283 = !DILocation(line: 109, column: 10, scope: !60)
!284 = !DILocation(line: 109, column: 15, scope: !60)
!285 = !{!253, !168, i64 44}
!286 = !DILocation(line: 110, column: 1, scope: !60)
!287 = !DILocation(line: 196, column: 29, scope: !104)
!288 = !DILocation(line: 196, column: 46, scope: !104)
!289 = !DILocation(line: 198, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !104, file: !23, line: 198, column: 9)
!291 = !DILocation(line: 198, column: 14, scope: !290)
!292 = !DILocation(line: 198, column: 19, scope: !290)
!293 = !DILocation(line: 198, column: 22, scope: !294)
!294 = !DILexicalBlockFile(scope: !290, file: !23, discriminator: 1)
!295 = !DILocation(line: 198, column: 27, scope: !290)
!296 = !DILocation(line: 198, column: 9, scope: !104)
!297 = !DILocation(line: 199, column: 9, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !23, line: 198, column: 51)
!299 = !DILocation(line: 201, column: 17, scope: !104)
!300 = !DILocation(line: 201, column: 5, scope: !104)
!301 = !DILocation(line: 201, column: 10, scope: !104)
!302 = !DILocation(line: 201, column: 15, scope: !104)
!303 = !DILocation(line: 202, column: 5, scope: !104)
!304 = !DILocation(line: 203, column: 1, scope: !104)
!305 = !DILocation(line: 277, column: 36, scope: !140)
!306 = !DILocation(line: 277, column: 50, scope: !140)
!307 = !DILocation(line: 279, column: 20, scope: !140)
!308 = !DILocation(line: 279, column: 5, scope: !140)
!309 = !DILocation(line: 279, column: 10, scope: !140)
!310 = !DILocation(line: 279, column: 17, scope: !140)
!311 = !DILocation(line: 280, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !140, file: !23, line: 280, column: 9)
!313 = !DILocation(line: 280, column: 15, scope: !312)
!314 = !DILocation(line: 280, column: 20, scope: !312)
!315 = !DILocation(line: 280, column: 14, scope: !312)
!316 = !DILocation(line: 280, column: 9, scope: !140)
!317 = !DILocation(line: 281, column: 25, scope: !318)
!318 = distinct !DILexicalBlock(scope: !312, file: !23, line: 280, column: 27)
!319 = !DILocation(line: 281, column: 31, scope: !318)
!320 = !DILocation(line: 281, column: 36, scope: !318)
!321 = !DILocation(line: 281, column: 30, scope: !318)
!322 = !DILocation(line: 281, column: 9, scope: !318)
!323 = !DILocation(line: 281, column: 14, scope: !318)
!324 = !DILocation(line: 281, column: 22, scope: !318)
!325 = !DILocation(line: 282, column: 9, scope: !318)
!326 = !DILocation(line: 282, column: 25, scope: !318)
!327 = !DILocation(line: 283, column: 5, scope: !318)
!328 = !DILocation(line: 284, column: 1, scope: !140)
!329 = !DILocation(line: 85, column: 31, scope: !57)
!330 = !DILocation(line: 87, column: 5, scope: !57)
!331 = !DILocation(line: 87, column: 10, scope: !57)
!332 = !DILocation(line: 87, column: 14, scope: !57)
!333 = !DILocation(line: 88, column: 5, scope: !57)
!334 = !DILocation(line: 88, column: 10, scope: !57)
!335 = !DILocation(line: 88, column: 14, scope: !57)
!336 = !DILocation(line: 89, column: 5, scope: !57)
!337 = !DILocation(line: 89, column: 10, scope: !57)
!338 = !DILocation(line: 89, column: 14, scope: !57)
!339 = !DILocation(line: 90, column: 5, scope: !57)
!340 = !DILocation(line: 90, column: 10, scope: !57)
!341 = !DILocation(line: 90, column: 15, scope: !57)
!342 = !DILocation(line: 91, column: 5, scope: !57)
!343 = !DILocation(line: 91, column: 10, scope: !57)
!344 = !DILocation(line: 91, column: 15, scope: !57)
!345 = !DILocation(line: 92, column: 5, scope: !57)
!346 = !DILocation(line: 92, column: 10, scope: !57)
!347 = !DILocation(line: 92, column: 16, scope: !57)
!348 = !DILocation(line: 93, column: 5, scope: !57)
!349 = !DILocation(line: 93, column: 10, scope: !57)
!350 = !DILocation(line: 93, column: 17, scope: !57)
!351 = !DILocation(line: 94, column: 5, scope: !57)
!352 = !DILocation(line: 94, column: 10, scope: !57)
!353 = !DILocation(line: 94, column: 15, scope: !57)
!354 = !DILocation(line: 95, column: 5, scope: !57)
!355 = !DILocation(line: 95, column: 10, scope: !57)
!356 = !DILocation(line: 95, column: 15, scope: !57)
!357 = !DILocation(line: 96, column: 1, scope: !57)
!358 = !DILocation(line: 113, column: 33, scope: !63)
!359 = !DILocation(line: 115, column: 5, scope: !63)
!360 = !DILocation(line: 115, column: 10, scope: !63)
!361 = !DILocation(line: 115, column: 14, scope: !63)
!362 = !DILocation(line: 116, column: 5, scope: !63)
!363 = !DILocation(line: 116, column: 10, scope: !63)
!364 = !DILocation(line: 116, column: 14, scope: !63)
!365 = !DILocation(line: 117, column: 5, scope: !63)
!366 = !DILocation(line: 117, column: 10, scope: !63)
!367 = !DILocation(line: 117, column: 14, scope: !63)
!368 = !DILocation(line: 118, column: 5, scope: !63)
!369 = !DILocation(line: 118, column: 10, scope: !63)
!370 = !DILocation(line: 118, column: 15, scope: !63)
!371 = !DILocation(line: 119, column: 5, scope: !63)
!372 = !DILocation(line: 119, column: 10, scope: !63)
!373 = !DILocation(line: 119, column: 15, scope: !63)
!374 = !DILocation(line: 120, column: 5, scope: !63)
!375 = !DILocation(line: 120, column: 10, scope: !63)
!376 = !DILocation(line: 120, column: 16, scope: !63)
!377 = !DILocation(line: 121, column: 5, scope: !63)
!378 = !DILocation(line: 121, column: 10, scope: !63)
!379 = !DILocation(line: 121, column: 17, scope: !63)
!380 = !DILocation(line: 122, column: 5, scope: !63)
!381 = !DILocation(line: 122, column: 10, scope: !63)
!382 = !DILocation(line: 122, column: 15, scope: !63)
!383 = !DILocation(line: 123, column: 5, scope: !63)
!384 = !DILocation(line: 123, column: 10, scope: !63)
!385 = !DILocation(line: 123, column: 15, scope: !63)
!386 = !DILocation(line: 124, column: 1, scope: !63)
!387 = !DILocation(line: 127, column: 33, scope: !66)
!388 = !DILocation(line: 127, column: 42, scope: !66)
!389 = !DILocation(line: 129, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !66, file: !23, line: 129, column: 9)
!391 = !DILocation(line: 129, column: 14, scope: !390)
!392 = !DILocation(line: 129, column: 19, scope: !390)
!393 = !DILocation(line: 129, column: 22, scope: !394)
!394 = !DILexicalBlockFile(scope: !390, file: !23, discriminator: 1)
!395 = !DILocation(line: 129, column: 27, scope: !390)
!396 = !DILocation(line: 129, column: 33, scope: !390)
!397 = !DILocation(line: 129, column: 36, scope: !398)
!398 = !DILexicalBlockFile(scope: !390, file: !23, discriminator: 2)
!399 = !DILocation(line: 129, column: 41, scope: !390)
!400 = !DILocation(line: 129, column: 9, scope: !66)
!401 = !DILocation(line: 130, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !390, file: !23, line: 129, column: 47)
!403 = !DILocation(line: 133, column: 22, scope: !66)
!404 = !DILocation(line: 133, column: 26, scope: !66)
!405 = !DILocation(line: 133, column: 19, scope: !66)
!406 = !DILocation(line: 133, column: 31, scope: !66)
!407 = !DILocation(line: 133, column: 17, scope: !66)
!408 = !DILocation(line: 133, column: 5, scope: !66)
!409 = !DILocation(line: 133, column: 10, scope: !66)
!410 = !DILocation(line: 133, column: 15, scope: !66)
!411 = !DILocation(line: 134, column: 39, scope: !66)
!412 = !DILocation(line: 134, column: 43, scope: !66)
!413 = !DILocation(line: 134, column: 46, scope: !66)
!414 = !DILocation(line: 134, column: 36, scope: !66)
!415 = !DILocation(line: 134, column: 19, scope: !66)
!416 = !DILocation(line: 134, column: 5, scope: !66)
!417 = !DILocation(line: 134, column: 10, scope: !66)
!418 = !DILocation(line: 134, column: 15, scope: !66)
!419 = !DILocation(line: 135, column: 21, scope: !66)
!420 = !DILocation(line: 135, column: 26, scope: !66)
!421 = !DILocation(line: 135, column: 19, scope: !66)
!422 = !DILocation(line: 135, column: 5, scope: !66)
!423 = !DILocation(line: 135, column: 10, scope: !66)
!424 = !DILocation(line: 135, column: 15, scope: !66)
!425 = !DILocation(line: 136, column: 5, scope: !66)
!426 = !DILocation(line: 136, column: 10, scope: !66)
!427 = !DILocation(line: 136, column: 15, scope: !66)
!428 = !DILocation(line: 137, column: 5, scope: !66)
!429 = !DILocation(line: 137, column: 10, scope: !66)
!430 = !DILocation(line: 137, column: 15, scope: !66)
!431 = !DILocation(line: 138, column: 5, scope: !66)
!432 = !DILocation(line: 138, column: 10, scope: !66)
!433 = !DILocation(line: 138, column: 16, scope: !66)
!434 = !DILocation(line: 139, column: 5, scope: !66)
!435 = !DILocation(line: 139, column: 10, scope: !66)
!436 = !DILocation(line: 139, column: 17, scope: !66)
!437 = !DILocation(line: 140, column: 5, scope: !66)
!438 = !DILocation(line: 140, column: 10, scope: !66)
!439 = !DILocation(line: 140, column: 15, scope: !66)
!440 = !DILocation(line: 141, column: 5, scope: !66)
!441 = !DILocation(line: 141, column: 10, scope: !66)
!442 = !DILocation(line: 141, column: 15, scope: !66)
!443 = !DILocation(line: 143, column: 5, scope: !66)
!444 = !DILocation(line: 144, column: 1, scope: !66)
!445 = !DILocation(line: 147, column: 34, scope: !72)
!446 = !DILocation(line: 149, column: 12, scope: !72)
!447 = !DILocation(line: 149, column: 17, scope: !72)
!448 = !DILocation(line: 149, column: 5, scope: !72)
!449 = !DILocation(line: 153, column: 34, scope: !79)
!450 = !DILocation(line: 155, column: 12, scope: !79)
!451 = !DILocation(line: 155, column: 17, scope: !79)
!452 = !DILocation(line: 155, column: 5, scope: !79)
!453 = !DILocation(line: 159, column: 34, scope: !82)
!454 = !DILocation(line: 161, column: 12, scope: !82)
!455 = !DILocation(line: 161, column: 17, scope: !82)
!456 = !DILocation(line: 161, column: 5, scope: !82)
!457 = !DILocation(line: 165, column: 35, scope: !85)
!458 = !DILocation(line: 167, column: 12, scope: !85)
!459 = !DILocation(line: 167, column: 17, scope: !85)
!460 = !DILocation(line: 167, column: 5, scope: !85)
!461 = !DILocation(line: 171, column: 35, scope: !90)
!462 = !DILocation(line: 173, column: 12, scope: !90)
!463 = !DILocation(line: 173, column: 17, scope: !90)
!464 = !DILocation(line: 173, column: 5, scope: !90)
!465 = !DILocation(line: 177, column: 36, scope: !95)
!466 = !DILocation(line: 179, column: 12, scope: !95)
!467 = !DILocation(line: 179, column: 17, scope: !95)
!468 = !DILocation(line: 179, column: 5, scope: !95)
!469 = !DILocation(line: 183, column: 35, scope: !98)
!470 = !DILocation(line: 185, column: 12, scope: !98)
!471 = !DILocation(line: 185, column: 17, scope: !98)
!472 = !DILocation(line: 185, column: 5, scope: !98)
!473 = !DILocation(line: 189, column: 32, scope: !101)
!474 = !DILocation(line: 191, column: 12, scope: !101)
!475 = !DILocation(line: 191, column: 17, scope: !101)
!476 = !DILocation(line: 191, column: 5, scope: !101)
!477 = !DILocation(line: 206, column: 29, scope: !110)
!478 = !DILocation(line: 206, column: 46, scope: !110)
!479 = !DILocation(line: 208, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !110, file: !23, line: 208, column: 9)
!481 = !DILocation(line: 208, column: 14, scope: !480)
!482 = !DILocation(line: 208, column: 18, scope: !480)
!483 = !DILocation(line: 208, column: 21, scope: !484)
!484 = !DILexicalBlockFile(scope: !480, file: !23, discriminator: 1)
!485 = !DILocation(line: 208, column: 26, scope: !480)
!486 = !DILocation(line: 208, column: 9, scope: !110)
!487 = !DILocation(line: 209, column: 9, scope: !488)
!488 = distinct !DILexicalBlock(scope: !480, file: !23, line: 208, column: 50)
!489 = !DILocation(line: 211, column: 17, scope: !110)
!490 = !DILocation(line: 211, column: 5, scope: !110)
!491 = !DILocation(line: 211, column: 10, scope: !110)
!492 = !DILocation(line: 211, column: 15, scope: !110)
!493 = !DILocation(line: 212, column: 5, scope: !110)
!494 = !DILocation(line: 213, column: 1, scope: !110)
!495 = !DILocation(line: 216, column: 29, scope: !114)
!496 = !DILocation(line: 216, column: 46, scope: !114)
!497 = !DILocation(line: 218, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !114, file: !23, line: 218, column: 9)
!499 = !DILocation(line: 218, column: 14, scope: !498)
!500 = !DILocation(line: 218, column: 18, scope: !498)
!501 = !DILocation(line: 218, column: 21, scope: !502)
!502 = !DILexicalBlockFile(scope: !498, file: !23, discriminator: 1)
!503 = !DILocation(line: 218, column: 26, scope: !498)
!504 = !DILocation(line: 218, column: 9, scope: !114)
!505 = !DILocation(line: 219, column: 9, scope: !506)
!506 = distinct !DILexicalBlock(scope: !498, file: !23, line: 218, column: 53)
!507 = !DILocation(line: 221, column: 17, scope: !114)
!508 = !DILocation(line: 221, column: 5, scope: !114)
!509 = !DILocation(line: 221, column: 10, scope: !114)
!510 = !DILocation(line: 221, column: 15, scope: !114)
!511 = !DILocation(line: 222, column: 5, scope: !114)
!512 = !DILocation(line: 223, column: 1, scope: !114)
!513 = !DILocation(line: 226, column: 30, scope: !118)
!514 = !DILocation(line: 226, column: 39, scope: !118)
!515 = !DILocation(line: 228, column: 16, scope: !516)
!516 = distinct !DILexicalBlock(scope: !118, file: !23, line: 228, column: 9)
!517 = !DILocation(line: 228, column: 13, scope: !516)
!518 = !DILocation(line: 228, column: 22, scope: !516)
!519 = !DILocation(line: 228, column: 25, scope: !520)
!520 = !DILexicalBlockFile(scope: !516, file: !23, discriminator: 1)
!521 = !DILocation(line: 228, column: 31, scope: !516)
!522 = !DILocation(line: 228, column: 9, scope: !118)
!523 = !DILocation(line: 229, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !516, file: !23, line: 228, column: 51)
!525 = !DILocation(line: 231, column: 18, scope: !118)
!526 = !DILocation(line: 231, column: 5, scope: !118)
!527 = !DILocation(line: 231, column: 10, scope: !118)
!528 = !DILocation(line: 231, column: 16, scope: !118)
!529 = !DILocation(line: 232, column: 5, scope: !118)
!530 = !DILocation(line: 233, column: 1, scope: !118)
!531 = !DILocation(line: 236, column: 30, scope: !122)
!532 = !DILocation(line: 236, column: 44, scope: !122)
!533 = !DILocation(line: 238, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !122, file: !23, line: 238, column: 9)
!535 = !DILocation(line: 238, column: 15, scope: !534)
!536 = !DILocation(line: 238, column: 9, scope: !122)
!537 = !DILocation(line: 239, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !23, line: 238, column: 35)
!539 = !DILocation(line: 241, column: 18, scope: !122)
!540 = !DILocation(line: 241, column: 5, scope: !122)
!541 = !DILocation(line: 241, column: 10, scope: !122)
!542 = !DILocation(line: 241, column: 16, scope: !122)
!543 = !DILocation(line: 242, column: 5, scope: !122)
!544 = !DILocation(line: 243, column: 1, scope: !122)
!545 = !DILocation(line: 246, column: 31, scope: !128)
!546 = !DILocation(line: 246, column: 45, scope: !128)
!547 = !DILocation(line: 248, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !128, file: !23, line: 248, column: 9)
!549 = !DILocation(line: 248, column: 15, scope: !548)
!550 = !DILocation(line: 248, column: 9, scope: !128)
!551 = !DILocation(line: 249, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !23, line: 248, column: 35)
!553 = !DILocation(line: 251, column: 19, scope: !128)
!554 = !DILocation(line: 251, column: 5, scope: !128)
!555 = !DILocation(line: 251, column: 10, scope: !128)
!556 = !DILocation(line: 251, column: 17, scope: !128)
!557 = !DILocation(line: 252, column: 5, scope: !128)
!558 = !DILocation(line: 253, column: 1, scope: !128)
!559 = !DILocation(line: 256, column: 30, scope: !132)
!560 = !DILocation(line: 256, column: 39, scope: !132)
!561 = !DILocation(line: 258, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !132, file: !23, line: 258, column: 9)
!563 = !DILocation(line: 258, column: 11, scope: !562)
!564 = !DILocation(line: 258, column: 16, scope: !562)
!565 = !DILocation(line: 258, column: 19, scope: !566)
!566 = !DILexicalBlockFile(scope: !562, file: !23, discriminator: 1)
!567 = !DILocation(line: 258, column: 21, scope: !562)
!568 = !DILocation(line: 258, column: 9, scope: !132)
!569 = !DILocation(line: 259, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !562, file: !23, line: 258, column: 27)
!571 = !DILocation(line: 261, column: 18, scope: !132)
!572 = !DILocation(line: 261, column: 5, scope: !132)
!573 = !DILocation(line: 261, column: 10, scope: !132)
!574 = !DILocation(line: 261, column: 16, scope: !132)
!575 = !DILocation(line: 262, column: 5, scope: !132)
!576 = !DILocation(line: 263, column: 1, scope: !132)
!577 = !DILocation(line: 266, column: 27, scope: !136)
!578 = !DILocation(line: 266, column: 36, scope: !136)
!579 = !DILocation(line: 268, column: 9, scope: !580)
!580 = distinct !DILexicalBlock(scope: !136, file: !23, line: 268, column: 9)
!581 = !DILocation(line: 268, column: 11, scope: !580)
!582 = !DILocation(line: 268, column: 16, scope: !580)
!583 = !DILocation(line: 268, column: 19, scope: !584)
!584 = !DILexicalBlockFile(scope: !580, file: !23, discriminator: 1)
!585 = !DILocation(line: 268, column: 21, scope: !580)
!586 = !DILocation(line: 268, column: 9, scope: !136)
!587 = !DILocation(line: 269, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !580, file: !23, line: 268, column: 27)
!589 = !DILocation(line: 271, column: 18, scope: !136)
!590 = !DILocation(line: 271, column: 5, scope: !136)
!591 = !DILocation(line: 271, column: 10, scope: !136)
!592 = !DILocation(line: 271, column: 16, scope: !136)
!593 = !DILocation(line: 272, column: 5, scope: !136)
!594 = !DILocation(line: 273, column: 1, scope: !136)
