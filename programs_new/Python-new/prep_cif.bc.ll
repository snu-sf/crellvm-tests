; ModuleID = 'irs-onlybc/prep_cif.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffi_cif = type { i32, i32, %struct._ffi_type**, %struct._ffi_type*, i32, i32 }
%struct._ffi_type = type { i64, i16, i16, %struct._ffi_type** }
%struct.ffi_closure = type { [24 x i8], %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8* }

; Function Attrs: uwtable
define hidden i32 @ffi_prep_cif_core(%struct.ffi_cif* %cif, i32 %abi, i32 %isvariadic, i32 %nfixedargs, i32 %ntotalargs, %struct._ffi_type* %rtype, %struct._ffi_type** %atypes) #0 {
entry:
  %retval = alloca i32, align 4
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %abi.addr = alloca i32, align 4
  %isvariadic.addr = alloca i32, align 4
  %nfixedargs.addr = alloca i32, align 4
  %ntotalargs.addr = alloca i32, align 4
  %rtype.addr = alloca %struct._ffi_type*, align 8
  %atypes.addr = alloca %struct._ffi_type**, align 8
  %bytes = alloca i32, align 4
  %i = alloca i32, align 4
  %ptr = alloca %struct._ffi_type**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !53, metadata !120), !dbg !121
  store i32 %abi, i32* %abi.addr, align 4, !tbaa !122
  call void @llvm.dbg.declare(metadata i32* %abi.addr, metadata !54, metadata !120), !dbg !123
  store i32 %isvariadic, i32* %isvariadic.addr, align 4, !tbaa !124
  call void @llvm.dbg.declare(metadata i32* %isvariadic.addr, metadata !55, metadata !120), !dbg !126
  store i32 %nfixedargs, i32* %nfixedargs.addr, align 4, !tbaa !124
  call void @llvm.dbg.declare(metadata i32* %nfixedargs.addr, metadata !56, metadata !120), !dbg !127
  store i32 %ntotalargs, i32* %ntotalargs.addr, align 4, !tbaa !124
  call void @llvm.dbg.declare(metadata i32* %ntotalargs.addr, metadata !57, metadata !120), !dbg !128
  store %struct._ffi_type* %rtype, %struct._ffi_type** %rtype.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %rtype.addr, metadata !58, metadata !120), !dbg !129
  store %struct._ffi_type** %atypes, %struct._ffi_type*** %atypes.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %atypes.addr, metadata !59, metadata !120), !dbg !130
  %0 = bitcast i32* %bytes to i8*, !dbg !131
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %bytes, metadata !60, metadata !120), !dbg !132
  store i32 0, i32* %bytes, align 4, !dbg !132, !tbaa !124
  %1 = bitcast i32* %i to i8*, !dbg !133
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %i, metadata !61, metadata !120), !dbg !134
  %2 = bitcast %struct._ffi_type*** %ptr to i8*, !dbg !135
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !135
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %ptr, metadata !62, metadata !120), !dbg !136
  %3 = load i32, i32* %abi.addr, align 4, !dbg !137, !tbaa !122
  %cmp = icmp ugt i32 %3, 0, !dbg !139
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !140

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %abi.addr, align 4, !dbg !141, !tbaa !122
  %cmp1 = icmp ult i32 %4, 3, !dbg !143
  br i1 %cmp1, label %if.end, label %if.then, !dbg !144

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 2, i32* %retval, !dbg !145
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !145

if.end:                                           ; preds = %land.lhs.true
  %5 = load i32, i32* %abi.addr, align 4, !dbg !146, !tbaa !122
  %6 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !147, !tbaa !116
  %abi2 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %6, i32 0, i32 0, !dbg !148
  store i32 %5, i32* %abi2, align 4, !dbg !149, !tbaa !150
  %7 = load %struct._ffi_type**, %struct._ffi_type*** %atypes.addr, align 8, !dbg !152, !tbaa !116
  %8 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !153, !tbaa !116
  %arg_types = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %8, i32 0, i32 2, !dbg !154
  store %struct._ffi_type** %7, %struct._ffi_type*** %arg_types, align 8, !dbg !155, !tbaa !156
  %9 = load i32, i32* %ntotalargs.addr, align 4, !dbg !157, !tbaa !124
  %10 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !158, !tbaa !116
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %10, i32 0, i32 1, !dbg !159
  store i32 %9, i32* %nargs, align 4, !dbg !160, !tbaa !161
  %11 = load %struct._ffi_type*, %struct._ffi_type** %rtype.addr, align 8, !dbg !162, !tbaa !116
  %12 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !163, !tbaa !116
  %rtype3 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %12, i32 0, i32 3, !dbg !164
  store %struct._ffi_type* %11, %struct._ffi_type** %rtype3, align 8, !dbg !165, !tbaa !166
  %13 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !167, !tbaa !116
  %flags = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %13, i32 0, i32 5, !dbg !168
  store i32 0, i32* %flags, align 4, !dbg !169, !tbaa !170
  %14 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !171, !tbaa !116
  %rtype4 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %14, i32 0, i32 3, !dbg !173
  %15 = load %struct._ffi_type*, %struct._ffi_type** %rtype4, align 8, !dbg !173, !tbaa !166
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %15, i32 0, i32 0, !dbg !174
  %16 = load i64, i64* %size, align 8, !dbg !174, !tbaa !175
  %cmp5 = icmp eq i64 %16, 0, !dbg !179
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10, !dbg !180

land.lhs.true.6:                                  ; preds = %if.end
  %17 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !181, !tbaa !116
  %rtype7 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %17, i32 0, i32 3, !dbg !183
  %18 = load %struct._ffi_type*, %struct._ffi_type** %rtype7, align 8, !dbg !183, !tbaa !166
  %call = call i32 @initialize_aggregate(%struct._ffi_type* %18), !dbg !184
  %cmp8 = icmp ne i32 %call, 0, !dbg !185
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !186

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* %retval, !dbg !187
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !187

if.end.10:                                        ; preds = %land.lhs.true.6, %if.end
  %19 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !188, !tbaa !116
  %arg_types11 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %19, i32 0, i32 2, !dbg !190
  %20 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types11, align 8, !dbg !190, !tbaa !156
  store %struct._ffi_type** %20, %struct._ffi_type*** %ptr, align 8, !dbg !191, !tbaa !116
  %21 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !192, !tbaa !116
  %nargs12 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %21, i32 0, i32 1, !dbg !193
  %22 = load i32, i32* %nargs12, align 4, !dbg !193, !tbaa !161
  store i32 %22, i32* %i, align 4, !dbg !194, !tbaa !124
  br label %for.cond, !dbg !195

for.cond:                                         ; preds = %for.inc, %if.end.10
  %23 = load i32, i32* %i, align 4, !dbg !196, !tbaa !124
  %cmp13 = icmp ugt i32 %23, 0, !dbg !200
  br i1 %cmp13, label %for.body, label %for.end, !dbg !201

for.body:                                         ; preds = %for.cond
  %24 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !202, !tbaa !116
  %25 = load %struct._ffi_type*, %struct._ffi_type** %24, align 8, !dbg !205, !tbaa !116
  %size14 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %25, i32 0, i32 0, !dbg !206
  %26 = load i64, i64* %size14, align 8, !dbg !206, !tbaa !175
  %cmp15 = icmp eq i64 %26, 0, !dbg !207
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.20, !dbg !208

land.lhs.true.16:                                 ; preds = %for.body
  %27 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !209, !tbaa !116
  %28 = load %struct._ffi_type*, %struct._ffi_type** %27, align 8, !dbg !211, !tbaa !116
  %call17 = call i32 @initialize_aggregate(%struct._ffi_type* %28), !dbg !212
  %cmp18 = icmp ne i32 %call17, 0, !dbg !213
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !214

if.then.19:                                       ; preds = %land.lhs.true.16
  store i32 1, i32* %retval, !dbg !215
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !215

if.end.20:                                        ; preds = %land.lhs.true.16, %for.body
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %if.end.20
  %29 = load i32, i32* %i, align 4, !dbg !217, !tbaa !124
  %dec = add i32 %29, -1, !dbg !217
  store i32 %dec, i32* %i, align 4, !dbg !217, !tbaa !124
  %30 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !218, !tbaa !116
  %incdec.ptr = getelementptr %struct._ffi_type*, %struct._ffi_type** %30, i32 1, !dbg !218
  store %struct._ffi_type** %incdec.ptr, %struct._ffi_type*** %ptr, align 8, !dbg !218, !tbaa !116
  br label %for.cond, !dbg !219

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %bytes, align 4, !dbg !220, !tbaa !124
  %32 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !221, !tbaa !116
  %bytes21 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %32, i32 0, i32 4, !dbg !222
  store i32 %31, i32* %bytes21, align 4, !dbg !223, !tbaa !224
  %33 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !225, !tbaa !116
  %call22 = call i32 @ffi_prep_cif_machdep(%struct.ffi_cif* %33), !dbg !226
  store i32 %call22, i32* %retval, !dbg !227
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !227

cleanup:                                          ; preds = %for.end, %if.then.19, %if.then.9, %if.then
  %34 = bitcast %struct._ffi_type*** %ptr to i8*, !dbg !228
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !228
  %35 = bitcast i32* %i to i8*, !dbg !228
  call void @llvm.lifetime.end(i64 4, i8* %35) #2, !dbg !228
  %36 = bitcast i32* %bytes to i8*, !dbg !228
  call void @llvm.lifetime.end(i64 4, i8* %36) #2, !dbg !228
  %37 = load i32, i32* %retval, !dbg !228
  ret i32 %37, !dbg !228
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: uwtable
define internal i32 @initialize_aggregate(%struct._ffi_type* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct._ffi_type*, align 8
  %ptr = alloca %struct._ffi_type**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._ffi_type* %arg, %struct._ffi_type** %arg.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %arg.addr, metadata !110, metadata !120), !dbg !229
  %0 = bitcast %struct._ffi_type*** %ptr to i8*, !dbg !230
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !230
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %ptr, metadata !111, metadata !120), !dbg !231
  %1 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !232, !tbaa !116
  %cmp = icmp eq %struct._ffi_type* %1, null, !dbg !234
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !235

lor.rhs:                                          ; preds = %entry
  %2 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !236, !tbaa !116
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %2, i32 0, i32 3, !dbg !238
  %3 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8, !dbg !238, !tbaa !239
  %cmp1 = icmp eq %struct._ffi_type** %3, null, !dbg !240
  br label %lor.end, !dbg !235

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !241
  %cmp2 = icmp ne i32 %lor.ext, 0, !dbg !244
  %conv = zext i1 %cmp2 to i32, !dbg !244
  %conv3 = sext i32 %conv to i64, !dbg !245
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !246
  %tobool = icmp ne i64 %expval, 0, !dbg !246
  br i1 %tobool, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %lor.end
  store i32 1, i32* %retval, !dbg !248
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !248

if.end:                                           ; preds = %lor.end
  %5 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !249, !tbaa !116
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %5, i32 0, i32 0, !dbg !250
  store i64 0, i64* %size, align 8, !dbg !251, !tbaa !175
  %6 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !252, !tbaa !116
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %6, i32 0, i32 1, !dbg !253
  store i16 0, i16* %alignment, align 2, !dbg !254, !tbaa !255
  %7 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !256, !tbaa !116
  %elements4 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %7, i32 0, i32 3, !dbg !257
  %8 = load %struct._ffi_type**, %struct._ffi_type*** %elements4, align 8, !dbg !257, !tbaa !239
  %arrayidx = getelementptr %struct._ffi_type*, %struct._ffi_type** %8, i64 0, !dbg !256
  store %struct._ffi_type** %arrayidx, %struct._ffi_type*** %ptr, align 8, !dbg !258, !tbaa !116
  %9 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !259, !tbaa !116
  %cmp5 = icmp eq %struct._ffi_type** %9, null, !dbg !261
  %conv6 = zext i1 %cmp5 to i32, !dbg !261
  %cmp7 = icmp ne i32 %conv6, 0, !dbg !262
  %conv8 = zext i1 %cmp7 to i32, !dbg !262
  %conv9 = sext i32 %conv8 to i64, !dbg !263
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !264
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !264
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !265

if.then.12:                                       ; preds = %if.end
  store i32 1, i32* %retval, !dbg !266
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !266

if.end.13:                                        ; preds = %if.end
  br label %while.cond, !dbg !267

while.cond:                                       ; preds = %cond.end, %if.end.13
  %10 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !268, !tbaa !116
  %11 = load %struct._ffi_type*, %struct._ffi_type** %10, align 8, !dbg !271, !tbaa !116
  %cmp14 = icmp ne %struct._ffi_type* %11, null, !dbg !272
  br i1 %cmp14, label %while.body, label %while.end, !dbg !267

while.body:                                       ; preds = %while.cond
  %12 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !273, !tbaa !116
  %13 = load %struct._ffi_type*, %struct._ffi_type** %12, align 8, !dbg !276, !tbaa !116
  %size16 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %13, i32 0, i32 0, !dbg !277
  %14 = load i64, i64* %size16, align 8, !dbg !277, !tbaa !175
  %cmp17 = icmp eq i64 %14, 0, !dbg !278
  br i1 %cmp17, label %land.rhs, label %land.end, !dbg !279

land.rhs:                                         ; preds = %while.body
  %15 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !280, !tbaa !116
  %16 = load %struct._ffi_type*, %struct._ffi_type** %15, align 8, !dbg !282, !tbaa !116
  %call = call i32 @initialize_aggregate(%struct._ffi_type* %16), !dbg !283
  %cmp19 = icmp ne i32 %call, 0, !dbg !284
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.body
  %17 = phi i1 [ false, %while.body ], [ %cmp19, %land.rhs ]
  %land.ext = zext i1 %17 to i32, !dbg !285
  %cmp21 = icmp ne i32 %land.ext, 0, !dbg !287
  %conv22 = zext i1 %cmp21 to i32, !dbg !287
  %conv23 = sext i32 %conv22 to i64, !dbg !288
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !289
  %tobool25 = icmp ne i64 %expval24, 0, !dbg !289
  br i1 %tobool25, label %if.then.26, label %if.end.27, !dbg !290

if.then.26:                                       ; preds = %land.end
  store i32 1, i32* %retval, !dbg !291
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !291

if.end.27:                                        ; preds = %land.end
  %18 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !292, !tbaa !116
  %size28 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %18, i32 0, i32 0, !dbg !293
  %19 = load i64, i64* %size28, align 8, !dbg !293, !tbaa !175
  %sub = sub i64 %19, 1, !dbg !294
  %20 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !295, !tbaa !116
  %21 = load %struct._ffi_type*, %struct._ffi_type** %20, align 8, !dbg !296, !tbaa !116
  %alignment29 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %21, i32 0, i32 1, !dbg !297
  %22 = load i16, i16* %alignment29, align 2, !dbg !297, !tbaa !255
  %conv30 = zext i16 %22 to i32, !dbg !298
  %sub31 = sub i32 %conv30, 1, !dbg !299
  %conv32 = sext i32 %sub31 to i64, !dbg !300
  %or = or i64 %sub, %conv32, !dbg !301
  %add = add i64 %or, 1, !dbg !302
  %23 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !303, !tbaa !116
  %size33 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %23, i32 0, i32 0, !dbg !304
  store i64 %add, i64* %size33, align 8, !dbg !305, !tbaa !175
  %24 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !306, !tbaa !116
  %25 = load %struct._ffi_type*, %struct._ffi_type** %24, align 8, !dbg !307, !tbaa !116
  %size34 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %25, i32 0, i32 0, !dbg !308
  %26 = load i64, i64* %size34, align 8, !dbg !308, !tbaa !175
  %27 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !309, !tbaa !116
  %size35 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %27, i32 0, i32 0, !dbg !310
  %28 = load i64, i64* %size35, align 8, !dbg !311, !tbaa !175
  %add36 = add i64 %28, %26, !dbg !311
  store i64 %add36, i64* %size35, align 8, !dbg !311, !tbaa !175
  %29 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !312, !tbaa !116
  %alignment37 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %29, i32 0, i32 1, !dbg !313
  %30 = load i16, i16* %alignment37, align 2, !dbg !313, !tbaa !255
  %conv38 = zext i16 %30 to i32, !dbg !312
  %31 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !314, !tbaa !116
  %32 = load %struct._ffi_type*, %struct._ffi_type** %31, align 8, !dbg !315, !tbaa !116
  %alignment39 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %32, i32 0, i32 1, !dbg !316
  %33 = load i16, i16* %alignment39, align 2, !dbg !316, !tbaa !255
  %conv40 = zext i16 %33 to i32, !dbg !317
  %cmp41 = icmp sgt i32 %conv38, %conv40, !dbg !318
  br i1 %cmp41, label %cond.true, label %cond.false, !dbg !319

cond.true:                                        ; preds = %if.end.27
  %34 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !320, !tbaa !116
  %alignment43 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %34, i32 0, i32 1, !dbg !321
  %35 = load i16, i16* %alignment43, align 2, !dbg !321, !tbaa !255
  %conv44 = zext i16 %35 to i32, !dbg !320
  br label %cond.end, !dbg !319

cond.false:                                       ; preds = %if.end.27
  %36 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !322, !tbaa !116
  %37 = load %struct._ffi_type*, %struct._ffi_type** %36, align 8, !dbg !323, !tbaa !116
  %alignment45 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %37, i32 0, i32 1, !dbg !324
  %38 = load i16, i16* %alignment45, align 2, !dbg !324, !tbaa !255
  %conv46 = zext i16 %38 to i32, !dbg !325
  br label %cond.end, !dbg !319

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv44, %cond.true ], [ %conv46, %cond.false ], !dbg !319
  %conv47 = trunc i32 %cond to i16, !dbg !326
  %39 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !329, !tbaa !116
  %alignment48 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %39, i32 0, i32 1, !dbg !330
  store i16 %conv47, i16* %alignment48, align 2, !dbg !331, !tbaa !255
  %40 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !332, !tbaa !116
  %incdec.ptr = getelementptr %struct._ffi_type*, %struct._ffi_type** %40, i32 1, !dbg !332
  store %struct._ffi_type** %incdec.ptr, %struct._ffi_type*** %ptr, align 8, !dbg !332, !tbaa !116
  br label %while.cond, !dbg !267

while.end:                                        ; preds = %while.cond
  %41 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !333, !tbaa !116
  %size49 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %41, i32 0, i32 0, !dbg !334
  %42 = load i64, i64* %size49, align 8, !dbg !334, !tbaa !175
  %sub50 = sub i64 %42, 1, !dbg !335
  %43 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !336, !tbaa !116
  %alignment51 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %43, i32 0, i32 1, !dbg !337
  %44 = load i16, i16* %alignment51, align 2, !dbg !337, !tbaa !255
  %conv52 = zext i16 %44 to i32, !dbg !338
  %sub53 = sub i32 %conv52, 1, !dbg !339
  %conv54 = sext i32 %sub53 to i64, !dbg !340
  %or55 = or i64 %sub50, %conv54, !dbg !341
  %add56 = add i64 %or55, 1, !dbg !342
  %45 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !343, !tbaa !116
  %size57 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %45, i32 0, i32 0, !dbg !344
  store i64 %add56, i64* %size57, align 8, !dbg !345, !tbaa !175
  %46 = load %struct._ffi_type*, %struct._ffi_type** %arg.addr, align 8, !dbg !346, !tbaa !116
  %size58 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %46, i32 0, i32 0, !dbg !348
  %47 = load i64, i64* %size58, align 8, !dbg !348, !tbaa !175
  %cmp59 = icmp eq i64 %47, 0, !dbg !349
  br i1 %cmp59, label %if.then.61, label %if.else, !dbg !350

if.then.61:                                       ; preds = %while.end
  store i32 1, i32* %retval, !dbg !351
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !351

if.else:                                          ; preds = %while.end
  store i32 0, i32* %retval, !dbg !352
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !352

cleanup:                                          ; preds = %if.else, %if.then.61, %if.then.26, %if.then.12, %if.then
  %48 = bitcast %struct._ffi_type*** %ptr to i8*, !dbg !353
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !353
  %49 = load i32, i32* %retval, !dbg !353
  ret i32 %49, !dbg !353
}

declare i32 @ffi_prep_cif_machdep(%struct.ffi_cif*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: uwtable
define i32 @ffi_prep_cif(%struct.ffi_cif* %cif, i32 %abi, i32 %nargs, %struct._ffi_type* %rtype, %struct._ffi_type** %atypes) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %abi.addr = alloca i32, align 4
  %nargs.addr = alloca i32, align 4
  %rtype.addr = alloca %struct._ffi_type*, align 8
  %atypes.addr = alloca %struct._ffi_type**, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !67, metadata !120), !dbg !354
  store i32 %abi, i32* %abi.addr, align 4, !tbaa !122
  call void @llvm.dbg.declare(metadata i32* %abi.addr, metadata !68, metadata !120), !dbg !355
  store i32 %nargs, i32* %nargs.addr, align 4, !tbaa !124
  call void @llvm.dbg.declare(metadata i32* %nargs.addr, metadata !69, metadata !120), !dbg !356
  store %struct._ffi_type* %rtype, %struct._ffi_type** %rtype.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %rtype.addr, metadata !70, metadata !120), !dbg !357
  store %struct._ffi_type** %atypes, %struct._ffi_type*** %atypes.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %atypes.addr, metadata !71, metadata !120), !dbg !358
  %0 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !359, !tbaa !116
  %1 = load i32, i32* %abi.addr, align 4, !dbg !360, !tbaa !122
  %2 = load i32, i32* %nargs.addr, align 4, !dbg !361, !tbaa !124
  %3 = load i32, i32* %nargs.addr, align 4, !dbg !362, !tbaa !124
  %4 = load %struct._ffi_type*, %struct._ffi_type** %rtype.addr, align 8, !dbg !363, !tbaa !116
  %5 = load %struct._ffi_type**, %struct._ffi_type*** %atypes.addr, align 8, !dbg !364, !tbaa !116
  %call = call i32 @ffi_prep_cif_core(%struct.ffi_cif* %0, i32 %1, i32 0, i32 %2, i32 %3, %struct._ffi_type* %4, %struct._ffi_type** %5), !dbg !365
  ret i32 %call, !dbg !366
}

; Function Attrs: uwtable
define i32 @ffi_prep_cif_var(%struct.ffi_cif* %cif, i32 %abi, i32 %nfixedargs, i32 %ntotalargs, %struct._ffi_type* %rtype, %struct._ffi_type** %atypes) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %abi.addr = alloca i32, align 4
  %nfixedargs.addr = alloca i32, align 4
  %ntotalargs.addr = alloca i32, align 4
  %rtype.addr = alloca %struct._ffi_type*, align 8
  %atypes.addr = alloca %struct._ffi_type**, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !76, metadata !120), !dbg !367
  store i32 %abi, i32* %abi.addr, align 4, !tbaa !122
  call void @llvm.dbg.declare(metadata i32* %abi.addr, metadata !77, metadata !120), !dbg !368
  store i32 %nfixedargs, i32* %nfixedargs.addr, align 4, !tbaa !124
  call void @llvm.dbg.declare(metadata i32* %nfixedargs.addr, metadata !78, metadata !120), !dbg !369
  store i32 %ntotalargs, i32* %ntotalargs.addr, align 4, !tbaa !124
  call void @llvm.dbg.declare(metadata i32* %ntotalargs.addr, metadata !79, metadata !120), !dbg !370
  store %struct._ffi_type* %rtype, %struct._ffi_type** %rtype.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %rtype.addr, metadata !80, metadata !120), !dbg !371
  store %struct._ffi_type** %atypes, %struct._ffi_type*** %atypes.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %atypes.addr, metadata !81, metadata !120), !dbg !372
  %0 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !373, !tbaa !116
  %1 = load i32, i32* %abi.addr, align 4, !dbg !374, !tbaa !122
  %2 = load i32, i32* %nfixedargs.addr, align 4, !dbg !375, !tbaa !124
  %3 = load i32, i32* %ntotalargs.addr, align 4, !dbg !376, !tbaa !124
  %4 = load %struct._ffi_type*, %struct._ffi_type** %rtype.addr, align 8, !dbg !377, !tbaa !116
  %5 = load %struct._ffi_type**, %struct._ffi_type*** %atypes.addr, align 8, !dbg !378, !tbaa !116
  %call = call i32 @ffi_prep_cif_core(%struct.ffi_cif* %0, i32 %1, i32 1, i32 %2, i32 %3, %struct._ffi_type* %4, %struct._ffi_type** %5), !dbg !379
  ret i32 %call, !dbg !380
}

; Function Attrs: uwtable
define i32 @ffi_prep_closure(%struct.ffi_closure* %closure, %struct.ffi_cif* %cif, void (%struct.ffi_cif*, i8*, i8**, i8*)* %fun, i8* %user_data) #0 {
entry:
  %closure.addr = alloca %struct.ffi_closure*, align 8
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %fun.addr = alloca void (%struct.ffi_cif*, i8*, i8**, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct.ffi_closure* %closure, %struct.ffi_closure** %closure.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct.ffi_closure** %closure.addr, metadata !102, metadata !120), !dbg !381
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !103, metadata !120), !dbg !382
  store void (%struct.ffi_cif*, i8*, i8**, i8*)* %fun, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, metadata !104, metadata !120), !dbg !383
  store i8* %user_data, i8** %user_data.addr, align 8, !tbaa !116
  call void @llvm.dbg.declare(metadata i8** %user_data.addr, metadata !105, metadata !120), !dbg !384
  %0 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !385, !tbaa !116
  %1 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !386, !tbaa !116
  %2 = load void (%struct.ffi_cif*, i8*, i8**, i8*)*, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8, !dbg !387, !tbaa !116
  %3 = load i8*, i8** %user_data.addr, align 8, !dbg !388, !tbaa !116
  %4 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !389, !tbaa !116
  %5 = bitcast %struct.ffi_closure* %4 to i8*, !dbg !389
  %call = call i32 @ffi_prep_closure_loc(%struct.ffi_closure* %0, %struct.ffi_cif* %1, void (%struct.ffi_cif*, i8*, i8**, i8*)* %2, i8* %3, i8* %5), !dbg !390
  ret i32 %call, !dbg !391
}

declare i32 @ffi_prep_closure_loc(%struct.ffi_closure*, %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!112, !113, !114}
!llvm.ident = !{!115}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !17, subprograms: !22)
!1 = !DIFile(filename: "prep_cif.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 204, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "build/temp.linux-x86_64-3.4/libffi/include/ffi.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "FFI_OK", value: 0)
!7 = !DIEnumerator(name: "FFI_BAD_TYPEDEF", value: 1)
!8 = !DIEnumerator(name: "FFI_BAD_ABI", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ffi_abi", file: !10, line: 75, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "build/temp.linux-x86_64-3.4/libffi/include/ffitarget.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!11 = !{!12, !13, !14, !15, !16}
!12 = !DIEnumerator(name: "FFI_FIRST_ABI", value: 0)
!13 = !DIEnumerator(name: "FFI_SYSV", value: 1)
!14 = !DIEnumerator(name: "FFI_UNIX64", value: 2)
!15 = !DIEnumerator(name: "FFI_LAST_ABI", value: 3)
!16 = !DIEnumerator(name: "FFI_DEFAULT_ABI", value: 2)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 62, baseType: !21)
!20 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!22 = !{!23, !63, !72, !82, !106}
!23 = !DISubprogram(name: "ffi_prep_cif_core", scope: !24, file: !24, line: 100, type: !25, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ffi_cif*, i32, i32, i32, i32, %struct._ffi_type*, %struct._ffi_type**)* @ffi_prep_cif_core, variables: !52)
!24 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/libffi/src/prep_cif.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !28, !33, !35, !35, !35, !38, !37}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_status", file: !4, line: 208, baseType: !3)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_cif", file: !4, line: 222, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 212, size: 256, align: 64, elements: !31)
!31 = !{!32, !34, !36, !49, !50, !51}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !30, file: !4, line: 213, baseType: !33, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_abi", file: !10, line: 108, baseType: !9)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !30, file: !4, line: 214, baseType: !35, size: 32, align: 32, offset: 32)
!35 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !30, file: !4, line: 215, baseType: !37, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_type", file: !4, line: 118, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ffi_type", file: !4, line: 112, size: 192, align: 64, elements: !41)
!41 = !{!42, !43, !45, !46}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !40, file: !4, line: 114, baseType: !19, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !40, file: !4, line: 115, baseType: !44, size: 16, align: 16, offset: 64)
!44 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !4, line: 116, baseType: !44, size: 16, align: 16, offset: 80)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !40, file: !4, line: 117, baseType: !47, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "rtype", scope: !30, file: !4, line: 216, baseType: !38, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !30, file: !4, line: 217, baseType: !35, size: 32, align: 32, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !4, line: 218, baseType: !35, size: 32, align: 32, offset: 224)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cif", arg: 1, scope: !23, file: !24, line: 100, type: !28)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "abi", arg: 2, scope: !23, file: !24, line: 100, type: !33)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isvariadic", arg: 3, scope: !23, file: !24, line: 101, type: !35)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfixedargs", arg: 4, scope: !23, file: !24, line: 102, type: !35)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ntotalargs", arg: 5, scope: !23, file: !24, line: 103, type: !35)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rtype", arg: 6, scope: !23, file: !24, line: 104, type: !38)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atypes", arg: 7, scope: !23, file: !24, line: 104, type: !37)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !23, file: !24, line: 106, type: !35)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !23, file: !24, line: 107, type: !35)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !23, file: !24, line: 108, type: !37)
!63 = !DISubprogram(name: "ffi_prep_cif", scope: !24, file: !24, line: 210, type: !64, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ffi_cif*, i32, i32, %struct._ffi_type*, %struct._ffi_type**)* @ffi_prep_cif, variables: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{!27, !28, !33, !35, !38, !37}
!66 = !{!67, !68, !69, !70, !71}
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cif", arg: 1, scope: !63, file: !24, line: 210, type: !28)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "abi", arg: 2, scope: !63, file: !24, line: 210, type: !33)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nargs", arg: 3, scope: !63, file: !24, line: 210, type: !35)
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rtype", arg: 4, scope: !63, file: !24, line: 211, type: !38)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atypes", arg: 5, scope: !63, file: !24, line: 211, type: !37)
!72 = !DISubprogram(name: "ffi_prep_cif_var", scope: !24, file: !24, line: 216, type: !73, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ffi_cif*, i32, i32, i32, %struct._ffi_type*, %struct._ffi_type**)* @ffi_prep_cif_var, variables: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{!27, !28, !33, !35, !35, !38, !37}
!75 = !{!76, !77, !78, !79, !80, !81}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cif", arg: 1, scope: !72, file: !24, line: 216, type: !28)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "abi", arg: 2, scope: !72, file: !24, line: 217, type: !33)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfixedargs", arg: 3, scope: !72, file: !24, line: 218, type: !35)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ntotalargs", arg: 4, scope: !72, file: !24, line: 219, type: !35)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rtype", arg: 5, scope: !72, file: !24, line: 220, type: !38)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atypes", arg: 6, scope: !72, file: !24, line: 221, type: !37)
!82 = !DISubprogram(name: "ffi_prep_closure", scope: !24, file: !24, line: 229, type: !83, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ffi_closure*, %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8*)* @ffi_prep_closure, variables: !101)
!83 = !DISubroutineType(types: !84)
!84 = !{!27, !85, !28, !96, !18}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_closure", file: !4, line: 310, baseType: !87)
!87 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 299, size: 384, align: 64, elements: !88)
!88 = !{!89, !94, !95, !100}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tramp", scope: !87, file: !4, line: 304, baseType: !90, size: 192, align: 8)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 192, align: 8, elements: !92)
!91 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = !{!93}
!93 = !DISubrange(count: 24)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cif", scope: !87, file: !4, line: 306, baseType: !28, size: 64, align: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !87, file: !4, line: 307, baseType: !96, size: 64, align: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !28, !18, !99, !18}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !87, file: !4, line: 308, baseType: !18, size: 64, align: 64, offset: 320)
!101 = !{!102, !103, !104, !105}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 1, scope: !82, file: !24, line: 229, type: !85)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cif", arg: 2, scope: !82, file: !24, line: 230, type: !28)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fun", arg: 3, scope: !82, file: !24, line: 231, type: !96)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 4, scope: !82, file: !24, line: 232, type: !18)
!106 = !DISubprogram(name: "initialize_aggregate", scope: !24, file: !24, line: 37, type: !107, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ffi_type*)* @initialize_aggregate, variables: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{!27, !38}
!109 = !{!110, !111}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !106, file: !24, line: 37, type: !38)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !106, file: !24, line: 39, type: !37)
!112 = !{i32 2, !"Dwarf Version", i32 4}
!113 = !{i32 2, !"Debug Info Version", i32 3}
!114 = !{i32 1, !"PIC Level", i32 2}
!115 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!116 = !{!117, !117, i64 0}
!117 = !{!"any pointer", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !DIExpression()
!121 = !DILocation(line: 100, column: 79, scope: !23)
!122 = !{!118, !118, i64 0}
!123 = !DILocation(line: 100, column: 92, scope: !23)
!124 = !{!125, !125, i64 0}
!125 = !{!"int", !118, i64 0}
!126 = !DILocation(line: 101, column: 22, scope: !23)
!127 = !DILocation(line: 102, column: 43, scope: !23)
!128 = !DILocation(line: 103, column: 43, scope: !23)
!129 = !DILocation(line: 104, column: 19, scope: !23)
!130 = !DILocation(line: 104, column: 37, scope: !23)
!131 = !DILocation(line: 106, column: 3, scope: !23)
!132 = !DILocation(line: 106, column: 12, scope: !23)
!133 = !DILocation(line: 107, column: 3, scope: !23)
!134 = !DILocation(line: 107, column: 16, scope: !23)
!135 = !DILocation(line: 108, column: 3, scope: !23)
!136 = !DILocation(line: 108, column: 14, scope: !23)
!137 = !DILocation(line: 115, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !23, file: !24, line: 115, column: 7)
!139 = !DILocation(line: 115, column: 14, scope: !138)
!140 = !DILocation(line: 115, column: 30, scope: !138)
!141 = !DILocation(line: 115, column: 33, scope: !142)
!142 = !DILexicalBlockFile(scope: !138, file: !24, discriminator: 1)
!143 = !DILocation(line: 115, column: 37, scope: !138)
!144 = !DILocation(line: 115, column: 7, scope: !23)
!145 = !DILocation(line: 116, column: 5, scope: !138)
!146 = !DILocation(line: 122, column: 14, scope: !23)
!147 = !DILocation(line: 122, column: 3, scope: !23)
!148 = !DILocation(line: 122, column: 8, scope: !23)
!149 = !DILocation(line: 122, column: 12, scope: !23)
!150 = !{!151, !118, i64 0}
!151 = !{!"", !118, i64 0, !125, i64 4, !117, i64 8, !117, i64 16, !125, i64 24, !125, i64 28}
!152 = !DILocation(line: 123, column: 20, scope: !23)
!153 = !DILocation(line: 123, column: 3, scope: !23)
!154 = !DILocation(line: 123, column: 8, scope: !23)
!155 = !DILocation(line: 123, column: 18, scope: !23)
!156 = !{!151, !117, i64 8}
!157 = !DILocation(line: 124, column: 16, scope: !23)
!158 = !DILocation(line: 124, column: 3, scope: !23)
!159 = !DILocation(line: 124, column: 8, scope: !23)
!160 = !DILocation(line: 124, column: 14, scope: !23)
!161 = !{!151, !125, i64 4}
!162 = !DILocation(line: 125, column: 16, scope: !23)
!163 = !DILocation(line: 125, column: 3, scope: !23)
!164 = !DILocation(line: 125, column: 8, scope: !23)
!165 = !DILocation(line: 125, column: 14, scope: !23)
!166 = !{!151, !117, i64 16}
!167 = !DILocation(line: 127, column: 3, scope: !23)
!168 = !DILocation(line: 127, column: 8, scope: !23)
!169 = !DILocation(line: 127, column: 14, scope: !23)
!170 = !{!151, !125, i64 28}
!171 = !DILocation(line: 130, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !23, file: !24, line: 130, column: 7)
!173 = !DILocation(line: 130, column: 13, scope: !172)
!174 = !DILocation(line: 130, column: 20, scope: !172)
!175 = !{!176, !177, i64 0}
!176 = !{!"_ffi_type", !177, i64 0, !178, i64 8, !178, i64 10, !117, i64 16}
!177 = !{!"long", !118, i64 0}
!178 = !{!"short", !118, i64 0}
!179 = !DILocation(line: 130, column: 25, scope: !172)
!180 = !DILocation(line: 130, column: 31, scope: !172)
!181 = !DILocation(line: 130, column: 56, scope: !182)
!182 = !DILexicalBlockFile(scope: !172, file: !24, discriminator: 1)
!183 = !DILocation(line: 130, column: 61, scope: !172)
!184 = !DILocation(line: 130, column: 35, scope: !172)
!185 = !DILocation(line: 130, column: 68, scope: !172)
!186 = !DILocation(line: 130, column: 7, scope: !23)
!187 = !DILocation(line: 131, column: 5, scope: !172)
!188 = !DILocation(line: 154, column: 14, scope: !189)
!189 = distinct !DILexicalBlock(scope: !23, file: !24, line: 154, column: 3)
!190 = !DILocation(line: 154, column: 19, scope: !189)
!191 = !DILocation(line: 154, column: 12, scope: !189)
!192 = !DILocation(line: 154, column: 34, scope: !189)
!193 = !DILocation(line: 154, column: 39, scope: !189)
!194 = !DILocation(line: 154, column: 32, scope: !189)
!195 = !DILocation(line: 154, column: 8, scope: !189)
!196 = !DILocation(line: 154, column: 46, scope: !197)
!197 = !DILexicalBlockFile(scope: !198, file: !24, discriminator: 2)
!198 = !DILexicalBlockFile(scope: !199, file: !24, discriminator: 1)
!199 = distinct !DILexicalBlock(scope: !189, file: !24, line: 154, column: 3)
!200 = !DILocation(line: 154, column: 48, scope: !199)
!201 = !DILocation(line: 154, column: 3, scope: !189)
!202 = !DILocation(line: 158, column: 14, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !24, line: 158, column: 11)
!204 = distinct !DILexicalBlock(scope: !199, file: !24, line: 155, column: 5)
!205 = !DILocation(line: 158, column: 13, scope: !203)
!206 = !DILocation(line: 158, column: 20, scope: !203)
!207 = !DILocation(line: 158, column: 25, scope: !203)
!208 = !DILocation(line: 158, column: 31, scope: !203)
!209 = !DILocation(line: 158, column: 58, scope: !210)
!210 = !DILexicalBlockFile(scope: !203, file: !24, discriminator: 1)
!211 = !DILocation(line: 158, column: 57, scope: !203)
!212 = !DILocation(line: 158, column: 35, scope: !203)
!213 = !DILocation(line: 158, column: 64, scope: !203)
!214 = !DILocation(line: 158, column: 11, scope: !204)
!215 = !DILocation(line: 159, column: 2, scope: !203)
!216 = !DILocation(line: 196, column: 5, scope: !204)
!217 = !DILocation(line: 154, column: 54, scope: !199)
!218 = !DILocation(line: 154, column: 61, scope: !199)
!219 = !DILocation(line: 154, column: 3, scope: !199)
!220 = !DILocation(line: 198, column: 16, scope: !23)
!221 = !DILocation(line: 198, column: 3, scope: !23)
!222 = !DILocation(line: 198, column: 8, scope: !23)
!223 = !DILocation(line: 198, column: 14, scope: !23)
!224 = !{!151, !125, i64 24}
!225 = !DILocation(line: 206, column: 31, scope: !23)
!226 = !DILocation(line: 206, column: 10, scope: !23)
!227 = !DILocation(line: 206, column: 3, scope: !23)
!228 = !DILocation(line: 207, column: 1, scope: !23)
!229 = !DILocation(line: 37, column: 50, scope: !106)
!230 = !DILocation(line: 39, column: 3, scope: !106)
!231 = !DILocation(line: 39, column: 14, scope: !106)
!232 = !DILocation(line: 41, column: 25, scope: !233)
!233 = distinct !DILexicalBlock(scope: !106, file: !24, line: 41, column: 7)
!234 = !DILocation(line: 41, column: 29, scope: !233)
!235 = !DILocation(line: 41, column: 43, scope: !233)
!236 = !DILocation(line: 41, column: 46, scope: !237)
!237 = !DILexicalBlockFile(scope: !233, file: !24, discriminator: 2)
!238 = !DILocation(line: 41, column: 51, scope: !233)
!239 = !{!176, !117, i64 16}
!240 = !DILocation(line: 41, column: 60, scope: !233)
!241 = !DILocation(line: 41, column: 43, scope: !242)
!242 = !DILexicalBlockFile(scope: !243, file: !24, discriminator: 3)
!243 = !DILexicalBlockFile(scope: !233, file: !24, discriminator: 1)
!244 = !DILocation(line: 41, column: 74, scope: !233)
!245 = !DILocation(line: 41, column: 24, scope: !233)
!246 = !DILocation(line: 41, column: 7, scope: !233)
!247 = !DILocation(line: 41, column: 7, scope: !106)
!248 = !DILocation(line: 42, column: 5, scope: !233)
!249 = !DILocation(line: 44, column: 3, scope: !106)
!250 = !DILocation(line: 44, column: 8, scope: !106)
!251 = !DILocation(line: 44, column: 13, scope: !106)
!252 = !DILocation(line: 45, column: 3, scope: !106)
!253 = !DILocation(line: 45, column: 8, scope: !106)
!254 = !DILocation(line: 45, column: 18, scope: !106)
!255 = !{!176, !178, i64 8}
!256 = !DILocation(line: 47, column: 11, scope: !106)
!257 = !DILocation(line: 47, column: 16, scope: !106)
!258 = !DILocation(line: 47, column: 7, scope: !106)
!259 = !DILocation(line: 49, column: 25, scope: !260)
!260 = distinct !DILexicalBlock(scope: !106, file: !24, line: 49, column: 7)
!261 = !DILocation(line: 49, column: 29, scope: !260)
!262 = !DILocation(line: 49, column: 34, scope: !260)
!263 = !DILocation(line: 49, column: 24, scope: !260)
!264 = !DILocation(line: 49, column: 7, scope: !260)
!265 = !DILocation(line: 49, column: 7, scope: !106)
!266 = !DILocation(line: 50, column: 5, scope: !260)
!267 = !DILocation(line: 52, column: 3, scope: !106)
!268 = !DILocation(line: 52, column: 12, scope: !269)
!269 = !DILexicalBlockFile(scope: !270, file: !24, discriminator: 2)
!270 = !DILexicalBlockFile(scope: !106, file: !24, discriminator: 1)
!271 = !DILocation(line: 52, column: 11, scope: !106)
!272 = !DILocation(line: 52, column: 17, scope: !106)
!273 = !DILocation(line: 54, column: 32, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !24, line: 54, column: 11)
!275 = distinct !DILexicalBlock(scope: !106, file: !24, line: 53, column: 5)
!276 = !DILocation(line: 54, column: 31, scope: !274)
!277 = !DILocation(line: 54, column: 38, scope: !274)
!278 = !DILocation(line: 54, column: 43, scope: !274)
!279 = !DILocation(line: 54, column: 49, scope: !274)
!280 = !DILocation(line: 54, column: 76, scope: !281)
!281 = !DILexicalBlockFile(scope: !274, file: !24, discriminator: 1)
!282 = !DILocation(line: 54, column: 75, scope: !274)
!283 = !DILocation(line: 54, column: 53, scope: !274)
!284 = !DILocation(line: 54, column: 82, scope: !274)
!285 = !DILocation(line: 54, column: 49, scope: !286)
!286 = !DILexicalBlockFile(scope: !274, file: !24, discriminator: 2)
!287 = !DILocation(line: 54, column: 93, scope: !274)
!288 = !DILocation(line: 54, column: 28, scope: !274)
!289 = !DILocation(line: 54, column: 11, scope: !274)
!290 = !DILocation(line: 54, column: 11, scope: !275)
!291 = !DILocation(line: 56, column: 2, scope: !274)
!292 = !DILocation(line: 61, column: 33, scope: !275)
!293 = !DILocation(line: 61, column: 38, scope: !275)
!294 = !DILocation(line: 61, column: 44, scope: !275)
!295 = !DILocation(line: 61, column: 54, scope: !275)
!296 = !DILocation(line: 61, column: 53, scope: !275)
!297 = !DILocation(line: 61, column: 60, scope: !275)
!298 = !DILocation(line: 61, column: 51, scope: !275)
!299 = !DILocation(line: 61, column: 70, scope: !275)
!300 = !DILocation(line: 61, column: 50, scope: !275)
!301 = !DILocation(line: 61, column: 48, scope: !275)
!302 = !DILocation(line: 61, column: 74, scope: !275)
!303 = !DILocation(line: 61, column: 7, scope: !275)
!304 = !DILocation(line: 61, column: 12, scope: !275)
!305 = !DILocation(line: 61, column: 17, scope: !275)
!306 = !DILocation(line: 62, column: 22, scope: !275)
!307 = !DILocation(line: 62, column: 21, scope: !275)
!308 = !DILocation(line: 62, column: 28, scope: !275)
!309 = !DILocation(line: 62, column: 7, scope: !275)
!310 = !DILocation(line: 62, column: 12, scope: !275)
!311 = !DILocation(line: 62, column: 17, scope: !275)
!312 = !DILocation(line: 64, column: 25, scope: !275)
!313 = !DILocation(line: 64, column: 30, scope: !275)
!314 = !DILocation(line: 64, column: 44, scope: !275)
!315 = !DILocation(line: 64, column: 43, scope: !275)
!316 = !DILocation(line: 64, column: 50, scope: !275)
!317 = !DILocation(line: 64, column: 42, scope: !275)
!318 = !DILocation(line: 64, column: 40, scope: !275)
!319 = !DILocation(line: 64, column: 24, scope: !275)
!320 = !DILocation(line: 65, column: 2, scope: !275)
!321 = !DILocation(line: 65, column: 7, scope: !275)
!322 = !DILocation(line: 65, column: 21, scope: !275)
!323 = !DILocation(line: 65, column: 20, scope: !275)
!324 = !DILocation(line: 65, column: 27, scope: !275)
!325 = !DILocation(line: 65, column: 19, scope: !275)
!326 = !DILocation(line: 64, column: 24, scope: !327)
!327 = !DILexicalBlockFile(scope: !328, file: !24, discriminator: 2)
!328 = !DILexicalBlockFile(scope: !275, file: !24, discriminator: 1)
!329 = !DILocation(line: 64, column: 7, scope: !275)
!330 = !DILocation(line: 64, column: 12, scope: !275)
!331 = !DILocation(line: 64, column: 22, scope: !275)
!332 = !DILocation(line: 67, column: 10, scope: !275)
!333 = !DILocation(line: 77, column: 29, scope: !106)
!334 = !DILocation(line: 77, column: 34, scope: !106)
!335 = !DILocation(line: 77, column: 40, scope: !106)
!336 = !DILocation(line: 77, column: 48, scope: !106)
!337 = !DILocation(line: 77, column: 53, scope: !106)
!338 = !DILocation(line: 77, column: 47, scope: !106)
!339 = !DILocation(line: 77, column: 63, scope: !106)
!340 = !DILocation(line: 77, column: 46, scope: !106)
!341 = !DILocation(line: 77, column: 44, scope: !106)
!342 = !DILocation(line: 77, column: 67, scope: !106)
!343 = !DILocation(line: 77, column: 3, scope: !106)
!344 = !DILocation(line: 77, column: 8, scope: !106)
!345 = !DILocation(line: 77, column: 13, scope: !106)
!346 = !DILocation(line: 79, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !106, file: !24, line: 79, column: 7)
!348 = !DILocation(line: 79, column: 12, scope: !347)
!349 = !DILocation(line: 79, column: 17, scope: !347)
!350 = !DILocation(line: 79, column: 7, scope: !106)
!351 = !DILocation(line: 80, column: 5, scope: !347)
!352 = !DILocation(line: 82, column: 5, scope: !347)
!353 = !DILocation(line: 83, column: 1, scope: !106)
!354 = !DILocation(line: 210, column: 34, scope: !63)
!355 = !DILocation(line: 210, column: 47, scope: !63)
!356 = !DILocation(line: 210, column: 65, scope: !63)
!357 = !DILocation(line: 211, column: 19, scope: !63)
!358 = !DILocation(line: 211, column: 37, scope: !63)
!359 = !DILocation(line: 213, column: 28, scope: !63)
!360 = !DILocation(line: 213, column: 33, scope: !63)
!361 = !DILocation(line: 213, column: 41, scope: !63)
!362 = !DILocation(line: 213, column: 48, scope: !63)
!363 = !DILocation(line: 213, column: 55, scope: !63)
!364 = !DILocation(line: 213, column: 62, scope: !63)
!365 = !DILocation(line: 213, column: 10, scope: !63)
!366 = !DILocation(line: 213, column: 3, scope: !63)
!367 = !DILocation(line: 216, column: 38, scope: !72)
!368 = !DILocation(line: 217, column: 37, scope: !72)
!369 = !DILocation(line: 218, column: 42, scope: !72)
!370 = !DILocation(line: 219, column: 42, scope: !72)
!371 = !DILocation(line: 220, column: 39, scope: !72)
!372 = !DILocation(line: 221, column: 40, scope: !72)
!373 = !DILocation(line: 223, column: 28, scope: !72)
!374 = !DILocation(line: 223, column: 33, scope: !72)
!375 = !DILocation(line: 223, column: 41, scope: !72)
!376 = !DILocation(line: 223, column: 53, scope: !72)
!377 = !DILocation(line: 223, column: 65, scope: !72)
!378 = !DILocation(line: 223, column: 72, scope: !72)
!379 = !DILocation(line: 223, column: 10, scope: !72)
!380 = !DILocation(line: 223, column: 3, scope: !72)
!381 = !DILocation(line: 229, column: 32, scope: !82)
!382 = !DILocation(line: 230, column: 14, scope: !82)
!383 = !DILocation(line: 231, column: 12, scope: !82)
!384 = !DILocation(line: 232, column: 11, scope: !82)
!385 = !DILocation(line: 234, column: 32, scope: !82)
!386 = !DILocation(line: 234, column: 41, scope: !82)
!387 = !DILocation(line: 234, column: 46, scope: !82)
!388 = !DILocation(line: 234, column: 51, scope: !82)
!389 = !DILocation(line: 234, column: 62, scope: !82)
!390 = !DILocation(line: 234, column: 10, scope: !82)
!391 = !DILocation(line: 234, column: 3, scope: !82)
