; ModuleID = './MultiSource.Applications.ClamAV/50.libclamav_matcher.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cli_ac_data = type { i32, i32*** }
%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }
%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
%struct.cli_matched_type = type { i32, i64, i16, %struct.cli_matched_type* }
%struct.cli_md5_node = type { i8*, i8*, i32, i16, %struct.cli_md5_node* }
%struct.cli_target_info = type { i64, %struct.cli_exe_info, i8 }
%struct.cli_exe_info = type { i32, i16, i64, %struct.cli_exe_section* }
%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_md5_ctx = type { i32, i32, i32, i32, i32, i32, [64 x i8], [16 x i32] }

@.str = private unnamed_addr constant [30 x i8] c"cli_scanbuff: engine == NULL\0A\00", align 1
@targettab = internal global [7 x i32] [i32 0, i32 502, i32 513, i32 528, i32 529, i32 518, i32 503], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"EP\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid descriptor\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"EP+\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"EP-\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"SL\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"SL+%u\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"S%u+%u\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"EOF-\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"cli_validatesig: Can't calculate offset for signature %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Signature offset: %lu, expected: [%lu..%lu] (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Signature offset: %lu, expected: %lu (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"cli_scandesc: engine == NULL\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"cli_scandesc(): unable to cli_calloc(%u)\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Detected false positive MD5 match. Please report.\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"cli_checkfp(): Can't generate MD5 checksum\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Eliminated false positive match (fp sig: %s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scanbuff(i8* %buffer, i32 %length, i8** %virname, %struct.cl_engine* %engine, i32 %ftype) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %virname.addr = alloca i8**, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %ftype.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %mdata = alloca %struct.cli_ac_data, align 8
  %groot = alloca %struct.cli_matcher*, align 8
  %troot = alloca %struct.cli_matcher*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i8** %virname, i8*** %virname.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store i32 %ftype, i32* %ftype.addr, align 4
  store i32 0, i32* %ret, align 4
  store %struct.cli_matcher* null, %struct.cli_matcher** %troot, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 3
  %2 = load i8**, i8*** %root, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %4 = bitcast i8* %3 to %struct.cli_matcher*
  store %struct.cli_matcher* %4, %struct.cli_matcher** %groot, align 8
  %5 = load i32, i32* %ftype.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %6 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %6, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [7 x i32], [7 x i32]* @targettab, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx3, align 4
  %9 = load i32, i32* %ftype.addr, align 4
  %cmp4 = icmp eq i32 %8, %9
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %10 to i64
  %11 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root7 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %11, i32 0, i32 3
  %12 = load i8**, i8*** %root7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %12, i64 %idxprom6
  %13 = load i8*, i8** %arrayidx8, align 8
  %14 = bitcast i8* %13 to %struct.cli_matcher*
  store %struct.cli_matcher* %14, %struct.cli_matcher** %troot, align 8
  br label %for.end

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.5, %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.end
  %16 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %tobool11 = icmp ne %struct.cli_matcher* %16, null
  br i1 %tobool11, label %if.then.12, label %if.end.27

if.then.12:                                       ; preds = %if.end.10
  %17 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %ac_partsigs = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %17, i32 0, i32 11
  %18 = load i32, i32* %ac_partsigs, align 4
  %call = call i32 @cli_ac_initdata(%struct.cli_ac_data* %mdata, i32 %18, i8 zeroext 8)
  store i32 %call, i32* %ret, align 4
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.12
  %20 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %ac_only = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %20, i32 0, i32 1
  %21 = load i8, i8* %ac_only, align 1
  %conv = zext i8 %21 to i32
  %tobool16 = icmp ne i32 %conv, 0
  br i1 %tobool16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %22 = load i8*, i8** %buffer.addr, align 8
  %23 = load i32, i32* %length.addr, align 4
  %24 = load i8**, i8*** %virname.addr, align 8
  %25 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %26 = load i32, i32* %ftype.addr, align 4
  %call17 = call i32 @cli_bm_scanbuff(i8* %22, i32 %23, i8** %24, %struct.cli_matcher* %25, i32 0, i32 %26, i32 -1)
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 1
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.15
  %27 = load i8*, i8** %buffer.addr, align 8
  %28 = load i32, i32* %length.addr, align 4
  %29 = load i8**, i8*** %virname.addr, align 8
  %30 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %31 = load i32, i32* %ftype.addr, align 4
  %call21 = call i32 @cli_ac_scanbuff(i8* %27, i32 %28, i8** %29, %struct.cli_matcher* %30, %struct.cli_ac_data* %mdata, i8 zeroext 0, i32 0, i32 %31, i32 -1, %struct.cli_matched_type** null)
  store i32 %call21, i32* %ret, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %lor.lhs.false
  call void @cli_ac_freedata(%struct.cli_ac_data* %mdata)
  %32 = load i32, i32* %ret, align 4
  %cmp23 = icmp eq i32 %32, 1
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %33 = load i32, i32* %ret, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.10
  %34 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %ac_partsigs28 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %34, i32 0, i32 11
  %35 = load i32, i32* %ac_partsigs28, align 4
  %call29 = call i32 @cli_ac_initdata(%struct.cli_ac_data* %mdata, i32 %35, i8 zeroext 8)
  store i32 %call29, i32* %ret, align 4
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.27
  %37 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %ac_only33 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %37, i32 0, i32 1
  %38 = load i8, i8* %ac_only33, align 1
  %conv34 = zext i8 %38 to i32
  %tobool35 = icmp ne i32 %conv34, 0
  br i1 %tobool35, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.32
  %39 = load i8*, i8** %buffer.addr, align 8
  %40 = load i32, i32* %length.addr, align 4
  %41 = load i8**, i8*** %virname.addr, align 8
  %42 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %43 = load i32, i32* %ftype.addr, align 4
  %call37 = call i32 @cli_bm_scanbuff(i8* %39, i32 %40, i8** %41, %struct.cli_matcher* %42, i32 0, i32 %43, i32 -1)
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp ne i32 %call37, 1
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false.36, %if.end.32
  %44 = load i8*, i8** %buffer.addr, align 8
  %45 = load i32, i32* %length.addr, align 4
  %46 = load i8**, i8*** %virname.addr, align 8
  %47 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %48 = load i32, i32* %ftype.addr, align 4
  %call41 = call i32 @cli_ac_scanbuff(i8* %44, i32 %45, i8** %46, %struct.cli_matcher* %47, %struct.cli_ac_data* %mdata, i8 zeroext 0, i32 0, i32 %48, i32 -1, %struct.cli_matched_type** null)
  store i32 %call41, i32* %ret, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false.36
  call void @cli_ac_freedata(%struct.cli_ac_data* %mdata)
  %49 = load i32, i32* %ret, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.31, %if.then.25, %if.then.14, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare void @cli_errmsg(i8*, ...) #1

declare i32 @cli_ac_initdata(%struct.cli_ac_data*, i32, i8 zeroext) #1

declare i32 @cli_bm_scanbuff(i8*, i32, i8**, %struct.cli_matcher*, i32, i32, i32) #1

declare i32 @cli_ac_scanbuff(i8*, i32, i8**, %struct.cli_matcher*, %struct.cli_ac_data*, i8 zeroext, i32, i32, i32, %struct.cli_matched_type**) #1

declare void @cli_ac_freedata(%struct.cli_ac_data*) #1

; Function Attrs: nounwind uwtable
define %struct.cli_md5_node* @cli_vermd5(i8* %md5, %struct.cl_engine* %engine) #0 {
entry:
  %retval = alloca %struct.cli_md5_node*, align 8
  %md5.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %pt = alloca %struct.cli_md5_node*, align 8
  store i8* %md5, i8** %md5.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load i8*, i8** %md5.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %2 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %md5_hlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %2, i32 0, i32 4
  %3 = load i8**, i8*** %md5_hlist, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx1, align 8
  %5 = bitcast i8* %4 to %struct.cli_md5_node*
  store %struct.cli_md5_node* %5, %struct.cli_md5_node** %pt, align 8
  %tobool = icmp ne %struct.cli_md5_node* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.cli_md5_node* null, %struct.cli_md5_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %6 = load %struct.cli_md5_node*, %struct.cli_md5_node** %pt, align 8
  %tobool2 = icmp ne %struct.cli_md5_node* %6, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.cli_md5_node*, %struct.cli_md5_node** %pt, align 8
  %md53 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %7, i32 0, i32 1
  %8 = load i8*, i8** %md53, align 8
  %9 = load i8*, i8** %md5.addr, align 8
  %call = call i32 @memcmp(i8* %8, i8* %9, i64 16) #6
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %while.body
  %10 = load %struct.cli_md5_node*, %struct.cli_md5_node** %pt, align 8
  store %struct.cli_md5_node* %10, %struct.cli_md5_node** %retval
  br label %return

if.end.6:                                         ; preds = %while.body
  %11 = load %struct.cli_md5_node*, %struct.cli_md5_node** %pt, align 8
  %next = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %11, i32 0, i32 4
  %12 = load %struct.cli_md5_node*, %struct.cli_md5_node** %next, align 8
  store %struct.cli_md5_node* %12, %struct.cli_md5_node** %pt, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.cli_md5_node* null, %struct.cli_md5_node** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.5, %if.then
  %13 = load %struct.cli_md5_node*, %struct.cli_md5_node** %retval
  ret %struct.cli_md5_node* %13
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @cli_caloff(i8* %offstr, %struct.cli_target_info* %info, i32 %fd, i32 %ftype, i32* %ret, i32* %maxshift) #0 {
entry:
  %retval = alloca i64, align 8
  %offstr.addr = alloca i8*, align 8
  %info.addr = alloca %struct.cli_target_info*, align 8
  %fd.addr = alloca i32, align 4
  %ftype.addr = alloca i32, align 4
  %ret.addr = alloca i32*, align 8
  %maxshift.addr = alloca i32*, align 8
  %einfo = alloca i32 (i32, %struct.cli_exe_info*)*, align 8
  %n = alloca i32, align 4
  %val = alloca i32, align 4
  %pt = alloca i8*, align 8
  %pos = alloca i64, align 8
  %offset = alloca i64, align 8
  %sb = alloca %struct.stat, align 8
  store i8* %offstr, i8** %offstr.addr, align 8
  store %struct.cli_target_info* %info, %struct.cli_target_info** %info.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %ftype, i32* %ftype.addr, align 4
  store i32* %ret, i32** %ret.addr, align 8
  store i32* %maxshift, i32** %maxshift.addr, align 8
  store i32 (i32, %struct.cli_exe_info*)* null, i32 (i32, %struct.cli_exe_info*)** %einfo, align 8
  %0 = load i32*, i32** %ret.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8*, i8** %offstr.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 2) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %offstr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 83
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %status = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %4, i32 0, i32 2
  %5 = load i8, i8* %status, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, -1
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %6 = load i32*, i32** %ret.addr, align 8
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %7 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %status6 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %7, i32 0, i32 2
  %8 = load i8, i8* %status6, align 1
  %tobool7 = icmp ne i8 %8, 0
  br i1 %tobool7, label %if.end.35, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %9 = load i32, i32* %ftype.addr, align 4
  %cmp9 = icmp eq i32 %9, 502
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.then.8
  store i32 (i32, %struct.cli_exe_info*)* @cli_peheader, i32 (i32, %struct.cli_exe_info*)** %einfo, align 8
  br label %if.end.16

if.else.12:                                       ; preds = %if.then.8
  %10 = load i32, i32* %ftype.addr, align 4
  %cmp13 = icmp eq i32 %10, 503
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else.12
  store i32 (i32, %struct.cli_exe_info*)* @cli_elfheader, i32 (i32, %struct.cli_exe_info*)** %einfo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.11
  %11 = load i32 (i32, %struct.cli_exe_info*)*, i32 (i32, %struct.cli_exe_info*)** %einfo, align 8
  %tobool17 = icmp ne i32 (i32, %struct.cli_exe_info*)* %11, null
  br i1 %tobool17, label %if.then.18, label %if.end.34

if.then.18:                                       ; preds = %if.end.16
  %12 = load i32, i32* %fd.addr, align 4
  %call19 = call i64 @lseek(i32 %12, i64 0, i32 1) #5
  store i64 %call19, i64* %pos, align 8
  %cmp20 = icmp eq i64 %call19, -1
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.18
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  %13 = load i32*, i32** %ret.addr, align 8
  store i32 -1, i32* %13, align 4
  %14 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %status23 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %14, i32 0, i32 2
  store i8 -1, i8* %status23, align 1
  store i64 0, i64* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  %15 = load i32, i32* %fd.addr, align 4
  %call25 = call i64 @lseek(i32 %15, i64 0, i32 0) #5
  %16 = load i32 (i32, %struct.cli_exe_info*)*, i32 (i32, %struct.cli_exe_info*)** %einfo, align 8
  %17 = load i32, i32* %fd.addr, align 4
  %18 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %18, i32 0, i32 1
  %call26 = call i32 %16(i32 %17, %struct.cli_exe_info* %exeinfo)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.24
  %19 = load i32, i32* %fd.addr, align 4
  %20 = load i64, i64* %pos, align 8
  %call29 = call i64 @lseek(i32 %19, i64 %20, i32 0) #5
  %21 = load i32*, i32** %ret.addr, align 8
  store i32 -1, i32* %21, align 4
  %22 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %status30 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %22, i32 0, i32 2
  store i8 -1, i8* %status30, align 1
  store i64 0, i64* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.24
  %23 = load i32, i32* %fd.addr, align 4
  %24 = load i64, i64* %pos, align 8
  %call32 = call i64 @lseek(i32 %23, i64 %24, i32 0) #5
  %25 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %status33 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %25, i32 0, i32 2
  store i8 1, i8* %status33, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.31, %if.end.16
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %lor.lhs.false
  %26 = load i8*, i8** %offstr.addr, align 8
  %call38 = call i8* @strchr(i8* %26, i32 44) #6
  store i8* %call38, i8** %pt, align 8
  %tobool39 = icmp ne i8* %call38, null
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.37
  %27 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  %call41 = call i32 @atoi(i8* %incdec.ptr) #6
  %28 = load i32*, i32** %maxshift.addr, align 8
  store i32 %call41, i32* %28, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.37
  %29 = load i8*, i8** %offstr.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %30 to i32
  %idxprom = sext i32 %conv44 to i64
  %call45 = call i16** @__ctype_b_loc() #7
  %31 = load i16*, i16** %call45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %31, i64 %idxprom
  %32 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %32 to i32
  %and = and i32 %conv47, 2048
  %tobool48 = icmp ne i32 %and, 0
  br i1 %tobool48, label %if.then.49, label %if.else.52

if.then.49:                                       ; preds = %if.end.42
  %33 = load i8*, i8** %offstr.addr, align 8
  %call50 = call i32 @atoi(i8* %33) #6
  %conv51 = sext i32 %call50 to i64
  store i64 %conv51, i64* %retval
  br label %return

if.else.52:                                       ; preds = %if.end.42
  %34 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %status53 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %34, i32 0, i32 2
  %35 = load i8, i8* %status53, align 1
  %conv54 = sext i8 %35 to i32
  %cmp55 = icmp eq i32 %conv54, 1
  br i1 %cmp55, label %land.lhs.true, label %if.else.77

land.lhs.true:                                    ; preds = %if.else.52
  %36 = load i8*, i8** %offstr.addr, align 8
  %call57 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 3) #6
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %lor.lhs.false.59, label %if.then.62

lor.lhs.false.59:                                 ; preds = %land.lhs.true
  %37 = load i8*, i8** %offstr.addr, align 8
  %call60 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 3) #6
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.else.77, label %if.then.62

if.then.62:                                       ; preds = %lor.lhs.false.59, %land.lhs.true
  %38 = load i8*, i8** %offstr.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %39 to i32
  %cmp65 = icmp eq i32 %conv64, 43
  br i1 %cmp65, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %if.then.62
  %40 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo68 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %40, i32 0, i32 1
  %ep = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo68, i32 0, i32 0
  %41 = load i32, i32* %ep, align 4
  %42 = load i8*, i8** %offstr.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 3
  %call69 = call i32 @atoi(i8* %add.ptr) #6
  %add = add i32 %41, %call69
  %conv70 = zext i32 %add to i64
  store i64 %conv70, i64* %retval
  br label %return

if.else.71:                                       ; preds = %if.then.62
  %43 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo72 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %43, i32 0, i32 1
  %ep73 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo72, i32 0, i32 0
  %44 = load i32, i32* %ep73, align 4
  %45 = load i8*, i8** %offstr.addr, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %45, i64 3
  %call75 = call i32 @atoi(i8* %add.ptr74) #6
  %sub = sub i32 %44, %call75
  %conv76 = zext i32 %sub to i64
  store i64 %conv76, i64* %retval
  br label %return

if.else.77:                                       ; preds = %lor.lhs.false.59, %if.else.52
  %46 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %status78 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %46, i32 0, i32 2
  %47 = load i8, i8* %status78, align 1
  %conv79 = sext i8 %47 to i32
  %cmp80 = icmp eq i32 %conv79, 1
  br i1 %cmp80, label %land.lhs.true.82, label %if.else.142

land.lhs.true.82:                                 ; preds = %if.else.77
  %48 = load i8*, i8** %offstr.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %49 to i32
  %cmp85 = icmp eq i32 %conv84, 83
  br i1 %cmp85, label %if.then.87, label %if.else.142

if.then.87:                                       ; preds = %land.lhs.true.82
  %50 = load i8*, i8** %offstr.addr, align 8
  %call88 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i64 2) #6
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.else.114, label %land.lhs.true.90

land.lhs.true.90:                                 ; preds = %if.then.87
  %51 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo91 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %51, i32 0, i32 1
  %nsections = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo91, i32 0, i32 1
  %52 = load i16, i16* %nsections, align 2
  %conv92 = zext i16 %52 to i32
  %sub93 = sub nsw i32 %conv92, 1
  %idxprom94 = sext i32 %sub93 to i64
  %53 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo95 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %53, i32 0, i32 1
  %section = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo95, i32 0, i32 3
  %54 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx96 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %54, i64 %idxprom94
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx96, i32 0, i32 3
  %55 = load i32, i32* %rsz, align 4
  %tobool97 = icmp ne i32 %55, 0
  br i1 %tobool97, label %if.then.98, label %if.else.114

if.then.98:                                       ; preds = %land.lhs.true.90
  %56 = load i8*, i8** %offstr.addr, align 8
  %call99 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32* %val) #5
  %cmp100 = icmp ne i32 %call99, 1
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.98
  %57 = load i32*, i32** %ret.addr, align 8
  store i32 -1, i32* %57, align 4
  store i64 0, i64* %retval
  br label %return

if.end.103:                                       ; preds = %if.then.98
  %58 = load i32, i32* %val, align 4
  %59 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo104 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %59, i32 0, i32 1
  %nsections105 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo104, i32 0, i32 1
  %60 = load i16, i16* %nsections105, align 2
  %conv106 = zext i16 %60 to i32
  %sub107 = sub nsw i32 %conv106, 1
  %idxprom108 = sext i32 %sub107 to i64
  %61 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo109 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %61, i32 0, i32 1
  %section110 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo109, i32 0, i32 3
  %62 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section110, align 8
  %arrayidx111 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %62, i64 %idxprom108
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx111, i32 0, i32 2
  %63 = load i32, i32* %raw, align 4
  %add112 = add i32 %58, %63
  %conv113 = zext i32 %add112 to i64
  store i64 %conv113, i64* %offset, align 8
  br label %if.end.141

if.else.114:                                      ; preds = %land.lhs.true.90, %if.then.87
  %64 = load i8*, i8** %offstr.addr, align 8
  %call115 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32* %n, i32* %val) #5
  %cmp116 = icmp ne i32 %call115, 2
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.else.114
  %65 = load i32*, i32** %ret.addr, align 8
  store i32 -1, i32* %65, align 4
  store i64 0, i64* %retval
  br label %return

if.end.119:                                       ; preds = %if.else.114
  %66 = load i32, i32* %n, align 4
  %67 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo120 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %67, i32 0, i32 1
  %nsections121 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo120, i32 0, i32 1
  %68 = load i16, i16* %nsections121, align 2
  %conv122 = zext i16 %68 to i32
  %cmp123 = icmp uge i32 %66, %conv122
  br i1 %cmp123, label %if.then.132, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.end.119
  %69 = load i32, i32* %n, align 4
  %idxprom126 = zext i32 %69 to i64
  %70 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo127 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %70, i32 0, i32 1
  %section128 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo127, i32 0, i32 3
  %71 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section128, align 8
  %arrayidx129 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %71, i64 %idxprom126
  %rsz130 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx129, i32 0, i32 3
  %72 = load i32, i32* %rsz130, align 4
  %tobool131 = icmp ne i32 %72, 0
  br i1 %tobool131, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %lor.lhs.false.125, %if.end.119
  %73 = load i32*, i32** %ret.addr, align 8
  store i32 -1, i32* %73, align 4
  store i64 0, i64* %retval
  br label %return

if.end.133:                                       ; preds = %lor.lhs.false.125
  %74 = load i32, i32* %val, align 4
  %75 = load i32, i32* %n, align 4
  %idxprom134 = zext i32 %75 to i64
  %76 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %exeinfo135 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %76, i32 0, i32 1
  %section136 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo135, i32 0, i32 3
  %77 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section136, align 8
  %arrayidx137 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %77, i64 %idxprom134
  %raw138 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx137, i32 0, i32 2
  %78 = load i32, i32* %raw138, align 4
  %add139 = add i32 %74, %78
  %conv140 = zext i32 %add139 to i64
  store i64 %conv140, i64* %offset, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.133, %if.end.103
  %79 = load i64, i64* %offset, align 8
  store i64 %79, i64* %retval
  br label %return

if.else.142:                                      ; preds = %land.lhs.true.82, %if.else.77
  %80 = load i8*, i8** %offstr.addr, align 8
  %call143 = call i32 @strncmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #6
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.end.161, label %if.then.145

if.then.145:                                      ; preds = %if.else.142
  %81 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %fsize = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %81, i32 0, i32 0
  %82 = load i64, i64* %fsize, align 8
  %tobool146 = icmp ne i64 %82, 0
  br i1 %tobool146, label %if.end.155, label %if.then.147

if.then.147:                                      ; preds = %if.then.145
  %83 = load i32, i32* %fd.addr, align 4
  %call148 = call i32 @fstat(i32 %83, %struct.stat* %sb) #5
  %cmp149 = icmp eq i32 %call148, -1
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.then.147
  %84 = load i32*, i32** %ret.addr, align 8
  store i32 -1, i32* %84, align 4
  %85 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %status152 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %85, i32 0, i32 2
  store i8 -1, i8* %status152, align 1
  store i64 0, i64* %retval
  br label %return

if.end.153:                                       ; preds = %if.then.147
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %86 = load i64, i64* %st_size, align 8
  %87 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %fsize154 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %87, i32 0, i32 0
  store i64 %86, i64* %fsize154, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.153, %if.then.145
  %88 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %fsize156 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %88, i32 0, i32 0
  %89 = load i64, i64* %fsize156, align 8
  %90 = load i8*, i8** %offstr.addr, align 8
  %add.ptr157 = getelementptr inbounds i8, i8* %90, i64 4
  %call158 = call i32 @atoi(i8* %add.ptr157) #6
  %conv159 = sext i32 %call158 to i64
  %sub160 = sub nsw i64 %89, %conv159
  store i64 %sub160, i64* %retval
  br label %return

if.end.161:                                       ; preds = %if.else.142
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163
  %91 = load i32*, i32** %ret.addr, align 8
  store i32 -1, i32* %91, align 4
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.164, %if.end.155, %if.then.151, %if.end.141, %if.then.132, %if.then.118, %if.then.102, %if.else.71, %if.then.67, %if.then.49, %if.then.28, %if.then.22, %if.then.5
  %92 = load i64, i64* %retval
  ret i64 %92
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i32 @cli_peheader(i32, %struct.cli_exe_info*) #1

declare i32 @cli_elfheader(i32, %struct.cli_exe_info*) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define i32 @cli_validatesig(i32 %ftype, i8* %offstr, i64 %fileoff, %struct.cli_target_info* %info, i32 %desc, i8* %virname) #0 {
entry:
  %retval = alloca i32, align 4
  %ftype.addr = alloca i32, align 4
  %offstr.addr = alloca i8*, align 8
  %fileoff.addr = alloca i64, align 8
  %info.addr = alloca %struct.cli_target_info*, align 8
  %desc.addr = alloca i32, align 4
  %virname.addr = alloca i8*, align 8
  %offset = alloca i64, align 8
  %ret = alloca i32, align 4
  %maxshift = alloca i32, align 4
  store i32 %ftype, i32* %ftype.addr, align 4
  store i8* %offstr, i8** %offstr.addr, align 8
  store i64 %fileoff, i64* %fileoff.addr, align 8
  store %struct.cli_target_info* %info, %struct.cli_target_info** %info.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store i8* %virname, i8** %virname.addr, align 8
  store i32 0, i32* %maxshift, align 4
  %0 = load i8*, i8** %offstr.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %desc.addr, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %offstr.addr, align 8
  %3 = load %struct.cli_target_info*, %struct.cli_target_info** %info.addr, align 8
  %4 = load i32, i32* %desc.addr, align 4
  %5 = load i32, i32* %ftype.addr, align 4
  %call = call i64 @cli_caloff(i8* %2, %struct.cli_target_info* %3, i32 %4, i32 %5, i32* %ret, i32* %maxshift)
  store i64 %call, i64* %offset, align 8
  %6 = load i32, i32* %ret, align 4
  %cmp1 = icmp eq i32 %6, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load i8*, i8** %virname.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i32 0, i32 0), i8* %7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load i32, i32* %maxshift, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %9 = load i64, i64* %fileoff.addr, align 8
  %10 = load i64, i64* %offset, align 8
  %cmp5 = icmp slt i64 %9, %10
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %11 = load i64, i64* %fileoff.addr, align 8
  %12 = load i64, i64* %offset, align 8
  %13 = load i32, i32* %maxshift, align 4
  %conv = zext i32 %13 to i64
  %add = add nsw i64 %12, %conv
  %cmp6 = icmp sgt i64 %11, %add
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %lor.lhs.false, %if.then.4
  %14 = load i64, i64* %fileoff.addr, align 8
  %15 = load i64, i64* %offset, align 8
  %16 = load i64, i64* %offset, align 8
  %17 = load i32, i32* %maxshift, align 4
  %conv9 = zext i32 %17 to i64
  %add10 = add nsw i64 %16, %conv9
  %18 = load i8*, i8** %virname.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i64 %14, i64 %15, i64 %add10, i8* %18)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %19 = load i64, i64* %fileoff.addr, align 8
  %20 = load i64, i64* %offset, align 8
  %cmp12 = icmp ne i64 %19, %20
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  %21 = load i64, i64* %fileoff.addr, align 8
  %22 = load i64, i64* %offset, align 8
  %23 = load i8*, i8** %virname.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i64 %21, i64 %22, i8* %23)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.14, %if.then.8, %if.then.2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @cli_scandesc(i32 %desc, %struct.cli_ctx* %ctx, i8 zeroext %otfrec, i32 %ftype, i8 zeroext %ftonly, %struct.cli_matched_type** %ftoffset) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %otfrec.addr = alloca i8, align 1
  %ftype.addr = alloca i32, align 4
  %ftonly.addr = alloca i8, align 1
  %ftoffset.addr = alloca %struct.cli_matched_type**, align 8
  %buffer = alloca i8*, align 8
  %buff = alloca i8*, align 8
  %endbl = alloca i8*, align 8
  %upt = alloca i8*, align 8
  %ret = alloca i32, align 4
  %type = alloca i32, align 4
  %i = alloca i32, align 4
  %bytes = alloca i32, align 4
  %buffersize = alloca i32, align 4
  %length = alloca i32, align 4
  %maxpatlen = alloca i32, align 4
  %shift = alloca i32, align 4
  %offset = alloca i32, align 4
  %gdata = alloca %struct.cli_ac_data, align 8
  %tdata = alloca %struct.cli_ac_data, align 8
  %md5ctx = alloca %struct.cli_md5_ctx, align 4
  %digest = alloca [16 x i8], align 16
  %md5_node = alloca %struct.cli_md5_node*, align 8
  %groot = alloca %struct.cli_matcher*, align 8
  %troot = alloca %struct.cli_matcher*, align 8
  %sb = alloca %struct.stat, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i8 %otfrec, i8* %otfrec.addr, align 1
  store i32 %ftype, i32* %ftype.addr, align 4
  store i8 %ftonly, i8* %ftonly.addr, align 1
  store %struct.cli_matched_type** %ftoffset, %struct.cli_matched_type*** %ftoffset.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %type, align 4
  store i32 0, i32* %shift, align 4
  store i32 0, i32* %offset, align 4
  store %struct.cli_matcher* null, %struct.cli_matcher** %groot, align 8
  store %struct.cli_matcher* null, %struct.cli_matcher** %troot, align 8
  %0 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %0, i32 0, i32 3
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %tobool = icmp ne %struct.cl_engine* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %ftonly.addr, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine3 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %3, i32 0, i32 3
  %4 = load %struct.cl_engine*, %struct.cl_engine** %engine3, align 8
  %root = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %4, i32 0, i32 3
  %5 = load i8**, i8*** %root, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct.cli_matcher*
  store %struct.cli_matcher* %7, %struct.cli_matcher** %groot, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %8 = load i32, i32* %ftype.addr, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %if.end.4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [7 x i32], [7 x i32]* @targettab, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load i32, i32* %ftype.addr, align 4
  %cmp8 = icmp eq i32 %11, %12
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine11 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %14, i32 0, i32 3
  %15 = load %struct.cl_engine*, %struct.cl_engine** %engine11, align 8
  %root12 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %15, i32 0, i32 3
  %16 = load i8**, i8*** %root12, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %16, i64 %idxprom10
  %17 = load i8*, i8** %arrayidx13, align 8
  %18 = bitcast i8* %17 to %struct.cli_matcher*
  store %struct.cli_matcher* %18, %struct.cli_matcher** %troot, align 8
  br label %for.end

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %if.end.4
  %20 = load i8, i8* %ftonly.addr, align 1
  %tobool16 = icmp ne i8 %20, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.15
  %21 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %tobool18 = icmp ne %struct.cli_matcher* %21, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.then.17
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.17
  %22 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %maxpatlen21 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %22, i32 0, i32 0
  %23 = load i16, i16* %maxpatlen21, align 2
  %conv = zext i16 %23 to i32
  store i32 %conv, i32* %maxpatlen, align 4
  br label %if.end.38

if.else:                                          ; preds = %if.end.15
  %24 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %tobool22 = icmp ne %struct.cli_matcher* %24, null
  br i1 %tobool22, label %if.then.23, label %if.else.34

if.then.23:                                       ; preds = %if.else
  %25 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %maxpatlen24 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %25, i32 0, i32 0
  %26 = load i16, i16* %maxpatlen24, align 2
  %conv25 = zext i16 %26 to i32
  %27 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %maxpatlen26 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %27, i32 0, i32 0
  %28 = load i16, i16* %maxpatlen26, align 2
  %conv27 = zext i16 %28 to i32
  %cmp28 = icmp sgt i32 %conv25, %conv27
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  %29 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %maxpatlen30 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %29, i32 0, i32 0
  %30 = load i16, i16* %maxpatlen30, align 2
  %conv31 = zext i16 %30 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  %31 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %maxpatlen32 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %31, i32 0, i32 0
  %32 = load i16, i16* %maxpatlen32, align 2
  %conv33 = zext i16 %32 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv31, %cond.true ], [ %conv33, %cond.false ]
  store i32 %cond, i32* %maxpatlen, align 4
  br label %if.end.37

if.else.34:                                       ; preds = %if.else
  %33 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %maxpatlen35 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %33, i32 0, i32 0
  %34 = load i16, i16* %maxpatlen35, align 2
  %conv36 = zext i16 %34 to i32
  store i32 %conv36, i32* %maxpatlen, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %cond.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.20
  %35 = load i32, i32* %maxpatlen, align 4
  %add = add i32 %35, 131072
  store i32 %add, i32* %buffersize, align 4
  %36 = load i32, i32* %buffersize, align 4
  %conv39 = zext i32 %36 to i64
  %call = call i8* @cli_calloc(i64 %conv39, i64 1)
  store i8* %call, i8** %buffer, align 8
  %tobool40 = icmp ne i8* %call, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.38
  %37 = load i32, i32* %buffersize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0), i32 %37)
  store i32 -114, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.38
  %38 = load i8, i8* %ftonly.addr, align 1
  %tobool43 = icmp ne i8 %38, 0
  br i1 %tobool43, label %if.end.47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.42
  %39 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %ac_partsigs = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %39, i32 0, i32 11
  %40 = load i32, i32* %ac_partsigs, align 4
  %call44 = call i32 @cli_ac_initdata(%struct.cli_ac_data* %gdata, i32 %40, i8 zeroext 8)
  store i32 %call44, i32* %ret, align 4
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true, %if.end.42
  %42 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %tobool48 = icmp ne %struct.cli_matcher* %42, null
  br i1 %tobool48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.end.47
  %43 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %ac_partsigs50 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %43, i32 0, i32 11
  %44 = load i32, i32* %ac_partsigs50, align 4
  %call51 = call i32 @cli_ac_initdata(%struct.cli_ac_data* %tdata, i32 %44, i8 zeroext 8)
  store i32 %call51, i32* %ret, align 4
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.49
  %45 = load i32, i32* %ret, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.49
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.47
  %46 = load i8, i8* %ftonly.addr, align 1
  %tobool56 = icmp ne i8 %46, 0
  br i1 %tobool56, label %if.end.61, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %if.end.55
  %47 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine58 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %47, i32 0, i32 3
  %48 = load %struct.cl_engine*, %struct.cl_engine** %engine58, align 8
  %md5_hlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %48, i32 0, i32 4
  %49 = load i8**, i8*** %md5_hlist, align 8
  %tobool59 = icmp ne i8** %49, null
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.57
  call void @cli_md5_init(%struct.cli_md5_ctx* %md5ctx)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %land.lhs.true.57, %if.end.55
  %50 = load i8*, i8** %buffer, align 8
  store i8* %50, i8** %buff, align 8
  %51 = load i32, i32* %maxpatlen, align 4
  %52 = load i8*, i8** %buff, align 8
  %idx.ext = zext i32 %51 to i64
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  store i8* %add.ptr, i8** %buff, align 8
  %53 = load i8*, i8** %buff, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %53, i64 131072
  %54 = load i32, i32* %maxpatlen, align 4
  %idx.ext63 = zext i32 %54 to i64
  %idx.neg = sub i64 0, %idx.ext63
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr62, i64 %idx.neg
  store i8* %add.ptr64, i8** %endbl, align 8
  %55 = load i8*, i8** %buff, align 8
  store i8* %55, i8** %upt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.168, %if.end.61
  %56 = load i32, i32* %desc.addr, align 4
  %57 = load i8*, i8** %buff, align 8
  %58 = load i32, i32* %shift, align 4
  %idx.ext65 = zext i32 %58 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %57, i64 %idx.ext65
  %59 = load i32, i32* %shift, align 4
  %sub = sub i32 131072, %59
  %call67 = call i32 @cli_readn(i32 %56, i8* %add.ptr66, i32 %sub)
  store i32 %call67, i32* %bytes, align 4
  %cmp68 = icmp sgt i32 %call67, 0
  br i1 %cmp68, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %scanned = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %60, i32 0, i32 1
  %61 = load i64*, i64** %scanned, align 8
  %tobool70 = icmp ne i64* %61, null
  br i1 %tobool70, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %while.body
  %62 = load i32, i32* %bytes, align 4
  %div = sdiv i32 %62, 4096
  %conv72 = sext i32 %div to i64
  %63 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %scanned73 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %63, i32 0, i32 1
  %64 = load i64*, i64** %scanned73, align 8
  %65 = load i64, i64* %64, align 8
  %add74 = add i64 %65, %conv72
  store i64 %add74, i64* %64, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %while.body
  %66 = load i32, i32* %shift, align 4
  %67 = load i32, i32* %bytes, align 4
  %add76 = add i32 %66, %67
  store i32 %add76, i32* %length, align 4
  %68 = load i8*, i8** %upt, align 8
  %69 = load i8*, i8** %buffer, align 8
  %cmp77 = icmp eq i8* %68, %69
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %if.end.75
  %70 = load i32, i32* %maxpatlen, align 4
  %71 = load i32, i32* %length, align 4
  %add80 = add i32 %71, %70
  store i32 %add80, i32* %length, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %if.end.75
  %72 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %tobool82 = icmp ne %struct.cli_matcher* %72, null
  br i1 %tobool82, label %if.then.83, label %if.end.106

if.then.83:                                       ; preds = %if.end.81
  %73 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %ac_only = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %73, i32 0, i32 1
  %74 = load i8, i8* %ac_only, align 1
  %conv84 = zext i8 %74 to i32
  %tobool85 = icmp ne i32 %conv84, 0
  br i1 %tobool85, label %if.then.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.83
  %75 = load i8*, i8** %upt, align 8
  %76 = load i32, i32* %length, align 4
  %77 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %77, i32 0, i32 0
  %78 = load i8**, i8*** %virname, align 8
  %79 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %80 = load i32, i32* %offset, align 4
  %81 = load i32, i32* %ftype.addr, align 4
  %82 = load i32, i32* %desc.addr, align 4
  %call86 = call i32 @cli_bm_scanbuff(i8* %75, i32 %76, i8** %78, %struct.cli_matcher* %79, i32 %80, i32 %81, i32 %82)
  store i32 %call86, i32* %ret, align 4
  %cmp87 = icmp ne i32 %call86, 1
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %lor.lhs.false, %if.then.83
  %83 = load i8*, i8** %upt, align 8
  %84 = load i32, i32* %length, align 4
  %85 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname90 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %85, i32 0, i32 0
  %86 = load i8**, i8*** %virname90, align 8
  %87 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %88 = load i8, i8* %otfrec.addr, align 1
  %89 = load i32, i32* %offset, align 4
  %90 = load i32, i32* %ftype.addr, align 4
  %91 = load i32, i32* %desc.addr, align 4
  %92 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %call91 = call i32 @cli_ac_scanbuff(i8* %83, i32 %84, i8** %86, %struct.cli_matcher* %87, %struct.cli_ac_data* %tdata, i8 zeroext %88, i32 %89, i32 %90, i32 %91, %struct.cli_matched_type** %92)
  store i32 %call91, i32* %ret, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %lor.lhs.false
  %93 = load i32, i32* %ret, align 4
  %cmp93 = icmp eq i32 %93, 1
  br i1 %cmp93, label %if.then.95, label %if.end.105

if.then.95:                                       ; preds = %if.end.92
  %94 = load i8*, i8** %buffer, align 8
  call void @free(i8* %94) #5
  %95 = load i8, i8* %ftonly.addr, align 1
  %tobool96 = icmp ne i8 %95, 0
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %if.then.95
  call void @cli_ac_freedata(%struct.cli_ac_data* %gdata)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.then.95
  call void @cli_ac_freedata(%struct.cli_ac_data* %tdata)
  %96 = load i32, i32* %desc.addr, align 4
  %call99 = call i64 @lseek(i32 %96, i64 0, i32 0) #5
  %97 = load i32, i32* %desc.addr, align 4
  %98 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine100 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %98, i32 0, i32 3
  %99 = load %struct.cl_engine*, %struct.cl_engine** %engine100, align 8
  %call101 = call i32 @cli_checkfp(i32 %97, %struct.cl_engine* %99)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.end.98
  store i32 0, i32* %retval
  br label %return

if.else.104:                                      ; preds = %if.end.98
  store i32 1, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.end.92
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.81
  %100 = load i8, i8* %ftonly.addr, align 1
  %tobool107 = icmp ne i8 %100, 0
  br i1 %tobool107, label %if.end.154, label %if.then.108

if.then.108:                                      ; preds = %if.end.106
  %101 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %ac_only109 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %101, i32 0, i32 1
  %102 = load i8, i8* %ac_only109, align 1
  %conv110 = zext i8 %102 to i32
  %tobool111 = icmp ne i32 %conv110, 0
  br i1 %tobool111, label %if.then.117, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %if.then.108
  %103 = load i8*, i8** %upt, align 8
  %104 = load i32, i32* %length, align 4
  %105 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname113 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %105, i32 0, i32 0
  %106 = load i8**, i8*** %virname113, align 8
  %107 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %108 = load i32, i32* %offset, align 4
  %109 = load i32, i32* %ftype.addr, align 4
  %110 = load i32, i32* %desc.addr, align 4
  %call114 = call i32 @cli_bm_scanbuff(i8* %103, i32 %104, i8** %106, %struct.cli_matcher* %107, i32 %108, i32 %109, i32 %110)
  store i32 %call114, i32* %ret, align 4
  %cmp115 = icmp ne i32 %call114, 1
  br i1 %cmp115, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %lor.lhs.false.112, %if.then.108
  %111 = load i8*, i8** %upt, align 8
  %112 = load i32, i32* %length, align 4
  %113 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname118 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %113, i32 0, i32 0
  %114 = load i8**, i8*** %virname118, align 8
  %115 = load %struct.cli_matcher*, %struct.cli_matcher** %groot, align 8
  %116 = load i8, i8* %otfrec.addr, align 1
  %117 = load i32, i32* %offset, align 4
  %118 = load i32, i32* %ftype.addr, align 4
  %119 = load i32, i32* %desc.addr, align 4
  %120 = load %struct.cli_matched_type**, %struct.cli_matched_type*** %ftoffset.addr, align 8
  %call119 = call i32 @cli_ac_scanbuff(i8* %111, i32 %112, i8** %114, %struct.cli_matcher* %115, %struct.cli_ac_data* %gdata, i8 zeroext %116, i32 %117, i32 %118, i32 %119, %struct.cli_matched_type** %120)
  store i32 %call119, i32* %ret, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %lor.lhs.false.112
  %121 = load i32, i32* %ret, align 4
  %cmp121 = icmp eq i32 %121, 1
  br i1 %cmp121, label %if.then.123, label %if.else.133

if.then.123:                                      ; preds = %if.end.120
  %122 = load i8*, i8** %buffer, align 8
  call void @free(i8* %122) #5
  call void @cli_ac_freedata(%struct.cli_ac_data* %gdata)
  %123 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %tobool124 = icmp ne %struct.cli_matcher* %123, null
  br i1 %tobool124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.then.123
  call void @cli_ac_freedata(%struct.cli_ac_data* %tdata)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.then.123
  %124 = load i32, i32* %desc.addr, align 4
  %call127 = call i64 @lseek(i32 %124, i64 0, i32 0) #5
  %125 = load i32, i32* %desc.addr, align 4
  %126 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine128 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %126, i32 0, i32 3
  %127 = load %struct.cl_engine*, %struct.cl_engine** %engine128, align 8
  %call129 = call i32 @cli_checkfp(i32 %125, %struct.cl_engine* %127)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.end.126
  store i32 0, i32* %retval
  br label %return

if.else.132:                                      ; preds = %if.end.126
  store i32 1, i32* %retval
  br label %return

if.else.133:                                      ; preds = %if.end.120
  %128 = load i8, i8* %otfrec.addr, align 1
  %conv134 = zext i8 %128 to i32
  %tobool135 = icmp ne i32 %conv134, 0
  br i1 %tobool135, label %land.lhs.true.136, label %if.end.144

land.lhs.true.136:                                ; preds = %if.else.133
  %129 = load i32, i32* %ret, align 4
  %cmp137 = icmp sge i32 %129, 500
  br i1 %cmp137, label %if.then.139, label %if.end.144

if.then.139:                                      ; preds = %land.lhs.true.136
  %130 = load i32, i32* %ret, align 4
  %131 = load i32, i32* %type, align 4
  %cmp140 = icmp sgt i32 %130, %131
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.then.139
  %132 = load i32, i32* %ret, align 4
  store i32 %132, i32* %type, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.then.139
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %land.lhs.true.136, %if.else.133
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144
  %133 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine146 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %133, i32 0, i32 3
  %134 = load %struct.cl_engine*, %struct.cl_engine** %engine146, align 8
  %md5_hlist147 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %134, i32 0, i32 4
  %135 = load i8**, i8*** %md5_hlist147, align 8
  %tobool148 = icmp ne i8** %135, null
  br i1 %tobool148, label %if.then.149, label %if.end.153

if.then.149:                                      ; preds = %if.end.145
  %136 = load i8*, i8** %buff, align 8
  %137 = load i32, i32* %shift, align 4
  %idx.ext150 = zext i32 %137 to i64
  %add.ptr151 = getelementptr inbounds i8, i8* %136, i64 %idx.ext150
  %138 = load i32, i32* %bytes, align 4
  %conv152 = sext i32 %138 to i64
  call void @cli_md5_update(%struct.cli_md5_ctx* %md5ctx, i8* %add.ptr151, i64 %conv152)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.149, %if.end.145
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.106
  %139 = load i32, i32* %bytes, align 4
  %140 = load i32, i32* %shift, align 4
  %add155 = add i32 %139, %140
  %cmp156 = icmp eq i32 %add155, 131072
  br i1 %cmp156, label %if.then.158, label %if.else.166

if.then.158:                                      ; preds = %if.end.154
  %141 = load i8*, i8** %buffer, align 8
  %142 = load i8*, i8** %endbl, align 8
  %143 = load i32, i32* %maxpatlen, align 4
  %conv159 = zext i32 %143 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %141, i8* %142, i64 %conv159, i32 1, i1 false)
  %144 = load i32, i32* %offset, align 4
  %add160 = add i32 %144, 131072
  store i32 %add160, i32* %offset, align 4
  %145 = load i8*, i8** %upt, align 8
  %146 = load i8*, i8** %buff, align 8
  %cmp161 = icmp eq i8* %145, %146
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.then.158
  %147 = load i8*, i8** %buffer, align 8
  store i8* %147, i8** %upt, align 8
  %148 = load i32, i32* %maxpatlen, align 4
  %149 = load i32, i32* %offset, align 4
  %sub164 = sub i32 %149, %148
  store i32 %sub164, i32* %offset, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.then.158
  store i32 0, i32* %shift, align 4
  br label %if.end.168

if.else.166:                                      ; preds = %if.end.154
  %150 = load i32, i32* %bytes, align 4
  %151 = load i32, i32* %shift, align 4
  %add167 = add i32 %151, %150
  store i32 %add167, i32* %shift, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.166, %if.end.165
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %152 = load i8*, i8** %buffer, align 8
  call void @free(i8* %152) #5
  %153 = load i8, i8* %ftonly.addr, align 1
  %tobool169 = icmp ne i8 %153, 0
  br i1 %tobool169, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %while.end
  call void @cli_ac_freedata(%struct.cli_ac_data* %gdata)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %while.end
  %154 = load %struct.cli_matcher*, %struct.cli_matcher** %troot, align 8
  %tobool172 = icmp ne %struct.cli_matcher* %154, null
  br i1 %tobool172, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.171
  call void @cli_ac_freedata(%struct.cli_ac_data* %tdata)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %if.end.171
  %155 = load i8, i8* %ftonly.addr, align 1
  %tobool175 = icmp ne i8 %155, 0
  br i1 %tobool175, label %if.end.205, label %land.lhs.true.176

land.lhs.true.176:                                ; preds = %if.end.174
  %156 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine177 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %156, i32 0, i32 3
  %157 = load %struct.cl_engine*, %struct.cl_engine** %engine177, align 8
  %md5_hlist178 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %157, i32 0, i32 4
  %158 = load i8**, i8*** %md5_hlist178, align 8
  %tobool179 = icmp ne i8** %158, null
  br i1 %tobool179, label %if.then.180, label %if.end.205

if.then.180:                                      ; preds = %land.lhs.true.176
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i32 0
  call void @cli_md5_final(i8* %arraydecay, %struct.cli_md5_ctx* %md5ctx)
  %arraydecay181 = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i32 0
  %159 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine182 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %159, i32 0, i32 3
  %160 = load %struct.cl_engine*, %struct.cl_engine** %engine182, align 8
  %call183 = call %struct.cli_md5_node* @cli_vermd5(i8* %arraydecay181, %struct.cl_engine* %160)
  store %struct.cli_md5_node* %call183, %struct.cli_md5_node** %md5_node, align 8
  %tobool184 = icmp ne %struct.cli_md5_node* %call183, null
  br i1 %tobool184, label %land.lhs.true.185, label %if.end.204

land.lhs.true.185:                                ; preds = %if.then.180
  %161 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5_node, align 8
  %fp = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %161, i32 0, i32 3
  %162 = load i16, i16* %fp, align 2
  %tobool186 = icmp ne i16 %162, 0
  br i1 %tobool186, label %if.end.204, label %if.then.187

if.then.187:                                      ; preds = %land.lhs.true.185
  %163 = load i32, i32* %desc.addr, align 4
  %call188 = call i32 @fstat(i32 %163, %struct.stat* %sb) #5
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.then.187
  store i32 -123, i32* %retval
  br label %return

if.end.191:                                       ; preds = %if.then.187
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %164 = load i64, i64* %st_size, align 8
  %conv192 = trunc i64 %164 to i32
  %165 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5_node, align 8
  %size = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %165, i32 0, i32 2
  %166 = load i32, i32* %size, align 4
  %cmp193 = icmp ne i32 %conv192, %166
  br i1 %cmp193, label %if.then.195, label %if.else.196

if.then.195:                                      ; preds = %if.end.191
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.203

if.else.196:                                      ; preds = %if.end.191
  %167 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname197 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %167, i32 0, i32 0
  %168 = load i8**, i8*** %virname197, align 8
  %tobool198 = icmp ne i8** %168, null
  br i1 %tobool198, label %if.then.199, label %if.end.202

if.then.199:                                      ; preds = %if.else.196
  %169 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5_node, align 8
  %virname200 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %169, i32 0, i32 0
  %170 = load i8*, i8** %virname200, align 8
  %171 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname201 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %171, i32 0, i32 0
  %172 = load i8**, i8*** %virname201, align 8
  store i8* %170, i8** %172, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.199, %if.else.196
  store i32 1, i32* %retval
  br label %return

if.end.203:                                       ; preds = %if.then.195
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %land.lhs.true.185, %if.then.180
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %land.lhs.true.176, %if.end.174
  %173 = load i8, i8* %otfrec.addr, align 1
  %conv206 = zext i8 %173 to i32
  %tobool207 = icmp ne i32 %conv206, 0
  br i1 %tobool207, label %cond.true.208, label %cond.false.209

cond.true.208:                                    ; preds = %if.end.205
  %174 = load i32, i32* %type, align 4
  br label %cond.end.210

cond.false.209:                                   ; preds = %if.end.205
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.209, %cond.true.208
  %cond211 = phi i32 [ %174, %cond.true.208 ], [ 0, %cond.false.209 ]
  store i32 %cond211, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.210, %if.end.202, %if.then.190, %if.else.132, %if.then.131, %if.else.104, %if.then.103, %if.then.53, %if.then.46, %if.then.41, %if.then.19, %if.then
  %175 = load i32, i32* %retval
  ret i32 %175
}

declare i8* @cli_calloc(i64, i64) #1

declare void @cli_md5_init(%struct.cli_md5_ctx*) #1

declare i32 @cli_readn(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cli_checkfp(i32 %fd, %struct.cl_engine* %engine) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine*, align 8
  %md5_node = alloca %struct.cli_md5_node*, align 8
  %digest = alloca i8*, align 8
  %sb = alloca %struct.stat, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %md5_hlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %0, i32 0, i32 4
  %1 = load i8**, i8*** %md5_hlist, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %call = call i8* @cli_md5digest(i32 %2)
  store i8* %call, i8** %digest, align 8
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i8*, i8** %digest, align 8
  %4 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %call3 = call %struct.cli_md5_node* @cli_vermd5(i8* %3, %struct.cl_engine* %4)
  store %struct.cli_md5_node* %call3, %struct.cli_md5_node** %md5_node, align 8
  %tobool4 = icmp ne %struct.cli_md5_node* %call3, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5_node, align 8
  %fp = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %5, i32 0, i32 3
  %6 = load i16, i16* %fp, align 2
  %conv = zext i16 %6 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %fd.addr, align 4
  %call7 = call i32 @fstat(i32 %7, %struct.stat* %sb) #5
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  store i32 -123, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.6
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %8 = load i64, i64* %st_size, align 8
  %conv11 = trunc i64 %8 to i32
  %9 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5_node, align 8
  %size = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %9, i32 0, i32 2
  %10 = load i32, i32* %size, align 4
  %cmp = icmp ne i32 %conv11, %10
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.14

if.else:                                          ; preds = %if.end.10
  %11 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5_node, align 8
  %virname = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %11, i32 0, i32 0
  %12 = load i8*, i8** %virname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0), i8* %12)
  %13 = load i8*, i8** %digest, align 8
  call void @free(i8* %13) #5
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end
  %14 = load i8*, i8** %digest, align 8
  call void @free(i8* %14) #5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else, %if.then.9, %if.then.2
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @cli_md5_update(%struct.cli_md5_ctx*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @cli_md5_final(i8*, %struct.cli_md5_ctx*) #1

declare void @cli_warnmsg(i8*, ...) #1

declare i8* @cli_md5digest(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
