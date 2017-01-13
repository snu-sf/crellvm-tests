; ModuleID = './MultiSource.Benchmarks.Prolangs-C/133.unix-smail.misc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@now = common global i64 0, align 8
@nows = common global [50 x i8] zeroinitializer, align 16
@gmt = common global %struct.tm* null, align 8
@loc = common global %struct.tm* null, align 8
@arpanows = common global [50 x i8] zeroinitializer, align 16
@arpadate.b = internal global [40 x i8] zeroinitializer, align 16
@tzname = external global [2 x i8*], align 16
@postmaster.pm = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [11 x i8] c"postmaster\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"UUCP\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DOMAIN\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ROUTE\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@hostname = external global [0 x i8], align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"uname() call failed\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"can't determine hostname.\0A\00", align 1
@hostdomain = external global [0 x i8], align 1
@.str.9 = private unnamed_addr constant [6 x i8] c".UUCP\00", align 1
@hostuucp = external global [0 x i8], align 1

; Function Attrs: nounwind uwtable
define void @setdates() #0 {
entry:
  %call = call i64 @time(i64* @now) #4
  %call1 = call i8* @ctime(i64* @now) #4
  %call2 = call i8* @strcpy(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @nows, i32 0, i32 0), i8* %call1) #4
  %call3 = call %struct.tm* @gmtime(i64* @now) #4
  store %struct.tm* %call3, %struct.tm** @gmt, align 8
  %call4 = call %struct.tm* @localtime(i64* @now) #4
  store %struct.tm* %call4, %struct.tm** @loc, align 8
  %call5 = call i8* @arpadate(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @nows, i32 0, i32 0))
  %call6 = call i8* @strcpy(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @arpanows, i32 0, i32 0), i8* %call5) #4
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @ctime(i64*) #1

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind uwtable
define i8* @arpadate(i8* %ud) #0 {
entry:
  %ud.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  store i8* %ud, i8** %ud.addr, align 8
  %call = call i64 @time(i64* %t) #4
  %0 = load i8*, i8** %ud.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @ctime(i64* %t) #4
  store i8* %call1, i8** %ud.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @arpadate.b, i32 0, i32 0), i8** %q, align 8
  %1 = load i8*, i8** %ud.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 8
  store i8* %arrayidx, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 32
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr5, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %q, align 8
  store i8 %6, i8* %7, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %q, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr9, i8** %q, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8*, i8** %q, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr10, i8** %q, align 8
  store i8 32, i8* %11, align 1
  %12 = load i8*, i8** %ud.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %arrayidx11, i8** %p, align 8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %q, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr13, i8** %q, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %q, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr15, i8** %q, align 8
  store i8 %17, i8* %18, align 1
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %q, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr17, i8** %q, align 8
  store i8 %20, i8* %21, align 1
  %22 = load i8*, i8** %q, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr18, i8** %q, align 8
  store i8 32, i8* %22, align 1
  %23 = load i8*, i8** %ud.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %23, i64 22
  store i8* %arrayidx19, i8** %p, align 8
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %q, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr21, i8** %q, align 8
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %q, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr23, i8** %q, align 8
  store i8 %28, i8* %29, align 1
  %30 = load i8*, i8** %q, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr24, i8** %q, align 8
  store i8 32, i8* %30, align 1
  %31 = load i8*, i8** %ud.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %31, i64 11
  store i8* %arrayidx25, i8** %p, align 8
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %32 = load i32, i32* %i, align 4
  %cmp26 = icmp sgt i32 %32, 0
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %q, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr29, i8** %q, align 8
  store i8 %34, i8* %35, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call30 = call %struct.tm* @localtime(i64* %t) #4
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %call30, i32 0, i32 8
  %37 = load i32, i32* %tm_isdst, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [2 x i8*], [2 x i8*]* @tzname, i32 0, i64 %idxprom
  %38 = load i8*, i8** %arrayidx31, align 8
  store i8* %38, i8** %p, align 8
  %39 = load i8*, i8** %p, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %39, i64 3
  %40 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %40 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.else.56

if.then.36:                                       ; preds = %for.end
  %41 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 3
  store i8* %add.ptr, i8** %p, align 8
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %q, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr38, i8** %q, align 8
  store i8 %43, i8* %44, align 1
  %45 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %46 to i32
  %cmp41 = icmp eq i32 %conv40, 58
  br i1 %cmp41, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.then.36
  %47 = load i8*, i8** %q, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr44, i8** %q, align 8
  store i8 48, i8* %47, align 1
  br label %if.end.48

if.else.45:                                       ; preds = %if.then.36
  %48 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %q, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr47, i8** %q, align 8
  store i8 %49, i8* %50, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.43
  %51 = load i8*, i8** %p, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr49, i8** %p, align 8
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %q, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr50, i8** %q, align 8
  store i8 %52, i8* %53, align 1
  %54 = load i8*, i8** %p, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr51, i8** %p, align 8
  %55 = load i8*, i8** %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr52, i8** %p, align 8
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %q, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr53, i8** %q, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %q, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr55, i8** %q, align 8
  store i8 %59, i8* %60, align 1
  br label %if.end.64

if.else.56:                                       ; preds = %for.end
  %61 = load i8*, i8** %q, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr57, i8** %q, align 8
  store i8 32, i8* %61, align 1
  %62 = load i8*, i8** %p, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr58, i8** %p, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %q, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr59, i8** %q, align 8
  store i8 %63, i8* %64, align 1
  %65 = load i8*, i8** %p, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr60, i8** %p, align 8
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %q, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr61, i8** %q, align 8
  store i8 %66, i8* %67, align 1
  %68 = load i8*, i8** %p, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr62, i8** %p, align 8
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %q, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr63, i8** %q, align 8
  store i8 %69, i8* %70, align 1
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.56, %if.end.48
  %71 = load i8*, i8** %ud.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %71, i64 0
  store i8* %arrayidx65, i8** %p, align 8
  %72 = load i8*, i8** %q, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr66, i8** %q, align 8
  store i8 32, i8* %72, align 1
  %73 = load i8*, i8** %q, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr67, i8** %q, align 8
  store i8 40, i8* %73, align 1
  %74 = load i8*, i8** %p, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr68, i8** %p, align 8
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %q, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr69, i8** %q, align 8
  store i8 %75, i8* %76, align 1
  %77 = load i8*, i8** %p, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr70, i8** %p, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %q, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr71, i8** %q, align 8
  store i8 %78, i8* %79, align 1
  %80 = load i8*, i8** %p, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr72, i8** %p, align 8
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %q, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr73, i8** %q, align 8
  store i8 %81, i8* %82, align 1
  %83 = load i8*, i8** %q, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr74, i8** %q, align 8
  store i8 41, i8* %83, align 1
  %84 = load i8*, i8** %q, align 8
  store i8 0, i8* %84, align 1
  ret i8* getelementptr inbounds ([40 x i8], [40 x i8]* @arpadate.b, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @postmaster(i8* %user) #0 {
entry:
  %retval = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  store i8* %user, i8** %user.addr, align 8
  %0 = load i8*, i8** %user.addr, align 8
  %1 = load i8*, i8** @postmaster.pm, align 8
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %0, i8* %1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @postmaster.pm, align 8
  store i8* %2, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %user.addr, align 8
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

declare i32 @strcmpic(...) #2

; Function Attrs: nounwind uwtable
define i32 @isuucp(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i8* @sform(i32 %form) #0 {
entry:
  %retval = alloca i8*, align 8
  %form.addr = alloca i32, align 4
  store i32 %form, i32* %form.addr, align 4
  %0 = load i32, i32* %form.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %form.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i32, i32* %form.addr, align 4
  %cmp4 = icmp eq i32 %2, 2
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %3 = load i32, i32* %form.addr, align 4
  %cmp7 = icmp eq i32 %3, 3
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %4 = load i32, i32* %form.addr, align 4
  %cmp10 = icmp eq i32 %4, 4
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then.5, %if.then.2, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define void @getmynames() #0 {
entry:
  %site = alloca %struct.utsname, align 1
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @uname(%struct.utsname* %site) #4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0)
  call void @exit(i32 70) #5
  unreachable

if.end:                                           ; preds = %if.then
  %nodename = getelementptr inbounds %struct.utsname, %struct.utsname* %site, i32 0, i32 1
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %nodename, i32 0, i32 0
  %call3 = call i8* @strcpy(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0), i8* %arraydecay) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %2 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0), align 1
  %tobool5 = icmp ne i8 %2, 0
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 0)
  call void @exit(i32 70) #5
  unreachable

if.end.8:                                         ; preds = %if.end.4
  %4 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0), align 1
  %tobool9 = icmp ne i8 %4, 0
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %call11 = call i8* @strcpy(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0)) #4
  %call12 = call i8* @strcat(i8* %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %5 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0), align 1
  %tobool14 = icmp ne i8 %5, 0
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %call16 = call i8* @strcpy(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0)) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %call18 = call i8* @strcpy(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostuucp, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0)) #4
  %call19 = call i8* @strcat(i8* %call18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
