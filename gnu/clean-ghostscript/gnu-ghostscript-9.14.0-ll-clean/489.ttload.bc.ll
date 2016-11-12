; ModuleID = './ttload.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._TFace = type { %struct.ttfReader_s*, %struct.ttfFont_s*, %struct._TMaxProfile, i32, i32, i8*, i32, i8*, i32, i16*, i32, i32, i32, i32 }
%struct.ttfReader_s = type { i32 (%struct.ttfReader_s*)*, void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*, i32, i8**, i32*)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)* }
%struct.ttfFont_s = type { %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct._TFace*, %struct._TInstance*, %struct._TExecution_Context*, %struct.ttfInterpreter_s*, void (%struct.ttfFont_s*)*, i32 (%struct.ttfFont_s*, i8*, ...)*, %struct.gs_memory_s* }
%struct.ttfPtrElem = type { i32, i32 }
%struct._TInstance = type { %struct._TFace*, i32, %struct._TIns_Metrics, i32, %struct._TDefRecord*, i32, %struct._TDefRecord*, i32, [256 x i8], [3 x %struct._TCodeRange], %struct._TGraphicsState, %struct._TGraphicsState, i32, i64*, i32, i64* }
%struct._TIns_Metrics = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, [4 x i32], i32, i32 }
%struct._TDefRecord = type { i32, i32, i8, i32 }
%struct._TCodeRange = type { i8*, i32 }
%struct._TGraphicsState = type { i32, i32, i32, %struct._TT_UnitVector, %struct._TT_UnitVector, %struct._TT_UnitVector, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32 }
%struct._TT_UnitVector = type { i16, i16 }
%struct._TExecution_Context = type { %struct._TFace*, i32, i32, i8*, i32, i32, i8, i32, i32, i32, %struct._TDefRecord*, i32, %struct._TDefRecord*, i32, [256 x i8], i8*, i32, i32, i32, %struct._TCallRecord*, [3 x %struct._TCodeRange], i32, i64*, i32, i32, i64*, i32, i32, i32, i32, i32, %struct._TIns_Metrics, i32, i64, i64, i32, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, i32, %struct._TGraphicsState, %struct._TGraphicsState, i32, i32, i64*, i64, i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, i32 (%struct._TExecution_Context*, i32)*, void (%struct._TExecution_Context*, i32, i32)*, void (%struct._TExecution_Context*, i32, i32)*, %struct.gsfix_jmp_buf, i32, i32, i32, i32, %struct.ttfMemory_s* }
%struct._TCallRecord = type { i32, i32, i32, i32 }
%struct._TGlyph_Zone = type { i32, i32, i32*, i32*, i32*, i32*, i8*, i16* }
%struct.gsfix_jmp_buf = type { [208 x i8] }
%struct.ttfMemory_s = type { i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)* }
%struct.ttfMemoryDescriptor_s = type opaque
%struct.ttfInterpreter_s = type { %struct._TExecution_Context*, %struct.ttfSubGlyphUsage_s*, i32, i32, i32, %struct.ttfMemory_s* }
%struct.ttfSubGlyphUsage_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct._TMaxProfile = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [18 x i8] c"Load_TrueType_CVT\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Load_TrueType_Programs\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Load_TrueType_MaxProfile(%struct._TFace* %face) #0 {
entry:
  %face.addr = alloca %struct._TFace*, align 8
  %r = alloca %struct.ttfReader_s*, align 8
  %font = alloca %struct.ttfFont_s*, align 8
  %maxProfile = alloca %struct._TMaxProfile*, align 8
  store %struct._TFace* %face, %struct._TFace** %face.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %r1 = getelementptr inbounds %struct._TFace, %struct._TFace* %1, i32 0, i32 0
  %2 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r1, align 8, !tbaa !5
  store %struct.ttfReader_s* %2, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %3 = bitcast %struct.ttfFont_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %font2 = getelementptr inbounds %struct._TFace, %struct._TFace* %4, i32 0, i32 1
  %5 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font2, align 8, !tbaa !10
  store %struct.ttfFont_s* %5, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %6 = bitcast %struct._TMaxProfile** %maxProfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %maxProfile3 = getelementptr inbounds %struct._TFace, %struct._TFace* %7, i32 0, i32 2
  store %struct._TMaxProfile* %maxProfile3, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %8 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %Seek = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %8, i32 0, i32 2
  %9 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek, align 8, !tbaa !11
  %10 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %11 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %t_maxp = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %11, i32 0, i32 9
  %nPos = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_maxp, i32 0, i32 0
  %12 = load i32, i32* %nPos, align 4, !tbaa !13
  call void %9(%struct.ttfReader_s* %10, i32 %12) #3
  %13 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call = call i32 @ttfReader__UInt(%struct.ttfReader_s* %13) #3
  %14 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %version = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %14, i32 0, i32 0
  store i32 %call, i32* %version, align 4, !tbaa !16
  %15 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call4 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %15) #3
  %16 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %numGlyphs = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %16, i32 0, i32 1
  store i16 %call4, i16* %numGlyphs, align 2, !tbaa !17
  %17 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call5 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %17) #3
  %18 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxPoints = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %18, i32 0, i32 2
  store i16 %call5, i16* %maxPoints, align 2, !tbaa !18
  %19 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call6 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %19) #3
  %20 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxContours = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %20, i32 0, i32 3
  store i16 %call6, i16* %maxContours, align 2, !tbaa !19
  %21 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call7 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %21) #3
  %22 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxCompositePoints = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %22, i32 0, i32 4
  store i16 %call7, i16* %maxCompositePoints, align 2, !tbaa !20
  %23 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call8 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %23) #3
  %24 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxCompositeContours = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %24, i32 0, i32 5
  store i16 %call8, i16* %maxCompositeContours, align 2, !tbaa !21
  %25 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call9 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %25) #3
  %26 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxZones = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %26, i32 0, i32 6
  store i16 %call9, i16* %maxZones, align 2, !tbaa !22
  %27 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call10 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %27) #3
  %28 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxTwilightPoints = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %28, i32 0, i32 7
  store i16 %call10, i16* %maxTwilightPoints, align 2, !tbaa !23
  %29 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call11 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %29) #3
  %30 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxStorage = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %30, i32 0, i32 8
  store i16 %call11, i16* %maxStorage, align 2, !tbaa !24
  %31 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call12 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %31) #3
  %32 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxFunctionDefs = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %32, i32 0, i32 9
  store i16 %call12, i16* %maxFunctionDefs, align 2, !tbaa !25
  %33 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call13 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %33) #3
  %34 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxInstructionDefs = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %34, i32 0, i32 10
  store i16 %call13, i16* %maxInstructionDefs, align 2, !tbaa !26
  %35 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call14 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %35) #3
  %36 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxStackElements = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %36, i32 0, i32 11
  store i16 %call14, i16* %maxStackElements, align 2, !tbaa !27
  %37 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call15 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %37) #3
  %38 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxSizeOfInstructions = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %38, i32 0, i32 12
  store i16 %call15, i16* %maxSizeOfInstructions, align 2, !tbaa !28
  %39 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call16 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %39) #3
  %40 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxComponentElements = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %40, i32 0, i32 13
  store i16 %call16, i16* %maxComponentElements, align 2, !tbaa !29
  %41 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call17 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %41) #3
  %42 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxComponentDepth = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %42, i32 0, i32 14
  store i16 %call17, i16* %maxComponentDepth, align 2, !tbaa !30
  %43 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %numGlyphs18 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %43, i32 0, i32 1
  %44 = load i16, i16* %numGlyphs18, align 2, !tbaa !17
  %conv = zext i16 %44 to i32
  %45 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %numGlyphs19 = getelementptr inbounds %struct._TFace, %struct._TFace* %45, i32 0, i32 10
  store i32 %conv, i32* %numGlyphs19, align 4, !tbaa !31
  %46 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxCompositePoints20 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %46, i32 0, i32 4
  %47 = load i16, i16* %maxCompositePoints20, align 2, !tbaa !20
  %conv21 = zext i16 %47 to i32
  %48 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxPoints22 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %48, i32 0, i32 2
  %49 = load i16, i16* %maxPoints22, align 2, !tbaa !18
  %conv23 = zext i16 %49 to i32
  %cmp = icmp sgt i32 %conv21, %conv23
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %50 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxCompositePoints25 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %50, i32 0, i32 4
  %51 = load i16, i16* %maxCompositePoints25, align 2, !tbaa !20
  %conv26 = zext i16 %51 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %52 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxPoints27 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %52, i32 0, i32 2
  %53 = load i16, i16* %maxPoints27, align 2, !tbaa !18
  %conv28 = zext i16 %53 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv26, %cond.true ], [ %conv28, %cond.false ]
  %54 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %maxPoints29 = getelementptr inbounds %struct._TFace, %struct._TFace* %54, i32 0, i32 11
  store i32 %cond, i32* %maxPoints29, align 4, !tbaa !32
  %55 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxCompositeContours30 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %55, i32 0, i32 5
  %56 = load i16, i16* %maxCompositeContours30, align 2, !tbaa !21
  %conv31 = zext i16 %56 to i32
  %57 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxContours32 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %57, i32 0, i32 3
  %58 = load i16, i16* %maxContours32, align 2, !tbaa !19
  %conv33 = zext i16 %58 to i32
  %cmp34 = icmp sgt i32 %conv31, %conv33
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.end
  %59 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxCompositeContours37 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %59, i32 0, i32 5
  %60 = load i16, i16* %maxCompositeContours37, align 2, !tbaa !21
  %conv38 = zext i16 %60 to i32
  br label %cond.end.42

cond.false.39:                                    ; preds = %cond.end
  %61 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxContours40 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %61, i32 0, i32 3
  %62 = load i16, i16* %maxContours40, align 2, !tbaa !19
  %conv41 = zext i16 %62 to i32
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.39, %cond.true.36
  %cond43 = phi i32 [ %conv38, %cond.true.36 ], [ %conv41, %cond.false.39 ]
  %63 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %maxContours44 = getelementptr inbounds %struct._TFace, %struct._TFace* %63, i32 0, i32 12
  store i32 %cond43, i32* %maxContours44, align 4, !tbaa !33
  %64 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxComponentElements45 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %64, i32 0, i32 13
  %65 = load i16, i16* %maxComponentElements45, align 2, !tbaa !29
  %conv46 = zext i16 %65 to i32
  %66 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxProfile, align 8, !tbaa !1
  %maxComponentDepth47 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %66, i32 0, i32 14
  %67 = load i16, i16* %maxComponentDepth47, align 2, !tbaa !30
  %conv48 = zext i16 %67 to i32
  %add = add nsw i32 %conv46, %conv48
  %68 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %maxComponents = getelementptr inbounds %struct._TFace, %struct._TFace* %68, i32 0, i32 13
  store i32 %add, i32* %maxComponents, align 4, !tbaa !34
  %69 = bitcast %struct._TMaxProfile** %maxProfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.ttfFont_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @ttfReader__UInt(%struct.ttfReader_s*) #2

declare zeroext i16 @ttfReader__UShort(%struct.ttfReader_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @Load_TrueType_CVT(%struct._TFace* %face) #0 {
entry:
  %retval = alloca i32, align 4
  %face.addr = alloca %struct._TFace*, align 8
  %n = alloca i64, align 8
  %limit = alloca i32, align 4
  %r = alloca %struct.ttfReader_s*, align 8
  %font = alloca %struct.ttfFont_s*, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TFace* %face, %struct._TFace** %face.addr, align 8, !tbaa !1
  %0 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %r1 = getelementptr inbounds %struct._TFace, %struct._TFace* %3, i32 0, i32 0
  %4 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r1, align 8, !tbaa !5
  store %struct.ttfReader_s* %4, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %5 = bitcast %struct.ttfFont_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %font2 = getelementptr inbounds %struct._TFace, %struct._TFace* %6, i32 0, i32 1
  %7 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font2, align 8, !tbaa !10
  store %struct.ttfFont_s* %7, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %8 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %9, i32 0, i32 24
  %10 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !35
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %10, i32 0, i32 5
  %11 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !36
  store %struct.ttfMemory_s* %11, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %12 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %Seek = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %12, i32 0, i32 2
  %13 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek, align 8, !tbaa !11
  %14 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %15 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %t_cvt_ = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %15, i32 0, i32 0
  %nPos = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_cvt_, i32 0, i32 0
  %16 = load i32, i32* %nPos, align 4, !tbaa !38
  call void %13(%struct.ttfReader_s* %14, i32 %16) #3
  %17 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TFace, %struct._TFace* %17, i32 0, i32 9
  store i16* null, i16** %cvt, align 8, !tbaa !39
  %18 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %t_cvt_3 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %18, i32 0, i32 0
  %nLen = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_cvt_3, i32 0, i32 1
  %19 = load i32, i32* %nLen, align 4, !tbaa !40
  %div = sdiv i32 %19, 2
  %20 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TFace, %struct._TFace* %20, i32 0, i32 8
  store i32 %div, i32* %cvtSize, align 4, !tbaa !41
  %21 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtSize4 = getelementptr inbounds %struct._TFace, %struct._TFace* %21, i32 0, i32 8
  %22 = load i32, i32* %cvtSize4, align 4, !tbaa !41
  %cmp = icmp sgt i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %23 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %23, i32 0, i32 0
  %24 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !42
  %25 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %26 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtSize5 = getelementptr inbounds %struct._TFace, %struct._TFace* %26, i32 0, i32 8
  %27 = load i32, i32* %cvtSize5, align 4, !tbaa !41
  %conv = sext i32 %27 to i64
  %mul = mul i64 %conv, 2
  %conv6 = trunc i64 %mul to i32
  %call = call i8* %24(%struct.ttfMemory_s* %25, i32 %conv6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #3
  %28 = bitcast i8* %call to i16*
  %29 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvt7 = getelementptr inbounds %struct._TFace, %struct._TFace* %29, i32 0, i32 9
  store i16* %28, i16** %cvt7, align 8, !tbaa !39
  %30 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvt8 = getelementptr inbounds %struct._TFace, %struct._TFace* %30, i32 0, i32 9
  %31 = load i16*, i16** %cvt8, align 8, !tbaa !39
  %tobool = icmp ne i16* %31, null
  br i1 %tobool, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  store i32 256, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %32 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtSize11 = getelementptr inbounds %struct._TFace, %struct._TFace* %32, i32 0, i32 8
  %33 = load i32, i32* %cvtSize11, align 4, !tbaa !41
  store i32 %33, i32* %limit, align 4, !tbaa !44
  store i64 0, i64* %n, align 8, !tbaa !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %34 = load i64, i64* %n, align 8, !tbaa !45
  %35 = load i32, i32* %limit, align 4, !tbaa !44
  %conv12 = sext i32 %35 to i64
  %cmp13 = icmp slt i64 %34, %conv12
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %36 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %Eof = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %36, i32 0, i32 0
  %37 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Eof, align 8, !tbaa !47
  %38 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call15 = call i32 %37(%struct.ttfReader_s* %38) #3
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %39 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %39, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %40 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %call17 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %40) #3
  %41 = load i64, i64* %n, align 8, !tbaa !45
  %42 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvt18 = getelementptr inbounds %struct._TFace, %struct._TFace* %42, i32 0, i32 9
  %43 = load i16*, i16** %cvt18, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i16, i16* %43, i64 %41
  store i16 %call17, i16* %arrayidx, align 2, !tbaa !48
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i64, i64* %n, align 8, !tbaa !45
  %inc = add nsw i64 %44, 1
  store i64 %inc, i64* %n, align 8, !tbaa !45
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.9
  %45 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.ttfFont_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare signext i16 @ttfReader__Short(%struct.ttfReader_s*) #2

; Function Attrs: nounwind uwtable
define i32 @Load_TrueType_Programs(%struct._TFace* %face) #0 {
entry:
  %retval = alloca i32, align 4
  %face.addr = alloca %struct._TFace*, align 8
  %r = alloca %struct.ttfReader_s*, align 8
  %font = alloca %struct.ttfFont_s*, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TFace* %face, %struct._TFace** %face.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %r1 = getelementptr inbounds %struct._TFace, %struct._TFace* %1, i32 0, i32 0
  %2 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r1, align 8, !tbaa !5
  store %struct.ttfReader_s* %2, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %3 = bitcast %struct.ttfFont_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %font2 = getelementptr inbounds %struct._TFace, %struct._TFace* %4, i32 0, i32 1
  %5 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font2, align 8, !tbaa !10
  store %struct.ttfFont_s* %5, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %6 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %7, i32 0, i32 24
  %8 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !35
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %8, i32 0, i32 5
  %9 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !36
  store %struct.ttfMemory_s* %9, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %10 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontProgram = getelementptr inbounds %struct._TFace, %struct._TFace* %10, i32 0, i32 5
  store i8* null, i8** %fontProgram, align 8, !tbaa !49
  %11 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtProgram = getelementptr inbounds %struct._TFace, %struct._TFace* %11, i32 0, i32 7
  store i8* null, i8** %cvtProgram, align 8, !tbaa !50
  %12 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %t_fpgm = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %12, i32 0, i32 1
  %nPos = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_fpgm, i32 0, i32 0
  %13 = load i32, i32* %nPos, align 4, !tbaa !51
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %14 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontProgram3 = getelementptr inbounds %struct._TFace, %struct._TFace* %14, i32 0, i32 5
  store i8* null, i8** %fontProgram3, align 8, !tbaa !49
  %15 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontPgmSize = getelementptr inbounds %struct._TFace, %struct._TFace* %15, i32 0, i32 4
  store i32 0, i32* %fontPgmSize, align 4, !tbaa !52
  br label %if.end.15

if.else:                                          ; preds = %entry
  %16 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %t_fpgm4 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %16, i32 0, i32 1
  %nLen = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_fpgm4, i32 0, i32 1
  %17 = load i32, i32* %nLen, align 4, !tbaa !53
  %18 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontPgmSize5 = getelementptr inbounds %struct._TFace, %struct._TFace* %18, i32 0, i32 4
  store i32 %17, i32* %fontPgmSize5, align 4, !tbaa !52
  %19 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %Seek = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %19, i32 0, i32 2
  %20 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek, align 8, !tbaa !11
  %21 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %22 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %t_fpgm6 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %22, i32 0, i32 1
  %nPos7 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_fpgm6, i32 0, i32 0
  %23 = load i32, i32* %nPos7, align 4, !tbaa !51
  call void %20(%struct.ttfReader_s* %21, i32 %23) #3
  %24 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %24, i32 0, i32 0
  %25 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !42
  %26 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %27 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontPgmSize8 = getelementptr inbounds %struct._TFace, %struct._TFace* %27, i32 0, i32 4
  %28 = load i32, i32* %fontPgmSize8, align 4, !tbaa !52
  %call = call i8* %25(%struct.ttfMemory_s* %26, i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #3
  %29 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontProgram9 = getelementptr inbounds %struct._TFace, %struct._TFace* %29, i32 0, i32 5
  store i8* %call, i8** %fontProgram9, align 8, !tbaa !49
  %30 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontProgram10 = getelementptr inbounds %struct._TFace, %struct._TFace* %30, i32 0, i32 5
  %31 = load i8*, i8** %fontProgram10, align 8, !tbaa !49
  %tobool11 = icmp ne i8* %31, null
  br i1 %tobool11, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.else
  store i32 256, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %32 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %32, i32 0, i32 1
  %33 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read, align 8, !tbaa !54
  %34 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %35 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontProgram13 = getelementptr inbounds %struct._TFace, %struct._TFace* %35, i32 0, i32 5
  %36 = load i8*, i8** %fontProgram13, align 8, !tbaa !49
  %37 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontPgmSize14 = getelementptr inbounds %struct._TFace, %struct._TFace* %37, i32 0, i32 4
  %38 = load i32, i32* %fontPgmSize14, align 4, !tbaa !52
  call void %33(%struct.ttfReader_s* %34, i8* %36, i32 %38) #3
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %39 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %t_prep = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %39, i32 0, i32 10
  %nPos16 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_prep, i32 0, i32 0
  %40 = load i32, i32* %nPos16, align 4, !tbaa !55
  %tobool17 = icmp ne i32 %40, 0
  br i1 %tobool17, label %if.else.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %41 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtProgram19 = getelementptr inbounds %struct._TFace, %struct._TFace* %41, i32 0, i32 7
  store i8* null, i8** %cvtProgram19, align 8, !tbaa !50
  %42 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtPgmSize = getelementptr inbounds %struct._TFace, %struct._TFace* %42, i32 0, i32 6
  store i32 0, i32* %cvtPgmSize, align 4, !tbaa !56
  br label %if.end.38

if.else.20:                                       ; preds = %if.end.15
  %43 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %t_prep21 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %43, i32 0, i32 10
  %nLen22 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_prep21, i32 0, i32 1
  %44 = load i32, i32* %nLen22, align 4, !tbaa !57
  %45 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtPgmSize23 = getelementptr inbounds %struct._TFace, %struct._TFace* %45, i32 0, i32 6
  store i32 %44, i32* %cvtPgmSize23, align 4, !tbaa !56
  %46 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %Seek24 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %46, i32 0, i32 2
  %47 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek24, align 8, !tbaa !11
  %48 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %49 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !1
  %t_prep25 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %49, i32 0, i32 10
  %nPos26 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_prep25, i32 0, i32 0
  %50 = load i32, i32* %nPos26, align 4, !tbaa !55
  call void %47(%struct.ttfReader_s* %48, i32 %50) #3
  %51 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes27 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %51, i32 0, i32 0
  %52 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes27, align 8, !tbaa !42
  %53 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %54 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtPgmSize28 = getelementptr inbounds %struct._TFace, %struct._TFace* %54, i32 0, i32 6
  %55 = load i32, i32* %cvtPgmSize28, align 4, !tbaa !56
  %call29 = call i8* %52(%struct.ttfMemory_s* %53, i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #3
  %56 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtProgram30 = getelementptr inbounds %struct._TFace, %struct._TFace* %56, i32 0, i32 7
  store i8* %call29, i8** %cvtProgram30, align 8, !tbaa !50
  %57 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtProgram31 = getelementptr inbounds %struct._TFace, %struct._TFace* %57, i32 0, i32 7
  %58 = load i8*, i8** %cvtProgram31, align 8, !tbaa !50
  %tobool32 = icmp ne i8* %58, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.else.20
  store i32 256, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.else.20
  %59 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %Read35 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %59, i32 0, i32 1
  %60 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read35, align 8, !tbaa !54
  %61 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !1
  %62 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtProgram36 = getelementptr inbounds %struct._TFace, %struct._TFace* %62, i32 0, i32 7
  %63 = load i8*, i8** %cvtProgram36, align 8, !tbaa !50
  %64 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtPgmSize37 = getelementptr inbounds %struct._TFace, %struct._TFace* %64, i32 0, i32 6
  %65 = load i32, i32* %cvtPgmSize37, align 4, !tbaa !56
  call void %60(%struct.ttfReader_s* %61, i8* %63, i32 %65) #3
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.34, %if.then.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.33, %if.then.12
  %66 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.ttfFont_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"_TFace", !2, i64 0, !2, i64 8, !7, i64 16, !8, i64 48, !8, i64 52, !2, i64 56, !8, i64 64, !2, i64 72, !8, i64 80, !2, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108}
!7 = !{!"_TMaxProfile", !8, i64 0, !9, i64 4, !9, i64 6, !9, i64 8, !9, i64 10, !9, i64 12, !9, i64 14, !9, i64 16, !9, i64 18, !9, i64 20, !9, i64 22, !9, i64 24, !9, i64 26, !9, i64 28, !9, i64 30}
!8 = !{!"int", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!6, !2, i64 8}
!11 = !{!12, !2, i64 16}
!12 = !{!"ttfReader_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!13 = !{!14, !8, i64 72}
!14 = !{!"ttfFont_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !9, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184}
!15 = !{!"", !8, i64 0, !8, i64 4}
!16 = !{!7, !8, i64 0}
!17 = !{!7, !9, i64 4}
!18 = !{!7, !9, i64 6}
!19 = !{!7, !9, i64 8}
!20 = !{!7, !9, i64 10}
!21 = !{!7, !9, i64 12}
!22 = !{!7, !9, i64 14}
!23 = !{!7, !9, i64 16}
!24 = !{!7, !9, i64 18}
!25 = !{!7, !9, i64 20}
!26 = !{!7, !9, i64 22}
!27 = !{!7, !9, i64 24}
!28 = !{!7, !9, i64 26}
!29 = !{!7, !9, i64 28}
!30 = !{!7, !9, i64 30}
!31 = !{!6, !8, i64 96}
!32 = !{!6, !8, i64 100}
!33 = !{!6, !8, i64 104}
!34 = !{!6, !8, i64 108}
!35 = !{!14, !2, i64 160}
!36 = !{!37, !2, i64 32}
!37 = !{!"ttfInterpreter_s", !2, i64 0, !2, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !2, i64 32}
!38 = !{!14, !8, i64 0}
!39 = !{!6, !2, i64 88}
!40 = !{!14, !8, i64 4}
!41 = !{!6, !8, i64 80}
!42 = !{!43, !2, i64 0}
!43 = !{!"ttfMemory_s", !2, i64 0, !2, i64 8, !2, i64 16}
!44 = !{!8, !8, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !3, i64 0}
!47 = !{!12, !2, i64 0}
!48 = !{!9, !9, i64 0}
!49 = !{!6, !2, i64 56}
!50 = !{!6, !2, i64 72}
!51 = !{!14, !8, i64 8}
!52 = !{!6, !8, i64 52}
!53 = !{!14, !8, i64 12}
!54 = !{!12, !2, i64 8}
!55 = !{!14, !8, i64 80}
!56 = !{!6, !8, i64 64}
!57 = !{!14, !8, i64 84}
