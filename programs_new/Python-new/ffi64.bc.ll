; ModuleID = 'irs-onlybc/ffi64.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffi_cif = type { i32, i32, %struct._ffi_type**, %struct._ffi_type*, i32, i32 }
%struct._ffi_type = type { i64, i16, i16, %struct._ffi_type** }
%struct.register_args = type { [6 x i64], [8 x %union.big_int_union] }
%union.big_int_union = type { i128 }
%struct.ffi_closure = type { [24 x i8], %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8* }

; Function Attrs: uwtable
define i32 @ffi_prep_cif_machdep(%struct.ffi_cif* %cif) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %gprcount = alloca i32, align 4
  %ssecount = alloca i32, align 4
  %i = alloca i32, align 4
  %avn = alloca i32, align 4
  %n = alloca i32, align 4
  %ngpr = alloca i32, align 4
  %nsse = alloca i32, align 4
  %flags = alloca i32, align 4
  %classes = alloca [4 x i32], align 16
  %bytes = alloca i64, align 8
  %sse0 = alloca i8, align 1
  %sse1 = alloca i8, align 1
  %align = alloca i64, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !107, metadata !289), !dbg !290
  %0 = bitcast i32* %gprcount to i8*, !dbg !291
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %gprcount, metadata !108, metadata !289), !dbg !292
  %1 = bitcast i32* %ssecount to i8*, !dbg !291
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %ssecount, metadata !109, metadata !289), !dbg !293
  %2 = bitcast i32* %i to i8*, !dbg !291
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %i, metadata !110, metadata !289), !dbg !294
  %3 = bitcast i32* %avn to i8*, !dbg !291
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %avn, metadata !111, metadata !289), !dbg !295
  %4 = bitcast i32* %n to i8*, !dbg !291
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %n, metadata !112, metadata !289), !dbg !296
  %5 = bitcast i32* %ngpr to i8*, !dbg !291
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %ngpr, metadata !113, metadata !289), !dbg !297
  %6 = bitcast i32* %nsse to i8*, !dbg !291
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %nsse, metadata !114, metadata !289), !dbg !298
  %7 = bitcast i32* %flags to i8*, !dbg !291
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !115, metadata !289), !dbg !299
  %8 = bitcast [4 x i32]* %classes to i8*, !dbg !300
  call void @llvm.lifetime.start(i64 16, i8* %8) #2, !dbg !300
  call void @llvm.dbg.declare(metadata [4 x i32]* %classes, metadata !116, metadata !289), !dbg !301
  %9 = bitcast i64* %bytes to i8*, !dbg !302
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !302
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !120, metadata !289), !dbg !303
  store i32 0, i32* %ssecount, align 4, !dbg !304, !tbaa !305
  store i32 0, i32* %gprcount, align 4, !dbg !307, !tbaa !305
  %10 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !308, !tbaa !285
  %rtype = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %10, i32 0, i32 3, !dbg !309
  %11 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8, !dbg !309, !tbaa !310
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %11, i32 0, i32 2, !dbg !312
  %12 = load i16, i16* %type, align 2, !dbg !312, !tbaa !313
  %conv = zext i16 %12 to i32, !dbg !308
  store i32 %conv, i32* %flags, align 4, !dbg !317, !tbaa !305
  %13 = load i32, i32* %flags, align 4, !dbg !318, !tbaa !305
  %cmp = icmp ne i32 %13, 0, !dbg !319
  br i1 %cmp, label %if.then, label %if.end.53, !dbg !320

if.then:                                          ; preds = %entry
  %14 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !321, !tbaa !285
  %rtype2 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %14, i32 0, i32 3, !dbg !322
  %15 = load %struct._ffi_type*, %struct._ffi_type** %rtype2, align 8, !dbg !322, !tbaa !310
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0, !dbg !323
  %call = call i32 @examine_argument(%struct._ffi_type* %15, i32* %arraydecay, i1 zeroext true, i32* %ngpr, i32* %nsse), !dbg !324
  store i32 %call, i32* %n, align 4, !dbg !325, !tbaa !305
  %16 = load i32, i32* %n, align 4, !dbg !326, !tbaa !305
  %cmp3 = icmp eq i32 %16, 0, !dbg !327
  br i1 %cmp3, label %if.then.5, label %if.else, !dbg !328

if.then.5:                                        ; preds = %if.then
  %17 = load i32, i32* %gprcount, align 4, !dbg !329, !tbaa !305
  %inc = add i32 %17, 1, !dbg !329
  store i32 %inc, i32* %gprcount, align 4, !dbg !329, !tbaa !305
  store i32 0, i32* %flags, align 4, !dbg !331, !tbaa !305
  br label %if.end.52, !dbg !332

if.else:                                          ; preds = %if.then
  %18 = load i32, i32* %flags, align 4, !dbg !333, !tbaa !305
  %cmp6 = icmp eq i32 %18, 13, !dbg !334
  br i1 %cmp6, label %if.then.8, label %if.end.51, !dbg !335

if.then.8:                                        ; preds = %if.else
  call void @llvm.lifetime.start(i64 1, i8* %sse0) #2, !dbg !336
  call void @llvm.dbg.declare(metadata i8* %sse0, metadata !121, metadata !289), !dbg !337
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0, !dbg !338
  %19 = load i32, i32* %arrayidx, align 4, !dbg !338, !tbaa !339
  %cmp9 = icmp uge i32 %19, 3, !dbg !340
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !341

land.rhs:                                         ; preds = %if.then.8
  %arrayidx11 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0, !dbg !342
  %20 = load i32, i32* %arrayidx11, align 4, !dbg !342, !tbaa !339
  %cmp12 = icmp ule i32 %20, 6, !dbg !344
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.8
  %21 = phi i1 [ false, %if.then.8 ], [ %cmp12, %land.rhs ]
  %frombool = zext i1 %21 to i8, !dbg !345
  store i8 %frombool, i8* %sse0, align 1, !dbg !345, !tbaa !347
  call void @llvm.lifetime.start(i64 1, i8* %sse1) #2, !dbg !349
  call void @llvm.dbg.declare(metadata i8* %sse1, metadata !128, metadata !289), !dbg !350
  %22 = load i32, i32* %n, align 4, !dbg !351, !tbaa !305
  %cmp14 = icmp eq i32 %22, 2, !dbg !352
  br i1 %cmp14, label %land.rhs.16, label %land.end.25, !dbg !353

land.rhs.16:                                      ; preds = %land.end
  %arrayidx17 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1, !dbg !354
  %23 = load i32, i32* %arrayidx17, align 4, !dbg !354, !tbaa !339
  %cmp18 = icmp uge i32 %23, 3, !dbg !355
  br i1 %cmp18, label %land.rhs.20, label %land.end.24, !dbg !356

land.rhs.20:                                      ; preds = %land.rhs.16
  %arrayidx21 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1, !dbg !357
  %24 = load i32, i32* %arrayidx21, align 4, !dbg !357, !tbaa !339
  %cmp22 = icmp ule i32 %24, 6, !dbg !359
  br label %land.end.24

land.end.24:                                      ; preds = %land.rhs.20, %land.rhs.16
  %25 = phi i1 [ false, %land.rhs.16 ], [ %cmp22, %land.rhs.20 ]
  br label %land.end.25

land.end.25:                                      ; preds = %land.end.24, %land.end
  %26 = phi i1 [ false, %land.end ], [ %25, %land.end.24 ]
  %frombool26 = zext i1 %26 to i8, !dbg !360
  store i8 %frombool26, i8* %sse1, align 1, !dbg !360, !tbaa !347
  %27 = load i8, i8* %sse0, align 1, !dbg !361, !tbaa !347, !range !363
  %tobool = trunc i8 %27 to i1, !dbg !361
  br i1 %tobool, label %land.lhs.true, label %if.else.30, !dbg !364

land.lhs.true:                                    ; preds = %land.end.25
  %28 = load i8, i8* %sse1, align 1, !dbg !365, !tbaa !347, !range !363
  %tobool28 = trunc i8 %28 to i1, !dbg !365
  br i1 %tobool28, label %if.else.30, label %if.then.29, !dbg !367

if.then.29:                                       ; preds = %land.lhs.true
  %29 = load i32, i32* %flags, align 4, !dbg !368, !tbaa !305
  %or = or i32 %29, 256, !dbg !368
  store i32 %or, i32* %flags, align 4, !dbg !368, !tbaa !305
  br label %if.end.46, !dbg !369

if.else.30:                                       ; preds = %land.lhs.true, %land.end.25
  %30 = load i8, i8* %sse0, align 1, !dbg !370, !tbaa !347, !range !363
  %tobool31 = trunc i8 %30 to i1, !dbg !370
  br i1 %tobool31, label %if.else.37, label %land.lhs.true.32, !dbg !372

land.lhs.true.32:                                 ; preds = %if.else.30
  %31 = load i8, i8* %sse1, align 1, !dbg !373, !tbaa !347, !range !363
  %tobool33 = trunc i8 %31 to i1, !dbg !373
  br i1 %tobool33, label %if.then.35, label %if.else.37, !dbg !375

if.then.35:                                       ; preds = %land.lhs.true.32
  %32 = load i32, i32* %flags, align 4, !dbg !376, !tbaa !305
  %or36 = or i32 %32, 512, !dbg !376
  store i32 %or36, i32* %flags, align 4, !dbg !376, !tbaa !305
  br label %if.end.45, !dbg !377

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.30
  %33 = load i8, i8* %sse0, align 1, !dbg !378, !tbaa !347, !range !363
  %tobool38 = trunc i8 %33 to i1, !dbg !378
  br i1 %tobool38, label %land.lhs.true.40, label %if.end, !dbg !380

land.lhs.true.40:                                 ; preds = %if.else.37
  %34 = load i8, i8* %sse1, align 1, !dbg !381, !tbaa !347, !range !363
  %tobool41 = trunc i8 %34 to i1, !dbg !381
  br i1 %tobool41, label %if.then.43, label %if.end, !dbg !383

if.then.43:                                       ; preds = %land.lhs.true.40
  %35 = load i32, i32* %flags, align 4, !dbg !384, !tbaa !305
  %or44 = or i32 %35, 1024, !dbg !384
  store i32 %or44, i32* %flags, align 4, !dbg !384, !tbaa !305
  br label %if.end, !dbg !385

if.end:                                           ; preds = %if.then.43, %land.lhs.true.40, %if.else.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.then.35
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.29
  %36 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !386, !tbaa !285
  %rtype47 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %36, i32 0, i32 3, !dbg !387
  %37 = load %struct._ffi_type*, %struct._ffi_type** %rtype47, align 8, !dbg !387, !tbaa !310
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %37, i32 0, i32 0, !dbg !388
  %38 = load i64, i64* %size, align 8, !dbg !388, !tbaa !389
  %shl = shl i64 %38, 12, !dbg !390
  %39 = load i32, i32* %flags, align 4, !dbg !391, !tbaa !305
  %conv48 = sext i32 %39 to i64, !dbg !391
  %or49 = or i64 %conv48, %shl, !dbg !391
  %conv50 = trunc i64 %or49 to i32, !dbg !391
  store i32 %conv50, i32* %flags, align 4, !dbg !391, !tbaa !305
  call void @llvm.lifetime.end(i64 1, i8* %sse1) #2, !dbg !392
  call void @llvm.lifetime.end(i64 1, i8* %sse0) #2, !dbg !392
  br label %if.end.51, !dbg !393

if.end.51:                                        ; preds = %if.end.46, %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.5
  br label %if.end.53, !dbg !394

if.end.53:                                        ; preds = %if.end.52, %entry
  store i64 0, i64* %bytes, align 8, !dbg !395, !tbaa !396
  store i32 0, i32* %i, align 4, !dbg !397, !tbaa !305
  %40 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !398, !tbaa !285
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %40, i32 0, i32 1, !dbg !399
  %41 = load i32, i32* %nargs, align 4, !dbg !399, !tbaa !400
  store i32 %41, i32* %avn, align 4, !dbg !401, !tbaa !305
  br label %for.cond, !dbg !402

for.cond:                                         ; preds = %for.inc, %if.end.53
  %42 = load i32, i32* %i, align 4, !dbg !403, !tbaa !305
  %43 = load i32, i32* %avn, align 4, !dbg !406, !tbaa !305
  %cmp54 = icmp slt i32 %42, %43, !dbg !407
  br i1 %cmp54, label %for.body, label %for.end, !dbg !408

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4, !dbg !409, !tbaa !305
  %idxprom = sext i32 %44 to i64, !dbg !410
  %45 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !410, !tbaa !285
  %arg_types = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %45, i32 0, i32 2, !dbg !411
  %46 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !411, !tbaa !412
  %arrayidx56 = getelementptr %struct._ffi_type*, %struct._ffi_type** %46, i64 %idxprom, !dbg !410
  %47 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx56, align 8, !dbg !410, !tbaa !285
  %arraydecay57 = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0, !dbg !413
  %call58 = call i32 @examine_argument(%struct._ffi_type* %47, i32* %arraydecay57, i1 zeroext false, i32* %ngpr, i32* %nsse), !dbg !414
  %cmp59 = icmp eq i32 %call58, 0, !dbg !415
  br i1 %cmp59, label %if.then.67, label %lor.lhs.false, !dbg !416

lor.lhs.false:                                    ; preds = %for.body
  %48 = load i32, i32* %gprcount, align 4, !dbg !417, !tbaa !305
  %49 = load i32, i32* %ngpr, align 4, !dbg !419, !tbaa !305
  %add = add i32 %48, %49, !dbg !420
  %cmp61 = icmp sgt i32 %add, 6, !dbg !421
  br i1 %cmp61, label %if.then.67, label %lor.lhs.false.63, !dbg !422

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %50 = load i32, i32* %ssecount, align 4, !dbg !423, !tbaa !305
  %51 = load i32, i32* %nsse, align 4, !dbg !424, !tbaa !305
  %add64 = add i32 %50, %51, !dbg !425
  %cmp65 = icmp sgt i32 %add64, 8, !dbg !426
  br i1 %cmp65, label %if.then.67, label %if.else.84, !dbg !427

if.then.67:                                       ; preds = %lor.lhs.false.63, %lor.lhs.false, %for.body
  %52 = bitcast i64* %align to i8*, !dbg !428
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !428
  call void @llvm.dbg.declare(metadata i64* %align, metadata !129, metadata !289), !dbg !429
  %53 = load i32, i32* %i, align 4, !dbg !430, !tbaa !305
  %idxprom68 = sext i32 %53 to i64, !dbg !431
  %54 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !431, !tbaa !285
  %arg_types69 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %54, i32 0, i32 2, !dbg !432
  %55 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types69, align 8, !dbg !432, !tbaa !412
  %arrayidx70 = getelementptr %struct._ffi_type*, %struct._ffi_type** %55, i64 %idxprom68, !dbg !431
  %56 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx70, align 8, !dbg !431, !tbaa !285
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %56, i32 0, i32 1, !dbg !433
  %57 = load i16, i16* %alignment, align 2, !dbg !433, !tbaa !434
  %conv71 = zext i16 %57 to i64, !dbg !431
  store i64 %conv71, i64* %align, align 8, !dbg !429, !tbaa !396
  %58 = load i64, i64* %align, align 8, !dbg !435, !tbaa !396
  %cmp72 = icmp slt i64 %58, 8, !dbg !437
  br i1 %cmp72, label %if.then.74, label %if.end.75, !dbg !438

if.then.74:                                       ; preds = %if.then.67
  store i64 8, i64* %align, align 8, !dbg !439, !tbaa !396
  br label %if.end.75, !dbg !440

if.end.75:                                        ; preds = %if.then.74, %if.then.67
  %59 = load i64, i64* %bytes, align 8, !dbg !441, !tbaa !396
  %sub = sub i64 %59, 1, !dbg !442
  %60 = load i64, i64* %align, align 8, !dbg !443, !tbaa !396
  %sub76 = sub i64 %60, 1, !dbg !444
  %or77 = or i64 %sub, %sub76, !dbg !445
  %add78 = add i64 %or77, 1, !dbg !446
  store i64 %add78, i64* %bytes, align 8, !dbg !447, !tbaa !396
  %61 = load i32, i32* %i, align 4, !dbg !448, !tbaa !305
  %idxprom79 = sext i32 %61 to i64, !dbg !449
  %62 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !449, !tbaa !285
  %arg_types80 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %62, i32 0, i32 2, !dbg !450
  %63 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types80, align 8, !dbg !450, !tbaa !412
  %arrayidx81 = getelementptr %struct._ffi_type*, %struct._ffi_type** %63, i64 %idxprom79, !dbg !449
  %64 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx81, align 8, !dbg !449, !tbaa !285
  %size82 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %64, i32 0, i32 0, !dbg !451
  %65 = load i64, i64* %size82, align 8, !dbg !451, !tbaa !389
  %66 = load i64, i64* %bytes, align 8, !dbg !452, !tbaa !396
  %add83 = add i64 %66, %65, !dbg !452
  store i64 %add83, i64* %bytes, align 8, !dbg !452, !tbaa !396
  %67 = bitcast i64* %align to i8*, !dbg !453
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !453
  br label %if.end.87, !dbg !454

if.else.84:                                       ; preds = %lor.lhs.false.63
  %68 = load i32, i32* %ngpr, align 4, !dbg !455, !tbaa !305
  %69 = load i32, i32* %gprcount, align 4, !dbg !457, !tbaa !305
  %add85 = add i32 %69, %68, !dbg !457
  store i32 %add85, i32* %gprcount, align 4, !dbg !457, !tbaa !305
  %70 = load i32, i32* %nsse, align 4, !dbg !458, !tbaa !305
  %71 = load i32, i32* %ssecount, align 4, !dbg !459, !tbaa !305
  %add86 = add i32 %71, %70, !dbg !459
  store i32 %add86, i32* %ssecount, align 4, !dbg !459, !tbaa !305
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.end.75
  br label %for.inc, !dbg !460

for.inc:                                          ; preds = %if.end.87
  %72 = load i32, i32* %i, align 4, !dbg !461, !tbaa !305
  %inc88 = add i32 %72, 1, !dbg !461
  store i32 %inc88, i32* %i, align 4, !dbg !461, !tbaa !305
  br label %for.cond, !dbg !462

for.end:                                          ; preds = %for.cond
  %73 = load i32, i32* %ssecount, align 4, !dbg !463, !tbaa !305
  %tobool89 = icmp ne i32 %73, 0, !dbg !463
  br i1 %tobool89, label %if.then.90, label %if.end.92, !dbg !465

if.then.90:                                       ; preds = %for.end
  %74 = load i32, i32* %flags, align 4, !dbg !466, !tbaa !305
  %or91 = or i32 %74, 2048, !dbg !466
  store i32 %or91, i32* %flags, align 4, !dbg !466, !tbaa !305
  br label %if.end.92, !dbg !467

if.end.92:                                        ; preds = %if.then.90, %for.end
  %75 = load i32, i32* %flags, align 4, !dbg !468, !tbaa !305
  %76 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !469, !tbaa !285
  %flags93 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %76, i32 0, i32 5, !dbg !470
  store i32 %75, i32* %flags93, align 4, !dbg !471, !tbaa !472
  %77 = load i64, i64* %bytes, align 8, !dbg !473, !tbaa !396
  %sub94 = sub i64 %77, 1, !dbg !474
  %or95 = or i64 %sub94, 7, !dbg !475
  %add96 = add i64 %or95, 1, !dbg !476
  %conv97 = trunc i64 %add96 to i32, !dbg !477
  %78 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !478, !tbaa !285
  %bytes98 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %78, i32 0, i32 4, !dbg !479
  store i32 %conv97, i32* %bytes98, align 4, !dbg !480, !tbaa !481
  %79 = bitcast i64* %bytes to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !482
  %80 = bitcast [4 x i32]* %classes to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 16, i8* %80) #2, !dbg !482
  %81 = bitcast i32* %flags to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 4, i8* %81) #2, !dbg !482
  %82 = bitcast i32* %nsse to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 4, i8* %82) #2, !dbg !482
  %83 = bitcast i32* %ngpr to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 4, i8* %83) #2, !dbg !482
  %84 = bitcast i32* %n to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 4, i8* %84) #2, !dbg !482
  %85 = bitcast i32* %avn to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 4, i8* %85) #2, !dbg !482
  %86 = bitcast i32* %i to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 4, i8* %86) #2, !dbg !482
  %87 = bitcast i32* %ssecount to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 4, i8* %87) #2, !dbg !482
  %88 = bitcast i32* %gprcount to i8*, !dbg !482
  call void @llvm.lifetime.end(i64 4, i8* %88) #2, !dbg !482
  ret i32 0, !dbg !483
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: uwtable
define internal i32 @examine_argument(%struct._ffi_type* %type, i32* %classes, i1 zeroext %in_return, i32* %pngpr, i32* %pnsse) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._ffi_type*, align 8
  %classes.addr = alloca i32*, align 8
  %in_return.addr = alloca i8, align 1
  %pngpr.addr = alloca i32*, align 8
  %pnsse.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ngpr = alloca i32, align 4
  %nsse = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._ffi_type* %type, %struct._ffi_type** %type.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %type.addr, metadata !241, metadata !289), !dbg !484
  store i32* %classes, i32** %classes.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i32** %classes.addr, metadata !242, metadata !289), !dbg !485
  %frombool = zext i1 %in_return to i8
  store i8 %frombool, i8* %in_return.addr, align 1, !tbaa !347
  call void @llvm.dbg.declare(metadata i8* %in_return.addr, metadata !243, metadata !289), !dbg !486
  store i32* %pngpr, i32** %pngpr.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i32** %pngpr.addr, metadata !244, metadata !289), !dbg !487
  store i32* %pnsse, i32** %pnsse.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i32** %pnsse.addr, metadata !245, metadata !289), !dbg !488
  %0 = bitcast i32* %i to i8*, !dbg !489
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !489
  call void @llvm.dbg.declare(metadata i32* %i, metadata !246, metadata !289), !dbg !490
  %1 = bitcast i32* %n to i8*, !dbg !489
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !489
  call void @llvm.dbg.declare(metadata i32* %n, metadata !247, metadata !289), !dbg !491
  %2 = bitcast i32* %ngpr to i8*, !dbg !489
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !489
  call void @llvm.dbg.declare(metadata i32* %ngpr, metadata !248, metadata !289), !dbg !492
  %3 = bitcast i32* %nsse to i8*, !dbg !489
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !489
  call void @llvm.dbg.declare(metadata i32* %nsse, metadata !249, metadata !289), !dbg !493
  %4 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !494, !tbaa !285
  %5 = load i32*, i32** %classes.addr, align 8, !dbg !495, !tbaa !285
  %call = call i32 @classify_argument(%struct._ffi_type* %4, i32* %5, i64 0), !dbg !496
  store i32 %call, i32* %n, align 4, !dbg !497, !tbaa !305
  %6 = load i32, i32* %n, align 4, !dbg !498, !tbaa !305
  %cmp = icmp eq i32 %6, 0, !dbg !500
  br i1 %cmp, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !502

if.end:                                           ; preds = %entry
  store i32 0, i32* %nsse, align 4, !dbg !503, !tbaa !305
  store i32 0, i32* %ngpr, align 4, !dbg !504, !tbaa !305
  store i32 0, i32* %i, align 4, !dbg !505, !tbaa !305
  br label %for.cond, !dbg !507

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !508, !tbaa !305
  %8 = load i32, i32* %n, align 4, !dbg !512, !tbaa !305
  %cmp1 = icmp slt i32 %7, %8, !dbg !513
  br i1 %cmp1, label %for.body, label %for.end, !dbg !514

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !515, !tbaa !305
  %idxprom = sext i32 %9 to i64, !dbg !516
  %10 = load i32*, i32** %classes.addr, align 8, !dbg !516, !tbaa !285
  %arrayidx = getelementptr i32, i32* %10, i64 %idxprom, !dbg !516
  %11 = load i32, i32* %arrayidx, align 4, !dbg !516, !tbaa !339
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 5, label %sw.bb.2
    i32 0, label %sw.bb.4
    i32 6, label %sw.bb.4
    i32 7, label %sw.bb.5
    i32 8, label %sw.bb.5
    i32 9, label %sw.bb.5
  ], !dbg !517

sw.bb:                                            ; preds = %for.body, %for.body
  %12 = load i32, i32* %ngpr, align 4, !dbg !518, !tbaa !305
  %inc = add i32 %12, 1, !dbg !518
  store i32 %inc, i32* %ngpr, align 4, !dbg !518, !tbaa !305
  br label %sw.epilog, !dbg !520

sw.bb.2:                                          ; preds = %for.body, %for.body, %for.body
  %13 = load i32, i32* %nsse, align 4, !dbg !521, !tbaa !305
  %inc3 = add i32 %13, 1, !dbg !521
  store i32 %inc3, i32* %nsse, align 4, !dbg !521, !tbaa !305
  br label %sw.epilog, !dbg !522

sw.bb.4:                                          ; preds = %for.body, %for.body
  br label %sw.epilog, !dbg !523

sw.bb.5:                                          ; preds = %for.body, %for.body, %for.body
  %14 = load i8, i8* %in_return.addr, align 1, !dbg !524, !tbaa !347, !range !363
  %tobool = trunc i8 %14 to i1, !dbg !524
  %conv = zext i1 %tobool to i32, !dbg !524
  %cmp6 = icmp ne i32 %conv, 0, !dbg !525
  %conv7 = zext i1 %cmp6 to i32, !dbg !525
  store i32 %conv7, i32* %retval, !dbg !526
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !526

sw.default:                                       ; preds = %for.body
  call void @abort() #6, !dbg !527
  unreachable, !dbg !527

sw.epilog:                                        ; preds = %sw.bb.4, %sw.bb.2, %sw.bb
  br label %for.inc, !dbg !528

for.inc:                                          ; preds = %sw.epilog
  %15 = load i32, i32* %i, align 4, !dbg !529, !tbaa !305
  %inc8 = add i32 %15, 1, !dbg !529
  store i32 %inc8, i32* %i, align 4, !dbg !529, !tbaa !305
  br label %for.cond, !dbg !530

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %ngpr, align 4, !dbg !531, !tbaa !305
  %17 = load i32*, i32** %pngpr.addr, align 8, !dbg !532, !tbaa !285
  store i32 %16, i32* %17, align 4, !dbg !533, !tbaa !305
  %18 = load i32, i32* %nsse, align 4, !dbg !534, !tbaa !305
  %19 = load i32*, i32** %pnsse.addr, align 8, !dbg !535, !tbaa !285
  store i32 %18, i32* %19, align 4, !dbg !536, !tbaa !305
  %20 = load i32, i32* %n, align 4, !dbg !537, !tbaa !305
  store i32 %20, i32* %retval, !dbg !538
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !538

cleanup:                                          ; preds = %for.end, %sw.bb.5, %if.then
  %21 = bitcast i32* %nsse to i8*, !dbg !539
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !539
  %22 = bitcast i32* %ngpr to i8*, !dbg !539
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !539
  %23 = bitcast i32* %n to i8*, !dbg !539
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !539
  %24 = bitcast i32* %i to i8*, !dbg !539
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !539
  %25 = load i32, i32* %retval, !dbg !539
  ret i32 %25, !dbg !539
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: uwtable
define void @ffi_call(%struct.ffi_cif* %cif, void ()* %fn, i8* %rvalue, i8** %avalue) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %fn.addr = alloca void ()*, align 8
  %rvalue.addr = alloca i8*, align 8
  %avalue.addr = alloca i8**, align 8
  %classes = alloca [4 x i32], align 16
  %stack = alloca i8*, align 8
  %argp = alloca i8*, align 8
  %arg_types = alloca %struct._ffi_type**, align 8
  %gprcount = alloca i32, align 4
  %ssecount = alloca i32, align 4
  %ngpr = alloca i32, align 4
  %nsse = alloca i32, align 4
  %i = alloca i32, align 4
  %avn = alloca i32, align 4
  %ret_in_memory = alloca i8, align 1
  %reg_args = alloca %struct.register_args*, align 8
  %size16 = alloca i64, align 8
  %n = alloca i32, align 4
  %align = alloca i64, align 8
  %a = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !143, metadata !289), !dbg !540
  store void ()* %fn, void ()** %fn.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata void ()** %fn.addr, metadata !144, metadata !289), !dbg !541
  store i8* %rvalue, i8** %rvalue.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %rvalue.addr, metadata !145, metadata !289), !dbg !542
  store i8** %avalue, i8*** %avalue.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8*** %avalue.addr, metadata !146, metadata !289), !dbg !543
  %0 = bitcast [4 x i32]* %classes to i8*, !dbg !544
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !544
  call void @llvm.dbg.declare(metadata [4 x i32]* %classes, metadata !147, metadata !289), !dbg !545
  %1 = bitcast i8** %stack to i8*, !dbg !546
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !546
  call void @llvm.dbg.declare(metadata i8** %stack, metadata !148, metadata !289), !dbg !547
  %2 = bitcast i8** %argp to i8*, !dbg !546
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !546
  call void @llvm.dbg.declare(metadata i8** %argp, metadata !149, metadata !289), !dbg !548
  %3 = bitcast %struct._ffi_type*** %arg_types to i8*, !dbg !549
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !549
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %arg_types, metadata !150, metadata !289), !dbg !550
  %4 = bitcast i32* %gprcount to i8*, !dbg !551
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !551
  call void @llvm.dbg.declare(metadata i32* %gprcount, metadata !151, metadata !289), !dbg !552
  %5 = bitcast i32* %ssecount to i8*, !dbg !551
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !551
  call void @llvm.dbg.declare(metadata i32* %ssecount, metadata !152, metadata !289), !dbg !553
  %6 = bitcast i32* %ngpr to i8*, !dbg !551
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !551
  call void @llvm.dbg.declare(metadata i32* %ngpr, metadata !153, metadata !289), !dbg !554
  %7 = bitcast i32* %nsse to i8*, !dbg !551
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !551
  call void @llvm.dbg.declare(metadata i32* %nsse, metadata !154, metadata !289), !dbg !555
  %8 = bitcast i32* %i to i8*, !dbg !551
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !551
  call void @llvm.dbg.declare(metadata i32* %i, metadata !155, metadata !289), !dbg !556
  %9 = bitcast i32* %avn to i8*, !dbg !551
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !551
  call void @llvm.dbg.declare(metadata i32* %avn, metadata !156, metadata !289), !dbg !557
  call void @llvm.lifetime.start(i64 1, i8* %ret_in_memory) #2, !dbg !558
  call void @llvm.dbg.declare(metadata i8* %ret_in_memory, metadata !157, metadata !289), !dbg !559
  %10 = bitcast %struct.register_args** %reg_args to i8*, !dbg !560
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !560
  call void @llvm.dbg.declare(metadata %struct.register_args** %reg_args, metadata !158, metadata !289), !dbg !561
  %11 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !562, !tbaa !285
  %rtype = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %11, i32 0, i32 3, !dbg !563
  %12 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8, !dbg !563, !tbaa !310
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %12, i32 0, i32 2, !dbg !564
  %13 = load i16, i16* %type, align 2, !dbg !564, !tbaa !313
  %conv = zext i16 %13 to i32, !dbg !562
  %cmp = icmp eq i32 %conv, 13, !dbg !565
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !566

land.rhs:                                         ; preds = %entry
  %14 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !567, !tbaa !285
  %flags = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %14, i32 0, i32 5, !dbg !569
  %15 = load i32, i32* %flags, align 4, !dbg !569, !tbaa !472
  %and = and i32 %15, 255, !dbg !570
  %cmp2 = icmp eq i32 %and, 0, !dbg !571
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %frombool = zext i1 %16 to i8, !dbg !572
  store i8 %frombool, i8* %ret_in_memory, align 1, !dbg !572, !tbaa !347
  %17 = load i8*, i8** %rvalue.addr, align 8, !dbg !573, !tbaa !285
  %cmp4 = icmp eq i8* %17, null, !dbg !575
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !576

land.lhs.true:                                    ; preds = %land.end
  %18 = load i8, i8* %ret_in_memory, align 1, !dbg !577, !tbaa !347, !range !363
  %tobool = trunc i8 %18 to i1, !dbg !577
  br i1 %tobool, label %if.then, label %if.end, !dbg !579

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !580, !tbaa !285
  %rtype7 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %19, i32 0, i32 3, !dbg !581
  %20 = load %struct._ffi_type*, %struct._ffi_type** %rtype7, align 8, !dbg !581, !tbaa !310
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %20, i32 0, i32 0, !dbg !582
  %21 = load i64, i64* %size, align 8, !dbg !582, !tbaa !389
  %22 = alloca i8, i64 %21, !dbg !583
  store i8* %22, i8** %rvalue.addr, align 8, !dbg !584, !tbaa !285
  br label %if.end, !dbg !585

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %23 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !586, !tbaa !285
  %bytes = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %23, i32 0, i32 4, !dbg !587
  %24 = load i32, i32* %bytes, align 4, !dbg !587, !tbaa !481
  %conv8 = zext i32 %24 to i64, !dbg !586
  %add = add i64 176, %conv8, !dbg !588
  %add9 = add i64 %add, 32, !dbg !589
  %25 = alloca i8, i64 %add9, !dbg !590
  store i8* %25, i8** %stack, align 8, !dbg !591, !tbaa !285
  %26 = load i8*, i8** %stack, align 8, !dbg !592, !tbaa !285
  %27 = bitcast i8* %26 to %struct.register_args*, !dbg !593
  store %struct.register_args* %27, %struct.register_args** %reg_args, align 8, !dbg !594, !tbaa !285
  %28 = load i8*, i8** %stack, align 8, !dbg !595, !tbaa !285
  %add.ptr = getelementptr i8, i8* %28, i64 176, !dbg !596
  store i8* %add.ptr, i8** %argp, align 8, !dbg !597, !tbaa !285
  store i32 0, i32* %ssecount, align 4, !dbg !598, !tbaa !305
  store i32 0, i32* %gprcount, align 4, !dbg !599, !tbaa !305
  %29 = load i8, i8* %ret_in_memory, align 1, !dbg !600, !tbaa !347, !range !363
  %tobool10 = trunc i8 %29 to i1, !dbg !600
  br i1 %tobool10, label %if.then.11, label %if.end.12, !dbg !602

if.then.11:                                       ; preds = %if.end
  %30 = load i8*, i8** %rvalue.addr, align 8, !dbg !603, !tbaa !285
  %31 = ptrtoint i8* %30 to i64, !dbg !604
  %32 = load i32, i32* %gprcount, align 4, !dbg !605, !tbaa !305
  %inc = add i32 %32, 1, !dbg !605
  store i32 %inc, i32* %gprcount, align 4, !dbg !605, !tbaa !305
  %idxprom = sext i32 %32 to i64, !dbg !606
  %33 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !606, !tbaa !285
  %gpr = getelementptr inbounds %struct.register_args, %struct.register_args* %33, i32 0, i32 0, !dbg !607
  %arrayidx = getelementptr [6 x i64], [6 x i64]* %gpr, i32 0, i64 %idxprom, !dbg !606
  store i64 %31, i64* %arrayidx, align 8, !dbg !608, !tbaa !396
  br label %if.end.12, !dbg !606

if.end.12:                                        ; preds = %if.then.11, %if.end
  %34 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !609, !tbaa !285
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %34, i32 0, i32 1, !dbg !610
  %35 = load i32, i32* %nargs, align 4, !dbg !610, !tbaa !400
  store i32 %35, i32* %avn, align 4, !dbg !611, !tbaa !305
  %36 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !612, !tbaa !285
  %arg_types13 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %36, i32 0, i32 2, !dbg !613
  %37 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types13, align 8, !dbg !613, !tbaa !412
  store %struct._ffi_type** %37, %struct._ffi_type*** %arg_types, align 8, !dbg !614, !tbaa !285
  store i32 0, i32* %i, align 4, !dbg !615, !tbaa !305
  br label %for.cond, !dbg !616

for.cond:                                         ; preds = %for.inc.95, %if.end.12
  %38 = load i32, i32* %i, align 4, !dbg !617, !tbaa !305
  %39 = load i32, i32* %avn, align 4, !dbg !620, !tbaa !305
  %cmp14 = icmp slt i32 %38, %39, !dbg !621
  br i1 %cmp14, label %for.body, label %for.end.97, !dbg !622

for.body:                                         ; preds = %for.cond
  %40 = bitcast i64* %size16 to i8*, !dbg !623
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !623
  call void @llvm.dbg.declare(metadata i64* %size16, metadata !159, metadata !289), !dbg !624
  %41 = load i32, i32* %i, align 4, !dbg !625, !tbaa !305
  %idxprom17 = sext i32 %41 to i64, !dbg !626
  %42 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !626, !tbaa !285
  %arrayidx18 = getelementptr %struct._ffi_type*, %struct._ffi_type** %42, i64 %idxprom17, !dbg !626
  %43 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx18, align 8, !dbg !626, !tbaa !285
  %size19 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %43, i32 0, i32 0, !dbg !627
  %44 = load i64, i64* %size19, align 8, !dbg !627, !tbaa !389
  store i64 %44, i64* %size16, align 8, !dbg !624, !tbaa !396
  %45 = bitcast i32* %n to i8*, !dbg !628
  call void @llvm.lifetime.start(i64 4, i8* %45) #2, !dbg !628
  call void @llvm.dbg.declare(metadata i32* %n, metadata !163, metadata !289), !dbg !629
  %46 = load i32, i32* %i, align 4, !dbg !630, !tbaa !305
  %idxprom20 = sext i32 %46 to i64, !dbg !631
  %47 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !631, !tbaa !285
  %arrayidx21 = getelementptr %struct._ffi_type*, %struct._ffi_type** %47, i64 %idxprom20, !dbg !631
  %48 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx21, align 8, !dbg !631, !tbaa !285
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0, !dbg !632
  %call = call i32 @examine_argument(%struct._ffi_type* %48, i32* %arraydecay, i1 zeroext false, i32* %ngpr, i32* %nsse), !dbg !633
  store i32 %call, i32* %n, align 4, !dbg !634, !tbaa !305
  %49 = load i32, i32* %n, align 4, !dbg !635, !tbaa !305
  %cmp22 = icmp eq i32 %49, 0, !dbg !636
  br i1 %cmp22, label %if.then.31, label %lor.lhs.false, !dbg !637

lor.lhs.false:                                    ; preds = %for.body
  %50 = load i32, i32* %gprcount, align 4, !dbg !638, !tbaa !305
  %51 = load i32, i32* %ngpr, align 4, !dbg !640, !tbaa !305
  %add24 = add i32 %50, %51, !dbg !641
  %cmp25 = icmp sgt i32 %add24, 6, !dbg !642
  br i1 %cmp25, label %if.then.31, label %lor.lhs.false.27, !dbg !643

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %52 = load i32, i32* %ssecount, align 4, !dbg !644, !tbaa !305
  %53 = load i32, i32* %nsse, align 4, !dbg !645, !tbaa !305
  %add28 = add i32 %52, %53, !dbg !646
  %cmp29 = icmp sgt i32 %add28, 8, !dbg !647
  br i1 %cmp29, label %if.then.31, label %if.else, !dbg !648

if.then.31:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false, %for.body
  %54 = bitcast i64* %align to i8*, !dbg !649
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !649
  call void @llvm.dbg.declare(metadata i64* %align, metadata !164, metadata !289), !dbg !650
  %55 = load i32, i32* %i, align 4, !dbg !651, !tbaa !305
  %idxprom32 = sext i32 %55 to i64, !dbg !652
  %56 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !652, !tbaa !285
  %arrayidx33 = getelementptr %struct._ffi_type*, %struct._ffi_type** %56, i64 %idxprom32, !dbg !652
  %57 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx33, align 8, !dbg !652, !tbaa !285
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %57, i32 0, i32 1, !dbg !653
  %58 = load i16, i16* %alignment, align 2, !dbg !653, !tbaa !434
  %conv34 = zext i16 %58 to i64, !dbg !652
  store i64 %conv34, i64* %align, align 8, !dbg !650, !tbaa !396
  %59 = load i64, i64* %align, align 8, !dbg !654, !tbaa !396
  %cmp35 = icmp slt i64 %59, 8, !dbg !656
  br i1 %cmp35, label %if.then.37, label %if.end.38, !dbg !657

if.then.37:                                       ; preds = %if.then.31
  store i64 8, i64* %align, align 8, !dbg !658, !tbaa !396
  br label %if.end.38, !dbg !659

if.end.38:                                        ; preds = %if.then.37, %if.then.31
  %60 = load i8*, i8** %argp, align 8, !dbg !660, !tbaa !285
  %61 = ptrtoint i8* %60 to i64, !dbg !661
  %sub = sub i64 %61, 1, !dbg !662
  %62 = load i64, i64* %align, align 8, !dbg !663, !tbaa !396
  %sub39 = sub i64 %62, 1, !dbg !664
  %or = or i64 %sub, %sub39, !dbg !665
  %add40 = add i64 %or, 1, !dbg !666
  %63 = inttoptr i64 %add40 to i8*, !dbg !667
  store i8* %63, i8** %argp, align 8, !dbg !668, !tbaa !285
  %64 = load i8*, i8** %argp, align 8, !dbg !669, !tbaa !285
  %65 = load i32, i32* %i, align 4, !dbg !670, !tbaa !305
  %idxprom41 = sext i32 %65 to i64, !dbg !671
  %66 = load i8**, i8*** %avalue.addr, align 8, !dbg !671, !tbaa !285
  %arrayidx42 = getelementptr i8*, i8** %66, i64 %idxprom41, !dbg !671
  %67 = load i8*, i8** %arrayidx42, align 8, !dbg !671, !tbaa !285
  %68 = load i64, i64* %size16, align 8, !dbg !672, !tbaa !396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %67, i64 %68, i32 1, i1 false), !dbg !673
  %69 = load i64, i64* %size16, align 8, !dbg !674, !tbaa !396
  %70 = load i8*, i8** %argp, align 8, !dbg !675, !tbaa !285
  %add.ptr43 = getelementptr i8, i8* %70, i64 %69, !dbg !675
  store i8* %add.ptr43, i8** %argp, align 8, !dbg !675, !tbaa !285
  %71 = bitcast i64* %align to i8*, !dbg !676
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !676
  br label %if.end.94, !dbg !677

if.else:                                          ; preds = %lor.lhs.false.27
  %72 = bitcast i8** %a to i8*, !dbg !678
  call void @llvm.lifetime.start(i64 8, i8* %72) #2, !dbg !678
  call void @llvm.dbg.declare(metadata i8** %a, metadata !167, metadata !289), !dbg !679
  %73 = load i32, i32* %i, align 4, !dbg !680, !tbaa !305
  %idxprom44 = sext i32 %73 to i64, !dbg !681
  %74 = load i8**, i8*** %avalue.addr, align 8, !dbg !681, !tbaa !285
  %arrayidx45 = getelementptr i8*, i8** %74, i64 %idxprom44, !dbg !681
  %75 = load i8*, i8** %arrayidx45, align 8, !dbg !681, !tbaa !285
  store i8* %75, i8** %a, align 8, !dbg !679, !tbaa !285
  %76 = bitcast i32* %j to i8*, !dbg !682
  call void @llvm.lifetime.start(i64 4, i8* %76) #2, !dbg !682
  call void @llvm.dbg.declare(metadata i32* %j, metadata !169, metadata !289), !dbg !683
  store i32 0, i32* %j, align 4, !dbg !684, !tbaa !305
  br label %for.cond.46, !dbg !686

for.cond.46:                                      ; preds = %for.inc, %if.else
  %77 = load i32, i32* %j, align 4, !dbg !687, !tbaa !305
  %78 = load i32, i32* %n, align 4, !dbg !691, !tbaa !305
  %cmp47 = icmp slt i32 %77, %78, !dbg !692
  br i1 %cmp47, label %for.body.49, label %for.end, !dbg !693

for.body.49:                                      ; preds = %for.cond.46
  %79 = load i32, i32* %j, align 4, !dbg !694, !tbaa !305
  %idxprom50 = sext i32 %79 to i64, !dbg !696
  %arrayidx51 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 %idxprom50, !dbg !696
  %80 = load i32, i32* %arrayidx51, align 4, !dbg !696, !tbaa !339
  switch i32 %80, label %sw.default.89 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.80
    i32 5, label %sw.bb.80
    i32 4, label %sw.bb.84
  ], !dbg !697

sw.bb:                                            ; preds = %for.body.49, %for.body.49
  %81 = load i32, i32* %i, align 4, !dbg !698, !tbaa !305
  %idxprom52 = sext i32 %81 to i64, !dbg !700
  %82 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !700, !tbaa !285
  %arrayidx53 = getelementptr %struct._ffi_type*, %struct._ffi_type** %82, i64 %idxprom52, !dbg !700
  %83 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx53, align 8, !dbg !700, !tbaa !285
  %type54 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %83, i32 0, i32 2, !dbg !701
  %84 = load i16, i16* %type54, align 2, !dbg !701, !tbaa !313
  %conv55 = zext i16 %84 to i32, !dbg !700
  switch i32 %conv55, label %sw.default [
    i32 6, label %sw.bb.56
    i32 8, label %sw.bb.61
    i32 10, label %sw.bb.66
  ], !dbg !702

sw.bb.56:                                         ; preds = %sw.bb
  %85 = load i8*, i8** %a, align 8, !dbg !703, !tbaa !285
  %86 = load i8, i8* %85, align 1, !dbg !705, !tbaa !339
  %conv57 = sext i8 %86 to i64, !dbg !706
  %87 = load i32, i32* %gprcount, align 4, !dbg !707, !tbaa !305
  %idxprom58 = sext i32 %87 to i64, !dbg !708
  %88 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !708, !tbaa !285
  %gpr59 = getelementptr inbounds %struct.register_args, %struct.register_args* %88, i32 0, i32 0, !dbg !709
  %arrayidx60 = getelementptr [6 x i64], [6 x i64]* %gpr59, i32 0, i64 %idxprom58, !dbg !708
  store i64 %conv57, i64* %arrayidx60, align 8, !dbg !710, !tbaa !396
  br label %sw.epilog, !dbg !711

sw.bb.61:                                         ; preds = %sw.bb
  %89 = load i8*, i8** %a, align 8, !dbg !712, !tbaa !285
  %90 = bitcast i8* %89 to i16*, !dbg !713
  %91 = load i16, i16* %90, align 2, !dbg !714, !tbaa !715
  %conv62 = sext i16 %91 to i64, !dbg !716
  %92 = load i32, i32* %gprcount, align 4, !dbg !717, !tbaa !305
  %idxprom63 = sext i32 %92 to i64, !dbg !718
  %93 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !718, !tbaa !285
  %gpr64 = getelementptr inbounds %struct.register_args, %struct.register_args* %93, i32 0, i32 0, !dbg !719
  %arrayidx65 = getelementptr [6 x i64], [6 x i64]* %gpr64, i32 0, i64 %idxprom63, !dbg !718
  store i64 %conv62, i64* %arrayidx65, align 8, !dbg !720, !tbaa !396
  br label %sw.epilog, !dbg !721

sw.bb.66:                                         ; preds = %sw.bb
  %94 = load i8*, i8** %a, align 8, !dbg !722, !tbaa !285
  %95 = bitcast i8* %94 to i32*, !dbg !723
  %96 = load i32, i32* %95, align 4, !dbg !724, !tbaa !305
  %conv67 = sext i32 %96 to i64, !dbg !725
  %97 = load i32, i32* %gprcount, align 4, !dbg !726, !tbaa !305
  %idxprom68 = sext i32 %97 to i64, !dbg !727
  %98 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !727, !tbaa !285
  %gpr69 = getelementptr inbounds %struct.register_args, %struct.register_args* %98, i32 0, i32 0, !dbg !728
  %arrayidx70 = getelementptr [6 x i64], [6 x i64]* %gpr69, i32 0, i64 %idxprom68, !dbg !727
  store i64 %conv67, i64* %arrayidx70, align 8, !dbg !729, !tbaa !396
  br label %sw.epilog, !dbg !730

sw.default:                                       ; preds = %sw.bb
  %99 = load i32, i32* %gprcount, align 4, !dbg !731, !tbaa !305
  %idxprom71 = sext i32 %99 to i64, !dbg !732
  %100 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !732, !tbaa !285
  %gpr72 = getelementptr inbounds %struct.register_args, %struct.register_args* %100, i32 0, i32 0, !dbg !733
  %arrayidx73 = getelementptr [6 x i64], [6 x i64]* %gpr72, i32 0, i64 %idxprom71, !dbg !732
  store i64 0, i64* %arrayidx73, align 8, !dbg !734, !tbaa !396
  %101 = load i32, i32* %gprcount, align 4, !dbg !735, !tbaa !305
  %idxprom74 = sext i32 %101 to i64, !dbg !736
  %102 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !736, !tbaa !285
  %gpr75 = getelementptr inbounds %struct.register_args, %struct.register_args* %102, i32 0, i32 0, !dbg !737
  %arrayidx76 = getelementptr [6 x i64], [6 x i64]* %gpr75, i32 0, i64 %idxprom74, !dbg !736
  %103 = bitcast i64* %arrayidx76 to i8*, !dbg !738
  %104 = load i8*, i8** %a, align 8, !dbg !739, !tbaa !285
  %105 = load i64, i64* %size16, align 8, !dbg !740, !tbaa !396
  %cmp77 = icmp ult i64 %105, 8, !dbg !741
  br i1 %cmp77, label %cond.true, label %cond.false, !dbg !740

cond.true:                                        ; preds = %sw.default
  %106 = load i64, i64* %size16, align 8, !dbg !742, !tbaa !396
  br label %cond.end, !dbg !740

cond.false:                                       ; preds = %sw.default
  br label %cond.end, !dbg !744

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %106, %cond.true ], [ 8, %cond.false ], !dbg !740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 %cond, i32 1, i1 false), !dbg !746
  br label %sw.epilog, !dbg !749

sw.epilog:                                        ; preds = %cond.end, %sw.bb.66, %sw.bb.61, %sw.bb.56
  %107 = load i32, i32* %gprcount, align 4, !dbg !750, !tbaa !305
  %inc79 = add i32 %107, 1, !dbg !750
  store i32 %inc79, i32* %gprcount, align 4, !dbg !750, !tbaa !305
  br label %sw.epilog.90, !dbg !751

sw.bb.80:                                         ; preds = %for.body.49, %for.body.49
  %108 = load i8*, i8** %a, align 8, !dbg !752, !tbaa !285
  %109 = bitcast i8* %108 to i64*, !dbg !753
  %110 = load i64, i64* %109, align 8, !dbg !754, !tbaa !396
  %111 = load i32, i32* %ssecount, align 4, !dbg !755, !tbaa !305
  %inc81 = add i32 %111, 1, !dbg !755
  store i32 %inc81, i32* %ssecount, align 4, !dbg !755, !tbaa !305
  %idxprom82 = sext i32 %111 to i64, !dbg !756
  %112 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !756, !tbaa !285
  %sse = getelementptr inbounds %struct.register_args, %struct.register_args* %112, i32 0, i32 1, !dbg !757
  %arrayidx83 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse, i32 0, i64 %idxprom82, !dbg !756
  %i64 = bitcast %union.big_int_union* %arrayidx83 to i64*, !dbg !758
  store i64 %110, i64* %i64, align 8, !dbg !759, !tbaa !396
  br label %sw.epilog.90, !dbg !760

sw.bb.84:                                         ; preds = %for.body.49
  %113 = load i8*, i8** %a, align 8, !dbg !761, !tbaa !285
  %114 = bitcast i8* %113 to i32*, !dbg !762
  %115 = load i32, i32* %114, align 4, !dbg !763, !tbaa !305
  %116 = load i32, i32* %ssecount, align 4, !dbg !764, !tbaa !305
  %inc85 = add i32 %116, 1, !dbg !764
  store i32 %inc85, i32* %ssecount, align 4, !dbg !764, !tbaa !305
  %idxprom86 = sext i32 %116 to i64, !dbg !765
  %117 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !765, !tbaa !285
  %sse87 = getelementptr inbounds %struct.register_args, %struct.register_args* %117, i32 0, i32 1, !dbg !766
  %arrayidx88 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse87, i32 0, i64 %idxprom86, !dbg !765
  %i32 = bitcast %union.big_int_union* %arrayidx88 to i32*, !dbg !767
  store i32 %115, i32* %i32, align 4, !dbg !768, !tbaa !305
  br label %sw.epilog.90, !dbg !769

sw.default.89:                                    ; preds = %for.body.49
  call void @abort() #6, !dbg !770
  unreachable, !dbg !770

sw.epilog.90:                                     ; preds = %sw.bb.84, %sw.bb.80, %sw.epilog
  br label %for.inc, !dbg !771

for.inc:                                          ; preds = %sw.epilog.90
  %118 = load i32, i32* %j, align 4, !dbg !772, !tbaa !305
  %inc91 = add i32 %118, 1, !dbg !772
  store i32 %inc91, i32* %j, align 4, !dbg !772, !tbaa !305
  %119 = load i8*, i8** %a, align 8, !dbg !773, !tbaa !285
  %add.ptr92 = getelementptr i8, i8* %119, i64 8, !dbg !773
  store i8* %add.ptr92, i8** %a, align 8, !dbg !773, !tbaa !285
  %120 = load i64, i64* %size16, align 8, !dbg !774, !tbaa !396
  %sub93 = sub i64 %120, 8, !dbg !774
  store i64 %sub93, i64* %size16, align 8, !dbg !774, !tbaa !396
  br label %for.cond.46, !dbg !775

for.end:                                          ; preds = %for.cond.46
  %121 = bitcast i32* %j to i8*, !dbg !776
  call void @llvm.lifetime.end(i64 4, i8* %121) #2, !dbg !776
  %122 = bitcast i8** %a to i8*, !dbg !776
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !776
  br label %if.end.94

if.end.94:                                        ; preds = %for.end, %if.end.38
  %123 = bitcast i32* %n to i8*, !dbg !777
  call void @llvm.lifetime.end(i64 4, i8* %123) #2, !dbg !777
  %124 = bitcast i64* %size16 to i8*, !dbg !777
  call void @llvm.lifetime.end(i64 8, i8* %124) #2, !dbg !777
  br label %for.inc.95, !dbg !778

for.inc.95:                                       ; preds = %if.end.94
  %125 = load i32, i32* %i, align 4, !dbg !779, !tbaa !305
  %inc96 = add i32 %125, 1, !dbg !779
  store i32 %inc96, i32* %i, align 4, !dbg !779, !tbaa !305
  br label %for.cond, !dbg !780

for.end.97:                                       ; preds = %for.cond
  %126 = load i8*, i8** %stack, align 8, !dbg !781, !tbaa !285
  %127 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !782, !tbaa !285
  %bytes98 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %127, i32 0, i32 4, !dbg !783
  %128 = load i32, i32* %bytes98, align 4, !dbg !783, !tbaa !481
  %conv99 = zext i32 %128 to i64, !dbg !782
  %add100 = add i64 %conv99, 176, !dbg !784
  %129 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !785, !tbaa !285
  %flags101 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %129, i32 0, i32 5, !dbg !786
  %130 = load i32, i32* %flags101, align 4, !dbg !786, !tbaa !472
  %131 = load i8*, i8** %rvalue.addr, align 8, !dbg !787, !tbaa !285
  %132 = load void ()*, void ()** %fn.addr, align 8, !dbg !788, !tbaa !285
  %133 = load i32, i32* %ssecount, align 4, !dbg !789, !tbaa !305
  call void @ffi_call_unix64(i8* %126, i64 %add100, i32 %130, i8* %131, void ()* %132, i32 %133), !dbg !790
  %134 = bitcast %struct.register_args** %reg_args to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 8, i8* %134) #2, !dbg !791
  call void @llvm.lifetime.end(i64 1, i8* %ret_in_memory) #2, !dbg !791
  %135 = bitcast i32* %avn to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 4, i8* %135) #2, !dbg !791
  %136 = bitcast i32* %i to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 4, i8* %136) #2, !dbg !791
  %137 = bitcast i32* %nsse to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 4, i8* %137) #2, !dbg !791
  %138 = bitcast i32* %ngpr to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 4, i8* %138) #2, !dbg !791
  %139 = bitcast i32* %ssecount to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 4, i8* %139) #2, !dbg !791
  %140 = bitcast i32* %gprcount to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 4, i8* %140) #2, !dbg !791
  %141 = bitcast %struct._ffi_type*** %arg_types to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 8, i8* %141) #2, !dbg !791
  %142 = bitcast i8** %argp to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 8, i8* %142) #2, !dbg !791
  %143 = bitcast i8** %stack to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 8, i8* %143) #2, !dbg !791
  %144 = bitcast [4 x i32]* %classes to i8*, !dbg !791
  call void @llvm.lifetime.end(i64 16, i8* %144) #2, !dbg !791
  ret void, !dbg !791
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare void @ffi_call_unix64(i8*, i64, i32, i8*, void ()*, i32) #4

; Function Attrs: nounwind uwtable
define i32 @ffi_prep_closure_loc(%struct.ffi_closure* %closure, %struct.ffi_cif* %cif, void (%struct.ffi_cif*, i8*, i8**, i8*)* %fun, i8* %user_data, i8* %codeloc) #5 {
entry:
  %retval = alloca i32, align 4
  %closure.addr = alloca %struct.ffi_closure*, align 8
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %fun.addr = alloca void (%struct.ffi_cif*, i8*, i8**, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %codeloc.addr = alloca i8*, align 8
  %tramp = alloca i16*, align 8
  %abi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ffi_closure* %closure, %struct.ffi_closure** %closure.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct.ffi_closure** %closure.addr, metadata !188, metadata !289), !dbg !792
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !189, metadata !289), !dbg !793
  store void (%struct.ffi_cif*, i8*, i8**, i8*)* %fun, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, metadata !190, metadata !289), !dbg !794
  store i8* %user_data, i8** %user_data.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %user_data.addr, metadata !191, metadata !289), !dbg !795
  store i8* %codeloc, i8** %codeloc.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %codeloc.addr, metadata !192, metadata !289), !dbg !796
  %0 = bitcast i16** %tramp to i8*, !dbg !797
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !797
  call void @llvm.dbg.declare(metadata i16** %tramp, metadata !193, metadata !289), !dbg !798
  %1 = bitcast i32* %abi to i8*, !dbg !799
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !799
  call void @llvm.dbg.declare(metadata i32* %abi, metadata !194, metadata !289), !dbg !800
  %2 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !801, !tbaa !285
  %abi1 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %2, i32 0, i32 0, !dbg !802
  %3 = load i32, i32* %abi1, align 4, !dbg !802, !tbaa !803
  store i32 %3, i32* %abi, align 4, !dbg !800, !tbaa !305
  %4 = load i32, i32* %abi, align 4, !dbg !804, !tbaa !305
  %cmp = icmp sgt i32 %4, 0, !dbg !806
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !807

land.rhs:                                         ; preds = %entry
  %5 = load i32, i32* %abi, align 4, !dbg !808, !tbaa !305
  %cmp2 = icmp slt i32 %5, 3, !dbg !810
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %lnot = xor i1 %6, true, !dbg !811
  %lnot.ext = zext i1 %lnot to i32, !dbg !811
  %cmp3 = icmp ne i32 %lnot.ext, 0, !dbg !813
  %conv = zext i1 %cmp3 to i32, !dbg !813
  %conv4 = sext i32 %conv to i64, !dbg !814
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !815
  %tobool = icmp ne i64 %expval, 0, !dbg !815
  br i1 %tobool, label %if.then, label %if.end, !dbg !816

if.then:                                          ; preds = %land.end
  store i32 2, i32* %retval, !dbg !817
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !817

if.end:                                           ; preds = %land.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !818
  br label %cleanup, !dbg !818

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %abi to i8*, !dbg !819
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !819
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %8 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !821, !tbaa !285
  %tramp5 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %8, i32 0, i32 0, !dbg !822
  %arrayidx = getelementptr [24 x i8], [24 x i8]* %tramp5, i32 0, i64 0, !dbg !821
  %9 = bitcast i8* %arrayidx to i16*, !dbg !823
  store i16* %9, i16** %tramp, align 8, !dbg !824, !tbaa !285
  %10 = load i16*, i16** %tramp, align 8, !dbg !825, !tbaa !285
  %arrayidx6 = getelementptr i16, i16* %10, i64 0, !dbg !825
  store volatile i16 -17591, i16* %arrayidx6, align 2, !dbg !826, !tbaa !715
  %11 = load i16*, i16** %tramp, align 8, !dbg !827, !tbaa !285
  %arrayidx7 = getelementptr i16, i16* %11, i64 1, !dbg !827
  %12 = bitcast i16* %arrayidx7 to i64*, !dbg !828
  store i64 ptrtoint (void ()* @ffi_closure_unix64 to i64), i64* %12, align 8, !dbg !829, !tbaa !830
  %13 = load i16*, i16** %tramp, align 8, !dbg !832, !tbaa !285
  %arrayidx8 = getelementptr i16, i16* %13, i64 5, !dbg !832
  store volatile i16 -17847, i16* %arrayidx8, align 2, !dbg !833, !tbaa !715
  %14 = load i8*, i8** %codeloc.addr, align 8, !dbg !834, !tbaa !285
  %15 = ptrtoint i8* %14 to i64, !dbg !835
  %16 = load i16*, i16** %tramp, align 8, !dbg !836, !tbaa !285
  %arrayidx9 = getelementptr i16, i16* %16, i64 6, !dbg !836
  %17 = bitcast i16* %arrayidx9 to i64*, !dbg !837
  store i64 %15, i64* %17, align 8, !dbg !838, !tbaa !830
  %18 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !839, !tbaa !285
  %flags = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %18, i32 0, i32 5, !dbg !840
  %19 = load i32, i32* %flags, align 4, !dbg !840, !tbaa !472
  %and = and i32 %19, 2048, !dbg !841
  %tobool10 = icmp ne i32 %and, 0, !dbg !839
  %cond = select i1 %tobool10, i32 18937, i32 18936, !dbg !839
  %conv11 = trunc i32 %cond to i16, !dbg !839
  %20 = load i16*, i16** %tramp, align 8, !dbg !842, !tbaa !285
  %arrayidx12 = getelementptr i16, i16* %20, i64 10, !dbg !842
  store volatile i16 %conv11, i16* %arrayidx12, align 2, !dbg !843, !tbaa !715
  %21 = load i16*, i16** %tramp, align 8, !dbg !844, !tbaa !285
  %arrayidx13 = getelementptr i16, i16* %21, i64 11, !dbg !844
  store volatile i16 -7169, i16* %arrayidx13, align 2, !dbg !845, !tbaa !715
  %22 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !846, !tbaa !285
  %23 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !847, !tbaa !285
  %cif14 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %23, i32 0, i32 1, !dbg !848
  store %struct.ffi_cif* %22, %struct.ffi_cif** %cif14, align 8, !dbg !849, !tbaa !850
  %24 = load void (%struct.ffi_cif*, i8*, i8**, i8*)*, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8, !dbg !852, !tbaa !285
  %25 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !853, !tbaa !285
  %fun15 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %25, i32 0, i32 2, !dbg !854
  store void (%struct.ffi_cif*, i8*, i8**, i8*)* %24, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun15, align 8, !dbg !855, !tbaa !856
  %26 = load i8*, i8** %user_data.addr, align 8, !dbg !857, !tbaa !285
  %27 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !858, !tbaa !285
  %user_data16 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %27, i32 0, i32 3, !dbg !859
  store i8* %26, i8** %user_data16, align 8, !dbg !860, !tbaa !861
  store i32 0, i32* %retval, !dbg !862
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17, !dbg !862

cleanup.17:                                       ; preds = %cleanup.cont, %cleanup
  %28 = bitcast i16** %tramp to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !863
  %29 = load i32, i32* %retval, !dbg !863
  ret i32 %29, !dbg !863
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

declare void @ffi_closure_unix64() #4

; Function Attrs: uwtable
define i32 @ffi_closure_unix64_inner(%struct.ffi_closure* %closure, i8* %rvalue, %struct.register_args* %reg_args, i8* %argp) #0 {
entry:
  %closure.addr = alloca %struct.ffi_closure*, align 8
  %rvalue.addr = alloca i8*, align 8
  %reg_args.addr = alloca %struct.register_args*, align 8
  %argp.addr = alloca i8*, align 8
  %cif = alloca %struct.ffi_cif*, align 8
  %avalue = alloca i8**, align 8
  %arg_types = alloca %struct._ffi_type**, align 8
  %i = alloca i64, align 8
  %avn = alloca i64, align 8
  %gprcount = alloca i32, align 4
  %ssecount = alloca i32, align 4
  %ngpr = alloca i32, align 4
  %nsse = alloca i32, align 4
  %ret = alloca i32, align 4
  %classes = alloca [4 x i32], align 16
  %n = alloca i32, align 4
  %sse0 = alloca i8, align 1
  %sse1 = alloca i8, align 1
  %classes48 = alloca [4 x i32], align 16
  %n49 = alloca i32, align 4
  %align = alloca i64, align 8
  %a = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.ffi_closure* %closure, %struct.ffi_closure** %closure.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct.ffi_closure** %closure.addr, metadata !200, metadata !289), !dbg !864
  store i8* %rvalue, i8** %rvalue.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %rvalue.addr, metadata !201, metadata !289), !dbg !865
  store %struct.register_args* %reg_args, %struct.register_args** %reg_args.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct.register_args** %reg_args.addr, metadata !202, metadata !289), !dbg !866
  store i8* %argp, i8** %argp.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %argp.addr, metadata !203, metadata !289), !dbg !867
  %0 = bitcast %struct.ffi_cif** %cif to i8*, !dbg !868
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !868
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif, metadata !204, metadata !289), !dbg !869
  %1 = bitcast i8*** %avalue to i8*, !dbg !870
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !870
  call void @llvm.dbg.declare(metadata i8*** %avalue, metadata !205, metadata !289), !dbg !871
  %2 = bitcast %struct._ffi_type*** %arg_types to i8*, !dbg !872
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !872
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %arg_types, metadata !206, metadata !289), !dbg !873
  %3 = bitcast i64* %i to i8*, !dbg !874
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !874
  call void @llvm.dbg.declare(metadata i64* %i, metadata !207, metadata !289), !dbg !875
  %4 = bitcast i64* %avn to i8*, !dbg !874
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !874
  call void @llvm.dbg.declare(metadata i64* %avn, metadata !208, metadata !289), !dbg !876
  %5 = bitcast i32* %gprcount to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !877
  call void @llvm.dbg.declare(metadata i32* %gprcount, metadata !209, metadata !289), !dbg !878
  %6 = bitcast i32* %ssecount to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !877
  call void @llvm.dbg.declare(metadata i32* %ssecount, metadata !210, metadata !289), !dbg !879
  %7 = bitcast i32* %ngpr to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !877
  call void @llvm.dbg.declare(metadata i32* %ngpr, metadata !211, metadata !289), !dbg !880
  %8 = bitcast i32* %nsse to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !877
  call void @llvm.dbg.declare(metadata i32* %nsse, metadata !212, metadata !289), !dbg !881
  %9 = bitcast i32* %ret to i8*, !dbg !882
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !882
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !213, metadata !289), !dbg !883
  %10 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !884, !tbaa !285
  %cif1 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %10, i32 0, i32 1, !dbg !885
  %11 = load %struct.ffi_cif*, %struct.ffi_cif** %cif1, align 8, !dbg !885, !tbaa !850
  store %struct.ffi_cif* %11, %struct.ffi_cif** %cif, align 8, !dbg !886, !tbaa !285
  %12 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !887, !tbaa !285
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %12, i32 0, i32 1, !dbg !888
  %13 = load i32, i32* %nargs, align 4, !dbg !888, !tbaa !400
  %conv = zext i32 %13 to i64, !dbg !887
  %mul = mul i64 %conv, 8, !dbg !889
  %14 = alloca i8, i64 %mul, !dbg !890
  %15 = bitcast i8* %14 to i8**, !dbg !890
  store i8** %15, i8*** %avalue, align 8, !dbg !891, !tbaa !285
  store i32 0, i32* %ssecount, align 4, !dbg !892, !tbaa !305
  store i32 0, i32* %gprcount, align 4, !dbg !893, !tbaa !305
  %16 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !894, !tbaa !285
  %rtype = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %16, i32 0, i32 3, !dbg !895
  %17 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8, !dbg !895, !tbaa !310
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %17, i32 0, i32 2, !dbg !896
  %18 = load i16, i16* %type, align 2, !dbg !896, !tbaa !313
  %conv2 = zext i16 %18 to i32, !dbg !894
  store i32 %conv2, i32* %ret, align 4, !dbg !897, !tbaa !305
  %19 = load i32, i32* %ret, align 4, !dbg !898, !tbaa !305
  %cmp = icmp ne i32 %19, 0, !dbg !899
  br i1 %cmp, label %if.then, label %if.end.42, !dbg !900

if.then:                                          ; preds = %entry
  %20 = bitcast [4 x i32]* %classes to i8*, !dbg !901
  call void @llvm.lifetime.start(i64 16, i8* %20) #2, !dbg !901
  call void @llvm.dbg.declare(metadata [4 x i32]* %classes, metadata !214, metadata !289), !dbg !902
  %21 = bitcast i32* %n to i8*, !dbg !903
  call void @llvm.lifetime.start(i64 4, i8* %21) #2, !dbg !903
  call void @llvm.dbg.declare(metadata i32* %n, metadata !217, metadata !289), !dbg !904
  %22 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !905, !tbaa !285
  %rtype4 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %22, i32 0, i32 3, !dbg !906
  %23 = load %struct._ffi_type*, %struct._ffi_type** %rtype4, align 8, !dbg !906, !tbaa !310
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0, !dbg !907
  %call = call i32 @examine_argument(%struct._ffi_type* %23, i32* %arraydecay, i1 zeroext true, i32* %ngpr, i32* %nsse), !dbg !908
  store i32 %call, i32* %n, align 4, !dbg !904, !tbaa !305
  %24 = load i32, i32* %n, align 4, !dbg !909, !tbaa !305
  %cmp5 = icmp eq i32 %24, 0, !dbg !910
  br i1 %cmp5, label %if.then.7, label %if.else, !dbg !911

if.then.7:                                        ; preds = %if.then
  %25 = load i32, i32* %gprcount, align 4, !dbg !912, !tbaa !305
  %inc = add i32 %25, 1, !dbg !912
  store i32 %inc, i32* %gprcount, align 4, !dbg !912, !tbaa !305
  %idxprom = sext i32 %25 to i64, !dbg !914
  %26 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !914, !tbaa !285
  %gpr = getelementptr inbounds %struct.register_args, %struct.register_args* %26, i32 0, i32 0, !dbg !915
  %arrayidx = getelementptr [6 x i64], [6 x i64]* %gpr, i32 0, i64 %idxprom, !dbg !914
  %27 = load i64, i64* %arrayidx, align 8, !dbg !914, !tbaa !396
  %28 = inttoptr i64 %27 to i8*, !dbg !916
  store i8* %28, i8** %rvalue.addr, align 8, !dbg !917, !tbaa !285
  store i32 0, i32* %ret, align 4, !dbg !918, !tbaa !305
  br label %if.end.41, !dbg !919

if.else:                                          ; preds = %if.then
  %29 = load i32, i32* %ret, align 4, !dbg !920, !tbaa !305
  %cmp8 = icmp eq i32 %29, 13, !dbg !921
  br i1 %cmp8, label %land.lhs.true, label %if.end.40, !dbg !922

land.lhs.true:                                    ; preds = %if.else
  %30 = load i32, i32* %n, align 4, !dbg !923, !tbaa !305
  %cmp10 = icmp eq i32 %30, 2, !dbg !925
  br i1 %cmp10, label %if.then.12, label %if.end.40, !dbg !926

if.then.12:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start(i64 1, i8* %sse0) #2, !dbg !927
  call void @llvm.dbg.declare(metadata i8* %sse0, metadata !218, metadata !289), !dbg !928
  %arrayidx13 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0, !dbg !929
  %31 = load i32, i32* %arrayidx13, align 4, !dbg !929, !tbaa !339
  %cmp14 = icmp uge i32 %31, 3, !dbg !930
  br i1 %cmp14, label %land.rhs, label %land.end, !dbg !931

land.rhs:                                         ; preds = %if.then.12
  %arrayidx16 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0, !dbg !932
  %32 = load i32, i32* %arrayidx16, align 4, !dbg !932, !tbaa !339
  %cmp17 = icmp ule i32 %32, 6, !dbg !934
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.12
  %33 = phi i1 [ false, %if.then.12 ], [ %cmp17, %land.rhs ]
  %frombool = zext i1 %33 to i8, !dbg !935
  store i8 %frombool, i8* %sse0, align 1, !dbg !935, !tbaa !347
  call void @llvm.lifetime.start(i64 1, i8* %sse1) #2, !dbg !937
  call void @llvm.dbg.declare(metadata i8* %sse1, metadata !222, metadata !289), !dbg !938
  %arrayidx19 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1, !dbg !939
  %34 = load i32, i32* %arrayidx19, align 4, !dbg !939, !tbaa !339
  %cmp20 = icmp uge i32 %34, 3, !dbg !940
  br i1 %cmp20, label %land.rhs.22, label %land.end.26, !dbg !941

land.rhs.22:                                      ; preds = %land.end
  %arrayidx23 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1, !dbg !942
  %35 = load i32, i32* %arrayidx23, align 4, !dbg !942, !tbaa !339
  %cmp24 = icmp ule i32 %35, 6, !dbg !943
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.22, %land.end
  %36 = phi i1 [ false, %land.end ], [ %cmp24, %land.rhs.22 ]
  %frombool27 = zext i1 %36 to i8, !dbg !944
  store i8 %frombool27, i8* %sse1, align 1, !dbg !944, !tbaa !347
  %37 = load i8, i8* %sse0, align 1, !dbg !945, !tbaa !347, !range !363
  %tobool = trunc i8 %37 to i1, !dbg !945
  br i1 %tobool, label %if.else.32, label %land.lhs.true.28, !dbg !947

land.lhs.true.28:                                 ; preds = %land.end.26
  %38 = load i8, i8* %sse1, align 1, !dbg !948, !tbaa !347, !range !363
  %tobool29 = trunc i8 %38 to i1, !dbg !948
  br i1 %tobool29, label %if.then.31, label %if.else.32, !dbg !950

if.then.31:                                       ; preds = %land.lhs.true.28
  %39 = load i32, i32* %ret, align 4, !dbg !951, !tbaa !305
  %or = or i32 %39, 256, !dbg !951
  store i32 %or, i32* %ret, align 4, !dbg !951, !tbaa !305
  br label %if.end.39, !dbg !952

if.else.32:                                       ; preds = %land.lhs.true.28, %land.end.26
  %40 = load i8, i8* %sse0, align 1, !dbg !953, !tbaa !347, !range !363
  %tobool33 = trunc i8 %40 to i1, !dbg !953
  br i1 %tobool33, label %land.lhs.true.35, label %if.end, !dbg !955

land.lhs.true.35:                                 ; preds = %if.else.32
  %41 = load i8, i8* %sse1, align 1, !dbg !956, !tbaa !347, !range !363
  %tobool36 = trunc i8 %41 to i1, !dbg !956
  br i1 %tobool36, label %if.end, label %if.then.37, !dbg !958

if.then.37:                                       ; preds = %land.lhs.true.35
  %42 = load i32, i32* %ret, align 4, !dbg !959, !tbaa !305
  %or38 = or i32 %42, 512, !dbg !959
  store i32 %or38, i32* %ret, align 4, !dbg !959, !tbaa !305
  br label %if.end, !dbg !960

if.end:                                           ; preds = %if.then.37, %land.lhs.true.35, %if.else.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then.31
  call void @llvm.lifetime.end(i64 1, i8* %sse1) #2, !dbg !961
  call void @llvm.lifetime.end(i64 1, i8* %sse0) #2, !dbg !961
  br label %if.end.40, !dbg !962

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.7
  %43 = bitcast i32* %n to i8*, !dbg !963
  call void @llvm.lifetime.end(i64 4, i8* %43) #2, !dbg !963
  %44 = bitcast [4 x i32]* %classes to i8*, !dbg !963
  call void @llvm.lifetime.end(i64 16, i8* %44) #2, !dbg !963
  br label %if.end.42, !dbg !964

if.end.42:                                        ; preds = %if.end.41, %entry
  %45 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !965, !tbaa !285
  %nargs43 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %45, i32 0, i32 1, !dbg !966
  %46 = load i32, i32* %nargs43, align 4, !dbg !966, !tbaa !400
  %conv44 = zext i32 %46 to i64, !dbg !965
  store i64 %conv44, i64* %avn, align 8, !dbg !967, !tbaa !396
  %47 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !968, !tbaa !285
  %arg_types45 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %47, i32 0, i32 2, !dbg !969
  %48 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types45, align 8, !dbg !969, !tbaa !412
  store %struct._ffi_type** %48, %struct._ffi_type*** %arg_types, align 8, !dbg !970, !tbaa !285
  store i64 0, i64* %i, align 8, !dbg !971, !tbaa !396
  br label %for.cond, !dbg !972

for.cond:                                         ; preds = %for.inc.145, %if.end.42
  %49 = load i64, i64* %i, align 8, !dbg !973, !tbaa !396
  %50 = load i64, i64* %avn, align 8, !dbg !976, !tbaa !396
  %cmp46 = icmp slt i64 %49, %50, !dbg !977
  br i1 %cmp46, label %for.body, label %for.end.147, !dbg !978

for.body:                                         ; preds = %for.cond
  %51 = bitcast [4 x i32]* %classes48 to i8*, !dbg !979
  call void @llvm.lifetime.start(i64 16, i8* %51) #2, !dbg !979
  call void @llvm.dbg.declare(metadata [4 x i32]* %classes48, metadata !223, metadata !289), !dbg !980
  %52 = bitcast i32* %n49 to i8*, !dbg !981
  call void @llvm.lifetime.start(i64 4, i8* %52) #2, !dbg !981
  call void @llvm.dbg.declare(metadata i32* %n49, metadata !227, metadata !289), !dbg !982
  %53 = load i64, i64* %i, align 8, !dbg !983, !tbaa !396
  %54 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !984, !tbaa !285
  %arrayidx50 = getelementptr %struct._ffi_type*, %struct._ffi_type** %54, i64 %53, !dbg !984
  %55 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx50, align 8, !dbg !984, !tbaa !285
  %arraydecay51 = getelementptr inbounds [4 x i32], [4 x i32]* %classes48, i32 0, i32 0, !dbg !985
  %call52 = call i32 @examine_argument(%struct._ffi_type* %55, i32* %arraydecay51, i1 zeroext false, i32* %ngpr, i32* %nsse), !dbg !986
  store i32 %call52, i32* %n49, align 4, !dbg !987, !tbaa !305
  %56 = load i32, i32* %n49, align 4, !dbg !988, !tbaa !305
  %cmp53 = icmp eq i32 %56, 0, !dbg !989
  br i1 %cmp53, label %if.then.61, label %lor.lhs.false, !dbg !990

lor.lhs.false:                                    ; preds = %for.body
  %57 = load i32, i32* %gprcount, align 4, !dbg !991, !tbaa !305
  %58 = load i32, i32* %ngpr, align 4, !dbg !993, !tbaa !305
  %add = add i32 %57, %58, !dbg !994
  %cmp55 = icmp sgt i32 %add, 6, !dbg !995
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false.57, !dbg !996

lor.lhs.false.57:                                 ; preds = %lor.lhs.false
  %59 = load i32, i32* %ssecount, align 4, !dbg !997, !tbaa !305
  %60 = load i32, i32* %nsse, align 4, !dbg !998, !tbaa !305
  %add58 = add i32 %59, %60, !dbg !999
  %cmp59 = icmp sgt i32 %add58, 8, !dbg !1000
  br i1 %cmp59, label %if.then.61, label %if.else.73, !dbg !1001

if.then.61:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false, %for.body
  %61 = bitcast i64* %align to i8*, !dbg !1002
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !1002
  call void @llvm.dbg.declare(metadata i64* %align, metadata !228, metadata !289), !dbg !1003
  %62 = load i64, i64* %i, align 8, !dbg !1004, !tbaa !396
  %63 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !1005, !tbaa !285
  %arrayidx62 = getelementptr %struct._ffi_type*, %struct._ffi_type** %63, i64 %62, !dbg !1005
  %64 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx62, align 8, !dbg !1005, !tbaa !285
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %64, i32 0, i32 1, !dbg !1006
  %65 = load i16, i16* %alignment, align 2, !dbg !1006, !tbaa !434
  %conv63 = zext i16 %65 to i64, !dbg !1005
  store i64 %conv63, i64* %align, align 8, !dbg !1003, !tbaa !396
  %66 = load i64, i64* %align, align 8, !dbg !1007, !tbaa !396
  %cmp64 = icmp slt i64 %66, 8, !dbg !1009
  br i1 %cmp64, label %if.then.66, label %if.end.67, !dbg !1010

if.then.66:                                       ; preds = %if.then.61
  store i64 8, i64* %align, align 8, !dbg !1011, !tbaa !396
  br label %if.end.67, !dbg !1012

if.end.67:                                        ; preds = %if.then.66, %if.then.61
  %67 = load i8*, i8** %argp.addr, align 8, !dbg !1013, !tbaa !285
  %68 = ptrtoint i8* %67 to i64, !dbg !1014
  %sub = sub i64 %68, 1, !dbg !1015
  %69 = load i64, i64* %align, align 8, !dbg !1016, !tbaa !396
  %sub68 = sub i64 %69, 1, !dbg !1017
  %or69 = or i64 %sub, %sub68, !dbg !1018
  %add70 = add i64 %or69, 1, !dbg !1019
  %70 = inttoptr i64 %add70 to i8*, !dbg !1020
  store i8* %70, i8** %argp.addr, align 8, !dbg !1021, !tbaa !285
  %71 = load i8*, i8** %argp.addr, align 8, !dbg !1022, !tbaa !285
  %72 = load i64, i64* %i, align 8, !dbg !1023, !tbaa !396
  %73 = load i8**, i8*** %avalue, align 8, !dbg !1024, !tbaa !285
  %arrayidx71 = getelementptr i8*, i8** %73, i64 %72, !dbg !1024
  store i8* %71, i8** %arrayidx71, align 8, !dbg !1025, !tbaa !285
  %74 = load i64, i64* %i, align 8, !dbg !1026, !tbaa !396
  %75 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !1027, !tbaa !285
  %arrayidx72 = getelementptr %struct._ffi_type*, %struct._ffi_type** %75, i64 %74, !dbg !1027
  %76 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx72, align 8, !dbg !1027, !tbaa !285
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %76, i32 0, i32 0, !dbg !1028
  %77 = load i64, i64* %size, align 8, !dbg !1028, !tbaa !389
  %78 = load i8*, i8** %argp.addr, align 8, !dbg !1029, !tbaa !285
  %add.ptr = getelementptr i8, i8* %78, i64 %77, !dbg !1029
  store i8* %add.ptr, i8** %argp.addr, align 8, !dbg !1029, !tbaa !285
  %79 = bitcast i64* %align to i8*, !dbg !1030
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !1030
  br label %if.end.144, !dbg !1031

if.else.73:                                       ; preds = %lor.lhs.false.57
  %80 = load i32, i32* %n49, align 4, !dbg !1032, !tbaa !305
  %cmp74 = icmp eq i32 %80, 1, !dbg !1033
  br i1 %cmp74, label %if.then.95, label %lor.lhs.false.76, !dbg !1034

lor.lhs.false.76:                                 ; preds = %if.else.73
  %81 = load i32, i32* %n49, align 4, !dbg !1035, !tbaa !305
  %cmp77 = icmp eq i32 %81, 2, !dbg !1037
  br i1 %cmp77, label %land.lhs.true.79, label %if.else.115, !dbg !1038

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %arrayidx80 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0, !dbg !1039
  %82 = load i32, i32* %arrayidx80, align 4, !dbg !1039, !tbaa !339
  %cmp81 = icmp uge i32 %82, 3, !dbg !1041
  br i1 %cmp81, label %land.lhs.true.83, label %lor.lhs.false.87, !dbg !1042

land.lhs.true.83:                                 ; preds = %land.lhs.true.79
  %arrayidx84 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0, !dbg !1043
  %83 = load i32, i32* %arrayidx84, align 4, !dbg !1043, !tbaa !339
  %cmp85 = icmp ule i32 %83, 6, !dbg !1045
  br i1 %cmp85, label %if.else.115, label %lor.lhs.false.87, !dbg !1046

lor.lhs.false.87:                                 ; preds = %land.lhs.true.83, %land.lhs.true.79
  %arrayidx88 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 1, !dbg !1047
  %84 = load i32, i32* %arrayidx88, align 4, !dbg !1047, !tbaa !339
  %cmp89 = icmp uge i32 %84, 3, !dbg !1048
  br i1 %cmp89, label %land.lhs.true.91, label %if.then.95, !dbg !1049

land.lhs.true.91:                                 ; preds = %lor.lhs.false.87
  %arrayidx92 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 1, !dbg !1050
  %85 = load i32, i32* %arrayidx92, align 4, !dbg !1050, !tbaa !339
  %cmp93 = icmp ule i32 %85, 6, !dbg !1051
  br i1 %cmp93, label %if.else.115, label %if.then.95, !dbg !1052

if.then.95:                                       ; preds = %land.lhs.true.91, %lor.lhs.false.87, %if.else.73
  %arrayidx96 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0, !dbg !1053
  %86 = load i32, i32* %arrayidx96, align 4, !dbg !1053, !tbaa !339
  %cmp97 = icmp uge i32 %86, 3, !dbg !1056
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.108, !dbg !1057

land.lhs.true.99:                                 ; preds = %if.then.95
  %arrayidx100 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0, !dbg !1058
  %87 = load i32, i32* %arrayidx100, align 4, !dbg !1058, !tbaa !339
  %cmp101 = icmp ule i32 %87, 6, !dbg !1060
  br i1 %cmp101, label %if.then.103, label %if.else.108, !dbg !1061

if.then.103:                                      ; preds = %land.lhs.true.99
  %88 = load i32, i32* %ssecount, align 4, !dbg !1062, !tbaa !305
  %idxprom104 = sext i32 %88 to i64, !dbg !1064
  %89 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !1064, !tbaa !285
  %sse = getelementptr inbounds %struct.register_args, %struct.register_args* %89, i32 0, i32 1, !dbg !1065
  %arrayidx105 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse, i32 0, i64 %idxprom104, !dbg !1064
  %90 = bitcast %union.big_int_union* %arrayidx105 to i8*, !dbg !1066
  %91 = load i64, i64* %i, align 8, !dbg !1067, !tbaa !396
  %92 = load i8**, i8*** %avalue, align 8, !dbg !1068, !tbaa !285
  %arrayidx106 = getelementptr i8*, i8** %92, i64 %91, !dbg !1068
  store i8* %90, i8** %arrayidx106, align 8, !dbg !1069, !tbaa !285
  %93 = load i32, i32* %n49, align 4, !dbg !1070, !tbaa !305
  %94 = load i32, i32* %ssecount, align 4, !dbg !1071, !tbaa !305
  %add107 = add i32 %94, %93, !dbg !1071
  store i32 %add107, i32* %ssecount, align 4, !dbg !1071, !tbaa !305
  br label %if.end.114, !dbg !1072

if.else.108:                                      ; preds = %land.lhs.true.99, %if.then.95
  %95 = load i32, i32* %gprcount, align 4, !dbg !1073, !tbaa !305
  %idxprom109 = sext i32 %95 to i64, !dbg !1075
  %96 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !1075, !tbaa !285
  %gpr110 = getelementptr inbounds %struct.register_args, %struct.register_args* %96, i32 0, i32 0, !dbg !1076
  %arrayidx111 = getelementptr [6 x i64], [6 x i64]* %gpr110, i32 0, i64 %idxprom109, !dbg !1075
  %97 = bitcast i64* %arrayidx111 to i8*, !dbg !1077
  %98 = load i64, i64* %i, align 8, !dbg !1078, !tbaa !396
  %99 = load i8**, i8*** %avalue, align 8, !dbg !1079, !tbaa !285
  %arrayidx112 = getelementptr i8*, i8** %99, i64 %98, !dbg !1079
  store i8* %97, i8** %arrayidx112, align 8, !dbg !1080, !tbaa !285
  %100 = load i32, i32* %n49, align 4, !dbg !1081, !tbaa !305
  %101 = load i32, i32* %gprcount, align 4, !dbg !1082, !tbaa !305
  %add113 = add i32 %101, %100, !dbg !1082
  store i32 %add113, i32* %gprcount, align 4, !dbg !1082, !tbaa !305
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.108, %if.then.103
  br label %if.end.143, !dbg !1083

if.else.115:                                      ; preds = %land.lhs.true.91, %land.lhs.true.83, %lor.lhs.false.76
  %102 = bitcast i8** %a to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 8, i8* %102) #2, !dbg !1084
  call void @llvm.dbg.declare(metadata i8** %a, metadata !231, metadata !289), !dbg !1085
  %103 = alloca i8, i64 16, !dbg !1086
  store i8* %103, i8** %a, align 8, !dbg !1085, !tbaa !285
  %104 = bitcast i32* %j to i8*, !dbg !1087
  call void @llvm.lifetime.start(i64 4, i8* %104) #2, !dbg !1087
  call void @llvm.dbg.declare(metadata i32* %j, metadata !234, metadata !289), !dbg !1088
  %105 = load i8*, i8** %a, align 8, !dbg !1089, !tbaa !285
  %106 = load i64, i64* %i, align 8, !dbg !1090, !tbaa !396
  %107 = load i8**, i8*** %avalue, align 8, !dbg !1091, !tbaa !285
  %arrayidx116 = getelementptr i8*, i8** %107, i64 %106, !dbg !1091
  store i8* %105, i8** %arrayidx116, align 8, !dbg !1092, !tbaa !285
  store i32 0, i32* %j, align 4, !dbg !1093, !tbaa !305
  br label %for.cond.117, !dbg !1095

for.cond.117:                                     ; preds = %for.inc, %if.else.115
  %108 = load i32, i32* %j, align 4, !dbg !1096, !tbaa !305
  %109 = load i32, i32* %n49, align 4, !dbg !1100, !tbaa !305
  %cmp118 = icmp slt i32 %108, %109, !dbg !1101
  br i1 %cmp118, label %for.body.120, label %for.end, !dbg !1102

for.body.120:                                     ; preds = %for.cond.117
  %110 = load i32, i32* %j, align 4, !dbg !1103, !tbaa !305
  %idxprom121 = sext i32 %110 to i64, !dbg !1106
  %arrayidx122 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 %idxprom121, !dbg !1106
  %111 = load i32, i32* %arrayidx122, align 4, !dbg !1106, !tbaa !339
  %cmp123 = icmp uge i32 %111, 3, !dbg !1107
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.135, !dbg !1108

land.lhs.true.125:                                ; preds = %for.body.120
  %112 = load i32, i32* %j, align 4, !dbg !1109, !tbaa !305
  %idxprom126 = sext i32 %112 to i64, !dbg !1111
  %arrayidx127 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 %idxprom126, !dbg !1111
  %113 = load i32, i32* %arrayidx127, align 4, !dbg !1111, !tbaa !339
  %cmp128 = icmp ule i32 %113, 6, !dbg !1112
  br i1 %cmp128, label %if.then.130, label %if.else.135, !dbg !1113

if.then.130:                                      ; preds = %land.lhs.true.125
  %114 = load i8*, i8** %a, align 8, !dbg !1114, !tbaa !285
  %115 = load i32, i32* %ssecount, align 4, !dbg !1115, !tbaa !305
  %inc131 = add i32 %115, 1, !dbg !1115
  store i32 %inc131, i32* %ssecount, align 4, !dbg !1115, !tbaa !305
  %idxprom132 = sext i32 %115 to i64, !dbg !1116
  %116 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !1116, !tbaa !285
  %sse133 = getelementptr inbounds %struct.register_args, %struct.register_args* %116, i32 0, i32 1, !dbg !1117
  %arrayidx134 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse133, i32 0, i64 %idxprom132, !dbg !1116
  %117 = bitcast %union.big_int_union* %arrayidx134 to i8*, !dbg !1118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %117, i64 8, i32 1, i1 false), !dbg !1118
  br label %if.end.140, !dbg !1118

if.else.135:                                      ; preds = %land.lhs.true.125, %for.body.120
  %118 = load i8*, i8** %a, align 8, !dbg !1119, !tbaa !285
  %119 = load i32, i32* %gprcount, align 4, !dbg !1120, !tbaa !305
  %inc136 = add i32 %119, 1, !dbg !1120
  store i32 %inc136, i32* %gprcount, align 4, !dbg !1120, !tbaa !305
  %idxprom137 = sext i32 %119 to i64, !dbg !1121
  %120 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !1121, !tbaa !285
  %gpr138 = getelementptr inbounds %struct.register_args, %struct.register_args* %120, i32 0, i32 0, !dbg !1122
  %arrayidx139 = getelementptr [6 x i64], [6 x i64]* %gpr138, i32 0, i64 %idxprom137, !dbg !1121
  %121 = bitcast i64* %arrayidx139 to i8*, !dbg !1123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %121, i64 8, i32 1, i1 false), !dbg !1123
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.135, %if.then.130
  br label %for.inc, !dbg !1124

for.inc:                                          ; preds = %if.end.140
  %122 = load i32, i32* %j, align 4, !dbg !1125, !tbaa !305
  %inc141 = add i32 %122, 1, !dbg !1125
  store i32 %inc141, i32* %j, align 4, !dbg !1125, !tbaa !305
  %123 = load i8*, i8** %a, align 8, !dbg !1126, !tbaa !285
  %add.ptr142 = getelementptr i8, i8* %123, i64 8, !dbg !1126
  store i8* %add.ptr142, i8** %a, align 8, !dbg !1126, !tbaa !285
  br label %for.cond.117, !dbg !1127

for.end:                                          ; preds = %for.cond.117
  %124 = bitcast i32* %j to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 4, i8* %124) #2, !dbg !1128
  %125 = bitcast i8** %a to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 8, i8* %125) #2, !dbg !1128
  br label %if.end.143

if.end.143:                                       ; preds = %for.end, %if.end.114
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.67
  %126 = bitcast i32* %n49 to i8*, !dbg !1129
  call void @llvm.lifetime.end(i64 4, i8* %126) #2, !dbg !1129
  %127 = bitcast [4 x i32]* %classes48 to i8*, !dbg !1129
  call void @llvm.lifetime.end(i64 16, i8* %127) #2, !dbg !1129
  br label %for.inc.145, !dbg !1130

for.inc.145:                                      ; preds = %if.end.144
  %128 = load i64, i64* %i, align 8, !dbg !1131, !tbaa !396
  %inc146 = add i64 %128, 1, !dbg !1131
  store i64 %inc146, i64* %i, align 8, !dbg !1131, !tbaa !396
  br label %for.cond, !dbg !1132

for.end.147:                                      ; preds = %for.cond
  %129 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !1133, !tbaa !285
  %fun = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %129, i32 0, i32 2, !dbg !1134
  %130 = load void (%struct.ffi_cif*, i8*, i8**, i8*)*, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun, align 8, !dbg !1134, !tbaa !856
  %131 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !1135, !tbaa !285
  %132 = load i8*, i8** %rvalue.addr, align 8, !dbg !1136, !tbaa !285
  %133 = load i8**, i8*** %avalue, align 8, !dbg !1137, !tbaa !285
  %134 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !1138, !tbaa !285
  %user_data = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %134, i32 0, i32 3, !dbg !1139
  %135 = load i8*, i8** %user_data, align 8, !dbg !1139, !tbaa !861
  call void %130(%struct.ffi_cif* %131, i8* %132, i8** %133, i8* %135), !dbg !1133
  %136 = load i32, i32* %ret, align 4, !dbg !1140, !tbaa !305
  %137 = bitcast i32* %ret to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 4, i8* %137) #2, !dbg !1141
  %138 = bitcast i32* %nsse to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 4, i8* %138) #2, !dbg !1141
  %139 = bitcast i32* %ngpr to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 4, i8* %139) #2, !dbg !1141
  %140 = bitcast i32* %ssecount to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 4, i8* %140) #2, !dbg !1141
  %141 = bitcast i32* %gprcount to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 4, i8* %141) #2, !dbg !1141
  %142 = bitcast i64* %avn to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 8, i8* %142) #2, !dbg !1141
  %143 = bitcast i64* %i to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 8, i8* %143) #2, !dbg !1141
  %144 = bitcast %struct._ffi_type*** %arg_types to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 8, i8* %144) #2, !dbg !1141
  %145 = bitcast i8*** %avalue to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 8, i8* %145) #2, !dbg !1141
  %146 = bitcast %struct.ffi_cif** %cif to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !1141
  ret i32 %136, !dbg !1142
}

; Function Attrs: uwtable
define internal i32 @classify_argument(%struct._ffi_type* %type, i32* %classes, i64 %byte_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._ffi_type*, align 8
  %classes.addr = alloca i32*, align 8
  %byte_offset.addr = alloca i64, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %UNITS_PER_WORD = alloca i32, align 4
  %words = alloca i32, align 4
  %ptr = alloca %struct._ffi_type**, align 8
  %i = alloca i32, align 4
  %subclasses = alloca [4 x i32], align 16
  %num = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct._ffi_type* %type, %struct._ffi_type** %type.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %type.addr, metadata !254, metadata !289), !dbg !1143
  store i32* %classes, i32** %classes.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i32** %classes.addr, metadata !255, metadata !289), !dbg !1144
  store i64 %byte_offset, i64* %byte_offset.addr, align 8, !tbaa !396
  call void @llvm.dbg.declare(metadata i64* %byte_offset.addr, metadata !256, metadata !289), !dbg !1145
  %0 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1146, !tbaa !285
  %type1 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %0, i32 0, i32 2, !dbg !1147
  %1 = load i16, i16* %type1, align 2, !dbg !1147, !tbaa !313
  %conv = zext i16 %1 to i32, !dbg !1146
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 14, label %sw.bb
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.31
    i32 4, label %sw.bb.33
    i32 13, label %sw.bb.36
  ], !dbg !1148

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2 = bitcast i32* %size to i8*, !dbg !1149
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1149
  call void @llvm.dbg.declare(metadata i32* %size, metadata !257, metadata !289), !dbg !1150
  %3 = load i64, i64* %byte_offset.addr, align 8, !dbg !1151, !tbaa !396
  %4 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1152, !tbaa !285
  %size2 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %4, i32 0, i32 0, !dbg !1153
  %5 = load i64, i64* %size2, align 8, !dbg !1153, !tbaa !389
  %add = add i64 %3, %5, !dbg !1154
  %conv3 = trunc i64 %add to i32, !dbg !1151
  store i32 %conv3, i32* %size, align 4, !dbg !1150, !tbaa !305
  %6 = load i32, i32* %size, align 4, !dbg !1155, !tbaa !305
  %cmp = icmp sle i32 %6, 4, !dbg !1157
  br i1 %cmp, label %if.then, label %if.else, !dbg !1158

if.then:                                          ; preds = %sw.bb
  %7 = load i32*, i32** %classes.addr, align 8, !dbg !1159, !tbaa !285
  %arrayidx = getelementptr i32, i32* %7, i64 0, !dbg !1159
  store i32 2, i32* %arrayidx, align 4, !dbg !1161, !tbaa !339
  store i32 1, i32* %retval, !dbg !1162
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1162

if.else:                                          ; preds = %sw.bb
  %8 = load i32, i32* %size, align 4, !dbg !1163, !tbaa !305
  %cmp5 = icmp sle i32 %8, 8, !dbg !1165
  br i1 %cmp5, label %if.then.7, label %if.else.9, !dbg !1166

if.then.7:                                        ; preds = %if.else
  %9 = load i32*, i32** %classes.addr, align 8, !dbg !1167, !tbaa !285
  %arrayidx8 = getelementptr i32, i32* %9, i64 0, !dbg !1167
  store i32 1, i32* %arrayidx8, align 4, !dbg !1169, !tbaa !339
  store i32 1, i32* %retval, !dbg !1170
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1170

if.else.9:                                        ; preds = %if.else
  %10 = load i32, i32* %size, align 4, !dbg !1171, !tbaa !305
  %cmp10 = icmp sle i32 %10, 12, !dbg !1173
  br i1 %cmp10, label %if.then.12, label %if.else.15, !dbg !1174

if.then.12:                                       ; preds = %if.else.9
  %11 = load i32*, i32** %classes.addr, align 8, !dbg !1175, !tbaa !285
  %arrayidx13 = getelementptr i32, i32* %11, i64 0, !dbg !1175
  store i32 1, i32* %arrayidx13, align 4, !dbg !1177, !tbaa !339
  %12 = load i32*, i32** %classes.addr, align 8, !dbg !1178, !tbaa !285
  %arrayidx14 = getelementptr i32, i32* %12, i64 1, !dbg !1178
  store i32 2, i32* %arrayidx14, align 4, !dbg !1179, !tbaa !339
  store i32 2, i32* %retval, !dbg !1180
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1180

if.else.15:                                       ; preds = %if.else.9
  %13 = load i32, i32* %size, align 4, !dbg !1181, !tbaa !305
  %cmp16 = icmp sle i32 %13, 16, !dbg !1183
  br i1 %cmp16, label %if.then.18, label %if.else.21, !dbg !1184

if.then.18:                                       ; preds = %if.else.15
  %14 = load i32*, i32** %classes.addr, align 8, !dbg !1185, !tbaa !285
  %arrayidx19 = getelementptr i32, i32* %14, i64 1, !dbg !1185
  store i32 2, i32* %arrayidx19, align 4, !dbg !1187, !tbaa !339
  %15 = load i32*, i32** %classes.addr, align 8, !dbg !1188, !tbaa !285
  %arrayidx20 = getelementptr i32, i32* %15, i64 0, !dbg !1188
  store i32 2, i32* %arrayidx20, align 4, !dbg !1189, !tbaa !339
  store i32 2, i32* %retval, !dbg !1190
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1190

if.else.21:                                       ; preds = %if.else.15
  br label %if.end

if.end:                                           ; preds = %if.else.21
  br label %if.end.22

if.end.22:                                        ; preds = %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  store i32 0, i32* %cleanup.dest.slot, !dbg !1191
  br label %cleanup, !dbg !1191

cleanup:                                          ; preds = %if.end.24, %if.then.18, %if.then.12, %if.then.7, %if.then
  %16 = bitcast i32* %size to i8*, !dbg !1192
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !1192
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.bb.25, !dbg !1194

sw.bb.25:                                         ; preds = %entry, %cleanup.cont
  %17 = load i64, i64* %byte_offset.addr, align 8, !dbg !1195, !tbaa !396
  %rem = urem i64 %17, 8, !dbg !1197
  %tobool = icmp ne i64 %rem, 0, !dbg !1197
  br i1 %tobool, label %if.else.28, label %if.then.26, !dbg !1198

if.then.26:                                       ; preds = %sw.bb.25
  %18 = load i32*, i32** %classes.addr, align 8, !dbg !1199, !tbaa !285
  %arrayidx27 = getelementptr i32, i32* %18, i64 0, !dbg !1199
  store i32 4, i32* %arrayidx27, align 4, !dbg !1200, !tbaa !339
  br label %if.end.30, !dbg !1199

if.else.28:                                       ; preds = %sw.bb.25
  %19 = load i32*, i32** %classes.addr, align 8, !dbg !1201, !tbaa !285
  %arrayidx29 = getelementptr i32, i32* %19, i64 0, !dbg !1201
  store i32 3, i32* %arrayidx29, align 4, !dbg !1202, !tbaa !339
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  store i32 1, i32* %retval, !dbg !1203
  br label %return, !dbg !1203

sw.bb.31:                                         ; preds = %entry
  %20 = load i32*, i32** %classes.addr, align 8, !dbg !1204, !tbaa !285
  %arrayidx32 = getelementptr i32, i32* %20, i64 0, !dbg !1204
  store i32 5, i32* %arrayidx32, align 4, !dbg !1205, !tbaa !339
  store i32 1, i32* %retval, !dbg !1206
  br label %return, !dbg !1206

sw.bb.33:                                         ; preds = %entry
  %21 = load i32*, i32** %classes.addr, align 8, !dbg !1207, !tbaa !285
  %arrayidx34 = getelementptr i32, i32* %21, i64 0, !dbg !1207
  store i32 7, i32* %arrayidx34, align 4, !dbg !1208, !tbaa !339
  %22 = load i32*, i32** %classes.addr, align 8, !dbg !1209, !tbaa !285
  %arrayidx35 = getelementptr i32, i32* %22, i64 1, !dbg !1209
  store i32 8, i32* %arrayidx35, align 4, !dbg !1210, !tbaa !339
  store i32 2, i32* %retval, !dbg !1211
  br label %return, !dbg !1211

sw.bb.36:                                         ; preds = %entry
  %23 = bitcast i32* %UNITS_PER_WORD to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 4, i8* %23) #2, !dbg !1212
  call void @llvm.dbg.declare(metadata i32* %UNITS_PER_WORD, metadata !260, metadata !289), !dbg !1213
  store i32 8, i32* %UNITS_PER_WORD, align 4, !dbg !1213, !tbaa !305
  %24 = bitcast i32* %words to i8*, !dbg !1214
  call void @llvm.lifetime.start(i64 4, i8* %24) #2, !dbg !1214
  call void @llvm.dbg.declare(metadata i32* %words, metadata !263, metadata !289), !dbg !1215
  %25 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1216, !tbaa !285
  %size37 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %25, i32 0, i32 0, !dbg !1217
  %26 = load i64, i64* %size37, align 8, !dbg !1217, !tbaa !389
  %add38 = add i64 %26, 8, !dbg !1218
  %sub = sub i64 %add38, 1, !dbg !1219
  %div = udiv i64 %sub, 8, !dbg !1220
  %conv39 = trunc i64 %div to i32, !dbg !1221
  store i32 %conv39, i32* %words, align 4, !dbg !1215, !tbaa !305
  %27 = bitcast %struct._ffi_type*** %ptr to i8*, !dbg !1222
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !1222
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %ptr, metadata !264, metadata !289), !dbg !1223
  %28 = bitcast i32* %i to i8*, !dbg !1224
  call void @llvm.lifetime.start(i64 4, i8* %28) #2, !dbg !1224
  call void @llvm.dbg.declare(metadata i32* %i, metadata !265, metadata !289), !dbg !1225
  %29 = bitcast [4 x i32]* %subclasses to i8*, !dbg !1226
  call void @llvm.lifetime.start(i64 16, i8* %29) #2, !dbg !1226
  call void @llvm.dbg.declare(metadata [4 x i32]* %subclasses, metadata !266, metadata !289), !dbg !1227
  %30 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1228, !tbaa !285
  %size40 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %30, i32 0, i32 0, !dbg !1230
  %31 = load i64, i64* %size40, align 8, !dbg !1230, !tbaa !389
  %cmp41 = icmp ugt i64 %31, 32, !dbg !1231
  br i1 %cmp41, label %if.then.43, label %if.end.44, !dbg !1232

if.then.43:                                       ; preds = %sw.bb.36
  store i32 0, i32* %retval, !dbg !1233
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1233

if.end.44:                                        ; preds = %sw.bb.36
  store i32 0, i32* %i, align 4, !dbg !1234, !tbaa !305
  br label %for.cond, !dbg !1236

for.cond:                                         ; preds = %for.inc, %if.end.44
  %32 = load i32, i32* %i, align 4, !dbg !1237, !tbaa !305
  %33 = load i32, i32* %words, align 4, !dbg !1241, !tbaa !305
  %cmp45 = icmp slt i32 %32, %33, !dbg !1242
  br i1 %cmp45, label %for.body, label %for.end, !dbg !1243

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4, !dbg !1244, !tbaa !305
  %idxprom = sext i32 %34 to i64, !dbg !1245
  %35 = load i32*, i32** %classes.addr, align 8, !dbg !1245, !tbaa !285
  %arrayidx47 = getelementptr i32, i32* %35, i64 %idxprom, !dbg !1245
  store i32 0, i32* %arrayidx47, align 4, !dbg !1246, !tbaa !339
  br label %for.inc, !dbg !1245

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !dbg !1247, !tbaa !305
  %inc = add i32 %36, 1, !dbg !1247
  store i32 %inc, i32* %i, align 4, !dbg !1247, !tbaa !305
  br label %for.cond, !dbg !1248

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %words, align 4, !dbg !1249, !tbaa !305
  %tobool48 = icmp ne i32 %37, 0, !dbg !1249
  br i1 %tobool48, label %if.end.51, label %if.then.49, !dbg !1251

if.then.49:                                       ; preds = %for.end
  %38 = load i32*, i32** %classes.addr, align 8, !dbg !1252, !tbaa !285
  %arrayidx50 = getelementptr i32, i32* %38, i64 0, !dbg !1252
  store i32 0, i32* %arrayidx50, align 4, !dbg !1254, !tbaa !339
  store i32 1, i32* %retval, !dbg !1255
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1255

if.end.51:                                        ; preds = %for.end
  %39 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1256, !tbaa !285
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %39, i32 0, i32 3, !dbg !1257
  %40 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8, !dbg !1257, !tbaa !1258
  store %struct._ffi_type** %40, %struct._ffi_type*** %ptr, align 8, !dbg !1259, !tbaa !285
  br label %for.cond.52, !dbg !1260

for.cond.52:                                      ; preds = %for.inc.89, %if.end.51
  %41 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1261, !tbaa !285
  %42 = load %struct._ffi_type*, %struct._ffi_type** %41, align 8, !dbg !1264, !tbaa !285
  %cmp53 = icmp ne %struct._ffi_type* %42, null, !dbg !1265
  br i1 %cmp53, label %for.body.55, label %for.end.90, !dbg !1266

for.body.55:                                      ; preds = %for.cond.52
  %43 = bitcast i32* %num to i8*, !dbg !1267
  call void @llvm.lifetime.start(i64 4, i8* %43) #2, !dbg !1267
  call void @llvm.dbg.declare(metadata i32* %num, metadata !267, metadata !289), !dbg !1268
  %44 = load i64, i64* %byte_offset.addr, align 8, !dbg !1269, !tbaa !396
  %sub56 = sub i64 %44, 1, !dbg !1270
  %45 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1271, !tbaa !285
  %46 = load %struct._ffi_type*, %struct._ffi_type** %45, align 8, !dbg !1272, !tbaa !285
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %46, i32 0, i32 1, !dbg !1273
  %47 = load i16, i16* %alignment, align 2, !dbg !1273, !tbaa !434
  %conv57 = zext i16 %47 to i32, !dbg !1274
  %sub58 = sub i32 %conv57, 1, !dbg !1275
  %conv59 = sext i32 %sub58 to i64, !dbg !1276
  %or = or i64 %sub56, %conv59, !dbg !1277
  %add60 = add i64 %or, 1, !dbg !1278
  store i64 %add60, i64* %byte_offset.addr, align 8, !dbg !1279, !tbaa !396
  %48 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1280, !tbaa !285
  %49 = load %struct._ffi_type*, %struct._ffi_type** %48, align 8, !dbg !1281, !tbaa !285
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %subclasses, i32 0, i32 0, !dbg !1282
  %50 = load i64, i64* %byte_offset.addr, align 8, !dbg !1283, !tbaa !396
  %rem61 = urem i64 %50, 8, !dbg !1284
  %call = call i32 @classify_argument(%struct._ffi_type* %49, i32* %arraydecay, i64 %rem61), !dbg !1285
  store i32 %call, i32* %num, align 4, !dbg !1286, !tbaa !305
  %51 = load i32, i32* %num, align 4, !dbg !1287, !tbaa !305
  %cmp62 = icmp eq i32 %51, 0, !dbg !1289
  br i1 %cmp62, label %if.then.64, label %if.end.65, !dbg !1290

if.then.64:                                       ; preds = %for.body.55
  store i32 0, i32* %retval, !dbg !1291
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86, !dbg !1291

if.end.65:                                        ; preds = %for.body.55
  store i32 0, i32* %i, align 4, !dbg !1292, !tbaa !305
  br label %for.cond.66, !dbg !1293

for.cond.66:                                      ; preds = %for.inc.81, %if.end.65
  %52 = load i32, i32* %i, align 4, !dbg !1294, !tbaa !305
  %53 = load i32, i32* %num, align 4, !dbg !1297, !tbaa !305
  %cmp67 = icmp slt i32 %52, %53, !dbg !1298
  br i1 %cmp67, label %for.body.69, label %for.end.83, !dbg !1299

for.body.69:                                      ; preds = %for.cond.66
  %54 = bitcast i32* %pos to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %54) #2, !dbg !1300
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !271, metadata !289), !dbg !1301
  %55 = load i64, i64* %byte_offset.addr, align 8, !dbg !1302, !tbaa !396
  %div70 = udiv i64 %55, 8, !dbg !1303
  %conv71 = trunc i64 %div70 to i32, !dbg !1302
  store i32 %conv71, i32* %pos, align 4, !dbg !1301, !tbaa !305
  %56 = load i32, i32* %i, align 4, !dbg !1304, !tbaa !305
  %idxprom72 = sext i32 %56 to i64, !dbg !1305
  %arrayidx73 = getelementptr [4 x i32], [4 x i32]* %subclasses, i32 0, i64 %idxprom72, !dbg !1305
  %57 = load i32, i32* %arrayidx73, align 4, !dbg !1305, !tbaa !339
  %58 = load i32, i32* %i, align 4, !dbg !1306, !tbaa !305
  %59 = load i32, i32* %pos, align 4, !dbg !1307, !tbaa !305
  %add74 = add i32 %58, %59, !dbg !1308
  %idxprom75 = sext i32 %add74 to i64, !dbg !1309
  %60 = load i32*, i32** %classes.addr, align 8, !dbg !1309, !tbaa !285
  %arrayidx76 = getelementptr i32, i32* %60, i64 %idxprom75, !dbg !1309
  %61 = load i32, i32* %arrayidx76, align 4, !dbg !1309, !tbaa !339
  %call77 = call i32 @merge_classes(i32 %57, i32 %61), !dbg !1310
  %62 = load i32, i32* %i, align 4, !dbg !1311, !tbaa !305
  %63 = load i32, i32* %pos, align 4, !dbg !1312, !tbaa !305
  %add78 = add i32 %62, %63, !dbg !1313
  %idxprom79 = sext i32 %add78 to i64, !dbg !1314
  %64 = load i32*, i32** %classes.addr, align 8, !dbg !1314, !tbaa !285
  %arrayidx80 = getelementptr i32, i32* %64, i64 %idxprom79, !dbg !1314
  store i32 %call77, i32* %arrayidx80, align 4, !dbg !1315, !tbaa !339
  %65 = bitcast i32* %pos to i8*, !dbg !1316
  call void @llvm.lifetime.end(i64 4, i8* %65) #2, !dbg !1316
  br label %for.inc.81, !dbg !1317

for.inc.81:                                       ; preds = %for.body.69
  %66 = load i32, i32* %i, align 4, !dbg !1318, !tbaa !305
  %inc82 = add i32 %66, 1, !dbg !1318
  store i32 %inc82, i32* %i, align 4, !dbg !1318, !tbaa !305
  br label %for.cond.66, !dbg !1319

for.end.83:                                       ; preds = %for.cond.66
  %67 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1320, !tbaa !285
  %68 = load %struct._ffi_type*, %struct._ffi_type** %67, align 8, !dbg !1321, !tbaa !285
  %size84 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %68, i32 0, i32 0, !dbg !1322
  %69 = load i64, i64* %size84, align 8, !dbg !1322, !tbaa !389
  %70 = load i64, i64* %byte_offset.addr, align 8, !dbg !1323, !tbaa !396
  %add85 = add i64 %70, %69, !dbg !1323
  store i64 %add85, i64* %byte_offset.addr, align 8, !dbg !1323, !tbaa !396
  store i32 0, i32* %cleanup.dest.slot, !dbg !1324
  br label %cleanup.86, !dbg !1324

cleanup.86:                                       ; preds = %for.end.83, %if.then.64
  %71 = bitcast i32* %num to i8*, !dbg !1325
  call void @llvm.lifetime.end(i64 4, i8* %71) #2, !dbg !1325
  %cleanup.dest.87 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.87, label %cleanup.157 [
    i32 0, label %cleanup.cont.88
  ]

cleanup.cont.88:                                  ; preds = %cleanup.86
  br label %for.inc.89, !dbg !1326

for.inc.89:                                       ; preds = %cleanup.cont.88
  %72 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1327, !tbaa !285
  %incdec.ptr = getelementptr %struct._ffi_type*, %struct._ffi_type** %72, i32 1, !dbg !1327
  store %struct._ffi_type** %incdec.ptr, %struct._ffi_type*** %ptr, align 8, !dbg !1327, !tbaa !285
  br label %for.cond.52, !dbg !1328

for.end.90:                                       ; preds = %for.cond.52
  %73 = load i32, i32* %words, align 4, !dbg !1329, !tbaa !305
  %cmp91 = icmp sgt i32 %73, 2, !dbg !1331
  br i1 %cmp91, label %if.then.93, label %if.end.112, !dbg !1332

if.then.93:                                       ; preds = %for.end.90
  %74 = load i32*, i32** %classes.addr, align 8, !dbg !1333, !tbaa !285
  %arrayidx94 = getelementptr i32, i32* %74, i64 0, !dbg !1333
  %75 = load i32, i32* %arrayidx94, align 4, !dbg !1333, !tbaa !339
  %cmp95 = icmp ne i32 %75, 3, !dbg !1336
  br i1 %cmp95, label %if.then.97, label %if.end.98, !dbg !1337

if.then.97:                                       ; preds = %if.then.93
  store i32 0, i32* %retval, !dbg !1338
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1338

if.end.98:                                        ; preds = %if.then.93
  store i32 1, i32* %i, align 4, !dbg !1339, !tbaa !305
  br label %for.cond.99, !dbg !1341

for.cond.99:                                      ; preds = %for.inc.109, %if.end.98
  %76 = load i32, i32* %i, align 4, !dbg !1342, !tbaa !305
  %77 = load i32, i32* %words, align 4, !dbg !1346, !tbaa !305
  %cmp100 = icmp slt i32 %76, %77, !dbg !1347
  br i1 %cmp100, label %for.body.102, label %for.end.111, !dbg !1348

for.body.102:                                     ; preds = %for.cond.99
  %78 = load i32, i32* %i, align 4, !dbg !1349, !tbaa !305
  %idxprom103 = sext i32 %78 to i64, !dbg !1351
  %79 = load i32*, i32** %classes.addr, align 8, !dbg !1351, !tbaa !285
  %arrayidx104 = getelementptr i32, i32* %79, i64 %idxprom103, !dbg !1351
  %80 = load i32, i32* %arrayidx104, align 4, !dbg !1351, !tbaa !339
  %cmp105 = icmp ne i32 %80, 6, !dbg !1352
  br i1 %cmp105, label %if.then.107, label %if.end.108, !dbg !1353

if.then.107:                                      ; preds = %for.body.102
  store i32 0, i32* %retval, !dbg !1354
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1354

if.end.108:                                       ; preds = %for.body.102
  br label %for.inc.109, !dbg !1355

for.inc.109:                                      ; preds = %if.end.108
  %81 = load i32, i32* %i, align 4, !dbg !1357, !tbaa !305
  %inc110 = add i32 %81, 1, !dbg !1357
  store i32 %inc110, i32* %i, align 4, !dbg !1357, !tbaa !305
  br label %for.cond.99, !dbg !1358

for.end.111:                                      ; preds = %for.cond.99
  br label %if.end.112, !dbg !1359

if.end.112:                                       ; preds = %for.end.111, %for.end.90
  store i32 0, i32* %i, align 4, !dbg !1360, !tbaa !305
  br label %for.cond.113, !dbg !1362

for.cond.113:                                     ; preds = %for.inc.154, %if.end.112
  %82 = load i32, i32* %i, align 4, !dbg !1363, !tbaa !305
  %83 = load i32, i32* %words, align 4, !dbg !1367, !tbaa !305
  %cmp114 = icmp slt i32 %82, %83, !dbg !1368
  br i1 %cmp114, label %for.body.116, label %for.end.156, !dbg !1369

for.body.116:                                     ; preds = %for.cond.113
  %84 = load i32, i32* %i, align 4, !dbg !1370, !tbaa !305
  %idxprom117 = sext i32 %84 to i64, !dbg !1373
  %85 = load i32*, i32** %classes.addr, align 8, !dbg !1373, !tbaa !285
  %arrayidx118 = getelementptr i32, i32* %85, i64 %idxprom117, !dbg !1373
  %86 = load i32, i32* %arrayidx118, align 4, !dbg !1373, !tbaa !339
  %cmp119 = icmp eq i32 %86, 10, !dbg !1374
  br i1 %cmp119, label %if.then.121, label %if.end.122, !dbg !1375

if.then.121:                                      ; preds = %for.body.116
  store i32 0, i32* %retval, !dbg !1376
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1376

if.end.122:                                       ; preds = %for.body.116
  %87 = load i32, i32* %i, align 4, !dbg !1377, !tbaa !305
  %idxprom123 = sext i32 %87 to i64, !dbg !1379
  %88 = load i32*, i32** %classes.addr, align 8, !dbg !1379, !tbaa !285
  %arrayidx124 = getelementptr i32, i32* %88, i64 %idxprom123, !dbg !1379
  %89 = load i32, i32* %arrayidx124, align 4, !dbg !1379, !tbaa !339
  %cmp125 = icmp eq i32 %89, 6, !dbg !1380
  br i1 %cmp125, label %land.lhs.true, label %if.end.141, !dbg !1381

land.lhs.true:                                    ; preds = %if.end.122
  %90 = load i32, i32* %i, align 4, !dbg !1382, !tbaa !305
  %sub127 = sub i32 %90, 1, !dbg !1384
  %idxprom128 = sext i32 %sub127 to i64, !dbg !1385
  %91 = load i32*, i32** %classes.addr, align 8, !dbg !1385, !tbaa !285
  %arrayidx129 = getelementptr i32, i32* %91, i64 %idxprom128, !dbg !1385
  %92 = load i32, i32* %arrayidx129, align 4, !dbg !1385, !tbaa !339
  %cmp130 = icmp ne i32 %92, 3, !dbg !1386
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.141, !dbg !1387

land.lhs.true.132:                                ; preds = %land.lhs.true
  %93 = load i32, i32* %i, align 4, !dbg !1388, !tbaa !305
  %sub133 = sub i32 %93, 1, !dbg !1389
  %idxprom134 = sext i32 %sub133 to i64, !dbg !1390
  %94 = load i32*, i32** %classes.addr, align 8, !dbg !1390, !tbaa !285
  %arrayidx135 = getelementptr i32, i32* %94, i64 %idxprom134, !dbg !1390
  %95 = load i32, i32* %arrayidx135, align 4, !dbg !1390, !tbaa !339
  %cmp136 = icmp ne i32 %95, 6, !dbg !1391
  br i1 %cmp136, label %if.then.138, label %if.end.141, !dbg !1392

if.then.138:                                      ; preds = %land.lhs.true.132
  %96 = load i32, i32* %i, align 4, !dbg !1393, !tbaa !305
  %idxprom139 = sext i32 %96 to i64, !dbg !1395
  %97 = load i32*, i32** %classes.addr, align 8, !dbg !1395, !tbaa !285
  %arrayidx140 = getelementptr i32, i32* %97, i64 %idxprom139, !dbg !1395
  store i32 3, i32* %arrayidx140, align 4, !dbg !1396, !tbaa !339
  br label %if.end.141, !dbg !1397

if.end.141:                                       ; preds = %if.then.138, %land.lhs.true.132, %land.lhs.true, %if.end.122
  %98 = load i32, i32* %i, align 4, !dbg !1398, !tbaa !305
  %idxprom142 = sext i32 %98 to i64, !dbg !1400
  %99 = load i32*, i32** %classes.addr, align 8, !dbg !1400, !tbaa !285
  %arrayidx143 = getelementptr i32, i32* %99, i64 %idxprom142, !dbg !1400
  %100 = load i32, i32* %arrayidx143, align 4, !dbg !1400, !tbaa !339
  %cmp144 = icmp eq i32 %100, 8, !dbg !1401
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.153, !dbg !1402

land.lhs.true.146:                                ; preds = %if.end.141
  %101 = load i32, i32* %i, align 4, !dbg !1403, !tbaa !305
  %sub147 = sub i32 %101, 1, !dbg !1405
  %idxprom148 = sext i32 %sub147 to i64, !dbg !1406
  %102 = load i32*, i32** %classes.addr, align 8, !dbg !1406, !tbaa !285
  %arrayidx149 = getelementptr i32, i32* %102, i64 %idxprom148, !dbg !1406
  %103 = load i32, i32* %arrayidx149, align 4, !dbg !1406, !tbaa !339
  %cmp150 = icmp ne i32 %103, 7, !dbg !1407
  br i1 %cmp150, label %if.then.152, label %if.end.153, !dbg !1408

if.then.152:                                      ; preds = %land.lhs.true.146
  store i32 0, i32* %retval, !dbg !1409
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1409

if.end.153:                                       ; preds = %land.lhs.true.146, %if.end.141
  br label %for.inc.154, !dbg !1411

for.inc.154:                                      ; preds = %if.end.153
  %104 = load i32, i32* %i, align 4, !dbg !1412, !tbaa !305
  %inc155 = add i32 %104, 1, !dbg !1412
  store i32 %inc155, i32* %i, align 4, !dbg !1412, !tbaa !305
  br label %for.cond.113, !dbg !1413

for.end.156:                                      ; preds = %for.cond.113
  %105 = load i32, i32* %words, align 4, !dbg !1414, !tbaa !305
  store i32 %105, i32* %retval, !dbg !1415
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1415

cleanup.157:                                      ; preds = %for.end.156, %if.then.152, %if.then.121, %if.then.107, %if.then.97, %cleanup.86, %if.then.49, %if.then.43
  %106 = bitcast [4 x i32]* %subclasses to i8*, !dbg !1416
  call void @llvm.lifetime.end(i64 16, i8* %106) #2, !dbg !1416
  %107 = bitcast i32* %i to i8*, !dbg !1416
  call void @llvm.lifetime.end(i64 4, i8* %107) #2, !dbg !1416
  %108 = bitcast %struct._ffi_type*** %ptr to i8*, !dbg !1416
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !1416
  %109 = bitcast i32* %words to i8*, !dbg !1416
  call void @llvm.lifetime.end(i64 4, i8* %109) #2, !dbg !1416
  %110 = bitcast i32* %UNITS_PER_WORD to i8*, !dbg !1416
  call void @llvm.lifetime.end(i64 4, i8* %110) #2, !dbg !1416
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1417

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval, !dbg !1418
  br label %return, !dbg !1418

return:                                           ; preds = %sw.epilog, %cleanup.157, %sw.bb.33, %sw.bb.31, %if.end.30, %cleanup
  %111 = load i32, i32* %retval, !dbg !1419
  ret i32 %111, !dbg !1419

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_classes(i32 %class1, i32 %class2) #5 {
entry:
  %retval = alloca i32, align 4
  %class1.addr = alloca i32, align 4
  %class2.addr = alloca i32, align 4
  store i32 %class1, i32* %class1.addr, align 4, !tbaa !339
  call void @llvm.dbg.declare(metadata i32* %class1.addr, metadata !279, metadata !289), !dbg !1420
  store i32 %class2, i32* %class2.addr, align 4, !tbaa !339
  call void @llvm.dbg.declare(metadata i32* %class2.addr, metadata !280, metadata !289), !dbg !1421
  %0 = load i32, i32* %class1.addr, align 4, !dbg !1422, !tbaa !339
  %1 = load i32, i32* %class2.addr, align 4, !dbg !1424, !tbaa !339
  %cmp = icmp eq i32 %0, %1, !dbg !1425
  br i1 %cmp, label %if.then, label %if.end, !dbg !1426

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %class1.addr, align 4, !dbg !1427, !tbaa !339
  store i32 %2, i32* %retval, !dbg !1428
  br label %return, !dbg !1428

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %class1.addr, align 4, !dbg !1429, !tbaa !339
  %cmp1 = icmp eq i32 %3, 0, !dbg !1431
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1432

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %class2.addr, align 4, !dbg !1433, !tbaa !339
  store i32 %4, i32* %retval, !dbg !1434
  br label %return, !dbg !1434

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* %class2.addr, align 4, !dbg !1435, !tbaa !339
  %cmp4 = icmp eq i32 %5, 0, !dbg !1437
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1438

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32, i32* %class1.addr, align 4, !dbg !1439, !tbaa !339
  store i32 %6, i32* %retval, !dbg !1440
  br label %return, !dbg !1440

if.end.6:                                         ; preds = %if.end.3
  %7 = load i32, i32* %class1.addr, align 4, !dbg !1441, !tbaa !339
  %cmp7 = icmp eq i32 %7, 10, !dbg !1443
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false, !dbg !1444

lor.lhs.false:                                    ; preds = %if.end.6
  %8 = load i32, i32* %class2.addr, align 4, !dbg !1445, !tbaa !339
  %cmp8 = icmp eq i32 %8, 10, !dbg !1447
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1448

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.6
  store i32 10, i32* %retval, !dbg !1449
  br label %return, !dbg !1449

if.end.10:                                        ; preds = %lor.lhs.false
  %9 = load i32, i32* %class1.addr, align 4, !dbg !1450, !tbaa !339
  %cmp11 = icmp eq i32 %9, 2, !dbg !1452
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false.13, !dbg !1453

land.lhs.true:                                    ; preds = %if.end.10
  %10 = load i32, i32* %class2.addr, align 4, !dbg !1454, !tbaa !339
  %cmp12 = icmp eq i32 %10, 4, !dbg !1456
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false.13, !dbg !1457

lor.lhs.false.13:                                 ; preds = %land.lhs.true, %if.end.10
  %11 = load i32, i32* %class2.addr, align 4, !dbg !1458, !tbaa !339
  %cmp14 = icmp eq i32 %11, 2, !dbg !1459
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.18, !dbg !1460

land.lhs.true.15:                                 ; preds = %lor.lhs.false.13
  %12 = load i32, i32* %class1.addr, align 4, !dbg !1461, !tbaa !339
  %cmp16 = icmp eq i32 %12, 4, !dbg !1463
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !1464

if.then.17:                                       ; preds = %land.lhs.true.15, %land.lhs.true
  store i32 2, i32* %retval, !dbg !1465
  br label %return, !dbg !1465

if.end.18:                                        ; preds = %land.lhs.true.15, %lor.lhs.false.13
  %13 = load i32, i32* %class1.addr, align 4, !dbg !1466, !tbaa !339
  %cmp19 = icmp eq i32 %13, 1, !dbg !1468
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.20, !dbg !1469

lor.lhs.false.20:                                 ; preds = %if.end.18
  %14 = load i32, i32* %class1.addr, align 4, !dbg !1470, !tbaa !339
  %cmp21 = icmp eq i32 %14, 2, !dbg !1472
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false.22, !dbg !1473

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.20
  %15 = load i32, i32* %class2.addr, align 4, !dbg !1474, !tbaa !339
  %cmp23 = icmp eq i32 %15, 1, !dbg !1475
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false.24, !dbg !1476

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.22
  %16 = load i32, i32* %class2.addr, align 4, !dbg !1477, !tbaa !339
  %cmp25 = icmp eq i32 %16, 2, !dbg !1479
  br i1 %cmp25, label %if.then.26, label %if.end.27, !dbg !1480

if.then.26:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.22, %lor.lhs.false.20, %if.end.18
  store i32 1, i32* %retval, !dbg !1481
  br label %return, !dbg !1481

if.end.27:                                        ; preds = %lor.lhs.false.24
  %17 = load i32, i32* %class1.addr, align 4, !dbg !1482, !tbaa !339
  %cmp28 = icmp eq i32 %17, 7, !dbg !1484
  br i1 %cmp28, label %if.then.39, label %lor.lhs.false.29, !dbg !1485

lor.lhs.false.29:                                 ; preds = %if.end.27
  %18 = load i32, i32* %class1.addr, align 4, !dbg !1486, !tbaa !339
  %cmp30 = icmp eq i32 %18, 8, !dbg !1488
  br i1 %cmp30, label %if.then.39, label %lor.lhs.false.31, !dbg !1489

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.29
  %19 = load i32, i32* %class1.addr, align 4, !dbg !1490, !tbaa !339
  %cmp32 = icmp eq i32 %19, 9, !dbg !1491
  br i1 %cmp32, label %if.then.39, label %lor.lhs.false.33, !dbg !1492

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.31
  %20 = load i32, i32* %class2.addr, align 4, !dbg !1493, !tbaa !339
  %cmp34 = icmp eq i32 %20, 7, !dbg !1494
  br i1 %cmp34, label %if.then.39, label %lor.lhs.false.35, !dbg !1495

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.33
  %21 = load i32, i32* %class2.addr, align 4, !dbg !1496, !tbaa !339
  %cmp36 = icmp eq i32 %21, 8, !dbg !1497
  br i1 %cmp36, label %if.then.39, label %lor.lhs.false.37, !dbg !1498

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.35
  %22 = load i32, i32* %class2.addr, align 4, !dbg !1499, !tbaa !339
  %cmp38 = icmp eq i32 %22, 9, !dbg !1500
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !1501

if.then.39:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.35, %lor.lhs.false.33, %lor.lhs.false.31, %lor.lhs.false.29, %if.end.27
  store i32 10, i32* %retval, !dbg !1502
  br label %return, !dbg !1502

if.end.40:                                        ; preds = %lor.lhs.false.37
  store i32 3, i32* %retval, !dbg !1503
  br label %return, !dbg !1503

return:                                           ; preds = %if.end.40, %if.then.39, %if.then.26, %if.then.17, %if.then.9, %if.then.5, %if.then.2, %if.then
  %23 = load i32, i32* %retval, !dbg !1504
  ret i32 %23, !dbg !1504
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!281, !282, !283}
!llvm.ident = !{!284}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !31, subprograms: !79)
!1 = !DIFile(filename: "ffi64.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !9, !17}
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
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_64_reg_class", file: !18, line: 80, size: 32, align: 32, elements: !19)
!18 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/libffi/src/x86/ffi64.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!20 = !DIEnumerator(name: "X86_64_NO_CLASS", value: 0)
!21 = !DIEnumerator(name: "X86_64_INTEGER_CLASS", value: 1)
!22 = !DIEnumerator(name: "X86_64_INTEGERSI_CLASS", value: 2)
!23 = !DIEnumerator(name: "X86_64_SSE_CLASS", value: 3)
!24 = !DIEnumerator(name: "X86_64_SSESF_CLASS", value: 4)
!25 = !DIEnumerator(name: "X86_64_SSEDF_CLASS", value: 5)
!26 = !DIEnumerator(name: "X86_64_SSEUP_CLASS", value: 6)
!27 = !DIEnumerator(name: "X86_64_X87_CLASS", value: 7)
!28 = !DIEnumerator(name: "X86_64_X87UP_CLASS", value: 8)
!29 = !DIEnumerator(name: "X86_64_COMPLEX_X87_CLASS", value: 9)
!30 = !DIEnumerator(name: "X86_64_MEMORY_CLASS", value: 10)
!31 = !{!32, !35, !36, !34, !58, !60, !62, !65, !66, !69, !72, !73, !74, !77}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 62, baseType: !34)
!33 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!34 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "register_args", file: !18, line: 59, size: 1408, align: 128, elements: !38)
!38 = !{!39, !45}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !37, file: !18, line: 62, baseType: !40, size: 384, align: 64)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 384, align: 64, elements: !43)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT64", file: !42, line: 112, baseType: !34)
!42 = !DIFile(filename: "build/temp.linux-x86_64-3.4/libffi/include/ffi_common.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!43 = !{!44}
!44 = !DISubrange(count: 6)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !37, file: !18, line: 63, baseType: !46, size: 1024, align: 128, offset: 384)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1024, align: 128, elements: !56)
!47 = !DICompositeType(tag: DW_TAG_union_type, name: "big_int_union", file: !18, line: 52, size: 128, align: 128, elements: !48)
!48 = !{!49, !52, !53}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !47, file: !18, line: 54, baseType: !50, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !42, line: 110, baseType: !51)
!51 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !47, file: !18, line: 55, baseType: !41, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "i128", scope: !47, file: !18, line: 56, baseType: !54, size: 128, align: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int128_t", file: !1, line: 426, baseType: !55)
!55 = !DIBasicType(name: "__int128", size: 128, align: 128, encoding: DW_ATE_signed)
!56 = !{!57}
!57 = !DISubrange(count: 8)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "SINT64", file: !42, line: 113, baseType: !61)
!61 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "SINT8", file: !42, line: 107, baseType: !64)
!64 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "SINT16", file: !42, line: 109, baseType: !68)
!68 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "SINT32", file: !42, line: 111, baseType: !71)
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !76)
!76 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!79 = !{!80, !135, !170, !196, !235, !250, !275}
!80 = !DISubprogram(name: "ffi_prep_cif_machdep", scope: !18, file: !18, line: 351, type: !81, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ffi_cif*)* @ffi_prep_cif_machdep, variables: !106)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_status", file: !4, line: 208, baseType: !3)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_cif", file: !4, line: 222, baseType: !86)
!86 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 212, size: 256, align: 64, elements: !87)
!87 = !{!88, !90, !91, !103, !104, !105}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !86, file: !4, line: 213, baseType: !89, size: 32, align: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_abi", file: !10, line: 108, baseType: !9)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !86, file: !4, line: 214, baseType: !51, size: 32, align: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !86, file: !4, line: 215, baseType: !92, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_type", file: !4, line: 118, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ffi_type", file: !4, line: 112, size: 192, align: 64, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !95, file: !4, line: 114, baseType: !32, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !95, file: !4, line: 115, baseType: !76, size: 16, align: 16, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !4, line: 116, baseType: !76, size: 16, align: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !95, file: !4, line: 117, baseType: !101, size: 64, align: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "rtype", scope: !86, file: !4, line: 216, baseType: !93, size: 64, align: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !86, file: !4, line: 217, baseType: !51, size: 32, align: 32, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !4, line: 218, baseType: !51, size: 32, align: 32, offset: 224)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !120, !121, !128, !129}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cif", arg: 1, scope: !80, file: !18, line: 351, type: !84)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gprcount", scope: !80, file: !18, line: 353, type: !71)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ssecount", scope: !80, file: !18, line: 353, type: !71)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !80, file: !18, line: 353, type: !71)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avn", scope: !80, file: !18, line: 353, type: !71)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !80, file: !18, line: 353, type: !71)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ngpr", scope: !80, file: !18, line: 353, type: !71)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsse", scope: !80, file: !18, line: 353, type: !71)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !80, file: !18, line: 353, type: !71)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "classes", scope: !80, file: !18, line: 354, type: !117)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, align: 32, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !80, file: !18, line: 355, type: !32)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sse0", scope: !122, file: !18, line: 374, type: !127)
!122 = distinct !DILexicalBlock(scope: !123, file: !18, line: 372, column: 2)
!123 = distinct !DILexicalBlock(scope: !124, file: !18, line: 371, column: 16)
!124 = distinct !DILexicalBlock(scope: !125, file: !18, line: 363, column: 11)
!125 = distinct !DILexicalBlock(scope: !126, file: !18, line: 361, column: 5)
!126 = distinct !DILexicalBlock(scope: !80, file: !18, line: 360, column: 7)
!127 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sse1", scope: !122, file: !18, line: 375, type: !127)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "align", scope: !130, file: !18, line: 396, type: !61)
!130 = distinct !DILexicalBlock(scope: !131, file: !18, line: 395, column: 2)
!131 = distinct !DILexicalBlock(scope: !132, file: !18, line: 392, column: 11)
!132 = distinct !DILexicalBlock(scope: !133, file: !18, line: 391, column: 5)
!133 = distinct !DILexicalBlock(scope: !134, file: !18, line: 390, column: 3)
!134 = distinct !DILexicalBlock(scope: !80, file: !18, line: 390, column: 3)
!135 = !DISubprogram(name: "ffi_call", scope: !18, file: !18, line: 419, type: !136, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.ffi_cif*, void ()*, i8*, i8**)* @ffi_call, variables: !142)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !84, !138, !35, !141}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !163, !164, !167, !169}
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cif", arg: 1, scope: !135, file: !18, line: 419, type: !84)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !135, file: !18, line: 419, type: !138)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rvalue", arg: 3, scope: !135, file: !18, line: 419, type: !35)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "avalue", arg: 4, scope: !135, file: !18, line: 419, type: !141)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "classes", scope: !135, file: !18, line: 421, type: !117)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stack", scope: !135, file: !18, line: 422, type: !58)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argp", scope: !135, file: !18, line: 422, type: !58)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg_types", scope: !135, file: !18, line: 423, type: !92)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gprcount", scope: !135, file: !18, line: 424, type: !71)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ssecount", scope: !135, file: !18, line: 424, type: !71)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ngpr", scope: !135, file: !18, line: 424, type: !71)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsse", scope: !135, file: !18, line: 424, type: !71)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !135, file: !18, line: 424, type: !71)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avn", scope: !135, file: !18, line: 424, type: !71)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret_in_memory", scope: !135, file: !18, line: 425, type: !127)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reg_args", scope: !135, file: !18, line: 426, type: !36)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !160, file: !18, line: 456, type: !32)
!160 = distinct !DILexicalBlock(scope: !161, file: !18, line: 455, column: 5)
!161 = distinct !DILexicalBlock(scope: !162, file: !18, line: 454, column: 3)
!162 = distinct !DILexicalBlock(scope: !135, file: !18, line: 454, column: 3)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !160, file: !18, line: 457, type: !71)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "align", scope: !165, file: !18, line: 464, type: !61)
!165 = distinct !DILexicalBlock(scope: !166, file: !18, line: 463, column: 2)
!166 = distinct !DILexicalBlock(scope: !160, file: !18, line: 460, column: 11)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !168, file: !18, line: 478, type: !58)
!168 = distinct !DILexicalBlock(scope: !166, file: !18, line: 476, column: 2)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !168, file: !18, line: 479, type: !71)
!170 = !DISubprogram(name: "ffi_prep_closure_loc", scope: !18, file: !18, line: 530, type: !171, isLocal: false, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ffi_closure*, %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8*, i8*)* @ffi_prep_closure_loc, variables: !187)
!171 = !DISubroutineType(types: !172)
!172 = !{!83, !173, !84, !183, !35, !35}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_closure", file: !4, line: 310, baseType: !175)
!175 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 299, size: 384, align: 64, elements: !176)
!176 = !{!177, !181, !182, !186}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tramp", scope: !175, file: !4, line: 304, baseType: !178, size: 192, align: 8)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 192, align: 8, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 24)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "cif", scope: !175, file: !4, line: 306, baseType: !84, size: 64, align: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !175, file: !4, line: 307, baseType: !183, size: 64, align: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !84, !35, !141, !35}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !175, file: !4, line: 308, baseType: !35, size: 64, align: 64, offset: 320)
!187 = !{!188, !189, !190, !191, !192, !193, !194}
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 1, scope: !170, file: !18, line: 530, type: !173)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cif", arg: 2, scope: !170, file: !18, line: 531, type: !84)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fun", arg: 3, scope: !170, file: !18, line: 532, type: !183)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_data", arg: 4, scope: !170, file: !18, line: 533, type: !35)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codeloc", arg: 5, scope: !170, file: !18, line: 534, type: !35)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tramp", scope: !170, file: !18, line: 536, type: !74)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "abi", scope: !195, file: !18, line: 540, type: !71)
!195 = distinct !DILexicalBlock(scope: !170, file: !18, line: 539, column: 3)
!196 = !DISubprogram(name: "ffi_closure_unix64_inner", scope: !18, file: !18, line: 568, type: !197, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ffi_closure*, i8*, %struct.register_args*, i8*)* @ffi_closure_unix64_inner, variables: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!71, !173, !35, !36, !58}
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !217, !218, !222, !223, !227, !228, !231, !234}
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 1, scope: !196, file: !18, line: 568, type: !173)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rvalue", arg: 2, scope: !196, file: !18, line: 568, type: !35)
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reg_args", arg: 3, scope: !196, file: !18, line: 569, type: !36)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argp", arg: 4, scope: !196, file: !18, line: 569, type: !58)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cif", scope: !196, file: !18, line: 571, type: !84)
!205 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avalue", scope: !196, file: !18, line: 572, type: !141)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg_types", scope: !196, file: !18, line: 573, type: !92)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !196, file: !18, line: 574, type: !61)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avn", scope: !196, file: !18, line: 574, type: !61)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gprcount", scope: !196, file: !18, line: 575, type: !71)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ssecount", scope: !196, file: !18, line: 575, type: !71)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ngpr", scope: !196, file: !18, line: 575, type: !71)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsse", scope: !196, file: !18, line: 575, type: !71)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !196, file: !18, line: 576, type: !71)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "classes", scope: !215, file: !18, line: 585, type: !117)
!215 = distinct !DILexicalBlock(scope: !216, file: !18, line: 584, column: 5)
!216 = distinct !DILexicalBlock(scope: !196, file: !18, line: 583, column: 7)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !215, file: !18, line: 586, type: !71)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sse0", scope: !219, file: !18, line: 598, type: !127)
!219 = distinct !DILexicalBlock(scope: !220, file: !18, line: 596, column: 2)
!220 = distinct !DILexicalBlock(scope: !221, file: !18, line: 595, column: 16)
!221 = distinct !DILexicalBlock(scope: !215, file: !18, line: 587, column: 11)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sse1", scope: !219, file: !18, line: 599, type: !127)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "classes", scope: !224, file: !18, line: 612, type: !117)
!224 = distinct !DILexicalBlock(scope: !225, file: !18, line: 611, column: 5)
!225 = distinct !DILexicalBlock(scope: !226, file: !18, line: 610, column: 3)
!226 = distinct !DILexicalBlock(scope: !196, file: !18, line: 610, column: 3)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !224, file: !18, line: 613, type: !71)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "align", scope: !229, file: !18, line: 620, type: !61)
!229 = distinct !DILexicalBlock(scope: !230, file: !18, line: 619, column: 2)
!230 = distinct !DILexicalBlock(scope: !224, file: !18, line: 616, column: 11)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !232, file: !18, line: 652, type: !58)
!232 = distinct !DILexicalBlock(scope: !233, file: !18, line: 651, column: 2)
!233 = distinct !DILexicalBlock(scope: !230, file: !18, line: 633, column: 16)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !232, file: !18, line: 653, type: !71)
!235 = !DISubprogram(name: "examine_argument", scope: !18, file: !18, line: 309, type: !236, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ffi_type*, i32*, i1, i32*, i32*)* @examine_argument, variables: !240)
!236 = !DISubroutineType(types: !237)
!237 = !{!71, !93, !238, !127, !239, !239}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !235, file: !18, line: 309, type: !93)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "classes", arg: 2, scope: !235, file: !18, line: 309, type: !238)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in_return", arg: 3, scope: !235, file: !18, line: 310, type: !127)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pngpr", arg: 4, scope: !235, file: !18, line: 310, type: !239)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pnsse", arg: 5, scope: !235, file: !18, line: 310, type: !239)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !235, file: !18, line: 312, type: !71)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !235, file: !18, line: 312, type: !71)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ngpr", scope: !235, file: !18, line: 312, type: !71)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsse", scope: !235, file: !18, line: 312, type: !71)
!250 = !DISubprogram(name: "classify_argument", scope: !18, file: !18, line: 155, type: !251, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ffi_type*, i32*, i64)* @classify_argument, variables: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{!71, !93, !238, !32}
!253 = !{!254, !255, !256, !257, !260, !263, !264, !265, !266, !267, !271}
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !250, file: !18, line: 155, type: !93)
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "classes", arg: 2, scope: !250, file: !18, line: 155, type: !238)
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "byte_offset", arg: 3, scope: !250, file: !18, line: 156, type: !32)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !258, file: !18, line: 170, type: !71)
!258 = distinct !DILexicalBlock(scope: !259, file: !18, line: 169, column: 7)
!259 = distinct !DILexicalBlock(scope: !250, file: !18, line: 159, column: 5)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "UNITS_PER_WORD", scope: !261, file: !18, line: 211, type: !262)
!261 = distinct !DILexicalBlock(scope: !259, file: !18, line: 210, column: 7)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "words", scope: !261, file: !18, line: 212, type: !71)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !261, file: !18, line: 213, type: !92)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !261, file: !18, line: 214, type: !71)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subclasses", scope: !261, file: !18, line: 215, type: !117)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !268, file: !18, line: 235, type: !71)
!268 = distinct !DILexicalBlock(scope: !269, file: !18, line: 234, column: 4)
!269 = distinct !DILexicalBlock(scope: !270, file: !18, line: 233, column: 2)
!270 = distinct !DILexicalBlock(scope: !261, file: !18, line: 233, column: 2)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !272, file: !18, line: 244, type: !71)
!272 = distinct !DILexicalBlock(scope: !273, file: !18, line: 243, column: 8)
!273 = distinct !DILexicalBlock(scope: !274, file: !18, line: 242, column: 6)
!274 = distinct !DILexicalBlock(scope: !268, file: !18, line: 242, column: 6)
!275 = !DISubprogram(name: "merge_classes", scope: !18, file: !18, line: 107, type: !276, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @merge_classes, variables: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{!17, !17, !17}
!278 = !{!279, !280}
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "class1", arg: 1, scope: !275, file: !18, line: 107, type: !17)
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "class2", arg: 2, scope: !275, file: !18, line: 107, type: !17)
!281 = !{i32 2, !"Dwarf Version", i32 4}
!282 = !{i32 2, !"Debug Info Version", i32 3}
!283 = !{i32 1, !"PIC Level", i32 2}
!284 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!285 = !{!286, !286, i64 0}
!286 = !{!"any pointer", !287, i64 0}
!287 = !{!"omnipotent char", !288, i64 0}
!288 = !{!"Simple C/C++ TBAA"}
!289 = !DIExpression()
!290 = !DILocation(line: 351, column: 32, scope: !80)
!291 = !DILocation(line: 353, column: 3, scope: !80)
!292 = !DILocation(line: 353, column: 7, scope: !80)
!293 = !DILocation(line: 353, column: 17, scope: !80)
!294 = !DILocation(line: 353, column: 27, scope: !80)
!295 = !DILocation(line: 353, column: 30, scope: !80)
!296 = !DILocation(line: 353, column: 35, scope: !80)
!297 = !DILocation(line: 353, column: 38, scope: !80)
!298 = !DILocation(line: 353, column: 44, scope: !80)
!299 = !DILocation(line: 353, column: 50, scope: !80)
!300 = !DILocation(line: 354, column: 3, scope: !80)
!301 = !DILocation(line: 354, column: 25, scope: !80)
!302 = !DILocation(line: 355, column: 3, scope: !80)
!303 = !DILocation(line: 355, column: 10, scope: !80)
!304 = !DILocation(line: 357, column: 23, scope: !80)
!305 = !{!306, !306, i64 0}
!306 = !{!"int", !287, i64 0}
!307 = !DILocation(line: 357, column: 12, scope: !80)
!308 = !DILocation(line: 359, column: 11, scope: !80)
!309 = !DILocation(line: 359, column: 16, scope: !80)
!310 = !{!311, !286, i64 16}
!311 = !{!"", !287, i64 0, !306, i64 4, !286, i64 8, !286, i64 16, !306, i64 24, !306, i64 28}
!312 = !DILocation(line: 359, column: 23, scope: !80)
!313 = !{!314, !316, i64 10}
!314 = !{!"_ffi_type", !315, i64 0, !316, i64 8, !316, i64 10, !286, i64 16}
!315 = !{!"long", !287, i64 0}
!316 = !{!"short", !287, i64 0}
!317 = !DILocation(line: 359, column: 9, scope: !80)
!318 = !DILocation(line: 360, column: 7, scope: !126)
!319 = !DILocation(line: 360, column: 13, scope: !126)
!320 = !DILocation(line: 360, column: 7, scope: !80)
!321 = !DILocation(line: 362, column: 29, scope: !125)
!322 = !DILocation(line: 362, column: 34, scope: !125)
!323 = !DILocation(line: 362, column: 41, scope: !125)
!324 = !DILocation(line: 362, column: 11, scope: !125)
!325 = !DILocation(line: 362, column: 9, scope: !125)
!326 = !DILocation(line: 363, column: 11, scope: !124)
!327 = !DILocation(line: 363, column: 13, scope: !124)
!328 = !DILocation(line: 363, column: 11, scope: !125)
!329 = !DILocation(line: 367, column: 12, scope: !330)
!330 = distinct !DILexicalBlock(scope: !124, file: !18, line: 364, column: 2)
!331 = !DILocation(line: 369, column: 10, scope: !330)
!332 = !DILocation(line: 370, column: 2, scope: !330)
!333 = !DILocation(line: 371, column: 16, scope: !123)
!334 = !DILocation(line: 371, column: 22, scope: !123)
!335 = !DILocation(line: 371, column: 16, scope: !124)
!336 = !DILocation(line: 374, column: 4, scope: !122)
!337 = !DILocation(line: 374, column: 10, scope: !122)
!338 = !DILocation(line: 374, column: 19, scope: !122)
!339 = !{!287, !287, i64 0}
!340 = !DILocation(line: 374, column: 31, scope: !122)
!341 = !DILocation(line: 374, column: 51, scope: !122)
!342 = !DILocation(line: 374, column: 54, scope: !343)
!343 = !DILexicalBlockFile(scope: !122, file: !18, discriminator: 1)
!344 = !DILocation(line: 374, column: 65, scope: !122)
!345 = !DILocation(line: 374, column: 10, scope: !346)
!346 = !DILexicalBlockFile(scope: !122, file: !18, discriminator: 2)
!347 = !{!348, !348, i64 0}
!348 = !{!"_Bool", !287, i64 0}
!349 = !DILocation(line: 375, column: 4, scope: !122)
!350 = !DILocation(line: 375, column: 10, scope: !122)
!351 = !DILocation(line: 375, column: 17, scope: !122)
!352 = !DILocation(line: 375, column: 19, scope: !122)
!353 = !DILocation(line: 375, column: 24, scope: !122)
!354 = !DILocation(line: 375, column: 29, scope: !343)
!355 = !DILocation(line: 375, column: 41, scope: !122)
!356 = !DILocation(line: 375, column: 61, scope: !122)
!357 = !DILocation(line: 375, column: 64, scope: !358)
!358 = !DILexicalBlockFile(scope: !122, file: !18, discriminator: 3)
!359 = !DILocation(line: 375, column: 75, scope: !122)
!360 = !DILocation(line: 375, column: 10, scope: !346)
!361 = !DILocation(line: 376, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !122, file: !18, line: 376, column: 8)
!363 = !{i8 0, i8 2}
!364 = !DILocation(line: 376, column: 13, scope: !362)
!365 = !DILocation(line: 376, column: 17, scope: !366)
!366 = !DILexicalBlockFile(scope: !362, file: !18, discriminator: 1)
!367 = !DILocation(line: 376, column: 8, scope: !122)
!368 = !DILocation(line: 377, column: 12, scope: !362)
!369 = !DILocation(line: 377, column: 6, scope: !362)
!370 = !DILocation(line: 378, column: 14, scope: !371)
!371 = distinct !DILexicalBlock(scope: !362, file: !18, line: 378, column: 13)
!372 = !DILocation(line: 378, column: 19, scope: !371)
!373 = !DILocation(line: 378, column: 22, scope: !374)
!374 = !DILexicalBlockFile(scope: !371, file: !18, discriminator: 1)
!375 = !DILocation(line: 378, column: 13, scope: !362)
!376 = !DILocation(line: 379, column: 12, scope: !371)
!377 = !DILocation(line: 379, column: 6, scope: !371)
!378 = !DILocation(line: 380, column: 13, scope: !379)
!379 = distinct !DILexicalBlock(scope: !371, file: !18, line: 380, column: 13)
!380 = !DILocation(line: 380, column: 18, scope: !379)
!381 = !DILocation(line: 380, column: 21, scope: !382)
!382 = !DILexicalBlockFile(scope: !379, file: !18, discriminator: 1)
!383 = !DILocation(line: 380, column: 13, scope: !371)
!384 = !DILocation(line: 381, column: 12, scope: !379)
!385 = !DILocation(line: 381, column: 6, scope: !379)
!386 = !DILocation(line: 383, column: 13, scope: !122)
!387 = !DILocation(line: 383, column: 18, scope: !122)
!388 = !DILocation(line: 383, column: 25, scope: !122)
!389 = !{!314, !315, i64 0}
!390 = !DILocation(line: 383, column: 30, scope: !122)
!391 = !DILocation(line: 383, column: 10, scope: !122)
!392 = !DILocation(line: 384, column: 2, scope: !123)
!393 = !DILocation(line: 384, column: 2, scope: !122)
!394 = !DILocation(line: 385, column: 5, scope: !125)
!395 = !DILocation(line: 390, column: 14, scope: !134)
!396 = !{!315, !315, i64 0}
!397 = !DILocation(line: 390, column: 21, scope: !134)
!398 = !DILocation(line: 390, column: 32, scope: !134)
!399 = !DILocation(line: 390, column: 37, scope: !134)
!400 = !{!311, !306, i64 4}
!401 = !DILocation(line: 390, column: 30, scope: !134)
!402 = !DILocation(line: 390, column: 8, scope: !134)
!403 = !DILocation(line: 390, column: 44, scope: !404)
!404 = !DILexicalBlockFile(scope: !405, file: !18, discriminator: 2)
!405 = !DILexicalBlockFile(scope: !133, file: !18, discriminator: 1)
!406 = !DILocation(line: 390, column: 48, scope: !133)
!407 = !DILocation(line: 390, column: 46, scope: !133)
!408 = !DILocation(line: 390, column: 3, scope: !134)
!409 = !DILocation(line: 392, column: 44, scope: !131)
!410 = !DILocation(line: 392, column: 29, scope: !131)
!411 = !DILocation(line: 392, column: 34, scope: !131)
!412 = !{!311, !286, i64 8}
!413 = !DILocation(line: 392, column: 48, scope: !131)
!414 = !DILocation(line: 392, column: 11, scope: !131)
!415 = !DILocation(line: 392, column: 74, scope: !131)
!416 = !DILocation(line: 393, column: 4, scope: !131)
!417 = !DILocation(line: 393, column: 7, scope: !418)
!418 = !DILexicalBlockFile(scope: !131, file: !18, discriminator: 1)
!419 = !DILocation(line: 393, column: 18, scope: !131)
!420 = !DILocation(line: 393, column: 16, scope: !131)
!421 = !DILocation(line: 393, column: 23, scope: !131)
!422 = !DILocation(line: 394, column: 4, scope: !131)
!423 = !DILocation(line: 394, column: 7, scope: !418)
!424 = !DILocation(line: 394, column: 18, scope: !131)
!425 = !DILocation(line: 394, column: 16, scope: !131)
!426 = !DILocation(line: 394, column: 23, scope: !131)
!427 = !DILocation(line: 392, column: 11, scope: !132)
!428 = !DILocation(line: 396, column: 4, scope: !130)
!429 = !DILocation(line: 396, column: 9, scope: !130)
!430 = !DILocation(line: 396, column: 32, scope: !130)
!431 = !DILocation(line: 396, column: 17, scope: !130)
!432 = !DILocation(line: 396, column: 22, scope: !130)
!433 = !DILocation(line: 396, column: 36, scope: !130)
!434 = !{!314, !316, i64 8}
!435 = !DILocation(line: 398, column: 8, scope: !436)
!436 = distinct !DILexicalBlock(scope: !130, file: !18, line: 398, column: 8)
!437 = !DILocation(line: 398, column: 14, scope: !436)
!438 = !DILocation(line: 398, column: 8, scope: !130)
!439 = !DILocation(line: 399, column: 12, scope: !436)
!440 = !DILocation(line: 399, column: 6, scope: !436)
!441 = !DILocation(line: 401, column: 26, scope: !130)
!442 = !DILocation(line: 401, column: 33, scope: !130)
!443 = !DILocation(line: 401, column: 41, scope: !130)
!444 = !DILocation(line: 401, column: 47, scope: !130)
!445 = !DILocation(line: 401, column: 37, scope: !130)
!446 = !DILocation(line: 401, column: 51, scope: !130)
!447 = !DILocation(line: 401, column: 10, scope: !130)
!448 = !DILocation(line: 402, column: 28, scope: !130)
!449 = !DILocation(line: 402, column: 13, scope: !130)
!450 = !DILocation(line: 402, column: 18, scope: !130)
!451 = !DILocation(line: 402, column: 32, scope: !130)
!452 = !DILocation(line: 402, column: 10, scope: !130)
!453 = !DILocation(line: 403, column: 2, scope: !131)
!454 = !DILocation(line: 403, column: 2, scope: !130)
!455 = !DILocation(line: 406, column: 16, scope: !456)
!456 = distinct !DILexicalBlock(scope: !131, file: !18, line: 405, column: 2)
!457 = !DILocation(line: 406, column: 13, scope: !456)
!458 = !DILocation(line: 407, column: 16, scope: !456)
!459 = !DILocation(line: 407, column: 13, scope: !456)
!460 = !DILocation(line: 409, column: 5, scope: !132)
!461 = !DILocation(line: 390, column: 54, scope: !133)
!462 = !DILocation(line: 390, column: 3, scope: !133)
!463 = !DILocation(line: 410, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !80, file: !18, line: 410, column: 7)
!465 = !DILocation(line: 410, column: 7, scope: !80)
!466 = !DILocation(line: 411, column: 11, scope: !464)
!467 = !DILocation(line: 411, column: 5, scope: !464)
!468 = !DILocation(line: 412, column: 16, scope: !80)
!469 = !DILocation(line: 412, column: 3, scope: !80)
!470 = !DILocation(line: 412, column: 8, scope: !80)
!471 = !DILocation(line: 412, column: 14, scope: !80)
!472 = !{!311, !306, i64 28}
!473 = !DILocation(line: 413, column: 30, scope: !80)
!474 = !DILocation(line: 413, column: 37, scope: !80)
!475 = !DILocation(line: 413, column: 41, scope: !80)
!476 = !DILocation(line: 413, column: 51, scope: !80)
!477 = !DILocation(line: 413, column: 16, scope: !80)
!478 = !DILocation(line: 413, column: 3, scope: !80)
!479 = !DILocation(line: 413, column: 8, scope: !80)
!480 = !DILocation(line: 413, column: 14, scope: !80)
!481 = !{!311, !306, i64 24}
!482 = !DILocation(line: 416, column: 1, scope: !80)
!483 = !DILocation(line: 415, column: 3, scope: !80)
!484 = !DILocation(line: 309, column: 29, scope: !235)
!485 = !DILocation(line: 309, column: 57, scope: !235)
!486 = !DILocation(line: 310, column: 11, scope: !235)
!487 = !DILocation(line: 310, column: 27, scope: !235)
!488 = !DILocation(line: 310, column: 39, scope: !235)
!489 = !DILocation(line: 312, column: 3, scope: !235)
!490 = !DILocation(line: 312, column: 7, scope: !235)
!491 = !DILocation(line: 312, column: 10, scope: !235)
!492 = !DILocation(line: 312, column: 13, scope: !235)
!493 = !DILocation(line: 312, column: 19, scope: !235)
!494 = !DILocation(line: 314, column: 26, scope: !235)
!495 = !DILocation(line: 314, column: 32, scope: !235)
!496 = !DILocation(line: 314, column: 7, scope: !235)
!497 = !DILocation(line: 314, column: 5, scope: !235)
!498 = !DILocation(line: 315, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !235, file: !18, line: 315, column: 7)
!500 = !DILocation(line: 315, column: 9, scope: !499)
!501 = !DILocation(line: 315, column: 7, scope: !235)
!502 = !DILocation(line: 316, column: 5, scope: !499)
!503 = !DILocation(line: 318, column: 15, scope: !235)
!504 = !DILocation(line: 318, column: 8, scope: !235)
!505 = !DILocation(line: 319, column: 10, scope: !506)
!506 = distinct !DILexicalBlock(scope: !235, file: !18, line: 319, column: 3)
!507 = !DILocation(line: 319, column: 8, scope: !506)
!508 = !DILocation(line: 319, column: 15, scope: !509)
!509 = !DILexicalBlockFile(scope: !510, file: !18, discriminator: 2)
!510 = !DILexicalBlockFile(scope: !511, file: !18, discriminator: 1)
!511 = distinct !DILexicalBlock(scope: !506, file: !18, line: 319, column: 3)
!512 = !DILocation(line: 319, column: 19, scope: !511)
!513 = !DILocation(line: 319, column: 17, scope: !511)
!514 = !DILocation(line: 319, column: 3, scope: !506)
!515 = !DILocation(line: 320, column: 21, scope: !511)
!516 = !DILocation(line: 320, column: 13, scope: !511)
!517 = !DILocation(line: 320, column: 5, scope: !511)
!518 = !DILocation(line: 324, column: 6, scope: !519)
!519 = distinct !DILexicalBlock(scope: !511, file: !18, line: 321, column: 7)
!520 = !DILocation(line: 325, column: 2, scope: !519)
!521 = !DILocation(line: 329, column: 6, scope: !519)
!522 = !DILocation(line: 330, column: 2, scope: !519)
!523 = !DILocation(line: 333, column: 2, scope: !519)
!524 = !DILocation(line: 337, column: 9, scope: !519)
!525 = !DILocation(line: 337, column: 19, scope: !519)
!526 = !DILocation(line: 337, column: 2, scope: !519)
!527 = !DILocation(line: 339, column: 2, scope: !519)
!528 = !DILocation(line: 340, column: 7, scope: !519)
!529 = !DILocation(line: 319, column: 22, scope: !511)
!530 = !DILocation(line: 319, column: 3, scope: !511)
!531 = !DILocation(line: 342, column: 12, scope: !235)
!532 = !DILocation(line: 342, column: 4, scope: !235)
!533 = !DILocation(line: 342, column: 10, scope: !235)
!534 = !DILocation(line: 343, column: 12, scope: !235)
!535 = !DILocation(line: 343, column: 4, scope: !235)
!536 = !DILocation(line: 343, column: 10, scope: !235)
!537 = !DILocation(line: 345, column: 10, scope: !235)
!538 = !DILocation(line: 345, column: 3, scope: !235)
!539 = !DILocation(line: 346, column: 1, scope: !235)
!540 = !DILocation(line: 419, column: 20, scope: !135)
!541 = !DILocation(line: 419, column: 32, scope: !135)
!542 = !DILocation(line: 419, column: 49, scope: !135)
!543 = !DILocation(line: 419, column: 64, scope: !135)
!544 = !DILocation(line: 421, column: 3, scope: !135)
!545 = !DILocation(line: 421, column: 25, scope: !135)
!546 = !DILocation(line: 422, column: 3, scope: !135)
!547 = !DILocation(line: 422, column: 9, scope: !135)
!548 = !DILocation(line: 422, column: 17, scope: !135)
!549 = !DILocation(line: 423, column: 3, scope: !135)
!550 = !DILocation(line: 423, column: 14, scope: !135)
!551 = !DILocation(line: 424, column: 3, scope: !135)
!552 = !DILocation(line: 424, column: 7, scope: !135)
!553 = !DILocation(line: 424, column: 17, scope: !135)
!554 = !DILocation(line: 424, column: 27, scope: !135)
!555 = !DILocation(line: 424, column: 33, scope: !135)
!556 = !DILocation(line: 424, column: 39, scope: !135)
!557 = !DILocation(line: 424, column: 42, scope: !135)
!558 = !DILocation(line: 425, column: 3, scope: !135)
!559 = !DILocation(line: 425, column: 9, scope: !135)
!560 = !DILocation(line: 426, column: 3, scope: !135)
!561 = !DILocation(line: 426, column: 25, scope: !135)
!562 = !DILocation(line: 434, column: 20, scope: !135)
!563 = !DILocation(line: 434, column: 25, scope: !135)
!564 = !DILocation(line: 434, column: 32, scope: !135)
!565 = !DILocation(line: 434, column: 37, scope: !135)
!566 = !DILocation(line: 435, column: 6, scope: !135)
!567 = !DILocation(line: 435, column: 10, scope: !568)
!568 = !DILexicalBlockFile(scope: !135, file: !18, discriminator: 1)
!569 = !DILocation(line: 435, column: 15, scope: !135)
!570 = !DILocation(line: 435, column: 21, scope: !135)
!571 = !DILocation(line: 435, column: 29, scope: !135)
!572 = !DILocation(line: 434, column: 17, scope: !135)
!573 = !DILocation(line: 436, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !135, file: !18, line: 436, column: 7)
!575 = !DILocation(line: 436, column: 14, scope: !574)
!576 = !DILocation(line: 436, column: 28, scope: !574)
!577 = !DILocation(line: 436, column: 31, scope: !578)
!578 = !DILexicalBlockFile(scope: !574, file: !18, discriminator: 1)
!579 = !DILocation(line: 436, column: 7, scope: !135)
!580 = !DILocation(line: 437, column: 32, scope: !574)
!581 = !DILocation(line: 437, column: 37, scope: !574)
!582 = !DILocation(line: 437, column: 44, scope: !574)
!583 = !DILocation(line: 437, column: 14, scope: !574)
!584 = !DILocation(line: 437, column: 12, scope: !574)
!585 = !DILocation(line: 437, column: 5, scope: !574)
!586 = !DILocation(line: 440, column: 61, scope: !135)
!587 = !DILocation(line: 440, column: 66, scope: !135)
!588 = !DILocation(line: 440, column: 59, scope: !135)
!589 = !DILocation(line: 440, column: 72, scope: !135)
!590 = !DILocation(line: 440, column: 11, scope: !135)
!591 = !DILocation(line: 440, column: 9, scope: !135)
!592 = !DILocation(line: 441, column: 39, scope: !135)
!593 = !DILocation(line: 441, column: 14, scope: !135)
!594 = !DILocation(line: 441, column: 12, scope: !135)
!595 = !DILocation(line: 442, column: 10, scope: !135)
!596 = !DILocation(line: 442, column: 16, scope: !135)
!597 = !DILocation(line: 442, column: 8, scope: !135)
!598 = !DILocation(line: 444, column: 23, scope: !135)
!599 = !DILocation(line: 444, column: 12, scope: !135)
!600 = !DILocation(line: 448, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !135, file: !18, line: 448, column: 7)
!602 = !DILocation(line: 448, column: 7, scope: !135)
!603 = !DILocation(line: 449, column: 49, scope: !601)
!604 = !DILocation(line: 449, column: 33, scope: !601)
!605 = !DILocation(line: 449, column: 27, scope: !601)
!606 = !DILocation(line: 449, column: 5, scope: !601)
!607 = !DILocation(line: 449, column: 15, scope: !601)
!608 = !DILocation(line: 449, column: 31, scope: !601)
!609 = !DILocation(line: 451, column: 9, scope: !135)
!610 = !DILocation(line: 451, column: 14, scope: !135)
!611 = !DILocation(line: 451, column: 7, scope: !135)
!612 = !DILocation(line: 452, column: 15, scope: !135)
!613 = !DILocation(line: 452, column: 20, scope: !135)
!614 = !DILocation(line: 452, column: 13, scope: !135)
!615 = !DILocation(line: 454, column: 10, scope: !162)
!616 = !DILocation(line: 454, column: 8, scope: !162)
!617 = !DILocation(line: 454, column: 15, scope: !618)
!618 = !DILexicalBlockFile(scope: !619, file: !18, discriminator: 2)
!619 = !DILexicalBlockFile(scope: !161, file: !18, discriminator: 1)
!620 = !DILocation(line: 454, column: 19, scope: !161)
!621 = !DILocation(line: 454, column: 17, scope: !161)
!622 = !DILocation(line: 454, column: 3, scope: !162)
!623 = !DILocation(line: 456, column: 7, scope: !160)
!624 = !DILocation(line: 456, column: 14, scope: !160)
!625 = !DILocation(line: 456, column: 31, scope: !160)
!626 = !DILocation(line: 456, column: 21, scope: !160)
!627 = !DILocation(line: 456, column: 35, scope: !160)
!628 = !DILocation(line: 457, column: 7, scope: !160)
!629 = !DILocation(line: 457, column: 11, scope: !160)
!630 = !DILocation(line: 459, column: 39, scope: !160)
!631 = !DILocation(line: 459, column: 29, scope: !160)
!632 = !DILocation(line: 459, column: 43, scope: !160)
!633 = !DILocation(line: 459, column: 11, scope: !160)
!634 = !DILocation(line: 459, column: 9, scope: !160)
!635 = !DILocation(line: 460, column: 11, scope: !166)
!636 = !DILocation(line: 460, column: 13, scope: !166)
!637 = !DILocation(line: 461, column: 4, scope: !166)
!638 = !DILocation(line: 461, column: 7, scope: !639)
!639 = !DILexicalBlockFile(scope: !166, file: !18, discriminator: 1)
!640 = !DILocation(line: 461, column: 18, scope: !166)
!641 = !DILocation(line: 461, column: 16, scope: !166)
!642 = !DILocation(line: 461, column: 23, scope: !166)
!643 = !DILocation(line: 462, column: 4, scope: !166)
!644 = !DILocation(line: 462, column: 7, scope: !639)
!645 = !DILocation(line: 462, column: 18, scope: !166)
!646 = !DILocation(line: 462, column: 16, scope: !166)
!647 = !DILocation(line: 462, column: 23, scope: !166)
!648 = !DILocation(line: 460, column: 11, scope: !160)
!649 = !DILocation(line: 464, column: 4, scope: !165)
!650 = !DILocation(line: 464, column: 9, scope: !165)
!651 = !DILocation(line: 464, column: 27, scope: !165)
!652 = !DILocation(line: 464, column: 17, scope: !165)
!653 = !DILocation(line: 464, column: 31, scope: !165)
!654 = !DILocation(line: 467, column: 8, scope: !655)
!655 = distinct !DILexicalBlock(scope: !165, file: !18, line: 467, column: 8)
!656 = !DILocation(line: 467, column: 14, scope: !655)
!657 = !DILocation(line: 467, column: 8, scope: !165)
!658 = !DILocation(line: 468, column: 12, scope: !655)
!659 = !DILocation(line: 468, column: 6, scope: !655)
!660 = !DILocation(line: 471, column: 34, scope: !165)
!661 = !DILocation(line: 471, column: 24, scope: !165)
!662 = !DILocation(line: 471, column: 40, scope: !165)
!663 = !DILocation(line: 471, column: 48, scope: !165)
!664 = !DILocation(line: 471, column: 54, scope: !165)
!665 = !DILocation(line: 471, column: 44, scope: !165)
!666 = !DILocation(line: 471, column: 58, scope: !165)
!667 = !DILocation(line: 471, column: 11, scope: !165)
!668 = !DILocation(line: 471, column: 9, scope: !165)
!669 = !DILocation(line: 472, column: 12, scope: !165)
!670 = !DILocation(line: 472, column: 25, scope: !165)
!671 = !DILocation(line: 472, column: 18, scope: !165)
!672 = !DILocation(line: 472, column: 29, scope: !165)
!673 = !DILocation(line: 472, column: 4, scope: !165)
!674 = !DILocation(line: 473, column: 12, scope: !165)
!675 = !DILocation(line: 473, column: 9, scope: !165)
!676 = !DILocation(line: 474, column: 2, scope: !166)
!677 = !DILocation(line: 474, column: 2, scope: !165)
!678 = !DILocation(line: 478, column: 4, scope: !168)
!679 = !DILocation(line: 478, column: 10, scope: !168)
!680 = !DILocation(line: 478, column: 30, scope: !168)
!681 = !DILocation(line: 478, column: 23, scope: !168)
!682 = !DILocation(line: 479, column: 4, scope: !168)
!683 = !DILocation(line: 479, column: 8, scope: !168)
!684 = !DILocation(line: 481, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !168, file: !18, line: 481, column: 4)
!686 = !DILocation(line: 481, column: 9, scope: !685)
!687 = !DILocation(line: 481, column: 16, scope: !688)
!688 = !DILexicalBlockFile(scope: !689, file: !18, discriminator: 2)
!689 = !DILexicalBlockFile(scope: !690, file: !18, discriminator: 1)
!690 = distinct !DILexicalBlock(scope: !685, file: !18, line: 481, column: 4)
!691 = !DILocation(line: 481, column: 20, scope: !690)
!692 = !DILocation(line: 481, column: 18, scope: !690)
!693 = !DILocation(line: 481, column: 4, scope: !685)
!694 = !DILocation(line: 483, column: 24, scope: !695)
!695 = distinct !DILexicalBlock(scope: !690, file: !18, line: 482, column: 6)
!696 = !DILocation(line: 483, column: 16, scope: !695)
!697 = !DILocation(line: 483, column: 8, scope: !695)
!698 = !DILocation(line: 491, column: 23, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !18, line: 484, column: 3)
!700 = !DILocation(line: 491, column: 13, scope: !699)
!701 = !DILocation(line: 491, column: 27, scope: !699)
!702 = !DILocation(line: 491, column: 5, scope: !699)
!703 = !DILocation(line: 494, column: 68, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !18, line: 492, column: 7)
!705 = !DILocation(line: 494, column: 56, scope: !704)
!706 = !DILocation(line: 494, column: 47, scope: !704)
!707 = !DILocation(line: 494, column: 35, scope: !704)
!708 = !DILocation(line: 494, column: 21, scope: !704)
!709 = !DILocation(line: 494, column: 31, scope: !704)
!710 = !DILocation(line: 494, column: 45, scope: !704)
!711 = !DILocation(line: 495, column: 9, scope: !704)
!712 = !DILocation(line: 497, column: 69, scope: !704)
!713 = !DILocation(line: 497, column: 58, scope: !704)
!714 = !DILocation(line: 497, column: 56, scope: !704)
!715 = !{!316, !316, i64 0}
!716 = !DILocation(line: 497, column: 47, scope: !704)
!717 = !DILocation(line: 497, column: 35, scope: !704)
!718 = !DILocation(line: 497, column: 21, scope: !704)
!719 = !DILocation(line: 497, column: 31, scope: !704)
!720 = !DILocation(line: 497, column: 45, scope: !704)
!721 = !DILocation(line: 498, column: 9, scope: !704)
!722 = !DILocation(line: 500, column: 69, scope: !704)
!723 = !DILocation(line: 500, column: 58, scope: !704)
!724 = !DILocation(line: 500, column: 56, scope: !704)
!725 = !DILocation(line: 500, column: 47, scope: !704)
!726 = !DILocation(line: 500, column: 35, scope: !704)
!727 = !DILocation(line: 500, column: 21, scope: !704)
!728 = !DILocation(line: 500, column: 31, scope: !704)
!729 = !DILocation(line: 500, column: 45, scope: !704)
!730 = !DILocation(line: 501, column: 9, scope: !704)
!731 = !DILocation(line: 503, column: 23, scope: !704)
!732 = !DILocation(line: 503, column: 9, scope: !704)
!733 = !DILocation(line: 503, column: 19, scope: !704)
!734 = !DILocation(line: 503, column: 33, scope: !704)
!735 = !DILocation(line: 504, column: 32, scope: !704)
!736 = !DILocation(line: 504, column: 18, scope: !704)
!737 = !DILocation(line: 504, column: 28, scope: !704)
!738 = !DILocation(line: 504, column: 9, scope: !704)
!739 = !DILocation(line: 504, column: 43, scope: !704)
!740 = !DILocation(line: 504, column: 46, scope: !704)
!741 = !DILocation(line: 504, column: 51, scope: !704)
!742 = !DILocation(line: 504, column: 57, scope: !743)
!743 = !DILexicalBlockFile(scope: !704, file: !18, discriminator: 1)
!744 = !DILocation(line: 504, column: 46, scope: !745)
!745 = !DILexicalBlockFile(scope: !704, file: !18, discriminator: 2)
!746 = !DILocation(line: 504, column: 9, scope: !747)
!747 = !DILexicalBlockFile(scope: !748, file: !18, discriminator: 4)
!748 = !DILexicalBlockFile(scope: !704, file: !18, discriminator: 3)
!749 = !DILocation(line: 505, column: 7, scope: !704)
!750 = !DILocation(line: 506, column: 13, scope: !699)
!751 = !DILocation(line: 507, column: 5, scope: !699)
!752 = !DILocation(line: 510, column: 49, scope: !699)
!753 = !DILocation(line: 510, column: 38, scope: !699)
!754 = !DILocation(line: 510, column: 37, scope: !699)
!755 = !DILocation(line: 510, column: 27, scope: !699)
!756 = !DILocation(line: 510, column: 5, scope: !699)
!757 = !DILocation(line: 510, column: 15, scope: !699)
!758 = !DILocation(line: 510, column: 31, scope: !699)
!759 = !DILocation(line: 510, column: 35, scope: !699)
!760 = !DILocation(line: 511, column: 5, scope: !699)
!761 = !DILocation(line: 513, column: 49, scope: !699)
!762 = !DILocation(line: 513, column: 38, scope: !699)
!763 = !DILocation(line: 513, column: 37, scope: !699)
!764 = !DILocation(line: 513, column: 27, scope: !699)
!765 = !DILocation(line: 513, column: 5, scope: !699)
!766 = !DILocation(line: 513, column: 15, scope: !699)
!767 = !DILocation(line: 513, column: 31, scope: !699)
!768 = !DILocation(line: 513, column: 35, scope: !699)
!769 = !DILocation(line: 514, column: 5, scope: !699)
!770 = !DILocation(line: 516, column: 5, scope: !699)
!771 = !DILocation(line: 518, column: 6, scope: !695)
!772 = !DILocation(line: 481, column: 24, scope: !690)
!773 = !DILocation(line: 481, column: 30, scope: !690)
!774 = !DILocation(line: 481, column: 41, scope: !690)
!775 = !DILocation(line: 481, column: 4, scope: !690)
!776 = !DILocation(line: 519, column: 2, scope: !166)
!777 = !DILocation(line: 520, column: 5, scope: !161)
!778 = !DILocation(line: 520, column: 5, scope: !160)
!779 = !DILocation(line: 454, column: 24, scope: !161)
!780 = !DILocation(line: 454, column: 3, scope: !161)
!781 = !DILocation(line: 522, column: 20, scope: !135)
!782 = !DILocation(line: 522, column: 27, scope: !135)
!783 = !DILocation(line: 522, column: 32, scope: !135)
!784 = !DILocation(line: 522, column: 38, scope: !135)
!785 = !DILocation(line: 523, column: 6, scope: !135)
!786 = !DILocation(line: 523, column: 11, scope: !135)
!787 = !DILocation(line: 523, column: 18, scope: !135)
!788 = !DILocation(line: 523, column: 26, scope: !135)
!789 = !DILocation(line: 523, column: 30, scope: !135)
!790 = !DILocation(line: 522, column: 3, scope: !135)
!791 = !DILocation(line: 524, column: 1, scope: !135)
!792 = !DILocation(line: 530, column: 36, scope: !170)
!793 = !DILocation(line: 531, column: 18, scope: !170)
!794 = !DILocation(line: 532, column: 16, scope: !170)
!795 = !DILocation(line: 533, column: 15, scope: !170)
!796 = !DILocation(line: 534, column: 15, scope: !170)
!797 = !DILocation(line: 536, column: 3, scope: !170)
!798 = !DILocation(line: 536, column: 28, scope: !170)
!799 = !DILocation(line: 540, column: 5, scope: !195)
!800 = !DILocation(line: 540, column: 9, scope: !195)
!801 = !DILocation(line: 540, column: 15, scope: !195)
!802 = !DILocation(line: 540, column: 20, scope: !195)
!803 = !{!311, !287, i64 0}
!804 = !DILocation(line: 541, column: 30, scope: !805)
!805 = distinct !DILexicalBlock(scope: !195, file: !18, line: 541, column: 9)
!806 = !DILocation(line: 541, column: 34, scope: !805)
!807 = !DILocation(line: 541, column: 50, scope: !805)
!808 = !DILocation(line: 541, column: 53, scope: !809)
!809 = !DILexicalBlockFile(scope: !805, file: !18, discriminator: 1)
!810 = !DILocation(line: 541, column: 57, scope: !805)
!811 = !DILocation(line: 541, column: 27, scope: !812)
!812 = !DILexicalBlockFile(scope: !805, file: !18, discriminator: 2)
!813 = !DILocation(line: 541, column: 73, scope: !805)
!814 = !DILocation(line: 541, column: 26, scope: !805)
!815 = !DILocation(line: 541, column: 9, scope: !805)
!816 = !DILocation(line: 541, column: 9, scope: !195)
!817 = !DILocation(line: 542, column: 7, scope: !805)
!818 = !DILocation(line: 543, column: 3, scope: !170)
!819 = !DILocation(line: 543, column: 3, scope: !820)
!820 = !DILexicalBlockFile(scope: !170, file: !18, discriminator: 1)
!821 = !DILocation(line: 545, column: 40, scope: !170)
!822 = !DILocation(line: 545, column: 49, scope: !170)
!823 = !DILocation(line: 545, column: 11, scope: !170)
!824 = !DILocation(line: 545, column: 9, scope: !170)
!825 = !DILocation(line: 547, column: 3, scope: !170)
!826 = !DILocation(line: 547, column: 12, scope: !170)
!827 = !DILocation(line: 548, column: 38, scope: !170)
!828 = !DILocation(line: 548, column: 5, scope: !170)
!829 = !DILocation(line: 549, column: 5, scope: !170)
!830 = !{!831, !831, i64 0}
!831 = !{!"long long", !287, i64 0}
!832 = !DILocation(line: 550, column: 3, scope: !170)
!833 = !DILocation(line: 550, column: 12, scope: !170)
!834 = !DILocation(line: 552, column: 23, scope: !170)
!835 = !DILocation(line: 552, column: 7, scope: !170)
!836 = !DILocation(line: 551, column: 38, scope: !170)
!837 = !DILocation(line: 551, column: 5, scope: !170)
!838 = !DILocation(line: 552, column: 5, scope: !170)
!839 = !DILocation(line: 556, column: 15, scope: !170)
!840 = !DILocation(line: 556, column: 20, scope: !170)
!841 = !DILocation(line: 556, column: 26, scope: !170)
!842 = !DILocation(line: 556, column: 3, scope: !170)
!843 = !DILocation(line: 556, column: 13, scope: !170)
!844 = !DILocation(line: 558, column: 3, scope: !170)
!845 = !DILocation(line: 558, column: 13, scope: !170)
!846 = !DILocation(line: 560, column: 18, scope: !170)
!847 = !DILocation(line: 560, column: 3, scope: !170)
!848 = !DILocation(line: 560, column: 12, scope: !170)
!849 = !DILocation(line: 560, column: 16, scope: !170)
!850 = !{!851, !286, i64 24}
!851 = !{!"", !287, i64 0, !286, i64 24, !286, i64 32, !286, i64 40}
!852 = !DILocation(line: 561, column: 18, scope: !170)
!853 = !DILocation(line: 561, column: 3, scope: !170)
!854 = !DILocation(line: 561, column: 12, scope: !170)
!855 = !DILocation(line: 561, column: 16, scope: !170)
!856 = !{!851, !286, i64 32}
!857 = !DILocation(line: 562, column: 24, scope: !170)
!858 = !DILocation(line: 562, column: 3, scope: !170)
!859 = !DILocation(line: 562, column: 12, scope: !170)
!860 = !DILocation(line: 562, column: 22, scope: !170)
!861 = !{!851, !286, i64 40}
!862 = !DILocation(line: 564, column: 3, scope: !170)
!863 = !DILocation(line: 565, column: 1, scope: !170)
!864 = !DILocation(line: 568, column: 39, scope: !196)
!865 = !DILocation(line: 568, column: 54, scope: !196)
!866 = !DILocation(line: 569, column: 27, scope: !196)
!867 = !DILocation(line: 569, column: 43, scope: !196)
!868 = !DILocation(line: 571, column: 3, scope: !196)
!869 = !DILocation(line: 571, column: 12, scope: !196)
!870 = !DILocation(line: 572, column: 3, scope: !196)
!871 = !DILocation(line: 572, column: 10, scope: !196)
!872 = !DILocation(line: 573, column: 3, scope: !196)
!873 = !DILocation(line: 573, column: 14, scope: !196)
!874 = !DILocation(line: 574, column: 3, scope: !196)
!875 = !DILocation(line: 574, column: 8, scope: !196)
!876 = !DILocation(line: 574, column: 11, scope: !196)
!877 = !DILocation(line: 575, column: 3, scope: !196)
!878 = !DILocation(line: 575, column: 7, scope: !196)
!879 = !DILocation(line: 575, column: 17, scope: !196)
!880 = !DILocation(line: 575, column: 27, scope: !196)
!881 = !DILocation(line: 575, column: 33, scope: !196)
!882 = !DILocation(line: 576, column: 3, scope: !196)
!883 = !DILocation(line: 576, column: 7, scope: !196)
!884 = !DILocation(line: 578, column: 9, scope: !196)
!885 = !DILocation(line: 578, column: 18, scope: !196)
!886 = !DILocation(line: 578, column: 7, scope: !196)
!887 = !DILocation(line: 579, column: 30, scope: !196)
!888 = !DILocation(line: 579, column: 35, scope: !196)
!889 = !DILocation(line: 579, column: 41, scope: !196)
!890 = !DILocation(line: 579, column: 12, scope: !196)
!891 = !DILocation(line: 579, column: 10, scope: !196)
!892 = !DILocation(line: 580, column: 23, scope: !196)
!893 = !DILocation(line: 580, column: 12, scope: !196)
!894 = !DILocation(line: 582, column: 9, scope: !196)
!895 = !DILocation(line: 582, column: 14, scope: !196)
!896 = !DILocation(line: 582, column: 21, scope: !196)
!897 = !DILocation(line: 582, column: 7, scope: !196)
!898 = !DILocation(line: 583, column: 7, scope: !216)
!899 = !DILocation(line: 583, column: 11, scope: !216)
!900 = !DILocation(line: 583, column: 7, scope: !196)
!901 = !DILocation(line: 585, column: 7, scope: !215)
!902 = !DILocation(line: 585, column: 29, scope: !215)
!903 = !DILocation(line: 586, column: 7, scope: !215)
!904 = !DILocation(line: 586, column: 11, scope: !215)
!905 = !DILocation(line: 586, column: 33, scope: !215)
!906 = !DILocation(line: 586, column: 38, scope: !215)
!907 = !DILocation(line: 586, column: 45, scope: !215)
!908 = !DILocation(line: 586, column: 15, scope: !215)
!909 = !DILocation(line: 587, column: 11, scope: !221)
!910 = !DILocation(line: 587, column: 13, scope: !221)
!911 = !DILocation(line: 587, column: 11, scope: !215)
!912 = !DILocation(line: 591, column: 60, scope: !913)
!913 = distinct !DILexicalBlock(scope: !221, file: !18, line: 588, column: 2)
!914 = !DILocation(line: 591, column: 38, scope: !913)
!915 = !DILocation(line: 591, column: 48, scope: !913)
!916 = !DILocation(line: 591, column: 13, scope: !913)
!917 = !DILocation(line: 591, column: 11, scope: !913)
!918 = !DILocation(line: 593, column: 8, scope: !913)
!919 = !DILocation(line: 594, column: 2, scope: !913)
!920 = !DILocation(line: 595, column: 16, scope: !220)
!921 = !DILocation(line: 595, column: 20, scope: !220)
!922 = !DILocation(line: 595, column: 26, scope: !220)
!923 = !DILocation(line: 595, column: 29, scope: !924)
!924 = !DILexicalBlockFile(scope: !220, file: !18, discriminator: 1)
!925 = !DILocation(line: 595, column: 31, scope: !220)
!926 = !DILocation(line: 595, column: 16, scope: !221)
!927 = !DILocation(line: 598, column: 4, scope: !219)
!928 = !DILocation(line: 598, column: 10, scope: !219)
!929 = !DILocation(line: 598, column: 19, scope: !219)
!930 = !DILocation(line: 598, column: 31, scope: !219)
!931 = !DILocation(line: 598, column: 51, scope: !219)
!932 = !DILocation(line: 598, column: 54, scope: !933)
!933 = !DILexicalBlockFile(scope: !219, file: !18, discriminator: 1)
!934 = !DILocation(line: 598, column: 65, scope: !219)
!935 = !DILocation(line: 598, column: 10, scope: !936)
!936 = !DILexicalBlockFile(scope: !219, file: !18, discriminator: 2)
!937 = !DILocation(line: 599, column: 4, scope: !219)
!938 = !DILocation(line: 599, column: 10, scope: !219)
!939 = !DILocation(line: 599, column: 19, scope: !219)
!940 = !DILocation(line: 599, column: 31, scope: !219)
!941 = !DILocation(line: 599, column: 51, scope: !219)
!942 = !DILocation(line: 599, column: 54, scope: !933)
!943 = !DILocation(line: 599, column: 65, scope: !219)
!944 = !DILocation(line: 599, column: 10, scope: !936)
!945 = !DILocation(line: 600, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !219, file: !18, line: 600, column: 8)
!947 = !DILocation(line: 600, column: 14, scope: !946)
!948 = !DILocation(line: 600, column: 17, scope: !949)
!949 = !DILexicalBlockFile(scope: !946, file: !18, discriminator: 1)
!950 = !DILocation(line: 600, column: 8, scope: !219)
!951 = !DILocation(line: 601, column: 10, scope: !946)
!952 = !DILocation(line: 601, column: 6, scope: !946)
!953 = !DILocation(line: 602, column: 13, scope: !954)
!954 = distinct !DILexicalBlock(scope: !946, file: !18, line: 602, column: 13)
!955 = !DILocation(line: 602, column: 18, scope: !954)
!956 = !DILocation(line: 602, column: 22, scope: !957)
!957 = !DILexicalBlockFile(scope: !954, file: !18, discriminator: 1)
!958 = !DILocation(line: 602, column: 13, scope: !946)
!959 = !DILocation(line: 603, column: 10, scope: !954)
!960 = !DILocation(line: 603, column: 6, scope: !954)
!961 = !DILocation(line: 604, column: 2, scope: !220)
!962 = !DILocation(line: 604, column: 2, scope: !219)
!963 = !DILocation(line: 605, column: 5, scope: !216)
!964 = !DILocation(line: 605, column: 5, scope: !215)
!965 = !DILocation(line: 607, column: 9, scope: !196)
!966 = !DILocation(line: 607, column: 14, scope: !196)
!967 = !DILocation(line: 607, column: 7, scope: !196)
!968 = !DILocation(line: 608, column: 15, scope: !196)
!969 = !DILocation(line: 608, column: 20, scope: !196)
!970 = !DILocation(line: 608, column: 13, scope: !196)
!971 = !DILocation(line: 610, column: 10, scope: !226)
!972 = !DILocation(line: 610, column: 8, scope: !226)
!973 = !DILocation(line: 610, column: 15, scope: !974)
!974 = !DILexicalBlockFile(scope: !975, file: !18, discriminator: 2)
!975 = !DILexicalBlockFile(scope: !225, file: !18, discriminator: 1)
!976 = !DILocation(line: 610, column: 19, scope: !225)
!977 = !DILocation(line: 610, column: 17, scope: !225)
!978 = !DILocation(line: 610, column: 3, scope: !226)
!979 = !DILocation(line: 612, column: 7, scope: !224)
!980 = !DILocation(line: 612, column: 29, scope: !224)
!981 = !DILocation(line: 613, column: 7, scope: !224)
!982 = !DILocation(line: 613, column: 11, scope: !224)
!983 = !DILocation(line: 615, column: 39, scope: !224)
!984 = !DILocation(line: 615, column: 29, scope: !224)
!985 = !DILocation(line: 615, column: 43, scope: !224)
!986 = !DILocation(line: 615, column: 11, scope: !224)
!987 = !DILocation(line: 615, column: 9, scope: !224)
!988 = !DILocation(line: 616, column: 11, scope: !230)
!989 = !DILocation(line: 616, column: 13, scope: !230)
!990 = !DILocation(line: 617, column: 4, scope: !230)
!991 = !DILocation(line: 617, column: 7, scope: !992)
!992 = !DILexicalBlockFile(scope: !230, file: !18, discriminator: 1)
!993 = !DILocation(line: 617, column: 18, scope: !230)
!994 = !DILocation(line: 617, column: 16, scope: !230)
!995 = !DILocation(line: 617, column: 23, scope: !230)
!996 = !DILocation(line: 618, column: 4, scope: !230)
!997 = !DILocation(line: 618, column: 7, scope: !992)
!998 = !DILocation(line: 618, column: 18, scope: !230)
!999 = !DILocation(line: 618, column: 16, scope: !230)
!1000 = !DILocation(line: 618, column: 23, scope: !230)
!1001 = !DILocation(line: 616, column: 11, scope: !224)
!1002 = !DILocation(line: 620, column: 4, scope: !229)
!1003 = !DILocation(line: 620, column: 9, scope: !229)
!1004 = !DILocation(line: 620, column: 27, scope: !229)
!1005 = !DILocation(line: 620, column: 17, scope: !229)
!1006 = !DILocation(line: 620, column: 31, scope: !229)
!1007 = !DILocation(line: 623, column: 8, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !229, file: !18, line: 623, column: 8)
!1009 = !DILocation(line: 623, column: 14, scope: !1008)
!1010 = !DILocation(line: 623, column: 8, scope: !229)
!1011 = !DILocation(line: 624, column: 12, scope: !1008)
!1012 = !DILocation(line: 624, column: 6, scope: !1008)
!1013 = !DILocation(line: 627, column: 34, scope: !229)
!1014 = !DILocation(line: 627, column: 24, scope: !229)
!1015 = !DILocation(line: 627, column: 40, scope: !229)
!1016 = !DILocation(line: 627, column: 48, scope: !229)
!1017 = !DILocation(line: 627, column: 54, scope: !229)
!1018 = !DILocation(line: 627, column: 44, scope: !229)
!1019 = !DILocation(line: 627, column: 58, scope: !229)
!1020 = !DILocation(line: 627, column: 11, scope: !229)
!1021 = !DILocation(line: 627, column: 9, scope: !229)
!1022 = !DILocation(line: 628, column: 16, scope: !229)
!1023 = !DILocation(line: 628, column: 11, scope: !229)
!1024 = !DILocation(line: 628, column: 4, scope: !229)
!1025 = !DILocation(line: 628, column: 14, scope: !229)
!1026 = !DILocation(line: 629, column: 22, scope: !229)
!1027 = !DILocation(line: 629, column: 12, scope: !229)
!1028 = !DILocation(line: 629, column: 26, scope: !229)
!1029 = !DILocation(line: 629, column: 9, scope: !229)
!1030 = !DILocation(line: 630, column: 2, scope: !230)
!1031 = !DILocation(line: 630, column: 2, scope: !229)
!1032 = !DILocation(line: 633, column: 16, scope: !233)
!1033 = !DILocation(line: 633, column: 18, scope: !233)
!1034 = !DILocation(line: 634, column: 9, scope: !233)
!1035 = !DILocation(line: 634, column: 13, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !233, file: !18, discriminator: 1)
!1037 = !DILocation(line: 634, column: 15, scope: !233)
!1038 = !DILocation(line: 634, column: 20, scope: !233)
!1039 = !DILocation(line: 634, column: 27, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !233, file: !18, discriminator: 2)
!1041 = !DILocation(line: 634, column: 39, scope: !233)
!1042 = !DILocation(line: 634, column: 59, scope: !233)
!1043 = !DILocation(line: 634, column: 62, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !233, file: !18, discriminator: 3)
!1045 = !DILocation(line: 634, column: 73, scope: !233)
!1046 = !DILocation(line: 635, column: 11, scope: !233)
!1047 = !DILocation(line: 635, column: 16, scope: !1036)
!1048 = !DILocation(line: 635, column: 28, scope: !233)
!1049 = !DILocation(line: 635, column: 48, scope: !233)
!1050 = !DILocation(line: 635, column: 51, scope: !1040)
!1051 = !DILocation(line: 635, column: 62, scope: !233)
!1052 = !DILocation(line: 633, column: 16, scope: !230)
!1053 = !DILocation(line: 638, column: 10, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !18, line: 638, column: 8)
!1055 = distinct !DILexicalBlock(scope: !233, file: !18, line: 636, column: 2)
!1056 = !DILocation(line: 638, column: 22, scope: !1054)
!1057 = !DILocation(line: 638, column: 42, scope: !1054)
!1058 = !DILocation(line: 638, column: 45, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1054, file: !18, discriminator: 1)
!1060 = !DILocation(line: 638, column: 56, scope: !1054)
!1061 = !DILocation(line: 638, column: 8, scope: !1055)
!1062 = !DILocation(line: 640, column: 35, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1054, file: !18, line: 639, column: 6)
!1064 = !DILocation(line: 640, column: 21, scope: !1063)
!1065 = !DILocation(line: 640, column: 31, scope: !1063)
!1066 = !DILocation(line: 640, column: 20, scope: !1063)
!1067 = !DILocation(line: 640, column: 15, scope: !1063)
!1068 = !DILocation(line: 640, column: 8, scope: !1063)
!1069 = !DILocation(line: 640, column: 18, scope: !1063)
!1070 = !DILocation(line: 641, column: 20, scope: !1063)
!1071 = !DILocation(line: 641, column: 17, scope: !1063)
!1072 = !DILocation(line: 642, column: 6, scope: !1063)
!1073 = !DILocation(line: 645, column: 35, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1054, file: !18, line: 644, column: 6)
!1075 = !DILocation(line: 645, column: 21, scope: !1074)
!1076 = !DILocation(line: 645, column: 31, scope: !1074)
!1077 = !DILocation(line: 645, column: 20, scope: !1074)
!1078 = !DILocation(line: 645, column: 15, scope: !1074)
!1079 = !DILocation(line: 645, column: 8, scope: !1074)
!1080 = !DILocation(line: 645, column: 18, scope: !1074)
!1081 = !DILocation(line: 646, column: 20, scope: !1074)
!1082 = !DILocation(line: 646, column: 17, scope: !1074)
!1083 = !DILocation(line: 648, column: 2, scope: !1055)
!1084 = !DILocation(line: 652, column: 4, scope: !232)
!1085 = !DILocation(line: 652, column: 10, scope: !232)
!1086 = !DILocation(line: 652, column: 14, scope: !232)
!1087 = !DILocation(line: 653, column: 4, scope: !232)
!1088 = !DILocation(line: 653, column: 8, scope: !232)
!1089 = !DILocation(line: 655, column: 16, scope: !232)
!1090 = !DILocation(line: 655, column: 11, scope: !232)
!1091 = !DILocation(line: 655, column: 4, scope: !232)
!1092 = !DILocation(line: 655, column: 14, scope: !232)
!1093 = !DILocation(line: 656, column: 11, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !232, file: !18, line: 656, column: 4)
!1095 = !DILocation(line: 656, column: 9, scope: !1094)
!1096 = !DILocation(line: 656, column: 16, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1098, file: !18, discriminator: 2)
!1098 = !DILexicalBlockFile(scope: !1099, file: !18, discriminator: 1)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !18, line: 656, column: 4)
!1100 = !DILocation(line: 656, column: 20, scope: !1099)
!1101 = !DILocation(line: 656, column: 18, scope: !1099)
!1102 = !DILocation(line: 656, column: 4, scope: !1094)
!1103 = !DILocation(line: 658, column: 22, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !18, line: 658, column: 12)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !18, line: 657, column: 6)
!1106 = !DILocation(line: 658, column: 14, scope: !1104)
!1107 = !DILocation(line: 658, column: 26, scope: !1104)
!1108 = !DILocation(line: 658, column: 46, scope: !1104)
!1109 = !DILocation(line: 658, column: 57, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1104, file: !18, discriminator: 1)
!1111 = !DILocation(line: 658, column: 49, scope: !1104)
!1112 = !DILocation(line: 658, column: 60, scope: !1104)
!1113 = !DILocation(line: 658, column: 12, scope: !1105)
!1114 = !DILocation(line: 659, column: 11, scope: !1104)
!1115 = !DILocation(line: 659, column: 37, scope: !1104)
!1116 = !DILocation(line: 659, column: 15, scope: !1104)
!1117 = !DILocation(line: 659, column: 25, scope: !1104)
!1118 = !DILocation(line: 659, column: 3, scope: !1104)
!1119 = !DILocation(line: 661, column: 11, scope: !1104)
!1120 = !DILocation(line: 661, column: 37, scope: !1104)
!1121 = !DILocation(line: 661, column: 15, scope: !1104)
!1122 = !DILocation(line: 661, column: 25, scope: !1104)
!1123 = !DILocation(line: 661, column: 3, scope: !1104)
!1124 = !DILocation(line: 662, column: 6, scope: !1105)
!1125 = !DILocation(line: 656, column: 24, scope: !1099)
!1126 = !DILocation(line: 656, column: 30, scope: !1099)
!1127 = !DILocation(line: 656, column: 4, scope: !1099)
!1128 = !DILocation(line: 663, column: 2, scope: !233)
!1129 = !DILocation(line: 664, column: 5, scope: !225)
!1130 = !DILocation(line: 664, column: 5, scope: !224)
!1131 = !DILocation(line: 610, column: 24, scope: !225)
!1132 = !DILocation(line: 610, column: 3, scope: !225)
!1133 = !DILocation(line: 667, column: 3, scope: !196)
!1134 = !DILocation(line: 667, column: 12, scope: !196)
!1135 = !DILocation(line: 667, column: 17, scope: !196)
!1136 = !DILocation(line: 667, column: 22, scope: !196)
!1137 = !DILocation(line: 667, column: 30, scope: !196)
!1138 = !DILocation(line: 667, column: 38, scope: !196)
!1139 = !DILocation(line: 667, column: 47, scope: !196)
!1140 = !DILocation(line: 670, column: 10, scope: !196)
!1141 = !DILocation(line: 671, column: 1, scope: !196)
!1142 = !DILocation(line: 670, column: 3, scope: !196)
!1143 = !DILocation(line: 155, column: 30, scope: !250)
!1144 = !DILocation(line: 155, column: 58, scope: !250)
!1145 = !DILocation(line: 156, column: 13, scope: !250)
!1146 = !DILocation(line: 158, column: 11, scope: !250)
!1147 = !DILocation(line: 158, column: 17, scope: !250)
!1148 = !DILocation(line: 158, column: 3, scope: !250)
!1149 = !DILocation(line: 170, column: 2, scope: !258)
!1150 = !DILocation(line: 170, column: 6, scope: !258)
!1151 = !DILocation(line: 170, column: 13, scope: !258)
!1152 = !DILocation(line: 170, column: 27, scope: !258)
!1153 = !DILocation(line: 170, column: 33, scope: !258)
!1154 = !DILocation(line: 170, column: 25, scope: !258)
!1155 = !DILocation(line: 172, column: 6, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !258, file: !18, line: 172, column: 6)
!1157 = !DILocation(line: 172, column: 11, scope: !1156)
!1158 = !DILocation(line: 172, column: 6, scope: !258)
!1159 = !DILocation(line: 174, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !18, line: 173, column: 4)
!1161 = !DILocation(line: 174, column: 17, scope: !1160)
!1162 = !DILocation(line: 175, column: 6, scope: !1160)
!1163 = !DILocation(line: 177, column: 11, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1156, file: !18, line: 177, column: 11)
!1165 = !DILocation(line: 177, column: 16, scope: !1164)
!1166 = !DILocation(line: 177, column: 11, scope: !1156)
!1167 = !DILocation(line: 179, column: 6, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !18, line: 178, column: 4)
!1169 = !DILocation(line: 179, column: 17, scope: !1168)
!1170 = !DILocation(line: 180, column: 6, scope: !1168)
!1171 = !DILocation(line: 182, column: 11, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1164, file: !18, line: 182, column: 11)
!1173 = !DILocation(line: 182, column: 16, scope: !1172)
!1174 = !DILocation(line: 182, column: 11, scope: !1164)
!1175 = !DILocation(line: 184, column: 6, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !18, line: 183, column: 4)
!1177 = !DILocation(line: 184, column: 17, scope: !1176)
!1178 = !DILocation(line: 185, column: 6, scope: !1176)
!1179 = !DILocation(line: 185, column: 17, scope: !1176)
!1180 = !DILocation(line: 186, column: 6, scope: !1176)
!1181 = !DILocation(line: 188, column: 11, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1172, file: !18, line: 188, column: 11)
!1183 = !DILocation(line: 188, column: 16, scope: !1182)
!1184 = !DILocation(line: 188, column: 11, scope: !1172)
!1185 = !DILocation(line: 190, column: 19, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !18, line: 189, column: 4)
!1187 = !DILocation(line: 190, column: 30, scope: !1186)
!1188 = !DILocation(line: 190, column: 6, scope: !1186)
!1189 = !DILocation(line: 190, column: 17, scope: !1186)
!1190 = !DILocation(line: 191, column: 6, scope: !1186)
!1191 = !DILocation(line: 195, column: 7, scope: !259)
!1192 = !DILocation(line: 195, column: 7, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !259, file: !18, discriminator: 1)
!1194 = !DILocation(line: 195, column: 7, scope: !258)
!1195 = !DILocation(line: 197, column: 13, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !259, file: !18, line: 197, column: 11)
!1197 = !DILocation(line: 197, column: 25, scope: !1196)
!1198 = !DILocation(line: 197, column: 11, scope: !259)
!1199 = !DILocation(line: 198, column: 2, scope: !1196)
!1200 = !DILocation(line: 198, column: 13, scope: !1196)
!1201 = !DILocation(line: 200, column: 2, scope: !1196)
!1202 = !DILocation(line: 200, column: 13, scope: !1196)
!1203 = !DILocation(line: 201, column: 7, scope: !259)
!1204 = !DILocation(line: 203, column: 7, scope: !259)
!1205 = !DILocation(line: 203, column: 18, scope: !259)
!1206 = !DILocation(line: 204, column: 7, scope: !259)
!1207 = !DILocation(line: 206, column: 7, scope: !259)
!1208 = !DILocation(line: 206, column: 18, scope: !259)
!1209 = !DILocation(line: 207, column: 7, scope: !259)
!1210 = !DILocation(line: 207, column: 18, scope: !259)
!1211 = !DILocation(line: 208, column: 7, scope: !259)
!1212 = !DILocation(line: 211, column: 2, scope: !261)
!1213 = !DILocation(line: 211, column: 12, scope: !261)
!1214 = !DILocation(line: 212, column: 2, scope: !261)
!1215 = !DILocation(line: 212, column: 6, scope: !261)
!1216 = !DILocation(line: 212, column: 15, scope: !261)
!1217 = !DILocation(line: 212, column: 21, scope: !261)
!1218 = !DILocation(line: 212, column: 26, scope: !261)
!1219 = !DILocation(line: 212, column: 43, scope: !261)
!1220 = !DILocation(line: 212, column: 48, scope: !261)
!1221 = !DILocation(line: 212, column: 14, scope: !261)
!1222 = !DILocation(line: 213, column: 2, scope: !261)
!1223 = !DILocation(line: 213, column: 13, scope: !261)
!1224 = !DILocation(line: 214, column: 2, scope: !261)
!1225 = !DILocation(line: 214, column: 6, scope: !261)
!1226 = !DILocation(line: 215, column: 2, scope: !261)
!1227 = !DILocation(line: 215, column: 24, scope: !261)
!1228 = !DILocation(line: 218, column: 6, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !261, file: !18, line: 218, column: 6)
!1230 = !DILocation(line: 218, column: 12, scope: !1229)
!1231 = !DILocation(line: 218, column: 17, scope: !1229)
!1232 = !DILocation(line: 218, column: 6, scope: !261)
!1233 = !DILocation(line: 219, column: 4, scope: !1229)
!1234 = !DILocation(line: 221, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !261, file: !18, line: 221, column: 2)
!1236 = !DILocation(line: 221, column: 7, scope: !1235)
!1237 = !DILocation(line: 221, column: 14, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !18, discriminator: 2)
!1239 = !DILexicalBlockFile(scope: !1240, file: !18, discriminator: 1)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !18, line: 221, column: 2)
!1241 = !DILocation(line: 221, column: 18, scope: !1240)
!1242 = !DILocation(line: 221, column: 16, scope: !1240)
!1243 = !DILocation(line: 221, column: 2, scope: !1235)
!1244 = !DILocation(line: 222, column: 12, scope: !1240)
!1245 = !DILocation(line: 222, column: 4, scope: !1240)
!1246 = !DILocation(line: 222, column: 15, scope: !1240)
!1247 = !DILocation(line: 221, column: 26, scope: !1240)
!1248 = !DILocation(line: 221, column: 2, scope: !1240)
!1249 = !DILocation(line: 226, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !261, file: !18, line: 226, column: 6)
!1251 = !DILocation(line: 226, column: 6, scope: !261)
!1252 = !DILocation(line: 228, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !18, line: 227, column: 4)
!1254 = !DILocation(line: 228, column: 17, scope: !1253)
!1255 = !DILocation(line: 229, column: 6, scope: !1253)
!1256 = !DILocation(line: 233, column: 13, scope: !270)
!1257 = !DILocation(line: 233, column: 19, scope: !270)
!1258 = !{!314, !286, i64 16}
!1259 = !DILocation(line: 233, column: 11, scope: !270)
!1260 = !DILocation(line: 233, column: 7, scope: !270)
!1261 = !DILocation(line: 233, column: 30, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1263, file: !18, discriminator: 2)
!1263 = !DILexicalBlockFile(scope: !269, file: !18, discriminator: 1)
!1264 = !DILocation(line: 233, column: 29, scope: !269)
!1265 = !DILocation(line: 233, column: 34, scope: !269)
!1266 = !DILocation(line: 233, column: 2, scope: !270)
!1267 = !DILocation(line: 235, column: 6, scope: !268)
!1268 = !DILocation(line: 235, column: 10, scope: !268)
!1269 = !DILocation(line: 237, column: 34, scope: !268)
!1270 = !DILocation(line: 237, column: 47, scope: !268)
!1271 = !DILocation(line: 237, column: 57, scope: !268)
!1272 = !DILocation(line: 237, column: 56, scope: !268)
!1273 = !DILocation(line: 237, column: 63, scope: !268)
!1274 = !DILocation(line: 237, column: 54, scope: !268)
!1275 = !DILocation(line: 237, column: 73, scope: !268)
!1276 = !DILocation(line: 237, column: 53, scope: !268)
!1277 = !DILocation(line: 237, column: 51, scope: !268)
!1278 = !DILocation(line: 237, column: 77, scope: !268)
!1279 = !DILocation(line: 237, column: 18, scope: !268)
!1280 = !DILocation(line: 239, column: 32, scope: !268)
!1281 = !DILocation(line: 239, column: 31, scope: !268)
!1282 = !DILocation(line: 239, column: 37, scope: !268)
!1283 = !DILocation(line: 239, column: 49, scope: !268)
!1284 = !DILocation(line: 239, column: 61, scope: !268)
!1285 = !DILocation(line: 239, column: 12, scope: !268)
!1286 = !DILocation(line: 239, column: 10, scope: !268)
!1287 = !DILocation(line: 240, column: 10, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !268, file: !18, line: 240, column: 10)
!1289 = !DILocation(line: 240, column: 14, scope: !1288)
!1290 = !DILocation(line: 240, column: 10, scope: !268)
!1291 = !DILocation(line: 241, column: 8, scope: !1288)
!1292 = !DILocation(line: 242, column: 13, scope: !274)
!1293 = !DILocation(line: 242, column: 11, scope: !274)
!1294 = !DILocation(line: 242, column: 18, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1296, file: !18, discriminator: 2)
!1296 = !DILexicalBlockFile(scope: !273, file: !18, discriminator: 1)
!1297 = !DILocation(line: 242, column: 22, scope: !273)
!1298 = !DILocation(line: 242, column: 20, scope: !273)
!1299 = !DILocation(line: 242, column: 6, scope: !274)
!1300 = !DILocation(line: 244, column: 3, scope: !272)
!1301 = !DILocation(line: 244, column: 7, scope: !272)
!1302 = !DILocation(line: 244, column: 13, scope: !272)
!1303 = !DILocation(line: 244, column: 25, scope: !272)
!1304 = !DILocation(line: 246, column: 31, scope: !272)
!1305 = !DILocation(line: 246, column: 20, scope: !272)
!1306 = !DILocation(line: 246, column: 43, scope: !272)
!1307 = !DILocation(line: 246, column: 47, scope: !272)
!1308 = !DILocation(line: 246, column: 45, scope: !272)
!1309 = !DILocation(line: 246, column: 35, scope: !272)
!1310 = !DILocation(line: 246, column: 5, scope: !272)
!1311 = !DILocation(line: 245, column: 11, scope: !272)
!1312 = !DILocation(line: 245, column: 15, scope: !272)
!1313 = !DILocation(line: 245, column: 13, scope: !272)
!1314 = !DILocation(line: 245, column: 3, scope: !272)
!1315 = !DILocation(line: 245, column: 20, scope: !272)
!1316 = !DILocation(line: 247, column: 8, scope: !273)
!1317 = !DILocation(line: 247, column: 8, scope: !272)
!1318 = !DILocation(line: 242, column: 28, scope: !273)
!1319 = !DILocation(line: 242, column: 6, scope: !273)
!1320 = !DILocation(line: 249, column: 23, scope: !268)
!1321 = !DILocation(line: 249, column: 22, scope: !268)
!1322 = !DILocation(line: 249, column: 29, scope: !268)
!1323 = !DILocation(line: 249, column: 18, scope: !268)
!1324 = !DILocation(line: 250, column: 4, scope: !269)
!1325 = !DILocation(line: 250, column: 4, scope: !1263)
!1326 = !DILocation(line: 250, column: 4, scope: !268)
!1327 = !DILocation(line: 233, column: 52, scope: !269)
!1328 = !DILocation(line: 233, column: 2, scope: !269)
!1329 = !DILocation(line: 252, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !261, file: !18, line: 252, column: 6)
!1331 = !DILocation(line: 252, column: 12, scope: !1330)
!1332 = !DILocation(line: 252, column: 6, scope: !261)
!1333 = !DILocation(line: 258, column: 10, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !18, line: 258, column: 10)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !18, line: 253, column: 4)
!1336 = !DILocation(line: 258, column: 21, scope: !1334)
!1337 = !DILocation(line: 258, column: 10, scope: !1335)
!1338 = !DILocation(line: 259, column: 8, scope: !1334)
!1339 = !DILocation(line: 261, column: 13, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !18, line: 261, column: 6)
!1341 = !DILocation(line: 261, column: 11, scope: !1340)
!1342 = !DILocation(line: 261, column: 18, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1344, file: !18, discriminator: 2)
!1344 = !DILexicalBlockFile(scope: !1345, file: !18, discriminator: 1)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !18, line: 261, column: 6)
!1346 = !DILocation(line: 261, column: 22, scope: !1345)
!1347 = !DILocation(line: 261, column: 20, scope: !1345)
!1348 = !DILocation(line: 261, column: 6, scope: !1340)
!1349 = !DILocation(line: 262, column: 20, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !18, line: 262, column: 12)
!1351 = !DILocation(line: 262, column: 12, scope: !1350)
!1352 = !DILocation(line: 262, column: 23, scope: !1350)
!1353 = !DILocation(line: 262, column: 12, scope: !1345)
!1354 = !DILocation(line: 263, column: 3, scope: !1350)
!1355 = !DILocation(line: 262, column: 26, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1350, file: !18, discriminator: 1)
!1357 = !DILocation(line: 261, column: 30, scope: !1345)
!1358 = !DILocation(line: 261, column: 6, scope: !1345)
!1359 = !DILocation(line: 264, column: 4, scope: !1335)
!1360 = !DILocation(line: 267, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !261, file: !18, line: 267, column: 2)
!1362 = !DILocation(line: 267, column: 7, scope: !1361)
!1363 = !DILocation(line: 267, column: 14, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !18, discriminator: 2)
!1365 = !DILexicalBlockFile(scope: !1366, file: !18, discriminator: 1)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !18, line: 267, column: 2)
!1367 = !DILocation(line: 267, column: 18, scope: !1366)
!1368 = !DILocation(line: 267, column: 16, scope: !1366)
!1369 = !DILocation(line: 267, column: 2, scope: !1361)
!1370 = !DILocation(line: 271, column: 18, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !18, line: 271, column: 10)
!1372 = distinct !DILexicalBlock(scope: !1366, file: !18, line: 268, column: 4)
!1373 = !DILocation(line: 271, column: 10, scope: !1371)
!1374 = !DILocation(line: 271, column: 21, scope: !1371)
!1375 = !DILocation(line: 271, column: 10, scope: !1372)
!1376 = !DILocation(line: 272, column: 8, scope: !1371)
!1377 = !DILocation(line: 276, column: 18, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1372, file: !18, line: 276, column: 10)
!1379 = !DILocation(line: 276, column: 10, scope: !1378)
!1380 = !DILocation(line: 276, column: 21, scope: !1378)
!1381 = !DILocation(line: 277, column: 3, scope: !1378)
!1382 = !DILocation(line: 277, column: 14, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1378, file: !18, discriminator: 1)
!1384 = !DILocation(line: 277, column: 16, scope: !1378)
!1385 = !DILocation(line: 277, column: 6, scope: !1378)
!1386 = !DILocation(line: 277, column: 21, scope: !1378)
!1387 = !DILocation(line: 278, column: 3, scope: !1378)
!1388 = !DILocation(line: 278, column: 14, scope: !1383)
!1389 = !DILocation(line: 278, column: 16, scope: !1378)
!1390 = !DILocation(line: 278, column: 6, scope: !1378)
!1391 = !DILocation(line: 278, column: 21, scope: !1378)
!1392 = !DILocation(line: 276, column: 10, scope: !1372)
!1393 = !DILocation(line: 282, column: 11, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1378, file: !18, line: 279, column: 8)
!1395 = !DILocation(line: 282, column: 3, scope: !1394)
!1396 = !DILocation(line: 282, column: 14, scope: !1394)
!1397 = !DILocation(line: 283, column: 8, scope: !1394)
!1398 = !DILocation(line: 287, column: 18, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1372, file: !18, line: 287, column: 10)
!1400 = !DILocation(line: 287, column: 10, scope: !1399)
!1401 = !DILocation(line: 287, column: 21, scope: !1399)
!1402 = !DILocation(line: 288, column: 3, scope: !1399)
!1403 = !DILocation(line: 288, column: 15, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1399, file: !18, discriminator: 1)
!1405 = !DILocation(line: 288, column: 17, scope: !1399)
!1406 = !DILocation(line: 288, column: 7, scope: !1399)
!1407 = !DILocation(line: 288, column: 22, scope: !1399)
!1408 = !DILocation(line: 287, column: 10, scope: !1372)
!1409 = !DILocation(line: 292, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1399, file: !18, line: 289, column: 8)
!1411 = !DILocation(line: 294, column: 4, scope: !1372)
!1412 = !DILocation(line: 267, column: 26, scope: !1366)
!1413 = !DILocation(line: 267, column: 2, scope: !1366)
!1414 = !DILocation(line: 295, column: 9, scope: !261)
!1415 = !DILocation(line: 295, column: 2, scope: !261)
!1416 = !DILocation(line: 296, column: 7, scope: !259)
!1417 = !DILocation(line: 300, column: 5, scope: !259)
!1418 = !DILocation(line: 301, column: 3, scope: !250)
!1419 = !DILocation(line: 302, column: 1, scope: !250)
!1420 = !DILocation(line: 107, column: 38, scope: !275)
!1421 = !DILocation(line: 107, column: 68, scope: !275)
!1422 = !DILocation(line: 110, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !275, file: !18, line: 110, column: 7)
!1424 = !DILocation(line: 110, column: 17, scope: !1423)
!1425 = !DILocation(line: 110, column: 14, scope: !1423)
!1426 = !DILocation(line: 110, column: 7, scope: !275)
!1427 = !DILocation(line: 111, column: 12, scope: !1423)
!1428 = !DILocation(line: 111, column: 5, scope: !1423)
!1429 = !DILocation(line: 115, column: 7, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !275, file: !18, line: 115, column: 7)
!1431 = !DILocation(line: 115, column: 14, scope: !1430)
!1432 = !DILocation(line: 115, column: 7, scope: !275)
!1433 = !DILocation(line: 116, column: 12, scope: !1430)
!1434 = !DILocation(line: 116, column: 5, scope: !1430)
!1435 = !DILocation(line: 117, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !275, file: !18, line: 117, column: 7)
!1437 = !DILocation(line: 117, column: 14, scope: !1436)
!1438 = !DILocation(line: 117, column: 7, scope: !275)
!1439 = !DILocation(line: 118, column: 12, scope: !1436)
!1440 = !DILocation(line: 118, column: 5, scope: !1436)
!1441 = !DILocation(line: 121, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !275, file: !18, line: 121, column: 7)
!1443 = !DILocation(line: 121, column: 14, scope: !1442)
!1444 = !DILocation(line: 121, column: 37, scope: !1442)
!1445 = !DILocation(line: 121, column: 40, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1442, file: !18, discriminator: 1)
!1447 = !DILocation(line: 121, column: 47, scope: !1442)
!1448 = !DILocation(line: 121, column: 7, scope: !275)
!1449 = !DILocation(line: 122, column: 5, scope: !1442)
!1450 = !DILocation(line: 125, column: 8, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !275, file: !18, line: 125, column: 7)
!1452 = !DILocation(line: 125, column: 15, scope: !1451)
!1453 = !DILocation(line: 125, column: 41, scope: !1451)
!1454 = !DILocation(line: 125, column: 44, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1451, file: !18, discriminator: 1)
!1456 = !DILocation(line: 125, column: 51, scope: !1451)
!1457 = !DILocation(line: 126, column: 7, scope: !1451)
!1458 = !DILocation(line: 126, column: 11, scope: !1455)
!1459 = !DILocation(line: 126, column: 18, scope: !1451)
!1460 = !DILocation(line: 126, column: 44, scope: !1451)
!1461 = !DILocation(line: 126, column: 47, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1451, file: !18, discriminator: 2)
!1463 = !DILocation(line: 126, column: 54, scope: !1451)
!1464 = !DILocation(line: 125, column: 7, scope: !275)
!1465 = !DILocation(line: 127, column: 5, scope: !1451)
!1466 = !DILocation(line: 128, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !275, file: !18, line: 128, column: 7)
!1468 = !DILocation(line: 128, column: 14, scope: !1467)
!1469 = !DILocation(line: 128, column: 38, scope: !1467)
!1470 = !DILocation(line: 128, column: 41, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1467, file: !18, discriminator: 1)
!1472 = !DILocation(line: 128, column: 48, scope: !1467)
!1473 = !DILocation(line: 129, column: 7, scope: !1467)
!1474 = !DILocation(line: 129, column: 10, scope: !1471)
!1475 = !DILocation(line: 129, column: 17, scope: !1467)
!1476 = !DILocation(line: 129, column: 41, scope: !1467)
!1477 = !DILocation(line: 129, column: 44, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1467, file: !18, discriminator: 2)
!1479 = !DILocation(line: 129, column: 51, scope: !1467)
!1480 = !DILocation(line: 128, column: 7, scope: !275)
!1481 = !DILocation(line: 130, column: 5, scope: !1467)
!1482 = !DILocation(line: 134, column: 7, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !275, file: !18, line: 134, column: 7)
!1484 = !DILocation(line: 134, column: 14, scope: !1483)
!1485 = !DILocation(line: 135, column: 7, scope: !1483)
!1486 = !DILocation(line: 135, column: 10, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1483, file: !18, discriminator: 1)
!1488 = !DILocation(line: 135, column: 17, scope: !1483)
!1489 = !DILocation(line: 136, column: 7, scope: !1483)
!1490 = !DILocation(line: 136, column: 10, scope: !1487)
!1491 = !DILocation(line: 136, column: 17, scope: !1483)
!1492 = !DILocation(line: 137, column: 7, scope: !1483)
!1493 = !DILocation(line: 137, column: 10, scope: !1487)
!1494 = !DILocation(line: 137, column: 17, scope: !1483)
!1495 = !DILocation(line: 138, column: 7, scope: !1483)
!1496 = !DILocation(line: 138, column: 10, scope: !1487)
!1497 = !DILocation(line: 138, column: 17, scope: !1483)
!1498 = !DILocation(line: 139, column: 7, scope: !1483)
!1499 = !DILocation(line: 139, column: 10, scope: !1487)
!1500 = !DILocation(line: 139, column: 17, scope: !1483)
!1501 = !DILocation(line: 134, column: 7, scope: !275)
!1502 = !DILocation(line: 140, column: 5, scope: !1483)
!1503 = !DILocation(line: 143, column: 3, scope: !275)
!1504 = !DILocation(line: 144, column: 1, scope: !275)
