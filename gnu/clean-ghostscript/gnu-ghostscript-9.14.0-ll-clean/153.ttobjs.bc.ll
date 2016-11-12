; ModuleID = './ttobjs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._TGraphicsState = type { i32, i32, i32, %struct._TT_UnitVector, %struct._TT_UnitVector, %struct._TT_UnitVector, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32 }
%struct._TT_UnitVector = type { i16, i16 }
%struct._TExecution_Context = type { %struct._TFace*, i32, i32, i8*, i32, i32, i8, i32, i32, i32, %struct._TDefRecord*, i32, %struct._TDefRecord*, i32, [256 x i8], i8*, i32, i32, i32, %struct._TCallRecord*, [3 x %struct._TCodeRange], i32, i64*, i32, i32, i64*, i32, i32, i32, i32, i32, %struct._TIns_Metrics, i32, i64, i64, i32, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, i32, %struct._TGraphicsState, %struct._TGraphicsState, i32, i32, i64*, i64, {}*, {}*, {}*, {}*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, i32 (%struct._TExecution_Context*, i32)*, void (%struct._TExecution_Context*, i32, i32)*, void (%struct._TExecution_Context*, i32, i32)*, %struct.gsfix_jmp_buf, i32, i32, i32, i32, %struct.ttfMemory_s* }
%struct._TFace = type { %struct.ttfReader_s*, %struct.ttfFont_s*, %struct._TMaxProfile, i32, i32, i8*, i32, i8*, i32, i16*, i32, i32, i32, i32 }
%struct.ttfReader_s = type { i32 (%struct.ttfReader_s*)*, void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*, i32, i8**, i32*)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)* }
%struct.ttfFont_s = type { %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct._TFace*, %struct._TInstance*, %struct._TExecution_Context*, %struct.ttfInterpreter_s*, void (%struct.ttfFont_s*)*, i32 (%struct.ttfFont_s*, i8*, ...)*, %struct.gs_memory_s* }
%struct.ttfPtrElem = type { i32, i32 }
%struct._TInstance = type { %struct._TFace*, i32, %struct._TIns_Metrics, i32, %struct._TDefRecord*, i32, %struct._TDefRecord*, i32, [256 x i8], [3 x %struct._TCodeRange], %struct._TGraphicsState, %struct._TGraphicsState, i32, i64*, i32, i64* }
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
%struct._TDefRecord = type { i32, i32, i8, i32 }
%struct._TCallRecord = type { i32, i32, i32, i32 }
%struct._TCodeRange = type { i8*, i32 }
%struct._TIns_Metrics = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, [4 x i32], i32, i32 }
%struct._TGlyph_Zone = type { i32, i32, i32*, i32*, i32*, i32*, i8*, i16* }
%struct.gsfix_jmp_buf = type { [208 x i8] }
%struct.ttfMemory_s = type { i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)* }
%struct.ttfMemoryDescriptor_s = type opaque

@.str = private unnamed_addr constant [9 x i8] c"ttobjs.c\00", align 1
@Default_GraphicsState = constant %struct._TGraphicsState { i32 0, i32 0, i32 0, %struct._TT_UnitVector { i16 16384, i16 0 }, %struct._TT_UnitVector { i16 16384, i16 0 }, %struct._TT_UnitVector { i16 16384, i16 0 }, i64 1, i32 64, i32 1, i32 1, i32 68, i32 0, i32 0, i32 9, i32 3, i8 0, i32 0, i32 2, i32 1, i32 1, i32 1 }, align 8

; Function Attrs: nounwind uwtable
define i32 @Goto_CodeRange(%struct._TExecution_Context* %exec, i32 %range, i32 %IP) #0 {
entry:
  %retval = alloca i32, align 4
  %exec.addr = alloca %struct._TExecution_Context*, align 8
  %range.addr = alloca i32, align 4
  %IP.addr = alloca i32, align 4
  %cr = alloca %struct._TCodeRange*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exec, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  store i32 %range, i32* %range.addr, align 4, !tbaa !5
  store i32 %IP, i32* %IP.addr, align 4, !tbaa !5
  %0 = bitcast %struct._TCodeRange** %cr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %range.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %range.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %2, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1028, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %range.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 20
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 %idxprom
  store %struct._TCodeRange* %arrayidx, %struct._TCodeRange** %cr, align 8, !tbaa !1
  %5 = load %struct._TCodeRange*, %struct._TCodeRange** %cr, align 8, !tbaa !1
  %Base = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %5, i32 0, i32 0
  %6 = load i8*, i8** %Base, align 8, !tbaa !7
  %cmp2 = icmp eq i8* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1039, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %7 = load i32, i32* %IP.addr, align 4, !tbaa !5
  %8 = load %struct._TCodeRange*, %struct._TCodeRange** %cr, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %8, i32 0, i32 1
  %9 = load i32, i32* %Size, align 4, !tbaa !9
  %cmp5 = icmp sgt i32 %7, %9
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 1027, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %10 = load %struct._TCodeRange*, %struct._TCodeRange** %cr, align 8, !tbaa !1
  %Base8 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %10, i32 0, i32 0
  %11 = load i8*, i8** %Base8, align 8, !tbaa !7
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 3
  store i8* %11, i8** %code, align 8, !tbaa !10
  %13 = load %struct._TCodeRange*, %struct._TCodeRange** %cr, align 8, !tbaa !1
  %Size9 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %13, i32 0, i32 1
  %14 = load i32, i32* %Size9, align 4, !tbaa !9
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 5
  store i32 %14, i32* %codeSize, align 4, !tbaa !19
  %16 = load i32, i32* %IP.addr, align 4, !tbaa !5
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %IP10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 4
  store i32 %16, i32* %IP10, align 4, !tbaa !20
  %18 = load i32, i32* %range.addr, align 4, !tbaa !5
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %curRange = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 2
  store i32 %18, i32* %curRange, align 4, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.3, %if.then
  %20 = bitcast %struct._TCodeRange** %cr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @Unset_CodeRange(%struct._TExecution_Context* %exec) #0 {
entry:
  %exec.addr = alloca %struct._TExecution_Context*, align 8
  store %struct._TExecution_Context* %exec, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 3
  store i8* null, i8** %code, align 8, !tbaa !10
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 5
  store i32 0, i32* %codeSize, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._TCodeRange* @Get_CodeRange(%struct._TExecution_Context* %exec, i32 %range) #0 {
entry:
  %retval = alloca %struct._TCodeRange*, align 8
  %exec.addr = alloca %struct._TExecution_Context*, align 8
  %range.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exec, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  store i32 %range, i32* %range.addr, align 4, !tbaa !5
  %0 = load i32, i32* %range.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %range.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._TCodeRange* null, %struct._TCodeRange** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %range.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 20
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 %idxprom
  store %struct._TCodeRange* %arrayidx, %struct._TCodeRange** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._TCodeRange*, %struct._TCodeRange** %retval
  ret %struct._TCodeRange* %4
}

; Function Attrs: nounwind uwtable
define i32 @Set_CodeRange(%struct._TExecution_Context* %exec, i32 %range, i8* %base, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %exec.addr = alloca %struct._TExecution_Context*, align 8
  %range.addr = alloca i32, align 4
  %base.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exec, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  store i32 %range, i32* %range.addr, align 4, !tbaa !5
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  %0 = load i32, i32* %range.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %range.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1028, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %3 = load i32, i32* %range.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 20
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 %idxprom
  %Base = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx, i32 0, i32 0
  store i8* %2, i8** %Base, align 8, !tbaa !7
  %5 = load i32, i32* %length.addr, align 4, !tbaa !5
  %6 = load i32, i32* %range.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %6, 1
  %idxprom3 = sext i32 %sub2 to i64
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 20
  %arrayidx5 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable4, i32 0, i64 %idxprom3
  %Size = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx5, i32 0, i32 1
  store i32 %5, i32* %Size, align 4, !tbaa !9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @Clear_CodeRange(%struct._TExecution_Context* %exec, i32 %range) #0 {
entry:
  %retval = alloca i32, align 4
  %exec.addr = alloca %struct._TExecution_Context*, align 8
  %range.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exec, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  store i32 %range, i32* %range.addr, align 4, !tbaa !5
  %0 = load i32, i32* %range.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %range.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1028, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %range.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 20
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 %idxprom
  %Base = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx, i32 0, i32 0
  store i8* null, i8** %Base, align 8, !tbaa !7
  %4 = load i32, i32* %range.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %4, 1
  %idxprom3 = sext i32 %sub2 to i64
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 20
  %arrayidx5 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable4, i32 0, i64 %idxprom3
  %Size = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx5, i32 0, i32 1
  store i32 0, i32* %Size, align 4, !tbaa !9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @Context_Destroy(i8* %_context) #0 {
entry:
  %retval = alloca i32, align 4
  %_context.addr = alloca i8*, align 8
  %exec = alloca %struct._TExecution_Context*, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %_context, i8** %_context.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %_context.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._TExecution_Context*
  store %struct._TExecution_Context* %2, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %3 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %tobool = icmp ne %struct._TExecution_Context* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 60
  %6 = load i32, i32* %lock, align 4, !tbaa !22
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %lock, align 4, !tbaa !22
  %tobool1 = icmp ne i32 %dec, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 61
  %8 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %memory, align 8, !tbaa !23
  store %struct.ttfMemory_s* %8, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %9 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %tobool4 = icmp ne %struct.ttfMemory_s* %9, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.3
  %10 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %10, i32 0, i32 2
  %11 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free, align 8, !tbaa !24
  %12 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 39
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 5
  %14 = load i32*, i32** %cur_y, align 8, !tbaa !26
  %15 = bitcast i32* %14 to i8*
  call void %11(%struct.ttfMemory_s* %12, i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 39
  %cur_y8 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts7, i32 0, i32 5
  store i32* null, i32** %cur_y8, align 8, !tbaa !26
  %17 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free9 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %17, i32 0, i32 2
  %18 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free9, align 8, !tbaa !24
  %19 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 39
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts10, i32 0, i32 4
  %21 = load i32*, i32** %cur_x, align 8, !tbaa !27
  %22 = bitcast i32* %21 to i8*
  call void %18(%struct.ttfMemory_s* %19, i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts11 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 39
  %cur_x12 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts11, i32 0, i32 4
  store i32* null, i32** %cur_x12, align 8, !tbaa !27
  %24 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free13 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %24, i32 0, i32 2
  %25 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free13, align 8, !tbaa !24
  %26 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 39
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts14, i32 0, i32 3
  %28 = load i32*, i32** %org_y, align 8, !tbaa !28
  %29 = bitcast i32* %28 to i8*
  call void %25(%struct.ttfMemory_s* %26, i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 39
  %org_y16 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts15, i32 0, i32 3
  store i32* null, i32** %org_y16, align 8, !tbaa !28
  %31 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free17 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %31, i32 0, i32 2
  %32 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free17, align 8, !tbaa !24
  %33 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts18 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 39
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts18, i32 0, i32 2
  %35 = load i32*, i32** %org_x, align 8, !tbaa !29
  %36 = bitcast i32* %35 to i8*
  call void %32(%struct.ttfMemory_s* %33, i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts19 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 39
  %org_x20 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts19, i32 0, i32 2
  store i32* null, i32** %org_x20, align 8, !tbaa !29
  %38 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free21 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %38, i32 0, i32 2
  %39 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free21, align 8, !tbaa !24
  %40 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %41 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts22 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %41, i32 0, i32 39
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts22, i32 0, i32 6
  %42 = load i8*, i8** %touch, align 8, !tbaa !30
  call void %39(%struct.ttfMemory_s* %40, i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts23 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %43, i32 0, i32 39
  %touch24 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts23, i32 0, i32 6
  store i8* null, i8** %touch24, align 8, !tbaa !30
  %44 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free25 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %44, i32 0, i32 2
  %45 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free25, align 8, !tbaa !24
  %46 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %47 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts26 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %47, i32 0, i32 39
  %contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts26, i32 0, i32 7
  %48 = load i16*, i16** %contours, align 8, !tbaa !31
  %49 = bitcast i16* %48 to i8*
  call void %45(%struct.ttfMemory_s* %46, i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts27 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 39
  %contours28 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts27, i32 0, i32 7
  store i16* null, i16** %contours28, align 8, !tbaa !31
  %51 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts29 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %51, i32 0, i32 39
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts29, i32 0, i32 0
  store i32 0, i32* %n_points, align 4, !tbaa !32
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts30 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %52, i32 0, i32 39
  %n_contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts30, i32 0, i32 1
  store i32 0, i32* %n_contours, align 4, !tbaa !33
  %53 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free31 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %53, i32 0, i32 2
  %54 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free31, align 8, !tbaa !24
  %55 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %56 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %56, i32 0, i32 40
  %touch32 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight, i32 0, i32 6
  %57 = load i8*, i8** %touch32, align 8, !tbaa !34
  call void %54(%struct.ttfMemory_s* %55, i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %58 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %58, i32 0, i32 40
  %touch34 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight33, i32 0, i32 6
  store i8* null, i8** %touch34, align 8, !tbaa !34
  %59 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free35 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %59, i32 0, i32 2
  %60 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free35, align 8, !tbaa !24
  %61 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %62 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight36 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %62, i32 0, i32 40
  %cur_y37 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight36, i32 0, i32 5
  %63 = load i32*, i32** %cur_y37, align 8, !tbaa !35
  %64 = bitcast i32* %63 to i8*
  call void %60(%struct.ttfMemory_s* %61, i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %65 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight38 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %65, i32 0, i32 40
  %cur_y39 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight38, i32 0, i32 5
  store i32* null, i32** %cur_y39, align 8, !tbaa !35
  %66 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free40 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %66, i32 0, i32 2
  %67 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free40, align 8, !tbaa !24
  %68 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %69 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight41 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %69, i32 0, i32 40
  %cur_x42 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight41, i32 0, i32 4
  %70 = load i32*, i32** %cur_x42, align 8, !tbaa !36
  %71 = bitcast i32* %70 to i8*
  call void %67(%struct.ttfMemory_s* %68, i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %72 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight43 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %72, i32 0, i32 40
  %cur_x44 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight43, i32 0, i32 4
  store i32* null, i32** %cur_x44, align 8, !tbaa !36
  %73 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free45 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %73, i32 0, i32 2
  %74 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free45, align 8, !tbaa !24
  %75 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %76 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight46 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %76, i32 0, i32 40
  %org_y47 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight46, i32 0, i32 3
  %77 = load i32*, i32** %org_y47, align 8, !tbaa !37
  %78 = bitcast i32* %77 to i8*
  call void %74(%struct.ttfMemory_s* %75, i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %79 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight48 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %79, i32 0, i32 40
  %org_y49 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight48, i32 0, i32 3
  store i32* null, i32** %org_y49, align 8, !tbaa !37
  %80 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free50 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %80, i32 0, i32 2
  %81 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free50, align 8, !tbaa !24
  %82 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %83 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight51 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %83, i32 0, i32 40
  %org_x52 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight51, i32 0, i32 2
  %84 = load i32*, i32** %org_x52, align 8, !tbaa !38
  %85 = bitcast i32* %84 to i8*
  call void %81(%struct.ttfMemory_s* %82, i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %86 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight53 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %86, i32 0, i32 40
  %org_x54 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight53, i32 0, i32 2
  store i32* null, i32** %org_x54, align 8, !tbaa !38
  %87 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free55 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %87, i32 0, i32 2
  %88 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free55, align 8, !tbaa !24
  %89 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %90 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight56 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %90, i32 0, i32 40
  %contours57 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight56, i32 0, i32 7
  %91 = load i16*, i16** %contours57, align 8, !tbaa !39
  %92 = bitcast i16* %91 to i8*
  call void %88(%struct.ttfMemory_s* %89, i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %93 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight58 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %93, i32 0, i32 40
  %contours59 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight58, i32 0, i32 7
  store i16* null, i16** %contours59, align 8, !tbaa !39
  %94 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight60 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %94, i32 0, i32 40
  %n_points61 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight60, i32 0, i32 0
  store i32 0, i32* %n_points61, align 4, !tbaa !40
  %95 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight62 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %95, i32 0, i32 40
  %n_contours63 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight62, i32 0, i32 1
  store i32 0, i32* %n_contours63, align 4, !tbaa !41
  %96 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free64 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %96, i32 0, i32 2
  %97 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free64, align 8, !tbaa !24
  %98 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %99 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %99, i32 0, i32 25
  %100 = load i64*, i64** %stack, align 8, !tbaa !42
  %101 = bitcast i64* %100 to i8*
  call void %97(%struct.ttfMemory_s* %98, i8* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %102 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %stack65 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %102, i32 0, i32 25
  store i64* null, i64** %stack65, align 8, !tbaa !42
  %103 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %stackSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %103, i32 0, i32 23
  store i32 0, i32* %stackSize, align 4, !tbaa !43
  %104 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free66 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %104, i32 0, i32 2
  %105 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free66, align 8, !tbaa !24
  %106 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %107 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callStack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %107, i32 0, i32 19
  %108 = load %struct._TCallRecord*, %struct._TCallRecord** %callStack, align 8, !tbaa !44
  %109 = bitcast %struct._TCallRecord* %108 to i8*
  call void %105(%struct.ttfMemory_s* %106, i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %110 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callStack67 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %110, i32 0, i32 19
  store %struct._TCallRecord* null, %struct._TCallRecord** %callStack67, align 8, !tbaa !44
  %111 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %111, i32 0, i32 18
  store i32 0, i32* %callSize, align 4, !tbaa !45
  %112 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callTop = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %112, i32 0, i32 17
  store i32 0, i32* %callTop, align 4, !tbaa !46
  %113 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %glyphSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %113, i32 0, i32 16
  store i32 0, i32* %glyphSize, align 4, !tbaa !47
  %114 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %maxGlyphSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %114, i32 0, i32 59
  store i32 0, i32* %maxGlyphSize, align 4, !tbaa !48
  %115 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %current_face = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %115, i32 0, i32 0
  store %struct._TFace* null, %struct._TFace** %current_face, align 8, !tbaa !49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then.2, %if.then
  %116 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = load i32, i32* %retval
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define i32 @Context_Create(i8* %_context, i8* %_face) #0 {
entry:
  %retval = alloca i32, align 4
  %_context.addr = alloca i8*, align 8
  %_face.addr = alloca i8*, align 8
  %exec = alloca %struct._TExecution_Context*, align 8
  %face = alloca %struct._TFace*, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  %maxp = alloca %struct._TMaxProfile*, align 8
  %n_points = alloca i32, align 4
  %n_twilight = alloca i32, align 4
  %callSize = alloca i32, align 4
  %stackSize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %_context, i8** %_context.addr, align 8, !tbaa !1
  store i8* %_face, i8** %_face.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %_context.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._TExecution_Context*
  store %struct._TExecution_Context* %2, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %3 = bitcast %struct._TFace** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %_face.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct._TFace*
  store %struct._TFace* %5, %struct._TFace** %face, align 8, !tbaa !1
  %6 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %font = getelementptr inbounds %struct._TFace, %struct._TFace* %7, i32 0, i32 1
  %8 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !50
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %8, i32 0, i32 24
  %9 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !53
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %9, i32 0, i32 5
  %10 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !56
  store %struct.ttfMemory_s* %10, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %11 = bitcast %struct._TMaxProfile** %maxp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %maxProfile = getelementptr inbounds %struct._TFace, %struct._TFace* %12, i32 0, i32 2
  store %struct._TMaxProfile* %maxProfile, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %13 = bitcast i32* %n_points to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %n_twilight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %callSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %stackSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 32, i32* %callSize, align 4, !tbaa !5
  %17 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 61
  store %struct.ttfMemory_s* %17, %struct.ttfMemory_s** %memory, align 8, !tbaa !23
  %19 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %maxStackElements = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %19, i32 0, i32 11
  %20 = load i16, i16* %maxStackElements, align 2, !tbaa !58
  %conv = zext i16 %20 to i32
  %add = add nsw i32 %conv, 32
  store i32 %add, i32* %stackSize, align 4, !tbaa !5
  %21 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %maxPoints = getelementptr inbounds %struct._TFace, %struct._TFace* %21, i32 0, i32 11
  %22 = load i32, i32* %maxPoints, align 4, !tbaa !59
  %add1 = add nsw i32 %22, 2
  store i32 %add1, i32* %n_points, align 4, !tbaa !5
  %23 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %maxTwilightPoints = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %23, i32 0, i32 7
  %24 = load i16, i16* %maxTwilightPoints, align 2, !tbaa !60
  %conv2 = zext i16 %24 to i32
  store i32 %conv2, i32* %n_twilight, align 4, !tbaa !5
  %25 = load i32, i32* %n_points, align 4, !tbaa !5
  %cmp = icmp slt i32 %25, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 100, i32* %n_points, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callSize4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 18
  %27 = load i32, i32* %callSize4, align 4, !tbaa !45
  %28 = load i32, i32* %callSize, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %27, %28
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br i1 false, label %if.then.208, label %lor.lhs.false

cond.false:                                       ; preds = %if.end
  %29 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callStack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 19
  %31 = load %struct._TCallRecord*, %struct._TCallRecord** %callStack, align 8, !tbaa !44
  %32 = bitcast %struct._TCallRecord* %31 to i8*
  %call = call i32 @free_aux(%struct.ttfMemory_s* %29, i8* %32) #4
  %33 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %33, i32 0, i32 0
  %34 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !61
  %35 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %36 = load i32, i32* %callSize, align 4, !tbaa !5
  %conv7 = sext i32 %36 to i64
  %mul = mul i64 %conv7, 16
  %conv8 = trunc i64 %mul to i32
  %call9 = call i8* %34(%struct.ttfMemory_s* %35, i32 %conv8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %37 = bitcast i8* %call9 to %struct._TCallRecord*
  %38 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callStack10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %38, i32 0, i32 19
  store %struct._TCallRecord* %37, %struct._TCallRecord** %callStack10, align 8, !tbaa !44
  %tobool = icmp ne %struct._TCallRecord* %37, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.208

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %stackSize11 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 23
  %40 = load i32, i32* %stackSize11, align 4, !tbaa !43
  %41 = load i32, i32* %stackSize, align 4, !tbaa !5
  %cmp12 = icmp sge i32 %40, %41
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %lor.lhs.false
  br i1 false, label %if.then.208, label %lor.lhs.false.24

cond.false.15:                                    ; preds = %lor.lhs.false
  %42 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %43, i32 0, i32 25
  %44 = load i64*, i64** %stack, align 8, !tbaa !42
  %45 = bitcast i64* %44 to i8*
  %call16 = call i32 @free_aux(%struct.ttfMemory_s* %42, i8* %45) #4
  %46 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes17 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %46, i32 0, i32 0
  %47 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes17, align 8, !tbaa !61
  %48 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %49 = load i32, i32* %stackSize, align 4, !tbaa !5
  %conv18 = sext i32 %49 to i64
  %mul19 = mul i64 %conv18, 8
  %conv20 = trunc i64 %mul19 to i32
  %call21 = call i8* %47(%struct.ttfMemory_s* %48, i32 %conv20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %50 = bitcast i8* %call21 to i64*
  %51 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %stack22 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %51, i32 0, i32 25
  store i64* %50, i64** %stack22, align 8, !tbaa !42
  %tobool23 = icmp ne i64* %50, null
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then.208

lor.lhs.false.24:                                 ; preds = %cond.false.15, %cond.true.14
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_points25 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %52, i32 0, i32 58
  %53 = load i32, i32* %n_points25, align 4, !tbaa !62
  %54 = load i32, i32* %n_points, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %53, %54
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %lor.lhs.false.24
  br i1 false, label %if.then.208, label %lor.lhs.false.39

cond.false.29:                                    ; preds = %lor.lhs.false.24
  %55 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %56 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %56, i32 0, i32 39
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 2
  %57 = load i32*, i32** %org_x, align 8, !tbaa !29
  %58 = bitcast i32* %57 to i8*
  %call30 = call i32 @free_aux(%struct.ttfMemory_s* %55, i8* %58) #4
  %59 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes31 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %59, i32 0, i32 0
  %60 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes31, align 8, !tbaa !61
  %61 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %62 = load i32, i32* %n_points, align 4, !tbaa !5
  %conv32 = sext i32 %62 to i64
  %mul33 = mul i64 %conv32, 4
  %conv34 = trunc i64 %mul33 to i32
  %call35 = call i8* %60(%struct.ttfMemory_s* %61, i32 %conv34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %63 = bitcast i8* %call35 to i32*
  %64 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts36 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %64, i32 0, i32 39
  %org_x37 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts36, i32 0, i32 2
  store i32* %63, i32** %org_x37, align 8, !tbaa !29
  %tobool38 = icmp ne i32* %63, null
  br i1 %tobool38, label %lor.lhs.false.39, label %if.then.208

lor.lhs.false.39:                                 ; preds = %cond.false.29, %cond.true.28
  %65 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_points40 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %65, i32 0, i32 58
  %66 = load i32, i32* %n_points40, align 4, !tbaa !62
  %67 = load i32, i32* %n_points, align 4, !tbaa !5
  %cmp41 = icmp sge i32 %66, %67
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %lor.lhs.false.39
  br i1 false, label %if.then.208, label %lor.lhs.false.55

cond.false.44:                                    ; preds = %lor.lhs.false.39
  %68 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %69 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts45 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %69, i32 0, i32 39
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts45, i32 0, i32 3
  %70 = load i32*, i32** %org_y, align 8, !tbaa !28
  %71 = bitcast i32* %70 to i8*
  %call46 = call i32 @free_aux(%struct.ttfMemory_s* %68, i8* %71) #4
  %72 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes47 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %72, i32 0, i32 0
  %73 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes47, align 8, !tbaa !61
  %74 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %75 = load i32, i32* %n_points, align 4, !tbaa !5
  %conv48 = sext i32 %75 to i64
  %mul49 = mul i64 %conv48, 4
  %conv50 = trunc i64 %mul49 to i32
  %call51 = call i8* %73(%struct.ttfMemory_s* %74, i32 %conv50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %76 = bitcast i8* %call51 to i32*
  %77 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts52 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %77, i32 0, i32 39
  %org_y53 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts52, i32 0, i32 3
  store i32* %76, i32** %org_y53, align 8, !tbaa !28
  %tobool54 = icmp ne i32* %76, null
  br i1 %tobool54, label %lor.lhs.false.55, label %if.then.208

lor.lhs.false.55:                                 ; preds = %cond.false.44, %cond.true.43
  %78 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_points56 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %78, i32 0, i32 58
  %79 = load i32, i32* %n_points56, align 4, !tbaa !62
  %80 = load i32, i32* %n_points, align 4, !tbaa !5
  %cmp57 = icmp sge i32 %79, %80
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %lor.lhs.false.55
  br i1 false, label %if.then.208, label %lor.lhs.false.71

cond.false.60:                                    ; preds = %lor.lhs.false.55
  %81 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %82 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts61 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %82, i32 0, i32 39
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts61, i32 0, i32 4
  %83 = load i32*, i32** %cur_x, align 8, !tbaa !27
  %84 = bitcast i32* %83 to i8*
  %call62 = call i32 @free_aux(%struct.ttfMemory_s* %81, i8* %84) #4
  %85 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes63 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %85, i32 0, i32 0
  %86 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes63, align 8, !tbaa !61
  %87 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %88 = load i32, i32* %n_points, align 4, !tbaa !5
  %conv64 = sext i32 %88 to i64
  %mul65 = mul i64 %conv64, 4
  %conv66 = trunc i64 %mul65 to i32
  %call67 = call i8* %86(%struct.ttfMemory_s* %87, i32 %conv66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %89 = bitcast i8* %call67 to i32*
  %90 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts68 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %90, i32 0, i32 39
  %cur_x69 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts68, i32 0, i32 4
  store i32* %89, i32** %cur_x69, align 8, !tbaa !27
  %tobool70 = icmp ne i32* %89, null
  br i1 %tobool70, label %lor.lhs.false.71, label %if.then.208

lor.lhs.false.71:                                 ; preds = %cond.false.60, %cond.true.59
  %91 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_points72 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %91, i32 0, i32 58
  %92 = load i32, i32* %n_points72, align 4, !tbaa !62
  %93 = load i32, i32* %n_points, align 4, !tbaa !5
  %cmp73 = icmp sge i32 %92, %93
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %lor.lhs.false.71
  br i1 false, label %if.then.208, label %lor.lhs.false.87

cond.false.76:                                    ; preds = %lor.lhs.false.71
  %94 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %95 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts77 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %95, i32 0, i32 39
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts77, i32 0, i32 5
  %96 = load i32*, i32** %cur_y, align 8, !tbaa !26
  %97 = bitcast i32* %96 to i8*
  %call78 = call i32 @free_aux(%struct.ttfMemory_s* %94, i8* %97) #4
  %98 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes79 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %98, i32 0, i32 0
  %99 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes79, align 8, !tbaa !61
  %100 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %101 = load i32, i32* %n_points, align 4, !tbaa !5
  %conv80 = sext i32 %101 to i64
  %mul81 = mul i64 %conv80, 4
  %conv82 = trunc i64 %mul81 to i32
  %call83 = call i8* %99(%struct.ttfMemory_s* %100, i32 %conv82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %102 = bitcast i8* %call83 to i32*
  %103 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts84 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %103, i32 0, i32 39
  %cur_y85 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts84, i32 0, i32 5
  store i32* %102, i32** %cur_y85, align 8, !tbaa !26
  %tobool86 = icmp ne i32* %102, null
  br i1 %tobool86, label %lor.lhs.false.87, label %if.then.208

lor.lhs.false.87:                                 ; preds = %cond.false.76, %cond.true.75
  %104 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_points88 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %104, i32 0, i32 58
  %105 = load i32, i32* %n_points88, align 4, !tbaa !62
  %106 = load i32, i32* %n_points, align 4, !tbaa !5
  %cmp89 = icmp sge i32 %105, %106
  br i1 %cmp89, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %lor.lhs.false.87
  br i1 false, label %if.then.208, label %lor.lhs.false.103

cond.false.92:                                    ; preds = %lor.lhs.false.87
  %107 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %108 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts93 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %108, i32 0, i32 39
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts93, i32 0, i32 6
  %109 = load i8*, i8** %touch, align 8, !tbaa !30
  %call94 = call i32 @free_aux(%struct.ttfMemory_s* %107, i8* %109) #4
  %110 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes95 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %110, i32 0, i32 0
  %111 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes95, align 8, !tbaa !61
  %112 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %113 = load i32, i32* %n_points, align 4, !tbaa !5
  %conv96 = sext i32 %113 to i64
  %mul97 = mul i64 %conv96, 1
  %conv98 = trunc i64 %mul97 to i32
  %call99 = call i8* %111(%struct.ttfMemory_s* %112, i32 %conv98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %114 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts100 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %114, i32 0, i32 39
  %touch101 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts100, i32 0, i32 6
  store i8* %call99, i8** %touch101, align 8, !tbaa !30
  %tobool102 = icmp ne i8* %call99, null
  br i1 %tobool102, label %lor.lhs.false.103, label %if.then.208

lor.lhs.false.103:                                ; preds = %cond.false.92, %cond.true.91
  %115 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %115, i32 0, i32 40
  %n_points104 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight, i32 0, i32 0
  %116 = load i32, i32* %n_points104, align 4, !tbaa !40
  %117 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %cmp105 = icmp sge i32 %116, %117
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %lor.lhs.false.103
  br i1 false, label %if.then.208, label %lor.lhs.false.120

cond.false.108:                                   ; preds = %lor.lhs.false.103
  %118 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %119 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight109 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %119, i32 0, i32 40
  %org_x110 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight109, i32 0, i32 2
  %120 = load i32*, i32** %org_x110, align 8, !tbaa !38
  %121 = bitcast i32* %120 to i8*
  %call111 = call i32 @free_aux(%struct.ttfMemory_s* %118, i8* %121) #4
  %122 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes112 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %122, i32 0, i32 0
  %123 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes112, align 8, !tbaa !61
  %124 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %125 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %conv113 = sext i32 %125 to i64
  %mul114 = mul i64 %conv113, 4
  %conv115 = trunc i64 %mul114 to i32
  %call116 = call i8* %123(%struct.ttfMemory_s* %124, i32 %conv115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %126 = bitcast i8* %call116 to i32*
  %127 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight117 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %127, i32 0, i32 40
  %org_x118 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight117, i32 0, i32 2
  store i32* %126, i32** %org_x118, align 8, !tbaa !38
  %tobool119 = icmp ne i32* %126, null
  br i1 %tobool119, label %lor.lhs.false.120, label %if.then.208

lor.lhs.false.120:                                ; preds = %cond.false.108, %cond.true.107
  %128 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight121 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %128, i32 0, i32 40
  %n_points122 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight121, i32 0, i32 0
  %129 = load i32, i32* %n_points122, align 4, !tbaa !40
  %130 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %cmp123 = icmp sge i32 %129, %130
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %lor.lhs.false.120
  br i1 false, label %if.then.208, label %lor.lhs.false.138

cond.false.126:                                   ; preds = %lor.lhs.false.120
  %131 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %132 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight127 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %132, i32 0, i32 40
  %org_y128 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight127, i32 0, i32 3
  %133 = load i32*, i32** %org_y128, align 8, !tbaa !37
  %134 = bitcast i32* %133 to i8*
  %call129 = call i32 @free_aux(%struct.ttfMemory_s* %131, i8* %134) #4
  %135 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes130 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %135, i32 0, i32 0
  %136 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes130, align 8, !tbaa !61
  %137 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %138 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %conv131 = sext i32 %138 to i64
  %mul132 = mul i64 %conv131, 4
  %conv133 = trunc i64 %mul132 to i32
  %call134 = call i8* %136(%struct.ttfMemory_s* %137, i32 %conv133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %139 = bitcast i8* %call134 to i32*
  %140 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight135 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %140, i32 0, i32 40
  %org_y136 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight135, i32 0, i32 3
  store i32* %139, i32** %org_y136, align 8, !tbaa !37
  %tobool137 = icmp ne i32* %139, null
  br i1 %tobool137, label %lor.lhs.false.138, label %if.then.208

lor.lhs.false.138:                                ; preds = %cond.false.126, %cond.true.125
  %141 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight139 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %141, i32 0, i32 40
  %n_points140 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight139, i32 0, i32 0
  %142 = load i32, i32* %n_points140, align 4, !tbaa !40
  %143 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %cmp141 = icmp sge i32 %142, %143
  br i1 %cmp141, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %lor.lhs.false.138
  br i1 false, label %if.then.208, label %lor.lhs.false.156

cond.false.144:                                   ; preds = %lor.lhs.false.138
  %144 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %145 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight145 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %145, i32 0, i32 40
  %cur_x146 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight145, i32 0, i32 4
  %146 = load i32*, i32** %cur_x146, align 8, !tbaa !36
  %147 = bitcast i32* %146 to i8*
  %call147 = call i32 @free_aux(%struct.ttfMemory_s* %144, i8* %147) #4
  %148 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes148 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %148, i32 0, i32 0
  %149 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes148, align 8, !tbaa !61
  %150 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %151 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %conv149 = sext i32 %151 to i64
  %mul150 = mul i64 %conv149, 4
  %conv151 = trunc i64 %mul150 to i32
  %call152 = call i8* %149(%struct.ttfMemory_s* %150, i32 %conv151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %152 = bitcast i8* %call152 to i32*
  %153 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight153 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %153, i32 0, i32 40
  %cur_x154 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight153, i32 0, i32 4
  store i32* %152, i32** %cur_x154, align 8, !tbaa !36
  %tobool155 = icmp ne i32* %152, null
  br i1 %tobool155, label %lor.lhs.false.156, label %if.then.208

lor.lhs.false.156:                                ; preds = %cond.false.144, %cond.true.143
  %154 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight157 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %154, i32 0, i32 40
  %n_points158 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight157, i32 0, i32 0
  %155 = load i32, i32* %n_points158, align 4, !tbaa !40
  %156 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %cmp159 = icmp sge i32 %155, %156
  br i1 %cmp159, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %lor.lhs.false.156
  br i1 false, label %if.then.208, label %lor.lhs.false.174

cond.false.162:                                   ; preds = %lor.lhs.false.156
  %157 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %158 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight163 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %158, i32 0, i32 40
  %cur_y164 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight163, i32 0, i32 5
  %159 = load i32*, i32** %cur_y164, align 8, !tbaa !35
  %160 = bitcast i32* %159 to i8*
  %call165 = call i32 @free_aux(%struct.ttfMemory_s* %157, i8* %160) #4
  %161 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes166 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %161, i32 0, i32 0
  %162 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes166, align 8, !tbaa !61
  %163 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %164 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %conv167 = sext i32 %164 to i64
  %mul168 = mul i64 %conv167, 4
  %conv169 = trunc i64 %mul168 to i32
  %call170 = call i8* %162(%struct.ttfMemory_s* %163, i32 %conv169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %165 = bitcast i8* %call170 to i32*
  %166 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight171 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %166, i32 0, i32 40
  %cur_y172 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight171, i32 0, i32 5
  store i32* %165, i32** %cur_y172, align 8, !tbaa !35
  %tobool173 = icmp ne i32* %165, null
  br i1 %tobool173, label %lor.lhs.false.174, label %if.then.208

lor.lhs.false.174:                                ; preds = %cond.false.162, %cond.true.161
  %167 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight175 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %167, i32 0, i32 40
  %n_points176 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight175, i32 0, i32 0
  %168 = load i32, i32* %n_points176, align 4, !tbaa !40
  %169 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %cmp177 = icmp sge i32 %168, %169
  br i1 %cmp177, label %cond.true.179, label %cond.false.180

cond.true.179:                                    ; preds = %lor.lhs.false.174
  br i1 false, label %if.then.208, label %lor.lhs.false.192

cond.false.180:                                   ; preds = %lor.lhs.false.174
  %170 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %171 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight181 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %171, i32 0, i32 40
  %touch182 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight181, i32 0, i32 6
  %172 = load i8*, i8** %touch182, align 8, !tbaa !34
  %call183 = call i32 @free_aux(%struct.ttfMemory_s* %170, i8* %172) #4
  %173 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes184 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %173, i32 0, i32 0
  %174 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes184, align 8, !tbaa !61
  %175 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %176 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %conv185 = sext i32 %176 to i64
  %mul186 = mul i64 %conv185, 1
  %conv187 = trunc i64 %mul186 to i32
  %call188 = call i8* %174(%struct.ttfMemory_s* %175, i32 %conv187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %177 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight189 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %177, i32 0, i32 40
  %touch190 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight189, i32 0, i32 6
  store i8* %call188, i8** %touch190, align 8, !tbaa !34
  %tobool191 = icmp ne i8* %call188, null
  br i1 %tobool191, label %lor.lhs.false.192, label %if.then.208

lor.lhs.false.192:                                ; preds = %cond.false.180, %cond.true.179
  %178 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_contours = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %178, i32 0, i32 57
  %179 = load i32, i32* %n_contours, align 4, !tbaa !63
  %180 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %maxContours = getelementptr inbounds %struct._TFace, %struct._TFace* %180, i32 0, i32 12
  %181 = load i32, i32* %maxContours, align 4, !tbaa !64
  %cmp193 = icmp sge i32 %179, %181
  br i1 %cmp193, label %cond.true.195, label %cond.false.196

cond.true.195:                                    ; preds = %lor.lhs.false.192
  br i1 false, label %if.then.208, label %if.end.209

cond.false.196:                                   ; preds = %lor.lhs.false.192
  %182 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %183 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts197 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %183, i32 0, i32 39
  %contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts197, i32 0, i32 7
  %184 = load i16*, i16** %contours, align 8, !tbaa !31
  %185 = bitcast i16* %184 to i8*
  %call198 = call i32 @free_aux(%struct.ttfMemory_s* %182, i8* %185) #4
  %186 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes199 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %186, i32 0, i32 0
  %187 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes199, align 8, !tbaa !61
  %188 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %189 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %maxContours200 = getelementptr inbounds %struct._TFace, %struct._TFace* %189, i32 0, i32 12
  %190 = load i32, i32* %maxContours200, align 4, !tbaa !64
  %conv201 = sext i32 %190 to i64
  %mul202 = mul i64 %conv201, 2
  %conv203 = trunc i64 %mul202 to i32
  %call204 = call i8* %187(%struct.ttfMemory_s* %188, i32 %conv203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %191 = bitcast i8* %call204 to i16*
  %192 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %pts205 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %192, i32 0, i32 39
  %contours206 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts205, i32 0, i32 7
  store i16* %191, i16** %contours206, align 8, !tbaa !31
  %tobool207 = icmp ne i16* %191, null
  br i1 %tobool207, label %if.end.209, label %if.then.208

if.then.208:                                      ; preds = %cond.false.196, %cond.true.195, %cond.false.180, %cond.true.179, %cond.false.162, %cond.true.161, %cond.false.144, %cond.true.143, %cond.false.126, %cond.true.125, %cond.false.108, %cond.true.107, %cond.false.92, %cond.true.91, %cond.false.76, %cond.true.75, %cond.false.60, %cond.true.59, %cond.false.44, %cond.true.43, %cond.false.29, %cond.true.28, %cond.false.15, %cond.true.14, %cond.false, %cond.true
  br label %Fail_Memory

if.end.209:                                       ; preds = %cond.false.196, %cond.true.195
  %193 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callSize210 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %193, i32 0, i32 18
  %194 = load i32, i32* %callSize210, align 4, !tbaa !45
  %195 = load i32, i32* %callSize, align 4, !tbaa !5
  %cmp211 = icmp sgt i32 %194, %195
  br i1 %cmp211, label %cond.true.213, label %cond.false.215

cond.true.213:                                    ; preds = %if.end.209
  %196 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callSize214 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %196, i32 0, i32 18
  %197 = load i32, i32* %callSize214, align 4, !tbaa !45
  br label %cond.end

cond.false.215:                                   ; preds = %if.end.209
  %198 = load i32, i32* %callSize, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.215, %cond.true.213
  %cond = phi i32 [ %197, %cond.true.213 ], [ %198, %cond.false.215 ]
  %199 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callSize216 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %199, i32 0, i32 18
  store i32 %cond, i32* %callSize216, align 4, !tbaa !45
  %200 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %stackSize217 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %200, i32 0, i32 23
  %201 = load i32, i32* %stackSize217, align 4, !tbaa !43
  %202 = load i32, i32* %stackSize, align 4, !tbaa !5
  %cmp218 = icmp sgt i32 %201, %202
  br i1 %cmp218, label %cond.true.220, label %cond.false.222

cond.true.220:                                    ; preds = %cond.end
  %203 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %stackSize221 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %203, i32 0, i32 23
  %204 = load i32, i32* %stackSize221, align 4, !tbaa !43
  br label %cond.end.223

cond.false.222:                                   ; preds = %cond.end
  %205 = load i32, i32* %stackSize, align 4, !tbaa !5
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.222, %cond.true.220
  %cond224 = phi i32 [ %204, %cond.true.220 ], [ %205, %cond.false.222 ]
  %206 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %stackSize225 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %206, i32 0, i32 23
  store i32 %cond224, i32* %stackSize225, align 4, !tbaa !43
  %207 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight226 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %207, i32 0, i32 40
  %n_points227 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight226, i32 0, i32 0
  %208 = load i32, i32* %n_points227, align 4, !tbaa !40
  %209 = load i32, i32* %n_twilight, align 4, !tbaa !5
  %cmp228 = icmp sgt i32 %208, %209
  br i1 %cmp228, label %cond.true.230, label %cond.false.233

cond.true.230:                                    ; preds = %cond.end.223
  %210 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight231 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %210, i32 0, i32 40
  %n_points232 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight231, i32 0, i32 0
  %211 = load i32, i32* %n_points232, align 4, !tbaa !40
  br label %cond.end.234

cond.false.233:                                   ; preds = %cond.end.223
  %212 = load i32, i32* %n_twilight, align 4, !tbaa !5
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.233, %cond.true.230
  %cond235 = phi i32 [ %211, %cond.true.230 ], [ %212, %cond.false.233 ]
  %213 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight236 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %213, i32 0, i32 40
  %n_points237 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight236, i32 0, i32 0
  store i32 %cond235, i32* %n_points237, align 4, !tbaa !40
  %214 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %maxGlyphSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %214, i32 0, i32 59
  %215 = load i32, i32* %maxGlyphSize, align 4, !tbaa !48
  %216 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %maxSizeOfInstructions = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %216, i32 0, i32 12
  %217 = load i16, i16* %maxSizeOfInstructions, align 2, !tbaa !65
  %conv238 = zext i16 %217 to i32
  %cmp239 = icmp sgt i32 %215, %conv238
  br i1 %cmp239, label %cond.true.241, label %cond.false.243

cond.true.241:                                    ; preds = %cond.end.234
  %218 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %maxGlyphSize242 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %218, i32 0, i32 59
  %219 = load i32, i32* %maxGlyphSize242, align 4, !tbaa !48
  br label %cond.end.246

cond.false.243:                                   ; preds = %cond.end.234
  %220 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %maxSizeOfInstructions244 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %220, i32 0, i32 12
  %221 = load i16, i16* %maxSizeOfInstructions244, align 2, !tbaa !65
  %conv245 = zext i16 %221 to i32
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.243, %cond.true.241
  %cond247 = phi i32 [ %219, %cond.true.241 ], [ %conv245, %cond.false.243 ]
  %222 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %maxGlyphSize248 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %222, i32 0, i32 59
  store i32 %cond247, i32* %maxGlyphSize248, align 4, !tbaa !48
  %223 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_contours249 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %223, i32 0, i32 57
  %224 = load i32, i32* %n_contours249, align 4, !tbaa !63
  %225 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %maxContours250 = getelementptr inbounds %struct._TFace, %struct._TFace* %225, i32 0, i32 12
  %226 = load i32, i32* %maxContours250, align 4, !tbaa !64
  %cmp251 = icmp sgt i32 %224, %226
  br i1 %cmp251, label %cond.true.253, label %cond.false.255

cond.true.253:                                    ; preds = %cond.end.246
  %227 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_contours254 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %227, i32 0, i32 57
  %228 = load i32, i32* %n_contours254, align 4, !tbaa !63
  br label %cond.end.257

cond.false.255:                                   ; preds = %cond.end.246
  %229 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %maxContours256 = getelementptr inbounds %struct._TFace, %struct._TFace* %229, i32 0, i32 12
  %230 = load i32, i32* %maxContours256, align 4, !tbaa !64
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.255, %cond.true.253
  %cond258 = phi i32 [ %228, %cond.true.253 ], [ %230, %cond.false.255 ]
  %231 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_contours259 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %231, i32 0, i32 57
  store i32 %cond258, i32* %n_contours259, align 4, !tbaa !63
  %232 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_points260 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %232, i32 0, i32 58
  %233 = load i32, i32* %n_points260, align 4, !tbaa !62
  %234 = load i32, i32* %n_points, align 4, !tbaa !5
  %cmp261 = icmp sgt i32 %233, %234
  br i1 %cmp261, label %cond.true.263, label %cond.false.265

cond.true.263:                                    ; preds = %cond.end.257
  %235 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_points264 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %235, i32 0, i32 58
  %236 = load i32, i32* %n_points264, align 4, !tbaa !62
  br label %cond.end.266

cond.false.265:                                   ; preds = %cond.end.257
  %237 = load i32, i32* %n_points, align 4, !tbaa !5
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.265, %cond.true.263
  %cond267 = phi i32 [ %236, %cond.true.263 ], [ %237, %cond.false.265 ]
  %238 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %n_points268 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %238, i32 0, i32 58
  store i32 %cond267, i32* %n_points268, align 4, !tbaa !62
  %239 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %lock = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %239, i32 0, i32 60
  %240 = load i32, i32* %lock, align 4, !tbaa !22
  %inc = add nsw i32 %240, 1
  store i32 %inc, i32* %lock, align 4, !tbaa !22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Fail_Memory:                                      ; preds = %if.then.208
  store i32 256, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Fail_Memory, %cond.end.266
  %241 = bitcast i32* %stackSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i32* %callSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %n_twilight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %n_points to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast %struct._TMaxProfile** %maxp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #1
  %246 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast %struct._TFace** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = load i32, i32* %retval
  ret i32 %249
}

; Function Attrs: nounwind uwtable
define internal i32 @free_aux(%struct.ttfMemory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.ttfMemory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.ttfMemory_s* %mem, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %0, i32 0, i32 2
  %1 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free, align 8, !tbaa !24
  %2 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  call void %1(%struct.ttfMemory_s* %2, i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Context_Load(%struct._TExecution_Context* %exec, %struct._TInstance* %ins) #0 {
entry:
  %exec.addr = alloca %struct._TExecution_Context*, align 8
  %ins.addr = alloca %struct._TInstance*, align 8
  %i = alloca i32, align 4
  store %struct._TExecution_Context* %exec, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  store %struct._TInstance* %ins, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %face = getelementptr inbounds %struct._TInstance, %struct._TInstance* %1, i32 0, i32 0
  %2 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !66
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %current_face = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 0
  store %struct._TFace* %2, %struct._TFace** %current_face, align 8, !tbaa !49
  %4 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %numFDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %4, i32 0, i32 3
  %5 = load i32, i32* %numFDefs, align 4, !tbaa !68
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %numFDefs1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 9
  store i32 %5, i32* %numFDefs1, align 4, !tbaa !69
  %7 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %numIDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %7, i32 0, i32 5
  %8 = load i32, i32* %numIDefs, align 4, !tbaa !70
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %numIDefs2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 11
  store i32 %8, i32* %numIDefs2, align 4, !tbaa !71
  %10 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %FDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %10, i32 0, i32 4
  %11 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs, align 8, !tbaa !72
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %FDefs3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 10
  store %struct._TDefRecord* %11, %struct._TDefRecord** %FDefs3, align 8, !tbaa !73
  %13 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %IDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %13, i32 0, i32 6
  %14 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs, align 8, !tbaa !74
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %IDefs4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 12
  store %struct._TDefRecord* %14, %struct._TDefRecord** %IDefs4, align 8, !tbaa !75
  %16 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %countIDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %16, i32 0, i32 7
  %17 = load i32, i32* %countIDefs, align 4, !tbaa !76
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %countIDefs5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 13
  store i32 %17, i32* %countIDefs5, align 4, !tbaa !77
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %IDefPtr = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 14
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %IDefPtr, i32 0, i32 0
  %20 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %IDefPtr6 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %20, i32 0, i32 8
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %IDefPtr6, i32 0, i32 0
  %call = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay7, i64 256) #5
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 31
  %22 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics8 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %22, i32 0, i32 2
  %23 = bitcast %struct._TIns_Metrics* %metrics to i8*
  %24 = bitcast %struct._TIns_Metrics* %metrics8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 128, i32 8, i1 false), !tbaa.struct !78
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %25, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %26 to i64
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 20
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 %idxprom
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %28 to i64
  %29 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %codeRangeTable10 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %29, i32 0, i32 9
  %arrayidx11 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable10, i32 0, i64 %idxprom9
  %30 = bitcast %struct._TCodeRange* %arrayidx to i8*
  %31 = bitcast %struct._TCodeRange* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !81
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %33, i32 0, i32 39
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 0
  store i32 0, i32* %n_points, align 4, !tbaa !32
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %pts12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 39
  %n_contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts12, i32 0, i32 1
  store i32 0, i32* %n_contours, align 4, !tbaa !33
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %instruction_trap = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 41
  store i32 0, i32* %instruction_trap, align 4, !tbaa !82
  %36 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %36, i32 0, i32 42
  %37 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %GS13 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %37, i32 0, i32 10
  %38 = bitcast %struct._TGraphicsState* %GS to i8*
  %39 = bitcast %struct._TGraphicsState* %GS13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 88, i32 8, i1 false), !tbaa.struct !83
  %40 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TInstance, %struct._TInstance* %40, i32 0, i32 12
  %41 = load i32, i32* %cvtSize, align 4, !tbaa !85
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %cvtSize14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %42, i32 0, i32 45
  store i32 %41, i32* %cvtSize14, align 4, !tbaa !86
  %43 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TInstance, %struct._TInstance* %43, i32 0, i32 13
  %44 = load i64*, i64** %cvt, align 8, !tbaa !87
  %45 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %cvt15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %45, i32 0, i32 46
  store i64* %44, i64** %cvt15, align 8, !tbaa !88
  %46 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %storeSize = getelementptr inbounds %struct._TInstance, %struct._TInstance* %46, i32 0, i32 14
  %47 = load i32, i32* %storeSize, align 4, !tbaa !89
  %48 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %storeSize16 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %48, i32 0, i32 21
  store i32 %47, i32* %storeSize16, align 4, !tbaa !90
  %49 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %storage = getelementptr inbounds %struct._TInstance, %struct._TInstance* %49, i32 0, i32 15
  %50 = load i64*, i64** %storage, align 8, !tbaa !91
  %51 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %storage17 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %51, i32 0, i32 22
  store i64* %50, i64** %storage17, align 8, !tbaa !92
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @Context_Save(%struct._TExecution_Context* %exec, %struct._TInstance* %ins) #0 {
entry:
  %exec.addr = alloca %struct._TExecution_Context*, align 8
  %ins.addr = alloca %struct._TInstance*, align 8
  %i = alloca i32, align 4
  store %struct._TExecution_Context* %exec, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  store %struct._TInstance* %ins, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %codeRangeTable = getelementptr inbounds %struct._TInstance, %struct._TInstance* %3, i32 0, i32 9
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 %idxprom
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 20
  %arrayidx3 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable2, i32 0, i64 %idxprom1
  %6 = bitcast %struct._TCodeRange* %arrayidx to i8*
  %7 = bitcast %struct._TCodeRange* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !81
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 20
  %arrayidx6 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable5, i32 0, i64 %idxprom4
  %Base = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx6, i32 0, i32 0
  store i8* null, i8** %Base, align 8, !tbaa !7
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %codeRangeTable8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 20
  %arrayidx9 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable8, i32 0, i64 %idxprom7
  %Size = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx9, i32 0, i32 1
  store i32 0, i32* %Size, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %numFDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 9
  store i32 0, i32* %numFDefs, align 4, !tbaa !69
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %numIDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 11
  store i32 0, i32* %numIDefs, align 4, !tbaa !71
  %15 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %IDefPtr = getelementptr inbounds %struct._TInstance, %struct._TInstance* %15, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %IDefPtr, i32 0, i32 0
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %IDefPtr10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 14
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %IDefPtr10, i32 0, i32 0
  %call = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay11, i64 256) #5
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %countIDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 13
  %18 = load i32, i32* %countIDefs, align 4, !tbaa !77
  %19 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %countIDefs12 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %19, i32 0, i32 7
  store i32 %18, i32* %countIDefs12, align 4, !tbaa !76
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %countIDefs13 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 13
  store i32 0, i32* %countIDefs13, align 4, !tbaa !77
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %FDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 10
  store %struct._TDefRecord* null, %struct._TDefRecord** %FDefs, align 8, !tbaa !73
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %IDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 12
  store %struct._TDefRecord* null, %struct._TDefRecord** %IDefs, align 8, !tbaa !75
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 45
  store i32 0, i32* %cvtSize, align 4, !tbaa !86
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 46
  store i64* null, i64** %cvt, align 8, !tbaa !88
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %storeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 21
  store i32 0, i32* %storeSize, align 4, !tbaa !90
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %storage = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 22
  store i64* null, i64** %storage, align 8, !tbaa !92
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %current_face = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 0
  store %struct._TFace* null, %struct._TFace** %current_face, align 8, !tbaa !49
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Context_Run(%struct._TExecution_Context* %exec, i32 %debug) #0 {
entry:
  %retval = alloca i32, align 4
  %exec.addr = alloca %struct._TExecution_Context*, align 8
  %debug.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exec, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  store i32 %debug, i32* %debug.addr, align 4, !tbaa !5
  %0 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %call = call i32 @Goto_CodeRange(%struct._TExecution_Context* %1, i32 3, i32 0) #4
  store i32 %call, i32* %error, align 4, !tbaa !5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %error, align 4, !tbaa !5
  store i32 %2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 36
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 39
  %5 = bitcast %struct._TGlyph_Zone* %zp0 to i8*
  %6 = bitcast %struct._TGlyph_Zone* %pts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 56, i32 8, i1 false), !tbaa.struct !93
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 37
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %pts1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 39
  %9 = bitcast %struct._TGlyph_Zone* %zp1 to i8*
  %10 = bitcast %struct._TGlyph_Zone* %pts1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 56, i32 8, i1 false), !tbaa.struct !93
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 38
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %pts2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 39
  %13 = bitcast %struct._TGlyph_Zone* %zp2 to i8*
  %14 = bitcast %struct._TGlyph_Zone* %pts2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 56, i32 8, i1 false), !tbaa.struct !93
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 42
  %gep0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 18
  store i32 1, i32* %gep0, align 4, !tbaa !94
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 42
  %gep1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS3, i32 0, i32 19
  store i32 1, i32* %gep1, align 4, !tbaa !95
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 42
  %gep2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS4, i32 0, i32 20
  store i32 1, i32* %gep2, align 4, !tbaa !96
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS5, i32 0, i32 4
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector, i32 0, i32 0
  store i16 16384, i16* %x, align 2, !tbaa !97
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 42
  %projVector7 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS6, i32 0, i32 4
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector7, i32 0, i32 1
  store i16 0, i16* %y, align 2, !tbaa !98
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS8, i32 0, i32 5
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 42
  %projVector10 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS9, i32 0, i32 4
  %22 = bitcast %struct._TT_UnitVector* %freeVector to i8*
  %23 = bitcast %struct._TT_UnitVector* %projVector10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 4, i32 2, i1 false), !tbaa.struct !99
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS11 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 42
  %dualVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS11, i32 0, i32 3
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 42
  %projVector13 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS12, i32 0, i32 4
  %26 = bitcast %struct._TT_UnitVector* %dualVector to i8*
  %27 = bitcast %struct._TT_UnitVector* %projVector13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 4, i32 2, i1 false), !tbaa.struct !99
  %28 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %28, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS14, i32 0, i32 8
  store i32 1, i32* %round_state, align 4, !tbaa !100
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %GS15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 42
  %loop = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS15, i32 0, i32 6
  store i64 1, i64* %loop, align 8, !tbaa !101
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 24
  store i32 0, i32* %top, align 4, !tbaa !102
  %31 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %callTop = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %31, i32 0, i32 17
  store i32 0, i32* %callTop, align 4, !tbaa !46
  %32 = load i32, i32* %debug.addr, align 4, !tbaa !5
  %tobool16 = icmp ne i32 %32, 0
  br i1 %tobool16, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %if.end
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  %call18 = call i32 @RunIns(%struct._TExecution_Context* %33) #4
  store i32 %call18, i32* %error, align 4, !tbaa !5
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !1
  call void @Unset_CodeRange(%struct._TExecution_Context* %34) #4
  %35 = load i32, i32* %error, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.17, %if.then
  %36 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @RunIns(%struct._TExecution_Context*) #3

; Function Attrs: nounwind uwtable
define i32 @Instance_Destroy(i8* %_instance) #0 {
entry:
  %retval = alloca i32, align 4
  %_instance.addr = alloca i8*, align 8
  %ins = alloca %struct._TInstance*, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %_instance, i8** %_instance.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TInstance** %ins to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %_instance.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._TInstance*
  store %struct._TInstance* %2, %struct._TInstance** %ins, align 8, !tbaa !1
  %3 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %_instance.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %face = getelementptr inbounds %struct._TInstance, %struct._TInstance* %5, i32 0, i32 0
  %6 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !66
  %tobool1 = icmp ne %struct._TFace* %6, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 256, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %face4 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %7, i32 0, i32 0
  %8 = load %struct._TFace*, %struct._TFace** %face4, align 8, !tbaa !66
  %font = getelementptr inbounds %struct._TFace, %struct._TFace* %8, i32 0, i32 1
  %9 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !50
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %9, i32 0, i32 24
  %10 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !53
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %10, i32 0, i32 5
  %11 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !56
  store %struct.ttfMemory_s* %11, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %12 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %12, i32 0, i32 2
  %13 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free, align 8, !tbaa !24
  %14 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %15 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TInstance, %struct._TInstance* %15, i32 0, i32 13
  %16 = load i64*, i64** %cvt, align 8, !tbaa !87
  %17 = bitcast i64* %16 to i8*
  call void %13(%struct.ttfMemory_s* %14, i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %18 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %cvt5 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %18, i32 0, i32 13
  store i64* null, i64** %cvt5, align 8, !tbaa !87
  %19 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TInstance, %struct._TInstance* %19, i32 0, i32 12
  store i32 0, i32* %cvtSize, align 4, !tbaa !85
  %20 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free6 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %20, i32 0, i32 2
  %21 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free6, align 8, !tbaa !24
  %22 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %23 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %FDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %23, i32 0, i32 4
  %24 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs, align 8, !tbaa !72
  %25 = bitcast %struct._TDefRecord* %24 to i8*
  call void %21(%struct.ttfMemory_s* %22, i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %26 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %FDefs7 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %26, i32 0, i32 4
  store %struct._TDefRecord* null, %struct._TDefRecord** %FDefs7, align 8, !tbaa !72
  %27 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free8 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %27, i32 0, i32 2
  %28 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free8, align 8, !tbaa !24
  %29 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %30 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %IDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %30, i32 0, i32 6
  %31 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs, align 8, !tbaa !74
  %32 = bitcast %struct._TDefRecord* %31 to i8*
  call void %28(%struct.ttfMemory_s* %29, i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %33 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %IDefs9 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %33, i32 0, i32 6
  store %struct._TDefRecord* null, %struct._TDefRecord** %IDefs9, align 8, !tbaa !74
  %34 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free10 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %34, i32 0, i32 2
  %35 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free10, align 8, !tbaa !24
  %36 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %37 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %storage = getelementptr inbounds %struct._TInstance, %struct._TInstance* %37, i32 0, i32 15
  %38 = load i64*, i64** %storage, align 8, !tbaa !91
  %39 = bitcast i64* %38 to i8*
  call void %35(%struct.ttfMemory_s* %36, i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %40 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %storage11 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %40, i32 0, i32 15
  store i64* null, i64** %storage11, align 8, !tbaa !91
  %41 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numFDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %41, i32 0, i32 3
  store i32 0, i32* %numFDefs, align 4, !tbaa !68
  %42 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numIDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %42, i32 0, i32 5
  store i32 0, i32* %numIDefs, align 4, !tbaa !70
  %43 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %face12 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %43, i32 0, i32 0
  store %struct._TFace* null, %struct._TFace** %face12, align 8, !tbaa !66
  %44 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct._TInstance, %struct._TInstance* %44, i32 0, i32 1
  store i32 0, i32* %valid, align 4, !tbaa !103
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %45 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct._TInstance** %ins to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define i32 @Instance_Create(i8* %_instance, i8* %_face) #0 {
entry:
  %retval = alloca i32, align 4
  %_instance.addr = alloca i8*, align 8
  %_face.addr = alloca i8*, align 8
  %ins = alloca %struct._TInstance*, align 8
  %face = alloca %struct._TFace*, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  %maxp = alloca %struct._TMaxProfile*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %_instance, i8** %_instance.addr, align 8, !tbaa !1
  store i8* %_face, i8** %_face.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TInstance** %ins to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %_instance.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._TInstance*
  store %struct._TInstance* %2, %struct._TInstance** %ins, align 8, !tbaa !1
  %3 = bitcast %struct._TFace** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %_face.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct._TFace*
  store %struct._TFace* %5, %struct._TFace** %face, align 8, !tbaa !1
  %6 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %font = getelementptr inbounds %struct._TFace, %struct._TFace* %7, i32 0, i32 1
  %8 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !50
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %8, i32 0, i32 24
  %9 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !53
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %9, i32 0, i32 5
  %10 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !56
  store %struct.ttfMemory_s* %10, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %11 = bitcast %struct._TMaxProfile** %maxp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %maxProfile = getelementptr inbounds %struct._TFace, %struct._TFace* %12, i32 0, i32 2
  store %struct._TMaxProfile* %maxProfile, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %FDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %14, i32 0, i32 4
  store %struct._TDefRecord* null, %struct._TDefRecord** %FDefs, align 8, !tbaa !72
  %15 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %IDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %15, i32 0, i32 6
  store %struct._TDefRecord* null, %struct._TDefRecord** %IDefs, align 8, !tbaa !74
  %16 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TInstance, %struct._TInstance* %16, i32 0, i32 13
  store i64* null, i64** %cvt, align 8, !tbaa !87
  %17 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %storage = getelementptr inbounds %struct._TInstance, %struct._TInstance* %17, i32 0, i32 15
  store i64* null, i64** %storage, align 8, !tbaa !91
  %18 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %19 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %face1 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %19, i32 0, i32 0
  store %struct._TFace* %18, %struct._TFace** %face1, align 8, !tbaa !66
  %20 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct._TInstance, %struct._TInstance* %20, i32 0, i32 1
  store i32 0, i32* %valid, align 4, !tbaa !103
  %21 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %maxFunctionDefs = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %21, i32 0, i32 9
  %22 = load i16, i16* %maxFunctionDefs, align 2, !tbaa !104
  %conv = zext i16 %22 to i32
  %23 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numFDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %23, i32 0, i32 3
  store i32 %conv, i32* %numFDefs, align 4, !tbaa !68
  %24 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %maxInstructionDefs = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %24, i32 0, i32 10
  %25 = load i16, i16* %maxInstructionDefs, align 2, !tbaa !105
  %conv2 = zext i16 %25 to i32
  %26 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numIDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %26, i32 0, i32 5
  store i32 %conv2, i32* %numIDefs, align 4, !tbaa !70
  %27 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %countIDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %27, i32 0, i32 7
  store i32 0, i32* %countIDefs, align 4, !tbaa !76
  %28 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %maxInstructionDefs3 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %28, i32 0, i32 10
  %29 = load i16, i16* %maxInstructionDefs3, align 2, !tbaa !105
  %conv4 = zext i16 %29 to i32
  %cmp = icmp sgt i32 %conv4, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %30 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %maxInstructionDefs6 = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %30, i32 0, i32 10
  store i16 255, i16* %maxInstructionDefs6, align 2, !tbaa !105
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %IDefPtr = getelementptr inbounds %struct._TInstance, %struct._TInstance* %31, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %IDefPtr, i32 0, i32 0
  %32 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numIDefs7 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %32, i32 0, i32 5
  %33 = load i32, i32* %numIDefs7, align 4, !tbaa !70
  %conv8 = trunc i32 %33 to i8
  %conv9 = zext i8 %conv8 to i32
  %call = call i8* @memset(i8* %arraydecay, i32 %conv9, i64 256) #5
  %34 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numFDefs10 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %34, i32 0, i32 3
  %35 = load i32, i32* %numFDefs10, align 4, !tbaa !68
  %cmp11 = icmp slt i32 %35, 50
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %36 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numFDefs14 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %36, i32 0, i32 3
  store i32 50, i32* %numFDefs14, align 4, !tbaa !68
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  %37 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TFace, %struct._TFace* %37, i32 0, i32 8
  %38 = load i32, i32* %cvtSize, align 4, !tbaa !106
  %39 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %cvtSize16 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %39, i32 0, i32 12
  store i32 %38, i32* %cvtSize16, align 4, !tbaa !85
  %40 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TInstance, %struct._TInstance* %40, i32 0, i32 2
  %pointSize = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 0
  store i32 640, i32* %pointSize, align 4, !tbaa !107
  %41 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %metrics17 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %41, i32 0, i32 2
  %x_resolution = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics17, i32 0, i32 1
  store i32 96, i32* %x_resolution, align 4, !tbaa !108
  %42 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %metrics18 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %42, i32 0, i32 2
  %y_resolution = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics18, i32 0, i32 2
  store i32 96, i32* %y_resolution, align 4, !tbaa !109
  %43 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %metrics19 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %43, i32 0, i32 2
  %x_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics19, i32 0, i32 3
  store i32 0, i32* %x_ppem, align 4, !tbaa !110
  %44 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %metrics20 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %44, i32 0, i32 2
  %y_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics20, i32 0, i32 4
  store i32 0, i32* %y_ppem, align 4, !tbaa !111
  %45 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %metrics21 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %45, i32 0, i32 2
  %rotated = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics21, i32 0, i32 16
  store i32 0, i32* %rotated, align 4, !tbaa !112
  %46 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %metrics22 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %46, i32 0, i32 2
  %stretched = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics22, i32 0, i32 17
  store i32 0, i32* %stretched, align 4, !tbaa !113
  %47 = load %struct._TMaxProfile*, %struct._TMaxProfile** %maxp, align 8, !tbaa !1
  %maxStorage = getelementptr inbounds %struct._TMaxProfile, %struct._TMaxProfile* %47, i32 0, i32 8
  %48 = load i16, i16* %maxStorage, align 2, !tbaa !114
  %conv23 = zext i16 %48 to i32
  %49 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %storeSize = getelementptr inbounds %struct._TInstance, %struct._TInstance* %49, i32 0, i32 14
  store i32 %conv23, i32* %storeSize, align 4, !tbaa !89
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %50, 4
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %51 to i64
  %52 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %metrics26 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %52, i32 0, i32 2
  %compensations = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics26, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %compensations, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numFDefs27 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %54, i32 0, i32 3
  %55 = load i32, i32* %numFDefs27, align 4, !tbaa !68
  %cmp28 = icmp sge i32 0, %55
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br i1 false, label %if.then.84, label %lor.lhs.false

cond.false:                                       ; preds = %for.end
  %56 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %57 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %FDefs30 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %57, i32 0, i32 4
  %58 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs30, align 8, !tbaa !72
  %59 = bitcast %struct._TDefRecord* %58 to i8*
  %call31 = call i32 @free_aux(%struct.ttfMemory_s* %56, i8* %59) #4
  %60 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %60, i32 0, i32 0
  %61 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !61
  %62 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %63 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numFDefs32 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %63, i32 0, i32 3
  %64 = load i32, i32* %numFDefs32, align 4, !tbaa !68
  %conv33 = sext i32 %64 to i64
  %mul = mul i64 %conv33, 16
  %conv34 = trunc i64 %mul to i32
  %call35 = call i8* %61(%struct.ttfMemory_s* %62, i32 %conv34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %65 = bitcast i8* %call35 to %struct._TDefRecord*
  %66 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %FDefs36 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %66, i32 0, i32 4
  store %struct._TDefRecord* %65, %struct._TDefRecord** %FDefs36, align 8, !tbaa !72
  %tobool = icmp ne %struct._TDefRecord* %65, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.84

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %67 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numIDefs37 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %67, i32 0, i32 5
  %68 = load i32, i32* %numIDefs37, align 4, !tbaa !70
  %cmp38 = icmp sge i32 0, %68
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %lor.lhs.false
  br i1 false, label %if.then.84, label %lor.lhs.false.52

cond.false.41:                                    ; preds = %lor.lhs.false
  %69 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %70 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %IDefs42 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %70, i32 0, i32 6
  %71 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs42, align 8, !tbaa !74
  %72 = bitcast %struct._TDefRecord* %71 to i8*
  %call43 = call i32 @free_aux(%struct.ttfMemory_s* %69, i8* %72) #4
  %73 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes44 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %73, i32 0, i32 0
  %74 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes44, align 8, !tbaa !61
  %75 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %76 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numIDefs45 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %76, i32 0, i32 5
  %77 = load i32, i32* %numIDefs45, align 4, !tbaa !70
  %conv46 = sext i32 %77 to i64
  %mul47 = mul i64 %conv46, 16
  %conv48 = trunc i64 %mul47 to i32
  %call49 = call i8* %74(%struct.ttfMemory_s* %75, i32 %conv48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %78 = bitcast i8* %call49 to %struct._TDefRecord*
  %79 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %IDefs50 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %79, i32 0, i32 6
  store %struct._TDefRecord* %78, %struct._TDefRecord** %IDefs50, align 8, !tbaa !74
  %tobool51 = icmp ne %struct._TDefRecord* %78, null
  br i1 %tobool51, label %lor.lhs.false.52, label %if.then.84

lor.lhs.false.52:                                 ; preds = %cond.false.41, %cond.true.40
  %80 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %cvtSize53 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %80, i32 0, i32 12
  %81 = load i32, i32* %cvtSize53, align 4, !tbaa !85
  %cmp54 = icmp sge i32 0, %81
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %lor.lhs.false.52
  br i1 false, label %if.then.84, label %lor.lhs.false.68

cond.false.57:                                    ; preds = %lor.lhs.false.52
  %82 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %83 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %cvt58 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %83, i32 0, i32 13
  %84 = load i64*, i64** %cvt58, align 8, !tbaa !87
  %85 = bitcast i64* %84 to i8*
  %call59 = call i32 @free_aux(%struct.ttfMemory_s* %82, i8* %85) #4
  %86 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes60 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %86, i32 0, i32 0
  %87 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes60, align 8, !tbaa !61
  %88 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %89 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %cvtSize61 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %89, i32 0, i32 12
  %90 = load i32, i32* %cvtSize61, align 4, !tbaa !85
  %conv62 = sext i32 %90 to i64
  %mul63 = mul i64 %conv62, 8
  %conv64 = trunc i64 %mul63 to i32
  %call65 = call i8* %87(%struct.ttfMemory_s* %88, i32 %conv64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %91 = bitcast i8* %call65 to i64*
  %92 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %cvt66 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %92, i32 0, i32 13
  store i64* %91, i64** %cvt66, align 8, !tbaa !87
  %tobool67 = icmp ne i64* %91, null
  br i1 %tobool67, label %lor.lhs.false.68, label %if.then.84

lor.lhs.false.68:                                 ; preds = %cond.false.57, %cond.true.56
  %93 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %storeSize69 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %93, i32 0, i32 14
  %94 = load i32, i32* %storeSize69, align 4, !tbaa !89
  %cmp70 = icmp sge i32 0, %94
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %lor.lhs.false.68
  br i1 false, label %if.then.84, label %if.end.85

cond.false.73:                                    ; preds = %lor.lhs.false.68
  %95 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %96 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %storage74 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %96, i32 0, i32 15
  %97 = load i64*, i64** %storage74, align 8, !tbaa !91
  %98 = bitcast i64* %97 to i8*
  %call75 = call i32 @free_aux(%struct.ttfMemory_s* %95, i8* %98) #4
  %99 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %alloc_bytes76 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %99, i32 0, i32 0
  %100 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes76, align 8, !tbaa !61
  %101 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %102 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %storeSize77 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %102, i32 0, i32 14
  %103 = load i32, i32* %storeSize77, align 4, !tbaa !89
  %conv78 = sext i32 %103 to i64
  %mul79 = mul i64 %conv78, 8
  %conv80 = trunc i64 %mul79 to i32
  %call81 = call i8* %100(%struct.ttfMemory_s* %101, i32 %conv80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %104 = bitcast i8* %call81 to i64*
  %105 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %storage82 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %105, i32 0, i32 15
  store i64* %104, i64** %storage82, align 8, !tbaa !91
  %tobool83 = icmp ne i64* %104, null
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %cond.false.73, %cond.true.72, %cond.false.57, %cond.true.56, %cond.false.41, %cond.true.40, %cond.false, %cond.true
  br label %Fail_Memory

if.end.85:                                        ; preds = %cond.false.73, %cond.true.72
  %106 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %FDefs86 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %106, i32 0, i32 4
  %107 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs86, align 8, !tbaa !72
  %108 = bitcast %struct._TDefRecord* %107 to i8*
  %109 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numFDefs87 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %109, i32 0, i32 3
  %110 = load i32, i32* %numFDefs87, align 4, !tbaa !68
  %conv88 = sext i32 %110 to i64
  %mul89 = mul i64 %conv88, 16
  %call90 = call i8* @memset(i8* %108, i32 0, i64 %mul89) #5
  %111 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %IDefs91 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %111, i32 0, i32 6
  %112 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs91, align 8, !tbaa !74
  %113 = bitcast %struct._TDefRecord* %112 to i8*
  %114 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %numIDefs92 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %114, i32 0, i32 5
  %115 = load i32, i32* %numIDefs92, align 4, !tbaa !70
  %conv93 = sext i32 %115 to i64
  %mul94 = mul i64 %conv93, 16
  %call95 = call i8* @memset(i8* %113, i32 0, i64 %mul94) #5
  %116 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TInstance, %struct._TInstance* %116, i32 0, i32 10
  %117 = bitcast %struct._TGraphicsState* %GS to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* bitcast (%struct._TGraphicsState* @Default_GraphicsState to i8*), i64 88, i32 8, i1 false), !tbaa.struct !83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Fail_Memory:                                      ; preds = %if.then.84
  %118 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !1
  %119 = bitcast %struct._TInstance* %118 to i8*
  %call96 = call i32 @Instance_Destroy(i8* %119) #4
  store i32 256, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Fail_Memory, %if.end.85
  %120 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast %struct._TMaxProfile** %maxp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast %struct._TFace** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct._TInstance** %ins to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = load i32, i32* %retval
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define i32 @Instance_Init(%struct._TInstance* %ins) #0 {
entry:
  %ins.addr = alloca %struct._TInstance*, align 8
  %exec = alloca %struct._TExecution_Context*, align 8
  %error = alloca i32, align 4
  %face = alloca %struct._TFace*, align 8
  store %struct._TInstance* %ins, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._TFace** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %face1 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %3, i32 0, i32 0
  %4 = load %struct._TFace*, %struct._TFace** %face1, align 8, !tbaa !66
  store %struct._TFace* %4, %struct._TFace** %face, align 8, !tbaa !1
  %5 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %face2 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %5, i32 0, i32 0
  %6 = load %struct._TFace*, %struct._TFace** %face2, align 8, !tbaa !66
  %font = getelementptr inbounds %struct._TFace, %struct._TFace* %6, i32 0, i32 1
  %7 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !50
  %exec3 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %7, i32 0, i32 23
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec3, align 8, !tbaa !115
  store %struct._TExecution_Context* %8, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %9 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TInstance, %struct._TInstance* %9, i32 0, i32 10
  %10 = bitcast %struct._TGraphicsState* %GS to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct._TGraphicsState* @Default_GraphicsState to i8*), i64 88, i32 8, i1 false), !tbaa.struct !83
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %12 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %call = call i32 @Context_Load(%struct._TExecution_Context* %11, %struct._TInstance* %12) #4
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callTop = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 17
  store i32 0, i32* %callTop, align 4, !tbaa !46
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 24
  store i32 0, i32* %top, align 4, !tbaa !102
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %period = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 28
  store i32 64, i32* %period, align 4, !tbaa !116
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 29
  store i32 0, i32* %phase, align 4, !tbaa !117
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %threshold = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 30
  store i32 0, i32* %threshold, align 4, !tbaa !118
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 31
  %x_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 3
  store i32 0, i32* %x_ppem, align 4, !tbaa !119
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 31
  %y_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics4, i32 0, i32 4
  store i32 0, i32* %y_ppem, align 4, !tbaa !120
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 31
  %pointSize = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics5, i32 0, i32 0
  store i32 0, i32* %pointSize, align 4, !tbaa !121
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 31
  %x_scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics6, i32 0, i32 5
  store i64 0, i64* %x_scale1, align 8, !tbaa !122
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 31
  %x_scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics7, i32 0, i32 6
  store i64 1, i64* %x_scale2, align 8, !tbaa !123
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 31
  %y_scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics8, i32 0, i32 7
  store i64 0, i64* %y_scale1, align 8, !tbaa !124
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 31
  %y_scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics9, i32 0, i32 8
  store i64 1, i64* %y_scale2, align 8, !tbaa !125
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 31
  %ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics10, i32 0, i32 11
  store i32 0, i32* %ppem, align 4, !tbaa !126
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics11 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 31
  %scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics11, i32 0, i32 13
  store i64 0, i64* %scale1, align 8, !tbaa !127
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 31
  %scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics12, i32 0, i32 14
  store i64 1, i64* %scale2, align 8, !tbaa !128
  %28 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %metrics13 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %28, i32 0, i32 31
  %ratio = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics13, i32 0, i32 12
  store i64 65536, i64* %ratio, align 8, !tbaa !129
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %instruction_trap = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 41
  store i32 0, i32* %instruction_trap, align 4, !tbaa !82
  %30 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TInstance, %struct._TInstance* %30, i32 0, i32 12
  %31 = load i32, i32* %cvtSize, align 4, !tbaa !85
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %cvtSize14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %32, i32 0, i32 45
  store i32 %31, i32* %cvtSize14, align 4, !tbaa !86
  %33 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TInstance, %struct._TInstance* %33, i32 0, i32 13
  %34 = load i64*, i64** %cvt, align 8, !tbaa !87
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %cvt15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 46
  store i64* %34, i64** %cvt15, align 8, !tbaa !88
  %36 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %F_dot_P = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %36, i32 0, i32 47
  store i64 65536, i64* %F_dot_P, align 8, !tbaa !130
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %38 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %fontProgram = getelementptr inbounds %struct._TFace, %struct._TFace* %38, i32 0, i32 5
  %39 = load i8*, i8** %fontProgram, align 8, !tbaa !131
  %40 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %fontPgmSize = getelementptr inbounds %struct._TFace, %struct._TFace* %40, i32 0, i32 4
  %41 = load i32, i32* %fontPgmSize, align 4, !tbaa !132
  %call16 = call i32 @Set_CodeRange(%struct._TExecution_Context* %37, i32 1, i8* %39, i32 %41) #4
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %call17 = call i32 @Clear_CodeRange(%struct._TExecution_Context* %42, i32 2) #4
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %call18 = call i32 @Clear_CodeRange(%struct._TExecution_Context* %43, i32 3) #4
  %44 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %fontPgmSize19 = getelementptr inbounds %struct._TFace, %struct._TFace* %44, i32 0, i32 4
  %45 = load i32, i32* %fontPgmSize19, align 4, !tbaa !132
  %cmp = icmp sgt i32 %45, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %call20 = call i32 @Goto_CodeRange(%struct._TExecution_Context* %46, i32 1, i32 0) #4
  store i32 %call20, i32* %error, align 4, !tbaa !5
  %47 = load i32, i32* %error, align 4, !tbaa !5
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  br label %Fin

if.end:                                           ; preds = %if.then
  %48 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %call22 = call i32 @RunIns(%struct._TExecution_Context* %48) #4
  store i32 %call22, i32* %error, align 4, !tbaa !5
  %49 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  call void @Unset_CodeRange(%struct._TExecution_Context* %49) #4
  br label %if.end.23

if.else:                                          ; preds = %entry
  store i32 0, i32* %error, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end
  br label %Fin

Fin:                                              ; preds = %if.end.23, %if.then.21
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %51 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %call24 = call i32 @Context_Save(%struct._TExecution_Context* %50, %struct._TInstance* %51) #4
  %52 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct._TInstance, %struct._TInstance* %52, i32 0, i32 1
  store i32 0, i32* %valid, align 4, !tbaa !103
  %53 = load i32, i32* %error, align 4, !tbaa !5
  %54 = bitcast %struct._TFace** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define i32 @Instance_Reset(%struct._TInstance* %ins, i32 %debug) #0 {
entry:
  %retval = alloca i32, align 4
  %ins.addr = alloca %struct._TInstance*, align 8
  %debug.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  %face = alloca %struct._TFace*, align 8
  %exec = alloca %struct._TExecution_Context*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TInstance* %ins, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  store i32 %debug, i32* %debug.addr, align 4, !tbaa !5
  %0 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._TFace** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._TInstance* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct._TInstance, %struct._TInstance* %5, i32 0, i32 1
  %6 = load i32, i32* %valid, align 4, !tbaa !103
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %face4 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %7, i32 0, i32 0
  %8 = load %struct._TFace*, %struct._TFace** %face4, align 8, !tbaa !66
  store %struct._TFace* %8, %struct._TFace** %face, align 8, !tbaa !1
  %9 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %font = getelementptr inbounds %struct._TFace, %struct._TFace* %9, i32 0, i32 1
  %10 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !50
  %exec5 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %10, i32 0, i32 23
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec5, align 8, !tbaa !115
  store %struct._TExecution_Context* %11, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %12 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TInstance, %struct._TInstance* %12, i32 0, i32 2
  %x_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 3
  %13 = load i32, i32* %x_ppem, align 4, !tbaa !110
  %cmp = icmp slt i32 %13, 1
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %14 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics6 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %14, i32 0, i32 2
  %y_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics6, i32 0, i32 4
  %15 = load i32, i32* %y_ppem, align 4, !tbaa !111
  %cmp7 = icmp slt i32 %15, 1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.3
  store i32 13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %16 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics10 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %16, i32 0, i32 2
  %x_ppem11 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics10, i32 0, i32 3
  %17 = load i32, i32* %x_ppem11, align 4, !tbaa !110
  %18 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics12 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %18, i32 0, i32 2
  %y_ppem13 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics12, i32 0, i32 4
  %19 = load i32, i32* %y_ppem13, align 4, !tbaa !111
  %cmp14 = icmp sge i32 %17, %19
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.9
  %20 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics16 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %20, i32 0, i32 2
  %x_scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics16, i32 0, i32 5
  %21 = load i64, i64* %x_scale1, align 8, !tbaa !133
  %22 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics17 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %22, i32 0, i32 2
  %scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics17, i32 0, i32 13
  store i64 %21, i64* %scale1, align 8, !tbaa !134
  %23 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics18 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %23, i32 0, i32 2
  %x_scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics18, i32 0, i32 6
  %24 = load i64, i64* %x_scale2, align 8, !tbaa !135
  %25 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics19 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %25, i32 0, i32 2
  %scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics19, i32 0, i32 14
  store i64 %24, i64* %scale2, align 8, !tbaa !136
  %26 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics20 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %26, i32 0, i32 2
  %x_ppem21 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics20, i32 0, i32 3
  %27 = load i32, i32* %x_ppem21, align 4, !tbaa !110
  %28 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics22 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %28, i32 0, i32 2
  %ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics22, i32 0, i32 11
  store i32 %27, i32* %ppem, align 4, !tbaa !137
  %29 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics23 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %29, i32 0, i32 2
  %x_ratio = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics23, i32 0, i32 9
  store i64 65536, i64* %x_ratio, align 8, !tbaa !138
  %30 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics24 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %30, i32 0, i32 2
  %y_ppem25 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics24, i32 0, i32 4
  %31 = load i32, i32* %y_ppem25, align 4, !tbaa !111
  %32 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics26 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %32, i32 0, i32 2
  %x_ppem27 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics26, i32 0, i32 3
  %33 = load i32, i32* %x_ppem27, align 4, !tbaa !110
  %call = call i32 @MulDiv_Round(i32 %31, i32 65536, i32 %33) #4
  %conv = sext i32 %call to i64
  %34 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics28 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %34, i32 0, i32 2
  %y_ratio = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics28, i32 0, i32 10
  store i64 %conv, i64* %y_ratio, align 8, !tbaa !139
  br label %if.end.49

if.else:                                          ; preds = %if.end.9
  %35 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics29 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %35, i32 0, i32 2
  %y_scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics29, i32 0, i32 7
  %36 = load i64, i64* %y_scale1, align 8, !tbaa !140
  %37 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics30 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %37, i32 0, i32 2
  %scale131 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics30, i32 0, i32 13
  store i64 %36, i64* %scale131, align 8, !tbaa !134
  %38 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics32 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %38, i32 0, i32 2
  %y_scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics32, i32 0, i32 8
  %39 = load i64, i64* %y_scale2, align 8, !tbaa !141
  %40 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics33 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %40, i32 0, i32 2
  %scale234 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics33, i32 0, i32 14
  store i64 %39, i64* %scale234, align 8, !tbaa !136
  %41 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics35 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %41, i32 0, i32 2
  %y_ppem36 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics35, i32 0, i32 4
  %42 = load i32, i32* %y_ppem36, align 4, !tbaa !111
  %43 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics37 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %43, i32 0, i32 2
  %ppem38 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics37, i32 0, i32 11
  store i32 %42, i32* %ppem38, align 4, !tbaa !137
  %44 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics39 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %44, i32 0, i32 2
  %x_ppem40 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics39, i32 0, i32 3
  %45 = load i32, i32* %x_ppem40, align 4, !tbaa !110
  %46 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics41 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %46, i32 0, i32 2
  %y_ppem42 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics41, i32 0, i32 4
  %47 = load i32, i32* %y_ppem42, align 4, !tbaa !111
  %call43 = call i32 @MulDiv_Round(i32 %45, i32 65536, i32 %47) #4
  %conv44 = sext i32 %call43 to i64
  %48 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics45 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %48, i32 0, i32 2
  %x_ratio46 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics45, i32 0, i32 9
  store i64 %conv44, i64* %x_ratio46, align 8, !tbaa !138
  %49 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics47 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %49, i32 0, i32 2
  %y_ratio48 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics47, i32 0, i32 10
  store i64 65536, i64* %y_ratio48, align 8, !tbaa !139
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.15
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.49
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %51 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TInstance, %struct._TInstance* %51, i32 0, i32 12
  %52 = load i32, i32* %cvtSize, align 4, !tbaa !85
  %cmp50 = icmp slt i32 %50, %52
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %53 to i64
  %54 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TFace, %struct._TFace* %54, i32 0, i32 9
  %55 = load i16*, i16** %cvt, align 8, !tbaa !142
  %arrayidx = getelementptr inbounds i16, i16* %55, i64 %idxprom
  %56 = load i16, i16* %arrayidx, align 2, !tbaa !84
  %conv52 = sext i16 %56 to i32
  %57 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics53 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %57, i32 0, i32 2
  %scale154 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics53, i32 0, i32 13
  %58 = load i64, i64* %scale154, align 8, !tbaa !134
  %conv55 = trunc i64 %58 to i32
  %59 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %metrics56 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %59, i32 0, i32 2
  %scale257 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics56, i32 0, i32 14
  %60 = load i64, i64* %scale257, align 8, !tbaa !136
  %conv58 = trunc i64 %60 to i32
  %call59 = call i32 @MulDiv_Round(i32 %conv52, i32 %conv55, i32 %conv58) #4
  %conv60 = sext i32 %call59 to i64
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %61 to i64
  %62 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %cvt62 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %62, i32 0, i32 13
  %63 = load i64*, i64** %cvt62, align 8, !tbaa !87
  %arrayidx63 = getelementptr inbounds i64, i64* %63, i64 %idxprom61
  store i64 %conv60, i64* %arrayidx63, align 8, !tbaa !79
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TInstance, %struct._TInstance* %65, i32 0, i32 10
  %66 = bitcast %struct._TGraphicsState* %GS to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* bitcast (%struct._TGraphicsState* @Default_GraphicsState to i8*), i64 88, i32 8, i1 false), !tbaa.struct !83
  %67 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %68 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %call64 = call i32 @Context_Load(%struct._TExecution_Context* %67, %struct._TInstance* %68) #4
  %69 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %70 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %cvtProgram = getelementptr inbounds %struct._TFace, %struct._TFace* %70, i32 0, i32 7
  %71 = load i8*, i8** %cvtProgram, align 8, !tbaa !143
  %72 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %cvtPgmSize = getelementptr inbounds %struct._TFace, %struct._TFace* %72, i32 0, i32 6
  %73 = load i32, i32* %cvtPgmSize, align 4, !tbaa !144
  %call65 = call i32 @Set_CodeRange(%struct._TExecution_Context* %69, i32 2, i8* %71, i32 %73) #4
  %74 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %call66 = call i32 @Clear_CodeRange(%struct._TExecution_Context* %74, i32 3) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.73, %for.end
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %76 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %storeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %76, i32 0, i32 21
  %77 = load i32, i32* %storeSize, align 4, !tbaa !90
  %cmp68 = icmp slt i32 %75, %77
  br i1 %cmp68, label %for.body.70, label %for.end.75

for.body.70:                                      ; preds = %for.cond.67
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %78 to i64
  %79 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %storage = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %79, i32 0, i32 22
  %80 = load i64*, i64** %storage, align 8, !tbaa !92
  %arrayidx72 = getelementptr inbounds i64, i64* %80, i64 %idxprom71
  store i64 0, i64* %arrayidx72, align 8, !tbaa !79
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.70
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %inc74 = add nsw i32 %81, 1
  store i32 %inc74, i32* %i, align 4, !tbaa !5
  br label %for.cond.67

for.end.75:                                       ; preds = %for.cond.67
  %82 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %instruction_trap = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %82, i32 0, i32 41
  store i32 0, i32* %instruction_trap, align 4, !tbaa !82
  %83 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %83, i32 0, i32 24
  store i32 0, i32* %top, align 4, !tbaa !102
  %84 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %callTop = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %84, i32 0, i32 17
  store i32 0, i32* %callTop, align 4, !tbaa !46
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.92, %for.end.75
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %86 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %86, i32 0, i32 40
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight, i32 0, i32 0
  %87 = load i32, i32* %n_points, align 4, !tbaa !40
  %cmp77 = icmp slt i32 %85, %87
  br i1 %cmp77, label %for.body.79, label %for.end.94

for.body.79:                                      ; preds = %for.cond.76
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom80 = sext i32 %88 to i64
  %89 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight81 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %89, i32 0, i32 40
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight81, i32 0, i32 2
  %90 = load i32*, i32** %org_x, align 8, !tbaa !38
  %arrayidx82 = getelementptr inbounds i32, i32* %90, i64 %idxprom80
  store i32 0, i32* %arrayidx82, align 4, !tbaa !5
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %91 to i64
  %92 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight84 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %92, i32 0, i32 40
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight84, i32 0, i32 3
  %93 = load i32*, i32** %org_y, align 8, !tbaa !37
  %arrayidx85 = getelementptr inbounds i32, i32* %93, i64 %idxprom83
  store i32 0, i32* %arrayidx85, align 4, !tbaa !5
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom86 = sext i32 %94 to i64
  %95 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight87 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %95, i32 0, i32 40
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight87, i32 0, i32 4
  %96 = load i32*, i32** %cur_x, align 8, !tbaa !36
  %arrayidx88 = getelementptr inbounds i32, i32* %96, i64 %idxprom86
  store i32 0, i32* %arrayidx88, align 4, !tbaa !5
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %97 to i64
  %98 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %twilight90 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %98, i32 0, i32 40
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight90, i32 0, i32 5
  %99 = load i32*, i32** %cur_y, align 8, !tbaa !35
  %arrayidx91 = getelementptr inbounds i32, i32* %99, i64 %idxprom89
  store i32 0, i32* %arrayidx91, align 4, !tbaa !5
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.79
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %inc93 = add nsw i32 %100, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.end.94:                                       ; preds = %for.cond.76
  %101 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !1
  %cvtPgmSize95 = getelementptr inbounds %struct._TFace, %struct._TFace* %101, i32 0, i32 6
  %102 = load i32, i32* %cvtPgmSize95, align 4, !tbaa !144
  %cmp96 = icmp sgt i32 %102, 0
  br i1 %cmp96, label %if.then.98, label %if.else.104

if.then.98:                                       ; preds = %for.end.94
  %103 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %call99 = call i32 @Goto_CodeRange(%struct._TExecution_Context* %103, i32 2, i32 0) #4
  store i32 %call99, i32* %error, align 4, !tbaa !5
  %104 = load i32, i32* %error, align 4, !tbaa !5
  %tobool100 = icmp ne i32 %104, 0
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.98
  br label %Fin

if.end.102:                                       ; preds = %if.then.98
  %105 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %call103 = call i32 @RunIns(%struct._TExecution_Context* %105) #4
  store i32 %call103, i32* %error, align 4, !tbaa !5
  %106 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  call void @Unset_CodeRange(%struct._TExecution_Context* %106) #4
  br label %if.end.105

if.else.104:                                      ; preds = %for.end.94
  store i32 0, i32* %error, align 4, !tbaa !5
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.104, %if.end.102
  %107 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %GS106 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %107, i32 0, i32 10
  %108 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %GS107 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %108, i32 0, i32 42
  %109 = bitcast %struct._TGraphicsState* %GS106 to i8*
  %110 = bitcast %struct._TGraphicsState* %GS107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 88, i32 8, i1 false), !tbaa.struct !83
  br label %Fin

Fin:                                              ; preds = %if.end.105, %if.then.101
  %111 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !1
  %112 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %call108 = call i32 @Context_Save(%struct._TExecution_Context* %111, %struct._TInstance* %112) #4
  %113 = load i32, i32* %error, align 4, !tbaa !5
  %tobool109 = icmp ne i32 %113, 0
  br i1 %tobool109, label %if.end.112, label %if.then.110

if.then.110:                                      ; preds = %Fin
  %114 = load %struct._TInstance*, %struct._TInstance** %ins.addr, align 8, !tbaa !1
  %valid111 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %114, i32 0, i32 1
  store i32 1, i32* %valid111, align 4, !tbaa !103
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %Fin
  %115 = load i32, i32* %error, align 4, !tbaa !5
  store i32 %115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.112, %if.then.8, %if.then.2, %if.then
  %116 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct._TFace** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = load i32, i32* %retval
  ret i32 %120
}

declare i32 @MulDiv_Round(i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @Face_Destroy(%struct._TFace* %face) #0 {
entry:
  %face.addr = alloca %struct._TFace*, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  store %struct._TFace* %face, %struct._TFace** %face.addr, align 8, !tbaa !1
  %0 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._TFace* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %font = getelementptr inbounds %struct._TFace, %struct._TFace* %2, i32 0, i32 1
  %3 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !50
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %3, i32 0, i32 24
  %4 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !53
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %4, i32 0, i32 5
  %5 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !56
  store %struct.ttfMemory_s* %5, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %6, i32 0, i32 2
  %7 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free, align 8, !tbaa !24
  %8 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %9 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TFace, %struct._TFace* %9, i32 0, i32 9
  %10 = load i16*, i16** %cvt, align 8, !tbaa !142
  %11 = bitcast i16* %10 to i8*
  call void %7(%struct.ttfMemory_s* %8, i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %12 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvt1 = getelementptr inbounds %struct._TFace, %struct._TFace* %12, i32 0, i32 9
  store i16* null, i16** %cvt1, align 8, !tbaa !142
  %13 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TFace, %struct._TFace* %13, i32 0, i32 8
  store i32 0, i32* %cvtSize, align 4, !tbaa !106
  %14 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free2 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %14, i32 0, i32 2
  %15 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free2, align 8, !tbaa !24
  %16 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %17 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontProgram = getelementptr inbounds %struct._TFace, %struct._TFace* %17, i32 0, i32 5
  %18 = load i8*, i8** %fontProgram, align 8, !tbaa !131
  call void %15(%struct.ttfMemory_s* %16, i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %19 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontProgram3 = getelementptr inbounds %struct._TFace, %struct._TFace* %19, i32 0, i32 5
  store i8* null, i8** %fontProgram3, align 8, !tbaa !131
  %20 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %free4 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %20, i32 0, i32 2
  %21 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free4, align 8, !tbaa !24
  %22 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !1
  %23 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtProgram = getelementptr inbounds %struct._TFace, %struct._TFace* %23, i32 0, i32 7
  %24 = load i8*, i8** %cvtProgram, align 8, !tbaa !143
  call void %21(%struct.ttfMemory_s* %22, i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #4
  %25 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtProgram5 = getelementptr inbounds %struct._TFace, %struct._TFace* %25, i32 0, i32 7
  store i8* null, i8** %cvtProgram5, align 8, !tbaa !143
  %26 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %fontPgmSize = getelementptr inbounds %struct._TFace, %struct._TFace* %26, i32 0, i32 4
  store i32 0, i32* %fontPgmSize, align 4, !tbaa !132
  %27 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %cvtPgmSize = getelementptr inbounds %struct._TFace, %struct._TFace* %27, i32 0, i32 6
  store i32 0, i32* %cvtPgmSize, align 4, !tbaa !144
  %28 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Face_Create(%struct._TFace* %face) #0 {
entry:
  %retval = alloca i32, align 4
  %face.addr = alloca %struct._TFace*, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TFace* %face, %struct._TFace** %face.addr, align 8, !tbaa !1
  %0 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %call = call i32 @Load_TrueType_MaxProfile(%struct._TFace* %1) #4
  store i32 %call, i32* %error, align 4, !tbaa !5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %call1 = call i32 @Load_TrueType_CVT(%struct._TFace* %2) #4
  store i32 %call1, i32* %error, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %call4 = call i32 @Load_TrueType_Programs(%struct._TFace* %3) #4
  store i32 %call4, i32* %error, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  br label %Fail

if.end:                                           ; preds = %lor.lhs.false.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Fail:                                             ; preds = %if.then
  %4 = load %struct._TFace*, %struct._TFace** %face.addr, align 8, !tbaa !1
  %call6 = call i32 @Face_Destroy(%struct._TFace* %4) #4
  %5 = load i32, i32* %error, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Fail, %if.end
  %6 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @Load_TrueType_MaxProfile(%struct._TFace*) #3

declare i32 @Load_TrueType_CVT(%struct._TFace*) #3

declare i32 @Load_TrueType_Programs(%struct._TFace*) #3

; Function Attrs: nounwind uwtable
define i32 @Scale_X(%struct._TIns_Metrics* %metrics, i32 %x) #0 {
entry:
  %metrics.addr = alloca %struct._TIns_Metrics*, align 8
  %x.addr = alloca i32, align 4
  store %struct._TIns_Metrics* %metrics, %struct._TIns_Metrics** %metrics.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  %0 = load i32, i32* %x.addr, align 4, !tbaa !5
  %1 = load %struct._TIns_Metrics*, %struct._TIns_Metrics** %metrics.addr, align 8, !tbaa !1
  %x_scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %1, i32 0, i32 5
  %2 = load i64, i64* %x_scale1, align 8, !tbaa !145
  %conv = trunc i64 %2 to i32
  %3 = load %struct._TIns_Metrics*, %struct._TIns_Metrics** %metrics.addr, align 8, !tbaa !1
  %x_scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %3, i32 0, i32 6
  %4 = load i64, i64* %x_scale2, align 8, !tbaa !146
  %conv1 = trunc i64 %4 to i32
  %call = call i32 @MulDiv_Round(i32 %0, i32 %conv, i32 %conv1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @Scale_Y(%struct._TIns_Metrics* %metrics, i32 %y) #0 {
entry:
  %metrics.addr = alloca %struct._TIns_Metrics*, align 8
  %y.addr = alloca i32, align 4
  store %struct._TIns_Metrics* %metrics, %struct._TIns_Metrics** %metrics.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = load i32, i32* %y.addr, align 4, !tbaa !5
  %1 = load %struct._TIns_Metrics*, %struct._TIns_Metrics** %metrics.addr, align 8, !tbaa !1
  %y_scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %1, i32 0, i32 7
  %2 = load i64, i64* %y_scale1, align 8, !tbaa !147
  %conv = trunc i64 %2 to i32
  %3 = load %struct._TIns_Metrics*, %struct._TIns_Metrics** %metrics.addr, align 8, !tbaa !1
  %y_scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %3, i32 0, i32 8
  %4 = load i64, i64* %y_scale2, align 8, !tbaa !148
  %conv1 = trunc i64 %4 to i32
  %call = call i32 @MulDiv_Round(i32 %0, i32 %conv, i32 %conv1) #4
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"_TCodeRange", !2, i64 0, !6, i64 8}
!9 = !{!8, !6, i64 8}
!10 = !{!11, !2, i64 16}
!11 = !{!"_TExecution_Context", !2, i64 0, !6, i64 8, !6, i64 12, !2, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !6, i64 72, !3, i64 76, !2, i64 336, !6, i64 344, !6, i64 348, !6, i64 352, !2, i64 360, !3, i64 368, !6, i64 416, !2, i64 424, !6, i64 432, !6, i64 436, !2, i64 440, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !12, i64 472, !6, i64 600, !13, i64 608, !13, i64 616, !6, i64 624, !14, i64 632, !14, i64 688, !14, i64 744, !14, i64 800, !14, i64 856, !6, i64 912, !15, i64 920, !15, i64 1008, !6, i64 1096, !6, i64 1100, !2, i64 1104, !13, i64 1112, !2, i64 1120, !2, i64 1128, !2, i64 1136, !2, i64 1144, !2, i64 1152, !2, i64 1160, !2, i64 1168, !2, i64 1176, !18, i64 1184, !6, i64 1392, !6, i64 1396, !6, i64 1400, !6, i64 1404, !2, i64 1408}
!12 = !{!"_TIns_Metrics", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !6, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !3, i64 104, !6, i64 120, !6, i64 124}
!13 = !{!"long", !3, i64 0}
!14 = !{!"_TGlyph_Zone", !6, i64 0, !6, i64 4, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!15 = !{!"_TGraphicsState", !6, i64 0, !6, i64 4, !6, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !3, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84}
!16 = !{!"_TT_UnitVector", !17, i64 0, !17, i64 2}
!17 = !{!"short", !3, i64 0}
!18 = !{!"", !3, i64 0}
!19 = !{!11, !6, i64 28}
!20 = !{!11, !6, i64 24}
!21 = !{!11, !6, i64 12}
!22 = !{!11, !6, i64 1404}
!23 = !{!11, !2, i64 1408}
!24 = !{!25, !2, i64 16}
!25 = !{!"ttfMemory_s", !2, i64 0, !2, i64 8, !2, i64 16}
!26 = !{!11, !2, i64 832}
!27 = !{!11, !2, i64 824}
!28 = !{!11, !2, i64 816}
!29 = !{!11, !2, i64 808}
!30 = !{!11, !2, i64 840}
!31 = !{!11, !2, i64 848}
!32 = !{!11, !6, i64 800}
!33 = !{!11, !6, i64 804}
!34 = !{!11, !2, i64 896}
!35 = !{!11, !2, i64 888}
!36 = !{!11, !2, i64 880}
!37 = !{!11, !2, i64 872}
!38 = !{!11, !2, i64 864}
!39 = !{!11, !2, i64 904}
!40 = !{!11, !6, i64 856}
!41 = !{!11, !6, i64 860}
!42 = !{!11, !2, i64 440}
!43 = !{!11, !6, i64 432}
!44 = !{!11, !2, i64 360}
!45 = !{!11, !6, i64 352}
!46 = !{!11, !6, i64 348}
!47 = !{!11, !6, i64 344}
!48 = !{!11, !6, i64 1400}
!49 = !{!11, !2, i64 0}
!50 = !{!51, !2, i64 8}
!51 = !{!"_TFace", !2, i64 0, !2, i64 8, !52, i64 16, !6, i64 48, !6, i64 52, !2, i64 56, !6, i64 64, !2, i64 72, !6, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108}
!52 = !{!"_TMaxProfile", !6, i64 0, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !17, i64 16, !17, i64 18, !17, i64 20, !17, i64 22, !17, i64 24, !17, i64 26, !17, i64 28, !17, i64 30}
!53 = !{!54, !2, i64 160}
!54 = !{!"ttfFont_s", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !17, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184}
!55 = !{!"", !6, i64 0, !6, i64 4}
!56 = !{!57, !2, i64 32}
!57 = !{!"ttfInterpreter_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !2, i64 32}
!58 = !{!52, !17, i64 24}
!59 = !{!51, !6, i64 100}
!60 = !{!52, !17, i64 16}
!61 = !{!25, !2, i64 0}
!62 = !{!11, !6, i64 1396}
!63 = !{!11, !6, i64 1392}
!64 = !{!51, !6, i64 104}
!65 = !{!52, !17, i64 26}
!66 = !{!67, !2, i64 0}
!67 = !{!"_TInstance", !2, i64 0, !6, i64 8, !12, i64 16, !6, i64 144, !2, i64 152, !6, i64 160, !2, i64 168, !6, i64 176, !3, i64 180, !3, i64 440, !15, i64 488, !15, i64 576, !6, i64 664, !2, i64 672, !6, i64 680, !2, i64 688}
!68 = !{!67, !6, i64 144}
!69 = !{!11, !6, i64 44}
!70 = !{!67, !6, i64 160}
!71 = !{!11, !6, i64 56}
!72 = !{!67, !2, i64 152}
!73 = !{!11, !2, i64 48}
!74 = !{!67, !2, i64 168}
!75 = !{!11, !2, i64 64}
!76 = !{!67, !6, i64 176}
!77 = !{!11, !6, i64 72}
!78 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !79, i64 32, i64 8, !79, i64 40, i64 8, !79, i64 48, i64 8, !79, i64 56, i64 8, !79, i64 64, i64 8, !79, i64 72, i64 4, !5, i64 80, i64 8, !79, i64 88, i64 8, !79, i64 96, i64 8, !79, i64 104, i64 16, !80, i64 120, i64 4, !5, i64 124, i64 4, !5}
!79 = !{!13, !13, i64 0}
!80 = !{!3, !3, i64 0}
!81 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!82 = !{!11, !6, i64 912}
!83 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 2, !84, i64 14, i64 2, !84, i64 16, i64 2, !84, i64 18, i64 2, !84, i64 20, i64 2, !84, i64 22, i64 2, !84, i64 24, i64 8, !79, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 44, i64 4, !5, i64 48, i64 4, !5, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 1, !80, i64 68, i64 4, !5, i64 72, i64 4, !5, i64 76, i64 4, !5, i64 80, i64 4, !5, i64 84, i64 4, !5}
!84 = !{!17, !17, i64 0}
!85 = !{!67, !6, i64 664}
!86 = !{!11, !6, i64 1100}
!87 = !{!67, !2, i64 672}
!88 = !{!11, !2, i64 1104}
!89 = !{!67, !6, i64 680}
!90 = !{!11, !6, i64 416}
!91 = !{!67, !2, i64 688}
!92 = !{!11, !2, i64 424}
!93 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1}
!94 = !{!11, !6, i64 996}
!95 = !{!11, !6, i64 1000}
!96 = !{!11, !6, i64 1004}
!97 = !{!11, !17, i64 936}
!98 = !{!11, !17, i64 938}
!99 = !{i64 0, i64 2, !84, i64 2, i64 2, !84}
!100 = !{!11, !6, i64 956}
!101 = !{!11, !13, i64 944}
!102 = !{!11, !6, i64 436}
!103 = !{!67, !6, i64 8}
!104 = !{!52, !17, i64 20}
!105 = !{!52, !17, i64 22}
!106 = !{!51, !6, i64 80}
!107 = !{!67, !6, i64 16}
!108 = !{!67, !6, i64 20}
!109 = !{!67, !6, i64 24}
!110 = !{!67, !6, i64 28}
!111 = !{!67, !6, i64 32}
!112 = !{!67, !6, i64 136}
!113 = !{!67, !6, i64 140}
!114 = !{!52, !17, i64 18}
!115 = !{!54, !2, i64 152}
!116 = !{!11, !6, i64 456}
!117 = !{!11, !6, i64 460}
!118 = !{!11, !6, i64 464}
!119 = !{!11, !6, i64 484}
!120 = !{!11, !6, i64 488}
!121 = !{!11, !6, i64 472}
!122 = !{!11, !13, i64 496}
!123 = !{!11, !13, i64 504}
!124 = !{!11, !13, i64 512}
!125 = !{!11, !13, i64 520}
!126 = !{!11, !6, i64 544}
!127 = !{!11, !13, i64 560}
!128 = !{!11, !13, i64 568}
!129 = !{!11, !13, i64 552}
!130 = !{!11, !13, i64 1112}
!131 = !{!51, !2, i64 56}
!132 = !{!51, !6, i64 52}
!133 = !{!67, !13, i64 40}
!134 = !{!67, !13, i64 104}
!135 = !{!67, !13, i64 48}
!136 = !{!67, !13, i64 112}
!137 = !{!67, !6, i64 88}
!138 = !{!67, !13, i64 72}
!139 = !{!67, !13, i64 80}
!140 = !{!67, !13, i64 56}
!141 = !{!67, !13, i64 64}
!142 = !{!51, !2, i64 88}
!143 = !{!51, !2, i64 72}
!144 = !{!51, !6, i64 64}
!145 = !{!12, !13, i64 24}
!146 = !{!12, !13, i64 32}
!147 = !{!12, !13, i64 40}
!148 = !{!12, !13, i64 48}
