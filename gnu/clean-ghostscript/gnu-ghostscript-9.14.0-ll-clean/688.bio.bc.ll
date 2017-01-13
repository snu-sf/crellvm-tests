; ModuleID = './bio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_bio = type { i8*, i8*, i8*, i32, i32 }

; Function Attrs: nounwind uwtable
define %struct.opj_bio* @opj_bio_create() #0 {
entry:
  %bio = alloca %struct.opj_bio*, align 8
  %0 = bitcast %struct.opj_bio** %bio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 32) #3
  %1 = bitcast i8* %call to %struct.opj_bio*
  store %struct.opj_bio* %1, %struct.opj_bio** %bio, align 8, !tbaa !1
  %2 = load %struct.opj_bio*, %struct.opj_bio** %bio, align 8, !tbaa !1
  %3 = bitcast %struct.opj_bio** %bio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #1
  ret %struct.opj_bio* %2
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @opj_bio_destroy(%struct.opj_bio* %bio) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %0 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_bio* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %2 = bitcast %struct.opj_bio* %1 to i8*
  call void @free(i8* %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i64 @opj_bio_numbytes(%struct.opj_bio* %bio) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %0 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %0, i32 0, i32 2
  %1 = load i8*, i8** %bp, align 8, !tbaa !5
  %2 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %2, i32 0, i32 0
  %3 = load i8*, i8** %start, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: nounwind uwtable
define void @opj_bio_init_enc(%struct.opj_bio* %bio, i8* %bp, i32 %len) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %bp.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  store i8* %bp, i8** %bp.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !9
  %0 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %1 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %1, i32 0, i32 0
  store i8* %0, i8** %start, align 8, !tbaa !8
  %2 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !9
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %4, i32 0, i32 1
  store i8* %add.ptr, i8** %end, align 8, !tbaa !10
  %5 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %6 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %bp1 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %6, i32 0, i32 2
  store i8* %5, i8** %bp1, align 8, !tbaa !5
  %7 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %7, i32 0, i32 3
  store i32 0, i32* %buf, align 4, !tbaa !11
  %8 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %8, i32 0, i32 4
  store i32 8, i32* %ct, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_bio_init_dec(%struct.opj_bio* %bio, i8* %bp, i32 %len) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %bp.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  store i8* %bp, i8** %bp.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !9
  %0 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %1 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %1, i32 0, i32 0
  store i8* %0, i8** %start, align 8, !tbaa !8
  %2 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !9
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %4, i32 0, i32 1
  store i8* %add.ptr, i8** %end, align 8, !tbaa !10
  %5 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %6 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %bp1 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %6, i32 0, i32 2
  store i8* %5, i8** %bp1, align 8, !tbaa !5
  %7 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %7, i32 0, i32 3
  store i32 0, i32* %buf, align 4, !tbaa !11
  %8 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %8, i32 0, i32 4
  store i32 0, i32* %ct, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_bio_write(%struct.opj_bio* %bio, i32 %v, i32 %n) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %v.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !9
  store i32 %n, i32* %n.addr, align 4, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %n.addr, align 4, !tbaa !9
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !9
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %4 = load i32, i32* %v.addr, align 4, !tbaa !9
  %5 = load i32, i32* %i, align 4, !tbaa !9
  %shr = lshr i32 %4, %5
  %and = and i32 %shr, 1
  call void @opj_bio_putbit(%struct.opj_bio* %3, i32 %and) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !9
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_bio_putbit(%struct.opj_bio* %bio, i32 %b) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %b.addr = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !9
  %0 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %0, i32 0, i32 4
  %1 = load i32, i32* %ct, align 4, !tbaa !12
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call = call i32 @opj_bio_byteout(%struct.opj_bio* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct1 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %3, i32 0, i32 4
  %4 = load i32, i32* %ct1, align 4, !tbaa !12
  %dec = add i32 %4, -1
  store i32 %dec, i32* %ct1, align 4, !tbaa !12
  %5 = load i32, i32* %b.addr, align 4, !tbaa !9
  %6 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct2 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %6, i32 0, i32 4
  %7 = load i32, i32* %ct2, align 4, !tbaa !12
  %shl = shl i32 %5, %7
  %8 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %8, i32 0, i32 3
  %9 = load i32, i32* %buf, align 4, !tbaa !11
  %or = or i32 %9, %shl
  store i32 %or, i32* %buf, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_bio_read(%struct.opj_bio* %bio, i32 %n) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %v, align 4, !tbaa !9
  %2 = load i32, i32* %n.addr, align 4, !tbaa !9
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !9
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call = call i32 @opj_bio_getbit(%struct.opj_bio* %4) #4
  %5 = load i32, i32* %i, align 4, !tbaa !9
  %shl = shl i32 %call, %5
  %6 = load i32, i32* %v, align 4, !tbaa !9
  %add = add i32 %6, %shl
  store i32 %add, i32* %v, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !9
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %v, align 4, !tbaa !9
  %9 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_bio_getbit(%struct.opj_bio* %bio) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %0 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %0, i32 0, i32 4
  %1 = load i32, i32* %ct, align 4, !tbaa !12
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call = call i32 @opj_bio_bytein(%struct.opj_bio* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct1 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %3, i32 0, i32 4
  %4 = load i32, i32* %ct1, align 4, !tbaa !12
  %dec = add i32 %4, -1
  store i32 %dec, i32* %ct1, align 4, !tbaa !12
  %5 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %5, i32 0, i32 3
  %6 = load i32, i32* %buf, align 4, !tbaa !11
  %7 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct2 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %7, i32 0, i32 4
  %8 = load i32, i32* %ct2, align 4, !tbaa !12
  %shr = lshr i32 %6, %8
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @opj_bio_flush(%struct.opj_bio* %bio) #0 {
entry:
  %retval = alloca i32, align 4
  %bio.addr = alloca %struct.opj_bio*, align 8
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %0 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %0, i32 0, i32 4
  store i32 0, i32* %ct, align 4, !tbaa !12
  %1 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call = call i32 @opj_bio_byteout(%struct.opj_bio* %1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct1 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %2, i32 0, i32 4
  %3 = load i32, i32* %ct1, align 4, !tbaa !12
  %cmp = icmp eq i32 %3, 7
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct3 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %4, i32 0, i32 4
  store i32 0, i32* %ct3, align 4, !tbaa !12
  %5 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call4 = call i32 @opj_bio_byteout(%struct.opj_bio* %5) #4
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_bio_byteout(%struct.opj_bio* %bio) #0 {
entry:
  %retval = alloca i32, align 4
  %bio.addr = alloca %struct.opj_bio*, align 8
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %0 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %0, i32 0, i32 3
  %1 = load i32, i32* %buf, align 4, !tbaa !11
  %shl = shl i32 %1, 8
  %and = and i32 %shl, 65535
  %2 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf1 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %2, i32 0, i32 3
  store i32 %and, i32* %buf1, align 4, !tbaa !11
  %3 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf2 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %3, i32 0, i32 3
  %4 = load i32, i32* %buf2, align 4, !tbaa !11
  %cmp = icmp eq i32 %4, 65280
  %cond = select i1 %cmp, i32 7, i32 8
  %5 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %5, i32 0, i32 4
  store i32 %cond, i32* %ct, align 4, !tbaa !12
  %6 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %6, i32 0, i32 2
  %7 = load i8*, i8** %bp, align 8, !tbaa !5
  %8 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %8, i32 0, i32 1
  %9 = load i8*, i8** %end, align 8, !tbaa !10
  %cmp3 = icmp uge i8* %7, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf4 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %10, i32 0, i32 3
  %11 = load i32, i32* %buf4, align 4, !tbaa !11
  %shr = lshr i32 %11, 8
  %conv = trunc i32 %shr to i8
  %12 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %bp5 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %12, i32 0, i32 2
  %13 = load i8*, i8** %bp5, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %bp5, align 8, !tbaa !5
  store i8 %conv, i8* %13, align 1, !tbaa !13
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @opj_bio_inalign(%struct.opj_bio* %bio) #0 {
entry:
  %retval = alloca i32, align 4
  %bio.addr = alloca %struct.opj_bio*, align 8
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %0 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %0, i32 0, i32 4
  store i32 0, i32* %ct, align 4, !tbaa !12
  %1 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %1, i32 0, i32 3
  %2 = load i32, i32* %buf, align 4, !tbaa !11
  %and = and i32 %2, 255
  %cmp = icmp eq i32 %and, 255
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %3 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %call = call i32 @opj_bio_bytein(%struct.opj_bio* %3) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct2 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %4, i32 0, i32 4
  store i32 0, i32* %ct2, align 4, !tbaa !12
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.1
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_bio_bytein(%struct.opj_bio* %bio) #0 {
entry:
  %retval = alloca i32, align 4
  %bio.addr = alloca %struct.opj_bio*, align 8
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %0 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %0, i32 0, i32 3
  %1 = load i32, i32* %buf, align 4, !tbaa !11
  %shl = shl i32 %1, 8
  %and = and i32 %shl, 65535
  %2 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf1 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %2, i32 0, i32 3
  store i32 %and, i32* %buf1, align 4, !tbaa !11
  %3 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf2 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %3, i32 0, i32 3
  %4 = load i32, i32* %buf2, align 4, !tbaa !11
  %cmp = icmp eq i32 %4, 65280
  %cond = select i1 %cmp, i32 7, i32 8
  %5 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %5, i32 0, i32 4
  store i32 %cond, i32* %ct, align 4, !tbaa !12
  %6 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %6, i32 0, i32 2
  %7 = load i8*, i8** %bp, align 8, !tbaa !5
  %8 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %8, i32 0, i32 1
  %9 = load i8*, i8** %end, align 8, !tbaa !10
  %cmp3 = icmp uge i8* %7, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %bp4 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %10, i32 0, i32 2
  %11 = load i8*, i8** %bp4, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %bp4, align 8, !tbaa !5
  %12 = load i8, i8* %11, align 1, !tbaa !13
  %conv = zext i8 %12 to i32
  %13 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !1
  %buf5 = getelementptr inbounds %struct.opj_bio, %struct.opj_bio* %13, i32 0, i32 3
  %14 = load i32, i32* %buf5, align 4, !tbaa !11
  %or = or i32 %14, %conv
  store i32 %or, i32* %buf5, align 4, !tbaa !11
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 16}
!6 = !{!"opj_bio", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !2, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!6, !2, i64 8}
!11 = !{!6, !7, i64 24}
!12 = !{!6, !7, i64 28}
!13 = !{!3, !3, i64 0}
