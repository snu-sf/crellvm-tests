; ModuleID = './lib/userdata.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userdata = type { i8*, i8*, i8*, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/home\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"USERNAME\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Unknown User\00", align 1

; Function Attrs: nounwind uwtable
define void @userdata_free(%struct.userdata* %udata) #0 {
entry:
  %udata.addr = alloca %struct.userdata*, align 8
  store %struct.userdata* %udata, %struct.userdata** %udata.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %login = getelementptr inbounds %struct.userdata, %struct.userdata* %0, i32 0, i32 0
  %1 = load i8*, i8** %login, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %login1 = getelementptr inbounds %struct.userdata, %struct.userdata* %2, i32 0, i32 0
  %3 = load i8*, i8** %login1, align 8
  call void @free(i8* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %name = getelementptr inbounds %struct.userdata, %struct.userdata* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %do.body.2
  %6 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %name5 = getelementptr inbounds %struct.userdata, %struct.userdata* %6, i32 0, i32 1
  %7 = load i8*, i8** %name5, align 8
  call void @free(i8* %7) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %do.body.2
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %8 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %comments = getelementptr inbounds %struct.userdata, %struct.userdata* %8, i32 0, i32 2
  %9 = load i8*, i8** %comments, align 8
  %tobool9 = icmp ne i8* %9, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %do.body.8
  %10 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %comments11 = getelementptr inbounds %struct.userdata, %struct.userdata* %10, i32 0, i32 2
  %11 = load i8*, i8** %comments11, align 8
  call void @free(i8* %11) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %do.body.8
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %12 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %home = getelementptr inbounds %struct.userdata, %struct.userdata* %12, i32 0, i32 3
  %13 = load i8*, i8** %home, align 8
  %tobool15 = icmp ne i8* %13, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %do.body.14
  %14 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %home17 = getelementptr inbounds %struct.userdata, %struct.userdata* %14, i32 0, i32 3
  %15 = load i8*, i8** %home17, align 8
  call void @free(i8* %15) #4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %do.body.14
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @userdata_get(%struct.userdata* %udata) #0 {
entry:
  %udata.addr = alloca %struct.userdata*, align 8
  %passwd = alloca %struct.passwd*, align 8
  %home = alloca i8*, align 8
  %login = alloca i8*, align 8
  %comments = alloca i8*, align 8
  %name = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %gecos = alloca i8*, align 8
  %amps = alloca i64, align 8
  %cp2 = alloca i8*, align 8
  store %struct.userdata* %udata, %struct.userdata** %udata.addr, align 8
  store %struct.passwd* null, %struct.passwd** %passwd, align 8
  store i8* null, i8** %comments, align 8
  store i8* null, i8** %name, align 8
  %call = call i32 @getuid() #4
  %call1 = call %struct.passwd* @getpwuid(i32 %call)
  store %struct.passwd* %call1, %struct.passwd** %passwd, align 8
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call2, i8** %cp, align 8
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %cp, align 8
  store i8* %0, i8** %home, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %1 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %tobool3 = icmp ne %struct.passwd* %1, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %2 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %2, i32 0, i32 5
  %3 = load i8*, i8** %pw_dir, align 8
  %tobool4 = icmp ne i8* %3, null
  br i1 %tobool4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %land.lhs.true
  %4 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_dir6 = getelementptr inbounds %struct.passwd, %struct.passwd* %4, i32 0, i32 5
  %5 = load i8*, i8** %pw_dir6, align 8
  store i8* %5, i8** %home, align 8
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %home, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %call9 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #4
  store i8* %call9, i8** %cp, align 8
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.8
  %6 = load i8*, i8** %cp, align 8
  store i8* %6, i8** %login, align 8
  br label %if.end.25

if.else.12:                                       ; preds = %if.end.8
  %call13 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call13, i8** %cp, align 8
  %tobool14 = icmp ne i8* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  %7 = load i8*, i8** %cp, align 8
  store i8* %7, i8** %login, align 8
  br label %if.end.24

if.else.16:                                       ; preds = %if.else.12
  %8 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %tobool17 = icmp ne %struct.passwd* %8, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.else.22

land.lhs.true.18:                                 ; preds = %if.else.16
  %9 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 0
  %10 = load i8*, i8** %pw_name, align 8
  %tobool19 = icmp ne i8* %10, null
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %land.lhs.true.18
  %11 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_name21 = getelementptr inbounds %struct.passwd, %struct.passwd* %11, i32 0, i32 0
  %12 = load i8*, i8** %pw_name21, align 8
  store i8* %12, i8** %login, align 8
  br label %if.end.23

if.else.22:                                       ; preds = %land.lhs.true.18, %if.else.16
  store i8* null, i8** %login, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.11
  %13 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %tobool26 = icmp ne %struct.passwd* %13, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.74

land.lhs.true.27:                                 ; preds = %if.end.25
  %14 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_gecos = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 4
  %15 = load i8*, i8** %pw_gecos, align 8
  %tobool28 = icmp ne i8* %15, null
  br i1 %tobool28, label %if.then.29, label %if.end.74

if.then.29:                                       ; preds = %land.lhs.true.27
  store i8* null, i8** %gecos, align 8
  %16 = load i8*, i8** %login, align 8
  %tobool30 = icmp ne i8* %16, null
  br i1 %tobool30, label %if.then.31, label %if.else.61

if.then.31:                                       ; preds = %if.then.29
  store i64 0, i64* %amps, align 8
  %17 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_gecos32 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 4
  %18 = load i8*, i8** %pw_gecos32, align 8
  store i8* %18, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.31
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8, i8* %19, align 1
  %tobool33 = icmp ne i8 %20, 0
  br i1 %tobool33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8, i8* %21, align 1
  %conv = sext i8 %22 to i32
  %cmp = icmp eq i32 %conv, 38
  br i1 %cmp, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body
  %23 = load i64, i64* %amps, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %amps, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %24 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_gecos37 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 4
  %26 = load i8*, i8** %pw_gecos37, align 8
  %call38 = call i64 @strlen(i8* %26) #5
  %27 = load i64, i64* %amps, align 8
  %28 = load i8*, i8** %login, align 8
  %call39 = call i64 @strlen(i8* %28) #5
  %sub = sub i64 %call39, 1
  %mul = mul i64 %27, %sub
  %add = add i64 %call38, %mul
  %add40 = add i64 %add, 1
  %mul41 = mul i64 1, %add40
  %29 = alloca i8, i64 %mul41
  store i8* %29, i8** %gecos, align 8
  %30 = load i8*, i8** %gecos, align 8
  store i8* %30, i8** %cp2, align 8
  %31 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_gecos42 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 4
  %32 = load i8*, i8** %pw_gecos42, align 8
  store i8* %32, i8** %cp, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.58, %for.end
  %33 = load i8*, i8** %cp, align 8
  %34 = load i8, i8* %33, align 1
  %tobool44 = icmp ne i8 %34, 0
  br i1 %tobool44, label %for.body.45, label %for.end.60

for.body.45:                                      ; preds = %for.cond.43
  %35 = load i8*, i8** %cp, align 8
  %36 = load i8, i8* %35, align 1
  %conv46 = sext i8 %36 to i32
  %cmp47 = icmp eq i32 %conv46, 38
  br i1 %cmp47, label %if.then.49, label %if.else.55

if.then.49:                                       ; preds = %for.body.45
  %37 = load i8*, i8** %login, align 8
  %38 = load i8, i8* %37, align 1
  %conv50 = sext i8 %38 to i32
  %call51 = call i32 @toupper(i32 %conv50) #4
  %conv52 = trunc i32 %call51 to i8
  %39 = load i8*, i8** %cp2, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr53, i8** %cp2, align 8
  store i8 %conv52, i8* %39, align 1
  %40 = load i8*, i8** %cp2, align 8
  %41 = load i8*, i8** %login, align 8
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 1
  %call54 = call i8* @stpcpy(i8* %40, i8* %add.ptr) #4
  store i8* %call54, i8** %cp2, align 8
  br label %if.end.57

if.else.55:                                       ; preds = %for.body.45
  %42 = load i8*, i8** %cp, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %cp2, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr56, i8** %cp2, align 8
  store i8 %43, i8* %44, align 1
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.49
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %45 = load i8*, i8** %cp, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr59, i8** %cp, align 8
  br label %for.cond.43

for.end.60:                                       ; preds = %for.cond.43
  %46 = load i8*, i8** %cp2, align 8
  store i8 0, i8* %46, align 1
  br label %if.end.68

if.else.61:                                       ; preds = %if.then.29
  %47 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_gecos62 = getelementptr inbounds %struct.passwd, %struct.passwd* %47, i32 0, i32 4
  %48 = load i8*, i8** %pw_gecos62, align 8
  %call63 = call i64 @strlen(i8* %48) #5
  %add64 = add i64 %call63, 1
  %mul65 = mul i64 1, %add64
  %49 = alloca i8, i64 %mul65
  store i8* %49, i8** %gecos, align 8
  %50 = load i8*, i8** %gecos, align 8
  %51 = load %struct.passwd*, %struct.passwd** %passwd, align 8
  %pw_gecos66 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 4
  %52 = load i8*, i8** %pw_gecos66, align 8
  %call67 = call i8* @stpcpy(i8* %50, i8* %52) #4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.61, %for.end.60
  %53 = load i8*, i8** %gecos, align 8
  store i8* %53, i8** %name, align 8
  %54 = load i8*, i8** %gecos, align 8
  %call69 = call i8* @strchr(i8* %54, i32 44) #5
  store i8* %call69, i8** %comments, align 8
  %tobool70 = icmp ne i8* %call69, null
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.68
  %55 = load i8*, i8** %comments, align 8
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %comments, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr72, i8** %comments, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.27, %if.end.25
  %57 = load i8*, i8** %login, align 8
  %tobool75 = icmp ne i8* %57, null
  br i1 %tobool75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.74
  %58 = load i8*, i8** %login, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.74
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %58, %cond.true ], [ %call76, %cond.false ]
  %call77 = call i8* @xstrdup(i8* %cond)
  %59 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %login78 = getelementptr inbounds %struct.userdata, %struct.userdata* %59, i32 0, i32 0
  store i8* %call77, i8** %login78, align 8
  %60 = load i8*, i8** %name, align 8
  %tobool79 = icmp ne i8* %60, null
  br i1 %tobool79, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %cond.end
  %61 = load i8*, i8** %name, align 8
  br label %cond.end.83

cond.false.81:                                    ; preds = %cond.end
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.80
  %cond84 = phi i8* [ %61, %cond.true.80 ], [ %call82, %cond.false.81 ]
  %call85 = call i8* @xstrdup(i8* %cond84)
  %62 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %name86 = getelementptr inbounds %struct.userdata, %struct.userdata* %62, i32 0, i32 1
  store i8* %call85, i8** %name86, align 8
  %63 = load i8*, i8** %comments, align 8
  %tobool87 = icmp ne i8* %63, null
  br i1 %tobool87, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %cond.end.83
  %64 = load i8*, i8** %comments, align 8
  %call89 = call i8* @xstrdup(i8* %64)
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.end.83
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.88
  %cond92 = phi i8* [ %call89, %cond.true.88 ], [ null, %cond.false.90 ]
  %65 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %comments93 = getelementptr inbounds %struct.userdata, %struct.userdata* %65, i32 0, i32 2
  store i8* %cond92, i8** %comments93, align 8
  %66 = load i8*, i8** %home, align 8
  %tobool94 = icmp ne i8* %66, null
  br i1 %tobool94, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.end.91
  %67 = load i8*, i8** %home, align 8
  br label %cond.end.97

cond.false.96:                                    ; preds = %cond.end.91
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.95
  %cond98 = phi i8* [ %67, %cond.true.95 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %cond.false.96 ]
  %call99 = call i8* @xstrdup(i8* %cond98)
  %68 = load %struct.userdata*, %struct.userdata** %udata.addr, align 8
  %home100 = getelementptr inbounds %struct.userdata, %struct.userdata* %68, i32 0, i32 3
  store i8* %call99, i8** %home100, align 8
  ret void
}

declare %struct.passwd* @getpwuid(i32) #2

; Function Attrs: nounwind
declare i32 @getuid() #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @toupper(i32) #1

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i8* @xstrdup(i8*) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
