; ModuleID = './src/doprnt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@doprnt.modifier_len = internal constant [5 x i8] c"\00\01\01\01\01", align 1
@.str = private unnamed_addr constant [36 x i8] c"Format width or precision too large\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid format operation %s\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"String for %%s or %%S format is too long\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"'\00", align 1

; Function Attrs: nounwind uwtable
define i64 @doprnt(i8* %buffer, i64 %bufsize, i8* %format, i8* %format_end, %struct.__va_list_tag* %ap) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %format_end.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %fmt = alloca i8*, align 8
  %bufptr = alloca i8*, align 8
  %tembuf = alloca [408 x i8], align 16
  %size_allocated = alloca i64, align 8
  %sprintf_buffer = alloca i8*, align 8
  %big_buffer = alloca i8*, align 8
  %quoting_style = alloca i32, align 4
  %tem = alloca i64, align 8
  %string = alloca i8*, align 8
  %fixed_buffer = alloca [20 x i8], align 16
  %fmtcpy = alloca i8*, align 8
  %minlen = alloca i32, align 4
  %charbuf = alloca [6 x i8], align 1
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %fmt0 = alloca i8*, align 8
  %fmtchar = alloca i8, align 1
  %size_bound = alloca i64, align 8
  %width = alloca i64, align 8
  %length_modifier = alloca i32, align 4
  %maxmlen = alloca i32, align 4
  %mlen = alloca i32, align 4
  %n = alloca i64, align 8
  %v = alloca i32, align 4
  %v162 = alloca i64, align 8
  %v177 = alloca i64, align 8
  %v192 = alloca i64, align 8
  %v207 = alloca i64, align 8
  %v223 = alloca i32, align 4
  %v238 = alloca i64, align 8
  %v254 = alloca i64, align 8
  %v269 = alloca i64, align 8
  %d = alloca double, align 8
  %chr = alloca i32, align 4
  %src = alloca i8*, align 8
  %srclen = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8* %format_end, i8** %format_end.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  %0 = load i8*, i8** %format.addr, align 8
  store i8* %0, i8** %fmt, align 8
  %1 = load i8*, i8** %buffer.addr, align 8
  store i8* %1, i8** %bufptr, align 8
  store i64 408, i64* %size_allocated, align 8
  %arraydecay = getelementptr inbounds [408 x i8], [408 x i8]* %tembuf, i32 0, i32 0
  store i8* %arraydecay, i8** %sprintf_buffer, align 8
  store i8* null, i8** %big_buffer, align 8
  %call = call i32 @text_quoting_style()
  store i32 %call, i32* %quoting_style, align 4
  store i64 -1, i64* %tem, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %2 = load i8*, i8** %format_end.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %format.addr, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %call2 = call i64 @strlen(i8* %4) #6
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %call2
  store i8* %add.ptr, i8** %format_end.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %format_end.addr, align 8
  %6 = load i8*, i8** %format.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp3 = icmp ult i64 %sub.ptr.sub, 19
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %arraydecay4 = getelementptr inbounds [20 x i8], [20 x i8]* %fixed_buffer, i32 0, i32 0
  br label %cond.end.24

cond.false:                                       ; preds = %if.end
  %7 = load i8*, i8** %format_end.addr, align 8
  %8 = load i8*, i8** %format.addr, align 8
  %sub.ptr.lhs.cast5 = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %8 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %add = add nsw i64 %sub.ptr.sub7, 1
  %9 = load i64, i64* %sa_avail, align 8
  %cmp8 = icmp sle i64 %add, %9
  br i1 %cmp8, label %cond.true.9, label %cond.false.18

cond.true.9:                                      ; preds = %cond.false
  %10 = load i8*, i8** %format_end.addr, align 8
  %11 = load i8*, i8** %format.addr, align 8
  %sub.ptr.lhs.cast10 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %11 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %add13 = add nsw i64 %sub.ptr.sub12, 1
  %12 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %12, %add13
  store i64 %sub, i64* %sa_avail, align 8
  %13 = load i8*, i8** %format_end.addr, align 8
  %14 = load i8*, i8** %format.addr, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %14 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %add17 = add nsw i64 %sub.ptr.sub16, 1
  %15 = alloca i8, i64 %add17
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false
  store i8 1, i8* %sa_must_free, align 1
  %16 = load i8*, i8** %format_end.addr, align 8
  %17 = load i8*, i8** %format.addr, align 8
  %sub.ptr.lhs.cast19 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %17 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %add22 = add nsw i64 %sub.ptr.sub21, 1
  %call23 = call i8* @record_xmalloc(i64 %add22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.9
  %cond = phi i8* [ %15, %cond.true.9 ], [ %call23, %cond.false.18 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end, %cond.true
  %cond25 = phi i8* [ %arraydecay4, %cond.true ], [ %cond, %cond.end ]
  store i8* %cond25, i8** %fmtcpy, align 8
  %18 = load i64, i64* %bufsize.addr, align 8
  %dec = add nsw i64 %18, -1
  store i64 %dec, i64* %bufsize.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.572, %if.end.413, %do.end, %cond.end.24
  %19 = load i8*, i8** %fmt, align 8
  %20 = load i8*, i8** %format_end.addr, align 8
  %cmp26 = icmp ult i8* %19, %20
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %21 = load i64, i64* %bufsize.addr, align 8
  %cmp27 = icmp sgt i64 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp27, %land.rhs ]
  br i1 %22, label %while.body, label %while.end.573

while.body:                                       ; preds = %land.end
  %23 = load i8*, i8** %fmt, align 8
  store i8* %23, i8** %fmt0, align 8
  %24 = load i8*, i8** %fmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %fmt, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %fmtchar, align 1
  %26 = load i8, i8* %fmtchar, align 1
  %conv = sext i8 %26 to i32
  %cmp28 = icmp eq i32 %conv, 37
  br i1 %cmp28, label %if.then.30, label %if.end.509

if.then.30:                                       ; preds = %while.body
  store i64 0, i64* %size_bound, align 8
  store i32 0, i32* %length_modifier, align 4
  store i32 1, i32* %maxmlen, align 4
  %27 = load i8*, i8** %fmtcpy, align 8
  store i8* %27, i8** %string, align 8
  %28 = load i8*, i8** %string, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr31, i8** %string, align 8
  store i8 37, i8* %28, align 1
  br label %while.cond.32

while.cond.32:                                    ; preds = %if.end.92, %if.then.30
  %29 = load i8*, i8** %fmt, align 8
  %30 = load i8*, i8** %format_end.addr, align 8
  %cmp33 = icmp ult i8* %29, %30
  br i1 %cmp33, label %while.body.35, label %while.end.94

while.body.35:                                    ; preds = %while.cond.32
  %31 = load i8*, i8** %fmt, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %string, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr36, i8** %string, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8*, i8** %fmt, align 8
  %35 = load i8, i8* %34, align 1
  %conv37 = sext i8 %35 to i32
  %cmp38 = icmp sle i32 48, %conv37
  br i1 %cmp38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body.35
  %36 = load i8*, i8** %fmt, align 8
  %37 = load i8, i8* %36, align 1
  %conv40 = sext i8 %37 to i32
  %cmp41 = icmp sle i32 %conv40, 57
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %land.lhs.true
  %38 = load i8*, i8** %fmt, align 8
  %39 = load i8, i8* %38, align 1
  %conv44 = sext i8 %39 to i32
  %sub45 = sub nsw i32 %conv44, 48
  %conv46 = sext i32 %sub45 to i64
  store i64 %conv46, i64* %n, align 8
  br label %while.cond.47

while.cond.47:                                    ; preds = %if.end.65, %if.then.43
  %40 = load i8*, i8** %fmt, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8*, i8** %format_end.addr, align 8
  %cmp49 = icmp ult i8* %add.ptr48, %41
  br i1 %cmp49, label %land.lhs.true.51, label %land.end.60

land.lhs.true.51:                                 ; preds = %while.cond.47
  %42 = load i8*, i8** %fmt, align 8
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx, align 1
  %conv52 = sext i8 %43 to i32
  %cmp53 = icmp sle i32 48, %conv52
  br i1 %cmp53, label %land.rhs.55, label %land.end.60

land.rhs.55:                                      ; preds = %land.lhs.true.51
  %44 = load i8*, i8** %fmt, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %45 to i32
  %cmp58 = icmp sle i32 %conv57, 57
  br label %land.end.60

land.end.60:                                      ; preds = %land.rhs.55, %land.lhs.true.51, %while.cond.47
  %46 = phi i1 [ false, %land.lhs.true.51 ], [ false, %while.cond.47 ], [ %cmp58, %land.rhs.55 ]
  br i1 %46, label %while.body.61, label %while.end

while.body.61:                                    ; preds = %land.end.60
  %47 = load i64, i64* %n, align 8
  %cmp62 = icmp uge i64 %47, 214748364
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %while.body.61
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0)) #7
  unreachable

if.end.65:                                        ; preds = %while.body.61
  %48 = load i64, i64* %n, align 8
  %mul = mul nsw i64 %48, 10
  %49 = load i8*, i8** %fmt, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %50 to i64
  %add68 = add nsw i64 %mul, %conv67
  %sub69 = sub nsw i64 %add68, 48
  store i64 %sub69, i64* %n, align 8
  %51 = load i8*, i8** %fmt, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr70, i8** %fmt, align 8
  %52 = load i8, i8* %incdec.ptr70, align 1
  %53 = load i8*, i8** %string, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr71, i8** %string, align 8
  store i8 %52, i8* %53, align 1
  br label %while.cond.47

while.end:                                        ; preds = %land.end.60
  %54 = load i64, i64* %size_bound, align 8
  %55 = load i64, i64* %n, align 8
  %cmp72 = icmp slt i64 %54, %55
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %while.end
  %56 = load i64, i64* %n, align 8
  store i64 %56, i64* %size_bound, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %while.end
  br label %if.end.92

if.else:                                          ; preds = %land.lhs.true, %while.body.35
  %57 = load i8*, i8** %fmt, align 8
  %58 = load i8, i8* %57, align 1
  %conv76 = sext i8 %58 to i32
  %cmp77 = icmp eq i32 %conv76, 45
  br i1 %cmp77, label %if.end.91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %59 = load i8*, i8** %fmt, align 8
  %60 = load i8, i8* %59, align 1
  %conv79 = sext i8 %60 to i32
  %cmp80 = icmp eq i32 %conv79, 32
  br i1 %cmp80, label %if.end.91, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %lor.lhs.false
  %61 = load i8*, i8** %fmt, align 8
  %62 = load i8, i8* %61, align 1
  %conv83 = sext i8 %62 to i32
  %cmp84 = icmp eq i32 %conv83, 46
  br i1 %cmp84, label %if.end.91, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.82
  %63 = load i8*, i8** %fmt, align 8
  %64 = load i8, i8* %63, align 1
  %conv87 = sext i8 %64 to i32
  %cmp88 = icmp eq i32 %conv87, 43
  br i1 %cmp88, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %lor.lhs.false.86
  br label %while.end.94

if.end.91:                                        ; preds = %lor.lhs.false.86, %lor.lhs.false.82, %lor.lhs.false, %if.else
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.75
  %65 = load i8*, i8** %fmt, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr93, i8** %fmt, align 8
  br label %while.cond.32

while.end.94:                                     ; preds = %if.then.90, %while.cond.32
  store i32 1, i32* %mlen, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.94
  %66 = load i32, i32* %mlen, align 4
  %67 = load i32, i32* %maxmlen, align 4
  %cmp95 = icmp sle i32 %66, %67
  br i1 %cmp95, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i8*, i8** %format_end.addr, align 8
  %69 = load i8*, i8** %fmt, align 8
  %sub.ptr.lhs.cast97 = ptrtoint i8* %68 to i64
  %sub.ptr.rhs.cast98 = ptrtoint i8* %69 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98
  %70 = load i32, i32* %mlen, align 4
  %conv100 = sext i32 %70 to i64
  %cmp101 = icmp slt i64 %sub.ptr.sub99, %conv100
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %for.body
  br label %for.end

if.end.104:                                       ; preds = %for.body
  %71 = load i32, i32* %mlen, align 4
  %cmp105 = icmp eq i32 %71, 1
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.112

land.lhs.true.107:                                ; preds = %if.end.104
  %72 = load i8*, i8** %fmt, align 8
  %73 = load i8, i8* %72, align 1
  %conv108 = sext i8 %73 to i32
  %cmp109 = icmp eq i32 %conv108, 108
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %land.lhs.true.107
  store i32 1, i32* %length_modifier, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %land.lhs.true.107, %if.end.104
  %74 = load i32, i32* %mlen, align 4
  %cmp113 = icmp eq i32 %74, 1
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.120

land.lhs.true.115:                                ; preds = %if.end.112
  %75 = load i8*, i8** %fmt, align 8
  %call116 = call i32 @memcmp(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 1) #6
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %land.lhs.true.115
  store i32 2, i32* %length_modifier, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %land.lhs.true.115, %if.end.112
  %76 = load i32, i32* %mlen, align 4
  %cmp121 = icmp eq i32 %76, 1
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.128

land.lhs.true.123:                                ; preds = %if.end.120
  %77 = load i8*, i8** %fmt, align 8
  %call124 = call i32 @memcmp(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 1) #6
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %land.lhs.true.123
  store i32 3, i32* %length_modifier, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true.123, %if.end.120
  %78 = load i32, i32* %mlen, align 4
  %cmp129 = icmp eq i32 %78, 1
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.136

land.lhs.true.131:                                ; preds = %if.end.128
  %79 = load i8*, i8** %fmt, align 8
  %call132 = call i32 @memcmp(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i64 1) #6
  %cmp133 = icmp eq i32 %call132, 0
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %land.lhs.true.131
  store i32 4, i32* %length_modifier, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %land.lhs.true.131, %if.end.128
  br label %for.inc

for.inc:                                          ; preds = %if.end.136
  %80 = load i32, i32* %mlen, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %mlen, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.103, %for.cond
  %81 = load i32, i32* %length_modifier, align 4
  %idxprom = zext i32 %81 to i64
  %arrayidx137 = getelementptr inbounds [5 x i8], [5 x i8]* @doprnt.modifier_len, i32 0, i64 %idxprom
  %82 = load i8, i8* %arrayidx137, align 1
  %conv138 = sext i8 %82 to i32
  store i32 %conv138, i32* %mlen, align 4
  %83 = load i8*, i8** %string, align 8
  %84 = load i8*, i8** %fmt, align 8
  %add.ptr139 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i32, i32* %mlen, align 4
  %conv140 = sext i32 %85 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %add.ptr139, i64 %conv140, i32 1, i1 false)
  %86 = load i32, i32* %mlen, align 4
  %87 = load i8*, i8** %string, align 8
  %idx.ext = sext i32 %86 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %87, i64 %idx.ext
  store i8* %add.ptr141, i8** %string, align 8
  %88 = load i32, i32* %mlen, align 4
  %89 = load i8*, i8** %fmt, align 8
  %idx.ext142 = sext i32 %88 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %89, i64 %idx.ext142
  store i8* %add.ptr143, i8** %fmt, align 8
  %90 = load i8*, i8** %string, align 8
  store i8 0, i8* %90, align 1
  %91 = load i64, i64* %size_bound, align 8
  %cmp144 = icmp ugt i64 %91, 9223372036854775449
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %for.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0)) #7
  unreachable

if.end.147:                                       ; preds = %for.end
  %92 = load i64, i64* %size_bound, align 8
  %add148 = add nsw i64 %92, 358
  store i64 %add148, i64* %size_bound, align 8
  %93 = load i64, i64* %size_bound, align 8
  %94 = load i64, i64* %size_allocated, align 8
  %cmp149 = icmp sgt i64 %93, %94
  br i1 %cmp149, label %if.then.151, label %if.end.155

if.then.151:                                      ; preds = %if.end.147
  %95 = load i8*, i8** %big_buffer, align 8
  %tobool = icmp ne i8* %95, null
  br i1 %tobool, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.then.151
  %96 = load i8*, i8** %big_buffer, align 8
  call void @xfree(i8* %96)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.then.151
  %97 = load i64, i64* %size_bound, align 8
  %call154 = call noalias i8* @xmalloc(i64 %97)
  store i8* %call154, i8** %big_buffer, align 8
  %98 = load i8*, i8** %big_buffer, align 8
  store i8* %98, i8** %sprintf_buffer, align 8
  %99 = load i64, i64* %size_bound, align 8
  store i64 %99, i64* %size_allocated, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.153, %if.end.147
  store i32 0, i32* %minlen, align 4
  %100 = load i8*, i8** %fmt, align 8
  %incdec.ptr156 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr156, i8** %fmt, align 8
  %101 = load i8, i8* %100, align 1
  %conv157 = sext i8 %101 to i32
  switch i32 %conv157, label %sw.default [
    i32 108, label %sw.bb
    i32 100, label %sw.bb
    i32 111, label %sw.bb.221
    i32 120, label %sw.bb.221
    i32 102, label %sw.bb.284
    i32 101, label %sw.bb.284
    i32 103, label %sw.bb.284
    i32 83, label %sw.bb.295
    i32 115, label %sw.bb.297
    i32 99, label %sw.bb.414
    i32 37, label %sw.bb.506
  ]

sw.default:                                       ; preds = %if.end.155
  %102 = load i8*, i8** %fmtcpy, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* %102) #7
  unreachable

sw.bb:                                            ; preds = %if.end.155, %if.end.155
  %103 = load i32, i32* %length_modifier, align 4
  switch i32 %103, label %sw.epilog [
    i32 0, label %sw.bb.158
    i32 1, label %sw.bb.161
    i32 2, label %sw.bb.176
    i32 3, label %sw.bb.191
    i32 4, label %sw.bb.206
  ]

sw.bb.158:                                        ; preds = %sw.bb
  %104 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb.158
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 3
  %reg_save_area = load i8*, i8** %105
  %106 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %107 = bitcast i8* %106 to i32*
  %108 = add i32 %gp_offset, 8
  store i32 %108, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb.158
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %109 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %107, %vaarg.in_reg ], [ %109, %vaarg.in_mem ]
  %110 = load i32, i32* %vaarg.addr
  store i32 %110, i32* %v, align 4
  %111 = load i8*, i8** %sprintf_buffer, align 8
  %112 = load i8*, i8** %fmtcpy, align 8
  %113 = load i32, i32* %v, align 4
  %call159 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* %112, i32 %113) #4
  %conv160 = sext i32 %call159 to i64
  store i64 %conv160, i64* %tem, align 8
  br label %sw.epilog

sw.bb.161:                                        ; preds = %sw.bb
  %114 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p163 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 0
  %gp_offset164 = load i32, i32* %gp_offset_p163
  %fits_in_gp165 = icmp ule i32 %gp_offset164, 40
  br i1 %fits_in_gp165, label %vaarg.in_reg.166, label %vaarg.in_mem.168

vaarg.in_reg.166:                                 ; preds = %sw.bb.161
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 3
  %reg_save_area167 = load i8*, i8** %115
  %116 = getelementptr i8, i8* %reg_save_area167, i32 %gp_offset164
  %117 = bitcast i8* %116 to i64*
  %118 = add i32 %gp_offset164, 8
  store i32 %118, i32* %gp_offset_p163
  br label %vaarg.end.172

vaarg.in_mem.168:                                 ; preds = %sw.bb.161
  %overflow_arg_area_p169 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 2
  %overflow_arg_area170 = load i8*, i8** %overflow_arg_area_p169
  %119 = bitcast i8* %overflow_arg_area170 to i64*
  %overflow_arg_area.next171 = getelementptr i8, i8* %overflow_arg_area170, i32 8
  store i8* %overflow_arg_area.next171, i8** %overflow_arg_area_p169
  br label %vaarg.end.172

vaarg.end.172:                                    ; preds = %vaarg.in_mem.168, %vaarg.in_reg.166
  %vaarg.addr173 = phi i64* [ %117, %vaarg.in_reg.166 ], [ %119, %vaarg.in_mem.168 ]
  %120 = load i64, i64* %vaarg.addr173
  store i64 %120, i64* %v162, align 8
  %121 = load i8*, i8** %sprintf_buffer, align 8
  %122 = load i8*, i8** %fmtcpy, align 8
  %123 = load i64, i64* %v162, align 8
  %call174 = call i32 (i8*, i8*, ...) @sprintf(i8* %121, i8* %122, i64 %123) #4
  %conv175 = sext i32 %call174 to i64
  store i64 %conv175, i64* %tem, align 8
  br label %sw.epilog

sw.bb.176:                                        ; preds = %sw.bb
  br label %signed_pD_modifier

signed_pD_modifier:                               ; preds = %sw.bb.252, %sw.bb.176
  %124 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p178 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %124, i32 0, i32 0
  %gp_offset179 = load i32, i32* %gp_offset_p178
  %fits_in_gp180 = icmp ule i32 %gp_offset179, 40
  br i1 %fits_in_gp180, label %vaarg.in_reg.181, label %vaarg.in_mem.183

vaarg.in_reg.181:                                 ; preds = %signed_pD_modifier
  %125 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %124, i32 0, i32 3
  %reg_save_area182 = load i8*, i8** %125
  %126 = getelementptr i8, i8* %reg_save_area182, i32 %gp_offset179
  %127 = bitcast i8* %126 to i64*
  %128 = add i32 %gp_offset179, 8
  store i32 %128, i32* %gp_offset_p178
  br label %vaarg.end.187

vaarg.in_mem.183:                                 ; preds = %signed_pD_modifier
  %overflow_arg_area_p184 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %124, i32 0, i32 2
  %overflow_arg_area185 = load i8*, i8** %overflow_arg_area_p184
  %129 = bitcast i8* %overflow_arg_area185 to i64*
  %overflow_arg_area.next186 = getelementptr i8, i8* %overflow_arg_area185, i32 8
  store i8* %overflow_arg_area.next186, i8** %overflow_arg_area_p184
  br label %vaarg.end.187

vaarg.end.187:                                    ; preds = %vaarg.in_mem.183, %vaarg.in_reg.181
  %vaarg.addr188 = phi i64* [ %127, %vaarg.in_reg.181 ], [ %129, %vaarg.in_mem.183 ]
  %130 = load i64, i64* %vaarg.addr188
  store i64 %130, i64* %v177, align 8
  %131 = load i8*, i8** %sprintf_buffer, align 8
  %132 = load i8*, i8** %fmtcpy, align 8
  %133 = load i64, i64* %v177, align 8
  %call189 = call i32 (i8*, i8*, ...) @sprintf(i8* %131, i8* %132, i64 %133) #4
  %conv190 = sext i32 %call189 to i64
  store i64 %conv190, i64* %tem, align 8
  br label %sw.epilog

sw.bb.191:                                        ; preds = %sw.bb
  %134 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p193 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 0
  %gp_offset194 = load i32, i32* %gp_offset_p193
  %fits_in_gp195 = icmp ule i32 %gp_offset194, 40
  br i1 %fits_in_gp195, label %vaarg.in_reg.196, label %vaarg.in_mem.198

vaarg.in_reg.196:                                 ; preds = %sw.bb.191
  %135 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 3
  %reg_save_area197 = load i8*, i8** %135
  %136 = getelementptr i8, i8* %reg_save_area197, i32 %gp_offset194
  %137 = bitcast i8* %136 to i64*
  %138 = add i32 %gp_offset194, 8
  store i32 %138, i32* %gp_offset_p193
  br label %vaarg.end.202

vaarg.in_mem.198:                                 ; preds = %sw.bb.191
  %overflow_arg_area_p199 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 2
  %overflow_arg_area200 = load i8*, i8** %overflow_arg_area_p199
  %139 = bitcast i8* %overflow_arg_area200 to i64*
  %overflow_arg_area.next201 = getelementptr i8, i8* %overflow_arg_area200, i32 8
  store i8* %overflow_arg_area.next201, i8** %overflow_arg_area_p199
  br label %vaarg.end.202

vaarg.end.202:                                    ; preds = %vaarg.in_mem.198, %vaarg.in_reg.196
  %vaarg.addr203 = phi i64* [ %137, %vaarg.in_reg.196 ], [ %139, %vaarg.in_mem.198 ]
  %140 = load i64, i64* %vaarg.addr203
  store i64 %140, i64* %v192, align 8
  %141 = load i8*, i8** %sprintf_buffer, align 8
  %142 = load i8*, i8** %fmtcpy, align 8
  %143 = load i64, i64* %v192, align 8
  %call204 = call i32 (i8*, i8*, ...) @sprintf(i8* %141, i8* %142, i64 %143) #4
  %conv205 = sext i32 %call204 to i64
  store i64 %conv205, i64* %tem, align 8
  br label %sw.epilog

sw.bb.206:                                        ; preds = %sw.bb
  %144 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p208 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %144, i32 0, i32 0
  %gp_offset209 = load i32, i32* %gp_offset_p208
  %fits_in_gp210 = icmp ule i32 %gp_offset209, 40
  br i1 %fits_in_gp210, label %vaarg.in_reg.211, label %vaarg.in_mem.213

vaarg.in_reg.211:                                 ; preds = %sw.bb.206
  %145 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %144, i32 0, i32 3
  %reg_save_area212 = load i8*, i8** %145
  %146 = getelementptr i8, i8* %reg_save_area212, i32 %gp_offset209
  %147 = bitcast i8* %146 to i64*
  %148 = add i32 %gp_offset209, 8
  store i32 %148, i32* %gp_offset_p208
  br label %vaarg.end.217

vaarg.in_mem.213:                                 ; preds = %sw.bb.206
  %overflow_arg_area_p214 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %144, i32 0, i32 2
  %overflow_arg_area215 = load i8*, i8** %overflow_arg_area_p214
  %149 = bitcast i8* %overflow_arg_area215 to i64*
  %overflow_arg_area.next216 = getelementptr i8, i8* %overflow_arg_area215, i32 8
  store i8* %overflow_arg_area.next216, i8** %overflow_arg_area_p214
  br label %vaarg.end.217

vaarg.end.217:                                    ; preds = %vaarg.in_mem.213, %vaarg.in_reg.211
  %vaarg.addr218 = phi i64* [ %147, %vaarg.in_reg.211 ], [ %149, %vaarg.in_mem.213 ]
  %150 = load i64, i64* %vaarg.addr218
  store i64 %150, i64* %v207, align 8
  %151 = load i8*, i8** %sprintf_buffer, align 8
  %152 = load i8*, i8** %fmtcpy, align 8
  %153 = load i64, i64* %v207, align 8
  %call219 = call i32 (i8*, i8*, ...) @sprintf(i8* %151, i8* %152, i64 %153) #4
  %conv220 = sext i32 %call219 to i64
  store i64 %conv220, i64* %tem, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %vaarg.end.217, %vaarg.end.202, %vaarg.end.187, %vaarg.end.172, %vaarg.end
  %154 = load i8*, i8** %sprintf_buffer, align 8
  store i8* %154, i8** %string, align 8
  br label %doit

sw.bb.221:                                        ; preds = %if.end.155, %if.end.155
  %155 = load i32, i32* %length_modifier, align 4
  switch i32 %155, label %sw.epilog.283 [
    i32 0, label %sw.bb.222
    i32 1, label %sw.bb.237
    i32 2, label %sw.bb.252
    i32 3, label %sw.bb.253
    i32 4, label %sw.bb.268
  ]

sw.bb.222:                                        ; preds = %sw.bb.221
  %156 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p224 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 0
  %gp_offset225 = load i32, i32* %gp_offset_p224
  %fits_in_gp226 = icmp ule i32 %gp_offset225, 40
  br i1 %fits_in_gp226, label %vaarg.in_reg.227, label %vaarg.in_mem.229

vaarg.in_reg.227:                                 ; preds = %sw.bb.222
  %157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 3
  %reg_save_area228 = load i8*, i8** %157
  %158 = getelementptr i8, i8* %reg_save_area228, i32 %gp_offset225
  %159 = bitcast i8* %158 to i32*
  %160 = add i32 %gp_offset225, 8
  store i32 %160, i32* %gp_offset_p224
  br label %vaarg.end.233

vaarg.in_mem.229:                                 ; preds = %sw.bb.222
  %overflow_arg_area_p230 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 2
  %overflow_arg_area231 = load i8*, i8** %overflow_arg_area_p230
  %161 = bitcast i8* %overflow_arg_area231 to i32*
  %overflow_arg_area.next232 = getelementptr i8, i8* %overflow_arg_area231, i32 8
  store i8* %overflow_arg_area.next232, i8** %overflow_arg_area_p230
  br label %vaarg.end.233

vaarg.end.233:                                    ; preds = %vaarg.in_mem.229, %vaarg.in_reg.227
  %vaarg.addr234 = phi i32* [ %159, %vaarg.in_reg.227 ], [ %161, %vaarg.in_mem.229 ]
  %162 = load i32, i32* %vaarg.addr234
  store i32 %162, i32* %v223, align 4
  %163 = load i8*, i8** %sprintf_buffer, align 8
  %164 = load i8*, i8** %fmtcpy, align 8
  %165 = load i32, i32* %v223, align 4
  %call235 = call i32 (i8*, i8*, ...) @sprintf(i8* %163, i8* %164, i32 %165) #4
  %conv236 = sext i32 %call235 to i64
  store i64 %conv236, i64* %tem, align 8
  br label %sw.epilog.283

sw.bb.237:                                        ; preds = %sw.bb.221
  %166 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p239 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %166, i32 0, i32 0
  %gp_offset240 = load i32, i32* %gp_offset_p239
  %fits_in_gp241 = icmp ule i32 %gp_offset240, 40
  br i1 %fits_in_gp241, label %vaarg.in_reg.242, label %vaarg.in_mem.244

vaarg.in_reg.242:                                 ; preds = %sw.bb.237
  %167 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %166, i32 0, i32 3
  %reg_save_area243 = load i8*, i8** %167
  %168 = getelementptr i8, i8* %reg_save_area243, i32 %gp_offset240
  %169 = bitcast i8* %168 to i64*
  %170 = add i32 %gp_offset240, 8
  store i32 %170, i32* %gp_offset_p239
  br label %vaarg.end.248

vaarg.in_mem.244:                                 ; preds = %sw.bb.237
  %overflow_arg_area_p245 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %166, i32 0, i32 2
  %overflow_arg_area246 = load i8*, i8** %overflow_arg_area_p245
  %171 = bitcast i8* %overflow_arg_area246 to i64*
  %overflow_arg_area.next247 = getelementptr i8, i8* %overflow_arg_area246, i32 8
  store i8* %overflow_arg_area.next247, i8** %overflow_arg_area_p245
  br label %vaarg.end.248

vaarg.end.248:                                    ; preds = %vaarg.in_mem.244, %vaarg.in_reg.242
  %vaarg.addr249 = phi i64* [ %169, %vaarg.in_reg.242 ], [ %171, %vaarg.in_mem.244 ]
  %172 = load i64, i64* %vaarg.addr249
  store i64 %172, i64* %v238, align 8
  %173 = load i8*, i8** %sprintf_buffer, align 8
  %174 = load i8*, i8** %fmtcpy, align 8
  %175 = load i64, i64* %v238, align 8
  %call250 = call i32 (i8*, i8*, ...) @sprintf(i8* %173, i8* %174, i64 %175) #4
  %conv251 = sext i32 %call250 to i64
  store i64 %conv251, i64* %tem, align 8
  br label %sw.epilog.283

sw.bb.252:                                        ; preds = %sw.bb.221
  br label %signed_pD_modifier

sw.bb.253:                                        ; preds = %sw.bb.221
  %176 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p255 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %176, i32 0, i32 0
  %gp_offset256 = load i32, i32* %gp_offset_p255
  %fits_in_gp257 = icmp ule i32 %gp_offset256, 40
  br i1 %fits_in_gp257, label %vaarg.in_reg.258, label %vaarg.in_mem.260

vaarg.in_reg.258:                                 ; preds = %sw.bb.253
  %177 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %176, i32 0, i32 3
  %reg_save_area259 = load i8*, i8** %177
  %178 = getelementptr i8, i8* %reg_save_area259, i32 %gp_offset256
  %179 = bitcast i8* %178 to i64*
  %180 = add i32 %gp_offset256, 8
  store i32 %180, i32* %gp_offset_p255
  br label %vaarg.end.264

vaarg.in_mem.260:                                 ; preds = %sw.bb.253
  %overflow_arg_area_p261 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %176, i32 0, i32 2
  %overflow_arg_area262 = load i8*, i8** %overflow_arg_area_p261
  %181 = bitcast i8* %overflow_arg_area262 to i64*
  %overflow_arg_area.next263 = getelementptr i8, i8* %overflow_arg_area262, i32 8
  store i8* %overflow_arg_area.next263, i8** %overflow_arg_area_p261
  br label %vaarg.end.264

vaarg.end.264:                                    ; preds = %vaarg.in_mem.260, %vaarg.in_reg.258
  %vaarg.addr265 = phi i64* [ %179, %vaarg.in_reg.258 ], [ %181, %vaarg.in_mem.260 ]
  %182 = load i64, i64* %vaarg.addr265
  store i64 %182, i64* %v254, align 8
  %183 = load i8*, i8** %sprintf_buffer, align 8
  %184 = load i8*, i8** %fmtcpy, align 8
  %185 = load i64, i64* %v254, align 8
  %call266 = call i32 (i8*, i8*, ...) @sprintf(i8* %183, i8* %184, i64 %185) #4
  %conv267 = sext i32 %call266 to i64
  store i64 %conv267, i64* %tem, align 8
  br label %sw.epilog.283

sw.bb.268:                                        ; preds = %sw.bb.221
  %186 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p270 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 0
  %gp_offset271 = load i32, i32* %gp_offset_p270
  %fits_in_gp272 = icmp ule i32 %gp_offset271, 40
  br i1 %fits_in_gp272, label %vaarg.in_reg.273, label %vaarg.in_mem.275

vaarg.in_reg.273:                                 ; preds = %sw.bb.268
  %187 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 3
  %reg_save_area274 = load i8*, i8** %187
  %188 = getelementptr i8, i8* %reg_save_area274, i32 %gp_offset271
  %189 = bitcast i8* %188 to i64*
  %190 = add i32 %gp_offset271, 8
  store i32 %190, i32* %gp_offset_p270
  br label %vaarg.end.279

vaarg.in_mem.275:                                 ; preds = %sw.bb.268
  %overflow_arg_area_p276 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 2
  %overflow_arg_area277 = load i8*, i8** %overflow_arg_area_p276
  %191 = bitcast i8* %overflow_arg_area277 to i64*
  %overflow_arg_area.next278 = getelementptr i8, i8* %overflow_arg_area277, i32 8
  store i8* %overflow_arg_area.next278, i8** %overflow_arg_area_p276
  br label %vaarg.end.279

vaarg.end.279:                                    ; preds = %vaarg.in_mem.275, %vaarg.in_reg.273
  %vaarg.addr280 = phi i64* [ %189, %vaarg.in_reg.273 ], [ %191, %vaarg.in_mem.275 ]
  %192 = load i64, i64* %vaarg.addr280
  store i64 %192, i64* %v269, align 8
  %193 = load i8*, i8** %sprintf_buffer, align 8
  %194 = load i8*, i8** %fmtcpy, align 8
  %195 = load i64, i64* %v269, align 8
  %call281 = call i32 (i8*, i8*, ...) @sprintf(i8* %193, i8* %194, i64 %195) #4
  %conv282 = sext i32 %call281 to i64
  store i64 %conv282, i64* %tem, align 8
  br label %sw.epilog.283

sw.epilog.283:                                    ; preds = %sw.bb.221, %vaarg.end.279, %vaarg.end.264, %vaarg.end.248, %vaarg.end.233
  %196 = load i8*, i8** %sprintf_buffer, align 8
  store i8* %196, i8** %string, align 8
  br label %doit

sw.bb.284:                                        ; preds = %if.end.155, %if.end.155, %if.end.155
  %197 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %197, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.285, label %vaarg.in_mem.287

vaarg.in_reg.285:                                 ; preds = %sw.bb.284
  %198 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %197, i32 0, i32 3
  %reg_save_area286 = load i8*, i8** %198
  %199 = getelementptr i8, i8* %reg_save_area286, i32 %fp_offset
  %200 = bitcast i8* %199 to double*
  %201 = add i32 %fp_offset, 16
  store i32 %201, i32* %fp_offset_p
  br label %vaarg.end.291

vaarg.in_mem.287:                                 ; preds = %sw.bb.284
  %overflow_arg_area_p288 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %197, i32 0, i32 2
  %overflow_arg_area289 = load i8*, i8** %overflow_arg_area_p288
  %202 = bitcast i8* %overflow_arg_area289 to double*
  %overflow_arg_area.next290 = getelementptr i8, i8* %overflow_arg_area289, i32 8
  store i8* %overflow_arg_area.next290, i8** %overflow_arg_area_p288
  br label %vaarg.end.291

vaarg.end.291:                                    ; preds = %vaarg.in_mem.287, %vaarg.in_reg.285
  %vaarg.addr292 = phi double* [ %200, %vaarg.in_reg.285 ], [ %202, %vaarg.in_mem.287 ]
  %203 = load double, double* %vaarg.addr292
  store double %203, double* %d, align 8
  %204 = load i8*, i8** %sprintf_buffer, align 8
  %205 = load i8*, i8** %fmtcpy, align 8
  %206 = load double, double* %d, align 8
  %call293 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* %205, double %206) #4
  %conv294 = sext i32 %call293 to i64
  store i64 %conv294, i64* %tem, align 8
  %207 = load i8*, i8** %sprintf_buffer, align 8
  store i8* %207, i8** %string, align 8
  br label %doit

sw.bb.295:                                        ; preds = %if.end.155
  %208 = load i8*, i8** %string, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %208, i64 -1
  store i8 115, i8* %arrayidx296, align 1
  br label %sw.bb.297

sw.bb.297:                                        ; preds = %if.end.155, %sw.bb.295
  %209 = load i8*, i8** %fmtcpy, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %209, i64 1
  %210 = load i8, i8* %arrayidx298, align 1
  %conv299 = sext i8 %210 to i32
  %cmp300 = icmp ne i32 %conv299, 115
  br i1 %cmp300, label %if.then.302, label %if.end.305

if.then.302:                                      ; preds = %sw.bb.297
  %211 = load i8*, i8** %fmtcpy, align 8
  %arrayidx303 = getelementptr inbounds i8, i8* %211, i64 1
  %call304 = call i32 @atoi(i8* %arrayidx303) #6
  store i32 %call304, i32* %minlen, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.302, %sw.bb.297
  %212 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p306 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %212, i32 0, i32 0
  %gp_offset307 = load i32, i32* %gp_offset_p306
  %fits_in_gp308 = icmp ule i32 %gp_offset307, 40
  br i1 %fits_in_gp308, label %vaarg.in_reg.309, label %vaarg.in_mem.311

vaarg.in_reg.309:                                 ; preds = %if.end.305
  %213 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %212, i32 0, i32 3
  %reg_save_area310 = load i8*, i8** %213
  %214 = getelementptr i8, i8* %reg_save_area310, i32 %gp_offset307
  %215 = bitcast i8* %214 to i8**
  %216 = add i32 %gp_offset307, 8
  store i32 %216, i32* %gp_offset_p306
  br label %vaarg.end.315

vaarg.in_mem.311:                                 ; preds = %if.end.305
  %overflow_arg_area_p312 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %212, i32 0, i32 2
  %overflow_arg_area313 = load i8*, i8** %overflow_arg_area_p312
  %217 = bitcast i8* %overflow_arg_area313 to i8**
  %overflow_arg_area.next314 = getelementptr i8, i8* %overflow_arg_area313, i32 8
  store i8* %overflow_arg_area.next314, i8** %overflow_arg_area_p312
  br label %vaarg.end.315

vaarg.end.315:                                    ; preds = %vaarg.in_mem.311, %vaarg.in_reg.309
  %vaarg.addr316 = phi i8** [ %215, %vaarg.in_reg.309 ], [ %217, %vaarg.in_mem.311 ]
  %218 = load i8*, i8** %vaarg.addr316
  store i8* %218, i8** %string, align 8
  %219 = load i8*, i8** %string, align 8
  %call317 = call i64 @strlen(i8* %219) #6
  store i64 %call317, i64* %tem, align 8
  %220 = load i64, i64* %tem, align 8
  %cmp318 = icmp slt i64 2305843009213693951, %220
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %vaarg.end.315
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0)) #7
  unreachable

if.end.321:                                       ; preds = %vaarg.end.315
  %221 = load i8*, i8** %string, align 8
  %222 = load i64, i64* %tem, align 8
  %call322 = call i64 @strwidth(i8* %221, i64 %222)
  store i64 %call322, i64* %width, align 8
  br label %doit1

doit:                                             ; preds = %vaarg.end.291, %sw.epilog.283, %sw.epilog
  %223 = load i64, i64* %tem, align 8
  %cmp323 = icmp slt i64 2305843009213693951, %223
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %doit
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0)) #7
  unreachable

if.end.326:                                       ; preds = %doit
  %224 = load i64, i64* %tem, align 8
  store i64 %224, i64* %width, align 8
  br label %doit1

doit1:                                            ; preds = %if.end.505, %if.end.326, %if.end.321
  %225 = load i32, i32* %minlen, align 4
  %cmp327 = icmp sgt i32 %225, 0
  br i1 %cmp327, label %if.then.329, label %if.end.343

if.then.329:                                      ; preds = %doit1
  br label %while.cond.330

while.cond.330:                                   ; preds = %while.body.338, %if.then.329
  %226 = load i32, i32* %minlen, align 4
  %conv331 = sext i32 %226 to i64
  %227 = load i64, i64* %width, align 8
  %cmp332 = icmp sgt i64 %conv331, %227
  br i1 %cmp332, label %land.rhs.334, label %land.end.337

land.rhs.334:                                     ; preds = %while.cond.330
  %228 = load i64, i64* %bufsize.addr, align 8
  %cmp335 = icmp sgt i64 %228, 0
  br label %land.end.337

land.end.337:                                     ; preds = %land.rhs.334, %while.cond.330
  %229 = phi i1 [ false, %while.cond.330 ], [ %cmp335, %land.rhs.334 ]
  br i1 %229, label %while.body.338, label %while.end.342

while.body.338:                                   ; preds = %land.end.337
  %230 = load i8*, i8** %bufptr, align 8
  %incdec.ptr339 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr339, i8** %bufptr, align 8
  store i8 32, i8* %230, align 1
  %231 = load i64, i64* %bufsize.addr, align 8
  %dec340 = add nsw i64 %231, -1
  store i64 %dec340, i64* %bufsize.addr, align 8
  %232 = load i32, i32* %minlen, align 4
  %dec341 = add nsw i32 %232, -1
  store i32 %dec341, i32* %minlen, align 4
  br label %while.cond.330

while.end.342:                                    ; preds = %land.end.337
  store i32 0, i32* %minlen, align 4
  br label %if.end.343

if.end.343:                                       ; preds = %while.end.342, %doit1
  %233 = load i64, i64* %tem, align 8
  %234 = load i64, i64* %bufsize.addr, align 8
  %cmp344 = icmp sgt i64 %233, %234
  br i1 %cmp344, label %if.then.346, label %if.end.393

if.then.346:                                      ; preds = %if.end.343
  %235 = load i64, i64* %bufsize.addr, align 8
  store i64 %235, i64* %tem, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.346
  %236 = load i64, i64* %tem, align 8
  %dec347 = add nsw i64 %236, -1
  store i64 %dec347, i64* %tem, align 8
  %237 = load i64, i64* %tem, align 8
  %238 = load i8*, i8** %string, align 8
  %arrayidx348 = getelementptr inbounds i8, i8* %238, i64 %237
  %239 = load i8, i8* %arrayidx348, align 1
  %conv349 = sext i8 %239 to i32
  %and = and i32 %conv349, 192
  %cmp350 = icmp ne i32 %and, 128
  br i1 %cmp350, label %if.then.352, label %if.end.388

if.then.352:                                      ; preds = %do.body
  %240 = load i64, i64* %tem, align 8
  %241 = load i8*, i8** %string, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %241, i64 %240
  %242 = load i8, i8* %arrayidx353, align 1
  %conv354 = sext i8 %242 to i32
  %and355 = and i32 %conv354, 128
  %tobool356 = icmp ne i32 %and355, 0
  br i1 %tobool356, label %cond.false.358, label %cond.true.357

cond.true.357:                                    ; preds = %if.then.352
  br label %cond.end.380

cond.false.358:                                   ; preds = %if.then.352
  %243 = load i64, i64* %tem, align 8
  %244 = load i8*, i8** %string, align 8
  %arrayidx359 = getelementptr inbounds i8, i8* %244, i64 %243
  %245 = load i8, i8* %arrayidx359, align 1
  %conv360 = sext i8 %245 to i32
  %and361 = and i32 %conv360, 32
  %tobool362 = icmp ne i32 %and361, 0
  br i1 %tobool362, label %cond.false.364, label %cond.true.363

cond.true.363:                                    ; preds = %cond.false.358
  br label %cond.end.378

cond.false.364:                                   ; preds = %cond.false.358
  %246 = load i64, i64* %tem, align 8
  %247 = load i8*, i8** %string, align 8
  %arrayidx365 = getelementptr inbounds i8, i8* %247, i64 %246
  %248 = load i8, i8* %arrayidx365, align 1
  %conv366 = sext i8 %248 to i32
  %and367 = and i32 %conv366, 16
  %tobool368 = icmp ne i32 %and367, 0
  br i1 %tobool368, label %cond.false.370, label %cond.true.369

cond.true.369:                                    ; preds = %cond.false.364
  br label %cond.end.376

cond.false.370:                                   ; preds = %cond.false.364
  %249 = load i64, i64* %tem, align 8
  %250 = load i8*, i8** %string, align 8
  %arrayidx371 = getelementptr inbounds i8, i8* %250, i64 %249
  %251 = load i8, i8* %arrayidx371, align 1
  %conv372 = sext i8 %251 to i32
  %and373 = and i32 %conv372, 8
  %tobool374 = icmp ne i32 %and373, 0
  %lnot = xor i1 %tobool374, true
  %cond375 = select i1 %lnot, i32 4, i32 5
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.370, %cond.true.369
  %cond377 = phi i32 [ 3, %cond.true.369 ], [ %cond375, %cond.false.370 ]
  br label %cond.end.378

cond.end.378:                                     ; preds = %cond.end.376, %cond.true.363
  %cond379 = phi i32 [ 2, %cond.true.363 ], [ %cond377, %cond.end.376 ]
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.end.378, %cond.true.357
  %cond381 = phi i32 [ 1, %cond.true.357 ], [ %cond379, %cond.end.378 ]
  %conv382 = sext i32 %cond381 to i64
  %252 = load i64, i64* %bufsize.addr, align 8
  %253 = load i64, i64* %tem, align 8
  %sub383 = sub nsw i64 %252, %253
  %cmp384 = icmp sle i64 %conv382, %sub383
  br i1 %cmp384, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %cond.end.380
  %254 = load i64, i64* %bufsize.addr, align 8
  store i64 %254, i64* %tem, align 8
  br label %if.end.387

if.end.387:                                       ; preds = %if.then.386, %cond.end.380
  br label %do.end

if.end.388:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.388
  %255 = load i64, i64* %tem, align 8
  %cmp389 = icmp ne i64 %255, 0
  br i1 %cmp389, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end.387
  %256 = load i8*, i8** %bufptr, align 8
  %257 = load i8*, i8** %string, align 8
  %258 = load i64, i64* %tem, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %256, i8* %257, i64 %258, i32 1, i1 false)
  %259 = load i64, i64* %tem, align 8
  %260 = load i8*, i8** %bufptr, align 8
  %arrayidx391 = getelementptr inbounds i8, i8* %260, i64 %259
  store i8 0, i8* %arrayidx391, align 1
  %261 = load i64, i64* %bufsize.addr, align 8
  %262 = load i8*, i8** %bufptr, align 8
  %add.ptr392 = getelementptr inbounds i8, i8* %262, i64 %261
  store i8* %add.ptr392, i8** %bufptr, align 8
  store i64 0, i64* %bufsize.addr, align 8
  br label %while.cond

if.end.393:                                       ; preds = %if.end.343
  %263 = load i8*, i8** %bufptr, align 8
  %264 = load i8*, i8** %string, align 8
  %265 = load i64, i64* %tem, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %263, i8* %264, i64 %265, i32 1, i1 false)
  %266 = load i64, i64* %tem, align 8
  %267 = load i8*, i8** %bufptr, align 8
  %add.ptr394 = getelementptr inbounds i8, i8* %267, i64 %266
  store i8* %add.ptr394, i8** %bufptr, align 8
  %268 = load i64, i64* %tem, align 8
  %269 = load i64, i64* %bufsize.addr, align 8
  %sub395 = sub nsw i64 %269, %268
  store i64 %sub395, i64* %bufsize.addr, align 8
  %270 = load i32, i32* %minlen, align 4
  %cmp396 = icmp slt i32 %270, 0
  br i1 %cmp396, label %if.then.398, label %if.end.413

if.then.398:                                      ; preds = %if.end.393
  br label %while.cond.399

while.cond.399:                                   ; preds = %while.body.408, %if.then.398
  %271 = load i32, i32* %minlen, align 4
  %conv400 = sext i32 %271 to i64
  %272 = load i64, i64* %width, align 8
  %sub401 = sub nsw i64 0, %272
  %cmp402 = icmp slt i64 %conv400, %sub401
  br i1 %cmp402, label %land.rhs.404, label %land.end.407

land.rhs.404:                                     ; preds = %while.cond.399
  %273 = load i64, i64* %bufsize.addr, align 8
  %cmp405 = icmp sgt i64 %273, 0
  br label %land.end.407

land.end.407:                                     ; preds = %land.rhs.404, %while.cond.399
  %274 = phi i1 [ false, %while.cond.399 ], [ %cmp405, %land.rhs.404 ]
  br i1 %274, label %while.body.408, label %while.end.412

while.body.408:                                   ; preds = %land.end.407
  %275 = load i8*, i8** %bufptr, align 8
  %incdec.ptr409 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %incdec.ptr409, i8** %bufptr, align 8
  store i8 32, i8* %275, align 1
  %276 = load i64, i64* %bufsize.addr, align 8
  %dec410 = add nsw i64 %276, -1
  store i64 %dec410, i64* %bufsize.addr, align 8
  %277 = load i32, i32* %minlen, align 4
  %inc411 = add nsw i32 %277, 1
  store i32 %inc411, i32* %minlen, align 4
  br label %while.cond.399

while.end.412:                                    ; preds = %land.end.407
  store i32 0, i32* %minlen, align 4
  br label %if.end.413

if.end.413:                                       ; preds = %while.end.412, %if.end.393
  br label %while.cond

sw.bb.414:                                        ; preds = %if.end.155
  %278 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p415 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %278, i32 0, i32 0
  %gp_offset416 = load i32, i32* %gp_offset_p415
  %fits_in_gp417 = icmp ule i32 %gp_offset416, 40
  br i1 %fits_in_gp417, label %vaarg.in_reg.418, label %vaarg.in_mem.420

vaarg.in_reg.418:                                 ; preds = %sw.bb.414
  %279 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %278, i32 0, i32 3
  %reg_save_area419 = load i8*, i8** %279
  %280 = getelementptr i8, i8* %reg_save_area419, i32 %gp_offset416
  %281 = bitcast i8* %280 to i32*
  %282 = add i32 %gp_offset416, 8
  store i32 %282, i32* %gp_offset_p415
  br label %vaarg.end.424

vaarg.in_mem.420:                                 ; preds = %sw.bb.414
  %overflow_arg_area_p421 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %278, i32 0, i32 2
  %overflow_arg_area422 = load i8*, i8** %overflow_arg_area_p421
  %283 = bitcast i8* %overflow_arg_area422 to i32*
  %overflow_arg_area.next423 = getelementptr i8, i8* %overflow_arg_area422, i32 8
  store i8* %overflow_arg_area.next423, i8** %overflow_arg_area_p421
  br label %vaarg.end.424

vaarg.end.424:                                    ; preds = %vaarg.in_mem.420, %vaarg.in_reg.418
  %vaarg.addr425 = phi i32* [ %281, %vaarg.in_reg.418 ], [ %283, %vaarg.in_mem.420 ]
  %284 = load i32, i32* %vaarg.addr425
  store i32 %284, i32* %chr, align 4
  br i1 true, label %cond.true.426, label %cond.false.430

cond.true.426:                                    ; preds = %vaarg.end.424
  %285 = load i32, i32* %chr, align 4
  %add427 = add i32 %285, 0
  %cmp428 = icmp ule i32 %add427, 127
  br i1 %cmp428, label %cond.true.435, label %cond.false.439

cond.false.430:                                   ; preds = %vaarg.end.424
  %286 = load i32, i32* %chr, align 4
  %conv431 = sext i32 %286 to i64
  %add432 = add i64 %conv431, 0
  %cmp433 = icmp ule i64 %add432, 127
  br i1 %cmp433, label %cond.true.435, label %cond.false.439

cond.true.435:                                    ; preds = %cond.false.430, %cond.true.426
  %287 = load i32, i32* %chr, align 4
  %conv436 = trunc i32 %287 to i8
  %arraydecay437 = getelementptr inbounds [6 x i8], [6 x i8]* %charbuf, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds i8, i8* %arraydecay437, i64 0
  store i8 %conv436, i8* %arrayidx438, align 1
  br label %cond.end.492

cond.false.439:                                   ; preds = %cond.false.430, %cond.true.426
  br i1 true, label %cond.true.440, label %cond.false.444

cond.true.440:                                    ; preds = %cond.false.439
  %288 = load i32, i32* %chr, align 4
  %add441 = add i32 %288, 0
  %cmp442 = icmp ule i32 %add441, 2047
  br i1 %cmp442, label %cond.true.449, label %cond.false.458

cond.false.444:                                   ; preds = %cond.false.439
  %289 = load i32, i32* %chr, align 4
  %conv445 = sext i32 %289 to i64
  %add446 = add i64 %conv445, 0
  %cmp447 = icmp ule i64 %add446, 2047
  br i1 %cmp447, label %cond.true.449, label %cond.false.458

cond.true.449:                                    ; preds = %cond.false.444, %cond.true.440
  %290 = load i32, i32* %chr, align 4
  %shr = ashr i32 %290, 6
  %or = or i32 192, %shr
  %conv450 = trunc i32 %or to i8
  %arraydecay451 = getelementptr inbounds [6 x i8], [6 x i8]* %charbuf, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds i8, i8* %arraydecay451, i64 0
  store i8 %conv450, i8* %arrayidx452, align 1
  %291 = load i32, i32* %chr, align 4
  %and453 = and i32 %291, 63
  %or454 = or i32 128, %and453
  %conv455 = trunc i32 %or454 to i8
  %arraydecay456 = getelementptr inbounds [6 x i8], [6 x i8]* %charbuf, i32 0, i32 0
  %arrayidx457 = getelementptr inbounds i8, i8* %arraydecay456, i64 1
  store i8 %conv455, i8* %arrayidx457, align 1
  br label %cond.end.490

cond.false.458:                                   ; preds = %cond.false.444, %cond.true.440
  br i1 true, label %cond.true.459, label %cond.false.463

cond.true.459:                                    ; preds = %cond.false.458
  %292 = load i32, i32* %chr, align 4
  %add460 = add i32 %292, 0
  %cmp461 = icmp ule i32 %add460, 65535
  br i1 %cmp461, label %cond.true.468, label %cond.false.485

cond.false.463:                                   ; preds = %cond.false.458
  %293 = load i32, i32* %chr, align 4
  %conv464 = sext i32 %293 to i64
  %add465 = add i64 %conv464, 0
  %cmp466 = icmp ule i64 %add465, 65535
  br i1 %cmp466, label %cond.true.468, label %cond.false.485

cond.true.468:                                    ; preds = %cond.false.463, %cond.true.459
  %294 = load i32, i32* %chr, align 4
  %shr469 = ashr i32 %294, 12
  %or470 = or i32 224, %shr469
  %conv471 = trunc i32 %or470 to i8
  %arraydecay472 = getelementptr inbounds [6 x i8], [6 x i8]* %charbuf, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds i8, i8* %arraydecay472, i64 0
  store i8 %conv471, i8* %arrayidx473, align 1
  %295 = load i32, i32* %chr, align 4
  %shr474 = ashr i32 %295, 6
  %and475 = and i32 %shr474, 63
  %or476 = or i32 128, %and475
  %conv477 = trunc i32 %or476 to i8
  %arraydecay478 = getelementptr inbounds [6 x i8], [6 x i8]* %charbuf, i32 0, i32 0
  %arrayidx479 = getelementptr inbounds i8, i8* %arraydecay478, i64 1
  store i8 %conv477, i8* %arrayidx479, align 1
  %296 = load i32, i32* %chr, align 4
  %and480 = and i32 %296, 63
  %or481 = or i32 128, %and480
  %conv482 = trunc i32 %or481 to i8
  %arraydecay483 = getelementptr inbounds [6 x i8], [6 x i8]* %charbuf, i32 0, i32 0
  %arrayidx484 = getelementptr inbounds i8, i8* %arraydecay483, i64 2
  store i8 %conv482, i8* %arrayidx484, align 1
  br label %cond.end.488

cond.false.485:                                   ; preds = %cond.false.463, %cond.true.459
  %297 = load i32, i32* %chr, align 4
  %arraydecay486 = getelementptr inbounds [6 x i8], [6 x i8]* %charbuf, i32 0, i32 0
  %call487 = call i32 @char_string(i32 %297, i8* %arraydecay486)
  br label %cond.end.488

cond.end.488:                                     ; preds = %cond.false.485, %cond.true.468
  %cond489 = phi i32 [ 3, %cond.true.468 ], [ %call487, %cond.false.485 ]
  br label %cond.end.490

cond.end.490:                                     ; preds = %cond.end.488, %cond.true.449
  %cond491 = phi i32 [ 2, %cond.true.449 ], [ %cond489, %cond.end.488 ]
  br label %cond.end.492

cond.end.492:                                     ; preds = %cond.end.490, %cond.true.435
  %cond493 = phi i32 [ 1, %cond.true.435 ], [ %cond491, %cond.end.490 ]
  %conv494 = sext i32 %cond493 to i64
  store i64 %conv494, i64* %tem, align 8
  %arraydecay495 = getelementptr inbounds [6 x i8], [6 x i8]* %charbuf, i32 0, i32 0
  store i8* %arraydecay495, i8** %string, align 8
  %298 = load i64, i64* %tem, align 8
  %299 = load i8*, i8** %string, align 8
  %arrayidx496 = getelementptr inbounds i8, i8* %299, i64 %298
  store i8 0, i8* %arrayidx496, align 1
  %300 = load i8*, i8** %string, align 8
  %301 = load i64, i64* %tem, align 8
  %call497 = call i64 @strwidth(i8* %300, i64 %301)
  store i64 %call497, i64* %width, align 8
  %302 = load i8*, i8** %fmtcpy, align 8
  %arrayidx498 = getelementptr inbounds i8, i8* %302, i64 1
  %303 = load i8, i8* %arrayidx498, align 1
  %conv499 = sext i8 %303 to i32
  %cmp500 = icmp ne i32 %conv499, 99
  br i1 %cmp500, label %if.then.502, label %if.end.505

if.then.502:                                      ; preds = %cond.end.492
  %304 = load i8*, i8** %fmtcpy, align 8
  %arrayidx503 = getelementptr inbounds i8, i8* %304, i64 1
  %call504 = call i32 @atoi(i8* %arrayidx503) #6
  store i32 %call504, i32* %minlen, align 4
  br label %if.end.505

if.end.505:                                       ; preds = %if.then.502, %cond.end.492
  br label %doit1

sw.bb.506:                                        ; preds = %if.end.155
  %305 = load i8*, i8** %fmt, align 8
  %incdec.ptr507 = getelementptr inbounds i8, i8* %305, i32 -1
  store i8* %incdec.ptr507, i8** %fmt, align 8
  br label %sw.epilog.508

sw.epilog.508:                                    ; preds = %sw.bb.506
  br label %if.end.509

if.end.509:                                       ; preds = %sw.epilog.508, %while.body
  %306 = load i32, i32* %quoting_style, align 4
  %cmp510 = icmp eq i32 %306, 0
  br i1 %cmp510, label %land.lhs.true.512, label %if.else.517

land.lhs.true.512:                                ; preds = %if.end.509
  %307 = load i8, i8* %fmtchar, align 1
  %conv513 = sext i8 %307 to i32
  %cmp514 = icmp eq i32 %conv513, 96
  br i1 %cmp514, label %if.then.516, label %if.else.517

if.then.516:                                      ; preds = %land.lhs.true.512
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %src, align 8
  store i64 3, i64* %srclen, align 8
  br label %if.end.552

if.else.517:                                      ; preds = %land.lhs.true.512, %if.end.509
  %308 = load i32, i32* %quoting_style, align 4
  %cmp518 = icmp eq i32 %308, 0
  br i1 %cmp518, label %land.lhs.true.520, label %if.else.525

land.lhs.true.520:                                ; preds = %if.else.517
  %309 = load i8, i8* %fmtchar, align 1
  %conv521 = sext i8 %309 to i32
  %cmp522 = icmp eq i32 %conv521, 39
  br i1 %cmp522, label %if.then.524, label %if.else.525

if.then.524:                                      ; preds = %land.lhs.true.520
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8** %src, align 8
  store i64 3, i64* %srclen, align 8
  br label %if.end.551

if.else.525:                                      ; preds = %land.lhs.true.520, %if.else.517
  %310 = load i32, i32* %quoting_style, align 4
  %cmp526 = icmp eq i32 %310, 2
  br i1 %cmp526, label %land.lhs.true.528, label %if.else.533

land.lhs.true.528:                                ; preds = %if.else.525
  %311 = load i8, i8* %fmtchar, align 1
  %conv529 = sext i8 %311 to i32
  %cmp530 = icmp eq i32 %conv529, 96
  br i1 %cmp530, label %if.then.532, label %if.else.533

if.then.532:                                      ; preds = %land.lhs.true.528
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %src, align 8
  store i64 1, i64* %srclen, align 8
  br label %if.end.550

if.else.533:                                      ; preds = %land.lhs.true.528, %if.else.525
  br label %while.cond.534

while.cond.534:                                   ; preds = %while.body.544, %if.else.533
  %312 = load i8*, i8** %fmt, align 8
  %313 = load i8*, i8** %format_end.addr, align 8
  %cmp535 = icmp ult i8* %312, %313
  br i1 %cmp535, label %land.rhs.537, label %land.end.543

land.rhs.537:                                     ; preds = %while.cond.534
  %314 = load i8*, i8** %fmt, align 8
  %315 = load i8, i8* %314, align 1
  %conv538 = sext i8 %315 to i32
  %and539 = and i32 %conv538, 192
  %cmp540 = icmp ne i32 %and539, 128
  %lnot542 = xor i1 %cmp540, true
  br label %land.end.543

land.end.543:                                     ; preds = %land.rhs.537, %while.cond.534
  %316 = phi i1 [ false, %while.cond.534 ], [ %lnot542, %land.rhs.537 ]
  br i1 %316, label %while.body.544, label %while.end.546

while.body.544:                                   ; preds = %land.end.543
  %317 = load i8*, i8** %fmt, align 8
  %incdec.ptr545 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %incdec.ptr545, i8** %fmt, align 8
  br label %while.cond.534

while.end.546:                                    ; preds = %land.end.543
  %318 = load i8*, i8** %fmt0, align 8
  store i8* %318, i8** %src, align 8
  %319 = load i8*, i8** %fmt, align 8
  %320 = load i8*, i8** %fmt0, align 8
  %sub.ptr.lhs.cast547 = ptrtoint i8* %319 to i64
  %sub.ptr.rhs.cast548 = ptrtoint i8* %320 to i64
  %sub.ptr.sub549 = sub i64 %sub.ptr.lhs.cast547, %sub.ptr.rhs.cast548
  store i64 %sub.ptr.sub549, i64* %srclen, align 8
  br label %if.end.550

if.end.550:                                       ; preds = %while.end.546, %if.then.532
  br label %if.end.551

if.end.551:                                       ; preds = %if.end.550, %if.then.524
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551, %if.then.516
  %321 = load i64, i64* %bufsize.addr, align 8
  %322 = load i64, i64* %srclen, align 8
  %cmp553 = icmp slt i64 %321, %322
  br i1 %cmp553, label %if.then.555, label %if.else.563

if.then.555:                                      ; preds = %if.end.552
  br label %do.body.556

do.body.556:                                      ; preds = %do.cond.558, %if.then.555
  %323 = load i8*, i8** %bufptr, align 8
  %incdec.ptr557 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %incdec.ptr557, i8** %bufptr, align 8
  store i8 0, i8* %323, align 1
  br label %do.cond.558

do.cond.558:                                      ; preds = %do.body.556
  %324 = load i64, i64* %bufsize.addr, align 8
  %dec559 = add nsw i64 %324, -1
  store i64 %dec559, i64* %bufsize.addr, align 8
  %cmp560 = icmp ne i64 %dec559, 0
  br i1 %cmp560, label %do.body.556, label %do.end.562

do.end.562:                                       ; preds = %do.cond.558
  br label %if.end.572

if.else.563:                                      ; preds = %if.end.552
  br label %do.body.564

do.body.564:                                      ; preds = %do.cond.567, %if.else.563
  %325 = load i8*, i8** %src, align 8
  %incdec.ptr565 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %incdec.ptr565, i8** %src, align 8
  %326 = load i8, i8* %325, align 1
  %327 = load i8*, i8** %bufptr, align 8
  %incdec.ptr566 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %incdec.ptr566, i8** %bufptr, align 8
  store i8 %326, i8* %327, align 1
  br label %do.cond.567

do.cond.567:                                      ; preds = %do.body.564
  %328 = load i64, i64* %srclen, align 8
  %dec568 = add nsw i64 %328, -1
  store i64 %dec568, i64* %srclen, align 8
  %cmp569 = icmp ne i64 %dec568, 0
  br i1 %cmp569, label %do.body.564, label %do.end.571

do.end.571:                                       ; preds = %do.cond.567
  br label %if.end.572

if.end.572:                                       ; preds = %do.end.571, %do.end.562
  br label %while.cond

while.end.573:                                    ; preds = %land.end
  %329 = load i8*, i8** %big_buffer, align 8
  call void @xfree(i8* %329)
  %330 = load i8*, i8** %bufptr, align 8
  store i8 0, i8* %330, align 1
  br label %do.body.574

do.body.574:                                      ; preds = %while.end.573
  %331 = load i8, i8* %sa_must_free, align 1
  %tobool575 = trunc i8 %331 to i1
  br i1 %tobool575, label %if.then.576, label %if.end.579

if.then.576:                                      ; preds = %do.body.574
  store i8 0, i8* %sa_must_free, align 1
  %332 = load i64, i64* %sa_count, align 8
  %call577 = call i64 @builtin_lisp_symbol(i32 0)
  %call578 = call i64 @unbind_to(i64 %332, i64 %call577)
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.576, %do.body.574
  br label %do.end.581

do.end.581:                                       ; preds = %if.end.579
  %333 = load i8*, i8** %bufptr, align 8
  %334 = load i8*, i8** %buffer.addr, align 8
  %sub.ptr.lhs.cast582 = ptrtoint i8* %333 to i64
  %sub.ptr.rhs.cast583 = ptrtoint i8* %334 to i64
  %sub.ptr.sub584 = sub i64 %sub.ptr.lhs.cast582, %sub.ptr.rhs.cast583
  ret i64 %sub.ptr.sub584
}

declare i32 @text_quoting_style() #1

declare i64 @SPECPDL_INDEX() #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @record_xmalloc(i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @xfree(i8*) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i64 @strwidth(i8*, i64) #1

declare i32 @char_string(i32, i8*) #1

declare i64 @unbind_to(i64, i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define i64 @esprintf(i8* %buf, i8* %format, ...) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %nbytes = alloca i64, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i64 @doprnt(i8* %0, i64 9223372036854775807, i8* %1, i8* null, %struct.__va_list_tag* %arraydecay2)
  store i64 %call, i64* %nbytes, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i64, i64* %nbytes, align 8
  ret i64 %2
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define i64 @evxprintf(i8** %buf, i64* %bufsize, i8* %nonheapbuf, i64 %bufsize_max, i8* %format, %struct.__va_list_tag* %ap) #0 {
entry:
  %buf.addr = alloca i8**, align 8
  %bufsize.addr = alloca i64*, align 8
  %nonheapbuf.addr = alloca i8*, align 8
  %bufsize_max.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %nbytes = alloca i64, align 8
  %ap_copy = alloca [1 x %struct.__va_list_tag], align 16
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %bufsize, i64** %bufsize.addr, align 8
  store i8* %nonheapbuf, i8** %nonheapbuf.addr, align 8
  store i64 %bufsize_max, i64* %bufsize_max.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.6, %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %0 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  %2 = bitcast %struct.__va_list_tag* %0 to i8*
  call void @llvm.va_copy(i8* %1, i8* %2)
  %3 = load i8**, i8*** %buf.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i64*, i64** %bufsize.addr, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i8*, i8** %format.addr, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %call = call i64 @doprnt(i8* %4, i64 %6, i8* %7, i8* null, %struct.__va_list_tag* %arraydecay1)
  store i64 %call, i64* %nbytes, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  %8 = load i64, i64* %nbytes, align 8
  %9 = load i64*, i64** %bufsize.addr, align 8
  %10 = load i64, i64* %9, align 8
  %sub = sub nsw i64 %10, 1
  %cmp = icmp slt i64 %8, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %11 = load i64, i64* %nbytes, align 8
  ret i64 %11

if.end:                                           ; preds = %for.cond
  %12 = load i8**, i8*** %buf.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %nonheapbuf.addr, align 8
  %cmp4 = icmp ne i8* %13, %14
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %15 = load i8**, i8*** %buf.addr, align 8
  %16 = load i8*, i8** %15, align 8
  call void @xfree(i8* %16)
  %17 = load i8**, i8*** %buf.addr, align 8
  store i8* null, i8** %17, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %18 = load i64*, i64** %bufsize.addr, align 8
  %19 = load i64, i64* %bufsize_max.addr, align 8
  %call7 = call i8* @xpalloc(i8* null, i64* %18, i64 1, i64 %19, i64 1)
  %20 = load i8**, i8*** %buf.addr, align 8
  store i8* %call7, i8** %20, align 8
  br label %for.cond
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #4

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
