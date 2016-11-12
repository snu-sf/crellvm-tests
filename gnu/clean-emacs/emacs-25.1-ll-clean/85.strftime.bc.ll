; ModuleID = './lib/strftime.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1

; Function Attrs: nounwind uwtable
define i64 @nstrftime(i8* %s, i64 %maxsize, i8* %format, %struct.tm* %tp, %struct.tm_zone* %tz, i32 %ns) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %maxsize.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %tp.addr = alloca %struct.tm*, align 8
  %tz.addr = alloca %struct.tm_zone*, align 8
  %ns.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i64 %maxsize, i64* %maxsize.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.tm* %tp, %struct.tm** %tp.addr, align 8
  store %struct.tm_zone* %tz, %struct.tm_zone** %tz.addr, align 8
  store i32 %ns, i32* %ns.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i64, i64* %maxsize.addr, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %3 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %4 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %5 = load i32, i32* %ns.addr, align 4
  %call = call i64 @strftime_case_(i1 zeroext false, i8* %0, i64 %1, i8* %2, %struct.tm* %3, %struct.tm_zone* %4, i32 %5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @strftime_case_(i1 zeroext %upcase, i8* %s, i64 %maxsize, i8* %format, %struct.tm* %tp, %struct.tm_zone* %tz, i32 %ns) #0 {
entry:
  %retval = alloca i64, align 8
  %upcase.addr = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %maxsize.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %tp.addr = alloca %struct.tm*, align 8
  %tz.addr = alloca %struct.tm_zone*, align 8
  %ns.addr = alloca i32, align 4
  %hour12 = alloca i32, align 4
  %zone = alloca i8*, align 8
  %i = alloca i64, align 8
  %p = alloca i8*, align 8
  %f = alloca i8*, align 8
  %copy = alloca %struct.tm, align 8
  %pad = alloca i32, align 4
  %modifier = alloca i32, align 4
  %digits = alloca i32, align 4
  %number_value = alloca i32, align 4
  %u_number_value = alloca i32, align 4
  %negative_number = alloca i8, align 1
  %always_output_a_sign = alloca i8, align 1
  %tz_colon_mask = alloca i32, align 4
  %subfmt = alloca i8*, align 8
  %sign_char = alloca i8, align 1
  %bufp = alloca i8*, align 8
  %buf = alloca [23 x i8], align 16
  %width = alloca i32, align 4
  %to_lowcase = alloca i8, align 1
  %to_uppcase = alloca i8, align 1
  %colons = alloca i64, align 8
  %change_case = alloca i8, align 1
  %format_char = alloca i32, align 4
  %_n = alloca i64, align 8
  %_w = alloca i64, align 8
  %_incr = alloca i64, align 8
  %_delta = alloca i64, align 8
  %_n92 = alloca i64, align 8
  %_w93 = alloca i64, align 8
  %_incr101 = alloca i64, align 8
  %_delta121 = alloca i64, align 8
  %len = alloca i64, align 8
  %_n176 = alloca i64, align 8
  %_w177 = alloca i64, align 8
  %_incr185 = alloca i64, align 8
  %_delta205 = alloca i64, align 8
  %ufmt = alloca [5 x i8], align 1
  %u = alloca i8*, align 8
  %ubuf = alloca [1024 x i8], align 16
  %len224 = alloca i64, align 8
  %_n242 = alloca i64, align 8
  %_w244 = alloca i64, align 8
  %_incr252 = alloca i64, align 8
  %_delta272 = alloca i64, align 8
  %century = alloca i32, align 4
  %_n413 = alloca i64, align 8
  %_w414 = alloca i64, align 8
  %_incr422 = alloca i64, align 8
  %_delta442 = alloca i64, align 8
  %padding = alloca i32, align 4
  %_n498 = alloca i64, align 8
  %_w499 = alloca i64, align 8
  %_incr507 = alloca i64, align 8
  %_delta527 = alloca i64, align 8
  %_n554 = alloca i64, align 8
  %_w555 = alloca i64, align 8
  %_incr563 = alloca i64, align 8
  %_delta583 = alloca i64, align 8
  %_n613 = alloca i64, align 8
  %_w614 = alloca i64, align 8
  %_incr622 = alloca i64, align 8
  %_delta642 = alloca i64, align 8
  %_n662 = alloca i64, align 8
  %_w668 = alloca i64, align 8
  %_incr676 = alloca i64, align 8
  %_delta696 = alloca i64, align 8
  %j = alloca i32, align 4
  %_n815 = alloca i64, align 8
  %_w816 = alloca i64, align 8
  %_incr824 = alloca i64, align 8
  %_delta844 = alloca i64, align 8
  %ltm = alloca %struct.tm, align 8
  %t = alloca i64, align 8
  %d = alloca i32, align 4
  %_n908 = alloca i64, align 8
  %_w909 = alloca i64, align 8
  %_incr917 = alloca i64, align 8
  %_delta937 = alloca i64, align 8
  %year = alloca i32, align 4
  %year_adjust = alloca i32, align 4
  %days = alloca i32, align 4
  %d1014 = alloca i32, align 4
  %yy = alloca i32, align 4
  %yy1131 = alloca i32, align 4
  %_n1155 = alloca i64, align 8
  %_w1157 = alloca i64, align 8
  %_incr1165 = alloca i64, align 8
  %_delta1185 = alloca i64, align 8
  %diff = alloca i32, align 4
  %hour_diff = alloca i32, align 4
  %min_diff = alloca i32, align 4
  %sec_diff = alloca i32, align 4
  %flen = alloca i32, align 4
  %_n1297 = alloca i64, align 8
  %_w1299 = alloca i64, align 8
  %_incr1307 = alloca i64, align 8
  %_delta1327 = alloca i64, align 8
  %frombool = zext i1 %upcase to i8
  store i8 %frombool, i8* %upcase.addr, align 1
  store i8* %s, i8** %s.addr, align 8
  store i64 %maxsize, i64* %maxsize.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.tm* %tp, %struct.tm** %tp.addr, align 8
  store %struct.tm_zone* %tz, %struct.tm_zone** %tz.addr, align 8
  store i32 %ns, i32* %ns.addr, align 4
  %0 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 2
  %1 = load i32, i32* %tm_hour, align 4
  store i32 %1, i32* %hour12, align 4
  store i64 0, i64* %i, align 8
  %2 = load i8*, i8** %s.addr, align 8
  store i8* %2, i8** %p, align 8
  %3 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %4 = bitcast %struct.tm* %copy to i8*
  %5 = bitcast %struct.tm* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 56, i32 8, i1 false)
  store %struct.tm* %copy, %struct.tm** %tp.addr, align 8
  store i8* null, i8** %zone, align 8
  %6 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_zone = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 10
  %7 = load i8*, i8** %tm_zone, align 8
  store i8* %7, i8** %zone, align 8
  %8 = load i8*, i8** %zone, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %zone, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %hour12, align 4
  %cmp = icmp sgt i32 %9, 12
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %10 = load i32, i32* %hour12, align 4
  %sub = sub nsw i32 %10, 12
  store i32 %sub, i32* %hour12, align 4
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %hour12, align 4
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.else
  store i32 12, i32* %hour12, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %if.then.1
  %12 = load i8*, i8** %format.addr, align 8
  store i8* %12, i8** %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1363, %if.end.5
  %13 = load i8*, i8** %f, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %cmp6 = icmp ne i32 %conv, 0
  br i1 %cmp6, label %for.body, label %for.end.1365

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %pad, align 4
  store i32 0, i32* %digits, align 4
  store i32 -1, i32* %width, align 4
  store i8 0, i8* %to_lowcase, align 1
  %15 = load i8, i8* %upcase.addr, align 1
  %tobool8 = trunc i8 %15 to i1
  %frombool9 = zext i1 %tobool8 to i8
  store i8 %frombool9, i8* %to_uppcase, align 1
  store i8 0, i8* %change_case, align 1
  %16 = load i8*, i8** %f, align 8
  %17 = load i8, i8* %16, align 1
  %conv10 = sext i8 %17 to i32
  %cmp11 = icmp ne i32 %conv10, 37
  br i1 %cmp11, label %if.then.13, label %if.end.46

if.then.13:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.13
  store i64 1, i64* %_n, align 8
  %18 = load i32, i32* %width, align 4
  %cmp14 = icmp slt i32 %18, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %19 = load i32, i32* %width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %19, %cond.false ]
  %conv16 = sext i32 %cond to i64
  store i64 %conv16, i64* %_w, align 8
  %20 = load i64, i64* %_n, align 8
  %21 = load i64, i64* %_w, align 8
  %cmp17 = icmp ult i64 %20, %21
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end
  %22 = load i64, i64* %_w, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end
  %23 = load i64, i64* %_n, align 8
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i64 [ %22, %cond.true.19 ], [ %23, %cond.false.20 ]
  store i64 %cond22, i64* %_incr, align 8
  %24 = load i64, i64* %_incr, align 8
  %25 = load i64, i64* %maxsize.addr, align 8
  %26 = load i64, i64* %i, align 8
  %sub23 = sub i64 %25, %26
  %cmp24 = icmp uge i64 %24, %sub23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %cond.end.21
  store i64 0, i64* %retval
  br label %return

if.end.27:                                        ; preds = %cond.end.21
  %27 = load i8*, i8** %p, align 8
  %tobool28 = icmp ne i8* %27, null
  br i1 %tobool28, label %if.then.29, label %if.end.45

if.then.29:                                       ; preds = %if.end.27
  %28 = load i32, i32* %digits, align 4
  %cmp30 = icmp eq i32 %28, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.then.29
  %29 = load i64, i64* %_n, align 8
  %30 = load i64, i64* %_w, align 8
  %cmp32 = icmp ult i64 %29, %30
  br i1 %cmp32, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %land.lhs.true
  %31 = load i32, i32* %width, align 4
  %conv35 = sext i32 %31 to i64
  %32 = load i64, i64* %_n, align 8
  %sub36 = sub i64 %conv35, %32
  store i64 %sub36, i64* %_delta, align 8
  %33 = load i32, i32* %pad, align 4
  %cmp37 = icmp eq i32 %33, 48
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.then.34
  %34 = load i8*, i8** %p, align 8
  %35 = load i64, i64* %_delta, align 8
  call void @llvm.memset.p0i8.i64(i8* %34, i8 48, i64 %35, i32 1, i1 false)
  %36 = load i64, i64* %_delta, align 8
  %37 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.42

if.else.40:                                       ; preds = %if.then.34
  %38 = load i8*, i8** %p, align 8
  %39 = load i64, i64* %_delta, align 8
  call void @llvm.memset.p0i8.i64(i8* %38, i8 32, i64 %39, i32 1, i1 false)
  %40 = load i64, i64* %_delta, align 8
  %41 = load i8*, i8** %p, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %add.ptr41, i8** %p, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %if.then.29
  %42 = load i8*, i8** %f, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %p, align 8
  store i8 %43, i8* %44, align 1
  %45 = load i64, i64* %_n, align 8
  %46 = load i8*, i8** %p, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %add.ptr44, i8** %p, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.43, %if.end.27
  %47 = load i64, i64* %_incr, align 8
  %48 = load i64, i64* %i, align 8
  %add = add i64 %48, %47
  store i64 %add, i64* %i, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.45
  br label %for.inc.1363

if.end.46:                                        ; preds = %for.body
  br label %while.body

while.body:                                       ; preds = %if.end.46, %sw.bb, %sw.bb.49, %sw.bb.50
  %49 = load i8*, i8** %f, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr, i8** %f, align 8
  %50 = load i8, i8* %incdec.ptr, align 1
  %conv47 = sext i8 %50 to i32
  switch i32 %conv47, label %sw.default [
    i32 95, label %sw.bb
    i32 45, label %sw.bb
    i32 48, label %sw.bb
    i32 94, label %sw.bb.49
    i32 35, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %51 = load i8*, i8** %f, align 8
  %52 = load i8, i8* %51, align 1
  %conv48 = sext i8 %52 to i32
  store i32 %conv48, i32* %pad, align 4
  br label %while.body

sw.bb.49:                                         ; preds = %while.body
  store i8 1, i8* %to_uppcase, align 1
  br label %while.body

sw.bb.50:                                         ; preds = %while.body
  store i8 1, i8* %change_case, align 1
  br label %while.body

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %while.end

while.end:                                        ; preds = %sw.epilog
  %53 = load i8*, i8** %f, align 8
  %54 = load i8, i8* %53, align 1
  %conv51 = sext i8 %54 to i32
  %sub52 = sub i32 %conv51, 48
  %cmp53 = icmp ule i32 %sub52, 9
  br i1 %cmp53, label %if.then.55, label %if.end.78

if.then.55:                                       ; preds = %while.end
  store i32 0, i32* %width, align 4
  br label %do.body.56

do.body.56:                                       ; preds = %do.cond, %if.then.55
  %55 = load i32, i32* %width, align 4
  %cmp57 = icmp sgt i32 %55, 214748364
  br i1 %cmp57, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.56
  %56 = load i32, i32* %width, align 4
  %cmp59 = icmp eq i32 %56, 214748364
  br i1 %cmp59, label %land.lhs.true.61, label %if.else.67

land.lhs.true.61:                                 ; preds = %lor.lhs.false
  %57 = load i8*, i8** %f, align 8
  %58 = load i8, i8* %57, align 1
  %conv62 = sext i8 %58 to i32
  %sub63 = sub nsw i32 %conv62, 48
  %cmp64 = icmp sgt i32 %sub63, 7
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.61, %do.body.56
  store i32 2147483647, i32* %width, align 4
  br label %if.end.71

if.else.67:                                       ; preds = %land.lhs.true.61, %lor.lhs.false
  %59 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %59, 10
  store i32 %mul, i32* %width, align 4
  %60 = load i8*, i8** %f, align 8
  %61 = load i8, i8* %60, align 1
  %conv68 = sext i8 %61 to i32
  %sub69 = sub nsw i32 %conv68, 48
  %62 = load i32, i32* %width, align 4
  %add70 = add nsw i32 %62, %sub69
  store i32 %add70, i32* %width, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.67, %if.then.66
  %63 = load i8*, i8** %f, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr72, i8** %f, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.71
  %64 = load i8*, i8** %f, align 8
  %65 = load i8, i8* %64, align 1
  %conv73 = sext i8 %65 to i32
  %sub74 = sub i32 %conv73, 48
  %cmp75 = icmp ule i32 %sub74, 9
  br i1 %cmp75, label %do.body.56, label %do.end.77

do.end.77:                                        ; preds = %do.cond
  br label %if.end.78

if.end.78:                                        ; preds = %do.end.77, %while.end
  %66 = load i8*, i8** %f, align 8
  %67 = load i8, i8* %66, align 1
  %conv79 = sext i8 %67 to i32
  switch i32 %conv79, label %sw.default.83 [
    i32 69, label %sw.bb.80
    i32 79, label %sw.bb.80
  ]

sw.bb.80:                                         ; preds = %if.end.78, %if.end.78
  %68 = load i8*, i8** %f, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr81, i8** %f, align 8
  %69 = load i8, i8* %68, align 1
  %conv82 = sext i8 %69 to i32
  store i32 %conv82, i32* %modifier, align 4
  br label %sw.epilog.84

sw.default.83:                                    ; preds = %if.end.78
  store i32 0, i32* %modifier, align 4
  br label %sw.epilog.84

sw.epilog.84:                                     ; preds = %sw.default.83, %sw.bb.80
  %70 = load i8*, i8** %f, align 8
  %71 = load i8, i8* %70, align 1
  %conv85 = sext i8 %71 to i32
  store i32 %conv85, i32* %format_char, align 4
  %72 = load i32, i32* %format_char, align 4
  switch i32 %72, label %sw.default.1285 [
    i32 37, label %sw.bb.86
    i32 97, label %sw.bb.137
    i32 65, label %sw.bb.145
    i32 98, label %sw.bb.153
    i32 104, label %sw.bb.153
    i32 66, label %sw.bb.161
    i32 99, label %sw.bb.169
    i32 67, label %sw.bb.305
    i32 120, label %sw.bb.328
    i32 68, label %sw.bb.333
    i32 100, label %sw.bb.338
    i32 101, label %sw.bb.346
    i32 70, label %sw.bb.722
    i32 72, label %sw.bb.727
    i32 73, label %sw.bb.736
    i32 107, label %sw.bb.744
    i32 108, label %sw.bb.753
    i32 106, label %sw.bb.761
    i32 77, label %sw.bb.774
    i32 109, label %sw.bb.782
    i32 78, label %sw.bb.795
    i32 110, label %sw.bb.813
    i32 80, label %sw.bb.860
    i32 112, label %sw.bb.861
    i32 82, label %sw.bb.865
    i32 114, label %sw.bb.866
    i32 83, label %sw.bb.867
    i32 115, label %sw.bb.875
    i32 88, label %sw.bb.900
    i32 84, label %sw.bb.905
    i32 116, label %sw.bb.906
    i32 117, label %sw.bb.953
    i32 85, label %sw.bb.961
    i32 86, label %sw.bb.974
    i32 103, label %sw.bb.974
    i32 71, label %sw.bb.974
    i32 87, label %sw.bb.1083
    i32 119, label %sw.bb.1099
    i32 89, label %sw.bb.1108
    i32 121, label %sw.bb.1126
    i32 90, label %sw.bb.1150
    i32 58, label %sw.bb.1211
    i32 122, label %sw.bb.1227
    i32 0, label %sw.bb.1283
  ]

sw.bb.86:                                         ; preds = %sw.epilog.84
  %73 = load i32, i32* %modifier, align 4
  %cmp87 = icmp ne i32 %73, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %sw.bb.86
  br label %bad_format

if.end.90:                                        ; preds = %sw.bb.86
  br label %do.body.91

do.body.91:                                       ; preds = %if.end.90
  store i64 1, i64* %_n92, align 8
  %74 = load i32, i32* %width, align 4
  %cmp94 = icmp slt i32 %74, 0
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %do.body.91
  br label %cond.end.98

cond.false.97:                                    ; preds = %do.body.91
  %75 = load i32, i32* %width, align 4
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.96
  %cond99 = phi i32 [ 0, %cond.true.96 ], [ %75, %cond.false.97 ]
  %conv100 = sext i32 %cond99 to i64
  store i64 %conv100, i64* %_w93, align 8
  %76 = load i64, i64* %_n92, align 8
  %77 = load i64, i64* %_w93, align 8
  %cmp102 = icmp ult i64 %76, %77
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end.98
  %78 = load i64, i64* %_w93, align 8
  br label %cond.end.106

cond.false.105:                                   ; preds = %cond.end.98
  %79 = load i64, i64* %_n92, align 8
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.104
  %cond107 = phi i64 [ %78, %cond.true.104 ], [ %79, %cond.false.105 ]
  store i64 %cond107, i64* %_incr101, align 8
  %80 = load i64, i64* %_incr101, align 8
  %81 = load i64, i64* %maxsize.addr, align 8
  %82 = load i64, i64* %i, align 8
  %sub108 = sub i64 %81, %82
  %cmp109 = icmp uge i64 %80, %sub108
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %cond.end.106
  store i64 0, i64* %retval
  br label %return

if.end.112:                                       ; preds = %cond.end.106
  %83 = load i8*, i8** %p, align 8
  %tobool113 = icmp ne i8* %83, null
  br i1 %tobool113, label %if.then.114, label %if.end.133

if.then.114:                                      ; preds = %if.end.112
  %84 = load i32, i32* %digits, align 4
  %cmp115 = icmp eq i32 %84, 0
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.131

land.lhs.true.117:                                ; preds = %if.then.114
  %85 = load i64, i64* %_n92, align 8
  %86 = load i64, i64* %_w93, align 8
  %cmp118 = icmp ult i64 %85, %86
  br i1 %cmp118, label %if.then.120, label %if.end.131

if.then.120:                                      ; preds = %land.lhs.true.117
  %87 = load i32, i32* %width, align 4
  %conv122 = sext i32 %87 to i64
  %88 = load i64, i64* %_n92, align 8
  %sub123 = sub i64 %conv122, %88
  store i64 %sub123, i64* %_delta121, align 8
  %89 = load i32, i32* %pad, align 4
  %cmp124 = icmp eq i32 %89, 48
  br i1 %cmp124, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %if.then.120
  %90 = load i8*, i8** %p, align 8
  %91 = load i64, i64* %_delta121, align 8
  call void @llvm.memset.p0i8.i64(i8* %90, i8 48, i64 %91, i32 1, i1 false)
  %92 = load i64, i64* %_delta121, align 8
  %93 = load i8*, i8** %p, align 8
  %add.ptr127 = getelementptr inbounds i8, i8* %93, i64 %92
  store i8* %add.ptr127, i8** %p, align 8
  br label %if.end.130

if.else.128:                                      ; preds = %if.then.120
  %94 = load i8*, i8** %p, align 8
  %95 = load i64, i64* %_delta121, align 8
  call void @llvm.memset.p0i8.i64(i8* %94, i8 32, i64 %95, i32 1, i1 false)
  %96 = load i64, i64* %_delta121, align 8
  %97 = load i8*, i8** %p, align 8
  %add.ptr129 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8* %add.ptr129, i8** %p, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.126
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %land.lhs.true.117, %if.then.114
  %98 = load i8*, i8** %f, align 8
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %p, align 8
  store i8 %99, i8* %100, align 1
  %101 = load i64, i64* %_n92, align 8
  %102 = load i8*, i8** %p, align 8
  %add.ptr132 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %add.ptr132, i8** %p, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.131, %if.end.112
  %103 = load i64, i64* %_incr101, align 8
  %104 = load i64, i64* %i, align 8
  %add134 = add i64 %104, %103
  store i64 %add134, i64* %i, align 8
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.133
  br label %sw.epilog.1362

sw.bb.137:                                        ; preds = %sw.epilog.84
  %105 = load i32, i32* %modifier, align 4
  %cmp138 = icmp ne i32 %105, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %sw.bb.137
  br label %bad_format

if.end.141:                                       ; preds = %sw.bb.137
  %106 = load i8, i8* %change_case, align 1
  %tobool142 = trunc i8 %106 to i1
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.141
  store i8 1, i8* %to_uppcase, align 1
  store i8 0, i8* %to_lowcase, align 1
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %if.end.141
  br label %underlying_strftime

sw.bb.145:                                        ; preds = %sw.epilog.84
  %107 = load i32, i32* %modifier, align 4
  %cmp146 = icmp ne i32 %107, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %sw.bb.145
  br label %bad_format

if.end.149:                                       ; preds = %sw.bb.145
  %108 = load i8, i8* %change_case, align 1
  %tobool150 = trunc i8 %108 to i1
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.149
  store i8 1, i8* %to_uppcase, align 1
  store i8 0, i8* %to_lowcase, align 1
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.end.149
  br label %underlying_strftime

sw.bb.153:                                        ; preds = %sw.epilog.84, %sw.epilog.84
  %109 = load i8, i8* %change_case, align 1
  %tobool154 = trunc i8 %109 to i1
  br i1 %tobool154, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %sw.bb.153
  store i8 1, i8* %to_uppcase, align 1
  store i8 0, i8* %to_lowcase, align 1
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %sw.bb.153
  %110 = load i32, i32* %modifier, align 4
  %cmp157 = icmp ne i32 %110, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.156
  br label %bad_format

if.end.160:                                       ; preds = %if.end.156
  br label %underlying_strftime

sw.bb.161:                                        ; preds = %sw.epilog.84
  %111 = load i32, i32* %modifier, align 4
  %cmp162 = icmp ne i32 %111, 0
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %sw.bb.161
  br label %bad_format

if.end.165:                                       ; preds = %sw.bb.161
  %112 = load i8, i8* %change_case, align 1
  %tobool166 = trunc i8 %112 to i1
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end.165
  store i8 1, i8* %to_uppcase, align 1
  store i8 0, i8* %to_lowcase, align 1
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.end.165
  br label %underlying_strftime

sw.bb.169:                                        ; preds = %sw.epilog.84
  %113 = load i32, i32* %modifier, align 4
  %cmp170 = icmp eq i32 %113, 79
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %sw.bb.169
  br label %bad_format

if.end.173:                                       ; preds = %sw.bb.169
  br label %underlying_strftime

subformat:                                        ; preds = %sw.bb.905, %sw.bb.865, %if.end.726, %if.end.337
  %114 = load i8, i8* %to_uppcase, align 1
  %tobool174 = trunc i8 %114 to i1
  %115 = load i8*, i8** %subfmt, align 8
  %116 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %117 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %118 = load i32, i32* %ns.addr, align 4
  %call = call i64 @strftime_case_(i1 zeroext %tobool174, i8* null, i64 -1, i8* %115, %struct.tm* %116, %struct.tm_zone* %117, i32 %118)
  store i64 %call, i64* %len, align 8
  br label %do.body.175

do.body.175:                                      ; preds = %subformat
  %119 = load i64, i64* %len, align 8
  store i64 %119, i64* %_n176, align 8
  %120 = load i32, i32* %width, align 4
  %cmp178 = icmp slt i32 %120, 0
  br i1 %cmp178, label %cond.true.180, label %cond.false.181

cond.true.180:                                    ; preds = %do.body.175
  br label %cond.end.182

cond.false.181:                                   ; preds = %do.body.175
  %121 = load i32, i32* %width, align 4
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.180
  %cond183 = phi i32 [ 0, %cond.true.180 ], [ %121, %cond.false.181 ]
  %conv184 = sext i32 %cond183 to i64
  store i64 %conv184, i64* %_w177, align 8
  %122 = load i64, i64* %_n176, align 8
  %123 = load i64, i64* %_w177, align 8
  %cmp186 = icmp ult i64 %122, %123
  br i1 %cmp186, label %cond.true.188, label %cond.false.189

cond.true.188:                                    ; preds = %cond.end.182
  %124 = load i64, i64* %_w177, align 8
  br label %cond.end.190

cond.false.189:                                   ; preds = %cond.end.182
  %125 = load i64, i64* %_n176, align 8
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.189, %cond.true.188
  %cond191 = phi i64 [ %124, %cond.true.188 ], [ %125, %cond.false.189 ]
  store i64 %cond191, i64* %_incr185, align 8
  %126 = load i64, i64* %_incr185, align 8
  %127 = load i64, i64* %maxsize.addr, align 8
  %128 = load i64, i64* %i, align 8
  %sub192 = sub i64 %127, %128
  %cmp193 = icmp uge i64 %126, %sub192
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %cond.end.190
  store i64 0, i64* %retval
  br label %return

if.end.196:                                       ; preds = %cond.end.190
  %129 = load i8*, i8** %p, align 8
  %tobool197 = icmp ne i8* %129, null
  br i1 %tobool197, label %if.then.198, label %if.end.220

if.then.198:                                      ; preds = %if.end.196
  %130 = load i32, i32* %digits, align 4
  %cmp199 = icmp eq i32 %130, 0
  br i1 %cmp199, label %land.lhs.true.201, label %if.end.215

land.lhs.true.201:                                ; preds = %if.then.198
  %131 = load i64, i64* %_n176, align 8
  %132 = load i64, i64* %_w177, align 8
  %cmp202 = icmp ult i64 %131, %132
  br i1 %cmp202, label %if.then.204, label %if.end.215

if.then.204:                                      ; preds = %land.lhs.true.201
  %133 = load i32, i32* %width, align 4
  %conv206 = sext i32 %133 to i64
  %134 = load i64, i64* %_n176, align 8
  %sub207 = sub i64 %conv206, %134
  store i64 %sub207, i64* %_delta205, align 8
  %135 = load i32, i32* %pad, align 4
  %cmp208 = icmp eq i32 %135, 48
  br i1 %cmp208, label %if.then.210, label %if.else.212

if.then.210:                                      ; preds = %if.then.204
  %136 = load i8*, i8** %p, align 8
  %137 = load i64, i64* %_delta205, align 8
  call void @llvm.memset.p0i8.i64(i8* %136, i8 48, i64 %137, i32 1, i1 false)
  %138 = load i64, i64* %_delta205, align 8
  %139 = load i8*, i8** %p, align 8
  %add.ptr211 = getelementptr inbounds i8, i8* %139, i64 %138
  store i8* %add.ptr211, i8** %p, align 8
  br label %if.end.214

if.else.212:                                      ; preds = %if.then.204
  %140 = load i8*, i8** %p, align 8
  %141 = load i64, i64* %_delta205, align 8
  call void @llvm.memset.p0i8.i64(i8* %140, i8 32, i64 %141, i32 1, i1 false)
  %142 = load i64, i64* %_delta205, align 8
  %143 = load i8*, i8** %p, align 8
  %add.ptr213 = getelementptr inbounds i8, i8* %143, i64 %142
  store i8* %add.ptr213, i8** %p, align 8
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.212, %if.then.210
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %land.lhs.true.201, %if.then.198
  %144 = load i8, i8* %to_uppcase, align 1
  %tobool216 = trunc i8 %144 to i1
  %145 = load i8*, i8** %p, align 8
  %146 = load i64, i64* %maxsize.addr, align 8
  %147 = load i64, i64* %i, align 8
  %sub217 = sub i64 %146, %147
  %148 = load i8*, i8** %subfmt, align 8
  %149 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %150 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %151 = load i32, i32* %ns.addr, align 4
  %call218 = call i64 @strftime_case_(i1 zeroext %tobool216, i8* %145, i64 %sub217, i8* %148, %struct.tm* %149, %struct.tm_zone* %150, i32 %151)
  %152 = load i64, i64* %_n176, align 8
  %153 = load i8*, i8** %p, align 8
  %add.ptr219 = getelementptr inbounds i8, i8* %153, i64 %152
  store i8* %add.ptr219, i8** %p, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.215, %if.end.196
  %154 = load i64, i64* %_incr185, align 8
  %155 = load i64, i64* %i, align 8
  %add221 = add i64 %155, %154
  store i64 %add221, i64* %i, align 8
  br label %do.end.223

do.end.223:                                       ; preds = %if.end.220
  br label %sw.epilog.1362

underlying_strftime:                              ; preds = %if.then.1129, %if.then.1111, %if.end.904, %sw.bb.866, %if.end.864, %if.then.369, %if.end.332, %if.then.312, %if.end.173, %if.end.168, %if.end.160, %if.end.152, %if.end.144
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %ufmt, i32 0, i32 0
  store i8* %arraydecay, i8** %u, align 8
  %156 = load i8*, i8** %u, align 8
  %incdec.ptr225 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr225, i8** %u, align 8
  store i8 32, i8* %156, align 1
  %157 = load i8*, i8** %u, align 8
  %incdec.ptr226 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %incdec.ptr226, i8** %u, align 8
  store i8 37, i8* %157, align 1
  %158 = load i32, i32* %modifier, align 4
  %cmp227 = icmp ne i32 %158, 0
  br i1 %cmp227, label %if.then.229, label %if.end.232

if.then.229:                                      ; preds = %underlying_strftime
  %159 = load i32, i32* %modifier, align 4
  %conv230 = trunc i32 %159 to i8
  %160 = load i8*, i8** %u, align 8
  %incdec.ptr231 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr231, i8** %u, align 8
  store i8 %conv230, i8* %160, align 1
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.229, %underlying_strftime
  %161 = load i32, i32* %format_char, align 4
  %conv233 = trunc i32 %161 to i8
  %162 = load i8*, i8** %u, align 8
  %incdec.ptr234 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr234, i8** %u, align 8
  store i8 %conv233, i8* %162, align 1
  %163 = load i8*, i8** %u, align 8
  store i8 0, i8* %163, align 1
  %arraydecay235 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ubuf, i32 0, i32 0
  %arraydecay236 = getelementptr inbounds [5 x i8], [5 x i8]* %ufmt, i32 0, i32 0
  %164 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %call237 = call i64 @strftime(i8* %arraydecay235, i64 1024, i8* %arraydecay236, %struct.tm* %164) #1
  store i64 %call237, i64* %len224, align 8
  %165 = load i64, i64* %len224, align 8
  %cmp238 = icmp ne i64 %165, 0
  br i1 %cmp238, label %if.then.240, label %if.end.304

if.then.240:                                      ; preds = %if.end.232
  br label %do.body.241

do.body.241:                                      ; preds = %if.then.240
  %166 = load i64, i64* %len224, align 8
  %sub243 = sub i64 %166, 1
  store i64 %sub243, i64* %_n242, align 8
  %167 = load i32, i32* %width, align 4
  %cmp245 = icmp slt i32 %167, 0
  br i1 %cmp245, label %cond.true.247, label %cond.false.248

cond.true.247:                                    ; preds = %do.body.241
  br label %cond.end.249

cond.false.248:                                   ; preds = %do.body.241
  %168 = load i32, i32* %width, align 4
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.248, %cond.true.247
  %cond250 = phi i32 [ 0, %cond.true.247 ], [ %168, %cond.false.248 ]
  %conv251 = sext i32 %cond250 to i64
  store i64 %conv251, i64* %_w244, align 8
  %169 = load i64, i64* %_n242, align 8
  %170 = load i64, i64* %_w244, align 8
  %cmp253 = icmp ult i64 %169, %170
  br i1 %cmp253, label %cond.true.255, label %cond.false.256

cond.true.255:                                    ; preds = %cond.end.249
  %171 = load i64, i64* %_w244, align 8
  br label %cond.end.257

cond.false.256:                                   ; preds = %cond.end.249
  %172 = load i64, i64* %_n242, align 8
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.256, %cond.true.255
  %cond258 = phi i64 [ %171, %cond.true.255 ], [ %172, %cond.false.256 ]
  store i64 %cond258, i64* %_incr252, align 8
  %173 = load i64, i64* %_incr252, align 8
  %174 = load i64, i64* %maxsize.addr, align 8
  %175 = load i64, i64* %i, align 8
  %sub259 = sub i64 %174, %175
  %cmp260 = icmp uge i64 %173, %sub259
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %cond.end.257
  store i64 0, i64* %retval
  br label %return

if.end.263:                                       ; preds = %cond.end.257
  %176 = load i8*, i8** %p, align 8
  %tobool264 = icmp ne i8* %176, null
  br i1 %tobool264, label %if.then.265, label %if.end.300

if.then.265:                                      ; preds = %if.end.263
  %177 = load i32, i32* %digits, align 4
  %cmp266 = icmp eq i32 %177, 0
  br i1 %cmp266, label %land.lhs.true.268, label %if.end.282

land.lhs.true.268:                                ; preds = %if.then.265
  %178 = load i64, i64* %_n242, align 8
  %179 = load i64, i64* %_w244, align 8
  %cmp269 = icmp ult i64 %178, %179
  br i1 %cmp269, label %if.then.271, label %if.end.282

if.then.271:                                      ; preds = %land.lhs.true.268
  %180 = load i32, i32* %width, align 4
  %conv273 = sext i32 %180 to i64
  %181 = load i64, i64* %_n242, align 8
  %sub274 = sub i64 %conv273, %181
  store i64 %sub274, i64* %_delta272, align 8
  %182 = load i32, i32* %pad, align 4
  %cmp275 = icmp eq i32 %182, 48
  br i1 %cmp275, label %if.then.277, label %if.else.279

if.then.277:                                      ; preds = %if.then.271
  %183 = load i8*, i8** %p, align 8
  %184 = load i64, i64* %_delta272, align 8
  call void @llvm.memset.p0i8.i64(i8* %183, i8 48, i64 %184, i32 1, i1 false)
  %185 = load i64, i64* %_delta272, align 8
  %186 = load i8*, i8** %p, align 8
  %add.ptr278 = getelementptr inbounds i8, i8* %186, i64 %185
  store i8* %add.ptr278, i8** %p, align 8
  br label %if.end.281

if.else.279:                                      ; preds = %if.then.271
  %187 = load i8*, i8** %p, align 8
  %188 = load i64, i64* %_delta272, align 8
  call void @llvm.memset.p0i8.i64(i8* %187, i8 32, i64 %188, i32 1, i1 false)
  %189 = load i64, i64* %_delta272, align 8
  %190 = load i8*, i8** %p, align 8
  %add.ptr280 = getelementptr inbounds i8, i8* %190, i64 %189
  store i8* %add.ptr280, i8** %p, align 8
  br label %if.end.281

if.end.281:                                       ; preds = %if.else.279, %if.then.277
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %land.lhs.true.268, %if.then.265
  %191 = load i8, i8* %to_lowcase, align 1
  %tobool283 = trunc i8 %191 to i1
  br i1 %tobool283, label %if.then.284, label %if.else.288

if.then.284:                                      ; preds = %if.end.282
  %192 = load i8*, i8** %p, align 8
  %arraydecay285 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ubuf, i32 0, i32 0
  %add.ptr286 = getelementptr inbounds i8, i8* %arraydecay285, i64 1
  %193 = load i64, i64* %_n242, align 8
  %call287 = call i8* @memcpy_lowcase(i8* %192, i8* %add.ptr286, i64 %193)
  br label %if.end.298

if.else.288:                                      ; preds = %if.end.282
  %194 = load i8, i8* %to_uppcase, align 1
  %tobool289 = trunc i8 %194 to i1
  br i1 %tobool289, label %if.then.290, label %if.else.294

if.then.290:                                      ; preds = %if.else.288
  %195 = load i8*, i8** %p, align 8
  %arraydecay291 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ubuf, i32 0, i32 0
  %add.ptr292 = getelementptr inbounds i8, i8* %arraydecay291, i64 1
  %196 = load i64, i64* %_n242, align 8
  %call293 = call i8* @memcpy_uppcase(i8* %195, i8* %add.ptr292, i64 %196)
  br label %if.end.297

if.else.294:                                      ; preds = %if.else.288
  %197 = load i8*, i8** %p, align 8
  %arraydecay295 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ubuf, i32 0, i32 0
  %add.ptr296 = getelementptr inbounds i8, i8* %arraydecay295, i64 1
  %198 = load i64, i64* %_n242, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %add.ptr296, i64 %198, i32 1, i1 false)
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.294, %if.then.290
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.then.284
  %199 = load i64, i64* %_n242, align 8
  %200 = load i8*, i8** %p, align 8
  %add.ptr299 = getelementptr inbounds i8, i8* %200, i64 %199
  store i8* %add.ptr299, i8** %p, align 8
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.298, %if.end.263
  %201 = load i64, i64* %_incr252, align 8
  %202 = load i64, i64* %i, align 8
  %add301 = add i64 %202, %201
  store i64 %add301, i64* %i, align 8
  br label %do.end.303

do.end.303:                                       ; preds = %if.end.300
  br label %if.end.304

if.end.304:                                       ; preds = %do.end.303, %if.end.232
  br label %sw.epilog.1362

sw.bb.305:                                        ; preds = %sw.epilog.84
  %203 = load i32, i32* %modifier, align 4
  %cmp306 = icmp eq i32 %203, 79
  br i1 %cmp306, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %sw.bb.305
  br label %bad_format

if.end.309:                                       ; preds = %sw.bb.305
  %204 = load i32, i32* %modifier, align 4
  %cmp310 = icmp eq i32 %204, 69
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.end.309
  br label %underlying_strftime

if.end.313:                                       ; preds = %if.end.309
  %205 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %205, i32 0, i32 5
  %206 = load i32, i32* %tm_year, align 4
  %div = sdiv i32 %206, 100
  %add314 = add nsw i32 %div, 19
  store i32 %add314, i32* %century, align 4
  %207 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year315 = getelementptr inbounds %struct.tm, %struct.tm* %207, i32 0, i32 5
  %208 = load i32, i32* %tm_year315, align 4
  %rem = srem i32 %208, 100
  %cmp316 = icmp slt i32 %rem, 0
  br i1 %cmp316, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.313
  %209 = load i32, i32* %century, align 4
  %cmp318 = icmp slt i32 0, %209
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.313
  %210 = phi i1 [ false, %if.end.313 ], [ %cmp318, %land.rhs ]
  %land.ext = zext i1 %210 to i32
  %211 = load i32, i32* %century, align 4
  %sub320 = sub nsw i32 %211, %land.ext
  store i32 %sub320, i32* %century, align 4
  br label %do.body.321

do.body.321:                                      ; preds = %land.end
  store i32 2, i32* %digits, align 4
  %212 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year322 = getelementptr inbounds %struct.tm, %struct.tm* %212, i32 0, i32 5
  %213 = load i32, i32* %tm_year322, align 4
  %cmp323 = icmp slt i32 %213, -1900
  %frombool325 = zext i1 %cmp323 to i8
  store i8 %frombool325, i8* %negative_number, align 1
  %214 = load i32, i32* %century, align 4
  store i32 %214, i32* %u_number_value, align 4
  br label %do_signed_number

do.end.327:                                       ; No predecessors!
  br label %sw.bb.328

sw.bb.328:                                        ; preds = %sw.epilog.84, %do.end.327
  %215 = load i32, i32* %modifier, align 4
  %cmp329 = icmp eq i32 %215, 79
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %sw.bb.328
  br label %bad_format

if.end.332:                                       ; preds = %sw.bb.328
  br label %underlying_strftime

sw.bb.333:                                        ; preds = %sw.epilog.84
  %216 = load i32, i32* %modifier, align 4
  %cmp334 = icmp ne i32 %216, 0
  br i1 %cmp334, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %sw.bb.333
  br label %bad_format

if.end.337:                                       ; preds = %sw.bb.333
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %subfmt, align 8
  br label %subformat

sw.bb.338:                                        ; preds = %sw.epilog.84
  %217 = load i32, i32* %modifier, align 4
  %cmp339 = icmp eq i32 %217, 69
  br i1 %cmp339, label %if.then.341, label %if.end.342

if.then.341:                                      ; preds = %sw.bb.338
  br label %bad_format

if.end.342:                                       ; preds = %sw.bb.338
  br label %do.body.343

do.body.343:                                      ; preds = %if.end.342
  store i32 2, i32* %digits, align 4
  %218 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %218, i32 0, i32 3
  %219 = load i32, i32* %tm_mday, align 4
  store i32 %219, i32* %number_value, align 4
  br label %do_number

do.end.345:                                       ; No predecessors!
  br label %sw.bb.346

sw.bb.346:                                        ; preds = %sw.epilog.84, %do.end.345
  %220 = load i32, i32* %modifier, align 4
  %cmp347 = icmp eq i32 %220, 69
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %sw.bb.346
  br label %bad_format

if.end.350:                                       ; preds = %sw.bb.346
  br label %do.body.351

do.body.351:                                      ; preds = %if.end.350
  store i32 2, i32* %digits, align 4
  %221 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_mday352 = getelementptr inbounds %struct.tm, %struct.tm* %221, i32 0, i32 3
  %222 = load i32, i32* %tm_mday352, align 4
  store i32 %222, i32* %number_value, align 4
  br label %do_number_spacepad

do.end.354:                                       ; No predecessors!
  br label %do_tz_offset

do_tz_offset:                                     ; preds = %do.body.1276, %do.body.1257, %do.body.1248, %do.body.1239, %do.end.354
  store i8 1, i8* %always_output_a_sign, align 1
  br label %do_number_body

do_number_spacepad:                               ; preds = %do.body.758, %do.body.749, %do.body.351
  %223 = load i32, i32* %pad, align 4
  %cmp355 = icmp ne i32 %223, 48
  br i1 %cmp355, label %land.lhs.true.357, label %if.end.361

land.lhs.true.357:                                ; preds = %do_number_spacepad
  %224 = load i32, i32* %pad, align 4
  %cmp358 = icmp ne i32 %224, 45
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %land.lhs.true.357
  store i32 95, i32* %pad, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.360, %land.lhs.true.357, %do_number_spacepad
  br label %do_number

do_number:                                        ; preds = %do.body.1147, %do.body.1104, %do.body.1088, %do.body.1077, %cond.end.1060, %do.body.966, %do.body.954, %do.body.872, %do.body.810, %do.body.779, %do.body.741, %do.body.732, %if.end.361, %do.body.343
  %225 = load i32, i32* %number_value, align 4
  %cmp362 = icmp slt i32 %225, 0
  %frombool364 = zext i1 %cmp362 to i8
  store i8 %frombool364, i8* %negative_number, align 1
  %226 = load i32, i32* %number_value, align 4
  store i32 %226, i32* %u_number_value, align 4
  br label %do_signed_number

do_signed_number:                                 ; preds = %do.body.1117, %do.body.1065, %do.body.787, %do.body.766, %do_number, %do.body.321
  store i8 0, i8* %always_output_a_sign, align 1
  store i32 0, i32* %tz_colon_mask, align 4
  br label %do_number_body

do_number_body:                                   ; preds = %do_signed_number, %do_tz_offset
  %227 = load i32, i32* %modifier, align 4
  %cmp365 = icmp eq i32 %227, 79
  br i1 %cmp365, label %land.lhs.true.367, label %if.end.370

land.lhs.true.367:                                ; preds = %do_number_body
  %228 = load i8, i8* %negative_number, align 1
  %tobool368 = trunc i8 %228 to i1
  br i1 %tobool368, label %if.end.370, label %if.then.369

if.then.369:                                      ; preds = %land.lhs.true.367
  br label %underlying_strftime

if.end.370:                                       ; preds = %land.lhs.true.367, %do_number_body
  %arraydecay371 = getelementptr inbounds [23 x i8], [23 x i8]* %buf, i32 0, i32 0
  %add.ptr372 = getelementptr inbounds i8, i8* %arraydecay371, i64 23
  store i8* %add.ptr372, i8** %bufp, align 8
  %229 = load i8, i8* %negative_number, align 1
  %tobool373 = trunc i8 %229 to i1
  br i1 %tobool373, label %if.then.374, label %if.end.376

if.then.374:                                      ; preds = %if.end.370
  %230 = load i32, i32* %u_number_value, align 4
  %sub375 = sub i32 0, %230
  store i32 %sub375, i32* %u_number_value, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.374, %if.end.370
  br label %do.body.377

do.body.377:                                      ; preds = %lor.end, %if.end.376
  %231 = load i32, i32* %tz_colon_mask, align 4
  %and = and i32 %231, 1
  %tobool378 = icmp ne i32 %and, 0
  br i1 %tobool378, label %if.then.379, label %if.end.381

if.then.379:                                      ; preds = %do.body.377
  %232 = load i8*, i8** %bufp, align 8
  %incdec.ptr380 = getelementptr inbounds i8, i8* %232, i32 -1
  store i8* %incdec.ptr380, i8** %bufp, align 8
  store i8 58, i8* %incdec.ptr380, align 1
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.379, %do.body.377
  %233 = load i32, i32* %tz_colon_mask, align 4
  %shr = ashr i32 %233, 1
  store i32 %shr, i32* %tz_colon_mask, align 4
  %234 = load i32, i32* %u_number_value, align 4
  %rem382 = urem i32 %234, 10
  %add383 = add i32 %rem382, 48
  %conv384 = trunc i32 %add383 to i8
  %235 = load i8*, i8** %bufp, align 8
  %incdec.ptr385 = getelementptr inbounds i8, i8* %235, i32 -1
  store i8* %incdec.ptr385, i8** %bufp, align 8
  store i8 %conv384, i8* %incdec.ptr385, align 1
  %236 = load i32, i32* %u_number_value, align 4
  %div386 = udiv i32 %236, 10
  store i32 %div386, i32* %u_number_value, align 4
  br label %do.cond.387

do.cond.387:                                      ; preds = %if.end.381
  %237 = load i32, i32* %u_number_value, align 4
  %cmp388 = icmp ne i32 %237, 0
  br i1 %cmp388, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond.387
  %238 = load i32, i32* %tz_colon_mask, align 4
  %cmp390 = icmp ne i32 %238, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond.387
  %239 = phi i1 [ true, %do.cond.387 ], [ %cmp390, %lor.rhs ]
  br i1 %239, label %do.body.377, label %do.end.392

do.end.392:                                       ; preds = %lor.end
  br label %do_number_sign_and_padding

do_number_sign_and_padding:                       ; preds = %do.end.899, %do.end.392
  %240 = load i32, i32* %digits, align 4
  %241 = load i32, i32* %width, align 4
  %cmp393 = icmp slt i32 %240, %241
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %do_number_sign_and_padding
  %242 = load i32, i32* %width, align 4
  store i32 %242, i32* %digits, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.395, %do_number_sign_and_padding
  %243 = load i8, i8* %negative_number, align 1
  %tobool397 = trunc i8 %243 to i1
  br i1 %tobool397, label %cond.true.399, label %cond.false.400

cond.true.399:                                    ; preds = %if.end.396
  br label %cond.end.404

cond.false.400:                                   ; preds = %if.end.396
  %244 = load i8, i8* %always_output_a_sign, align 1
  %tobool401 = trunc i8 %244 to i1
  %cond403 = select i1 %tobool401, i32 43, i32 0
  br label %cond.end.404

cond.end.404:                                     ; preds = %cond.false.400, %cond.true.399
  %cond405 = phi i32 [ 45, %cond.true.399 ], [ %cond403, %cond.false.400 ]
  %conv406 = trunc i32 %cond405 to i8
  store i8 %conv406, i8* %sign_char, align 1
  %245 = load i32, i32* %pad, align 4
  %cmp407 = icmp eq i32 %245, 45
  br i1 %cmp407, label %if.then.409, label %if.else.459

if.then.409:                                      ; preds = %cond.end.404
  %246 = load i8, i8* %sign_char, align 1
  %tobool410 = icmp ne i8 %246, 0
  br i1 %tobool410, label %if.then.411, label %if.end.458

if.then.411:                                      ; preds = %if.then.409
  br label %do.body.412

do.body.412:                                      ; preds = %if.then.411
  store i64 1, i64* %_n413, align 8
  %247 = load i32, i32* %width, align 4
  %cmp415 = icmp slt i32 %247, 0
  br i1 %cmp415, label %cond.true.417, label %cond.false.418

cond.true.417:                                    ; preds = %do.body.412
  br label %cond.end.419

cond.false.418:                                   ; preds = %do.body.412
  %248 = load i32, i32* %width, align 4
  br label %cond.end.419

cond.end.419:                                     ; preds = %cond.false.418, %cond.true.417
  %cond420 = phi i32 [ 0, %cond.true.417 ], [ %248, %cond.false.418 ]
  %conv421 = sext i32 %cond420 to i64
  store i64 %conv421, i64* %_w414, align 8
  %249 = load i64, i64* %_n413, align 8
  %250 = load i64, i64* %_w414, align 8
  %cmp423 = icmp ult i64 %249, %250
  br i1 %cmp423, label %cond.true.425, label %cond.false.426

cond.true.425:                                    ; preds = %cond.end.419
  %251 = load i64, i64* %_w414, align 8
  br label %cond.end.427

cond.false.426:                                   ; preds = %cond.end.419
  %252 = load i64, i64* %_n413, align 8
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.false.426, %cond.true.425
  %cond428 = phi i64 [ %251, %cond.true.425 ], [ %252, %cond.false.426 ]
  store i64 %cond428, i64* %_incr422, align 8
  %253 = load i64, i64* %_incr422, align 8
  %254 = load i64, i64* %maxsize.addr, align 8
  %255 = load i64, i64* %i, align 8
  %sub429 = sub i64 %254, %255
  %cmp430 = icmp uge i64 %253, %sub429
  br i1 %cmp430, label %if.then.432, label %if.end.433

if.then.432:                                      ; preds = %cond.end.427
  store i64 0, i64* %retval
  br label %return

if.end.433:                                       ; preds = %cond.end.427
  %256 = load i8*, i8** %p, align 8
  %tobool434 = icmp ne i8* %256, null
  br i1 %tobool434, label %if.then.435, label %if.end.454

if.then.435:                                      ; preds = %if.end.433
  %257 = load i32, i32* %digits, align 4
  %cmp436 = icmp eq i32 %257, 0
  br i1 %cmp436, label %land.lhs.true.438, label %if.end.452

land.lhs.true.438:                                ; preds = %if.then.435
  %258 = load i64, i64* %_n413, align 8
  %259 = load i64, i64* %_w414, align 8
  %cmp439 = icmp ult i64 %258, %259
  br i1 %cmp439, label %if.then.441, label %if.end.452

if.then.441:                                      ; preds = %land.lhs.true.438
  %260 = load i32, i32* %width, align 4
  %conv443 = sext i32 %260 to i64
  %261 = load i64, i64* %_n413, align 8
  %sub444 = sub i64 %conv443, %261
  store i64 %sub444, i64* %_delta442, align 8
  %262 = load i32, i32* %pad, align 4
  %cmp445 = icmp eq i32 %262, 48
  br i1 %cmp445, label %if.then.447, label %if.else.449

if.then.447:                                      ; preds = %if.then.441
  %263 = load i8*, i8** %p, align 8
  %264 = load i64, i64* %_delta442, align 8
  call void @llvm.memset.p0i8.i64(i8* %263, i8 48, i64 %264, i32 1, i1 false)
  %265 = load i64, i64* %_delta442, align 8
  %266 = load i8*, i8** %p, align 8
  %add.ptr448 = getelementptr inbounds i8, i8* %266, i64 %265
  store i8* %add.ptr448, i8** %p, align 8
  br label %if.end.451

if.else.449:                                      ; preds = %if.then.441
  %267 = load i8*, i8** %p, align 8
  %268 = load i64, i64* %_delta442, align 8
  call void @llvm.memset.p0i8.i64(i8* %267, i8 32, i64 %268, i32 1, i1 false)
  %269 = load i64, i64* %_delta442, align 8
  %270 = load i8*, i8** %p, align 8
  %add.ptr450 = getelementptr inbounds i8, i8* %270, i64 %269
  store i8* %add.ptr450, i8** %p, align 8
  br label %if.end.451

if.end.451:                                       ; preds = %if.else.449, %if.then.447
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %land.lhs.true.438, %if.then.435
  %271 = load i8, i8* %sign_char, align 1
  %272 = load i8*, i8** %p, align 8
  store i8 %271, i8* %272, align 1
  %273 = load i64, i64* %_n413, align 8
  %274 = load i8*, i8** %p, align 8
  %add.ptr453 = getelementptr inbounds i8, i8* %274, i64 %273
  store i8* %add.ptr453, i8** %p, align 8
  br label %if.end.454

if.end.454:                                       ; preds = %if.end.452, %if.end.433
  %275 = load i64, i64* %_incr422, align 8
  %276 = load i64, i64* %i, align 8
  %add455 = add i64 %276, %275
  store i64 %add455, i64* %i, align 8
  br label %do.end.457

do.end.457:                                       ; preds = %if.end.454
  br label %if.end.458

if.end.458:                                       ; preds = %do.end.457, %if.then.409
  br label %if.end.660

if.else.459:                                      ; preds = %cond.end.404
  %277 = load i32, i32* %digits, align 4
  %conv460 = sext i32 %277 to i64
  %arraydecay461 = getelementptr inbounds [23 x i8], [23 x i8]* %buf, i32 0, i32 0
  %add.ptr462 = getelementptr inbounds i8, i8* %arraydecay461, i64 23
  %278 = load i8*, i8** %bufp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr462 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %278 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub463 = sub nsw i64 %conv460, %sub.ptr.sub
  %279 = load i8, i8* %sign_char, align 1
  %tobool464 = icmp ne i8 %279, 0
  %lnot = xor i1 %tobool464, true
  %lnot465 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot465 to i32
  %conv466 = sext i32 %lnot.ext to i64
  %sub467 = sub nsw i64 %sub463, %conv466
  %conv468 = trunc i64 %sub467 to i32
  store i32 %conv468, i32* %padding, align 4
  %280 = load i32, i32* %padding, align 4
  %cmp469 = icmp sgt i32 %280, 0
  br i1 %cmp469, label %if.then.471, label %if.else.609

if.then.471:                                      ; preds = %if.else.459
  %281 = load i32, i32* %pad, align 4
  %cmp472 = icmp eq i32 %281, 95
  br i1 %cmp472, label %if.then.474, label %if.else.544

if.then.474:                                      ; preds = %if.then.471
  %282 = load i32, i32* %padding, align 4
  %conv475 = sext i32 %282 to i64
  %283 = load i64, i64* %maxsize.addr, align 8
  %284 = load i64, i64* %i, align 8
  %sub476 = sub i64 %283, %284
  %cmp477 = icmp uge i64 %conv475, %sub476
  br i1 %cmp477, label %if.then.479, label %if.end.480

if.then.479:                                      ; preds = %if.then.474
  store i64 0, i64* %retval
  br label %return

if.end.480:                                       ; preds = %if.then.474
  %285 = load i8*, i8** %p, align 8
  %tobool481 = icmp ne i8* %285, null
  br i1 %tobool481, label %if.then.482, label %if.end.485

if.then.482:                                      ; preds = %if.end.480
  %286 = load i8*, i8** %p, align 8
  %287 = load i32, i32* %padding, align 4
  %conv483 = sext i32 %287 to i64
  call void @llvm.memset.p0i8.i64(i8* %286, i8 32, i64 %conv483, i32 1, i1 false)
  %288 = load i32, i32* %padding, align 4
  %289 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %288 to i64
  %add.ptr484 = getelementptr inbounds i8, i8* %289, i64 %idx.ext
  store i8* %add.ptr484, i8** %p, align 8
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.482, %if.end.480
  %290 = load i32, i32* %padding, align 4
  %conv486 = sext i32 %290 to i64
  %291 = load i64, i64* %i, align 8
  %add487 = add i64 %291, %conv486
  store i64 %add487, i64* %i, align 8
  %292 = load i32, i32* %width, align 4
  %293 = load i32, i32* %padding, align 4
  %cmp488 = icmp sgt i32 %292, %293
  br i1 %cmp488, label %cond.true.490, label %cond.false.492

cond.true.490:                                    ; preds = %if.end.485
  %294 = load i32, i32* %width, align 4
  %295 = load i32, i32* %padding, align 4
  %sub491 = sub nsw i32 %294, %295
  br label %cond.end.493

cond.false.492:                                   ; preds = %if.end.485
  br label %cond.end.493

cond.end.493:                                     ; preds = %cond.false.492, %cond.true.490
  %cond494 = phi i32 [ %sub491, %cond.true.490 ], [ 0, %cond.false.492 ]
  store i32 %cond494, i32* %width, align 4
  %296 = load i8, i8* %sign_char, align 1
  %tobool495 = icmp ne i8 %296, 0
  br i1 %tobool495, label %if.then.496, label %if.end.543

if.then.496:                                      ; preds = %cond.end.493
  br label %do.body.497

do.body.497:                                      ; preds = %if.then.496
  store i64 1, i64* %_n498, align 8
  %297 = load i32, i32* %width, align 4
  %cmp500 = icmp slt i32 %297, 0
  br i1 %cmp500, label %cond.true.502, label %cond.false.503

cond.true.502:                                    ; preds = %do.body.497
  br label %cond.end.504

cond.false.503:                                   ; preds = %do.body.497
  %298 = load i32, i32* %width, align 4
  br label %cond.end.504

cond.end.504:                                     ; preds = %cond.false.503, %cond.true.502
  %cond505 = phi i32 [ 0, %cond.true.502 ], [ %298, %cond.false.503 ]
  %conv506 = sext i32 %cond505 to i64
  store i64 %conv506, i64* %_w499, align 8
  %299 = load i64, i64* %_n498, align 8
  %300 = load i64, i64* %_w499, align 8
  %cmp508 = icmp ult i64 %299, %300
  br i1 %cmp508, label %cond.true.510, label %cond.false.511

cond.true.510:                                    ; preds = %cond.end.504
  %301 = load i64, i64* %_w499, align 8
  br label %cond.end.512

cond.false.511:                                   ; preds = %cond.end.504
  %302 = load i64, i64* %_n498, align 8
  br label %cond.end.512

cond.end.512:                                     ; preds = %cond.false.511, %cond.true.510
  %cond513 = phi i64 [ %301, %cond.true.510 ], [ %302, %cond.false.511 ]
  store i64 %cond513, i64* %_incr507, align 8
  %303 = load i64, i64* %_incr507, align 8
  %304 = load i64, i64* %maxsize.addr, align 8
  %305 = load i64, i64* %i, align 8
  %sub514 = sub i64 %304, %305
  %cmp515 = icmp uge i64 %303, %sub514
  br i1 %cmp515, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %cond.end.512
  store i64 0, i64* %retval
  br label %return

if.end.518:                                       ; preds = %cond.end.512
  %306 = load i8*, i8** %p, align 8
  %tobool519 = icmp ne i8* %306, null
  br i1 %tobool519, label %if.then.520, label %if.end.539

if.then.520:                                      ; preds = %if.end.518
  %307 = load i32, i32* %digits, align 4
  %cmp521 = icmp eq i32 %307, 0
  br i1 %cmp521, label %land.lhs.true.523, label %if.end.537

land.lhs.true.523:                                ; preds = %if.then.520
  %308 = load i64, i64* %_n498, align 8
  %309 = load i64, i64* %_w499, align 8
  %cmp524 = icmp ult i64 %308, %309
  br i1 %cmp524, label %if.then.526, label %if.end.537

if.then.526:                                      ; preds = %land.lhs.true.523
  %310 = load i32, i32* %width, align 4
  %conv528 = sext i32 %310 to i64
  %311 = load i64, i64* %_n498, align 8
  %sub529 = sub i64 %conv528, %311
  store i64 %sub529, i64* %_delta527, align 8
  %312 = load i32, i32* %pad, align 4
  %cmp530 = icmp eq i32 %312, 48
  br i1 %cmp530, label %if.then.532, label %if.else.534

if.then.532:                                      ; preds = %if.then.526
  %313 = load i8*, i8** %p, align 8
  %314 = load i64, i64* %_delta527, align 8
  call void @llvm.memset.p0i8.i64(i8* %313, i8 48, i64 %314, i32 1, i1 false)
  %315 = load i64, i64* %_delta527, align 8
  %316 = load i8*, i8** %p, align 8
  %add.ptr533 = getelementptr inbounds i8, i8* %316, i64 %315
  store i8* %add.ptr533, i8** %p, align 8
  br label %if.end.536

if.else.534:                                      ; preds = %if.then.526
  %317 = load i8*, i8** %p, align 8
  %318 = load i64, i64* %_delta527, align 8
  call void @llvm.memset.p0i8.i64(i8* %317, i8 32, i64 %318, i32 1, i1 false)
  %319 = load i64, i64* %_delta527, align 8
  %320 = load i8*, i8** %p, align 8
  %add.ptr535 = getelementptr inbounds i8, i8* %320, i64 %319
  store i8* %add.ptr535, i8** %p, align 8
  br label %if.end.536

if.end.536:                                       ; preds = %if.else.534, %if.then.532
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %land.lhs.true.523, %if.then.520
  %321 = load i8, i8* %sign_char, align 1
  %322 = load i8*, i8** %p, align 8
  store i8 %321, i8* %322, align 1
  %323 = load i64, i64* %_n498, align 8
  %324 = load i8*, i8** %p, align 8
  %add.ptr538 = getelementptr inbounds i8, i8* %324, i64 %323
  store i8* %add.ptr538, i8** %p, align 8
  br label %if.end.539

if.end.539:                                       ; preds = %if.end.537, %if.end.518
  %325 = load i64, i64* %_incr507, align 8
  %326 = load i64, i64* %i, align 8
  %add540 = add i64 %326, %325
  store i64 %add540, i64* %i, align 8
  br label %do.end.542

do.end.542:                                       ; preds = %if.end.539
  br label %if.end.543

if.end.543:                                       ; preds = %do.end.542, %cond.end.493
  br label %if.end.608

if.else.544:                                      ; preds = %if.then.471
  %327 = load i32, i32* %digits, align 4
  %conv545 = sext i32 %327 to i64
  %328 = load i64, i64* %maxsize.addr, align 8
  %329 = load i64, i64* %i, align 8
  %sub546 = sub i64 %328, %329
  %cmp547 = icmp uge i64 %conv545, %sub546
  br i1 %cmp547, label %if.then.549, label %if.end.550

if.then.549:                                      ; preds = %if.else.544
  store i64 0, i64* %retval
  br label %return

if.end.550:                                       ; preds = %if.else.544
  %330 = load i8, i8* %sign_char, align 1
  %tobool551 = icmp ne i8 %330, 0
  br i1 %tobool551, label %if.then.552, label %if.end.599

if.then.552:                                      ; preds = %if.end.550
  br label %do.body.553

do.body.553:                                      ; preds = %if.then.552
  store i64 1, i64* %_n554, align 8
  %331 = load i32, i32* %width, align 4
  %cmp556 = icmp slt i32 %331, 0
  br i1 %cmp556, label %cond.true.558, label %cond.false.559

cond.true.558:                                    ; preds = %do.body.553
  br label %cond.end.560

cond.false.559:                                   ; preds = %do.body.553
  %332 = load i32, i32* %width, align 4
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.559, %cond.true.558
  %cond561 = phi i32 [ 0, %cond.true.558 ], [ %332, %cond.false.559 ]
  %conv562 = sext i32 %cond561 to i64
  store i64 %conv562, i64* %_w555, align 8
  %333 = load i64, i64* %_n554, align 8
  %334 = load i64, i64* %_w555, align 8
  %cmp564 = icmp ult i64 %333, %334
  br i1 %cmp564, label %cond.true.566, label %cond.false.567

cond.true.566:                                    ; preds = %cond.end.560
  %335 = load i64, i64* %_w555, align 8
  br label %cond.end.568

cond.false.567:                                   ; preds = %cond.end.560
  %336 = load i64, i64* %_n554, align 8
  br label %cond.end.568

cond.end.568:                                     ; preds = %cond.false.567, %cond.true.566
  %cond569 = phi i64 [ %335, %cond.true.566 ], [ %336, %cond.false.567 ]
  store i64 %cond569, i64* %_incr563, align 8
  %337 = load i64, i64* %_incr563, align 8
  %338 = load i64, i64* %maxsize.addr, align 8
  %339 = load i64, i64* %i, align 8
  %sub570 = sub i64 %338, %339
  %cmp571 = icmp uge i64 %337, %sub570
  br i1 %cmp571, label %if.then.573, label %if.end.574

if.then.573:                                      ; preds = %cond.end.568
  store i64 0, i64* %retval
  br label %return

if.end.574:                                       ; preds = %cond.end.568
  %340 = load i8*, i8** %p, align 8
  %tobool575 = icmp ne i8* %340, null
  br i1 %tobool575, label %if.then.576, label %if.end.595

if.then.576:                                      ; preds = %if.end.574
  %341 = load i32, i32* %digits, align 4
  %cmp577 = icmp eq i32 %341, 0
  br i1 %cmp577, label %land.lhs.true.579, label %if.end.593

land.lhs.true.579:                                ; preds = %if.then.576
  %342 = load i64, i64* %_n554, align 8
  %343 = load i64, i64* %_w555, align 8
  %cmp580 = icmp ult i64 %342, %343
  br i1 %cmp580, label %if.then.582, label %if.end.593

if.then.582:                                      ; preds = %land.lhs.true.579
  %344 = load i32, i32* %width, align 4
  %conv584 = sext i32 %344 to i64
  %345 = load i64, i64* %_n554, align 8
  %sub585 = sub i64 %conv584, %345
  store i64 %sub585, i64* %_delta583, align 8
  %346 = load i32, i32* %pad, align 4
  %cmp586 = icmp eq i32 %346, 48
  br i1 %cmp586, label %if.then.588, label %if.else.590

if.then.588:                                      ; preds = %if.then.582
  %347 = load i8*, i8** %p, align 8
  %348 = load i64, i64* %_delta583, align 8
  call void @llvm.memset.p0i8.i64(i8* %347, i8 48, i64 %348, i32 1, i1 false)
  %349 = load i64, i64* %_delta583, align 8
  %350 = load i8*, i8** %p, align 8
  %add.ptr589 = getelementptr inbounds i8, i8* %350, i64 %349
  store i8* %add.ptr589, i8** %p, align 8
  br label %if.end.592

if.else.590:                                      ; preds = %if.then.582
  %351 = load i8*, i8** %p, align 8
  %352 = load i64, i64* %_delta583, align 8
  call void @llvm.memset.p0i8.i64(i8* %351, i8 32, i64 %352, i32 1, i1 false)
  %353 = load i64, i64* %_delta583, align 8
  %354 = load i8*, i8** %p, align 8
  %add.ptr591 = getelementptr inbounds i8, i8* %354, i64 %353
  store i8* %add.ptr591, i8** %p, align 8
  br label %if.end.592

if.end.592:                                       ; preds = %if.else.590, %if.then.588
  br label %if.end.593

if.end.593:                                       ; preds = %if.end.592, %land.lhs.true.579, %if.then.576
  %355 = load i8, i8* %sign_char, align 1
  %356 = load i8*, i8** %p, align 8
  store i8 %355, i8* %356, align 1
  %357 = load i64, i64* %_n554, align 8
  %358 = load i8*, i8** %p, align 8
  %add.ptr594 = getelementptr inbounds i8, i8* %358, i64 %357
  store i8* %add.ptr594, i8** %p, align 8
  br label %if.end.595

if.end.595:                                       ; preds = %if.end.593, %if.end.574
  %359 = load i64, i64* %_incr563, align 8
  %360 = load i64, i64* %i, align 8
  %add596 = add i64 %360, %359
  store i64 %add596, i64* %i, align 8
  br label %do.end.598

do.end.598:                                       ; preds = %if.end.595
  br label %if.end.599

if.end.599:                                       ; preds = %do.end.598, %if.end.550
  %361 = load i8*, i8** %p, align 8
  %tobool600 = icmp ne i8* %361, null
  br i1 %tobool600, label %if.then.601, label %if.end.605

if.then.601:                                      ; preds = %if.end.599
  %362 = load i8*, i8** %p, align 8
  %363 = load i32, i32* %padding, align 4
  %conv602 = sext i32 %363 to i64
  call void @llvm.memset.p0i8.i64(i8* %362, i8 48, i64 %conv602, i32 1, i1 false)
  %364 = load i32, i32* %padding, align 4
  %365 = load i8*, i8** %p, align 8
  %idx.ext603 = sext i32 %364 to i64
  %add.ptr604 = getelementptr inbounds i8, i8* %365, i64 %idx.ext603
  store i8* %add.ptr604, i8** %p, align 8
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.601, %if.end.599
  %366 = load i32, i32* %padding, align 4
  %conv606 = sext i32 %366 to i64
  %367 = load i64, i64* %i, align 8
  %add607 = add i64 %367, %conv606
  store i64 %add607, i64* %i, align 8
  store i32 0, i32* %width, align 4
  br label %if.end.608

if.end.608:                                       ; preds = %if.end.605, %if.end.543
  br label %if.end.659

if.else.609:                                      ; preds = %if.else.459
  %368 = load i8, i8* %sign_char, align 1
  %tobool610 = icmp ne i8 %368, 0
  br i1 %tobool610, label %if.then.611, label %if.end.658

if.then.611:                                      ; preds = %if.else.609
  br label %do.body.612

do.body.612:                                      ; preds = %if.then.611
  store i64 1, i64* %_n613, align 8
  %369 = load i32, i32* %width, align 4
  %cmp615 = icmp slt i32 %369, 0
  br i1 %cmp615, label %cond.true.617, label %cond.false.618

cond.true.617:                                    ; preds = %do.body.612
  br label %cond.end.619

cond.false.618:                                   ; preds = %do.body.612
  %370 = load i32, i32* %width, align 4
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.618, %cond.true.617
  %cond620 = phi i32 [ 0, %cond.true.617 ], [ %370, %cond.false.618 ]
  %conv621 = sext i32 %cond620 to i64
  store i64 %conv621, i64* %_w614, align 8
  %371 = load i64, i64* %_n613, align 8
  %372 = load i64, i64* %_w614, align 8
  %cmp623 = icmp ult i64 %371, %372
  br i1 %cmp623, label %cond.true.625, label %cond.false.626

cond.true.625:                                    ; preds = %cond.end.619
  %373 = load i64, i64* %_w614, align 8
  br label %cond.end.627

cond.false.626:                                   ; preds = %cond.end.619
  %374 = load i64, i64* %_n613, align 8
  br label %cond.end.627

cond.end.627:                                     ; preds = %cond.false.626, %cond.true.625
  %cond628 = phi i64 [ %373, %cond.true.625 ], [ %374, %cond.false.626 ]
  store i64 %cond628, i64* %_incr622, align 8
  %375 = load i64, i64* %_incr622, align 8
  %376 = load i64, i64* %maxsize.addr, align 8
  %377 = load i64, i64* %i, align 8
  %sub629 = sub i64 %376, %377
  %cmp630 = icmp uge i64 %375, %sub629
  br i1 %cmp630, label %if.then.632, label %if.end.633

if.then.632:                                      ; preds = %cond.end.627
  store i64 0, i64* %retval
  br label %return

if.end.633:                                       ; preds = %cond.end.627
  %378 = load i8*, i8** %p, align 8
  %tobool634 = icmp ne i8* %378, null
  br i1 %tobool634, label %if.then.635, label %if.end.654

if.then.635:                                      ; preds = %if.end.633
  %379 = load i32, i32* %digits, align 4
  %cmp636 = icmp eq i32 %379, 0
  br i1 %cmp636, label %land.lhs.true.638, label %if.end.652

land.lhs.true.638:                                ; preds = %if.then.635
  %380 = load i64, i64* %_n613, align 8
  %381 = load i64, i64* %_w614, align 8
  %cmp639 = icmp ult i64 %380, %381
  br i1 %cmp639, label %if.then.641, label %if.end.652

if.then.641:                                      ; preds = %land.lhs.true.638
  %382 = load i32, i32* %width, align 4
  %conv643 = sext i32 %382 to i64
  %383 = load i64, i64* %_n613, align 8
  %sub644 = sub i64 %conv643, %383
  store i64 %sub644, i64* %_delta642, align 8
  %384 = load i32, i32* %pad, align 4
  %cmp645 = icmp eq i32 %384, 48
  br i1 %cmp645, label %if.then.647, label %if.else.649

if.then.647:                                      ; preds = %if.then.641
  %385 = load i8*, i8** %p, align 8
  %386 = load i64, i64* %_delta642, align 8
  call void @llvm.memset.p0i8.i64(i8* %385, i8 48, i64 %386, i32 1, i1 false)
  %387 = load i64, i64* %_delta642, align 8
  %388 = load i8*, i8** %p, align 8
  %add.ptr648 = getelementptr inbounds i8, i8* %388, i64 %387
  store i8* %add.ptr648, i8** %p, align 8
  br label %if.end.651

if.else.649:                                      ; preds = %if.then.641
  %389 = load i8*, i8** %p, align 8
  %390 = load i64, i64* %_delta642, align 8
  call void @llvm.memset.p0i8.i64(i8* %389, i8 32, i64 %390, i32 1, i1 false)
  %391 = load i64, i64* %_delta642, align 8
  %392 = load i8*, i8** %p, align 8
  %add.ptr650 = getelementptr inbounds i8, i8* %392, i64 %391
  store i8* %add.ptr650, i8** %p, align 8
  br label %if.end.651

if.end.651:                                       ; preds = %if.else.649, %if.then.647
  br label %if.end.652

if.end.652:                                       ; preds = %if.end.651, %land.lhs.true.638, %if.then.635
  %393 = load i8, i8* %sign_char, align 1
  %394 = load i8*, i8** %p, align 8
  store i8 %393, i8* %394, align 1
  %395 = load i64, i64* %_n613, align 8
  %396 = load i8*, i8** %p, align 8
  %add.ptr653 = getelementptr inbounds i8, i8* %396, i64 %395
  store i8* %add.ptr653, i8** %p, align 8
  br label %if.end.654

if.end.654:                                       ; preds = %if.end.652, %if.end.633
  %397 = load i64, i64* %_incr622, align 8
  %398 = load i64, i64* %i, align 8
  %add655 = add i64 %398, %397
  store i64 %add655, i64* %i, align 8
  br label %do.end.657

do.end.657:                                       ; preds = %if.end.654
  br label %if.end.658

if.end.658:                                       ; preds = %do.end.657, %if.else.609
  br label %if.end.659

if.end.659:                                       ; preds = %if.end.658, %if.end.608
  br label %if.end.660

if.end.660:                                       ; preds = %if.end.659, %if.end.458
  br label %do.body.661

do.body.661:                                      ; preds = %if.end.660
  %arraydecay663 = getelementptr inbounds [23 x i8], [23 x i8]* %buf, i32 0, i32 0
  %add.ptr664 = getelementptr inbounds i8, i8* %arraydecay663, i64 23
  %399 = load i8*, i8** %bufp, align 8
  %sub.ptr.lhs.cast665 = ptrtoint i8* %add.ptr664 to i64
  %sub.ptr.rhs.cast666 = ptrtoint i8* %399 to i64
  %sub.ptr.sub667 = sub i64 %sub.ptr.lhs.cast665, %sub.ptr.rhs.cast666
  store i64 %sub.ptr.sub667, i64* %_n662, align 8
  %400 = load i32, i32* %width, align 4
  %cmp669 = icmp slt i32 %400, 0
  br i1 %cmp669, label %cond.true.671, label %cond.false.672

cond.true.671:                                    ; preds = %do.body.661
  br label %cond.end.673

cond.false.672:                                   ; preds = %do.body.661
  %401 = load i32, i32* %width, align 4
  br label %cond.end.673

cond.end.673:                                     ; preds = %cond.false.672, %cond.true.671
  %cond674 = phi i32 [ 0, %cond.true.671 ], [ %401, %cond.false.672 ]
  %conv675 = sext i32 %cond674 to i64
  store i64 %conv675, i64* %_w668, align 8
  %402 = load i64, i64* %_n662, align 8
  %403 = load i64, i64* %_w668, align 8
  %cmp677 = icmp ult i64 %402, %403
  br i1 %cmp677, label %cond.true.679, label %cond.false.680

cond.true.679:                                    ; preds = %cond.end.673
  %404 = load i64, i64* %_w668, align 8
  br label %cond.end.681

cond.false.680:                                   ; preds = %cond.end.673
  %405 = load i64, i64* %_n662, align 8
  br label %cond.end.681

cond.end.681:                                     ; preds = %cond.false.680, %cond.true.679
  %cond682 = phi i64 [ %404, %cond.true.679 ], [ %405, %cond.false.680 ]
  store i64 %cond682, i64* %_incr676, align 8
  %406 = load i64, i64* %_incr676, align 8
  %407 = load i64, i64* %maxsize.addr, align 8
  %408 = load i64, i64* %i, align 8
  %sub683 = sub i64 %407, %408
  %cmp684 = icmp uge i64 %406, %sub683
  br i1 %cmp684, label %if.then.686, label %if.end.687

if.then.686:                                      ; preds = %cond.end.681
  store i64 0, i64* %retval
  br label %return

if.end.687:                                       ; preds = %cond.end.681
  %409 = load i8*, i8** %p, align 8
  %tobool688 = icmp ne i8* %409, null
  br i1 %tobool688, label %if.then.689, label %if.end.718

if.then.689:                                      ; preds = %if.end.687
  %410 = load i32, i32* %digits, align 4
  %cmp690 = icmp eq i32 %410, 0
  br i1 %cmp690, label %land.lhs.true.692, label %if.end.706

land.lhs.true.692:                                ; preds = %if.then.689
  %411 = load i64, i64* %_n662, align 8
  %412 = load i64, i64* %_w668, align 8
  %cmp693 = icmp ult i64 %411, %412
  br i1 %cmp693, label %if.then.695, label %if.end.706

if.then.695:                                      ; preds = %land.lhs.true.692
  %413 = load i32, i32* %width, align 4
  %conv697 = sext i32 %413 to i64
  %414 = load i64, i64* %_n662, align 8
  %sub698 = sub i64 %conv697, %414
  store i64 %sub698, i64* %_delta696, align 8
  %415 = load i32, i32* %pad, align 4
  %cmp699 = icmp eq i32 %415, 48
  br i1 %cmp699, label %if.then.701, label %if.else.703

if.then.701:                                      ; preds = %if.then.695
  %416 = load i8*, i8** %p, align 8
  %417 = load i64, i64* %_delta696, align 8
  call void @llvm.memset.p0i8.i64(i8* %416, i8 48, i64 %417, i32 1, i1 false)
  %418 = load i64, i64* %_delta696, align 8
  %419 = load i8*, i8** %p, align 8
  %add.ptr702 = getelementptr inbounds i8, i8* %419, i64 %418
  store i8* %add.ptr702, i8** %p, align 8
  br label %if.end.705

if.else.703:                                      ; preds = %if.then.695
  %420 = load i8*, i8** %p, align 8
  %421 = load i64, i64* %_delta696, align 8
  call void @llvm.memset.p0i8.i64(i8* %420, i8 32, i64 %421, i32 1, i1 false)
  %422 = load i64, i64* %_delta696, align 8
  %423 = load i8*, i8** %p, align 8
  %add.ptr704 = getelementptr inbounds i8, i8* %423, i64 %422
  store i8* %add.ptr704, i8** %p, align 8
  br label %if.end.705

if.end.705:                                       ; preds = %if.else.703, %if.then.701
  br label %if.end.706

if.end.706:                                       ; preds = %if.end.705, %land.lhs.true.692, %if.then.689
  %424 = load i8, i8* %to_lowcase, align 1
  %tobool707 = trunc i8 %424 to i1
  br i1 %tobool707, label %if.then.708, label %if.else.710

if.then.708:                                      ; preds = %if.end.706
  %425 = load i8*, i8** %p, align 8
  %426 = load i8*, i8** %bufp, align 8
  %427 = load i64, i64* %_n662, align 8
  %call709 = call i8* @memcpy_lowcase(i8* %425, i8* %426, i64 %427)
  br label %if.end.716

if.else.710:                                      ; preds = %if.end.706
  %428 = load i8, i8* %to_uppcase, align 1
  %tobool711 = trunc i8 %428 to i1
  br i1 %tobool711, label %if.then.712, label %if.else.714

if.then.712:                                      ; preds = %if.else.710
  %429 = load i8*, i8** %p, align 8
  %430 = load i8*, i8** %bufp, align 8
  %431 = load i64, i64* %_n662, align 8
  %call713 = call i8* @memcpy_uppcase(i8* %429, i8* %430, i64 %431)
  br label %if.end.715

if.else.714:                                      ; preds = %if.else.710
  %432 = load i8*, i8** %p, align 8
  %433 = load i8*, i8** %bufp, align 8
  %434 = load i64, i64* %_n662, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %432, i8* %433, i64 %434, i32 1, i1 false)
  br label %if.end.715

if.end.715:                                       ; preds = %if.else.714, %if.then.712
  br label %if.end.716

if.end.716:                                       ; preds = %if.end.715, %if.then.708
  %435 = load i64, i64* %_n662, align 8
  %436 = load i8*, i8** %p, align 8
  %add.ptr717 = getelementptr inbounds i8, i8* %436, i64 %435
  store i8* %add.ptr717, i8** %p, align 8
  br label %if.end.718

if.end.718:                                       ; preds = %if.end.716, %if.end.687
  %437 = load i64, i64* %_incr676, align 8
  %438 = load i64, i64* %i, align 8
  %add719 = add i64 %438, %437
  store i64 %add719, i64* %i, align 8
  br label %do.end.721

do.end.721:                                       ; preds = %if.end.718
  br label %sw.epilog.1362

sw.bb.722:                                        ; preds = %sw.epilog.84
  %439 = load i32, i32* %modifier, align 4
  %cmp723 = icmp ne i32 %439, 0
  br i1 %cmp723, label %if.then.725, label %if.end.726

if.then.725:                                      ; preds = %sw.bb.722
  br label %bad_format

if.end.726:                                       ; preds = %sw.bb.722
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %subfmt, align 8
  br label %subformat

sw.bb.727:                                        ; preds = %sw.epilog.84
  %440 = load i32, i32* %modifier, align 4
  %cmp728 = icmp eq i32 %440, 69
  br i1 %cmp728, label %if.then.730, label %if.end.731

if.then.730:                                      ; preds = %sw.bb.727
  br label %bad_format

if.end.731:                                       ; preds = %sw.bb.727
  br label %do.body.732

do.body.732:                                      ; preds = %if.end.731
  store i32 2, i32* %digits, align 4
  %441 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_hour733 = getelementptr inbounds %struct.tm, %struct.tm* %441, i32 0, i32 2
  %442 = load i32, i32* %tm_hour733, align 4
  store i32 %442, i32* %number_value, align 4
  br label %do_number

do.end.735:                                       ; No predecessors!
  br label %sw.bb.736

sw.bb.736:                                        ; preds = %sw.epilog.84, %do.end.735
  %443 = load i32, i32* %modifier, align 4
  %cmp737 = icmp eq i32 %443, 69
  br i1 %cmp737, label %if.then.739, label %if.end.740

if.then.739:                                      ; preds = %sw.bb.736
  br label %bad_format

if.end.740:                                       ; preds = %sw.bb.736
  br label %do.body.741

do.body.741:                                      ; preds = %if.end.740
  store i32 2, i32* %digits, align 4
  %444 = load i32, i32* %hour12, align 4
  store i32 %444, i32* %number_value, align 4
  br label %do_number

do.end.743:                                       ; No predecessors!
  br label %sw.bb.744

sw.bb.744:                                        ; preds = %sw.epilog.84, %do.end.743
  %445 = load i32, i32* %modifier, align 4
  %cmp745 = icmp eq i32 %445, 69
  br i1 %cmp745, label %if.then.747, label %if.end.748

if.then.747:                                      ; preds = %sw.bb.744
  br label %bad_format

if.end.748:                                       ; preds = %sw.bb.744
  br label %do.body.749

do.body.749:                                      ; preds = %if.end.748
  store i32 2, i32* %digits, align 4
  %446 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_hour750 = getelementptr inbounds %struct.tm, %struct.tm* %446, i32 0, i32 2
  %447 = load i32, i32* %tm_hour750, align 4
  store i32 %447, i32* %number_value, align 4
  br label %do_number_spacepad

do.end.752:                                       ; No predecessors!
  br label %sw.bb.753

sw.bb.753:                                        ; preds = %sw.epilog.84, %do.end.752
  %448 = load i32, i32* %modifier, align 4
  %cmp754 = icmp eq i32 %448, 69
  br i1 %cmp754, label %if.then.756, label %if.end.757

if.then.756:                                      ; preds = %sw.bb.753
  br label %bad_format

if.end.757:                                       ; preds = %sw.bb.753
  br label %do.body.758

do.body.758:                                      ; preds = %if.end.757
  store i32 2, i32* %digits, align 4
  %449 = load i32, i32* %hour12, align 4
  store i32 %449, i32* %number_value, align 4
  br label %do_number_spacepad

do.end.760:                                       ; No predecessors!
  br label %sw.bb.761

sw.bb.761:                                        ; preds = %sw.epilog.84, %do.end.760
  %450 = load i32, i32* %modifier, align 4
  %cmp762 = icmp eq i32 %450, 69
  br i1 %cmp762, label %if.then.764, label %if.end.765

if.then.764:                                      ; preds = %sw.bb.761
  br label %bad_format

if.end.765:                                       ; preds = %sw.bb.761
  br label %do.body.766

do.body.766:                                      ; preds = %if.end.765
  store i32 3, i32* %digits, align 4
  %451 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %451, i32 0, i32 7
  %452 = load i32, i32* %tm_yday, align 4
  %cmp767 = icmp slt i32 %452, -1
  %frombool769 = zext i1 %cmp767 to i8
  store i8 %frombool769, i8* %negative_number, align 1
  %453 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_yday770 = getelementptr inbounds %struct.tm, %struct.tm* %453, i32 0, i32 7
  %454 = load i32, i32* %tm_yday770, align 4
  %add771 = add i32 %454, 1
  store i32 %add771, i32* %u_number_value, align 4
  br label %do_signed_number

do.end.773:                                       ; No predecessors!
  br label %sw.bb.774

sw.bb.774:                                        ; preds = %sw.epilog.84, %do.end.773
  %455 = load i32, i32* %modifier, align 4
  %cmp775 = icmp eq i32 %455, 69
  br i1 %cmp775, label %if.then.777, label %if.end.778

if.then.777:                                      ; preds = %sw.bb.774
  br label %bad_format

if.end.778:                                       ; preds = %sw.bb.774
  br label %do.body.779

do.body.779:                                      ; preds = %if.end.778
  store i32 2, i32* %digits, align 4
  %456 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %456, i32 0, i32 1
  %457 = load i32, i32* %tm_min, align 4
  store i32 %457, i32* %number_value, align 4
  br label %do_number

do.end.781:                                       ; No predecessors!
  br label %sw.bb.782

sw.bb.782:                                        ; preds = %sw.epilog.84, %do.end.781
  %458 = load i32, i32* %modifier, align 4
  %cmp783 = icmp eq i32 %458, 69
  br i1 %cmp783, label %if.then.785, label %if.end.786

if.then.785:                                      ; preds = %sw.bb.782
  br label %bad_format

if.end.786:                                       ; preds = %sw.bb.782
  br label %do.body.787

do.body.787:                                      ; preds = %if.end.786
  store i32 2, i32* %digits, align 4
  %459 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %459, i32 0, i32 4
  %460 = load i32, i32* %tm_mon, align 4
  %cmp788 = icmp slt i32 %460, -1
  %frombool790 = zext i1 %cmp788 to i8
  store i8 %frombool790, i8* %negative_number, align 1
  %461 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_mon791 = getelementptr inbounds %struct.tm, %struct.tm* %461, i32 0, i32 4
  %462 = load i32, i32* %tm_mon791, align 4
  %add792 = add i32 %462, 1
  store i32 %add792, i32* %u_number_value, align 4
  br label %do_signed_number

do.end.794:                                       ; No predecessors!
  br label %sw.bb.795

sw.bb.795:                                        ; preds = %sw.epilog.84, %do.end.794
  %463 = load i32, i32* %modifier, align 4
  %cmp796 = icmp eq i32 %463, 69
  br i1 %cmp796, label %if.then.798, label %if.end.799

if.then.798:                                      ; preds = %sw.bb.795
  br label %bad_format

if.end.799:                                       ; preds = %sw.bb.795
  %464 = load i32, i32* %ns.addr, align 4
  store i32 %464, i32* %number_value, align 4
  %465 = load i32, i32* %width, align 4
  %cmp800 = icmp eq i32 %465, -1
  br i1 %cmp800, label %if.then.802, label %if.else.803

if.then.802:                                      ; preds = %if.end.799
  store i32 9, i32* %width, align 4
  br label %if.end.809

if.else.803:                                      ; preds = %if.end.799
  %466 = load i32, i32* %width, align 4
  store i32 %466, i32* %j, align 4
  br label %for.cond.804

for.cond.804:                                     ; preds = %for.inc, %if.else.803
  %467 = load i32, i32* %j, align 4
  %cmp805 = icmp slt i32 %467, 9
  br i1 %cmp805, label %for.body.807, label %for.end

for.body.807:                                     ; preds = %for.cond.804
  %468 = load i32, i32* %number_value, align 4
  %div808 = sdiv i32 %468, 10
  store i32 %div808, i32* %number_value, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.807
  %469 = load i32, i32* %j, align 4
  %inc = add nsw i32 %469, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.804

for.end:                                          ; preds = %for.cond.804
  br label %if.end.809

if.end.809:                                       ; preds = %for.end, %if.then.802
  br label %do.body.810

do.body.810:                                      ; preds = %if.end.809
  %470 = load i32, i32* %width, align 4
  store i32 %470, i32* %digits, align 4
  %471 = load i32, i32* %number_value, align 4
  store i32 %471, i32* %number_value, align 4
  br label %do_number

do.end.812:                                       ; No predecessors!
  br label %sw.bb.813

sw.bb.813:                                        ; preds = %sw.epilog.84, %do.end.812
  br label %do.body.814

do.body.814:                                      ; preds = %sw.bb.813
  store i64 1, i64* %_n815, align 8
  %472 = load i32, i32* %width, align 4
  %cmp817 = icmp slt i32 %472, 0
  br i1 %cmp817, label %cond.true.819, label %cond.false.820

cond.true.819:                                    ; preds = %do.body.814
  br label %cond.end.821

cond.false.820:                                   ; preds = %do.body.814
  %473 = load i32, i32* %width, align 4
  br label %cond.end.821

cond.end.821:                                     ; preds = %cond.false.820, %cond.true.819
  %cond822 = phi i32 [ 0, %cond.true.819 ], [ %473, %cond.false.820 ]
  %conv823 = sext i32 %cond822 to i64
  store i64 %conv823, i64* %_w816, align 8
  %474 = load i64, i64* %_n815, align 8
  %475 = load i64, i64* %_w816, align 8
  %cmp825 = icmp ult i64 %474, %475
  br i1 %cmp825, label %cond.true.827, label %cond.false.828

cond.true.827:                                    ; preds = %cond.end.821
  %476 = load i64, i64* %_w816, align 8
  br label %cond.end.829

cond.false.828:                                   ; preds = %cond.end.821
  %477 = load i64, i64* %_n815, align 8
  br label %cond.end.829

cond.end.829:                                     ; preds = %cond.false.828, %cond.true.827
  %cond830 = phi i64 [ %476, %cond.true.827 ], [ %477, %cond.false.828 ]
  store i64 %cond830, i64* %_incr824, align 8
  %478 = load i64, i64* %_incr824, align 8
  %479 = load i64, i64* %maxsize.addr, align 8
  %480 = load i64, i64* %i, align 8
  %sub831 = sub i64 %479, %480
  %cmp832 = icmp uge i64 %478, %sub831
  br i1 %cmp832, label %if.then.834, label %if.end.835

if.then.834:                                      ; preds = %cond.end.829
  store i64 0, i64* %retval
  br label %return

if.end.835:                                       ; preds = %cond.end.829
  %481 = load i8*, i8** %p, align 8
  %tobool836 = icmp ne i8* %481, null
  br i1 %tobool836, label %if.then.837, label %if.end.856

if.then.837:                                      ; preds = %if.end.835
  %482 = load i32, i32* %digits, align 4
  %cmp838 = icmp eq i32 %482, 0
  br i1 %cmp838, label %land.lhs.true.840, label %if.end.854

land.lhs.true.840:                                ; preds = %if.then.837
  %483 = load i64, i64* %_n815, align 8
  %484 = load i64, i64* %_w816, align 8
  %cmp841 = icmp ult i64 %483, %484
  br i1 %cmp841, label %if.then.843, label %if.end.854

if.then.843:                                      ; preds = %land.lhs.true.840
  %485 = load i32, i32* %width, align 4
  %conv845 = sext i32 %485 to i64
  %486 = load i64, i64* %_n815, align 8
  %sub846 = sub i64 %conv845, %486
  store i64 %sub846, i64* %_delta844, align 8
  %487 = load i32, i32* %pad, align 4
  %cmp847 = icmp eq i32 %487, 48
  br i1 %cmp847, label %if.then.849, label %if.else.851

if.then.849:                                      ; preds = %if.then.843
  %488 = load i8*, i8** %p, align 8
  %489 = load i64, i64* %_delta844, align 8
  call void @llvm.memset.p0i8.i64(i8* %488, i8 48, i64 %489, i32 1, i1 false)
  %490 = load i64, i64* %_delta844, align 8
  %491 = load i8*, i8** %p, align 8
  %add.ptr850 = getelementptr inbounds i8, i8* %491, i64 %490
  store i8* %add.ptr850, i8** %p, align 8
  br label %if.end.853

if.else.851:                                      ; preds = %if.then.843
  %492 = load i8*, i8** %p, align 8
  %493 = load i64, i64* %_delta844, align 8
  call void @llvm.memset.p0i8.i64(i8* %492, i8 32, i64 %493, i32 1, i1 false)
  %494 = load i64, i64* %_delta844, align 8
  %495 = load i8*, i8** %p, align 8
  %add.ptr852 = getelementptr inbounds i8, i8* %495, i64 %494
  store i8* %add.ptr852, i8** %p, align 8
  br label %if.end.853

if.end.853:                                       ; preds = %if.else.851, %if.then.849
  br label %if.end.854

if.end.854:                                       ; preds = %if.end.853, %land.lhs.true.840, %if.then.837
  %496 = load i8*, i8** %p, align 8
  store i8 10, i8* %496, align 1
  %497 = load i64, i64* %_n815, align 8
  %498 = load i8*, i8** %p, align 8
  %add.ptr855 = getelementptr inbounds i8, i8* %498, i64 %497
  store i8* %add.ptr855, i8** %p, align 8
  br label %if.end.856

if.end.856:                                       ; preds = %if.end.854, %if.end.835
  %499 = load i64, i64* %_incr824, align 8
  %500 = load i64, i64* %i, align 8
  %add857 = add i64 %500, %499
  store i64 %add857, i64* %i, align 8
  br label %do.end.859

do.end.859:                                       ; preds = %if.end.856
  br label %sw.epilog.1362

sw.bb.860:                                        ; preds = %sw.epilog.84
  store i8 1, i8* %to_lowcase, align 1
  store i32 112, i32* %format_char, align 4
  br label %sw.bb.861

sw.bb.861:                                        ; preds = %sw.epilog.84, %sw.bb.860
  %501 = load i8, i8* %change_case, align 1
  %tobool862 = trunc i8 %501 to i1
  br i1 %tobool862, label %if.then.863, label %if.end.864

if.then.863:                                      ; preds = %sw.bb.861
  store i8 0, i8* %to_uppcase, align 1
  store i8 1, i8* %to_lowcase, align 1
  br label %if.end.864

if.end.864:                                       ; preds = %if.then.863, %sw.bb.861
  br label %underlying_strftime

sw.bb.865:                                        ; preds = %sw.epilog.84
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %subfmt, align 8
  br label %subformat

sw.bb.866:                                        ; preds = %sw.epilog.84
  br label %underlying_strftime

sw.bb.867:                                        ; preds = %sw.epilog.84
  %502 = load i32, i32* %modifier, align 4
  %cmp868 = icmp eq i32 %502, 69
  br i1 %cmp868, label %if.then.870, label %if.end.871

if.then.870:                                      ; preds = %sw.bb.867
  br label %bad_format

if.end.871:                                       ; preds = %sw.bb.867
  br label %do.body.872

do.body.872:                                      ; preds = %if.end.871
  store i32 2, i32* %digits, align 4
  %503 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %503, i32 0, i32 0
  %504 = load i32, i32* %tm_sec, align 4
  store i32 %504, i32* %number_value, align 4
  br label %do_number

do.end.874:                                       ; No predecessors!
  br label %sw.bb.875

sw.bb.875:                                        ; preds = %sw.epilog.84, %do.end.874
  %505 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %506 = bitcast %struct.tm* %ltm to i8*
  %507 = bitcast %struct.tm* %505 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %506, i8* %507, i64 56, i32 8, i1 false)
  %508 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %call876 = call i64 @mktime_z(%struct.tm_zone* %508, %struct.tm* %ltm)
  store i64 %call876, i64* %t, align 8
  %arraydecay877 = getelementptr inbounds [23 x i8], [23 x i8]* %buf, i32 0, i32 0
  %add.ptr878 = getelementptr inbounds i8, i8* %arraydecay877, i64 23
  store i8* %add.ptr878, i8** %bufp, align 8
  %509 = load i64, i64* %t, align 8
  %cmp879 = icmp slt i64 %509, 0
  %frombool881 = zext i1 %cmp879 to i8
  store i8 %frombool881, i8* %negative_number, align 1
  br label %do.body.882

do.body.882:                                      ; preds = %do.cond.896, %sw.bb.875
  %510 = load i64, i64* %t, align 8
  %rem883 = srem i64 %510, 10
  %conv884 = trunc i64 %rem883 to i32
  store i32 %conv884, i32* %d, align 4
  %511 = load i64, i64* %t, align 8
  %div885 = sdiv i64 %511, 10
  store i64 %div885, i64* %t, align 8
  %512 = load i8, i8* %negative_number, align 1
  %tobool886 = trunc i8 %512 to i1
  br i1 %tobool886, label %cond.true.888, label %cond.false.890

cond.true.888:                                    ; preds = %do.body.882
  %513 = load i32, i32* %d, align 4
  %sub889 = sub nsw i32 0, %513
  br label %cond.end.891

cond.false.890:                                   ; preds = %do.body.882
  %514 = load i32, i32* %d, align 4
  br label %cond.end.891

cond.end.891:                                     ; preds = %cond.false.890, %cond.true.888
  %cond892 = phi i32 [ %sub889, %cond.true.888 ], [ %514, %cond.false.890 ]
  %add893 = add nsw i32 %cond892, 48
  %conv894 = trunc i32 %add893 to i8
  %515 = load i8*, i8** %bufp, align 8
  %incdec.ptr895 = getelementptr inbounds i8, i8* %515, i32 -1
  store i8* %incdec.ptr895, i8** %bufp, align 8
  store i8 %conv894, i8* %incdec.ptr895, align 1
  br label %do.cond.896

do.cond.896:                                      ; preds = %cond.end.891
  %516 = load i64, i64* %t, align 8
  %cmp897 = icmp ne i64 %516, 0
  br i1 %cmp897, label %do.body.882, label %do.end.899

do.end.899:                                       ; preds = %do.cond.896
  store i32 1, i32* %digits, align 4
  store i8 0, i8* %always_output_a_sign, align 1
  br label %do_number_sign_and_padding

sw.bb.900:                                        ; preds = %sw.epilog.84
  %517 = load i32, i32* %modifier, align 4
  %cmp901 = icmp eq i32 %517, 79
  br i1 %cmp901, label %if.then.903, label %if.end.904

if.then.903:                                      ; preds = %sw.bb.900
  br label %bad_format

if.end.904:                                       ; preds = %sw.bb.900
  br label %underlying_strftime

sw.bb.905:                                        ; preds = %sw.epilog.84
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** %subfmt, align 8
  br label %subformat

sw.bb.906:                                        ; preds = %sw.epilog.84
  br label %do.body.907

do.body.907:                                      ; preds = %sw.bb.906
  store i64 1, i64* %_n908, align 8
  %518 = load i32, i32* %width, align 4
  %cmp910 = icmp slt i32 %518, 0
  br i1 %cmp910, label %cond.true.912, label %cond.false.913

cond.true.912:                                    ; preds = %do.body.907
  br label %cond.end.914

cond.false.913:                                   ; preds = %do.body.907
  %519 = load i32, i32* %width, align 4
  br label %cond.end.914

cond.end.914:                                     ; preds = %cond.false.913, %cond.true.912
  %cond915 = phi i32 [ 0, %cond.true.912 ], [ %519, %cond.false.913 ]
  %conv916 = sext i32 %cond915 to i64
  store i64 %conv916, i64* %_w909, align 8
  %520 = load i64, i64* %_n908, align 8
  %521 = load i64, i64* %_w909, align 8
  %cmp918 = icmp ult i64 %520, %521
  br i1 %cmp918, label %cond.true.920, label %cond.false.921

cond.true.920:                                    ; preds = %cond.end.914
  %522 = load i64, i64* %_w909, align 8
  br label %cond.end.922

cond.false.921:                                   ; preds = %cond.end.914
  %523 = load i64, i64* %_n908, align 8
  br label %cond.end.922

cond.end.922:                                     ; preds = %cond.false.921, %cond.true.920
  %cond923 = phi i64 [ %522, %cond.true.920 ], [ %523, %cond.false.921 ]
  store i64 %cond923, i64* %_incr917, align 8
  %524 = load i64, i64* %_incr917, align 8
  %525 = load i64, i64* %maxsize.addr, align 8
  %526 = load i64, i64* %i, align 8
  %sub924 = sub i64 %525, %526
  %cmp925 = icmp uge i64 %524, %sub924
  br i1 %cmp925, label %if.then.927, label %if.end.928

if.then.927:                                      ; preds = %cond.end.922
  store i64 0, i64* %retval
  br label %return

if.end.928:                                       ; preds = %cond.end.922
  %527 = load i8*, i8** %p, align 8
  %tobool929 = icmp ne i8* %527, null
  br i1 %tobool929, label %if.then.930, label %if.end.949

if.then.930:                                      ; preds = %if.end.928
  %528 = load i32, i32* %digits, align 4
  %cmp931 = icmp eq i32 %528, 0
  br i1 %cmp931, label %land.lhs.true.933, label %if.end.947

land.lhs.true.933:                                ; preds = %if.then.930
  %529 = load i64, i64* %_n908, align 8
  %530 = load i64, i64* %_w909, align 8
  %cmp934 = icmp ult i64 %529, %530
  br i1 %cmp934, label %if.then.936, label %if.end.947

if.then.936:                                      ; preds = %land.lhs.true.933
  %531 = load i32, i32* %width, align 4
  %conv938 = sext i32 %531 to i64
  %532 = load i64, i64* %_n908, align 8
  %sub939 = sub i64 %conv938, %532
  store i64 %sub939, i64* %_delta937, align 8
  %533 = load i32, i32* %pad, align 4
  %cmp940 = icmp eq i32 %533, 48
  br i1 %cmp940, label %if.then.942, label %if.else.944

if.then.942:                                      ; preds = %if.then.936
  %534 = load i8*, i8** %p, align 8
  %535 = load i64, i64* %_delta937, align 8
  call void @llvm.memset.p0i8.i64(i8* %534, i8 48, i64 %535, i32 1, i1 false)
  %536 = load i64, i64* %_delta937, align 8
  %537 = load i8*, i8** %p, align 8
  %add.ptr943 = getelementptr inbounds i8, i8* %537, i64 %536
  store i8* %add.ptr943, i8** %p, align 8
  br label %if.end.946

if.else.944:                                      ; preds = %if.then.936
  %538 = load i8*, i8** %p, align 8
  %539 = load i64, i64* %_delta937, align 8
  call void @llvm.memset.p0i8.i64(i8* %538, i8 32, i64 %539, i32 1, i1 false)
  %540 = load i64, i64* %_delta937, align 8
  %541 = load i8*, i8** %p, align 8
  %add.ptr945 = getelementptr inbounds i8, i8* %541, i64 %540
  store i8* %add.ptr945, i8** %p, align 8
  br label %if.end.946

if.end.946:                                       ; preds = %if.else.944, %if.then.942
  br label %if.end.947

if.end.947:                                       ; preds = %if.end.946, %land.lhs.true.933, %if.then.930
  %542 = load i8*, i8** %p, align 8
  store i8 9, i8* %542, align 1
  %543 = load i64, i64* %_n908, align 8
  %544 = load i8*, i8** %p, align 8
  %add.ptr948 = getelementptr inbounds i8, i8* %544, i64 %543
  store i8* %add.ptr948, i8** %p, align 8
  br label %if.end.949

if.end.949:                                       ; preds = %if.end.947, %if.end.928
  %545 = load i64, i64* %_incr917, align 8
  %546 = load i64, i64* %i, align 8
  %add950 = add i64 %546, %545
  store i64 %add950, i64* %i, align 8
  br label %do.end.952

do.end.952:                                       ; preds = %if.end.949
  br label %sw.epilog.1362

sw.bb.953:                                        ; preds = %sw.epilog.84
  br label %do.body.954

do.body.954:                                      ; preds = %sw.bb.953
  store i32 1, i32* %digits, align 4
  %547 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %547, i32 0, i32 6
  %548 = load i32, i32* %tm_wday, align 4
  %sub955 = sub nsw i32 %548, 1
  %add956 = add nsw i32 %sub955, 7
  %rem957 = srem i32 %add956, 7
  %add958 = add nsw i32 %rem957, 1
  store i32 %add958, i32* %number_value, align 4
  br label %do_number

do.end.960:                                       ; No predecessors!
  br label %sw.bb.961

sw.bb.961:                                        ; preds = %sw.epilog.84, %do.end.960
  %549 = load i32, i32* %modifier, align 4
  %cmp962 = icmp eq i32 %549, 69
  br i1 %cmp962, label %if.then.964, label %if.end.965

if.then.964:                                      ; preds = %sw.bb.961
  br label %bad_format

if.end.965:                                       ; preds = %sw.bb.961
  br label %do.body.966

do.body.966:                                      ; preds = %if.end.965
  store i32 2, i32* %digits, align 4
  %550 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_yday967 = getelementptr inbounds %struct.tm, %struct.tm* %550, i32 0, i32 7
  %551 = load i32, i32* %tm_yday967, align 4
  %552 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_wday968 = getelementptr inbounds %struct.tm, %struct.tm* %552, i32 0, i32 6
  %553 = load i32, i32* %tm_wday968, align 4
  %sub969 = sub nsw i32 %551, %553
  %add970 = add nsw i32 %sub969, 7
  %div971 = sdiv i32 %add970, 7
  store i32 %div971, i32* %number_value, align 4
  br label %do_number

do.end.973:                                       ; No predecessors!
  br label %sw.bb.974

sw.bb.974:                                        ; preds = %sw.epilog.84, %sw.epilog.84, %sw.epilog.84, %do.end.973
  %554 = load i32, i32* %modifier, align 4
  %cmp975 = icmp eq i32 %554, 69
  br i1 %cmp975, label %if.then.977, label %if.end.978

if.then.977:                                      ; preds = %sw.bb.974
  br label %bad_format

if.end.978:                                       ; preds = %sw.bb.974
  %555 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year979 = getelementptr inbounds %struct.tm, %struct.tm* %555, i32 0, i32 5
  %556 = load i32, i32* %tm_year979, align 4
  %557 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year980 = getelementptr inbounds %struct.tm, %struct.tm* %557, i32 0, i32 5
  %558 = load i32, i32* %tm_year980, align 4
  %cmp981 = icmp slt i32 %558, 0
  %cond983 = select i1 %cmp981, i32 300, i32 -100
  %add984 = add nsw i32 %556, %cond983
  store i32 %add984, i32* %year, align 4
  store i32 0, i32* %year_adjust, align 4
  %559 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_yday985 = getelementptr inbounds %struct.tm, %struct.tm* %559, i32 0, i32 7
  %560 = load i32, i32* %tm_yday985, align 4
  %561 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_wday986 = getelementptr inbounds %struct.tm, %struct.tm* %561, i32 0, i32 6
  %562 = load i32, i32* %tm_wday986, align 4
  %call987 = call i32 @iso_week_days(i32 %560, i32 %562)
  store i32 %call987, i32* %days, align 4
  %563 = load i32, i32* %days, align 4
  %cmp988 = icmp slt i32 %563, 0
  br i1 %cmp988, label %if.then.990, label %if.else.1013

if.then.990:                                      ; preds = %if.end.978
  store i32 -1, i32* %year_adjust, align 4
  %564 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_yday991 = getelementptr inbounds %struct.tm, %struct.tm* %564, i32 0, i32 7
  %565 = load i32, i32* %tm_yday991, align 4
  %566 = load i32, i32* %year, align 4
  %sub992 = sub nsw i32 %566, 1
  %rem993 = srem i32 %sub992, 4
  %cmp994 = icmp eq i32 %rem993, 0
  br i1 %cmp994, label %land.rhs.996, label %land.end.1007

land.rhs.996:                                     ; preds = %if.then.990
  %567 = load i32, i32* %year, align 4
  %sub997 = sub nsw i32 %567, 1
  %rem998 = srem i32 %sub997, 100
  %cmp999 = icmp ne i32 %rem998, 0
  br i1 %cmp999, label %lor.end.1006, label %lor.rhs.1001

lor.rhs.1001:                                     ; preds = %land.rhs.996
  %568 = load i32, i32* %year, align 4
  %sub1002 = sub nsw i32 %568, 1
  %rem1003 = srem i32 %sub1002, 400
  %cmp1004 = icmp eq i32 %rem1003, 0
  br label %lor.end.1006

lor.end.1006:                                     ; preds = %lor.rhs.1001, %land.rhs.996
  %569 = phi i1 [ true, %land.rhs.996 ], [ %cmp1004, %lor.rhs.1001 ]
  br label %land.end.1007

land.end.1007:                                    ; preds = %lor.end.1006, %if.then.990
  %570 = phi i1 [ false, %if.then.990 ], [ %569, %lor.end.1006 ]
  %land.ext1008 = zext i1 %570 to i32
  %add1009 = add nsw i32 365, %land.ext1008
  %add1010 = add nsw i32 %565, %add1009
  %571 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_wday1011 = getelementptr inbounds %struct.tm, %struct.tm* %571, i32 0, i32 6
  %572 = load i32, i32* %tm_wday1011, align 4
  %call1012 = call i32 @iso_week_days(i32 %add1010, i32 %572)
  store i32 %call1012, i32* %days, align 4
  br label %if.end.1038

if.else.1013:                                     ; preds = %if.end.978
  %573 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_yday1015 = getelementptr inbounds %struct.tm, %struct.tm* %573, i32 0, i32 7
  %574 = load i32, i32* %tm_yday1015, align 4
  %575 = load i32, i32* %year, align 4
  %rem1016 = srem i32 %575, 4
  %cmp1017 = icmp eq i32 %rem1016, 0
  br i1 %cmp1017, label %land.rhs.1019, label %land.end.1028

land.rhs.1019:                                    ; preds = %if.else.1013
  %576 = load i32, i32* %year, align 4
  %rem1020 = srem i32 %576, 100
  %cmp1021 = icmp ne i32 %rem1020, 0
  br i1 %cmp1021, label %lor.end.1027, label %lor.rhs.1023

lor.rhs.1023:                                     ; preds = %land.rhs.1019
  %577 = load i32, i32* %year, align 4
  %rem1024 = srem i32 %577, 400
  %cmp1025 = icmp eq i32 %rem1024, 0
  br label %lor.end.1027

lor.end.1027:                                     ; preds = %lor.rhs.1023, %land.rhs.1019
  %578 = phi i1 [ true, %land.rhs.1019 ], [ %cmp1025, %lor.rhs.1023 ]
  br label %land.end.1028

land.end.1028:                                    ; preds = %lor.end.1027, %if.else.1013
  %579 = phi i1 [ false, %if.else.1013 ], [ %578, %lor.end.1027 ]
  %land.ext1029 = zext i1 %579 to i32
  %add1030 = add nsw i32 365, %land.ext1029
  %sub1031 = sub nsw i32 %574, %add1030
  %580 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_wday1032 = getelementptr inbounds %struct.tm, %struct.tm* %580, i32 0, i32 6
  %581 = load i32, i32* %tm_wday1032, align 4
  %call1033 = call i32 @iso_week_days(i32 %sub1031, i32 %581)
  store i32 %call1033, i32* %d1014, align 4
  %582 = load i32, i32* %d1014, align 4
  %cmp1034 = icmp sle i32 0, %582
  br i1 %cmp1034, label %if.then.1036, label %if.end.1037

if.then.1036:                                     ; preds = %land.end.1028
  store i32 1, i32* %year_adjust, align 4
  %583 = load i32, i32* %d1014, align 4
  store i32 %583, i32* %days, align 4
  br label %if.end.1037

if.end.1037:                                      ; preds = %if.then.1036, %land.end.1028
  br label %if.end.1038

if.end.1038:                                      ; preds = %if.end.1037, %land.end.1007
  %584 = load i8*, i8** %f, align 8
  %585 = load i8, i8* %584, align 1
  %conv1039 = sext i8 %585 to i32
  switch i32 %conv1039, label %sw.default.1076 [
    i32 103, label %sw.bb.1040
    i32 71, label %sw.bb.1064
  ]

sw.bb.1040:                                       ; preds = %if.end.1038
  %586 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year1041 = getelementptr inbounds %struct.tm, %struct.tm* %586, i32 0, i32 5
  %587 = load i32, i32* %tm_year1041, align 4
  %rem1042 = srem i32 %587, 100
  %588 = load i32, i32* %year_adjust, align 4
  %add1043 = add nsw i32 %rem1042, %588
  %rem1044 = srem i32 %add1043, 100
  store i32 %rem1044, i32* %yy, align 4
  br label %do.body.1045

do.body.1045:                                     ; preds = %sw.bb.1040
  store i32 2, i32* %digits, align 4
  %589 = load i32, i32* %yy, align 4
  %cmp1046 = icmp sle i32 0, %589
  br i1 %cmp1046, label %cond.true.1048, label %cond.false.1049

cond.true.1048:                                   ; preds = %do.body.1045
  %590 = load i32, i32* %yy, align 4
  br label %cond.end.1060

cond.false.1049:                                  ; preds = %do.body.1045
  %591 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year1050 = getelementptr inbounds %struct.tm, %struct.tm* %591, i32 0, i32 5
  %592 = load i32, i32* %tm_year1050, align 4
  %593 = load i32, i32* %year_adjust, align 4
  %sub1051 = sub nsw i32 -1900, %593
  %cmp1052 = icmp slt i32 %592, %sub1051
  br i1 %cmp1052, label %cond.true.1054, label %cond.false.1056

cond.true.1054:                                   ; preds = %cond.false.1049
  %594 = load i32, i32* %yy, align 4
  %sub1055 = sub nsw i32 0, %594
  br label %cond.end.1058

cond.false.1056:                                  ; preds = %cond.false.1049
  %595 = load i32, i32* %yy, align 4
  %add1057 = add nsw i32 %595, 100
  br label %cond.end.1058

cond.end.1058:                                    ; preds = %cond.false.1056, %cond.true.1054
  %cond1059 = phi i32 [ %sub1055, %cond.true.1054 ], [ %add1057, %cond.false.1056 ]
  br label %cond.end.1060

cond.end.1060:                                    ; preds = %cond.end.1058, %cond.true.1048
  %cond1061 = phi i32 [ %590, %cond.true.1048 ], [ %cond1059, %cond.end.1058 ]
  store i32 %cond1061, i32* %number_value, align 4
  br label %do_number

do.end.1063:                                      ; No predecessors!
  br label %sw.bb.1064

sw.bb.1064:                                       ; preds = %if.end.1038, %do.end.1063
  br label %do.body.1065

do.body.1065:                                     ; preds = %sw.bb.1064
  store i32 4, i32* %digits, align 4
  %596 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year1066 = getelementptr inbounds %struct.tm, %struct.tm* %596, i32 0, i32 5
  %597 = load i32, i32* %tm_year1066, align 4
  %598 = load i32, i32* %year_adjust, align 4
  %sub1067 = sub nsw i32 -1900, %598
  %cmp1068 = icmp slt i32 %597, %sub1067
  %frombool1070 = zext i1 %cmp1068 to i8
  store i8 %frombool1070, i8* %negative_number, align 1
  %599 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year1071 = getelementptr inbounds %struct.tm, %struct.tm* %599, i32 0, i32 5
  %600 = load i32, i32* %tm_year1071, align 4
  %add1072 = add i32 %600, 1900
  %601 = load i32, i32* %year_adjust, align 4
  %add1073 = add i32 %add1072, %601
  store i32 %add1073, i32* %u_number_value, align 4
  br label %do_signed_number

do.end.1075:                                      ; No predecessors!
  br label %sw.default.1076

sw.default.1076:                                  ; preds = %if.end.1038, %do.end.1075
  br label %do.body.1077

do.body.1077:                                     ; preds = %sw.default.1076
  store i32 2, i32* %digits, align 4
  %602 = load i32, i32* %days, align 4
  %div1078 = sdiv i32 %602, 7
  %add1079 = add nsw i32 %div1078, 1
  store i32 %add1079, i32* %number_value, align 4
  br label %do_number

do.end.1081:                                      ; No predecessors!
  br label %sw.epilog.1082

sw.epilog.1082:                                   ; preds = %do.end.1081
  br label %sw.bb.1083

sw.bb.1083:                                       ; preds = %sw.epilog.84, %sw.epilog.1082
  %603 = load i32, i32* %modifier, align 4
  %cmp1084 = icmp eq i32 %603, 69
  br i1 %cmp1084, label %if.then.1086, label %if.end.1087

if.then.1086:                                     ; preds = %sw.bb.1083
  br label %bad_format

if.end.1087:                                      ; preds = %sw.bb.1083
  br label %do.body.1088

do.body.1088:                                     ; preds = %if.end.1087
  store i32 2, i32* %digits, align 4
  %604 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_yday1089 = getelementptr inbounds %struct.tm, %struct.tm* %604, i32 0, i32 7
  %605 = load i32, i32* %tm_yday1089, align 4
  %606 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_wday1090 = getelementptr inbounds %struct.tm, %struct.tm* %606, i32 0, i32 6
  %607 = load i32, i32* %tm_wday1090, align 4
  %sub1091 = sub nsw i32 %607, 1
  %add1092 = add nsw i32 %sub1091, 7
  %rem1093 = srem i32 %add1092, 7
  %sub1094 = sub nsw i32 %605, %rem1093
  %add1095 = add nsw i32 %sub1094, 7
  %div1096 = sdiv i32 %add1095, 7
  store i32 %div1096, i32* %number_value, align 4
  br label %do_number

do.end.1098:                                      ; No predecessors!
  br label %sw.bb.1099

sw.bb.1099:                                       ; preds = %sw.epilog.84, %do.end.1098
  %608 = load i32, i32* %modifier, align 4
  %cmp1100 = icmp eq i32 %608, 69
  br i1 %cmp1100, label %if.then.1102, label %if.end.1103

if.then.1102:                                     ; preds = %sw.bb.1099
  br label %bad_format

if.end.1103:                                      ; preds = %sw.bb.1099
  br label %do.body.1104

do.body.1104:                                     ; preds = %if.end.1103
  store i32 1, i32* %digits, align 4
  %609 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_wday1105 = getelementptr inbounds %struct.tm, %struct.tm* %609, i32 0, i32 6
  %610 = load i32, i32* %tm_wday1105, align 4
  store i32 %610, i32* %number_value, align 4
  br label %do_number

do.end.1107:                                      ; No predecessors!
  br label %sw.bb.1108

sw.bb.1108:                                       ; preds = %sw.epilog.84, %do.end.1107
  %611 = load i32, i32* %modifier, align 4
  %cmp1109 = icmp eq i32 %611, 69
  br i1 %cmp1109, label %if.then.1111, label %if.end.1112

if.then.1111:                                     ; preds = %sw.bb.1108
  br label %underlying_strftime

if.end.1112:                                      ; preds = %sw.bb.1108
  %612 = load i32, i32* %modifier, align 4
  %cmp1113 = icmp eq i32 %612, 79
  br i1 %cmp1113, label %if.then.1115, label %if.end.1116

if.then.1115:                                     ; preds = %if.end.1112
  br label %bad_format

if.end.1116:                                      ; preds = %if.end.1112
  br label %do.body.1117

do.body.1117:                                     ; preds = %if.end.1116
  store i32 4, i32* %digits, align 4
  %613 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year1118 = getelementptr inbounds %struct.tm, %struct.tm* %613, i32 0, i32 5
  %614 = load i32, i32* %tm_year1118, align 4
  %cmp1119 = icmp slt i32 %614, -1900
  %frombool1121 = zext i1 %cmp1119 to i8
  store i8 %frombool1121, i8* %negative_number, align 1
  %615 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year1122 = getelementptr inbounds %struct.tm, %struct.tm* %615, i32 0, i32 5
  %616 = load i32, i32* %tm_year1122, align 4
  %add1123 = add i32 %616, 1900
  store i32 %add1123, i32* %u_number_value, align 4
  br label %do_signed_number

do.end.1125:                                      ; No predecessors!
  br label %sw.bb.1126

sw.bb.1126:                                       ; preds = %sw.epilog.84, %do.end.1125
  %617 = load i32, i32* %modifier, align 4
  %cmp1127 = icmp eq i32 %617, 69
  br i1 %cmp1127, label %if.then.1129, label %if.end.1130

if.then.1129:                                     ; preds = %sw.bb.1126
  br label %underlying_strftime

if.end.1130:                                      ; preds = %sw.bb.1126
  %618 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year1132 = getelementptr inbounds %struct.tm, %struct.tm* %618, i32 0, i32 5
  %619 = load i32, i32* %tm_year1132, align 4
  %rem1133 = srem i32 %619, 100
  store i32 %rem1133, i32* %yy1131, align 4
  %620 = load i32, i32* %yy1131, align 4
  %cmp1134 = icmp slt i32 %620, 0
  br i1 %cmp1134, label %if.then.1136, label %if.end.1146

if.then.1136:                                     ; preds = %if.end.1130
  %621 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_year1137 = getelementptr inbounds %struct.tm, %struct.tm* %621, i32 0, i32 5
  %622 = load i32, i32* %tm_year1137, align 4
  %cmp1138 = icmp slt i32 %622, -1900
  br i1 %cmp1138, label %cond.true.1140, label %cond.false.1142

cond.true.1140:                                   ; preds = %if.then.1136
  %623 = load i32, i32* %yy1131, align 4
  %sub1141 = sub nsw i32 0, %623
  br label %cond.end.1144

cond.false.1142:                                  ; preds = %if.then.1136
  %624 = load i32, i32* %yy1131, align 4
  %add1143 = add nsw i32 %624, 100
  br label %cond.end.1144

cond.end.1144:                                    ; preds = %cond.false.1142, %cond.true.1140
  %cond1145 = phi i32 [ %sub1141, %cond.true.1140 ], [ %add1143, %cond.false.1142 ]
  store i32 %cond1145, i32* %yy1131, align 4
  br label %if.end.1146

if.end.1146:                                      ; preds = %cond.end.1144, %if.end.1130
  br label %do.body.1147

do.body.1147:                                     ; preds = %if.end.1146
  store i32 2, i32* %digits, align 4
  %625 = load i32, i32* %yy1131, align 4
  store i32 %625, i32* %number_value, align 4
  br label %do_number

do.end.1149:                                      ; No predecessors!
  br label %sw.bb.1150

sw.bb.1150:                                       ; preds = %sw.epilog.84, %do.end.1149
  %626 = load i8, i8* %change_case, align 1
  %tobool1151 = trunc i8 %626 to i1
  br i1 %tobool1151, label %if.then.1152, label %if.end.1153

if.then.1152:                                     ; preds = %sw.bb.1150
  store i8 0, i8* %to_uppcase, align 1
  store i8 1, i8* %to_lowcase, align 1
  br label %if.end.1153

if.end.1153:                                      ; preds = %if.then.1152, %sw.bb.1150
  br label %do.body.1154

do.body.1154:                                     ; preds = %if.end.1153
  %627 = load i8*, i8** %zone, align 8
  %call1156 = call i64 @strlen(i8* %627) #6
  store i64 %call1156, i64* %_n1155, align 8
  %628 = load i32, i32* %width, align 4
  %cmp1158 = icmp slt i32 %628, 0
  br i1 %cmp1158, label %cond.true.1160, label %cond.false.1161

cond.true.1160:                                   ; preds = %do.body.1154
  br label %cond.end.1162

cond.false.1161:                                  ; preds = %do.body.1154
  %629 = load i32, i32* %width, align 4
  br label %cond.end.1162

cond.end.1162:                                    ; preds = %cond.false.1161, %cond.true.1160
  %cond1163 = phi i32 [ 0, %cond.true.1160 ], [ %629, %cond.false.1161 ]
  %conv1164 = sext i32 %cond1163 to i64
  store i64 %conv1164, i64* %_w1157, align 8
  %630 = load i64, i64* %_n1155, align 8
  %631 = load i64, i64* %_w1157, align 8
  %cmp1166 = icmp ult i64 %630, %631
  br i1 %cmp1166, label %cond.true.1168, label %cond.false.1169

cond.true.1168:                                   ; preds = %cond.end.1162
  %632 = load i64, i64* %_w1157, align 8
  br label %cond.end.1170

cond.false.1169:                                  ; preds = %cond.end.1162
  %633 = load i64, i64* %_n1155, align 8
  br label %cond.end.1170

cond.end.1170:                                    ; preds = %cond.false.1169, %cond.true.1168
  %cond1171 = phi i64 [ %632, %cond.true.1168 ], [ %633, %cond.false.1169 ]
  store i64 %cond1171, i64* %_incr1165, align 8
  %634 = load i64, i64* %_incr1165, align 8
  %635 = load i64, i64* %maxsize.addr, align 8
  %636 = load i64, i64* %i, align 8
  %sub1172 = sub i64 %635, %636
  %cmp1173 = icmp uge i64 %634, %sub1172
  br i1 %cmp1173, label %if.then.1175, label %if.end.1176

if.then.1175:                                     ; preds = %cond.end.1170
  store i64 0, i64* %retval
  br label %return

if.end.1176:                                      ; preds = %cond.end.1170
  %637 = load i8*, i8** %p, align 8
  %tobool1177 = icmp ne i8* %637, null
  br i1 %tobool1177, label %if.then.1178, label %if.end.1207

if.then.1178:                                     ; preds = %if.end.1176
  %638 = load i32, i32* %digits, align 4
  %cmp1179 = icmp eq i32 %638, 0
  br i1 %cmp1179, label %land.lhs.true.1181, label %if.end.1195

land.lhs.true.1181:                               ; preds = %if.then.1178
  %639 = load i64, i64* %_n1155, align 8
  %640 = load i64, i64* %_w1157, align 8
  %cmp1182 = icmp ult i64 %639, %640
  br i1 %cmp1182, label %if.then.1184, label %if.end.1195

if.then.1184:                                     ; preds = %land.lhs.true.1181
  %641 = load i32, i32* %width, align 4
  %conv1186 = sext i32 %641 to i64
  %642 = load i64, i64* %_n1155, align 8
  %sub1187 = sub i64 %conv1186, %642
  store i64 %sub1187, i64* %_delta1185, align 8
  %643 = load i32, i32* %pad, align 4
  %cmp1188 = icmp eq i32 %643, 48
  br i1 %cmp1188, label %if.then.1190, label %if.else.1192

if.then.1190:                                     ; preds = %if.then.1184
  %644 = load i8*, i8** %p, align 8
  %645 = load i64, i64* %_delta1185, align 8
  call void @llvm.memset.p0i8.i64(i8* %644, i8 48, i64 %645, i32 1, i1 false)
  %646 = load i64, i64* %_delta1185, align 8
  %647 = load i8*, i8** %p, align 8
  %add.ptr1191 = getelementptr inbounds i8, i8* %647, i64 %646
  store i8* %add.ptr1191, i8** %p, align 8
  br label %if.end.1194

if.else.1192:                                     ; preds = %if.then.1184
  %648 = load i8*, i8** %p, align 8
  %649 = load i64, i64* %_delta1185, align 8
  call void @llvm.memset.p0i8.i64(i8* %648, i8 32, i64 %649, i32 1, i1 false)
  %650 = load i64, i64* %_delta1185, align 8
  %651 = load i8*, i8** %p, align 8
  %add.ptr1193 = getelementptr inbounds i8, i8* %651, i64 %650
  store i8* %add.ptr1193, i8** %p, align 8
  br label %if.end.1194

if.end.1194:                                      ; preds = %if.else.1192, %if.then.1190
  br label %if.end.1195

if.end.1195:                                      ; preds = %if.end.1194, %land.lhs.true.1181, %if.then.1178
  %652 = load i8, i8* %to_lowcase, align 1
  %tobool1196 = trunc i8 %652 to i1
  br i1 %tobool1196, label %if.then.1197, label %if.else.1199

if.then.1197:                                     ; preds = %if.end.1195
  %653 = load i8*, i8** %p, align 8
  %654 = load i8*, i8** %zone, align 8
  %655 = load i64, i64* %_n1155, align 8
  %call1198 = call i8* @memcpy_lowcase(i8* %653, i8* %654, i64 %655)
  br label %if.end.1205

if.else.1199:                                     ; preds = %if.end.1195
  %656 = load i8, i8* %to_uppcase, align 1
  %tobool1200 = trunc i8 %656 to i1
  br i1 %tobool1200, label %if.then.1201, label %if.else.1203

if.then.1201:                                     ; preds = %if.else.1199
  %657 = load i8*, i8** %p, align 8
  %658 = load i8*, i8** %zone, align 8
  %659 = load i64, i64* %_n1155, align 8
  %call1202 = call i8* @memcpy_uppcase(i8* %657, i8* %658, i64 %659)
  br label %if.end.1204

if.else.1203:                                     ; preds = %if.else.1199
  %660 = load i8*, i8** %p, align 8
  %661 = load i8*, i8** %zone, align 8
  %662 = load i64, i64* %_n1155, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %660, i8* %661, i64 %662, i32 1, i1 false)
  br label %if.end.1204

if.end.1204:                                      ; preds = %if.else.1203, %if.then.1201
  br label %if.end.1205

if.end.1205:                                      ; preds = %if.end.1204, %if.then.1197
  %663 = load i64, i64* %_n1155, align 8
  %664 = load i8*, i8** %p, align 8
  %add.ptr1206 = getelementptr inbounds i8, i8* %664, i64 %663
  store i8* %add.ptr1206, i8** %p, align 8
  br label %if.end.1207

if.end.1207:                                      ; preds = %if.end.1205, %if.end.1176
  %665 = load i64, i64* %_incr1165, align 8
  %666 = load i64, i64* %i, align 8
  %add1208 = add i64 %666, %665
  store i64 %add1208, i64* %i, align 8
  br label %do.end.1210

do.end.1210:                                      ; preds = %if.end.1207
  br label %sw.epilog.1362

sw.bb.1211:                                       ; preds = %sw.epilog.84
  store i64 1, i64* %colons, align 8
  br label %for.cond.1212

for.cond.1212:                                    ; preds = %for.inc.1217, %sw.bb.1211
  %667 = load i64, i64* %colons, align 8
  %668 = load i8*, i8** %f, align 8
  %arrayidx = getelementptr inbounds i8, i8* %668, i64 %667
  %669 = load i8, i8* %arrayidx, align 1
  %conv1213 = sext i8 %669 to i32
  %cmp1214 = icmp eq i32 %conv1213, 58
  br i1 %cmp1214, label %for.body.1216, label %for.end.1219

for.body.1216:                                    ; preds = %for.cond.1212
  br label %for.inc.1217

for.inc.1217:                                     ; preds = %for.body.1216
  %670 = load i64, i64* %colons, align 8
  %inc1218 = add i64 %670, 1
  store i64 %inc1218, i64* %colons, align 8
  br label %for.cond.1212

for.end.1219:                                     ; preds = %for.cond.1212
  %671 = load i64, i64* %colons, align 8
  %672 = load i8*, i8** %f, align 8
  %arrayidx1220 = getelementptr inbounds i8, i8* %672, i64 %671
  %673 = load i8, i8* %arrayidx1220, align 1
  %conv1221 = sext i8 %673 to i32
  %cmp1222 = icmp ne i32 %conv1221, 122
  br i1 %cmp1222, label %if.then.1224, label %if.end.1225

if.then.1224:                                     ; preds = %for.end.1219
  br label %bad_format

if.end.1225:                                      ; preds = %for.end.1219
  %674 = load i64, i64* %colons, align 8
  %675 = load i8*, i8** %f, align 8
  %add.ptr1226 = getelementptr inbounds i8, i8* %675, i64 %674
  store i8* %add.ptr1226, i8** %f, align 8
  br label %do_z_conversion

sw.bb.1227:                                       ; preds = %sw.epilog.84
  store i64 0, i64* %colons, align 8
  br label %do_z_conversion

do_z_conversion:                                  ; preds = %sw.bb.1227, %if.end.1225
  %676 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %676, i32 0, i32 8
  %677 = load i32, i32* %tm_isdst, align 4
  %cmp1228 = icmp slt i32 %677, 0
  br i1 %cmp1228, label %if.then.1230, label %if.end.1231

if.then.1230:                                     ; preds = %do_z_conversion
  br label %sw.epilog.1362

if.end.1231:                                      ; preds = %do_z_conversion
  %678 = load %struct.tm*, %struct.tm** %tp.addr, align 8
  %tm_gmtoff = getelementptr inbounds %struct.tm, %struct.tm* %678, i32 0, i32 9
  %679 = load i64, i64* %tm_gmtoff, align 8
  %conv1232 = trunc i64 %679 to i32
  store i32 %conv1232, i32* %diff, align 4
  %680 = load i32, i32* %diff, align 4
  %div1233 = sdiv i32 %680, 60
  %div1234 = sdiv i32 %div1233, 60
  store i32 %div1234, i32* %hour_diff, align 4
  %681 = load i32, i32* %diff, align 4
  %div1235 = sdiv i32 %681, 60
  %rem1236 = srem i32 %div1235, 60
  store i32 %rem1236, i32* %min_diff, align 4
  %682 = load i32, i32* %diff, align 4
  %rem1237 = srem i32 %682, 60
  store i32 %rem1237, i32* %sec_diff, align 4
  %683 = load i64, i64* %colons, align 8
  switch i64 %683, label %sw.default.1282 [
    i64 0, label %sw.bb.1238
    i64 1, label %sw.bb.1247
    i64 2, label %sw.bb.1256
    i64 3, label %sw.bb.1267
  ]

sw.bb.1238:                                       ; preds = %if.end.1231
  br label %do.body.1239

do.body.1239:                                     ; preds = %sw.bb.1238
  store i32 5, i32* %digits, align 4
  %684 = load i32, i32* %diff, align 4
  %cmp1240 = icmp slt i32 %684, 0
  %frombool1242 = zext i1 %cmp1240 to i8
  store i8 %frombool1242, i8* %negative_number, align 1
  store i32 0, i32* %tz_colon_mask, align 4
  %685 = load i32, i32* %hour_diff, align 4
  %mul1243 = mul nsw i32 %685, 100
  %686 = load i32, i32* %min_diff, align 4
  %add1244 = add nsw i32 %mul1243, %686
  store i32 %add1244, i32* %u_number_value, align 4
  br label %do_tz_offset

do.end.1246:                                      ; No predecessors!
  br label %sw.bb.1247

sw.bb.1247:                                       ; preds = %if.end.1231, %do.end.1246
  br label %tz_hh_mm

tz_hh_mm:                                         ; preds = %if.then.1274, %sw.bb.1247
  br label %do.body.1248

do.body.1248:                                     ; preds = %tz_hh_mm
  store i32 6, i32* %digits, align 4
  %687 = load i32, i32* %diff, align 4
  %cmp1249 = icmp slt i32 %687, 0
  %frombool1251 = zext i1 %cmp1249 to i8
  store i8 %frombool1251, i8* %negative_number, align 1
  store i32 4, i32* %tz_colon_mask, align 4
  %688 = load i32, i32* %hour_diff, align 4
  %mul1252 = mul nsw i32 %688, 100
  %689 = load i32, i32* %min_diff, align 4
  %add1253 = add nsw i32 %mul1252, %689
  store i32 %add1253, i32* %u_number_value, align 4
  br label %do_tz_offset

do.end.1255:                                      ; No predecessors!
  br label %sw.bb.1256

sw.bb.1256:                                       ; preds = %if.end.1231, %do.end.1255
  br label %tz_hh_mm_ss

tz_hh_mm_ss:                                      ; preds = %if.then.1270, %sw.bb.1256
  br label %do.body.1257

do.body.1257:                                     ; preds = %tz_hh_mm_ss
  store i32 9, i32* %digits, align 4
  %690 = load i32, i32* %diff, align 4
  %cmp1258 = icmp slt i32 %690, 0
  %frombool1260 = zext i1 %cmp1258 to i8
  store i8 %frombool1260, i8* %negative_number, align 1
  store i32 20, i32* %tz_colon_mask, align 4
  %691 = load i32, i32* %hour_diff, align 4
  %mul1261 = mul nsw i32 %691, 10000
  %692 = load i32, i32* %min_diff, align 4
  %mul1262 = mul nsw i32 %692, 100
  %add1263 = add nsw i32 %mul1261, %mul1262
  %693 = load i32, i32* %sec_diff, align 4
  %add1264 = add nsw i32 %add1263, %693
  store i32 %add1264, i32* %u_number_value, align 4
  br label %do_tz_offset

do.end.1266:                                      ; No predecessors!
  br label %sw.bb.1267

sw.bb.1267:                                       ; preds = %if.end.1231, %do.end.1266
  %694 = load i32, i32* %sec_diff, align 4
  %cmp1268 = icmp ne i32 %694, 0
  br i1 %cmp1268, label %if.then.1270, label %if.end.1271

if.then.1270:                                     ; preds = %sw.bb.1267
  br label %tz_hh_mm_ss

if.end.1271:                                      ; preds = %sw.bb.1267
  %695 = load i32, i32* %min_diff, align 4
  %cmp1272 = icmp ne i32 %695, 0
  br i1 %cmp1272, label %if.then.1274, label %if.end.1275

if.then.1274:                                     ; preds = %if.end.1271
  br label %tz_hh_mm

if.end.1275:                                      ; preds = %if.end.1271
  br label %do.body.1276

do.body.1276:                                     ; preds = %if.end.1275
  store i32 3, i32* %digits, align 4
  %696 = load i32, i32* %diff, align 4
  %cmp1277 = icmp slt i32 %696, 0
  %frombool1279 = zext i1 %cmp1277 to i8
  store i8 %frombool1279, i8* %negative_number, align 1
  store i32 0, i32* %tz_colon_mask, align 4
  %697 = load i32, i32* %hour_diff, align 4
  store i32 %697, i32* %u_number_value, align 4
  br label %do_tz_offset

do.end.1281:                                      ; No predecessors!
  br label %sw.default.1282

sw.default.1282:                                  ; preds = %if.end.1231, %do.end.1281
  br label %bad_format

sw.bb.1283:                                       ; preds = %sw.epilog.84
  %698 = load i8*, i8** %f, align 8
  %incdec.ptr1284 = getelementptr inbounds i8, i8* %698, i32 -1
  store i8* %incdec.ptr1284, i8** %f, align 8
  br label %sw.default.1285

sw.default.1285:                                  ; preds = %sw.epilog.84, %sw.bb.1283
  br label %bad_format

bad_format:                                       ; preds = %sw.default.1285, %sw.default.1282, %if.then.1224, %if.then.1115, %if.then.1102, %if.then.1086, %if.then.977, %if.then.964, %if.then.903, %if.then.870, %if.then.798, %if.then.785, %if.then.777, %if.then.764, %if.then.756, %if.then.747, %if.then.739, %if.then.730, %if.then.725, %if.then.349, %if.then.341, %if.then.336, %if.then.331, %if.then.308, %if.then.172, %if.then.164, %if.then.159, %if.then.148, %if.then.140, %if.then.89
  store i32 1, i32* %flen, align 4
  br label %for.cond.1286

for.cond.1286:                                    ; preds = %for.inc.1293, %bad_format
  %699 = load i32, i32* %flen, align 4
  %sub1287 = sub nsw i32 1, %699
  %idxprom = sext i32 %sub1287 to i64
  %700 = load i8*, i8** %f, align 8
  %arrayidx1288 = getelementptr inbounds i8, i8* %700, i64 %idxprom
  %701 = load i8, i8* %arrayidx1288, align 1
  %conv1289 = sext i8 %701 to i32
  %cmp1290 = icmp ne i32 %conv1289, 37
  br i1 %cmp1290, label %for.body.1292, label %for.end.1295

for.body.1292:                                    ; preds = %for.cond.1286
  br label %for.inc.1293

for.inc.1293:                                     ; preds = %for.body.1292
  %702 = load i32, i32* %flen, align 4
  %inc1294 = add nsw i32 %702, 1
  store i32 %inc1294, i32* %flen, align 4
  br label %for.cond.1286

for.end.1295:                                     ; preds = %for.cond.1286
  br label %do.body.1296

do.body.1296:                                     ; preds = %for.end.1295
  %703 = load i32, i32* %flen, align 4
  %conv1298 = sext i32 %703 to i64
  store i64 %conv1298, i64* %_n1297, align 8
  %704 = load i32, i32* %width, align 4
  %cmp1300 = icmp slt i32 %704, 0
  br i1 %cmp1300, label %cond.true.1302, label %cond.false.1303

cond.true.1302:                                   ; preds = %do.body.1296
  br label %cond.end.1304

cond.false.1303:                                  ; preds = %do.body.1296
  %705 = load i32, i32* %width, align 4
  br label %cond.end.1304

cond.end.1304:                                    ; preds = %cond.false.1303, %cond.true.1302
  %cond1305 = phi i32 [ 0, %cond.true.1302 ], [ %705, %cond.false.1303 ]
  %conv1306 = sext i32 %cond1305 to i64
  store i64 %conv1306, i64* %_w1299, align 8
  %706 = load i64, i64* %_n1297, align 8
  %707 = load i64, i64* %_w1299, align 8
  %cmp1308 = icmp ult i64 %706, %707
  br i1 %cmp1308, label %cond.true.1310, label %cond.false.1311

cond.true.1310:                                   ; preds = %cond.end.1304
  %708 = load i64, i64* %_w1299, align 8
  br label %cond.end.1312

cond.false.1311:                                  ; preds = %cond.end.1304
  %709 = load i64, i64* %_n1297, align 8
  br label %cond.end.1312

cond.end.1312:                                    ; preds = %cond.false.1311, %cond.true.1310
  %cond1313 = phi i64 [ %708, %cond.true.1310 ], [ %709, %cond.false.1311 ]
  store i64 %cond1313, i64* %_incr1307, align 8
  %710 = load i64, i64* %_incr1307, align 8
  %711 = load i64, i64* %maxsize.addr, align 8
  %712 = load i64, i64* %i, align 8
  %sub1314 = sub i64 %711, %712
  %cmp1315 = icmp uge i64 %710, %sub1314
  br i1 %cmp1315, label %if.then.1317, label %if.end.1318

if.then.1317:                                     ; preds = %cond.end.1312
  store i64 0, i64* %retval
  br label %return

if.end.1318:                                      ; preds = %cond.end.1312
  %713 = load i8*, i8** %p, align 8
  %tobool1319 = icmp ne i8* %713, null
  br i1 %tobool1319, label %if.then.1320, label %if.end.1358

if.then.1320:                                     ; preds = %if.end.1318
  %714 = load i32, i32* %digits, align 4
  %cmp1321 = icmp eq i32 %714, 0
  br i1 %cmp1321, label %land.lhs.true.1323, label %if.end.1337

land.lhs.true.1323:                               ; preds = %if.then.1320
  %715 = load i64, i64* %_n1297, align 8
  %716 = load i64, i64* %_w1299, align 8
  %cmp1324 = icmp ult i64 %715, %716
  br i1 %cmp1324, label %if.then.1326, label %if.end.1337

if.then.1326:                                     ; preds = %land.lhs.true.1323
  %717 = load i32, i32* %width, align 4
  %conv1328 = sext i32 %717 to i64
  %718 = load i64, i64* %_n1297, align 8
  %sub1329 = sub i64 %conv1328, %718
  store i64 %sub1329, i64* %_delta1327, align 8
  %719 = load i32, i32* %pad, align 4
  %cmp1330 = icmp eq i32 %719, 48
  br i1 %cmp1330, label %if.then.1332, label %if.else.1334

if.then.1332:                                     ; preds = %if.then.1326
  %720 = load i8*, i8** %p, align 8
  %721 = load i64, i64* %_delta1327, align 8
  call void @llvm.memset.p0i8.i64(i8* %720, i8 48, i64 %721, i32 1, i1 false)
  %722 = load i64, i64* %_delta1327, align 8
  %723 = load i8*, i8** %p, align 8
  %add.ptr1333 = getelementptr inbounds i8, i8* %723, i64 %722
  store i8* %add.ptr1333, i8** %p, align 8
  br label %if.end.1336

if.else.1334:                                     ; preds = %if.then.1326
  %724 = load i8*, i8** %p, align 8
  %725 = load i64, i64* %_delta1327, align 8
  call void @llvm.memset.p0i8.i64(i8* %724, i8 32, i64 %725, i32 1, i1 false)
  %726 = load i64, i64* %_delta1327, align 8
  %727 = load i8*, i8** %p, align 8
  %add.ptr1335 = getelementptr inbounds i8, i8* %727, i64 %726
  store i8* %add.ptr1335, i8** %p, align 8
  br label %if.end.1336

if.end.1336:                                      ; preds = %if.else.1334, %if.then.1332
  br label %if.end.1337

if.end.1337:                                      ; preds = %if.end.1336, %land.lhs.true.1323, %if.then.1320
  %728 = load i8, i8* %to_lowcase, align 1
  %tobool1338 = trunc i8 %728 to i1
  br i1 %tobool1338, label %if.then.1339, label %if.else.1344

if.then.1339:                                     ; preds = %if.end.1337
  %729 = load i8*, i8** %p, align 8
  %730 = load i32, i32* %flen, align 4
  %sub1340 = sub nsw i32 1, %730
  %idxprom1341 = sext i32 %sub1340 to i64
  %731 = load i8*, i8** %f, align 8
  %arrayidx1342 = getelementptr inbounds i8, i8* %731, i64 %idxprom1341
  %732 = load i64, i64* %_n1297, align 8
  %call1343 = call i8* @memcpy_lowcase(i8* %729, i8* %arrayidx1342, i64 %732)
  br label %if.end.1356

if.else.1344:                                     ; preds = %if.end.1337
  %733 = load i8, i8* %to_uppcase, align 1
  %tobool1345 = trunc i8 %733 to i1
  br i1 %tobool1345, label %if.then.1346, label %if.else.1351

if.then.1346:                                     ; preds = %if.else.1344
  %734 = load i8*, i8** %p, align 8
  %735 = load i32, i32* %flen, align 4
  %sub1347 = sub nsw i32 1, %735
  %idxprom1348 = sext i32 %sub1347 to i64
  %736 = load i8*, i8** %f, align 8
  %arrayidx1349 = getelementptr inbounds i8, i8* %736, i64 %idxprom1348
  %737 = load i64, i64* %_n1297, align 8
  %call1350 = call i8* @memcpy_uppcase(i8* %734, i8* %arrayidx1349, i64 %737)
  br label %if.end.1355

if.else.1351:                                     ; preds = %if.else.1344
  %738 = load i8*, i8** %p, align 8
  %739 = load i32, i32* %flen, align 4
  %sub1352 = sub nsw i32 1, %739
  %idxprom1353 = sext i32 %sub1352 to i64
  %740 = load i8*, i8** %f, align 8
  %arrayidx1354 = getelementptr inbounds i8, i8* %740, i64 %idxprom1353
  %741 = load i64, i64* %_n1297, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %738, i8* %arrayidx1354, i64 %741, i32 1, i1 false)
  br label %if.end.1355

if.end.1355:                                      ; preds = %if.else.1351, %if.then.1346
  br label %if.end.1356

if.end.1356:                                      ; preds = %if.end.1355, %if.then.1339
  %742 = load i64, i64* %_n1297, align 8
  %743 = load i8*, i8** %p, align 8
  %add.ptr1357 = getelementptr inbounds i8, i8* %743, i64 %742
  store i8* %add.ptr1357, i8** %p, align 8
  br label %if.end.1358

if.end.1358:                                      ; preds = %if.end.1356, %if.end.1318
  %744 = load i64, i64* %_incr1307, align 8
  %745 = load i64, i64* %i, align 8
  %add1359 = add i64 %745, %744
  store i64 %add1359, i64* %i, align 8
  br label %do.end.1361

do.end.1361:                                      ; preds = %if.end.1358
  br label %sw.epilog.1362

sw.epilog.1362:                                   ; preds = %do.end.1361, %if.then.1230, %do.end.1210, %do.end.952, %do.end.859, %do.end.721, %if.end.304, %do.end.223, %do.end.136
  br label %for.inc.1363

for.inc.1363:                                     ; preds = %sw.epilog.1362, %do.end
  %746 = load i8*, i8** %f, align 8
  %incdec.ptr1364 = getelementptr inbounds i8, i8* %746, i32 1
  store i8* %incdec.ptr1364, i8** %f, align 8
  br label %for.cond

for.end.1365:                                     ; preds = %for.cond
  %747 = load i8*, i8** %p, align 8
  %tobool1366 = icmp ne i8* %747, null
  br i1 %tobool1366, label %land.lhs.true.1367, label %if.end.1371

land.lhs.true.1367:                               ; preds = %for.end.1365
  %748 = load i64, i64* %maxsize.addr, align 8
  %cmp1368 = icmp ne i64 %748, 0
  br i1 %cmp1368, label %if.then.1370, label %if.end.1371

if.then.1370:                                     ; preds = %land.lhs.true.1367
  %749 = load i8*, i8** %p, align 8
  store i8 0, i8* %749, align 1
  br label %if.end.1371

if.end.1371:                                      ; preds = %if.then.1370, %land.lhs.true.1367, %for.end.1365
  %750 = load i64, i64* %i, align 8
  store i64 %750, i64* %retval
  br label %return

return:                                           ; preds = %if.end.1371, %if.then.1317, %if.then.1175, %if.then.927, %if.then.834, %if.then.686, %if.then.632, %if.then.573, %if.then.549, %if.then.517, %if.then.479, %if.then.432, %if.then.262, %if.then.195, %if.then.111, %if.then.26
  %751 = load i64, i64* %retval
  ret i64 %751
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

; Function Attrs: nounwind uwtable
define internal i8* @memcpy_lowcase(i8* %dest, i8* %src, i64 %len) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %len.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %len.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %1
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call = call i32 @tolower(i32 %conv) #1
  %conv1 = trunc i32 %call to i8
  %4 = load i64, i64* %len.addr, align 8
  %5 = load i8*, i8** %dest.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %4
  store i8 %conv1, i8* %arrayidx2, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %dest.addr, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal i8* @memcpy_uppcase(i8* %dest, i8* %src, i64 %len) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %len.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %len.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %1
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call = call i32 @toupper(i32 %conv) #1
  %conv1 = trunc i32 %call to i8
  %4 = load i64, i64* %len.addr, align 8
  %5 = load i8*, i8** %dest.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %4
  store i8 %conv1, i8* %arrayidx2, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %dest.addr, align 8
  ret i8* %6
}

declare i64 @mktime_z(%struct.tm_zone*, %struct.tm*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iso_week_days(i32 %yday, i32 %wday) #4 {
entry:
  %yday.addr = alloca i32, align 4
  %wday.addr = alloca i32, align 4
  %big_enough_multiple_of_7 = alloca i32, align 4
  store i32 %yday, i32* %yday.addr, align 4
  store i32 %wday, i32* %wday.addr, align 4
  store i32 378, i32* %big_enough_multiple_of_7, align 4
  %0 = load i32, i32* %yday.addr, align 4
  %1 = load i32, i32* %yday.addr, align 4
  %2 = load i32, i32* %wday.addr, align 4
  %sub = sub nsw i32 %1, %2
  %add = add nsw i32 %sub, 4
  %3 = load i32, i32* %big_enough_multiple_of_7, align 4
  %add1 = add nsw i32 %add, %3
  %rem = srem i32 %add1, 7
  %sub2 = sub nsw i32 %0, %rem
  %add3 = add nsw i32 %sub2, 4
  %sub4 = sub nsw i32 %add3, 1
  ret i32 %sub4
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
