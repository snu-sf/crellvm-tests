; ModuleID = './gpmisc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @gp_gettmpdir(i8* %ptr, i32* %plen) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %plen.addr = alloca i32*, align 8
  %max_len = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32* %plen, i32** %plen.addr, align 8, !tbaa !1
  %0 = bitcast i32* %max_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !5
  store i32 %2, i32* %max_len, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %5 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  %call = call i32 @gp_getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %4, i32* %5) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %max_len, align 4, !tbaa !5
  %9 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  store i32 %8, i32* %9, align 4, !tbaa !5
  %10 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %11 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  %call1 = call i32 @gp_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %10, i32* %11) #6
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %max_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gp_getenv(i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @gp_fopentemp_64(i8* %fname, i8* %mode) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @gp_fopentemp_generic(i8* %0, i8* %1, i32 1) #6
  ret %struct._IO_FILE* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @gp_fopentemp_generic(i8* %fname, i8* %mode, i32 %b64) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %fname.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %b64.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  %p = alloca i8*, align 8
  %fildes = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1
  store i32 %b64, i32* %b64.addr, align 4, !tbaa !5
  %0 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 128, i32* %flags, align 4, !tbaa !5
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  store i8* %2, i8** %p, align 8, !tbaa !1
  %3 = bitcast i32* %fildes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %b64.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %flags, align 4, !tbaa !5
  store i32 %6, i32* %flags, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !7
  %tobool1 = icmp ne i8 %8, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !7
  %conv = sext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 97, label %sw.bb
    i32 114, label %sw.bb.2
    i32 119, label %sw.bb.3
    i32 43, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %while.body
  %11 = load i32, i32* %flags, align 4, !tbaa !5
  %or = or i32 %11, 1088
  store i32 %or, i32* %flags, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  %12 = load i32, i32* %flags, align 4, !tbaa !5
  store i32 %12, i32* %flags, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  %13 = load i32, i32* %flags, align 4, !tbaa !5
  %or4 = or i32 %13, 577
  store i32 %or4, i32* %flags, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  %14 = load i32, i32* %flags, align 4, !tbaa !5
  %and = and i32 %14, -2
  %or6 = or i32 %and, 2
  store i32 %or6, i32* %flags, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.3, %sw.bb.2, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %16 = load i32, i32* %flags, align 4, !tbaa !5
  %call = call i32 (i8*, i32, ...) @open64(i8* %15, i32 %16, i32 384) #6
  store i32 %call, i32* %fildes, align 4, !tbaa !5
  %17 = load i32, i32* %fildes, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %while.end
  %18 = load i32, i32* %fildes, align 4, !tbaa !5
  %19 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %call10 = call %struct._IO_FILE* @fdopen(i32 %18, i8* %19) #7
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %file, align 8, !tbaa !1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %cmp11 = icmp eq %struct._IO_FILE* %20, null
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %21 = load i32, i32* %fildes, align 4, !tbaa !5
  %call14 = call i32 @close(i32 %21) #6
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.9
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  store %struct._IO_FILE* %22, %struct._IO_FILE** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.8
  %23 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %fildes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %27
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @gp_fopentemp(i8* %fname, i8* %mode) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @gp_fopentemp_generic(i8* %0, i8* %1, i32 0) #6
  ret %struct._IO_FILE* %call
}

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_combine_generic(i8* %prefix, i32 %plen, i8* %fname, i32 %flen, i32 %no_sibling, i8* %buffer, i32* %blen) #0 {
entry:
  %retval = alloca i32, align 4
  %prefix.addr = alloca i8*, align 8
  %plen.addr = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  %no_sibling.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %blen.addr = alloca i32*, align 8
  %bp = alloca i8*, align 8
  %bpe = alloca i8*, align 8
  %ip = alloca i8*, align 8
  %ipe = alloca i8*, align 8
  %slen = alloca i32, align 4
  %infix_type = alloca i32, align 4
  %infix_len = alloca i32, align 4
  %rlen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sep = alloca i8*, align 8
  %item = alloca i8*, align 8
  %ilen = alloca i32, align 4
  %slen1 = alloca i32, align 4
  %bie = alloca i8*, align 8
  %p = alloca i8*, align 8
  %zero = alloca i8*, align 8
  %current = alloca i8*, align 8
  %clen = alloca i32, align 4
  %sep215 = alloca i8*, align 8
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !1
  store i32 %plen, i32* %plen.addr, align 4, !tbaa !5
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !5
  store i32 %no_sibling, i32* %no_sibling.addr, align 4, !tbaa !5
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32* %blen, i32** %blen.addr, align 8, !tbaa !1
  %0 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %bp, align 8, !tbaa !1
  %2 = bitcast i8** %bpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %blen.addr, align 8, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %bpe, align 8, !tbaa !1
  %6 = bitcast i8** %ip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %ipe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %infix_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %infix_type, align 4, !tbaa !5
  %10 = bitcast i32* %infix_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %infix_len, align 4, !tbaa !5
  %11 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %13 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %call = call i32 @gp_file_name_root(i8* %12, i32 %13) #6
  store i32 %call, i32* %rlen, align 4, !tbaa !5
  %14 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %14, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %15 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %16 to i32
  %cmp1 = icmp eq i32 %conv, 37
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %17 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  store i8* %17, i8** %ip, align 8, !tbaa !1
  %18 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %19 = load i32*, i32** %blen.addr, align 8, !tbaa !1
  store i32 %18, i32* %19, align 4, !tbaa !5
  %20 = load i8*, i8** %bpe, align 8, !tbaa !1
  %21 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %call3 = call i32 @append(i8** %bp, i8* %20, i8** %ip, i32 %21) #6
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end:                                           ; preds = %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.5:                                         ; preds = %land.lhs.true, %entry
  %22 = load i32, i32* %rlen, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %22, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %23 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  store i8* %23, i8** %ip, align 8, !tbaa !1
  %24 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %25 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %idx.ext9 = zext i32 %25 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %24, i64 %idx.ext9
  store i8* %add.ptr10, i8** %ipe, align 8, !tbaa !1
  br label %if.end.14

if.else:                                          ; preds = %if.end.5
  %26 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  store i8* %26, i8** %ip, align 8, !tbaa !1
  %27 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %28 = load i32, i32* %plen.addr, align 4, !tbaa !5
  %idx.ext11 = zext i32 %28 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %27, i64 %idx.ext11
  store i8* %add.ptr12, i8** %ipe, align 8, !tbaa !1
  %29 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %30 = load i32, i32* %plen.addr, align 4, !tbaa !5
  %call13 = call i32 @gp_file_name_root(i8* %29, i32 %30) #6
  store i32 %call13, i32* %rlen, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.8
  %31 = load i8*, i8** %bpe, align 8, !tbaa !1
  %32 = load i32, i32* %rlen, align 4, !tbaa !5
  %call15 = call i32 @append(i8** %bp, i8* %31, i8** %ip, i32 %32) #6
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.18:                                        ; preds = %if.end.14
  %33 = load i8*, i8** %bp, align 8, !tbaa !1
  %34 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv19 = trunc i64 %sub.ptr.sub to i32
  %36 = load i8*, i8** %bp, align 8, !tbaa !1
  %call20 = call i32 @gs_file_name_check_separator(i8* %33, i32 %conv19, i8* %36) #6
  store i32 %call20, i32* %slen, align 4, !tbaa !5
  %37 = load i32, i32* %rlen, align 4, !tbaa !5
  %cmp21 = icmp ne i32 %37, 0
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.34

land.lhs.true.23:                                 ; preds = %if.end.18
  %38 = load i32, i32* %slen, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %38, 0
  br i1 %cmp24, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %land.lhs.true.23
  %39 = bitcast i8** %sep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %call27 = call i8* @gp_file_name_directory_separator() #6
  store i8* %call27, i8** %sep, align 8, !tbaa !1
  %40 = load i8*, i8** %sep, align 8, !tbaa !1
  %call28 = call i64 @strlen(i8* %40) #8
  %conv29 = trunc i64 %call28 to i32
  store i32 %conv29, i32* %slen, align 4, !tbaa !5
  %41 = load i8*, i8** %bpe, align 8, !tbaa !1
  %42 = load i32, i32* %slen, align 4, !tbaa !5
  %call30 = call i32 @append(i8** %bp, i8* %41, i8** %sep, i32 %42) #6
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.26
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.26
  %43 = load i32, i32* %slen, align 4, !tbaa !5
  %44 = load i32, i32* %rlen, align 4, !tbaa !5
  %add = add i32 %44, %43
  store i32 %add, i32* %rlen, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32
  %45 = bitcast i8** %sep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.246 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.end.34:                                        ; preds = %cleanup.cont, %land.lhs.true.23, %if.end.18
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.245, %if.end.34
  %46 = bitcast i8** %item to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load i8*, i8** %ip, align 8, !tbaa !1
  store i8* %47, i8** %item, align 8, !tbaa !1
  %48 = bitcast i32* %ilen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i8*, i8** %ipe, align 8, !tbaa !1
  %50 = load i8*, i8** %item, align 8, !tbaa !1
  %call35 = call i32 @search_separator(i8** %ip, i8* %49, i8* %50, i32 1) #6
  store i32 %call35, i32* %slen, align 4, !tbaa !5
  %51 = load i8*, i8** %ip, align 8, !tbaa !1
  %52 = load i8*, i8** %item, align 8, !tbaa !1
  %sub.ptr.lhs.cast36 = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast37 = ptrtoint i8* %52 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %conv39 = trunc i64 %sub.ptr.sub38 to i32
  store i32 %conv39, i32* %ilen, align 4, !tbaa !5
  %53 = load i32, i32* %ilen, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %53, 0
  br i1 %cmp40, label %land.lhs.true.42, label %if.else.48

land.lhs.true.42:                                 ; preds = %for.cond
  %call43 = call i32 @gp_file_name_is_empty_item_meanful() #6
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else.48, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.42
  %54 = load i32, i32* %slen, align 4, !tbaa !5
  %55 = load i8*, i8** %ip, align 8, !tbaa !1
  %idx.ext46 = zext i32 %54 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %55, i64 %idx.ext46
  store i8* %add.ptr47, i8** %ip, align 8, !tbaa !1
  store i32 0, i32* %slen, align 4, !tbaa !5
  br label %if.end.160

if.else.48:                                       ; preds = %land.lhs.true.42, %for.cond
  %56 = load i8*, i8** %item, align 8, !tbaa !1
  %57 = load i32, i32* %ilen, align 4, !tbaa !5
  %call49 = call i32 @gp_file_name_is_current(i8* %56, i32 %57) #6
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.63

if.then.51:                                       ; preds = %if.else.48
  %58 = load i8*, i8** %bp, align 8, !tbaa !1
  %59 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %cmp52 = icmp eq i8* %58, %59
  br i1 %cmp52, label %if.then.54, label %if.else.59

if.then.54:                                       ; preds = %if.then.51
  %60 = load i8*, i8** %bpe, align 8, !tbaa !1
  %61 = load i32, i32* %ilen, align 4, !tbaa !5
  %call55 = call i32 @append(i8** %bp, i8* %60, i8** %item, i32 %61) #6
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.54
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.58:                                        ; preds = %if.then.54
  store i32 1, i32* %infix_type, align 4, !tbaa !5
  %62 = load i32, i32* %ilen, align 4, !tbaa !5
  store i32 %62, i32* %infix_len, align 4, !tbaa !5
  br label %if.end.62

if.else.59:                                       ; preds = %if.then.51
  %63 = load i32, i32* %slen, align 4, !tbaa !5
  %64 = load i8*, i8** %ip, align 8, !tbaa !1
  %idx.ext60 = zext i32 %63 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %64, i64 %idx.ext60
  store i8* %add.ptr61, i8** %ip, align 8, !tbaa !1
  store i32 0, i32* %slen, align 4, !tbaa !5
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.end.58
  br label %if.end.159

if.else.63:                                       ; preds = %if.else.48
  %65 = load i8*, i8** %item, align 8, !tbaa !1
  %66 = load i32, i32* %ilen, align 4, !tbaa !5
  %call64 = call i32 @gp_file_name_is_parent(i8* %65, i32 %66) #6
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else.71, label %if.then.66

if.then.66:                                       ; preds = %if.else.63
  %67 = load i8*, i8** %bpe, align 8, !tbaa !1
  %68 = load i32, i32* %ilen, align 4, !tbaa !5
  %call67 = call i32 @append(i8** %bp, i8* %67, i8** %item, i32 %68) #6
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.then.66
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.70:                                        ; preds = %if.then.66
  br label %if.end.158

if.else.71:                                       ; preds = %if.else.63
  %69 = load i8*, i8** %bp, align 8, !tbaa !1
  %70 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %71 = load i32, i32* %rlen, align 4, !tbaa !5
  %idx.ext72 = zext i32 %71 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %70, i64 %idx.ext72
  %72 = load i32, i32* %infix_len, align 4, !tbaa !5
  %idx.ext74 = zext i32 %72 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr73, i64 %idx.ext74
  %cmp76 = icmp eq i8* %69, %add.ptr75
  br i1 %cmp76, label %if.then.78, label %if.else.110

if.then.78:                                       ; preds = %if.else.71
  %73 = load i32, i32* %rlen, align 4, !tbaa !5
  %cmp79 = icmp ne i32 %73, 0
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.78
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.82:                                        ; preds = %if.then.78
  %74 = load i32, i32* %infix_type, align 4, !tbaa !5
  switch i32 %74, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.85
    i32 2, label %sw.bb.99
  ]

sw.bb:                                            ; preds = %if.end.82
  %75 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %76 = load i32, i32* %rlen, align 4, !tbaa !5
  %idx.ext83 = zext i32 %76 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %75, i64 %idx.ext83
  store i8* %add.ptr84, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %infix_len, align 4, !tbaa !5
  br label %sw.bb.85

sw.bb.85:                                         ; preds = %if.end.82, %sw.bb
  %77 = load i32, i32* %no_sibling.addr, align 4, !tbaa !5
  %tobool86 = icmp ne i32 %77, 0
  br i1 %tobool86, label %land.lhs.true.87, label %lor.lhs.false

land.lhs.true.87:                                 ; preds = %sw.bb.85
  %78 = load i8*, i8** %ipe, align 8, !tbaa !1
  %79 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %80 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %idx.ext88 = zext i32 %80 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %79, i64 %idx.ext88
  %cmp90 = icmp eq i8* %78, %add.ptr89
  br i1 %cmp90, label %land.lhs.true.92, label %lor.lhs.false

land.lhs.true.92:                                 ; preds = %land.lhs.true.87
  %81 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %cmp93 = icmp ne i32 %81, 0
  br i1 %cmp93, label %if.then.97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.92, %land.lhs.true.87, %sw.bb.85
  %call95 = call i32 @gp_file_name_is_parent_allowed() #6
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %lor.lhs.false, %land.lhs.true.92
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.98:                                        ; preds = %lor.lhs.false
  br label %sw.bb.99

sw.bb.99:                                         ; preds = %if.end.82, %if.end.98
  br label %do.body

do.body:                                          ; preds = %sw.bb.99
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.82
  %82 = load i8*, i8** %bpe, align 8, !tbaa !1
  %83 = load i32, i32* %ilen, align 4, !tbaa !5
  %call100 = call i32 @append(i8** %bp, i8* %82, i8** %item, i32 %83) #6
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %sw.epilog
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.103:                                       ; preds = %sw.epilog
  store i32 2, i32* %infix_type, align 4, !tbaa !5
  %84 = load i32, i32* %ilen, align 4, !tbaa !5
  %85 = load i32, i32* %infix_len, align 4, !tbaa !5
  %add104 = add i32 %85, %84
  store i32 %add104, i32* %infix_len, align 4, !tbaa !5
  %86 = load i8*, i8** %ip, align 8, !tbaa !1
  %87 = load i8*, i8** %ipe, align 8, !tbaa !1
  %88 = load i8*, i8** %ip, align 8, !tbaa !1
  %sub.ptr.lhs.cast105 = ptrtoint i8* %87 to i64
  %sub.ptr.rhs.cast106 = ptrtoint i8* %88 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %conv108 = trunc i64 %sub.ptr.sub107 to i32
  %89 = load i8*, i8** %ip, align 8, !tbaa !1
  %call109 = call i32 @gs_file_name_check_separator(i8* %86, i32 %conv108, i8* %89) #6
  store i32 %call109, i32* %slen, align 4, !tbaa !5
  br label %if.end.157

if.else.110:                                      ; preds = %if.else.71
  %90 = bitcast i32* %slen1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = load i8*, i8** %bp, align 8, !tbaa !1
  %92 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %93 = load i32, i32* %rlen, align 4, !tbaa !5
  %idx.ext111 = zext i32 %93 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %92, i64 %idx.ext111
  %94 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast113 = ptrtoint i8* %add.ptr112 to i64
  %sub.ptr.rhs.cast114 = ptrtoint i8* %94 to i64
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.rhs.cast114
  %conv116 = trunc i64 %sub.ptr.sub115 to i32
  %95 = load i8*, i8** %bp, align 8, !tbaa !1
  %call117 = call i32 @gs_file_name_check_separator(i8* %91, i32 %conv116, i8* %95) #6
  store i32 %call117, i32* %slen1, align 4, !tbaa !5
  %96 = bitcast i8** %bie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  %97 = load i8*, i8** %bp, align 8, !tbaa !1
  %98 = load i32, i32* %slen1, align 4, !tbaa !5
  %idx.ext118 = zext i32 %98 to i64
  %idx.neg = sub i64 0, %idx.ext118
  %add.ptr119 = getelementptr inbounds i8, i8* %97, i64 %idx.neg
  store i8* %add.ptr119, i8** %bie, align 8, !tbaa !1
  %99 = load i8*, i8** %bie, align 8, !tbaa !1
  store i8* %99, i8** %bp, align 8, !tbaa !1
  %100 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %101 = load i32, i32* %rlen, align 4, !tbaa !5
  %idx.ext120 = zext i32 %101 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %100, i64 %idx.ext120
  %102 = load i8*, i8** %bp, align 8, !tbaa !1
  %call122 = call i32 @search_separator(i8** %bp, i8* %add.ptr121, i8* %102, i32 -1) #6
  %103 = load i8*, i8** %ip, align 8, !tbaa !1
  %104 = load i8*, i8** %ipe, align 8, !tbaa !1
  %105 = load i8*, i8** %ip, align 8, !tbaa !1
  %sub.ptr.lhs.cast123 = ptrtoint i8* %104 to i64
  %sub.ptr.rhs.cast124 = ptrtoint i8* %105 to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124
  %conv126 = trunc i64 %sub.ptr.sub125 to i32
  %106 = load i8*, i8** %ip, align 8, !tbaa !1
  %call127 = call i32 @gs_file_name_check_separator(i8* %103, i32 %conv126, i8* %106) #6
  %107 = load i8*, i8** %ip, align 8, !tbaa !1
  %idx.ext128 = zext i32 %call127 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %107, i64 %idx.ext128
  store i8* %add.ptr129, i8** %ip, align 8, !tbaa !1
  %108 = load i32, i32* %no_sibling.addr, align 4, !tbaa !5
  %tobool130 = icmp ne i32 %108, 0
  br i1 %tobool130, label %if.then.131, label %if.end.152

if.then.131:                                      ; preds = %if.else.110
  %109 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = load i8*, i8** %ip, align 8, !tbaa !1
  store i8* %110, i8** %p, align 8, !tbaa !1
  %111 = load i8*, i8** %ipe, align 8, !tbaa !1
  %112 = load i8*, i8** %ip, align 8, !tbaa !1
  %call132 = call i32 @search_separator(i8** %p, i8* %111, i8* %112, i32 1) #6
  %113 = load i8*, i8** %p, align 8, !tbaa !1
  %114 = load i8*, i8** %ip, align 8, !tbaa !1
  %sub.ptr.lhs.cast133 = ptrtoint i8* %113 to i64
  %sub.ptr.rhs.cast134 = ptrtoint i8* %114 to i64
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134
  %115 = load i8*, i8** %bie, align 8, !tbaa !1
  %116 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast136 = ptrtoint i8* %115 to i64
  %sub.ptr.rhs.cast137 = ptrtoint i8* %116 to i64
  %sub.ptr.sub138 = sub i64 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast137
  %cmp139 = icmp ne i64 %sub.ptr.sub135, %sub.ptr.sub138
  br i1 %cmp139, label %if.then.147, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %if.then.131
  %117 = load i8*, i8** %ip, align 8, !tbaa !1
  %118 = load i8*, i8** %bp, align 8, !tbaa !1
  %119 = load i8*, i8** %p, align 8, !tbaa !1
  %120 = load i8*, i8** %ip, align 8, !tbaa !1
  %sub.ptr.lhs.cast142 = ptrtoint i8* %119 to i64
  %sub.ptr.rhs.cast143 = ptrtoint i8* %120 to i64
  %sub.ptr.sub144 = sub i64 %sub.ptr.lhs.cast142, %sub.ptr.rhs.cast143
  %call145 = call i32 @memcmp(i8* %117, i8* %118, i64 %sub.ptr.sub144) #8
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %lor.lhs.false.141, %if.then.131
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.148:                                       ; preds = %lor.lhs.false.141
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.149

cleanup.149:                                      ; preds = %if.end.148, %if.then.147
  %121 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %cleanup.dest.150 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.150, label %cleanup.153 [
    i32 0, label %cleanup.cont.151
  ]

cleanup.cont.151:                                 ; preds = %cleanup.149
  br label %if.end.152

if.end.152:                                       ; preds = %cleanup.cont.151, %if.else.110
  store i32 0, i32* %slen, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.153

cleanup.153:                                      ; preds = %if.end.152, %cleanup.149
  %122 = bitcast i8** %bie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %slen1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %cleanup.dest.155 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.155, label %cleanup.242 [
    i32 0, label %cleanup.cont.156
  ]

cleanup.cont.156:                                 ; preds = %cleanup.153
  br label %if.end.157

if.end.157:                                       ; preds = %cleanup.cont.156, %if.end.103
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.70
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.62
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.45
  %124 = load i32, i32* %slen, align 4, !tbaa !5
  %tobool161 = icmp ne i32 %124, 0
  br i1 %tobool161, label %if.then.162, label %if.end.176

if.then.162:                                      ; preds = %if.end.160
  %125 = load i8*, i8** %bp, align 8, !tbaa !1
  %126 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %127 = load i32, i32* %rlen, align 4, !tbaa !5
  %idx.ext163 = zext i32 %127 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %126, i64 %idx.ext163
  %128 = load i32, i32* %infix_len, align 4, !tbaa !5
  %idx.ext165 = zext i32 %128 to i64
  %add.ptr166 = getelementptr inbounds i8, i8* %add.ptr164, i64 %idx.ext165
  %cmp167 = icmp eq i8* %125, %add.ptr166
  br i1 %cmp167, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %if.then.162
  %129 = load i32, i32* %slen, align 4, !tbaa !5
  %130 = load i32, i32* %infix_len, align 4, !tbaa !5
  %add170 = add i32 %130, %129
  store i32 %add170, i32* %infix_len, align 4, !tbaa !5
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %if.then.162
  %131 = load i8*, i8** %bpe, align 8, !tbaa !1
  %132 = load i32, i32* %slen, align 4, !tbaa !5
  %call172 = call i32 @append(i8** %bp, i8* %131, i8** %ip, i32 %132) #6
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.end.175, label %if.then.174

if.then.174:                                      ; preds = %if.end.171
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.175:                                       ; preds = %if.end.171
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.160
  %133 = load i8*, i8** %ip, align 8, !tbaa !1
  %134 = load i8*, i8** %ipe, align 8, !tbaa !1
  %cmp177 = icmp eq i8* %133, %134
  br i1 %cmp177, label %if.then.179, label %if.end.241

if.then.179:                                      ; preds = %if.end.176
  %135 = load i8*, i8** %ipe, align 8, !tbaa !1
  %136 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %137 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %idx.ext180 = zext i32 %137 to i64
  %add.ptr181 = getelementptr inbounds i8, i8* %136, i64 %idx.ext180
  %cmp182 = icmp eq i8* %135, %add.ptr181
  br i1 %cmp182, label %if.then.184, label %if.else.209

if.then.184:                                      ; preds = %if.then.179
  %138 = bitcast i8** %zero to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %zero, align 8, !tbaa !1
  %139 = load i8*, i8** %bp, align 8, !tbaa !1
  %140 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %cmp185 = icmp eq i8* %139, %140
  br i1 %cmp185, label %if.then.187, label %if.end.199

if.then.187:                                      ; preds = %if.then.184
  %141 = bitcast i8** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #1
  %call188 = call i8* @gp_file_name_current() #6
  store i8* %call188, i8** %current, align 8, !tbaa !1
  %142 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %143 = load i8*, i8** %current, align 8, !tbaa !1
  %call189 = call i64 @strlen(i8* %143) #8
  %conv190 = trunc i64 %call189 to i32
  store i32 %conv190, i32* %clen, align 4, !tbaa !5
  %144 = load i8*, i8** %bpe, align 8, !tbaa !1
  %145 = load i32, i32* %clen, align 4, !tbaa !5
  %call191 = call i32 @append(i8** %bp, i8* %144, i8** %current, i32 %145) #6
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.end.194, label %if.then.193

if.then.193:                                      ; preds = %if.then.187
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.195

if.end.194:                                       ; preds = %if.then.187
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.195

cleanup.195:                                      ; preds = %if.end.194, %if.then.193
  %146 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i8** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %cleanup.dest.197 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.197, label %cleanup.208 [
    i32 0, label %cleanup.cont.198
  ]

cleanup.cont.198:                                 ; preds = %cleanup.195
  br label %if.end.199

if.end.199:                                       ; preds = %cleanup.cont.198, %if.then.184
  %148 = load i8*, i8** %bp, align 8, !tbaa !1
  %149 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast200 = ptrtoint i8* %148 to i64
  %sub.ptr.rhs.cast201 = ptrtoint i8* %149 to i64
  %sub.ptr.sub202 = sub i64 %sub.ptr.lhs.cast200, %sub.ptr.rhs.cast201
  %conv203 = trunc i64 %sub.ptr.sub202 to i32
  %150 = load i32*, i32** %blen.addr, align 8, !tbaa !1
  store i32 %conv203, i32* %150, align 4, !tbaa !5
  %151 = load i8*, i8** %bpe, align 8, !tbaa !1
  %call204 = call i32 @append(i8** %bp, i8* %151, i8** %zero, i32 1) #6
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.end.207, label %if.then.206

if.then.206:                                      ; preds = %if.end.199
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208

if.end.207:                                       ; preds = %if.end.199
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208

cleanup.208:                                      ; preds = %if.end.207, %if.then.206, %cleanup.195
  %152 = bitcast i8** %zero to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  br label %cleanup.242

if.else.209:                                      ; preds = %if.then.179
  %153 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  store i8* %153, i8** %ip, align 8, !tbaa !1
  %154 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %155 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %idx.ext210 = zext i32 %155 to i64
  %add.ptr211 = getelementptr inbounds i8, i8* %154, i64 %idx.ext210
  store i8* %add.ptr211, i8** %ipe, align 8, !tbaa !1
  %156 = load i32, i32* %slen, align 4, !tbaa !5
  %cmp212 = icmp eq i32 %156, 0
  br i1 %cmp212, label %if.then.214, label %if.end.239

if.then.214:                                      ; preds = %if.else.209
  %157 = bitcast i8** %sep215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  %158 = load i8*, i8** %ipe, align 8, !tbaa !1
  %159 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call216 = call i32 @search_separator(i8** %ip, i8* %158, i8* %159, i32 1) #6
  store i32 %call216, i32* %slen, align 4, !tbaa !5
  %160 = load i32, i32* %slen, align 4, !tbaa !5
  %cmp217 = icmp ne i32 %160, 0
  br i1 %cmp217, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.214
  %call219 = call i8* @gp_file_name_directory_separator() #6
  br label %cond.end

cond.false:                                       ; preds = %if.then.214
  %call220 = call i8* @gp_file_name_separator() #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call219, %cond.true ], [ %call220, %cond.false ]
  store i8* %cond, i8** %sep215, align 8, !tbaa !1
  %161 = load i8*, i8** %sep215, align 8, !tbaa !1
  %call221 = call i64 @strlen(i8* %161) #8
  %conv222 = trunc i64 %call221 to i32
  store i32 %conv222, i32* %slen, align 4, !tbaa !5
  %162 = load i8*, i8** %bp, align 8, !tbaa !1
  %163 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %164 = load i32, i32* %rlen, align 4, !tbaa !5
  %idx.ext223 = zext i32 %164 to i64
  %add.ptr224 = getelementptr inbounds i8, i8* %163, i64 %idx.ext223
  %165 = load i32, i32* %infix_len, align 4, !tbaa !5
  %idx.ext225 = zext i32 %165 to i64
  %add.ptr226 = getelementptr inbounds i8, i8* %add.ptr224, i64 %idx.ext225
  %cmp227 = icmp eq i8* %162, %add.ptr226
  br i1 %cmp227, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %cond.end
  %166 = load i32, i32* %slen, align 4, !tbaa !5
  %167 = load i32, i32* %infix_len, align 4, !tbaa !5
  %add230 = add i32 %167, %166
  store i32 %add230, i32* %infix_len, align 4, !tbaa !5
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %cond.end
  %168 = load i8*, i8** %bpe, align 8, !tbaa !1
  %169 = load i32, i32* %slen, align 4, !tbaa !5
  %call232 = call i32 @append(i8** %bp, i8* %168, i8** %sep215, i32 %169) #6
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %if.end.235, label %if.then.234

if.then.234:                                      ; preds = %if.end.231
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.236

if.end.235:                                       ; preds = %if.end.231
  %170 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  store i8* %170, i8** %ip, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.236

cleanup.236:                                      ; preds = %if.end.235, %if.then.234
  %171 = bitcast i8** %sep215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %cleanup.dest.237 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.237, label %cleanup.242 [
    i32 0, label %cleanup.cont.238
  ]

cleanup.cont.238:                                 ; preds = %cleanup.236
  br label %if.end.239

if.end.239:                                       ; preds = %cleanup.cont.238, %if.else.209
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.end.176
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.242

cleanup.242:                                      ; preds = %if.end.241, %cleanup.236, %cleanup.208, %if.then.174, %cleanup.153, %if.then.102, %if.then.97, %if.then.81, %if.then.69, %if.then.57
  %172 = bitcast i32* %ilen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i8** %item to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %cleanup.dest.244 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.244, label %cleanup.246 [
    i32 0, label %cleanup.cont.245
  ]

cleanup.cont.245:                                 ; preds = %cleanup.242
  br label %for.cond

cleanup.246:                                      ; preds = %cleanup.242, %cleanup, %if.then.17, %if.end, %if.then.4
  %174 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %infix_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %infix_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i8** %ipe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i8** %ip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i8** %bpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = load i32, i32* %retval
  ret i32 %182
}

declare i32 @gp_file_name_root(i8*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @append(i8** %bp, i8* %bpe, i8** %ip, i32 %len) #3 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca i8**, align 8
  %bpe.addr = alloca i8*, align 8
  %ip.addr = alloca i8**, align 8
  %len.addr = alloca i32, align 4
  store i8** %bp, i8*** %bp.addr, align 8, !tbaa !1
  store i8* %bpe, i8** %bpe.addr, align 8, !tbaa !1
  store i8** %ip, i8*** %ip.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %bpe.addr, align 8, !tbaa !1
  %1 = load i8**, i8*** %bp.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %1, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv = zext i32 %3 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %bp.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %4, align 8, !tbaa !1
  %6 = load i8**, i8*** %ip.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %6, align 8, !tbaa !1
  %8 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv2 = zext i32 %8 to i64
  %call = call i8* @memcpy(i8* %5, i8* %7, i64 %conv2) #7
  %9 = load i32, i32* %len.addr, align 4, !tbaa !5
  %10 = load i8**, i8*** %bp.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %10, align 8, !tbaa !1
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %10, align 8, !tbaa !1
  %12 = load i32, i32* %len.addr, align 4, !tbaa !5
  %13 = load i8**, i8*** %ip.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %13, align 8, !tbaa !1
  %idx.ext3 = zext i32 %12 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 %idx.ext3
  store i8* %add.ptr4, i8** %13, align 8, !tbaa !1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gs_file_name_check_separator(i8*, i32, i8*) #2

declare i8* @gp_file_name_directory_separator() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @search_separator(i8** %ip, i8* %ipe, i8* %item, i32 %direction) #3 {
entry:
  %ip.addr = alloca i8**, align 8
  %ipe.addr = alloca i8*, align 8
  %item.addr = alloca i8*, align 8
  %direction.addr = alloca i32, align 4
  %slen = alloca i32, align 4
  store i8** %ip, i8*** %ip.addr, align 8, !tbaa !1
  store i8* %ipe, i8** %ipe.addr, align 8, !tbaa !1
  store i8* %item, i8** %item.addr, align 8, !tbaa !1
  store i32 %direction, i32* %direction.addr, align 4, !tbaa !5
  %0 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %slen, align 4, !tbaa !5
  store i32 0, i32* %slen, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8**, i8*** %ip.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %1, align 8, !tbaa !1
  %3 = load i8*, i8** %ipe.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load i32, i32* %direction.addr, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %mul = mul nsw i64 %sub.ptr.sub, %conv
  %cmp = icmp slt i64 %mul, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8**, i8*** %ip.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %5, align 8, !tbaa !1
  %7 = load i8*, i8** %ipe.addr, align 8, !tbaa !1
  %8 = load i8**, i8*** %ip.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %8, align 8, !tbaa !1
  %sub.ptr.lhs.cast2 = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8* %9 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %conv5 = trunc i64 %sub.ptr.sub4 to i32
  %10 = load i8*, i8** %item.addr, align 8, !tbaa !1
  %call = call i32 @gs_file_name_check_separator(i8* %6, i32 %conv5, i8* %10) #6
  store i32 %call, i32* %slen, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %direction.addr, align 4, !tbaa !5
  %12 = load i8**, i8*** %ip.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %12, align 8, !tbaa !1
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %12, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load i32, i32* %slen, align 4, !tbaa !5
  %15 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret i32 %14
}

declare i32 @gp_file_name_is_empty_item_meanful() #2

declare i32 @gp_file_name_is_current(i8*, i32) #2

declare i32 @gp_file_name_is_parent(i8*, i32) #2

declare i32 @gp_file_name_is_parent_allowed() #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i8* @gp_file_name_current() #2

declare i8* @gp_file_name_separator() #2

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_reduce(i8* %fname, i32 %flen, i8* %buffer, i32* %blen) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %blen.addr = alloca i32*, align 8
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !5
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32* %blen, i32** %blen.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %3 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %5 = load i32*, i32** %blen.addr, align 8, !tbaa !1
  %call = call i32 @gp_file_name_combine(i8* %0, i32 %1, i8* %add.ptr, i32 0, i32 0, i8* %4, i32* %5) #6
  ret i32 %call
}

declare i32 @gp_file_name_combine(i8*, i32, i8*, i32, i32, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_is_absolute(i8* %fname, i32 %flen) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %call = call i32 @gp_file_name_root(i8* %0, i32 %1) #6
  %cmp = icmp ugt i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_parents(i8* %fname, i32 %flen) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %call = call i32 @gp_file_name_prefix(i8* %0, i32 %1, i32 (i8*, i32)* @gp_file_name_is_parent) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gp_file_name_prefix(i8* %fname, i32 %flen, i32 (i8*, i32)* %test) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  %test.addr = alloca i32 (i8*, i32)*, align 8
  %plen = alloca i32, align 4
  %slen = alloca i32, align 4
  %ip = alloca i8*, align 8
  %ipe = alloca i8*, align 8
  %item = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !5
  store i32 (i8*, i32)* %test, i32 (i8*, i32)** %test.addr, align 8, !tbaa !1
  %0 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %2 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %call = call i32 @gp_file_name_root(i8* %1, i32 %2) #6
  store i32 %call, i32* %plen, align 4, !tbaa !5
  %3 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %ip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %ipe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %item to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  store i8* %7, i8** %item, align 8, !tbaa !1
  %8 = load i32, i32* %plen, align 4, !tbaa !5
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %10 = load i32, i32* %plen, align 4, !tbaa !5
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %ip, align 8, !tbaa !1
  %11 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %12 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %idx.ext1 = zext i32 %12 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %11, i64 %idx.ext1
  store i8* %add.ptr2, i8** %ipe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.7, %if.end
  %13 = load i8*, i8** %ip, align 8, !tbaa !1
  %14 = load i8*, i8** %ipe, align 8, !tbaa !1
  %cmp3 = icmp ult i8* %13, %14
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %ip, align 8, !tbaa !1
  store i8* %15, i8** %item, align 8, !tbaa !1
  %16 = load i8*, i8** %ipe, align 8, !tbaa !1
  %17 = load i8*, i8** %item, align 8, !tbaa !1
  %call4 = call i32 @search_separator(i8** %ip, i8* %16, i8* %17, i32 1) #6
  store i32 %call4, i32* %slen, align 4, !tbaa !5
  %18 = load i32 (i8*, i32)*, i32 (i8*, i32)** %test.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %item, align 8, !tbaa !1
  %20 = load i8*, i8** %ip, align 8, !tbaa !1
  %21 = load i8*, i8** %item, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %call5 = call i32 %18(i8* %19, i32 %conv) #6
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end.7:                                         ; preds = %for.body
  %22 = load i32, i32* %slen, align 4, !tbaa !5
  %23 = load i8*, i8** %ip, align 8, !tbaa !1
  %idx.ext8 = zext i32 %22 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %23, i64 %idx.ext8
  store i8* %add.ptr9, i8** %ip, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %24 = load i8*, i8** %item, align 8, !tbaa !1
  %25 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast10 = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %25 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %conv13 = trunc i64 %sub.ptr.sub12 to i32
  store i32 %conv13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %26 = bitcast i8** %item to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i8** %ipe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i8** %ip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_cwds(i8* %fname, i32 %flen) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %1 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %call = call i32 @gp_file_name_prefix(i8* %0, i32 %1, i32 (i8*, i32)* @gp_file_name_is_current) #6
  ret i32 %call
}

declare i32 @open64(i8*, i32, ...) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #5

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
