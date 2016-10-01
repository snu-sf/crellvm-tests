; ModuleID = './MultiSource.Benchmarks.MallocBench/90.gs.idebug.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gx_device_s = type opaque
%struct.dict_s = type opaque
%struct.file_entry_s = type opaque
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }

@.str = private unnamed_addr constant [5 x i8] c"(%x)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"array(%u)0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"boolean %x\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"device 0x%lx\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"dict(%u/%u)0x%lx\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"file 0x%lx\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"int %ld\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"name(0x%lx#%x)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"op(%u)0x%lx\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"packedarray(%u)0x%lx\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"real %f\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"string(%u)0x%lx\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"type 0x%x\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@debug_dump_refs.ts = internal global [16 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"arry\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"int \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"oper\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"pary\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"str \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"colr\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"devc\00", align 1
@debug_dump_refs.as = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), align 8
@.str.30 = private unnamed_addr constant [17 x i8] c"xe......wr?????s\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"0x%lx: 0x%02x \00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"0x%02x?? \00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c" 0x%04x 0x%08lx\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"  =  %g\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"  =  %ld\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%lx:\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1

; Function Attrs: nounwind uwtable
define void @debug_print_ref(%struct.ref_s* %pref) #0 {
entry:
  %pref.addr = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %size1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 2
  %1 = load i16, i16* %size1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %size, align 4
  %2 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv2 = zext i16 %3 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %conv2)
  %4 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %5 to i32
  %and = and i32 %conv4, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 15, label %sw.bb.10
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.18
    i32 5, label %sw.bb.21
    i32 6, label %sw.bb.24
    i32 7, label %sw.bb.26
    i32 8, label %sw.bb.37
    i32 9, label %sw.bb.39
    i32 10, label %sw.bb.42
    i32 11, label %sw.bb.46
    i32 13, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %entry
  %6 = load i32, i32* %size, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %9 = ptrtoint %struct.ref_s* %8 to i64
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %6, i64 %9)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %index = bitcast %union.v* %value7 to i16*
  %11 = load i16, i16* %index, align 2
  %conv8 = zext i16 %11 to i32
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %conv8)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %pdevice = bitcast %union.v* %value11 to %struct.gx_device_s**
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8
  %14 = ptrtoint %struct.gx_device_s* %13 to i64
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i64 %14)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %call14 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @dict_length to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %15)
  %16 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %call15 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @dict_maxlength to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %16)
  %17 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %pdict = bitcast %union.v* %value16 to %struct.dict_s**
  %18 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %19 = ptrtoint %struct.dict_s* %18 to i64
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %call14, i32 %call15, i64 %19)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %20 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %pfile = bitcast %union.v* %value19 to %struct.file_entry_s**
  %21 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  %22 = ptrtoint %struct.file_entry_s* %21 to i64
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 %22)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %23 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %intval = bitcast %union.v* %value22 to i64*
  %24 = load i64, i64* %intval, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i64 %24)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %25 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %pname = bitcast %union.v* %value27 to %struct.name_s**
  %26 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %27 = ptrtoint %struct.name_s* %26 to i64
  %28 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %pname29 = bitcast %union.v* %value28 to %struct.name_s**
  %29 = load %struct.name_s*, %struct.name_s** %pname29, align 8
  %index30 = getelementptr inbounds %struct.name_s, %struct.name_s* %29, i32 0, i32 1
  %30 = load i16, i16* %index30, align 2
  %conv31 = zext i16 %30 to i32
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i64 %27, i32 %conv31)
  %31 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %pname34 = bitcast %union.v* %value33 to %struct.name_s**
  %32 = load %struct.name_s*, %struct.name_s** %pname34, align 8
  %string_bytes = getelementptr inbounds %struct.name_s, %struct.name_s* %32, i32 0, i32 3
  %33 = load i8*, i8** %string_bytes, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %pname36 = bitcast %union.v* %value35 to %struct.name_s**
  %35 = load %struct.name_s*, %struct.name_s** %pname36, align 8
  %string_size = getelementptr inbounds %struct.name_s, %struct.name_s* %35, i32 0, i32 2
  %36 = load i16, i16* %string_size, align 2
  call void @debug_print_string(i8* %33, i16 zeroext %36)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %37 = load i32, i32* %size, align 4
  %38 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %opproc = bitcast %union.v* %value40 to i32 (%struct.ref_s*)**
  %39 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc, align 8
  %40 = ptrtoint i32 (%struct.ref_s*)* %39 to i64
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %37, i64 %40)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %41 = load i32, i32* %size, align 4
  %42 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %refs44 = bitcast %union.v* %value43 to %struct.ref_s**
  %43 = load %struct.ref_s*, %struct.ref_s** %refs44, align 8
  %44 = ptrtoint %struct.ref_s* %43 to i64
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 %41, i64 %44)
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %45 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %realval = bitcast %union.v* %value47 to float*
  %46 = load float, float* %realval, align 4
  %conv48 = fpext float %46 to double
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), double %conv48)
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %47 = load i32, i32* %size, align 4
  %48 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %bytes = bitcast %union.v* %value51 to i8**
  %49 = load i8*, i8** %bytes, align 8
  %50 = ptrtoint i8* %49 to i64
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i32 %47, i64 %50)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %51 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %52 = load i16, i16* %type_attrs53, align 2
  %conv54 = zext i16 %52 to i32
  %and55 = and i32 %conv54, 255
  %shr56 = ashr i32 %and55, 2
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 %shr56)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.50, %sw.bb.46, %sw.bb.42, %sw.bb.39, %sw.bb.37, %sw.bb.26, %sw.bb.24, %sw.bb.21, %sw.bb.18, %sw.bb.13, %sw.bb.10, %sw.bb.6, %sw.bb
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @dict_length(...) #1

declare i32 @dict_maxlength(...) #1

; Function Attrs: nounwind uwtable
define void @debug_print_string(i8* %chrs, i16 zeroext %len) #0 {
entry:
  %chrs.addr = alloca i8*, align 8
  %len.addr = alloca i16, align 2
  %i = alloca i16, align 2
  store i8* %chrs, i8** %chrs.addr, align 8
  store i16 %len, i16* %len.addr, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %len.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16, i16* %i, align 2
  %idxprom = zext i16 %2 to i64
  %3 = load i8*, i8** %chrs.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %4 to i32
  %call = call i32 @putchar(i32 %conv3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i16, i16* %i, align 2
  %inc = add i16 %5, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define void @debug_dump_refs(%struct.ref_s* %from, %struct.ref_s* %to, i8* %msg) #0 {
entry:
  %from.addr = alloca %struct.ref_s*, align 8
  %to.addr = alloca %struct.ref_s*, align 8
  %msg.addr = alloca i8*, align 8
  %p = alloca %struct.ref_s*, align 8
  %type = alloca i32, align 4
  %attrs = alloca i32, align 4
  %btype = alloca i32, align 4
  %ap = alloca i8*, align 8
  store %struct.ref_s* %from, %struct.ref_s** %from.addr, align 8
  store %struct.ref_s* %to, %struct.ref_s** %to.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8
  store %struct.ref_s* %0, %struct.ref_s** %p, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** %to.addr, align 8
  %cmp = icmp ult %struct.ref_s* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %to.addr, align 8
  %cmp1 = icmp ult %struct.ref_s* %4, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  store i32 %shr, i32* %type, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %9 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %9 to i32
  store i32 %conv3, i32* %attrs, align 4
  %10 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %type_attrs4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %11 = load i16, i16* %type_attrs4, align 2
  %conv5 = zext i16 %11 to i32
  %and6 = and i32 %conv5, 255
  %shr7 = ashr i32 %and6, 2
  %cmp8 = icmp sge i32 %shr7, 16
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %12 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %type_attrs10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %13 = load i16, i16* %type_attrs10, align 2
  %conv11 = zext i16 %13 to i32
  %and12 = and i32 %conv11, 255
  %shr13 = ashr i32 %and12, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %shr13, %cond.false ]
  store i32 %cond, i32* %btype, align 4
  %14 = load i8*, i8** @debug_dump_refs.as, align 8
  store i8* %14, i8** %ap, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %16 = ptrtoint %struct.ref_s* %15 to i64
  %17 = load i32, i32* %type, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i64 %16, i32 %17)
  %18 = load i32, i32* %btype, align 4
  %cmp15 = icmp uge i32 %18, 16
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %cond.end
  %19 = load i32, i32* %btype, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 %19)
  br label %if.end.20

if.else:                                          ; preds = %cond.end
  %20 = load i32, i32* %btype, align 4
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* @debug_dump_refs.ts, i32 0, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* %21)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %22 = load i8*, i8** %ap, align 8
  %23 = load i8, i8* %22, align 1
  %tobool = icmp ne i8 %23, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %ap, align 8
  %25 = load i8, i8* %24, align 1
  %conv21 = sext i8 %25 to i32
  %cmp22 = icmp ne i32 %conv21, 46
  br i1 %cmp22, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %for.body
  %26 = load i32, i32* %attrs, align 4
  %and25 = and i32 %26, 1
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %if.then.24
  %27 = load i8*, i8** %ap, align 8
  %28 = load i8, i8* %27, align 1
  %conv28 = sext i8 %28 to i32
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.then.24
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.27
  %cond31 = phi i32 [ %conv28, %cond.true.27 ], [ 45, %cond.false.29 ]
  %call32 = call i32 @putchar(i32 %cond31)
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %29 = load i8*, i8** %ap, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %ap, align 8
  %30 = load i32, i32* %attrs, align 4
  %shr34 = lshr i32 %30, 1
  store i32 %shr34, i32* %attrs, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 2
  %32 = load i16, i16* %size, align 2
  %conv35 = zext i16 %32 to i32
  %33 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %34 = bitcast %union.v* %value to i64*
  %35 = load i64, i64* %34, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 %conv35, i64 %35)
  %36 = load i32, i32* %btype, align 4
  switch i32 %36, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %for.end
  %37 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %realval = bitcast %union.v* %value37 to float*
  %38 = load float, float* %realval, align 4
  %conv38 = fpext float %38 to double
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), double %conv38)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %for.end
  %39 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %intval = bitcast %union.v* %value41 to i64*
  %40 = load i64, i64* %intval, align 8
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i64 %40)
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.40, %sw.bb
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %41 = load %struct.ref_s*, %struct.ref_s** %p, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 1
  store %struct.ref_s* %incdec.ptr44, %struct.ref_s** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_dump_bytes(i8* %from, i8* %to, i8* %msg) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %msg.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* %to, i8** %to.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %from.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %from.addr, align 8
  %2 = load i8*, i8** %to.addr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %to.addr, align 8
  %cmp1 = icmp ne i8* %4, %5
  br i1 %cmp1, label %while.body, label %while.end.10

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 16
  %7 = load i8*, i8** %to.addr, align 8
  %cmp2 = icmp ult i8* %add.ptr, %7
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %8 = load i8*, i8** %p, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 16
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %9 = load i8*, i8** %to.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr3, %cond.true ], [ %9, %cond.false ]
  store i8* %cond, i8** %q, align 8
  %10 = load i8*, i8** %p, align 8
  %11 = ptrtoint i8* %10 to i64
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i64 %11)
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.7, %cond.end
  %12 = load i8*, i8** %p, align 8
  %13 = load i8*, i8** %q, align 8
  %cmp6 = icmp ne i8* %12, %13
  br i1 %cmp6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.5
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv = zext i8 %15 to i32
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %conv)
  br label %while.cond.5

while.end:                                        ; preds = %while.cond.5
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %while.cond

while.end.10:                                     ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
