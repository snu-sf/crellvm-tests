; ModuleID = './MultiSource.Benchmarks.Prolangs-C/24.archie-client.aquery.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }
%struct.vdir = type { i32, i32, i64, %struct.acl*, %struct.pfile*, %struct.vlink*, %struct.vlink*, %struct.vlink*, %struct.vdir*, %struct.vdir* }

@.str = private unnamed_addr constant [26 x i8] c"ARCHIE/MATCH(%d,%d,%c)/%s\00", align 1
@perrno = external global i32, align 4
@p_err_string = external global [0 x i8], align 1
@pwarn = external global i32, align 4
@p_warn_string = external global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LAST-MODIFIED\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ARCHIE/HOST\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"EXTERNAL(AFTP,DIRECTORY)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.vlink* @archie_query(i8* %host, i8* %string, i32 %max_hits, i32 %offset, i8 signext %query_type, i32 (...)* %cmp_proc, i32 %flags) #0 {
entry:
  %retval = alloca %struct.vlink*, align 8
  %host.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %max_hits.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %query_type.addr = alloca i8, align 1
  %cmp_proc.addr = alloca i32 (...)*, align 8
  %flags.addr = alloca i32, align 4
  %qstring = alloca [1024 x i8], align 16
  %links = alloca %struct.vlink*, align 8
  %dir_st = alloca %struct.vdir, align 8
  %dir = alloca %struct.vdir*, align 8
  %p = alloca %struct.vlink*, align 8
  %q = alloca %struct.vlink*, align 8
  %r = alloca %struct.vlink*, align 8
  %lowest = alloca %struct.vlink*, align 8
  %nextp = alloca %struct.vlink*, align 8
  %pnext = alloca %struct.vlink*, align 8
  %pprev = alloca %struct.vlink*, align 8
  %tmp = alloca i32, align 4
  store i8* %host, i8** %host.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %max_hits, i32* %max_hits.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i8 %query_type, i8* %query_type.addr, align 1
  store i32 (...)* %cmp_proc, i32 (...)** %cmp_proc.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store %struct.vdir* %dir_st, %struct.vdir** %dir, align 8
  %0 = load i32 (...)*, i32 (...)** %cmp_proc.addr, align 8
  %cmp = icmp eq i32 (...)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 (...)* bitcast (i32 (%struct.vlink*, %struct.vlink*)* @defcmplink to i32 (...)*), i32 (...)** %cmp_proc.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %qstring, i32 0, i32 0
  %1 = load i32, i32* %max_hits.addr, align 4
  %2 = load i32, i32* %offset.addr, align 4
  %3 = load i8, i8* %query_type.addr, align 1
  %conv = sext i8 %3 to i32
  %4 = load i8*, i8** %string.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %2, i32 %conv, i8* %4) #2
  store i32 0, i32* @perrno, align 4
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i32 0, i32 0), align 1
  store i32 0, i32* @pwarn, align 4
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i32 0, i32 0), align 1
  %5 = load %struct.vdir*, %struct.vdir** %dir, align 8
  %6 = bitcast %struct.vdir* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 72, i32 1, i1 false)
  %7 = load i8*, i8** %host.addr, align 8
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %qstring, i32 0, i32 0
  %8 = load %struct.vdir*, %struct.vdir** %dir, align 8
  %call2 = call i32 @get_vdir(i8* %7, i8* %arraydecay1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.vdir* %8, i64 96, %struct.vlink* null, i8* null)
  store i32 %call2, i32* %tmp, align 4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load i32, i32* %tmp, align 4
  store i32 %9, i32* @perrno, align 4
  store %struct.vlink* null, %struct.vlink** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.vdir*, %struct.vdir** %dir, align 8
  %links5 = getelementptr inbounds %struct.vdir, %struct.vdir* %10, i32 0, i32 5
  %11 = load %struct.vlink*, %struct.vlink** %links5, align 8
  store %struct.vlink* %11, %struct.vlink** %links, align 8
  %12 = load %struct.vdir*, %struct.vdir** %dir, align 8
  %links6 = getelementptr inbounds %struct.vdir, %struct.vdir* %12, i32 0, i32 5
  store %struct.vlink* null, %struct.vlink** %links6, align 8
  %13 = load %struct.vlink*, %struct.vlink** %links, align 8
  store %struct.vlink* %13, %struct.vlink** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.end.4
  %14 = load %struct.vlink*, %struct.vlink** %p, align 8
  %cmp7 = icmp ne %struct.vlink* %14, null
  br i1 %cmp7, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %15 = load %struct.vlink*, %struct.vlink** %p, align 8
  %next = getelementptr inbounds %struct.vlink, %struct.vlink* %15, i32 0, i32 20
  %16 = load %struct.vlink*, %struct.vlink** %next, align 8
  store %struct.vlink* %16, %struct.vlink** %nextp, align 8
  %17 = load %struct.vlink*, %struct.vlink** %p, align 8
  %replicas = getelementptr inbounds %struct.vlink, %struct.vlink* %17, i32 0, i32 6
  %18 = load %struct.vlink*, %struct.vlink** %replicas, align 8
  %cmp9 = icmp ne %struct.vlink* %18, null
  br i1 %cmp9, label %if.then.11, label %if.end.25

if.then.11:                                       ; preds = %for.body
  %19 = load %struct.vlink*, %struct.vlink** %p, align 8
  %replicas12 = getelementptr inbounds %struct.vlink, %struct.vlink* %19, i32 0, i32 6
  %20 = load %struct.vlink*, %struct.vlink** %replicas12, align 8
  %21 = load %struct.vlink*, %struct.vlink** %p, align 8
  %next13 = getelementptr inbounds %struct.vlink, %struct.vlink* %21, i32 0, i32 20
  store %struct.vlink* %20, %struct.vlink** %next13, align 8
  %22 = load %struct.vlink*, %struct.vlink** %p, align 8
  %23 = load %struct.vlink*, %struct.vlink** %p, align 8
  %next14 = getelementptr inbounds %struct.vlink, %struct.vlink* %23, i32 0, i32 20
  %24 = load %struct.vlink*, %struct.vlink** %next14, align 8
  %previous = getelementptr inbounds %struct.vlink, %struct.vlink* %24, i32 0, i32 19
  store %struct.vlink* %22, %struct.vlink** %previous, align 8
  %25 = load %struct.vlink*, %struct.vlink** %p, align 8
  %replicas15 = getelementptr inbounds %struct.vlink, %struct.vlink* %25, i32 0, i32 6
  %26 = load %struct.vlink*, %struct.vlink** %replicas15, align 8
  store %struct.vlink* %26, %struct.vlink** %r, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then.11
  %27 = load %struct.vlink*, %struct.vlink** %r, align 8
  %next17 = getelementptr inbounds %struct.vlink, %struct.vlink* %27, i32 0, i32 20
  %28 = load %struct.vlink*, %struct.vlink** %next17, align 8
  %cmp18 = icmp ne %struct.vlink* %28, null
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.16
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %29 = load %struct.vlink*, %struct.vlink** %r, align 8
  %next21 = getelementptr inbounds %struct.vlink, %struct.vlink* %29, i32 0, i32 20
  %30 = load %struct.vlink*, %struct.vlink** %next21, align 8
  store %struct.vlink* %30, %struct.vlink** %r, align 8
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %31 = load %struct.vlink*, %struct.vlink** %nextp, align 8
  %32 = load %struct.vlink*, %struct.vlink** %r, align 8
  %next22 = getelementptr inbounds %struct.vlink, %struct.vlink* %32, i32 0, i32 20
  store %struct.vlink* %31, %struct.vlink** %next22, align 8
  %33 = load %struct.vlink*, %struct.vlink** %r, align 8
  %34 = load %struct.vlink*, %struct.vlink** %nextp, align 8
  %previous23 = getelementptr inbounds %struct.vlink, %struct.vlink* %34, i32 0, i32 19
  store %struct.vlink* %33, %struct.vlink** %previous23, align 8
  %35 = load %struct.vlink*, %struct.vlink** %p, align 8
  %replicas24 = getelementptr inbounds %struct.vlink, %struct.vlink* %35, i32 0, i32 6
  store %struct.vlink* null, %struct.vlink** %replicas24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %for.body
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %36 = load %struct.vlink*, %struct.vlink** %nextp, align 8
  store %struct.vlink* %36, %struct.vlink** %p, align 8
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %37 = load i32, i32* %flags.addr, align 4
  %and = and i32 %37, 2
  %tobool28 = icmp ne i32 %and, 0
  br i1 %tobool28, label %if.end.37, label %if.then.29

if.then.29:                                       ; preds = %for.end.27
  %38 = load %struct.vlink*, %struct.vlink** %links, align 8
  store %struct.vlink* %38, %struct.vlink** %p, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.34, %if.then.29
  %39 = load %struct.vlink*, %struct.vlink** %p, align 8
  %cmp31 = icmp ne %struct.vlink* %39, null
  br i1 %cmp31, label %for.body.33, label %for.end.36

for.body.33:                                      ; preds = %for.cond.30
  %40 = load %struct.vlink*, %struct.vlink** %p, align 8
  call void @translateArchieResponse(%struct.vlink* %40)
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.33
  %41 = load %struct.vlink*, %struct.vlink** %p, align 8
  %next35 = getelementptr inbounds %struct.vlink, %struct.vlink* %41, i32 0, i32 20
  %42 = load %struct.vlink*, %struct.vlink** %next35, align 8
  store %struct.vlink* %42, %struct.vlink** %p, align 8
  br label %for.cond.30

for.end.36:                                       ; preds = %for.cond.30
  br label %if.end.37

if.end.37:                                        ; preds = %for.end.36, %for.end.27
  %43 = load i32, i32* %flags.addr, align 4
  %and38 = and i32 %43, 1
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  store i32 0, i32* @perrno, align 4
  %44 = load %struct.vlink*, %struct.vlink** %links, align 8
  store %struct.vlink* %44, %struct.vlink** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  %45 = load %struct.vlink*, %struct.vlink** %links, align 8
  store %struct.vlink* %45, %struct.vlink** %p, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.102, %if.end.41
  %46 = load %struct.vlink*, %struct.vlink** %p, align 8
  %cmp43 = icmp ne %struct.vlink* %46, null
  br i1 %cmp43, label %for.body.45, label %for.end.103

for.body.45:                                      ; preds = %for.cond.42
  %47 = load %struct.vlink*, %struct.vlink** %p, align 8
  %next46 = getelementptr inbounds %struct.vlink, %struct.vlink* %47, i32 0, i32 20
  %48 = load %struct.vlink*, %struct.vlink** %next46, align 8
  store %struct.vlink* %48, %struct.vlink** %nextp, align 8
  %49 = load %struct.vlink*, %struct.vlink** %p, align 8
  store %struct.vlink* %49, %struct.vlink** %lowest, align 8
  %50 = load %struct.vlink*, %struct.vlink** %p, align 8
  %next47 = getelementptr inbounds %struct.vlink, %struct.vlink* %50, i32 0, i32 20
  %51 = load %struct.vlink*, %struct.vlink** %next47, align 8
  store %struct.vlink* %51, %struct.vlink** %q, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.57, %for.body.45
  %52 = load %struct.vlink*, %struct.vlink** %q, align 8
  %cmp49 = icmp ne %struct.vlink* %52, null
  br i1 %cmp49, label %for.body.51, label %for.end.59

for.body.51:                                      ; preds = %for.cond.48
  %53 = load i32 (...)*, i32 (...)** %cmp_proc.addr, align 8
  %54 = load %struct.vlink*, %struct.vlink** %q, align 8
  %55 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %callee.knr.cast = bitcast i32 (...)* %53 to i32 (%struct.vlink*, %struct.vlink*, ...)*
  %call52 = call i32 (%struct.vlink*, %struct.vlink*, ...) %callee.knr.cast(%struct.vlink* %54, %struct.vlink* %55)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.body.51
  %56 = load %struct.vlink*, %struct.vlink** %q, align 8
  store %struct.vlink* %56, %struct.vlink** %lowest, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %for.body.51
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %57 = load %struct.vlink*, %struct.vlink** %q, align 8
  %next58 = getelementptr inbounds %struct.vlink, %struct.vlink* %57, i32 0, i32 20
  %58 = load %struct.vlink*, %struct.vlink** %next58, align 8
  store %struct.vlink* %58, %struct.vlink** %q, align 8
  br label %for.cond.48

for.end.59:                                       ; preds = %for.cond.48
  %59 = load %struct.vlink*, %struct.vlink** %p, align 8
  %60 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %cmp60 = icmp ne %struct.vlink* %59, %60
  br i1 %cmp60, label %if.then.62, label %if.end.101

if.then.62:                                       ; preds = %for.end.59
  %61 = load %struct.vlink*, %struct.vlink** %p, align 8
  %next63 = getelementptr inbounds %struct.vlink, %struct.vlink* %61, i32 0, i32 20
  %62 = load %struct.vlink*, %struct.vlink** %next63, align 8
  store %struct.vlink* %62, %struct.vlink** %pnext, align 8
  %63 = load %struct.vlink*, %struct.vlink** %p, align 8
  %previous64 = getelementptr inbounds %struct.vlink, %struct.vlink* %63, i32 0, i32 19
  %64 = load %struct.vlink*, %struct.vlink** %previous64, align 8
  store %struct.vlink* %64, %struct.vlink** %pprev, align 8
  %65 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %next65 = getelementptr inbounds %struct.vlink, %struct.vlink* %65, i32 0, i32 20
  %66 = load %struct.vlink*, %struct.vlink** %next65, align 8
  %cmp66 = icmp ne %struct.vlink* %66, null
  br i1 %cmp66, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.then.62
  %67 = load %struct.vlink*, %struct.vlink** %p, align 8
  %68 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %next69 = getelementptr inbounds %struct.vlink, %struct.vlink* %68, i32 0, i32 20
  %69 = load %struct.vlink*, %struct.vlink** %next69, align 8
  %previous70 = getelementptr inbounds %struct.vlink, %struct.vlink* %69, i32 0, i32 19
  store %struct.vlink* %67, %struct.vlink** %previous70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.then.62
  %70 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %next72 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i32 0, i32 20
  %71 = load %struct.vlink*, %struct.vlink** %next72, align 8
  %72 = load %struct.vlink*, %struct.vlink** %p, align 8
  %next73 = getelementptr inbounds %struct.vlink, %struct.vlink* %72, i32 0, i32 20
  store %struct.vlink* %71, %struct.vlink** %next73, align 8
  %73 = load %struct.vlink*, %struct.vlink** %nextp, align 8
  %74 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %cmp74 = icmp eq %struct.vlink* %73, %74
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.end.71
  %75 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %76 = load %struct.vlink*, %struct.vlink** %p, align 8
  %previous77 = getelementptr inbounds %struct.vlink, %struct.vlink* %76, i32 0, i32 19
  store %struct.vlink* %75, %struct.vlink** %previous77, align 8
  br label %if.end.82

if.else:                                          ; preds = %if.end.71
  %77 = load %struct.vlink*, %struct.vlink** %p, align 8
  %78 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %previous78 = getelementptr inbounds %struct.vlink, %struct.vlink* %78, i32 0, i32 19
  %79 = load %struct.vlink*, %struct.vlink** %previous78, align 8
  %next79 = getelementptr inbounds %struct.vlink, %struct.vlink* %79, i32 0, i32 20
  store %struct.vlink* %77, %struct.vlink** %next79, align 8
  %80 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %previous80 = getelementptr inbounds %struct.vlink, %struct.vlink* %80, i32 0, i32 19
  %81 = load %struct.vlink*, %struct.vlink** %previous80, align 8
  %82 = load %struct.vlink*, %struct.vlink** %p, align 8
  %previous81 = getelementptr inbounds %struct.vlink, %struct.vlink* %82, i32 0, i32 19
  store %struct.vlink* %81, %struct.vlink** %previous81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.76
  %83 = load %struct.vlink*, %struct.vlink** %nextp, align 8
  %84 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %cmp83 = icmp eq %struct.vlink* %83, %84
  br i1 %cmp83, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.end.82
  %85 = load %struct.vlink*, %struct.vlink** %p, align 8
  %86 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %next86 = getelementptr inbounds %struct.vlink, %struct.vlink* %86, i32 0, i32 20
  store %struct.vlink* %85, %struct.vlink** %next86, align 8
  br label %if.end.90

if.else.87:                                       ; preds = %if.end.82
  %87 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %88 = load %struct.vlink*, %struct.vlink** %pnext, align 8
  %previous88 = getelementptr inbounds %struct.vlink, %struct.vlink* %88, i32 0, i32 19
  store %struct.vlink* %87, %struct.vlink** %previous88, align 8
  %89 = load %struct.vlink*, %struct.vlink** %pnext, align 8
  %90 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %next89 = getelementptr inbounds %struct.vlink, %struct.vlink* %90, i32 0, i32 20
  store %struct.vlink* %89, %struct.vlink** %next89, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.85
  %91 = load %struct.vlink*, %struct.vlink** %pprev, align 8
  %cmp91 = icmp ne %struct.vlink* %91, null
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.90
  %92 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %93 = load %struct.vlink*, %struct.vlink** %pprev, align 8
  %next94 = getelementptr inbounds %struct.vlink, %struct.vlink* %93, i32 0, i32 20
  store %struct.vlink* %92, %struct.vlink** %next94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.90
  %94 = load %struct.vlink*, %struct.vlink** %pprev, align 8
  %95 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  %previous96 = getelementptr inbounds %struct.vlink, %struct.vlink* %95, i32 0, i32 19
  store %struct.vlink* %94, %struct.vlink** %previous96, align 8
  %96 = load %struct.vlink*, %struct.vlink** %links, align 8
  %97 = load %struct.vlink*, %struct.vlink** %p, align 8
  %cmp97 = icmp eq %struct.vlink* %96, %97
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.95
  %98 = load %struct.vlink*, %struct.vlink** %lowest, align 8
  store %struct.vlink* %98, %struct.vlink** %links, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.95
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %for.end.59
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %99 = load %struct.vlink*, %struct.vlink** %nextp, align 8
  store %struct.vlink* %99, %struct.vlink** %p, align 8
  br label %for.cond.42

for.end.103:                                      ; preds = %for.cond.42
  store i32 0, i32* @perrno, align 4
  %100 = load %struct.vlink*, %struct.vlink** %links, align 8
  store %struct.vlink* %100, %struct.vlink** %retval
  br label %return

return:                                           ; preds = %for.end.103, %if.then.40, %if.then.3
  %101 = load %struct.vlink*, %struct.vlink** %retval
  ret %struct.vlink* %101
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @get_vdir(i8*, i8*, i8*, %struct.vdir*, i64, %struct.vlink*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @defcmplink(%struct.vlink* %p, %struct.vlink* %q) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.vlink*, align 8
  %q.addr = alloca %struct.vlink*, align 8
  %result = alloca i32, align 4
  store %struct.vlink* %p, %struct.vlink** %p.addr, align 8
  store %struct.vlink* %q, %struct.vlink** %q.addr, align 8
  %0 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %host = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i32 0, i32 8
  %1 = load i8*, i8** %host, align 8
  %2 = load %struct.vlink*, %struct.vlink** %q.addr, align 8
  %host1 = getelementptr inbounds %struct.vlink, %struct.vlink* %2, i32 0, i32 8
  %3 = load i8*, i8** %host1, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3)
  store i32 %call, i32* %result, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %result, align 4
  store i32 %4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %filename = getelementptr inbounds %struct.vlink, %struct.vlink* %5, i32 0, i32 10
  %6 = load i8*, i8** %filename, align 8
  %7 = load %struct.vlink*, %struct.vlink** %q.addr, align 8
  %filename2 = getelementptr inbounds %struct.vlink, %struct.vlink* %7, i32 0, i32 10
  %8 = load i8*, i8** %filename2, align 8
  %call3 = call i32 @strcmp(i8* %6, i8* %8)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @invdatecmplink(%struct.vlink* %p, %struct.vlink* %q) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.vlink*, align 8
  %q.addr = alloca %struct.vlink*, align 8
  %pat = alloca %struct.pattrib*, align 8
  %qat = alloca %struct.pattrib*, align 8
  %pdate = alloca i8*, align 8
  %qdate = alloca i8*, align 8
  %result = alloca i32, align 4
  store %struct.vlink* %p, %struct.vlink** %p.addr, align 8
  store %struct.vlink* %q, %struct.vlink** %q.addr, align 8
  store i8* null, i8** %qdate, align 8
  store i8* null, i8** %pdate, align 8
  %0 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %lattrib = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i32 0, i32 17
  %1 = load %struct.pattrib*, %struct.pattrib** %lattrib, align 8
  store %struct.pattrib* %1, %struct.pattrib** %pat, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.pattrib*, %struct.pattrib** %pat, align 8
  %tobool = icmp ne %struct.pattrib* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pattrib*, %struct.pattrib** %pat, align 8
  %aname = getelementptr inbounds %struct.pattrib, %struct.pattrib* %3, i32 0, i32 1
  %4 = load i8*, i8** %aname, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.pattrib*, %struct.pattrib** %pat, align 8
  %value = getelementptr inbounds %struct.pattrib, %struct.pattrib* %5, i32 0, i32 3
  %ascii = bitcast %union.avalue* %value to i8**
  %6 = load i8*, i8** %ascii, align 8
  store i8* %6, i8** %pdate, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.pattrib*, %struct.pattrib** %pat, align 8
  %next = getelementptr inbounds %struct.pattrib, %struct.pattrib* %7, i32 0, i32 5
  %8 = load %struct.pattrib*, %struct.pattrib** %next, align 8
  store %struct.pattrib* %8, %struct.pattrib** %pat, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.vlink*, %struct.vlink** %q.addr, align 8
  %lattrib1 = getelementptr inbounds %struct.vlink, %struct.vlink* %9, i32 0, i32 17
  %10 = load %struct.pattrib*, %struct.pattrib** %lattrib1, align 8
  store %struct.pattrib* %10, %struct.pattrib** %qat, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.12, %for.end
  %11 = load %struct.pattrib*, %struct.pattrib** %qat, align 8
  %tobool3 = icmp ne %struct.pattrib* %11, null
  br i1 %tobool3, label %for.body.4, label %for.end.14

for.body.4:                                       ; preds = %for.cond.2
  %12 = load %struct.pattrib*, %struct.pattrib** %qat, align 8
  %aname5 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %12, i32 0, i32 1
  %13 = load i8*, i8** %aname5, align 8
  %call6 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %for.body.4
  %14 = load %struct.pattrib*, %struct.pattrib** %qat, align 8
  %value9 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %14, i32 0, i32 3
  %ascii10 = bitcast %union.avalue* %value9 to i8**
  %15 = load i8*, i8** %ascii10, align 8
  store i8* %15, i8** %qdate, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %for.body.4
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end.11
  %16 = load %struct.pattrib*, %struct.pattrib** %qat, align 8
  %next13 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %16, i32 0, i32 5
  %17 = load %struct.pattrib*, %struct.pattrib** %next13, align 8
  store %struct.pattrib* %17, %struct.pattrib** %qat, align 8
  br label %for.cond.2

for.end.14:                                       ; preds = %for.cond.2
  %18 = load i8*, i8** %pdate, align 8
  %tobool15 = icmp ne i8* %18, null
  br i1 %tobool15, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.14
  %19 = load i8*, i8** %qdate, align 8
  %tobool16 = icmp ne i8* %19, null
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %20 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %21 = load %struct.vlink*, %struct.vlink** %q.addr, align 8
  %call18 = call i32 @defcmplink(%struct.vlink* %20, %struct.vlink* %21)
  store i32 %call18, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true, %for.end.14
  %22 = load i8*, i8** %pdate, align 8
  %tobool20 = icmp ne i8* %22, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.19
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %23 = load i8*, i8** %qdate, align 8
  %tobool23 = icmp ne i8* %23, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.22
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.22
  %24 = load i8*, i8** %qdate, align 8
  %25 = load i8*, i8** %pdate, align 8
  %call26 = call i32 @strcmp(i8* %24, i8* %25)
  store i32 %call26, i32* %result, align 4
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.25
  %26 = load %struct.vlink*, %struct.vlink** %p.addr, align 8
  %27 = load %struct.vlink*, %struct.vlink** %q.addr, align 8
  %call29 = call i32 @defcmplink(%struct.vlink* %26, %struct.vlink* %27)
  store i32 %call29, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.25
  %28 = load i32, i32* %result, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.28, %if.then.24, %if.then.21, %if.then.17
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @translateArchieResponse(%struct.vlink* %l) #0 {
entry:
  %l.addr = alloca %struct.vlink*, align 8
  %slash = alloca i8*, align 8
  store %struct.vlink* %l, %struct.vlink** %l.addr, align 8
  %0 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %type = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i32 0, i32 4
  %1 = load i8*, i8** %type, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %2 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %filename = getelementptr inbounds %struct.vlink, %struct.vlink* %2, i32 0, i32 10
  %3 = load i8*, i8** %filename, align 8
  %call1 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i64 11)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %type4 = getelementptr inbounds %struct.vlink, %struct.vlink* %4, i32 0, i32 4
  %5 = load i8*, i8** %type4, align 8
  %call5 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* %5)
  %6 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %type6 = getelementptr inbounds %struct.vlink, %struct.vlink* %6, i32 0, i32 4
  store i8* %call5, i8** %type6, align 8
  %7 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %filename7 = getelementptr inbounds %struct.vlink, %struct.vlink* %7, i32 0, i32 10
  %8 = load i8*, i8** %filename7, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 12
  %9 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %host = getelementptr inbounds %struct.vlink, %struct.vlink* %9, i32 0, i32 8
  %10 = load i8*, i8** %host, align 8
  %call8 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %add.ptr, i8* %10)
  %11 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %host9 = getelementptr inbounds %struct.vlink, %struct.vlink* %11, i32 0, i32 8
  store i8* %call8, i8** %host9, align 8
  %12 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %host10 = getelementptr inbounds %struct.vlink, %struct.vlink* %12, i32 0, i32 8
  %13 = load i8*, i8** %host10, align 8
  %call11 = call i8* @strchr(i8* %13, i32 47)
  store i8* %call11, i8** %slash, align 8
  %14 = load i8*, i8** %slash, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.3
  %15 = load i8*, i8** %slash, align 8
  %16 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %filename13 = getelementptr inbounds %struct.vlink, %struct.vlink* %16, i32 0, i32 10
  %17 = load i8*, i8** %filename13, align 8
  %call14 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %15, i8* %17)
  %18 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %filename15 = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 10
  store i8* %call14, i8** %filename15, align 8
  %19 = load i8*, i8** %slash, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %slash, align 8
  store i8 0, i8* %19, align 1
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %20 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %filename16 = getelementptr inbounds %struct.vlink, %struct.vlink* %20, i32 0, i32 10
  %21 = load i8*, i8** %filename16, align 8
  %call17 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* %21)
  %22 = load %struct.vlink*, %struct.vlink** %l.addr, align 8
  %filename18 = getelementptr inbounds %struct.vlink, %struct.vlink* %22, i32 0, i32 10
  store i8* %call17, i8** %filename18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  ret void
}

declare i32 @strncmp(i8*, i8*, i64) #3

declare i8* @stcopyr(...) #3

declare i8* @strchr(i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
