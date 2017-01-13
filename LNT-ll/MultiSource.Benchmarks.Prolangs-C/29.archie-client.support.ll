; ModuleID = './MultiSource.Benchmarks.Prolangs-C/29.archie-client.support.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdir = type { i32, i32, i64, %struct.acl*, %struct.pfile*, %struct.vlink*, %struct.vlink*, %struct.vlink*, %struct.vdir*, %struct.vdir* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }

@pfs_enable = global i32 4, align 4
@month_sname.name = internal global [13 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"Unk\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@p_err_string = external global [0 x i8], align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"NOT-A-DIRECTORY\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"UNIMPLEMENTED\00", align 1
@perrno = external global i32, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"%*[^\0A \09\0D]%*[ \09]%[^\0A]\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"WARNING \00", align 1
@p_warn_string = external global [0 x i8], align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"OUT-OF-DATE\00", align 1
@pwarn = external global i32, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%[^\0A]\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"FAILURE\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"FAILURE \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"NOT-FOUND\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"NOT-AUTHORIZED\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"ALREADY-EXISTS\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"NAME-CONFLICT\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"SERVER-FAILED\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"OBJECT-INFO %s %s %[^\0A]\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"LINK-INFO %s %s %s %[^\0A]\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"CACHED\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"REPLACEMENT\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"ADDITIONAL\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"%c %s %s %s %s %s %s %d %d\00", align 1
@unquote.unquoted = internal global [200 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @wcmatch(i8* %s, i8* %template) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %template.addr = alloca i8*, align 8
  %temp = alloca [200 x i8], align 16
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %template, i8** %template.addr, align 8
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %temp, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %0 = load i8*, i8** %template.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 94, i8* %1, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %if.end
  %2 = load i8*, i8** %template.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %template.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %while.body
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr4, i8** %p, align 8
  store i8 46, i8* %6, align 1
  %7 = load i8*, i8** %template.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr5, i8** %template.addr, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 %8, i8* %9, align 1
  br label %if.end.62

if.else:                                          ; preds = %while.body
  %10 = load i8*, i8** %template.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 63
  br i1 %cmp8, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %if.else
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  store i8 46, i8* %12, align 1
  %13 = load i8*, i8** %template.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr12, i8** %template.addr, align 8
  br label %if.end.61

if.else.13:                                       ; preds = %if.else
  %14 = load i8*, i8** %template.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv14 = sext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 46
  br i1 %cmp15, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.else.13
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 92, i8* %16, align 1
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %p, align 8
  store i8 46, i8* %17, align 1
  %18 = load i8*, i8** %template.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr20, i8** %template.addr, align 8
  br label %if.end.60

if.else.21:                                       ; preds = %if.else.13
  %19 = load i8*, i8** %template.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv22 = sext i8 %20 to i32
  %cmp23 = icmp eq i32 %conv22, 91
  br i1 %cmp23, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %if.else.21
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8
  store i8 92, i8* %21, align 1
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8
  store i8 91, i8* %22, align 1
  %23 = load i8*, i8** %template.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr28, i8** %template.addr, align 8
  br label %if.end.59

if.else.29:                                       ; preds = %if.else.21
  %24 = load i8*, i8** %template.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv30 = sext i8 %25 to i32
  %cmp31 = icmp eq i32 %conv30, 36
  br i1 %cmp31, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %if.else.29
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr34, i8** %p, align 8
  store i8 92, i8* %26, align 1
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr35, i8** %p, align 8
  store i8 36, i8* %27, align 1
  %28 = load i8*, i8** %template.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr36, i8** %template.addr, align 8
  br label %if.end.58

if.else.37:                                       ; preds = %if.else.29
  %29 = load i8*, i8** %template.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv38 = sext i8 %30 to i32
  %cmp39 = icmp eq i32 %conv38, 94
  br i1 %cmp39, label %if.then.41, label %if.else.45

if.then.41:                                       ; preds = %if.else.37
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr42, i8** %p, align 8
  store i8 92, i8* %31, align 1
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr43, i8** %p, align 8
  store i8 94, i8* %32, align 1
  %33 = load i8*, i8** %template.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr44, i8** %template.addr, align 8
  br label %if.end.57

if.else.45:                                       ; preds = %if.else.37
  %34 = load i8*, i8** %template.addr, align 8
  %35 = load i8, i8* %34, align 1
  %conv46 = sext i8 %35 to i32
  %cmp47 = icmp eq i32 %conv46, 92
  br i1 %cmp47, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %if.else.45
  %36 = load i8*, i8** %p, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr50, i8** %p, align 8
  store i8 92, i8* %36, align 1
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr51, i8** %p, align 8
  store i8 92, i8* %37, align 1
  %38 = load i8*, i8** %template.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr52, i8** %template.addr, align 8
  br label %if.end.56

if.else.53:                                       ; preds = %if.else.45
  %39 = load i8*, i8** %template.addr, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr54, i8** %template.addr, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %p, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr55, i8** %p, align 8
  store i8 %40, i8* %41, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.41
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.33
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.25
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.17
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.10
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr63, i8** %p, align 8
  store i8 36, i8* %42, align 1
  %43 = load i8*, i8** %p, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr64, i8** %p, align 8
  store i8 0, i8* %43, align 1
  %arraydecay65 = getelementptr inbounds [200 x i8], [200 x i8]* %temp, i32 0, i32 0
  %call = call i8* (i8*, ...) bitcast (i8* (...)* @re_comp to i8* (i8*, ...)*)(i8* %arraydecay65)
  %tobool66 = icmp ne i8* %call, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %while.end
  %44 = load i8*, i8** %s.addr, align 8
  %call69 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* %44)
  store i32 %call69, i32* %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then.67, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i8* @re_comp(...) #1

declare i32 @re_exec(...) #1

; Function Attrs: nounwind uwtable
define i32 @ul_insert(%struct.vlink* %ul, %struct.vdir* %vd, %struct.vlink* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %ul.addr = alloca %struct.vlink*, align 8
  %vd.addr = alloca %struct.vdir*, align 8
  %p.addr = alloca %struct.vlink*, align 8
  %current = alloca %struct.vlink*, align 8
  store %struct.vlink* %ul, %struct.vlink** %ul.addr, align 8
  store %struct.vdir* %vd, %struct.vdir** %vd.addr, align 8
  store %struct.vlink* %p, %struct.vlink** %p.addr, align 8
  %0 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %ulinks = getelementptr inbounds %struct.vdir, %struct.vdir* %0, i32 0, i32 7
  %1 = load %struct.vlink*, %struct.vlink** %ulinks, align 8
  %cmp = icmp eq %struct.vlink* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %3 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %ulinks1 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i32 0, i32 7
  store %struct.vlink* %2, %struct.vlink** %ulinks1, align 8
  %4 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %previous = getelementptr inbounds %struct.vlink, %struct.vlink* %4, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %previous, align 8
  %5 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %next = getelementptr inbounds %struct.vlink, %struct.vlink* %5, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %next, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %7 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %8 = bitcast %struct.vdir* %7 to %struct.vlink*
  %cmp2 = icmp eq %struct.vlink* %6, %8
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %ulinks4 = getelementptr inbounds %struct.vdir, %struct.vdir* %9, i32 0, i32 7
  %10 = load %struct.vlink*, %struct.vlink** %ulinks4, align 8
  %11 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %next5 = getelementptr inbounds %struct.vlink, %struct.vlink* %11, i32 0, i32 20
  store %struct.vlink* %10, %struct.vlink** %next5, align 8
  %12 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %13 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %next6 = getelementptr inbounds %struct.vlink, %struct.vlink* %13, i32 0, i32 20
  %14 = load %struct.vlink*, %struct.vlink** %next6, align 8
  %previous7 = getelementptr inbounds %struct.vlink, %struct.vlink* %14, i32 0, i32 19
  store %struct.vlink* %12, %struct.vlink** %previous7, align 8
  %15 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %16 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %ulinks8 = getelementptr inbounds %struct.vdir, %struct.vdir* %16, i32 0, i32 7
  store %struct.vlink* %15, %struct.vlink** %ulinks8, align 8
  %17 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %previous9 = getelementptr inbounds %struct.vlink, %struct.vlink* %17, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %previous9, align 8
  br label %if.end.36

if.else:                                          ; preds = %if.end
  %18 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %ulinks10 = getelementptr inbounds %struct.vdir, %struct.vdir* %18, i32 0, i32 7
  %19 = load %struct.vlink*, %struct.vlink** %ulinks10, align 8
  store %struct.vlink* %19, %struct.vlink** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.else
  %20 = load %struct.vlink*, %struct.vlink** %current, align 8
  %tobool = icmp ne %struct.vlink* %20, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %tobool11 = icmp ne %struct.vlink* %21, null
  br i1 %tobool11, label %if.end.15, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %22 = load %struct.vlink*, %struct.vlink** %current, align 8
  %next12 = getelementptr inbounds %struct.vlink, %struct.vlink* %22, i32 0, i32 20
  %23 = load %struct.vlink*, %struct.vlink** %next12, align 8
  %cmp13 = icmp eq %struct.vlink* %23, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  %24 = load %struct.vlink*, %struct.vlink** %current, align 8
  store %struct.vlink* %24, %struct.vlink** %p.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true, %while.body
  %25 = load %struct.vlink*, %struct.vlink** %current, align 8
  %26 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %call = call i32 @vl_comp(%struct.vlink* %25, %struct.vlink* %26)
  %cmp16 = icmp eq i32 %call, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %27 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* %27)
  store i32 25, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.15
  %28 = load %struct.vlink*, %struct.vlink** %current, align 8
  %29 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %cmp19 = icmp eq %struct.vlink* %28, %29
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  br label %while.end

if.end.21:                                        ; preds = %if.end.18
  %30 = load %struct.vlink*, %struct.vlink** %current, align 8
  %next22 = getelementptr inbounds %struct.vlink, %struct.vlink* %30, i32 0, i32 20
  %31 = load %struct.vlink*, %struct.vlink** %next22, align 8
  store %struct.vlink* %31, %struct.vlink** %current, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.20, %while.cond
  %32 = load %struct.vlink*, %struct.vlink** %current, align 8
  %cmp23 = icmp eq %struct.vlink* %32, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %while.end
  store i32 27, i32* %retval
  br label %return

if.end.25:                                        ; preds = %while.end
  %33 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %next26 = getelementptr inbounds %struct.vlink, %struct.vlink* %33, i32 0, i32 20
  %34 = load %struct.vlink*, %struct.vlink** %next26, align 8
  %35 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %next27 = getelementptr inbounds %struct.vlink, %struct.vlink* %35, i32 0, i32 20
  store %struct.vlink* %34, %struct.vlink** %next27, align 8
  %36 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %37 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %next28 = getelementptr inbounds %struct.vlink, %struct.vlink* %37, i32 0, i32 20
  store %struct.vlink* %36, %struct.vlink** %next28, align 8
  %38 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %39 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %previous29 = getelementptr inbounds %struct.vlink, %struct.vlink* %39, i32 0, i32 19
  store %struct.vlink* %38, %struct.vlink** %previous29, align 8
  %40 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %next30 = getelementptr inbounds %struct.vlink, %struct.vlink* %40, i32 0, i32 20
  %41 = load %struct.vlink*, %struct.vlink** %next30, align 8
  %tobool31 = icmp ne %struct.vlink* %41, null
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.25
  %42 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %43 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %next33 = getelementptr inbounds %struct.vlink, %struct.vlink* %43, i32 0, i32 20
  %44 = load %struct.vlink*, %struct.vlink** %next33, align 8
  %previous34 = getelementptr inbounds %struct.vlink, %struct.vlink* %44, i32 0, i32 19
  store %struct.vlink* %42, %struct.vlink** %previous34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.25
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.3
  %45 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %next37 = getelementptr inbounds %struct.vlink, %struct.vlink* %45, i32 0, i32 20
  %46 = load %struct.vlink*, %struct.vlink** %next37, align 8
  store %struct.vlink* %46, %struct.vlink** %current, align 8
  br label %while.cond.38

while.cond.38:                                    ; preds = %if.end.54, %if.end.36
  %47 = load %struct.vlink*, %struct.vlink** %current, align 8
  %tobool39 = icmp ne %struct.vlink* %47, null
  br i1 %tobool39, label %while.body.40, label %while.end.56

while.body.40:                                    ; preds = %while.cond.38
  %48 = load %struct.vlink*, %struct.vlink** %current, align 8
  %49 = load %struct.vlink*, %struct.vlink** %ul.addr, align 8
  %call41 = call i32 @vl_comp(%struct.vlink* %48, %struct.vlink* %49)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.54

if.then.43:                                       ; preds = %while.body.40
  %50 = load %struct.vlink*, %struct.vlink** %current, align 8
  %next44 = getelementptr inbounds %struct.vlink, %struct.vlink* %50, i32 0, i32 20
  %51 = load %struct.vlink*, %struct.vlink** %next44, align 8
  %52 = load %struct.vlink*, %struct.vlink** %current, align 8
  %previous45 = getelementptr inbounds %struct.vlink, %struct.vlink* %52, i32 0, i32 19
  %53 = load %struct.vlink*, %struct.vlink** %previous45, align 8
  %next46 = getelementptr inbounds %struct.vlink, %struct.vlink* %53, i32 0, i32 20
  store %struct.vlink* %51, %struct.vlink** %next46, align 8
  %54 = load %struct.vlink*, %struct.vlink** %current, align 8
  %next47 = getelementptr inbounds %struct.vlink, %struct.vlink* %54, i32 0, i32 20
  %55 = load %struct.vlink*, %struct.vlink** %next47, align 8
  %tobool48 = icmp ne %struct.vlink* %55, null
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.then.43
  %56 = load %struct.vlink*, %struct.vlink** %current, align 8
  %previous50 = getelementptr inbounds %struct.vlink, %struct.vlink* %56, i32 0, i32 19
  %57 = load %struct.vlink*, %struct.vlink** %previous50, align 8
  %58 = load %struct.vlink*, %struct.vlink** %current, align 8
  %next51 = getelementptr inbounds %struct.vlink, %struct.vlink* %58, i32 0, i32 20
  %59 = load %struct.vlink*, %struct.vlink** %next51, align 8
  %previous52 = getelementptr inbounds %struct.vlink, %struct.vlink* %59, i32 0, i32 19
  store %struct.vlink* %57, %struct.vlink** %previous52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.then.43
  %60 = load %struct.vlink*, %struct.vlink** %current, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* %60)
  store i32 26, i32* %retval
  br label %return

if.end.54:                                        ; preds = %while.body.40
  %61 = load %struct.vlink*, %struct.vlink** %current, align 8
  %next55 = getelementptr inbounds %struct.vlink, %struct.vlink* %61, i32 0, i32 20
  %62 = load %struct.vlink*, %struct.vlink** %next55, align 8
  store %struct.vlink* %62, %struct.vlink** %current, align 8
  br label %while.cond.38

while.end.56:                                     ; preds = %while.cond.38
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.56, %if.end.53, %if.then.24, %if.then.17, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare i32 @vl_comp(%struct.vlink*, %struct.vlink*) #1

declare void @vlfree(...) #1

; Function Attrs: nounwind uwtable
define i32 @vl_insert(%struct.vlink* %vl, %struct.vdir* %vd, i32 %allow_conflict) #0 {
entry:
  %retval = alloca i32, align 4
  %vl.addr = alloca %struct.vlink*, align 8
  %vd.addr = alloca %struct.vdir*, align 8
  %allow_conflict.addr = alloca i32, align 4
  %current = alloca %struct.vlink*, align 8
  %crep = alloca %struct.vlink*, align 8
  %retval1 = alloca i32, align 4
  store %struct.vlink* %vl, %struct.vlink** %vl.addr, align 8
  store %struct.vdir* %vd, %struct.vdir** %vd.addr, align 8
  store i32 %allow_conflict, i32* %allow_conflict.addr, align 4
  %0 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %linktype = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i32 0, i32 2
  %1 = load i8, i8* %linktype, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 85
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %3 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %call = call i32 @ul_insert(%struct.vlink* %2, %struct.vdir* %3, %struct.vlink* null)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %links = getelementptr inbounds %struct.vdir, %struct.vdir* %4, i32 0, i32 5
  %5 = load %struct.vlink*, %struct.vlink** %links, align 8
  %cmp3 = icmp eq %struct.vlink* %5, null
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %7 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %links6 = getelementptr inbounds %struct.vdir, %struct.vdir* %7, i32 0, i32 5
  store %struct.vlink* %6, %struct.vlink** %links6, align 8
  %8 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %previous = getelementptr inbounds %struct.vlink, %struct.vlink* %8, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %previous, align 8
  %9 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next = getelementptr inbounds %struct.vlink, %struct.vlink* %9, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %next, align 8
  %10 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %11 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %lastlink = getelementptr inbounds %struct.vdir, %struct.vdir* %11, i32 0, i32 6
  store %struct.vlink* %10, %struct.vlink** %lastlink, align 8
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %12 = load i32, i32* %allow_conflict.addr, align 4
  %cmp8 = icmp eq i32 %12, 2
  br i1 %cmp8, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.7
  %13 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %14 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %lastlink11 = getelementptr inbounds %struct.vdir, %struct.vdir* %14, i32 0, i32 6
  %15 = load %struct.vlink*, %struct.vlink** %lastlink11, align 8
  %next12 = getelementptr inbounds %struct.vlink, %struct.vlink* %15, i32 0, i32 20
  store %struct.vlink* %13, %struct.vlink** %next12, align 8
  %16 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %lastlink13 = getelementptr inbounds %struct.vdir, %struct.vdir* %16, i32 0, i32 6
  %17 = load %struct.vlink*, %struct.vlink** %lastlink13, align 8
  %18 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %previous14 = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 19
  store %struct.vlink* %17, %struct.vlink** %previous14, align 8
  %19 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next15 = getelementptr inbounds %struct.vlink, %struct.vlink* %19, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %next15, align 8
  %20 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %21 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %lastlink16 = getelementptr inbounds %struct.vdir, %struct.vdir* %21, i32 0, i32 6
  store %struct.vlink* %20, %struct.vlink** %lastlink16, align 8
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.7
  %22 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %23 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %links18 = getelementptr inbounds %struct.vdir, %struct.vdir* %23, i32 0, i32 5
  %24 = load %struct.vlink*, %struct.vlink** %links18, align 8
  %call19 = call i32 @vl_comp(%struct.vlink* %22, %struct.vlink* %24)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.end.17
  %25 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %links23 = getelementptr inbounds %struct.vdir, %struct.vdir* %25, i32 0, i32 5
  %26 = load %struct.vlink*, %struct.vlink** %links23, align 8
  %27 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next24 = getelementptr inbounds %struct.vlink, %struct.vlink* %27, i32 0, i32 20
  store %struct.vlink* %26, %struct.vlink** %next24, align 8
  %28 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %previous25 = getelementptr inbounds %struct.vlink, %struct.vlink* %28, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %previous25, align 8
  %29 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %30 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next26 = getelementptr inbounds %struct.vlink, %struct.vlink* %30, i32 0, i32 20
  %31 = load %struct.vlink*, %struct.vlink** %next26, align 8
  %previous27 = getelementptr inbounds %struct.vlink, %struct.vlink* %31, i32 0, i32 19
  store %struct.vlink* %29, %struct.vlink** %previous27, align 8
  %32 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %33 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %links28 = getelementptr inbounds %struct.vdir, %struct.vdir* %33, i32 0, i32 5
  store %struct.vlink* %32, %struct.vlink** %links28, align 8
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.17
  %34 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %links30 = getelementptr inbounds %struct.vdir, %struct.vdir* %34, i32 0, i32 5
  %35 = load %struct.vlink*, %struct.vlink** %links30, align 8
  store %struct.vlink* %35, %struct.vlink** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.end.29
  %36 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %37 = load %struct.vlink*, %struct.vlink** %current, align 8
  %call31 = call i32 @vl_comp(%struct.vlink* %36, %struct.vlink* %37)
  store i32 %call31, i32* %retval1, align 4
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load %struct.vlink*, %struct.vlink** %current, align 8
  %next34 = getelementptr inbounds %struct.vlink, %struct.vlink* %38, i32 0, i32 20
  %39 = load %struct.vlink*, %struct.vlink** %next34, align 8
  %tobool = icmp ne %struct.vlink* %39, null
  br i1 %tobool, label %if.end.40, label %if.then.35

if.then.35:                                       ; preds = %while.body
  %40 = load %struct.vlink*, %struct.vlink** %current, align 8
  %41 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %previous36 = getelementptr inbounds %struct.vlink, %struct.vlink* %41, i32 0, i32 19
  store %struct.vlink* %40, %struct.vlink** %previous36, align 8
  %42 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next37 = getelementptr inbounds %struct.vlink, %struct.vlink* %42, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %next37, align 8
  %43 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %44 = load %struct.vlink*, %struct.vlink** %current, align 8
  %next38 = getelementptr inbounds %struct.vlink, %struct.vlink* %44, i32 0, i32 20
  store %struct.vlink* %43, %struct.vlink** %next38, align 8
  %45 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %46 = load %struct.vdir*, %struct.vdir** %vd.addr, align 8
  %lastlink39 = getelementptr inbounds %struct.vdir, %struct.vdir* %46, i32 0, i32 6
  store %struct.vlink* %45, %struct.vlink** %lastlink39, align 8
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %while.body
  %47 = load %struct.vlink*, %struct.vlink** %current, align 8
  %next41 = getelementptr inbounds %struct.vlink, %struct.vlink* %47, i32 0, i32 20
  %48 = load %struct.vlink*, %struct.vlink** %next41, align 8
  store %struct.vlink* %48, %struct.vlink** %current, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load i32, i32* %retval1, align 4
  %tobool42 = icmp ne i32 %49, 0
  br i1 %tobool42, label %if.end.100, label %if.then.43

if.then.43:                                       ; preds = %while.end
  %50 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %51 = load %struct.vlink*, %struct.vlink** %current, align 8
  %call44 = call i32 @vl_equal(%struct.vlink* %50, %struct.vlink* %51)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.43
  %52 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* %52)
  store i32 21, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.43
  %53 = load i32, i32* %allow_conflict.addr, align 4
  %cmp48 = icmp eq i32 %53, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end.47
  %54 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %f_magic_no = getelementptr inbounds %struct.vlink, %struct.vlink* %54, i32 0, i32 12
  %55 = load i64, i64* %f_magic_no, align 8
  %56 = load %struct.vlink*, %struct.vlink** %current, align 8
  %f_magic_no50 = getelementptr inbounds %struct.vlink, %struct.vlink* %56, i32 0, i32 12
  %57 = load i64, i64* %f_magic_no50, align 8
  %cmp51 = icmp ne i64 %55, %57
  br i1 %cmp51, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %58 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %f_magic_no53 = getelementptr inbounds %struct.vlink, %struct.vlink* %58, i32 0, i32 12
  %59 = load i64, i64* %f_magic_no53, align 8
  %cmp54 = icmp eq i64 %59, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 22, i32* %retval
  br label %return

if.end.57:                                        ; preds = %lor.lhs.false, %if.end.47
  %60 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %f_magic_no58 = getelementptr inbounds %struct.vlink, %struct.vlink* %60, i32 0, i32 12
  %61 = load i64, i64* %f_magic_no58, align 8
  %cmp59 = icmp eq i64 %61, 0
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.57
  %62 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %f_magic_no62 = getelementptr inbounds %struct.vlink, %struct.vlink* %62, i32 0, i32 12
  store i64 -1, i64* %f_magic_no62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.57
  %63 = load %struct.vlink*, %struct.vlink** %current, align 8
  %replicas = getelementptr inbounds %struct.vlink, %struct.vlink* %63, i32 0, i32 6
  %64 = load %struct.vlink*, %struct.vlink** %replicas, align 8
  store %struct.vlink* %64, %struct.vlink** %crep, align 8
  %65 = load %struct.vlink*, %struct.vlink** %crep, align 8
  %tobool64 = icmp ne %struct.vlink* %65, null
  br i1 %tobool64, label %if.else, label %if.then.65

if.then.65:                                       ; preds = %if.end.63
  %66 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %67 = load %struct.vlink*, %struct.vlink** %current, align 8
  %replicas66 = getelementptr inbounds %struct.vlink, %struct.vlink* %67, i32 0, i32 6
  store %struct.vlink* %66, %struct.vlink** %replicas66, align 8
  %68 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next67 = getelementptr inbounds %struct.vlink, %struct.vlink* %68, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %next67, align 8
  %69 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %previous68 = getelementptr inbounds %struct.vlink, %struct.vlink* %69, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %previous68, align 8
  br label %if.end.99

if.else:                                          ; preds = %if.end.63
  br label %while.cond.69

while.cond.69:                                    ; preds = %if.end.82, %if.else
  %70 = load %struct.vlink*, %struct.vlink** %crep, align 8
  %next70 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i32 0, i32 20
  %71 = load %struct.vlink*, %struct.vlink** %next70, align 8
  %tobool71 = icmp ne %struct.vlink* %71, null
  br i1 %tobool71, label %while.body.72, label %while.end.84

while.body.72:                                    ; preds = %while.cond.69
  %72 = load %struct.vlink*, %struct.vlink** %crep, align 8
  %f_magic_no73 = getelementptr inbounds %struct.vlink, %struct.vlink* %72, i32 0, i32 12
  %73 = load i64, i64* %f_magic_no73, align 8
  %cmp74 = icmp slt i64 %73, 0
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.82

land.lhs.true.76:                                 ; preds = %while.body.72
  %74 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %f_magic_no77 = getelementptr inbounds %struct.vlink, %struct.vlink* %74, i32 0, i32 12
  %75 = load i64, i64* %f_magic_no77, align 8
  %cmp78 = icmp slt i64 %75, 1
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %land.lhs.true.76
  %76 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %f_magic_no81 = getelementptr inbounds %struct.vlink, %struct.vlink* %76, i32 0, i32 12
  %77 = load i64, i64* %f_magic_no81, align 8
  %dec = add nsw i64 %77, -1
  store i64 %dec, i64* %f_magic_no81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %land.lhs.true.76, %while.body.72
  %78 = load %struct.vlink*, %struct.vlink** %crep, align 8
  %next83 = getelementptr inbounds %struct.vlink, %struct.vlink* %78, i32 0, i32 20
  %79 = load %struct.vlink*, %struct.vlink** %next83, align 8
  store %struct.vlink* %79, %struct.vlink** %crep, align 8
  br label %while.cond.69

while.end.84:                                     ; preds = %while.cond.69
  %80 = load %struct.vlink*, %struct.vlink** %crep, align 8
  %f_magic_no85 = getelementptr inbounds %struct.vlink, %struct.vlink* %80, i32 0, i32 12
  %81 = load i64, i64* %f_magic_no85, align 8
  %cmp86 = icmp slt i64 %81, 0
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.95

land.lhs.true.88:                                 ; preds = %while.end.84
  %82 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %f_magic_no89 = getelementptr inbounds %struct.vlink, %struct.vlink* %82, i32 0, i32 12
  %83 = load i64, i64* %f_magic_no89, align 8
  %cmp90 = icmp slt i64 %83, 1
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %land.lhs.true.88
  %84 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %f_magic_no93 = getelementptr inbounds %struct.vlink, %struct.vlink* %84, i32 0, i32 12
  %85 = load i64, i64* %f_magic_no93, align 8
  %dec94 = add nsw i64 %85, -1
  store i64 %dec94, i64* %f_magic_no93, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %land.lhs.true.88, %while.end.84
  %86 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %87 = load %struct.vlink*, %struct.vlink** %crep, align 8
  %next96 = getelementptr inbounds %struct.vlink, %struct.vlink* %87, i32 0, i32 20
  store %struct.vlink* %86, %struct.vlink** %next96, align 8
  %88 = load %struct.vlink*, %struct.vlink** %crep, align 8
  %89 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %previous97 = getelementptr inbounds %struct.vlink, %struct.vlink* %89, i32 0, i32 19
  store %struct.vlink* %88, %struct.vlink** %previous97, align 8
  %90 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next98 = getelementptr inbounds %struct.vlink, %struct.vlink* %90, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %next98, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.95, %if.then.65
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %while.end
  %91 = load %struct.vlink*, %struct.vlink** %current, align 8
  %92 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next101 = getelementptr inbounds %struct.vlink, %struct.vlink* %92, i32 0, i32 20
  store %struct.vlink* %91, %struct.vlink** %next101, align 8
  %93 = load %struct.vlink*, %struct.vlink** %current, align 8
  %previous102 = getelementptr inbounds %struct.vlink, %struct.vlink* %93, i32 0, i32 19
  %94 = load %struct.vlink*, %struct.vlink** %previous102, align 8
  %95 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %previous103 = getelementptr inbounds %struct.vlink, %struct.vlink* %95, i32 0, i32 19
  store %struct.vlink* %94, %struct.vlink** %previous103, align 8
  %96 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %97 = load %struct.vlink*, %struct.vlink** %current, align 8
  %previous104 = getelementptr inbounds %struct.vlink, %struct.vlink* %97, i32 0, i32 19
  store %struct.vlink* %96, %struct.vlink** %previous104, align 8
  %98 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %99 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %previous105 = getelementptr inbounds %struct.vlink, %struct.vlink* %99, i32 0, i32 19
  %100 = load %struct.vlink*, %struct.vlink** %previous105, align 8
  %next106 = getelementptr inbounds %struct.vlink, %struct.vlink* %100, i32 0, i32 20
  store %struct.vlink* %98, %struct.vlink** %next106, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.100, %if.end.99, %if.then.56, %if.then.46, %if.then.35, %if.then.22, %if.then.10, %if.then.5, %if.then
  %101 = load i32, i32* %retval
  ret i32 %101
}

declare i32 @vl_equal(%struct.vlink*, %struct.vlink*) #1

; Function Attrs: nounwind uwtable
define i8* @nlsindex(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i8*, align 8
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %s2len = alloca i32, align 4
  %curline = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s2.addr, align 8
  %call = call i64 @strlen(i8* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %s2len, align 4
  %1 = load i8*, i8** %s1.addr, align 8
  store i8* %1, i8** %curline, align 8
  %2 = load i8*, i8** %curline, align 8
  %3 = load i8*, i8** %s2.addr, align 8
  %4 = load i32, i32* %s2len, align 4
  %conv1 = sext i32 %4 to i64
  %call2 = call i32 @strncmp(i8* %2, i8* %3, i64 %conv1)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %curline, align 8
  store i8* %5, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end
  %6 = load i8*, i8** %curline, align 8
  %call4 = call i8* @strchr(i8* %6, i32 10)
  store i8* %call4, i8** %curline, align 8
  %cmp5 = icmp ne i8* %call4, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %curline, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %curline, align 8
  %8 = load i8*, i8** %curline, align 8
  %9 = load i8*, i8** %s2.addr, align 8
  %10 = load i32, i32* %s2len, align 4
  %conv7 = sext i32 %10 to i64
  %call8 = call i32 @strncmp(i8* %8, i8* %9, i64 %conv7)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body
  %11 = load i8*, i8** %curline, align 8
  store i8* %11, i8** %retval
  br label %return

if.end.12:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.11, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

declare i64 @strlen(i8*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @month_sname(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %1, 12
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @month_sname.name, i32 0, i64 0), align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [13 x i8*], [13 x i8*]* @month_sname.name, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ %4, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define i8* @sindex(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i8*, align 8
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %s2len = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s2.addr, align 8
  %call = call i64 @strlen(i8* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %s2len, align 4
  %1 = load i8*, i8** %s1.addr, align 8
  store i8* %1, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %s, align 8
  %3 = load i8*, i8** %s2.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %call2 = call i8* @strchr(i8* %2, i32 %conv1)
  store i8* %call2, i8** %s, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s, align 8
  %6 = load i8*, i8** %s2.addr, align 8
  %7 = load i32, i32* %s2len, align 4
  %conv4 = sext i32 %7 to i64
  %call5 = call i32 @strncmp(i8* %5, i8* %6, i64 %conv4)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i8*, i8** %s, align 8
  store i8* %8, i8** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define i32 @scan_error(i8* %erst) #0 {
entry:
  %retval = alloca i32, align 4
  %erst.addr = alloca i8*, align 8
  store i8* %erst, i8** %erst.addr, align 8
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i32 0, i32 0), align 1
  %0 = load i8*, i8** %erst.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i64 15)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 246, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %erst.addr, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i64 13)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  store i32 251, i32* @perrno, align 4
  %2 = load i8*, i8** %erst.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 13
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i32 0, i32 0)) #3
  %3 = load i32, i32* @perrno, align 4
  store i32 %3, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i8*, i8** %erst.addr, align 8
  %call6 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64 8)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %5 = load i8*, i8** %erst.addr, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %5, i64 8
  store i8* %add.ptr9, i8** %erst.addr, align 8
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i32 0, i32 0), align 1
  %6 = load i8*, i8** %erst.addr, align 8
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i32 0, i32 0)) #3
  %7 = load i8*, i8** %erst.addr, align 8
  %call11 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i64 11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  store i32 1, i32* @pwarn, align 4
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.8
  %8 = load i8*, i8** %erst.addr, align 8
  %call15 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i64 7)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 2, i32* @pwarn, align 4
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  store i32 255, i32* @pwarn, align 4
  %9 = load i8*, i8** %erst.addr, align 8
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i32 0, i32 0)) #3
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.5
  %10 = load i8*, i8** %erst.addr, align 8
  %call20 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i64 5)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.28

if.then.22:                                       ; preds = %if.else
  %11 = load i8*, i8** %erst.addr, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %11, i64 5
  %12 = load i8, i8* %add.ptr23, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.then.22
  %13 = load i8*, i8** %erst.addr, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %13, i64 6
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i32 0, i32 0)) #3
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.then.22
  store i32 253, i32* @perrno, align 4
  %14 = load i32, i32* @perrno, align 4
  store i32 %14, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.else
  %15 = load i8*, i8** %erst.addr, align 8
  %call29 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 7)
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.else.28
  %16 = load i32, i32* @pwarn, align 4
  %cmp32 = icmp eq i32 %16, 0
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.31
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i32 0, i32 0), align 1
  store i32 3, i32* @pwarn, align 4
  %17 = load i8*, i8** %erst.addr, align 8
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i32 0, i32 0)) #3
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.31
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.else.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %18 = load i8*, i8** %erst.addr, align 8
  %call39 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i64 8)
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  store i32 255, i32* @perrno, align 4
  %19 = load i32, i32* @perrno, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.38
  %20 = load i8*, i8** %erst.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %add.ptr43, i8** %erst.addr, align 8
  %21 = load i8*, i8** %erst.addr, align 8
  %call44 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i32 0, i32 0)) #3
  %22 = load i8*, i8** %erst.addr, align 8
  %call45 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i64 9)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.end.42
  store i32 244, i32* @perrno, align 4
  br label %if.end.74

if.else.48:                                       ; preds = %if.end.42
  %23 = load i8*, i8** %erst.addr, align 8
  %call49 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i64 13)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.48
  store i32 243, i32* @perrno, align 4
  br label %if.end.73

if.else.52:                                       ; preds = %if.else.48
  %24 = load i8*, i8** %erst.addr, align 8
  %call53 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i64 14)
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.52
  store i32 247, i32* @perrno, align 4
  br label %if.end.72

if.else.56:                                       ; preds = %if.else.52
  %25 = load i8*, i8** %erst.addr, align 8
  %call57 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i64 13)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.56
  store i32 248, i32* @perrno, align 4
  br label %if.end.71

if.else.60:                                       ; preds = %if.else.56
  %26 = load i8*, i8** %erst.addr, align 8
  %call61 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i64 13)
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.else.60
  store i32 254, i32* @perrno, align 4
  br label %if.end.70

if.else.64:                                       ; preds = %if.else.60
  %27 = load i8*, i8** %erst.addr, align 8
  %call65 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i64 15)
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.else.64
  store i32 246, i32* @perrno, align 4
  br label %if.end.69

if.else.68:                                       ; preds = %if.else.64
  store i32 255, i32* @perrno, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.then.67
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.63
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.59
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.55
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.51
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.47
  %28 = load i32, i32* @perrno, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.41, %if.end.35, %if.end.27, %if.end.18, %if.then.17, %if.then.13, %if.then.3, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct.pattrib* @parse_attribute(i8* %line) #0 {
entry:
  %retval = alloca %struct.pattrib*, align 8
  %line.addr = alloca i8*, align 8
  %l_precedence = alloca [4256 x i8], align 16
  %l_name = alloca [4256 x i8], align 16
  %l_type = alloca [4256 x i8], align 16
  %l_value = alloca [4256 x i8], align 16
  %at = alloca %struct.pattrib*, align 8
  %tmp = alloca i32, align 4
  %ftype = alloca [4256 x i8], align 16
  %lname = alloca [4256 x i8], align 16
  %htype = alloca [4256 x i8], align 16
  %host = alloca [4256 x i8], align 16
  %ntype = alloca [4256 x i8], align 16
  %fname = alloca [4256 x i8], align 16
  %al = alloca %struct.vlink*, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %arraydecay = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_name, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_type, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_value, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i8* %arraydecay, i8* %arraydecay1, i8* %arraydecay2) #3
  store i32 %call, i32* %tmp, align 4
  %1 = load i32, i32* %tmp, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8
  %arraydecay3 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_precedence, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_name, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_type, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_value, i32 0, i32 0
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i8* %arraydecay3, i8* %arraydecay4, i8* %arraydecay5, i8* %arraydecay6) #3
  store i32 %call7, i32* %tmp, align 4
  %3 = load i32, i32* %tmp, align 4
  %cmp8 = icmp slt i32 %3, 4
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 252, i32* @perrno, align 4
  store %struct.pattrib* null, %struct.pattrib** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %call11 = call %struct.pattrib* (...) @atalloc()
  store %struct.pattrib* %call11, %struct.pattrib** %at, align 8
  %4 = load i32, i32* %tmp, align 4
  %cmp12 = icmp eq i32 %4, 4
  br i1 %cmp12, label %if.then.13, label %if.end.39

if.then.13:                                       ; preds = %if.end.10
  %arraydecay14 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_precedence, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %arraydecay14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0))
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.13
  %5 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %precedence = getelementptr inbounds %struct.pattrib, %struct.pattrib* %5, i32 0, i32 0
  store i8 67, i8* %precedence, align 1
  br label %if.end.38

if.else:                                          ; preds = %if.then.13
  %arraydecay18 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_precedence, i32 0, i32 0
  %call19 = call i32 @strcmp(i8* %arraydecay18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else
  %6 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %precedence22 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %6, i32 0, i32 0
  store i8 76, i8* %precedence22, align 1
  br label %if.end.37

if.else.23:                                       ; preds = %if.else
  %arraydecay24 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_precedence, i32 0, i32 0
  %call25 = call i32 @strcmp(i8* %arraydecay24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0))
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else.23
  %7 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %precedence28 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %7, i32 0, i32 0
  store i8 82, i8* %precedence28, align 1
  br label %if.end.36

if.else.29:                                       ; preds = %if.else.23
  %arraydecay30 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_precedence, i32 0, i32 0
  %call31 = call i32 @strcmp(i8* %arraydecay30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0))
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.else.29
  %8 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %precedence34 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %8, i32 0, i32 0
  store i8 65, i8* %precedence34, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.else.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.27
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.21
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.17
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.10
  %arraydecay40 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_name, i32 0, i32 0
  %call41 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* %arraydecay40)
  %9 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %aname = getelementptr inbounds %struct.pattrib, %struct.pattrib* %9, i32 0, i32 1
  store i8* %call41, i8** %aname, align 8
  %arraydecay42 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_type, i32 0, i32 0
  %call43 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* %arraydecay42)
  %10 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %avtype = getelementptr inbounds %struct.pattrib, %struct.pattrib* %10, i32 0, i32 2
  store i8* %call43, i8** %avtype, align 8
  %arraydecay44 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_type, i32 0, i32 0
  %call45 = call i32 @strcmp(i8* %arraydecay44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0))
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %if.end.39
  %arraydecay48 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_value, i32 0, i32 0
  %call49 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* %arraydecay48)
  %11 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %value = getelementptr inbounds %struct.pattrib, %struct.pattrib* %11, i32 0, i32 3
  %ascii = bitcast %union.avalue* %value to i8**
  store i8* %call49, i8** %ascii, align 8
  br label %if.end.97

if.else.50:                                       ; preds = %if.end.39
  %arraydecay51 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_type, i32 0, i32 0
  %call52 = call i32 @strcmp(i8* %arraydecay51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.end.96

if.then.54:                                       ; preds = %if.else.50
  %call62 = call %struct.vlink* (...) @vlalloc()
  store %struct.vlink* %call62, %struct.vlink** %al, align 8
  %12 = load %struct.vlink*, %struct.vlink** %al, align 8
  %13 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %value63 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %13, i32 0, i32 3
  %link = bitcast %union.avalue* %value63 to %struct.vlink**
  store %struct.vlink* %12, %struct.vlink** %link, align 8
  %arraydecay64 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_value, i32 0, i32 0
  %14 = load %struct.vlink*, %struct.vlink** %al, align 8
  %linktype = getelementptr inbounds %struct.vlink, %struct.vlink* %14, i32 0, i32 2
  %arraydecay65 = getelementptr inbounds [4256 x i8], [4256 x i8]* %ftype, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [4256 x i8], [4256 x i8]* %lname, i32 0, i32 0
  %arraydecay67 = getelementptr inbounds [4256 x i8], [4256 x i8]* %htype, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [4256 x i8], [4256 x i8]* %host, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [4256 x i8], [4256 x i8]* %ntype, i32 0, i32 0
  %arraydecay70 = getelementptr inbounds [4256 x i8], [4256 x i8]* %fname, i32 0, i32 0
  %15 = load %struct.vlink*, %struct.vlink** %al, align 8
  %version = getelementptr inbounds %struct.vlink, %struct.vlink* %15, i32 0, i32 11
  %16 = load %struct.vlink*, %struct.vlink** %al, align 8
  %f_magic_no = getelementptr inbounds %struct.vlink, %struct.vlink* %16, i32 0, i32 12
  %call71 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i8* %linktype, i8* %arraydecay65, i8* %arraydecay66, i8* %arraydecay67, i8* %arraydecay68, i8* %arraydecay69, i8* %arraydecay70, i64* %version, i64* %f_magic_no) #3
  store i32 %call71, i32* %tmp, align 4
  %17 = load i32, i32* %tmp, align 4
  %cmp72 = icmp eq i32 %17, 9
  br i1 %cmp72, label %if.then.73, label %if.else.94

if.then.73:                                       ; preds = %if.then.54
  %arraydecay74 = getelementptr inbounds [4256 x i8], [4256 x i8]* %ftype, i32 0, i32 0
  %18 = load %struct.vlink*, %struct.vlink** %al, align 8
  %type = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 4
  %19 = load i8*, i8** %type, align 8
  %call75 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay74, i8* %19)
  %20 = load %struct.vlink*, %struct.vlink** %al, align 8
  %type76 = getelementptr inbounds %struct.vlink, %struct.vlink* %20, i32 0, i32 4
  store i8* %call75, i8** %type76, align 8
  %arraydecay77 = getelementptr inbounds [4256 x i8], [4256 x i8]* %lname, i32 0, i32 0
  %call78 = call i8* @unquote(i8* %arraydecay77)
  %21 = load %struct.vlink*, %struct.vlink** %al, align 8
  %name = getelementptr inbounds %struct.vlink, %struct.vlink* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %call79 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %call78, i8* %22)
  %23 = load %struct.vlink*, %struct.vlink** %al, align 8
  %name80 = getelementptr inbounds %struct.vlink, %struct.vlink* %23, i32 0, i32 1
  store i8* %call79, i8** %name80, align 8
  %arraydecay81 = getelementptr inbounds [4256 x i8], [4256 x i8]* %htype, i32 0, i32 0
  %24 = load %struct.vlink*, %struct.vlink** %al, align 8
  %hosttype = getelementptr inbounds %struct.vlink, %struct.vlink* %24, i32 0, i32 7
  %25 = load i8*, i8** %hosttype, align 8
  %call82 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay81, i8* %25)
  %26 = load %struct.vlink*, %struct.vlink** %al, align 8
  %hosttype83 = getelementptr inbounds %struct.vlink, %struct.vlink* %26, i32 0, i32 7
  store i8* %call82, i8** %hosttype83, align 8
  %arraydecay84 = getelementptr inbounds [4256 x i8], [4256 x i8]* %host, i32 0, i32 0
  %27 = load %struct.vlink*, %struct.vlink** %al, align 8
  %host85 = getelementptr inbounds %struct.vlink, %struct.vlink* %27, i32 0, i32 8
  %28 = load i8*, i8** %host85, align 8
  %call86 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay84, i8* %28)
  %29 = load %struct.vlink*, %struct.vlink** %al, align 8
  %host87 = getelementptr inbounds %struct.vlink, %struct.vlink* %29, i32 0, i32 8
  store i8* %call86, i8** %host87, align 8
  %arraydecay88 = getelementptr inbounds [4256 x i8], [4256 x i8]* %ntype, i32 0, i32 0
  %30 = load %struct.vlink*, %struct.vlink** %al, align 8
  %nametype = getelementptr inbounds %struct.vlink, %struct.vlink* %30, i32 0, i32 9
  %31 = load i8*, i8** %nametype, align 8
  %call89 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay88, i8* %31)
  %32 = load %struct.vlink*, %struct.vlink** %al, align 8
  %nametype90 = getelementptr inbounds %struct.vlink, %struct.vlink* %32, i32 0, i32 9
  store i8* %call89, i8** %nametype90, align 8
  %arraydecay91 = getelementptr inbounds [4256 x i8], [4256 x i8]* %fname, i32 0, i32 0
  %33 = load %struct.vlink*, %struct.vlink** %al, align 8
  %filename = getelementptr inbounds %struct.vlink, %struct.vlink* %33, i32 0, i32 10
  %34 = load i8*, i8** %filename, align 8
  %call92 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay91, i8* %34)
  %35 = load %struct.vlink*, %struct.vlink** %al, align 8
  %filename93 = getelementptr inbounds %struct.vlink, %struct.vlink* %35, i32 0, i32 10
  store i8* %call92, i8** %filename93, align 8
  br label %if.end.95

if.else.94:                                       ; preds = %if.then.54
  store i32 252, i32* @perrno, align 4
  store %struct.pattrib* null, %struct.pattrib** %retval
  br label %return

if.end.95:                                        ; preds = %if.then.73
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.else.50
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.47
  %36 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  store %struct.pattrib* %36, %struct.pattrib** %retval
  br label %return

return:                                           ; preds = %if.end.97, %if.else.94, %if.then.9
  %37 = load %struct.pattrib*, %struct.pattrib** %retval
  ret %struct.pattrib* %37
}

declare %struct.pattrib* @atalloc(...) #1

declare i32 @strcmp(i8*, i8*) #1

declare i8* @stcopy(...) #1

declare %struct.vlink* @vlalloc(...) #1

declare i8* @stcopyr(...) #1

; Function Attrs: nounwind uwtable
define i8* @nxtline(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 10)
  store i8* %call, i8** %s.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8* %incdec.ptr, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @unquote(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @unquote.unquoted, i32 0, i32 0), i8** %c, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 39
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 39
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %while.body
  %8 = load i8*, i8** %s.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %s.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %while.body
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i8, i8* %9, align 1
  %tobool8 = icmp ne i8 %10, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %11 = load i8*, i8** %s.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr10, i8** %s.addr, align 8
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %c, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %c, align 8
  store i8 %12, i8* %13, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i8*, i8** %c, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr13, i8** %c, align 8
  store i8 0, i8* %14, align 1
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @unquote.unquoted, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load i8*, i8** %retval
  ret i8* %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
