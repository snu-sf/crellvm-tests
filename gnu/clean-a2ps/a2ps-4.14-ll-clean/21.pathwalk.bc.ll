; ModuleID = './lib/pathwalk.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.lister = type opaque

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot find file `%s'\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s%c%s%s\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"pw: pasting `%s%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"% -- code follows this line --\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"% -- include file:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" \0A\09\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"pw: including file '%s' upon request given in '%s':%d\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"pw: globbing `%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\09-> %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Dir entries\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"pw: looking for `%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"pw: success in %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"pw: did not find `%s' in path\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"pw:  %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%s%c%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8** @pw_string_to_path(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %dummy = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i8** @pw_internal_string_to_path(i8* %0, i8 signext 58, i32* %dummy)
  ret i8** %call
}

; Function Attrs: nounwind uwtable
define internal i8** @pw_internal_string_to_path(i8* %path, i8 signext %sep, i32* %length) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %sep.addr = alloca i8, align 1
  %length.addr = alloca i32*, align 8
  %res = alloca i8**, align 8
  %allocated = alloca i32, align 4
  %entries = alloca i32, align 4
  %cp = alloca i8*, align 8
  %cp2 = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  store i8 %sep, i8* %sep.addr, align 1
  store i32* %length, i32** %length.addr, align 8
  store i8** null, i8*** %res, align 8
  store i32 5, i32* %allocated, align 4
  store i32 0, i32* %entries, align 4
  %0 = load i32, i32* %allocated, align 4
  %conv = sext i32 %0 to i64
  %call = call i8* @xcalloc(i64 8, i64 %conv)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %res, align 8
  %2 = load i8*, i8** %path.addr, align 8
  store i8* %2, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %cp, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8*, i8** %path.addr, align 8
  %cmp = icmp ne i8* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %sep.addr, align 1
  %conv2 = sext i8 %8 to i32
  %call3 = call i8* @strchr(i8* %7, i32 %conv2) #6
  store i8* %call3, i8** %cp2, align 8
  %9 = load i8*, i8** %cp2, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %10 = load i8*, i8** %cp2, align 8
  %11 = load i8*, i8** %cp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv6, i32* %len, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %12 = load i8*, i8** %cp, align 8
  %call7 = call i64 @strlen(i8* %12) #6
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %len, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  %13 = load i32, i32* %len, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.end.9
  %14 = load i8*, i8** %cp, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr13, i8** %cp, align 8
  br label %for.inc

if.else.14:                                       ; preds = %if.end.9
  %15 = load i32, i32* %len, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 47
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else.14
  %18 = load i32, i32* %len, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %len, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  %19 = load i32, i32* %len, align 4
  %add = add nsw i32 %19, 1
  %conv21 = sext i32 %add to i64
  %mul = mul i64 1, %conv21
  %call22 = call i8* @xmalloc(i64 %mul)
  %20 = load i32, i32* %entries, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i8**, i8*** %res, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %21, i64 %idxprom23
  store i8* %call22, i8** %arrayidx24, align 8
  %22 = load i32, i32* %entries, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load i8**, i8*** %res, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %23, i64 %idxprom25
  %24 = load i8*, i8** %arrayidx26, align 8
  %25 = load i8*, i8** %cp, align 8
  %26 = load i32, i32* %len, align 4
  %conv27 = sext i32 %26 to i64
  %call28 = call i8* @strncpy(i8* %24, i8* %25, i64 %conv27) #7
  %27 = load i32, i32* %len, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load i32, i32* %entries, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load i8**, i8*** %res, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %29, i64 %idxprom30
  %30 = load i8*, i8** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %30, i64 %idxprom29
  store i8 0, i8* %arrayidx32, align 1
  %31 = load i32, i32* %entries, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %entries, align 4
  %32 = load i32, i32* %entries, align 4
  %33 = load i32, i32* %allocated, align 4
  %cmp33 = icmp sge i32 %32, %33
  br i1 %cmp33, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.end.20
  %34 = load i32, i32* %allocated, align 4
  %mul36 = mul nsw i32 %34, 2
  store i32 %mul36, i32* %allocated, align 4
  %35 = load i8**, i8*** %res, align 8
  %36 = bitcast i8** %35 to i8*
  %37 = load i32, i32* %allocated, align 4
  %conv37 = sext i32 %37 to i64
  %mul38 = mul i64 8, %conv37
  %call39 = call i8* @xrealloc(i8* %36, i64 %mul38)
  %38 = bitcast i8* %call39 to i8**
  store i8** %38, i8*** %res, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.40, %if.then.12
  %39 = load i8*, i8** %cp, align 8
  %40 = load i8, i8* %sep.addr, align 1
  %conv41 = sext i8 %40 to i32
  %call42 = call i8* @strchr(i8* %39, i32 %conv41) #6
  store i8* %call42, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %entries, align 4
  %42 = load i32*, i32** %length.addr, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %length.addr, align 8
  %44 = load i32, i32* %43, align 4
  %idxprom43 = sext i32 %44 to i64
  %45 = load i8**, i8*** %res, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %45, i64 %idxprom43
  store i8* null, i8** %arrayidx44, align 8
  %46 = load i8**, i8*** %res, align 8
  %47 = bitcast i8** %46 to i8*
  %48 = load i32*, i32** %length.addr, align 8
  %49 = load i32, i32* %48, align 4
  %add45 = add nsw i32 %49, 1
  %conv46 = sext i32 %add45 to i64
  %mul47 = mul i64 8, %conv46
  %call48 = call i8* @xrealloc(i8* %47, i64 %mul47)
  %50 = bitcast i8* %call48 to i8**
  store i8** %50, i8*** %res, align 8
  %51 = load i8**, i8*** %res, align 8
  ret i8** %51
}

; Function Attrs: nounwind uwtable
define i8** @pw_append_string_to_path(i8** %path1, i8* %dir2) #0 {
entry:
  %path1.addr = alloca i8**, align 8
  %dir2.addr = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %path2 = alloca i8**, align 8
  store i8** %path1, i8*** %path1.addr, align 8
  store i8* %dir2, i8** %dir2.addr, align 8
  %0 = load i8**, i8*** %path1.addr, align 8
  %call = call i32 @pw_path_length(i8** %0)
  store i32 %call, i32* %len1, align 4
  %1 = load i8*, i8** %dir2.addr, align 8
  %call1 = call i8** @pw_internal_string_to_path(i8* %1, i8 signext 58, i32* %len2)
  store i8** %call1, i8*** %path2, align 8
  %2 = load i8**, i8*** %path1.addr, align 8
  %3 = load i32, i32* %len1, align 4
  %4 = load i8**, i8*** %path2, align 8
  %5 = load i32, i32* %len2, align 4
  %call2 = call i8** @pw_path_concat(i8** %2, i32 %3, i8** %4, i32 %5)
  ret i8** %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pw_path_length(i8** %path) #1 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8**, align 8
  %res = alloca i32, align 4
  store i8** %path, i8*** %path.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %res, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %res, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %path.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %res, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %res, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %res, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @pw_path_concat(i8** %path1, i32 %len1, i8** %path2, i32 %len2) #1 {
entry:
  %path1.addr = alloca i8**, align 8
  %len1.addr = alloca i32, align 4
  %path2.addr = alloca i8**, align 8
  %len2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8** %path1, i8*** %path1.addr, align 8
  store i32 %len1, i32* %len1.addr, align 4
  store i8** %path2, i8*** %path2.addr, align 8
  store i32 %len2, i32* %len2.addr, align 4
  %0 = load i8**, i8*** %path2.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %path1.addr, align 8
  %2 = bitcast i8** %1 to i8*
  %3 = load i32, i32* %len1.addr, align 4
  %4 = load i32, i32* %len2.addr, align 4
  %add = add nsw i32 %3, %4
  %add1 = add nsw i32 %add, 1
  %conv = sext i32 %add1 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @xrealloc(i8* %2, i64 %mul)
  %5 = bitcast i8* %call to i8**
  store i8** %5, i8*** %path1.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %len2.addr, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8**, i8*** %path2.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %11 = load i32, i32* %len1.addr, align 4
  %12 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %11, %12
  %idxprom4 = sext i32 %add3 to i64
  %13 = load i8**, i8*** %path1.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %13, i64 %idxprom4
  store i8* %10, i8** %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i8**, i8*** %path2.addr, align 8
  %16 = bitcast i8** %15 to i8*
  call void @free(i8* %16) #7
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %17 = load i8**, i8*** %path1.addr, align 8
  ret i8** %17
}

; Function Attrs: nounwind uwtable
define i8** @pw_prepend_string_to_path(i8** %path1, i8* %dir2) #0 {
entry:
  %path1.addr = alloca i8**, align 8
  %dir2.addr = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %path2 = alloca i8**, align 8
  store i8** %path1, i8*** %path1.addr, align 8
  store i8* %dir2, i8** %dir2.addr, align 8
  %0 = load i8**, i8*** %path1.addr, align 8
  %call = call i32 @pw_path_length(i8** %0)
  store i32 %call, i32* %len1, align 4
  %1 = load i8*, i8** %dir2.addr, align 8
  %call1 = call i8** @pw_internal_string_to_path(i8* %1, i8 signext 58, i32* %len2)
  store i8** %call1, i8*** %path2, align 8
  %2 = load i8**, i8*** %path2, align 8
  %3 = load i32, i32* %len2, align 4
  %4 = load i8**, i8*** %path1.addr, align 8
  %5 = load i32, i32* %len1, align 4
  %call2 = call i8** @pw_path_concat(i8** %2, i32 %3, i8** %4, i32 %5)
  ret i8** %call2
}

; Function Attrs: nounwind uwtable
define void @pw_free_path(i8** %path) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8** %path, i8*** %path.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %path.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i8**, i8*** %path.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %5, i64 %idxprom2
  %6 = load i8*, i8** %arrayidx3, align 8
  call void @free(i8* %6) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load i8**, i8*** %path.addr, align 8
  %tobool4 = icmp ne i8** %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  %9 = load i8**, i8*** %path.addr, align 8
  %10 = bitcast i8** %9 to i8*
  call void @free(i8* %10) #7
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @pw_fprintf_path(%struct._IO_FILE* %stream, i8* %format, i8** %path) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %path.addr = alloca i8**, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8** %path, i8*** %path.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i8**, i8*** %path.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %5 = load i8**, i8*** %path.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %4, i8* %6)
  %7 = load i8**, i8*** %path.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i32 1
  store i8** %incdec.ptr, i8*** %path.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @pw_file_exists_p(i8** %path, i8* %name, i8* %suffix) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %name.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8*, i8** %suffix.addr, align 8
  %call = call i32 @pw_find_file_index(i8** %0, i8* %1, i8* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pw_find_file_index(i8** %path, i8* %name, i8* %suffix) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8**, align 8
  %name.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %stat_st = alloca %struct.stat, align 8
  %filename = alloca i8*, align 8
  %fullpath = alloca i8*, align 8
  %_tmp1_ = alloca i8*, align 8
  %_tmp2_ = alloca i8*, align 8
  %tmp1 = alloca i8*, align 8
  %tmp2 = alloca i8*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8*, i8** %suffix.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load i8*, i8** %name.addr, align 8
  store i8* %1, i8** %_tmp1_, align 8
  %2 = load i8*, i8** %suffix.addr, align 8
  store i8* %2, i8** %_tmp2_, align 8
  %3 = load i8*, i8** %_tmp1_, align 8
  %call = call i64 @strlen(i8* %3) #6
  %4 = load i8*, i8** %_tmp2_, align 8
  %call1 = call i64 @strlen(i8* %4) #6
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 1
  %mul = mul i64 1, %add2
  %5 = alloca i8, i64 %mul
  store i8* %5, i8** %filename, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  %6 = load i8*, i8** %filename, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %call4 = call i8* @stpcpy(i8* %6, i8* %7) #7
  %8 = load i8*, i8** %suffix.addr, align 8
  %call5 = call i8* @stpcpy(i8* %call4, i8* %8) #7
  br label %do.end

do.end:                                           ; preds = %do.body.3
  br label %do.end.6

do.end.6:                                         ; preds = %do.end
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %name.addr, align 8
  store i8* %9, i8** %filename, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end.6
  br label %do.body.7

do.body.7:                                        ; preds = %if.end
  %10 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 8, %10
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %do.body.7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8*, i8** %filename, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %do.body.7
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %13 = load i8**, i8*** %path.addr, align 8
  %tobool13 = icmp ne i8** %13, null
  br i1 %tobool13, label %if.then.14, label %if.end.40

if.then.14:                                       ; preds = %do.end.12
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i8**, i8*** %path.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8
  %tobool15 = icmp ne i8* %16, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.16

do.body.16:                                       ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i8**, i8*** %path.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %18, i64 %idxprom17
  %19 = load i8*, i8** %arrayidx18, align 8
  store i8* %19, i8** %tmp1, align 8
  %20 = load i8*, i8** %filename, align 8
  store i8* %20, i8** %tmp2, align 8
  %21 = load i8*, i8** %tmp1, align 8
  %call19 = call i64 @strlen(i8* %21) #6
  %22 = load i8*, i8** %tmp2, align 8
  %call20 = call i64 @strlen(i8* %22) #6
  %add21 = add i64 %call19, %call20
  %add22 = add i64 %add21, 2
  %mul23 = mul i64 1, %add22
  %23 = alloca i8, i64 %mul23
  store i8* %23, i8** %fullpath, align 8
  %24 = load i8*, i8** %fullpath, align 8
  %25 = load i8*, i8** %tmp1, align 8
  %call24 = call i8* @stpcpy(i8* %24, i8* %25) #7
  store i8* %call24, i8** %tmp1, align 8
  %26 = load i8*, i8** %tmp1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %tmp1, align 8
  store i8 47, i8* %26, align 1
  %27 = load i8*, i8** %tmp1, align 8
  %28 = load i8*, i8** %tmp2, align 8
  %call25 = call i8* @stpcpy(i8* %27, i8* %28) #7
  br label %do.end.26

do.end.26:                                        ; preds = %do.body.16
  %29 = load i8*, i8** %fullpath, align 8
  %call27 = call i32 @stat(i8* %29, %struct.stat* %stat_st) #7
  %cmp = icmp eq i32 %call27, 0
  br i1 %cmp, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %do.end.26
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  %30 = load i32, i32* @msg_verbosity, align 4
  %and30 = and i32 8, %30
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %do.body.29
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %32 to i64
  %33 = load i8**, i8*** %path.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %33, i64 %idxprom33
  %34 = load i8*, i8** %arrayidx34, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* %34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %do.body.29
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %35 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %35, 1
  store i32 %add38, i32* %retval
  br label %return

if.end.39:                                        ; preds = %do.end.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.40

if.end.40:                                        ; preds = %for.end, %do.end.12
  %37 = load i32, i32* @msg_verbosity, align 4
  %and41 = and i32 8, %37
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.40
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load i8*, i8** %filename, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i8* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i8**, i8*** %path.addr, align 8
  call void @pw_fprintf_path(%struct._IO_FILE* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8** %41)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.40
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %do.end.37
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define i8* @pw_find_file(i8** %path, i8* %name, i8* %suffix) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %name.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8*, i8** %suffix.addr, align 8
  %call = call i8* @_pw_find_file(i8** %0, i8* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @_pw_find_file(i8** %path, i8* %name, i8* %suffix) #1 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8**, align 8
  %name.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8** %path, i8*** %path.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8*, i8** %suffix.addr, align 8
  %call = call i32 @pw_find_file_index(i8** %0, i8* %1, i8* %2)
  store i32 %call, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else.26

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %suffix.addr, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load i8**, i8*** %path.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call3 = call i64 @strlen(i8* %7) #6
  %add = add i64 %call3, 2
  %8 = load i8*, i8** %name.addr, align 8
  %call4 = call i64 @strlen(i8* %8) #6
  %add5 = add i64 %add, %call4
  %9 = load i8*, i8** %suffix.addr, align 8
  %call6 = call i64 @strlen(i8* %9) #6
  %add7 = add i64 %add5, %call6
  %mul = mul i64 1, %add7
  %call8 = call i8* @xmalloc(i64 %mul)
  store i8* %call8, i8** %res, align 8
  %10 = load i8*, i8** %res, align 8
  %11 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 %11, 1
  %idxprom10 = sext i32 %sub9 to i64
  %12 = load i8**, i8*** %path.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %12, i64 %idxprom10
  %13 = load i8*, i8** %arrayidx11, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load i8*, i8** %suffix.addr, align 8
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %13, i32 47, i8* %14, i8* %15) #7
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 %16, 1
  %idxprom14 = sext i32 %sub13 to i64
  %17 = load i8**, i8*** %path.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %17, i64 %idxprom14
  %18 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i64 @strlen(i8* %18) #6
  %add17 = add i64 %call16, 2
  %19 = load i8*, i8** %name.addr, align 8
  %call18 = call i64 @strlen(i8* %19) #6
  %add19 = add i64 %add17, %call18
  %mul20 = mul i64 1, %add19
  %call21 = call i8* @xmalloc(i64 %mul20)
  store i8* %call21, i8** %res, align 8
  %20 = load i8*, i8** %res, align 8
  %21 = load i32, i32* %i, align 4
  %sub22 = sub nsw i32 %21, 1
  %idxprom23 = sext i32 %sub22 to i64
  %22 = load i8**, i8*** %path.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %22, i64 %idxprom23
  %23 = load i8*, i8** %arrayidx24, align 8
  %24 = load i8*, i8** %name.addr, align 8
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %23, i32 47, i8* %24) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %25 = load i8*, i8** %res, align 8
  store i8* %25, i8** %retval
  br label %return

if.else.26:                                       ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else.26, %if.end
  %26 = load i8*, i8** %retval
  ret i8* %26
}

; Function Attrs: nounwind uwtable
define i8* @xpw_find_file(i8** %path, i8* %name, i8* %suffix) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %name.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  %file = alloca i8*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8*, i8** %suffix.addr, align 8
  %call = call i8* @_pw_find_file(i8** %0, i8* %1, i8* %2)
  store i8* %call, i8** %res, align 8
  %3 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8
  %call1 = call i64 @strlen(i8* %4) #6
  %5 = load i8*, i8** %suffix.addr, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i8*, i8** %suffix.addr, align 8
  %call3 = call i64 @strlen(i8* %6) #6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call3, %cond.true ], [ 0, %cond.false ]
  %add = add i64 %call1, %cond
  %add4 = add i64 %add, 1
  %mul = mul i64 1, %add4
  %7 = alloca i8, i64 %mul
  store i8* %7, i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load i8*, i8** %suffix.addr, align 8
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %11 = load i8*, i8** %suffix.addr, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.5 ], [ %11, %cond.false.6 ]
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %9, i8* %cond8) #7
  %call10 = call i32* @__errno_location() #8
  %12 = load i32, i32* %call10, align 4
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #7
  %13 = load i8*, i8** %file, align 8
  %call12 = call i8* @quotearg(i8* %13)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %12, i8* %call11, i8* %call12)
  br label %if.end

if.end:                                           ; preds = %cond.end.7, %entry
  %14 = load i8*, i8** %res, align 8
  ret i8* %14
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @quotearg(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @xpw_find_included_file(i8** %path, i8* %including_file, i8* %name, i8* %suffix) #0 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8**, align 8
  %including_file.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %dir = alloca i8*, align 8
  %res = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %including_file, i8** %including_file.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %dir, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %including_file.addr, align 8
  %call = call i8* @dir_name(i8* %2)
  store i8* %call, i8** %dir, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %dir, align 8
  %call2 = call i64 @strlen(i8* %3) #6
  %4 = load i8*, i8** %name.addr, align 8
  %call3 = call i64 @strlen(i8* %4) #6
  %add = add i64 %call2, %call3
  %5 = load i8*, i8** %suffix.addr, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i8*, i8** %suffix.addr, align 8
  %call4 = call i64 @strlen(i8* %6) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ 0, %cond.false ]
  %add5 = add i64 %add, %cond
  %add6 = add i64 %add5, 2
  %mul = mul i64 1, %add6
  %7 = alloca i8, i64 %mul
  store i8* %7, i8** %res, align 8
  %8 = load i8*, i8** %res, align 8
  %9 = load i8*, i8** %dir, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load i8*, i8** %suffix.addr, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  %12 = load i8*, i8** %suffix.addr, align 8
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i8* [ %12, %cond.true.8 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.false.9 ]
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %9, i32 47, i8* %10, i8* %cond11) #7
  br label %do.body

do.body:                                          ; preds = %cond.end.10
  %13 = load i8*, i8** %dir, align 8
  %tobool13 = icmp ne i8* %13, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.body
  %14 = load i8*, i8** %dir, align 8
  call void @free(i8* %14) #7
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %15 = load i8*, i8** %res, align 8
  %call16 = call i32 @stat(i8* %15, %struct.stat* %statbuf) #7
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.end
  %16 = load i8*, i8** %res, align 8
  %call20 = call i8* @xstrdup(i8* %16)
  store i8* %call20, i8** %retval
  br label %return

if.end.21:                                        ; preds = %do.end
  %17 = load i8**, i8*** %path.addr, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %19 = load i8*, i8** %suffix.addr, align 8
  %call22 = call i8* @xpw_find_file(i8** %17, i8* %18, i8* %19)
  store i8* %call22, i8** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.19
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare i8* @dir_name(i8*) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

declare i8* @xstrdup(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @pw_paste_file(i8** %path, i8* %name, i8* %suffix) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8**, align 8
  %name.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %fullpath = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %line = alloca i32, align 4
  %file = alloca i8*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  store i32 0, i32* %line, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 8, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %suffix.addr, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i8*, i8** %suffix.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %2, i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i8**, i8*** %path.addr, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i8*, i8** %suffix.addr, align 8
  %call2 = call i8* @_pw_find_file(i8** %5, i8* %6, i8* %7)
  store i8* %call2, i8** %fullpath, align 8
  %8 = load i8*, i8** %fullpath, align 8
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %do.end
  %9 = load i8*, i8** %fullpath, align 8
  %call6 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %fp, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end.8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %11)
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %line, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %line, align 4
  %arraydecay11 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call12 = call i32 @strncmp(i8* %arraydecay11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i64 30) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.body
  br label %while.end

if.end.15:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.14, %while.cond
  br label %while.cond.16

while.cond.16:                                    ; preds = %if.end.42, %if.end.41, %while.end
  %arraydecay17 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call18 = call i8* @fgets(i8* %arraydecay17, i32 512, %struct._IO_FILE* %13)
  %tobool19 = icmp ne i8* %call18, null
  br i1 %tobool19, label %while.body.20, label %while.end.45

while.body.20:                                    ; preds = %while.cond.16
  %14 = load i32, i32* %line, align 4
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, i32* %line, align 4
  %arraydecay22 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call23 = call i32 @strncmp(i8* %arraydecay22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i64 18) #6
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.42

if.then.25:                                       ; preds = %while.body.20
  %arraydecay26 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay26, i64 18
  store i8* %add.ptr, i8** %file, align 8
  %15 = load i8*, i8** %file, align 8
  %call27 = call i8* @strtok(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #7
  store i8* %call27, i8** %file, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.25
  %16 = load i32, i32* @msg_verbosity, align 4
  %and29 = and i32 8, %16
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %do.body.28
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8*, i8** %file, align 8
  %19 = load i8*, i8** %fullpath, align 8
  %20 = load i32, i32* %line, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0), i8* %18, i8* %19, i32 %20)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %do.body.28
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %21 = load i8**, i8*** %path.addr, align 8
  %22 = load i8*, i8** %file, align 8
  %call35 = call i32 @pw_paste_file(i8** %21, i8* %22, i8* null)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.41, label %if.then.37

if.then.37:                                       ; preds = %do.end.34
  %call38 = call i32* @__errno_location() #8
  %23 = load i32, i32* %call38, align 4
  %24 = load i8*, i8** %fullpath, align 8
  %25 = load i32, i32* %line, align 4
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #7
  %26 = load i8*, i8** %file, align 8
  %call40 = call i8* @quotearg(i8* %26)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 %23, i8* %24, i32 %25, i8* %call39, i8* %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %do.end.34
  br label %while.cond.16

if.end.42:                                        ; preds = %while.body.20
  %arraydecay43 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call44 = call i32 @fputs(i8* %arraydecay43, %struct._IO_FILE* %27)
  br label %while.cond.16

while.end.45:                                     ; preds = %while.cond.16
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call46 = call i32 @fclose(%struct._IO_FILE* %28)
  %29 = load i8*, i8** %fullpath, align 8
  call void @free(i8* %29) #7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.45, %if.then.7, %if.then.4
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define %struct.darray* @pw_glob(i8** %path, i8* %pattern) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %pattern.addr = alloca i8*, align 8
  %res = alloca %struct.darray*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 8, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %pattern.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8**, i8*** %path.addr, align 8
  call void @pw_fprintf_path(%struct._IO_FILE* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8** %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call %struct.darray* @da_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i64 20, i32 2, i64 2, void (i8*, %struct._IO_FILE*)* @da_str_print, i32 (i8*, i8*)* @strverscmp)
  store %struct.darray* %call1, %struct.darray** %res, align 8
  %5 = load i8**, i8*** %path.addr, align 8
  %6 = load i8*, i8** %pattern.addr, align 8
  %7 = load %struct.darray*, %struct.darray** %res, align 8
  %8 = bitcast %struct.darray* %7 to i8*
  call void @pw_filterdir(i8** %5, i1 (i8*, i8*, i8*)* @pw_filter_fnmatch, i8* %6, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.darray*)* @pw_filter_da_append to void (i8*, i8*, i8*)*), i8* %8)
  %9 = load %struct.darray*, %struct.darray** %res, align 8
  call void @da_qsort(%struct.darray* %9)
  %10 = load %struct.darray*, %struct.darray** %res, align 8
  call void @da_unique(%struct.darray* %10, void (i8*)* @free)
  %11 = load %struct.darray*, %struct.darray** %res, align 8
  ret %struct.darray* %11
}

declare %struct.darray* @da_new(i8*, i64, i32, i64, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)*) #3

declare void @da_str_print(i8*, %struct._IO_FILE*) #3

declare i32 @strverscmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @pw_filterdir(i8** %path, i1 (i8*, i8*, i8*)* %filter, i8* %filtarg, void (i8*, i8*, i8*)* %fun, i8* %arg) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %filter.addr = alloca i1 (i8*, i8*, i8*)*, align 8
  %filtarg.addr = alloca i8*, align 8
  %fun.addr = alloca void (i8*, i8*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i1 (i8*, i8*, i8*)* %filter, i1 (i8*, i8*, i8*)** %filter.addr, align 8
  store i8* %filtarg, i8** %filtarg.addr, align 8
  store void (i8*, i8*, i8*)* %fun, void (i8*, i8*, i8*)** %fun.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %path.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %path.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i1 (i8*, i8*, i8*)*, i1 (i8*, i8*, i8*)** %filter.addr, align 8
  %5 = load i8*, i8** %filtarg.addr, align 8
  %6 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %fun.addr, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  call void @filterdir(i8* %3, i1 (i8*, i8*, i8*)* %4, i8* %5, void (i8*, i8*, i8*)* %6, i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8**, i8*** %path.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %path.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @pw_filter_fnmatch(i8* %dir, i8* %file, i8* %pattern) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  %0 = load i8*, i8** %pattern.addr, align 8
  %1 = load i8*, i8** %file.addr, align 8
  %call = call i32 @fnmatch(i8* %0, i8* %1, i32 0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  ret i1 %lnot
}

; Function Attrs: nounwind uwtable
define internal void @pw_filter_da_append(i8* %dir, i8* %file, %struct.darray* %da) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %da.addr = alloca %struct.darray*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct.darray* %da, %struct.darray** %da.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %da.addr, align 8
  %1 = load i8*, i8** %file.addr, align 8
  %call = call i8* @xstrdup(i8* %1)
  call void @da_append(%struct.darray* %0, i8* %call)
  ret void
}

declare void @da_qsort(%struct.darray*) #3

declare void @da_unique(%struct.darray*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define void @pw_glob_print(i8** %path, i8* %pattern, %struct._IO_FILE* %stream) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %pattern.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %1 = load i8*, i8** %pattern.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = bitcast %struct._IO_FILE* %2 to i8*
  call void @pw_filterdir(i8** %0, i1 (i8*, i8*, i8*)* @pw_filter_fnmatch, i8* %1, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._IO_FILE*)* @pw_filter_print to void (i8*, i8*, i8*)*), i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pw_filter_print(i8* %dir, i8* %file, %struct._IO_FILE* %stream) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load i8*, i8** %dir.addr, align 8
  %2 = load i8*, i8** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* %1, i32 47, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.darray* @pw_glob_on_suffix(i8** %path, i8* %suffix) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %suffix.addr = alloca i8*, align 8
  %res = alloca %struct.darray*, align 8
  %pattern = alloca i8*, align 8
  %_tmp1_ = alloca i8*, align 8
  %_tmp2_ = alloca i8*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8** %_tmp1_, align 8
  %0 = load i8*, i8** %suffix.addr, align 8
  store i8* %0, i8** %_tmp2_, align 8
  %1 = load i8*, i8** %_tmp1_, align 8
  %call = call i64 @strlen(i8* %1) #6
  %2 = load i8*, i8** %_tmp2_, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 1
  %mul = mul i64 1, %add2
  %3 = alloca i8, i64 %mul
  store i8* %3, i8** %pattern, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  %4 = load i8*, i8** %pattern, align 8
  %call4 = call i8* @stpcpy(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #7
  %5 = load i8*, i8** %suffix.addr, align 8
  %call5 = call i8* @stpcpy(i8* %call4, i8* %5) #7
  br label %do.end

do.end:                                           ; preds = %do.body.3
  br label %do.end.6

do.end.6:                                         ; preds = %do.end
  %6 = load i8**, i8*** %path.addr, align 8
  %7 = load i8*, i8** %pattern, align 8
  %call7 = call %struct.darray* @pw_glob(i8** %6, i8* %7)
  store %struct.darray* %call7, %struct.darray** %res, align 8
  %8 = load %struct.darray*, %struct.darray** %res, align 8
  call void @da_map(%struct.darray* %8, void (i8*)* @da_str_cut_suffix)
  %9 = load %struct.darray*, %struct.darray** %res, align 8
  ret %struct.darray* %9
}

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #2

declare void @da_map(%struct.darray*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @da_str_cut_suffix(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 46) #6
  store i8 0, i8* %call, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @pw_lister_on_suffix(%struct._IO_FILE* %stream, i8** %path, i8* %suffix) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %path.addr = alloca i8**, align 8
  %suffix.addr = alloca i8*, align 8
  %entries = alloca %struct.darray*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %1 = load i8*, i8** %suffix.addr, align 8
  %call = call %struct.darray* @pw_glob_on_suffix(i8** %0, i8* %1)
  store %struct.darray* %call, %struct.darray** %entries, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load %struct.darray*, %struct.darray** %entries, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 6
  %4 = load i8**, i8*** %content, align 8
  %5 = bitcast i8** %4 to i8*
  %6 = bitcast i8* %5 to i8**
  %7 = load %struct.darray*, %struct.darray** %entries, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 5
  %8 = load i64, i64* %len, align 8
  call void @lister_fprint_vertical(%struct.lister* null, %struct._IO_FILE* %2, i8** %6, i64 %8, i64 (i8*)* @strlen, void (i8*, %struct._IO_FILE*)* bitcast (i32 (i8*, %struct._IO_FILE*)* @fputs to void (i8*, %struct._IO_FILE*)*))
  %9 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_free(%struct.darray* %9, void (i8*)* @free)
  ret void
}

declare void @lister_fprint_vertical(%struct.lister*, %struct._IO_FILE*, i8**, i64, i64 (i8*)*, void (i8*, %struct._IO_FILE*)*) #3

declare void @da_free(%struct.darray*, void (i8*)*) #3

declare i8* @xcalloc(i64, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @xmalloc(i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare i8* @xrealloc(i8*, i64) #3

declare void @filterdir(i8*, i1 (i8*, i8*, i8*)*, i8*, void (i8*, i8*, i8*)*, i8*) #3

declare i32 @fnmatch(i8*, i8*, i32) #3

declare void @da_append(%struct.darray*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
