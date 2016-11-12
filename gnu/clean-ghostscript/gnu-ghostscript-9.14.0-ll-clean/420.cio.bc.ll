; ModuleID = './cio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_stream_private = type { i8*, i64, i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)*, i64 (i64, i8*)*, i32 (i64, i8*)*, i8*, i8*, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i64, i64, i64, i32 }
%struct.opj_event_mgr = type { i8*, i8*, i8*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [51 x i8] c"p_nb_bytes > 0 && p_nb_bytes <= sizeof(OPJ_UINT32)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"./openjpeg/libopenjpeg/cio.c\00", align 1
@__PRETTY_FUNCTION__.opj_write_bytes_BE = private unnamed_addr constant [60 x i8] c"void opj_write_bytes_BE(OPJ_BYTE *, OPJ_UINT32, OPJ_UINT32)\00", align 1
@__PRETTY_FUNCTION__.opj_write_bytes_LE = private unnamed_addr constant [60 x i8] c"void opj_write_bytes_LE(OPJ_BYTE *, OPJ_UINT32, OPJ_UINT32)\00", align 1
@__PRETTY_FUNCTION__.opj_read_bytes_BE = private unnamed_addr constant [67 x i8] c"void opj_read_bytes_BE(const OPJ_BYTE *, OPJ_UINT32 *, OPJ_UINT32)\00", align 1
@__PRETTY_FUNCTION__.opj_read_bytes_LE = private unnamed_addr constant [67 x i8] c"void opj_read_bytes_LE(const OPJ_BYTE *, OPJ_UINT32 *, OPJ_UINT32)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Stream reached its end !\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error on writing stream!\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"p_size >= 0\00", align 1
@__PRETTY_FUNCTION__.opj_stream_read_skip = private unnamed_addr constant [85 x i8] c"OPJ_OFF_T opj_stream_read_skip(opj_stream_private_t *, OPJ_OFF_T, opj_event_mgr_t *)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Stream error!\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"p_stream->m_byte_offset >= 0\00", align 1
@__PRETTY_FUNCTION__.opj_stream_get_number_byte_left = private unnamed_addr constant [72 x i8] c"OPJ_OFF_T opj_stream_get_number_byte_left(const opj_stream_private_t *)\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"p_stream->m_user_data_length >= (OPJ_UINT64)p_stream->m_byte_offset\00", align 1
@__PRETTY_FUNCTION__.opj_stream_skip = private unnamed_addr constant [80 x i8] c"OPJ_OFF_T opj_stream_skip(opj_stream_private_t *, OPJ_OFF_T, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_stream_seek = private unnamed_addr constant [84 x i8] c"OPJ_BOOL opj_stream_seek(opj_stream_private_t *, OPJ_OFF_T, struct opj_event_mgr *)\00", align 1

; Function Attrs: nounwind uwtable
define void @opj_write_bytes_BE(i8* %p_buffer, i32 %p_value, i32 %p_nb_bytes) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca i32, align 4
  %p_nb_bytes.addr = alloca i32, align 4
  %l_data_ptr = alloca i8*, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i32 %p_value, i32* %p_value.addr, align 4, !tbaa !5
  store i32 %p_nb_bytes, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %p_value.addr to i8*
  %2 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %l_data_ptr, align 8, !tbaa !1
  %3 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %conv = zext i32 %4 to i64
  %cmp1 = icmp ule i64 %conv, 4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 45, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.opj_write_bytes_BE, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %8 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %conv3 = zext i32 %8 to i64
  %call = call i8* @memcpy(i8* %6, i8* %7, i64 %conv3) #6
  %9 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @opj_write_bytes_LE(i8* %p_buffer, i32 %p_value, i32 %p_nb_bytes) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca i32, align 4
  %p_nb_bytes.addr = alloca i32, align 4
  %l_data_ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i32 %p_value, i32* %p_value.addr, align 4, !tbaa !5
  store i32 %p_nb_bytes, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %p_value.addr to i8*
  %2 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %l_data_ptr, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %cmp2 = icmp ule i64 %conv, 4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 55, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.opj_write_bytes_LE, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %cmp4 = icmp ult i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 -1
  store i8* %incdec.ptr, i8** %l_data_ptr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !7
  %11 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %p_buffer.addr, align 8, !tbaa !1
  store i8 %10, i8* %11, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_read_bytes_BE(i8* %p_buffer, i32* %p_value, i32 %p_nb_bytes) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca i32*, align 8
  %p_nb_bytes.addr = alloca i32, align 4
  %l_data_ptr = alloca i8*, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i32* %p_value, i32** %p_value.addr, align 8, !tbaa !1
  store i32 %p_nb_bytes, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32*, i32** %p_value.addr, align 8, !tbaa !1
  %2 = bitcast i32* %1 to i8*
  store i8* %2, i8** %l_data_ptr, align 8, !tbaa !1
  %3 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %conv = zext i32 %4 to i64
  %cmp1 = icmp ule i64 %conv, 4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 66, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.opj_read_bytes_BE, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i32*, i32** %p_value.addr, align 8, !tbaa !1
  store i32 0, i32* %6, align 4, !tbaa !5
  %7 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 4
  %8 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %8 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %9 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %10 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %conv4 = zext i32 %10 to i64
  %call = call i8* @memcpy(i8* %add.ptr3, i8* %9, i64 %conv4) #6
  %11 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_read_bytes_LE(i8* %p_buffer, i32* %p_value, i32 %p_nb_bytes) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca i32*, align 8
  %p_nb_bytes.addr = alloca i32, align 4
  %l_data_ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i32* %p_value, i32** %p_value.addr, align 8, !tbaa !1
  store i32 %p_nb_bytes, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32*, i32** %p_value.addr, align 8, !tbaa !1
  %2 = bitcast i32* %1 to i8*
  %3 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %l_data_ptr, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %conv = zext i32 %6 to i64
  %cmp2 = icmp ule i64 %conv, 4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 77, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.opj_read_bytes_LE, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load i32*, i32** %p_value.addr, align 8, !tbaa !1
  store i32 0, i32* %8, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load i32, i32* %p_nb_bytes.addr, align 4, !tbaa !5
  %cmp4 = icmp ult i32 %9, %10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p_buffer.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !7
  %13 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr6, i8** %l_data_ptr, align 8, !tbaa !1
  store i8 %12, i8* %13, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_write_double_BE(i8* %p_buffer, double %p_value) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca double, align 8
  %l_data_ptr = alloca i8*, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store double %p_value, double* %p_value.addr, align 8, !tbaa !8
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %p_value.addr to i8*
  store i8* %1, i8** %l_data_ptr, align 8, !tbaa !1
  %2 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %2, i8* %3, i64 8) #6
  %4 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_write_double_LE(i8* %p_buffer, double %p_value) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca double, align 8
  %l_data_ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store double %p_value, double* %p_value.addr, align 8, !tbaa !8
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %p_value.addr to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %l_data_ptr, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %conv = zext i32 %3 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %l_data_ptr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %6 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr3, i8** %p_buffer.addr, align 8, !tbaa !1
  store i8 %5, i8* %6, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_read_double_BE(i8* %p_buffer, double* %p_value) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca double*, align 8
  %l_data_ptr = alloca i8*, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store double* %p_value, double** %p_value.addr, align 8, !tbaa !1
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double*, double** %p_value.addr, align 8, !tbaa !1
  %2 = bitcast double* %1 to i8*
  store i8* %2, i8** %l_data_ptr, align 8, !tbaa !1
  %3 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %4 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %3, i8* %4, i64 8) #6
  %5 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_read_double_LE(i8* %p_buffer, double* %p_value) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca double*, align 8
  %l_data_ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store double* %p_value, double** %p_value.addr, align 8, !tbaa !1
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double*, double** %p_value.addr, align 8, !tbaa !1
  %2 = bitcast double* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 8
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %l_data_ptr, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %conv = zext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p_buffer.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %7 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr3, i8** %l_data_ptr, align 8, !tbaa !1
  store i8 %6, i8* %7, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_write_float_BE(i8* %p_buffer, float %p_value) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca float, align 4
  %l_data_ptr = alloca i8*, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store float %p_value, float* %p_value.addr, align 4, !tbaa !10
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast float* %p_value.addr to i8*
  store i8* %1, i8** %l_data_ptr, align 8, !tbaa !1
  %2 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %2, i8* %3, i64 4) #6
  %4 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_write_float_LE(i8* %p_buffer, float %p_value) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca float, align 4
  %l_data_ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store float %p_value, float* %p_value.addr, align 4, !tbaa !10
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast float* %p_value.addr to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 4
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %l_data_ptr, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %conv = zext i32 %3 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %l_data_ptr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %6 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr3, i8** %p_buffer.addr, align 8, !tbaa !1
  store i8 %5, i8* %6, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_read_float_BE(i8* %p_buffer, float* %p_value) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca float*, align 8
  %l_data_ptr = alloca i8*, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store float* %p_value, float** %p_value.addr, align 8, !tbaa !1
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load float*, float** %p_value.addr, align 8, !tbaa !1
  %2 = bitcast float* %1 to i8*
  store i8* %2, i8** %l_data_ptr, align 8, !tbaa !1
  %3 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %4 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %3, i8* %4, i64 4) #6
  %5 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_read_float_LE(i8* %p_buffer, float* %p_value) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_value.addr = alloca float*, align 8
  %l_data_ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store float* %p_value, float** %p_value.addr, align 8, !tbaa !1
  %0 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load float*, float** %p_value.addr, align 8, !tbaa !1
  %2 = bitcast float* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 4
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %l_data_ptr, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %conv = zext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p_buffer.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %7 = load i8*, i8** %l_data_ptr, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr3, i8** %l_data_ptr, align 8, !tbaa !1
  store i8 %6, i8* %7, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast i8** %l_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i8** @opj_stream_create(i64 %p_buffer_size, i32 %l_is_input) #0 {
entry:
  %retval = alloca i8**, align 8
  %p_buffer_size.addr = alloca i64, align 8
  %l_is_input.addr = alloca i32, align 4
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %p_buffer_size, i64* %p_buffer_size.addr, align 8, !tbaa !12
  store i32 %l_is_input, i32* %l_is_input.addr, align 4, !tbaa !5
  %0 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_stream_private* null, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %call = call noalias i8* @malloc(i64 112) #6
  %1 = bitcast i8* %call to %struct.opj_stream_private*
  store %struct.opj_stream_private* %1, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_stream_private* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %4 = bitcast %struct.opj_stream_private* %3 to i8*
  %call1 = call i8* @memset(i8* %4, i32 0, i64 112) #6
  %5 = load i64, i64* %p_buffer_size.addr, align 8, !tbaa !12
  %6 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_buffer_size = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %6, i32 0, i32 12
  store i64 %5, i64* %m_buffer_size, align 8, !tbaa !14
  %7 = load i64, i64* %p_buffer_size.addr, align 8, !tbaa !12
  %cmp = icmp uge i64 %7, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load i64, i64* %p_buffer_size.addr, align 8, !tbaa !12
  %call2 = call noalias i8* @malloc(i64 %8) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call2, %cond.false ]
  %9 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_stored_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %9, i32 0, i32 6
  store i8* %cond, i8** %m_stored_data, align 8, !tbaa !16
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_stored_data3 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %10, i32 0, i32 6
  %11 = load i8*, i8** %m_stored_data3, align 8, !tbaa !16
  %tobool4 = icmp ne i8* %11, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %cond.end
  %12 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %13 = bitcast %struct.opj_stream_private* %12 to i8*
  call void @free(i8* %13) #6
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %cond.end
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_stored_data7 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %14, i32 0, i32 6
  %15 = load i8*, i8** %m_stored_data7, align 8, !tbaa !16
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_current_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %16, i32 0, i32 7
  store i8* %15, i8** %m_current_data, align 8, !tbaa !17
  %17 = load i32, i32* %l_is_input.addr, align 4, !tbaa !5
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %18, i32 0, i32 13
  %19 = load i32, i32* %m_status, align 4, !tbaa !18
  %or = or i32 %19, 2
  store i32 %or, i32* %m_status, align 4, !tbaa !18
  %20 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_opj_skip = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %20, i32 0, i32 8
  store i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)* @opj_stream_read_skip, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)** %m_opj_skip, align 8, !tbaa !19
  %21 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_opj_seek = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %21, i32 0, i32 9
  store i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)* @opj_stream_read_seek, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)** %m_opj_seek, align 8, !tbaa !20
  br label %if.end.14

if.else:                                          ; preds = %if.end.6
  %22 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_status10 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %22, i32 0, i32 13
  %23 = load i32, i32* %m_status10, align 4, !tbaa !18
  %or11 = or i32 %23, 1
  store i32 %or11, i32* %m_status10, align 4, !tbaa !18
  %24 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_opj_skip12 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %24, i32 0, i32 8
  store i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)* @opj_stream_write_skip, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)** %m_opj_skip12, align 8, !tbaa !19
  %25 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_opj_seek13 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %25, i32 0, i32 9
  store i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)* @opj_stream_write_seek, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)** %m_opj_seek13, align 8, !tbaa !20
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  %26 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_read_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %26, i32 0, i32 2
  store i64 (i8*, i64, i8*)* @opj_stream_default_read, i64 (i8*, i64, i8*)** %m_read_fn, align 8, !tbaa !21
  %27 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_write_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %27, i32 0, i32 3
  store i64 (i8*, i64, i8*)* @opj_stream_default_write, i64 (i8*, i64, i8*)** %m_write_fn, align 8, !tbaa !22
  %28 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_skip_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %28, i32 0, i32 4
  store i64 (i64, i8*)* @opj_stream_default_skip, i64 (i64, i8*)** %m_skip_fn, align 8, !tbaa !23
  %29 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_seek_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %29, i32 0, i32 5
  store i32 (i64, i8*)* @opj_stream_default_seek, i32 (i64, i8*)** %m_seek_fn, align 8, !tbaa !24
  %30 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %31 = bitcast %struct.opj_stream_private* %30 to i8**
  store i8** %31, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.5, %if.then
  %32 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i8**, i8*** %retval
  ret i8** %33
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i64 @opj_stream_read_skip(%struct.opj_stream_private* %p_stream, i64 %p_size, %struct.opj_event_mgr* %p_event_mgr) #0 {
entry:
  %retval = alloca i64, align 8
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_size.addr = alloca i64, align 8
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  %l_skip_nb_bytes = alloca i64, align 8
  %l_current_skip_nb_bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !12
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %0 = bitcast i64* %l_skip_nb_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %1 = bitcast i64* %l_current_skip_nb_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 0, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %2 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 461, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_stream_read_skip, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %4, i32 0, i32 10
  %5 = load i64, i64* %m_bytes_in_buffer, align 8, !tbaa !25
  %6 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp1 = icmp uge i64 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %8, i32 0, i32 7
  %9 = load i8*, i8** %m_current_data, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %7
  store i8* %add.ptr, i8** %m_current_data, align 8, !tbaa !17
  %10 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %11 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer2 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %11, i32 0, i32 10
  %12 = load i64, i64* %m_bytes_in_buffer2, align 8, !tbaa !25
  %sub = sub i64 %12, %10
  store i64 %sub, i64* %m_bytes_in_buffer2, align 8, !tbaa !25
  %13 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %14 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %add = add nsw i64 %14, %13
  store i64 %add, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %15 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %16, i32 0, i32 11
  %17 = load i64, i64* %m_byte_offset, align 8, !tbaa !26
  %add3 = add nsw i64 %17, %15
  store i64 %add3, i64* %m_byte_offset, align 8, !tbaa !26
  %18 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  store i64 %18, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %19 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %19, i32 0, i32 13
  %20 = load i32, i32* %m_status, align 4, !tbaa !18
  %and = and i32 %20, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.17

if.then.4:                                        ; preds = %if.end
  %21 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer5 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %21, i32 0, i32 10
  %22 = load i64, i64* %m_bytes_in_buffer5, align 8, !tbaa !25
  %23 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %add6 = add nsw i64 %23, %22
  store i64 %add6, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %24 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer7 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %24, i32 0, i32 10
  %25 = load i64, i64* %m_bytes_in_buffer7, align 8, !tbaa !25
  %26 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data8 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %26, i32 0, i32 7
  %27 = load i8*, i8** %m_current_data8, align 8, !tbaa !17
  %add.ptr9 = getelementptr inbounds i8, i8* %27, i64 %25
  store i8* %add.ptr9, i8** %m_current_data8, align 8, !tbaa !17
  %28 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer10 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %28, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer10, align 8, !tbaa !25
  %29 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %30 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset11 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %30, i32 0, i32 11
  %31 = load i64, i64* %m_byte_offset11, align 8, !tbaa !26
  %add12 = add nsw i64 %31, %29
  store i64 %add12, i64* %m_byte_offset11, align 8, !tbaa !26
  %32 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %tobool13 = icmp ne i64 %32, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.then.4
  %33 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.then.4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond = phi i64 [ %33, %cond.true.14 ], [ -1, %cond.false.15 ]
  store i64 %cond, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  %34 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer18 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %34, i32 0, i32 10
  %35 = load i64, i64* %m_bytes_in_buffer18, align 8, !tbaa !25
  %tobool19 = icmp ne i64 %35, 0
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.end.17
  %36 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer21 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %36, i32 0, i32 10
  %37 = load i64, i64* %m_bytes_in_buffer21, align 8, !tbaa !25
  %38 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %add22 = add nsw i64 %38, %37
  store i64 %add22, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %39 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %39, i32 0, i32 6
  %40 = load i8*, i8** %m_stored_data, align 8, !tbaa !16
  %41 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data23 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %41, i32 0, i32 7
  store i8* %40, i8** %m_current_data23, align 8, !tbaa !17
  %42 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer24 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %42, i32 0, i32 10
  %43 = load i64, i64* %m_bytes_in_buffer24, align 8, !tbaa !25
  %44 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %sub25 = sub nsw i64 %44, %43
  store i64 %sub25, i64* %p_size.addr, align 8, !tbaa !12
  %45 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer26 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %45, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer26, align 8, !tbaa !25
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.20, %if.end.17
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.end.27
  %46 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp28 = icmp sgt i64 %46, 0
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_skip_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %47, i32 0, i32 4
  %48 = load i64 (i64, i8*)*, i64 (i64, i8*)** %m_skip_fn, align 8, !tbaa !23
  %49 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %50 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %50, i32 0, i32 0
  %51 = load i8*, i8** %m_user_data, align 8, !tbaa !27
  %call = call i64 %48(i64 %49, i8* %51) #7
  store i64 %call, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %52 = load i64, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %cmp29 = icmp eq i64 %52, -1
  br i1 %cmp29, label %if.then.30, label %if.end.40

if.then.30:                                       ; preds = %while.body
  %53 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call31 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %53, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #7
  %54 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status32 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %54, i32 0, i32 13
  %55 = load i32, i32* %m_status32, align 4, !tbaa !18
  %or = or i32 %55, 4
  store i32 %or, i32* %m_status32, align 4, !tbaa !18
  %56 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %57 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset33 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %57, i32 0, i32 11
  %58 = load i64, i64* %m_byte_offset33, align 8, !tbaa !26
  %add34 = add nsw i64 %58, %56
  store i64 %add34, i64* %m_byte_offset33, align 8, !tbaa !26
  %59 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %tobool35 = icmp ne i64 %59, 0
  br i1 %tobool35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %if.then.30
  %60 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  br label %cond.end.38

cond.false.37:                                    ; preds = %if.then.30
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.36
  %cond39 = phi i64 [ %60, %cond.true.36 ], [ -1, %cond.false.37 ]
  store i64 %cond39, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %while.body
  %61 = load i64, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %62 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %sub41 = sub nsw i64 %62, %61
  store i64 %sub41, i64* %p_size.addr, align 8, !tbaa !12
  %63 = load i64, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %64 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %add42 = add nsw i64 %64, %63
  store i64 %add42, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %65 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %66 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset43 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %66, i32 0, i32 11
  %67 = load i64, i64* %m_byte_offset43, align 8, !tbaa !26
  %add44 = add nsw i64 %67, %65
  store i64 %add44, i64* %m_byte_offset43, align 8, !tbaa !26
  %68 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  store i64 %68, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %cond.end.38, %cond.end.16, %if.then
  %69 = bitcast i64* %l_current_skip_nb_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i64* %l_skip_nb_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = load i64, i64* %retval
  ret i64 %71
}

; Function Attrs: nounwind uwtable
define i32 @opj_stream_read_seek(%struct.opj_stream_private* %p_stream, i64 %p_size, %struct.opj_event_mgr* %p_event_mgr) #0 {
entry:
  %retval = alloca i32, align 4
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_size.addr = alloca i64, align 8
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !12
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %0 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %1 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %1, i32 0, i32 6
  %2 = load i8*, i8** %m_stored_data, align 8, !tbaa !16
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %3, i32 0, i32 7
  store i8* %2, i8** %m_current_data, align 8, !tbaa !17
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %4, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer, align 8, !tbaa !25
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_seek_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %5, i32 0, i32 5
  %6 = load i32 (i64, i8*)*, i32 (i64, i8*)** %m_seek_fn, align 8, !tbaa !24
  %7 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %8, i32 0, i32 0
  %9 = load i8*, i8** %m_user_data, align 8, !tbaa !27
  %call = call i32 %6(i64 %7, i8* %9) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %10, i32 0, i32 13
  %11 = load i32, i32* %m_status, align 4, !tbaa !18
  %or = or i32 %11, 4
  store i32 %or, i32* %m_status, align 4, !tbaa !18
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %12 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status1 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %12, i32 0, i32 13
  %13 = load i32, i32* %m_status1, align 4, !tbaa !18
  %and = and i32 %13, -5
  store i32 %and, i32* %m_status1, align 4, !tbaa !18
  %14 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %15 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %15, i32 0, i32 11
  store i64 %14, i64* %m_byte_offset, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_write_skip(%struct.opj_stream_private* %p_stream, i64 %p_size, %struct.opj_event_mgr* %p_event_mgr) #0 {
entry:
  %retval = alloca i64, align 8
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_size.addr = alloca i64, align 8
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  %l_is_written = alloca i32, align 4
  %l_current_skip_nb_bytes = alloca i64, align 8
  %l_skip_nb_bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !12
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l_is_written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %l_is_written, align 4, !tbaa !5
  %1 = bitcast i64* %l_current_skip_nb_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 0, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %2 = bitcast i64* %l_skip_nb_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 0, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %3, i32 0, i32 13
  %4 = load i32, i32* %m_status, align 4, !tbaa !18
  %and = and i32 %4, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call = call i32 @opj_stream_flush(%struct.opj_stream_private* %5, %struct.opj_event_mgr* %6) #7
  store i32 %call, i32* %l_is_written, align 4, !tbaa !5
  %7 = load i32, i32* %l_is_written, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status3 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %8, i32 0, i32 13
  %9 = load i32, i32* %m_status3, align 4, !tbaa !18
  %or = or i32 %9, 8
  store i32 %or, i32* %m_status3, align 4, !tbaa !18
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %10, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer, align 8, !tbaa !25
  %11 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %11, i32 0, i32 7
  %12 = load i8*, i8** %m_current_data, align 8, !tbaa !17
  %13 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data4 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %13, i32 0, i32 7
  store i8* %12, i8** %m_current_data4, align 8, !tbaa !17
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.end.5
  %14 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp = icmp sgt i64 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_skip_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %15, i32 0, i32 4
  %16 = load i64 (i64, i8*)*, i64 (i64, i8*)** %m_skip_fn, align 8, !tbaa !23
  %17 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %18, i32 0, i32 0
  %19 = load i8*, i8** %m_user_data, align 8, !tbaa !27
  %call6 = call i64 %16(i64 %17, i8* %19) #7
  store i64 %call6, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %20 = load i64, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %cmp7 = icmp eq i64 %20, -1
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %while.body
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %21, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)) #7
  %22 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status10 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %22, i32 0, i32 13
  %23 = load i32, i32* %m_status10, align 4, !tbaa !18
  %or11 = or i32 %23, 8
  store i32 %or11, i32* %m_status10, align 4, !tbaa !18
  %24 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %25 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %25, i32 0, i32 11
  %26 = load i64, i64* %m_byte_offset, align 8, !tbaa !26
  %add = add nsw i64 %26, %24
  store i64 %add, i64* %m_byte_offset, align 8, !tbaa !26
  %27 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %tobool12 = icmp ne i64 %27, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %28 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %28, %cond.true ], [ -1, %cond.false ]
  store i64 %cond, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %while.body
  %29 = load i64, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %30 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %sub = sub nsw i64 %30, %29
  store i64 %sub, i64* %p_size.addr, align 8, !tbaa !12
  %31 = load i64, i64* %l_current_skip_nb_bytes, align 8, !tbaa !12
  %32 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %add14 = add nsw i64 %32, %31
  store i64 %add14, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  %34 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset15 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %34, i32 0, i32 11
  %35 = load i64, i64* %m_byte_offset15, align 8, !tbaa !26
  %add16 = add nsw i64 %35, %33
  store i64 %add16, i64* %m_byte_offset15, align 8, !tbaa !26
  %36 = load i64, i64* %l_skip_nb_bytes, align 8, !tbaa !12
  store i64 %36, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %cond.end, %if.then.2, %if.then
  %37 = bitcast i64* %l_skip_nb_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i64* %l_current_skip_nb_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %l_is_written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = load i64, i64* %retval
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define i32 @opj_stream_write_seek(%struct.opj_stream_private* %p_stream, i64 %p_size, %struct.opj_event_mgr* %p_event_mgr) #0 {
entry:
  %retval = alloca i32, align 4
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_size.addr = alloca i64, align 8
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !12
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %0 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %1 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call = call i32 @opj_stream_flush(%struct.opj_stream_private* %0, %struct.opj_event_mgr* %1) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %2, i32 0, i32 13
  %3 = load i32, i32* %m_status, align 4, !tbaa !18
  %or = or i32 %3, 8
  store i32 %or, i32* %m_status, align 4, !tbaa !18
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %4, i32 0, i32 6
  %5 = load i8*, i8** %m_stored_data, align 8, !tbaa !16
  %6 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %6, i32 0, i32 7
  store i8* %5, i8** %m_current_data, align 8, !tbaa !17
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %7, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer, align 8, !tbaa !25
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_seek_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %8, i32 0, i32 5
  %9 = load i32 (i64, i8*)*, i32 (i64, i8*)** %m_seek_fn, align 8, !tbaa !24
  %10 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %11 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %11, i32 0, i32 0
  %12 = load i8*, i8** %m_user_data, align 8, !tbaa !27
  %call1 = call i32 %9(i64 %10, i8* %12) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status4 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %13, i32 0, i32 13
  %14 = load i32, i32* %m_status4, align 4, !tbaa !18
  %or5 = or i32 %14, 8
  store i32 %or5, i32* %m_status4, align 4, !tbaa !18
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %15 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %16, i32 0, i32 11
  store i64 %15, i64* %m_byte_offset, align 8, !tbaa !26
  br label %if.end.6

if.end.6:                                         ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_default_read(i8* %p_buffer, i64 %p_nb_bytes, i8* %p_user_data) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_nb_bytes.addr = alloca i64, align 8
  %p_user_data.addr = alloca i8*, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i64 %p_nb_bytes, i64* %p_nb_bytes.addr, align 8, !tbaa !12
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %1 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !12
  %2 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_default_write(i8* %p_buffer, i64 %p_nb_bytes, i8* %p_user_data) #0 {
entry:
  %p_buffer.addr = alloca i8*, align 8
  %p_nb_bytes.addr = alloca i64, align 8
  %p_user_data.addr = alloca i8*, align 8
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i64 %p_nb_bytes, i64* %p_nb_bytes.addr, align 8, !tbaa !12
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %1 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !12
  %2 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_default_skip(i64 %p_nb_bytes, i8* %p_user_data) #0 {
entry:
  %p_nb_bytes.addr = alloca i64, align 8
  %p_user_data.addr = alloca i8*, align 8
  store i64 %p_nb_bytes, i64* %p_nb_bytes.addr, align 8, !tbaa !12
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !12
  %1 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define i32 @opj_stream_default_seek(i64 %p_nb_bytes, i8* %p_user_data) #0 {
entry:
  %p_nb_bytes.addr = alloca i64, align 8
  %p_user_data.addr = alloca i8*, align 8
  store i64 %p_nb_bytes, i64* %p_nb_bytes.addr, align 8, !tbaa !12
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !12
  %1 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i8** @opj_stream_default_create(i32 %l_is_input) #0 {
entry:
  %l_is_input.addr = alloca i32, align 4
  store i32 %l_is_input, i32* %l_is_input.addr, align 4, !tbaa !5
  %0 = load i32, i32* %l_is_input.addr, align 4, !tbaa !5
  %call = call i8** @opj_stream_create(i64 1048576, i32 %0) #7
  ret i8** %call
}

; Function Attrs: nounwind uwtable
define void @opj_stream_destroy(i8** %p_stream) #0 {
entry:
  %p_stream.addr = alloca i8**, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %2, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_stream_private* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_stored_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %4, i32 0, i32 6
  %5 = load i8*, i8** %m_stored_data, align 8, !tbaa !16
  call void @free(i8* %5) #6
  %6 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_stored_data1 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %6, i32 0, i32 6
  store i8* null, i8** %m_stored_data1, align 8, !tbaa !16
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %8 = bitcast %struct.opj_stream_private* %7 to i8*
  call void @free(i8* %8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_stream_destroy_v3(i8** %p_stream) #0 {
entry:
  %p_stream.addr = alloca i8**, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %2, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_stream_private* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_user_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %5, i32 0, i32 0
  %6 = load i8*, i8** %m_user_data, align 8, !tbaa !27
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %tobool1 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %call = call i32 @fclose(%struct._IO_FILE* %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_stored_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %10, i32 0, i32 6
  %11 = load i8*, i8** %m_stored_data, align 8, !tbaa !16
  call void @free(i8* %11) #6
  %12 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_stored_data3 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %12, i32 0, i32 6
  store i8* null, i8** %m_stored_data3, align 8, !tbaa !16
  %13 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %14 = bitcast %struct.opj_stream_private* %13 to i8*
  call void @free(i8* %14) #6
  %15 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %16 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define void @opj_stream_set_read_function(i8** %p_stream, i64 (i8*, i64, i8*)* %p_function) #0 {
entry:
  %p_stream.addr = alloca i8**, align 8
  %p_function.addr = alloca i64 (i8*, i64, i8*)*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store i64 (i8*, i64, i8*)* %p_function, i64 (i8*, i64, i8*)** %p_function.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %2, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_stream_private* %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %4, i32 0, i32 13
  %5 = load i32, i32* %m_status, align 4, !tbaa !18
  %and = and i32 %5, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)** %p_function.addr, align 8, !tbaa !1
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_read_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %7, i32 0, i32 2
  store i64 (i8*, i64, i8*)* %6, i64 (i8*, i64, i8*)** %m_read_fn, align 8, !tbaa !21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
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
define void @opj_stream_set_seek_function(i8** %p_stream, i32 (i64, i8*)* %p_function) #0 {
entry:
  %p_stream.addr = alloca i8**, align 8
  %p_function.addr = alloca i32 (i64, i8*)*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store i32 (i64, i8*)* %p_function, i32 (i64, i8*)** %p_function.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %2, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_stream_private* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32 (i64, i8*)*, i32 (i64, i8*)** %p_function.addr, align 8, !tbaa !1
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_seek_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %5, i32 0, i32 5
  store i32 (i64, i8*)* %4, i32 (i64, i8*)** %m_seek_fn, align 8, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
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
define void @opj_stream_set_write_function(i8** %p_stream, i64 (i8*, i64, i8*)* %p_function) #0 {
entry:
  %p_stream.addr = alloca i8**, align 8
  %p_function.addr = alloca i64 (i8*, i64, i8*)*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store i64 (i8*, i64, i8*)* %p_function, i64 (i8*, i64, i8*)** %p_function.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %2, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_stream_private* %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %4, i32 0, i32 13
  %5 = load i32, i32* %m_status, align 4, !tbaa !18
  %and = and i32 %5, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)** %p_function.addr, align 8, !tbaa !1
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_write_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %7, i32 0, i32 3
  store i64 (i8*, i64, i8*)* %6, i64 (i8*, i64, i8*)** %m_write_fn, align 8, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
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
define void @opj_stream_set_skip_function(i8** %p_stream, i64 (i64, i8*)* %p_function) #0 {
entry:
  %p_stream.addr = alloca i8**, align 8
  %p_function.addr = alloca i64 (i64, i8*)*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store i64 (i64, i8*)* %p_function, i64 (i64, i8*)** %p_function.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %2, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_stream_private* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i64 (i64, i8*)*, i64 (i64, i8*)** %p_function.addr, align 8, !tbaa !1
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_skip_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %5, i32 0, i32 4
  store i64 (i64, i8*)* %4, i64 (i64, i8*)** %m_skip_fn, align 8, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
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
define void @opj_stream_set_user_data(i8** %p_stream, i8* %p_data) #0 {
entry:
  %p_stream.addr = alloca i8**, align 8
  %p_data.addr = alloca i8*, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store i8* %p_data, i8** %p_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %2, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_stream_private* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_user_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %5, i32 0, i32 0
  store i8* %4, i8** %m_user_data, align 8, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
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
define void @opj_stream_set_user_data_length(i8** %p_stream, i64 %data_length) #0 {
entry:
  %p_stream.addr = alloca i8**, align 8
  %data_length.addr = alloca i64, align 8
  %l_stream = alloca %struct.opj_stream_private*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %p_stream, i8*** %p_stream.addr, align 8, !tbaa !1
  store i64 %data_length, i64* %data_length.addr, align 8, !tbaa !12
  %0 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8**, i8*** %p_stream.addr, align 8, !tbaa !1
  %2 = bitcast i8** %1 to %struct.opj_stream_private*
  store %struct.opj_stream_private* %2, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_stream_private* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %data_length.addr, align 8, !tbaa !12
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %l_stream, align 8, !tbaa !1
  %m_user_data_length = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %5, i32 0, i32 1
  store i64 %4, i64* %m_user_data_length, align 8, !tbaa !28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.opj_stream_private** %l_stream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
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
define i64 @opj_stream_read_data(%struct.opj_stream_private* %p_stream, i8* %p_buffer, i64 %p_size, %struct.opj_event_mgr* %p_event_mgr) #0 {
entry:
  %retval = alloca i64, align 8
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_buffer.addr = alloca i8*, align 8
  %p_size.addr = alloca i64, align 8
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  %l_read_nb_bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !12
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %0 = bitcast i64* %l_read_nb_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %1 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %1, i32 0, i32 10
  %2 = load i64, i64* %m_bytes_in_buffer, align 8, !tbaa !25
  %3 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp = icmp uge i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %5, i32 0, i32 7
  %6 = load i8*, i8** %m_current_data, align 8, !tbaa !17
  %7 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %call = call i8* @memcpy(i8* %4, i8* %6, i64 %7) #6
  %8 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %9 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data1 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %9, i32 0, i32 7
  %10 = load i8*, i8** %m_current_data1, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %8
  store i8* %add.ptr, i8** %m_current_data1, align 8, !tbaa !17
  %11 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %12 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer2 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %12, i32 0, i32 10
  %13 = load i64, i64* %m_bytes_in_buffer2, align 8, !tbaa !25
  %sub = sub i64 %13, %11
  store i64 %sub, i64* %m_bytes_in_buffer2, align 8, !tbaa !25
  %14 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %15 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %add = add i64 %15, %14
  store i64 %add, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %16 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %17 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %17, i32 0, i32 11
  %18 = load i64, i64* %m_byte_offset, align 8, !tbaa !26
  %add3 = add nsw i64 %18, %16
  store i64 %add3, i64* %m_byte_offset, align 8, !tbaa !26
  %19 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  store i64 %19, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %20, i32 0, i32 13
  %21 = load i32, i32* %m_status, align 4, !tbaa !18
  %and = and i32 %21, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.18

if.then.4:                                        ; preds = %if.end
  %22 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer5 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %22, i32 0, i32 10
  %23 = load i64, i64* %m_bytes_in_buffer5, align 8, !tbaa !25
  %24 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %add6 = add i64 %24, %23
  store i64 %add6, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %25 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %26 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data7 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %26, i32 0, i32 7
  %27 = load i8*, i8** %m_current_data7, align 8, !tbaa !17
  %28 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer8 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %28, i32 0, i32 10
  %29 = load i64, i64* %m_bytes_in_buffer8, align 8, !tbaa !25
  %call9 = call i8* @memcpy(i8* %25, i8* %27, i64 %29) #6
  %30 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer10 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %30, i32 0, i32 10
  %31 = load i64, i64* %m_bytes_in_buffer10, align 8, !tbaa !25
  %32 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data11 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %32, i32 0, i32 7
  %33 = load i8*, i8** %m_current_data11, align 8, !tbaa !17
  %add.ptr12 = getelementptr inbounds i8, i8* %33, i64 %31
  store i8* %add.ptr12, i8** %m_current_data11, align 8, !tbaa !17
  %34 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer13 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %34, i32 0, i32 10
  %35 = load i64, i64* %m_bytes_in_buffer13, align 8, !tbaa !25
  %36 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset14 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %36, i32 0, i32 11
  %37 = load i64, i64* %m_byte_offset14, align 8, !tbaa !26
  %add15 = add nsw i64 %37, %35
  store i64 %add15, i64* %m_byte_offset14, align 8, !tbaa !26
  %38 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer16 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %38, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer16, align 8, !tbaa !25
  %39 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %tobool17 = icmp ne i64 %39, 0
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %40 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %40, %cond.true ], [ -1, %cond.false ]
  store i64 %cond, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %41 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer19 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %41, i32 0, i32 10
  %42 = load i64, i64* %m_bytes_in_buffer19, align 8, !tbaa !25
  %tobool20 = icmp ne i64 %42, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.18
  %43 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer22 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %43, i32 0, i32 10
  %44 = load i64, i64* %m_bytes_in_buffer22, align 8, !tbaa !25
  %45 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %add23 = add i64 %45, %44
  store i64 %add23, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %46 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %47 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data24 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %47, i32 0, i32 7
  %48 = load i8*, i8** %m_current_data24, align 8, !tbaa !17
  %49 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer25 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %49, i32 0, i32 10
  %50 = load i64, i64* %m_bytes_in_buffer25, align 8, !tbaa !25
  %call26 = call i8* @memcpy(i8* %46, i8* %48, i64 %50) #6
  %51 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %51, i32 0, i32 6
  %52 = load i8*, i8** %m_stored_data, align 8, !tbaa !16
  %53 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data27 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %53, i32 0, i32 7
  store i8* %52, i8** %m_current_data27, align 8, !tbaa !17
  %54 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer28 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %54, i32 0, i32 10
  %55 = load i64, i64* %m_bytes_in_buffer28, align 8, !tbaa !25
  %56 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %add.ptr29, i8** %p_buffer.addr, align 8, !tbaa !1
  %57 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer30 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %57, i32 0, i32 10
  %58 = load i64, i64* %m_bytes_in_buffer30, align 8, !tbaa !25
  %59 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %sub31 = sub i64 %59, %58
  store i64 %sub31, i64* %p_size.addr, align 8, !tbaa !12
  %60 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer32 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %60, i32 0, i32 10
  %61 = load i64, i64* %m_bytes_in_buffer32, align 8, !tbaa !25
  %62 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset33 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %62, i32 0, i32 11
  %63 = load i64, i64* %m_byte_offset33, align 8, !tbaa !26
  %add34 = add nsw i64 %63, %61
  store i64 %add34, i64* %m_byte_offset33, align 8, !tbaa !26
  %64 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer35 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %64, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer35, align 8, !tbaa !25
  br label %if.end.38

if.else:                                          ; preds = %if.end.18
  %65 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data36 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %65, i32 0, i32 6
  %66 = load i8*, i8** %m_stored_data36, align 8, !tbaa !16
  %67 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data37 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %67, i32 0, i32 7
  store i8* %66, i8** %m_current_data37, align 8, !tbaa !17
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.21
  br label %while.cond

while.cond:                                       ; preds = %if.end.131, %if.end.38
  br label %while.body

while.body:                                       ; preds = %while.cond
  %68 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %69 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_buffer_size = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %69, i32 0, i32 12
  %70 = load i64, i64* %m_buffer_size, align 8, !tbaa !14
  %cmp39 = icmp ult i64 %68, %70
  br i1 %cmp39, label %if.then.40, label %if.else.87

if.then.40:                                       ; preds = %while.body
  %71 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_read_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %71, i32 0, i32 2
  %72 = load i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)** %m_read_fn, align 8, !tbaa !21
  %73 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data41 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %73, i32 0, i32 6
  %74 = load i8*, i8** %m_stored_data41, align 8, !tbaa !16
  %75 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_buffer_size42 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %75, i32 0, i32 12
  %76 = load i64, i64* %m_buffer_size42, align 8, !tbaa !14
  %77 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %77, i32 0, i32 0
  %78 = load i8*, i8** %m_user_data, align 8, !tbaa !27
  %call43 = call i64 %72(i8* %74, i64 %76, i8* %78) #7
  %79 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer44 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %79, i32 0, i32 10
  store i64 %call43, i64* %m_bytes_in_buffer44, align 8, !tbaa !25
  %80 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer45 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %80, i32 0, i32 10
  %81 = load i64, i64* %m_bytes_in_buffer45, align 8, !tbaa !25
  %cmp46 = icmp eq i64 %81, -1
  br i1 %cmp46, label %if.then.47, label %if.else.56

if.then.47:                                       ; preds = %if.then.40
  %82 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call48 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %82, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #7
  %83 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer49 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %83, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer49, align 8, !tbaa !25
  %84 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status50 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %84, i32 0, i32 13
  %85 = load i32, i32* %m_status50, align 4, !tbaa !18
  %or = or i32 %85, 4
  store i32 %or, i32* %m_status50, align 4, !tbaa !18
  %86 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %tobool51 = icmp ne i64 %86, 0
  br i1 %tobool51, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %if.then.47
  %87 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  br label %cond.end.54

cond.false.53:                                    ; preds = %if.then.47
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.52
  %cond55 = phi i64 [ %87, %cond.true.52 ], [ -1, %cond.false.53 ]
  store i64 %cond55, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.56:                                       ; preds = %if.then.40
  %88 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer57 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %88, i32 0, i32 10
  %89 = load i64, i64* %m_bytes_in_buffer57, align 8, !tbaa !25
  %90 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp58 = icmp ult i64 %89, %90
  br i1 %cmp58, label %if.then.59, label %if.else.75

if.then.59:                                       ; preds = %if.else.56
  %91 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer60 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %91, i32 0, i32 10
  %92 = load i64, i64* %m_bytes_in_buffer60, align 8, !tbaa !25
  %93 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %add61 = add i64 %93, %92
  store i64 %add61, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %94 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %95 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data62 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %95, i32 0, i32 7
  %96 = load i8*, i8** %m_current_data62, align 8, !tbaa !17
  %97 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer63 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %97, i32 0, i32 10
  %98 = load i64, i64* %m_bytes_in_buffer63, align 8, !tbaa !25
  %call64 = call i8* @memcpy(i8* %94, i8* %96, i64 %98) #6
  %99 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data65 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %99, i32 0, i32 6
  %100 = load i8*, i8** %m_stored_data65, align 8, !tbaa !16
  %101 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data66 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %101, i32 0, i32 7
  store i8* %100, i8** %m_current_data66, align 8, !tbaa !17
  %102 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer67 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %102, i32 0, i32 10
  %103 = load i64, i64* %m_bytes_in_buffer67, align 8, !tbaa !25
  %104 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %add.ptr68, i8** %p_buffer.addr, align 8, !tbaa !1
  %105 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer69 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %105, i32 0, i32 10
  %106 = load i64, i64* %m_bytes_in_buffer69, align 8, !tbaa !25
  %107 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %sub70 = sub i64 %107, %106
  store i64 %sub70, i64* %p_size.addr, align 8, !tbaa !12
  %108 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer71 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %108, i32 0, i32 10
  %109 = load i64, i64* %m_bytes_in_buffer71, align 8, !tbaa !25
  %110 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset72 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %110, i32 0, i32 11
  %111 = load i64, i64* %m_byte_offset72, align 8, !tbaa !26
  %add73 = add nsw i64 %111, %109
  store i64 %add73, i64* %m_byte_offset72, align 8, !tbaa !26
  %112 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer74 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %112, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer74, align 8, !tbaa !25
  br label %if.end.85

if.else.75:                                       ; preds = %if.else.56
  %113 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %114 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %add76 = add i64 %114, %113
  store i64 %add76, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %115 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %116 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data77 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %116, i32 0, i32 7
  %117 = load i8*, i8** %m_current_data77, align 8, !tbaa !17
  %118 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %call78 = call i8* @memcpy(i8* %115, i8* %117, i64 %118) #6
  %119 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %120 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data79 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %120, i32 0, i32 7
  %121 = load i8*, i8** %m_current_data79, align 8, !tbaa !17
  %add.ptr80 = getelementptr inbounds i8, i8* %121, i64 %119
  store i8* %add.ptr80, i8** %m_current_data79, align 8, !tbaa !17
  %122 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %123 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer81 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %123, i32 0, i32 10
  %124 = load i64, i64* %m_bytes_in_buffer81, align 8, !tbaa !25
  %sub82 = sub i64 %124, %122
  store i64 %sub82, i64* %m_bytes_in_buffer81, align 8, !tbaa !25
  %125 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %126 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset83 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %126, i32 0, i32 11
  %127 = load i64, i64* %m_byte_offset83, align 8, !tbaa !26
  %add84 = add nsw i64 %127, %125
  store i64 %add84, i64* %m_byte_offset83, align 8, !tbaa !26
  %128 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  store i64 %128, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.then.59
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85
  br label %if.end.131

if.else.87:                                       ; preds = %while.body
  %129 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_read_fn88 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %129, i32 0, i32 2
  %130 = load i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)** %m_read_fn88, align 8, !tbaa !21
  %131 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %132 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %133 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data89 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %133, i32 0, i32 0
  %134 = load i8*, i8** %m_user_data89, align 8, !tbaa !27
  %call90 = call i64 %130(i8* %131, i64 %132, i8* %134) #7
  %135 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer91 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %135, i32 0, i32 10
  store i64 %call90, i64* %m_bytes_in_buffer91, align 8, !tbaa !25
  %136 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer92 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %136, i32 0, i32 10
  %137 = load i64, i64* %m_bytes_in_buffer92, align 8, !tbaa !25
  %cmp93 = icmp eq i64 %137, -1
  br i1 %cmp93, label %if.then.94, label %if.else.104

if.then.94:                                       ; preds = %if.else.87
  %138 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call95 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %138, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #7
  %139 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer96 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %139, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer96, align 8, !tbaa !25
  %140 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status97 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %140, i32 0, i32 13
  %141 = load i32, i32* %m_status97, align 4, !tbaa !18
  %or98 = or i32 %141, 4
  store i32 %or98, i32* %m_status97, align 4, !tbaa !18
  %142 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %tobool99 = icmp ne i64 %142, 0
  br i1 %tobool99, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %if.then.94
  %143 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  br label %cond.end.102

cond.false.101:                                   ; preds = %if.then.94
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.100
  %cond103 = phi i64 [ %143, %cond.true.100 ], [ -1, %cond.false.101 ]
  store i64 %cond103, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.104:                                      ; preds = %if.else.87
  %144 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer105 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %144, i32 0, i32 10
  %145 = load i64, i64* %m_bytes_in_buffer105, align 8, !tbaa !25
  %146 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp106 = icmp ult i64 %145, %146
  br i1 %cmp106, label %if.then.107, label %if.else.120

if.then.107:                                      ; preds = %if.else.104
  %147 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer108 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %147, i32 0, i32 10
  %148 = load i64, i64* %m_bytes_in_buffer108, align 8, !tbaa !25
  %149 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %add109 = add i64 %149, %148
  store i64 %add109, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %150 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data110 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %150, i32 0, i32 6
  %151 = load i8*, i8** %m_stored_data110, align 8, !tbaa !16
  %152 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data111 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %152, i32 0, i32 7
  store i8* %151, i8** %m_current_data111, align 8, !tbaa !17
  %153 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer112 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %153, i32 0, i32 10
  %154 = load i64, i64* %m_bytes_in_buffer112, align 8, !tbaa !25
  %155 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %add.ptr113 = getelementptr inbounds i8, i8* %155, i64 %154
  store i8* %add.ptr113, i8** %p_buffer.addr, align 8, !tbaa !1
  %156 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer114 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %156, i32 0, i32 10
  %157 = load i64, i64* %m_bytes_in_buffer114, align 8, !tbaa !25
  %158 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %sub115 = sub i64 %158, %157
  store i64 %sub115, i64* %p_size.addr, align 8, !tbaa !12
  %159 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer116 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %159, i32 0, i32 10
  %160 = load i64, i64* %m_bytes_in_buffer116, align 8, !tbaa !25
  %161 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset117 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %161, i32 0, i32 11
  %162 = load i64, i64* %m_byte_offset117, align 8, !tbaa !26
  %add118 = add nsw i64 %162, %160
  store i64 %add118, i64* %m_byte_offset117, align 8, !tbaa !26
  %163 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer119 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %163, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer119, align 8, !tbaa !25
  br label %if.end.129

if.else.120:                                      ; preds = %if.else.104
  %164 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer121 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %164, i32 0, i32 10
  %165 = load i64, i64* %m_bytes_in_buffer121, align 8, !tbaa !25
  %166 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %add122 = add i64 %166, %165
  store i64 %add122, i64* %l_read_nb_bytes, align 8, !tbaa !12
  %167 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer123 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %167, i32 0, i32 10
  %168 = load i64, i64* %m_bytes_in_buffer123, align 8, !tbaa !25
  %169 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset124 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %169, i32 0, i32 11
  %170 = load i64, i64* %m_byte_offset124, align 8, !tbaa !26
  %add125 = add nsw i64 %170, %168
  store i64 %add125, i64* %m_byte_offset124, align 8, !tbaa !26
  %171 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data126 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %171, i32 0, i32 6
  %172 = load i8*, i8** %m_stored_data126, align 8, !tbaa !16
  %173 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data127 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %173, i32 0, i32 7
  store i8* %172, i8** %m_current_data127, align 8, !tbaa !17
  %174 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer128 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %174, i32 0, i32 10
  store i64 0, i64* %m_bytes_in_buffer128, align 8, !tbaa !25
  %175 = load i64, i64* %l_read_nb_bytes, align 8, !tbaa !12
  store i64 %175, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.129:                                       ; preds = %if.then.107
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.86
  br label %while.cond

cleanup:                                          ; preds = %if.else.120, %cond.end.102, %if.else.75, %cond.end.54, %cond.end, %if.then
  %176 = bitcast i64* %l_read_nb_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = load i64, i64* %retval
  ret i64 %177
}

declare i32 @opj_event_msg(%struct.opj_event_mgr*, i32, i8*, ...) #4

; Function Attrs: nounwind uwtable
define i64 @opj_stream_write_data(%struct.opj_stream_private* %p_stream, i8* %p_buffer, i64 %p_size, %struct.opj_event_mgr* %p_event_mgr) #0 {
entry:
  %retval = alloca i64, align 8
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_buffer.addr = alloca i8*, align 8
  %p_size.addr = alloca i64, align 8
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  %l_remaining_bytes = alloca i64, align 8
  %l_write_nb_bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !12
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %0 = bitcast i64* %l_remaining_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %l_remaining_bytes, align 8, !tbaa !12
  %1 = bitcast i64* %l_write_nb_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 0, i64* %l_write_nb_bytes, align 8, !tbaa !12
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %2, i32 0, i32 13
  %3 = load i32, i32* %m_status, align 4, !tbaa !18
  %and = and i32 %3, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.end
  br label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_buffer_size = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %4, i32 0, i32 12
  %5 = load i64, i64* %m_buffer_size, align 8, !tbaa !14
  %6 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %6, i32 0, i32 10
  %7 = load i64, i64* %m_bytes_in_buffer, align 8, !tbaa !25
  %sub = sub i64 %5, %7
  store i64 %sub, i64* %l_remaining_bytes, align 8, !tbaa !12
  %8 = load i64, i64* %l_remaining_bytes, align 8, !tbaa !12
  %9 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp = icmp uge i64 %8, %9
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %while.body
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %10, i32 0, i32 7
  %11 = load i8*, i8** %m_current_data, align 8, !tbaa !17
  %12 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %13 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %call = call i8* @memcpy(i8* %11, i8* %12, i64 %13) #6
  %14 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %15 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data2 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %15, i32 0, i32 7
  %16 = load i8*, i8** %m_current_data2, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %14
  store i8* %add.ptr, i8** %m_current_data2, align 8, !tbaa !17
  %17 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer3 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %18, i32 0, i32 10
  %19 = load i64, i64* %m_bytes_in_buffer3, align 8, !tbaa !25
  %add = add i64 %19, %17
  store i64 %add, i64* %m_bytes_in_buffer3, align 8, !tbaa !25
  %20 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %21 = load i64, i64* %l_write_nb_bytes, align 8, !tbaa !12
  %add4 = add i64 %21, %20
  store i64 %add4, i64* %l_write_nb_bytes, align 8, !tbaa !12
  %22 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %23 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %23, i32 0, i32 11
  %24 = load i64, i64* %m_byte_offset, align 8, !tbaa !26
  %add5 = add nsw i64 %24, %22
  store i64 %add5, i64* %m_byte_offset, align 8, !tbaa !26
  %25 = load i64, i64* %l_write_nb_bytes, align 8, !tbaa !12
  store i64 %25, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %while.body
  %26 = load i64, i64* %l_remaining_bytes, align 8, !tbaa !12
  %tobool7 = icmp ne i64 %26, 0
  br i1 %tobool7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.end.6
  %27 = load i64, i64* %l_remaining_bytes, align 8, !tbaa !12
  %28 = load i64, i64* %l_write_nb_bytes, align 8, !tbaa !12
  %add9 = add i64 %28, %27
  store i64 %add9, i64* %l_write_nb_bytes, align 8, !tbaa !12
  %29 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data10 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %29, i32 0, i32 7
  %30 = load i8*, i8** %m_current_data10, align 8, !tbaa !17
  %31 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %32 = load i64, i64* %l_remaining_bytes, align 8, !tbaa !12
  %call11 = call i8* @memcpy(i8* %30, i8* %31, i64 %32) #6
  %33 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %33, i32 0, i32 6
  %34 = load i8*, i8** %m_stored_data, align 8, !tbaa !16
  %35 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data12 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %35, i32 0, i32 7
  store i8* %34, i8** %m_current_data12, align 8, !tbaa !17
  %36 = load i64, i64* %l_remaining_bytes, align 8, !tbaa !12
  %37 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %add.ptr13, i8** %p_buffer.addr, align 8, !tbaa !1
  %38 = load i64, i64* %l_remaining_bytes, align 8, !tbaa !12
  %39 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %sub14 = sub i64 %39, %38
  store i64 %sub14, i64* %p_size.addr, align 8, !tbaa !12
  %40 = load i64, i64* %l_remaining_bytes, align 8, !tbaa !12
  %41 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer15 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %41, i32 0, i32 10
  %42 = load i64, i64* %m_bytes_in_buffer15, align 8, !tbaa !25
  %add16 = add i64 %42, %40
  store i64 %add16, i64* %m_bytes_in_buffer15, align 8, !tbaa !25
  %43 = load i64, i64* %l_remaining_bytes, align 8, !tbaa !12
  %44 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset17 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %44, i32 0, i32 11
  %45 = load i64, i64* %m_byte_offset17, align 8, !tbaa !26
  %add18 = add nsw i64 %45, %43
  store i64 %add18, i64* %m_byte_offset17, align 8, !tbaa !26
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.8, %if.end.6
  %46 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %47 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call20 = call i32 @opj_stream_flush(%struct.opj_stream_private* %46, %struct.opj_event_mgr* %47) #7
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.19
  br label %while.cond

cleanup:                                          ; preds = %if.then.22, %if.then.1, %if.then
  %48 = bitcast i64* %l_write_nb_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i64* %l_remaining_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i64, i64* %retval
  ret i64 %50
}

; Function Attrs: nounwind uwtable
define i32 @opj_stream_flush(%struct.opj_stream_private* %p_stream, %struct.opj_event_mgr* %p_event_mgr) #0 {
entry:
  %retval = alloca i32, align 4
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  %l_current_write_nb_bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %0 = bitcast i64* %l_current_write_nb_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %l_current_write_nb_bytes, align 8, !tbaa !12
  %1 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %1, i32 0, i32 6
  %2 = load i8*, i8** %m_stored_data, align 8, !tbaa !16
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %3, i32 0, i32 7
  store i8* %2, i8** %m_current_data, align 8, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %4, i32 0, i32 10
  %5 = load i64, i64* %m_bytes_in_buffer, align 8, !tbaa !25
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_write_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %6, i32 0, i32 3
  %7 = load i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)** %m_write_fn, align 8, !tbaa !22
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data1 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %8, i32 0, i32 7
  %9 = load i8*, i8** %m_current_data1, align 8, !tbaa !17
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer2 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %10, i32 0, i32 10
  %11 = load i64, i64* %m_bytes_in_buffer2, align 8, !tbaa !25
  %12 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %12, i32 0, i32 0
  %13 = load i8*, i8** %m_user_data, align 8, !tbaa !27
  %call = call i64 %7(i8* %9, i64 %11, i8* %13) #7
  store i64 %call, i64* %l_current_write_nb_bytes, align 8, !tbaa !12
  %14 = load i64, i64* %l_current_write_nb_bytes, align 8, !tbaa !12
  %cmp = icmp eq i64 %14, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %15 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_status = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %15, i32 0, i32 13
  %16 = load i32, i32* %m_status, align 4, !tbaa !18
  %or = or i32 %16, 8
  store i32 %or, i32* %m_status, align 4, !tbaa !18
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %17, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %18 = load i64, i64* %l_current_write_nb_bytes, align 8, !tbaa !12
  %19 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data4 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %19, i32 0, i32 7
  %20 = load i8*, i8** %m_current_data4, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %18
  store i8* %add.ptr, i8** %m_current_data4, align 8, !tbaa !17
  %21 = load i64, i64* %l_current_write_nb_bytes, align 8, !tbaa !12
  %22 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_bytes_in_buffer5 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %22, i32 0, i32 10
  %23 = load i64, i64* %m_bytes_in_buffer5, align 8, !tbaa !25
  %sub = sub i64 %23, %21
  store i64 %sub, i64* %m_bytes_in_buffer5, align 8, !tbaa !25
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_stored_data6 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %24, i32 0, i32 6
  %25 = load i8*, i8** %m_stored_data6, align 8, !tbaa !16
  %26 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_current_data7 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %26, i32 0, i32 7
  store i8* %25, i8** %m_current_data7, align 8, !tbaa !17
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %27 = bitcast i64* %l_current_write_nb_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_tell(%struct.opj_stream_private* %p_stream) #0 {
entry:
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %0 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %0, i32 0, i32 11
  %1 = load i64, i64* %m_byte_offset, align 8, !tbaa !26
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_get_number_byte_left(%struct.opj_stream_private* %p_stream) #0 {
entry:
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %0 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %0, i32 0, i32 11
  %1 = load i64, i64* %m_byte_offset, align 8, !tbaa !26
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 558, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.opj_stream_get_number_byte_left, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data_length = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %3, i32 0, i32 1
  %4 = load i64, i64* %m_user_data_length, align 8, !tbaa !28
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset1 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %5, i32 0, i32 11
  %6 = load i64, i64* %m_byte_offset1, align 8, !tbaa !26
  %cmp2 = icmp uge i64 %4, %6
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 559, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.opj_stream_get_number_byte_left, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.5

cond.end.5:                                       ; preds = %7, %cond.true.3
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data_length6 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %8, i32 0, i32 1
  %9 = load i64, i64* %m_user_data_length6, align 8, !tbaa !28
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %cond.end.5
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_user_data_length8 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %10, i32 0, i32 1
  %11 = load i64, i64* %m_user_data_length8, align 8, !tbaa !28
  %12 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_byte_offset9 = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %12, i32 0, i32 11
  %13 = load i64, i64* %m_byte_offset9, align 8, !tbaa !26
  %sub = sub nsw i64 %11, %13
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end.5
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.7
  %cond = phi i64 [ %sub, %cond.true.7 ], [ 0, %cond.false.10 ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @opj_stream_skip(%struct.opj_stream_private* %p_stream, i64 %p_size, %struct.opj_event_mgr* %p_event_mgr) #0 {
entry:
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_size.addr = alloca i64, align 8
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !12
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %0 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 567, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @__PRETTY_FUNCTION__.opj_stream_skip, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_opj_skip = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %2, i32 0, i32 8
  %3 = load i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)** %m_opj_skip, align 8, !tbaa !19
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %5 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call = call i64 %3(%struct.opj_stream_private* %4, i64 %5, %struct.opj_event_mgr* %6) #7
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @opj_stream_seek(%struct.opj_stream_private* %p_stream, i64 %p_size, %struct.opj_event_mgr* %p_event_mgr) #0 {
entry:
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_size.addr = alloca i64, align 8
  %p_event_mgr.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store i64 %p_size, i64* %p_size.addr, align 8, !tbaa !12
  store %struct.opj_event_mgr* %p_event_mgr, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %0 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 614, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_stream_seek, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_opj_seek = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %2, i32 0, i32 9
  %3 = load i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)** %m_opj_seek, align 8, !tbaa !20
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %5 = load i64, i64* %p_size.addr, align 8, !tbaa !12
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_event_mgr.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.opj_stream_private* %4, i64 %5, %struct.opj_event_mgr* %6) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @opj_stream_has_seek(%struct.opj_stream_private* %p_stream) #0 {
entry:
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %0 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %m_seek_fn = getelementptr inbounds %struct.opj_stream_private, %struct.opj_stream_private* %0, i32 0, i32 5
  %1 = load i32 (i64, i8*)*, i32 (i64, i8*)** %m_seek_fn, align 8, !tbaa !24
  %cmp = icmp ne i32 (i64, i8*)* %1, @opj_stream_default_seek
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noreturn nounwind }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!15, !13, i64 96}
!15 = !{!"opj_stream_private", !2, i64 0, !13, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !3, i64 104}
!16 = !{!15, !2, i64 48}
!17 = !{!15, !2, i64 56}
!18 = !{!15, !3, i64 104}
!19 = !{!15, !2, i64 64}
!20 = !{!15, !2, i64 72}
!21 = !{!15, !2, i64 16}
!22 = !{!15, !2, i64 24}
!23 = !{!15, !2, i64 32}
!24 = !{!15, !2, i64 40}
!25 = !{!15, !13, i64 80}
!26 = !{!15, !13, i64 88}
!27 = !{!15, !2, i64 0}
!28 = !{!15, !13, i64 8}
