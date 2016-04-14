; ModuleID = 'programs_new/Python-new/ffi64.bc.ll'
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
  br label %NodeBlock.7

NodeBlock.7:                                      ; preds = %for.body
  %Pivot.8 = icmp slt i32 %11, 3
  br i1 %Pivot.8, label %NodeBlock, label %NodeBlock.5

NodeBlock.5:                                      ; preds = %NodeBlock.7
  %Pivot.6 = icmp slt i32 %11, 6
  br i1 %Pivot.6, label %sw.bb.2, label %NodeBlock.3

NodeBlock.3:                                      ; preds = %NodeBlock.5
  %Pivot.4 = icmp slt i32 %11, 7
  br i1 %Pivot.4, label %sw.bb.4, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock.3
  %.off = add i32 %11, -7
  %SwitchLeaf2 = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf2, label %sw.bb.5, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.7
  %Pivot = icmp slt i32 %11, 1
  br i1 %Pivot, label %LeafBlock, label %sw.bb

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %11, 0
  br i1 %SwitchLeaf, label %sw.bb.4, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock
  %12 = load i32, i32* %ngpr, align 4, !dbg !517, !tbaa !305
  %inc = add i32 %12, 1, !dbg !517
  store i32 %inc, i32* %ngpr, align 4, !dbg !517, !tbaa !305
  br label %sw.epilog, !dbg !519

sw.bb.2:                                          ; preds = %NodeBlock.5
  %13 = load i32, i32* %nsse, align 4, !dbg !520, !tbaa !305
  %inc3 = add i32 %13, 1, !dbg !520
  store i32 %inc3, i32* %nsse, align 4, !dbg !520, !tbaa !305
  br label %sw.epilog, !dbg !521

sw.bb.4:                                          ; preds = %NodeBlock.3, %LeafBlock
  br label %sw.epilog, !dbg !522

sw.bb.5:                                          ; preds = %LeafBlock.1
  %14 = load i8, i8* %in_return.addr, align 1, !dbg !523, !tbaa !347, !range !363
  %tobool = trunc i8 %14 to i1, !dbg !523
  %conv = zext i1 %tobool to i32, !dbg !523
  %cmp6 = icmp ne i32 %conv, 0, !dbg !524
  %conv7 = zext i1 %cmp6 to i32, !dbg !524
  store i32 %conv7, i32* %retval, !dbg !525
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !525

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  call void @abort() #6, !dbg !526
  unreachable, !dbg !526

sw.epilog:                                        ; preds = %sw.bb.4, %sw.bb.2, %sw.bb
  br label %for.inc, !dbg !527

for.inc:                                          ; preds = %sw.epilog
  %15 = load i32, i32* %i, align 4, !dbg !528, !tbaa !305
  %inc8 = add i32 %15, 1, !dbg !528
  store i32 %inc8, i32* %i, align 4, !dbg !528, !tbaa !305
  br label %for.cond, !dbg !529

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %ngpr, align 4, !dbg !530, !tbaa !305
  %17 = load i32*, i32** %pngpr.addr, align 8, !dbg !531, !tbaa !285
  store i32 %16, i32* %17, align 4, !dbg !532, !tbaa !305
  %18 = load i32, i32* %nsse, align 4, !dbg !533, !tbaa !305
  %19 = load i32*, i32** %pnsse.addr, align 8, !dbg !534, !tbaa !285
  store i32 %18, i32* %19, align 4, !dbg !535, !tbaa !305
  %20 = load i32, i32* %n, align 4, !dbg !536, !tbaa !305
  store i32 %20, i32* %retval, !dbg !537
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !537

cleanup:                                          ; preds = %for.end, %sw.bb.5, %if.then
  %21 = bitcast i32* %nsse to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !538
  %22 = bitcast i32* %ngpr to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !538
  %23 = bitcast i32* %n to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !538
  %24 = bitcast i32* %i to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !538
  %25 = load i32, i32* %retval, !dbg !538
  ret i32 %25, !dbg !538
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
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !143, metadata !289), !dbg !539
  store void ()* %fn, void ()** %fn.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata void ()** %fn.addr, metadata !144, metadata !289), !dbg !540
  store i8* %rvalue, i8** %rvalue.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %rvalue.addr, metadata !145, metadata !289), !dbg !541
  store i8** %avalue, i8*** %avalue.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8*** %avalue.addr, metadata !146, metadata !289), !dbg !542
  %0 = bitcast [4 x i32]* %classes to i8*, !dbg !543
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !543
  call void @llvm.dbg.declare(metadata [4 x i32]* %classes, metadata !147, metadata !289), !dbg !544
  %1 = bitcast i8** %stack to i8*, !dbg !545
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !545
  call void @llvm.dbg.declare(metadata i8** %stack, metadata !148, metadata !289), !dbg !546
  %2 = bitcast i8** %argp to i8*, !dbg !545
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !545
  call void @llvm.dbg.declare(metadata i8** %argp, metadata !149, metadata !289), !dbg !547
  %3 = bitcast %struct._ffi_type*** %arg_types to i8*, !dbg !548
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !548
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %arg_types, metadata !150, metadata !289), !dbg !549
  %4 = bitcast i32* %gprcount to i8*, !dbg !550
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !550
  call void @llvm.dbg.declare(metadata i32* %gprcount, metadata !151, metadata !289), !dbg !551
  %5 = bitcast i32* %ssecount to i8*, !dbg !550
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !550
  call void @llvm.dbg.declare(metadata i32* %ssecount, metadata !152, metadata !289), !dbg !552
  %6 = bitcast i32* %ngpr to i8*, !dbg !550
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !550
  call void @llvm.dbg.declare(metadata i32* %ngpr, metadata !153, metadata !289), !dbg !553
  %7 = bitcast i32* %nsse to i8*, !dbg !550
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !550
  call void @llvm.dbg.declare(metadata i32* %nsse, metadata !154, metadata !289), !dbg !554
  %8 = bitcast i32* %i to i8*, !dbg !550
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !550
  call void @llvm.dbg.declare(metadata i32* %i, metadata !155, metadata !289), !dbg !555
  %9 = bitcast i32* %avn to i8*, !dbg !550
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !550
  call void @llvm.dbg.declare(metadata i32* %avn, metadata !156, metadata !289), !dbg !556
  call void @llvm.lifetime.start(i64 1, i8* %ret_in_memory) #2, !dbg !557
  call void @llvm.dbg.declare(metadata i8* %ret_in_memory, metadata !157, metadata !289), !dbg !558
  %10 = bitcast %struct.register_args** %reg_args to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !559
  call void @llvm.dbg.declare(metadata %struct.register_args** %reg_args, metadata !158, metadata !289), !dbg !560
  %11 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !561, !tbaa !285
  %rtype = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %11, i32 0, i32 3, !dbg !562
  %12 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8, !dbg !562, !tbaa !310
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %12, i32 0, i32 2, !dbg !563
  %13 = load i16, i16* %type, align 2, !dbg !563, !tbaa !313
  %conv = zext i16 %13 to i32, !dbg !561
  %cmp = icmp eq i32 %conv, 13, !dbg !564
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !565

land.rhs:                                         ; preds = %entry
  %14 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !566, !tbaa !285
  %flags = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %14, i32 0, i32 5, !dbg !568
  %15 = load i32, i32* %flags, align 4, !dbg !568, !tbaa !472
  %and = and i32 %15, 255, !dbg !569
  %cmp2 = icmp eq i32 %and, 0, !dbg !570
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %frombool = zext i1 %16 to i8, !dbg !571
  store i8 %frombool, i8* %ret_in_memory, align 1, !dbg !571, !tbaa !347
  %17 = load i8*, i8** %rvalue.addr, align 8, !dbg !572, !tbaa !285
  %cmp4 = icmp eq i8* %17, null, !dbg !574
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !575

land.lhs.true:                                    ; preds = %land.end
  %18 = load i8, i8* %ret_in_memory, align 1, !dbg !576, !tbaa !347, !range !363
  %tobool = trunc i8 %18 to i1, !dbg !576
  br i1 %tobool, label %if.then, label %if.end, !dbg !578

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !579, !tbaa !285
  %rtype7 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %19, i32 0, i32 3, !dbg !580
  %20 = load %struct._ffi_type*, %struct._ffi_type** %rtype7, align 8, !dbg !580, !tbaa !310
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %20, i32 0, i32 0, !dbg !581
  %21 = load i64, i64* %size, align 8, !dbg !581, !tbaa !389
  %22 = alloca i8, i64 %21, !dbg !582
  store i8* %22, i8** %rvalue.addr, align 8, !dbg !583, !tbaa !285
  br label %if.end, !dbg !584

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %23 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !585, !tbaa !285
  %bytes = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %23, i32 0, i32 4, !dbg !586
  %24 = load i32, i32* %bytes, align 4, !dbg !586, !tbaa !481
  %conv8 = zext i32 %24 to i64, !dbg !585
  %add = add i64 176, %conv8, !dbg !587
  %add9 = add i64 %add, 32, !dbg !588
  %25 = alloca i8, i64 %add9, !dbg !589
  store i8* %25, i8** %stack, align 8, !dbg !590, !tbaa !285
  %26 = load i8*, i8** %stack, align 8, !dbg !591, !tbaa !285
  %27 = bitcast i8* %26 to %struct.register_args*, !dbg !592
  store %struct.register_args* %27, %struct.register_args** %reg_args, align 8, !dbg !593, !tbaa !285
  %28 = load i8*, i8** %stack, align 8, !dbg !594, !tbaa !285
  %add.ptr = getelementptr i8, i8* %28, i64 176, !dbg !595
  store i8* %add.ptr, i8** %argp, align 8, !dbg !596, !tbaa !285
  store i32 0, i32* %ssecount, align 4, !dbg !597, !tbaa !305
  store i32 0, i32* %gprcount, align 4, !dbg !598, !tbaa !305
  %29 = load i8, i8* %ret_in_memory, align 1, !dbg !599, !tbaa !347, !range !363
  %tobool10 = trunc i8 %29 to i1, !dbg !599
  br i1 %tobool10, label %if.then.11, label %if.end.12, !dbg !601

if.then.11:                                       ; preds = %if.end
  %30 = load i8*, i8** %rvalue.addr, align 8, !dbg !602, !tbaa !285
  %31 = ptrtoint i8* %30 to i64, !dbg !603
  %32 = load i32, i32* %gprcount, align 4, !dbg !604, !tbaa !305
  %inc = add i32 %32, 1, !dbg !604
  store i32 %inc, i32* %gprcount, align 4, !dbg !604, !tbaa !305
  %idxprom = sext i32 %32 to i64, !dbg !605
  %33 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !605, !tbaa !285
  %gpr = getelementptr inbounds %struct.register_args, %struct.register_args* %33, i32 0, i32 0, !dbg !606
  %arrayidx = getelementptr [6 x i64], [6 x i64]* %gpr, i32 0, i64 %idxprom, !dbg !605
  store i64 %31, i64* %arrayidx, align 8, !dbg !607, !tbaa !396
  br label %if.end.12, !dbg !605

if.end.12:                                        ; preds = %if.then.11, %if.end
  %34 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !608, !tbaa !285
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %34, i32 0, i32 1, !dbg !609
  %35 = load i32, i32* %nargs, align 4, !dbg !609, !tbaa !400
  store i32 %35, i32* %avn, align 4, !dbg !610, !tbaa !305
  %36 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !611, !tbaa !285
  %arg_types13 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %36, i32 0, i32 2, !dbg !612
  %37 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types13, align 8, !dbg !612, !tbaa !412
  store %struct._ffi_type** %37, %struct._ffi_type*** %arg_types, align 8, !dbg !613, !tbaa !285
  store i32 0, i32* %i, align 4, !dbg !614, !tbaa !305
  br label %for.cond, !dbg !615

for.cond:                                         ; preds = %for.inc.95, %if.end.12
  %38 = load i32, i32* %i, align 4, !dbg !616, !tbaa !305
  %39 = load i32, i32* %avn, align 4, !dbg !619, !tbaa !305
  %cmp14 = icmp slt i32 %38, %39, !dbg !620
  br i1 %cmp14, label %for.body, label %for.end.97, !dbg !621

for.body:                                         ; preds = %for.cond
  %40 = bitcast i64* %size16 to i8*, !dbg !622
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !622
  call void @llvm.dbg.declare(metadata i64* %size16, metadata !159, metadata !289), !dbg !623
  %41 = load i32, i32* %i, align 4, !dbg !624, !tbaa !305
  %idxprom17 = sext i32 %41 to i64, !dbg !625
  %42 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !625, !tbaa !285
  %arrayidx18 = getelementptr %struct._ffi_type*, %struct._ffi_type** %42, i64 %idxprom17, !dbg !625
  %43 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx18, align 8, !dbg !625, !tbaa !285
  %size19 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %43, i32 0, i32 0, !dbg !626
  %44 = load i64, i64* %size19, align 8, !dbg !626, !tbaa !389
  store i64 %44, i64* %size16, align 8, !dbg !623, !tbaa !396
  %45 = bitcast i32* %n to i8*, !dbg !627
  call void @llvm.lifetime.start(i64 4, i8* %45) #2, !dbg !627
  call void @llvm.dbg.declare(metadata i32* %n, metadata !163, metadata !289), !dbg !628
  %46 = load i32, i32* %i, align 4, !dbg !629, !tbaa !305
  %idxprom20 = sext i32 %46 to i64, !dbg !630
  %47 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !630, !tbaa !285
  %arrayidx21 = getelementptr %struct._ffi_type*, %struct._ffi_type** %47, i64 %idxprom20, !dbg !630
  %48 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx21, align 8, !dbg !630, !tbaa !285
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0, !dbg !631
  %call = call i32 @examine_argument(%struct._ffi_type* %48, i32* %arraydecay, i1 zeroext false, i32* %ngpr, i32* %nsse), !dbg !632
  store i32 %call, i32* %n, align 4, !dbg !633, !tbaa !305
  %49 = load i32, i32* %n, align 4, !dbg !634, !tbaa !305
  %cmp22 = icmp eq i32 %49, 0, !dbg !635
  br i1 %cmp22, label %if.then.31, label %lor.lhs.false, !dbg !636

lor.lhs.false:                                    ; preds = %for.body
  %50 = load i32, i32* %gprcount, align 4, !dbg !637, !tbaa !305
  %51 = load i32, i32* %ngpr, align 4, !dbg !639, !tbaa !305
  %add24 = add i32 %50, %51, !dbg !640
  %cmp25 = icmp sgt i32 %add24, 6, !dbg !641
  br i1 %cmp25, label %if.then.31, label %lor.lhs.false.27, !dbg !642

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %52 = load i32, i32* %ssecount, align 4, !dbg !643, !tbaa !305
  %53 = load i32, i32* %nsse, align 4, !dbg !644, !tbaa !305
  %add28 = add i32 %52, %53, !dbg !645
  %cmp29 = icmp sgt i32 %add28, 8, !dbg !646
  br i1 %cmp29, label %if.then.31, label %if.else, !dbg !647

if.then.31:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false, %for.body
  %54 = bitcast i64* %align to i8*, !dbg !648
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !648
  call void @llvm.dbg.declare(metadata i64* %align, metadata !164, metadata !289), !dbg !649
  %55 = load i32, i32* %i, align 4, !dbg !650, !tbaa !305
  %idxprom32 = sext i32 %55 to i64, !dbg !651
  %56 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !651, !tbaa !285
  %arrayidx33 = getelementptr %struct._ffi_type*, %struct._ffi_type** %56, i64 %idxprom32, !dbg !651
  %57 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx33, align 8, !dbg !651, !tbaa !285
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %57, i32 0, i32 1, !dbg !652
  %58 = load i16, i16* %alignment, align 2, !dbg !652, !tbaa !434
  %conv34 = zext i16 %58 to i64, !dbg !651
  store i64 %conv34, i64* %align, align 8, !dbg !649, !tbaa !396
  %59 = load i64, i64* %align, align 8, !dbg !653, !tbaa !396
  %cmp35 = icmp slt i64 %59, 8, !dbg !655
  br i1 %cmp35, label %if.then.37, label %if.end.38, !dbg !656

if.then.37:                                       ; preds = %if.then.31
  store i64 8, i64* %align, align 8, !dbg !657, !tbaa !396
  br label %if.end.38, !dbg !658

if.end.38:                                        ; preds = %if.then.37, %if.then.31
  %60 = load i8*, i8** %argp, align 8, !dbg !659, !tbaa !285
  %61 = ptrtoint i8* %60 to i64, !dbg !660
  %sub = sub i64 %61, 1, !dbg !661
  %62 = load i64, i64* %align, align 8, !dbg !662, !tbaa !396
  %sub39 = sub i64 %62, 1, !dbg !663
  %or = or i64 %sub, %sub39, !dbg !664
  %add40 = add i64 %or, 1, !dbg !665
  %63 = inttoptr i64 %add40 to i8*, !dbg !666
  store i8* %63, i8** %argp, align 8, !dbg !667, !tbaa !285
  %64 = load i8*, i8** %argp, align 8, !dbg !668, !tbaa !285
  %65 = load i32, i32* %i, align 4, !dbg !669, !tbaa !305
  %idxprom41 = sext i32 %65 to i64, !dbg !670
  %66 = load i8**, i8*** %avalue.addr, align 8, !dbg !670, !tbaa !285
  %arrayidx42 = getelementptr i8*, i8** %66, i64 %idxprom41, !dbg !670
  %67 = load i8*, i8** %arrayidx42, align 8, !dbg !670, !tbaa !285
  %68 = load i64, i64* %size16, align 8, !dbg !671, !tbaa !396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %67, i64 %68, i32 1, i1 false), !dbg !672
  %69 = load i64, i64* %size16, align 8, !dbg !673, !tbaa !396
  %70 = load i8*, i8** %argp, align 8, !dbg !674, !tbaa !285
  %add.ptr43 = getelementptr i8, i8* %70, i64 %69, !dbg !674
  store i8* %add.ptr43, i8** %argp, align 8, !dbg !674, !tbaa !285
  %71 = bitcast i64* %align to i8*, !dbg !675
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !675
  br label %if.end.94, !dbg !676

if.else:                                          ; preds = %lor.lhs.false.27
  %72 = bitcast i8** %a to i8*, !dbg !677
  call void @llvm.lifetime.start(i64 8, i8* %72) #2, !dbg !677
  call void @llvm.dbg.declare(metadata i8** %a, metadata !167, metadata !289), !dbg !678
  %73 = load i32, i32* %i, align 4, !dbg !679, !tbaa !305
  %idxprom44 = sext i32 %73 to i64, !dbg !680
  %74 = load i8**, i8*** %avalue.addr, align 8, !dbg !680, !tbaa !285
  %arrayidx45 = getelementptr i8*, i8** %74, i64 %idxprom44, !dbg !680
  %75 = load i8*, i8** %arrayidx45, align 8, !dbg !680, !tbaa !285
  store i8* %75, i8** %a, align 8, !dbg !678, !tbaa !285
  %76 = bitcast i32* %j to i8*, !dbg !681
  call void @llvm.lifetime.start(i64 4, i8* %76) #2, !dbg !681
  call void @llvm.dbg.declare(metadata i32* %j, metadata !169, metadata !289), !dbg !682
  store i32 0, i32* %j, align 4, !dbg !683, !tbaa !305
  br label %for.cond.46, !dbg !685

for.cond.46:                                      ; preds = %for.inc, %if.else
  %77 = load i32, i32* %j, align 4, !dbg !686, !tbaa !305
  %78 = load i32, i32* %n, align 4, !dbg !690, !tbaa !305
  %cmp47 = icmp slt i32 %77, %78, !dbg !691
  br i1 %cmp47, label %for.body.49, label %for.end, !dbg !692

for.body.49:                                      ; preds = %for.cond.46
  %79 = load i32, i32* %j, align 4, !dbg !693, !tbaa !305
  %idxprom50 = sext i32 %79 to i64, !dbg !695
  %arrayidx51 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 %idxprom50, !dbg !695
  %80 = load i32, i32* %arrayidx51, align 4, !dbg !695, !tbaa !339
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %for.body.49
  %Pivot.6 = icmp slt i32 %80, 4
  br i1 %Pivot.6, label %NodeBlock, label %NodeBlock.3

NodeBlock.3:                                      ; preds = %NodeBlock.5
  %Pivot.4 = icmp slt i32 %80, 5
  br i1 %Pivot.4, label %sw.bb.84, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock.3
  %SwitchLeaf2 = icmp eq i32 %80, 5
  br i1 %SwitchLeaf2, label %sw.bb.80, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %80, 3
  br i1 %Pivot, label %LeafBlock, label %sw.bb.80

LeafBlock:                                        ; preds = %NodeBlock
  %.off = add i32 %80, -1
  %SwitchLeaf = icmp ule i32 %.off, 1
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %81 = load i32, i32* %i, align 4, !dbg !696, !tbaa !305
  %idxprom52 = sext i32 %81 to i64, !dbg !698
  %82 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !698, !tbaa !285
  %arrayidx53 = getelementptr %struct._ffi_type*, %struct._ffi_type** %82, i64 %idxprom52, !dbg !698
  %83 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx53, align 8, !dbg !698, !tbaa !285
  %type54 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %83, i32 0, i32 2, !dbg !699
  %84 = load i16, i16* %type54, align 2, !dbg !699, !tbaa !313
  %conv55 = zext i16 %84 to i32, !dbg !698
  br label %NodeBlock.16

NodeBlock.16:                                     ; preds = %sw.bb
  %Pivot.17 = icmp slt i32 %conv55, 8
  br i1 %Pivot.17, label %LeafBlock.8, label %NodeBlock.14

NodeBlock.14:                                     ; preds = %NodeBlock.16
  %Pivot.15 = icmp slt i32 %conv55, 10
  br i1 %Pivot.15, label %LeafBlock.10, label %LeafBlock.12

LeafBlock.12:                                     ; preds = %NodeBlock.14
  %SwitchLeaf13 = icmp eq i32 %conv55, 10
  br i1 %SwitchLeaf13, label %sw.bb.66, label %NewDefault.7

LeafBlock.10:                                     ; preds = %NodeBlock.14
  %SwitchLeaf11 = icmp eq i32 %conv55, 8
  br i1 %SwitchLeaf11, label %sw.bb.61, label %NewDefault.7

LeafBlock.8:                                      ; preds = %NodeBlock.16
  %SwitchLeaf9 = icmp eq i32 %conv55, 6
  br i1 %SwitchLeaf9, label %sw.bb.56, label %NewDefault.7

sw.bb.56:                                         ; preds = %LeafBlock.8
  %85 = load i8*, i8** %a, align 8, !dbg !700, !tbaa !285
  %86 = load i8, i8* %85, align 1, !dbg !702, !tbaa !339
  %conv57 = sext i8 %86 to i64, !dbg !703
  %87 = load i32, i32* %gprcount, align 4, !dbg !704, !tbaa !305
  %idxprom58 = sext i32 %87 to i64, !dbg !705
  %88 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !705, !tbaa !285
  %gpr59 = getelementptr inbounds %struct.register_args, %struct.register_args* %88, i32 0, i32 0, !dbg !706
  %arrayidx60 = getelementptr [6 x i64], [6 x i64]* %gpr59, i32 0, i64 %idxprom58, !dbg !705
  store i64 %conv57, i64* %arrayidx60, align 8, !dbg !707, !tbaa !396
  br label %sw.epilog, !dbg !708

sw.bb.61:                                         ; preds = %LeafBlock.10
  %89 = load i8*, i8** %a, align 8, !dbg !709, !tbaa !285
  %90 = bitcast i8* %89 to i16*, !dbg !710
  %91 = load i16, i16* %90, align 2, !dbg !711, !tbaa !712
  %conv62 = sext i16 %91 to i64, !dbg !713
  %92 = load i32, i32* %gprcount, align 4, !dbg !714, !tbaa !305
  %idxprom63 = sext i32 %92 to i64, !dbg !715
  %93 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !715, !tbaa !285
  %gpr64 = getelementptr inbounds %struct.register_args, %struct.register_args* %93, i32 0, i32 0, !dbg !716
  %arrayidx65 = getelementptr [6 x i64], [6 x i64]* %gpr64, i32 0, i64 %idxprom63, !dbg !715
  store i64 %conv62, i64* %arrayidx65, align 8, !dbg !717, !tbaa !396
  br label %sw.epilog, !dbg !718

sw.bb.66:                                         ; preds = %LeafBlock.12
  %94 = load i8*, i8** %a, align 8, !dbg !719, !tbaa !285
  %95 = bitcast i8* %94 to i32*, !dbg !720
  %96 = load i32, i32* %95, align 4, !dbg !721, !tbaa !305
  %conv67 = sext i32 %96 to i64, !dbg !722
  %97 = load i32, i32* %gprcount, align 4, !dbg !723, !tbaa !305
  %idxprom68 = sext i32 %97 to i64, !dbg !724
  %98 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !724, !tbaa !285
  %gpr69 = getelementptr inbounds %struct.register_args, %struct.register_args* %98, i32 0, i32 0, !dbg !725
  %arrayidx70 = getelementptr [6 x i64], [6 x i64]* %gpr69, i32 0, i64 %idxprom68, !dbg !724
  store i64 %conv67, i64* %arrayidx70, align 8, !dbg !726, !tbaa !396
  br label %sw.epilog, !dbg !727

NewDefault.7:                                     ; preds = %LeafBlock.12, %LeafBlock.10, %LeafBlock.8
  br label %sw.default

sw.default:                                       ; preds = %NewDefault.7
  %99 = load i32, i32* %gprcount, align 4, !dbg !728, !tbaa !305
  %idxprom71 = sext i32 %99 to i64, !dbg !729
  %100 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !729, !tbaa !285
  %gpr72 = getelementptr inbounds %struct.register_args, %struct.register_args* %100, i32 0, i32 0, !dbg !730
  %arrayidx73 = getelementptr [6 x i64], [6 x i64]* %gpr72, i32 0, i64 %idxprom71, !dbg !729
  store i64 0, i64* %arrayidx73, align 8, !dbg !731, !tbaa !396
  %101 = load i32, i32* %gprcount, align 4, !dbg !732, !tbaa !305
  %idxprom74 = sext i32 %101 to i64, !dbg !733
  %102 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !733, !tbaa !285
  %gpr75 = getelementptr inbounds %struct.register_args, %struct.register_args* %102, i32 0, i32 0, !dbg !734
  %arrayidx76 = getelementptr [6 x i64], [6 x i64]* %gpr75, i32 0, i64 %idxprom74, !dbg !733
  %103 = bitcast i64* %arrayidx76 to i8*, !dbg !735
  %104 = load i8*, i8** %a, align 8, !dbg !736, !tbaa !285
  %105 = load i64, i64* %size16, align 8, !dbg !737, !tbaa !396
  %cmp77 = icmp ult i64 %105, 8, !dbg !738
  br i1 %cmp77, label %cond.true, label %cond.false, !dbg !737

cond.true:                                        ; preds = %sw.default
  %106 = load i64, i64* %size16, align 8, !dbg !739, !tbaa !396
  br label %cond.end, !dbg !737

cond.false:                                       ; preds = %sw.default
  br label %cond.end, !dbg !741

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %106, %cond.true ], [ 8, %cond.false ], !dbg !737
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 %cond, i32 1, i1 false), !dbg !743
  br label %sw.epilog, !dbg !746

sw.epilog:                                        ; preds = %cond.end, %sw.bb.66, %sw.bb.61, %sw.bb.56
  %107 = load i32, i32* %gprcount, align 4, !dbg !747, !tbaa !305
  %inc79 = add i32 %107, 1, !dbg !747
  store i32 %inc79, i32* %gprcount, align 4, !dbg !747, !tbaa !305
  br label %sw.epilog.90, !dbg !748

sw.bb.80:                                         ; preds = %LeafBlock.1, %NodeBlock
  %108 = load i8*, i8** %a, align 8, !dbg !749, !tbaa !285
  %109 = bitcast i8* %108 to i64*, !dbg !750
  %110 = load i64, i64* %109, align 8, !dbg !751, !tbaa !396
  %111 = load i32, i32* %ssecount, align 4, !dbg !752, !tbaa !305
  %inc81 = add i32 %111, 1, !dbg !752
  store i32 %inc81, i32* %ssecount, align 4, !dbg !752, !tbaa !305
  %idxprom82 = sext i32 %111 to i64, !dbg !753
  %112 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !753, !tbaa !285
  %sse = getelementptr inbounds %struct.register_args, %struct.register_args* %112, i32 0, i32 1, !dbg !754
  %arrayidx83 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse, i32 0, i64 %idxprom82, !dbg !753
  %i64 = bitcast %union.big_int_union* %arrayidx83 to i64*, !dbg !755
  store i64 %110, i64* %i64, align 8, !dbg !756, !tbaa !396
  br label %sw.epilog.90, !dbg !757

sw.bb.84:                                         ; preds = %NodeBlock.3
  %113 = load i8*, i8** %a, align 8, !dbg !758, !tbaa !285
  %114 = bitcast i8* %113 to i32*, !dbg !759
  %115 = load i32, i32* %114, align 4, !dbg !760, !tbaa !305
  %116 = load i32, i32* %ssecount, align 4, !dbg !761, !tbaa !305
  %inc85 = add i32 %116, 1, !dbg !761
  store i32 %inc85, i32* %ssecount, align 4, !dbg !761, !tbaa !305
  %idxprom86 = sext i32 %116 to i64, !dbg !762
  %117 = load %struct.register_args*, %struct.register_args** %reg_args, align 8, !dbg !762, !tbaa !285
  %sse87 = getelementptr inbounds %struct.register_args, %struct.register_args* %117, i32 0, i32 1, !dbg !763
  %arrayidx88 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse87, i32 0, i64 %idxprom86, !dbg !762
  %i32 = bitcast %union.big_int_union* %arrayidx88 to i32*, !dbg !764
  store i32 %115, i32* %i32, align 4, !dbg !765, !tbaa !305
  br label %sw.epilog.90, !dbg !766

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.default.89

sw.default.89:                                    ; preds = %NewDefault
  call void @abort() #6, !dbg !767
  unreachable, !dbg !767

sw.epilog.90:                                     ; preds = %sw.bb.84, %sw.bb.80, %sw.epilog
  br label %for.inc, !dbg !768

for.inc:                                          ; preds = %sw.epilog.90
  %118 = load i32, i32* %j, align 4, !dbg !769, !tbaa !305
  %inc91 = add i32 %118, 1, !dbg !769
  store i32 %inc91, i32* %j, align 4, !dbg !769, !tbaa !305
  %119 = load i8*, i8** %a, align 8, !dbg !770, !tbaa !285
  %add.ptr92 = getelementptr i8, i8* %119, i64 8, !dbg !770
  store i8* %add.ptr92, i8** %a, align 8, !dbg !770, !tbaa !285
  %120 = load i64, i64* %size16, align 8, !dbg !771, !tbaa !396
  %sub93 = sub i64 %120, 8, !dbg !771
  store i64 %sub93, i64* %size16, align 8, !dbg !771, !tbaa !396
  br label %for.cond.46, !dbg !772

for.end:                                          ; preds = %for.cond.46
  %121 = bitcast i32* %j to i8*, !dbg !773
  call void @llvm.lifetime.end(i64 4, i8* %121) #2, !dbg !773
  %122 = bitcast i8** %a to i8*, !dbg !773
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !773
  br label %if.end.94

if.end.94:                                        ; preds = %for.end, %if.end.38
  %123 = bitcast i32* %n to i8*, !dbg !774
  call void @llvm.lifetime.end(i64 4, i8* %123) #2, !dbg !774
  %124 = bitcast i64* %size16 to i8*, !dbg !774
  call void @llvm.lifetime.end(i64 8, i8* %124) #2, !dbg !774
  br label %for.inc.95, !dbg !775

for.inc.95:                                       ; preds = %if.end.94
  %125 = load i32, i32* %i, align 4, !dbg !776, !tbaa !305
  %inc96 = add i32 %125, 1, !dbg !776
  store i32 %inc96, i32* %i, align 4, !dbg !776, !tbaa !305
  br label %for.cond, !dbg !777

for.end.97:                                       ; preds = %for.cond
  %126 = load i8*, i8** %stack, align 8, !dbg !778, !tbaa !285
  %127 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !779, !tbaa !285
  %bytes98 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %127, i32 0, i32 4, !dbg !780
  %128 = load i32, i32* %bytes98, align 4, !dbg !780, !tbaa !481
  %conv99 = zext i32 %128 to i64, !dbg !779
  %add100 = add i64 %conv99, 176, !dbg !781
  %129 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !782, !tbaa !285
  %flags101 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %129, i32 0, i32 5, !dbg !783
  %130 = load i32, i32* %flags101, align 4, !dbg !783, !tbaa !472
  %131 = load i8*, i8** %rvalue.addr, align 8, !dbg !784, !tbaa !285
  %132 = load void ()*, void ()** %fn.addr, align 8, !dbg !785, !tbaa !285
  %133 = load i32, i32* %ssecount, align 4, !dbg !786, !tbaa !305
  call void @ffi_call_unix64(i8* %126, i64 %add100, i32 %130, i8* %131, void ()* %132, i32 %133), !dbg !787
  %134 = bitcast %struct.register_args** %reg_args to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 8, i8* %134) #2, !dbg !788
  call void @llvm.lifetime.end(i64 1, i8* %ret_in_memory) #2, !dbg !788
  %135 = bitcast i32* %avn to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %135) #2, !dbg !788
  %136 = bitcast i32* %i to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %136) #2, !dbg !788
  %137 = bitcast i32* %nsse to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %137) #2, !dbg !788
  %138 = bitcast i32* %ngpr to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %138) #2, !dbg !788
  %139 = bitcast i32* %ssecount to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %139) #2, !dbg !788
  %140 = bitcast i32* %gprcount to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 4, i8* %140) #2, !dbg !788
  %141 = bitcast %struct._ffi_type*** %arg_types to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 8, i8* %141) #2, !dbg !788
  %142 = bitcast i8** %argp to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 8, i8* %142) #2, !dbg !788
  %143 = bitcast i8** %stack to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 8, i8* %143) #2, !dbg !788
  %144 = bitcast [4 x i32]* %classes to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 16, i8* %144) #2, !dbg !788
  ret void, !dbg !788
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
  call void @llvm.dbg.declare(metadata %struct.ffi_closure** %closure.addr, metadata !188, metadata !289), !dbg !789
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !189, metadata !289), !dbg !790
  store void (%struct.ffi_cif*, i8*, i8**, i8*)* %fun, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, metadata !190, metadata !289), !dbg !791
  store i8* %user_data, i8** %user_data.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %user_data.addr, metadata !191, metadata !289), !dbg !792
  store i8* %codeloc, i8** %codeloc.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %codeloc.addr, metadata !192, metadata !289), !dbg !793
  %0 = bitcast i16** %tramp to i8*, !dbg !794
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !794
  call void @llvm.dbg.declare(metadata i16** %tramp, metadata !193, metadata !289), !dbg !795
  %1 = bitcast i32* %abi to i8*, !dbg !796
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !796
  call void @llvm.dbg.declare(metadata i32* %abi, metadata !194, metadata !289), !dbg !797
  %2 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !798, !tbaa !285
  %abi1 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %2, i32 0, i32 0, !dbg !799
  %3 = load i32, i32* %abi1, align 4, !dbg !799, !tbaa !800
  store i32 %3, i32* %abi, align 4, !dbg !797, !tbaa !305
  %4 = load i32, i32* %abi, align 4, !dbg !801, !tbaa !305
  %cmp = icmp sgt i32 %4, 0, !dbg !803
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !804

land.rhs:                                         ; preds = %entry
  %5 = load i32, i32* %abi, align 4, !dbg !805, !tbaa !305
  %cmp2 = icmp slt i32 %5, 3, !dbg !807
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %lnot = xor i1 %6, true, !dbg !808
  %lnot.ext = zext i1 %lnot to i32, !dbg !808
  %cmp3 = icmp ne i32 %lnot.ext, 0, !dbg !810
  %conv = zext i1 %cmp3 to i32, !dbg !810
  %conv4 = sext i32 %conv to i64, !dbg !811
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !812
  %tobool = icmp ne i64 %expval, 0, !dbg !812
  br i1 %tobool, label %if.then, label %if.end, !dbg !813

if.then:                                          ; preds = %land.end
  store i32 2, i32* %retval, !dbg !814
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !814

if.end:                                           ; preds = %land.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !815
  br label %cleanup, !dbg !815

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %abi to i8*, !dbg !816
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !816
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  %8 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !818, !tbaa !285
  %tramp5 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %8, i32 0, i32 0, !dbg !819
  %arrayidx = getelementptr [24 x i8], [24 x i8]* %tramp5, i32 0, i64 0, !dbg !818
  %9 = bitcast i8* %arrayidx to i16*, !dbg !820
  store i16* %9, i16** %tramp, align 8, !dbg !821, !tbaa !285
  %10 = load i16*, i16** %tramp, align 8, !dbg !822, !tbaa !285
  %arrayidx6 = getelementptr i16, i16* %10, i64 0, !dbg !822
  store volatile i16 -17591, i16* %arrayidx6, align 2, !dbg !823, !tbaa !712
  %11 = load i16*, i16** %tramp, align 8, !dbg !824, !tbaa !285
  %arrayidx7 = getelementptr i16, i16* %11, i64 1, !dbg !824
  %12 = bitcast i16* %arrayidx7 to i64*, !dbg !825
  store i64 ptrtoint (void ()* @ffi_closure_unix64 to i64), i64* %12, align 8, !dbg !826, !tbaa !827
  %13 = load i16*, i16** %tramp, align 8, !dbg !829, !tbaa !285
  %arrayidx8 = getelementptr i16, i16* %13, i64 5, !dbg !829
  store volatile i16 -17847, i16* %arrayidx8, align 2, !dbg !830, !tbaa !712
  %14 = load i8*, i8** %codeloc.addr, align 8, !dbg !831, !tbaa !285
  %15 = ptrtoint i8* %14 to i64, !dbg !832
  %16 = load i16*, i16** %tramp, align 8, !dbg !833, !tbaa !285
  %arrayidx9 = getelementptr i16, i16* %16, i64 6, !dbg !833
  %17 = bitcast i16* %arrayidx9 to i64*, !dbg !834
  store i64 %15, i64* %17, align 8, !dbg !835, !tbaa !827
  %18 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !836, !tbaa !285
  %flags = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %18, i32 0, i32 5, !dbg !837
  %19 = load i32, i32* %flags, align 4, !dbg !837, !tbaa !472
  %and = and i32 %19, 2048, !dbg !838
  %tobool10 = icmp ne i32 %and, 0, !dbg !836
  %cond = select i1 %tobool10, i32 18937, i32 18936, !dbg !836
  %conv11 = trunc i32 %cond to i16, !dbg !836
  %20 = load i16*, i16** %tramp, align 8, !dbg !839, !tbaa !285
  %arrayidx12 = getelementptr i16, i16* %20, i64 10, !dbg !839
  store volatile i16 %conv11, i16* %arrayidx12, align 2, !dbg !840, !tbaa !712
  %21 = load i16*, i16** %tramp, align 8, !dbg !841, !tbaa !285
  %arrayidx13 = getelementptr i16, i16* %21, i64 11, !dbg !841
  store volatile i16 -7169, i16* %arrayidx13, align 2, !dbg !842, !tbaa !712
  %22 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8, !dbg !843, !tbaa !285
  %23 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !844, !tbaa !285
  %cif14 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %23, i32 0, i32 1, !dbg !845
  store %struct.ffi_cif* %22, %struct.ffi_cif** %cif14, align 8, !dbg !846, !tbaa !847
  %24 = load void (%struct.ffi_cif*, i8*, i8**, i8*)*, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8, !dbg !849, !tbaa !285
  %25 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !850, !tbaa !285
  %fun15 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %25, i32 0, i32 2, !dbg !851
  store void (%struct.ffi_cif*, i8*, i8**, i8*)* %24, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun15, align 8, !dbg !852, !tbaa !853
  %26 = load i8*, i8** %user_data.addr, align 8, !dbg !854, !tbaa !285
  %27 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !855, !tbaa !285
  %user_data16 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %27, i32 0, i32 3, !dbg !856
  store i8* %26, i8** %user_data16, align 8, !dbg !857, !tbaa !858
  store i32 0, i32* %retval, !dbg !859
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17, !dbg !859

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.17

cleanup.17:                                       ; preds = %NewDefault, %cleanup.cont
  %28 = bitcast i16** %tramp to i8*, !dbg !860
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !860
  %29 = load i32, i32* %retval, !dbg !860
  ret i32 %29, !dbg !860
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
  call void @llvm.dbg.declare(metadata %struct.ffi_closure** %closure.addr, metadata !200, metadata !289), !dbg !861
  store i8* %rvalue, i8** %rvalue.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %rvalue.addr, metadata !201, metadata !289), !dbg !862
  store %struct.register_args* %reg_args, %struct.register_args** %reg_args.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata %struct.register_args** %reg_args.addr, metadata !202, metadata !289), !dbg !863
  store i8* %argp, i8** %argp.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i8** %argp.addr, metadata !203, metadata !289), !dbg !864
  %0 = bitcast %struct.ffi_cif** %cif to i8*, !dbg !865
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !865
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif, metadata !204, metadata !289), !dbg !866
  %1 = bitcast i8*** %avalue to i8*, !dbg !867
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !867
  call void @llvm.dbg.declare(metadata i8*** %avalue, metadata !205, metadata !289), !dbg !868
  %2 = bitcast %struct._ffi_type*** %arg_types to i8*, !dbg !869
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !869
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %arg_types, metadata !206, metadata !289), !dbg !870
  %3 = bitcast i64* %i to i8*, !dbg !871
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !871
  call void @llvm.dbg.declare(metadata i64* %i, metadata !207, metadata !289), !dbg !872
  %4 = bitcast i64* %avn to i8*, !dbg !871
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !871
  call void @llvm.dbg.declare(metadata i64* %avn, metadata !208, metadata !289), !dbg !873
  %5 = bitcast i32* %gprcount to i8*, !dbg !874
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !874
  call void @llvm.dbg.declare(metadata i32* %gprcount, metadata !209, metadata !289), !dbg !875
  %6 = bitcast i32* %ssecount to i8*, !dbg !874
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !874
  call void @llvm.dbg.declare(metadata i32* %ssecount, metadata !210, metadata !289), !dbg !876
  %7 = bitcast i32* %ngpr to i8*, !dbg !874
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !874
  call void @llvm.dbg.declare(metadata i32* %ngpr, metadata !211, metadata !289), !dbg !877
  %8 = bitcast i32* %nsse to i8*, !dbg !874
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !874
  call void @llvm.dbg.declare(metadata i32* %nsse, metadata !212, metadata !289), !dbg !878
  %9 = bitcast i32* %ret to i8*, !dbg !879
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !879
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !213, metadata !289), !dbg !880
  %10 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !881, !tbaa !285
  %cif1 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %10, i32 0, i32 1, !dbg !882
  %11 = load %struct.ffi_cif*, %struct.ffi_cif** %cif1, align 8, !dbg !882, !tbaa !847
  store %struct.ffi_cif* %11, %struct.ffi_cif** %cif, align 8, !dbg !883, !tbaa !285
  %12 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !884, !tbaa !285
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %12, i32 0, i32 1, !dbg !885
  %13 = load i32, i32* %nargs, align 4, !dbg !885, !tbaa !400
  %conv = zext i32 %13 to i64, !dbg !884
  %mul = mul i64 %conv, 8, !dbg !886
  %14 = alloca i8, i64 %mul, !dbg !887
  %15 = bitcast i8* %14 to i8**, !dbg !887
  store i8** %15, i8*** %avalue, align 8, !dbg !888, !tbaa !285
  store i32 0, i32* %ssecount, align 4, !dbg !889, !tbaa !305
  store i32 0, i32* %gprcount, align 4, !dbg !890, !tbaa !305
  %16 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !891, !tbaa !285
  %rtype = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %16, i32 0, i32 3, !dbg !892
  %17 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8, !dbg !892, !tbaa !310
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %17, i32 0, i32 2, !dbg !893
  %18 = load i16, i16* %type, align 2, !dbg !893, !tbaa !313
  %conv2 = zext i16 %18 to i32, !dbg !891
  store i32 %conv2, i32* %ret, align 4, !dbg !894, !tbaa !305
  %19 = load i32, i32* %ret, align 4, !dbg !895, !tbaa !305
  %cmp = icmp ne i32 %19, 0, !dbg !896
  br i1 %cmp, label %if.then, label %if.end.42, !dbg !897

if.then:                                          ; preds = %entry
  %20 = bitcast [4 x i32]* %classes to i8*, !dbg !898
  call void @llvm.lifetime.start(i64 16, i8* %20) #2, !dbg !898
  call void @llvm.dbg.declare(metadata [4 x i32]* %classes, metadata !214, metadata !289), !dbg !899
  %21 = bitcast i32* %n to i8*, !dbg !900
  call void @llvm.lifetime.start(i64 4, i8* %21) #2, !dbg !900
  call void @llvm.dbg.declare(metadata i32* %n, metadata !217, metadata !289), !dbg !901
  %22 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !902, !tbaa !285
  %rtype4 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %22, i32 0, i32 3, !dbg !903
  %23 = load %struct._ffi_type*, %struct._ffi_type** %rtype4, align 8, !dbg !903, !tbaa !310
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0, !dbg !904
  %call = call i32 @examine_argument(%struct._ffi_type* %23, i32* %arraydecay, i1 zeroext true, i32* %ngpr, i32* %nsse), !dbg !905
  store i32 %call, i32* %n, align 4, !dbg !901, !tbaa !305
  %24 = load i32, i32* %n, align 4, !dbg !906, !tbaa !305
  %cmp5 = icmp eq i32 %24, 0, !dbg !907
  br i1 %cmp5, label %if.then.7, label %if.else, !dbg !908

if.then.7:                                        ; preds = %if.then
  %25 = load i32, i32* %gprcount, align 4, !dbg !909, !tbaa !305
  %inc = add i32 %25, 1, !dbg !909
  store i32 %inc, i32* %gprcount, align 4, !dbg !909, !tbaa !305
  %idxprom = sext i32 %25 to i64, !dbg !911
  %26 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !911, !tbaa !285
  %gpr = getelementptr inbounds %struct.register_args, %struct.register_args* %26, i32 0, i32 0, !dbg !912
  %arrayidx = getelementptr [6 x i64], [6 x i64]* %gpr, i32 0, i64 %idxprom, !dbg !911
  %27 = load i64, i64* %arrayidx, align 8, !dbg !911, !tbaa !396
  %28 = inttoptr i64 %27 to i8*, !dbg !913
  store i8* %28, i8** %rvalue.addr, align 8, !dbg !914, !tbaa !285
  store i32 0, i32* %ret, align 4, !dbg !915, !tbaa !305
  br label %if.end.41, !dbg !916

if.else:                                          ; preds = %if.then
  %29 = load i32, i32* %ret, align 4, !dbg !917, !tbaa !305
  %cmp8 = icmp eq i32 %29, 13, !dbg !918
  br i1 %cmp8, label %land.lhs.true, label %if.end.40, !dbg !919

land.lhs.true:                                    ; preds = %if.else
  %30 = load i32, i32* %n, align 4, !dbg !920, !tbaa !305
  %cmp10 = icmp eq i32 %30, 2, !dbg !922
  br i1 %cmp10, label %if.then.12, label %if.end.40, !dbg !923

if.then.12:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start(i64 1, i8* %sse0) #2, !dbg !924
  call void @llvm.dbg.declare(metadata i8* %sse0, metadata !218, metadata !289), !dbg !925
  %arrayidx13 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0, !dbg !926
  %31 = load i32, i32* %arrayidx13, align 4, !dbg !926, !tbaa !339
  %cmp14 = icmp uge i32 %31, 3, !dbg !927
  br i1 %cmp14, label %land.rhs, label %land.end, !dbg !928

land.rhs:                                         ; preds = %if.then.12
  %arrayidx16 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0, !dbg !929
  %32 = load i32, i32* %arrayidx16, align 4, !dbg !929, !tbaa !339
  %cmp17 = icmp ule i32 %32, 6, !dbg !931
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.12
  %33 = phi i1 [ false, %if.then.12 ], [ %cmp17, %land.rhs ]
  %frombool = zext i1 %33 to i8, !dbg !932
  store i8 %frombool, i8* %sse0, align 1, !dbg !932, !tbaa !347
  call void @llvm.lifetime.start(i64 1, i8* %sse1) #2, !dbg !934
  call void @llvm.dbg.declare(metadata i8* %sse1, metadata !222, metadata !289), !dbg !935
  %arrayidx19 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1, !dbg !936
  %34 = load i32, i32* %arrayidx19, align 4, !dbg !936, !tbaa !339
  %cmp20 = icmp uge i32 %34, 3, !dbg !937
  br i1 %cmp20, label %land.rhs.22, label %land.end.26, !dbg !938

land.rhs.22:                                      ; preds = %land.end
  %arrayidx23 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1, !dbg !939
  %35 = load i32, i32* %arrayidx23, align 4, !dbg !939, !tbaa !339
  %cmp24 = icmp ule i32 %35, 6, !dbg !940
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.22, %land.end
  %36 = phi i1 [ false, %land.end ], [ %cmp24, %land.rhs.22 ]
  %frombool27 = zext i1 %36 to i8, !dbg !941
  store i8 %frombool27, i8* %sse1, align 1, !dbg !941, !tbaa !347
  %37 = load i8, i8* %sse0, align 1, !dbg !942, !tbaa !347, !range !363
  %tobool = trunc i8 %37 to i1, !dbg !942
  br i1 %tobool, label %if.else.32, label %land.lhs.true.28, !dbg !944

land.lhs.true.28:                                 ; preds = %land.end.26
  %38 = load i8, i8* %sse1, align 1, !dbg !945, !tbaa !347, !range !363
  %tobool29 = trunc i8 %38 to i1, !dbg !945
  br i1 %tobool29, label %if.then.31, label %if.else.32, !dbg !947

if.then.31:                                       ; preds = %land.lhs.true.28
  %39 = load i32, i32* %ret, align 4, !dbg !948, !tbaa !305
  %or = or i32 %39, 256, !dbg !948
  store i32 %or, i32* %ret, align 4, !dbg !948, !tbaa !305
  br label %if.end.39, !dbg !949

if.else.32:                                       ; preds = %land.lhs.true.28, %land.end.26
  %40 = load i8, i8* %sse0, align 1, !dbg !950, !tbaa !347, !range !363
  %tobool33 = trunc i8 %40 to i1, !dbg !950
  br i1 %tobool33, label %land.lhs.true.35, label %if.end, !dbg !952

land.lhs.true.35:                                 ; preds = %if.else.32
  %41 = load i8, i8* %sse1, align 1, !dbg !953, !tbaa !347, !range !363
  %tobool36 = trunc i8 %41 to i1, !dbg !953
  br i1 %tobool36, label %if.end, label %if.then.37, !dbg !955

if.then.37:                                       ; preds = %land.lhs.true.35
  %42 = load i32, i32* %ret, align 4, !dbg !956, !tbaa !305
  %or38 = or i32 %42, 512, !dbg !956
  store i32 %or38, i32* %ret, align 4, !dbg !956, !tbaa !305
  br label %if.end, !dbg !957

if.end:                                           ; preds = %if.then.37, %land.lhs.true.35, %if.else.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then.31
  call void @llvm.lifetime.end(i64 1, i8* %sse1) #2, !dbg !958
  call void @llvm.lifetime.end(i64 1, i8* %sse0) #2, !dbg !958
  br label %if.end.40, !dbg !959

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.7
  %43 = bitcast i32* %n to i8*, !dbg !960
  call void @llvm.lifetime.end(i64 4, i8* %43) #2, !dbg !960
  %44 = bitcast [4 x i32]* %classes to i8*, !dbg !960
  call void @llvm.lifetime.end(i64 16, i8* %44) #2, !dbg !960
  br label %if.end.42, !dbg !961

if.end.42:                                        ; preds = %if.end.41, %entry
  %45 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !962, !tbaa !285
  %nargs43 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %45, i32 0, i32 1, !dbg !963
  %46 = load i32, i32* %nargs43, align 4, !dbg !963, !tbaa !400
  %conv44 = zext i32 %46 to i64, !dbg !962
  store i64 %conv44, i64* %avn, align 8, !dbg !964, !tbaa !396
  %47 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !965, !tbaa !285
  %arg_types45 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %47, i32 0, i32 2, !dbg !966
  %48 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types45, align 8, !dbg !966, !tbaa !412
  store %struct._ffi_type** %48, %struct._ffi_type*** %arg_types, align 8, !dbg !967, !tbaa !285
  store i64 0, i64* %i, align 8, !dbg !968, !tbaa !396
  br label %for.cond, !dbg !969

for.cond:                                         ; preds = %for.inc.145, %if.end.42
  %49 = load i64, i64* %i, align 8, !dbg !970, !tbaa !396
  %50 = load i64, i64* %avn, align 8, !dbg !973, !tbaa !396
  %cmp46 = icmp slt i64 %49, %50, !dbg !974
  br i1 %cmp46, label %for.body, label %for.end.147, !dbg !975

for.body:                                         ; preds = %for.cond
  %51 = bitcast [4 x i32]* %classes48 to i8*, !dbg !976
  call void @llvm.lifetime.start(i64 16, i8* %51) #2, !dbg !976
  call void @llvm.dbg.declare(metadata [4 x i32]* %classes48, metadata !223, metadata !289), !dbg !977
  %52 = bitcast i32* %n49 to i8*, !dbg !978
  call void @llvm.lifetime.start(i64 4, i8* %52) #2, !dbg !978
  call void @llvm.dbg.declare(metadata i32* %n49, metadata !227, metadata !289), !dbg !979
  %53 = load i64, i64* %i, align 8, !dbg !980, !tbaa !396
  %54 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !981, !tbaa !285
  %arrayidx50 = getelementptr %struct._ffi_type*, %struct._ffi_type** %54, i64 %53, !dbg !981
  %55 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx50, align 8, !dbg !981, !tbaa !285
  %arraydecay51 = getelementptr inbounds [4 x i32], [4 x i32]* %classes48, i32 0, i32 0, !dbg !982
  %call52 = call i32 @examine_argument(%struct._ffi_type* %55, i32* %arraydecay51, i1 zeroext false, i32* %ngpr, i32* %nsse), !dbg !983
  store i32 %call52, i32* %n49, align 4, !dbg !984, !tbaa !305
  %56 = load i32, i32* %n49, align 4, !dbg !985, !tbaa !305
  %cmp53 = icmp eq i32 %56, 0, !dbg !986
  br i1 %cmp53, label %if.then.61, label %lor.lhs.false, !dbg !987

lor.lhs.false:                                    ; preds = %for.body
  %57 = load i32, i32* %gprcount, align 4, !dbg !988, !tbaa !305
  %58 = load i32, i32* %ngpr, align 4, !dbg !990, !tbaa !305
  %add = add i32 %57, %58, !dbg !991
  %cmp55 = icmp sgt i32 %add, 6, !dbg !992
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false.57, !dbg !993

lor.lhs.false.57:                                 ; preds = %lor.lhs.false
  %59 = load i32, i32* %ssecount, align 4, !dbg !994, !tbaa !305
  %60 = load i32, i32* %nsse, align 4, !dbg !995, !tbaa !305
  %add58 = add i32 %59, %60, !dbg !996
  %cmp59 = icmp sgt i32 %add58, 8, !dbg !997
  br i1 %cmp59, label %if.then.61, label %if.else.73, !dbg !998

if.then.61:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false, %for.body
  %61 = bitcast i64* %align to i8*, !dbg !999
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !999
  call void @llvm.dbg.declare(metadata i64* %align, metadata !228, metadata !289), !dbg !1000
  %62 = load i64, i64* %i, align 8, !dbg !1001, !tbaa !396
  %63 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !1002, !tbaa !285
  %arrayidx62 = getelementptr %struct._ffi_type*, %struct._ffi_type** %63, i64 %62, !dbg !1002
  %64 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx62, align 8, !dbg !1002, !tbaa !285
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %64, i32 0, i32 1, !dbg !1003
  %65 = load i16, i16* %alignment, align 2, !dbg !1003, !tbaa !434
  %conv63 = zext i16 %65 to i64, !dbg !1002
  store i64 %conv63, i64* %align, align 8, !dbg !1000, !tbaa !396
  %66 = load i64, i64* %align, align 8, !dbg !1004, !tbaa !396
  %cmp64 = icmp slt i64 %66, 8, !dbg !1006
  br i1 %cmp64, label %if.then.66, label %if.end.67, !dbg !1007

if.then.66:                                       ; preds = %if.then.61
  store i64 8, i64* %align, align 8, !dbg !1008, !tbaa !396
  br label %if.end.67, !dbg !1009

if.end.67:                                        ; preds = %if.then.66, %if.then.61
  %67 = load i8*, i8** %argp.addr, align 8, !dbg !1010, !tbaa !285
  %68 = ptrtoint i8* %67 to i64, !dbg !1011
  %sub = sub i64 %68, 1, !dbg !1012
  %69 = load i64, i64* %align, align 8, !dbg !1013, !tbaa !396
  %sub68 = sub i64 %69, 1, !dbg !1014
  %or69 = or i64 %sub, %sub68, !dbg !1015
  %add70 = add i64 %or69, 1, !dbg !1016
  %70 = inttoptr i64 %add70 to i8*, !dbg !1017
  store i8* %70, i8** %argp.addr, align 8, !dbg !1018, !tbaa !285
  %71 = load i8*, i8** %argp.addr, align 8, !dbg !1019, !tbaa !285
  %72 = load i64, i64* %i, align 8, !dbg !1020, !tbaa !396
  %73 = load i8**, i8*** %avalue, align 8, !dbg !1021, !tbaa !285
  %arrayidx71 = getelementptr i8*, i8** %73, i64 %72, !dbg !1021
  store i8* %71, i8** %arrayidx71, align 8, !dbg !1022, !tbaa !285
  %74 = load i64, i64* %i, align 8, !dbg !1023, !tbaa !396
  %75 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8, !dbg !1024, !tbaa !285
  %arrayidx72 = getelementptr %struct._ffi_type*, %struct._ffi_type** %75, i64 %74, !dbg !1024
  %76 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx72, align 8, !dbg !1024, !tbaa !285
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %76, i32 0, i32 0, !dbg !1025
  %77 = load i64, i64* %size, align 8, !dbg !1025, !tbaa !389
  %78 = load i8*, i8** %argp.addr, align 8, !dbg !1026, !tbaa !285
  %add.ptr = getelementptr i8, i8* %78, i64 %77, !dbg !1026
  store i8* %add.ptr, i8** %argp.addr, align 8, !dbg !1026, !tbaa !285
  %79 = bitcast i64* %align to i8*, !dbg !1027
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !1027
  br label %if.end.144, !dbg !1028

if.else.73:                                       ; preds = %lor.lhs.false.57
  %80 = load i32, i32* %n49, align 4, !dbg !1029, !tbaa !305
  %cmp74 = icmp eq i32 %80, 1, !dbg !1030
  br i1 %cmp74, label %if.then.95, label %lor.lhs.false.76, !dbg !1031

lor.lhs.false.76:                                 ; preds = %if.else.73
  %81 = load i32, i32* %n49, align 4, !dbg !1032, !tbaa !305
  %cmp77 = icmp eq i32 %81, 2, !dbg !1034
  br i1 %cmp77, label %land.lhs.true.79, label %if.else.115, !dbg !1035

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %arrayidx80 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0, !dbg !1036
  %82 = load i32, i32* %arrayidx80, align 4, !dbg !1036, !tbaa !339
  %cmp81 = icmp uge i32 %82, 3, !dbg !1038
  br i1 %cmp81, label %land.lhs.true.83, label %lor.lhs.false.87, !dbg !1039

land.lhs.true.83:                                 ; preds = %land.lhs.true.79
  %arrayidx84 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0, !dbg !1040
  %83 = load i32, i32* %arrayidx84, align 4, !dbg !1040, !tbaa !339
  %cmp85 = icmp ule i32 %83, 6, !dbg !1042
  br i1 %cmp85, label %if.else.115, label %lor.lhs.false.87, !dbg !1043

lor.lhs.false.87:                                 ; preds = %land.lhs.true.83, %land.lhs.true.79
  %arrayidx88 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 1, !dbg !1044
  %84 = load i32, i32* %arrayidx88, align 4, !dbg !1044, !tbaa !339
  %cmp89 = icmp uge i32 %84, 3, !dbg !1045
  br i1 %cmp89, label %land.lhs.true.91, label %if.then.95, !dbg !1046

land.lhs.true.91:                                 ; preds = %lor.lhs.false.87
  %arrayidx92 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 1, !dbg !1047
  %85 = load i32, i32* %arrayidx92, align 4, !dbg !1047, !tbaa !339
  %cmp93 = icmp ule i32 %85, 6, !dbg !1048
  br i1 %cmp93, label %if.else.115, label %if.then.95, !dbg !1049

if.then.95:                                       ; preds = %land.lhs.true.91, %lor.lhs.false.87, %if.else.73
  %arrayidx96 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0, !dbg !1050
  %86 = load i32, i32* %arrayidx96, align 4, !dbg !1050, !tbaa !339
  %cmp97 = icmp uge i32 %86, 3, !dbg !1053
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.108, !dbg !1054

land.lhs.true.99:                                 ; preds = %if.then.95
  %arrayidx100 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0, !dbg !1055
  %87 = load i32, i32* %arrayidx100, align 4, !dbg !1055, !tbaa !339
  %cmp101 = icmp ule i32 %87, 6, !dbg !1057
  br i1 %cmp101, label %if.then.103, label %if.else.108, !dbg !1058

if.then.103:                                      ; preds = %land.lhs.true.99
  %88 = load i32, i32* %ssecount, align 4, !dbg !1059, !tbaa !305
  %idxprom104 = sext i32 %88 to i64, !dbg !1061
  %89 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !1061, !tbaa !285
  %sse = getelementptr inbounds %struct.register_args, %struct.register_args* %89, i32 0, i32 1, !dbg !1062
  %arrayidx105 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse, i32 0, i64 %idxprom104, !dbg !1061
  %90 = bitcast %union.big_int_union* %arrayidx105 to i8*, !dbg !1063
  %91 = load i64, i64* %i, align 8, !dbg !1064, !tbaa !396
  %92 = load i8**, i8*** %avalue, align 8, !dbg !1065, !tbaa !285
  %arrayidx106 = getelementptr i8*, i8** %92, i64 %91, !dbg !1065
  store i8* %90, i8** %arrayidx106, align 8, !dbg !1066, !tbaa !285
  %93 = load i32, i32* %n49, align 4, !dbg !1067, !tbaa !305
  %94 = load i32, i32* %ssecount, align 4, !dbg !1068, !tbaa !305
  %add107 = add i32 %94, %93, !dbg !1068
  store i32 %add107, i32* %ssecount, align 4, !dbg !1068, !tbaa !305
  br label %if.end.114, !dbg !1069

if.else.108:                                      ; preds = %land.lhs.true.99, %if.then.95
  %95 = load i32, i32* %gprcount, align 4, !dbg !1070, !tbaa !305
  %idxprom109 = sext i32 %95 to i64, !dbg !1072
  %96 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !1072, !tbaa !285
  %gpr110 = getelementptr inbounds %struct.register_args, %struct.register_args* %96, i32 0, i32 0, !dbg !1073
  %arrayidx111 = getelementptr [6 x i64], [6 x i64]* %gpr110, i32 0, i64 %idxprom109, !dbg !1072
  %97 = bitcast i64* %arrayidx111 to i8*, !dbg !1074
  %98 = load i64, i64* %i, align 8, !dbg !1075, !tbaa !396
  %99 = load i8**, i8*** %avalue, align 8, !dbg !1076, !tbaa !285
  %arrayidx112 = getelementptr i8*, i8** %99, i64 %98, !dbg !1076
  store i8* %97, i8** %arrayidx112, align 8, !dbg !1077, !tbaa !285
  %100 = load i32, i32* %n49, align 4, !dbg !1078, !tbaa !305
  %101 = load i32, i32* %gprcount, align 4, !dbg !1079, !tbaa !305
  %add113 = add i32 %101, %100, !dbg !1079
  store i32 %add113, i32* %gprcount, align 4, !dbg !1079, !tbaa !305
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.108, %if.then.103
  br label %if.end.143, !dbg !1080

if.else.115:                                      ; preds = %land.lhs.true.91, %land.lhs.true.83, %lor.lhs.false.76
  %102 = bitcast i8** %a to i8*, !dbg !1081
  call void @llvm.lifetime.start(i64 8, i8* %102) #2, !dbg !1081
  call void @llvm.dbg.declare(metadata i8** %a, metadata !231, metadata !289), !dbg !1082
  %103 = alloca i8, i64 16, !dbg !1083
  store i8* %103, i8** %a, align 8, !dbg !1082, !tbaa !285
  %104 = bitcast i32* %j to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 4, i8* %104) #2, !dbg !1084
  call void @llvm.dbg.declare(metadata i32* %j, metadata !234, metadata !289), !dbg !1085
  %105 = load i8*, i8** %a, align 8, !dbg !1086, !tbaa !285
  %106 = load i64, i64* %i, align 8, !dbg !1087, !tbaa !396
  %107 = load i8**, i8*** %avalue, align 8, !dbg !1088, !tbaa !285
  %arrayidx116 = getelementptr i8*, i8** %107, i64 %106, !dbg !1088
  store i8* %105, i8** %arrayidx116, align 8, !dbg !1089, !tbaa !285
  store i32 0, i32* %j, align 4, !dbg !1090, !tbaa !305
  br label %for.cond.117, !dbg !1092

for.cond.117:                                     ; preds = %for.inc, %if.else.115
  %108 = load i32, i32* %j, align 4, !dbg !1093, !tbaa !305
  %109 = load i32, i32* %n49, align 4, !dbg !1097, !tbaa !305
  %cmp118 = icmp slt i32 %108, %109, !dbg !1098
  br i1 %cmp118, label %for.body.120, label %for.end, !dbg !1099

for.body.120:                                     ; preds = %for.cond.117
  %110 = load i32, i32* %j, align 4, !dbg !1100, !tbaa !305
  %idxprom121 = sext i32 %110 to i64, !dbg !1103
  %arrayidx122 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 %idxprom121, !dbg !1103
  %111 = load i32, i32* %arrayidx122, align 4, !dbg !1103, !tbaa !339
  %cmp123 = icmp uge i32 %111, 3, !dbg !1104
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.135, !dbg !1105

land.lhs.true.125:                                ; preds = %for.body.120
  %112 = load i32, i32* %j, align 4, !dbg !1106, !tbaa !305
  %idxprom126 = sext i32 %112 to i64, !dbg !1108
  %arrayidx127 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 %idxprom126, !dbg !1108
  %113 = load i32, i32* %arrayidx127, align 4, !dbg !1108, !tbaa !339
  %cmp128 = icmp ule i32 %113, 6, !dbg !1109
  br i1 %cmp128, label %if.then.130, label %if.else.135, !dbg !1110

if.then.130:                                      ; preds = %land.lhs.true.125
  %114 = load i8*, i8** %a, align 8, !dbg !1111, !tbaa !285
  %115 = load i32, i32* %ssecount, align 4, !dbg !1112, !tbaa !305
  %inc131 = add i32 %115, 1, !dbg !1112
  store i32 %inc131, i32* %ssecount, align 4, !dbg !1112, !tbaa !305
  %idxprom132 = sext i32 %115 to i64, !dbg !1113
  %116 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !1113, !tbaa !285
  %sse133 = getelementptr inbounds %struct.register_args, %struct.register_args* %116, i32 0, i32 1, !dbg !1114
  %arrayidx134 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse133, i32 0, i64 %idxprom132, !dbg !1113
  %117 = bitcast %union.big_int_union* %arrayidx134 to i8*, !dbg !1115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %117, i64 8, i32 1, i1 false), !dbg !1115
  br label %if.end.140, !dbg !1115

if.else.135:                                      ; preds = %land.lhs.true.125, %for.body.120
  %118 = load i8*, i8** %a, align 8, !dbg !1116, !tbaa !285
  %119 = load i32, i32* %gprcount, align 4, !dbg !1117, !tbaa !305
  %inc136 = add i32 %119, 1, !dbg !1117
  store i32 %inc136, i32* %gprcount, align 4, !dbg !1117, !tbaa !305
  %idxprom137 = sext i32 %119 to i64, !dbg !1118
  %120 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8, !dbg !1118, !tbaa !285
  %gpr138 = getelementptr inbounds %struct.register_args, %struct.register_args* %120, i32 0, i32 0, !dbg !1119
  %arrayidx139 = getelementptr [6 x i64], [6 x i64]* %gpr138, i32 0, i64 %idxprom137, !dbg !1118
  %121 = bitcast i64* %arrayidx139 to i8*, !dbg !1120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %121, i64 8, i32 1, i1 false), !dbg !1120
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.135, %if.then.130
  br label %for.inc, !dbg !1121

for.inc:                                          ; preds = %if.end.140
  %122 = load i32, i32* %j, align 4, !dbg !1122, !tbaa !305
  %inc141 = add i32 %122, 1, !dbg !1122
  store i32 %inc141, i32* %j, align 4, !dbg !1122, !tbaa !305
  %123 = load i8*, i8** %a, align 8, !dbg !1123, !tbaa !285
  %add.ptr142 = getelementptr i8, i8* %123, i64 8, !dbg !1123
  store i8* %add.ptr142, i8** %a, align 8, !dbg !1123, !tbaa !285
  br label %for.cond.117, !dbg !1124

for.end:                                          ; preds = %for.cond.117
  %124 = bitcast i32* %j to i8*, !dbg !1125
  call void @llvm.lifetime.end(i64 4, i8* %124) #2, !dbg !1125
  %125 = bitcast i8** %a to i8*, !dbg !1125
  call void @llvm.lifetime.end(i64 8, i8* %125) #2, !dbg !1125
  br label %if.end.143

if.end.143:                                       ; preds = %for.end, %if.end.114
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.67
  %126 = bitcast i32* %n49 to i8*, !dbg !1126
  call void @llvm.lifetime.end(i64 4, i8* %126) #2, !dbg !1126
  %127 = bitcast [4 x i32]* %classes48 to i8*, !dbg !1126
  call void @llvm.lifetime.end(i64 16, i8* %127) #2, !dbg !1126
  br label %for.inc.145, !dbg !1127

for.inc.145:                                      ; preds = %if.end.144
  %128 = load i64, i64* %i, align 8, !dbg !1128, !tbaa !396
  %inc146 = add i64 %128, 1, !dbg !1128
  store i64 %inc146, i64* %i, align 8, !dbg !1128, !tbaa !396
  br label %for.cond, !dbg !1129

for.end.147:                                      ; preds = %for.cond
  %129 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !1130, !tbaa !285
  %fun = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %129, i32 0, i32 2, !dbg !1131
  %130 = load void (%struct.ffi_cif*, i8*, i8**, i8*)*, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun, align 8, !dbg !1131, !tbaa !853
  %131 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8, !dbg !1132, !tbaa !285
  %132 = load i8*, i8** %rvalue.addr, align 8, !dbg !1133, !tbaa !285
  %133 = load i8**, i8*** %avalue, align 8, !dbg !1134, !tbaa !285
  %134 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8, !dbg !1135, !tbaa !285
  %user_data = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %134, i32 0, i32 3, !dbg !1136
  %135 = load i8*, i8** %user_data, align 8, !dbg !1136, !tbaa !858
  call void %130(%struct.ffi_cif* %131, i8* %132, i8** %133, i8* %135), !dbg !1130
  %136 = load i32, i32* %ret, align 4, !dbg !1137, !tbaa !305
  %137 = bitcast i32* %ret to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 4, i8* %137) #2, !dbg !1138
  %138 = bitcast i32* %nsse to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 4, i8* %138) #2, !dbg !1138
  %139 = bitcast i32* %ngpr to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 4, i8* %139) #2, !dbg !1138
  %140 = bitcast i32* %ssecount to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 4, i8* %140) #2, !dbg !1138
  %141 = bitcast i32* %gprcount to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 4, i8* %141) #2, !dbg !1138
  %142 = bitcast i64* %avn to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 8, i8* %142) #2, !dbg !1138
  %143 = bitcast i64* %i to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 8, i8* %143) #2, !dbg !1138
  %144 = bitcast %struct._ffi_type*** %arg_types to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 8, i8* %144) #2, !dbg !1138
  %145 = bitcast i8*** %avalue to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 8, i8* %145) #2, !dbg !1138
  %146 = bitcast %struct.ffi_cif** %cif to i8*, !dbg !1138
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !1138
  ret i32 %136, !dbg !1139
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
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %type.addr, metadata !254, metadata !289), !dbg !1140
  store i32* %classes, i32** %classes.addr, align 8, !tbaa !285
  call void @llvm.dbg.declare(metadata i32** %classes.addr, metadata !255, metadata !289), !dbg !1141
  store i64 %byte_offset, i64* %byte_offset.addr, align 8, !tbaa !396
  call void @llvm.dbg.declare(metadata i64* %byte_offset.addr, metadata !256, metadata !289), !dbg !1142
  %0 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1143, !tbaa !285
  %type1 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %0, i32 0, i32 2, !dbg !1144
  %1 = load i16, i16* %type1, align 2, !dbg !1144, !tbaa !313
  %conv = zext i16 %1 to i32, !dbg !1143
  br label %NodeBlock.9

NodeBlock.9:                                      ; preds = %entry
  %Pivot.10 = icmp slt i32 %conv, 5
  br i1 %Pivot.10, label %NodeBlock.1, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %conv, 13
  br i1 %Pivot.8, label %sw.bb, label %NodeBlock.5

NodeBlock.5:                                      ; preds = %NodeBlock.7
  %Pivot.6 = icmp slt i32 %conv, 14
  br i1 %Pivot.6, label %sw.bb.36, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock.5
  %SwitchLeaf4 = icmp eq i32 %conv, 14
  br i1 %SwitchLeaf4, label %sw.bb, label %NewDefault

NodeBlock.1:                                      ; preds = %NodeBlock.9
  %Pivot.2 = icmp slt i32 %conv, 3
  br i1 %Pivot.2, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.1
  %Pivot = icmp slt i32 %conv, 4
  br i1 %Pivot, label %sw.bb.31, label %sw.bb.33

LeafBlock:                                        ; preds = %NodeBlock.1
  %SwitchLeaf = icmp eq i32 %conv, 2
  br i1 %SwitchLeaf, label %sw.bb.25, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock.7, %LeafBlock.3
  %2 = bitcast i32* %size to i8*, !dbg !1145
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1145
  call void @llvm.dbg.declare(metadata i32* %size, metadata !257, metadata !289), !dbg !1146
  %3 = load i64, i64* %byte_offset.addr, align 8, !dbg !1147, !tbaa !396
  %4 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1148, !tbaa !285
  %size2 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %4, i32 0, i32 0, !dbg !1149
  %5 = load i64, i64* %size2, align 8, !dbg !1149, !tbaa !389
  %add = add i64 %3, %5, !dbg !1150
  %conv3 = trunc i64 %add to i32, !dbg !1147
  store i32 %conv3, i32* %size, align 4, !dbg !1146, !tbaa !305
  %6 = load i32, i32* %size, align 4, !dbg !1151, !tbaa !305
  %cmp = icmp sle i32 %6, 4, !dbg !1153
  br i1 %cmp, label %if.then, label %if.else, !dbg !1154

if.then:                                          ; preds = %sw.bb
  %7 = load i32*, i32** %classes.addr, align 8, !dbg !1155, !tbaa !285
  %arrayidx = getelementptr i32, i32* %7, i64 0, !dbg !1155
  store i32 2, i32* %arrayidx, align 4, !dbg !1157, !tbaa !339
  store i32 1, i32* %retval, !dbg !1158
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1158

if.else:                                          ; preds = %sw.bb
  %8 = load i32, i32* %size, align 4, !dbg !1159, !tbaa !305
  %cmp5 = icmp sle i32 %8, 8, !dbg !1161
  br i1 %cmp5, label %if.then.7, label %if.else.9, !dbg !1162

if.then.7:                                        ; preds = %if.else
  %9 = load i32*, i32** %classes.addr, align 8, !dbg !1163, !tbaa !285
  %arrayidx8 = getelementptr i32, i32* %9, i64 0, !dbg !1163
  store i32 1, i32* %arrayidx8, align 4, !dbg !1165, !tbaa !339
  store i32 1, i32* %retval, !dbg !1166
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1166

if.else.9:                                        ; preds = %if.else
  %10 = load i32, i32* %size, align 4, !dbg !1167, !tbaa !305
  %cmp10 = icmp sle i32 %10, 12, !dbg !1169
  br i1 %cmp10, label %if.then.12, label %if.else.15, !dbg !1170

if.then.12:                                       ; preds = %if.else.9
  %11 = load i32*, i32** %classes.addr, align 8, !dbg !1171, !tbaa !285
  %arrayidx13 = getelementptr i32, i32* %11, i64 0, !dbg !1171
  store i32 1, i32* %arrayidx13, align 4, !dbg !1173, !tbaa !339
  %12 = load i32*, i32** %classes.addr, align 8, !dbg !1174, !tbaa !285
  %arrayidx14 = getelementptr i32, i32* %12, i64 1, !dbg !1174
  store i32 2, i32* %arrayidx14, align 4, !dbg !1175, !tbaa !339
  store i32 2, i32* %retval, !dbg !1176
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1176

if.else.15:                                       ; preds = %if.else.9
  %13 = load i32, i32* %size, align 4, !dbg !1177, !tbaa !305
  %cmp16 = icmp sle i32 %13, 16, !dbg !1179
  br i1 %cmp16, label %if.then.18, label %if.else.21, !dbg !1180

if.then.18:                                       ; preds = %if.else.15
  %14 = load i32*, i32** %classes.addr, align 8, !dbg !1181, !tbaa !285
  %arrayidx19 = getelementptr i32, i32* %14, i64 1, !dbg !1181
  store i32 2, i32* %arrayidx19, align 4, !dbg !1183, !tbaa !339
  %15 = load i32*, i32** %classes.addr, align 8, !dbg !1184, !tbaa !285
  %arrayidx20 = getelementptr i32, i32* %15, i64 0, !dbg !1184
  store i32 2, i32* %arrayidx20, align 4, !dbg !1185, !tbaa !339
  store i32 2, i32* %retval, !dbg !1186
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1186

if.else.21:                                       ; preds = %if.else.15
  br label %if.end

if.end:                                           ; preds = %if.else.21
  br label %if.end.22

if.end.22:                                        ; preds = %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  store i32 0, i32* %cleanup.dest.slot, !dbg !1187
  br label %cleanup, !dbg !1187

cleanup:                                          ; preds = %if.end.24, %if.then.18, %if.then.12, %if.then.7, %if.then
  %16 = bitcast i32* %size to i8*, !dbg !1188
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !1188
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.12

LeafBlock.12:                                     ; preds = %cleanup
  %SwitchLeaf13 = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf13, label %return, label %NewDefault.11

NewDefault.11:                                    ; preds = %LeafBlock.12
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault.11
  br label %sw.bb.25, !dbg !1190

sw.bb.25:                                         ; preds = %LeafBlock, %cleanup.cont
  %17 = load i64, i64* %byte_offset.addr, align 8, !dbg !1191, !tbaa !396
  %rem = urem i64 %17, 8, !dbg !1193
  %tobool = icmp ne i64 %rem, 0, !dbg !1193
  br i1 %tobool, label %if.else.28, label %if.then.26, !dbg !1194

if.then.26:                                       ; preds = %sw.bb.25
  %18 = load i32*, i32** %classes.addr, align 8, !dbg !1195, !tbaa !285
  %arrayidx27 = getelementptr i32, i32* %18, i64 0, !dbg !1195
  store i32 4, i32* %arrayidx27, align 4, !dbg !1196, !tbaa !339
  br label %if.end.30, !dbg !1195

if.else.28:                                       ; preds = %sw.bb.25
  %19 = load i32*, i32** %classes.addr, align 8, !dbg !1197, !tbaa !285
  %arrayidx29 = getelementptr i32, i32* %19, i64 0, !dbg !1197
  store i32 3, i32* %arrayidx29, align 4, !dbg !1198, !tbaa !339
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  store i32 1, i32* %retval, !dbg !1199
  br label %return, !dbg !1199

sw.bb.31:                                         ; preds = %NodeBlock
  %20 = load i32*, i32** %classes.addr, align 8, !dbg !1200, !tbaa !285
  %arrayidx32 = getelementptr i32, i32* %20, i64 0, !dbg !1200
  store i32 5, i32* %arrayidx32, align 4, !dbg !1201, !tbaa !339
  store i32 1, i32* %retval, !dbg !1202
  br label %return, !dbg !1202

sw.bb.33:                                         ; preds = %NodeBlock
  %21 = load i32*, i32** %classes.addr, align 8, !dbg !1203, !tbaa !285
  %arrayidx34 = getelementptr i32, i32* %21, i64 0, !dbg !1203
  store i32 7, i32* %arrayidx34, align 4, !dbg !1204, !tbaa !339
  %22 = load i32*, i32** %classes.addr, align 8, !dbg !1205, !tbaa !285
  %arrayidx35 = getelementptr i32, i32* %22, i64 1, !dbg !1205
  store i32 8, i32* %arrayidx35, align 4, !dbg !1206, !tbaa !339
  store i32 2, i32* %retval, !dbg !1207
  br label %return, !dbg !1207

sw.bb.36:                                         ; preds = %NodeBlock.5
  %23 = bitcast i32* %UNITS_PER_WORD to i8*, !dbg !1208
  call void @llvm.lifetime.start(i64 4, i8* %23) #2, !dbg !1208
  call void @llvm.dbg.declare(metadata i32* %UNITS_PER_WORD, metadata !260, metadata !289), !dbg !1209
  store i32 8, i32* %UNITS_PER_WORD, align 4, !dbg !1209, !tbaa !305
  %24 = bitcast i32* %words to i8*, !dbg !1210
  call void @llvm.lifetime.start(i64 4, i8* %24) #2, !dbg !1210
  call void @llvm.dbg.declare(metadata i32* %words, metadata !263, metadata !289), !dbg !1211
  %25 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1212, !tbaa !285
  %size37 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %25, i32 0, i32 0, !dbg !1213
  %26 = load i64, i64* %size37, align 8, !dbg !1213, !tbaa !389
  %add38 = add i64 %26, 8, !dbg !1214
  %sub = sub i64 %add38, 1, !dbg !1215
  %div = udiv i64 %sub, 8, !dbg !1216
  %conv39 = trunc i64 %div to i32, !dbg !1217
  store i32 %conv39, i32* %words, align 4, !dbg !1211, !tbaa !305
  %27 = bitcast %struct._ffi_type*** %ptr to i8*, !dbg !1218
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !1218
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %ptr, metadata !264, metadata !289), !dbg !1219
  %28 = bitcast i32* %i to i8*, !dbg !1220
  call void @llvm.lifetime.start(i64 4, i8* %28) #2, !dbg !1220
  call void @llvm.dbg.declare(metadata i32* %i, metadata !265, metadata !289), !dbg !1221
  %29 = bitcast [4 x i32]* %subclasses to i8*, !dbg !1222
  call void @llvm.lifetime.start(i64 16, i8* %29) #2, !dbg !1222
  call void @llvm.dbg.declare(metadata [4 x i32]* %subclasses, metadata !266, metadata !289), !dbg !1223
  %30 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1224, !tbaa !285
  %size40 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %30, i32 0, i32 0, !dbg !1226
  %31 = load i64, i64* %size40, align 8, !dbg !1226, !tbaa !389
  %cmp41 = icmp ugt i64 %31, 32, !dbg !1227
  br i1 %cmp41, label %if.then.43, label %if.end.44, !dbg !1228

if.then.43:                                       ; preds = %sw.bb.36
  store i32 0, i32* %retval, !dbg !1229
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1229

if.end.44:                                        ; preds = %sw.bb.36
  store i32 0, i32* %i, align 4, !dbg !1230, !tbaa !305
  br label %for.cond, !dbg !1232

for.cond:                                         ; preds = %for.inc, %if.end.44
  %32 = load i32, i32* %i, align 4, !dbg !1233, !tbaa !305
  %33 = load i32, i32* %words, align 4, !dbg !1237, !tbaa !305
  %cmp45 = icmp slt i32 %32, %33, !dbg !1238
  br i1 %cmp45, label %for.body, label %for.end, !dbg !1239

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4, !dbg !1240, !tbaa !305
  %idxprom = sext i32 %34 to i64, !dbg !1241
  %35 = load i32*, i32** %classes.addr, align 8, !dbg !1241, !tbaa !285
  %arrayidx47 = getelementptr i32, i32* %35, i64 %idxprom, !dbg !1241
  store i32 0, i32* %arrayidx47, align 4, !dbg !1242, !tbaa !339
  br label %for.inc, !dbg !1241

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !dbg !1243, !tbaa !305
  %inc = add i32 %36, 1, !dbg !1243
  store i32 %inc, i32* %i, align 4, !dbg !1243, !tbaa !305
  br label %for.cond, !dbg !1244

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %words, align 4, !dbg !1245, !tbaa !305
  %tobool48 = icmp ne i32 %37, 0, !dbg !1245
  br i1 %tobool48, label %if.end.51, label %if.then.49, !dbg !1247

if.then.49:                                       ; preds = %for.end
  %38 = load i32*, i32** %classes.addr, align 8, !dbg !1248, !tbaa !285
  %arrayidx50 = getelementptr i32, i32* %38, i64 0, !dbg !1248
  store i32 0, i32* %arrayidx50, align 4, !dbg !1250, !tbaa !339
  store i32 1, i32* %retval, !dbg !1251
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1251

if.end.51:                                        ; preds = %for.end
  %39 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8, !dbg !1252, !tbaa !285
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %39, i32 0, i32 3, !dbg !1253
  %40 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8, !dbg !1253, !tbaa !1254
  store %struct._ffi_type** %40, %struct._ffi_type*** %ptr, align 8, !dbg !1255, !tbaa !285
  br label %for.cond.52, !dbg !1256

for.cond.52:                                      ; preds = %for.inc.89, %if.end.51
  %41 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1257, !tbaa !285
  %42 = load %struct._ffi_type*, %struct._ffi_type** %41, align 8, !dbg !1260, !tbaa !285
  %cmp53 = icmp ne %struct._ffi_type* %42, null, !dbg !1261
  br i1 %cmp53, label %for.body.55, label %for.end.90, !dbg !1262

for.body.55:                                      ; preds = %for.cond.52
  %43 = bitcast i32* %num to i8*, !dbg !1263
  call void @llvm.lifetime.start(i64 4, i8* %43) #2, !dbg !1263
  call void @llvm.dbg.declare(metadata i32* %num, metadata !267, metadata !289), !dbg !1264
  %44 = load i64, i64* %byte_offset.addr, align 8, !dbg !1265, !tbaa !396
  %sub56 = sub i64 %44, 1, !dbg !1266
  %45 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1267, !tbaa !285
  %46 = load %struct._ffi_type*, %struct._ffi_type** %45, align 8, !dbg !1268, !tbaa !285
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %46, i32 0, i32 1, !dbg !1269
  %47 = load i16, i16* %alignment, align 2, !dbg !1269, !tbaa !434
  %conv57 = zext i16 %47 to i32, !dbg !1270
  %sub58 = sub i32 %conv57, 1, !dbg !1271
  %conv59 = sext i32 %sub58 to i64, !dbg !1272
  %or = or i64 %sub56, %conv59, !dbg !1273
  %add60 = add i64 %or, 1, !dbg !1274
  store i64 %add60, i64* %byte_offset.addr, align 8, !dbg !1275, !tbaa !396
  %48 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1276, !tbaa !285
  %49 = load %struct._ffi_type*, %struct._ffi_type** %48, align 8, !dbg !1277, !tbaa !285
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %subclasses, i32 0, i32 0, !dbg !1278
  %50 = load i64, i64* %byte_offset.addr, align 8, !dbg !1279, !tbaa !396
  %rem61 = urem i64 %50, 8, !dbg !1280
  %call = call i32 @classify_argument(%struct._ffi_type* %49, i32* %arraydecay, i64 %rem61), !dbg !1281
  store i32 %call, i32* %num, align 4, !dbg !1282, !tbaa !305
  %51 = load i32, i32* %num, align 4, !dbg !1283, !tbaa !305
  %cmp62 = icmp eq i32 %51, 0, !dbg !1285
  br i1 %cmp62, label %if.then.64, label %if.end.65, !dbg !1286

if.then.64:                                       ; preds = %for.body.55
  store i32 0, i32* %retval, !dbg !1287
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86, !dbg !1287

if.end.65:                                        ; preds = %for.body.55
  store i32 0, i32* %i, align 4, !dbg !1288, !tbaa !305
  br label %for.cond.66, !dbg !1289

for.cond.66:                                      ; preds = %for.inc.81, %if.end.65
  %52 = load i32, i32* %i, align 4, !dbg !1290, !tbaa !305
  %53 = load i32, i32* %num, align 4, !dbg !1293, !tbaa !305
  %cmp67 = icmp slt i32 %52, %53, !dbg !1294
  br i1 %cmp67, label %for.body.69, label %for.end.83, !dbg !1295

for.body.69:                                      ; preds = %for.cond.66
  %54 = bitcast i32* %pos to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 4, i8* %54) #2, !dbg !1296
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !271, metadata !289), !dbg !1297
  %55 = load i64, i64* %byte_offset.addr, align 8, !dbg !1298, !tbaa !396
  %div70 = udiv i64 %55, 8, !dbg !1299
  %conv71 = trunc i64 %div70 to i32, !dbg !1298
  store i32 %conv71, i32* %pos, align 4, !dbg !1297, !tbaa !305
  %56 = load i32, i32* %i, align 4, !dbg !1300, !tbaa !305
  %idxprom72 = sext i32 %56 to i64, !dbg !1301
  %arrayidx73 = getelementptr [4 x i32], [4 x i32]* %subclasses, i32 0, i64 %idxprom72, !dbg !1301
  %57 = load i32, i32* %arrayidx73, align 4, !dbg !1301, !tbaa !339
  %58 = load i32, i32* %i, align 4, !dbg !1302, !tbaa !305
  %59 = load i32, i32* %pos, align 4, !dbg !1303, !tbaa !305
  %add74 = add i32 %58, %59, !dbg !1304
  %idxprom75 = sext i32 %add74 to i64, !dbg !1305
  %60 = load i32*, i32** %classes.addr, align 8, !dbg !1305, !tbaa !285
  %arrayidx76 = getelementptr i32, i32* %60, i64 %idxprom75, !dbg !1305
  %61 = load i32, i32* %arrayidx76, align 4, !dbg !1305, !tbaa !339
  %call77 = call i32 @merge_classes(i32 %57, i32 %61), !dbg !1306
  %62 = load i32, i32* %i, align 4, !dbg !1307, !tbaa !305
  %63 = load i32, i32* %pos, align 4, !dbg !1308, !tbaa !305
  %add78 = add i32 %62, %63, !dbg !1309
  %idxprom79 = sext i32 %add78 to i64, !dbg !1310
  %64 = load i32*, i32** %classes.addr, align 8, !dbg !1310, !tbaa !285
  %arrayidx80 = getelementptr i32, i32* %64, i64 %idxprom79, !dbg !1310
  store i32 %call77, i32* %arrayidx80, align 4, !dbg !1311, !tbaa !339
  %65 = bitcast i32* %pos to i8*, !dbg !1312
  call void @llvm.lifetime.end(i64 4, i8* %65) #2, !dbg !1312
  br label %for.inc.81, !dbg !1313

for.inc.81:                                       ; preds = %for.body.69
  %66 = load i32, i32* %i, align 4, !dbg !1314, !tbaa !305
  %inc82 = add i32 %66, 1, !dbg !1314
  store i32 %inc82, i32* %i, align 4, !dbg !1314, !tbaa !305
  br label %for.cond.66, !dbg !1315

for.end.83:                                       ; preds = %for.cond.66
  %67 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1316, !tbaa !285
  %68 = load %struct._ffi_type*, %struct._ffi_type** %67, align 8, !dbg !1317, !tbaa !285
  %size84 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %68, i32 0, i32 0, !dbg !1318
  %69 = load i64, i64* %size84, align 8, !dbg !1318, !tbaa !389
  %70 = load i64, i64* %byte_offset.addr, align 8, !dbg !1319, !tbaa !396
  %add85 = add i64 %70, %69, !dbg !1319
  store i64 %add85, i64* %byte_offset.addr, align 8, !dbg !1319, !tbaa !396
  store i32 0, i32* %cleanup.dest.slot, !dbg !1320
  br label %cleanup.86, !dbg !1320

cleanup.86:                                       ; preds = %for.end.83, %if.then.64
  %71 = bitcast i32* %num to i8*, !dbg !1321
  call void @llvm.lifetime.end(i64 4, i8* %71) #2, !dbg !1321
  %cleanup.dest.87 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.15

LeafBlock.15:                                     ; preds = %cleanup.86
  %SwitchLeaf16 = icmp eq i32 %cleanup.dest.87, 0
  br i1 %SwitchLeaf16, label %cleanup.cont.88, label %NewDefault.14

cleanup.cont.88:                                  ; preds = %LeafBlock.15
  br label %for.inc.89, !dbg !1322

for.inc.89:                                       ; preds = %cleanup.cont.88
  %72 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8, !dbg !1323, !tbaa !285
  %incdec.ptr = getelementptr %struct._ffi_type*, %struct._ffi_type** %72, i32 1, !dbg !1323
  store %struct._ffi_type** %incdec.ptr, %struct._ffi_type*** %ptr, align 8, !dbg !1323, !tbaa !285
  br label %for.cond.52, !dbg !1324

for.end.90:                                       ; preds = %for.cond.52
  %73 = load i32, i32* %words, align 4, !dbg !1325, !tbaa !305
  %cmp91 = icmp sgt i32 %73, 2, !dbg !1327
  br i1 %cmp91, label %if.then.93, label %if.end.112, !dbg !1328

if.then.93:                                       ; preds = %for.end.90
  %74 = load i32*, i32** %classes.addr, align 8, !dbg !1329, !tbaa !285
  %arrayidx94 = getelementptr i32, i32* %74, i64 0, !dbg !1329
  %75 = load i32, i32* %arrayidx94, align 4, !dbg !1329, !tbaa !339
  %cmp95 = icmp ne i32 %75, 3, !dbg !1332
  br i1 %cmp95, label %if.then.97, label %if.end.98, !dbg !1333

if.then.97:                                       ; preds = %if.then.93
  store i32 0, i32* %retval, !dbg !1334
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1334

if.end.98:                                        ; preds = %if.then.93
  store i32 1, i32* %i, align 4, !dbg !1335, !tbaa !305
  br label %for.cond.99, !dbg !1337

for.cond.99:                                      ; preds = %for.inc.109, %if.end.98
  %76 = load i32, i32* %i, align 4, !dbg !1338, !tbaa !305
  %77 = load i32, i32* %words, align 4, !dbg !1342, !tbaa !305
  %cmp100 = icmp slt i32 %76, %77, !dbg !1343
  br i1 %cmp100, label %for.body.102, label %for.end.111, !dbg !1344

for.body.102:                                     ; preds = %for.cond.99
  %78 = load i32, i32* %i, align 4, !dbg !1345, !tbaa !305
  %idxprom103 = sext i32 %78 to i64, !dbg !1347
  %79 = load i32*, i32** %classes.addr, align 8, !dbg !1347, !tbaa !285
  %arrayidx104 = getelementptr i32, i32* %79, i64 %idxprom103, !dbg !1347
  %80 = load i32, i32* %arrayidx104, align 4, !dbg !1347, !tbaa !339
  %cmp105 = icmp ne i32 %80, 6, !dbg !1348
  br i1 %cmp105, label %if.then.107, label %if.end.108, !dbg !1349

if.then.107:                                      ; preds = %for.body.102
  store i32 0, i32* %retval, !dbg !1350
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1350

if.end.108:                                       ; preds = %for.body.102
  br label %for.inc.109, !dbg !1351

for.inc.109:                                      ; preds = %if.end.108
  %81 = load i32, i32* %i, align 4, !dbg !1353, !tbaa !305
  %inc110 = add i32 %81, 1, !dbg !1353
  store i32 %inc110, i32* %i, align 4, !dbg !1353, !tbaa !305
  br label %for.cond.99, !dbg !1354

for.end.111:                                      ; preds = %for.cond.99
  br label %if.end.112, !dbg !1355

if.end.112:                                       ; preds = %for.end.111, %for.end.90
  store i32 0, i32* %i, align 4, !dbg !1356, !tbaa !305
  br label %for.cond.113, !dbg !1358

for.cond.113:                                     ; preds = %for.inc.154, %if.end.112
  %82 = load i32, i32* %i, align 4, !dbg !1359, !tbaa !305
  %83 = load i32, i32* %words, align 4, !dbg !1363, !tbaa !305
  %cmp114 = icmp slt i32 %82, %83, !dbg !1364
  br i1 %cmp114, label %for.body.116, label %for.end.156, !dbg !1365

for.body.116:                                     ; preds = %for.cond.113
  %84 = load i32, i32* %i, align 4, !dbg !1366, !tbaa !305
  %idxprom117 = sext i32 %84 to i64, !dbg !1369
  %85 = load i32*, i32** %classes.addr, align 8, !dbg !1369, !tbaa !285
  %arrayidx118 = getelementptr i32, i32* %85, i64 %idxprom117, !dbg !1369
  %86 = load i32, i32* %arrayidx118, align 4, !dbg !1369, !tbaa !339
  %cmp119 = icmp eq i32 %86, 10, !dbg !1370
  br i1 %cmp119, label %if.then.121, label %if.end.122, !dbg !1371

if.then.121:                                      ; preds = %for.body.116
  store i32 0, i32* %retval, !dbg !1372
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1372

if.end.122:                                       ; preds = %for.body.116
  %87 = load i32, i32* %i, align 4, !dbg !1373, !tbaa !305
  %idxprom123 = sext i32 %87 to i64, !dbg !1375
  %88 = load i32*, i32** %classes.addr, align 8, !dbg !1375, !tbaa !285
  %arrayidx124 = getelementptr i32, i32* %88, i64 %idxprom123, !dbg !1375
  %89 = load i32, i32* %arrayidx124, align 4, !dbg !1375, !tbaa !339
  %cmp125 = icmp eq i32 %89, 6, !dbg !1376
  br i1 %cmp125, label %land.lhs.true, label %if.end.141, !dbg !1377

land.lhs.true:                                    ; preds = %if.end.122
  %90 = load i32, i32* %i, align 4, !dbg !1378, !tbaa !305
  %sub127 = sub i32 %90, 1, !dbg !1380
  %idxprom128 = sext i32 %sub127 to i64, !dbg !1381
  %91 = load i32*, i32** %classes.addr, align 8, !dbg !1381, !tbaa !285
  %arrayidx129 = getelementptr i32, i32* %91, i64 %idxprom128, !dbg !1381
  %92 = load i32, i32* %arrayidx129, align 4, !dbg !1381, !tbaa !339
  %cmp130 = icmp ne i32 %92, 3, !dbg !1382
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.141, !dbg !1383

land.lhs.true.132:                                ; preds = %land.lhs.true
  %93 = load i32, i32* %i, align 4, !dbg !1384, !tbaa !305
  %sub133 = sub i32 %93, 1, !dbg !1385
  %idxprom134 = sext i32 %sub133 to i64, !dbg !1386
  %94 = load i32*, i32** %classes.addr, align 8, !dbg !1386, !tbaa !285
  %arrayidx135 = getelementptr i32, i32* %94, i64 %idxprom134, !dbg !1386
  %95 = load i32, i32* %arrayidx135, align 4, !dbg !1386, !tbaa !339
  %cmp136 = icmp ne i32 %95, 6, !dbg !1387
  br i1 %cmp136, label %if.then.138, label %if.end.141, !dbg !1388

if.then.138:                                      ; preds = %land.lhs.true.132
  %96 = load i32, i32* %i, align 4, !dbg !1389, !tbaa !305
  %idxprom139 = sext i32 %96 to i64, !dbg !1391
  %97 = load i32*, i32** %classes.addr, align 8, !dbg !1391, !tbaa !285
  %arrayidx140 = getelementptr i32, i32* %97, i64 %idxprom139, !dbg !1391
  store i32 3, i32* %arrayidx140, align 4, !dbg !1392, !tbaa !339
  br label %if.end.141, !dbg !1393

if.end.141:                                       ; preds = %if.then.138, %land.lhs.true.132, %land.lhs.true, %if.end.122
  %98 = load i32, i32* %i, align 4, !dbg !1394, !tbaa !305
  %idxprom142 = sext i32 %98 to i64, !dbg !1396
  %99 = load i32*, i32** %classes.addr, align 8, !dbg !1396, !tbaa !285
  %arrayidx143 = getelementptr i32, i32* %99, i64 %idxprom142, !dbg !1396
  %100 = load i32, i32* %arrayidx143, align 4, !dbg !1396, !tbaa !339
  %cmp144 = icmp eq i32 %100, 8, !dbg !1397
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.153, !dbg !1398

land.lhs.true.146:                                ; preds = %if.end.141
  %101 = load i32, i32* %i, align 4, !dbg !1399, !tbaa !305
  %sub147 = sub i32 %101, 1, !dbg !1401
  %idxprom148 = sext i32 %sub147 to i64, !dbg !1402
  %102 = load i32*, i32** %classes.addr, align 8, !dbg !1402, !tbaa !285
  %arrayidx149 = getelementptr i32, i32* %102, i64 %idxprom148, !dbg !1402
  %103 = load i32, i32* %arrayidx149, align 4, !dbg !1402, !tbaa !339
  %cmp150 = icmp ne i32 %103, 7, !dbg !1403
  br i1 %cmp150, label %if.then.152, label %if.end.153, !dbg !1404

if.then.152:                                      ; preds = %land.lhs.true.146
  store i32 0, i32* %retval, !dbg !1405
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1405

if.end.153:                                       ; preds = %land.lhs.true.146, %if.end.141
  br label %for.inc.154, !dbg !1407

for.inc.154:                                      ; preds = %if.end.153
  %104 = load i32, i32* %i, align 4, !dbg !1408, !tbaa !305
  %inc155 = add i32 %104, 1, !dbg !1408
  store i32 %inc155, i32* %i, align 4, !dbg !1408, !tbaa !305
  br label %for.cond.113, !dbg !1409

for.end.156:                                      ; preds = %for.cond.113
  %105 = load i32, i32* %words, align 4, !dbg !1410, !tbaa !305
  store i32 %105, i32* %retval, !dbg !1411
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !1411

NewDefault.14:                                    ; preds = %LeafBlock.15
  br label %cleanup.157

cleanup.157:                                      ; preds = %NewDefault.14, %for.end.156, %if.then.152, %if.then.121, %if.then.107, %if.then.97, %if.then.49, %if.then.43
  %106 = bitcast [4 x i32]* %subclasses to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 16, i8* %106) #2, !dbg !1412
  %107 = bitcast i32* %i to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 4, i8* %107) #2, !dbg !1412
  %108 = bitcast %struct._ffi_type*** %ptr to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !1412
  %109 = bitcast i32* %words to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 4, i8* %109) #2, !dbg !1412
  %110 = bitcast i32* %UNITS_PER_WORD to i8*, !dbg !1412
  call void @llvm.lifetime.end(i64 4, i8* %110) #2, !dbg !1412
  br label %return

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !1413

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval, !dbg !1414
  br label %return, !dbg !1414

return:                                           ; preds = %LeafBlock.12, %sw.epilog, %cleanup.157, %sw.bb.33, %sw.bb.31, %if.end.30
  %111 = load i32, i32* %retval, !dbg !1415
  ret i32 %111, !dbg !1415
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_classes(i32 %class1, i32 %class2) #5 {
entry:
  %retval = alloca i32, align 4
  %class1.addr = alloca i32, align 4
  %class2.addr = alloca i32, align 4
  store i32 %class1, i32* %class1.addr, align 4, !tbaa !339
  call void @llvm.dbg.declare(metadata i32* %class1.addr, metadata !279, metadata !289), !dbg !1416
  store i32 %class2, i32* %class2.addr, align 4, !tbaa !339
  call void @llvm.dbg.declare(metadata i32* %class2.addr, metadata !280, metadata !289), !dbg !1417
  %0 = load i32, i32* %class1.addr, align 4, !dbg !1418, !tbaa !339
  %1 = load i32, i32* %class2.addr, align 4, !dbg !1420, !tbaa !339
  %cmp = icmp eq i32 %0, %1, !dbg !1421
  br i1 %cmp, label %if.then, label %if.end, !dbg !1422

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %class1.addr, align 4, !dbg !1423, !tbaa !339
  store i32 %2, i32* %retval, !dbg !1424
  br label %return, !dbg !1424

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %class1.addr, align 4, !dbg !1425, !tbaa !339
  %cmp1 = icmp eq i32 %3, 0, !dbg !1427
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1428

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %class2.addr, align 4, !dbg !1429, !tbaa !339
  store i32 %4, i32* %retval, !dbg !1430
  br label %return, !dbg !1430

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* %class2.addr, align 4, !dbg !1431, !tbaa !339
  %cmp4 = icmp eq i32 %5, 0, !dbg !1433
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1434

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32, i32* %class1.addr, align 4, !dbg !1435, !tbaa !339
  store i32 %6, i32* %retval, !dbg !1436
  br label %return, !dbg !1436

if.end.6:                                         ; preds = %if.end.3
  %7 = load i32, i32* %class1.addr, align 4, !dbg !1437, !tbaa !339
  %cmp7 = icmp eq i32 %7, 10, !dbg !1439
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false, !dbg !1440

lor.lhs.false:                                    ; preds = %if.end.6
  %8 = load i32, i32* %class2.addr, align 4, !dbg !1441, !tbaa !339
  %cmp8 = icmp eq i32 %8, 10, !dbg !1443
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1444

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.6
  store i32 10, i32* %retval, !dbg !1445
  br label %return, !dbg !1445

if.end.10:                                        ; preds = %lor.lhs.false
  %9 = load i32, i32* %class1.addr, align 4, !dbg !1446, !tbaa !339
  %cmp11 = icmp eq i32 %9, 2, !dbg !1448
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false.13, !dbg !1449

land.lhs.true:                                    ; preds = %if.end.10
  %10 = load i32, i32* %class2.addr, align 4, !dbg !1450, !tbaa !339
  %cmp12 = icmp eq i32 %10, 4, !dbg !1452
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false.13, !dbg !1453

lor.lhs.false.13:                                 ; preds = %land.lhs.true, %if.end.10
  %11 = load i32, i32* %class2.addr, align 4, !dbg !1454, !tbaa !339
  %cmp14 = icmp eq i32 %11, 2, !dbg !1455
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.18, !dbg !1456

land.lhs.true.15:                                 ; preds = %lor.lhs.false.13
  %12 = load i32, i32* %class1.addr, align 4, !dbg !1457, !tbaa !339
  %cmp16 = icmp eq i32 %12, 4, !dbg !1459
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !1460

if.then.17:                                       ; preds = %land.lhs.true.15, %land.lhs.true
  store i32 2, i32* %retval, !dbg !1461
  br label %return, !dbg !1461

if.end.18:                                        ; preds = %land.lhs.true.15, %lor.lhs.false.13
  %13 = load i32, i32* %class1.addr, align 4, !dbg !1462, !tbaa !339
  %cmp19 = icmp eq i32 %13, 1, !dbg !1464
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.20, !dbg !1465

lor.lhs.false.20:                                 ; preds = %if.end.18
  %14 = load i32, i32* %class1.addr, align 4, !dbg !1466, !tbaa !339
  %cmp21 = icmp eq i32 %14, 2, !dbg !1468
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false.22, !dbg !1469

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.20
  %15 = load i32, i32* %class2.addr, align 4, !dbg !1470, !tbaa !339
  %cmp23 = icmp eq i32 %15, 1, !dbg !1471
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false.24, !dbg !1472

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.22
  %16 = load i32, i32* %class2.addr, align 4, !dbg !1473, !tbaa !339
  %cmp25 = icmp eq i32 %16, 2, !dbg !1475
  br i1 %cmp25, label %if.then.26, label %if.end.27, !dbg !1476

if.then.26:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.22, %lor.lhs.false.20, %if.end.18
  store i32 1, i32* %retval, !dbg !1477
  br label %return, !dbg !1477

if.end.27:                                        ; preds = %lor.lhs.false.24
  %17 = load i32, i32* %class1.addr, align 4, !dbg !1478, !tbaa !339
  %cmp28 = icmp eq i32 %17, 7, !dbg !1480
  br i1 %cmp28, label %if.then.39, label %lor.lhs.false.29, !dbg !1481

lor.lhs.false.29:                                 ; preds = %if.end.27
  %18 = load i32, i32* %class1.addr, align 4, !dbg !1482, !tbaa !339
  %cmp30 = icmp eq i32 %18, 8, !dbg !1484
  br i1 %cmp30, label %if.then.39, label %lor.lhs.false.31, !dbg !1485

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.29
  %19 = load i32, i32* %class1.addr, align 4, !dbg !1486, !tbaa !339
  %cmp32 = icmp eq i32 %19, 9, !dbg !1487
  br i1 %cmp32, label %if.then.39, label %lor.lhs.false.33, !dbg !1488

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.31
  %20 = load i32, i32* %class2.addr, align 4, !dbg !1489, !tbaa !339
  %cmp34 = icmp eq i32 %20, 7, !dbg !1490
  br i1 %cmp34, label %if.then.39, label %lor.lhs.false.35, !dbg !1491

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.33
  %21 = load i32, i32* %class2.addr, align 4, !dbg !1492, !tbaa !339
  %cmp36 = icmp eq i32 %21, 8, !dbg !1493
  br i1 %cmp36, label %if.then.39, label %lor.lhs.false.37, !dbg !1494

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.35
  %22 = load i32, i32* %class2.addr, align 4, !dbg !1495, !tbaa !339
  %cmp38 = icmp eq i32 %22, 9, !dbg !1496
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !1497

if.then.39:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.35, %lor.lhs.false.33, %lor.lhs.false.31, %lor.lhs.false.29, %if.end.27
  store i32 10, i32* %retval, !dbg !1498
  br label %return, !dbg !1498

if.end.40:                                        ; preds = %lor.lhs.false.37
  store i32 3, i32* %retval, !dbg !1499
  br label %return, !dbg !1499

return:                                           ; preds = %if.end.40, %if.then.39, %if.then.26, %if.then.17, %if.then.9, %if.then.5, %if.then.2, %if.then
  %23 = load i32, i32* %retval, !dbg !1500
  ret i32 %23, !dbg !1500
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
!517 = !DILocation(line: 324, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !511, file: !18, line: 321, column: 7)
!519 = !DILocation(line: 325, column: 2, scope: !518)
!520 = !DILocation(line: 329, column: 6, scope: !518)
!521 = !DILocation(line: 330, column: 2, scope: !518)
!522 = !DILocation(line: 333, column: 2, scope: !518)
!523 = !DILocation(line: 337, column: 9, scope: !518)
!524 = !DILocation(line: 337, column: 19, scope: !518)
!525 = !DILocation(line: 337, column: 2, scope: !518)
!526 = !DILocation(line: 339, column: 2, scope: !518)
!527 = !DILocation(line: 340, column: 7, scope: !518)
!528 = !DILocation(line: 319, column: 22, scope: !511)
!529 = !DILocation(line: 319, column: 3, scope: !511)
!530 = !DILocation(line: 342, column: 12, scope: !235)
!531 = !DILocation(line: 342, column: 4, scope: !235)
!532 = !DILocation(line: 342, column: 10, scope: !235)
!533 = !DILocation(line: 343, column: 12, scope: !235)
!534 = !DILocation(line: 343, column: 4, scope: !235)
!535 = !DILocation(line: 343, column: 10, scope: !235)
!536 = !DILocation(line: 345, column: 10, scope: !235)
!537 = !DILocation(line: 345, column: 3, scope: !235)
!538 = !DILocation(line: 346, column: 1, scope: !235)
!539 = !DILocation(line: 419, column: 20, scope: !135)
!540 = !DILocation(line: 419, column: 32, scope: !135)
!541 = !DILocation(line: 419, column: 49, scope: !135)
!542 = !DILocation(line: 419, column: 64, scope: !135)
!543 = !DILocation(line: 421, column: 3, scope: !135)
!544 = !DILocation(line: 421, column: 25, scope: !135)
!545 = !DILocation(line: 422, column: 3, scope: !135)
!546 = !DILocation(line: 422, column: 9, scope: !135)
!547 = !DILocation(line: 422, column: 17, scope: !135)
!548 = !DILocation(line: 423, column: 3, scope: !135)
!549 = !DILocation(line: 423, column: 14, scope: !135)
!550 = !DILocation(line: 424, column: 3, scope: !135)
!551 = !DILocation(line: 424, column: 7, scope: !135)
!552 = !DILocation(line: 424, column: 17, scope: !135)
!553 = !DILocation(line: 424, column: 27, scope: !135)
!554 = !DILocation(line: 424, column: 33, scope: !135)
!555 = !DILocation(line: 424, column: 39, scope: !135)
!556 = !DILocation(line: 424, column: 42, scope: !135)
!557 = !DILocation(line: 425, column: 3, scope: !135)
!558 = !DILocation(line: 425, column: 9, scope: !135)
!559 = !DILocation(line: 426, column: 3, scope: !135)
!560 = !DILocation(line: 426, column: 25, scope: !135)
!561 = !DILocation(line: 434, column: 20, scope: !135)
!562 = !DILocation(line: 434, column: 25, scope: !135)
!563 = !DILocation(line: 434, column: 32, scope: !135)
!564 = !DILocation(line: 434, column: 37, scope: !135)
!565 = !DILocation(line: 435, column: 6, scope: !135)
!566 = !DILocation(line: 435, column: 10, scope: !567)
!567 = !DILexicalBlockFile(scope: !135, file: !18, discriminator: 1)
!568 = !DILocation(line: 435, column: 15, scope: !135)
!569 = !DILocation(line: 435, column: 21, scope: !135)
!570 = !DILocation(line: 435, column: 29, scope: !135)
!571 = !DILocation(line: 434, column: 17, scope: !135)
!572 = !DILocation(line: 436, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !135, file: !18, line: 436, column: 7)
!574 = !DILocation(line: 436, column: 14, scope: !573)
!575 = !DILocation(line: 436, column: 28, scope: !573)
!576 = !DILocation(line: 436, column: 31, scope: !577)
!577 = !DILexicalBlockFile(scope: !573, file: !18, discriminator: 1)
!578 = !DILocation(line: 436, column: 7, scope: !135)
!579 = !DILocation(line: 437, column: 32, scope: !573)
!580 = !DILocation(line: 437, column: 37, scope: !573)
!581 = !DILocation(line: 437, column: 44, scope: !573)
!582 = !DILocation(line: 437, column: 14, scope: !573)
!583 = !DILocation(line: 437, column: 12, scope: !573)
!584 = !DILocation(line: 437, column: 5, scope: !573)
!585 = !DILocation(line: 440, column: 61, scope: !135)
!586 = !DILocation(line: 440, column: 66, scope: !135)
!587 = !DILocation(line: 440, column: 59, scope: !135)
!588 = !DILocation(line: 440, column: 72, scope: !135)
!589 = !DILocation(line: 440, column: 11, scope: !135)
!590 = !DILocation(line: 440, column: 9, scope: !135)
!591 = !DILocation(line: 441, column: 39, scope: !135)
!592 = !DILocation(line: 441, column: 14, scope: !135)
!593 = !DILocation(line: 441, column: 12, scope: !135)
!594 = !DILocation(line: 442, column: 10, scope: !135)
!595 = !DILocation(line: 442, column: 16, scope: !135)
!596 = !DILocation(line: 442, column: 8, scope: !135)
!597 = !DILocation(line: 444, column: 23, scope: !135)
!598 = !DILocation(line: 444, column: 12, scope: !135)
!599 = !DILocation(line: 448, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !135, file: !18, line: 448, column: 7)
!601 = !DILocation(line: 448, column: 7, scope: !135)
!602 = !DILocation(line: 449, column: 49, scope: !600)
!603 = !DILocation(line: 449, column: 33, scope: !600)
!604 = !DILocation(line: 449, column: 27, scope: !600)
!605 = !DILocation(line: 449, column: 5, scope: !600)
!606 = !DILocation(line: 449, column: 15, scope: !600)
!607 = !DILocation(line: 449, column: 31, scope: !600)
!608 = !DILocation(line: 451, column: 9, scope: !135)
!609 = !DILocation(line: 451, column: 14, scope: !135)
!610 = !DILocation(line: 451, column: 7, scope: !135)
!611 = !DILocation(line: 452, column: 15, scope: !135)
!612 = !DILocation(line: 452, column: 20, scope: !135)
!613 = !DILocation(line: 452, column: 13, scope: !135)
!614 = !DILocation(line: 454, column: 10, scope: !162)
!615 = !DILocation(line: 454, column: 8, scope: !162)
!616 = !DILocation(line: 454, column: 15, scope: !617)
!617 = !DILexicalBlockFile(scope: !618, file: !18, discriminator: 2)
!618 = !DILexicalBlockFile(scope: !161, file: !18, discriminator: 1)
!619 = !DILocation(line: 454, column: 19, scope: !161)
!620 = !DILocation(line: 454, column: 17, scope: !161)
!621 = !DILocation(line: 454, column: 3, scope: !162)
!622 = !DILocation(line: 456, column: 7, scope: !160)
!623 = !DILocation(line: 456, column: 14, scope: !160)
!624 = !DILocation(line: 456, column: 31, scope: !160)
!625 = !DILocation(line: 456, column: 21, scope: !160)
!626 = !DILocation(line: 456, column: 35, scope: !160)
!627 = !DILocation(line: 457, column: 7, scope: !160)
!628 = !DILocation(line: 457, column: 11, scope: !160)
!629 = !DILocation(line: 459, column: 39, scope: !160)
!630 = !DILocation(line: 459, column: 29, scope: !160)
!631 = !DILocation(line: 459, column: 43, scope: !160)
!632 = !DILocation(line: 459, column: 11, scope: !160)
!633 = !DILocation(line: 459, column: 9, scope: !160)
!634 = !DILocation(line: 460, column: 11, scope: !166)
!635 = !DILocation(line: 460, column: 13, scope: !166)
!636 = !DILocation(line: 461, column: 4, scope: !166)
!637 = !DILocation(line: 461, column: 7, scope: !638)
!638 = !DILexicalBlockFile(scope: !166, file: !18, discriminator: 1)
!639 = !DILocation(line: 461, column: 18, scope: !166)
!640 = !DILocation(line: 461, column: 16, scope: !166)
!641 = !DILocation(line: 461, column: 23, scope: !166)
!642 = !DILocation(line: 462, column: 4, scope: !166)
!643 = !DILocation(line: 462, column: 7, scope: !638)
!644 = !DILocation(line: 462, column: 18, scope: !166)
!645 = !DILocation(line: 462, column: 16, scope: !166)
!646 = !DILocation(line: 462, column: 23, scope: !166)
!647 = !DILocation(line: 460, column: 11, scope: !160)
!648 = !DILocation(line: 464, column: 4, scope: !165)
!649 = !DILocation(line: 464, column: 9, scope: !165)
!650 = !DILocation(line: 464, column: 27, scope: !165)
!651 = !DILocation(line: 464, column: 17, scope: !165)
!652 = !DILocation(line: 464, column: 31, scope: !165)
!653 = !DILocation(line: 467, column: 8, scope: !654)
!654 = distinct !DILexicalBlock(scope: !165, file: !18, line: 467, column: 8)
!655 = !DILocation(line: 467, column: 14, scope: !654)
!656 = !DILocation(line: 467, column: 8, scope: !165)
!657 = !DILocation(line: 468, column: 12, scope: !654)
!658 = !DILocation(line: 468, column: 6, scope: !654)
!659 = !DILocation(line: 471, column: 34, scope: !165)
!660 = !DILocation(line: 471, column: 24, scope: !165)
!661 = !DILocation(line: 471, column: 40, scope: !165)
!662 = !DILocation(line: 471, column: 48, scope: !165)
!663 = !DILocation(line: 471, column: 54, scope: !165)
!664 = !DILocation(line: 471, column: 44, scope: !165)
!665 = !DILocation(line: 471, column: 58, scope: !165)
!666 = !DILocation(line: 471, column: 11, scope: !165)
!667 = !DILocation(line: 471, column: 9, scope: !165)
!668 = !DILocation(line: 472, column: 12, scope: !165)
!669 = !DILocation(line: 472, column: 25, scope: !165)
!670 = !DILocation(line: 472, column: 18, scope: !165)
!671 = !DILocation(line: 472, column: 29, scope: !165)
!672 = !DILocation(line: 472, column: 4, scope: !165)
!673 = !DILocation(line: 473, column: 12, scope: !165)
!674 = !DILocation(line: 473, column: 9, scope: !165)
!675 = !DILocation(line: 474, column: 2, scope: !166)
!676 = !DILocation(line: 474, column: 2, scope: !165)
!677 = !DILocation(line: 478, column: 4, scope: !168)
!678 = !DILocation(line: 478, column: 10, scope: !168)
!679 = !DILocation(line: 478, column: 30, scope: !168)
!680 = !DILocation(line: 478, column: 23, scope: !168)
!681 = !DILocation(line: 479, column: 4, scope: !168)
!682 = !DILocation(line: 479, column: 8, scope: !168)
!683 = !DILocation(line: 481, column: 11, scope: !684)
!684 = distinct !DILexicalBlock(scope: !168, file: !18, line: 481, column: 4)
!685 = !DILocation(line: 481, column: 9, scope: !684)
!686 = !DILocation(line: 481, column: 16, scope: !687)
!687 = !DILexicalBlockFile(scope: !688, file: !18, discriminator: 2)
!688 = !DILexicalBlockFile(scope: !689, file: !18, discriminator: 1)
!689 = distinct !DILexicalBlock(scope: !684, file: !18, line: 481, column: 4)
!690 = !DILocation(line: 481, column: 20, scope: !689)
!691 = !DILocation(line: 481, column: 18, scope: !689)
!692 = !DILocation(line: 481, column: 4, scope: !684)
!693 = !DILocation(line: 483, column: 24, scope: !694)
!694 = distinct !DILexicalBlock(scope: !689, file: !18, line: 482, column: 6)
!695 = !DILocation(line: 483, column: 16, scope: !694)
!696 = !DILocation(line: 491, column: 23, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !18, line: 484, column: 3)
!698 = !DILocation(line: 491, column: 13, scope: !697)
!699 = !DILocation(line: 491, column: 27, scope: !697)
!700 = !DILocation(line: 494, column: 68, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !18, line: 492, column: 7)
!702 = !DILocation(line: 494, column: 56, scope: !701)
!703 = !DILocation(line: 494, column: 47, scope: !701)
!704 = !DILocation(line: 494, column: 35, scope: !701)
!705 = !DILocation(line: 494, column: 21, scope: !701)
!706 = !DILocation(line: 494, column: 31, scope: !701)
!707 = !DILocation(line: 494, column: 45, scope: !701)
!708 = !DILocation(line: 495, column: 9, scope: !701)
!709 = !DILocation(line: 497, column: 69, scope: !701)
!710 = !DILocation(line: 497, column: 58, scope: !701)
!711 = !DILocation(line: 497, column: 56, scope: !701)
!712 = !{!316, !316, i64 0}
!713 = !DILocation(line: 497, column: 47, scope: !701)
!714 = !DILocation(line: 497, column: 35, scope: !701)
!715 = !DILocation(line: 497, column: 21, scope: !701)
!716 = !DILocation(line: 497, column: 31, scope: !701)
!717 = !DILocation(line: 497, column: 45, scope: !701)
!718 = !DILocation(line: 498, column: 9, scope: !701)
!719 = !DILocation(line: 500, column: 69, scope: !701)
!720 = !DILocation(line: 500, column: 58, scope: !701)
!721 = !DILocation(line: 500, column: 56, scope: !701)
!722 = !DILocation(line: 500, column: 47, scope: !701)
!723 = !DILocation(line: 500, column: 35, scope: !701)
!724 = !DILocation(line: 500, column: 21, scope: !701)
!725 = !DILocation(line: 500, column: 31, scope: !701)
!726 = !DILocation(line: 500, column: 45, scope: !701)
!727 = !DILocation(line: 501, column: 9, scope: !701)
!728 = !DILocation(line: 503, column: 23, scope: !701)
!729 = !DILocation(line: 503, column: 9, scope: !701)
!730 = !DILocation(line: 503, column: 19, scope: !701)
!731 = !DILocation(line: 503, column: 33, scope: !701)
!732 = !DILocation(line: 504, column: 32, scope: !701)
!733 = !DILocation(line: 504, column: 18, scope: !701)
!734 = !DILocation(line: 504, column: 28, scope: !701)
!735 = !DILocation(line: 504, column: 9, scope: !701)
!736 = !DILocation(line: 504, column: 43, scope: !701)
!737 = !DILocation(line: 504, column: 46, scope: !701)
!738 = !DILocation(line: 504, column: 51, scope: !701)
!739 = !DILocation(line: 504, column: 57, scope: !740)
!740 = !DILexicalBlockFile(scope: !701, file: !18, discriminator: 1)
!741 = !DILocation(line: 504, column: 46, scope: !742)
!742 = !DILexicalBlockFile(scope: !701, file: !18, discriminator: 2)
!743 = !DILocation(line: 504, column: 9, scope: !744)
!744 = !DILexicalBlockFile(scope: !745, file: !18, discriminator: 4)
!745 = !DILexicalBlockFile(scope: !701, file: !18, discriminator: 3)
!746 = !DILocation(line: 505, column: 7, scope: !701)
!747 = !DILocation(line: 506, column: 13, scope: !697)
!748 = !DILocation(line: 507, column: 5, scope: !697)
!749 = !DILocation(line: 510, column: 49, scope: !697)
!750 = !DILocation(line: 510, column: 38, scope: !697)
!751 = !DILocation(line: 510, column: 37, scope: !697)
!752 = !DILocation(line: 510, column: 27, scope: !697)
!753 = !DILocation(line: 510, column: 5, scope: !697)
!754 = !DILocation(line: 510, column: 15, scope: !697)
!755 = !DILocation(line: 510, column: 31, scope: !697)
!756 = !DILocation(line: 510, column: 35, scope: !697)
!757 = !DILocation(line: 511, column: 5, scope: !697)
!758 = !DILocation(line: 513, column: 49, scope: !697)
!759 = !DILocation(line: 513, column: 38, scope: !697)
!760 = !DILocation(line: 513, column: 37, scope: !697)
!761 = !DILocation(line: 513, column: 27, scope: !697)
!762 = !DILocation(line: 513, column: 5, scope: !697)
!763 = !DILocation(line: 513, column: 15, scope: !697)
!764 = !DILocation(line: 513, column: 31, scope: !697)
!765 = !DILocation(line: 513, column: 35, scope: !697)
!766 = !DILocation(line: 514, column: 5, scope: !697)
!767 = !DILocation(line: 516, column: 5, scope: !697)
!768 = !DILocation(line: 518, column: 6, scope: !694)
!769 = !DILocation(line: 481, column: 24, scope: !689)
!770 = !DILocation(line: 481, column: 30, scope: !689)
!771 = !DILocation(line: 481, column: 41, scope: !689)
!772 = !DILocation(line: 481, column: 4, scope: !689)
!773 = !DILocation(line: 519, column: 2, scope: !166)
!774 = !DILocation(line: 520, column: 5, scope: !161)
!775 = !DILocation(line: 520, column: 5, scope: !160)
!776 = !DILocation(line: 454, column: 24, scope: !161)
!777 = !DILocation(line: 454, column: 3, scope: !161)
!778 = !DILocation(line: 522, column: 20, scope: !135)
!779 = !DILocation(line: 522, column: 27, scope: !135)
!780 = !DILocation(line: 522, column: 32, scope: !135)
!781 = !DILocation(line: 522, column: 38, scope: !135)
!782 = !DILocation(line: 523, column: 6, scope: !135)
!783 = !DILocation(line: 523, column: 11, scope: !135)
!784 = !DILocation(line: 523, column: 18, scope: !135)
!785 = !DILocation(line: 523, column: 26, scope: !135)
!786 = !DILocation(line: 523, column: 30, scope: !135)
!787 = !DILocation(line: 522, column: 3, scope: !135)
!788 = !DILocation(line: 524, column: 1, scope: !135)
!789 = !DILocation(line: 530, column: 36, scope: !170)
!790 = !DILocation(line: 531, column: 18, scope: !170)
!791 = !DILocation(line: 532, column: 16, scope: !170)
!792 = !DILocation(line: 533, column: 15, scope: !170)
!793 = !DILocation(line: 534, column: 15, scope: !170)
!794 = !DILocation(line: 536, column: 3, scope: !170)
!795 = !DILocation(line: 536, column: 28, scope: !170)
!796 = !DILocation(line: 540, column: 5, scope: !195)
!797 = !DILocation(line: 540, column: 9, scope: !195)
!798 = !DILocation(line: 540, column: 15, scope: !195)
!799 = !DILocation(line: 540, column: 20, scope: !195)
!800 = !{!311, !287, i64 0}
!801 = !DILocation(line: 541, column: 30, scope: !802)
!802 = distinct !DILexicalBlock(scope: !195, file: !18, line: 541, column: 9)
!803 = !DILocation(line: 541, column: 34, scope: !802)
!804 = !DILocation(line: 541, column: 50, scope: !802)
!805 = !DILocation(line: 541, column: 53, scope: !806)
!806 = !DILexicalBlockFile(scope: !802, file: !18, discriminator: 1)
!807 = !DILocation(line: 541, column: 57, scope: !802)
!808 = !DILocation(line: 541, column: 27, scope: !809)
!809 = !DILexicalBlockFile(scope: !802, file: !18, discriminator: 2)
!810 = !DILocation(line: 541, column: 73, scope: !802)
!811 = !DILocation(line: 541, column: 26, scope: !802)
!812 = !DILocation(line: 541, column: 9, scope: !802)
!813 = !DILocation(line: 541, column: 9, scope: !195)
!814 = !DILocation(line: 542, column: 7, scope: !802)
!815 = !DILocation(line: 543, column: 3, scope: !170)
!816 = !DILocation(line: 543, column: 3, scope: !817)
!817 = !DILexicalBlockFile(scope: !170, file: !18, discriminator: 1)
!818 = !DILocation(line: 545, column: 40, scope: !170)
!819 = !DILocation(line: 545, column: 49, scope: !170)
!820 = !DILocation(line: 545, column: 11, scope: !170)
!821 = !DILocation(line: 545, column: 9, scope: !170)
!822 = !DILocation(line: 547, column: 3, scope: !170)
!823 = !DILocation(line: 547, column: 12, scope: !170)
!824 = !DILocation(line: 548, column: 38, scope: !170)
!825 = !DILocation(line: 548, column: 5, scope: !170)
!826 = !DILocation(line: 549, column: 5, scope: !170)
!827 = !{!828, !828, i64 0}
!828 = !{!"long long", !287, i64 0}
!829 = !DILocation(line: 550, column: 3, scope: !170)
!830 = !DILocation(line: 550, column: 12, scope: !170)
!831 = !DILocation(line: 552, column: 23, scope: !170)
!832 = !DILocation(line: 552, column: 7, scope: !170)
!833 = !DILocation(line: 551, column: 38, scope: !170)
!834 = !DILocation(line: 551, column: 5, scope: !170)
!835 = !DILocation(line: 552, column: 5, scope: !170)
!836 = !DILocation(line: 556, column: 15, scope: !170)
!837 = !DILocation(line: 556, column: 20, scope: !170)
!838 = !DILocation(line: 556, column: 26, scope: !170)
!839 = !DILocation(line: 556, column: 3, scope: !170)
!840 = !DILocation(line: 556, column: 13, scope: !170)
!841 = !DILocation(line: 558, column: 3, scope: !170)
!842 = !DILocation(line: 558, column: 13, scope: !170)
!843 = !DILocation(line: 560, column: 18, scope: !170)
!844 = !DILocation(line: 560, column: 3, scope: !170)
!845 = !DILocation(line: 560, column: 12, scope: !170)
!846 = !DILocation(line: 560, column: 16, scope: !170)
!847 = !{!848, !286, i64 24}
!848 = !{!"", !287, i64 0, !286, i64 24, !286, i64 32, !286, i64 40}
!849 = !DILocation(line: 561, column: 18, scope: !170)
!850 = !DILocation(line: 561, column: 3, scope: !170)
!851 = !DILocation(line: 561, column: 12, scope: !170)
!852 = !DILocation(line: 561, column: 16, scope: !170)
!853 = !{!848, !286, i64 32}
!854 = !DILocation(line: 562, column: 24, scope: !170)
!855 = !DILocation(line: 562, column: 3, scope: !170)
!856 = !DILocation(line: 562, column: 12, scope: !170)
!857 = !DILocation(line: 562, column: 22, scope: !170)
!858 = !{!848, !286, i64 40}
!859 = !DILocation(line: 564, column: 3, scope: !170)
!860 = !DILocation(line: 565, column: 1, scope: !170)
!861 = !DILocation(line: 568, column: 39, scope: !196)
!862 = !DILocation(line: 568, column: 54, scope: !196)
!863 = !DILocation(line: 569, column: 27, scope: !196)
!864 = !DILocation(line: 569, column: 43, scope: !196)
!865 = !DILocation(line: 571, column: 3, scope: !196)
!866 = !DILocation(line: 571, column: 12, scope: !196)
!867 = !DILocation(line: 572, column: 3, scope: !196)
!868 = !DILocation(line: 572, column: 10, scope: !196)
!869 = !DILocation(line: 573, column: 3, scope: !196)
!870 = !DILocation(line: 573, column: 14, scope: !196)
!871 = !DILocation(line: 574, column: 3, scope: !196)
!872 = !DILocation(line: 574, column: 8, scope: !196)
!873 = !DILocation(line: 574, column: 11, scope: !196)
!874 = !DILocation(line: 575, column: 3, scope: !196)
!875 = !DILocation(line: 575, column: 7, scope: !196)
!876 = !DILocation(line: 575, column: 17, scope: !196)
!877 = !DILocation(line: 575, column: 27, scope: !196)
!878 = !DILocation(line: 575, column: 33, scope: !196)
!879 = !DILocation(line: 576, column: 3, scope: !196)
!880 = !DILocation(line: 576, column: 7, scope: !196)
!881 = !DILocation(line: 578, column: 9, scope: !196)
!882 = !DILocation(line: 578, column: 18, scope: !196)
!883 = !DILocation(line: 578, column: 7, scope: !196)
!884 = !DILocation(line: 579, column: 30, scope: !196)
!885 = !DILocation(line: 579, column: 35, scope: !196)
!886 = !DILocation(line: 579, column: 41, scope: !196)
!887 = !DILocation(line: 579, column: 12, scope: !196)
!888 = !DILocation(line: 579, column: 10, scope: !196)
!889 = !DILocation(line: 580, column: 23, scope: !196)
!890 = !DILocation(line: 580, column: 12, scope: !196)
!891 = !DILocation(line: 582, column: 9, scope: !196)
!892 = !DILocation(line: 582, column: 14, scope: !196)
!893 = !DILocation(line: 582, column: 21, scope: !196)
!894 = !DILocation(line: 582, column: 7, scope: !196)
!895 = !DILocation(line: 583, column: 7, scope: !216)
!896 = !DILocation(line: 583, column: 11, scope: !216)
!897 = !DILocation(line: 583, column: 7, scope: !196)
!898 = !DILocation(line: 585, column: 7, scope: !215)
!899 = !DILocation(line: 585, column: 29, scope: !215)
!900 = !DILocation(line: 586, column: 7, scope: !215)
!901 = !DILocation(line: 586, column: 11, scope: !215)
!902 = !DILocation(line: 586, column: 33, scope: !215)
!903 = !DILocation(line: 586, column: 38, scope: !215)
!904 = !DILocation(line: 586, column: 45, scope: !215)
!905 = !DILocation(line: 586, column: 15, scope: !215)
!906 = !DILocation(line: 587, column: 11, scope: !221)
!907 = !DILocation(line: 587, column: 13, scope: !221)
!908 = !DILocation(line: 587, column: 11, scope: !215)
!909 = !DILocation(line: 591, column: 60, scope: !910)
!910 = distinct !DILexicalBlock(scope: !221, file: !18, line: 588, column: 2)
!911 = !DILocation(line: 591, column: 38, scope: !910)
!912 = !DILocation(line: 591, column: 48, scope: !910)
!913 = !DILocation(line: 591, column: 13, scope: !910)
!914 = !DILocation(line: 591, column: 11, scope: !910)
!915 = !DILocation(line: 593, column: 8, scope: !910)
!916 = !DILocation(line: 594, column: 2, scope: !910)
!917 = !DILocation(line: 595, column: 16, scope: !220)
!918 = !DILocation(line: 595, column: 20, scope: !220)
!919 = !DILocation(line: 595, column: 26, scope: !220)
!920 = !DILocation(line: 595, column: 29, scope: !921)
!921 = !DILexicalBlockFile(scope: !220, file: !18, discriminator: 1)
!922 = !DILocation(line: 595, column: 31, scope: !220)
!923 = !DILocation(line: 595, column: 16, scope: !221)
!924 = !DILocation(line: 598, column: 4, scope: !219)
!925 = !DILocation(line: 598, column: 10, scope: !219)
!926 = !DILocation(line: 598, column: 19, scope: !219)
!927 = !DILocation(line: 598, column: 31, scope: !219)
!928 = !DILocation(line: 598, column: 51, scope: !219)
!929 = !DILocation(line: 598, column: 54, scope: !930)
!930 = !DILexicalBlockFile(scope: !219, file: !18, discriminator: 1)
!931 = !DILocation(line: 598, column: 65, scope: !219)
!932 = !DILocation(line: 598, column: 10, scope: !933)
!933 = !DILexicalBlockFile(scope: !219, file: !18, discriminator: 2)
!934 = !DILocation(line: 599, column: 4, scope: !219)
!935 = !DILocation(line: 599, column: 10, scope: !219)
!936 = !DILocation(line: 599, column: 19, scope: !219)
!937 = !DILocation(line: 599, column: 31, scope: !219)
!938 = !DILocation(line: 599, column: 51, scope: !219)
!939 = !DILocation(line: 599, column: 54, scope: !930)
!940 = !DILocation(line: 599, column: 65, scope: !219)
!941 = !DILocation(line: 599, column: 10, scope: !933)
!942 = !DILocation(line: 600, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !219, file: !18, line: 600, column: 8)
!944 = !DILocation(line: 600, column: 14, scope: !943)
!945 = !DILocation(line: 600, column: 17, scope: !946)
!946 = !DILexicalBlockFile(scope: !943, file: !18, discriminator: 1)
!947 = !DILocation(line: 600, column: 8, scope: !219)
!948 = !DILocation(line: 601, column: 10, scope: !943)
!949 = !DILocation(line: 601, column: 6, scope: !943)
!950 = !DILocation(line: 602, column: 13, scope: !951)
!951 = distinct !DILexicalBlock(scope: !943, file: !18, line: 602, column: 13)
!952 = !DILocation(line: 602, column: 18, scope: !951)
!953 = !DILocation(line: 602, column: 22, scope: !954)
!954 = !DILexicalBlockFile(scope: !951, file: !18, discriminator: 1)
!955 = !DILocation(line: 602, column: 13, scope: !943)
!956 = !DILocation(line: 603, column: 10, scope: !951)
!957 = !DILocation(line: 603, column: 6, scope: !951)
!958 = !DILocation(line: 604, column: 2, scope: !220)
!959 = !DILocation(line: 604, column: 2, scope: !219)
!960 = !DILocation(line: 605, column: 5, scope: !216)
!961 = !DILocation(line: 605, column: 5, scope: !215)
!962 = !DILocation(line: 607, column: 9, scope: !196)
!963 = !DILocation(line: 607, column: 14, scope: !196)
!964 = !DILocation(line: 607, column: 7, scope: !196)
!965 = !DILocation(line: 608, column: 15, scope: !196)
!966 = !DILocation(line: 608, column: 20, scope: !196)
!967 = !DILocation(line: 608, column: 13, scope: !196)
!968 = !DILocation(line: 610, column: 10, scope: !226)
!969 = !DILocation(line: 610, column: 8, scope: !226)
!970 = !DILocation(line: 610, column: 15, scope: !971)
!971 = !DILexicalBlockFile(scope: !972, file: !18, discriminator: 2)
!972 = !DILexicalBlockFile(scope: !225, file: !18, discriminator: 1)
!973 = !DILocation(line: 610, column: 19, scope: !225)
!974 = !DILocation(line: 610, column: 17, scope: !225)
!975 = !DILocation(line: 610, column: 3, scope: !226)
!976 = !DILocation(line: 612, column: 7, scope: !224)
!977 = !DILocation(line: 612, column: 29, scope: !224)
!978 = !DILocation(line: 613, column: 7, scope: !224)
!979 = !DILocation(line: 613, column: 11, scope: !224)
!980 = !DILocation(line: 615, column: 39, scope: !224)
!981 = !DILocation(line: 615, column: 29, scope: !224)
!982 = !DILocation(line: 615, column: 43, scope: !224)
!983 = !DILocation(line: 615, column: 11, scope: !224)
!984 = !DILocation(line: 615, column: 9, scope: !224)
!985 = !DILocation(line: 616, column: 11, scope: !230)
!986 = !DILocation(line: 616, column: 13, scope: !230)
!987 = !DILocation(line: 617, column: 4, scope: !230)
!988 = !DILocation(line: 617, column: 7, scope: !989)
!989 = !DILexicalBlockFile(scope: !230, file: !18, discriminator: 1)
!990 = !DILocation(line: 617, column: 18, scope: !230)
!991 = !DILocation(line: 617, column: 16, scope: !230)
!992 = !DILocation(line: 617, column: 23, scope: !230)
!993 = !DILocation(line: 618, column: 4, scope: !230)
!994 = !DILocation(line: 618, column: 7, scope: !989)
!995 = !DILocation(line: 618, column: 18, scope: !230)
!996 = !DILocation(line: 618, column: 16, scope: !230)
!997 = !DILocation(line: 618, column: 23, scope: !230)
!998 = !DILocation(line: 616, column: 11, scope: !224)
!999 = !DILocation(line: 620, column: 4, scope: !229)
!1000 = !DILocation(line: 620, column: 9, scope: !229)
!1001 = !DILocation(line: 620, column: 27, scope: !229)
!1002 = !DILocation(line: 620, column: 17, scope: !229)
!1003 = !DILocation(line: 620, column: 31, scope: !229)
!1004 = !DILocation(line: 623, column: 8, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !229, file: !18, line: 623, column: 8)
!1006 = !DILocation(line: 623, column: 14, scope: !1005)
!1007 = !DILocation(line: 623, column: 8, scope: !229)
!1008 = !DILocation(line: 624, column: 12, scope: !1005)
!1009 = !DILocation(line: 624, column: 6, scope: !1005)
!1010 = !DILocation(line: 627, column: 34, scope: !229)
!1011 = !DILocation(line: 627, column: 24, scope: !229)
!1012 = !DILocation(line: 627, column: 40, scope: !229)
!1013 = !DILocation(line: 627, column: 48, scope: !229)
!1014 = !DILocation(line: 627, column: 54, scope: !229)
!1015 = !DILocation(line: 627, column: 44, scope: !229)
!1016 = !DILocation(line: 627, column: 58, scope: !229)
!1017 = !DILocation(line: 627, column: 11, scope: !229)
!1018 = !DILocation(line: 627, column: 9, scope: !229)
!1019 = !DILocation(line: 628, column: 16, scope: !229)
!1020 = !DILocation(line: 628, column: 11, scope: !229)
!1021 = !DILocation(line: 628, column: 4, scope: !229)
!1022 = !DILocation(line: 628, column: 14, scope: !229)
!1023 = !DILocation(line: 629, column: 22, scope: !229)
!1024 = !DILocation(line: 629, column: 12, scope: !229)
!1025 = !DILocation(line: 629, column: 26, scope: !229)
!1026 = !DILocation(line: 629, column: 9, scope: !229)
!1027 = !DILocation(line: 630, column: 2, scope: !230)
!1028 = !DILocation(line: 630, column: 2, scope: !229)
!1029 = !DILocation(line: 633, column: 16, scope: !233)
!1030 = !DILocation(line: 633, column: 18, scope: !233)
!1031 = !DILocation(line: 634, column: 9, scope: !233)
!1032 = !DILocation(line: 634, column: 13, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !233, file: !18, discriminator: 1)
!1034 = !DILocation(line: 634, column: 15, scope: !233)
!1035 = !DILocation(line: 634, column: 20, scope: !233)
!1036 = !DILocation(line: 634, column: 27, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !233, file: !18, discriminator: 2)
!1038 = !DILocation(line: 634, column: 39, scope: !233)
!1039 = !DILocation(line: 634, column: 59, scope: !233)
!1040 = !DILocation(line: 634, column: 62, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !233, file: !18, discriminator: 3)
!1042 = !DILocation(line: 634, column: 73, scope: !233)
!1043 = !DILocation(line: 635, column: 11, scope: !233)
!1044 = !DILocation(line: 635, column: 16, scope: !1033)
!1045 = !DILocation(line: 635, column: 28, scope: !233)
!1046 = !DILocation(line: 635, column: 48, scope: !233)
!1047 = !DILocation(line: 635, column: 51, scope: !1037)
!1048 = !DILocation(line: 635, column: 62, scope: !233)
!1049 = !DILocation(line: 633, column: 16, scope: !230)
!1050 = !DILocation(line: 638, column: 10, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !18, line: 638, column: 8)
!1052 = distinct !DILexicalBlock(scope: !233, file: !18, line: 636, column: 2)
!1053 = !DILocation(line: 638, column: 22, scope: !1051)
!1054 = !DILocation(line: 638, column: 42, scope: !1051)
!1055 = !DILocation(line: 638, column: 45, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1051, file: !18, discriminator: 1)
!1057 = !DILocation(line: 638, column: 56, scope: !1051)
!1058 = !DILocation(line: 638, column: 8, scope: !1052)
!1059 = !DILocation(line: 640, column: 35, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1051, file: !18, line: 639, column: 6)
!1061 = !DILocation(line: 640, column: 21, scope: !1060)
!1062 = !DILocation(line: 640, column: 31, scope: !1060)
!1063 = !DILocation(line: 640, column: 20, scope: !1060)
!1064 = !DILocation(line: 640, column: 15, scope: !1060)
!1065 = !DILocation(line: 640, column: 8, scope: !1060)
!1066 = !DILocation(line: 640, column: 18, scope: !1060)
!1067 = !DILocation(line: 641, column: 20, scope: !1060)
!1068 = !DILocation(line: 641, column: 17, scope: !1060)
!1069 = !DILocation(line: 642, column: 6, scope: !1060)
!1070 = !DILocation(line: 645, column: 35, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1051, file: !18, line: 644, column: 6)
!1072 = !DILocation(line: 645, column: 21, scope: !1071)
!1073 = !DILocation(line: 645, column: 31, scope: !1071)
!1074 = !DILocation(line: 645, column: 20, scope: !1071)
!1075 = !DILocation(line: 645, column: 15, scope: !1071)
!1076 = !DILocation(line: 645, column: 8, scope: !1071)
!1077 = !DILocation(line: 645, column: 18, scope: !1071)
!1078 = !DILocation(line: 646, column: 20, scope: !1071)
!1079 = !DILocation(line: 646, column: 17, scope: !1071)
!1080 = !DILocation(line: 648, column: 2, scope: !1052)
!1081 = !DILocation(line: 652, column: 4, scope: !232)
!1082 = !DILocation(line: 652, column: 10, scope: !232)
!1083 = !DILocation(line: 652, column: 14, scope: !232)
!1084 = !DILocation(line: 653, column: 4, scope: !232)
!1085 = !DILocation(line: 653, column: 8, scope: !232)
!1086 = !DILocation(line: 655, column: 16, scope: !232)
!1087 = !DILocation(line: 655, column: 11, scope: !232)
!1088 = !DILocation(line: 655, column: 4, scope: !232)
!1089 = !DILocation(line: 655, column: 14, scope: !232)
!1090 = !DILocation(line: 656, column: 11, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !232, file: !18, line: 656, column: 4)
!1092 = !DILocation(line: 656, column: 9, scope: !1091)
!1093 = !DILocation(line: 656, column: 16, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1095, file: !18, discriminator: 2)
!1095 = !DILexicalBlockFile(scope: !1096, file: !18, discriminator: 1)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !18, line: 656, column: 4)
!1097 = !DILocation(line: 656, column: 20, scope: !1096)
!1098 = !DILocation(line: 656, column: 18, scope: !1096)
!1099 = !DILocation(line: 656, column: 4, scope: !1091)
!1100 = !DILocation(line: 658, column: 22, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !18, line: 658, column: 12)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !18, line: 657, column: 6)
!1103 = !DILocation(line: 658, column: 14, scope: !1101)
!1104 = !DILocation(line: 658, column: 26, scope: !1101)
!1105 = !DILocation(line: 658, column: 46, scope: !1101)
!1106 = !DILocation(line: 658, column: 57, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1101, file: !18, discriminator: 1)
!1108 = !DILocation(line: 658, column: 49, scope: !1101)
!1109 = !DILocation(line: 658, column: 60, scope: !1101)
!1110 = !DILocation(line: 658, column: 12, scope: !1102)
!1111 = !DILocation(line: 659, column: 11, scope: !1101)
!1112 = !DILocation(line: 659, column: 37, scope: !1101)
!1113 = !DILocation(line: 659, column: 15, scope: !1101)
!1114 = !DILocation(line: 659, column: 25, scope: !1101)
!1115 = !DILocation(line: 659, column: 3, scope: !1101)
!1116 = !DILocation(line: 661, column: 11, scope: !1101)
!1117 = !DILocation(line: 661, column: 37, scope: !1101)
!1118 = !DILocation(line: 661, column: 15, scope: !1101)
!1119 = !DILocation(line: 661, column: 25, scope: !1101)
!1120 = !DILocation(line: 661, column: 3, scope: !1101)
!1121 = !DILocation(line: 662, column: 6, scope: !1102)
!1122 = !DILocation(line: 656, column: 24, scope: !1096)
!1123 = !DILocation(line: 656, column: 30, scope: !1096)
!1124 = !DILocation(line: 656, column: 4, scope: !1096)
!1125 = !DILocation(line: 663, column: 2, scope: !233)
!1126 = !DILocation(line: 664, column: 5, scope: !225)
!1127 = !DILocation(line: 664, column: 5, scope: !224)
!1128 = !DILocation(line: 610, column: 24, scope: !225)
!1129 = !DILocation(line: 610, column: 3, scope: !225)
!1130 = !DILocation(line: 667, column: 3, scope: !196)
!1131 = !DILocation(line: 667, column: 12, scope: !196)
!1132 = !DILocation(line: 667, column: 17, scope: !196)
!1133 = !DILocation(line: 667, column: 22, scope: !196)
!1134 = !DILocation(line: 667, column: 30, scope: !196)
!1135 = !DILocation(line: 667, column: 38, scope: !196)
!1136 = !DILocation(line: 667, column: 47, scope: !196)
!1137 = !DILocation(line: 670, column: 10, scope: !196)
!1138 = !DILocation(line: 671, column: 1, scope: !196)
!1139 = !DILocation(line: 670, column: 3, scope: !196)
!1140 = !DILocation(line: 155, column: 30, scope: !250)
!1141 = !DILocation(line: 155, column: 58, scope: !250)
!1142 = !DILocation(line: 156, column: 13, scope: !250)
!1143 = !DILocation(line: 158, column: 11, scope: !250)
!1144 = !DILocation(line: 158, column: 17, scope: !250)
!1145 = !DILocation(line: 170, column: 2, scope: !258)
!1146 = !DILocation(line: 170, column: 6, scope: !258)
!1147 = !DILocation(line: 170, column: 13, scope: !258)
!1148 = !DILocation(line: 170, column: 27, scope: !258)
!1149 = !DILocation(line: 170, column: 33, scope: !258)
!1150 = !DILocation(line: 170, column: 25, scope: !258)
!1151 = !DILocation(line: 172, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !258, file: !18, line: 172, column: 6)
!1153 = !DILocation(line: 172, column: 11, scope: !1152)
!1154 = !DILocation(line: 172, column: 6, scope: !258)
!1155 = !DILocation(line: 174, column: 6, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !18, line: 173, column: 4)
!1157 = !DILocation(line: 174, column: 17, scope: !1156)
!1158 = !DILocation(line: 175, column: 6, scope: !1156)
!1159 = !DILocation(line: 177, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !18, line: 177, column: 11)
!1161 = !DILocation(line: 177, column: 16, scope: !1160)
!1162 = !DILocation(line: 177, column: 11, scope: !1152)
!1163 = !DILocation(line: 179, column: 6, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !18, line: 178, column: 4)
!1165 = !DILocation(line: 179, column: 17, scope: !1164)
!1166 = !DILocation(line: 180, column: 6, scope: !1164)
!1167 = !DILocation(line: 182, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1160, file: !18, line: 182, column: 11)
!1169 = !DILocation(line: 182, column: 16, scope: !1168)
!1170 = !DILocation(line: 182, column: 11, scope: !1160)
!1171 = !DILocation(line: 184, column: 6, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !18, line: 183, column: 4)
!1173 = !DILocation(line: 184, column: 17, scope: !1172)
!1174 = !DILocation(line: 185, column: 6, scope: !1172)
!1175 = !DILocation(line: 185, column: 17, scope: !1172)
!1176 = !DILocation(line: 186, column: 6, scope: !1172)
!1177 = !DILocation(line: 188, column: 11, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !18, line: 188, column: 11)
!1179 = !DILocation(line: 188, column: 16, scope: !1178)
!1180 = !DILocation(line: 188, column: 11, scope: !1168)
!1181 = !DILocation(line: 190, column: 19, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !18, line: 189, column: 4)
!1183 = !DILocation(line: 190, column: 30, scope: !1182)
!1184 = !DILocation(line: 190, column: 6, scope: !1182)
!1185 = !DILocation(line: 190, column: 17, scope: !1182)
!1186 = !DILocation(line: 191, column: 6, scope: !1182)
!1187 = !DILocation(line: 195, column: 7, scope: !259)
!1188 = !DILocation(line: 195, column: 7, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !259, file: !18, discriminator: 1)
!1190 = !DILocation(line: 195, column: 7, scope: !258)
!1191 = !DILocation(line: 197, column: 13, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !259, file: !18, line: 197, column: 11)
!1193 = !DILocation(line: 197, column: 25, scope: !1192)
!1194 = !DILocation(line: 197, column: 11, scope: !259)
!1195 = !DILocation(line: 198, column: 2, scope: !1192)
!1196 = !DILocation(line: 198, column: 13, scope: !1192)
!1197 = !DILocation(line: 200, column: 2, scope: !1192)
!1198 = !DILocation(line: 200, column: 13, scope: !1192)
!1199 = !DILocation(line: 201, column: 7, scope: !259)
!1200 = !DILocation(line: 203, column: 7, scope: !259)
!1201 = !DILocation(line: 203, column: 18, scope: !259)
!1202 = !DILocation(line: 204, column: 7, scope: !259)
!1203 = !DILocation(line: 206, column: 7, scope: !259)
!1204 = !DILocation(line: 206, column: 18, scope: !259)
!1205 = !DILocation(line: 207, column: 7, scope: !259)
!1206 = !DILocation(line: 207, column: 18, scope: !259)
!1207 = !DILocation(line: 208, column: 7, scope: !259)
!1208 = !DILocation(line: 211, column: 2, scope: !261)
!1209 = !DILocation(line: 211, column: 12, scope: !261)
!1210 = !DILocation(line: 212, column: 2, scope: !261)
!1211 = !DILocation(line: 212, column: 6, scope: !261)
!1212 = !DILocation(line: 212, column: 15, scope: !261)
!1213 = !DILocation(line: 212, column: 21, scope: !261)
!1214 = !DILocation(line: 212, column: 26, scope: !261)
!1215 = !DILocation(line: 212, column: 43, scope: !261)
!1216 = !DILocation(line: 212, column: 48, scope: !261)
!1217 = !DILocation(line: 212, column: 14, scope: !261)
!1218 = !DILocation(line: 213, column: 2, scope: !261)
!1219 = !DILocation(line: 213, column: 13, scope: !261)
!1220 = !DILocation(line: 214, column: 2, scope: !261)
!1221 = !DILocation(line: 214, column: 6, scope: !261)
!1222 = !DILocation(line: 215, column: 2, scope: !261)
!1223 = !DILocation(line: 215, column: 24, scope: !261)
!1224 = !DILocation(line: 218, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !261, file: !18, line: 218, column: 6)
!1226 = !DILocation(line: 218, column: 12, scope: !1225)
!1227 = !DILocation(line: 218, column: 17, scope: !1225)
!1228 = !DILocation(line: 218, column: 6, scope: !261)
!1229 = !DILocation(line: 219, column: 4, scope: !1225)
!1230 = !DILocation(line: 221, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !261, file: !18, line: 221, column: 2)
!1232 = !DILocation(line: 221, column: 7, scope: !1231)
!1233 = !DILocation(line: 221, column: 14, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1235, file: !18, discriminator: 2)
!1235 = !DILexicalBlockFile(scope: !1236, file: !18, discriminator: 1)
!1236 = distinct !DILexicalBlock(scope: !1231, file: !18, line: 221, column: 2)
!1237 = !DILocation(line: 221, column: 18, scope: !1236)
!1238 = !DILocation(line: 221, column: 16, scope: !1236)
!1239 = !DILocation(line: 221, column: 2, scope: !1231)
!1240 = !DILocation(line: 222, column: 12, scope: !1236)
!1241 = !DILocation(line: 222, column: 4, scope: !1236)
!1242 = !DILocation(line: 222, column: 15, scope: !1236)
!1243 = !DILocation(line: 221, column: 26, scope: !1236)
!1244 = !DILocation(line: 221, column: 2, scope: !1236)
!1245 = !DILocation(line: 226, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !261, file: !18, line: 226, column: 6)
!1247 = !DILocation(line: 226, column: 6, scope: !261)
!1248 = !DILocation(line: 228, column: 6, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !18, line: 227, column: 4)
!1250 = !DILocation(line: 228, column: 17, scope: !1249)
!1251 = !DILocation(line: 229, column: 6, scope: !1249)
!1252 = !DILocation(line: 233, column: 13, scope: !270)
!1253 = !DILocation(line: 233, column: 19, scope: !270)
!1254 = !{!314, !286, i64 16}
!1255 = !DILocation(line: 233, column: 11, scope: !270)
!1256 = !DILocation(line: 233, column: 7, scope: !270)
!1257 = !DILocation(line: 233, column: 30, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1259, file: !18, discriminator: 2)
!1259 = !DILexicalBlockFile(scope: !269, file: !18, discriminator: 1)
!1260 = !DILocation(line: 233, column: 29, scope: !269)
!1261 = !DILocation(line: 233, column: 34, scope: !269)
!1262 = !DILocation(line: 233, column: 2, scope: !270)
!1263 = !DILocation(line: 235, column: 6, scope: !268)
!1264 = !DILocation(line: 235, column: 10, scope: !268)
!1265 = !DILocation(line: 237, column: 34, scope: !268)
!1266 = !DILocation(line: 237, column: 47, scope: !268)
!1267 = !DILocation(line: 237, column: 57, scope: !268)
!1268 = !DILocation(line: 237, column: 56, scope: !268)
!1269 = !DILocation(line: 237, column: 63, scope: !268)
!1270 = !DILocation(line: 237, column: 54, scope: !268)
!1271 = !DILocation(line: 237, column: 73, scope: !268)
!1272 = !DILocation(line: 237, column: 53, scope: !268)
!1273 = !DILocation(line: 237, column: 51, scope: !268)
!1274 = !DILocation(line: 237, column: 77, scope: !268)
!1275 = !DILocation(line: 237, column: 18, scope: !268)
!1276 = !DILocation(line: 239, column: 32, scope: !268)
!1277 = !DILocation(line: 239, column: 31, scope: !268)
!1278 = !DILocation(line: 239, column: 37, scope: !268)
!1279 = !DILocation(line: 239, column: 49, scope: !268)
!1280 = !DILocation(line: 239, column: 61, scope: !268)
!1281 = !DILocation(line: 239, column: 12, scope: !268)
!1282 = !DILocation(line: 239, column: 10, scope: !268)
!1283 = !DILocation(line: 240, column: 10, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !268, file: !18, line: 240, column: 10)
!1285 = !DILocation(line: 240, column: 14, scope: !1284)
!1286 = !DILocation(line: 240, column: 10, scope: !268)
!1287 = !DILocation(line: 241, column: 8, scope: !1284)
!1288 = !DILocation(line: 242, column: 13, scope: !274)
!1289 = !DILocation(line: 242, column: 11, scope: !274)
!1290 = !DILocation(line: 242, column: 18, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1292, file: !18, discriminator: 2)
!1292 = !DILexicalBlockFile(scope: !273, file: !18, discriminator: 1)
!1293 = !DILocation(line: 242, column: 22, scope: !273)
!1294 = !DILocation(line: 242, column: 20, scope: !273)
!1295 = !DILocation(line: 242, column: 6, scope: !274)
!1296 = !DILocation(line: 244, column: 3, scope: !272)
!1297 = !DILocation(line: 244, column: 7, scope: !272)
!1298 = !DILocation(line: 244, column: 13, scope: !272)
!1299 = !DILocation(line: 244, column: 25, scope: !272)
!1300 = !DILocation(line: 246, column: 31, scope: !272)
!1301 = !DILocation(line: 246, column: 20, scope: !272)
!1302 = !DILocation(line: 246, column: 43, scope: !272)
!1303 = !DILocation(line: 246, column: 47, scope: !272)
!1304 = !DILocation(line: 246, column: 45, scope: !272)
!1305 = !DILocation(line: 246, column: 35, scope: !272)
!1306 = !DILocation(line: 246, column: 5, scope: !272)
!1307 = !DILocation(line: 245, column: 11, scope: !272)
!1308 = !DILocation(line: 245, column: 15, scope: !272)
!1309 = !DILocation(line: 245, column: 13, scope: !272)
!1310 = !DILocation(line: 245, column: 3, scope: !272)
!1311 = !DILocation(line: 245, column: 20, scope: !272)
!1312 = !DILocation(line: 247, column: 8, scope: !273)
!1313 = !DILocation(line: 247, column: 8, scope: !272)
!1314 = !DILocation(line: 242, column: 28, scope: !273)
!1315 = !DILocation(line: 242, column: 6, scope: !273)
!1316 = !DILocation(line: 249, column: 23, scope: !268)
!1317 = !DILocation(line: 249, column: 22, scope: !268)
!1318 = !DILocation(line: 249, column: 29, scope: !268)
!1319 = !DILocation(line: 249, column: 18, scope: !268)
!1320 = !DILocation(line: 250, column: 4, scope: !269)
!1321 = !DILocation(line: 250, column: 4, scope: !1259)
!1322 = !DILocation(line: 250, column: 4, scope: !268)
!1323 = !DILocation(line: 233, column: 52, scope: !269)
!1324 = !DILocation(line: 233, column: 2, scope: !269)
!1325 = !DILocation(line: 252, column: 6, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !261, file: !18, line: 252, column: 6)
!1327 = !DILocation(line: 252, column: 12, scope: !1326)
!1328 = !DILocation(line: 252, column: 6, scope: !261)
!1329 = !DILocation(line: 258, column: 10, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !18, line: 258, column: 10)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !18, line: 253, column: 4)
!1332 = !DILocation(line: 258, column: 21, scope: !1330)
!1333 = !DILocation(line: 258, column: 10, scope: !1331)
!1334 = !DILocation(line: 259, column: 8, scope: !1330)
!1335 = !DILocation(line: 261, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !18, line: 261, column: 6)
!1337 = !DILocation(line: 261, column: 11, scope: !1336)
!1338 = !DILocation(line: 261, column: 18, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1340, file: !18, discriminator: 2)
!1340 = !DILexicalBlockFile(scope: !1341, file: !18, discriminator: 1)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !18, line: 261, column: 6)
!1342 = !DILocation(line: 261, column: 22, scope: !1341)
!1343 = !DILocation(line: 261, column: 20, scope: !1341)
!1344 = !DILocation(line: 261, column: 6, scope: !1336)
!1345 = !DILocation(line: 262, column: 20, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1341, file: !18, line: 262, column: 12)
!1347 = !DILocation(line: 262, column: 12, scope: !1346)
!1348 = !DILocation(line: 262, column: 23, scope: !1346)
!1349 = !DILocation(line: 262, column: 12, scope: !1341)
!1350 = !DILocation(line: 263, column: 3, scope: !1346)
!1351 = !DILocation(line: 262, column: 26, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1346, file: !18, discriminator: 1)
!1353 = !DILocation(line: 261, column: 30, scope: !1341)
!1354 = !DILocation(line: 261, column: 6, scope: !1341)
!1355 = !DILocation(line: 264, column: 4, scope: !1331)
!1356 = !DILocation(line: 267, column: 9, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !261, file: !18, line: 267, column: 2)
!1358 = !DILocation(line: 267, column: 7, scope: !1357)
!1359 = !DILocation(line: 267, column: 14, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1361, file: !18, discriminator: 2)
!1361 = !DILexicalBlockFile(scope: !1362, file: !18, discriminator: 1)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !18, line: 267, column: 2)
!1363 = !DILocation(line: 267, column: 18, scope: !1362)
!1364 = !DILocation(line: 267, column: 16, scope: !1362)
!1365 = !DILocation(line: 267, column: 2, scope: !1357)
!1366 = !DILocation(line: 271, column: 18, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !18, line: 271, column: 10)
!1368 = distinct !DILexicalBlock(scope: !1362, file: !18, line: 268, column: 4)
!1369 = !DILocation(line: 271, column: 10, scope: !1367)
!1370 = !DILocation(line: 271, column: 21, scope: !1367)
!1371 = !DILocation(line: 271, column: 10, scope: !1368)
!1372 = !DILocation(line: 272, column: 8, scope: !1367)
!1373 = !DILocation(line: 276, column: 18, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !18, line: 276, column: 10)
!1375 = !DILocation(line: 276, column: 10, scope: !1374)
!1376 = !DILocation(line: 276, column: 21, scope: !1374)
!1377 = !DILocation(line: 277, column: 3, scope: !1374)
!1378 = !DILocation(line: 277, column: 14, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1374, file: !18, discriminator: 1)
!1380 = !DILocation(line: 277, column: 16, scope: !1374)
!1381 = !DILocation(line: 277, column: 6, scope: !1374)
!1382 = !DILocation(line: 277, column: 21, scope: !1374)
!1383 = !DILocation(line: 278, column: 3, scope: !1374)
!1384 = !DILocation(line: 278, column: 14, scope: !1379)
!1385 = !DILocation(line: 278, column: 16, scope: !1374)
!1386 = !DILocation(line: 278, column: 6, scope: !1374)
!1387 = !DILocation(line: 278, column: 21, scope: !1374)
!1388 = !DILocation(line: 276, column: 10, scope: !1368)
!1389 = !DILocation(line: 282, column: 11, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1374, file: !18, line: 279, column: 8)
!1391 = !DILocation(line: 282, column: 3, scope: !1390)
!1392 = !DILocation(line: 282, column: 14, scope: !1390)
!1393 = !DILocation(line: 283, column: 8, scope: !1390)
!1394 = !DILocation(line: 287, column: 18, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1368, file: !18, line: 287, column: 10)
!1396 = !DILocation(line: 287, column: 10, scope: !1395)
!1397 = !DILocation(line: 287, column: 21, scope: !1395)
!1398 = !DILocation(line: 288, column: 3, scope: !1395)
!1399 = !DILocation(line: 288, column: 15, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1395, file: !18, discriminator: 1)
!1401 = !DILocation(line: 288, column: 17, scope: !1395)
!1402 = !DILocation(line: 288, column: 7, scope: !1395)
!1403 = !DILocation(line: 288, column: 22, scope: !1395)
!1404 = !DILocation(line: 287, column: 10, scope: !1368)
!1405 = !DILocation(line: 292, column: 3, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1395, file: !18, line: 289, column: 8)
!1407 = !DILocation(line: 294, column: 4, scope: !1368)
!1408 = !DILocation(line: 267, column: 26, scope: !1362)
!1409 = !DILocation(line: 267, column: 2, scope: !1362)
!1410 = !DILocation(line: 295, column: 9, scope: !261)
!1411 = !DILocation(line: 295, column: 2, scope: !261)
!1412 = !DILocation(line: 296, column: 7, scope: !259)
!1413 = !DILocation(line: 300, column: 5, scope: !259)
!1414 = !DILocation(line: 301, column: 3, scope: !250)
!1415 = !DILocation(line: 302, column: 1, scope: !250)
!1416 = !DILocation(line: 107, column: 38, scope: !275)
!1417 = !DILocation(line: 107, column: 68, scope: !275)
!1418 = !DILocation(line: 110, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !275, file: !18, line: 110, column: 7)
!1420 = !DILocation(line: 110, column: 17, scope: !1419)
!1421 = !DILocation(line: 110, column: 14, scope: !1419)
!1422 = !DILocation(line: 110, column: 7, scope: !275)
!1423 = !DILocation(line: 111, column: 12, scope: !1419)
!1424 = !DILocation(line: 111, column: 5, scope: !1419)
!1425 = !DILocation(line: 115, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !275, file: !18, line: 115, column: 7)
!1427 = !DILocation(line: 115, column: 14, scope: !1426)
!1428 = !DILocation(line: 115, column: 7, scope: !275)
!1429 = !DILocation(line: 116, column: 12, scope: !1426)
!1430 = !DILocation(line: 116, column: 5, scope: !1426)
!1431 = !DILocation(line: 117, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !275, file: !18, line: 117, column: 7)
!1433 = !DILocation(line: 117, column: 14, scope: !1432)
!1434 = !DILocation(line: 117, column: 7, scope: !275)
!1435 = !DILocation(line: 118, column: 12, scope: !1432)
!1436 = !DILocation(line: 118, column: 5, scope: !1432)
!1437 = !DILocation(line: 121, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !275, file: !18, line: 121, column: 7)
!1439 = !DILocation(line: 121, column: 14, scope: !1438)
!1440 = !DILocation(line: 121, column: 37, scope: !1438)
!1441 = !DILocation(line: 121, column: 40, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1438, file: !18, discriminator: 1)
!1443 = !DILocation(line: 121, column: 47, scope: !1438)
!1444 = !DILocation(line: 121, column: 7, scope: !275)
!1445 = !DILocation(line: 122, column: 5, scope: !1438)
!1446 = !DILocation(line: 125, column: 8, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !275, file: !18, line: 125, column: 7)
!1448 = !DILocation(line: 125, column: 15, scope: !1447)
!1449 = !DILocation(line: 125, column: 41, scope: !1447)
!1450 = !DILocation(line: 125, column: 44, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1447, file: !18, discriminator: 1)
!1452 = !DILocation(line: 125, column: 51, scope: !1447)
!1453 = !DILocation(line: 126, column: 7, scope: !1447)
!1454 = !DILocation(line: 126, column: 11, scope: !1451)
!1455 = !DILocation(line: 126, column: 18, scope: !1447)
!1456 = !DILocation(line: 126, column: 44, scope: !1447)
!1457 = !DILocation(line: 126, column: 47, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1447, file: !18, discriminator: 2)
!1459 = !DILocation(line: 126, column: 54, scope: !1447)
!1460 = !DILocation(line: 125, column: 7, scope: !275)
!1461 = !DILocation(line: 127, column: 5, scope: !1447)
!1462 = !DILocation(line: 128, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !275, file: !18, line: 128, column: 7)
!1464 = !DILocation(line: 128, column: 14, scope: !1463)
!1465 = !DILocation(line: 128, column: 38, scope: !1463)
!1466 = !DILocation(line: 128, column: 41, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1463, file: !18, discriminator: 1)
!1468 = !DILocation(line: 128, column: 48, scope: !1463)
!1469 = !DILocation(line: 129, column: 7, scope: !1463)
!1470 = !DILocation(line: 129, column: 10, scope: !1467)
!1471 = !DILocation(line: 129, column: 17, scope: !1463)
!1472 = !DILocation(line: 129, column: 41, scope: !1463)
!1473 = !DILocation(line: 129, column: 44, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1463, file: !18, discriminator: 2)
!1475 = !DILocation(line: 129, column: 51, scope: !1463)
!1476 = !DILocation(line: 128, column: 7, scope: !275)
!1477 = !DILocation(line: 130, column: 5, scope: !1463)
!1478 = !DILocation(line: 134, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !275, file: !18, line: 134, column: 7)
!1480 = !DILocation(line: 134, column: 14, scope: !1479)
!1481 = !DILocation(line: 135, column: 7, scope: !1479)
!1482 = !DILocation(line: 135, column: 10, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1479, file: !18, discriminator: 1)
!1484 = !DILocation(line: 135, column: 17, scope: !1479)
!1485 = !DILocation(line: 136, column: 7, scope: !1479)
!1486 = !DILocation(line: 136, column: 10, scope: !1483)
!1487 = !DILocation(line: 136, column: 17, scope: !1479)
!1488 = !DILocation(line: 137, column: 7, scope: !1479)
!1489 = !DILocation(line: 137, column: 10, scope: !1483)
!1490 = !DILocation(line: 137, column: 17, scope: !1479)
!1491 = !DILocation(line: 138, column: 7, scope: !1479)
!1492 = !DILocation(line: 138, column: 10, scope: !1483)
!1493 = !DILocation(line: 138, column: 17, scope: !1479)
!1494 = !DILocation(line: 139, column: 7, scope: !1479)
!1495 = !DILocation(line: 139, column: 10, scope: !1483)
!1496 = !DILocation(line: 139, column: 17, scope: !1479)
!1497 = !DILocation(line: 134, column: 7, scope: !275)
!1498 = !DILocation(line: 140, column: 5, scope: !1479)
!1499 = !DILocation(line: 143, column: 3, scope: !275)
!1500 = !DILocation(line: 144, column: 1, scope: !275)
