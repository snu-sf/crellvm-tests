; ModuleID = './rinkj-config.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @rinkj_strdup_size(i8* %src, i32 %size) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %result, align 8, !tbaa !1
  %2 = load i8*, i8** %result, align 8, !tbaa !1
  %3 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv1 = sext i32 %4 to i64
  %call2 = call i8* @memcpy(i8* %2, i8* %3, i64 %conv1) #5
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %result, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %7 = load i8*, i8** %result, align 8, !tbaa !1
  %8 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i8* %7
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i8* @rinkj_config_get(i8* %config, i8* %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %config.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %ix = alloca i32, align 4
  %ix_eol = alloca i32, align 4
  %ix_next = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p_nl = alloca i8*, align 8
  %key_ix = alloca i32, align 4
  store i8* %config, i8** %config.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ix_eol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ix_next to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end:                                           ; preds = %entry
  store i32 0, i32* %ix, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %if.end
  %4 = load i32, i32* %ix, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %7 = bitcast i8** %p_nl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %key_ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %10 = load i32, i32* %ix, align 4, !tbaa !5
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %call = call i8* @strchr(i8* %add.ptr, i32 10) #5
  store i8* %call, i8** %p_nl, align 8, !tbaa !1
  %11 = load i8*, i8** %p_nl, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %11, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %for.body
  %12 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %13 = load i32, i32* %ix, align 4, !tbaa !5
  %idx.ext3 = sext i32 %13 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 %idx.ext3
  %call5 = call i64 @strlen(i8* %add.ptr4) #6
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %ix_eol, align 4, !tbaa !5
  %14 = load i32, i32* %ix_eol, align 4, !tbaa !5
  store i32 %14, i32* %ix_next, align 4, !tbaa !5
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %ix, align 4, !tbaa !5
  %16 = load i8*, i8** %p_nl, align 8, !tbaa !1
  %idx.ext6 = sext i32 %15 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %16, i64 %idx.ext6
  %17 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv8 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv8, i32* %ix_eol, align 4, !tbaa !5
  %18 = load i32, i32* %ix_eol, align 4, !tbaa !5
  %add = add nsw i32 %18, 1
  store i32 %add, i32* %ix_next, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.2
  store i32 0, i32* %key_ix, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.9
  %19 = load i32, i32* %ix, align 4, !tbaa !5
  %20 = load i32, i32* %key_ix, align 4, !tbaa !5
  %add11 = add nsw i32 %19, %20
  %21 = load i32, i32* %ix_eol, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %add11, %21
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.10
  %22 = load i32, i32* %key_ix, align 4, !tbaa !5
  %idxprom15 = sext i32 %22 to i64
  %23 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %23, i64 %idxprom15
  %24 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %conv17 = sext i8 %24 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %for.body.14
  %25 = load i32, i32* %ix, align 4, !tbaa !5
  %26 = load i32, i32* %key_ix, align 4, !tbaa !5
  %add20 = add nsw i32 %25, %26
  %idxprom21 = sext i32 %add20 to i64
  %27 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %27, i64 %idxprom21
  %28 = load i8, i8* %arrayidx22, align 1, !tbaa !7
  %conv23 = sext i8 %28 to i32
  %cmp24 = icmp eq i32 %conv23, 58
  br i1 %cmp24, label %if.then.26, label %if.else.42

if.then.26:                                       ; preds = %land.lhs.true
  %29 = load i32, i32* %key_ix, align 4, !tbaa !5
  %add27 = add nsw i32 %29, 1
  %30 = load i32, i32* %ix, align 4, !tbaa !5
  %add28 = add nsw i32 %30, %add27
  store i32 %add28, i32* %ix, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.26
  %31 = load i32, i32* %ix, align 4, !tbaa !5
  %32 = load i32, i32* %ix_eol, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %31, %32
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %33 = load i32, i32* %ix, align 4, !tbaa !5
  %idxprom31 = sext i32 %33 to i64
  %34 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %34, i64 %idxprom31
  %35 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = sext i8 %35 to i32
  %idxprom34 = sext i32 %conv33 to i64
  %call35 = call i16** @__ctype_b_loc() #7
  %36 = load i16*, i16** %call35, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %36, i64 %idxprom34
  %37 = load i16, i16* %arrayidx36, align 2, !tbaa !8
  %conv37 = zext i16 %37 to i32
  %and = and i32 %conv37, 8192
  %tobool38 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %38 = phi i1 [ false, %while.cond ], [ %tobool38, %land.rhs ]
  br i1 %38, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %39 = load i32, i32* %ix, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %ix, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %40 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %41 = load i32, i32* %ix, align 4, !tbaa !5
  %idx.ext39 = sext i32 %41 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %40, i64 %idx.ext39
  %42 = load i32, i32* %ix_eol, align 4, !tbaa !5
  %43 = load i32, i32* %ix, align 4, !tbaa !5
  %sub = sub nsw i32 %42, %43
  %call41 = call i8* @rinkj_strdup_size(i8* %add.ptr40, i32 %sub) #8
  store i8* %call41, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.42:                                       ; preds = %land.lhs.true, %for.body.14
  %44 = load i32, i32* %key_ix, align 4, !tbaa !5
  %idxprom43 = sext i32 %44 to i64
  %45 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %45, i64 %idxprom43
  %46 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = sext i8 %46 to i32
  %47 = load i32, i32* %ix, align 4, !tbaa !5
  %48 = load i32, i32* %key_ix, align 4, !tbaa !5
  %add46 = add nsw i32 %47, %48
  %idxprom47 = sext i32 %add46 to i64
  %49 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %49, i64 %idxprom47
  %50 = load i8, i8* %arrayidx48, align 1, !tbaa !7
  %conv49 = sext i8 %50 to i32
  %cmp50 = icmp ne i32 %conv45, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.42
  br label %for.end

if.end.53:                                        ; preds = %if.else.42
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %51 = load i32, i32* %key_ix, align 4, !tbaa !5
  %inc55 = add nsw i32 %51, 1
  store i32 %inc55, i32* %key_ix, align 4, !tbaa !5
  br label %for.cond.10

for.end:                                          ; preds = %if.then.52, %for.cond.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %while.end
  %52 = bitcast i32* %key_ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i8** %p_nl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.57

for.inc.57:                                       ; preds = %cleanup.cont
  %54 = load i32, i32* %ix_next, align 4, !tbaa !5
  store i32 %54, i32* %ix, align 4, !tbaa !5
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %for.end.58, %cleanup, %if.then
  %55 = bitcast i32* %ix_next to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %ix_eol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = load i8*, i8** %retval
  ret i8* %58
}

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define i8* @rinkj_config_keyval(i8* %config, i8** %p_val, i8** %p_next) #0 {
entry:
  %retval = alloca i8*, align 8
  %config.addr = alloca i8*, align 8
  %p_val.addr = alloca i8**, align 8
  %p_next.addr = alloca i8**, align 8
  %key = alloca i8*, align 8
  %ix = alloca i32, align 4
  %ix_eol = alloca i32, align 4
  %ix_next = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p_nl = alloca i8*, align 8
  %key_ix = alloca i32, align 4
  store i8* %config, i8** %config.addr, align 8, !tbaa !1
  store i8** %p_val, i8*** %p_val.addr, align 8, !tbaa !1
  store i8** %p_next, i8*** %p_next.addr, align 8, !tbaa !1
  %0 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ix_eol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ix_next to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end:                                           ; preds = %entry
  store i32 0, i32* %ix, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %if.end
  %5 = load i32, i32* %ix, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %8 = bitcast i8** %p_nl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %key_ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %11 = load i32, i32* %ix, align 4, !tbaa !5
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %call = call i8* @strchr(i8* %add.ptr, i32 10) #5
  store i8* %call, i8** %p_nl, align 8, !tbaa !1
  %12 = load i8*, i8** %p_nl, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %12, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %for.body
  %13 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %14 = load i32, i32* %ix, align 4, !tbaa !5
  %idx.ext3 = sext i32 %14 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %13, i64 %idx.ext3
  %call5 = call i64 @strlen(i8* %add.ptr4) #6
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %ix_eol, align 4, !tbaa !5
  %15 = load i32, i32* %ix_eol, align 4, !tbaa !5
  store i32 %15, i32* %ix_next, align 4, !tbaa !5
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %ix, align 4, !tbaa !5
  %17 = load i8*, i8** %p_nl, align 8, !tbaa !1
  %idx.ext6 = sext i32 %16 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %17, i64 %idx.ext6
  %18 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv8 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv8, i32* %ix_eol, align 4, !tbaa !5
  %19 = load i32, i32* %ix_eol, align 4, !tbaa !5
  %add = add nsw i32 %19, 1
  store i32 %add, i32* %ix_next, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.2
  store i32 0, i32* %key_ix, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.9
  %20 = load i32, i32* %ix, align 4, !tbaa !5
  %21 = load i32, i32* %key_ix, align 4, !tbaa !5
  %add11 = add nsw i32 %20, %21
  %22 = load i32, i32* %ix_eol, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %add11, %22
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.10
  %23 = load i32, i32* %ix, align 4, !tbaa !5
  %24 = load i32, i32* %key_ix, align 4, !tbaa !5
  %add15 = add nsw i32 %23, %24
  %idxprom16 = sext i32 %add15 to i64
  %25 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 %idxprom16
  %26 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = sext i8 %26 to i32
  %cmp19 = icmp eq i32 %conv18, 58
  br i1 %cmp19, label %if.then.21, label %if.end.50

if.then.21:                                       ; preds = %for.body.14
  %27 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %28 = load i32, i32* %ix, align 4, !tbaa !5
  %idx.ext22 = sext i32 %28 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %27, i64 %idx.ext22
  %29 = load i32, i32* %key_ix, align 4, !tbaa !5
  %call24 = call i8* @rinkj_strdup_size(i8* %add.ptr23, i32 %29) #8
  store i8* %call24, i8** %key, align 8, !tbaa !1
  %30 = load i32, i32* %key_ix, align 4, !tbaa !5
  %add25 = add nsw i32 %30, 1
  %31 = load i32, i32* %ix, align 4, !tbaa !5
  %add26 = add nsw i32 %31, %add25
  store i32 %add26, i32* %ix, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.21
  %32 = load i32, i32* %ix, align 4, !tbaa !5
  %33 = load i32, i32* %ix_eol, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %32, %33
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %34 = load i32, i32* %ix, align 4, !tbaa !5
  %idxprom29 = sext i32 %34 to i64
  %35 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %35, i64 %idxprom29
  %36 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = sext i8 %36 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %call33 = call i16** @__ctype_b_loc() #7
  %37 = load i16*, i16** %call33, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %37, i64 %idxprom32
  %38 = load i16, i16* %arrayidx34, align 2, !tbaa !8
  %conv35 = zext i16 %38 to i32
  %and = and i32 %conv35, 8192
  %tobool36 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %39 = phi i1 [ false, %while.cond ], [ %tobool36, %land.rhs ]
  br i1 %39, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %40 = load i32, i32* %ix, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %ix, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %41 = load i8**, i8*** %p_val.addr, align 8, !tbaa !1
  %cmp37 = icmp ne i8** %41, null
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %while.end
  %42 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %43 = load i32, i32* %ix, align 4, !tbaa !5
  %idx.ext40 = sext i32 %43 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %42, i64 %idx.ext40
  %44 = load i32, i32* %ix_eol, align 4, !tbaa !5
  %45 = load i32, i32* %ix, align 4, !tbaa !5
  %sub = sub nsw i32 %44, %45
  %call42 = call i8* @rinkj_strdup_size(i8* %add.ptr41, i32 %sub) #8
  %46 = load i8**, i8*** %p_val.addr, align 8, !tbaa !1
  store i8* %call42, i8** %46, align 8, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %while.end
  %47 = load i8**, i8*** %p_next.addr, align 8, !tbaa !1
  %cmp44 = icmp ne i8** %47, null
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.43
  %48 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %49 = load i32, i32* %ix_next, align 4, !tbaa !5
  %idx.ext47 = sext i32 %49 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %48, i64 %idx.ext47
  %50 = load i8**, i8*** %p_next.addr, align 8, !tbaa !1
  store i8* %add.ptr48, i8** %50, align 8, !tbaa !1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.43
  %51 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %51, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %52 = load i32, i32* %key_ix, align 4, !tbaa !5
  %inc51 = add nsw i32 %52, 1
  store i32 %inc51, i32* %key_ix, align 4, !tbaa !5
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.49
  %53 = bitcast i32* %key_ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i8** %p_nl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.53

for.inc.53:                                       ; preds = %cleanup.cont
  %55 = load i32, i32* %ix_next, align 4, !tbaa !5
  store i32 %55, i32* %ix, align 4, !tbaa !5
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

cleanup.55:                                       ; preds = %for.end.54, %cleanup, %if.then
  %56 = bitcast i32* %ix_next to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %ix_eol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i8*, i8** %retval
  ret i8* %60
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin }

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
!9 = !{!"short", !3, i64 0}
