; ModuleID = './MultiSource.Applications.ClamAV/30.libclamav_regex_regexec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type { i32, i64*, i32, i32, %struct.cset*, i8*, i32, i64, i64, i64, i32, i32, i32, i32, i8*, i8*, i32, i64, i32, i64, [1 x i8] }
%struct.cset = type { i8*, i8, i8, i64, i8* }
%struct.regmatch_t = type { i64, i64 }
%struct.smat = type { %struct.re_guts*, i32, %struct.regmatch_t*, i8*, i8*, i8*, i8*, i8**, i64, i64, i64, i64, i64 }
%struct.lmat = type { %struct.re_guts*, i32, %struct.regmatch_t*, i8*, i8*, i8*, i8*, i8**, i64, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @cli_regexec(%struct.regex_t* %preg, i8* %string, i64 %nmatch, %struct.regmatch_t* %pmatch, i32 %eflags) #0 {
entry:
  %retval = alloca i32, align 4
  %preg.addr = alloca %struct.regex_t*, align 8
  %string.addr = alloca i8*, align 8
  %nmatch.addr = alloca i64, align 8
  %pmatch.addr = alloca %struct.regmatch_t*, align 8
  %eflags.addr = alloca i32, align 4
  %g = alloca %struct.re_guts*, align 8
  store %struct.regex_t* %preg, %struct.regex_t** %preg.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %nmatch, i64* %nmatch.addr, align 8
  store %struct.regmatch_t* %pmatch, %struct.regmatch_t** %pmatch.addr, align 8
  store i32 %eflags, i32* %eflags.addr, align 4
  %0 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_g = getelementptr inbounds %struct.regex_t, %struct.regex_t* %0, i32 0, i32 3
  %1 = load %struct.re_guts*, %struct.re_guts** %re_g, align 8
  store %struct.re_guts* %1, %struct.re_guts** %g, align 8
  %2 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_magic = getelementptr inbounds %struct.regex_t, %struct.regex_t* %2, i32 0, i32 0
  %3 = load i32, i32* %re_magic, align 4
  %cmp = icmp ne i32 %3, 62053
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %magic = getelementptr inbounds %struct.re_guts, %struct.re_guts* %4, i32 0, i32 0
  %5 = load i32, i32* %magic, align 4
  %cmp1 = icmp ne i32 %5, 53829
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %iflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %6, i32 0, i32 10
  %7 = load i32, i32* %iflags, align 4
  %and = and i32 %7, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load i32, i32* %eflags.addr, align 4
  %and4 = and i32 %8, 7
  store i32 %and4, i32* %eflags.addr, align 4
  %9 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %nstates = getelementptr inbounds %struct.re_guts, %struct.re_guts* %9, i32 0, i32 7
  %10 = load i64, i64* %nstates, align 8
  %cmp5 = icmp ule i64 %10, 64
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.3
  %11 = load i32, i32* %eflags.addr, align 4
  %and6 = and i32 %11, 512
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %12 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %13 = load i8*, i8** %string.addr, align 8
  %14 = load i64, i64* %nmatch.addr, align 8
  %15 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %16 = load i32, i32* %eflags.addr, align 4
  %call = call i32 @smatcher(%struct.re_guts* %12, i8* %13, i64 %14, %struct.regmatch_t* %15, i32 %16)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end.3
  %17 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %18 = load i8*, i8** %string.addr, align 8
  %19 = load i64, i64* %nmatch.addr, align 8
  %20 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %21 = load i32, i32* %eflags.addr, align 4
  %call9 = call i32 @lmatcher(%struct.re_guts* %17, i8* %18, i64 %19, %struct.regmatch_t* %20, i32 %21)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.8, %if.then.2, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @smatcher(%struct.re_guts* %g, i8* %string, i64 %nmatch, %struct.regmatch_t* %pmatch, i32 %eflags) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.re_guts*, align 8
  %string.addr = alloca i8*, align 8
  %nmatch.addr = alloca i64, align 8
  %pmatch.addr = alloca %struct.regmatch_t*, align 8
  %eflags.addr = alloca i32, align 4
  %endp = alloca i8*, align 8
  %i = alloca i64, align 8
  %mv = alloca %struct.smat, align 8
  %m = alloca %struct.smat*, align 8
  %dp = alloca i8*, align 8
  %gf = alloca i64, align 8
  %gl = alloca i64, align 8
  %start = alloca i8*, align 8
  %stop = alloca i8*, align 8
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %nmatch, i64* %nmatch.addr, align 8
  store %struct.regmatch_t* %pmatch, %struct.regmatch_t** %pmatch.addr, align 8
  store i32 %eflags, i32* %eflags.addr, align 4
  store %struct.smat* %mv, %struct.smat** %m, align 8
  %0 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %firststate = getelementptr inbounds %struct.re_guts, %struct.re_guts* %0, i32 0, i32 8
  %1 = load i64, i64* %firststate, align 8
  %add = add nsw i64 %1, 1
  store i64 %add, i64* %gf, align 8
  %2 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %laststate = getelementptr inbounds %struct.re_guts, %struct.re_guts* %2, i32 0, i32 9
  %3 = load i64, i64* %laststate, align 8
  store i64 %3, i64* %gl, align 8
  %4 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %4, i32 0, i32 6
  %5 = load i32, i32* %cflags, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %nmatch.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %eflags.addr, align 4
  %and1 = and i32 %6, 4
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load i8*, i8** %string.addr, align 8
  %8 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %8, i64 0
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx, i32 0, i32 0
  %9 = load i64, i64* %rm_so, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %9
  store i8* %add.ptr, i8** %start, align 8
  %10 = load i8*, i8** %string.addr, align 8
  %11 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %11, i64 0
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx4, i32 0, i32 1
  %12 = load i64, i64* %rm_eo, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8* %add.ptr5, i8** %stop, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %13 = load i8*, i8** %string.addr, align 8
  store i8* %13, i8** %start, align 8
  %14 = load i8*, i8** %start, align 8
  %15 = load i8*, i8** %start, align 8
  %call = call i64 @strlen(i8* %15) #6
  %add.ptr6 = getelementptr inbounds i8, i8* %14, i64 %call
  store i8* %add.ptr6, i8** %stop, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  %16 = load i8*, i8** %stop, align 8
  %17 = load i8*, i8** %start, align 8
  %cmp = icmp ult i8* %16, %17
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.7
  store i32 16, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.7
  %18 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %must = getelementptr inbounds %struct.re_guts, %struct.re_guts* %18, i32 0, i32 15
  %19 = load i8*, i8** %must, align 8
  %cmp10 = icmp ne i8* %19, null
  br i1 %cmp10, label %if.then.11, label %if.end.34

if.then.11:                                       ; preds = %if.end.9
  %20 = load i8*, i8** %start, align 8
  store i8* %20, i8** %dp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %21 = load i8*, i8** %dp, align 8
  %22 = load i8*, i8** %stop, align 8
  %cmp12 = icmp ult i8* %21, %22
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %dp, align 8
  %24 = load i8, i8* %23, align 1
  %conv = sext i8 %24 to i32
  %25 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %must13 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %25, i32 0, i32 15
  %26 = load i8*, i8** %must13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %27 to i32
  %cmp16 = icmp eq i32 %conv, %conv15
  br i1 %cmp16, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %for.body
  %28 = load i8*, i8** %stop, align 8
  %29 = load i8*, i8** %dp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %30 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen = getelementptr inbounds %struct.re_guts, %struct.re_guts* %30, i32 0, i32 16
  %31 = load i32, i32* %mlen, align 4
  %conv18 = sext i32 %31 to i64
  %cmp19 = icmp sge i64 %sub.ptr.sub, %conv18
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.29

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %32 = load i8*, i8** %dp, align 8
  %33 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %must22 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %33, i32 0, i32 15
  %34 = load i8*, i8** %must22, align 8
  %35 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen23 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %35, i32 0, i32 16
  %36 = load i32, i32* %mlen23, align 4
  %conv24 = sext i32 %36 to i64
  %call25 = call i32 @memcmp(i8* %32, i8* %34, i64 %conv24) #6
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.21
  br label %for.end

if.end.29:                                        ; preds = %land.lhs.true.21, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %37 = load i8*, i8** %dp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  %38 = load i8*, i8** %dp, align 8
  %39 = load i8*, i8** %stop, align 8
  %cmp30 = icmp eq i8* %38, %39
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %for.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.9
  %40 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %41 = load %struct.smat*, %struct.smat** %m, align 8
  %g35 = getelementptr inbounds %struct.smat, %struct.smat* %41, i32 0, i32 0
  store %struct.re_guts* %40, %struct.re_guts** %g35, align 8
  %42 = load i32, i32* %eflags.addr, align 4
  %43 = load %struct.smat*, %struct.smat** %m, align 8
  %eflags36 = getelementptr inbounds %struct.smat, %struct.smat* %43, i32 0, i32 1
  store i32 %42, i32* %eflags36, align 4
  %44 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch37 = getelementptr inbounds %struct.smat, %struct.smat* %44, i32 0, i32 2
  store %struct.regmatch_t* null, %struct.regmatch_t** %pmatch37, align 8
  %45 = load %struct.smat*, %struct.smat** %m, align 8
  %lastpos = getelementptr inbounds %struct.smat, %struct.smat* %45, i32 0, i32 7
  store i8** null, i8*** %lastpos, align 8
  %46 = load i8*, i8** %string.addr, align 8
  %47 = load %struct.smat*, %struct.smat** %m, align 8
  %offp = getelementptr inbounds %struct.smat, %struct.smat* %47, i32 0, i32 3
  store i8* %46, i8** %offp, align 8
  %48 = load i8*, i8** %start, align 8
  %49 = load %struct.smat*, %struct.smat** %m, align 8
  %beginp = getelementptr inbounds %struct.smat, %struct.smat* %49, i32 0, i32 4
  store i8* %48, i8** %beginp, align 8
  %50 = load i8*, i8** %stop, align 8
  %51 = load %struct.smat*, %struct.smat** %m, align 8
  %endp38 = getelementptr inbounds %struct.smat, %struct.smat* %51, i32 0, i32 5
  store i8* %50, i8** %endp38, align 8
  %52 = load %struct.smat*, %struct.smat** %m, align 8
  %st = getelementptr inbounds %struct.smat, %struct.smat* %52, i32 0, i32 9
  store i64 0, i64* %st, align 8
  %53 = load %struct.smat*, %struct.smat** %m, align 8
  %fresh = getelementptr inbounds %struct.smat, %struct.smat* %53, i32 0, i32 10
  store i64 0, i64* %fresh, align 8
  %54 = load %struct.smat*, %struct.smat** %m, align 8
  %tmp = getelementptr inbounds %struct.smat, %struct.smat* %54, i32 0, i32 11
  store i64 0, i64* %tmp, align 8
  %55 = load %struct.smat*, %struct.smat** %m, align 8
  %empty = getelementptr inbounds %struct.smat, %struct.smat* %55, i32 0, i32 12
  store i64 0, i64* %empty, align 8
  %56 = load %struct.smat*, %struct.smat** %m, align 8
  %empty39 = getelementptr inbounds %struct.smat, %struct.smat* %56, i32 0, i32 12
  store i64 0, i64* %empty39, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %if.end.164, %if.end.34
  %57 = load %struct.smat*, %struct.smat** %m, align 8
  %58 = load i8*, i8** %start, align 8
  %59 = load i8*, i8** %stop, align 8
  %60 = load i64, i64* %gf, align 8
  %61 = load i64, i64* %gl, align 8
  %call41 = call i8* @sfast(%struct.smat* %57, i8* %58, i8* %59, i64 %60, i64 %61)
  store i8* %call41, i8** %endp, align 8
  %62 = load i8*, i8** %endp, align 8
  %cmp42 = icmp eq i8* %62, null
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %for.cond.40
  %63 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch45 = getelementptr inbounds %struct.smat, %struct.smat* %63, i32 0, i32 2
  %64 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch45, align 8
  %65 = bitcast %struct.regmatch_t* %64 to i8*
  call void @free(i8* %65) #4
  %66 = load %struct.smat*, %struct.smat** %m, align 8
  %lastpos46 = getelementptr inbounds %struct.smat, %struct.smat* %66, i32 0, i32 7
  %67 = load i8**, i8*** %lastpos46, align 8
  %68 = bitcast i8** %67 to i8*
  call void @free(i8* %68) #4
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %for.cond.40
  %69 = load i64, i64* %nmatch.addr, align 8
  %cmp48 = icmp eq i64 %69, 0
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.53

land.lhs.true.50:                                 ; preds = %if.end.47
  %70 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %backrefs = getelementptr inbounds %struct.re_guts, %struct.re_guts* %70, i32 0, i32 18
  %71 = load i32, i32* %backrefs, align 4
  %tobool51 = icmp ne i32 %71, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.50
  br label %for.end.167

if.end.53:                                        ; preds = %land.lhs.true.50, %if.end.47
  br label %for.cond.54

for.cond.54:                                      ; preds = %if.end.59, %if.end.53
  %72 = load %struct.smat*, %struct.smat** %m, align 8
  %73 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp = getelementptr inbounds %struct.smat, %struct.smat* %73, i32 0, i32 6
  %74 = load i8*, i8** %coldp, align 8
  %75 = load i8*, i8** %stop, align 8
  %76 = load i64, i64* %gf, align 8
  %77 = load i64, i64* %gl, align 8
  %call55 = call i8* @sslow(%struct.smat* %72, i8* %74, i8* %75, i64 %76, i64 %77)
  store i8* %call55, i8** %endp, align 8
  %78 = load i8*, i8** %endp, align 8
  %cmp56 = icmp ne i8* %78, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.cond.54
  br label %for.end.62

if.end.59:                                        ; preds = %for.cond.54
  %79 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp60 = getelementptr inbounds %struct.smat, %struct.smat* %79, i32 0, i32 6
  %80 = load i8*, i8** %coldp60, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr61, i8** %coldp60, align 8
  br label %for.cond.54

for.end.62:                                       ; preds = %if.then.58
  %81 = load i64, i64* %nmatch.addr, align 8
  %cmp63 = icmp eq i64 %81, 1
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.69

land.lhs.true.65:                                 ; preds = %for.end.62
  %82 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %backrefs66 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %82, i32 0, i32 18
  %83 = load i32, i32* %backrefs66, align 4
  %tobool67 = icmp ne i32 %83, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.65
  br label %for.end.167

if.end.69:                                        ; preds = %land.lhs.true.65, %for.end.62
  %84 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch70 = getelementptr inbounds %struct.smat, %struct.smat* %84, i32 0, i32 2
  %85 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch70, align 8
  %cmp71 = icmp eq %struct.regmatch_t* %85, null
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %if.end.69
  %86 = load %struct.smat*, %struct.smat** %m, align 8
  %g74 = getelementptr inbounds %struct.smat, %struct.smat* %86, i32 0, i32 0
  %87 = load %struct.re_guts*, %struct.re_guts** %g74, align 8
  %nsub = getelementptr inbounds %struct.re_guts, %struct.re_guts* %87, i32 0, i32 17
  %88 = load i64, i64* %nsub, align 8
  %add75 = add i64 %88, 1
  %mul = mul i64 %add75, 16
  %call76 = call i8* @cli_malloc(i64 %mul)
  %89 = bitcast i8* %call76 to %struct.regmatch_t*
  %90 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch77 = getelementptr inbounds %struct.smat, %struct.smat* %90, i32 0, i32 2
  store %struct.regmatch_t* %89, %struct.regmatch_t** %pmatch77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %if.end.69
  %91 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch79 = getelementptr inbounds %struct.smat, %struct.smat* %91, i32 0, i32 2
  %92 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch79, align 8
  %cmp80 = icmp eq %struct.regmatch_t* %92, null
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  store i32 12, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.end.78
  store i64 1, i64* %i, align 8
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.96, %if.end.83
  %93 = load i64, i64* %i, align 8
  %94 = load %struct.smat*, %struct.smat** %m, align 8
  %g85 = getelementptr inbounds %struct.smat, %struct.smat* %94, i32 0, i32 0
  %95 = load %struct.re_guts*, %struct.re_guts** %g85, align 8
  %nsub86 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %95, i32 0, i32 17
  %96 = load i64, i64* %nsub86, align 8
  %cmp87 = icmp ule i64 %93, %96
  br i1 %cmp87, label %for.body.89, label %for.end.97

for.body.89:                                      ; preds = %for.cond.84
  %97 = load i64, i64* %i, align 8
  %98 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch90 = getelementptr inbounds %struct.smat, %struct.smat* %98, i32 0, i32 2
  %99 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch90, align 8
  %arrayidx91 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %99, i64 %97
  %rm_eo92 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx91, i32 0, i32 1
  store i64 -1, i64* %rm_eo92, align 8
  %100 = load i64, i64* %i, align 8
  %101 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch93 = getelementptr inbounds %struct.smat, %struct.smat* %101, i32 0, i32 2
  %102 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch93, align 8
  %arrayidx94 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %102, i64 %100
  %rm_so95 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx94, i32 0, i32 0
  store i64 -1, i64* %rm_so95, align 8
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.89
  %103 = load i64, i64* %i, align 8
  %inc = add i64 %103, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.84

for.end.97:                                       ; preds = %for.cond.84
  %104 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %backrefs98 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %104, i32 0, i32 18
  %105 = load i32, i32* %backrefs98, align 4
  %tobool99 = icmp ne i32 %105, 0
  br i1 %tobool99, label %if.else.107, label %land.lhs.true.100

land.lhs.true.100:                                ; preds = %for.end.97
  %106 = load %struct.smat*, %struct.smat** %m, align 8
  %eflags101 = getelementptr inbounds %struct.smat, %struct.smat* %106, i32 0, i32 1
  %107 = load i32, i32* %eflags101, align 4
  %and102 = and i32 %107, 1024
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.else.107, label %if.then.104

if.then.104:                                      ; preds = %land.lhs.true.100
  %108 = load %struct.smat*, %struct.smat** %m, align 8
  %109 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp105 = getelementptr inbounds %struct.smat, %struct.smat* %109, i32 0, i32 6
  %110 = load i8*, i8** %coldp105, align 8
  %111 = load i8*, i8** %endp, align 8
  %112 = load i64, i64* %gf, align 8
  %113 = load i64, i64* %gl, align 8
  %call106 = call i8* @sdissect(%struct.smat* %108, i8* %110, i8* %111, i64 %112, i64 %113)
  store i8* %call106, i8** %dp, align 8
  br label %if.end.133

if.else.107:                                      ; preds = %land.lhs.true.100, %for.end.97
  %114 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %nplus = getelementptr inbounds %struct.re_guts, %struct.re_guts* %114, i32 0, i32 19
  %115 = load i64, i64* %nplus, align 8
  %cmp108 = icmp sgt i64 %115, 0
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.120

land.lhs.true.110:                                ; preds = %if.else.107
  %116 = load %struct.smat*, %struct.smat** %m, align 8
  %lastpos111 = getelementptr inbounds %struct.smat, %struct.smat* %116, i32 0, i32 7
  %117 = load i8**, i8*** %lastpos111, align 8
  %cmp112 = icmp eq i8** %117, null
  br i1 %cmp112, label %if.then.114, label %if.end.120

if.then.114:                                      ; preds = %land.lhs.true.110
  %118 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %nplus115 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %118, i32 0, i32 19
  %119 = load i64, i64* %nplus115, align 8
  %add116 = add nsw i64 %119, 1
  %mul117 = mul i64 %add116, 8
  %call118 = call i8* @cli_malloc(i64 %mul117)
  %120 = bitcast i8* %call118 to i8**
  %121 = load %struct.smat*, %struct.smat** %m, align 8
  %lastpos119 = getelementptr inbounds %struct.smat, %struct.smat* %121, i32 0, i32 7
  store i8** %120, i8*** %lastpos119, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.114, %land.lhs.true.110, %if.else.107
  %122 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %nplus121 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %122, i32 0, i32 19
  %123 = load i64, i64* %nplus121, align 8
  %cmp122 = icmp sgt i64 %123, 0
  br i1 %cmp122, label %land.lhs.true.124, label %if.end.130

land.lhs.true.124:                                ; preds = %if.end.120
  %124 = load %struct.smat*, %struct.smat** %m, align 8
  %lastpos125 = getelementptr inbounds %struct.smat, %struct.smat* %124, i32 0, i32 7
  %125 = load i8**, i8*** %lastpos125, align 8
  %cmp126 = icmp eq i8** %125, null
  br i1 %cmp126, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %land.lhs.true.124
  %126 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch129 = getelementptr inbounds %struct.smat, %struct.smat* %126, i32 0, i32 2
  %127 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch129, align 8
  %128 = bitcast %struct.regmatch_t* %127 to i8*
  call void @free(i8* %128) #4
  store i32 12, i32* %retval
  br label %return

if.end.130:                                       ; preds = %land.lhs.true.124, %if.end.120
  %129 = load %struct.smat*, %struct.smat** %m, align 8
  %130 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp131 = getelementptr inbounds %struct.smat, %struct.smat* %130, i32 0, i32 6
  %131 = load i8*, i8** %coldp131, align 8
  %132 = load i8*, i8** %endp, align 8
  %133 = load i64, i64* %gf, align 8
  %134 = load i64, i64* %gl, align 8
  %call132 = call i8* @sbackref(%struct.smat* %129, i8* %131, i8* %132, i64 %133, i64 %134, i64 0, i32 0)
  store i8* %call132, i8** %dp, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.130, %if.then.104
  %135 = load i8*, i8** %dp, align 8
  %cmp134 = icmp ne i8* %135, null
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.133
  br label %for.end.167

if.end.137:                                       ; preds = %if.end.133
  br label %for.cond.138

for.cond.138:                                     ; preds = %if.end.152, %if.end.137
  %136 = load i8*, i8** %dp, align 8
  %cmp139 = icmp ne i8* %136, null
  br i1 %cmp139, label %if.then.144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond.138
  %137 = load i8*, i8** %endp, align 8
  %138 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp141 = getelementptr inbounds %struct.smat, %struct.smat* %138, i32 0, i32 6
  %139 = load i8*, i8** %coldp141, align 8
  %cmp142 = icmp ule i8* %137, %139
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %lor.lhs.false, %for.cond.138
  br label %for.end.155

if.end.145:                                       ; preds = %lor.lhs.false
  %140 = load %struct.smat*, %struct.smat** %m, align 8
  %141 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp146 = getelementptr inbounds %struct.smat, %struct.smat* %141, i32 0, i32 6
  %142 = load i8*, i8** %coldp146, align 8
  %143 = load i8*, i8** %endp, align 8
  %add.ptr147 = getelementptr inbounds i8, i8* %143, i64 -1
  %144 = load i64, i64* %gf, align 8
  %145 = load i64, i64* %gl, align 8
  %call148 = call i8* @sslow(%struct.smat* %140, i8* %142, i8* %add.ptr147, i64 %144, i64 %145)
  store i8* %call148, i8** %endp, align 8
  %146 = load i8*, i8** %endp, align 8
  %cmp149 = icmp eq i8* %146, null
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.145
  br label %for.end.155

if.end.152:                                       ; preds = %if.end.145
  %147 = load %struct.smat*, %struct.smat** %m, align 8
  %148 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp153 = getelementptr inbounds %struct.smat, %struct.smat* %148, i32 0, i32 6
  %149 = load i8*, i8** %coldp153, align 8
  %150 = load i8*, i8** %endp, align 8
  %151 = load i64, i64* %gf, align 8
  %152 = load i64, i64* %gl, align 8
  %call154 = call i8* @sbackref(%struct.smat* %147, i8* %149, i8* %150, i64 %151, i64 %152, i64 0, i32 0)
  store i8* %call154, i8** %dp, align 8
  br label %for.cond.138

for.end.155:                                      ; preds = %if.then.151, %if.then.144
  %153 = load i8*, i8** %dp, align 8
  %cmp156 = icmp ne i8* %153, null
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %for.end.155
  br label %for.end.167

if.end.159:                                       ; preds = %for.end.155
  %154 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp160 = getelementptr inbounds %struct.smat, %struct.smat* %154, i32 0, i32 6
  %155 = load i8*, i8** %coldp160, align 8
  %156 = load i8*, i8** %stop, align 8
  %cmp161 = icmp eq i8* %155, %156
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.159
  br label %for.end.167

if.end.164:                                       ; preds = %if.end.159
  %157 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp165 = getelementptr inbounds %struct.smat, %struct.smat* %157, i32 0, i32 6
  %158 = load i8*, i8** %coldp165, align 8
  %add.ptr166 = getelementptr inbounds i8, i8* %158, i64 1
  store i8* %add.ptr166, i8** %start, align 8
  br label %for.cond.40

for.end.167:                                      ; preds = %if.then.163, %if.then.158, %if.then.136, %if.then.68, %if.then.52
  %159 = load i64, i64* %nmatch.addr, align 8
  %cmp168 = icmp ugt i64 %159, 0
  br i1 %cmp168, label %if.then.170, label %if.end.184

if.then.170:                                      ; preds = %for.end.167
  %160 = load %struct.smat*, %struct.smat** %m, align 8
  %coldp171 = getelementptr inbounds %struct.smat, %struct.smat* %160, i32 0, i32 6
  %161 = load i8*, i8** %coldp171, align 8
  %162 = load %struct.smat*, %struct.smat** %m, align 8
  %offp172 = getelementptr inbounds %struct.smat, %struct.smat* %162, i32 0, i32 3
  %163 = load i8*, i8** %offp172, align 8
  %sub.ptr.lhs.cast173 = ptrtoint i8* %161 to i64
  %sub.ptr.rhs.cast174 = ptrtoint i8* %163 to i64
  %sub.ptr.sub175 = sub i64 %sub.ptr.lhs.cast173, %sub.ptr.rhs.cast174
  %164 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx176 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %164, i64 0
  %rm_so177 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx176, i32 0, i32 0
  store i64 %sub.ptr.sub175, i64* %rm_so177, align 8
  %165 = load i8*, i8** %endp, align 8
  %166 = load %struct.smat*, %struct.smat** %m, align 8
  %offp178 = getelementptr inbounds %struct.smat, %struct.smat* %166, i32 0, i32 3
  %167 = load i8*, i8** %offp178, align 8
  %sub.ptr.lhs.cast179 = ptrtoint i8* %165 to i64
  %sub.ptr.rhs.cast180 = ptrtoint i8* %167 to i64
  %sub.ptr.sub181 = sub i64 %sub.ptr.lhs.cast179, %sub.ptr.rhs.cast180
  %168 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %168, i64 0
  %rm_eo183 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx182, i32 0, i32 1
  store i64 %sub.ptr.sub181, i64* %rm_eo183, align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.170, %for.end.167
  %169 = load i64, i64* %nmatch.addr, align 8
  %cmp185 = icmp ugt i64 %169, 1
  br i1 %cmp185, label %if.then.187, label %if.end.209

if.then.187:                                      ; preds = %if.end.184
  store i64 1, i64* %i, align 8
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.206, %if.then.187
  %170 = load i64, i64* %i, align 8
  %171 = load i64, i64* %nmatch.addr, align 8
  %cmp189 = icmp ult i64 %170, %171
  br i1 %cmp189, label %for.body.191, label %for.end.208

for.body.191:                                     ; preds = %for.cond.188
  %172 = load i64, i64* %i, align 8
  %173 = load %struct.smat*, %struct.smat** %m, align 8
  %g192 = getelementptr inbounds %struct.smat, %struct.smat* %173, i32 0, i32 0
  %174 = load %struct.re_guts*, %struct.re_guts** %g192, align 8
  %nsub193 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %174, i32 0, i32 17
  %175 = load i64, i64* %nsub193, align 8
  %cmp194 = icmp ule i64 %172, %175
  br i1 %cmp194, label %if.then.196, label %if.else.200

if.then.196:                                      ; preds = %for.body.191
  %176 = load i64, i64* %i, align 8
  %177 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx197 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %177, i64 %176
  %178 = load i64, i64* %i, align 8
  %179 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch198 = getelementptr inbounds %struct.smat, %struct.smat* %179, i32 0, i32 2
  %180 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch198, align 8
  %arrayidx199 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %180, i64 %178
  %181 = bitcast %struct.regmatch_t* %arrayidx197 to i8*
  %182 = bitcast %struct.regmatch_t* %arrayidx199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* %182, i64 16, i32 8, i1 false)
  br label %if.end.205

if.else.200:                                      ; preds = %for.body.191
  %183 = load i64, i64* %i, align 8
  %184 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx201 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %184, i64 %183
  %rm_so202 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx201, i32 0, i32 0
  store i64 -1, i64* %rm_so202, align 8
  %185 = load i64, i64* %i, align 8
  %186 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx203 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %186, i64 %185
  %rm_eo204 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx203, i32 0, i32 1
  store i64 -1, i64* %rm_eo204, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.200, %if.then.196
  br label %for.inc.206

for.inc.206:                                      ; preds = %if.end.205
  %187 = load i64, i64* %i, align 8
  %inc207 = add i64 %187, 1
  store i64 %inc207, i64* %i, align 8
  br label %for.cond.188

for.end.208:                                      ; preds = %for.cond.188
  br label %if.end.209

if.end.209:                                       ; preds = %for.end.208, %if.end.184
  %188 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch210 = getelementptr inbounds %struct.smat, %struct.smat* %188, i32 0, i32 2
  %189 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch210, align 8
  %cmp211 = icmp ne %struct.regmatch_t* %189, null
  br i1 %cmp211, label %if.then.213, label %if.end.215

if.then.213:                                      ; preds = %if.end.209
  %190 = load %struct.smat*, %struct.smat** %m, align 8
  %pmatch214 = getelementptr inbounds %struct.smat, %struct.smat* %190, i32 0, i32 2
  %191 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch214, align 8
  %192 = bitcast %struct.regmatch_t* %191 to i8*
  call void @free(i8* %192) #4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.213, %if.end.209
  %193 = load %struct.smat*, %struct.smat** %m, align 8
  %lastpos216 = getelementptr inbounds %struct.smat, %struct.smat* %193, i32 0, i32 7
  %194 = load i8**, i8*** %lastpos216, align 8
  %cmp217 = icmp ne i8** %194, null
  br i1 %cmp217, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %if.end.215
  %195 = load %struct.smat*, %struct.smat** %m, align 8
  %lastpos220 = getelementptr inbounds %struct.smat, %struct.smat* %195, i32 0, i32 7
  %196 = load i8**, i8*** %lastpos220, align 8
  %197 = bitcast i8** %196 to i8*
  call void @free(i8* %197) #4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %if.end.215
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.221, %if.then.128, %if.then.82, %if.then.44, %if.then.32, %if.then.8
  %198 = load i32, i32* %retval
  ret i32 %198
}

; Function Attrs: nounwind uwtable
define internal i32 @lmatcher(%struct.re_guts* %g, i8* %string, i64 %nmatch, %struct.regmatch_t* %pmatch, i32 %eflags) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.re_guts*, align 8
  %string.addr = alloca i8*, align 8
  %nmatch.addr = alloca i64, align 8
  %pmatch.addr = alloca %struct.regmatch_t*, align 8
  %eflags.addr = alloca i32, align 4
  %endp = alloca i8*, align 8
  %i = alloca i64, align 8
  %mv = alloca %struct.lmat, align 8
  %m = alloca %struct.lmat*, align 8
  %dp = alloca i8*, align 8
  %gf = alloca i64, align 8
  %gl = alloca i64, align 8
  %start = alloca i8*, align 8
  %stop = alloca i8*, align 8
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %nmatch, i64* %nmatch.addr, align 8
  store %struct.regmatch_t* %pmatch, %struct.regmatch_t** %pmatch.addr, align 8
  store i32 %eflags, i32* %eflags.addr, align 4
  store %struct.lmat* %mv, %struct.lmat** %m, align 8
  %0 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %firststate = getelementptr inbounds %struct.re_guts, %struct.re_guts* %0, i32 0, i32 8
  %1 = load i64, i64* %firststate, align 8
  %add = add nsw i64 %1, 1
  store i64 %add, i64* %gf, align 8
  %2 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %laststate = getelementptr inbounds %struct.re_guts, %struct.re_guts* %2, i32 0, i32 9
  %3 = load i64, i64* %laststate, align 8
  store i64 %3, i64* %gl, align 8
  %4 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %4, i32 0, i32 6
  %5 = load i32, i32* %cflags, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %nmatch.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %eflags.addr, align 4
  %and1 = and i32 %6, 4
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load i8*, i8** %string.addr, align 8
  %8 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %8, i64 0
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx, i32 0, i32 0
  %9 = load i64, i64* %rm_so, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %9
  store i8* %add.ptr, i8** %start, align 8
  %10 = load i8*, i8** %string.addr, align 8
  %11 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %11, i64 0
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx4, i32 0, i32 1
  %12 = load i64, i64* %rm_eo, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8* %add.ptr5, i8** %stop, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %13 = load i8*, i8** %string.addr, align 8
  store i8* %13, i8** %start, align 8
  %14 = load i8*, i8** %start, align 8
  %15 = load i8*, i8** %start, align 8
  %call = call i64 @strlen(i8* %15) #6
  %add.ptr6 = getelementptr inbounds i8, i8* %14, i64 %call
  store i8* %add.ptr6, i8** %stop, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  %16 = load i8*, i8** %stop, align 8
  %17 = load i8*, i8** %start, align 8
  %cmp = icmp ult i8* %16, %17
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.7
  store i32 16, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.7
  %18 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %must = getelementptr inbounds %struct.re_guts, %struct.re_guts* %18, i32 0, i32 15
  %19 = load i8*, i8** %must, align 8
  %cmp10 = icmp ne i8* %19, null
  br i1 %cmp10, label %if.then.11, label %if.end.34

if.then.11:                                       ; preds = %if.end.9
  %20 = load i8*, i8** %start, align 8
  store i8* %20, i8** %dp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %21 = load i8*, i8** %dp, align 8
  %22 = load i8*, i8** %stop, align 8
  %cmp12 = icmp ult i8* %21, %22
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %dp, align 8
  %24 = load i8, i8* %23, align 1
  %conv = sext i8 %24 to i32
  %25 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %must13 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %25, i32 0, i32 15
  %26 = load i8*, i8** %must13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %27 to i32
  %cmp16 = icmp eq i32 %conv, %conv15
  br i1 %cmp16, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %for.body
  %28 = load i8*, i8** %stop, align 8
  %29 = load i8*, i8** %dp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %30 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen = getelementptr inbounds %struct.re_guts, %struct.re_guts* %30, i32 0, i32 16
  %31 = load i32, i32* %mlen, align 4
  %conv18 = sext i32 %31 to i64
  %cmp19 = icmp sge i64 %sub.ptr.sub, %conv18
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.29

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %32 = load i8*, i8** %dp, align 8
  %33 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %must22 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %33, i32 0, i32 15
  %34 = load i8*, i8** %must22, align 8
  %35 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen23 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %35, i32 0, i32 16
  %36 = load i32, i32* %mlen23, align 4
  %conv24 = sext i32 %36 to i64
  %call25 = call i32 @memcmp(i8* %32, i8* %34, i64 %conv24) #6
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.21
  br label %for.end

if.end.29:                                        ; preds = %land.lhs.true.21, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %37 = load i8*, i8** %dp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  %38 = load i8*, i8** %dp, align 8
  %39 = load i8*, i8** %stop, align 8
  %cmp30 = icmp eq i8* %38, %39
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %for.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.9
  %40 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %41 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g35 = getelementptr inbounds %struct.lmat, %struct.lmat* %41, i32 0, i32 0
  store %struct.re_guts* %40, %struct.re_guts** %g35, align 8
  %42 = load i32, i32* %eflags.addr, align 4
  %43 = load %struct.lmat*, %struct.lmat** %m, align 8
  %eflags36 = getelementptr inbounds %struct.lmat, %struct.lmat* %43, i32 0, i32 1
  store i32 %42, i32* %eflags36, align 4
  %44 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch37 = getelementptr inbounds %struct.lmat, %struct.lmat* %44, i32 0, i32 2
  store %struct.regmatch_t* null, %struct.regmatch_t** %pmatch37, align 8
  %45 = load %struct.lmat*, %struct.lmat** %m, align 8
  %lastpos = getelementptr inbounds %struct.lmat, %struct.lmat* %45, i32 0, i32 7
  store i8** null, i8*** %lastpos, align 8
  %46 = load i8*, i8** %string.addr, align 8
  %47 = load %struct.lmat*, %struct.lmat** %m, align 8
  %offp = getelementptr inbounds %struct.lmat, %struct.lmat* %47, i32 0, i32 3
  store i8* %46, i8** %offp, align 8
  %48 = load i8*, i8** %start, align 8
  %49 = load %struct.lmat*, %struct.lmat** %m, align 8
  %beginp = getelementptr inbounds %struct.lmat, %struct.lmat* %49, i32 0, i32 4
  store i8* %48, i8** %beginp, align 8
  %50 = load i8*, i8** %stop, align 8
  %51 = load %struct.lmat*, %struct.lmat** %m, align 8
  %endp38 = getelementptr inbounds %struct.lmat, %struct.lmat* %51, i32 0, i32 5
  store i8* %50, i8** %endp38, align 8
  %52 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g39 = getelementptr inbounds %struct.lmat, %struct.lmat* %52, i32 0, i32 0
  %53 = load %struct.re_guts*, %struct.re_guts** %g39, align 8
  %nstates = getelementptr inbounds %struct.re_guts, %struct.re_guts* %53, i32 0, i32 7
  %54 = load i64, i64* %nstates, align 8
  %mul = mul nsw i64 4, %54
  %call40 = call i8* @cli_malloc(i64 %mul)
  %55 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space = getelementptr inbounds %struct.lmat, %struct.lmat* %55, i32 0, i32 9
  store i8* %call40, i8** %space, align 8
  %56 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space41 = getelementptr inbounds %struct.lmat, %struct.lmat* %56, i32 0, i32 9
  %57 = load i8*, i8** %space41, align 8
  %cmp42 = icmp eq i8* %57, null
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.34
  store i32 12, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.34
  %58 = load %struct.lmat*, %struct.lmat** %m, align 8
  %vn = getelementptr inbounds %struct.lmat, %struct.lmat* %58, i32 0, i32 8
  store i64 0, i64* %vn, align 8
  %59 = load %struct.lmat*, %struct.lmat** %m, align 8
  %vn46 = getelementptr inbounds %struct.lmat, %struct.lmat* %59, i32 0, i32 8
  %60 = load i64, i64* %vn46, align 8
  %inc = add nsw i64 %60, 1
  store i64 %inc, i64* %vn46, align 8
  %61 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g47 = getelementptr inbounds %struct.lmat, %struct.lmat* %61, i32 0, i32 0
  %62 = load %struct.re_guts*, %struct.re_guts** %g47, align 8
  %nstates48 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %62, i32 0, i32 7
  %63 = load i64, i64* %nstates48, align 8
  %mul49 = mul nsw i64 %60, %63
  %64 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space50 = getelementptr inbounds %struct.lmat, %struct.lmat* %64, i32 0, i32 9
  %65 = load i8*, i8** %space50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %65, i64 %mul49
  %66 = load %struct.lmat*, %struct.lmat** %m, align 8
  %st = getelementptr inbounds %struct.lmat, %struct.lmat* %66, i32 0, i32 10
  store i8* %arrayidx51, i8** %st, align 8
  %67 = load %struct.lmat*, %struct.lmat** %m, align 8
  %vn52 = getelementptr inbounds %struct.lmat, %struct.lmat* %67, i32 0, i32 8
  %68 = load i64, i64* %vn52, align 8
  %inc53 = add nsw i64 %68, 1
  store i64 %inc53, i64* %vn52, align 8
  %69 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g54 = getelementptr inbounds %struct.lmat, %struct.lmat* %69, i32 0, i32 0
  %70 = load %struct.re_guts*, %struct.re_guts** %g54, align 8
  %nstates55 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %70, i32 0, i32 7
  %71 = load i64, i64* %nstates55, align 8
  %mul56 = mul nsw i64 %68, %71
  %72 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space57 = getelementptr inbounds %struct.lmat, %struct.lmat* %72, i32 0, i32 9
  %73 = load i8*, i8** %space57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %73, i64 %mul56
  %74 = load %struct.lmat*, %struct.lmat** %m, align 8
  %fresh = getelementptr inbounds %struct.lmat, %struct.lmat* %74, i32 0, i32 11
  store i8* %arrayidx58, i8** %fresh, align 8
  %75 = load %struct.lmat*, %struct.lmat** %m, align 8
  %vn59 = getelementptr inbounds %struct.lmat, %struct.lmat* %75, i32 0, i32 8
  %76 = load i64, i64* %vn59, align 8
  %inc60 = add nsw i64 %76, 1
  store i64 %inc60, i64* %vn59, align 8
  %77 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g61 = getelementptr inbounds %struct.lmat, %struct.lmat* %77, i32 0, i32 0
  %78 = load %struct.re_guts*, %struct.re_guts** %g61, align 8
  %nstates62 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %78, i32 0, i32 7
  %79 = load i64, i64* %nstates62, align 8
  %mul63 = mul nsw i64 %76, %79
  %80 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space64 = getelementptr inbounds %struct.lmat, %struct.lmat* %80, i32 0, i32 9
  %81 = load i8*, i8** %space64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %81, i64 %mul63
  %82 = load %struct.lmat*, %struct.lmat** %m, align 8
  %tmp = getelementptr inbounds %struct.lmat, %struct.lmat* %82, i32 0, i32 12
  store i8* %arrayidx65, i8** %tmp, align 8
  %83 = load %struct.lmat*, %struct.lmat** %m, align 8
  %vn66 = getelementptr inbounds %struct.lmat, %struct.lmat* %83, i32 0, i32 8
  %84 = load i64, i64* %vn66, align 8
  %inc67 = add nsw i64 %84, 1
  store i64 %inc67, i64* %vn66, align 8
  %85 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g68 = getelementptr inbounds %struct.lmat, %struct.lmat* %85, i32 0, i32 0
  %86 = load %struct.re_guts*, %struct.re_guts** %g68, align 8
  %nstates69 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %86, i32 0, i32 7
  %87 = load i64, i64* %nstates69, align 8
  %mul70 = mul nsw i64 %84, %87
  %88 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space71 = getelementptr inbounds %struct.lmat, %struct.lmat* %88, i32 0, i32 9
  %89 = load i8*, i8** %space71, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %89, i64 %mul70
  %90 = load %struct.lmat*, %struct.lmat** %m, align 8
  %empty = getelementptr inbounds %struct.lmat, %struct.lmat* %90, i32 0, i32 13
  store i8* %arrayidx72, i8** %empty, align 8
  %91 = load %struct.lmat*, %struct.lmat** %m, align 8
  %empty73 = getelementptr inbounds %struct.lmat, %struct.lmat* %91, i32 0, i32 13
  %92 = load i8*, i8** %empty73, align 8
  %93 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g74 = getelementptr inbounds %struct.lmat, %struct.lmat* %93, i32 0, i32 0
  %94 = load %struct.re_guts*, %struct.re_guts** %g74, align 8
  %nstates75 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %94, i32 0, i32 7
  %95 = load i64, i64* %nstates75, align 8
  call void @llvm.memset.p0i8.i64(i8* %92, i8 0, i64 %95, i32 1, i1 false)
  br label %for.cond.76

for.cond.76:                                      ; preds = %if.end.205, %if.end.45
  %96 = load %struct.lmat*, %struct.lmat** %m, align 8
  %97 = load i8*, i8** %start, align 8
  %98 = load i8*, i8** %stop, align 8
  %99 = load i64, i64* %gf, align 8
  %100 = load i64, i64* %gl, align 8
  %call77 = call i8* @lfast(%struct.lmat* %96, i8* %97, i8* %98, i64 %99, i64 %100)
  store i8* %call77, i8** %endp, align 8
  %101 = load i8*, i8** %endp, align 8
  %cmp78 = icmp eq i8* %101, null
  br i1 %cmp78, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %for.cond.76
  %102 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch81 = getelementptr inbounds %struct.lmat, %struct.lmat* %102, i32 0, i32 2
  %103 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch81, align 8
  %104 = bitcast %struct.regmatch_t* %103 to i8*
  call void @free(i8* %104) #4
  %105 = load %struct.lmat*, %struct.lmat** %m, align 8
  %lastpos82 = getelementptr inbounds %struct.lmat, %struct.lmat* %105, i32 0, i32 7
  %106 = load i8**, i8*** %lastpos82, align 8
  %107 = bitcast i8** %106 to i8*
  call void @free(i8* %107) #4
  %108 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space83 = getelementptr inbounds %struct.lmat, %struct.lmat* %108, i32 0, i32 9
  %109 = load i8*, i8** %space83, align 8
  call void @free(i8* %109) #4
  store i32 1, i32* %retval
  br label %return

if.end.84:                                        ; preds = %for.cond.76
  %110 = load i64, i64* %nmatch.addr, align 8
  %cmp85 = icmp eq i64 %110, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.90

land.lhs.true.87:                                 ; preds = %if.end.84
  %111 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %backrefs = getelementptr inbounds %struct.re_guts, %struct.re_guts* %111, i32 0, i32 18
  %112 = load i32, i32* %backrefs, align 4
  %tobool88 = icmp ne i32 %112, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %land.lhs.true.87
  br label %for.end.208

if.end.90:                                        ; preds = %land.lhs.true.87, %if.end.84
  br label %for.cond.91

for.cond.91:                                      ; preds = %if.end.96, %if.end.90
  %113 = load %struct.lmat*, %struct.lmat** %m, align 8
  %114 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp = getelementptr inbounds %struct.lmat, %struct.lmat* %114, i32 0, i32 6
  %115 = load i8*, i8** %coldp, align 8
  %116 = load i8*, i8** %stop, align 8
  %117 = load i64, i64* %gf, align 8
  %118 = load i64, i64* %gl, align 8
  %call92 = call i8* @lslow(%struct.lmat* %113, i8* %115, i8* %116, i64 %117, i64 %118)
  store i8* %call92, i8** %endp, align 8
  %119 = load i8*, i8** %endp, align 8
  %cmp93 = icmp ne i8* %119, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.cond.91
  br label %for.end.99

if.end.96:                                        ; preds = %for.cond.91
  %120 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp97 = getelementptr inbounds %struct.lmat, %struct.lmat* %120, i32 0, i32 6
  %121 = load i8*, i8** %coldp97, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr98, i8** %coldp97, align 8
  br label %for.cond.91

for.end.99:                                       ; preds = %if.then.95
  %122 = load i64, i64* %nmatch.addr, align 8
  %cmp100 = icmp eq i64 %122, 1
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.106

land.lhs.true.102:                                ; preds = %for.end.99
  %123 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %backrefs103 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %123, i32 0, i32 18
  %124 = load i32, i32* %backrefs103, align 4
  %tobool104 = icmp ne i32 %124, 0
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %land.lhs.true.102
  br label %for.end.208

if.end.106:                                       ; preds = %land.lhs.true.102, %for.end.99
  %125 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch107 = getelementptr inbounds %struct.lmat, %struct.lmat* %125, i32 0, i32 2
  %126 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch107, align 8
  %cmp108 = icmp eq %struct.regmatch_t* %126, null
  br i1 %cmp108, label %if.then.110, label %if.end.116

if.then.110:                                      ; preds = %if.end.106
  %127 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g111 = getelementptr inbounds %struct.lmat, %struct.lmat* %127, i32 0, i32 0
  %128 = load %struct.re_guts*, %struct.re_guts** %g111, align 8
  %nsub = getelementptr inbounds %struct.re_guts, %struct.re_guts* %128, i32 0, i32 17
  %129 = load i64, i64* %nsub, align 8
  %add112 = add i64 %129, 1
  %mul113 = mul i64 %add112, 16
  %call114 = call i8* @cli_malloc(i64 %mul113)
  %130 = bitcast i8* %call114 to %struct.regmatch_t*
  %131 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch115 = getelementptr inbounds %struct.lmat, %struct.lmat* %131, i32 0, i32 2
  store %struct.regmatch_t* %130, %struct.regmatch_t** %pmatch115, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.110, %if.end.106
  %132 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch117 = getelementptr inbounds %struct.lmat, %struct.lmat* %132, i32 0, i32 2
  %133 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch117, align 8
  %cmp118 = icmp eq %struct.regmatch_t* %133, null
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.116
  %134 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space121 = getelementptr inbounds %struct.lmat, %struct.lmat* %134, i32 0, i32 9
  %135 = load i8*, i8** %space121, align 8
  call void @free(i8* %135) #4
  store i32 12, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.end.116
  store i64 1, i64* %i, align 8
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.135, %if.end.122
  %136 = load i64, i64* %i, align 8
  %137 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g124 = getelementptr inbounds %struct.lmat, %struct.lmat* %137, i32 0, i32 0
  %138 = load %struct.re_guts*, %struct.re_guts** %g124, align 8
  %nsub125 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %138, i32 0, i32 17
  %139 = load i64, i64* %nsub125, align 8
  %cmp126 = icmp ule i64 %136, %139
  br i1 %cmp126, label %for.body.128, label %for.end.137

for.body.128:                                     ; preds = %for.cond.123
  %140 = load i64, i64* %i, align 8
  %141 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch129 = getelementptr inbounds %struct.lmat, %struct.lmat* %141, i32 0, i32 2
  %142 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch129, align 8
  %arrayidx130 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %142, i64 %140
  %rm_eo131 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx130, i32 0, i32 1
  store i64 -1, i64* %rm_eo131, align 8
  %143 = load i64, i64* %i, align 8
  %144 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch132 = getelementptr inbounds %struct.lmat, %struct.lmat* %144, i32 0, i32 2
  %145 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch132, align 8
  %arrayidx133 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %145, i64 %143
  %rm_so134 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx133, i32 0, i32 0
  store i64 -1, i64* %rm_so134, align 8
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.body.128
  %146 = load i64, i64* %i, align 8
  %inc136 = add i64 %146, 1
  store i64 %inc136, i64* %i, align 8
  br label %for.cond.123

for.end.137:                                      ; preds = %for.cond.123
  %147 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %backrefs138 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %147, i32 0, i32 18
  %148 = load i32, i32* %backrefs138, align 4
  %tobool139 = icmp ne i32 %148, 0
  br i1 %tobool139, label %if.else.147, label %land.lhs.true.140

land.lhs.true.140:                                ; preds = %for.end.137
  %149 = load %struct.lmat*, %struct.lmat** %m, align 8
  %eflags141 = getelementptr inbounds %struct.lmat, %struct.lmat* %149, i32 0, i32 1
  %150 = load i32, i32* %eflags141, align 4
  %and142 = and i32 %150, 1024
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.else.147, label %if.then.144

if.then.144:                                      ; preds = %land.lhs.true.140
  %151 = load %struct.lmat*, %struct.lmat** %m, align 8
  %152 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp145 = getelementptr inbounds %struct.lmat, %struct.lmat* %152, i32 0, i32 6
  %153 = load i8*, i8** %coldp145, align 8
  %154 = load i8*, i8** %endp, align 8
  %155 = load i64, i64* %gf, align 8
  %156 = load i64, i64* %gl, align 8
  %call146 = call i8* @ldissect(%struct.lmat* %151, i8* %153, i8* %154, i64 %155, i64 %156)
  store i8* %call146, i8** %dp, align 8
  br label %if.end.174

if.else.147:                                      ; preds = %land.lhs.true.140, %for.end.137
  %157 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %nplus = getelementptr inbounds %struct.re_guts, %struct.re_guts* %157, i32 0, i32 19
  %158 = load i64, i64* %nplus, align 8
  %cmp148 = icmp sgt i64 %158, 0
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.160

land.lhs.true.150:                                ; preds = %if.else.147
  %159 = load %struct.lmat*, %struct.lmat** %m, align 8
  %lastpos151 = getelementptr inbounds %struct.lmat, %struct.lmat* %159, i32 0, i32 7
  %160 = load i8**, i8*** %lastpos151, align 8
  %cmp152 = icmp eq i8** %160, null
  br i1 %cmp152, label %if.then.154, label %if.end.160

if.then.154:                                      ; preds = %land.lhs.true.150
  %161 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %nplus155 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %161, i32 0, i32 19
  %162 = load i64, i64* %nplus155, align 8
  %add156 = add nsw i64 %162, 1
  %mul157 = mul i64 %add156, 8
  %call158 = call i8* @cli_malloc(i64 %mul157)
  %163 = bitcast i8* %call158 to i8**
  %164 = load %struct.lmat*, %struct.lmat** %m, align 8
  %lastpos159 = getelementptr inbounds %struct.lmat, %struct.lmat* %164, i32 0, i32 7
  store i8** %163, i8*** %lastpos159, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.154, %land.lhs.true.150, %if.else.147
  %165 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %nplus161 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %165, i32 0, i32 19
  %166 = load i64, i64* %nplus161, align 8
  %cmp162 = icmp sgt i64 %166, 0
  br i1 %cmp162, label %land.lhs.true.164, label %if.end.171

land.lhs.true.164:                                ; preds = %if.end.160
  %167 = load %struct.lmat*, %struct.lmat** %m, align 8
  %lastpos165 = getelementptr inbounds %struct.lmat, %struct.lmat* %167, i32 0, i32 7
  %168 = load i8**, i8*** %lastpos165, align 8
  %cmp166 = icmp eq i8** %168, null
  br i1 %cmp166, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %land.lhs.true.164
  %169 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch169 = getelementptr inbounds %struct.lmat, %struct.lmat* %169, i32 0, i32 2
  %170 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch169, align 8
  %171 = bitcast %struct.regmatch_t* %170 to i8*
  call void @free(i8* %171) #4
  %172 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space170 = getelementptr inbounds %struct.lmat, %struct.lmat* %172, i32 0, i32 9
  %173 = load i8*, i8** %space170, align 8
  call void @free(i8* %173) #4
  store i32 12, i32* %retval
  br label %return

if.end.171:                                       ; preds = %land.lhs.true.164, %if.end.160
  %174 = load %struct.lmat*, %struct.lmat** %m, align 8
  %175 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp172 = getelementptr inbounds %struct.lmat, %struct.lmat* %175, i32 0, i32 6
  %176 = load i8*, i8** %coldp172, align 8
  %177 = load i8*, i8** %endp, align 8
  %178 = load i64, i64* %gf, align 8
  %179 = load i64, i64* %gl, align 8
  %call173 = call i8* @lbackref(%struct.lmat* %174, i8* %176, i8* %177, i64 %178, i64 %179, i64 0, i32 0)
  store i8* %call173, i8** %dp, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.171, %if.then.144
  %180 = load i8*, i8** %dp, align 8
  %cmp175 = icmp ne i8* %180, null
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.174
  br label %for.end.208

if.end.178:                                       ; preds = %if.end.174
  br label %for.cond.179

for.cond.179:                                     ; preds = %if.end.193, %if.end.178
  %181 = load i8*, i8** %dp, align 8
  %cmp180 = icmp ne i8* %181, null
  br i1 %cmp180, label %if.then.185, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond.179
  %182 = load i8*, i8** %endp, align 8
  %183 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp182 = getelementptr inbounds %struct.lmat, %struct.lmat* %183, i32 0, i32 6
  %184 = load i8*, i8** %coldp182, align 8
  %cmp183 = icmp ule i8* %182, %184
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %lor.lhs.false, %for.cond.179
  br label %for.end.196

if.end.186:                                       ; preds = %lor.lhs.false
  %185 = load %struct.lmat*, %struct.lmat** %m, align 8
  %186 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp187 = getelementptr inbounds %struct.lmat, %struct.lmat* %186, i32 0, i32 6
  %187 = load i8*, i8** %coldp187, align 8
  %188 = load i8*, i8** %endp, align 8
  %add.ptr188 = getelementptr inbounds i8, i8* %188, i64 -1
  %189 = load i64, i64* %gf, align 8
  %190 = load i64, i64* %gl, align 8
  %call189 = call i8* @lslow(%struct.lmat* %185, i8* %187, i8* %add.ptr188, i64 %189, i64 %190)
  store i8* %call189, i8** %endp, align 8
  %191 = load i8*, i8** %endp, align 8
  %cmp190 = icmp eq i8* %191, null
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.186
  br label %for.end.196

if.end.193:                                       ; preds = %if.end.186
  %192 = load %struct.lmat*, %struct.lmat** %m, align 8
  %193 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp194 = getelementptr inbounds %struct.lmat, %struct.lmat* %193, i32 0, i32 6
  %194 = load i8*, i8** %coldp194, align 8
  %195 = load i8*, i8** %endp, align 8
  %196 = load i64, i64* %gf, align 8
  %197 = load i64, i64* %gl, align 8
  %call195 = call i8* @lbackref(%struct.lmat* %192, i8* %194, i8* %195, i64 %196, i64 %197, i64 0, i32 0)
  store i8* %call195, i8** %dp, align 8
  br label %for.cond.179

for.end.196:                                      ; preds = %if.then.192, %if.then.185
  %198 = load i8*, i8** %dp, align 8
  %cmp197 = icmp ne i8* %198, null
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %for.end.196
  br label %for.end.208

if.end.200:                                       ; preds = %for.end.196
  %199 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp201 = getelementptr inbounds %struct.lmat, %struct.lmat* %199, i32 0, i32 6
  %200 = load i8*, i8** %coldp201, align 8
  %201 = load i8*, i8** %stop, align 8
  %cmp202 = icmp eq i8* %200, %201
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.end.200
  br label %for.end.208

if.end.205:                                       ; preds = %if.end.200
  %202 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp206 = getelementptr inbounds %struct.lmat, %struct.lmat* %202, i32 0, i32 6
  %203 = load i8*, i8** %coldp206, align 8
  %add.ptr207 = getelementptr inbounds i8, i8* %203, i64 1
  store i8* %add.ptr207, i8** %start, align 8
  br label %for.cond.76

for.end.208:                                      ; preds = %if.then.204, %if.then.199, %if.then.177, %if.then.105, %if.then.89
  %204 = load i64, i64* %nmatch.addr, align 8
  %cmp209 = icmp ugt i64 %204, 0
  br i1 %cmp209, label %if.then.211, label %if.end.225

if.then.211:                                      ; preds = %for.end.208
  %205 = load %struct.lmat*, %struct.lmat** %m, align 8
  %coldp212 = getelementptr inbounds %struct.lmat, %struct.lmat* %205, i32 0, i32 6
  %206 = load i8*, i8** %coldp212, align 8
  %207 = load %struct.lmat*, %struct.lmat** %m, align 8
  %offp213 = getelementptr inbounds %struct.lmat, %struct.lmat* %207, i32 0, i32 3
  %208 = load i8*, i8** %offp213, align 8
  %sub.ptr.lhs.cast214 = ptrtoint i8* %206 to i64
  %sub.ptr.rhs.cast215 = ptrtoint i8* %208 to i64
  %sub.ptr.sub216 = sub i64 %sub.ptr.lhs.cast214, %sub.ptr.rhs.cast215
  %209 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx217 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %209, i64 0
  %rm_so218 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx217, i32 0, i32 0
  store i64 %sub.ptr.sub216, i64* %rm_so218, align 8
  %210 = load i8*, i8** %endp, align 8
  %211 = load %struct.lmat*, %struct.lmat** %m, align 8
  %offp219 = getelementptr inbounds %struct.lmat, %struct.lmat* %211, i32 0, i32 3
  %212 = load i8*, i8** %offp219, align 8
  %sub.ptr.lhs.cast220 = ptrtoint i8* %210 to i64
  %sub.ptr.rhs.cast221 = ptrtoint i8* %212 to i64
  %sub.ptr.sub222 = sub i64 %sub.ptr.lhs.cast220, %sub.ptr.rhs.cast221
  %213 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx223 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %213, i64 0
  %rm_eo224 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx223, i32 0, i32 1
  store i64 %sub.ptr.sub222, i64* %rm_eo224, align 8
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.211, %for.end.208
  %214 = load i64, i64* %nmatch.addr, align 8
  %cmp226 = icmp ugt i64 %214, 1
  br i1 %cmp226, label %if.then.228, label %if.end.250

if.then.228:                                      ; preds = %if.end.225
  store i64 1, i64* %i, align 8
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.inc.247, %if.then.228
  %215 = load i64, i64* %i, align 8
  %216 = load i64, i64* %nmatch.addr, align 8
  %cmp230 = icmp ult i64 %215, %216
  br i1 %cmp230, label %for.body.232, label %for.end.249

for.body.232:                                     ; preds = %for.cond.229
  %217 = load i64, i64* %i, align 8
  %218 = load %struct.lmat*, %struct.lmat** %m, align 8
  %g233 = getelementptr inbounds %struct.lmat, %struct.lmat* %218, i32 0, i32 0
  %219 = load %struct.re_guts*, %struct.re_guts** %g233, align 8
  %nsub234 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %219, i32 0, i32 17
  %220 = load i64, i64* %nsub234, align 8
  %cmp235 = icmp ule i64 %217, %220
  br i1 %cmp235, label %if.then.237, label %if.else.241

if.then.237:                                      ; preds = %for.body.232
  %221 = load i64, i64* %i, align 8
  %222 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx238 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %222, i64 %221
  %223 = load i64, i64* %i, align 8
  %224 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch239 = getelementptr inbounds %struct.lmat, %struct.lmat* %224, i32 0, i32 2
  %225 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch239, align 8
  %arrayidx240 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %225, i64 %223
  %226 = bitcast %struct.regmatch_t* %arrayidx238 to i8*
  %227 = bitcast %struct.regmatch_t* %arrayidx240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %226, i8* %227, i64 16, i32 8, i1 false)
  br label %if.end.246

if.else.241:                                      ; preds = %for.body.232
  %228 = load i64, i64* %i, align 8
  %229 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx242 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %229, i64 %228
  %rm_so243 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx242, i32 0, i32 0
  store i64 -1, i64* %rm_so243, align 8
  %230 = load i64, i64* %i, align 8
  %231 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx244 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %231, i64 %230
  %rm_eo245 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx244, i32 0, i32 1
  store i64 -1, i64* %rm_eo245, align 8
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.241, %if.then.237
  br label %for.inc.247

for.inc.247:                                      ; preds = %if.end.246
  %232 = load i64, i64* %i, align 8
  %inc248 = add i64 %232, 1
  store i64 %inc248, i64* %i, align 8
  br label %for.cond.229

for.end.249:                                      ; preds = %for.cond.229
  br label %if.end.250

if.end.250:                                       ; preds = %for.end.249, %if.end.225
  %233 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch251 = getelementptr inbounds %struct.lmat, %struct.lmat* %233, i32 0, i32 2
  %234 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch251, align 8
  %cmp252 = icmp ne %struct.regmatch_t* %234, null
  br i1 %cmp252, label %if.then.254, label %if.end.256

if.then.254:                                      ; preds = %if.end.250
  %235 = load %struct.lmat*, %struct.lmat** %m, align 8
  %pmatch255 = getelementptr inbounds %struct.lmat, %struct.lmat* %235, i32 0, i32 2
  %236 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch255, align 8
  %237 = bitcast %struct.regmatch_t* %236 to i8*
  call void @free(i8* %237) #4
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.254, %if.end.250
  %238 = load %struct.lmat*, %struct.lmat** %m, align 8
  %lastpos257 = getelementptr inbounds %struct.lmat, %struct.lmat* %238, i32 0, i32 7
  %239 = load i8**, i8*** %lastpos257, align 8
  %cmp258 = icmp ne i8** %239, null
  br i1 %cmp258, label %if.then.260, label %if.end.262

if.then.260:                                      ; preds = %if.end.256
  %240 = load %struct.lmat*, %struct.lmat** %m, align 8
  %lastpos261 = getelementptr inbounds %struct.lmat, %struct.lmat* %240, i32 0, i32 7
  %241 = load i8**, i8*** %lastpos261, align 8
  %242 = bitcast i8** %241 to i8*
  call void @free(i8* %242) #4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.260, %if.end.256
  %243 = load %struct.lmat*, %struct.lmat** %m, align 8
  %space263 = getelementptr inbounds %struct.lmat, %struct.lmat* %243, i32 0, i32 9
  %244 = load i8*, i8** %space263, align 8
  call void @free(i8* %244) #4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.262, %if.then.168, %if.then.120, %if.then.80, %if.then.44, %if.then.32, %if.then.8
  %245 = load i32, i32* %retval
  ret i32 %245
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @sfast(%struct.smat* %m, i8* %start, i8* %stop, i64 %startst, i64 %stopst) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.smat*, align 8
  %start.addr = alloca i8*, align 8
  %stop.addr = alloca i8*, align 8
  %startst.addr = alloca i64, align 8
  %stopst.addr = alloca i64, align 8
  %st = alloca i64, align 8
  %fresh = alloca i64, align 8
  %tmp = alloca i64, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %lastc = alloca i32, align 4
  %flagch = alloca i32, align 4
  %i = alloca i32, align 4
  %coldp = alloca i8*, align 8
  store %struct.smat* %m, %struct.smat** %m.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %stop, i8** %stop.addr, align 8
  store i64 %startst, i64* %startst.addr, align 8
  store i64 %stopst, i64* %stopst.addr, align 8
  %0 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %st1 = getelementptr inbounds %struct.smat, %struct.smat* %0, i32 0, i32 9
  %1 = load i64, i64* %st1, align 8
  store i64 %1, i64* %st, align 8
  %2 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %fresh2 = getelementptr inbounds %struct.smat, %struct.smat* %2, i32 0, i32 10
  %3 = load i64, i64* %fresh2, align 8
  store i64 %3, i64* %fresh, align 8
  %4 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %tmp3 = getelementptr inbounds %struct.smat, %struct.smat* %4, i32 0, i32 11
  %5 = load i64, i64* %tmp3, align 8
  store i64 %5, i64* %tmp, align 8
  %6 = load i8*, i8** %start.addr, align 8
  store i8* %6, i8** %p, align 8
  %7 = load i8*, i8** %start.addr, align 8
  %8 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %beginp = getelementptr inbounds %struct.smat, %struct.smat* %8, i32 0, i32 4
  %9 = load i8*, i8** %beginp, align 8
  %cmp = icmp eq i8* %7, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i8*, i8** %start.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 -1
  %11 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %c, align 4
  store i64 0, i64* %st, align 8
  %12 = load i64, i64* %startst.addr, align 8
  %shl = shl i64 1, %12
  %13 = load i64, i64* %st, align 8
  %or = or i64 %13, %shl
  store i64 %or, i64* %st, align 8
  %14 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g = getelementptr inbounds %struct.smat, %struct.smat* %14, i32 0, i32 0
  %15 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %16 = load i64, i64* %startst.addr, align 8
  %17 = load i64, i64* %stopst.addr, align 8
  %18 = load i64, i64* %st, align 8
  %19 = load i64, i64* %st, align 8
  %call = call i64 @sstep(%struct.re_guts* %15, i64 %16, i64 %17, i64 %18, i32 132, i64 %19)
  store i64 %call, i64* %st, align 8
  %20 = load i64, i64* %st, align 8
  store i64 %20, i64* %fresh, align 8
  store i8* null, i8** %coldp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.134, %cond.end
  %21 = load i32, i32* %c, align 4
  store i32 %21, i32* %lastc, align 4
  %22 = load i8*, i8** %p, align 8
  %23 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp = getelementptr inbounds %struct.smat, %struct.smat* %23, i32 0, i32 5
  %24 = load i8*, i8** %endp, align 8
  %cmp10 = icmp eq i8* %22, %24
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %for.cond
  br label %cond.end.15

cond.false.13:                                    ; preds = %for.cond
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv14 = sext i8 %26 to i32
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i32 [ 128, %cond.true.12 ], [ %conv14, %cond.false.13 ]
  store i32 %cond16, i32* %c, align 4
  %27 = load i64, i64* %st, align 8
  %28 = load i64, i64* %fresh, align 8
  %cmp17 = icmp eq i64 %27, %28
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.15
  %29 = load i8*, i8** %p, align 8
  store i8* %29, i8** %coldp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.15
  store i32 0, i32* %flagch, align 4
  store i32 0, i32* %i, align 4
  %30 = load i32, i32* %lastc, align 4
  %cmp19 = icmp eq i32 %30, 10
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %31 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g21 = getelementptr inbounds %struct.smat, %struct.smat* %31, i32 0, i32 0
  %32 = load %struct.re_guts*, %struct.re_guts** %g21, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %32, i32 0, i32 6
  %33 = load i32, i32* %cflags, align 4
  %and = and i32 %33, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %34 = load i32, i32* %lastc, align 4
  %cmp22 = icmp eq i32 %34, 128
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %lor.lhs.false
  %35 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %eflags = getelementptr inbounds %struct.smat, %struct.smat* %35, i32 0, i32 1
  %36 = load i32, i32* %eflags, align 4
  %and25 = and i32 %36, 1
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.24, %land.lhs.true
  store i32 129, i32* %flagch, align 4
  %37 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g28 = getelementptr inbounds %struct.smat, %struct.smat* %37, i32 0, i32 0
  %38 = load %struct.re_guts*, %struct.re_guts** %g28, align 8
  %nbol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %38, i32 0, i32 11
  %39 = load i32, i32* %nbol, align 4
  store i32 %39, i32* %i, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %land.lhs.true.24, %lor.lhs.false
  %40 = load i32, i32* %c, align 4
  %cmp30 = icmp eq i32 %40, 10
  br i1 %cmp30, label %land.lhs.true.32, label %lor.lhs.false.37

land.lhs.true.32:                                 ; preds = %if.end.29
  %41 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g33 = getelementptr inbounds %struct.smat, %struct.smat* %41, i32 0, i32 0
  %42 = load %struct.re_guts*, %struct.re_guts** %g33, align 8
  %cflags34 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %42, i32 0, i32 6
  %43 = load i32, i32* %cflags34, align 4
  %and35 = and i32 %43, 8
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.44, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.32, %if.end.29
  %44 = load i32, i32* %c, align 4
  %cmp38 = icmp eq i32 %44, 128
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.49

land.lhs.true.40:                                 ; preds = %lor.lhs.false.37
  %45 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %eflags41 = getelementptr inbounds %struct.smat, %struct.smat* %45, i32 0, i32 1
  %46 = load i32, i32* %eflags41, align 4
  %and42 = and i32 %46, 2
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.end.49, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true.40, %land.lhs.true.32
  %47 = load i32, i32* %flagch, align 4
  %cmp45 = icmp eq i32 %47, 129
  %cond47 = select i1 %cmp45, i32 131, i32 130
  store i32 %cond47, i32* %flagch, align 4
  %48 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g48 = getelementptr inbounds %struct.smat, %struct.smat* %48, i32 0, i32 0
  %49 = load %struct.re_guts*, %struct.re_guts** %g48, align 8
  %neol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %49, i32 0, i32 12
  %50 = load i32, i32* %neol, align 4
  %51 = load i32, i32* %i, align 4
  %add = add nsw i32 %51, %50
  store i32 %add, i32* %i, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %land.lhs.true.40, %lor.lhs.false.37
  %52 = load i32, i32* %i, align 4
  %cmp50 = icmp ne i32 %52, 0
  br i1 %cmp50, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.end.49
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.then.52
  %53 = load i32, i32* %i, align 4
  %cmp54 = icmp sgt i32 %53, 0
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.53
  %54 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g56 = getelementptr inbounds %struct.smat, %struct.smat* %54, i32 0, i32 0
  %55 = load %struct.re_guts*, %struct.re_guts** %g56, align 8
  %56 = load i64, i64* %startst.addr, align 8
  %57 = load i64, i64* %stopst.addr, align 8
  %58 = load i64, i64* %st, align 8
  %59 = load i32, i32* %flagch, align 4
  %60 = load i64, i64* %st, align 8
  %call57 = call i64 @sstep(%struct.re_guts* %55, i64 %56, i64 %57, i64 %58, i32 %59, i64 %60)
  store i64 %call57, i64* %st, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %i, align 4
  %dec = add nsw i32 %61, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.end.49
  %62 = load i32, i32* %flagch, align 4
  %cmp59 = icmp eq i32 %62, 129
  br i1 %cmp59, label %land.lhs.true.72, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.end.58
  %63 = load i32, i32* %lastc, align 4
  %cmp62 = icmp ne i32 %63, 128
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.86

land.lhs.true.64:                                 ; preds = %lor.lhs.false.61
  %64 = load i32, i32* %lastc, align 4
  %idxprom = sext i32 %64 to i64
  %call65 = call i16** @__ctype_b_loc() #7
  %65 = load i16*, i16** %call65, align 8
  %arrayidx = getelementptr inbounds i16, i16* %65, i64 %idxprom
  %66 = load i16, i16* %arrayidx, align 2
  %conv66 = zext i16 %66 to i32
  %and67 = and i32 %conv66, 8
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.end.86, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %land.lhs.true.64
  %67 = load i32, i32* %lastc, align 4
  %cmp70 = icmp eq i32 %67, 95
  br i1 %cmp70, label %if.end.86, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %lor.lhs.false.69, %if.end.58
  %68 = load i32, i32* %c, align 4
  %cmp73 = icmp ne i32 %68, 128
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.86

land.lhs.true.75:                                 ; preds = %land.lhs.true.72
  %69 = load i32, i32* %c, align 4
  %idxprom76 = sext i32 %69 to i64
  %call77 = call i16** @__ctype_b_loc() #7
  %70 = load i16*, i16** %call77, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %70, i64 %idxprom76
  %71 = load i16, i16* %arrayidx78, align 2
  %conv79 = zext i16 %71 to i32
  %and80 = and i32 %conv79, 8
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.85, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %land.lhs.true.75
  %72 = load i32, i32* %c, align 4
  %cmp83 = icmp eq i32 %72, 95
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %lor.lhs.false.82, %land.lhs.true.75
  store i32 133, i32* %flagch, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %lor.lhs.false.82, %land.lhs.true.72, %lor.lhs.false.69, %land.lhs.true.64, %lor.lhs.false.61
  %73 = load i32, i32* %lastc, align 4
  %cmp87 = icmp ne i32 %73, 128
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.116

land.lhs.true.89:                                 ; preds = %if.end.86
  %74 = load i32, i32* %lastc, align 4
  %idxprom90 = sext i32 %74 to i64
  %call91 = call i16** @__ctype_b_loc() #7
  %75 = load i16*, i16** %call91, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %75, i64 %idxprom90
  %76 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %76 to i32
  %and94 = and i32 %conv93, 8
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %land.lhs.true.99, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %land.lhs.true.89
  %77 = load i32, i32* %lastc, align 4
  %cmp97 = icmp eq i32 %77, 95
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.116

land.lhs.true.99:                                 ; preds = %lor.lhs.false.96, %land.lhs.true.89
  %78 = load i32, i32* %flagch, align 4
  %cmp100 = icmp eq i32 %78, 130
  br i1 %cmp100, label %if.then.115, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.99
  %79 = load i32, i32* %c, align 4
  %cmp103 = icmp ne i32 %79, 128
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.116

land.lhs.true.105:                                ; preds = %lor.lhs.false.102
  %80 = load i32, i32* %c, align 4
  %idxprom106 = sext i32 %80 to i64
  %call107 = call i16** @__ctype_b_loc() #7
  %81 = load i16*, i16** %call107, align 8
  %arrayidx108 = getelementptr inbounds i16, i16* %81, i64 %idxprom106
  %82 = load i16, i16* %arrayidx108, align 2
  %conv109 = zext i16 %82 to i32
  %and110 = and i32 %conv109, 8
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.end.116, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %land.lhs.true.105
  %83 = load i32, i32* %c, align 4
  %cmp113 = icmp eq i32 %83, 95
  br i1 %cmp113, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %lor.lhs.false.112, %land.lhs.true.99
  store i32 134, i32* %flagch, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %lor.lhs.false.112, %land.lhs.true.105, %lor.lhs.false.102, %lor.lhs.false.96, %if.end.86
  %84 = load i32, i32* %flagch, align 4
  %cmp117 = icmp eq i32 %84, 133
  br i1 %cmp117, label %if.then.122, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %if.end.116
  %85 = load i32, i32* %flagch, align 4
  %cmp120 = icmp eq i32 %85, 134
  br i1 %cmp120, label %if.then.122, label %if.end.125

if.then.122:                                      ; preds = %lor.lhs.false.119, %if.end.116
  %86 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g123 = getelementptr inbounds %struct.smat, %struct.smat* %86, i32 0, i32 0
  %87 = load %struct.re_guts*, %struct.re_guts** %g123, align 8
  %88 = load i64, i64* %startst.addr, align 8
  %89 = load i64, i64* %stopst.addr, align 8
  %90 = load i64, i64* %st, align 8
  %91 = load i32, i32* %flagch, align 4
  %92 = load i64, i64* %st, align 8
  %call124 = call i64 @sstep(%struct.re_guts* %87, i64 %88, i64 %89, i64 %90, i32 %91, i64 %92)
  store i64 %call124, i64* %st, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.122, %lor.lhs.false.119
  %93 = load i64, i64* %st, align 8
  %94 = load i64, i64* %stopst.addr, align 8
  %shl126 = shl i64 1, %94
  %and127 = and i64 %93, %shl126
  %cmp128 = icmp ne i64 %and127, 0
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %if.end.125
  %95 = load i8*, i8** %p, align 8
  %96 = load i8*, i8** %stop.addr, align 8
  %cmp131 = icmp eq i8* %95, %96
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.130, %if.end.125
  br label %for.end.137

if.end.134:                                       ; preds = %lor.lhs.false.130
  %97 = load i64, i64* %st, align 8
  store i64 %97, i64* %tmp, align 8
  %98 = load i64, i64* %fresh, align 8
  store i64 %98, i64* %st, align 8
  %99 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g135 = getelementptr inbounds %struct.smat, %struct.smat* %99, i32 0, i32 0
  %100 = load %struct.re_guts*, %struct.re_guts** %g135, align 8
  %101 = load i64, i64* %startst.addr, align 8
  %102 = load i64, i64* %stopst.addr, align 8
  %103 = load i64, i64* %tmp, align 8
  %104 = load i32, i32* %c, align 4
  %105 = load i64, i64* %st, align 8
  %call136 = call i64 @sstep(%struct.re_guts* %100, i64 %101, i64 %102, i64 %103, i32 %104, i64 %105)
  store i64 %call136, i64* %st, align 8
  %106 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end.137:                                      ; preds = %if.then.133
  %107 = load i8*, i8** %coldp, align 8
  %108 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %coldp138 = getelementptr inbounds %struct.smat, %struct.smat* %108, i32 0, i32 6
  store i8* %107, i8** %coldp138, align 8
  %109 = load i64, i64* %st, align 8
  %110 = load i64, i64* %stopst.addr, align 8
  %shl139 = shl i64 1, %110
  %and140 = and i64 %109, %shl139
  %cmp141 = icmp ne i64 %and140, 0
  br i1 %cmp141, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %for.end.137
  %111 = load i8*, i8** %p, align 8
  %add.ptr144 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %add.ptr144, i8** %retval
  br label %return

if.else:                                          ; preds = %for.end.137
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.143
  %112 = load i8*, i8** %retval
  ret i8* %112
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @sslow(%struct.smat* %m, i8* %start, i8* %stop, i64 %startst, i64 %stopst) #0 {
entry:
  %m.addr = alloca %struct.smat*, align 8
  %start.addr = alloca i8*, align 8
  %stop.addr = alloca i8*, align 8
  %startst.addr = alloca i64, align 8
  %stopst.addr = alloca i64, align 8
  %st = alloca i64, align 8
  %empty = alloca i64, align 8
  %tmp = alloca i64, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %lastc = alloca i32, align 4
  %flagch = alloca i32, align 4
  %i = alloca i32, align 4
  %matchp = alloca i8*, align 8
  store %struct.smat* %m, %struct.smat** %m.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %stop, i8** %stop.addr, align 8
  store i64 %startst, i64* %startst.addr, align 8
  store i64 %stopst, i64* %stopst.addr, align 8
  %0 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %st1 = getelementptr inbounds %struct.smat, %struct.smat* %0, i32 0, i32 9
  %1 = load i64, i64* %st1, align 8
  store i64 %1, i64* %st, align 8
  %2 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %empty2 = getelementptr inbounds %struct.smat, %struct.smat* %2, i32 0, i32 12
  %3 = load i64, i64* %empty2, align 8
  store i64 %3, i64* %empty, align 8
  %4 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %tmp3 = getelementptr inbounds %struct.smat, %struct.smat* %4, i32 0, i32 11
  %5 = load i64, i64* %tmp3, align 8
  store i64 %5, i64* %tmp, align 8
  %6 = load i8*, i8** %start.addr, align 8
  store i8* %6, i8** %p, align 8
  %7 = load i8*, i8** %start.addr, align 8
  %8 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %beginp = getelementptr inbounds %struct.smat, %struct.smat* %8, i32 0, i32 4
  %9 = load i8*, i8** %beginp, align 8
  %cmp = icmp eq i8* %7, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i8*, i8** %start.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 -1
  %11 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %c, align 4
  store i64 0, i64* %st, align 8
  %12 = load i64, i64* %startst.addr, align 8
  %shl = shl i64 1, %12
  %13 = load i64, i64* %st, align 8
  %or = or i64 %13, %shl
  store i64 %or, i64* %st, align 8
  %14 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g = getelementptr inbounds %struct.smat, %struct.smat* %14, i32 0, i32 0
  %15 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %16 = load i64, i64* %startst.addr, align 8
  %17 = load i64, i64* %stopst.addr, align 8
  %18 = load i64, i64* %st, align 8
  %19 = load i64, i64* %st, align 8
  %call = call i64 @sstep(%struct.re_guts* %15, i64 %16, i64 %17, i64 %18, i32 132, i64 %19)
  store i64 %call, i64* %st, align 8
  store i8* null, i8** %matchp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.134, %cond.end
  %20 = load i32, i32* %c, align 4
  store i32 %20, i32* %lastc, align 4
  %21 = load i8*, i8** %p, align 8
  %22 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp = getelementptr inbounds %struct.smat, %struct.smat* %22, i32 0, i32 5
  %23 = load i8*, i8** %endp, align 8
  %cmp10 = icmp eq i8* %21, %23
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %for.cond
  br label %cond.end.15

cond.false.13:                                    ; preds = %for.cond
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv14 = sext i8 %25 to i32
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i32 [ 128, %cond.true.12 ], [ %conv14, %cond.false.13 ]
  store i32 %cond16, i32* %c, align 4
  store i32 0, i32* %flagch, align 4
  store i32 0, i32* %i, align 4
  %26 = load i32, i32* %lastc, align 4
  %cmp17 = icmp eq i32 %26, 10
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end.15
  %27 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g19 = getelementptr inbounds %struct.smat, %struct.smat* %27, i32 0, i32 0
  %28 = load %struct.re_guts*, %struct.re_guts** %g19, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %28, i32 0, i32 6
  %29 = load i32, i32* %cflags, align 4
  %and = and i32 %29, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end.15
  %30 = load i32, i32* %lastc, align 4
  %cmp20 = icmp eq i32 %30, 128
  br i1 %cmp20, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %lor.lhs.false
  %31 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %eflags = getelementptr inbounds %struct.smat, %struct.smat* %31, i32 0, i32 1
  %32 = load i32, i32* %eflags, align 4
  %and23 = and i32 %32, 1
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.22, %land.lhs.true
  store i32 129, i32* %flagch, align 4
  %33 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g25 = getelementptr inbounds %struct.smat, %struct.smat* %33, i32 0, i32 0
  %34 = load %struct.re_guts*, %struct.re_guts** %g25, align 8
  %nbol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %34, i32 0, i32 11
  %35 = load i32, i32* %nbol, align 4
  store i32 %35, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.22, %lor.lhs.false
  %36 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %36, 10
  br i1 %cmp26, label %land.lhs.true.28, label %lor.lhs.false.33

land.lhs.true.28:                                 ; preds = %if.end
  %37 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g29 = getelementptr inbounds %struct.smat, %struct.smat* %37, i32 0, i32 0
  %38 = load %struct.re_guts*, %struct.re_guts** %g29, align 8
  %cflags30 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %38, i32 0, i32 6
  %39 = load i32, i32* %cflags30, align 4
  %and31 = and i32 %39, 8
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.40, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %land.lhs.true.28, %if.end
  %40 = load i32, i32* %c, align 4
  %cmp34 = icmp eq i32 %40, 128
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.45

land.lhs.true.36:                                 ; preds = %lor.lhs.false.33
  %41 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %eflags37 = getelementptr inbounds %struct.smat, %struct.smat* %41, i32 0, i32 1
  %42 = load i32, i32* %eflags37, align 4
  %and38 = and i32 %42, 2
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.end.45, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.36, %land.lhs.true.28
  %43 = load i32, i32* %flagch, align 4
  %cmp41 = icmp eq i32 %43, 129
  %cond43 = select i1 %cmp41, i32 131, i32 130
  store i32 %cond43, i32* %flagch, align 4
  %44 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g44 = getelementptr inbounds %struct.smat, %struct.smat* %44, i32 0, i32 0
  %45 = load %struct.re_guts*, %struct.re_guts** %g44, align 8
  %neol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %45, i32 0, i32 12
  %46 = load i32, i32* %neol, align 4
  %47 = load i32, i32* %i, align 4
  %add = add nsw i32 %47, %46
  store i32 %add, i32* %i, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %land.lhs.true.36, %lor.lhs.false.33
  %48 = load i32, i32* %i, align 4
  %cmp46 = icmp ne i32 %48, 0
  br i1 %cmp46, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.end.45
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %if.then.48
  %49 = load i32, i32* %i, align 4
  %cmp50 = icmp sgt i32 %49, 0
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.49
  %50 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g52 = getelementptr inbounds %struct.smat, %struct.smat* %50, i32 0, i32 0
  %51 = load %struct.re_guts*, %struct.re_guts** %g52, align 8
  %52 = load i64, i64* %startst.addr, align 8
  %53 = load i64, i64* %stopst.addr, align 8
  %54 = load i64, i64* %st, align 8
  %55 = load i32, i32* %flagch, align 4
  %56 = load i64, i64* %st, align 8
  %call53 = call i64 @sstep(%struct.re_guts* %51, i64 %52, i64 %53, i64 %54, i32 %55, i64 %56)
  store i64 %call53, i64* %st, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %i, align 4
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  br label %if.end.54

if.end.54:                                        ; preds = %for.end, %if.end.45
  %58 = load i32, i32* %flagch, align 4
  %cmp55 = icmp eq i32 %58, 129
  br i1 %cmp55, label %land.lhs.true.68, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.end.54
  %59 = load i32, i32* %lastc, align 4
  %cmp58 = icmp ne i32 %59, 128
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.82

land.lhs.true.60:                                 ; preds = %lor.lhs.false.57
  %60 = load i32, i32* %lastc, align 4
  %idxprom = sext i32 %60 to i64
  %call61 = call i16** @__ctype_b_loc() #7
  %61 = load i16*, i16** %call61, align 8
  %arrayidx = getelementptr inbounds i16, i16* %61, i64 %idxprom
  %62 = load i16, i16* %arrayidx, align 2
  %conv62 = zext i16 %62 to i32
  %and63 = and i32 %conv62, 8
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.end.82, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.60
  %63 = load i32, i32* %lastc, align 4
  %cmp66 = icmp eq i32 %63, 95
  br i1 %cmp66, label %if.end.82, label %land.lhs.true.68

land.lhs.true.68:                                 ; preds = %lor.lhs.false.65, %if.end.54
  %64 = load i32, i32* %c, align 4
  %cmp69 = icmp ne i32 %64, 128
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.82

land.lhs.true.71:                                 ; preds = %land.lhs.true.68
  %65 = load i32, i32* %c, align 4
  %idxprom72 = sext i32 %65 to i64
  %call73 = call i16** @__ctype_b_loc() #7
  %66 = load i16*, i16** %call73, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %66, i64 %idxprom72
  %67 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %67 to i32
  %and76 = and i32 %conv75, 8
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.81, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %land.lhs.true.71
  %68 = load i32, i32* %c, align 4
  %cmp79 = icmp eq i32 %68, 95
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %lor.lhs.false.78, %land.lhs.true.71
  store i32 133, i32* %flagch, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %lor.lhs.false.78, %land.lhs.true.68, %lor.lhs.false.65, %land.lhs.true.60, %lor.lhs.false.57
  %69 = load i32, i32* %lastc, align 4
  %cmp83 = icmp ne i32 %69, 128
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.112

land.lhs.true.85:                                 ; preds = %if.end.82
  %70 = load i32, i32* %lastc, align 4
  %idxprom86 = sext i32 %70 to i64
  %call87 = call i16** @__ctype_b_loc() #7
  %71 = load i16*, i16** %call87, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %71, i64 %idxprom86
  %72 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %72 to i32
  %and90 = and i32 %conv89, 8
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %land.lhs.true.95, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true.85
  %73 = load i32, i32* %lastc, align 4
  %cmp93 = icmp eq i32 %73, 95
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.112

land.lhs.true.95:                                 ; preds = %lor.lhs.false.92, %land.lhs.true.85
  %74 = load i32, i32* %flagch, align 4
  %cmp96 = icmp eq i32 %74, 130
  br i1 %cmp96, label %if.then.111, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.95
  %75 = load i32, i32* %c, align 4
  %cmp99 = icmp ne i32 %75, 128
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.112

land.lhs.true.101:                                ; preds = %lor.lhs.false.98
  %76 = load i32, i32* %c, align 4
  %idxprom102 = sext i32 %76 to i64
  %call103 = call i16** @__ctype_b_loc() #7
  %77 = load i16*, i16** %call103, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %77, i64 %idxprom102
  %78 = load i16, i16* %arrayidx104, align 2
  %conv105 = zext i16 %78 to i32
  %and106 = and i32 %conv105, 8
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.end.112, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %land.lhs.true.101
  %79 = load i32, i32* %c, align 4
  %cmp109 = icmp eq i32 %79, 95
  br i1 %cmp109, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %lor.lhs.false.108, %land.lhs.true.95
  store i32 134, i32* %flagch, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %lor.lhs.false.108, %land.lhs.true.101, %lor.lhs.false.98, %lor.lhs.false.92, %if.end.82
  %80 = load i32, i32* %flagch, align 4
  %cmp113 = icmp eq i32 %80, 133
  br i1 %cmp113, label %if.then.118, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %if.end.112
  %81 = load i32, i32* %flagch, align 4
  %cmp116 = icmp eq i32 %81, 134
  br i1 %cmp116, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %lor.lhs.false.115, %if.end.112
  %82 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g119 = getelementptr inbounds %struct.smat, %struct.smat* %82, i32 0, i32 0
  %83 = load %struct.re_guts*, %struct.re_guts** %g119, align 8
  %84 = load i64, i64* %startst.addr, align 8
  %85 = load i64, i64* %stopst.addr, align 8
  %86 = load i64, i64* %st, align 8
  %87 = load i32, i32* %flagch, align 4
  %88 = load i64, i64* %st, align 8
  %call120 = call i64 @sstep(%struct.re_guts* %83, i64 %84, i64 %85, i64 %86, i32 %87, i64 %88)
  store i64 %call120, i64* %st, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %lor.lhs.false.115
  %89 = load i64, i64* %st, align 8
  %90 = load i64, i64* %stopst.addr, align 8
  %shl122 = shl i64 1, %90
  %and123 = and i64 %89, %shl122
  %cmp124 = icmp ne i64 %and123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.121
  %91 = load i8*, i8** %p, align 8
  store i8* %91, i8** %matchp, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.121
  %92 = load i64, i64* %st, align 8
  %93 = load i64, i64* %empty, align 8
  %cmp128 = icmp eq i64 %92, %93
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %if.end.127
  %94 = load i8*, i8** %p, align 8
  %95 = load i8*, i8** %stop.addr, align 8
  %cmp131 = icmp eq i8* %94, %95
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.130, %if.end.127
  br label %for.end.137

if.end.134:                                       ; preds = %lor.lhs.false.130
  %96 = load i64, i64* %st, align 8
  store i64 %96, i64* %tmp, align 8
  %97 = load i64, i64* %empty, align 8
  store i64 %97, i64* %st, align 8
  %98 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g135 = getelementptr inbounds %struct.smat, %struct.smat* %98, i32 0, i32 0
  %99 = load %struct.re_guts*, %struct.re_guts** %g135, align 8
  %100 = load i64, i64* %startst.addr, align 8
  %101 = load i64, i64* %stopst.addr, align 8
  %102 = load i64, i64* %tmp, align 8
  %103 = load i32, i32* %c, align 4
  %104 = load i64, i64* %st, align 8
  %call136 = call i64 @sstep(%struct.re_guts* %99, i64 %100, i64 %101, i64 %102, i32 %103, i64 %104)
  store i64 %call136, i64* %st, align 8
  %105 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end.137:                                      ; preds = %if.then.133
  %106 = load i8*, i8** %matchp, align 8
  ret i8* %106
}

declare i8* @cli_malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @sdissect(%struct.smat* %m, i8* %start, i8* %stop, i64 %startst, i64 %stopst) #0 {
entry:
  %m.addr = alloca %struct.smat*, align 8
  %start.addr = alloca i8*, align 8
  %stop.addr = alloca i8*, align 8
  %startst.addr = alloca i64, align 8
  %stopst.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %ss = alloca i64, align 8
  %es = alloca i64, align 8
  %sp = alloca i8*, align 8
  %stp = alloca i8*, align 8
  %rest = alloca i8*, align 8
  %tail = alloca i8*, align 8
  %ssub = alloca i64, align 8
  %esub = alloca i64, align 8
  %ssp = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %oldssp = alloca i8*, align 8
  %dp = alloca i8*, align 8
  store %struct.smat* %m, %struct.smat** %m.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %stop, i8** %stop.addr, align 8
  store i64 %startst, i64* %startst.addr, align 8
  store i64 %stopst, i64* %stopst.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %sp, align 8
  %1 = load i64, i64* %startst.addr, align 8
  store i64 %1, i64* %ss, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %ss, align 8
  %3 = load i64, i64* %stopst.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end.117

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %ss, align 8
  store i64 %4, i64* %es, align 8
  %5 = load i64, i64* %es, align 8
  %6 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g = getelementptr inbounds %struct.smat, %struct.smat* %6, i32 0, i32 0
  %7 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %strip = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i32 0, i32 1
  %8 = load i64*, i64** %strip, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %5
  %9 = load i64, i64* %arrayidx, align 8
  %and = and i64 %9, 4160749568
  switch i64 %and, label %sw.epilog [
    i64 1207959552, label %sw.bb
    i64 1476395008, label %sw.bb
    i64 2013265920, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %10 = load i64, i64* %es, align 8
  %11 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g1 = getelementptr inbounds %struct.smat, %struct.smat* %11, i32 0, i32 0
  %12 = load %struct.re_guts*, %struct.re_guts** %g1, align 8
  %strip2 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %12, i32 0, i32 1
  %13 = load i64*, i64** %strip2, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %13, i64 %10
  %14 = load i64, i64* %arrayidx3, align 8
  %and4 = and i64 %14, 134217727
  %15 = load i64, i64* %es, align 8
  %add = add i64 %15, %and4
  store i64 %add, i64* %es, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.5
  %16 = load i64, i64* %es, align 8
  %17 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g6 = getelementptr inbounds %struct.smat, %struct.smat* %17, i32 0, i32 0
  %18 = load %struct.re_guts*, %struct.re_guts** %g6, align 8
  %strip7 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %18, i32 0, i32 1
  %19 = load i64*, i64** %strip7, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %19, i64 %16
  %20 = load i64, i64* %arrayidx8, align 8
  %and9 = and i64 %20, 4160749568
  %cmp10 = icmp ne i64 %and9, 2415919104
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i64, i64* %es, align 8
  %22 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g11 = getelementptr inbounds %struct.smat, %struct.smat* %22, i32 0, i32 0
  %23 = load %struct.re_guts*, %struct.re_guts** %g11, align 8
  %strip12 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %23, i32 0, i32 1
  %24 = load i64*, i64** %strip12, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %24, i64 %21
  %25 = load i64, i64* %arrayidx13, align 8
  %and14 = and i64 %25, 134217727
  %26 = load i64, i64* %es, align 8
  %add15 = add i64 %26, %and14
  store i64 %add15, i64* %es, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %while.end, %sw.bb
  %27 = load i64, i64* %es, align 8
  %inc = add nsw i64 %27, 1
  store i64 %inc, i64* %es, align 8
  %28 = load i64, i64* %ss, align 8
  %29 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g16 = getelementptr inbounds %struct.smat, %struct.smat* %29, i32 0, i32 0
  %30 = load %struct.re_guts*, %struct.re_guts** %g16, align 8
  %strip17 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %30, i32 0, i32 1
  %31 = load i64*, i64** %strip17, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %31, i64 %28
  %32 = load i64, i64* %arrayidx18, align 8
  %and19 = and i64 %32, 4160749568
  switch i64 %and19, label %sw.default [
    i64 134217728, label %sw.bb.20
    i64 268435456, label %sw.bb.21
    i64 402653184, label %sw.bb.22
    i64 536870912, label %sw.bb.22
    i64 2550136832, label %sw.bb.22
    i64 2684354560, label %sw.bb.22
    i64 671088640, label %sw.bb.23
    i64 805306368, label %sw.bb.23
    i64 939524096, label %sw.bb.25
    i64 1073741824, label %sw.bb.25
    i64 1476395008, label %sw.bb.26
    i64 1207959552, label %sw.bb.36
    i64 2013265920, label %sw.bb.58
    i64 1342177280, label %sw.bb.96
    i64 1610612736, label %sw.bb.96
    i64 2147483648, label %sw.bb.96
    i64 2281701376, label %sw.bb.96
    i64 2415919104, label %sw.bb.96
    i64 1744830464, label %sw.bb.97
    i64 1879048192, label %sw.bb.103
  ]

sw.bb.20:                                         ; preds = %sw.epilog
  br label %sw.epilog.116

sw.bb.21:                                         ; preds = %sw.epilog
  %33 = load i8*, i8** %sp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.22:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.116

sw.bb.23:                                         ; preds = %sw.epilog, %sw.epilog
  %34 = load i8*, i8** %sp, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr24, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.25:                                         ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.116

sw.bb.26:                                         ; preds = %sw.epilog
  %35 = load i8*, i8** %stop.addr, align 8
  store i8* %35, i8** %stp, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %if.end, %sw.bb.26
  %36 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %37 = load i8*, i8** %sp, align 8
  %38 = load i8*, i8** %stp, align 8
  %39 = load i64, i64* %ss, align 8
  %40 = load i64, i64* %es, align 8
  %call = call i8* @sslow(%struct.smat* %36, i8* %37, i8* %38, i64 %39, i64 %40)
  store i8* %call, i8** %rest, align 8
  %41 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %42 = load i8*, i8** %rest, align 8
  %43 = load i8*, i8** %stop.addr, align 8
  %44 = load i64, i64* %es, align 8
  %45 = load i64, i64* %stopst.addr, align 8
  %call28 = call i8* @sslow(%struct.smat* %41, i8* %42, i8* %43, i64 %44, i64 %45)
  store i8* %call28, i8** %tail, align 8
  %46 = load i8*, i8** %tail, align 8
  %47 = load i8*, i8** %stop.addr, align 8
  %cmp29 = icmp eq i8* %46, %47
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.27
  br label %for.end

if.end:                                           ; preds = %for.cond.27
  %48 = load i8*, i8** %rest, align 8
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 -1
  store i8* %add.ptr, i8** %stp, align 8
  br label %for.cond.27

for.end:                                          ; preds = %if.then
  %49 = load i64, i64* %ss, align 8
  %add30 = add nsw i64 %49, 1
  store i64 %add30, i64* %ssub, align 8
  %50 = load i64, i64* %es, align 8
  %sub = sub nsw i64 %50, 1
  store i64 %sub, i64* %esub, align 8
  %51 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %52 = load i8*, i8** %sp, align 8
  %53 = load i8*, i8** %rest, align 8
  %54 = load i64, i64* %ssub, align 8
  %55 = load i64, i64* %esub, align 8
  %call31 = call i8* @sslow(%struct.smat* %51, i8* %52, i8* %53, i64 %54, i64 %55)
  %cmp32 = icmp ne i8* %call31, null
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %for.end
  %56 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %57 = load i8*, i8** %sp, align 8
  %58 = load i8*, i8** %rest, align 8
  %59 = load i64, i64* %ssub, align 8
  %60 = load i64, i64* %esub, align 8
  %call34 = call i8* @sdissect(%struct.smat* %56, i8* %57, i8* %58, i64 %59, i64 %60)
  store i8* %call34, i8** %dp, align 8
  br label %if.end.35

if.else:                                          ; preds = %for.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.33
  %61 = load i8*, i8** %rest, align 8
  store i8* %61, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.36:                                         ; preds = %sw.epilog
  %62 = load i8*, i8** %stop.addr, align 8
  store i8* %62, i8** %stp, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %if.end.42, %sw.bb.36
  %63 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %64 = load i8*, i8** %sp, align 8
  %65 = load i8*, i8** %stp, align 8
  %66 = load i64, i64* %ss, align 8
  %67 = load i64, i64* %es, align 8
  %call38 = call i8* @sslow(%struct.smat* %63, i8* %64, i8* %65, i64 %66, i64 %67)
  store i8* %call38, i8** %rest, align 8
  %68 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %69 = load i8*, i8** %rest, align 8
  %70 = load i8*, i8** %stop.addr, align 8
  %71 = load i64, i64* %es, align 8
  %72 = load i64, i64* %stopst.addr, align 8
  %call39 = call i8* @sslow(%struct.smat* %68, i8* %69, i8* %70, i64 %71, i64 %72)
  store i8* %call39, i8** %tail, align 8
  %73 = load i8*, i8** %tail, align 8
  %74 = load i8*, i8** %stop.addr, align 8
  %cmp40 = icmp eq i8* %73, %74
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.cond.37
  br label %for.end.44

if.end.42:                                        ; preds = %for.cond.37
  %75 = load i8*, i8** %rest, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %75, i64 -1
  store i8* %add.ptr43, i8** %stp, align 8
  br label %for.cond.37

for.end.44:                                       ; preds = %if.then.41
  %76 = load i64, i64* %ss, align 8
  %add45 = add nsw i64 %76, 1
  store i64 %add45, i64* %ssub, align 8
  %77 = load i64, i64* %es, align 8
  %sub46 = sub nsw i64 %77, 1
  store i64 %sub46, i64* %esub, align 8
  %78 = load i8*, i8** %sp, align 8
  store i8* %78, i8** %ssp, align 8
  %79 = load i8*, i8** %ssp, align 8
  store i8* %79, i8** %oldssp, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %if.end.52, %for.end.44
  %80 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %81 = load i8*, i8** %ssp, align 8
  %82 = load i8*, i8** %rest, align 8
  %83 = load i64, i64* %ssub, align 8
  %84 = load i64, i64* %esub, align 8
  %call48 = call i8* @sslow(%struct.smat* %80, i8* %81, i8* %82, i64 %83, i64 %84)
  store i8* %call48, i8** %sep, align 8
  %85 = load i8*, i8** %sep, align 8
  %cmp49 = icmp eq i8* %85, null
  br i1 %cmp49, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond.47
  %86 = load i8*, i8** %sep, align 8
  %87 = load i8*, i8** %ssp, align 8
  %cmp50 = icmp eq i8* %86, %87
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %lor.lhs.false, %for.cond.47
  br label %for.end.53

if.end.52:                                        ; preds = %lor.lhs.false
  %88 = load i8*, i8** %ssp, align 8
  store i8* %88, i8** %oldssp, align 8
  %89 = load i8*, i8** %sep, align 8
  store i8* %89, i8** %ssp, align 8
  br label %for.cond.47

for.end.53:                                       ; preds = %if.then.51
  %90 = load i8*, i8** %sep, align 8
  %cmp54 = icmp eq i8* %90, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end.53
  %91 = load i8*, i8** %ssp, align 8
  store i8* %91, i8** %sep, align 8
  %92 = load i8*, i8** %oldssp, align 8
  store i8* %92, i8** %ssp, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %for.end.53
  %93 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %94 = load i8*, i8** %ssp, align 8
  %95 = load i8*, i8** %sep, align 8
  %96 = load i64, i64* %ssub, align 8
  %97 = load i64, i64* %esub, align 8
  %call57 = call i8* @sdissect(%struct.smat* %93, i8* %94, i8* %95, i64 %96, i64 %97)
  store i8* %call57, i8** %dp, align 8
  %98 = load i8*, i8** %rest, align 8
  store i8* %98, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.58:                                         ; preds = %sw.epilog
  %99 = load i8*, i8** %stop.addr, align 8
  store i8* %99, i8** %stp, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %if.end.64, %sw.bb.58
  %100 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %101 = load i8*, i8** %sp, align 8
  %102 = load i8*, i8** %stp, align 8
  %103 = load i64, i64* %ss, align 8
  %104 = load i64, i64* %es, align 8
  %call60 = call i8* @sslow(%struct.smat* %100, i8* %101, i8* %102, i64 %103, i64 %104)
  store i8* %call60, i8** %rest, align 8
  %105 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %106 = load i8*, i8** %rest, align 8
  %107 = load i8*, i8** %stop.addr, align 8
  %108 = load i64, i64* %es, align 8
  %109 = load i64, i64* %stopst.addr, align 8
  %call61 = call i8* @sslow(%struct.smat* %105, i8* %106, i8* %107, i64 %108, i64 %109)
  store i8* %call61, i8** %tail, align 8
  %110 = load i8*, i8** %tail, align 8
  %111 = load i8*, i8** %stop.addr, align 8
  %cmp62 = icmp eq i8* %110, %111
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.cond.59
  br label %for.end.66

if.end.64:                                        ; preds = %for.cond.59
  %112 = load i8*, i8** %rest, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %112, i64 -1
  store i8* %add.ptr65, i8** %stp, align 8
  br label %for.cond.59

for.end.66:                                       ; preds = %if.then.63
  %113 = load i64, i64* %ss, align 8
  %add67 = add nsw i64 %113, 1
  store i64 %add67, i64* %ssub, align 8
  %114 = load i64, i64* %ss, align 8
  %115 = load i64, i64* %ss, align 8
  %116 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g68 = getelementptr inbounds %struct.smat, %struct.smat* %116, i32 0, i32 0
  %117 = load %struct.re_guts*, %struct.re_guts** %g68, align 8
  %strip69 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %117, i32 0, i32 1
  %118 = load i64*, i64** %strip69, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %118, i64 %115
  %119 = load i64, i64* %arrayidx70, align 8
  %and71 = and i64 %119, 134217727
  %add72 = add i64 %114, %and71
  %sub73 = sub i64 %add72, 1
  store i64 %sub73, i64* %esub, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %if.end.93, %for.end.66
  %120 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %121 = load i8*, i8** %sp, align 8
  %122 = load i8*, i8** %rest, align 8
  %123 = load i64, i64* %ssub, align 8
  %124 = load i64, i64* %esub, align 8
  %call75 = call i8* @sslow(%struct.smat* %120, i8* %121, i8* %122, i64 %123, i64 %124)
  %125 = load i8*, i8** %rest, align 8
  %cmp76 = icmp eq i8* %call75, %125
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.cond.74
  br label %for.end.94

if.end.78:                                        ; preds = %for.cond.74
  %126 = load i64, i64* %esub, align 8
  %inc79 = add nsw i64 %126, 1
  store i64 %inc79, i64* %esub, align 8
  %127 = load i64, i64* %esub, align 8
  %add80 = add nsw i64 %127, 1
  store i64 %add80, i64* %ssub, align 8
  %128 = load i64, i64* %esub, align 8
  %129 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g81 = getelementptr inbounds %struct.smat, %struct.smat* %129, i32 0, i32 0
  %130 = load %struct.re_guts*, %struct.re_guts** %g81, align 8
  %strip82 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %130, i32 0, i32 1
  %131 = load i64*, i64** %strip82, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %131, i64 %128
  %132 = load i64, i64* %arrayidx83, align 8
  %and84 = and i64 %132, 134217727
  %133 = load i64, i64* %esub, align 8
  %add85 = add i64 %133, %and84
  store i64 %add85, i64* %esub, align 8
  %134 = load i64, i64* %esub, align 8
  %135 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g86 = getelementptr inbounds %struct.smat, %struct.smat* %135, i32 0, i32 0
  %136 = load %struct.re_guts*, %struct.re_guts** %g86, align 8
  %strip87 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %136, i32 0, i32 1
  %137 = load i64*, i64** %strip87, align 8
  %arrayidx88 = getelementptr inbounds i64, i64* %137, i64 %134
  %138 = load i64, i64* %arrayidx88, align 8
  %and89 = and i64 %138, 4160749568
  %cmp90 = icmp eq i64 %and89, 2281701376
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.end.78
  %139 = load i64, i64* %esub, align 8
  %dec = add nsw i64 %139, -1
  store i64 %dec, i64* %esub, align 8
  br label %if.end.93

if.else.92:                                       ; preds = %if.end.78
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.92, %if.then.91
  br label %for.cond.74

for.end.94:                                       ; preds = %if.then.77
  %140 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %141 = load i8*, i8** %sp, align 8
  %142 = load i8*, i8** %rest, align 8
  %143 = load i64, i64* %ssub, align 8
  %144 = load i64, i64* %esub, align 8
  %call95 = call i8* @sdissect(%struct.smat* %140, i8* %141, i8* %142, i64 %143, i64 %144)
  store i8* %call95, i8** %dp, align 8
  %145 = load i8*, i8** %rest, align 8
  store i8* %145, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.96:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.116

sw.bb.97:                                         ; preds = %sw.epilog
  %146 = load i64, i64* %ss, align 8
  %147 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g98 = getelementptr inbounds %struct.smat, %struct.smat* %147, i32 0, i32 0
  %148 = load %struct.re_guts*, %struct.re_guts** %g98, align 8
  %strip99 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %148, i32 0, i32 1
  %149 = load i64*, i64** %strip99, align 8
  %arrayidx100 = getelementptr inbounds i64, i64* %149, i64 %146
  %150 = load i64, i64* %arrayidx100, align 8
  %and101 = and i64 %150, 134217727
  %conv = trunc i64 %and101 to i32
  store i32 %conv, i32* %i, align 4
  %151 = load i8*, i8** %sp, align 8
  %152 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %offp = getelementptr inbounds %struct.smat, %struct.smat* %152, i32 0, i32 3
  %153 = load i8*, i8** %offp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %151 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %153 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %154 = load i32, i32* %i, align 4
  %idxprom = sext i32 %154 to i64
  %155 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch = getelementptr inbounds %struct.smat, %struct.smat* %155, i32 0, i32 2
  %156 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch, align 8
  %arrayidx102 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %156, i64 %idxprom
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx102, i32 0, i32 0
  store i64 %sub.ptr.sub, i64* %rm_so, align 8
  br label %sw.epilog.116

sw.bb.103:                                        ; preds = %sw.epilog
  %157 = load i64, i64* %ss, align 8
  %158 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g104 = getelementptr inbounds %struct.smat, %struct.smat* %158, i32 0, i32 0
  %159 = load %struct.re_guts*, %struct.re_guts** %g104, align 8
  %strip105 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %159, i32 0, i32 1
  %160 = load i64*, i64** %strip105, align 8
  %arrayidx106 = getelementptr inbounds i64, i64* %160, i64 %157
  %161 = load i64, i64* %arrayidx106, align 8
  %and107 = and i64 %161, 134217727
  %conv108 = trunc i64 %and107 to i32
  store i32 %conv108, i32* %i, align 4
  %162 = load i8*, i8** %sp, align 8
  %163 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %offp109 = getelementptr inbounds %struct.smat, %struct.smat* %163, i32 0, i32 3
  %164 = load i8*, i8** %offp109, align 8
  %sub.ptr.lhs.cast110 = ptrtoint i8* %162 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %164 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %165 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %165 to i64
  %166 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch114 = getelementptr inbounds %struct.smat, %struct.smat* %166, i32 0, i32 2
  %167 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch114, align 8
  %arrayidx115 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %167, i64 %idxprom113
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx115, i32 0, i32 1
  store i64 %sub.ptr.sub112, i64* %rm_eo, align 8
  br label %sw.epilog.116

sw.default:                                       ; preds = %sw.epilog
  br label %sw.epilog.116

sw.epilog.116:                                    ; preds = %sw.default, %sw.bb.103, %sw.bb.97, %sw.bb.96, %for.end.94, %if.end.56, %if.end.35, %sw.bb.25, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.116
  %168 = load i64, i64* %es, align 8
  store i64 %168, i64* %ss, align 8
  br label %for.cond

for.end.117:                                      ; preds = %for.cond
  %169 = load i8*, i8** %sp, align 8
  ret i8* %169
}

; Function Attrs: nounwind uwtable
define internal i8* @sbackref(%struct.smat* %m, i8* %start, i8* %stop, i64 %startst, i64 %stopst, i64 %lev, i32 %rec) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.smat*, align 8
  %start.addr = alloca i8*, align 8
  %stop.addr = alloca i8*, align 8
  %startst.addr = alloca i64, align 8
  %stopst.addr = alloca i64, align 8
  %lev.addr = alloca i64, align 8
  %rec.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ss = alloca i64, align 8
  %sp = alloca i8*, align 8
  %ssub = alloca i64, align 8
  %esub = alloca i64, align 8
  %ssp = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %len = alloca i64, align 8
  %hard = alloca i32, align 4
  %s = alloca i64, align 8
  %offsave = alloca i64, align 8
  %cs = alloca %struct.cset*, align 8
  store %struct.smat* %m, %struct.smat** %m.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %stop, i8** %stop.addr, align 8
  store i64 %startst, i64* %startst.addr, align 8
  store i64 %stopst, i64* %stopst.addr, align 8
  store i64 %lev, i64* %lev.addr, align 8
  store i32 %rec, i32* %rec.addr, align 4
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %sp, align 8
  store i32 0, i32* %hard, align 4
  %1 = load i64, i64* %startst.addr, align 8
  store i64 %1, i64* %ss, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %hard, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, i64* %ss, align 8
  %4 = load i64, i64* %stopst.addr, align 8
  %cmp = icmp slt i64 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i64, i64* %ss, align 8
  %7 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g = getelementptr inbounds %struct.smat, %struct.smat* %7, i32 0, i32 0
  %8 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %strip = getelementptr inbounds %struct.re_guts, %struct.re_guts* %8, i32 0, i32 1
  %9 = load i64*, i64** %strip, align 8
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 %6
  %10 = load i64, i64* %arrayidx, align 8
  store i64 %10, i64* %s, align 8
  %and = and i64 %10, 4160749568
  switch i64 %and, label %sw.default [
    i64 268435456, label %sw.bb
    i64 671088640, label %sw.bb.7
    i64 805306368, label %sw.bb.13
    i64 402653184, label %sw.bb.28
    i64 536870912, label %sw.bb.46
    i64 2550136832, label %sw.bb.70
    i64 2684354560, label %sw.bb.128
    i64 1610612736, label %sw.bb.186
    i64 2147483648, label %sw.bb.187
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load i8*, i8** %sp, align 8
  %12 = load i8*, i8** %stop.addr, align 8
  %cmp1 = icmp eq i8* %11, %12
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %13 = load i8*, i8** %sp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %sp, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %15 = load i64, i64* %s, align 8
  %and2 = and i64 %15, 134217727
  %conv3 = trunc i64 %and2 to i8
  %conv4 = sext i8 %conv3 to i32
  %cmp5 = icmp ne i32 %conv, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %16 = load i8*, i8** %sp, align 8
  %17 = load i8*, i8** %stop.addr, align 8
  %cmp8 = icmp eq i8* %16, %17
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.7
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.11:                                        ; preds = %sw.bb.7
  %18 = load i8*, i8** %sp, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr12, i8** %sp, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %19 = load i64, i64* %s, align 8
  %and14 = and i64 %19, 134217727
  %20 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g15 = getelementptr inbounds %struct.smat, %struct.smat* %20, i32 0, i32 0
  %21 = load %struct.re_guts*, %struct.re_guts** %g15, align 8
  %sets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %21, i32 0, i32 4
  %22 = load %struct.cset*, %struct.cset** %sets, align 8
  %arrayidx16 = getelementptr inbounds %struct.cset, %struct.cset* %22, i64 %and14
  store %struct.cset* %arrayidx16, %struct.cset** %cs, align 8
  %23 = load i8*, i8** %sp, align 8
  %24 = load i8*, i8** %stop.addr, align 8
  %cmp17 = icmp eq i8* %23, %24
  br i1 %cmp17, label %if.then.26, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %sw.bb.13
  %25 = load i8*, i8** %sp, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr20, i8** %sp, align 8
  %26 = load i8, i8* %25, align 1
  %idxprom = zext i8 %26 to i64
  %27 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %27, i32 0, i32 0
  %28 = load i8*, i8** %ptr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %29 to i32
  %30 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %30, i32 0, i32 1
  %31 = load i8, i8* %mask, align 1
  %conv23 = zext i8 %31 to i32
  %and24 = and i32 %conv22, %conv23
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false.19, %sw.bb.13
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.27:                                        ; preds = %lor.lhs.false.19
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body
  %32 = load i8*, i8** %sp, align 8
  %33 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %beginp = getelementptr inbounds %struct.smat, %struct.smat* %33, i32 0, i32 4
  %34 = load i8*, i8** %beginp, align 8
  %cmp29 = icmp eq i8* %32, %34
  br i1 %cmp29, label %land.lhs.true, label %lor.lhs.false.33

land.lhs.true:                                    ; preds = %sw.bb.28
  %35 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %eflags = getelementptr inbounds %struct.smat, %struct.smat* %35, i32 0, i32 1
  %36 = load i32, i32* %eflags, align 4
  %and31 = and i32 %36, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %lor.lhs.false.33, label %if.then.44

lor.lhs.false.33:                                 ; preds = %land.lhs.true, %sw.bb.28
  %37 = load i8*, i8** %sp, align 8
  %38 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp = getelementptr inbounds %struct.smat, %struct.smat* %38, i32 0, i32 5
  %39 = load i8*, i8** %endp, align 8
  %cmp34 = icmp ult i8* %37, %39
  br i1 %cmp34, label %land.lhs.true.36, label %if.else

land.lhs.true.36:                                 ; preds = %lor.lhs.false.33
  %40 = load i8*, i8** %sp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 -1
  %41 = load i8, i8* %add.ptr, align 1
  %conv37 = sext i8 %41 to i32
  %cmp38 = icmp eq i32 %conv37, 10
  br i1 %cmp38, label %land.lhs.true.40, label %if.else

land.lhs.true.40:                                 ; preds = %land.lhs.true.36
  %42 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g41 = getelementptr inbounds %struct.smat, %struct.smat* %42, i32 0, i32 0
  %43 = load %struct.re_guts*, %struct.re_guts** %g41, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %43, i32 0, i32 6
  %44 = load i32, i32* %cflags, align 4
  %and42 = and i32 %44, 8
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %land.lhs.true.40, %land.lhs.true
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true.40, %land.lhs.true.36, %lor.lhs.false.33
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.45:                                        ; preds = %if.then.44
  br label %sw.epilog

sw.bb.46:                                         ; preds = %for.body
  %45 = load i8*, i8** %sp, align 8
  %46 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp47 = getelementptr inbounds %struct.smat, %struct.smat* %46, i32 0, i32 5
  %47 = load i8*, i8** %endp47, align 8
  %cmp48 = icmp eq i8* %45, %47
  br i1 %cmp48, label %land.lhs.true.50, label %lor.lhs.false.54

land.lhs.true.50:                                 ; preds = %sw.bb.46
  %48 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %eflags51 = getelementptr inbounds %struct.smat, %struct.smat* %48, i32 0, i32 1
  %49 = load i32, i32* %eflags51, align 4
  %and52 = and i32 %49, 2
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %lor.lhs.false.54, label %if.then.67

lor.lhs.false.54:                                 ; preds = %land.lhs.true.50, %sw.bb.46
  %50 = load i8*, i8** %sp, align 8
  %51 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp55 = getelementptr inbounds %struct.smat, %struct.smat* %51, i32 0, i32 5
  %52 = load i8*, i8** %endp55, align 8
  %cmp56 = icmp ult i8* %50, %52
  br i1 %cmp56, label %land.lhs.true.58, label %if.else.68

land.lhs.true.58:                                 ; preds = %lor.lhs.false.54
  %53 = load i8*, i8** %sp, align 8
  %54 = load i8, i8* %53, align 1
  %conv59 = sext i8 %54 to i32
  %cmp60 = icmp eq i32 %conv59, 10
  br i1 %cmp60, label %land.lhs.true.62, label %if.else.68

land.lhs.true.62:                                 ; preds = %land.lhs.true.58
  %55 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g63 = getelementptr inbounds %struct.smat, %struct.smat* %55, i32 0, i32 0
  %56 = load %struct.re_guts*, %struct.re_guts** %g63, align 8
  %cflags64 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %56, i32 0, i32 6
  %57 = load i32, i32* %cflags64, align 4
  %and65 = and i32 %57, 8
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %land.lhs.true.62, %land.lhs.true.50
  br label %if.end.69

if.else.68:                                       ; preds = %land.lhs.true.62, %land.lhs.true.58, %lor.lhs.false.54
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.69:                                        ; preds = %if.then.67
  br label %sw.epilog

sw.bb.70:                                         ; preds = %for.body
  %58 = load i8*, i8** %sp, align 8
  %59 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %beginp71 = getelementptr inbounds %struct.smat, %struct.smat* %59, i32 0, i32 4
  %60 = load i8*, i8** %beginp71, align 8
  %cmp72 = icmp eq i8* %58, %60
  br i1 %cmp72, label %land.lhs.true.74, label %lor.lhs.false.78

land.lhs.true.74:                                 ; preds = %sw.bb.70
  %61 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %eflags75 = getelementptr inbounds %struct.smat, %struct.smat* %61, i32 0, i32 1
  %62 = load i32, i32* %eflags75, align 4
  %and76 = and i32 %62, 1
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %lor.lhs.false.78, label %land.lhs.true.109

lor.lhs.false.78:                                 ; preds = %land.lhs.true.74, %sw.bb.70
  %63 = load i8*, i8** %sp, align 8
  %64 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp79 = getelementptr inbounds %struct.smat, %struct.smat* %64, i32 0, i32 5
  %65 = load i8*, i8** %endp79, align 8
  %cmp80 = icmp ult i8* %63, %65
  br i1 %cmp80, label %land.lhs.true.82, label %lor.lhs.false.92

land.lhs.true.82:                                 ; preds = %lor.lhs.false.78
  %66 = load i8*, i8** %sp, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %66, i64 -1
  %67 = load i8, i8* %add.ptr83, align 1
  %conv84 = sext i8 %67 to i32
  %cmp85 = icmp eq i32 %conv84, 10
  br i1 %cmp85, label %land.lhs.true.87, label %lor.lhs.false.92

land.lhs.true.87:                                 ; preds = %land.lhs.true.82
  %68 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g88 = getelementptr inbounds %struct.smat, %struct.smat* %68, i32 0, i32 0
  %69 = load %struct.re_guts*, %struct.re_guts** %g88, align 8
  %cflags89 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %69, i32 0, i32 6
  %70 = load i32, i32* %cflags89, align 4
  %and90 = and i32 %70, 8
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %land.lhs.true.109, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true.87, %land.lhs.true.82, %lor.lhs.false.78
  %71 = load i8*, i8** %sp, align 8
  %72 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %beginp93 = getelementptr inbounds %struct.smat, %struct.smat* %72, i32 0, i32 4
  %73 = load i8*, i8** %beginp93, align 8
  %cmp94 = icmp ugt i8* %71, %73
  br i1 %cmp94, label %land.lhs.true.96, label %if.else.126

land.lhs.true.96:                                 ; preds = %lor.lhs.false.92
  %74 = load i8*, i8** %sp, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %74, i64 -1
  %75 = load i8, i8* %add.ptr97, align 1
  %conv98 = sext i8 %75 to i32
  %idxprom99 = sext i32 %conv98 to i64
  %call = call i16** @__ctype_b_loc() #7
  %76 = load i16*, i16** %call, align 8
  %arrayidx100 = getelementptr inbounds i16, i16* %76, i64 %idxprom99
  %77 = load i16, i16* %arrayidx100, align 2
  %conv101 = zext i16 %77 to i32
  %and102 = and i32 %conv101, 8
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.else.126, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.lhs.true.96
  %78 = load i8*, i8** %sp, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %78, i64 -1
  %79 = load i8, i8* %add.ptr105, align 1
  %conv106 = sext i8 %79 to i32
  %cmp107 = icmp eq i32 %conv106, 95
  br i1 %cmp107, label %if.else.126, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %lor.lhs.false.104, %land.lhs.true.87, %land.lhs.true.74
  %80 = load i8*, i8** %sp, align 8
  %81 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp110 = getelementptr inbounds %struct.smat, %struct.smat* %81, i32 0, i32 5
  %82 = load i8*, i8** %endp110, align 8
  %cmp111 = icmp ult i8* %80, %82
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.126

land.lhs.true.113:                                ; preds = %land.lhs.true.109
  %83 = load i8*, i8** %sp, align 8
  %84 = load i8, i8* %83, align 1
  %conv114 = sext i8 %84 to i32
  %idxprom115 = sext i32 %conv114 to i64
  %call116 = call i16** @__ctype_b_loc() #7
  %85 = load i16*, i16** %call116, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %85, i64 %idxprom115
  %86 = load i16, i16* %arrayidx117, align 2
  %conv118 = zext i16 %86 to i32
  %and119 = and i32 %conv118, 8
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then.125, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %land.lhs.true.113
  %87 = load i8*, i8** %sp, align 8
  %88 = load i8, i8* %87, align 1
  %conv122 = sext i8 %88 to i32
  %cmp123 = icmp eq i32 %conv122, 95
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %lor.lhs.false.121, %land.lhs.true.113
  br label %if.end.127

if.else.126:                                      ; preds = %lor.lhs.false.121, %land.lhs.true.109, %lor.lhs.false.104, %land.lhs.true.96, %lor.lhs.false.92
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.127:                                       ; preds = %if.then.125
  br label %sw.epilog

sw.bb.128:                                        ; preds = %for.body
  %89 = load i8*, i8** %sp, align 8
  %90 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp129 = getelementptr inbounds %struct.smat, %struct.smat* %90, i32 0, i32 5
  %91 = load i8*, i8** %endp129, align 8
  %cmp130 = icmp eq i8* %89, %91
  br i1 %cmp130, label %land.lhs.true.132, label %lor.lhs.false.136

land.lhs.true.132:                                ; preds = %sw.bb.128
  %92 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %eflags133 = getelementptr inbounds %struct.smat, %struct.smat* %92, i32 0, i32 1
  %93 = load i32, i32* %eflags133, align 4
  %and134 = and i32 %93, 2
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %lor.lhs.false.136, label %land.lhs.true.165

lor.lhs.false.136:                                ; preds = %land.lhs.true.132, %sw.bb.128
  %94 = load i8*, i8** %sp, align 8
  %95 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp137 = getelementptr inbounds %struct.smat, %struct.smat* %95, i32 0, i32 5
  %96 = load i8*, i8** %endp137, align 8
  %cmp138 = icmp ult i8* %94, %96
  br i1 %cmp138, label %land.lhs.true.140, label %lor.lhs.false.149

land.lhs.true.140:                                ; preds = %lor.lhs.false.136
  %97 = load i8*, i8** %sp, align 8
  %98 = load i8, i8* %97, align 1
  %conv141 = sext i8 %98 to i32
  %cmp142 = icmp eq i32 %conv141, 10
  br i1 %cmp142, label %land.lhs.true.144, label %lor.lhs.false.149

land.lhs.true.144:                                ; preds = %land.lhs.true.140
  %99 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g145 = getelementptr inbounds %struct.smat, %struct.smat* %99, i32 0, i32 0
  %100 = load %struct.re_guts*, %struct.re_guts** %g145, align 8
  %cflags146 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %100, i32 0, i32 6
  %101 = load i32, i32* %cflags146, align 4
  %and147 = and i32 %101, 8
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %land.lhs.true.165, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %land.lhs.true.144, %land.lhs.true.140, %lor.lhs.false.136
  %102 = load i8*, i8** %sp, align 8
  %103 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %endp150 = getelementptr inbounds %struct.smat, %struct.smat* %103, i32 0, i32 5
  %104 = load i8*, i8** %endp150, align 8
  %cmp151 = icmp ult i8* %102, %104
  br i1 %cmp151, label %land.lhs.true.153, label %if.else.184

land.lhs.true.153:                                ; preds = %lor.lhs.false.149
  %105 = load i8*, i8** %sp, align 8
  %106 = load i8, i8* %105, align 1
  %conv154 = sext i8 %106 to i32
  %idxprom155 = sext i32 %conv154 to i64
  %call156 = call i16** @__ctype_b_loc() #7
  %107 = load i16*, i16** %call156, align 8
  %arrayidx157 = getelementptr inbounds i16, i16* %107, i64 %idxprom155
  %108 = load i16, i16* %arrayidx157, align 2
  %conv158 = zext i16 %108 to i32
  %and159 = and i32 %conv158, 8
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.else.184, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %land.lhs.true.153
  %109 = load i8*, i8** %sp, align 8
  %110 = load i8, i8* %109, align 1
  %conv162 = sext i8 %110 to i32
  %cmp163 = icmp eq i32 %conv162, 95
  br i1 %cmp163, label %if.else.184, label %land.lhs.true.165

land.lhs.true.165:                                ; preds = %lor.lhs.false.161, %land.lhs.true.144, %land.lhs.true.132
  %111 = load i8*, i8** %sp, align 8
  %112 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %beginp166 = getelementptr inbounds %struct.smat, %struct.smat* %112, i32 0, i32 4
  %113 = load i8*, i8** %beginp166, align 8
  %cmp167 = icmp ugt i8* %111, %113
  br i1 %cmp167, label %land.lhs.true.169, label %if.else.184

land.lhs.true.169:                                ; preds = %land.lhs.true.165
  %114 = load i8*, i8** %sp, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %114, i64 -1
  %115 = load i8, i8* %add.ptr170, align 1
  %conv171 = sext i8 %115 to i32
  %idxprom172 = sext i32 %conv171 to i64
  %call173 = call i16** @__ctype_b_loc() #7
  %116 = load i16*, i16** %call173, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %116, i64 %idxprom172
  %117 = load i16, i16* %arrayidx174, align 2
  %conv175 = zext i16 %117 to i32
  %and176 = and i32 %conv175, 8
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.then.183, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %land.lhs.true.169
  %118 = load i8*, i8** %sp, align 8
  %add.ptr179 = getelementptr inbounds i8, i8* %118, i64 -1
  %119 = load i8, i8* %add.ptr179, align 1
  %conv180 = sext i8 %119 to i32
  %cmp181 = icmp eq i32 %conv180, 95
  br i1 %cmp181, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %lor.lhs.false.178, %land.lhs.true.169
  br label %if.end.185

if.else.184:                                      ; preds = %lor.lhs.false.178, %land.lhs.true.165, %lor.lhs.false.161, %land.lhs.true.153, %lor.lhs.false.149
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.185:                                       ; preds = %if.then.183
  br label %sw.epilog

sw.bb.186:                                        ; preds = %for.body
  br label %sw.epilog

sw.bb.187:                                        ; preds = %for.body
  %120 = load i64, i64* %ss, align 8
  %inc = add nsw i64 %120, 1
  store i64 %inc, i64* %ss, align 8
  %121 = load i64, i64* %ss, align 8
  %122 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g188 = getelementptr inbounds %struct.smat, %struct.smat* %122, i32 0, i32 0
  %123 = load %struct.re_guts*, %struct.re_guts** %g188, align 8
  %strip189 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %123, i32 0, i32 1
  %124 = load i64*, i64** %strip189, align 8
  %arrayidx190 = getelementptr inbounds i64, i64* %124, i64 %121
  %125 = load i64, i64* %arrayidx190, align 8
  store i64 %125, i64* %s, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.187
  %126 = load i64, i64* %s, align 8
  %and191 = and i64 %126, 134217727
  %127 = load i64, i64* %ss, align 8
  %add = add i64 %127, %and191
  store i64 %add, i64* %ss, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %128 = load i64, i64* %ss, align 8
  %129 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g192 = getelementptr inbounds %struct.smat, %struct.smat* %129, i32 0, i32 0
  %130 = load %struct.re_guts*, %struct.re_guts** %g192, align 8
  %strip193 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %130, i32 0, i32 1
  %131 = load i64*, i64** %strip193, align 8
  %arrayidx194 = getelementptr inbounds i64, i64* %131, i64 %128
  %132 = load i64, i64* %arrayidx194, align 8
  store i64 %132, i64* %s, align 8
  %and195 = and i64 %132, 4160749568
  %cmp196 = icmp ne i64 %and195, 2415919104
  br i1 %cmp196, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  store i32 1, i32* %hard, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end, %sw.bb.186, %if.end.185, %if.end.127, %if.end.69, %if.end.45, %if.end.27, %if.end.11, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %133 = load i64, i64* %ss, align 8
  %inc198 = add nsw i64 %133, 1
  store i64 %inc198, i64* %ss, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %134 = load i32, i32* %hard, align 4
  %tobool199 = icmp ne i32 %134, 0
  br i1 %tobool199, label %if.end.205, label %if.then.200

if.then.200:                                      ; preds = %for.end
  %135 = load i8*, i8** %sp, align 8
  %136 = load i8*, i8** %stop.addr, align 8
  %cmp201 = icmp ne i8* %135, %136
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.200
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.204:                                       ; preds = %if.then.200
  %137 = load i8*, i8** %sp, align 8
  store i8* %137, i8** %retval
  br label %sw.epilog.383

if.end.205:                                       ; preds = %for.end
  %138 = load i64, i64* %ss, align 8
  %dec = add nsw i64 %138, -1
  store i64 %dec, i64* %ss, align 8
  %139 = load i64, i64* %ss, align 8
  %140 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g206 = getelementptr inbounds %struct.smat, %struct.smat* %140, i32 0, i32 0
  %141 = load %struct.re_guts*, %struct.re_guts** %g206, align 8
  %strip207 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %141, i32 0, i32 1
  %142 = load i64*, i64** %strip207, align 8
  %arrayidx208 = getelementptr inbounds i64, i64* %142, i64 %139
  %143 = load i64, i64* %arrayidx208, align 8
  store i64 %143, i64* %s, align 8
  %144 = load i64, i64* %s, align 8
  %and209 = and i64 %144, 4160749568
  switch i64 %and209, label %sw.default.382 [
    i64 939524096, label %sw.bb.210
    i64 1476395008, label %sw.bb.259
    i64 1207959552, label %sw.bb.270
    i64 1342177280, label %sw.bb.276
    i64 2013265920, label %sw.bb.299
    i64 1744830464, label %sw.bb.335
    i64 1879048192, label %sw.bb.357
  ]

sw.bb.210:                                        ; preds = %if.end.205
  %145 = load i64, i64* %s, align 8
  %and211 = and i64 %145, 134217727
  %conv212 = trunc i64 %and211 to i32
  store i32 %conv212, i32* %i, align 4
  %146 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %146 to i64
  %147 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch = getelementptr inbounds %struct.smat, %struct.smat* %147, i32 0, i32 2
  %148 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch, align 8
  %arrayidx214 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %148, i64 %idxprom213
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx214, i32 0, i32 1
  %149 = load i64, i64* %rm_eo, align 8
  %cmp215 = icmp eq i64 %149, -1
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %sw.bb.210
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.218:                                       ; preds = %sw.bb.210
  %150 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %150 to i64
  %151 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch220 = getelementptr inbounds %struct.smat, %struct.smat* %151, i32 0, i32 2
  %152 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch220, align 8
  %arrayidx221 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %152, i64 %idxprom219
  %rm_eo222 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx221, i32 0, i32 1
  %153 = load i64, i64* %rm_eo222, align 8
  %154 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %154 to i64
  %155 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch224 = getelementptr inbounds %struct.smat, %struct.smat* %155, i32 0, i32 2
  %156 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch224, align 8
  %arrayidx225 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %156, i64 %idxprom223
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx225, i32 0, i32 0
  %157 = load i64, i64* %rm_so, align 8
  %sub = sub nsw i64 %153, %157
  store i64 %sub, i64* %len, align 8
  %158 = load i64, i64* %len, align 8
  %cmp226 = icmp eq i64 %158, 0
  br i1 %cmp226, label %land.lhs.true.228, label %if.end.233

land.lhs.true.228:                                ; preds = %if.end.218
  %159 = load i32, i32* %rec.addr, align 4
  %inc229 = add nsw i32 %159, 1
  store i32 %inc229, i32* %rec.addr, align 4
  %cmp230 = icmp sgt i32 %159, 100
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %land.lhs.true.228
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.233:                                       ; preds = %land.lhs.true.228, %if.end.218
  %160 = load i8*, i8** %sp, align 8
  %161 = load i8*, i8** %stop.addr, align 8
  %162 = load i64, i64* %len, align 8
  %idx.neg = sub i64 0, %162
  %add.ptr234 = getelementptr inbounds i8, i8* %161, i64 %idx.neg
  %cmp235 = icmp ugt i8* %160, %add.ptr234
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.end.233
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.238:                                       ; preds = %if.end.233
  %163 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %offp = getelementptr inbounds %struct.smat, %struct.smat* %163, i32 0, i32 3
  %164 = load i8*, i8** %offp, align 8
  %165 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %165 to i64
  %166 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch240 = getelementptr inbounds %struct.smat, %struct.smat* %166, i32 0, i32 2
  %167 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch240, align 8
  %arrayidx241 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %167, i64 %idxprom239
  %rm_so242 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx241, i32 0, i32 0
  %168 = load i64, i64* %rm_so242, align 8
  %add.ptr243 = getelementptr inbounds i8, i8* %164, i64 %168
  store i8* %add.ptr243, i8** %ssp, align 8
  %169 = load i8*, i8** %sp, align 8
  %170 = load i8*, i8** %ssp, align 8
  %171 = load i64, i64* %len, align 8
  %call244 = call i32 @memcmp(i8* %169, i8* %170, i64 %171) #6
  %cmp245 = icmp ne i32 %call244, 0
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.end.238
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.248:                                       ; preds = %if.end.238
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.248
  %172 = load i64, i64* %ss, align 8
  %173 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g249 = getelementptr inbounds %struct.smat, %struct.smat* %173, i32 0, i32 0
  %174 = load %struct.re_guts*, %struct.re_guts** %g249, align 8
  %strip250 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %174, i32 0, i32 1
  %175 = load i64*, i64** %strip250, align 8
  %arrayidx251 = getelementptr inbounds i64, i64* %175, i64 %172
  %176 = load i64, i64* %arrayidx251, align 8
  %177 = load i32, i32* %i, align 4
  %conv252 = sext i32 %177 to i64
  %or = or i64 1073741824, %conv252
  %cmp253 = icmp ne i64 %176, %or
  br i1 %cmp253, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %178 = load i64, i64* %ss, align 8
  %inc255 = add nsw i64 %178, 1
  store i64 %inc255, i64* %ss, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %179 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %180 = load i8*, i8** %sp, align 8
  %181 = load i64, i64* %len, align 8
  %add.ptr256 = getelementptr inbounds i8, i8* %180, i64 %181
  %182 = load i8*, i8** %stop.addr, align 8
  %183 = load i64, i64* %ss, align 8
  %add257 = add nsw i64 %183, 1
  %184 = load i64, i64* %stopst.addr, align 8
  %185 = load i64, i64* %lev.addr, align 8
  %186 = load i32, i32* %rec.addr, align 4
  %call258 = call i8* @sbackref(%struct.smat* %179, i8* %add.ptr256, i8* %182, i64 %add257, i64 %184, i64 %185, i32 %186)
  store i8* %call258, i8** %retval
  br label %sw.epilog.383

sw.bb.259:                                        ; preds = %if.end.205
  %187 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %188 = load i8*, i8** %sp, align 8
  %189 = load i8*, i8** %stop.addr, align 8
  %190 = load i64, i64* %ss, align 8
  %add260 = add nsw i64 %190, 1
  %191 = load i64, i64* %stopst.addr, align 8
  %192 = load i64, i64* %lev.addr, align 8
  %193 = load i32, i32* %rec.addr, align 4
  %call261 = call i8* @sbackref(%struct.smat* %187, i8* %188, i8* %189, i64 %add260, i64 %191, i64 %192, i32 %193)
  store i8* %call261, i8** %dp, align 8
  %194 = load i8*, i8** %dp, align 8
  %cmp262 = icmp ne i8* %194, null
  br i1 %cmp262, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %sw.bb.259
  %195 = load i8*, i8** %dp, align 8
  store i8* %195, i8** %retval
  br label %sw.epilog.383

if.end.265:                                       ; preds = %sw.bb.259
  %196 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %197 = load i8*, i8** %sp, align 8
  %198 = load i8*, i8** %stop.addr, align 8
  %199 = load i64, i64* %ss, align 8
  %200 = load i64, i64* %s, align 8
  %and266 = and i64 %200, 134217727
  %add267 = add i64 %199, %and266
  %add268 = add i64 %add267, 1
  %201 = load i64, i64* %stopst.addr, align 8
  %202 = load i64, i64* %lev.addr, align 8
  %203 = load i32, i32* %rec.addr, align 4
  %call269 = call i8* @sbackref(%struct.smat* %196, i8* %197, i8* %198, i64 %add268, i64 %201, i64 %202, i32 %203)
  store i8* %call269, i8** %retval
  br label %sw.epilog.383

sw.bb.270:                                        ; preds = %if.end.205
  %204 = load i8*, i8** %sp, align 8
  %205 = load i64, i64* %lev.addr, align 8
  %add271 = add nsw i64 %205, 1
  %206 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %lastpos = getelementptr inbounds %struct.smat, %struct.smat* %206, i32 0, i32 7
  %207 = load i8**, i8*** %lastpos, align 8
  %arrayidx272 = getelementptr inbounds i8*, i8** %207, i64 %add271
  store i8* %204, i8** %arrayidx272, align 8
  %208 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %209 = load i8*, i8** %sp, align 8
  %210 = load i8*, i8** %stop.addr, align 8
  %211 = load i64, i64* %ss, align 8
  %add273 = add nsw i64 %211, 1
  %212 = load i64, i64* %stopst.addr, align 8
  %213 = load i64, i64* %lev.addr, align 8
  %add274 = add nsw i64 %213, 1
  %214 = load i32, i32* %rec.addr, align 4
  %call275 = call i8* @sbackref(%struct.smat* %208, i8* %209, i8* %210, i64 %add273, i64 %212, i64 %add274, i32 %214)
  store i8* %call275, i8** %retval
  br label %sw.epilog.383

sw.bb.276:                                        ; preds = %if.end.205
  %215 = load i8*, i8** %sp, align 8
  %216 = load i64, i64* %lev.addr, align 8
  %217 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %lastpos277 = getelementptr inbounds %struct.smat, %struct.smat* %217, i32 0, i32 7
  %218 = load i8**, i8*** %lastpos277, align 8
  %arrayidx278 = getelementptr inbounds i8*, i8** %218, i64 %216
  %219 = load i8*, i8** %arrayidx278, align 8
  %cmp279 = icmp eq i8* %215, %219
  br i1 %cmp279, label %if.then.281, label %if.end.285

if.then.281:                                      ; preds = %sw.bb.276
  %220 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %221 = load i8*, i8** %sp, align 8
  %222 = load i8*, i8** %stop.addr, align 8
  %223 = load i64, i64* %ss, align 8
  %add282 = add nsw i64 %223, 1
  %224 = load i64, i64* %stopst.addr, align 8
  %225 = load i64, i64* %lev.addr, align 8
  %sub283 = sub nsw i64 %225, 1
  %226 = load i32, i32* %rec.addr, align 4
  %call284 = call i8* @sbackref(%struct.smat* %220, i8* %221, i8* %222, i64 %add282, i64 %224, i64 %sub283, i32 %226)
  store i8* %call284, i8** %retval
  br label %sw.epilog.383

if.end.285:                                       ; preds = %sw.bb.276
  %227 = load i8*, i8** %sp, align 8
  %228 = load i64, i64* %lev.addr, align 8
  %229 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %lastpos286 = getelementptr inbounds %struct.smat, %struct.smat* %229, i32 0, i32 7
  %230 = load i8**, i8*** %lastpos286, align 8
  %arrayidx287 = getelementptr inbounds i8*, i8** %230, i64 %228
  store i8* %227, i8** %arrayidx287, align 8
  %231 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %232 = load i8*, i8** %sp, align 8
  %233 = load i8*, i8** %stop.addr, align 8
  %234 = load i64, i64* %ss, align 8
  %235 = load i64, i64* %s, align 8
  %and288 = and i64 %235, 134217727
  %sub289 = sub i64 %234, %and288
  %add290 = add i64 %sub289, 1
  %236 = load i64, i64* %stopst.addr, align 8
  %237 = load i64, i64* %lev.addr, align 8
  %238 = load i32, i32* %rec.addr, align 4
  %call291 = call i8* @sbackref(%struct.smat* %231, i8* %232, i8* %233, i64 %add290, i64 %236, i64 %237, i32 %238)
  store i8* %call291, i8** %dp, align 8
  %239 = load i8*, i8** %dp, align 8
  %cmp292 = icmp eq i8* %239, null
  br i1 %cmp292, label %if.then.294, label %if.else.298

if.then.294:                                      ; preds = %if.end.285
  %240 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %241 = load i8*, i8** %sp, align 8
  %242 = load i8*, i8** %stop.addr, align 8
  %243 = load i64, i64* %ss, align 8
  %add295 = add nsw i64 %243, 1
  %244 = load i64, i64* %stopst.addr, align 8
  %245 = load i64, i64* %lev.addr, align 8
  %sub296 = sub nsw i64 %245, 1
  %246 = load i32, i32* %rec.addr, align 4
  %call297 = call i8* @sbackref(%struct.smat* %240, i8* %241, i8* %242, i64 %add295, i64 %244, i64 %sub296, i32 %246)
  store i8* %call297, i8** %retval
  br label %sw.epilog.383

if.else.298:                                      ; preds = %if.end.285
  %247 = load i8*, i8** %dp, align 8
  store i8* %247, i8** %retval
  br label %sw.epilog.383

sw.bb.299:                                        ; preds = %if.end.205
  %248 = load i64, i64* %ss, align 8
  %add300 = add nsw i64 %248, 1
  store i64 %add300, i64* %ssub, align 8
  %249 = load i64, i64* %ss, align 8
  %250 = load i64, i64* %s, align 8
  %and301 = and i64 %250, 134217727
  %add302 = add i64 %249, %and301
  %sub303 = sub i64 %add302, 1
  store i64 %sub303, i64* %esub, align 8
  br label %for.cond.304

for.cond.304:                                     ; preds = %if.end.334, %sw.bb.299
  %251 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %252 = load i8*, i8** %sp, align 8
  %253 = load i8*, i8** %stop.addr, align 8
  %254 = load i64, i64* %ssub, align 8
  %255 = load i64, i64* %esub, align 8
  %256 = load i64, i64* %lev.addr, align 8
  %257 = load i32, i32* %rec.addr, align 4
  %call305 = call i8* @sbackref(%struct.smat* %251, i8* %252, i8* %253, i64 %254, i64 %255, i64 %256, i32 %257)
  store i8* %call305, i8** %dp, align 8
  %258 = load i8*, i8** %dp, align 8
  %cmp306 = icmp ne i8* %258, null
  br i1 %cmp306, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %for.cond.304
  %259 = load i8*, i8** %dp, align 8
  store i8* %259, i8** %retval
  br label %sw.epilog.383

if.end.309:                                       ; preds = %for.cond.304
  %260 = load i64, i64* %esub, align 8
  %261 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g310 = getelementptr inbounds %struct.smat, %struct.smat* %261, i32 0, i32 0
  %262 = load %struct.re_guts*, %struct.re_guts** %g310, align 8
  %strip311 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %262, i32 0, i32 1
  %263 = load i64*, i64** %strip311, align 8
  %arrayidx312 = getelementptr inbounds i64, i64* %263, i64 %260
  %264 = load i64, i64* %arrayidx312, align 8
  %and313 = and i64 %264, 4160749568
  %cmp314 = icmp eq i64 %and313, 2415919104
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %if.end.309
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.317:                                       ; preds = %if.end.309
  %265 = load i64, i64* %esub, align 8
  %inc318 = add nsw i64 %265, 1
  store i64 %inc318, i64* %esub, align 8
  %266 = load i64, i64* %esub, align 8
  %add319 = add nsw i64 %266, 1
  store i64 %add319, i64* %ssub, align 8
  %267 = load i64, i64* %esub, align 8
  %268 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g320 = getelementptr inbounds %struct.smat, %struct.smat* %268, i32 0, i32 0
  %269 = load %struct.re_guts*, %struct.re_guts** %g320, align 8
  %strip321 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %269, i32 0, i32 1
  %270 = load i64*, i64** %strip321, align 8
  %arrayidx322 = getelementptr inbounds i64, i64* %270, i64 %267
  %271 = load i64, i64* %arrayidx322, align 8
  %and323 = and i64 %271, 134217727
  %272 = load i64, i64* %esub, align 8
  %add324 = add i64 %272, %and323
  store i64 %add324, i64* %esub, align 8
  %273 = load i64, i64* %esub, align 8
  %274 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %g325 = getelementptr inbounds %struct.smat, %struct.smat* %274, i32 0, i32 0
  %275 = load %struct.re_guts*, %struct.re_guts** %g325, align 8
  %strip326 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %275, i32 0, i32 1
  %276 = load i64*, i64** %strip326, align 8
  %arrayidx327 = getelementptr inbounds i64, i64* %276, i64 %273
  %277 = load i64, i64* %arrayidx327, align 8
  %and328 = and i64 %277, 4160749568
  %cmp329 = icmp eq i64 %and328, 2281701376
  br i1 %cmp329, label %if.then.331, label %if.else.333

if.then.331:                                      ; preds = %if.end.317
  %278 = load i64, i64* %esub, align 8
  %dec332 = add nsw i64 %278, -1
  store i64 %dec332, i64* %esub, align 8
  br label %if.end.334

if.else.333:                                      ; preds = %if.end.317
  br label %if.end.334

if.end.334:                                       ; preds = %if.else.333, %if.then.331
  br label %for.cond.304

sw.bb.335:                                        ; preds = %if.end.205
  %279 = load i64, i64* %s, align 8
  %and336 = and i64 %279, 134217727
  %conv337 = trunc i64 %and336 to i32
  store i32 %conv337, i32* %i, align 4
  %280 = load i32, i32* %i, align 4
  %idxprom338 = sext i32 %280 to i64
  %281 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch339 = getelementptr inbounds %struct.smat, %struct.smat* %281, i32 0, i32 2
  %282 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch339, align 8
  %arrayidx340 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %282, i64 %idxprom338
  %rm_so341 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx340, i32 0, i32 0
  %283 = load i64, i64* %rm_so341, align 8
  store i64 %283, i64* %offsave, align 8
  %284 = load i8*, i8** %sp, align 8
  %285 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %offp342 = getelementptr inbounds %struct.smat, %struct.smat* %285, i32 0, i32 3
  %286 = load i8*, i8** %offp342, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %284 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %286 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %287 = load i32, i32* %i, align 4
  %idxprom343 = sext i32 %287 to i64
  %288 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch344 = getelementptr inbounds %struct.smat, %struct.smat* %288, i32 0, i32 2
  %289 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch344, align 8
  %arrayidx345 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %289, i64 %idxprom343
  %rm_so346 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx345, i32 0, i32 0
  store i64 %sub.ptr.sub, i64* %rm_so346, align 8
  %290 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %291 = load i8*, i8** %sp, align 8
  %292 = load i8*, i8** %stop.addr, align 8
  %293 = load i64, i64* %ss, align 8
  %add347 = add nsw i64 %293, 1
  %294 = load i64, i64* %stopst.addr, align 8
  %295 = load i64, i64* %lev.addr, align 8
  %296 = load i32, i32* %rec.addr, align 4
  %call348 = call i8* @sbackref(%struct.smat* %290, i8* %291, i8* %292, i64 %add347, i64 %294, i64 %295, i32 %296)
  store i8* %call348, i8** %dp, align 8
  %297 = load i8*, i8** %dp, align 8
  %cmp349 = icmp ne i8* %297, null
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %sw.bb.335
  %298 = load i8*, i8** %dp, align 8
  store i8* %298, i8** %retval
  br label %sw.epilog.383

if.end.352:                                       ; preds = %sw.bb.335
  %299 = load i64, i64* %offsave, align 8
  %300 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %300 to i64
  %301 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch354 = getelementptr inbounds %struct.smat, %struct.smat* %301, i32 0, i32 2
  %302 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch354, align 8
  %arrayidx355 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %302, i64 %idxprom353
  %rm_so356 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx355, i32 0, i32 0
  store i64 %299, i64* %rm_so356, align 8
  store i8* null, i8** %retval
  br label %sw.epilog.383

sw.bb.357:                                        ; preds = %if.end.205
  %303 = load i64, i64* %s, align 8
  %and358 = and i64 %303, 134217727
  %conv359 = trunc i64 %and358 to i32
  store i32 %conv359, i32* %i, align 4
  %304 = load i32, i32* %i, align 4
  %idxprom360 = sext i32 %304 to i64
  %305 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch361 = getelementptr inbounds %struct.smat, %struct.smat* %305, i32 0, i32 2
  %306 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch361, align 8
  %arrayidx362 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %306, i64 %idxprom360
  %rm_eo363 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx362, i32 0, i32 1
  %307 = load i64, i64* %rm_eo363, align 8
  store i64 %307, i64* %offsave, align 8
  %308 = load i8*, i8** %sp, align 8
  %309 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %offp364 = getelementptr inbounds %struct.smat, %struct.smat* %309, i32 0, i32 3
  %310 = load i8*, i8** %offp364, align 8
  %sub.ptr.lhs.cast365 = ptrtoint i8* %308 to i64
  %sub.ptr.rhs.cast366 = ptrtoint i8* %310 to i64
  %sub.ptr.sub367 = sub i64 %sub.ptr.lhs.cast365, %sub.ptr.rhs.cast366
  %311 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %311 to i64
  %312 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch369 = getelementptr inbounds %struct.smat, %struct.smat* %312, i32 0, i32 2
  %313 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch369, align 8
  %arrayidx370 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %313, i64 %idxprom368
  %rm_eo371 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx370, i32 0, i32 1
  store i64 %sub.ptr.sub367, i64* %rm_eo371, align 8
  %314 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %315 = load i8*, i8** %sp, align 8
  %316 = load i8*, i8** %stop.addr, align 8
  %317 = load i64, i64* %ss, align 8
  %add372 = add nsw i64 %317, 1
  %318 = load i64, i64* %stopst.addr, align 8
  %319 = load i64, i64* %lev.addr, align 8
  %320 = load i32, i32* %rec.addr, align 4
  %call373 = call i8* @sbackref(%struct.smat* %314, i8* %315, i8* %316, i64 %add372, i64 %318, i64 %319, i32 %320)
  store i8* %call373, i8** %dp, align 8
  %321 = load i8*, i8** %dp, align 8
  %cmp374 = icmp ne i8* %321, null
  br i1 %cmp374, label %if.then.376, label %if.end.377

if.then.376:                                      ; preds = %sw.bb.357
  %322 = load i8*, i8** %dp, align 8
  store i8* %322, i8** %retval
  br label %sw.epilog.383

if.end.377:                                       ; preds = %sw.bb.357
  %323 = load i64, i64* %offsave, align 8
  %324 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %324 to i64
  %325 = load %struct.smat*, %struct.smat** %m.addr, align 8
  %pmatch379 = getelementptr inbounds %struct.smat, %struct.smat* %325, i32 0, i32 2
  %326 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch379, align 8
  %arrayidx380 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %326, i64 %idxprom378
  %rm_eo381 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx380, i32 0, i32 1
  store i64 %323, i64* %rm_eo381, align 8
  store i8* null, i8** %retval
  br label %sw.epilog.383

sw.default.382:                                   ; preds = %if.end.205
  br label %sw.epilog.383

sw.epilog.383:                                    ; preds = %if.then, %if.then.10, %if.then.26, %if.else, %if.else.68, %if.else.126, %if.else.184, %if.then.203, %if.end.204, %if.then.217, %if.then.232, %if.then.237, %if.then.247, %while.end, %if.then.264, %if.end.265, %sw.bb.270, %if.then.281, %if.then.294, %if.else.298, %if.then.308, %if.then.316, %if.then.351, %if.end.352, %if.then.376, %if.end.377, %sw.default.382
  %327 = load i8*, i8** %retval
  ret i8* %327
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i64 @sstep(%struct.re_guts* %g, i64 %start, i64 %stop, i64 %bef, i32 %ch, i64 %aft) #0 {
entry:
  %g.addr = alloca %struct.re_guts*, align 8
  %start.addr = alloca i64, align 8
  %stop.addr = alloca i64, align 8
  %bef.addr = alloca i64, align 8
  %ch.addr = alloca i32, align 4
  %aft.addr = alloca i64, align 8
  %cs = alloca %struct.cset*, align 8
  %s = alloca i64, align 8
  %pc = alloca i64, align 8
  %here = alloca i64, align 8
  %look = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %stop, i64* %stop.addr, align 8
  store i64 %bef, i64* %bef.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  store i64 %aft, i64* %aft.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  store i64 %0, i64* %pc, align 8
  %1 = load i64, i64* %pc, align 8
  %shl = shl i64 1, %1
  store i64 %shl, i64* %here, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.163, %entry
  %2 = load i64, i64* %pc, align 8
  %3 = load i64, i64* %stop.addr, align 8
  %cmp = icmp ne i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end.165

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %pc, align 8
  %5 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip = getelementptr inbounds %struct.re_guts, %struct.re_guts* %5, i32 0, i32 1
  %6 = load i64*, i64** %strip, align 8
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %4
  %7 = load i64, i64* %arrayidx, align 8
  store i64 %7, i64* %s, align 8
  %8 = load i64, i64* %s, align 8
  %and = and i64 %8, 4160749568
  switch i64 %and, label %sw.default [
    i64 134217728, label %sw.bb
    i64 268435456, label %sw.bb.1
    i64 402653184, label %sw.bb.8
    i64 536870912, label %sw.bb.18
    i64 2550136832, label %sw.bb.29
    i64 2684354560, label %sw.bb.37
    i64 671088640, label %sw.bb.45
    i64 805306368, label %sw.bb.53
    i64 939524096, label %sw.bb.68
    i64 1073741824, label %sw.bb.68
    i64 1207959552, label %sw.bb.72
    i64 1342177280, label %sw.bb.76
    i64 1476395008, label %sw.bb.99
    i64 1610612736, label %sw.bb.107
    i64 1744830464, label %sw.bb.111
    i64 1879048192, label %sw.bb.111
    i64 2013265920, label %sw.bb.115
    i64 2147483648, label %sw.bb.123
    i64 2281701376, label %sw.bb.142
    i64 2415919104, label %sw.bb.159
  ]

sw.bb:                                            ; preds = %for.body
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %9 = load i32, i32* %ch.addr, align 4
  %10 = load i64, i64* %s, align 8
  %and2 = and i64 %10, 134217727
  %conv = trunc i64 %and2 to i8
  %conv3 = sext i8 %conv to i32
  %cmp4 = icmp eq i32 %9, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %11 = load i64, i64* %bef.addr, align 8
  %12 = load i64, i64* %here, align 8
  %and6 = and i64 %11, %12
  %shl7 = shl i64 %and6, 1
  %13 = load i64, i64* %aft.addr, align 8
  %or = or i64 %13, %shl7
  store i64 %or, i64* %aft.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body
  %14 = load i32, i32* %ch.addr, align 4
  %cmp9 = icmp eq i32 %14, 129
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.8
  %15 = load i32, i32* %ch.addr, align 4
  %cmp11 = icmp eq i32 %15, 131
  br i1 %cmp11, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %lor.lhs.false, %sw.bb.8
  %16 = load i64, i64* %bef.addr, align 8
  %17 = load i64, i64* %here, align 8
  %and14 = and i64 %16, %17
  %shl15 = shl i64 %and14, 1
  %18 = load i64, i64* %aft.addr, align 8
  %or16 = or i64 %18, %shl15
  store i64 %or16, i64* %aft.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %lor.lhs.false
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.body
  %19 = load i32, i32* %ch.addr, align 4
  %cmp19 = icmp eq i32 %19, 130
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %sw.bb.18
  %20 = load i32, i32* %ch.addr, align 4
  %cmp22 = icmp eq i32 %20, 131
  br i1 %cmp22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %lor.lhs.false.21, %sw.bb.18
  %21 = load i64, i64* %bef.addr, align 8
  %22 = load i64, i64* %here, align 8
  %and25 = and i64 %21, %22
  %shl26 = shl i64 %and25, 1
  %23 = load i64, i64* %aft.addr, align 8
  %or27 = or i64 %23, %shl26
  store i64 %or27, i64* %aft.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %lor.lhs.false.21
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.body
  %24 = load i32, i32* %ch.addr, align 4
  %cmp30 = icmp eq i32 %24, 133
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %sw.bb.29
  %25 = load i64, i64* %bef.addr, align 8
  %26 = load i64, i64* %here, align 8
  %and33 = and i64 %25, %26
  %shl34 = shl i64 %and33, 1
  %27 = load i64, i64* %aft.addr, align 8
  %or35 = or i64 %27, %shl34
  store i64 %or35, i64* %aft.addr, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %sw.bb.29
  br label %sw.epilog

sw.bb.37:                                         ; preds = %for.body
  %28 = load i32, i32* %ch.addr, align 4
  %cmp38 = icmp eq i32 %28, 134
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %sw.bb.37
  %29 = load i64, i64* %bef.addr, align 8
  %30 = load i64, i64* %here, align 8
  %and41 = and i64 %29, %30
  %shl42 = shl i64 %and41, 1
  %31 = load i64, i64* %aft.addr, align 8
  %or43 = or i64 %31, %shl42
  store i64 %or43, i64* %aft.addr, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %sw.bb.37
  br label %sw.epilog

sw.bb.45:                                         ; preds = %for.body
  %32 = load i32, i32* %ch.addr, align 4
  %cmp46 = icmp sgt i32 %32, 127
  br i1 %cmp46, label %if.end.52, label %if.then.48

if.then.48:                                       ; preds = %sw.bb.45
  %33 = load i64, i64* %bef.addr, align 8
  %34 = load i64, i64* %here, align 8
  %and49 = and i64 %33, %34
  %shl50 = shl i64 %and49, 1
  %35 = load i64, i64* %aft.addr, align 8
  %or51 = or i64 %35, %shl50
  store i64 %or51, i64* %aft.addr, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %sw.bb.45
  br label %sw.epilog

sw.bb.53:                                         ; preds = %for.body
  %36 = load i64, i64* %s, align 8
  %and54 = and i64 %36, 134217727
  %37 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %sets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %37, i32 0, i32 4
  %38 = load %struct.cset*, %struct.cset** %sets, align 8
  %arrayidx55 = getelementptr inbounds %struct.cset, %struct.cset* %38, i64 %and54
  store %struct.cset* %arrayidx55, %struct.cset** %cs, align 8
  %39 = load i32, i32* %ch.addr, align 4
  %cmp56 = icmp sgt i32 %39, 127
  br i1 %cmp56, label %if.end.67, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.53
  %40 = load i32, i32* %ch.addr, align 4
  %conv58 = trunc i32 %40 to i8
  %idxprom = zext i8 %conv58 to i64
  %41 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %41, i32 0, i32 0
  %42 = load i8*, i8** %ptr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %42, i64 %idxprom
  %43 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %43 to i32
  %44 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %44, i32 0, i32 1
  %45 = load i8, i8* %mask, align 1
  %conv61 = zext i8 %45 to i32
  %and62 = and i32 %conv60, %conv61
  %tobool = icmp ne i32 %and62, 0
  br i1 %tobool, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %land.lhs.true
  %46 = load i64, i64* %bef.addr, align 8
  %47 = load i64, i64* %here, align 8
  %and64 = and i64 %46, %47
  %shl65 = shl i64 %and64, 1
  %48 = load i64, i64* %aft.addr, align 8
  %or66 = or i64 %48, %shl65
  store i64 %or66, i64* %aft.addr, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %land.lhs.true, %sw.bb.53
  br label %sw.epilog

sw.bb.68:                                         ; preds = %for.body, %for.body
  %49 = load i64, i64* %aft.addr, align 8
  %50 = load i64, i64* %here, align 8
  %and69 = and i64 %49, %50
  %shl70 = shl i64 %and69, 1
  %51 = load i64, i64* %aft.addr, align 8
  %or71 = or i64 %51, %shl70
  store i64 %or71, i64* %aft.addr, align 8
  br label %sw.epilog

sw.bb.72:                                         ; preds = %for.body
  %52 = load i64, i64* %aft.addr, align 8
  %53 = load i64, i64* %here, align 8
  %and73 = and i64 %52, %53
  %shl74 = shl i64 %and73, 1
  %54 = load i64, i64* %aft.addr, align 8
  %or75 = or i64 %54, %shl74
  store i64 %or75, i64* %aft.addr, align 8
  br label %sw.epilog

sw.bb.76:                                         ; preds = %for.body
  %55 = load i64, i64* %aft.addr, align 8
  %56 = load i64, i64* %here, align 8
  %and77 = and i64 %55, %56
  %shl78 = shl i64 %and77, 1
  %57 = load i64, i64* %aft.addr, align 8
  %or79 = or i64 %57, %shl78
  store i64 %or79, i64* %aft.addr, align 8
  %58 = load i64, i64* %aft.addr, align 8
  %59 = load i64, i64* %here, align 8
  %60 = load i64, i64* %s, align 8
  %and80 = and i64 %60, 134217727
  %shr = lshr i64 %59, %and80
  %and81 = and i64 %58, %shr
  %cmp82 = icmp ne i64 %and81, 0
  %conv83 = zext i1 %cmp82 to i32
  store i32 %conv83, i32* %i, align 4
  %61 = load i64, i64* %aft.addr, align 8
  %62 = load i64, i64* %here, align 8
  %and84 = and i64 %61, %62
  %63 = load i64, i64* %s, align 8
  %and85 = and i64 %63, 134217727
  %shr86 = lshr i64 %and84, %and85
  %64 = load i64, i64* %aft.addr, align 8
  %or87 = or i64 %64, %shr86
  store i64 %or87, i64* %aft.addr, align 8
  %65 = load i32, i32* %i, align 4
  %tobool88 = icmp ne i32 %65, 0
  br i1 %tobool88, label %if.end.98, label %land.lhs.true.89

land.lhs.true.89:                                 ; preds = %sw.bb.76
  %66 = load i64, i64* %aft.addr, align 8
  %67 = load i64, i64* %here, align 8
  %68 = load i64, i64* %s, align 8
  %and90 = and i64 %68, 134217727
  %shr91 = lshr i64 %67, %and90
  %and92 = and i64 %66, %shr91
  %cmp93 = icmp ne i64 %and92, 0
  br i1 %cmp93, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %land.lhs.true.89
  %69 = load i64, i64* %s, align 8
  %and96 = and i64 %69, 134217727
  %add = add i64 %and96, 1
  %70 = load i64, i64* %pc, align 8
  %sub = sub i64 %70, %add
  store i64 %sub, i64* %pc, align 8
  %71 = load i64, i64* %pc, align 8
  %shl97 = shl i64 1, %71
  store i64 %shl97, i64* %here, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %land.lhs.true.89, %sw.bb.76
  br label %sw.epilog

sw.bb.99:                                         ; preds = %for.body
  %72 = load i64, i64* %aft.addr, align 8
  %73 = load i64, i64* %here, align 8
  %and100 = and i64 %72, %73
  %shl101 = shl i64 %and100, 1
  %74 = load i64, i64* %aft.addr, align 8
  %or102 = or i64 %74, %shl101
  store i64 %or102, i64* %aft.addr, align 8
  %75 = load i64, i64* %aft.addr, align 8
  %76 = load i64, i64* %here, align 8
  %and103 = and i64 %75, %76
  %77 = load i64, i64* %s, align 8
  %and104 = and i64 %77, 134217727
  %shl105 = shl i64 %and103, %and104
  %78 = load i64, i64* %aft.addr, align 8
  %or106 = or i64 %78, %shl105
  store i64 %or106, i64* %aft.addr, align 8
  br label %sw.epilog

sw.bb.107:                                        ; preds = %for.body
  %79 = load i64, i64* %aft.addr, align 8
  %80 = load i64, i64* %here, align 8
  %and108 = and i64 %79, %80
  %shl109 = shl i64 %and108, 1
  %81 = load i64, i64* %aft.addr, align 8
  %or110 = or i64 %81, %shl109
  store i64 %or110, i64* %aft.addr, align 8
  br label %sw.epilog

sw.bb.111:                                        ; preds = %for.body, %for.body
  %82 = load i64, i64* %aft.addr, align 8
  %83 = load i64, i64* %here, align 8
  %and112 = and i64 %82, %83
  %shl113 = shl i64 %and112, 1
  %84 = load i64, i64* %aft.addr, align 8
  %or114 = or i64 %84, %shl113
  store i64 %or114, i64* %aft.addr, align 8
  br label %sw.epilog

sw.bb.115:                                        ; preds = %for.body
  %85 = load i64, i64* %aft.addr, align 8
  %86 = load i64, i64* %here, align 8
  %and116 = and i64 %85, %86
  %shl117 = shl i64 %and116, 1
  %87 = load i64, i64* %aft.addr, align 8
  %or118 = or i64 %87, %shl117
  store i64 %or118, i64* %aft.addr, align 8
  %88 = load i64, i64* %aft.addr, align 8
  %89 = load i64, i64* %here, align 8
  %and119 = and i64 %88, %89
  %90 = load i64, i64* %s, align 8
  %and120 = and i64 %90, 134217727
  %shl121 = shl i64 %and119, %and120
  %91 = load i64, i64* %aft.addr, align 8
  %or122 = or i64 %91, %shl121
  store i64 %or122, i64* %aft.addr, align 8
  br label %sw.epilog

sw.bb.123:                                        ; preds = %for.body
  %92 = load i64, i64* %aft.addr, align 8
  %93 = load i64, i64* %here, align 8
  %and124 = and i64 %92, %93
  %cmp125 = icmp ne i64 %and124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.141

if.then.127:                                      ; preds = %sw.bb.123
  store i64 1, i64* %look, align 8
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc, %if.then.127
  %94 = load i64, i64* %pc, align 8
  %95 = load i64, i64* %look, align 8
  %add129 = add nsw i64 %94, %95
  %96 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip130 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %96, i32 0, i32 1
  %97 = load i64*, i64** %strip130, align 8
  %arrayidx131 = getelementptr inbounds i64, i64* %97, i64 %add129
  %98 = load i64, i64* %arrayidx131, align 8
  store i64 %98, i64* %s, align 8
  %and132 = and i64 %98, 4160749568
  %cmp133 = icmp ne i64 %and132, 2415919104
  br i1 %cmp133, label %for.body.135, label %for.end

for.body.135:                                     ; preds = %for.cond.128
  br label %for.inc

for.inc:                                          ; preds = %for.body.135
  %99 = load i64, i64* %s, align 8
  %and136 = and i64 %99, 134217727
  %100 = load i64, i64* %look, align 8
  %add137 = add i64 %100, %and136
  store i64 %add137, i64* %look, align 8
  br label %for.cond.128

for.end:                                          ; preds = %for.cond.128
  %101 = load i64, i64* %aft.addr, align 8
  %102 = load i64, i64* %here, align 8
  %and138 = and i64 %101, %102
  %103 = load i64, i64* %look, align 8
  %shl139 = shl i64 %and138, %103
  %104 = load i64, i64* %aft.addr, align 8
  %or140 = or i64 %104, %shl139
  store i64 %or140, i64* %aft.addr, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %for.end, %sw.bb.123
  br label %sw.epilog

sw.bb.142:                                        ; preds = %for.body
  %105 = load i64, i64* %aft.addr, align 8
  %106 = load i64, i64* %here, align 8
  %and143 = and i64 %105, %106
  %shl144 = shl i64 %and143, 1
  %107 = load i64, i64* %aft.addr, align 8
  %or145 = or i64 %107, %shl144
  store i64 %or145, i64* %aft.addr, align 8
  %108 = load i64, i64* %pc, align 8
  %109 = load i64, i64* %s, align 8
  %and146 = and i64 %109, 134217727
  %add147 = add i64 %108, %and146
  %110 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip148 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %110, i32 0, i32 1
  %111 = load i64*, i64** %strip148, align 8
  %arrayidx149 = getelementptr inbounds i64, i64* %111, i64 %add147
  %112 = load i64, i64* %arrayidx149, align 8
  %and150 = and i64 %112, 4160749568
  %cmp151 = icmp ne i64 %and150, 2415919104
  br i1 %cmp151, label %if.then.153, label %if.end.158

if.then.153:                                      ; preds = %sw.bb.142
  %113 = load i64, i64* %aft.addr, align 8
  %114 = load i64, i64* %here, align 8
  %and154 = and i64 %113, %114
  %115 = load i64, i64* %s, align 8
  %and155 = and i64 %115, 134217727
  %shl156 = shl i64 %and154, %and155
  %116 = load i64, i64* %aft.addr, align 8
  %or157 = or i64 %116, %shl156
  store i64 %or157, i64* %aft.addr, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.153, %sw.bb.142
  br label %sw.epilog

sw.bb.159:                                        ; preds = %for.body
  %117 = load i64, i64* %aft.addr, align 8
  %118 = load i64, i64* %here, align 8
  %and160 = and i64 %117, %118
  %shl161 = shl i64 %and160, 1
  %119 = load i64, i64* %aft.addr, align 8
  %or162 = or i64 %119, %shl161
  store i64 %or162, i64* %aft.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.159, %if.end.158, %if.end.141, %sw.bb.115, %sw.bb.111, %sw.bb.107, %sw.bb.99, %if.end.98, %sw.bb.72, %sw.bb.68, %if.end.67, %if.end.52, %if.end.44, %if.end.36, %if.end.28, %if.end.17, %if.end, %sw.bb
  br label %for.inc.163

for.inc.163:                                      ; preds = %sw.epilog
  %120 = load i64, i64* %pc, align 8
  %inc = add nsw i64 %120, 1
  store i64 %inc, i64* %pc, align 8
  %121 = load i64, i64* %here, align 8
  %shl164 = shl i64 %121, 1
  store i64 %shl164, i64* %here, align 8
  br label %for.cond

for.end.165:                                      ; preds = %for.cond
  %122 = load i64, i64* %aft.addr, align 8
  ret i64 %122
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i8* @lfast(%struct.lmat* %m, i8* %start, i8* %stop, i64 %startst, i64 %stopst) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.lmat*, align 8
  %start.addr = alloca i8*, align 8
  %stop.addr = alloca i8*, align 8
  %startst.addr = alloca i64, align 8
  %stopst.addr = alloca i64, align 8
  %st = alloca i8*, align 8
  %fresh = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %lastc = alloca i32, align 4
  %flagch = alloca i32, align 4
  %i = alloca i32, align 4
  %coldp = alloca i8*, align 8
  store %struct.lmat* %m, %struct.lmat** %m.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %stop, i8** %stop.addr, align 8
  store i64 %startst, i64* %startst.addr, align 8
  store i64 %stopst, i64* %stopst.addr, align 8
  %0 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %st1 = getelementptr inbounds %struct.lmat, %struct.lmat* %0, i32 0, i32 10
  %1 = load i8*, i8** %st1, align 8
  store i8* %1, i8** %st, align 8
  %2 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %fresh2 = getelementptr inbounds %struct.lmat, %struct.lmat* %2, i32 0, i32 11
  %3 = load i8*, i8** %fresh2, align 8
  store i8* %3, i8** %fresh, align 8
  %4 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %tmp3 = getelementptr inbounds %struct.lmat, %struct.lmat* %4, i32 0, i32 12
  %5 = load i8*, i8** %tmp3, align 8
  store i8* %5, i8** %tmp, align 8
  %6 = load i8*, i8** %start.addr, align 8
  store i8* %6, i8** %p, align 8
  %7 = load i8*, i8** %start.addr, align 8
  %8 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %beginp = getelementptr inbounds %struct.lmat, %struct.lmat* %8, i32 0, i32 4
  %9 = load i8*, i8** %beginp, align 8
  %cmp = icmp eq i8* %7, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i8*, i8** %start.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 -1
  %11 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %12 = load i8*, i8** %st, align 8
  %13 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g = getelementptr inbounds %struct.lmat, %struct.lmat* %13, i32 0, i32 0
  %14 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %nstates = getelementptr inbounds %struct.re_guts, %struct.re_guts* %14, i32 0, i32 7
  %15 = load i64, i64* %nstates, align 8
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 %15, i32 1, i1 false)
  %16 = load i64, i64* %startst.addr, align 8
  %17 = load i8*, i8** %st, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %16
  store i8 1, i8* %arrayidx, align 1
  %18 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g10 = getelementptr inbounds %struct.lmat, %struct.lmat* %18, i32 0, i32 0
  %19 = load %struct.re_guts*, %struct.re_guts** %g10, align 8
  %20 = load i64, i64* %startst.addr, align 8
  %21 = load i64, i64* %stopst.addr, align 8
  %22 = load i8*, i8** %st, align 8
  %23 = load i8*, i8** %st, align 8
  %call = call i8* @lstep(%struct.re_guts* %19, i64 %20, i64 %21, i8* %22, i32 132, i8* %23)
  store i8* %call, i8** %st, align 8
  %24 = load i8*, i8** %fresh, align 8
  %25 = load i8*, i8** %st, align 8
  %26 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g11 = getelementptr inbounds %struct.lmat, %struct.lmat* %26, i32 0, i32 0
  %27 = load %struct.re_guts*, %struct.re_guts** %g11, align 8
  %nstates12 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %27, i32 0, i32 7
  %28 = load i64, i64* %nstates12, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %24, i8* %25, i64 %28, i32 1, i1 false)
  store i8* null, i8** %coldp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.140, %cond.end
  %29 = load i32, i32* %c, align 4
  store i32 %29, i32* %lastc, align 4
  %30 = load i8*, i8** %p, align 8
  %31 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp = getelementptr inbounds %struct.lmat, %struct.lmat* %31, i32 0, i32 5
  %32 = load i8*, i8** %endp, align 8
  %cmp13 = icmp eq i8* %30, %32
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %for.cond
  br label %cond.end.18

cond.false.16:                                    ; preds = %for.cond
  %33 = load i8*, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  %conv17 = sext i8 %34 to i32
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.15
  %cond19 = phi i32 [ 128, %cond.true.15 ], [ %conv17, %cond.false.16 ]
  store i32 %cond19, i32* %c, align 4
  %35 = load i8*, i8** %st, align 8
  %36 = load i8*, i8** %fresh, align 8
  %37 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g20 = getelementptr inbounds %struct.lmat, %struct.lmat* %37, i32 0, i32 0
  %38 = load %struct.re_guts*, %struct.re_guts** %g20, align 8
  %nstates21 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %38, i32 0, i32 7
  %39 = load i64, i64* %nstates21, align 8
  %call22 = call i32 @memcmp(i8* %35, i8* %36, i64 %39) #6
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.18
  %40 = load i8*, i8** %p, align 8
  store i8* %40, i8** %coldp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.18
  store i32 0, i32* %flagch, align 4
  store i32 0, i32* %i, align 4
  %41 = load i32, i32* %lastc, align 4
  %cmp25 = icmp eq i32 %41, 10
  br i1 %cmp25, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %42 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g27 = getelementptr inbounds %struct.lmat, %struct.lmat* %42, i32 0, i32 0
  %43 = load %struct.re_guts*, %struct.re_guts** %g27, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %43, i32 0, i32 6
  %44 = load i32, i32* %cflags, align 4
  %and = and i32 %44, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %45 = load i32, i32* %lastc, align 4
  %cmp28 = icmp eq i32 %45, 128
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.35

land.lhs.true.30:                                 ; preds = %lor.lhs.false
  %46 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %eflags = getelementptr inbounds %struct.lmat, %struct.lmat* %46, i32 0, i32 1
  %47 = load i32, i32* %eflags, align 4
  %and31 = and i32 %47, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.30, %land.lhs.true
  store i32 129, i32* %flagch, align 4
  %48 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g34 = getelementptr inbounds %struct.lmat, %struct.lmat* %48, i32 0, i32 0
  %49 = load %struct.re_guts*, %struct.re_guts** %g34, align 8
  %nbol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %49, i32 0, i32 11
  %50 = load i32, i32* %nbol, align 4
  store i32 %50, i32* %i, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %land.lhs.true.30, %lor.lhs.false
  %51 = load i32, i32* %c, align 4
  %cmp36 = icmp eq i32 %51, 10
  br i1 %cmp36, label %land.lhs.true.38, label %lor.lhs.false.43

land.lhs.true.38:                                 ; preds = %if.end.35
  %52 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g39 = getelementptr inbounds %struct.lmat, %struct.lmat* %52, i32 0, i32 0
  %53 = load %struct.re_guts*, %struct.re_guts** %g39, align 8
  %cflags40 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %53, i32 0, i32 6
  %54 = load i32, i32* %cflags40, align 4
  %and41 = and i32 %54, 8
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.50, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.lhs.true.38, %if.end.35
  %55 = load i32, i32* %c, align 4
  %cmp44 = icmp eq i32 %55, 128
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.55

land.lhs.true.46:                                 ; preds = %lor.lhs.false.43
  %56 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %eflags47 = getelementptr inbounds %struct.lmat, %struct.lmat* %56, i32 0, i32 1
  %57 = load i32, i32* %eflags47, align 4
  %and48 = and i32 %57, 2
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.end.55, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.46, %land.lhs.true.38
  %58 = load i32, i32* %flagch, align 4
  %cmp51 = icmp eq i32 %58, 129
  %cond53 = select i1 %cmp51, i32 131, i32 130
  store i32 %cond53, i32* %flagch, align 4
  %59 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g54 = getelementptr inbounds %struct.lmat, %struct.lmat* %59, i32 0, i32 0
  %60 = load %struct.re_guts*, %struct.re_guts** %g54, align 8
  %neol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %60, i32 0, i32 12
  %61 = load i32, i32* %neol, align 4
  %62 = load i32, i32* %i, align 4
  %add = add nsw i32 %62, %61
  store i32 %add, i32* %i, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.50, %land.lhs.true.46, %lor.lhs.false.43
  %63 = load i32, i32* %i, align 4
  %cmp56 = icmp ne i32 %63, 0
  br i1 %cmp56, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.end.55
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc, %if.then.58
  %64 = load i32, i32* %i, align 4
  %cmp60 = icmp sgt i32 %64, 0
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.59
  %65 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g62 = getelementptr inbounds %struct.lmat, %struct.lmat* %65, i32 0, i32 0
  %66 = load %struct.re_guts*, %struct.re_guts** %g62, align 8
  %67 = load i64, i64* %startst.addr, align 8
  %68 = load i64, i64* %stopst.addr, align 8
  %69 = load i8*, i8** %st, align 8
  %70 = load i32, i32* %flagch, align 4
  %71 = load i8*, i8** %st, align 8
  %call63 = call i8* @lstep(%struct.re_guts* %66, i64 %67, i64 %68, i8* %69, i32 %70, i8* %71)
  store i8* %call63, i8** %st, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %72 = load i32, i32* %i, align 4
  %dec = add nsw i32 %72, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.59

for.end:                                          ; preds = %for.cond.59
  br label %if.end.64

if.end.64:                                        ; preds = %for.end, %if.end.55
  %73 = load i32, i32* %flagch, align 4
  %cmp65 = icmp eq i32 %73, 129
  br i1 %cmp65, label %land.lhs.true.79, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end.64
  %74 = load i32, i32* %lastc, align 4
  %cmp68 = icmp ne i32 %74, 128
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.93

land.lhs.true.70:                                 ; preds = %lor.lhs.false.67
  %75 = load i32, i32* %lastc, align 4
  %idxprom = sext i32 %75 to i64
  %call71 = call i16** @__ctype_b_loc() #7
  %76 = load i16*, i16** %call71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %76, i64 %idxprom
  %77 = load i16, i16* %arrayidx72, align 2
  %conv73 = zext i16 %77 to i32
  %and74 = and i32 %conv73, 8
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.end.93, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.70
  %78 = load i32, i32* %lastc, align 4
  %cmp77 = icmp eq i32 %78, 95
  br i1 %cmp77, label %if.end.93, label %land.lhs.true.79

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76, %if.end.64
  %79 = load i32, i32* %c, align 4
  %cmp80 = icmp ne i32 %79, 128
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.93

land.lhs.true.82:                                 ; preds = %land.lhs.true.79
  %80 = load i32, i32* %c, align 4
  %idxprom83 = sext i32 %80 to i64
  %call84 = call i16** @__ctype_b_loc() #7
  %81 = load i16*, i16** %call84, align 8
  %arrayidx85 = getelementptr inbounds i16, i16* %81, i64 %idxprom83
  %82 = load i16, i16* %arrayidx85, align 2
  %conv86 = zext i16 %82 to i32
  %and87 = and i32 %conv86, 8
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then.92, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %land.lhs.true.82
  %83 = load i32, i32* %c, align 4
  %cmp90 = icmp eq i32 %83, 95
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %lor.lhs.false.89, %land.lhs.true.82
  store i32 133, i32* %flagch, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %lor.lhs.false.89, %land.lhs.true.79, %lor.lhs.false.76, %land.lhs.true.70, %lor.lhs.false.67
  %84 = load i32, i32* %lastc, align 4
  %cmp94 = icmp ne i32 %84, 128
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.123

land.lhs.true.96:                                 ; preds = %if.end.93
  %85 = load i32, i32* %lastc, align 4
  %idxprom97 = sext i32 %85 to i64
  %call98 = call i16** @__ctype_b_loc() #7
  %86 = load i16*, i16** %call98, align 8
  %arrayidx99 = getelementptr inbounds i16, i16* %86, i64 %idxprom97
  %87 = load i16, i16* %arrayidx99, align 2
  %conv100 = zext i16 %87 to i32
  %and101 = and i32 %conv100, 8
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %land.lhs.true.106, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true.96
  %88 = load i32, i32* %lastc, align 4
  %cmp104 = icmp eq i32 %88, 95
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.123

land.lhs.true.106:                                ; preds = %lor.lhs.false.103, %land.lhs.true.96
  %89 = load i32, i32* %flagch, align 4
  %cmp107 = icmp eq i32 %89, 130
  br i1 %cmp107, label %if.then.122, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %land.lhs.true.106
  %90 = load i32, i32* %c, align 4
  %cmp110 = icmp ne i32 %90, 128
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.123

land.lhs.true.112:                                ; preds = %lor.lhs.false.109
  %91 = load i32, i32* %c, align 4
  %idxprom113 = sext i32 %91 to i64
  %call114 = call i16** @__ctype_b_loc() #7
  %92 = load i16*, i16** %call114, align 8
  %arrayidx115 = getelementptr inbounds i16, i16* %92, i64 %idxprom113
  %93 = load i16, i16* %arrayidx115, align 2
  %conv116 = zext i16 %93 to i32
  %and117 = and i32 %conv116, 8
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.end.123, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %land.lhs.true.112
  %94 = load i32, i32* %c, align 4
  %cmp120 = icmp eq i32 %94, 95
  br i1 %cmp120, label %if.end.123, label %if.then.122

if.then.122:                                      ; preds = %lor.lhs.false.119, %land.lhs.true.106
  store i32 134, i32* %flagch, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %lor.lhs.false.119, %land.lhs.true.112, %lor.lhs.false.109, %lor.lhs.false.103, %if.end.93
  %95 = load i32, i32* %flagch, align 4
  %cmp124 = icmp eq i32 %95, 133
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.end.123
  %96 = load i32, i32* %flagch, align 4
  %cmp127 = icmp eq i32 %96, 134
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %lor.lhs.false.126, %if.end.123
  %97 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g130 = getelementptr inbounds %struct.lmat, %struct.lmat* %97, i32 0, i32 0
  %98 = load %struct.re_guts*, %struct.re_guts** %g130, align 8
  %99 = load i64, i64* %startst.addr, align 8
  %100 = load i64, i64* %stopst.addr, align 8
  %101 = load i8*, i8** %st, align 8
  %102 = load i32, i32* %flagch, align 4
  %103 = load i8*, i8** %st, align 8
  %call131 = call i8* @lstep(%struct.re_guts* %98, i64 %99, i64 %100, i8* %101, i32 %102, i8* %103)
  store i8* %call131, i8** %st, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %lor.lhs.false.126
  %104 = load i64, i64* %stopst.addr, align 8
  %105 = load i8*, i8** %st, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %105, i64 %104
  %106 = load i8, i8* %arrayidx133, align 1
  %conv134 = sext i8 %106 to i32
  %tobool135 = icmp ne i32 %conv134, 0
  br i1 %tobool135, label %if.then.139, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %if.end.132
  %107 = load i8*, i8** %p, align 8
  %108 = load i8*, i8** %stop.addr, align 8
  %cmp137 = icmp eq i8* %107, %108
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %lor.lhs.false.136, %if.end.132
  br label %for.end.147

if.end.140:                                       ; preds = %lor.lhs.false.136
  %109 = load i8*, i8** %tmp, align 8
  %110 = load i8*, i8** %st, align 8
  %111 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g141 = getelementptr inbounds %struct.lmat, %struct.lmat* %111, i32 0, i32 0
  %112 = load %struct.re_guts*, %struct.re_guts** %g141, align 8
  %nstates142 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %112, i32 0, i32 7
  %113 = load i64, i64* %nstates142, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %109, i8* %110, i64 %113, i32 1, i1 false)
  %114 = load i8*, i8** %st, align 8
  %115 = load i8*, i8** %fresh, align 8
  %116 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g143 = getelementptr inbounds %struct.lmat, %struct.lmat* %116, i32 0, i32 0
  %117 = load %struct.re_guts*, %struct.re_guts** %g143, align 8
  %nstates144 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %117, i32 0, i32 7
  %118 = load i64, i64* %nstates144, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %114, i8* %115, i64 %118, i32 1, i1 false)
  %119 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g145 = getelementptr inbounds %struct.lmat, %struct.lmat* %119, i32 0, i32 0
  %120 = load %struct.re_guts*, %struct.re_guts** %g145, align 8
  %121 = load i64, i64* %startst.addr, align 8
  %122 = load i64, i64* %stopst.addr, align 8
  %123 = load i8*, i8** %tmp, align 8
  %124 = load i32, i32* %c, align 4
  %125 = load i8*, i8** %st, align 8
  %call146 = call i8* @lstep(%struct.re_guts* %120, i64 %121, i64 %122, i8* %123, i32 %124, i8* %125)
  store i8* %call146, i8** %st, align 8
  %126 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end.147:                                      ; preds = %if.then.139
  %127 = load i8*, i8** %coldp, align 8
  %128 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %coldp148 = getelementptr inbounds %struct.lmat, %struct.lmat* %128, i32 0, i32 6
  store i8* %127, i8** %coldp148, align 8
  %129 = load i64, i64* %stopst.addr, align 8
  %130 = load i8*, i8** %st, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %130, i64 %129
  %131 = load i8, i8* %arrayidx149, align 1
  %tobool150 = icmp ne i8 %131, 0
  br i1 %tobool150, label %if.then.151, label %if.else

if.then.151:                                      ; preds = %for.end.147
  %132 = load i8*, i8** %p, align 8
  %add.ptr152 = getelementptr inbounds i8, i8* %132, i64 1
  store i8* %add.ptr152, i8** %retval
  br label %return

if.else:                                          ; preds = %for.end.147
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.151
  %133 = load i8*, i8** %retval
  ret i8* %133
}

; Function Attrs: nounwind uwtable
define internal i8* @lslow(%struct.lmat* %m, i8* %start, i8* %stop, i64 %startst, i64 %stopst) #0 {
entry:
  %m.addr = alloca %struct.lmat*, align 8
  %start.addr = alloca i8*, align 8
  %stop.addr = alloca i8*, align 8
  %startst.addr = alloca i64, align 8
  %stopst.addr = alloca i64, align 8
  %st = alloca i8*, align 8
  %empty = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %lastc = alloca i32, align 4
  %flagch = alloca i32, align 4
  %i = alloca i32, align 4
  %matchp = alloca i8*, align 8
  store %struct.lmat* %m, %struct.lmat** %m.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %stop, i8** %stop.addr, align 8
  store i64 %startst, i64* %startst.addr, align 8
  store i64 %stopst, i64* %stopst.addr, align 8
  %0 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %st1 = getelementptr inbounds %struct.lmat, %struct.lmat* %0, i32 0, i32 10
  %1 = load i8*, i8** %st1, align 8
  store i8* %1, i8** %st, align 8
  %2 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %empty2 = getelementptr inbounds %struct.lmat, %struct.lmat* %2, i32 0, i32 13
  %3 = load i8*, i8** %empty2, align 8
  store i8* %3, i8** %empty, align 8
  %4 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %tmp3 = getelementptr inbounds %struct.lmat, %struct.lmat* %4, i32 0, i32 12
  %5 = load i8*, i8** %tmp3, align 8
  store i8* %5, i8** %tmp, align 8
  %6 = load i8*, i8** %start.addr, align 8
  store i8* %6, i8** %p, align 8
  %7 = load i8*, i8** %start.addr, align 8
  %8 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %beginp = getelementptr inbounds %struct.lmat, %struct.lmat* %8, i32 0, i32 4
  %9 = load i8*, i8** %beginp, align 8
  %cmp = icmp eq i8* %7, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i8*, i8** %start.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 -1
  %11 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %12 = load i8*, i8** %st, align 8
  %13 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g = getelementptr inbounds %struct.lmat, %struct.lmat* %13, i32 0, i32 0
  %14 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %nstates = getelementptr inbounds %struct.re_guts, %struct.re_guts* %14, i32 0, i32 7
  %15 = load i64, i64* %nstates, align 8
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 %15, i32 1, i1 false)
  %16 = load i64, i64* %startst.addr, align 8
  %17 = load i8*, i8** %st, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %16
  store i8 1, i8* %arrayidx, align 1
  %18 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g10 = getelementptr inbounds %struct.lmat, %struct.lmat* %18, i32 0, i32 0
  %19 = load %struct.re_guts*, %struct.re_guts** %g10, align 8
  %20 = load i64, i64* %startst.addr, align 8
  %21 = load i64, i64* %stopst.addr, align 8
  %22 = load i8*, i8** %st, align 8
  %23 = load i8*, i8** %st, align 8
  %call = call i8* @lstep(%struct.re_guts* %19, i64 %20, i64 %21, i8* %22, i32 132, i8* %23)
  store i8* %call, i8** %st, align 8
  store i8* null, i8** %matchp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.137, %cond.end
  %24 = load i32, i32* %c, align 4
  store i32 %24, i32* %lastc, align 4
  %25 = load i8*, i8** %p, align 8
  %26 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp = getelementptr inbounds %struct.lmat, %struct.lmat* %26, i32 0, i32 5
  %27 = load i8*, i8** %endp, align 8
  %cmp11 = icmp eq i8* %25, %27
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %for.cond
  br label %cond.end.16

cond.false.14:                                    ; preds = %for.cond
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv15 = sext i8 %29 to i32
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.13
  %cond17 = phi i32 [ 128, %cond.true.13 ], [ %conv15, %cond.false.14 ]
  store i32 %cond17, i32* %c, align 4
  store i32 0, i32* %flagch, align 4
  store i32 0, i32* %i, align 4
  %30 = load i32, i32* %lastc, align 4
  %cmp18 = icmp eq i32 %30, 10
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end.16
  %31 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g20 = getelementptr inbounds %struct.lmat, %struct.lmat* %31, i32 0, i32 0
  %32 = load %struct.re_guts*, %struct.re_guts** %g20, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %32, i32 0, i32 6
  %33 = load i32, i32* %cflags, align 4
  %and = and i32 %33, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end.16
  %34 = load i32, i32* %lastc, align 4
  %cmp21 = icmp eq i32 %34, 128
  br i1 %cmp21, label %land.lhs.true.23, label %if.end

land.lhs.true.23:                                 ; preds = %lor.lhs.false
  %35 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %eflags = getelementptr inbounds %struct.lmat, %struct.lmat* %35, i32 0, i32 1
  %36 = load i32, i32* %eflags, align 4
  %and24 = and i32 %36, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.23, %land.lhs.true
  store i32 129, i32* %flagch, align 4
  %37 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g26 = getelementptr inbounds %struct.lmat, %struct.lmat* %37, i32 0, i32 0
  %38 = load %struct.re_guts*, %struct.re_guts** %g26, align 8
  %nbol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %38, i32 0, i32 11
  %39 = load i32, i32* %nbol, align 4
  store i32 %39, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.23, %lor.lhs.false
  %40 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %40, 10
  br i1 %cmp27, label %land.lhs.true.29, label %lor.lhs.false.34

land.lhs.true.29:                                 ; preds = %if.end
  %41 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g30 = getelementptr inbounds %struct.lmat, %struct.lmat* %41, i32 0, i32 0
  %42 = load %struct.re_guts*, %struct.re_guts** %g30, align 8
  %cflags31 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %42, i32 0, i32 6
  %43 = load i32, i32* %cflags31, align 4
  %and32 = and i32 %43, 8
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.41, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %land.lhs.true.29, %if.end
  %44 = load i32, i32* %c, align 4
  %cmp35 = icmp eq i32 %44, 128
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.46

land.lhs.true.37:                                 ; preds = %lor.lhs.false.34
  %45 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %eflags38 = getelementptr inbounds %struct.lmat, %struct.lmat* %45, i32 0, i32 1
  %46 = load i32, i32* %eflags38, align 4
  %and39 = and i32 %46, 2
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.end.46, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.37, %land.lhs.true.29
  %47 = load i32, i32* %flagch, align 4
  %cmp42 = icmp eq i32 %47, 129
  %cond44 = select i1 %cmp42, i32 131, i32 130
  store i32 %cond44, i32* %flagch, align 4
  %48 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g45 = getelementptr inbounds %struct.lmat, %struct.lmat* %48, i32 0, i32 0
  %49 = load %struct.re_guts*, %struct.re_guts** %g45, align 8
  %neol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %49, i32 0, i32 12
  %50 = load i32, i32* %neol, align 4
  %51 = load i32, i32* %i, align 4
  %add = add nsw i32 %51, %50
  store i32 %add, i32* %i, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %land.lhs.true.37, %lor.lhs.false.34
  %52 = load i32, i32* %i, align 4
  %cmp47 = icmp ne i32 %52, 0
  br i1 %cmp47, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.end.46
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc, %if.then.49
  %53 = load i32, i32* %i, align 4
  %cmp51 = icmp sgt i32 %53, 0
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.50
  %54 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g53 = getelementptr inbounds %struct.lmat, %struct.lmat* %54, i32 0, i32 0
  %55 = load %struct.re_guts*, %struct.re_guts** %g53, align 8
  %56 = load i64, i64* %startst.addr, align 8
  %57 = load i64, i64* %stopst.addr, align 8
  %58 = load i8*, i8** %st, align 8
  %59 = load i32, i32* %flagch, align 4
  %60 = load i8*, i8** %st, align 8
  %call54 = call i8* @lstep(%struct.re_guts* %55, i64 %56, i64 %57, i8* %58, i32 %59, i8* %60)
  store i8* %call54, i8** %st, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %i, align 4
  %dec = add nsw i32 %61, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.50

for.end:                                          ; preds = %for.cond.50
  br label %if.end.55

if.end.55:                                        ; preds = %for.end, %if.end.46
  %62 = load i32, i32* %flagch, align 4
  %cmp56 = icmp eq i32 %62, 129
  br i1 %cmp56, label %land.lhs.true.70, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.end.55
  %63 = load i32, i32* %lastc, align 4
  %cmp59 = icmp ne i32 %63, 128
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.84

land.lhs.true.61:                                 ; preds = %lor.lhs.false.58
  %64 = load i32, i32* %lastc, align 4
  %idxprom = sext i32 %64 to i64
  %call62 = call i16** @__ctype_b_loc() #7
  %65 = load i16*, i16** %call62, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %65, i64 %idxprom
  %66 = load i16, i16* %arrayidx63, align 2
  %conv64 = zext i16 %66 to i32
  %and65 = and i32 %conv64, 8
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.end.84, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %land.lhs.true.61
  %67 = load i32, i32* %lastc, align 4
  %cmp68 = icmp eq i32 %67, 95
  br i1 %cmp68, label %if.end.84, label %land.lhs.true.70

land.lhs.true.70:                                 ; preds = %lor.lhs.false.67, %if.end.55
  %68 = load i32, i32* %c, align 4
  %cmp71 = icmp ne i32 %68, 128
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.84

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %69 = load i32, i32* %c, align 4
  %idxprom74 = sext i32 %69 to i64
  %call75 = call i16** @__ctype_b_loc() #7
  %70 = load i16*, i16** %call75, align 8
  %arrayidx76 = getelementptr inbounds i16, i16* %70, i64 %idxprom74
  %71 = load i16, i16* %arrayidx76, align 2
  %conv77 = zext i16 %71 to i32
  %and78 = and i32 %conv77, 8
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.83, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %land.lhs.true.73
  %72 = load i32, i32* %c, align 4
  %cmp81 = icmp eq i32 %72, 95
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false.80, %land.lhs.true.73
  store i32 133, i32* %flagch, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %lor.lhs.false.80, %land.lhs.true.70, %lor.lhs.false.67, %land.lhs.true.61, %lor.lhs.false.58
  %73 = load i32, i32* %lastc, align 4
  %cmp85 = icmp ne i32 %73, 128
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.114

land.lhs.true.87:                                 ; preds = %if.end.84
  %74 = load i32, i32* %lastc, align 4
  %idxprom88 = sext i32 %74 to i64
  %call89 = call i16** @__ctype_b_loc() #7
  %75 = load i16*, i16** %call89, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %75, i64 %idxprom88
  %76 = load i16, i16* %arrayidx90, align 2
  %conv91 = zext i16 %76 to i32
  %and92 = and i32 %conv91, 8
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %land.lhs.true.97, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %land.lhs.true.87
  %77 = load i32, i32* %lastc, align 4
  %cmp95 = icmp eq i32 %77, 95
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.114

land.lhs.true.97:                                 ; preds = %lor.lhs.false.94, %land.lhs.true.87
  %78 = load i32, i32* %flagch, align 4
  %cmp98 = icmp eq i32 %78, 130
  br i1 %cmp98, label %if.then.113, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %land.lhs.true.97
  %79 = load i32, i32* %c, align 4
  %cmp101 = icmp ne i32 %79, 128
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.114

land.lhs.true.103:                                ; preds = %lor.lhs.false.100
  %80 = load i32, i32* %c, align 4
  %idxprom104 = sext i32 %80 to i64
  %call105 = call i16** @__ctype_b_loc() #7
  %81 = load i16*, i16** %call105, align 8
  %arrayidx106 = getelementptr inbounds i16, i16* %81, i64 %idxprom104
  %82 = load i16, i16* %arrayidx106, align 2
  %conv107 = zext i16 %82 to i32
  %and108 = and i32 %conv107, 8
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.end.114, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.103
  %83 = load i32, i32* %c, align 4
  %cmp111 = icmp eq i32 %83, 95
  br i1 %cmp111, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %lor.lhs.false.110, %land.lhs.true.97
  store i32 134, i32* %flagch, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %lor.lhs.false.110, %land.lhs.true.103, %lor.lhs.false.100, %lor.lhs.false.94, %if.end.84
  %84 = load i32, i32* %flagch, align 4
  %cmp115 = icmp eq i32 %84, 133
  br i1 %cmp115, label %if.then.120, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.end.114
  %85 = load i32, i32* %flagch, align 4
  %cmp118 = icmp eq i32 %85, 134
  br i1 %cmp118, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %lor.lhs.false.117, %if.end.114
  %86 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g121 = getelementptr inbounds %struct.lmat, %struct.lmat* %86, i32 0, i32 0
  %87 = load %struct.re_guts*, %struct.re_guts** %g121, align 8
  %88 = load i64, i64* %startst.addr, align 8
  %89 = load i64, i64* %stopst.addr, align 8
  %90 = load i8*, i8** %st, align 8
  %91 = load i32, i32* %flagch, align 4
  %92 = load i8*, i8** %st, align 8
  %call122 = call i8* @lstep(%struct.re_guts* %87, i64 %88, i64 %89, i8* %90, i32 %91, i8* %92)
  store i8* %call122, i8** %st, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %lor.lhs.false.117
  %93 = load i64, i64* %stopst.addr, align 8
  %94 = load i8*, i8** %st, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %94, i64 %93
  %95 = load i8, i8* %arrayidx124, align 1
  %tobool125 = icmp ne i8 %95, 0
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.123
  %96 = load i8*, i8** %p, align 8
  store i8* %96, i8** %matchp, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.123
  %97 = load i8*, i8** %st, align 8
  %98 = load i8*, i8** %empty, align 8
  %99 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g128 = getelementptr inbounds %struct.lmat, %struct.lmat* %99, i32 0, i32 0
  %100 = load %struct.re_guts*, %struct.re_guts** %g128, align 8
  %nstates129 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %100, i32 0, i32 7
  %101 = load i64, i64* %nstates129, align 8
  %call130 = call i32 @memcmp(i8* %97, i8* %98, i64 %101) #6
  %cmp131 = icmp eq i32 %call130, 0
  br i1 %cmp131, label %if.then.136, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %if.end.127
  %102 = load i8*, i8** %p, align 8
  %103 = load i8*, i8** %stop.addr, align 8
  %cmp134 = icmp eq i8* %102, %103
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %lor.lhs.false.133, %if.end.127
  br label %for.end.144

if.end.137:                                       ; preds = %lor.lhs.false.133
  %104 = load i8*, i8** %tmp, align 8
  %105 = load i8*, i8** %st, align 8
  %106 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g138 = getelementptr inbounds %struct.lmat, %struct.lmat* %106, i32 0, i32 0
  %107 = load %struct.re_guts*, %struct.re_guts** %g138, align 8
  %nstates139 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %107, i32 0, i32 7
  %108 = load i64, i64* %nstates139, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %104, i8* %105, i64 %108, i32 1, i1 false)
  %109 = load i8*, i8** %st, align 8
  %110 = load i8*, i8** %empty, align 8
  %111 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g140 = getelementptr inbounds %struct.lmat, %struct.lmat* %111, i32 0, i32 0
  %112 = load %struct.re_guts*, %struct.re_guts** %g140, align 8
  %nstates141 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %112, i32 0, i32 7
  %113 = load i64, i64* %nstates141, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %109, i8* %110, i64 %113, i32 1, i1 false)
  %114 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g142 = getelementptr inbounds %struct.lmat, %struct.lmat* %114, i32 0, i32 0
  %115 = load %struct.re_guts*, %struct.re_guts** %g142, align 8
  %116 = load i64, i64* %startst.addr, align 8
  %117 = load i64, i64* %stopst.addr, align 8
  %118 = load i8*, i8** %tmp, align 8
  %119 = load i32, i32* %c, align 4
  %120 = load i8*, i8** %st, align 8
  %call143 = call i8* @lstep(%struct.re_guts* %115, i64 %116, i64 %117, i8* %118, i32 %119, i8* %120)
  store i8* %call143, i8** %st, align 8
  %121 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end.144:                                      ; preds = %if.then.136
  %122 = load i8*, i8** %matchp, align 8
  ret i8* %122
}

; Function Attrs: nounwind uwtable
define internal i8* @ldissect(%struct.lmat* %m, i8* %start, i8* %stop, i64 %startst, i64 %stopst) #0 {
entry:
  %m.addr = alloca %struct.lmat*, align 8
  %start.addr = alloca i8*, align 8
  %stop.addr = alloca i8*, align 8
  %startst.addr = alloca i64, align 8
  %stopst.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %ss = alloca i64, align 8
  %es = alloca i64, align 8
  %sp = alloca i8*, align 8
  %stp = alloca i8*, align 8
  %rest = alloca i8*, align 8
  %tail = alloca i8*, align 8
  %ssub = alloca i64, align 8
  %esub = alloca i64, align 8
  %ssp = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %oldssp = alloca i8*, align 8
  %dp = alloca i8*, align 8
  store %struct.lmat* %m, %struct.lmat** %m.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %stop, i8** %stop.addr, align 8
  store i64 %startst, i64* %startst.addr, align 8
  store i64 %stopst, i64* %stopst.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %sp, align 8
  %1 = load i64, i64* %startst.addr, align 8
  store i64 %1, i64* %ss, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %ss, align 8
  %3 = load i64, i64* %stopst.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end.117

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %ss, align 8
  store i64 %4, i64* %es, align 8
  %5 = load i64, i64* %es, align 8
  %6 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g = getelementptr inbounds %struct.lmat, %struct.lmat* %6, i32 0, i32 0
  %7 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %strip = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i32 0, i32 1
  %8 = load i64*, i64** %strip, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %5
  %9 = load i64, i64* %arrayidx, align 8
  %and = and i64 %9, 4160749568
  switch i64 %and, label %sw.epilog [
    i64 1207959552, label %sw.bb
    i64 1476395008, label %sw.bb
    i64 2013265920, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %10 = load i64, i64* %es, align 8
  %11 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g1 = getelementptr inbounds %struct.lmat, %struct.lmat* %11, i32 0, i32 0
  %12 = load %struct.re_guts*, %struct.re_guts** %g1, align 8
  %strip2 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %12, i32 0, i32 1
  %13 = load i64*, i64** %strip2, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %13, i64 %10
  %14 = load i64, i64* %arrayidx3, align 8
  %and4 = and i64 %14, 134217727
  %15 = load i64, i64* %es, align 8
  %add = add i64 %15, %and4
  store i64 %add, i64* %es, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.5
  %16 = load i64, i64* %es, align 8
  %17 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g6 = getelementptr inbounds %struct.lmat, %struct.lmat* %17, i32 0, i32 0
  %18 = load %struct.re_guts*, %struct.re_guts** %g6, align 8
  %strip7 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %18, i32 0, i32 1
  %19 = load i64*, i64** %strip7, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %19, i64 %16
  %20 = load i64, i64* %arrayidx8, align 8
  %and9 = and i64 %20, 4160749568
  %cmp10 = icmp ne i64 %and9, 2415919104
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i64, i64* %es, align 8
  %22 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g11 = getelementptr inbounds %struct.lmat, %struct.lmat* %22, i32 0, i32 0
  %23 = load %struct.re_guts*, %struct.re_guts** %g11, align 8
  %strip12 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %23, i32 0, i32 1
  %24 = load i64*, i64** %strip12, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %24, i64 %21
  %25 = load i64, i64* %arrayidx13, align 8
  %and14 = and i64 %25, 134217727
  %26 = load i64, i64* %es, align 8
  %add15 = add i64 %26, %and14
  store i64 %add15, i64* %es, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %while.end, %sw.bb
  %27 = load i64, i64* %es, align 8
  %inc = add nsw i64 %27, 1
  store i64 %inc, i64* %es, align 8
  %28 = load i64, i64* %ss, align 8
  %29 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g16 = getelementptr inbounds %struct.lmat, %struct.lmat* %29, i32 0, i32 0
  %30 = load %struct.re_guts*, %struct.re_guts** %g16, align 8
  %strip17 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %30, i32 0, i32 1
  %31 = load i64*, i64** %strip17, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %31, i64 %28
  %32 = load i64, i64* %arrayidx18, align 8
  %and19 = and i64 %32, 4160749568
  switch i64 %and19, label %sw.default [
    i64 134217728, label %sw.bb.20
    i64 268435456, label %sw.bb.21
    i64 402653184, label %sw.bb.22
    i64 536870912, label %sw.bb.22
    i64 2550136832, label %sw.bb.22
    i64 2684354560, label %sw.bb.22
    i64 671088640, label %sw.bb.23
    i64 805306368, label %sw.bb.23
    i64 939524096, label %sw.bb.25
    i64 1073741824, label %sw.bb.25
    i64 1476395008, label %sw.bb.26
    i64 1207959552, label %sw.bb.36
    i64 2013265920, label %sw.bb.58
    i64 1342177280, label %sw.bb.96
    i64 1610612736, label %sw.bb.96
    i64 2147483648, label %sw.bb.96
    i64 2281701376, label %sw.bb.96
    i64 2415919104, label %sw.bb.96
    i64 1744830464, label %sw.bb.97
    i64 1879048192, label %sw.bb.103
  ]

sw.bb.20:                                         ; preds = %sw.epilog
  br label %sw.epilog.116

sw.bb.21:                                         ; preds = %sw.epilog
  %33 = load i8*, i8** %sp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.22:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.116

sw.bb.23:                                         ; preds = %sw.epilog, %sw.epilog
  %34 = load i8*, i8** %sp, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr24, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.25:                                         ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.116

sw.bb.26:                                         ; preds = %sw.epilog
  %35 = load i8*, i8** %stop.addr, align 8
  store i8* %35, i8** %stp, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %if.end, %sw.bb.26
  %36 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %37 = load i8*, i8** %sp, align 8
  %38 = load i8*, i8** %stp, align 8
  %39 = load i64, i64* %ss, align 8
  %40 = load i64, i64* %es, align 8
  %call = call i8* @lslow(%struct.lmat* %36, i8* %37, i8* %38, i64 %39, i64 %40)
  store i8* %call, i8** %rest, align 8
  %41 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %42 = load i8*, i8** %rest, align 8
  %43 = load i8*, i8** %stop.addr, align 8
  %44 = load i64, i64* %es, align 8
  %45 = load i64, i64* %stopst.addr, align 8
  %call28 = call i8* @lslow(%struct.lmat* %41, i8* %42, i8* %43, i64 %44, i64 %45)
  store i8* %call28, i8** %tail, align 8
  %46 = load i8*, i8** %tail, align 8
  %47 = load i8*, i8** %stop.addr, align 8
  %cmp29 = icmp eq i8* %46, %47
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.27
  br label %for.end

if.end:                                           ; preds = %for.cond.27
  %48 = load i8*, i8** %rest, align 8
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 -1
  store i8* %add.ptr, i8** %stp, align 8
  br label %for.cond.27

for.end:                                          ; preds = %if.then
  %49 = load i64, i64* %ss, align 8
  %add30 = add nsw i64 %49, 1
  store i64 %add30, i64* %ssub, align 8
  %50 = load i64, i64* %es, align 8
  %sub = sub nsw i64 %50, 1
  store i64 %sub, i64* %esub, align 8
  %51 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %52 = load i8*, i8** %sp, align 8
  %53 = load i8*, i8** %rest, align 8
  %54 = load i64, i64* %ssub, align 8
  %55 = load i64, i64* %esub, align 8
  %call31 = call i8* @lslow(%struct.lmat* %51, i8* %52, i8* %53, i64 %54, i64 %55)
  %cmp32 = icmp ne i8* %call31, null
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %for.end
  %56 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %57 = load i8*, i8** %sp, align 8
  %58 = load i8*, i8** %rest, align 8
  %59 = load i64, i64* %ssub, align 8
  %60 = load i64, i64* %esub, align 8
  %call34 = call i8* @ldissect(%struct.lmat* %56, i8* %57, i8* %58, i64 %59, i64 %60)
  store i8* %call34, i8** %dp, align 8
  br label %if.end.35

if.else:                                          ; preds = %for.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.33
  %61 = load i8*, i8** %rest, align 8
  store i8* %61, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.36:                                         ; preds = %sw.epilog
  %62 = load i8*, i8** %stop.addr, align 8
  store i8* %62, i8** %stp, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %if.end.42, %sw.bb.36
  %63 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %64 = load i8*, i8** %sp, align 8
  %65 = load i8*, i8** %stp, align 8
  %66 = load i64, i64* %ss, align 8
  %67 = load i64, i64* %es, align 8
  %call38 = call i8* @lslow(%struct.lmat* %63, i8* %64, i8* %65, i64 %66, i64 %67)
  store i8* %call38, i8** %rest, align 8
  %68 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %69 = load i8*, i8** %rest, align 8
  %70 = load i8*, i8** %stop.addr, align 8
  %71 = load i64, i64* %es, align 8
  %72 = load i64, i64* %stopst.addr, align 8
  %call39 = call i8* @lslow(%struct.lmat* %68, i8* %69, i8* %70, i64 %71, i64 %72)
  store i8* %call39, i8** %tail, align 8
  %73 = load i8*, i8** %tail, align 8
  %74 = load i8*, i8** %stop.addr, align 8
  %cmp40 = icmp eq i8* %73, %74
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.cond.37
  br label %for.end.44

if.end.42:                                        ; preds = %for.cond.37
  %75 = load i8*, i8** %rest, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %75, i64 -1
  store i8* %add.ptr43, i8** %stp, align 8
  br label %for.cond.37

for.end.44:                                       ; preds = %if.then.41
  %76 = load i64, i64* %ss, align 8
  %add45 = add nsw i64 %76, 1
  store i64 %add45, i64* %ssub, align 8
  %77 = load i64, i64* %es, align 8
  %sub46 = sub nsw i64 %77, 1
  store i64 %sub46, i64* %esub, align 8
  %78 = load i8*, i8** %sp, align 8
  store i8* %78, i8** %ssp, align 8
  %79 = load i8*, i8** %ssp, align 8
  store i8* %79, i8** %oldssp, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %if.end.52, %for.end.44
  %80 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %81 = load i8*, i8** %ssp, align 8
  %82 = load i8*, i8** %rest, align 8
  %83 = load i64, i64* %ssub, align 8
  %84 = load i64, i64* %esub, align 8
  %call48 = call i8* @lslow(%struct.lmat* %80, i8* %81, i8* %82, i64 %83, i64 %84)
  store i8* %call48, i8** %sep, align 8
  %85 = load i8*, i8** %sep, align 8
  %cmp49 = icmp eq i8* %85, null
  br i1 %cmp49, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond.47
  %86 = load i8*, i8** %sep, align 8
  %87 = load i8*, i8** %ssp, align 8
  %cmp50 = icmp eq i8* %86, %87
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %lor.lhs.false, %for.cond.47
  br label %for.end.53

if.end.52:                                        ; preds = %lor.lhs.false
  %88 = load i8*, i8** %ssp, align 8
  store i8* %88, i8** %oldssp, align 8
  %89 = load i8*, i8** %sep, align 8
  store i8* %89, i8** %ssp, align 8
  br label %for.cond.47

for.end.53:                                       ; preds = %if.then.51
  %90 = load i8*, i8** %sep, align 8
  %cmp54 = icmp eq i8* %90, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end.53
  %91 = load i8*, i8** %ssp, align 8
  store i8* %91, i8** %sep, align 8
  %92 = load i8*, i8** %oldssp, align 8
  store i8* %92, i8** %ssp, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %for.end.53
  %93 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %94 = load i8*, i8** %ssp, align 8
  %95 = load i8*, i8** %sep, align 8
  %96 = load i64, i64* %ssub, align 8
  %97 = load i64, i64* %esub, align 8
  %call57 = call i8* @ldissect(%struct.lmat* %93, i8* %94, i8* %95, i64 %96, i64 %97)
  store i8* %call57, i8** %dp, align 8
  %98 = load i8*, i8** %rest, align 8
  store i8* %98, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.58:                                         ; preds = %sw.epilog
  %99 = load i8*, i8** %stop.addr, align 8
  store i8* %99, i8** %stp, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %if.end.64, %sw.bb.58
  %100 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %101 = load i8*, i8** %sp, align 8
  %102 = load i8*, i8** %stp, align 8
  %103 = load i64, i64* %ss, align 8
  %104 = load i64, i64* %es, align 8
  %call60 = call i8* @lslow(%struct.lmat* %100, i8* %101, i8* %102, i64 %103, i64 %104)
  store i8* %call60, i8** %rest, align 8
  %105 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %106 = load i8*, i8** %rest, align 8
  %107 = load i8*, i8** %stop.addr, align 8
  %108 = load i64, i64* %es, align 8
  %109 = load i64, i64* %stopst.addr, align 8
  %call61 = call i8* @lslow(%struct.lmat* %105, i8* %106, i8* %107, i64 %108, i64 %109)
  store i8* %call61, i8** %tail, align 8
  %110 = load i8*, i8** %tail, align 8
  %111 = load i8*, i8** %stop.addr, align 8
  %cmp62 = icmp eq i8* %110, %111
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.cond.59
  br label %for.end.66

if.end.64:                                        ; preds = %for.cond.59
  %112 = load i8*, i8** %rest, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %112, i64 -1
  store i8* %add.ptr65, i8** %stp, align 8
  br label %for.cond.59

for.end.66:                                       ; preds = %if.then.63
  %113 = load i64, i64* %ss, align 8
  %add67 = add nsw i64 %113, 1
  store i64 %add67, i64* %ssub, align 8
  %114 = load i64, i64* %ss, align 8
  %115 = load i64, i64* %ss, align 8
  %116 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g68 = getelementptr inbounds %struct.lmat, %struct.lmat* %116, i32 0, i32 0
  %117 = load %struct.re_guts*, %struct.re_guts** %g68, align 8
  %strip69 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %117, i32 0, i32 1
  %118 = load i64*, i64** %strip69, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %118, i64 %115
  %119 = load i64, i64* %arrayidx70, align 8
  %and71 = and i64 %119, 134217727
  %add72 = add i64 %114, %and71
  %sub73 = sub i64 %add72, 1
  store i64 %sub73, i64* %esub, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %if.end.93, %for.end.66
  %120 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %121 = load i8*, i8** %sp, align 8
  %122 = load i8*, i8** %rest, align 8
  %123 = load i64, i64* %ssub, align 8
  %124 = load i64, i64* %esub, align 8
  %call75 = call i8* @lslow(%struct.lmat* %120, i8* %121, i8* %122, i64 %123, i64 %124)
  %125 = load i8*, i8** %rest, align 8
  %cmp76 = icmp eq i8* %call75, %125
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.cond.74
  br label %for.end.94

if.end.78:                                        ; preds = %for.cond.74
  %126 = load i64, i64* %esub, align 8
  %inc79 = add nsw i64 %126, 1
  store i64 %inc79, i64* %esub, align 8
  %127 = load i64, i64* %esub, align 8
  %add80 = add nsw i64 %127, 1
  store i64 %add80, i64* %ssub, align 8
  %128 = load i64, i64* %esub, align 8
  %129 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g81 = getelementptr inbounds %struct.lmat, %struct.lmat* %129, i32 0, i32 0
  %130 = load %struct.re_guts*, %struct.re_guts** %g81, align 8
  %strip82 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %130, i32 0, i32 1
  %131 = load i64*, i64** %strip82, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %131, i64 %128
  %132 = load i64, i64* %arrayidx83, align 8
  %and84 = and i64 %132, 134217727
  %133 = load i64, i64* %esub, align 8
  %add85 = add i64 %133, %and84
  store i64 %add85, i64* %esub, align 8
  %134 = load i64, i64* %esub, align 8
  %135 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g86 = getelementptr inbounds %struct.lmat, %struct.lmat* %135, i32 0, i32 0
  %136 = load %struct.re_guts*, %struct.re_guts** %g86, align 8
  %strip87 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %136, i32 0, i32 1
  %137 = load i64*, i64** %strip87, align 8
  %arrayidx88 = getelementptr inbounds i64, i64* %137, i64 %134
  %138 = load i64, i64* %arrayidx88, align 8
  %and89 = and i64 %138, 4160749568
  %cmp90 = icmp eq i64 %and89, 2281701376
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.end.78
  %139 = load i64, i64* %esub, align 8
  %dec = add nsw i64 %139, -1
  store i64 %dec, i64* %esub, align 8
  br label %if.end.93

if.else.92:                                       ; preds = %if.end.78
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.92, %if.then.91
  br label %for.cond.74

for.end.94:                                       ; preds = %if.then.77
  %140 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %141 = load i8*, i8** %sp, align 8
  %142 = load i8*, i8** %rest, align 8
  %143 = load i64, i64* %ssub, align 8
  %144 = load i64, i64* %esub, align 8
  %call95 = call i8* @ldissect(%struct.lmat* %140, i8* %141, i8* %142, i64 %143, i64 %144)
  store i8* %call95, i8** %dp, align 8
  %145 = load i8*, i8** %rest, align 8
  store i8* %145, i8** %sp, align 8
  br label %sw.epilog.116

sw.bb.96:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.116

sw.bb.97:                                         ; preds = %sw.epilog
  %146 = load i64, i64* %ss, align 8
  %147 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g98 = getelementptr inbounds %struct.lmat, %struct.lmat* %147, i32 0, i32 0
  %148 = load %struct.re_guts*, %struct.re_guts** %g98, align 8
  %strip99 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %148, i32 0, i32 1
  %149 = load i64*, i64** %strip99, align 8
  %arrayidx100 = getelementptr inbounds i64, i64* %149, i64 %146
  %150 = load i64, i64* %arrayidx100, align 8
  %and101 = and i64 %150, 134217727
  %conv = trunc i64 %and101 to i32
  store i32 %conv, i32* %i, align 4
  %151 = load i8*, i8** %sp, align 8
  %152 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %offp = getelementptr inbounds %struct.lmat, %struct.lmat* %152, i32 0, i32 3
  %153 = load i8*, i8** %offp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %151 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %153 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %154 = load i32, i32* %i, align 4
  %idxprom = sext i32 %154 to i64
  %155 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch = getelementptr inbounds %struct.lmat, %struct.lmat* %155, i32 0, i32 2
  %156 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch, align 8
  %arrayidx102 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %156, i64 %idxprom
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx102, i32 0, i32 0
  store i64 %sub.ptr.sub, i64* %rm_so, align 8
  br label %sw.epilog.116

sw.bb.103:                                        ; preds = %sw.epilog
  %157 = load i64, i64* %ss, align 8
  %158 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g104 = getelementptr inbounds %struct.lmat, %struct.lmat* %158, i32 0, i32 0
  %159 = load %struct.re_guts*, %struct.re_guts** %g104, align 8
  %strip105 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %159, i32 0, i32 1
  %160 = load i64*, i64** %strip105, align 8
  %arrayidx106 = getelementptr inbounds i64, i64* %160, i64 %157
  %161 = load i64, i64* %arrayidx106, align 8
  %and107 = and i64 %161, 134217727
  %conv108 = trunc i64 %and107 to i32
  store i32 %conv108, i32* %i, align 4
  %162 = load i8*, i8** %sp, align 8
  %163 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %offp109 = getelementptr inbounds %struct.lmat, %struct.lmat* %163, i32 0, i32 3
  %164 = load i8*, i8** %offp109, align 8
  %sub.ptr.lhs.cast110 = ptrtoint i8* %162 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %164 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %165 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %165 to i64
  %166 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch114 = getelementptr inbounds %struct.lmat, %struct.lmat* %166, i32 0, i32 2
  %167 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch114, align 8
  %arrayidx115 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %167, i64 %idxprom113
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx115, i32 0, i32 1
  store i64 %sub.ptr.sub112, i64* %rm_eo, align 8
  br label %sw.epilog.116

sw.default:                                       ; preds = %sw.epilog
  br label %sw.epilog.116

sw.epilog.116:                                    ; preds = %sw.default, %sw.bb.103, %sw.bb.97, %sw.bb.96, %for.end.94, %if.end.56, %if.end.35, %sw.bb.25, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.116
  %168 = load i64, i64* %es, align 8
  store i64 %168, i64* %ss, align 8
  br label %for.cond

for.end.117:                                      ; preds = %for.cond
  %169 = load i8*, i8** %sp, align 8
  ret i8* %169
}

; Function Attrs: nounwind uwtable
define internal i8* @lbackref(%struct.lmat* %m, i8* %start, i8* %stop, i64 %startst, i64 %stopst, i64 %lev, i32 %rec) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.lmat*, align 8
  %start.addr = alloca i8*, align 8
  %stop.addr = alloca i8*, align 8
  %startst.addr = alloca i64, align 8
  %stopst.addr = alloca i64, align 8
  %lev.addr = alloca i64, align 8
  %rec.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ss = alloca i64, align 8
  %sp = alloca i8*, align 8
  %ssub = alloca i64, align 8
  %esub = alloca i64, align 8
  %ssp = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %len = alloca i64, align 8
  %hard = alloca i32, align 4
  %s = alloca i64, align 8
  %offsave = alloca i64, align 8
  %cs = alloca %struct.cset*, align 8
  store %struct.lmat* %m, %struct.lmat** %m.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %stop, i8** %stop.addr, align 8
  store i64 %startst, i64* %startst.addr, align 8
  store i64 %stopst, i64* %stopst.addr, align 8
  store i64 %lev, i64* %lev.addr, align 8
  store i32 %rec, i32* %rec.addr, align 4
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %sp, align 8
  store i32 0, i32* %hard, align 4
  %1 = load i64, i64* %startst.addr, align 8
  store i64 %1, i64* %ss, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %hard, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, i64* %ss, align 8
  %4 = load i64, i64* %stopst.addr, align 8
  %cmp = icmp slt i64 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i64, i64* %ss, align 8
  %7 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g = getelementptr inbounds %struct.lmat, %struct.lmat* %7, i32 0, i32 0
  %8 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %strip = getelementptr inbounds %struct.re_guts, %struct.re_guts* %8, i32 0, i32 1
  %9 = load i64*, i64** %strip, align 8
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 %6
  %10 = load i64, i64* %arrayidx, align 8
  store i64 %10, i64* %s, align 8
  %and = and i64 %10, 4160749568
  switch i64 %and, label %sw.default [
    i64 268435456, label %sw.bb
    i64 671088640, label %sw.bb.7
    i64 805306368, label %sw.bb.13
    i64 402653184, label %sw.bb.28
    i64 536870912, label %sw.bb.46
    i64 2550136832, label %sw.bb.70
    i64 2684354560, label %sw.bb.128
    i64 1610612736, label %sw.bb.186
    i64 2147483648, label %sw.bb.187
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load i8*, i8** %sp, align 8
  %12 = load i8*, i8** %stop.addr, align 8
  %cmp1 = icmp eq i8* %11, %12
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %13 = load i8*, i8** %sp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %sp, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %15 = load i64, i64* %s, align 8
  %and2 = and i64 %15, 134217727
  %conv3 = trunc i64 %and2 to i8
  %conv4 = sext i8 %conv3 to i32
  %cmp5 = icmp ne i32 %conv, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %16 = load i8*, i8** %sp, align 8
  %17 = load i8*, i8** %stop.addr, align 8
  %cmp8 = icmp eq i8* %16, %17
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.7
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.11:                                        ; preds = %sw.bb.7
  %18 = load i8*, i8** %sp, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr12, i8** %sp, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %19 = load i64, i64* %s, align 8
  %and14 = and i64 %19, 134217727
  %20 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g15 = getelementptr inbounds %struct.lmat, %struct.lmat* %20, i32 0, i32 0
  %21 = load %struct.re_guts*, %struct.re_guts** %g15, align 8
  %sets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %21, i32 0, i32 4
  %22 = load %struct.cset*, %struct.cset** %sets, align 8
  %arrayidx16 = getelementptr inbounds %struct.cset, %struct.cset* %22, i64 %and14
  store %struct.cset* %arrayidx16, %struct.cset** %cs, align 8
  %23 = load i8*, i8** %sp, align 8
  %24 = load i8*, i8** %stop.addr, align 8
  %cmp17 = icmp eq i8* %23, %24
  br i1 %cmp17, label %if.then.26, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %sw.bb.13
  %25 = load i8*, i8** %sp, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr20, i8** %sp, align 8
  %26 = load i8, i8* %25, align 1
  %idxprom = zext i8 %26 to i64
  %27 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %27, i32 0, i32 0
  %28 = load i8*, i8** %ptr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %29 to i32
  %30 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %30, i32 0, i32 1
  %31 = load i8, i8* %mask, align 1
  %conv23 = zext i8 %31 to i32
  %and24 = and i32 %conv22, %conv23
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false.19, %sw.bb.13
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.27:                                        ; preds = %lor.lhs.false.19
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body
  %32 = load i8*, i8** %sp, align 8
  %33 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %beginp = getelementptr inbounds %struct.lmat, %struct.lmat* %33, i32 0, i32 4
  %34 = load i8*, i8** %beginp, align 8
  %cmp29 = icmp eq i8* %32, %34
  br i1 %cmp29, label %land.lhs.true, label %lor.lhs.false.33

land.lhs.true:                                    ; preds = %sw.bb.28
  %35 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %eflags = getelementptr inbounds %struct.lmat, %struct.lmat* %35, i32 0, i32 1
  %36 = load i32, i32* %eflags, align 4
  %and31 = and i32 %36, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %lor.lhs.false.33, label %if.then.44

lor.lhs.false.33:                                 ; preds = %land.lhs.true, %sw.bb.28
  %37 = load i8*, i8** %sp, align 8
  %38 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp = getelementptr inbounds %struct.lmat, %struct.lmat* %38, i32 0, i32 5
  %39 = load i8*, i8** %endp, align 8
  %cmp34 = icmp ult i8* %37, %39
  br i1 %cmp34, label %land.lhs.true.36, label %if.else

land.lhs.true.36:                                 ; preds = %lor.lhs.false.33
  %40 = load i8*, i8** %sp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 -1
  %41 = load i8, i8* %add.ptr, align 1
  %conv37 = sext i8 %41 to i32
  %cmp38 = icmp eq i32 %conv37, 10
  br i1 %cmp38, label %land.lhs.true.40, label %if.else

land.lhs.true.40:                                 ; preds = %land.lhs.true.36
  %42 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g41 = getelementptr inbounds %struct.lmat, %struct.lmat* %42, i32 0, i32 0
  %43 = load %struct.re_guts*, %struct.re_guts** %g41, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %43, i32 0, i32 6
  %44 = load i32, i32* %cflags, align 4
  %and42 = and i32 %44, 8
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %land.lhs.true.40, %land.lhs.true
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true.40, %land.lhs.true.36, %lor.lhs.false.33
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.45:                                        ; preds = %if.then.44
  br label %sw.epilog

sw.bb.46:                                         ; preds = %for.body
  %45 = load i8*, i8** %sp, align 8
  %46 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp47 = getelementptr inbounds %struct.lmat, %struct.lmat* %46, i32 0, i32 5
  %47 = load i8*, i8** %endp47, align 8
  %cmp48 = icmp eq i8* %45, %47
  br i1 %cmp48, label %land.lhs.true.50, label %lor.lhs.false.54

land.lhs.true.50:                                 ; preds = %sw.bb.46
  %48 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %eflags51 = getelementptr inbounds %struct.lmat, %struct.lmat* %48, i32 0, i32 1
  %49 = load i32, i32* %eflags51, align 4
  %and52 = and i32 %49, 2
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %lor.lhs.false.54, label %if.then.67

lor.lhs.false.54:                                 ; preds = %land.lhs.true.50, %sw.bb.46
  %50 = load i8*, i8** %sp, align 8
  %51 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp55 = getelementptr inbounds %struct.lmat, %struct.lmat* %51, i32 0, i32 5
  %52 = load i8*, i8** %endp55, align 8
  %cmp56 = icmp ult i8* %50, %52
  br i1 %cmp56, label %land.lhs.true.58, label %if.else.68

land.lhs.true.58:                                 ; preds = %lor.lhs.false.54
  %53 = load i8*, i8** %sp, align 8
  %54 = load i8, i8* %53, align 1
  %conv59 = sext i8 %54 to i32
  %cmp60 = icmp eq i32 %conv59, 10
  br i1 %cmp60, label %land.lhs.true.62, label %if.else.68

land.lhs.true.62:                                 ; preds = %land.lhs.true.58
  %55 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g63 = getelementptr inbounds %struct.lmat, %struct.lmat* %55, i32 0, i32 0
  %56 = load %struct.re_guts*, %struct.re_guts** %g63, align 8
  %cflags64 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %56, i32 0, i32 6
  %57 = load i32, i32* %cflags64, align 4
  %and65 = and i32 %57, 8
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %land.lhs.true.62, %land.lhs.true.50
  br label %if.end.69

if.else.68:                                       ; preds = %land.lhs.true.62, %land.lhs.true.58, %lor.lhs.false.54
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.69:                                        ; preds = %if.then.67
  br label %sw.epilog

sw.bb.70:                                         ; preds = %for.body
  %58 = load i8*, i8** %sp, align 8
  %59 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %beginp71 = getelementptr inbounds %struct.lmat, %struct.lmat* %59, i32 0, i32 4
  %60 = load i8*, i8** %beginp71, align 8
  %cmp72 = icmp eq i8* %58, %60
  br i1 %cmp72, label %land.lhs.true.74, label %lor.lhs.false.78

land.lhs.true.74:                                 ; preds = %sw.bb.70
  %61 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %eflags75 = getelementptr inbounds %struct.lmat, %struct.lmat* %61, i32 0, i32 1
  %62 = load i32, i32* %eflags75, align 4
  %and76 = and i32 %62, 1
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %lor.lhs.false.78, label %land.lhs.true.109

lor.lhs.false.78:                                 ; preds = %land.lhs.true.74, %sw.bb.70
  %63 = load i8*, i8** %sp, align 8
  %64 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp79 = getelementptr inbounds %struct.lmat, %struct.lmat* %64, i32 0, i32 5
  %65 = load i8*, i8** %endp79, align 8
  %cmp80 = icmp ult i8* %63, %65
  br i1 %cmp80, label %land.lhs.true.82, label %lor.lhs.false.92

land.lhs.true.82:                                 ; preds = %lor.lhs.false.78
  %66 = load i8*, i8** %sp, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %66, i64 -1
  %67 = load i8, i8* %add.ptr83, align 1
  %conv84 = sext i8 %67 to i32
  %cmp85 = icmp eq i32 %conv84, 10
  br i1 %cmp85, label %land.lhs.true.87, label %lor.lhs.false.92

land.lhs.true.87:                                 ; preds = %land.lhs.true.82
  %68 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g88 = getelementptr inbounds %struct.lmat, %struct.lmat* %68, i32 0, i32 0
  %69 = load %struct.re_guts*, %struct.re_guts** %g88, align 8
  %cflags89 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %69, i32 0, i32 6
  %70 = load i32, i32* %cflags89, align 4
  %and90 = and i32 %70, 8
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %land.lhs.true.109, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true.87, %land.lhs.true.82, %lor.lhs.false.78
  %71 = load i8*, i8** %sp, align 8
  %72 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %beginp93 = getelementptr inbounds %struct.lmat, %struct.lmat* %72, i32 0, i32 4
  %73 = load i8*, i8** %beginp93, align 8
  %cmp94 = icmp ugt i8* %71, %73
  br i1 %cmp94, label %land.lhs.true.96, label %if.else.126

land.lhs.true.96:                                 ; preds = %lor.lhs.false.92
  %74 = load i8*, i8** %sp, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %74, i64 -1
  %75 = load i8, i8* %add.ptr97, align 1
  %conv98 = sext i8 %75 to i32
  %idxprom99 = sext i32 %conv98 to i64
  %call = call i16** @__ctype_b_loc() #7
  %76 = load i16*, i16** %call, align 8
  %arrayidx100 = getelementptr inbounds i16, i16* %76, i64 %idxprom99
  %77 = load i16, i16* %arrayidx100, align 2
  %conv101 = zext i16 %77 to i32
  %and102 = and i32 %conv101, 8
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.else.126, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.lhs.true.96
  %78 = load i8*, i8** %sp, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %78, i64 -1
  %79 = load i8, i8* %add.ptr105, align 1
  %conv106 = sext i8 %79 to i32
  %cmp107 = icmp eq i32 %conv106, 95
  br i1 %cmp107, label %if.else.126, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %lor.lhs.false.104, %land.lhs.true.87, %land.lhs.true.74
  %80 = load i8*, i8** %sp, align 8
  %81 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp110 = getelementptr inbounds %struct.lmat, %struct.lmat* %81, i32 0, i32 5
  %82 = load i8*, i8** %endp110, align 8
  %cmp111 = icmp ult i8* %80, %82
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.126

land.lhs.true.113:                                ; preds = %land.lhs.true.109
  %83 = load i8*, i8** %sp, align 8
  %84 = load i8, i8* %83, align 1
  %conv114 = sext i8 %84 to i32
  %idxprom115 = sext i32 %conv114 to i64
  %call116 = call i16** @__ctype_b_loc() #7
  %85 = load i16*, i16** %call116, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %85, i64 %idxprom115
  %86 = load i16, i16* %arrayidx117, align 2
  %conv118 = zext i16 %86 to i32
  %and119 = and i32 %conv118, 8
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then.125, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %land.lhs.true.113
  %87 = load i8*, i8** %sp, align 8
  %88 = load i8, i8* %87, align 1
  %conv122 = sext i8 %88 to i32
  %cmp123 = icmp eq i32 %conv122, 95
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %lor.lhs.false.121, %land.lhs.true.113
  br label %if.end.127

if.else.126:                                      ; preds = %lor.lhs.false.121, %land.lhs.true.109, %lor.lhs.false.104, %land.lhs.true.96, %lor.lhs.false.92
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.127:                                       ; preds = %if.then.125
  br label %sw.epilog

sw.bb.128:                                        ; preds = %for.body
  %89 = load i8*, i8** %sp, align 8
  %90 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp129 = getelementptr inbounds %struct.lmat, %struct.lmat* %90, i32 0, i32 5
  %91 = load i8*, i8** %endp129, align 8
  %cmp130 = icmp eq i8* %89, %91
  br i1 %cmp130, label %land.lhs.true.132, label %lor.lhs.false.136

land.lhs.true.132:                                ; preds = %sw.bb.128
  %92 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %eflags133 = getelementptr inbounds %struct.lmat, %struct.lmat* %92, i32 0, i32 1
  %93 = load i32, i32* %eflags133, align 4
  %and134 = and i32 %93, 2
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %lor.lhs.false.136, label %land.lhs.true.165

lor.lhs.false.136:                                ; preds = %land.lhs.true.132, %sw.bb.128
  %94 = load i8*, i8** %sp, align 8
  %95 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp137 = getelementptr inbounds %struct.lmat, %struct.lmat* %95, i32 0, i32 5
  %96 = load i8*, i8** %endp137, align 8
  %cmp138 = icmp ult i8* %94, %96
  br i1 %cmp138, label %land.lhs.true.140, label %lor.lhs.false.149

land.lhs.true.140:                                ; preds = %lor.lhs.false.136
  %97 = load i8*, i8** %sp, align 8
  %98 = load i8, i8* %97, align 1
  %conv141 = sext i8 %98 to i32
  %cmp142 = icmp eq i32 %conv141, 10
  br i1 %cmp142, label %land.lhs.true.144, label %lor.lhs.false.149

land.lhs.true.144:                                ; preds = %land.lhs.true.140
  %99 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g145 = getelementptr inbounds %struct.lmat, %struct.lmat* %99, i32 0, i32 0
  %100 = load %struct.re_guts*, %struct.re_guts** %g145, align 8
  %cflags146 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %100, i32 0, i32 6
  %101 = load i32, i32* %cflags146, align 4
  %and147 = and i32 %101, 8
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %land.lhs.true.165, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %land.lhs.true.144, %land.lhs.true.140, %lor.lhs.false.136
  %102 = load i8*, i8** %sp, align 8
  %103 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %endp150 = getelementptr inbounds %struct.lmat, %struct.lmat* %103, i32 0, i32 5
  %104 = load i8*, i8** %endp150, align 8
  %cmp151 = icmp ult i8* %102, %104
  br i1 %cmp151, label %land.lhs.true.153, label %if.else.184

land.lhs.true.153:                                ; preds = %lor.lhs.false.149
  %105 = load i8*, i8** %sp, align 8
  %106 = load i8, i8* %105, align 1
  %conv154 = sext i8 %106 to i32
  %idxprom155 = sext i32 %conv154 to i64
  %call156 = call i16** @__ctype_b_loc() #7
  %107 = load i16*, i16** %call156, align 8
  %arrayidx157 = getelementptr inbounds i16, i16* %107, i64 %idxprom155
  %108 = load i16, i16* %arrayidx157, align 2
  %conv158 = zext i16 %108 to i32
  %and159 = and i32 %conv158, 8
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.else.184, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %land.lhs.true.153
  %109 = load i8*, i8** %sp, align 8
  %110 = load i8, i8* %109, align 1
  %conv162 = sext i8 %110 to i32
  %cmp163 = icmp eq i32 %conv162, 95
  br i1 %cmp163, label %if.else.184, label %land.lhs.true.165

land.lhs.true.165:                                ; preds = %lor.lhs.false.161, %land.lhs.true.144, %land.lhs.true.132
  %111 = load i8*, i8** %sp, align 8
  %112 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %beginp166 = getelementptr inbounds %struct.lmat, %struct.lmat* %112, i32 0, i32 4
  %113 = load i8*, i8** %beginp166, align 8
  %cmp167 = icmp ugt i8* %111, %113
  br i1 %cmp167, label %land.lhs.true.169, label %if.else.184

land.lhs.true.169:                                ; preds = %land.lhs.true.165
  %114 = load i8*, i8** %sp, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %114, i64 -1
  %115 = load i8, i8* %add.ptr170, align 1
  %conv171 = sext i8 %115 to i32
  %idxprom172 = sext i32 %conv171 to i64
  %call173 = call i16** @__ctype_b_loc() #7
  %116 = load i16*, i16** %call173, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %116, i64 %idxprom172
  %117 = load i16, i16* %arrayidx174, align 2
  %conv175 = zext i16 %117 to i32
  %and176 = and i32 %conv175, 8
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.then.183, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %land.lhs.true.169
  %118 = load i8*, i8** %sp, align 8
  %add.ptr179 = getelementptr inbounds i8, i8* %118, i64 -1
  %119 = load i8, i8* %add.ptr179, align 1
  %conv180 = sext i8 %119 to i32
  %cmp181 = icmp eq i32 %conv180, 95
  br i1 %cmp181, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %lor.lhs.false.178, %land.lhs.true.169
  br label %if.end.185

if.else.184:                                      ; preds = %lor.lhs.false.178, %land.lhs.true.165, %lor.lhs.false.161, %land.lhs.true.153, %lor.lhs.false.149
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.185:                                       ; preds = %if.then.183
  br label %sw.epilog

sw.bb.186:                                        ; preds = %for.body
  br label %sw.epilog

sw.bb.187:                                        ; preds = %for.body
  %120 = load i64, i64* %ss, align 8
  %inc = add nsw i64 %120, 1
  store i64 %inc, i64* %ss, align 8
  %121 = load i64, i64* %ss, align 8
  %122 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g188 = getelementptr inbounds %struct.lmat, %struct.lmat* %122, i32 0, i32 0
  %123 = load %struct.re_guts*, %struct.re_guts** %g188, align 8
  %strip189 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %123, i32 0, i32 1
  %124 = load i64*, i64** %strip189, align 8
  %arrayidx190 = getelementptr inbounds i64, i64* %124, i64 %121
  %125 = load i64, i64* %arrayidx190, align 8
  store i64 %125, i64* %s, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.187
  %126 = load i64, i64* %s, align 8
  %and191 = and i64 %126, 134217727
  %127 = load i64, i64* %ss, align 8
  %add = add i64 %127, %and191
  store i64 %add, i64* %ss, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %128 = load i64, i64* %ss, align 8
  %129 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g192 = getelementptr inbounds %struct.lmat, %struct.lmat* %129, i32 0, i32 0
  %130 = load %struct.re_guts*, %struct.re_guts** %g192, align 8
  %strip193 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %130, i32 0, i32 1
  %131 = load i64*, i64** %strip193, align 8
  %arrayidx194 = getelementptr inbounds i64, i64* %131, i64 %128
  %132 = load i64, i64* %arrayidx194, align 8
  store i64 %132, i64* %s, align 8
  %and195 = and i64 %132, 4160749568
  %cmp196 = icmp ne i64 %and195, 2415919104
  br i1 %cmp196, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  store i32 1, i32* %hard, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end, %sw.bb.186, %if.end.185, %if.end.127, %if.end.69, %if.end.45, %if.end.27, %if.end.11, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %133 = load i64, i64* %ss, align 8
  %inc198 = add nsw i64 %133, 1
  store i64 %inc198, i64* %ss, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %134 = load i32, i32* %hard, align 4
  %tobool199 = icmp ne i32 %134, 0
  br i1 %tobool199, label %if.end.205, label %if.then.200

if.then.200:                                      ; preds = %for.end
  %135 = load i8*, i8** %sp, align 8
  %136 = load i8*, i8** %stop.addr, align 8
  %cmp201 = icmp ne i8* %135, %136
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.200
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.204:                                       ; preds = %if.then.200
  %137 = load i8*, i8** %sp, align 8
  store i8* %137, i8** %retval
  br label %sw.epilog.383

if.end.205:                                       ; preds = %for.end
  %138 = load i64, i64* %ss, align 8
  %dec = add nsw i64 %138, -1
  store i64 %dec, i64* %ss, align 8
  %139 = load i64, i64* %ss, align 8
  %140 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g206 = getelementptr inbounds %struct.lmat, %struct.lmat* %140, i32 0, i32 0
  %141 = load %struct.re_guts*, %struct.re_guts** %g206, align 8
  %strip207 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %141, i32 0, i32 1
  %142 = load i64*, i64** %strip207, align 8
  %arrayidx208 = getelementptr inbounds i64, i64* %142, i64 %139
  %143 = load i64, i64* %arrayidx208, align 8
  store i64 %143, i64* %s, align 8
  %144 = load i64, i64* %s, align 8
  %and209 = and i64 %144, 4160749568
  switch i64 %and209, label %sw.default.382 [
    i64 939524096, label %sw.bb.210
    i64 1476395008, label %sw.bb.259
    i64 1207959552, label %sw.bb.270
    i64 1342177280, label %sw.bb.276
    i64 2013265920, label %sw.bb.299
    i64 1744830464, label %sw.bb.335
    i64 1879048192, label %sw.bb.357
  ]

sw.bb.210:                                        ; preds = %if.end.205
  %145 = load i64, i64* %s, align 8
  %and211 = and i64 %145, 134217727
  %conv212 = trunc i64 %and211 to i32
  store i32 %conv212, i32* %i, align 4
  %146 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %146 to i64
  %147 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch = getelementptr inbounds %struct.lmat, %struct.lmat* %147, i32 0, i32 2
  %148 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch, align 8
  %arrayidx214 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %148, i64 %idxprom213
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx214, i32 0, i32 1
  %149 = load i64, i64* %rm_eo, align 8
  %cmp215 = icmp eq i64 %149, -1
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %sw.bb.210
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.218:                                       ; preds = %sw.bb.210
  %150 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %150 to i64
  %151 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch220 = getelementptr inbounds %struct.lmat, %struct.lmat* %151, i32 0, i32 2
  %152 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch220, align 8
  %arrayidx221 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %152, i64 %idxprom219
  %rm_eo222 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx221, i32 0, i32 1
  %153 = load i64, i64* %rm_eo222, align 8
  %154 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %154 to i64
  %155 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch224 = getelementptr inbounds %struct.lmat, %struct.lmat* %155, i32 0, i32 2
  %156 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch224, align 8
  %arrayidx225 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %156, i64 %idxprom223
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx225, i32 0, i32 0
  %157 = load i64, i64* %rm_so, align 8
  %sub = sub nsw i64 %153, %157
  store i64 %sub, i64* %len, align 8
  %158 = load i64, i64* %len, align 8
  %cmp226 = icmp eq i64 %158, 0
  br i1 %cmp226, label %land.lhs.true.228, label %if.end.233

land.lhs.true.228:                                ; preds = %if.end.218
  %159 = load i32, i32* %rec.addr, align 4
  %inc229 = add nsw i32 %159, 1
  store i32 %inc229, i32* %rec.addr, align 4
  %cmp230 = icmp sgt i32 %159, 100
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %land.lhs.true.228
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.233:                                       ; preds = %land.lhs.true.228, %if.end.218
  %160 = load i8*, i8** %sp, align 8
  %161 = load i8*, i8** %stop.addr, align 8
  %162 = load i64, i64* %len, align 8
  %idx.neg = sub i64 0, %162
  %add.ptr234 = getelementptr inbounds i8, i8* %161, i64 %idx.neg
  %cmp235 = icmp ugt i8* %160, %add.ptr234
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.end.233
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.238:                                       ; preds = %if.end.233
  %163 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %offp = getelementptr inbounds %struct.lmat, %struct.lmat* %163, i32 0, i32 3
  %164 = load i8*, i8** %offp, align 8
  %165 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %165 to i64
  %166 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch240 = getelementptr inbounds %struct.lmat, %struct.lmat* %166, i32 0, i32 2
  %167 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch240, align 8
  %arrayidx241 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %167, i64 %idxprom239
  %rm_so242 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx241, i32 0, i32 0
  %168 = load i64, i64* %rm_so242, align 8
  %add.ptr243 = getelementptr inbounds i8, i8* %164, i64 %168
  store i8* %add.ptr243, i8** %ssp, align 8
  %169 = load i8*, i8** %sp, align 8
  %170 = load i8*, i8** %ssp, align 8
  %171 = load i64, i64* %len, align 8
  %call244 = call i32 @memcmp(i8* %169, i8* %170, i64 %171) #6
  %cmp245 = icmp ne i32 %call244, 0
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.end.238
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.248:                                       ; preds = %if.end.238
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.248
  %172 = load i64, i64* %ss, align 8
  %173 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g249 = getelementptr inbounds %struct.lmat, %struct.lmat* %173, i32 0, i32 0
  %174 = load %struct.re_guts*, %struct.re_guts** %g249, align 8
  %strip250 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %174, i32 0, i32 1
  %175 = load i64*, i64** %strip250, align 8
  %arrayidx251 = getelementptr inbounds i64, i64* %175, i64 %172
  %176 = load i64, i64* %arrayidx251, align 8
  %177 = load i32, i32* %i, align 4
  %conv252 = sext i32 %177 to i64
  %or = or i64 1073741824, %conv252
  %cmp253 = icmp ne i64 %176, %or
  br i1 %cmp253, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %178 = load i64, i64* %ss, align 8
  %inc255 = add nsw i64 %178, 1
  store i64 %inc255, i64* %ss, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %179 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %180 = load i8*, i8** %sp, align 8
  %181 = load i64, i64* %len, align 8
  %add.ptr256 = getelementptr inbounds i8, i8* %180, i64 %181
  %182 = load i8*, i8** %stop.addr, align 8
  %183 = load i64, i64* %ss, align 8
  %add257 = add nsw i64 %183, 1
  %184 = load i64, i64* %stopst.addr, align 8
  %185 = load i64, i64* %lev.addr, align 8
  %186 = load i32, i32* %rec.addr, align 4
  %call258 = call i8* @lbackref(%struct.lmat* %179, i8* %add.ptr256, i8* %182, i64 %add257, i64 %184, i64 %185, i32 %186)
  store i8* %call258, i8** %retval
  br label %sw.epilog.383

sw.bb.259:                                        ; preds = %if.end.205
  %187 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %188 = load i8*, i8** %sp, align 8
  %189 = load i8*, i8** %stop.addr, align 8
  %190 = load i64, i64* %ss, align 8
  %add260 = add nsw i64 %190, 1
  %191 = load i64, i64* %stopst.addr, align 8
  %192 = load i64, i64* %lev.addr, align 8
  %193 = load i32, i32* %rec.addr, align 4
  %call261 = call i8* @lbackref(%struct.lmat* %187, i8* %188, i8* %189, i64 %add260, i64 %191, i64 %192, i32 %193)
  store i8* %call261, i8** %dp, align 8
  %194 = load i8*, i8** %dp, align 8
  %cmp262 = icmp ne i8* %194, null
  br i1 %cmp262, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %sw.bb.259
  %195 = load i8*, i8** %dp, align 8
  store i8* %195, i8** %retval
  br label %sw.epilog.383

if.end.265:                                       ; preds = %sw.bb.259
  %196 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %197 = load i8*, i8** %sp, align 8
  %198 = load i8*, i8** %stop.addr, align 8
  %199 = load i64, i64* %ss, align 8
  %200 = load i64, i64* %s, align 8
  %and266 = and i64 %200, 134217727
  %add267 = add i64 %199, %and266
  %add268 = add i64 %add267, 1
  %201 = load i64, i64* %stopst.addr, align 8
  %202 = load i64, i64* %lev.addr, align 8
  %203 = load i32, i32* %rec.addr, align 4
  %call269 = call i8* @lbackref(%struct.lmat* %196, i8* %197, i8* %198, i64 %add268, i64 %201, i64 %202, i32 %203)
  store i8* %call269, i8** %retval
  br label %sw.epilog.383

sw.bb.270:                                        ; preds = %if.end.205
  %204 = load i8*, i8** %sp, align 8
  %205 = load i64, i64* %lev.addr, align 8
  %add271 = add nsw i64 %205, 1
  %206 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %lastpos = getelementptr inbounds %struct.lmat, %struct.lmat* %206, i32 0, i32 7
  %207 = load i8**, i8*** %lastpos, align 8
  %arrayidx272 = getelementptr inbounds i8*, i8** %207, i64 %add271
  store i8* %204, i8** %arrayidx272, align 8
  %208 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %209 = load i8*, i8** %sp, align 8
  %210 = load i8*, i8** %stop.addr, align 8
  %211 = load i64, i64* %ss, align 8
  %add273 = add nsw i64 %211, 1
  %212 = load i64, i64* %stopst.addr, align 8
  %213 = load i64, i64* %lev.addr, align 8
  %add274 = add nsw i64 %213, 1
  %214 = load i32, i32* %rec.addr, align 4
  %call275 = call i8* @lbackref(%struct.lmat* %208, i8* %209, i8* %210, i64 %add273, i64 %212, i64 %add274, i32 %214)
  store i8* %call275, i8** %retval
  br label %sw.epilog.383

sw.bb.276:                                        ; preds = %if.end.205
  %215 = load i8*, i8** %sp, align 8
  %216 = load i64, i64* %lev.addr, align 8
  %217 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %lastpos277 = getelementptr inbounds %struct.lmat, %struct.lmat* %217, i32 0, i32 7
  %218 = load i8**, i8*** %lastpos277, align 8
  %arrayidx278 = getelementptr inbounds i8*, i8** %218, i64 %216
  %219 = load i8*, i8** %arrayidx278, align 8
  %cmp279 = icmp eq i8* %215, %219
  br i1 %cmp279, label %if.then.281, label %if.end.285

if.then.281:                                      ; preds = %sw.bb.276
  %220 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %221 = load i8*, i8** %sp, align 8
  %222 = load i8*, i8** %stop.addr, align 8
  %223 = load i64, i64* %ss, align 8
  %add282 = add nsw i64 %223, 1
  %224 = load i64, i64* %stopst.addr, align 8
  %225 = load i64, i64* %lev.addr, align 8
  %sub283 = sub nsw i64 %225, 1
  %226 = load i32, i32* %rec.addr, align 4
  %call284 = call i8* @lbackref(%struct.lmat* %220, i8* %221, i8* %222, i64 %add282, i64 %224, i64 %sub283, i32 %226)
  store i8* %call284, i8** %retval
  br label %sw.epilog.383

if.end.285:                                       ; preds = %sw.bb.276
  %227 = load i8*, i8** %sp, align 8
  %228 = load i64, i64* %lev.addr, align 8
  %229 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %lastpos286 = getelementptr inbounds %struct.lmat, %struct.lmat* %229, i32 0, i32 7
  %230 = load i8**, i8*** %lastpos286, align 8
  %arrayidx287 = getelementptr inbounds i8*, i8** %230, i64 %228
  store i8* %227, i8** %arrayidx287, align 8
  %231 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %232 = load i8*, i8** %sp, align 8
  %233 = load i8*, i8** %stop.addr, align 8
  %234 = load i64, i64* %ss, align 8
  %235 = load i64, i64* %s, align 8
  %and288 = and i64 %235, 134217727
  %sub289 = sub i64 %234, %and288
  %add290 = add i64 %sub289, 1
  %236 = load i64, i64* %stopst.addr, align 8
  %237 = load i64, i64* %lev.addr, align 8
  %238 = load i32, i32* %rec.addr, align 4
  %call291 = call i8* @lbackref(%struct.lmat* %231, i8* %232, i8* %233, i64 %add290, i64 %236, i64 %237, i32 %238)
  store i8* %call291, i8** %dp, align 8
  %239 = load i8*, i8** %dp, align 8
  %cmp292 = icmp eq i8* %239, null
  br i1 %cmp292, label %if.then.294, label %if.else.298

if.then.294:                                      ; preds = %if.end.285
  %240 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %241 = load i8*, i8** %sp, align 8
  %242 = load i8*, i8** %stop.addr, align 8
  %243 = load i64, i64* %ss, align 8
  %add295 = add nsw i64 %243, 1
  %244 = load i64, i64* %stopst.addr, align 8
  %245 = load i64, i64* %lev.addr, align 8
  %sub296 = sub nsw i64 %245, 1
  %246 = load i32, i32* %rec.addr, align 4
  %call297 = call i8* @lbackref(%struct.lmat* %240, i8* %241, i8* %242, i64 %add295, i64 %244, i64 %sub296, i32 %246)
  store i8* %call297, i8** %retval
  br label %sw.epilog.383

if.else.298:                                      ; preds = %if.end.285
  %247 = load i8*, i8** %dp, align 8
  store i8* %247, i8** %retval
  br label %sw.epilog.383

sw.bb.299:                                        ; preds = %if.end.205
  %248 = load i64, i64* %ss, align 8
  %add300 = add nsw i64 %248, 1
  store i64 %add300, i64* %ssub, align 8
  %249 = load i64, i64* %ss, align 8
  %250 = load i64, i64* %s, align 8
  %and301 = and i64 %250, 134217727
  %add302 = add i64 %249, %and301
  %sub303 = sub i64 %add302, 1
  store i64 %sub303, i64* %esub, align 8
  br label %for.cond.304

for.cond.304:                                     ; preds = %if.end.334, %sw.bb.299
  %251 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %252 = load i8*, i8** %sp, align 8
  %253 = load i8*, i8** %stop.addr, align 8
  %254 = load i64, i64* %ssub, align 8
  %255 = load i64, i64* %esub, align 8
  %256 = load i64, i64* %lev.addr, align 8
  %257 = load i32, i32* %rec.addr, align 4
  %call305 = call i8* @lbackref(%struct.lmat* %251, i8* %252, i8* %253, i64 %254, i64 %255, i64 %256, i32 %257)
  store i8* %call305, i8** %dp, align 8
  %258 = load i8*, i8** %dp, align 8
  %cmp306 = icmp ne i8* %258, null
  br i1 %cmp306, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %for.cond.304
  %259 = load i8*, i8** %dp, align 8
  store i8* %259, i8** %retval
  br label %sw.epilog.383

if.end.309:                                       ; preds = %for.cond.304
  %260 = load i64, i64* %esub, align 8
  %261 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g310 = getelementptr inbounds %struct.lmat, %struct.lmat* %261, i32 0, i32 0
  %262 = load %struct.re_guts*, %struct.re_guts** %g310, align 8
  %strip311 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %262, i32 0, i32 1
  %263 = load i64*, i64** %strip311, align 8
  %arrayidx312 = getelementptr inbounds i64, i64* %263, i64 %260
  %264 = load i64, i64* %arrayidx312, align 8
  %and313 = and i64 %264, 4160749568
  %cmp314 = icmp eq i64 %and313, 2415919104
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %if.end.309
  store i8* null, i8** %retval
  br label %sw.epilog.383

if.end.317:                                       ; preds = %if.end.309
  %265 = load i64, i64* %esub, align 8
  %inc318 = add nsw i64 %265, 1
  store i64 %inc318, i64* %esub, align 8
  %266 = load i64, i64* %esub, align 8
  %add319 = add nsw i64 %266, 1
  store i64 %add319, i64* %ssub, align 8
  %267 = load i64, i64* %esub, align 8
  %268 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g320 = getelementptr inbounds %struct.lmat, %struct.lmat* %268, i32 0, i32 0
  %269 = load %struct.re_guts*, %struct.re_guts** %g320, align 8
  %strip321 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %269, i32 0, i32 1
  %270 = load i64*, i64** %strip321, align 8
  %arrayidx322 = getelementptr inbounds i64, i64* %270, i64 %267
  %271 = load i64, i64* %arrayidx322, align 8
  %and323 = and i64 %271, 134217727
  %272 = load i64, i64* %esub, align 8
  %add324 = add i64 %272, %and323
  store i64 %add324, i64* %esub, align 8
  %273 = load i64, i64* %esub, align 8
  %274 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %g325 = getelementptr inbounds %struct.lmat, %struct.lmat* %274, i32 0, i32 0
  %275 = load %struct.re_guts*, %struct.re_guts** %g325, align 8
  %strip326 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %275, i32 0, i32 1
  %276 = load i64*, i64** %strip326, align 8
  %arrayidx327 = getelementptr inbounds i64, i64* %276, i64 %273
  %277 = load i64, i64* %arrayidx327, align 8
  %and328 = and i64 %277, 4160749568
  %cmp329 = icmp eq i64 %and328, 2281701376
  br i1 %cmp329, label %if.then.331, label %if.else.333

if.then.331:                                      ; preds = %if.end.317
  %278 = load i64, i64* %esub, align 8
  %dec332 = add nsw i64 %278, -1
  store i64 %dec332, i64* %esub, align 8
  br label %if.end.334

if.else.333:                                      ; preds = %if.end.317
  br label %if.end.334

if.end.334:                                       ; preds = %if.else.333, %if.then.331
  br label %for.cond.304

sw.bb.335:                                        ; preds = %if.end.205
  %279 = load i64, i64* %s, align 8
  %and336 = and i64 %279, 134217727
  %conv337 = trunc i64 %and336 to i32
  store i32 %conv337, i32* %i, align 4
  %280 = load i32, i32* %i, align 4
  %idxprom338 = sext i32 %280 to i64
  %281 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch339 = getelementptr inbounds %struct.lmat, %struct.lmat* %281, i32 0, i32 2
  %282 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch339, align 8
  %arrayidx340 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %282, i64 %idxprom338
  %rm_so341 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx340, i32 0, i32 0
  %283 = load i64, i64* %rm_so341, align 8
  store i64 %283, i64* %offsave, align 8
  %284 = load i8*, i8** %sp, align 8
  %285 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %offp342 = getelementptr inbounds %struct.lmat, %struct.lmat* %285, i32 0, i32 3
  %286 = load i8*, i8** %offp342, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %284 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %286 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %287 = load i32, i32* %i, align 4
  %idxprom343 = sext i32 %287 to i64
  %288 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch344 = getelementptr inbounds %struct.lmat, %struct.lmat* %288, i32 0, i32 2
  %289 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch344, align 8
  %arrayidx345 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %289, i64 %idxprom343
  %rm_so346 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx345, i32 0, i32 0
  store i64 %sub.ptr.sub, i64* %rm_so346, align 8
  %290 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %291 = load i8*, i8** %sp, align 8
  %292 = load i8*, i8** %stop.addr, align 8
  %293 = load i64, i64* %ss, align 8
  %add347 = add nsw i64 %293, 1
  %294 = load i64, i64* %stopst.addr, align 8
  %295 = load i64, i64* %lev.addr, align 8
  %296 = load i32, i32* %rec.addr, align 4
  %call348 = call i8* @lbackref(%struct.lmat* %290, i8* %291, i8* %292, i64 %add347, i64 %294, i64 %295, i32 %296)
  store i8* %call348, i8** %dp, align 8
  %297 = load i8*, i8** %dp, align 8
  %cmp349 = icmp ne i8* %297, null
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %sw.bb.335
  %298 = load i8*, i8** %dp, align 8
  store i8* %298, i8** %retval
  br label %sw.epilog.383

if.end.352:                                       ; preds = %sw.bb.335
  %299 = load i64, i64* %offsave, align 8
  %300 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %300 to i64
  %301 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch354 = getelementptr inbounds %struct.lmat, %struct.lmat* %301, i32 0, i32 2
  %302 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch354, align 8
  %arrayidx355 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %302, i64 %idxprom353
  %rm_so356 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx355, i32 0, i32 0
  store i64 %299, i64* %rm_so356, align 8
  store i8* null, i8** %retval
  br label %sw.epilog.383

sw.bb.357:                                        ; preds = %if.end.205
  %303 = load i64, i64* %s, align 8
  %and358 = and i64 %303, 134217727
  %conv359 = trunc i64 %and358 to i32
  store i32 %conv359, i32* %i, align 4
  %304 = load i32, i32* %i, align 4
  %idxprom360 = sext i32 %304 to i64
  %305 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch361 = getelementptr inbounds %struct.lmat, %struct.lmat* %305, i32 0, i32 2
  %306 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch361, align 8
  %arrayidx362 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %306, i64 %idxprom360
  %rm_eo363 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx362, i32 0, i32 1
  %307 = load i64, i64* %rm_eo363, align 8
  store i64 %307, i64* %offsave, align 8
  %308 = load i8*, i8** %sp, align 8
  %309 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %offp364 = getelementptr inbounds %struct.lmat, %struct.lmat* %309, i32 0, i32 3
  %310 = load i8*, i8** %offp364, align 8
  %sub.ptr.lhs.cast365 = ptrtoint i8* %308 to i64
  %sub.ptr.rhs.cast366 = ptrtoint i8* %310 to i64
  %sub.ptr.sub367 = sub i64 %sub.ptr.lhs.cast365, %sub.ptr.rhs.cast366
  %311 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %311 to i64
  %312 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch369 = getelementptr inbounds %struct.lmat, %struct.lmat* %312, i32 0, i32 2
  %313 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch369, align 8
  %arrayidx370 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %313, i64 %idxprom368
  %rm_eo371 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx370, i32 0, i32 1
  store i64 %sub.ptr.sub367, i64* %rm_eo371, align 8
  %314 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %315 = load i8*, i8** %sp, align 8
  %316 = load i8*, i8** %stop.addr, align 8
  %317 = load i64, i64* %ss, align 8
  %add372 = add nsw i64 %317, 1
  %318 = load i64, i64* %stopst.addr, align 8
  %319 = load i64, i64* %lev.addr, align 8
  %320 = load i32, i32* %rec.addr, align 4
  %call373 = call i8* @lbackref(%struct.lmat* %314, i8* %315, i8* %316, i64 %add372, i64 %318, i64 %319, i32 %320)
  store i8* %call373, i8** %dp, align 8
  %321 = load i8*, i8** %dp, align 8
  %cmp374 = icmp ne i8* %321, null
  br i1 %cmp374, label %if.then.376, label %if.end.377

if.then.376:                                      ; preds = %sw.bb.357
  %322 = load i8*, i8** %dp, align 8
  store i8* %322, i8** %retval
  br label %sw.epilog.383

if.end.377:                                       ; preds = %sw.bb.357
  %323 = load i64, i64* %offsave, align 8
  %324 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %324 to i64
  %325 = load %struct.lmat*, %struct.lmat** %m.addr, align 8
  %pmatch379 = getelementptr inbounds %struct.lmat, %struct.lmat* %325, i32 0, i32 2
  %326 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch379, align 8
  %arrayidx380 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %326, i64 %idxprom378
  %rm_eo381 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx380, i32 0, i32 1
  store i64 %323, i64* %rm_eo381, align 8
  store i8* null, i8** %retval
  br label %sw.epilog.383

sw.default.382:                                   ; preds = %if.end.205
  br label %sw.epilog.383

sw.epilog.383:                                    ; preds = %if.then, %if.then.10, %if.then.26, %if.else, %if.else.68, %if.else.126, %if.else.184, %if.then.203, %if.end.204, %if.then.217, %if.then.232, %if.then.237, %if.then.247, %while.end, %if.then.264, %if.end.265, %sw.bb.270, %if.then.281, %if.then.294, %if.else.298, %if.then.308, %if.then.316, %if.then.351, %if.end.352, %if.then.376, %if.end.377, %sw.default.382
  %327 = load i8*, i8** %retval
  ret i8* %327
}

; Function Attrs: nounwind uwtable
define internal i8* @lstep(%struct.re_guts* %g, i64 %start, i64 %stop, i8* %bef, i32 %ch, i8* %aft) #0 {
entry:
  %g.addr = alloca %struct.re_guts*, align 8
  %start.addr = alloca i64, align 8
  %stop.addr = alloca i64, align 8
  %bef.addr = alloca i8*, align 8
  %ch.addr = alloca i32, align 4
  %aft.addr = alloca i8*, align 8
  %cs = alloca %struct.cset*, align 8
  %s = alloca i64, align 8
  %pc = alloca i64, align 8
  %here = alloca i64, align 8
  %look = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %stop, i64* %stop.addr, align 8
  store i8* %bef, i8** %bef.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  store i8* %aft, i8** %aft.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  store i64 %0, i64* %pc, align 8
  %1 = load i64, i64* %pc, align 8
  store i64 %1, i64* %here, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.245, %entry
  %2 = load i64, i64* %pc, align 8
  %3 = load i64, i64* %stop.addr, align 8
  %cmp = icmp ne i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end.247

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %pc, align 8
  %5 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip = getelementptr inbounds %struct.re_guts, %struct.re_guts* %5, i32 0, i32 1
  %6 = load i64*, i64** %strip, align 8
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %4
  %7 = load i64, i64* %arrayidx, align 8
  store i64 %7, i64* %s, align 8
  %8 = load i64, i64* %s, align 8
  %and = and i64 %8, 4160749568
  switch i64 %and, label %sw.default [
    i64 134217728, label %sw.bb
    i64 268435456, label %sw.bb.1
    i64 402653184, label %sw.bb.11
    i64 536870912, label %sw.bb.25
    i64 2550136832, label %sw.bb.40
    i64 2684354560, label %sw.bb.52
    i64 671088640, label %sw.bb.64
    i64 805306368, label %sw.bb.76
    i64 939524096, label %sw.bb.95
    i64 1073741824, label %sw.bb.95
    i64 1207959552, label %sw.bb.103
    i64 1342177280, label %sw.bb.111
    i64 1476395008, label %sw.bb.142
    i64 1610612736, label %sw.bb.158
    i64 1744830464, label %sw.bb.166
    i64 1879048192, label %sw.bb.166
    i64 2013265920, label %sw.bb.174
    i64 2147483648, label %sw.bb.190
    i64 2281701376, label %sw.bb.212
    i64 2415919104, label %sw.bb.237
  ]

sw.bb:                                            ; preds = %for.body
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %9 = load i32, i32* %ch.addr, align 4
  %10 = load i64, i64* %s, align 8
  %and2 = and i64 %10, 134217727
  %conv = trunc i64 %and2 to i8
  %conv3 = sext i8 %conv to i32
  %cmp4 = icmp eq i32 %9, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %11 = load i64, i64* %here, align 8
  %12 = load i8*, i8** %bef.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %11
  %13 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %13 to i32
  %14 = load i64, i64* %here, align 8
  %add = add nsw i64 %14, 1
  %15 = load i8*, i8** %aft.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 %add
  %16 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %16 to i32
  %or = or i32 %conv9, %conv7
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.body
  %17 = load i32, i32* %ch.addr, align 4
  %cmp12 = icmp eq i32 %17, 129
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.11
  %18 = load i32, i32* %ch.addr, align 4
  %cmp14 = icmp eq i32 %18, 131
  br i1 %cmp14, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %lor.lhs.false, %sw.bb.11
  %19 = load i64, i64* %here, align 8
  %20 = load i8*, i8** %bef.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 %19
  %21 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %21 to i32
  %22 = load i64, i64* %here, align 8
  %add19 = add nsw i64 %22, 1
  %23 = load i8*, i8** %aft.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %23, i64 %add19
  %24 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %24 to i32
  %or22 = or i32 %conv21, %conv18
  %conv23 = trunc i32 %or22 to i8
  store i8 %conv23, i8* %arrayidx20, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.16, %lor.lhs.false
  br label %sw.epilog

sw.bb.25:                                         ; preds = %for.body
  %25 = load i32, i32* %ch.addr, align 4
  %cmp26 = icmp eq i32 %25, 130
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %sw.bb.25
  %26 = load i32, i32* %ch.addr, align 4
  %cmp29 = icmp eq i32 %26, 131
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %lor.lhs.false.28, %sw.bb.25
  %27 = load i64, i64* %here, align 8
  %28 = load i8*, i8** %bef.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %28, i64 %27
  %29 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %29 to i32
  %30 = load i64, i64* %here, align 8
  %add34 = add nsw i64 %30, 1
  %31 = load i8*, i8** %aft.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i64 %add34
  %32 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %32 to i32
  %or37 = or i32 %conv36, %conv33
  %conv38 = trunc i32 %or37 to i8
  store i8 %conv38, i8* %arrayidx35, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.31, %lor.lhs.false.28
  br label %sw.epilog

sw.bb.40:                                         ; preds = %for.body
  %33 = load i32, i32* %ch.addr, align 4
  %cmp41 = icmp eq i32 %33, 133
  br i1 %cmp41, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %sw.bb.40
  %34 = load i64, i64* %here, align 8
  %35 = load i8*, i8** %bef.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %35, i64 %34
  %36 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %36 to i32
  %37 = load i64, i64* %here, align 8
  %add46 = add nsw i64 %37, 1
  %38 = load i8*, i8** %aft.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %38, i64 %add46
  %39 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %39 to i32
  %or49 = or i32 %conv48, %conv45
  %conv50 = trunc i32 %or49 to i8
  store i8 %conv50, i8* %arrayidx47, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.43, %sw.bb.40
  br label %sw.epilog

sw.bb.52:                                         ; preds = %for.body
  %40 = load i32, i32* %ch.addr, align 4
  %cmp53 = icmp eq i32 %40, 134
  br i1 %cmp53, label %if.then.55, label %if.end.63

if.then.55:                                       ; preds = %sw.bb.52
  %41 = load i64, i64* %here, align 8
  %42 = load i8*, i8** %bef.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %42, i64 %41
  %43 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %43 to i32
  %44 = load i64, i64* %here, align 8
  %add58 = add nsw i64 %44, 1
  %45 = load i8*, i8** %aft.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %45, i64 %add58
  %46 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %46 to i32
  %or61 = or i32 %conv60, %conv57
  %conv62 = trunc i32 %or61 to i8
  store i8 %conv62, i8* %arrayidx59, align 1
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.55, %sw.bb.52
  br label %sw.epilog

sw.bb.64:                                         ; preds = %for.body
  %47 = load i32, i32* %ch.addr, align 4
  %cmp65 = icmp sgt i32 %47, 127
  br i1 %cmp65, label %if.end.75, label %if.then.67

if.then.67:                                       ; preds = %sw.bb.64
  %48 = load i64, i64* %here, align 8
  %49 = load i8*, i8** %bef.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %49, i64 %48
  %50 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %50 to i32
  %51 = load i64, i64* %here, align 8
  %add70 = add nsw i64 %51, 1
  %52 = load i8*, i8** %aft.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %52, i64 %add70
  %53 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %53 to i32
  %or73 = or i32 %conv72, %conv69
  %conv74 = trunc i32 %or73 to i8
  store i8 %conv74, i8* %arrayidx71, align 1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.67, %sw.bb.64
  br label %sw.epilog

sw.bb.76:                                         ; preds = %for.body
  %54 = load i64, i64* %s, align 8
  %and77 = and i64 %54, 134217727
  %55 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %sets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %55, i32 0, i32 4
  %56 = load %struct.cset*, %struct.cset** %sets, align 8
  %arrayidx78 = getelementptr inbounds %struct.cset, %struct.cset* %56, i64 %and77
  store %struct.cset* %arrayidx78, %struct.cset** %cs, align 8
  %57 = load i32, i32* %ch.addr, align 4
  %cmp79 = icmp sgt i32 %57, 127
  br i1 %cmp79, label %if.end.94, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.76
  %58 = load i32, i32* %ch.addr, align 4
  %conv81 = trunc i32 %58 to i8
  %idxprom = zext i8 %conv81 to i64
  %59 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %59, i32 0, i32 0
  %60 = load i8*, i8** %ptr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %60, i64 %idxprom
  %61 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %61 to i32
  %62 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %62, i32 0, i32 1
  %63 = load i8, i8* %mask, align 1
  %conv84 = zext i8 %63 to i32
  %and85 = and i32 %conv83, %conv84
  %tobool = icmp ne i32 %and85, 0
  br i1 %tobool, label %if.then.86, label %if.end.94

if.then.86:                                       ; preds = %land.lhs.true
  %64 = load i64, i64* %here, align 8
  %65 = load i8*, i8** %bef.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %65, i64 %64
  %66 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %66 to i32
  %67 = load i64, i64* %here, align 8
  %add89 = add nsw i64 %67, 1
  %68 = load i8*, i8** %aft.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %68, i64 %add89
  %69 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %69 to i32
  %or92 = or i32 %conv91, %conv88
  %conv93 = trunc i32 %or92 to i8
  store i8 %conv93, i8* %arrayidx90, align 1
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.86, %land.lhs.true, %sw.bb.76
  br label %sw.epilog

sw.bb.95:                                         ; preds = %for.body, %for.body
  %70 = load i64, i64* %here, align 8
  %71 = load i8*, i8** %aft.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %71, i64 %70
  %72 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %72 to i32
  %73 = load i64, i64* %here, align 8
  %add98 = add nsw i64 %73, 1
  %74 = load i8*, i8** %aft.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %74, i64 %add98
  %75 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %75 to i32
  %or101 = or i32 %conv100, %conv97
  %conv102 = trunc i32 %or101 to i8
  store i8 %conv102, i8* %arrayidx99, align 1
  br label %sw.epilog

sw.bb.103:                                        ; preds = %for.body
  %76 = load i64, i64* %here, align 8
  %77 = load i8*, i8** %aft.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %77, i64 %76
  %78 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %78 to i32
  %79 = load i64, i64* %here, align 8
  %add106 = add nsw i64 %79, 1
  %80 = load i8*, i8** %aft.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %80, i64 %add106
  %81 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %81 to i32
  %or109 = or i32 %conv108, %conv105
  %conv110 = trunc i32 %or109 to i8
  store i8 %conv110, i8* %arrayidx107, align 1
  br label %sw.epilog

sw.bb.111:                                        ; preds = %for.body
  %82 = load i64, i64* %here, align 8
  %83 = load i8*, i8** %aft.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %83, i64 %82
  %84 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %84 to i32
  %85 = load i64, i64* %here, align 8
  %add114 = add nsw i64 %85, 1
  %86 = load i8*, i8** %aft.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %86, i64 %add114
  %87 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %87 to i32
  %or117 = or i32 %conv116, %conv113
  %conv118 = trunc i32 %or117 to i8
  store i8 %conv118, i8* %arrayidx115, align 1
  %88 = load i64, i64* %here, align 8
  %89 = load i64, i64* %s, align 8
  %and119 = and i64 %89, 134217727
  %sub = sub i64 %88, %and119
  %90 = load i8*, i8** %aft.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %90, i64 %sub
  %91 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %91 to i32
  store i32 %conv121, i32* %i, align 4
  %92 = load i64, i64* %here, align 8
  %93 = load i8*, i8** %aft.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %93, i64 %92
  %94 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %94 to i32
  %95 = load i64, i64* %here, align 8
  %96 = load i64, i64* %s, align 8
  %and124 = and i64 %96, 134217727
  %sub125 = sub i64 %95, %and124
  %97 = load i8*, i8** %aft.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %97, i64 %sub125
  %98 = load i8, i8* %arrayidx126, align 1
  %conv127 = sext i8 %98 to i32
  %or128 = or i32 %conv127, %conv123
  %conv129 = trunc i32 %or128 to i8
  store i8 %conv129, i8* %arrayidx126, align 1
  %99 = load i32, i32* %i, align 4
  %tobool130 = icmp ne i32 %99, 0
  br i1 %tobool130, label %if.end.141, label %land.lhs.true.131

land.lhs.true.131:                                ; preds = %sw.bb.111
  %100 = load i64, i64* %here, align 8
  %101 = load i64, i64* %s, align 8
  %and132 = and i64 %101, 134217727
  %sub133 = sub i64 %100, %and132
  %102 = load i8*, i8** %aft.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %102, i64 %sub133
  %103 = load i8, i8* %arrayidx134, align 1
  %conv135 = sext i8 %103 to i32
  %tobool136 = icmp ne i32 %conv135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.141

if.then.137:                                      ; preds = %land.lhs.true.131
  %104 = load i64, i64* %s, align 8
  %and138 = and i64 %104, 134217727
  %add139 = add i64 %and138, 1
  %105 = load i64, i64* %pc, align 8
  %sub140 = sub i64 %105, %add139
  store i64 %sub140, i64* %pc, align 8
  %106 = load i64, i64* %pc, align 8
  store i64 %106, i64* %here, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.137, %land.lhs.true.131, %sw.bb.111
  br label %sw.epilog

sw.bb.142:                                        ; preds = %for.body
  %107 = load i64, i64* %here, align 8
  %108 = load i8*, i8** %aft.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %108, i64 %107
  %109 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %109 to i32
  %110 = load i64, i64* %here, align 8
  %add145 = add nsw i64 %110, 1
  %111 = load i8*, i8** %aft.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %111, i64 %add145
  %112 = load i8, i8* %arrayidx146, align 1
  %conv147 = sext i8 %112 to i32
  %or148 = or i32 %conv147, %conv144
  %conv149 = trunc i32 %or148 to i8
  store i8 %conv149, i8* %arrayidx146, align 1
  %113 = load i64, i64* %here, align 8
  %114 = load i8*, i8** %aft.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %114, i64 %113
  %115 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %115 to i32
  %116 = load i64, i64* %here, align 8
  %117 = load i64, i64* %s, align 8
  %and152 = and i64 %117, 134217727
  %add153 = add i64 %116, %and152
  %118 = load i8*, i8** %aft.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %118, i64 %add153
  %119 = load i8, i8* %arrayidx154, align 1
  %conv155 = sext i8 %119 to i32
  %or156 = or i32 %conv155, %conv151
  %conv157 = trunc i32 %or156 to i8
  store i8 %conv157, i8* %arrayidx154, align 1
  br label %sw.epilog

sw.bb.158:                                        ; preds = %for.body
  %120 = load i64, i64* %here, align 8
  %121 = load i8*, i8** %aft.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %121, i64 %120
  %122 = load i8, i8* %arrayidx159, align 1
  %conv160 = sext i8 %122 to i32
  %123 = load i64, i64* %here, align 8
  %add161 = add nsw i64 %123, 1
  %124 = load i8*, i8** %aft.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %124, i64 %add161
  %125 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %125 to i32
  %or164 = or i32 %conv163, %conv160
  %conv165 = trunc i32 %or164 to i8
  store i8 %conv165, i8* %arrayidx162, align 1
  br label %sw.epilog

sw.bb.166:                                        ; preds = %for.body, %for.body
  %126 = load i64, i64* %here, align 8
  %127 = load i8*, i8** %aft.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %127, i64 %126
  %128 = load i8, i8* %arrayidx167, align 1
  %conv168 = sext i8 %128 to i32
  %129 = load i64, i64* %here, align 8
  %add169 = add nsw i64 %129, 1
  %130 = load i8*, i8** %aft.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %130, i64 %add169
  %131 = load i8, i8* %arrayidx170, align 1
  %conv171 = sext i8 %131 to i32
  %or172 = or i32 %conv171, %conv168
  %conv173 = trunc i32 %or172 to i8
  store i8 %conv173, i8* %arrayidx170, align 1
  br label %sw.epilog

sw.bb.174:                                        ; preds = %for.body
  %132 = load i64, i64* %here, align 8
  %133 = load i8*, i8** %aft.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %133, i64 %132
  %134 = load i8, i8* %arrayidx175, align 1
  %conv176 = sext i8 %134 to i32
  %135 = load i64, i64* %here, align 8
  %add177 = add nsw i64 %135, 1
  %136 = load i8*, i8** %aft.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %136, i64 %add177
  %137 = load i8, i8* %arrayidx178, align 1
  %conv179 = sext i8 %137 to i32
  %or180 = or i32 %conv179, %conv176
  %conv181 = trunc i32 %or180 to i8
  store i8 %conv181, i8* %arrayidx178, align 1
  %138 = load i64, i64* %here, align 8
  %139 = load i8*, i8** %aft.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %139, i64 %138
  %140 = load i8, i8* %arrayidx182, align 1
  %conv183 = sext i8 %140 to i32
  %141 = load i64, i64* %here, align 8
  %142 = load i64, i64* %s, align 8
  %and184 = and i64 %142, 134217727
  %add185 = add i64 %141, %and184
  %143 = load i8*, i8** %aft.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %143, i64 %add185
  %144 = load i8, i8* %arrayidx186, align 1
  %conv187 = sext i8 %144 to i32
  %or188 = or i32 %conv187, %conv183
  %conv189 = trunc i32 %or188 to i8
  store i8 %conv189, i8* %arrayidx186, align 1
  br label %sw.epilog

sw.bb.190:                                        ; preds = %for.body
  %145 = load i64, i64* %here, align 8
  %146 = load i8*, i8** %aft.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %146, i64 %145
  %147 = load i8, i8* %arrayidx191, align 1
  %tobool192 = icmp ne i8 %147, 0
  br i1 %tobool192, label %if.then.193, label %if.end.211

if.then.193:                                      ; preds = %sw.bb.190
  store i64 1, i64* %look, align 8
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc, %if.then.193
  %148 = load i64, i64* %pc, align 8
  %149 = load i64, i64* %look, align 8
  %add195 = add nsw i64 %148, %149
  %150 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip196 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %150, i32 0, i32 1
  %151 = load i64*, i64** %strip196, align 8
  %arrayidx197 = getelementptr inbounds i64, i64* %151, i64 %add195
  %152 = load i64, i64* %arrayidx197, align 8
  store i64 %152, i64* %s, align 8
  %and198 = and i64 %152, 4160749568
  %cmp199 = icmp ne i64 %and198, 2415919104
  br i1 %cmp199, label %for.body.201, label %for.end

for.body.201:                                     ; preds = %for.cond.194
  br label %for.inc

for.inc:                                          ; preds = %for.body.201
  %153 = load i64, i64* %s, align 8
  %and202 = and i64 %153, 134217727
  %154 = load i64, i64* %look, align 8
  %add203 = add i64 %154, %and202
  store i64 %add203, i64* %look, align 8
  br label %for.cond.194

for.end:                                          ; preds = %for.cond.194
  %155 = load i64, i64* %here, align 8
  %156 = load i8*, i8** %aft.addr, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %156, i64 %155
  %157 = load i8, i8* %arrayidx204, align 1
  %conv205 = sext i8 %157 to i32
  %158 = load i64, i64* %here, align 8
  %159 = load i64, i64* %look, align 8
  %add206 = add nsw i64 %158, %159
  %160 = load i8*, i8** %aft.addr, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %160, i64 %add206
  %161 = load i8, i8* %arrayidx207, align 1
  %conv208 = sext i8 %161 to i32
  %or209 = or i32 %conv208, %conv205
  %conv210 = trunc i32 %or209 to i8
  store i8 %conv210, i8* %arrayidx207, align 1
  br label %if.end.211

if.end.211:                                       ; preds = %for.end, %sw.bb.190
  br label %sw.epilog

sw.bb.212:                                        ; preds = %for.body
  %162 = load i64, i64* %here, align 8
  %163 = load i8*, i8** %aft.addr, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %163, i64 %162
  %164 = load i8, i8* %arrayidx213, align 1
  %conv214 = sext i8 %164 to i32
  %165 = load i64, i64* %here, align 8
  %add215 = add nsw i64 %165, 1
  %166 = load i8*, i8** %aft.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %166, i64 %add215
  %167 = load i8, i8* %arrayidx216, align 1
  %conv217 = sext i8 %167 to i32
  %or218 = or i32 %conv217, %conv214
  %conv219 = trunc i32 %or218 to i8
  store i8 %conv219, i8* %arrayidx216, align 1
  %168 = load i64, i64* %pc, align 8
  %169 = load i64, i64* %s, align 8
  %and220 = and i64 %169, 134217727
  %add221 = add i64 %168, %and220
  %170 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip222 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %170, i32 0, i32 1
  %171 = load i64*, i64** %strip222, align 8
  %arrayidx223 = getelementptr inbounds i64, i64* %171, i64 %add221
  %172 = load i64, i64* %arrayidx223, align 8
  %and224 = and i64 %172, 4160749568
  %cmp225 = icmp ne i64 %and224, 2415919104
  br i1 %cmp225, label %if.then.227, label %if.end.236

if.then.227:                                      ; preds = %sw.bb.212
  %173 = load i64, i64* %here, align 8
  %174 = load i8*, i8** %aft.addr, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %174, i64 %173
  %175 = load i8, i8* %arrayidx228, align 1
  %conv229 = sext i8 %175 to i32
  %176 = load i64, i64* %here, align 8
  %177 = load i64, i64* %s, align 8
  %and230 = and i64 %177, 134217727
  %add231 = add i64 %176, %and230
  %178 = load i8*, i8** %aft.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %178, i64 %add231
  %179 = load i8, i8* %arrayidx232, align 1
  %conv233 = sext i8 %179 to i32
  %or234 = or i32 %conv233, %conv229
  %conv235 = trunc i32 %or234 to i8
  store i8 %conv235, i8* %arrayidx232, align 1
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.227, %sw.bb.212
  br label %sw.epilog

sw.bb.237:                                        ; preds = %for.body
  %180 = load i64, i64* %here, align 8
  %181 = load i8*, i8** %aft.addr, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %181, i64 %180
  %182 = load i8, i8* %arrayidx238, align 1
  %conv239 = sext i8 %182 to i32
  %183 = load i64, i64* %here, align 8
  %add240 = add nsw i64 %183, 1
  %184 = load i8*, i8** %aft.addr, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %184, i64 %add240
  %185 = load i8, i8* %arrayidx241, align 1
  %conv242 = sext i8 %185 to i32
  %or243 = or i32 %conv242, %conv239
  %conv244 = trunc i32 %or243 to i8
  store i8 %conv244, i8* %arrayidx241, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.237, %if.end.236, %if.end.211, %sw.bb.174, %sw.bb.166, %sw.bb.158, %sw.bb.142, %if.end.141, %sw.bb.103, %sw.bb.95, %if.end.94, %if.end.75, %if.end.63, %if.end.51, %if.end.39, %if.end.24, %if.end, %sw.bb
  br label %for.inc.245

for.inc.245:                                      ; preds = %sw.epilog
  %186 = load i64, i64* %pc, align 8
  %inc = add nsw i64 %186, 1
  store i64 %inc, i64* %pc, align 8
  %187 = load i64, i64* %here, align 8
  %inc246 = add nsw i64 %187, 1
  store i64 %inc246, i64* %here, align 8
  br label %for.cond

for.end.247:                                      ; preds = %for.cond
  %188 = load i8*, i8** %aft.addr, align 8
  ret i8* %188
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
