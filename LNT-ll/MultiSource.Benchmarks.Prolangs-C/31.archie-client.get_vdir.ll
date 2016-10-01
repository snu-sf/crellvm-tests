; ModuleID = './MultiSource.Benchmarks.Prolangs-C/31.archie-client.get_vdir.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdir = type { i32, i32, i64, %struct.acl*, %struct.pfile*, %struct.vlink*, %struct.vlink*, %struct.vlink*, %struct.vdir*, %struct.vdir* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.ptext = type { i32, i8*, [1314 x i8], i64, %struct.ptext*, %struct.ptext*, i32 }
%struct.pfs_auth_info = type { [100 x i8], [250 x i8] }

@perrno = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"+ATTRIBUTES\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"+EXPAND\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"+LEXPAND\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%#$PRobably_nOn_existaNT$#%\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"VERSION %d\0AAUTHENTICATOR %s %s\0ADIRECTORY ASCII %s\0ALIST %s COMPONENTS %s%s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"LINK-INFO\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"LINK %c %s %s %s %s %s %s %d %d\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"FORWARDED\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"FORWARDED %s %s %s %s %d %d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"NONE-FOUND\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"UNRESOLVED\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"UNRESOLVED %s\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"VERSION-NOT-SUPPORTED\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1

; Function Attrs: nounwind uwtable
define i32 @get_vdir(i8* %dhost, i8* %dfile, i8* %components, %struct.vdir* %dir, i64 %flags, %struct.vlink* %filters, i8* %acomp) #0 {
entry:
  %retval = alloca i32, align 4
  %dhost.addr = alloca i8*, align 8
  %dfile.addr = alloca i8*, align 8
  %components.addr = alloca i8*, align 8
  %dir.addr = alloca %struct.vdir*, align 8
  %flags.addr = alloca i64, align 8
  %filters.addr = alloca %struct.vlink*, align 8
  %acomp.addr = alloca i8*, align 8
  %request = alloca %struct.ptext*, align 8
  %resp = alloca %struct.ptext*, align 8
  %ulcomp = alloca [1024 x i8], align 16
  %comp = alloca i8*, align 8
  %cur_link = alloca %struct.vlink*, align 8
  %exp = alloca %struct.vlink*, align 8
  %pul = alloca %struct.vlink*, align 8
  %l = alloca %struct.vlink*, align 8
  %mcomp = alloca i32, align 4
  %unresp = alloca i32, align 4
  %getattrib = alloca i32, align 4
  %vl_insert_flag = alloca i32, align 4
  %fwdcnt = alloca i32, align 4
  %no_links = alloca i32, align 4
  %options = alloca [40 x i8], align 16
  %opt = alloca i8*, align 8
  %authinfo = alloca %struct.pfs_auth_info*, align 8
  %vtmp = alloca %struct.ptext*, align 8
  %line = alloca i8*, align 8
  %l_linktype = alloca i8, align 1
  %l_name = alloca [4256 x i8], align 16
  %l_type = alloca [4256 x i8], align 16
  %l_htype = alloca [4256 x i8], align 16
  %l_host = alloca [4256 x i8], align 16
  %l_ntype = alloca [4256 x i8], align 16
  %l_fname = alloca [4256 x i8], align 16
  %l_version = alloca i32, align 4
  %t_unresolved = alloca [4256 x i8], align 16
  %l_magic = alloca i32, align 4
  %tmp = alloca i32, align 4
  %at = alloca %struct.pattrib*, align 8
  %last_at = alloca %struct.pattrib*, align 8
  %ol = alloca %struct.vlink*, align 8
  store i8* %dhost, i8** %dhost.addr, align 8
  store i8* %dfile, i8** %dfile.addr, align 8
  store i8* %components, i8** %components.addr, align 8
  store %struct.vdir* %dir, %struct.vdir** %dir.addr, align 8
  store i64 %flags, i64* %flags.addr, align 8
  store %struct.vlink* %filters, %struct.vlink** %filters.addr, align 8
  store i8* %acomp, i8** %acomp.addr, align 8
  %0 = load i8*, i8** %components.addr, align 8
  store i8* %0, i8** %comp, align 8
  store %struct.vlink* null, %struct.vlink** %cur_link, align 8
  store %struct.vlink* null, %struct.vlink** %exp, align 8
  store %struct.vlink* null, %struct.vlink** %pul, align 8
  store i32 0, i32* %getattrib, align 4
  store i32 20, i32* %fwdcnt, align 4
  store i32 0, i32* %no_links, align 4
  %1 = load i8*, i8** %components.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %components.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %comp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i8*, i8** %acomp.addr, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.vlink*, %struct.vlink** %filters.addr, align 8
  %tobool3 = icmp ne %struct.vlink* %5, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %mcomp, align 4
  br label %if.end.5

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %mcomp, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %6 = load i64, i64* %flags.addr, align 8
  %and = and i64 %6, 32
  %tobool6 = icmp ne i64 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %7 = load i32, i32* %getattrib, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %getattrib, align 4
  %8 = load i64, i64* %flags.addr, align 8
  %and8 = and i64 %8, -33
  store i64 %and8, i64* %flags.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %9 = load i64, i64* %flags.addr, align 8
  %and10 = and i64 %9, 64
  %tobool11 = icmp ne i64 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.9
  store i32 2, i32* %vl_insert_flag, align 4
  br label %if.end.14

if.else.13:                                       ; preds = %if.end.9
  store i32 1, i32* %vl_insert_flag, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i64, i64* %flags.addr, align 8
  %and15 = and i64 %10, -65
  store i64 %and15, i64* %flags.addr, align 8
  %11 = load %struct.vlink*, %struct.vlink** %filters.addr, align 8
  %tobool16 = icmp ne %struct.vlink* %11, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i8* null, i8** %comp, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  store i32 0, i32* @perrno, align 4
  %call = call %struct.pfs_auth_info* (i32, ...) bitcast (%struct.pfs_auth_info* (...)* @get_pauth to %struct.pfs_auth_info* (i32, ...)*)(i32 1)
  store %struct.pfs_auth_info* %call, %struct.pfs_auth_info** %authinfo, align 8
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %options, i32 0, i32 0
  store i8 0, i8* %arraydecay, align 1
  %12 = load i32, i32* %getattrib, align 4
  %tobool19 = icmp ne i32 %12, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.18
  %arraydecay21 = getelementptr inbounds [40 x i8], [40 x i8]* %options, i32 0, i32 0
  %call22 = call i8* @strcat(i8* %arraydecay21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %13 = load i64, i64* %flags.addr, align 8
  %and23 = and i64 %13, -33
  store i64 %and23, i64* %flags.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.18
  %14 = load %struct.vlink*, %struct.vlink** %filters.addr, align 8
  %tobool25 = icmp ne %struct.vlink* %14, null
  br i1 %tobool25, label %if.end.36, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %15 = load i64, i64* %flags.addr, align 8
  %cmp = icmp eq i64 %15, 7
  br i1 %cmp, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.then.26
  %arraydecay28 = getelementptr inbounds [40 x i8], [40 x i8]* %options, i32 0, i32 0
  %call29 = call i8* @strcat(i8* %arraydecay28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.26
  %16 = load i64, i64* %flags.addr, align 8
  %cmp31 = icmp eq i64 %16, 3
  br i1 %cmp31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.30
  %arraydecay33 = getelementptr inbounds [40 x i8], [40 x i8]* %options, i32 0, i32 0
  %call34 = call i8* @strcat(i8* %arraydecay33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.24
  %17 = load i64, i64* %flags.addr, align 8
  %cmp37 = icmp eq i64 %17, 8
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8** %comp, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  %arraydecay40 = getelementptr inbounds [40 x i8], [40 x i8]* %options, i32 0, i32 0
  %18 = load i8, i8* %arraydecay40, align 1
  %tobool41 = icmp ne i8 %18, 0
  br i1 %tobool41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.end.39
  %arraydecay43 = getelementptr inbounds [40 x i8], [40 x i8]* %options, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay43, i64 1
  store i8* %add.ptr, i8** %opt, align 8
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.39
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %opt, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.42
  br label %startover

startover:                                        ; preds = %if.then.349, %if.end.204, %if.end.45
  %call46 = call %struct.ptext* (...) @ptalloc()
  store %struct.ptext* %call46, %struct.ptext** %request, align 8
  %19 = load %struct.ptext*, %struct.ptext** %request, align 8
  %start = getelementptr inbounds %struct.ptext, %struct.ptext* %19, i32 0, i32 1
  %20 = load i8*, i8** %start, align 8
  %21 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** %authinfo, align 8
  %auth_type = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %21, i32 0, i32 0
  %arraydecay47 = getelementptr inbounds [100 x i8], [100 x i8]* %auth_type, i32 0, i32 0
  %22 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** %authinfo, align 8
  %authenticator = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %22, i32 0, i32 1
  %arraydecay48 = getelementptr inbounds [250 x i8], [250 x i8]* %authenticator, i32 0, i32 0
  %23 = load i8*, i8** %dfile.addr, align 8
  %24 = load i8*, i8** %opt, align 8
  %25 = load i8*, i8** %comp, align 8
  %tobool49 = icmp ne i8* %25, null
  br i1 %tobool49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %startover
  %26 = load i8*, i8** %comp, align 8
  br label %cond.end

cond.false:                                       ; preds = %startover
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %26, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %cond.false ]
  %27 = load i32, i32* %mcomp, align 4
  %tobool50 = icmp ne i32 %27, 0
  %cond51 = select i1 %tobool50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)
  %28 = load i32, i32* %mcomp, align 4
  %tobool52 = icmp ne i32 %28, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end
  %29 = load i8*, i8** %acomp.addr, align 8
  br label %cond.end.55

cond.false.54:                                    ; preds = %cond.end
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.53
  %cond56 = phi i8* [ %29, %cond.true.53 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %cond.false.54 ]
  %call57 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* %arraydecay47, i8* %arraydecay48, i8* %23, i8* %24, i8* %cond, i8* %cond51, i8* %cond56) #3
  %30 = load %struct.ptext*, %struct.ptext** %request, align 8
  %start58 = getelementptr inbounds %struct.ptext, %struct.ptext* %30, i32 0, i32 1
  %31 = load i8*, i8** %start58, align 8
  %call59 = call i64 @strlen(i8* %31)
  %conv = trunc i64 %call59 to i32
  %32 = load %struct.ptext*, %struct.ptext** %request, align 8
  %length = getelementptr inbounds %struct.ptext, %struct.ptext* %32, i32 0, i32 0
  store i32 %conv, i32* %length, align 4
  %33 = load %struct.ptext*, %struct.ptext** %request, align 8
  %34 = load i8*, i8** %dhost.addr, align 8
  %call60 = call %struct.ptext* (%struct.ptext*, i8*, i32, ...) bitcast (%struct.ptext* (...)* @dirsend to %struct.ptext* (%struct.ptext*, i8*, i32, ...)*)(%struct.ptext* %33, i8* %34, i32 0)
  store %struct.ptext* %call60, %struct.ptext** %resp, align 8
  %35 = load %struct.ptext*, %struct.ptext** %resp, align 8
  %cmp61 = icmp eq %struct.ptext* %35, null
  br i1 %cmp61, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %cond.end.55
  %36 = load %struct.vlink*, %struct.vlink** %exp, align 8
  %tobool64 = icmp ne %struct.vlink* %36, null
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.then.63
  %37 = load %struct.vlink*, %struct.vlink** %exp, align 8
  %expanded = getelementptr inbounds %struct.vlink, %struct.vlink* %37, i32 0, i32 3
  store i32 -1, i32* %expanded, align 4
  br label %if.end.67

if.else.66:                                       ; preds = %if.then.63
  %38 = load i32, i32* @perrno, align 4
  store i32 %38, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.then.65
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %cond.end.55
  store i32 0, i32* %unresp, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.68
  %39 = load %struct.ptext*, %struct.ptext** %resp, align 8
  %tobool69 = icmp ne %struct.ptext* %39, null
  br i1 %tobool69, label %while.body, label %while.end.290

while.body:                                       ; preds = %while.cond
  %40 = load %struct.ptext*, %struct.ptext** %resp, align 8
  store %struct.ptext* %40, %struct.ptext** %vtmp, align 8
  %41 = load %struct.ptext*, %struct.ptext** %resp, align 8
  %start70 = getelementptr inbounds %struct.ptext, %struct.ptext* %41, i32 0, i32 1
  %42 = load i8*, i8** %start70, align 8
  store i8* %42, i8** %line, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %43 = load i8*, i8** %line, align 8
  %cmp71 = icmp ne i8* %43, null
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i8*, i8** %line, align 8
  %45 = load i8, i8* %44, align 1
  %conv73 = sext i8 %45 to i32
  switch i32 %conv73, label %sw.default [
    i32 76, label %sw.bb
    i32 70, label %sw.bb.183
    i32 77, label %sw.bb.211
    i32 80, label %sw.bb.211
    i32 78, label %sw.bb.212
    i32 85, label %sw.bb.238
    i32 86, label %sw.bb.275
  ]

sw.bb:                                            ; preds = %for.body
  %46 = load i8*, i8** %line, align 8
  %call74 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i64 9)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.99

if.then.77:                                       ; preds = %sw.bb
  %47 = load i8*, i8** %line, align 8
  %call80 = call %struct.pattrib* (i8*, ...) bitcast (%struct.pattrib* (...)* @parse_attribute to %struct.pattrib* (i8*, ...)*)(i8* %47)
  store %struct.pattrib* %call80, %struct.pattrib** %at, align 8
  %48 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %tobool81 = icmp ne %struct.pattrib* %48, null
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %if.then.77
  br label %sw.epilog

if.end.83:                                        ; preds = %if.then.77
  %49 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %tobool84 = icmp ne %struct.vlink* %49, null
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.end.83
  store i32 252, i32* @perrno, align 4
  %50 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  call void (%struct.pattrib*, ...) bitcast (void (...)* @atfree to void (%struct.pattrib*, ...)*)(%struct.pattrib* %50)
  br label %sw.epilog

if.end.86:                                        ; preds = %if.end.83
  %51 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %lattrib = getelementptr inbounds %struct.vlink, %struct.vlink* %51, i32 0, i32 17
  %52 = load %struct.pattrib*, %struct.pattrib** %lattrib, align 8
  %tobool87 = icmp ne %struct.pattrib* %52, null
  br i1 %tobool87, label %if.then.88, label %if.else.95

if.then.88:                                       ; preds = %if.end.86
  %53 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %lattrib89 = getelementptr inbounds %struct.vlink, %struct.vlink* %53, i32 0, i32 17
  %54 = load %struct.pattrib*, %struct.pattrib** %lattrib89, align 8
  store %struct.pattrib* %54, %struct.pattrib** %last_at, align 8
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.92, %if.then.88
  %55 = load %struct.pattrib*, %struct.pattrib** %last_at, align 8
  %next = getelementptr inbounds %struct.pattrib, %struct.pattrib* %55, i32 0, i32 5
  %56 = load %struct.pattrib*, %struct.pattrib** %next, align 8
  %tobool91 = icmp ne %struct.pattrib* %56, null
  br i1 %tobool91, label %while.body.92, label %while.end

while.body.92:                                    ; preds = %while.cond.90
  %57 = load %struct.pattrib*, %struct.pattrib** %last_at, align 8
  %next93 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %57, i32 0, i32 5
  %58 = load %struct.pattrib*, %struct.pattrib** %next93, align 8
  store %struct.pattrib* %58, %struct.pattrib** %last_at, align 8
  br label %while.cond.90

while.end:                                        ; preds = %while.cond.90
  %59 = load %struct.pattrib*, %struct.pattrib** %last_at, align 8
  %60 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %previous = getelementptr inbounds %struct.pattrib, %struct.pattrib* %60, i32 0, i32 4
  store %struct.pattrib* %59, %struct.pattrib** %previous, align 8
  %61 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %62 = load %struct.pattrib*, %struct.pattrib** %last_at, align 8
  %next94 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %62, i32 0, i32 5
  store %struct.pattrib* %61, %struct.pattrib** %next94, align 8
  br label %if.end.98

if.else.95:                                       ; preds = %if.end.86
  %63 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %64 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %lattrib96 = getelementptr inbounds %struct.vlink, %struct.vlink* %64, i32 0, i32 17
  store %struct.pattrib* %63, %struct.pattrib** %lattrib96, align 8
  %65 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %previous97 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %65, i32 0, i32 4
  store %struct.pattrib* null, %struct.pattrib** %previous97, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %while.end
  br label %sw.epilog

if.end.99:                                        ; preds = %sw.bb
  %66 = load i8*, i8** %line, align 8
  %call100 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 4)
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.99
  br label %scanerr

if.end.104:                                       ; preds = %if.end.99
  %67 = load i64, i64* %flags.addr, align 8
  %cmp105 = icmp eq i64 %67, 8
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.104
  br label %sw.epilog

if.end.108:                                       ; preds = %if.end.104
  %68 = load i32, i32* %no_links, align 4
  %inc109 = add nsw i32 %68, 1
  store i32 %inc109, i32* %no_links, align 4
  %tobool110 = icmp ne i32 %68, 0
  br i1 %tobool110, label %if.end.122, label %if.then.111

if.then.111:                                      ; preds = %if.end.108
  %69 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links = getelementptr inbounds %struct.vdir, %struct.vdir* %69, i32 0, i32 5
  %70 = load %struct.vlink*, %struct.vlink** %links, align 8
  %tobool112 = icmp ne %struct.vlink* %70, null
  br i1 %tobool112, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.then.111
  %71 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links114 = getelementptr inbounds %struct.vdir, %struct.vdir* %71, i32 0, i32 5
  %72 = load %struct.vlink*, %struct.vlink** %links114, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* %72)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.then.111
  %73 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links116 = getelementptr inbounds %struct.vdir, %struct.vdir* %73, i32 0, i32 5
  store %struct.vlink* null, %struct.vlink** %links116, align 8
  %74 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %ulinks = getelementptr inbounds %struct.vdir, %struct.vdir* %74, i32 0, i32 7
  %75 = load %struct.vlink*, %struct.vlink** %ulinks, align 8
  %tobool117 = icmp ne %struct.vlink* %75, null
  br i1 %tobool117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.end.115
  %76 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %ulinks119 = getelementptr inbounds %struct.vdir, %struct.vdir* %76, i32 0, i32 7
  %77 = load %struct.vlink*, %struct.vlink** %ulinks119, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* %77)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.end.115
  %78 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %ulinks121 = getelementptr inbounds %struct.vdir, %struct.vdir* %78, i32 0, i32 7
  store %struct.vlink* null, %struct.vlink** %ulinks121, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.120, %if.end.108
  %call123 = call %struct.vlink* (...) @vlalloc()
  store %struct.vlink* %call123, %struct.vlink** %cur_link, align 8
  %79 = load i8*, i8** %line, align 8
  %arraydecay124 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_type, i32 0, i32 0
  %arraydecay125 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_name, i32 0, i32 0
  %arraydecay126 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_htype, i32 0, i32 0
  %arraydecay127 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_host, i32 0, i32 0
  %arraydecay128 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_ntype, i32 0, i32 0
  %arraydecay129 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_fname, i32 0, i32 0
  %80 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %version = getelementptr inbounds %struct.vlink, %struct.vlink* %80, i32 0, i32 11
  %81 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %f_magic_no = getelementptr inbounds %struct.vlink, %struct.vlink* %81, i32 0, i32 12
  %call130 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i8* %l_linktype, i8* %arraydecay124, i8* %arraydecay125, i8* %arraydecay126, i8* %arraydecay127, i8* %arraydecay128, i8* %arraydecay129, i64* %version, i64* %f_magic_no) #3
  store i32 %call130, i32* %tmp, align 4
  %82 = load i32, i32* %tmp, align 4
  %cmp131 = icmp ne i32 %82, 9
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.122
  store i32 252, i32* @perrno, align 4
  %83 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* %83)
  br label %sw.epilog

if.end.134:                                       ; preds = %if.end.122
  %84 = load i8, i8* %l_linktype, align 1
  %85 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %linktype = getelementptr inbounds %struct.vlink, %struct.vlink* %85, i32 0, i32 2
  store i8 %84, i8* %linktype, align 1
  %arraydecay135 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_type, i32 0, i32 0
  %86 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %type = getelementptr inbounds %struct.vlink, %struct.vlink* %86, i32 0, i32 4
  %87 = load i8*, i8** %type, align 8
  %call136 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay135, i8* %87)
  %88 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %type137 = getelementptr inbounds %struct.vlink, %struct.vlink* %88, i32 0, i32 4
  store i8* %call136, i8** %type137, align 8
  %arraydecay138 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_name, i32 0, i32 0
  %call139 = call i8* (i8*, ...) bitcast (i8* (...)* @unquote to i8* (i8*, ...)*)(i8* %arraydecay138)
  %89 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %name = getelementptr inbounds %struct.vlink, %struct.vlink* %89, i32 0, i32 1
  %90 = load i8*, i8** %name, align 8
  %call140 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %call139, i8* %90)
  %91 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %name141 = getelementptr inbounds %struct.vlink, %struct.vlink* %91, i32 0, i32 1
  store i8* %call140, i8** %name141, align 8
  %arraydecay142 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_htype, i32 0, i32 0
  %92 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %hosttype = getelementptr inbounds %struct.vlink, %struct.vlink* %92, i32 0, i32 7
  %93 = load i8*, i8** %hosttype, align 8
  %call143 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay142, i8* %93)
  %94 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %hosttype144 = getelementptr inbounds %struct.vlink, %struct.vlink* %94, i32 0, i32 7
  store i8* %call143, i8** %hosttype144, align 8
  %arraydecay145 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_host, i32 0, i32 0
  %95 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %host = getelementptr inbounds %struct.vlink, %struct.vlink* %95, i32 0, i32 8
  %96 = load i8*, i8** %host, align 8
  %call146 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay145, i8* %96)
  %97 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %host147 = getelementptr inbounds %struct.vlink, %struct.vlink* %97, i32 0, i32 8
  store i8* %call146, i8** %host147, align 8
  %arraydecay148 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_ntype, i32 0, i32 0
  %98 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %nametype = getelementptr inbounds %struct.vlink, %struct.vlink* %98, i32 0, i32 9
  %99 = load i8*, i8** %nametype, align 8
  %call149 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay148, i8* %99)
  %100 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %nametype150 = getelementptr inbounds %struct.vlink, %struct.vlink* %100, i32 0, i32 9
  store i8* %call149, i8** %nametype150, align 8
  %arraydecay151 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_fname, i32 0, i32 0
  %101 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %filename = getelementptr inbounds %struct.vlink, %struct.vlink* %101, i32 0, i32 10
  %102 = load i8*, i8** %filename, align 8
  %call152 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* %arraydecay151, i8* %102)
  %103 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %filename153 = getelementptr inbounds %struct.vlink, %struct.vlink* %103, i32 0, i32 10
  store i8* %call152, i8** %filename153, align 8
  %104 = load i32, i32* %mcomp, align 4
  %tobool154 = icmp ne i32 %104, 0
  br i1 %tobool154, label %if.end.165, label %land.lhs.true.155

land.lhs.true.155:                                ; preds = %if.end.134
  %105 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %linktype156 = getelementptr inbounds %struct.vlink, %struct.vlink* %105, i32 0, i32 2
  %106 = load i8, i8* %linktype156, align 1
  %conv157 = sext i8 %106 to i32
  %cmp158 = icmp eq i32 %conv157, 76
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.165

land.lhs.true.160:                                ; preds = %land.lhs.true.155
  %107 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %name161 = getelementptr inbounds %struct.vlink, %struct.vlink* %107, i32 0, i32 1
  %108 = load i8*, i8** %name161, align 8
  %109 = load i8*, i8** %comp, align 8
  %call162 = call i32 @wcmatch(i8* %108, i8* %109)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.end.165, label %if.then.164

if.then.164:                                      ; preds = %land.lhs.true.160
  %110 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* %110)
  br label %sw.epilog

if.end.165:                                       ; preds = %land.lhs.true.160, %land.lhs.true.155, %if.end.134
  %111 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %linktype166 = getelementptr inbounds %struct.vlink, %struct.vlink* %111, i32 0, i32 2
  %112 = load i8, i8* %linktype166, align 1
  %conv167 = sext i8 %112 to i32
  %cmp168 = icmp eq i32 %conv167, 76
  br i1 %cmp168, label %if.then.170, label %if.else.172

if.then.170:                                      ; preds = %if.end.165
  %113 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %114 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %115 = load i32, i32* %vl_insert_flag, align 4
  %call171 = call i32 @vl_insert(%struct.vlink* %113, %struct.vdir* %114, i32 %115)
  br label %if.end.182

if.else.172:                                      ; preds = %if.end.165
  %116 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  %117 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %118 = load %struct.vlink*, %struct.vlink** %pul, align 8
  %call173 = call i32 @ul_insert(%struct.vlink* %116, %struct.vdir* %117, %struct.vlink* %118)
  store i32 %call173, i32* %tmp, align 4
  %119 = load %struct.vlink*, %struct.vlink** %pul, align 8
  %tobool174 = icmp ne %struct.vlink* %119, null
  br i1 %tobool174, label %land.lhs.true.175, label %if.end.181

land.lhs.true.175:                                ; preds = %if.else.172
  %120 = load i32, i32* %tmp, align 4
  %tobool176 = icmp ne i32 %120, 0
  br i1 %tobool176, label %lor.lhs.false.177, label %if.then.180

lor.lhs.false.177:                                ; preds = %land.lhs.true.175
  %121 = load i32, i32* %tmp, align 4
  %cmp178 = icmp eq i32 %121, 26
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %lor.lhs.false.177, %land.lhs.true.175
  %122 = load %struct.vlink*, %struct.vlink** %cur_link, align 8
  store %struct.vlink* %122, %struct.vlink** %pul, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %lor.lhs.false.177, %if.else.172
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.170
  br label %sw.epilog

sw.bb.183:                                        ; preds = %for.body
  %123 = load i8*, i8** %line, align 8
  %call184 = call i32 @strncmp(i8* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i64 9)
  %cmp185 = icmp eq i32 %call184, 0
  br i1 %cmp185, label %if.then.187, label %if.end.205

if.then.187:                                      ; preds = %sw.bb.183
  %124 = load i32, i32* %fwdcnt, align 4
  %dec = add nsw i32 %124, -1
  store i32 %dec, i32* %fwdcnt, align 4
  %cmp188 = icmp sle i32 %124, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.then.187
  %125 = load %struct.ptext*, %struct.ptext** %resp, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %125)
  store i32 235, i32* @perrno, align 4
  %126 = load i32, i32* @perrno, align 4
  store i32 %126, i32* %retval
  br label %return

if.end.191:                                       ; preds = %if.then.187
  %127 = load i8*, i8** %line, align 8
  %arraydecay192 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_htype, i32 0, i32 0
  %arraydecay193 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_host, i32 0, i32 0
  %arraydecay194 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_ntype, i32 0, i32 0
  %arraydecay195 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_fname, i32 0, i32 0
  %call196 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay192, i8* %arraydecay193, i8* %arraydecay194, i8* %arraydecay195, i32* %l_version, i32* %l_magic) #3
  store i32 %call196, i32* %tmp, align 4
  %arraydecay197 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_host, i32 0, i32 0
  %call198 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* %arraydecay197)
  store i8* %call198, i8** %dhost.addr, align 8
  %arraydecay199 = getelementptr inbounds [4256 x i8], [4256 x i8]* %l_fname, i32 0, i32 0
  %call200 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* %arraydecay199)
  store i8* %call200, i8** %dfile.addr, align 8
  %128 = load i32, i32* %tmp, align 4
  %cmp201 = icmp slt i32 %128, 4
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.191
  store i32 252, i32* @perrno, align 4
  br label %sw.epilog

if.end.204:                                       ; preds = %if.end.191
  %129 = load %struct.ptext*, %struct.ptext** %resp, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %129)
  br label %startover

if.end.205:                                       ; preds = %sw.bb.183
  %130 = load i8*, i8** %line, align 8
  %call206 = call i32 @strncmp(i8* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i64 6)
  %cmp207 = icmp ne i32 %call206, 0
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.end.205
  br label %scanerr

if.end.210:                                       ; preds = %if.end.205
  br label %sw.epilog

sw.bb.211:                                        ; preds = %for.body, %for.body
  br label %sw.epilog

sw.bb.212:                                        ; preds = %for.body
  %131 = load i8*, i8** %line, align 8
  %call213 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i64 10)
  %cmp214 = icmp eq i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.end.237

if.then.216:                                      ; preds = %sw.bb.212
  %132 = load i64, i64* %flags.addr, align 8
  %cmp217 = icmp eq i64 %132, 8
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.216
  br label %sw.epilog

if.end.220:                                       ; preds = %if.then.216
  %133 = load i32, i32* %no_links, align 4
  %inc221 = add nsw i32 %133, 1
  store i32 %inc221, i32* %no_links, align 4
  %tobool222 = icmp ne i32 %133, 0
  br i1 %tobool222, label %if.end.236, label %if.then.223

if.then.223:                                      ; preds = %if.end.220
  %134 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links224 = getelementptr inbounds %struct.vdir, %struct.vdir* %134, i32 0, i32 5
  %135 = load %struct.vlink*, %struct.vlink** %links224, align 8
  %tobool225 = icmp ne %struct.vlink* %135, null
  br i1 %tobool225, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %if.then.223
  %136 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links227 = getelementptr inbounds %struct.vdir, %struct.vdir* %136, i32 0, i32 5
  %137 = load %struct.vlink*, %struct.vlink** %links227, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* %137)
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %if.then.223
  %138 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %ulinks229 = getelementptr inbounds %struct.vdir, %struct.vdir* %138, i32 0, i32 7
  %139 = load %struct.vlink*, %struct.vlink** %ulinks229, align 8
  %tobool230 = icmp ne %struct.vlink* %139, null
  br i1 %tobool230, label %if.then.231, label %if.end.233

if.then.231:                                      ; preds = %if.end.228
  %140 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %ulinks232 = getelementptr inbounds %struct.vdir, %struct.vdir* %140, i32 0, i32 7
  %141 = load %struct.vlink*, %struct.vlink** %ulinks232, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* %141)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.231, %if.end.228
  %142 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links234 = getelementptr inbounds %struct.vdir, %struct.vdir* %142, i32 0, i32 5
  store %struct.vlink* null, %struct.vlink** %links234, align 8
  %143 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %ulinks235 = getelementptr inbounds %struct.vdir, %struct.vdir* %143, i32 0, i32 7
  store %struct.vlink* null, %struct.vlink** %ulinks235, align 8
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.233, %if.end.220
  br label %sw.epilog

if.end.237:                                       ; preds = %sw.bb.212
  br label %scanerr

sw.bb.238:                                        ; preds = %for.body
  %144 = load i8*, i8** %line, align 8
  %call239 = call i32 @strncmp(i8* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i64 10)
  %cmp240 = icmp ne i32 %call239, 0
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %sw.bb.238
  br label %scanerr

if.end.243:                                       ; preds = %sw.bb.238
  %145 = load i8*, i8** %line, align 8
  %arraydecay244 = getelementptr inbounds [4256 x i8], [4256 x i8]* %t_unresolved, i32 0, i32 0
  %call245 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay244) #3
  store i32 %call245, i32* %tmp, align 4
  %146 = load i32, i32* %tmp, align 4
  %cmp246 = icmp slt i32 %146, 1
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.243
  store i32 252, i32* @perrno, align 4
  br label %sw.epilog

if.end.249:                                       ; preds = %if.end.243
  %arraydecay250 = getelementptr inbounds [4256 x i8], [4256 x i8]* %t_unresolved, i32 0, i32 0
  %call251 = call i64 @strlen(i8* %arraydecay250)
  %147 = load i8*, i8** %acomp.addr, align 8
  %call252 = call i64 @strlen(i8* %147)
  %cmp253 = icmp ult i64 %call251, %call252
  br i1 %cmp253, label %if.then.255, label %if.end.274

if.then.255:                                      ; preds = %if.end.249
  %arraydecay256 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ulcomp, i32 0, i32 0
  %148 = load i8*, i8** %acomp.addr, align 8
  %call257 = call i8* @strcpy(i8* %arraydecay256, i8* %148)
  %arraydecay258 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ulcomp, i32 0, i32 0
  %149 = load i8*, i8** %acomp.addr, align 8
  %call259 = call i64 @strlen(i8* %149)
  %add.ptr260 = getelementptr inbounds i8, i8* %arraydecay258, i64 %call259
  %arraydecay261 = getelementptr inbounds [4256 x i8], [4256 x i8]* %t_unresolved, i32 0, i32 0
  %call262 = call i64 @strlen(i8* %arraydecay261)
  %idx.neg = sub i64 0, %call262
  %add.ptr263 = getelementptr inbounds i8, i8* %add.ptr260, i64 %idx.neg
  %add.ptr264 = getelementptr inbounds i8, i8* %add.ptr263, i64 -1
  store i8 0, i8* %add.ptr264, align 1
  %arraydecay265 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ulcomp, i32 0, i32 0
  %call266 = call i8* @strrchr(i8* %arraydecay265, i32 47)
  store i8* %call266, i8** %comp, align 8
  %150 = load i8*, i8** %comp, align 8
  %tobool267 = icmp ne i8* %150, null
  br i1 %tobool267, label %if.then.268, label %if.else.269

if.then.268:                                      ; preds = %if.then.255
  %151 = load i8*, i8** %comp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %incdec.ptr, i8** %comp, align 8
  br label %if.end.271

if.else.269:                                      ; preds = %if.then.255
  %arraydecay270 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ulcomp, i32 0, i32 0
  store i8* %arraydecay270, i8** %comp, align 8
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.269, %if.then.268
  %152 = load i8*, i8** %acomp.addr, align 8
  %arraydecay272 = getelementptr inbounds [4256 x i8], [4256 x i8]* %t_unresolved, i32 0, i32 0
  %call273 = call i8* @strcpy(i8* %152, i8* %arraydecay272)
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.271, %if.end.249
  store i32 1, i32* %unresp, align 4
  br label %sw.epilog

sw.bb.275:                                        ; preds = %for.body
  %153 = load i8*, i8** %line, align 8
  %call276 = call i32 @strncmp(i8* %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i64 21)
  %cmp277 = icmp eq i32 %call276, 0
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %sw.bb.275
  store i32 245, i32* @perrno, align 4
  %154 = load i32, i32* @perrno, align 4
  store i32 %154, i32* %retval
  br label %return

if.end.280:                                       ; preds = %sw.bb.275
  br label %scanerr

scanerr:                                          ; preds = %if.end.280, %if.then.242, %if.end.237, %if.then.209, %if.then.103
  br label %sw.default

sw.default:                                       ; preds = %for.body, %scanerr
  %155 = load i8*, i8** %line, align 8
  %156 = load i8, i8* %155, align 1
  %conv281 = sext i8 %156 to i32
  %tobool282 = icmp ne i32 %conv281, 0
  br i1 %tobool282, label %land.lhs.true.283, label %if.end.287

land.lhs.true.283:                                ; preds = %sw.default
  %157 = load i8*, i8** %line, align 8
  %call284 = call i32 @scan_error(i8* %157)
  store i32 %call284, i32* %tmp, align 4
  %tobool285 = icmp ne i32 %call284, 0
  br i1 %tobool285, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %land.lhs.true.283
  %158 = load %struct.ptext*, %struct.ptext** %resp, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* %158)
  %159 = load i32, i32* %tmp, align 4
  store i32 %159, i32* %retval
  br label %return

if.end.287:                                       ; preds = %land.lhs.true.283, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.287, %if.end.274, %if.then.248, %if.end.236, %if.then.219, %sw.bb.211, %if.end.210, %if.then.203, %if.end.182, %if.then.164, %if.then.133, %if.then.107, %if.end.98, %if.then.85, %if.then.82
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %160 = load i8*, i8** %line, align 8
  %call288 = call i8* (i8*, ...) bitcast (i8* (...)* @nxtline to i8* (i8*, ...)*)(i8* %160)
  store i8* %call288, i8** %line, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %161 = load %struct.ptext*, %struct.ptext** %resp, align 8
  %next289 = getelementptr inbounds %struct.ptext, %struct.ptext* %161, i32 0, i32 5
  %162 = load %struct.ptext*, %struct.ptext** %next289, align 8
  store %struct.ptext* %162, %struct.ptext** %resp, align 8
  %163 = load %struct.ptext*, %struct.ptext** %vtmp, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptfree to void (%struct.ptext*, ...)*)(%struct.ptext* %163)
  br label %while.cond

while.end.290:                                    ; preds = %while.cond
  %164 = load i32, i32* %mcomp, align 4
  %tobool291 = icmp ne i32 %164, 0
  br i1 %tobool291, label %land.lhs.true.292, label %if.end.305

land.lhs.true.292:                                ; preds = %while.end.290
  %165 = load i32, i32* %unresp, align 4
  %tobool293 = icmp ne i32 %165, 0
  br i1 %tobool293, label %if.end.305, label %if.then.294

if.then.294:                                      ; preds = %land.lhs.true.292
  %arraydecay295 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ulcomp, i32 0, i32 0
  %166 = load i8*, i8** %acomp.addr, align 8
  %call296 = call i8* @strcpy(i8* %arraydecay295, i8* %166)
  %arraydecay297 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ulcomp, i32 0, i32 0
  %call298 = call i8* @strrchr(i8* %arraydecay297, i32 47)
  store i8* %call298, i8** %comp, align 8
  %167 = load i8*, i8** %comp, align 8
  %tobool299 = icmp ne i8* %167, null
  br i1 %tobool299, label %if.then.300, label %if.else.302

if.then.300:                                      ; preds = %if.then.294
  %168 = load i8*, i8** %comp, align 8
  %incdec.ptr301 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %incdec.ptr301, i8** %comp, align 8
  br label %if.end.304

if.else.302:                                      ; preds = %if.then.294
  %arraydecay303 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ulcomp, i32 0, i32 0
  store i8* %arraydecay303, i8** %comp, align 8
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.302, %if.then.300
  store i32 0, i32* %mcomp, align 4
  %169 = load i8*, i8** %acomp.addr, align 8
  store i8 0, i8* %169, align 1
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %land.lhs.true.292, %while.end.290
  %170 = load i64, i64* %flags.addr, align 8
  %cmp306 = icmp eq i64 %170, 8
  br i1 %cmp306, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %if.end.305
  store i32 0, i32* %retval
  br label %return

if.end.309:                                       ; preds = %if.end.305
  %171 = load i64, i64* %flags.addr, align 8
  %and310 = and i64 %171, 16
  %tobool311 = icmp ne i64 %and310, 0
  br i1 %tobool311, label %land.lhs.true.312, label %if.end.318

land.lhs.true.312:                                ; preds = %if.end.309
  %172 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links313 = getelementptr inbounds %struct.vdir, %struct.vdir* %172, i32 0, i32 5
  %173 = load %struct.vlink*, %struct.vlink** %links313, align 8
  %tobool314 = icmp ne %struct.vlink* %173, null
  br i1 %tobool314, label %land.lhs.true.315, label %if.end.318

land.lhs.true.315:                                ; preds = %land.lhs.true.312
  %174 = load %struct.vlink*, %struct.vlink** %filters.addr, align 8
  %tobool316 = icmp ne %struct.vlink* %174, null
  br i1 %tobool316, label %if.end.318, label %if.then.317

if.then.317:                                      ; preds = %land.lhs.true.315
  store i32 0, i32* %retval
  br label %return

if.end.318:                                       ; preds = %land.lhs.true.315, %land.lhs.true.312, %if.end.309
  br label %expand_ulinks

expand_ulinks:                                    ; preds = %if.end.318
  %175 = load i64, i64* %flags.addr, align 8
  %cmp319 = icmp ne i64 %175, 0
  br i1 %cmp319, label %land.lhs.true.321, label %if.end.357

land.lhs.true.321:                                ; preds = %expand_ulinks
  %176 = load i64, i64* %flags.addr, align 8
  %cmp322 = icmp ne i64 %176, 8
  br i1 %cmp322, label %if.then.324, label %if.end.357

if.then.324:                                      ; preds = %land.lhs.true.321
  %177 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %ulinks325 = getelementptr inbounds %struct.vdir, %struct.vdir* %177, i32 0, i32 7
  %178 = load %struct.vlink*, %struct.vlink** %ulinks325, align 8
  store %struct.vlink* %178, %struct.vlink** %l, align 8
  br label %while.cond.326

while.cond.326:                                   ; preds = %while.body.335, %if.then.324
  %179 = load %struct.vlink*, %struct.vlink** %l, align 8
  %tobool327 = icmp ne %struct.vlink* %179, null
  br i1 %tobool327, label %land.lhs.true.328, label %land.end

land.lhs.true.328:                                ; preds = %while.cond.326
  %180 = load %struct.vlink*, %struct.vlink** %l, align 8
  %expanded329 = getelementptr inbounds %struct.vlink, %struct.vlink* %180, i32 0, i32 3
  %181 = load i32, i32* %expanded329, align 4
  %tobool330 = icmp ne i32 %181, 0
  br i1 %tobool330, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.328
  %182 = load %struct.vlink*, %struct.vlink** %l, align 8
  %linktype331 = getelementptr inbounds %struct.vlink, %struct.vlink* %182, i32 0, i32 2
  %183 = load i8, i8* %linktype331, align 1
  %conv332 = sext i8 %183 to i32
  %cmp333 = icmp eq i32 %conv332, 85
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.328, %while.cond.326
  %184 = phi i1 [ false, %land.lhs.true.328 ], [ false, %while.cond.326 ], [ %cmp333, %land.rhs ]
  br i1 %184, label %while.body.335, label %while.end.337

while.body.335:                                   ; preds = %land.end
  %185 = load %struct.vlink*, %struct.vlink** %l, align 8
  %next336 = getelementptr inbounds %struct.vlink, %struct.vlink* %185, i32 0, i32 20
  %186 = load %struct.vlink*, %struct.vlink** %next336, align 8
  store %struct.vlink* %186, %struct.vlink** %l, align 8
  br label %while.cond.326

while.end.337:                                    ; preds = %land.end
  %187 = load %struct.vlink*, %struct.vlink** %l, align 8
  %tobool338 = icmp ne %struct.vlink* %187, null
  br i1 %tobool338, label %if.then.339, label %if.end.356

if.then.339:                                      ; preds = %while.end.337
  %188 = load %struct.vlink*, %struct.vlink** %l, align 8
  %type340 = getelementptr inbounds %struct.vlink, %struct.vlink* %188, i32 0, i32 4
  %189 = load i8*, i8** %type340, align 8
  %call341 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  %cmp342 = icmp eq i32 %call341, 0
  br i1 %cmp342, label %if.then.349, label %lor.lhs.false.344

lor.lhs.false.344:                                ; preds = %if.then.339
  %190 = load %struct.vlink*, %struct.vlink** %l, align 8
  %type345 = getelementptr inbounds %struct.vlink, %struct.vlink* %190, i32 0, i32 4
  %191 = load i8*, i8** %type345, align 8
  %call346 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  %cmp347 = icmp eq i32 %call346, 0
  br i1 %cmp347, label %if.then.349, label %if.else.353

if.then.349:                                      ; preds = %lor.lhs.false.344, %if.then.339
  %192 = load %struct.vlink*, %struct.vlink** %l, align 8
  %expanded350 = getelementptr inbounds %struct.vlink, %struct.vlink* %192, i32 0, i32 3
  store i32 1, i32* %expanded350, align 4
  %193 = load %struct.vlink*, %struct.vlink** %l, align 8
  store %struct.vlink* %193, %struct.vlink** %exp, align 8
  %194 = load %struct.vlink*, %struct.vlink** %l, align 8
  store %struct.vlink* %194, %struct.vlink** %pul, align 8
  %195 = load %struct.vlink*, %struct.vlink** %l, align 8
  %host351 = getelementptr inbounds %struct.vlink, %struct.vlink* %195, i32 0, i32 8
  %196 = load i8*, i8** %host351, align 8
  store i8* %196, i8** %dhost.addr, align 8
  %197 = load %struct.vlink*, %struct.vlink** %l, align 8
  %filename352 = getelementptr inbounds %struct.vlink, %struct.vlink* %197, i32 0, i32 10
  %198 = load i8*, i8** %filename352, align 8
  store i8* %198, i8** %dfile.addr, align 8
  br label %startover

if.else.353:                                      ; preds = %lor.lhs.false.344
  %199 = load %struct.vlink*, %struct.vlink** %l, align 8
  %expanded354 = getelementptr inbounds %struct.vlink, %struct.vlink* %199, i32 0, i32 3
  store i32 -1, i32* %expanded354, align 4
  br label %if.end.355

if.end.355:                                       ; preds = %if.else.353
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %while.end.337
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %land.lhs.true.321, %expand_ulinks
  %200 = load i8*, i8** %components.addr, align 8
  %tobool358 = icmp ne i8* %200, null
  br i1 %tobool358, label %land.lhs.true.359, label %if.end.400

land.lhs.true.359:                                ; preds = %if.end.357
  %201 = load i8*, i8** %components.addr, align 8
  %202 = load i8, i8* %201, align 1
  %conv360 = sext i8 %202 to i32
  %tobool361 = icmp ne i32 %conv360, 0
  br i1 %tobool361, label %if.then.362, label %if.end.400

if.then.362:                                      ; preds = %land.lhs.true.359
  %203 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links363 = getelementptr inbounds %struct.vdir, %struct.vdir* %203, i32 0, i32 5
  %204 = load %struct.vlink*, %struct.vlink** %links363, align 8
  store %struct.vlink* %204, %struct.vlink** %l, align 8
  br label %while.cond.364

while.cond.364:                                   ; preds = %if.end.398, %if.then.362
  %205 = load %struct.vlink*, %struct.vlink** %l, align 8
  %tobool365 = icmp ne %struct.vlink* %205, null
  br i1 %tobool365, label %while.body.366, label %while.end.399

while.body.366:                                   ; preds = %while.cond.364
  %206 = load %struct.vlink*, %struct.vlink** %l, align 8
  %linktype368 = getelementptr inbounds %struct.vlink, %struct.vlink* %206, i32 0, i32 2
  %207 = load i8, i8* %linktype368, align 1
  %conv369 = sext i8 %207 to i32
  %cmp370 = icmp eq i32 %conv369, 76
  br i1 %cmp370, label %land.lhs.true.372, label %if.else.396

land.lhs.true.372:                                ; preds = %while.body.366
  %208 = load %struct.vlink*, %struct.vlink** %l, align 8
  %name373 = getelementptr inbounds %struct.vlink, %struct.vlink* %208, i32 0, i32 1
  %209 = load i8*, i8** %name373, align 8
  %210 = load i8*, i8** %components.addr, align 8
  %call374 = call i32 @wcmatch(i8* %209, i8* %210)
  %tobool375 = icmp ne i32 %call374, 0
  br i1 %tobool375, label %if.else.396, label %if.then.376

if.then.376:                                      ; preds = %land.lhs.true.372
  %211 = load %struct.vlink*, %struct.vlink** %l, align 8
  %212 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links377 = getelementptr inbounds %struct.vdir, %struct.vdir* %212, i32 0, i32 5
  %213 = load %struct.vlink*, %struct.vlink** %links377, align 8
  %cmp378 = icmp eq %struct.vlink* %211, %213
  br i1 %cmp378, label %if.then.380, label %if.else.383

if.then.380:                                      ; preds = %if.then.376
  %214 = load %struct.vlink*, %struct.vlink** %l, align 8
  %next381 = getelementptr inbounds %struct.vlink, %struct.vlink* %214, i32 0, i32 20
  %215 = load %struct.vlink*, %struct.vlink** %next381, align 8
  %216 = load %struct.vdir*, %struct.vdir** %dir.addr, align 8
  %links382 = getelementptr inbounds %struct.vdir, %struct.vdir* %216, i32 0, i32 5
  store %struct.vlink* %215, %struct.vlink** %links382, align 8
  br label %if.end.387

if.else.383:                                      ; preds = %if.then.376
  %217 = load %struct.vlink*, %struct.vlink** %l, align 8
  %next384 = getelementptr inbounds %struct.vlink, %struct.vlink* %217, i32 0, i32 20
  %218 = load %struct.vlink*, %struct.vlink** %next384, align 8
  %219 = load %struct.vlink*, %struct.vlink** %l, align 8
  %previous385 = getelementptr inbounds %struct.vlink, %struct.vlink* %219, i32 0, i32 19
  %220 = load %struct.vlink*, %struct.vlink** %previous385, align 8
  %next386 = getelementptr inbounds %struct.vlink, %struct.vlink* %220, i32 0, i32 20
  store %struct.vlink* %218, %struct.vlink** %next386, align 8
  br label %if.end.387

if.end.387:                                       ; preds = %if.else.383, %if.then.380
  %221 = load %struct.vlink*, %struct.vlink** %l, align 8
  %next388 = getelementptr inbounds %struct.vlink, %struct.vlink* %221, i32 0, i32 20
  %222 = load %struct.vlink*, %struct.vlink** %next388, align 8
  %tobool389 = icmp ne %struct.vlink* %222, null
  br i1 %tobool389, label %if.then.390, label %if.end.394

if.then.390:                                      ; preds = %if.end.387
  %223 = load %struct.vlink*, %struct.vlink** %l, align 8
  %previous391 = getelementptr inbounds %struct.vlink, %struct.vlink* %223, i32 0, i32 19
  %224 = load %struct.vlink*, %struct.vlink** %previous391, align 8
  %225 = load %struct.vlink*, %struct.vlink** %l, align 8
  %next392 = getelementptr inbounds %struct.vlink, %struct.vlink* %225, i32 0, i32 20
  %226 = load %struct.vlink*, %struct.vlink** %next392, align 8
  %previous393 = getelementptr inbounds %struct.vlink, %struct.vlink* %226, i32 0, i32 19
  store %struct.vlink* %224, %struct.vlink** %previous393, align 8
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.390, %if.end.387
  %227 = load %struct.vlink*, %struct.vlink** %l, align 8
  store %struct.vlink* %227, %struct.vlink** %ol, align 8
  %228 = load %struct.vlink*, %struct.vlink** %l, align 8
  %next395 = getelementptr inbounds %struct.vlink, %struct.vlink* %228, i32 0, i32 20
  %229 = load %struct.vlink*, %struct.vlink** %next395, align 8
  store %struct.vlink* %229, %struct.vlink** %l, align 8
  %230 = load %struct.vlink*, %struct.vlink** %ol, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* %230)
  br label %if.end.398

if.else.396:                                      ; preds = %land.lhs.true.372, %while.body.366
  %231 = load %struct.vlink*, %struct.vlink** %l, align 8
  %next397 = getelementptr inbounds %struct.vlink, %struct.vlink* %231, i32 0, i32 20
  %232 = load %struct.vlink*, %struct.vlink** %next397, align 8
  store %struct.vlink* %232, %struct.vlink** %l, align 8
  br label %if.end.398

if.end.398:                                       ; preds = %if.else.396, %if.end.394
  br label %while.cond.364

while.end.399:                                    ; preds = %while.cond.364
  br label %if.end.400

if.end.400:                                       ; preds = %while.end.399, %land.lhs.true.359, %if.end.357
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.400, %if.then.317, %if.then.308, %if.then.286, %if.then.279, %if.then.190, %if.else.66
  %233 = load i32, i32* %retval
  ret i32 %233
}

declare %struct.pfs_auth_info* @get_pauth(...) #1

declare i8* @strcat(i8*, i8*) #1

declare %struct.ptext* @ptalloc(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i64 @strlen(i8*) #1

declare %struct.ptext* @dirsend(...) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare %struct.pattrib* @parse_attribute(...) #1

declare void @atfree(...) #1

declare void @vllfree(...) #1

declare %struct.vlink* @vlalloc(...) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare void @vlfree(...) #1

declare i8* @stcopyr(...) #1

declare i8* @unquote(...) #1

declare i32 @wcmatch(i8*, i8*) #1

declare i32 @vl_insert(%struct.vlink*, %struct.vdir*, i32) #1

declare i32 @ul_insert(%struct.vlink*, %struct.vdir*, %struct.vlink*) #1

declare void @ptlfree(...) #1

declare i8* @stcopy(...) #1

declare i8* @strcpy(i8*, i8*) #1

declare i8* @strrchr(i8*, i32) #1

declare i32 @scan_error(i8*) #1

declare i8* @nxtline(...) #1

declare void @ptfree(...) #1

declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
