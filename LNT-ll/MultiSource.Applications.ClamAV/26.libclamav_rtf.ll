; ModuleID = './MultiSource.Applications.ClamAV/26.libclamav_rtf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtf_action_mapping = type { i8*, i32 }
%struct.rtf_state = type { i64, i64, i64, i32, i32, i32, [33 x i8], i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)*, i32 (%struct.rtf_state*, i8*, i64)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i8* }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stack = type { %struct.rtf_state*, i64, i64, i64, i32 }
%struct.table = type { %struct.tableEntry*, %struct.tableEntry*, i32 }
%struct.tableEntry = type { i8*, i32, %struct.tableEntry* }
%struct.rtf_object_data = type { i8*, i32, i32, i32, i32, i8*, i8*, %struct.cli_ctx*, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"in cli_scanrtf()\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"ScanRTF -> Can't create temporary directory %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"RTF: Unable to load rtf action table\0A\00", align 1
@cli_leavetemps_flag = external global i8, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"RTF:Push failure!\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"RTF:pop failure!\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Invalid control word: maximum size exceeded:%s\0A\00", align 1
@rtf_action_mapping = internal constant [2 x %struct.rtf_action_mapping] [%struct.rtf_action_mapping { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 0 }, %struct.rtf_action_mapping { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 1 }], align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"objdata \00", align 1
@base_state = internal constant %struct.rtf_state { i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, [33 x i8] c"                              \00\00\00", i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)* null, i32 (%struct.rtf_state*, i8*, i64)* null, i32 (%struct.rtf_state*, %struct.cli_ctx*)* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [43 x i8] c"Warning: attempt to pop from empty stack!\0A\00", align 1
@hextable = internal constant [256 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], align 16
@.str.9 = private unnamed_addr constant [24 x i8] c"RTF: waiting for magic\0A\00", align 1
@rtf_data_magic = internal constant [8 x i8] c"\01\05\00\00\02\00\00\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"Warning: rtf objdata magic number not matched, expected:%d, got: %d, at pos:%lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"Description length too big (%lu), showing only 64 bytes of it\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"RTF: description length:%lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"RTF: in WAIT_DESC\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"RTF: waiting for more data(1)\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"RTF: waiting for more data(2)\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"Preparing to dump rtf embedded object, description:%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"RTF: next state: wait_data_size\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"RTF: in WAIT_DATA_SIZE\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Dumping rtf embedded object of size:%lu\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"RTF: next state: DUMP_DATA\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"RTF:Scanning embedded object:%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Decoding ole object\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scanrtf(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %tempname = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %ptr_end = alloca i8*, align 8
  %buff = alloca i8*, align 8
  %ret = alloca i32, align 4
  %state = alloca %struct.rtf_state, align 8
  %stack = alloca %struct.stack, align 8
  %bread = alloca i64, align 8
  %actiontable = alloca %struct.table*, align 8
  %main_symbols = alloca [256 x i8], align 16
  %i = alloca i64, align 8
  %left = alloca i64, align 8
  %use = alloca i64, align 8
  %action = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %0 = bitcast [256 x i8]* %main_symbols to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 256, i32 16, i1 false)
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %main_symbols, i32 0, i64 123
  store i8 1, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* %main_symbols, i32 0, i64 125
  store i8 1, i8* %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* %main_symbols, i32 0, i64 92
  store i8 1, i8* %arrayidx2, align 1
  %stack_cnt = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 2
  store i64 0, i64* %stack_cnt, align 8
  %stack_size = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 3
  store i64 16, i64* %stack_size, align 8
  %elements = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 1
  store i64 0, i64* %elements, align 8
  %warned = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 4
  store i32 0, i32* %warned, align 4
  %stack_size3 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 3
  %1 = load i64, i64* %stack_size3, align 8
  %mul = mul i64 %1, 104
  %call = call i8* @cli_malloc(i64 %mul)
  %2 = bitcast i8* %call to %struct.rtf_state*
  %states = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  store %struct.rtf_state* %2, %struct.rtf_state** %states, align 8
  %states4 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %3 = load %struct.rtf_state*, %struct.rtf_state** %states4, align 8
  %tobool = icmp ne %struct.rtf_state* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call5 = call i8* @cli_malloc(i64 8192)
  store i8* %call5, i8** %buff, align 8
  %4 = load i8*, i8** %buff, align 8
  %tobool6 = icmp ne i8* %4, null
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %states8 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %5 = load %struct.rtf_state*, %struct.rtf_state** %states8, align 8
  %6 = bitcast %struct.rtf_state* %5 to i8*
  call void @free(i8* %6) #2
  store i32 -114, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %call10 = call i8* @cli_gentemp(i8* null)
  store i8* %call10, i8** %tempname, align 8
  %7 = load i8*, i8** %tempname, align 8
  %call11 = call i32 @mkdir(i8* %7, i32 448) #2
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %8 = load i8*, i8** %tempname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i8* %8)
  %states14 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %9 = load %struct.rtf_state*, %struct.rtf_state** %states14, align 8
  %10 = bitcast %struct.rtf_state* %9 to i8*
  call void @free(i8* %10) #2
  %11 = load i8*, i8** %buff, align 8
  call void @free(i8* %11) #2
  %12 = load i8*, i8** %tempname, align 8
  call void @free(i8* %12) #2
  store i32 -118, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %call16 = call %struct.table* @tableCreate()
  store %struct.table* %call16, %struct.table** %actiontable, align 8
  %13 = load %struct.table*, %struct.table** %actiontable, align 8
  %call17 = call i32 @load_actions(%struct.table* %13)
  store i32 %call17, i32* %ret, align 4
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end.15
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  %states20 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %14 = load %struct.rtf_state*, %struct.rtf_state** %states20, align 8
  %15 = bitcast %struct.rtf_state* %14 to i8*
  call void @free(i8* %15) #2
  %16 = load i8*, i8** %buff, align 8
  call void @free(i8* %16) #2
  %17 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool21 = icmp ne i8 %17, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.then.19
  %18 = load i8*, i8** %tempname, align 8
  %call23 = call i32 @cli_rmdirs(i8* %18)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.19
  %19 = load i8*, i8** %tempname, align 8
  call void @free(i8* %19) #2
  %20 = load %struct.table*, %struct.table** %actiontable, align 8
  call void @tableDestroy(%struct.table* %20)
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.15
  call void @init_rtf_state(%struct.rtf_state* %state)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.25
  %22 = load i32, i32* %desc.addr, align 4
  %23 = load i8*, i8** %buff, align 8
  %call26 = call i32 @cli_readn(i32 %22, i8* %23, i32 8192)
  %conv = sext i32 %call26 to i64
  store i64 %conv, i64* %bread, align 8
  %cmp = icmp sgt i64 %conv, 0
  br i1 %cmp, label %while.body, label %while.end.292

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %buff, align 8
  store i8* %24, i8** %ptr, align 8
  %25 = load i8*, i8** %buff, align 8
  %26 = load i64, i64* %bread, align 8
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %add.ptr, i8** %ptr_end, align 8
  br label %while.cond.28

while.cond.28:                                    ; preds = %sw.epilog.291, %while.body
  %27 = load i8*, i8** %ptr, align 8
  %28 = load i8*, i8** %ptr_end, align 8
  %cmp29 = icmp ult i8* %27, %28
  br i1 %cmp29, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %while.cond.28
  %parse_state = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  %29 = load i32, i32* %parse_state, align 4
  switch i32 %29, label %sw.epilog.291 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.155
    i32 3, label %sw.bb.166
    i32 2, label %sw.bb.169
    i32 4, label %sw.bb.230
    i32 5, label %sw.bb.266
  ]

sw.bb:                                            ; preds = %while.body.31
  %30 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %31 = load i8, i8* %30, align 1
  %conv32 = zext i8 %31 to i32
  switch i32 %conv32, label %sw.default [
    i32 123, label %sw.bb.33
    i32 125, label %sw.bb.49
    i32 92, label %sw.bb.94
  ]

sw.bb.33:                                         ; preds = %sw.bb
  %call34 = call i32 @push_state(%struct.stack* %stack, %struct.rtf_state* %state)
  store i32 %call34, i32* %ret, align 4
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %sw.bb.33
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %cb_data = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  %32 = load i8*, i8** %cb_data, align 8
  %tobool37 = icmp ne i8* %32, null
  br i1 %tobool37, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.then.36
  %cb_end = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %33 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end, align 8
  %tobool38 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %33, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %land.lhs.true
  %cb_end40 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %34 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end40, align 8
  %35 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call41 = call i32 %34(%struct.rtf_state* %state, %struct.cli_ctx* %35)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %land.lhs.true, %if.then.36
  %36 = load %struct.table*, %struct.table** %actiontable, align 8
  call void @tableDestroy(%struct.table* %36)
  %37 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @cleanup_stack(%struct.stack* %stack, %struct.rtf_state* %state, %struct.cli_ctx* %37)
  %38 = load i8*, i8** %buff, align 8
  call void @free(i8* %38) #2
  %39 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool43 = icmp ne i8 %39, 0
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.end.42
  %40 = load i8*, i8** %tempname, align 8
  %call45 = call i32 @cli_rmdirs(i8* %40)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.42
  %41 = load i8*, i8** %tempname, align 8
  call void @free(i8* %41) #2
  %states47 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %42 = load %struct.rtf_state*, %struct.rtf_state** %states47, align 8
  %43 = bitcast %struct.rtf_state* %42 to i8*
  call void @free(i8* %43) #2
  %44 = load i32, i32* %ret, align 4
  store i32 %44, i32* %retval
  br label %return

if.end.48:                                        ; preds = %sw.bb.33
  br label %sw.epilog

sw.bb.49:                                         ; preds = %sw.bb
  %cb_data50 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  %45 = load i8*, i8** %cb_data50, align 8
  %tobool51 = icmp ne i8* %45, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.75

land.lhs.true.52:                                 ; preds = %sw.bb.49
  %cb_end53 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %46 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end53, align 8
  %tobool54 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %46, null
  br i1 %tobool54, label %if.then.55, label %if.end.75

if.then.55:                                       ; preds = %land.lhs.true.52
  %cb_end56 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %47 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end56, align 8
  %48 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call57 = call i32 %47(%struct.rtf_state* %state, %struct.cli_ctx* %48)
  store i32 %call57, i32* %ret, align 4
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.74

if.then.59:                                       ; preds = %if.then.55
  %cb_data60 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  %49 = load i8*, i8** %cb_data60, align 8
  %tobool61 = icmp ne i8* %49, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.68

land.lhs.true.62:                                 ; preds = %if.then.59
  %cb_end63 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %50 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end63, align 8
  %tobool64 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %50, null
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %land.lhs.true.62
  %cb_end66 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %51 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end66, align 8
  %52 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call67 = call i32 %51(%struct.rtf_state* %state, %struct.cli_ctx* %52)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %land.lhs.true.62, %if.then.59
  %53 = load %struct.table*, %struct.table** %actiontable, align 8
  call void @tableDestroy(%struct.table* %53)
  %54 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @cleanup_stack(%struct.stack* %stack, %struct.rtf_state* %state, %struct.cli_ctx* %54)
  %55 = load i8*, i8** %buff, align 8
  call void @free(i8* %55) #2
  %56 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool69 = icmp ne i8 %56, 0
  br i1 %tobool69, label %if.end.72, label %if.then.70

if.then.70:                                       ; preds = %if.end.68
  %57 = load i8*, i8** %tempname, align 8
  %call71 = call i32 @cli_rmdirs(i8* %57)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.68
  %58 = load i8*, i8** %tempname, align 8
  call void @free(i8* %58) #2
  %states73 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %59 = load %struct.rtf_state*, %struct.rtf_state** %states73, align 8
  %60 = bitcast %struct.rtf_state* %59 to i8*
  call void @free(i8* %60) #2
  %61 = load i32, i32* %ret, align 4
  store i32 %61, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.55
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true.52, %sw.bb.49
  %call76 = call i32 @pop_state(%struct.stack* %stack, %struct.rtf_state* %state)
  store i32 %call76, i32* %ret, align 4
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.93

if.then.78:                                       ; preds = %if.end.75
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  %cb_data79 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  %62 = load i8*, i8** %cb_data79, align 8
  %tobool80 = icmp ne i8* %62, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.end.87

land.lhs.true.81:                                 ; preds = %if.then.78
  %cb_end82 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %63 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end82, align 8
  %tobool83 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %63, null
  br i1 %tobool83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %land.lhs.true.81
  %cb_end85 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %64 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end85, align 8
  %65 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call86 = call i32 %64(%struct.rtf_state* %state, %struct.cli_ctx* %65)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %land.lhs.true.81, %if.then.78
  %66 = load %struct.table*, %struct.table** %actiontable, align 8
  call void @tableDestroy(%struct.table* %66)
  %67 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @cleanup_stack(%struct.stack* %stack, %struct.rtf_state* %state, %struct.cli_ctx* %67)
  %68 = load i8*, i8** %buff, align 8
  call void @free(i8* %68) #2
  %69 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool88 = icmp ne i8 %69, 0
  br i1 %tobool88, label %if.end.91, label %if.then.89

if.then.89:                                       ; preds = %if.end.87
  %70 = load i8*, i8** %tempname, align 8
  %call90 = call i32 @cli_rmdirs(i8* %70)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.87
  %71 = load i8*, i8** %tempname, align 8
  call void @free(i8* %71) #2
  %states92 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %72 = load %struct.rtf_state*, %struct.rtf_state** %states92, align 8
  %73 = bitcast %struct.rtf_state* %72 to i8*
  call void @free(i8* %73) #2
  %74 = load i32, i32* %ret, align 4
  store i32 %74, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.75
  br label %sw.epilog

sw.bb.94:                                         ; preds = %sw.bb
  %parse_state95 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 1, i32* %parse_state95, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %75 = load i8*, i8** %ptr, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %incdec.ptr96, i8** %ptr, align 8
  %76 = load i8*, i8** %ptr_end, align 8
  %77 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %left, align 8
  %78 = load i64, i64* %left, align 8
  store i64 %78, i64* %use, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %79 = load i64, i64* %i, align 8
  %80 = load i64, i64* %left, align 8
  %cmp97 = icmp ult i64 %79, %80
  br i1 %cmp97, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %81 = load i64, i64* %i, align 8
  %82 = load i8*, i8** %ptr, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %82, i64 %81
  %83 = load i8, i8* %arrayidx99, align 1
  %idxprom = zext i8 %83 to i64
  %arrayidx100 = getelementptr inbounds [256 x i8], [256 x i8]* %main_symbols, i32 0, i64 %idxprom
  %84 = load i8, i8* %arrayidx100, align 1
  %tobool101 = icmp ne i8 %84, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.body
  %85 = load i64, i64* %i, align 8
  store i64 %85, i64* %use, align 8
  br label %for.end

if.end.103:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %86 = load i64, i64* %i, align 8
  %inc = add i64 %86, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.102, %for.cond
  %cb_begin = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 7
  %87 = load i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)** %cb_begin, align 8
  %tobool104 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)* %87, null
  br i1 %tobool104, label %if.then.105, label %if.end.153

if.then.105:                                      ; preds = %for.end
  %cb_data106 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  %88 = load i8*, i8** %cb_data106, align 8
  %tobool107 = icmp ne i8* %88, null
  br i1 %tobool107, label %if.end.128, label %if.then.108

if.then.108:                                      ; preds = %if.then.105
  %cb_begin109 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 7
  %89 = load i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)** %cb_begin109, align 8
  %90 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %91 = load i8*, i8** %tempname, align 8
  %call110 = call i32 %89(%struct.rtf_state* %state, %struct.cli_ctx* %90, i8* %91)
  store i32 %call110, i32* %ret, align 4
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.112, label %if.end.127

if.then.112:                                      ; preds = %if.then.108
  %cb_data113 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  %92 = load i8*, i8** %cb_data113, align 8
  %tobool114 = icmp ne i8* %92, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.121

land.lhs.true.115:                                ; preds = %if.then.112
  %cb_end116 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %93 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end116, align 8
  %tobool117 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %93, null
  br i1 %tobool117, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %land.lhs.true.115
  %cb_end119 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %94 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end119, align 8
  %95 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call120 = call i32 %94(%struct.rtf_state* %state, %struct.cli_ctx* %95)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %land.lhs.true.115, %if.then.112
  %96 = load %struct.table*, %struct.table** %actiontable, align 8
  call void @tableDestroy(%struct.table* %96)
  %97 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @cleanup_stack(%struct.stack* %stack, %struct.rtf_state* %state, %struct.cli_ctx* %97)
  %98 = load i8*, i8** %buff, align 8
  call void @free(i8* %98) #2
  %99 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool122 = icmp ne i8 %99, 0
  br i1 %tobool122, label %if.end.125, label %if.then.123

if.then.123:                                      ; preds = %if.end.121
  %100 = load i8*, i8** %tempname, align 8
  %call124 = call i32 @cli_rmdirs(i8* %100)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %if.end.121
  %101 = load i8*, i8** %tempname, align 8
  call void @free(i8* %101) #2
  %states126 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %102 = load %struct.rtf_state*, %struct.rtf_state** %states126, align 8
  %103 = bitcast %struct.rtf_state* %102 to i8*
  call void @free(i8* %103) #2
  %104 = load i32, i32* %ret, align 4
  store i32 %104, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.then.108
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.105
  %cb_process = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 8
  %105 = load i32 (%struct.rtf_state*, i8*, i64)*, i32 (%struct.rtf_state*, i8*, i64)** %cb_process, align 8
  %106 = load i8*, i8** %ptr, align 8
  %107 = load i64, i64* %use, align 8
  %call129 = call i32 %105(%struct.rtf_state* %state, i8* %106, i64 %107)
  store i32 %call129, i32* %ret, align 4
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.152

if.then.131:                                      ; preds = %if.end.128
  %cb_end132 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %108 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end132, align 8
  %tobool133 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %108, null
  br i1 %tobool133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %if.then.131
  %cb_end135 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %109 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end135, align 8
  %110 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call136 = call i32 %109(%struct.rtf_state* %state, %struct.cli_ctx* %110)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %if.then.131
  %cb_data138 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  %111 = load i8*, i8** %cb_data138, align 8
  %tobool139 = icmp ne i8* %111, null
  br i1 %tobool139, label %land.lhs.true.140, label %if.end.146

land.lhs.true.140:                                ; preds = %if.end.137
  %cb_end141 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %112 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end141, align 8
  %tobool142 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %112, null
  br i1 %tobool142, label %if.then.143, label %if.end.146

if.then.143:                                      ; preds = %land.lhs.true.140
  %cb_end144 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %113 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end144, align 8
  %114 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call145 = call i32 %113(%struct.rtf_state* %state, %struct.cli_ctx* %114)
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %land.lhs.true.140, %if.end.137
  %115 = load %struct.table*, %struct.table** %actiontable, align 8
  call void @tableDestroy(%struct.table* %115)
  %116 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @cleanup_stack(%struct.stack* %stack, %struct.rtf_state* %state, %struct.cli_ctx* %116)
  %117 = load i8*, i8** %buff, align 8
  call void @free(i8* %117) #2
  %118 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool147 = icmp ne i8 %118, 0
  br i1 %tobool147, label %if.end.150, label %if.then.148

if.then.148:                                      ; preds = %if.end.146
  %119 = load i8*, i8** %tempname, align 8
  %call149 = call i32 @cli_rmdirs(i8* %119)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.end.146
  %120 = load i8*, i8** %tempname, align 8
  call void @free(i8* %120) #2
  %states151 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %121 = load %struct.rtf_state*, %struct.rtf_state** %states151, align 8
  %122 = bitcast %struct.rtf_state* %121 to i8*
  call void @free(i8* %122) #2
  %123 = load i32, i32* %ret, align 4
  store i32 %123, i32* %retval
  br label %return

if.end.152:                                       ; preds = %if.end.128
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %for.end
  %124 = load i64, i64* %use, align 8
  %125 = load i8*, i8** %ptr, align 8
  %add.ptr154 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %add.ptr154, i8** %ptr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.153, %sw.bb.94, %if.end.93, %if.end.48
  br label %sw.epilog.291

sw.bb.155:                                        ; preds = %while.body.31
  %126 = load i8*, i8** %ptr, align 8
  %127 = load i8, i8* %126, align 1
  %conv156 = zext i8 %127 to i32
  %idxprom157 = sext i32 %conv156 to i64
  %call158 = call i16** @__ctype_b_loc() #6
  %128 = load i16*, i16** %call158, align 8
  %arrayidx159 = getelementptr inbounds i16, i16* %128, i64 %idxprom157
  %129 = load i16, i16* %arrayidx159, align 2
  %conv160 = zext i16 %129 to i32
  %and = and i32 %conv160, 1024
  %tobool161 = icmp ne i32 %and, 0
  br i1 %tobool161, label %if.then.162, label %if.else

if.then.162:                                      ; preds = %sw.bb.155
  %parse_state163 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 2, i32* %parse_state163, align 4
  %controlword_cnt = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 1
  store i64 0, i64* %controlword_cnt, align 8
  br label %if.end.165

if.else:                                          ; preds = %sw.bb.155
  %parse_state164 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 3, i32* %parse_state164, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else, %if.then.162
  br label %sw.epilog.291

sw.bb.166:                                        ; preds = %while.body.31
  %130 = load i8*, i8** %ptr, align 8
  %incdec.ptr167 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr167, i8** %ptr, align 8
  %parse_state168 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 0, i32* %parse_state168, align 4
  br label %sw.epilog.291

sw.bb.169:                                        ; preds = %while.body.31
  %controlword_cnt170 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 1
  %131 = load i64, i64* %controlword_cnt170, align 8
  %cmp171 = icmp eq i64 %131, 32
  br i1 %cmp171, label %if.then.173, label %if.else.175

if.then.173:                                      ; preds = %sw.bb.169
  %controlword = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 6
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %controlword, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay)
  %parse_state174 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 0, i32* %parse_state174, align 4
  br label %if.end.229

if.else.175:                                      ; preds = %sw.bb.169
  %132 = load i8*, i8** %ptr, align 8
  %133 = load i8, i8* %132, align 1
  %conv176 = zext i8 %133 to i32
  %idxprom177 = sext i32 %conv176 to i64
  %call178 = call i16** @__ctype_b_loc() #6
  %134 = load i16*, i16** %call178, align 8
  %arrayidx179 = getelementptr inbounds i16, i16* %134, i64 %idxprom177
  %135 = load i16, i16* %arrayidx179, align 2
  %conv180 = zext i16 %135 to i32
  %and181 = and i32 %conv180, 1024
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %if.then.183, label %if.else.189

if.then.183:                                      ; preds = %if.else.175
  %136 = load i8*, i8** %ptr, align 8
  %incdec.ptr184 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr184, i8** %ptr, align 8
  %137 = load i8, i8* %136, align 1
  %controlword_cnt185 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 1
  %138 = load i64, i64* %controlword_cnt185, align 8
  %inc186 = add i64 %138, 1
  store i64 %inc186, i64* %controlword_cnt185, align 8
  %controlword187 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 6
  %arrayidx188 = getelementptr inbounds [33 x i8], [33 x i8]* %controlword187, i32 0, i64 %138
  store i8 %137, i8* %arrayidx188, align 1
  br label %if.end.228

if.else.189:                                      ; preds = %if.else.175
  %139 = load i8*, i8** %ptr, align 8
  %140 = load i8, i8* %139, align 1
  %conv190 = zext i8 %140 to i32
  %idxprom191 = sext i32 %conv190 to i64
  %call192 = call i16** @__ctype_b_loc() #6
  %141 = load i16*, i16** %call192, align 8
  %arrayidx193 = getelementptr inbounds i16, i16* %141, i64 %idxprom191
  %142 = load i16, i16* %arrayidx193, align 2
  %conv194 = zext i16 %142 to i32
  %and195 = and i32 %conv194, 8192
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %if.then.197, label %if.else.204

if.then.197:                                      ; preds = %if.else.189
  %143 = load i8*, i8** %ptr, align 8
  %incdec.ptr198 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr198, i8** %ptr, align 8
  %144 = load i8, i8* %143, align 1
  %controlword_cnt199 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 1
  %145 = load i64, i64* %controlword_cnt199, align 8
  %inc200 = add i64 %145, 1
  store i64 %inc200, i64* %controlword_cnt199, align 8
  %controlword201 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 6
  %arrayidx202 = getelementptr inbounds [33 x i8], [33 x i8]* %controlword201, i32 0, i64 %145
  store i8 %144, i8* %arrayidx202, align 1
  %parse_state203 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 5, i32* %parse_state203, align 4
  br label %if.end.227

if.else.204:                                      ; preds = %if.else.189
  %146 = load i8*, i8** %ptr, align 8
  %147 = load i8, i8* %146, align 1
  %conv205 = zext i8 %147 to i32
  %idxprom206 = sext i32 %conv205 to i64
  %call207 = call i16** @__ctype_b_loc() #6
  %148 = load i16*, i16** %call207, align 8
  %arrayidx208 = getelementptr inbounds i16, i16* %148, i64 %idxprom206
  %149 = load i16, i16* %arrayidx208, align 2
  %conv209 = zext i16 %149 to i32
  %and210 = and i32 %conv209, 2048
  %tobool211 = icmp ne i32 %and210, 0
  br i1 %tobool211, label %if.then.212, label %if.else.214

if.then.212:                                      ; preds = %if.else.204
  %parse_state213 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 4, i32* %parse_state213, align 4
  %controlword_param = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 2
  store i64 0, i64* %controlword_param, align 8
  %controlword_param_sign = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 4
  store i32 1, i32* %controlword_param_sign, align 4
  br label %if.end.226

if.else.214:                                      ; preds = %if.else.204
  %150 = load i8*, i8** %ptr, align 8
  %151 = load i8, i8* %150, align 1
  %conv215 = zext i8 %151 to i32
  %cmp216 = icmp eq i32 %conv215, 45
  br i1 %cmp216, label %if.then.218, label %if.else.223

if.then.218:                                      ; preds = %if.else.214
  %152 = load i8*, i8** %ptr, align 8
  %incdec.ptr219 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr219, i8** %ptr, align 8
  %parse_state220 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 4, i32* %parse_state220, align 4
  %controlword_param221 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 2
  store i64 0, i64* %controlword_param221, align 8
  %controlword_param_sign222 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 4
  store i32 -1, i32* %controlword_param_sign222, align 4
  br label %if.end.225

if.else.223:                                      ; preds = %if.else.214
  %parse_state224 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 5, i32* %parse_state224, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.223, %if.then.218
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.then.212
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.then.197
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.then.183
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.173
  br label %sw.epilog.291

sw.bb.230:                                        ; preds = %while.body.31
  %153 = load i8*, i8** %ptr, align 8
  %154 = load i8, i8* %153, align 1
  %conv231 = zext i8 %154 to i32
  %idxprom232 = sext i32 %conv231 to i64
  %call233 = call i16** @__ctype_b_loc() #6
  %155 = load i16*, i16** %call233, align 8
  %arrayidx234 = getelementptr inbounds i16, i16* %155, i64 %idxprom232
  %156 = load i16, i16* %arrayidx234, align 2
  %conv235 = zext i16 %156 to i32
  %and236 = and i32 %conv235, 2048
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %if.then.238, label %if.else.244

if.then.238:                                      ; preds = %sw.bb.230
  %controlword_param239 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 2
  %157 = load i64, i64* %controlword_param239, align 8
  %mul240 = mul nsw i64 %157, 10
  %158 = load i8*, i8** %ptr, align 8
  %incdec.ptr241 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr241, i8** %ptr, align 8
  %159 = load i8, i8* %158, align 1
  %conv242 = zext i8 %159 to i64
  %add = add nsw i64 %mul240, %conv242
  %sub = sub nsw i64 %add, 48
  %controlword_param243 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 2
  store i64 %sub, i64* %controlword_param243, align 8
  br label %if.end.265

if.else.244:                                      ; preds = %sw.bb.230
  %160 = load i8*, i8** %ptr, align 8
  %161 = load i8, i8* %160, align 1
  %conv245 = zext i8 %161 to i32
  %idxprom246 = sext i32 %conv245 to i64
  %call247 = call i16** @__ctype_b_loc() #6
  %162 = load i16*, i16** %call247, align 8
  %arrayidx248 = getelementptr inbounds i16, i16* %162, i64 %idxprom246
  %163 = load i16, i16* %arrayidx248, align 2
  %conv249 = zext i16 %163 to i32
  %and250 = and i32 %conv249, 1024
  %tobool251 = icmp ne i32 %and250, 0
  br i1 %tobool251, label %if.then.252, label %if.else.254

if.then.252:                                      ; preds = %if.else.244
  %164 = load i8*, i8** %ptr, align 8
  %incdec.ptr253 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr253, i8** %ptr, align 8
  br label %if.end.264

if.else.254:                                      ; preds = %if.else.244
  %controlword_param_sign255 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 4
  %165 = load i32, i32* %controlword_param_sign255, align 4
  %cmp256 = icmp slt i32 %165, 0
  br i1 %cmp256, label %if.then.258, label %if.end.262

if.then.258:                                      ; preds = %if.else.254
  %controlword_param259 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 2
  %166 = load i64, i64* %controlword_param259, align 8
  %sub260 = sub nsw i64 0, %166
  %controlword_param261 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 2
  store i64 %sub260, i64* %controlword_param261, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.258, %if.else.254
  %parse_state263 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 5, i32* %parse_state263, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.262, %if.then.252
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.238
  br label %sw.epilog.291

sw.bb.266:                                        ; preds = %while.body.31
  %controlword_cnt267 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 1
  %167 = load i64, i64* %controlword_cnt267, align 8
  %controlword268 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 6
  %arrayidx269 = getelementptr inbounds [33 x i8], [33 x i8]* %controlword268, i32 0, i64 %167
  store i8 0, i8* %arrayidx269, align 1
  %168 = load %struct.table*, %struct.table** %actiontable, align 8
  %controlword270 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 6
  %arraydecay271 = getelementptr inbounds [33 x i8], [33 x i8]* %controlword270, i32 0, i32 0
  %call272 = call i32 @tableFind(%struct.table* %168, i8* %arraydecay271)
  store i32 %call272, i32* %action, align 4
  %169 = load i32, i32* %action, align 4
  %cmp273 = icmp ne i32 %169, -1
  br i1 %cmp273, label %if.then.275, label %if.end.289

if.then.275:                                      ; preds = %sw.bb.266
  %cb_data276 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  %170 = load i8*, i8** %cb_data276, align 8
  %tobool277 = icmp ne i8* %170, null
  br i1 %tobool277, label %land.lhs.true.278, label %if.end.287

land.lhs.true.278:                                ; preds = %if.then.275
  %cb_end279 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %171 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end279, align 8
  %tobool280 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %171, null
  br i1 %tobool280, label %if.then.281, label %if.end.287

if.then.281:                                      ; preds = %land.lhs.true.278
  %cb_end282 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %172 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end282, align 8
  %173 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call283 = call i32 %172(%struct.rtf_state* %state, %struct.cli_ctx* %173)
  %cb_begin284 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 7
  store i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)* null, i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)** %cb_begin284, align 8
  %cb_end285 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  store i32 (%struct.rtf_state*, %struct.cli_ctx*)* null, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end285, align 8
  %cb_data286 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  store i8* null, i8** %cb_data286, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.281, %land.lhs.true.278, %if.then.275
  %174 = load i32, i32* %action, align 4
  %conv288 = sext i32 %174 to i64
  call void @rtf_action(%struct.rtf_state* %state, i64 %conv288)
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.287, %sw.bb.266
  %parse_state290 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 3
  store i32 0, i32* %parse_state290, align 4
  br label %sw.epilog.291

sw.epilog.291:                                    ; preds = %while.body.31, %if.end.289, %if.end.265, %if.end.229, %sw.bb.166, %if.end.165, %sw.epilog
  br label %while.cond.28

while.end:                                        ; preds = %while.cond.28
  br label %while.cond

while.end.292:                                    ; preds = %while.cond
  %cb_data293 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 10
  %175 = load i8*, i8** %cb_data293, align 8
  %tobool294 = icmp ne i8* %175, null
  br i1 %tobool294, label %land.lhs.true.295, label %if.end.301

land.lhs.true.295:                                ; preds = %while.end.292
  %cb_end296 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %176 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end296, align 8
  %tobool297 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %176, null
  br i1 %tobool297, label %if.then.298, label %if.end.301

if.then.298:                                      ; preds = %land.lhs.true.295
  %cb_end299 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %state, i32 0, i32 9
  %177 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end299, align 8
  %178 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call300 = call i32 %177(%struct.rtf_state* %state, %struct.cli_ctx* %178)
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.298, %land.lhs.true.295, %while.end.292
  %179 = load %struct.table*, %struct.table** %actiontable, align 8
  call void @tableDestroy(%struct.table* %179)
  %180 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @cleanup_stack(%struct.stack* %stack, %struct.rtf_state* %state, %struct.cli_ctx* %180)
  %181 = load i8*, i8** %buff, align 8
  call void @free(i8* %181) #2
  %182 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool302 = icmp ne i8 %182, 0
  br i1 %tobool302, label %if.end.305, label %if.then.303

if.then.303:                                      ; preds = %if.end.301
  %183 = load i8*, i8** %tempname, align 8
  %call304 = call i32 @cli_rmdirs(i8* %183)
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.303, %if.end.301
  %184 = load i8*, i8** %tempname, align 8
  call void @free(i8* %184) #2
  %states306 = getelementptr inbounds %struct.stack, %struct.stack* %stack, i32 0, i32 0
  %185 = load %struct.rtf_state*, %struct.rtf_state** %states306, align 8
  %186 = bitcast %struct.rtf_state* %185 to i8*
  call void @free(i8* %186) #2
  %187 = load i32, i32* %ret, align 4
  store i32 %187, i32* %retval
  br label %return

return:                                           ; preds = %if.end.305, %if.end.150, %if.end.125, %if.end.91, %if.end.72, %if.end.46, %if.end.24, %if.then.13, %if.then.7, %if.then
  %188 = load i32, i32* %retval
  ret i32 %188
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i8* @cli_gentemp(i8*) #1

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #3

declare %struct.table* @tableCreate() #1

; Function Attrs: nounwind uwtable
define internal i32 @load_actions(%struct.table* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.table*, align 8
  %i = alloca i64, align 8
  store %struct.table* %t, %struct.table** %t.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.table*, %struct.table** %t.addr, align 8
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.rtf_action_mapping], [2 x %struct.rtf_action_mapping]* @rtf_action_mapping, i32 0, i64 %2
  %controlword = getelementptr inbounds %struct.rtf_action_mapping, %struct.rtf_action_mapping* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %controlword, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [2 x %struct.rtf_action_mapping], [2 x %struct.rtf_action_mapping]* @rtf_action_mapping, i32 0, i64 %4
  %action = getelementptr inbounds %struct.rtf_action_mapping, %struct.rtf_action_mapping* %arrayidx1, i32 0, i32 1
  %5 = load i32, i32* %action, align 4
  %call = call i32 @tableInsert(%struct.table* %1, i8* %3, i32 %5)
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @cli_rmdirs(i8*) #1

declare void @tableDestroy(%struct.table*) #1

; Function Attrs: nounwind uwtable
define internal void @init_rtf_state(%struct.rtf_state* %state) #0 {
entry:
  %state.addr = alloca %struct.rtf_state*, align 8
  store %struct.rtf_state* %state, %struct.rtf_state** %state.addr, align 8
  %0 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %1 = bitcast %struct.rtf_state* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.rtf_state* @base_state to i8*), i64 104, i32 8, i1 false)
  %2 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %parse_state = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %2, i32 0, i32 3
  store i32 0, i32* %parse_state, align 4
  %3 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %controlword_cnt = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %3, i32 0, i32 1
  store i64 0, i64* %controlword_cnt, align 8
  ret void
}

declare i32 @cli_readn(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @push_state(%struct.stack* %stack, %struct.rtf_state* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %stack.addr = alloca %struct.stack*, align 8
  %state.addr = alloca %struct.rtf_state*, align 8
  %toplevel = alloca i32, align 4
  %defelements = alloca i64, align 8
  store %struct.stack* %stack, %struct.stack** %stack.addr, align 8
  store %struct.rtf_state* %state, %struct.rtf_state** %state.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %elements = getelementptr inbounds %struct.stack, %struct.stack* %0, i32 0, i32 1
  %1 = load i64, i64* %elements, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %elements, align 8
  %2 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %call = call i32 @compare_state(%struct.rtf_state* %2, %struct.rtf_state* @base_state)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %default_elements = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %3, i32 0, i32 0
  %4 = load i64, i64* %default_elements, align 8
  %inc1 = add i64 %4, 1
  store i64 %inc1, i64* %default_elements, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %stack_cnt = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 2
  %6 = load i64, i64* %stack_cnt, align 8
  %7 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %stack_size = getelementptr inbounds %struct.stack, %struct.stack* %7, i32 0, i32 3
  %8 = load i64, i64* %stack_size, align 8
  %cmp = icmp uge i64 %6, %8
  br i1 %cmp, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %stack_size3 = getelementptr inbounds %struct.stack, %struct.stack* %9, i32 0, i32 3
  %10 = load i64, i64* %stack_size3, align 8
  %add = add i64 %10, 128
  store i64 %add, i64* %stack_size3, align 8
  %11 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %states = getelementptr inbounds %struct.stack, %struct.stack* %11, i32 0, i32 0
  %12 = load %struct.rtf_state*, %struct.rtf_state** %states, align 8
  %13 = bitcast %struct.rtf_state* %12 to i8*
  %14 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %stack_size4 = getelementptr inbounds %struct.stack, %struct.stack* %14, i32 0, i32 3
  %15 = load i64, i64* %stack_size4, align 8
  %mul = mul i64 %15, 104
  %call5 = call i8* @cli_realloc2(i8* %13, i64 %mul)
  %16 = bitcast i8* %call5 to %struct.rtf_state*
  %17 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %states6 = getelementptr inbounds %struct.stack, %struct.stack* %17, i32 0, i32 0
  store %struct.rtf_state* %16, %struct.rtf_state** %states6, align 8
  %18 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %states7 = getelementptr inbounds %struct.stack, %struct.stack* %18, i32 0, i32 0
  %19 = load %struct.rtf_state*, %struct.rtf_state** %states7, align 8
  %tobool8 = icmp ne %struct.rtf_state* %19, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.2
  store i32 -114, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.2
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %20 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %stack_cnt12 = getelementptr inbounds %struct.stack, %struct.stack* %20, i32 0, i32 2
  %21 = load i64, i64* %stack_cnt12, align 8
  %inc13 = add i64 %21, 1
  store i64 %inc13, i64* %stack_cnt12, align 8
  %22 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %states14 = getelementptr inbounds %struct.stack, %struct.stack* %22, i32 0, i32 0
  %23 = load %struct.rtf_state*, %struct.rtf_state** %states14, align 8
  %arrayidx = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %23, i64 %21
  %24 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %25 = bitcast %struct.rtf_state* %arrayidx to i8*
  %26 = bitcast %struct.rtf_state* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 104, i32 8, i1 false)
  %27 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %encounteredTopLevel = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %27, i32 0, i32 5
  %28 = load i32, i32* %encounteredTopLevel, align 4
  store i32 %28, i32* %toplevel, align 4
  %29 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %default_elements15 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %29, i32 0, i32 0
  %30 = load i64, i64* %default_elements15, align 8
  store i64 %30, i64* %defelements, align 8
  %31 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %32 = bitcast %struct.rtf_state* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* bitcast (%struct.rtf_state* @base_state to i8*), i64 104, i32 8, i1 false)
  %33 = load i32, i32* %toplevel, align 4
  %34 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %encounteredTopLevel16 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %34, i32 0, i32 5
  store i32 %33, i32* %encounteredTopLevel16, align 4
  %35 = load i64, i64* %defelements, align 8
  %36 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %default_elements17 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %36, i32 0, i32 0
  store i64 %35, i64* %default_elements17, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal void @cleanup_stack(%struct.stack* %stack, %struct.rtf_state* %state, %struct.cli_ctx* %ctx) #0 {
entry:
  %stack.addr = alloca %struct.stack*, align 8
  %state.addr = alloca %struct.rtf_state*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  store %struct.stack* %stack, %struct.stack** %stack.addr, align 8
  store %struct.rtf_state* %state, %struct.rtf_state** %state.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %tobool = icmp ne %struct.stack* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %stack_cnt = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 2
  %2 = load i64, i64* %stack_cnt, align 8
  %tobool1 = icmp ne i64 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %5 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %call = call i32 @pop_state(%struct.stack* %4, %struct.rtf_state* %5)
  %6 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_data = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %6, i32 0, i32 10
  %7 = load i8*, i8** %cb_data, align 8
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %8 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_end = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %8, i32 0, i32 9
  %9 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end, align 8
  %tobool3 = icmp ne i32 (%struct.rtf_state*, %struct.cli_ctx*)* %9, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_end4 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %10, i32 0, i32 9
  %11 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end4, align 8
  %12 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %13 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call5 = call i32 %11(%struct.rtf_state* %12, %struct.cli_ctx* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pop_state(%struct.stack* %stack, %struct.rtf_state* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %stack.addr = alloca %struct.stack*, align 8
  %state.addr = alloca %struct.rtf_state*, align 8
  %default_elements1 = alloca i64, align 8
  %toplevel = alloca i32, align 4
  store %struct.stack* %stack, %struct.stack** %stack.addr, align 8
  store %struct.rtf_state* %state, %struct.rtf_state** %state.addr, align 8
  %0 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %elements = getelementptr inbounds %struct.stack, %struct.stack* %0, i32 0, i32 1
  %1 = load i64, i64* %elements, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %elements, align 8
  %2 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %default_elements = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %2, i32 0, i32 0
  %3 = load i64, i64* %default_elements, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %default_elements2 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %4, i32 0, i32 0
  %5 = load i64, i64* %default_elements2, align 8
  %sub = sub i64 %5, 1
  store i64 %sub, i64* %default_elements1, align 8
  %6 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %encounteredTopLevel = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %6, i32 0, i32 5
  %7 = load i32, i32* %encounteredTopLevel, align 4
  store i32 %7, i32* %toplevel, align 4
  %8 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %9 = bitcast %struct.rtf_state* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.rtf_state* @base_state to i8*), i64 104, i32 8, i1 false)
  %10 = load i64, i64* %default_elements1, align 8
  %11 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %default_elements3 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %11, i32 0, i32 0
  store i64 %10, i64* %default_elements3, align 8
  %12 = load i32, i32* %toplevel, align 4
  %13 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %encounteredTopLevel4 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %13, i32 0, i32 5
  store i32 %12, i32* %encounteredTopLevel4, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %14 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %stack_cnt = getelementptr inbounds %struct.stack, %struct.stack* %14, i32 0, i32 2
  %15 = load i64, i64* %stack_cnt, align 8
  %tobool5 = icmp ne i64 %15, 0
  br i1 %tobool5, label %if.end.11, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %warned = getelementptr inbounds %struct.stack, %struct.stack* %16, i32 0, i32 4
  %17 = load i32, i32* %warned, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0))
  %18 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %warned9 = getelementptr inbounds %struct.stack, %struct.stack* %18, i32 0, i32 4
  store i32 1, i32* %warned9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.then.6
  %19 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %20 = bitcast %struct.rtf_state* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast (%struct.rtf_state* @base_state to i8*), i64 104, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %21 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %22 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %stack_cnt12 = getelementptr inbounds %struct.stack, %struct.stack* %22, i32 0, i32 2
  %23 = load i64, i64* %stack_cnt12, align 8
  %dec13 = add i64 %23, -1
  store i64 %dec13, i64* %stack_cnt12, align 8
  %24 = load %struct.stack*, %struct.stack** %stack.addr, align 8
  %states = getelementptr inbounds %struct.stack, %struct.stack* %24, i32 0, i32 0
  %25 = load %struct.rtf_state*, %struct.rtf_state** %states, align 8
  %arrayidx = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %25, i64 %dec13
  %26 = bitcast %struct.rtf_state* %21 to i8*
  %27 = bitcast %struct.rtf_state* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 104, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.end.10, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @tableFind(%struct.table*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @rtf_action(%struct.rtf_state* %state, i64 %action) #0 {
entry:
  %state.addr = alloca %struct.rtf_state*, align 8
  %action.addr = alloca i64, align 8
  store %struct.rtf_state* %state, %struct.rtf_state** %state.addr, align 8
  store i64 %action, i64* %action.addr, align 8
  %0 = load i64, i64* %action.addr, align 8
  switch i64 %0, label %sw.epilog [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %encounteredTopLevel = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %1, i32 0, i32 5
  %2 = load i32, i32* %encounteredTopLevel, align 4
  %or = or i32 %2, 1
  store i32 %or, i32* %encounteredTopLevel, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %encounteredTopLevel2 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %3, i32 0, i32 5
  %4 = load i32, i32* %encounteredTopLevel2, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %5 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_begin = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %5, i32 0, i32 7
  store i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)* @rtf_object_begin, i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)** %cb_begin, align 8
  %6 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_process = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %6, i32 0, i32 8
  store i32 (%struct.rtf_state*, i8*, i64)* @rtf_object_process, i32 (%struct.rtf_state*, i8*, i64)** %cb_process, align 8
  %7 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_end = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %7, i32 0, i32 9
  store i32 (%struct.rtf_state*, %struct.cli_ctx*)* @rtf_object_end, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb
  ret void
}

declare i32 @tableInsert(%struct.table*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_state(%struct.rtf_state* %a, %struct.rtf_state* %b) #0 {
entry:
  %a.addr = alloca %struct.rtf_state*, align 8
  %b.addr = alloca %struct.rtf_state*, align 8
  store %struct.rtf_state* %a, %struct.rtf_state** %a.addr, align 8
  store %struct.rtf_state* %b, %struct.rtf_state** %b.addr, align 8
  %0 = load %struct.rtf_state*, %struct.rtf_state** %a.addr, align 8
  %controlword_param = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %0, i32 0, i32 2
  %1 = load i64, i64* %controlword_param, align 8
  %2 = load %struct.rtf_state*, %struct.rtf_state** %b.addr, align 8
  %controlword_param1 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %2, i32 0, i32 2
  %3 = load i64, i64* %controlword_param1, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtf_state*, %struct.rtf_state** %a.addr, align 8
  %parse_state = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %4, i32 0, i32 3
  %5 = load i32, i32* %parse_state, align 4
  %6 = load %struct.rtf_state*, %struct.rtf_state** %b.addr, align 8
  %parse_state2 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %6, i32 0, i32 3
  %7 = load i32, i32* %parse_state2, align 4
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load %struct.rtf_state*, %struct.rtf_state** %a.addr, align 8
  %encounteredTopLevel = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %8, i32 0, i32 5
  %9 = load i32, i32* %encounteredTopLevel, align 4
  %10 = load %struct.rtf_state*, %struct.rtf_state** %b.addr, align 8
  %encounteredTopLevel5 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %10, i32 0, i32 5
  %11 = load i32, i32* %encounteredTopLevel5, align 4
  %cmp6 = icmp eq i32 %9, %11
  br i1 %cmp6, label %land.lhs.true.7, label %land.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %12 = load %struct.rtf_state*, %struct.rtf_state** %a.addr, align 8
  %controlword = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %12, i32 0, i32 6
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %controlword, i32 0, i32 0
  %13 = load %struct.rtf_state*, %struct.rtf_state** %b.addr, align 8
  %controlword8 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %13, i32 0, i32 6
  %arraydecay9 = getelementptr inbounds [33 x i8], [33 x i8]* %controlword8, i32 0, i32 0
  %call = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay9, i64 33) #7
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %14 = load %struct.rtf_state*, %struct.rtf_state** %a.addr, align 8
  %cb_begin = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %14, i32 0, i32 7
  %15 = load i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)** %cb_begin, align 8
  %16 = load %struct.rtf_state*, %struct.rtf_state** %b.addr, align 8
  %cb_begin12 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %16, i32 0, i32 7
  %17 = load i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)** %cb_begin12, align 8
  %cmp13 = icmp eq i32 (%struct.rtf_state*, %struct.cli_ctx*, i8*)* %15, %17
  br i1 %cmp13, label %land.lhs.true.14, label %land.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %18 = load %struct.rtf_state*, %struct.rtf_state** %a.addr, align 8
  %cb_process = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %18, i32 0, i32 8
  %19 = load i32 (%struct.rtf_state*, i8*, i64)*, i32 (%struct.rtf_state*, i8*, i64)** %cb_process, align 8
  %20 = load %struct.rtf_state*, %struct.rtf_state** %b.addr, align 8
  %cb_process15 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %20, i32 0, i32 8
  %21 = load i32 (%struct.rtf_state*, i8*, i64)*, i32 (%struct.rtf_state*, i8*, i64)** %cb_process15, align 8
  %cmp16 = icmp eq i32 (%struct.rtf_state*, i8*, i64)* %19, %21
  br i1 %cmp16, label %land.lhs.true.17, label %land.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %22 = load %struct.rtf_state*, %struct.rtf_state** %a.addr, align 8
  %cb_end = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %22, i32 0, i32 9
  %23 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end, align 8
  %24 = load %struct.rtf_state*, %struct.rtf_state** %b.addr, align 8
  %cb_end18 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %24, i32 0, i32 9
  %25 = load i32 (%struct.rtf_state*, %struct.cli_ctx*)*, i32 (%struct.rtf_state*, %struct.cli_ctx*)** %cb_end18, align 8
  %cmp19 = icmp eq i32 (%struct.rtf_state*, %struct.cli_ctx*)* %23, %25
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.17
  %26 = load %struct.rtf_state*, %struct.rtf_state** %a.addr, align 8
  %cb_data = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %26, i32 0, i32 10
  %27 = load i8*, i8** %cb_data, align 8
  %28 = load %struct.rtf_state*, %struct.rtf_state** %b.addr, align 8
  %cb_data20 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %28, i32 0, i32 10
  %29 = load i8*, i8** %cb_data20, align 8
  %cmp21 = icmp eq i8* %27, %29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.17, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %30 = phi i1 [ false, %land.lhs.true.17 ], [ false, %land.lhs.true.14 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.7 ], [ false, %land.lhs.true.4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp21, %land.rhs ]
  %land.ext = zext i1 %30 to i32
  ret i32 %land.ext
}

declare i8* @cli_realloc2(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @rtf_object_begin(%struct.rtf_state* %state, %struct.cli_ctx* %ctx, i8* %tmpdir) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.rtf_state*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %tmpdir.addr = alloca i8*, align 8
  %data = alloca %struct.rtf_object_data*, align 8
  store %struct.rtf_state* %state, %struct.rtf_state** %state.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i8* %tmpdir, i8** %tmpdir.addr, align 8
  %call = call i8* @cli_malloc(i64 64)
  %0 = bitcast i8* %call to %struct.rtf_object_data*
  store %struct.rtf_object_data* %0, %struct.rtf_object_data** %data, align 8
  %1 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %tobool = icmp ne %struct.rtf_object_data* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %fd = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %2, i32 0, i32 1
  store i32 -1, i32* %fd, align 4
  %3 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %partial = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %3, i32 0, i32 2
  store i32 0, i32* %partial, align 4
  %4 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %has_partial = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %4, i32 0, i32 3
  store i32 0, i32* %has_partial, align 4
  %5 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %5, i32 0, i32 9
  store i64 0, i64* %bread, align 8
  %6 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %internal_state = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %6, i32 0, i32 4
  store i32 0, i32* %internal_state, align 4
  %7 = load i8*, i8** %tmpdir.addr, align 8
  %8 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %tmpdir1 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %8, i32 0, i32 6
  store i8* %7, i8** %tmpdir1, align 8
  %9 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %10 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %ctx2 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %10, i32 0, i32 7
  store %struct.cli_ctx* %9, %struct.cli_ctx** %ctx2, align 8
  %11 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %name = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %11, i32 0, i32 0
  store i8* null, i8** %name, align 8
  %12 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %12, i32 0, i32 5
  store i8* null, i8** %desc_name, align 8
  %13 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %14 = bitcast %struct.rtf_object_data* %13 to i8*
  %15 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_data = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %15, i32 0, i32 10
  store i8* %14, i8** %cb_data, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @rtf_object_process(%struct.rtf_state* %state, i8* %input, i64 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.rtf_state*, align 8
  %input.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %data = alloca %struct.rtf_object_data*, align 8
  %outdata = alloca [8192 x i8], align 16
  %out_data = alloca i8*, align 8
  %out_cnt = alloca i64, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %byte = alloca i8, align 1
  %out_want = alloca i64, align 8
  %out = alloca [4 x i8], align 1
  %rc = alloca i32, align 4
  store %struct.rtf_state* %state, %struct.rtf_state** %state.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_data = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %0, i32 0, i32 10
  %1 = load i8*, i8** %cb_data, align 8
  %2 = bitcast i8* %1 to %struct.rtf_object_data*
  store %struct.rtf_object_data* %2, %struct.rtf_object_data** %data, align 8
  store i64 0, i64* %out_cnt, align 8
  %3 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %tobool = icmp ne %struct.rtf_object_data* %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %len.addr, align 8
  %tobool1 = icmp ne i64 %4, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %has_partial = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %5, i32 0, i32 3
  %6 = load i32, i32* %has_partial, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.else.20

if.then.3:                                        ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %7, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %10 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %9
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #6
  %12 = load i16*, i16** %call, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %13 to i32
  %and = and i32 %conv5, 4096
  %tobool6 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %len.addr, align 8
  %cmp7 = icmp ult i64 %16, %17
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.end
  %18 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %partial = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %18, i32 0, i32 2
  %19 = load i32, i32* %partial, align 4
  %20 = load i64, i64* %i, align 8
  %inc10 = add i64 %20, 1
  store i64 %inc10, i64* %i, align 8
  %21 = load i8*, i8** %input.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %21, i64 %20
  %22 = load i8, i8* %arrayidx11, align 1
  %idxprom12 = zext i8 %22 to i64
  %arrayidx13 = getelementptr inbounds [256 x i16], [256 x i16]* @hextable, i32 0, i64 %idxprom12
  %23 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %23 to i32
  %or = or i32 %19, %conv14
  %conv15 = trunc i32 %or to i8
  %24 = load i64, i64* %out_cnt, align 8
  %inc16 = add i64 %24, 1
  store i64 %inc16, i64* %out_cnt, align 8
  %arrayidx17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %outdata, i32 0, i64 %24
  store i8 %conv15, i8* %arrayidx17, align 1
  %25 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %has_partial18 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %25, i32 0, i32 3
  store i32 0, i32* %has_partial18, align 4
  br label %if.end.19

if.else:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.9
  br label %if.end.21

if.else.20:                                       ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.end.19
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.72, %if.end.21
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %len.addr, align 8
  %cmp23 = icmp ult i64 %26, %27
  br i1 %cmp23, label %for.body.25, label %for.end.74

for.body.25:                                      ; preds = %for.cond.22
  %28 = load i64, i64* %i, align 8
  %29 = load i8*, i8** %input.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 %28
  %30 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %30 to i32
  %idxprom28 = sext i32 %conv27 to i64
  %call29 = call i16** @__ctype_b_loc() #6
  %31 = load i16*, i16** %call29, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %31, i64 %idxprom28
  %32 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %32 to i32
  %and32 = and i32 %conv31, 4096
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.71

if.then.34:                                       ; preds = %for.body.25
  %33 = load i64, i64* %i, align 8
  %inc35 = add i64 %33, 1
  store i64 %inc35, i64* %i, align 8
  %34 = load i8*, i8** %input.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %34, i64 %33
  %35 = load i8, i8* %arrayidx36, align 1
  %idxprom37 = zext i8 %35 to i64
  %arrayidx38 = getelementptr inbounds [256 x i16], [256 x i16]* @hextable, i32 0, i64 %idxprom37
  %36 = load i16, i16* %arrayidx38, align 2
  %conv39 = sext i16 %36 to i32
  %shl = shl i32 %conv39, 4
  %conv40 = trunc i32 %shl to i8
  store i8 %conv40, i8* %byte, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.34
  %37 = load i64, i64* %i, align 8
  %38 = load i64, i64* %len.addr, align 8
  %cmp41 = icmp ult i64 %37, %38
  br i1 %cmp41, label %land.rhs.43, label %land.end.53

land.rhs.43:                                      ; preds = %while.cond
  %39 = load i64, i64* %i, align 8
  %40 = load i8*, i8** %input.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %40, i64 %39
  %41 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %41 to i32
  %idxprom46 = sext i32 %conv45 to i64
  %call47 = call i16** @__ctype_b_loc() #6
  %42 = load i16*, i16** %call47, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %42, i64 %idxprom46
  %43 = load i16, i16* %arrayidx48, align 2
  %conv49 = zext i16 %43 to i32
  %and50 = and i32 %conv49, 4096
  %tobool51 = icmp ne i32 %and50, 0
  %lnot52 = xor i1 %tobool51, true
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.43, %while.cond
  %44 = phi i1 [ false, %while.cond ], [ %lnot52, %land.rhs.43 ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.53
  %45 = load i64, i64* %i, align 8
  %inc54 = add i64 %45, 1
  store i64 %inc54, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.53
  %46 = load i64, i64* %i, align 8
  %47 = load i64, i64* %len.addr, align 8
  %cmp55 = icmp eq i64 %46, %47
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %while.end
  %48 = load i8, i8* %byte, align 1
  %conv58 = zext i8 %48 to i32
  %49 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %partial59 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %49, i32 0, i32 2
  store i32 %conv58, i32* %partial59, align 4
  %50 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %has_partial60 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %50, i32 0, i32 3
  store i32 1, i32* %has_partial60, align 4
  br label %for.end.74

if.end.61:                                        ; preds = %while.end
  %51 = load i8, i8* %byte, align 1
  %conv62 = zext i8 %51 to i32
  %52 = load i64, i64* %i, align 8
  %53 = load i8*, i8** %input.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %53, i64 %52
  %54 = load i8, i8* %arrayidx63, align 1
  %idxprom64 = zext i8 %54 to i64
  %arrayidx65 = getelementptr inbounds [256 x i16], [256 x i16]* @hextable, i32 0, i64 %idxprom64
  %55 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %55 to i32
  %or67 = or i32 %conv62, %conv66
  %conv68 = trunc i32 %or67 to i8
  %56 = load i64, i64* %out_cnt, align 8
  %inc69 = add i64 %56, 1
  store i64 %inc69, i64* %out_cnt, align 8
  %arrayidx70 = getelementptr inbounds [8192 x i8], [8192 x i8]* %outdata, i32 0, i64 %56
  store i8 %conv68, i8* %arrayidx70, align 1
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.61, %for.body.25
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %57 = load i64, i64* %i, align 8
  %inc73 = add i64 %57, 1
  store i64 %inc73, i64* %i, align 8
  br label %for.cond.22

for.end.74:                                       ; preds = %if.then.57, %for.cond.22
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %outdata, i32 0, i32 0
  store i8* %arraydecay, i8** %out_data, align 8
  br label %while.cond.75

while.cond.75:                                    ; preds = %sw.epilog, %for.end.74
  %58 = load i8*, i8** %out_data, align 8
  %tobool76 = icmp ne i8* %58, null
  br i1 %tobool76, label %land.rhs.77, label %land.end.79

land.rhs.77:                                      ; preds = %while.cond.75
  %59 = load i64, i64* %out_cnt, align 8
  %tobool78 = icmp ne i64 %59, 0
  br label %land.end.79

land.end.79:                                      ; preds = %land.rhs.77, %while.cond.75
  %60 = phi i1 [ false, %while.cond.75 ], [ %tobool78, %land.rhs.77 ]
  br i1 %60, label %while.body.80, label %while.end.352

while.body.80:                                    ; preds = %land.end.79
  %61 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %internal_state = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %61, i32 0, i32 4
  %62 = load i32, i32* %internal_state, align 4
  switch i32 %62, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.115
    i32 2, label %sw.bb.166
    i32 3, label %sw.bb.232
    i32 4, label %sw.bb.254
    i32 5, label %sw.bb.296
    i32 6, label %sw.bb.351
  ]

sw.bb:                                            ; preds = %while.body.80
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  store i64 0, i64* %i, align 8
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.103, %sw.bb
  %63 = load i64, i64* %i, align 8
  %64 = load i64, i64* %out_cnt, align 8
  %cmp82 = icmp ult i64 %63, %64
  br i1 %cmp82, label %land.rhs.84, label %land.end.87

land.rhs.84:                                      ; preds = %for.cond.81
  %65 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %65, i32 0, i32 9
  %66 = load i64, i64* %bread, align 8
  %cmp85 = icmp ult i64 %66, 8
  br label %land.end.87

land.end.87:                                      ; preds = %land.rhs.84, %for.cond.81
  %67 = phi i1 [ false, %for.cond.81 ], [ %cmp85, %land.rhs.84 ]
  br i1 %67, label %for.body.88, label %for.end.107

for.body.88:                                      ; preds = %land.end.87
  %68 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread89 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %68, i32 0, i32 9
  %69 = load i64, i64* %bread89, align 8
  %arrayidx90 = getelementptr inbounds [8 x i8], [8 x i8]* @rtf_data_magic, i32 0, i64 %69
  %70 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %70 to i32
  %71 = load i64, i64* %i, align 8
  %72 = load i8*, i8** %out_data, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %72, i64 %71
  %73 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %73 to i32
  %cmp94 = icmp ne i32 %conv91, %conv93
  br i1 %cmp94, label %if.then.96, label %if.end.102

if.then.96:                                       ; preds = %for.body.88
  %74 = load i64, i64* %i, align 8
  %arrayidx97 = getelementptr inbounds [8 x i8], [8 x i8]* @rtf_data_magic, i32 0, i64 %74
  %75 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %75 to i32
  %76 = load i64, i64* %i, align 8
  %77 = load i8*, i8** %out_data, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %77, i64 %76
  %78 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %78 to i32
  %79 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread101 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %79, i32 0, i32 9
  %80 = load i64, i64* %bread101, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i32 0, i32 0), i32 %conv98, i32 %conv100, i64 %80)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.96, %for.body.88
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %81 = load i64, i64* %i, align 8
  %inc104 = add i64 %81, 1
  store i64 %inc104, i64* %i, align 8
  %82 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread105 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %82, i32 0, i32 9
  %83 = load i64, i64* %bread105, align 8
  %inc106 = add i64 %83, 1
  store i64 %inc106, i64* %bread105, align 8
  br label %for.cond.81

for.end.107:                                      ; preds = %land.end.87
  %84 = load i64, i64* %i, align 8
  %85 = load i64, i64* %out_cnt, align 8
  %sub = sub i64 %85, %84
  store i64 %sub, i64* %out_cnt, align 8
  %86 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread108 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %86, i32 0, i32 9
  %87 = load i64, i64* %bread108, align 8
  %cmp109 = icmp eq i64 %87, 8
  br i1 %cmp109, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %for.end.107
  %88 = load i64, i64* %i, align 8
  %89 = load i8*, i8** %out_data, align 8
  %add.ptr = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %add.ptr, i8** %out_data, align 8
  %90 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread112 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %90, i32 0, i32 9
  store i64 0, i64* %bread112, align 8
  %91 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %internal_state113 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %91, i32 0, i32 4
  store i32 1, i32* %internal_state113, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %for.end.107
  br label %sw.epilog

sw.bb.115:                                        ; preds = %while.body.80
  %92 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread116 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %92, i32 0, i32 9
  %93 = load i64, i64* %bread116, align 8
  %cmp117 = icmp eq i64 %93, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %sw.bb.115
  %94 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %94, i32 0, i32 8
  store i64 0, i64* %desc_len, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %sw.bb.115
  store i64 0, i64* %i, align 8
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.136, %if.end.120
  %95 = load i64, i64* %i, align 8
  %96 = load i64, i64* %out_cnt, align 8
  %cmp122 = icmp ult i64 %95, %96
  br i1 %cmp122, label %land.rhs.124, label %land.end.128

land.rhs.124:                                     ; preds = %for.cond.121
  %97 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread125 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %97, i32 0, i32 9
  %98 = load i64, i64* %bread125, align 8
  %cmp126 = icmp ult i64 %98, 4
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.124, %for.cond.121
  %99 = phi i1 [ false, %for.cond.121 ], [ %cmp126, %land.rhs.124 ]
  br i1 %99, label %for.body.129, label %for.end.140

for.body.129:                                     ; preds = %land.end.128
  %100 = load i64, i64* %i, align 8
  %101 = load i8*, i8** %out_data, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %101, i64 %100
  %102 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %102 to i64
  %103 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread132 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %103, i32 0, i32 9
  %104 = load i64, i64* %bread132, align 8
  %mul = mul i64 %104, 8
  %shl133 = shl i64 %conv131, %mul
  %105 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len134 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %105, i32 0, i32 8
  %106 = load i64, i64* %desc_len134, align 8
  %or135 = or i64 %106, %shl133
  store i64 %or135, i64* %desc_len134, align 8
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.129
  %107 = load i64, i64* %i, align 8
  %inc137 = add i64 %107, 1
  store i64 %inc137, i64* %i, align 8
  %108 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread138 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %108, i32 0, i32 9
  %109 = load i64, i64* %bread138, align 8
  %inc139 = add i64 %109, 1
  store i64 %inc139, i64* %bread138, align 8
  br label %for.cond.121

for.end.140:                                      ; preds = %land.end.128
  %110 = load i64, i64* %i, align 8
  %111 = load i64, i64* %out_cnt, align 8
  %sub141 = sub i64 %111, %110
  store i64 %sub141, i64* %out_cnt, align 8
  %112 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread142 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %112, i32 0, i32 9
  %113 = load i64, i64* %bread142, align 8
  %cmp143 = icmp eq i64 %113, 4
  br i1 %cmp143, label %if.then.145, label %if.end.165

if.then.145:                                      ; preds = %for.end.140
  %114 = load i64, i64* %i, align 8
  %115 = load i8*, i8** %out_data, align 8
  %add.ptr146 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %add.ptr146, i8** %out_data, align 8
  %116 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread147 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %116, i32 0, i32 9
  store i64 0, i64* %bread147, align 8
  %117 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len148 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %117, i32 0, i32 8
  %118 = load i64, i64* %desc_len148, align 8
  %cmp149 = icmp ugt i64 %118, 64
  br i1 %cmp149, label %if.then.151, label %if.else.154

if.then.151:                                      ; preds = %if.then.145
  %119 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len152 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %119, i32 0, i32 8
  %120 = load i64, i64* %desc_len152, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i32 0, i32 0), i64 %120)
  %call153 = call i8* @cli_malloc(i64 65)
  %121 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %121, i32 0, i32 5
  store i8* %call153, i8** %desc_name, align 8
  br label %if.end.158

if.else.154:                                      ; preds = %if.then.145
  %122 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len155 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %122, i32 0, i32 8
  %123 = load i64, i64* %desc_len155, align 8
  %add = add i64 %123, 1
  %call156 = call i8* @cli_malloc(i64 %add)
  %124 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name157 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %124, i32 0, i32 5
  store i8* %call156, i8** %desc_name157, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.154, %if.then.151
  %125 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name159 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %125, i32 0, i32 5
  %126 = load i8*, i8** %desc_name159, align 8
  %tobool160 = icmp ne i8* %126, null
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %if.end.158
  store i32 -114, i32* %retval
  br label %return

if.end.162:                                       ; preds = %if.end.158
  %127 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %internal_state163 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %127, i32 0, i32 4
  store i32 2, i32* %internal_state163, align 4
  %128 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len164 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %128, i32 0, i32 8
  %129 = load i64, i64* %desc_len164, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i64 %129)
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.162, %for.end.140
  br label %sw.epilog

sw.bb.166:                                        ; preds = %while.body.80
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  store i64 0, i64* %i, align 8
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.184, %sw.bb.166
  %130 = load i64, i64* %i, align 8
  %131 = load i64, i64* %out_cnt, align 8
  %cmp168 = icmp ult i64 %130, %131
  br i1 %cmp168, label %land.lhs.true, label %land.end.178

land.lhs.true:                                    ; preds = %for.cond.167
  %132 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread170 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %132, i32 0, i32 9
  %133 = load i64, i64* %bread170, align 8
  %134 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len171 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %134, i32 0, i32 8
  %135 = load i64, i64* %desc_len171, align 8
  %cmp172 = icmp ult i64 %133, %135
  br i1 %cmp172, label %land.rhs.174, label %land.end.178

land.rhs.174:                                     ; preds = %land.lhs.true
  %136 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread175 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %136, i32 0, i32 9
  %137 = load i64, i64* %bread175, align 8
  %cmp176 = icmp ult i64 %137, 64
  br label %land.end.178

land.end.178:                                     ; preds = %land.rhs.174, %land.lhs.true, %for.cond.167
  %138 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.167 ], [ %cmp176, %land.rhs.174 ]
  br i1 %138, label %for.body.179, label %for.end.188

for.body.179:                                     ; preds = %land.end.178
  %139 = load i64, i64* %i, align 8
  %140 = load i8*, i8** %out_data, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %140, i64 %139
  %141 = load i8, i8* %arrayidx180, align 1
  %142 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread181 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %142, i32 0, i32 9
  %143 = load i64, i64* %bread181, align 8
  %144 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name182 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %144, i32 0, i32 5
  %145 = load i8*, i8** %desc_name182, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %145, i64 %143
  store i8 %141, i8* %arrayidx183, align 1
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.body.179
  %146 = load i64, i64* %i, align 8
  %inc185 = add i64 %146, 1
  store i64 %inc185, i64* %i, align 8
  %147 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread186 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %147, i32 0, i32 9
  %148 = load i64, i64* %bread186, align 8
  %inc187 = add i64 %148, 1
  store i64 %inc187, i64* %bread186, align 8
  br label %for.cond.167

for.end.188:                                      ; preds = %land.end.178
  %149 = load i64, i64* %i, align 8
  %150 = load i64, i64* %out_cnt, align 8
  %sub189 = sub i64 %150, %149
  store i64 %sub189, i64* %out_cnt, align 8
  %151 = load i64, i64* %i, align 8
  %152 = load i8*, i8** %out_data, align 8
  %add.ptr190 = getelementptr inbounds i8, i8* %152, i64 %151
  store i8* %add.ptr190, i8** %out_data, align 8
  %153 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread191 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %153, i32 0, i32 9
  %154 = load i64, i64* %bread191, align 8
  %155 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len192 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %155, i32 0, i32 8
  %156 = load i64, i64* %desc_len192, align 8
  %cmp193 = icmp ult i64 %154, %156
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.200

land.lhs.true.195:                                ; preds = %for.end.188
  %157 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread196 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %157, i32 0, i32 9
  %158 = load i64, i64* %bread196, align 8
  %cmp197 = icmp ult i64 %158, 64
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %land.lhs.true.195
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.200:                                       ; preds = %land.lhs.true.195, %for.end.188
  %159 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread201 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %159, i32 0, i32 9
  %160 = load i64, i64* %bread201, align 8
  %161 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name202 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %161, i32 0, i32 5
  %162 = load i8*, i8** %desc_name202, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %162, i64 %160
  store i8 0, i8* %arrayidx203, align 1
  %163 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len204 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %163, i32 0, i32 8
  %164 = load i64, i64* %desc_len204, align 8
  %165 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread205 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %165, i32 0, i32 9
  %166 = load i64, i64* %bread205, align 8
  %sub206 = sub i64 %164, %166
  %167 = load i64, i64* %out_cnt, align 8
  %cmp207 = icmp ugt i64 %sub206, %167
  br i1 %cmp207, label %if.then.209, label %if.end.212

if.then.209:                                      ; preds = %if.end.200
  %168 = load i64, i64* %out_cnt, align 8
  %169 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len210 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %169, i32 0, i32 8
  %170 = load i64, i64* %desc_len210, align 8
  %sub211 = sub i64 %170, %168
  store i64 %sub211, i64* %desc_len210, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.212:                                       ; preds = %if.end.200
  %171 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len213 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %171, i32 0, i32 8
  %172 = load i64, i64* %desc_len213, align 8
  %173 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread214 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %173, i32 0, i32 9
  %174 = load i64, i64* %bread214, align 8
  %sub215 = sub i64 %172, %174
  %175 = load i64, i64* %out_cnt, align 8
  %sub216 = sub i64 %175, %sub215
  store i64 %sub216, i64* %out_cnt, align 8
  %176 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread217 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %176, i32 0, i32 9
  %177 = load i64, i64* %bread217, align 8
  %178 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len218 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %178, i32 0, i32 8
  %179 = load i64, i64* %desc_len218, align 8
  %cmp219 = icmp uge i64 %177, %179
  br i1 %cmp219, label %if.then.221, label %if.end.231

if.then.221:                                      ; preds = %if.end.212
  %180 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len222 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %180, i32 0, i32 8
  %181 = load i64, i64* %desc_len222, align 8
  %182 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread223 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %182, i32 0, i32 9
  %183 = load i64, i64* %bread223, align 8
  %sub224 = sub i64 %181, %183
  %184 = load i8*, i8** %out_data, align 8
  %add.ptr225 = getelementptr inbounds i8, i8* %184, i64 %sub224
  store i8* %add.ptr225, i8** %out_data, align 8
  %185 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread226 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %185, i32 0, i32 9
  store i64 0, i64* %bread226, align 8
  %186 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name227 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %186, i32 0, i32 5
  %187 = load i8*, i8** %desc_name227, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i32 0, i32 0), i8* %187)
  %188 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name228 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %188, i32 0, i32 5
  %189 = load i8*, i8** %desc_name228, align 8
  call void @free(i8* %189) #2
  %190 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name229 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %190, i32 0, i32 5
  store i8* null, i8** %desc_name229, align 8
  %191 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %internal_state230 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %191, i32 0, i32 4
  store i32 3, i32* %internal_state230, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.221, %if.end.212
  br label %sw.epilog

sw.bb.232:                                        ; preds = %while.body.80
  %192 = load i64, i64* %out_cnt, align 8
  %193 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread233 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %193, i32 0, i32 9
  %194 = load i64, i64* %bread233, align 8
  %sub234 = sub i64 8, %194
  %cmp235 = icmp ult i64 %192, %sub234
  br i1 %cmp235, label %if.then.237, label %if.else.240

if.then.237:                                      ; preds = %sw.bb.232
  store i64 0, i64* %out_cnt, align 8
  %195 = load i64, i64* %out_cnt, align 8
  %196 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread238 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %196, i32 0, i32 9
  %197 = load i64, i64* %bread238, align 8
  %add239 = add i64 %197, %195
  store i64 %add239, i64* %bread238, align 8
  br label %if.end.245

if.else.240:                                      ; preds = %sw.bb.232
  %198 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread241 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %198, i32 0, i32 9
  %199 = load i64, i64* %bread241, align 8
  %sub242 = sub i64 8, %199
  %200 = load i64, i64* %out_cnt, align 8
  %sub243 = sub i64 %200, %sub242
  store i64 %sub243, i64* %out_cnt, align 8
  %201 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread244 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %201, i32 0, i32 9
  store i64 8, i64* %bread244, align 8
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.240, %if.then.237
  %202 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread246 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %202, i32 0, i32 9
  %203 = load i64, i64* %bread246, align 8
  %cmp247 = icmp eq i64 %203, 8
  br i1 %cmp247, label %if.then.249, label %if.end.253

if.then.249:                                      ; preds = %if.end.245
  %204 = load i8*, i8** %out_data, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %204, i64 8
  store i8* %add.ptr250, i8** %out_data, align 8
  %205 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread251 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %205, i32 0, i32 9
  store i64 0, i64* %bread251, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0))
  %206 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %internal_state252 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %206, i32 0, i32 4
  store i32 4, i32* %internal_state252, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.249, %if.end.245
  br label %sw.epilog

sw.bb.254:                                        ; preds = %while.body.80
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0))
  %207 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread255 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %207, i32 0, i32 9
  %208 = load i64, i64* %bread255, align 8
  %cmp256 = icmp eq i64 %208, 0
  br i1 %cmp256, label %if.then.258, label %if.end.260

if.then.258:                                      ; preds = %sw.bb.254
  %209 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len259 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %209, i32 0, i32 8
  store i64 0, i64* %desc_len259, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.258, %sw.bb.254
  store i64 0, i64* %i, align 8
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc.277, %if.end.260
  %210 = load i64, i64* %i, align 8
  %211 = load i64, i64* %out_cnt, align 8
  %cmp262 = icmp ult i64 %210, %211
  br i1 %cmp262, label %land.rhs.264, label %land.end.268

land.rhs.264:                                     ; preds = %for.cond.261
  %212 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread265 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %212, i32 0, i32 9
  %213 = load i64, i64* %bread265, align 8
  %cmp266 = icmp ult i64 %213, 4
  br label %land.end.268

land.end.268:                                     ; preds = %land.rhs.264, %for.cond.261
  %214 = phi i1 [ false, %for.cond.261 ], [ %cmp266, %land.rhs.264 ]
  br i1 %214, label %for.body.269, label %for.end.281

for.body.269:                                     ; preds = %land.end.268
  %215 = load i64, i64* %i, align 8
  %216 = load i8*, i8** %out_data, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %216, i64 %215
  %217 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %217 to i64
  %218 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread272 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %218, i32 0, i32 9
  %219 = load i64, i64* %bread272, align 8
  %mul273 = mul i64 8, %219
  %shl274 = shl i64 %conv271, %mul273
  %220 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len275 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %220, i32 0, i32 8
  %221 = load i64, i64* %desc_len275, align 8
  %or276 = or i64 %221, %shl274
  store i64 %or276, i64* %desc_len275, align 8
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.269
  %222 = load i64, i64* %i, align 8
  %inc278 = add i64 %222, 1
  store i64 %inc278, i64* %i, align 8
  %223 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread279 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %223, i32 0, i32 9
  %224 = load i64, i64* %bread279, align 8
  %inc280 = add i64 %224, 1
  store i64 %inc280, i64* %bread279, align 8
  br label %for.cond.261

for.end.281:                                      ; preds = %land.end.268
  %225 = load i64, i64* %i, align 8
  %226 = load i64, i64* %out_cnt, align 8
  %sub282 = sub i64 %226, %225
  store i64 %sub282, i64* %out_cnt, align 8
  %227 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread283 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %227, i32 0, i32 9
  %228 = load i64, i64* %bread283, align 8
  %cmp284 = icmp eq i64 %228, 4
  br i1 %cmp284, label %if.then.286, label %if.end.295

if.then.286:                                      ; preds = %for.end.281
  %229 = load i64, i64* %i, align 8
  %230 = load i8*, i8** %out_data, align 8
  %add.ptr287 = getelementptr inbounds i8, i8* %230, i64 %229
  store i8* %add.ptr287, i8** %out_data, align 8
  %231 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread288 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %231, i32 0, i32 9
  store i64 0, i64* %bread288, align 8
  %232 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len289 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %232, i32 0, i32 8
  %233 = load i64, i64* %desc_len289, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0), i64 %233)
  %234 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %tmpdir = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %234, i32 0, i32 6
  %235 = load i8*, i8** %tmpdir, align 8
  %236 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %name = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %236, i32 0, i32 0
  %237 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %fd = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %237, i32 0, i32 1
  %call290 = call i32 @cli_gentempfd(i8* %235, i8** %name, i32* %fd)
  store i32 %call290, i32* %ret, align 4
  %tobool291 = icmp ne i32 %call290, 0
  br i1 %tobool291, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.then.286
  %238 = load i32, i32* %ret, align 4
  store i32 %238, i32* %retval
  br label %return

if.end.293:                                       ; preds = %if.then.286
  %239 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %internal_state294 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %239, i32 0, i32 4
  store i32 5, i32* %internal_state294, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.293, %for.end.281
  br label %sw.epilog

sw.bb.296:                                        ; preds = %while.body.80
  %240 = load i64, i64* %out_cnt, align 8
  %241 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len297 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %241, i32 0, i32 8
  %242 = load i64, i64* %desc_len297, align 8
  %cmp298 = icmp ult i64 %240, %242
  br i1 %cmp298, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.296
  %243 = load i64, i64* %out_cnt, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.296
  %244 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len300 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %244, i32 0, i32 8
  %245 = load i64, i64* %desc_len300, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %243, %cond.true ], [ %245, %cond.false ]
  store i64 %cond, i64* %out_want, align 8
  %246 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread301 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %246, i32 0, i32 9
  %247 = load i64, i64* %bread301, align 8
  %tobool302 = icmp ne i64 %247, 0
  br i1 %tobool302, label %if.end.328, label %if.then.303

if.then.303:                                      ; preds = %cond.end
  %248 = load i8*, i8** %out_data, align 8
  %arrayidx304 = getelementptr inbounds i8, i8* %248, i64 0
  %249 = load i8, i8* %arrayidx304, align 1
  %conv305 = zext i8 %249 to i32
  %cmp306 = icmp ne i32 %conv305, 208
  br i1 %cmp306, label %if.then.313, label %lor.lhs.false.308

lor.lhs.false.308:                                ; preds = %if.then.303
  %250 = load i8*, i8** %out_data, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %250, i64 1
  %251 = load i8, i8* %arrayidx309, align 1
  %conv310 = zext i8 %251 to i32
  %cmp311 = icmp ne i32 %conv310, 207
  br i1 %cmp311, label %if.then.313, label %if.else.325

if.then.313:                                      ; preds = %lor.lhs.false.308, %if.then.303
  %252 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread314 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %252, i32 0, i32 9
  store i64 1, i64* %bread314, align 8
  %253 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len315 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %253, i32 0, i32 8
  %254 = load i64, i64* %desc_len315, align 8
  %conv316 = trunc i64 %254 to i32
  %arraydecay317 = getelementptr inbounds [4 x i8], [4 x i8]* %out, i32 0, i32 0
  %255 = bitcast i8* %arraydecay317 to i32*
  store i32 %conv316, i32* %255, align 4
  %256 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %fd318 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %256, i32 0, i32 1
  %257 = load i32, i32* %fd318, align 4
  %arraydecay319 = getelementptr inbounds [4 x i8], [4 x i8]* %out, i32 0, i32 0
  %call320 = call i32 @cli_writen(i32 %257, i8* %arraydecay319, i32 4)
  %cmp321 = icmp ne i32 %call320, 4
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %if.then.313
  store i32 -123, i32* %retval
  br label %return

if.end.324:                                       ; preds = %if.then.313
  br label %if.end.327

if.else.325:                                      ; preds = %lor.lhs.false.308
  %258 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread326 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %258, i32 0, i32 9
  store i64 2, i64* %bread326, align 8
  br label %if.end.327

if.end.327:                                       ; preds = %if.else.325, %if.end.324
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %cond.end
  %259 = load i64, i64* %out_want, align 8
  %260 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len329 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %260, i32 0, i32 8
  %261 = load i64, i64* %desc_len329, align 8
  %sub330 = sub i64 %261, %259
  store i64 %sub330, i64* %desc_len329, align 8
  %262 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %fd331 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %262, i32 0, i32 1
  %263 = load i32, i32* %fd331, align 4
  %264 = load i8*, i8** %out_data, align 8
  %265 = load i64, i64* %out_want, align 8
  %conv332 = trunc i64 %265 to i32
  %call333 = call i32 @cli_writen(i32 %263, i8* %264, i32 %conv332)
  %conv334 = sext i32 %call333 to i64
  %266 = load i64, i64* %out_want, align 8
  %cmp335 = icmp ne i64 %conv334, %266
  br i1 %cmp335, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %if.end.328
  store i32 -123, i32* %retval
  br label %return

if.end.338:                                       ; preds = %if.end.328
  %267 = load i64, i64* %out_want, align 8
  %268 = load i8*, i8** %out_data, align 8
  %add.ptr339 = getelementptr inbounds i8, i8* %268, i64 %267
  store i8* %add.ptr339, i8** %out_data, align 8
  %269 = load i64, i64* %out_want, align 8
  %270 = load i64, i64* %out_cnt, align 8
  %sub340 = sub i64 %270, %269
  store i64 %sub340, i64* %out_cnt, align 8
  %271 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_len341 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %271, i32 0, i32 8
  %272 = load i64, i64* %desc_len341, align 8
  %tobool342 = icmp ne i64 %272, 0
  br i1 %tobool342, label %if.end.350, label %if.then.343

if.then.343:                                      ; preds = %if.end.338
  %273 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %274 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %ctx = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %274, i32 0, i32 7
  %275 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %call344 = call i32 @decode_and_scan(%struct.rtf_object_data* %273, %struct.cli_ctx* %275)
  store i32 %call344, i32* %rc, align 4
  %tobool345 = icmp ne i32 %call344, 0
  br i1 %tobool345, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %if.then.343
  %276 = load i32, i32* %rc, align 4
  store i32 %276, i32* %retval
  br label %return

if.end.347:                                       ; preds = %if.then.343
  %277 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %bread348 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %277, i32 0, i32 9
  store i64 0, i64* %bread348, align 8
  %278 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %internal_state349 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %278, i32 0, i32 4
  store i32 0, i32* %internal_state349, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.347, %if.end.338
  br label %sw.epilog

sw.bb.351:                                        ; preds = %while.body.80
  br label %sw.default

sw.default:                                       ; preds = %while.body.80, %sw.bb.351
  store i64 0, i64* %out_cnt, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.350, %if.end.295, %if.end.253, %if.end.231, %if.end.165, %if.end.114
  br label %while.cond.75

while.end.352:                                    ; preds = %land.end.79
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.352, %if.then.346, %if.then.337, %if.then.323, %if.then.292, %if.then.209, %if.then.199, %if.then.161, %if.else, %if.then
  %279 = load i32, i32* %retval
  ret i32 %279
}

; Function Attrs: nounwind uwtable
define internal i32 @rtf_object_end(%struct.rtf_state* %state, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.rtf_state*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %data = alloca %struct.rtf_object_data*, align 8
  %rc = alloca i32, align 4
  store %struct.rtf_state* %state, %struct.rtf_state** %state.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_data = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %0, i32 0, i32 10
  %1 = load i8*, i8** %cb_data, align 8
  %2 = bitcast i8* %1 to %struct.rtf_object_data*
  store %struct.rtf_object_data* %2, %struct.rtf_object_data** %data, align 8
  store i32 0, i32* %rc, align 4
  %3 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %tobool = icmp ne %struct.rtf_object_data* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %fd = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %4, i32 0, i32 1
  %5 = load i32, i32* %fd, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call = call i32 @decode_and_scan(%struct.rtf_object_data* %6, %struct.cli_ctx* %7)
  store i32 %call, i32* %rc, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %8 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %name = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %10 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %name5 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %10, i32 0, i32 0
  %11 = load i8*, i8** %name5, align 8
  call void @free(i8* %11) #2
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %12 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %12, i32 0, i32 5
  %13 = load i8*, i8** %desc_name, align 8
  %tobool7 = icmp ne i8* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %desc_name9 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %14, i32 0, i32 5
  %15 = load i8*, i8** %desc_name9, align 8
  call void @free(i8* %15) #2
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %16 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data, align 8
  %17 = bitcast %struct.rtf_object_data* %16 to i8*
  call void @free(i8* %17) #2
  %18 = load %struct.rtf_state*, %struct.rtf_state** %state.addr, align 8
  %cb_data11 = getelementptr inbounds %struct.rtf_state, %struct.rtf_state* %18, i32 0, i32 10
  store i8* null, i8** %cb_data11, align 8
  %19 = load i32, i32* %rc, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @cli_gentempfd(i8*, i8**, i32*) #1

declare i32 @cli_writen(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @decode_and_scan(%struct.rtf_object_data* %data, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.rtf_object_data*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ofd = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.rtf_object_data* %data, %struct.rtf_object_data** %data.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %name = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i8* %1)
  %2 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %bread = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %2, i32 0, i32 9
  %3 = load i64, i64* %bread, align 8
  %cmp = icmp eq i64 %3, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %fd = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %4, i32 0, i32 1
  %5 = load i32, i32* %fd, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0))
  %6 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %fd2 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %6, i32 0, i32 1
  %7 = load i32, i32* %fd2, align 4
  %call = call i64 @lseek(i32 %7, i64 0, i32 0) #2
  %8 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %fd3 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %8, i32 0, i32 1
  %9 = load i32, i32* %fd3, align 4
  %10 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %tmpdir = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %10, i32 0, i32 6
  %11 = load i8*, i8** %tmpdir, align 8
  %call4 = call i32 @cli_decode_ole_object(i32 %9, i8* %11)
  store i32 %call4, i32* %ofd, align 4
  %12 = load i32, i32* %ofd, align 4
  %cmp5 = icmp sge i32 %12, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load i32, i32* %ofd, align 4
  %14 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call7 = call i32 @cli_magic_scandesc(i32 %13, %struct.cli_ctx* %14)
  store i32 %call7, i32* %ret, align 4
  %15 = load i32, i32* %ofd, align 4
  %call8 = call i32 @close(i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %fd9 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %16, i32 0, i32 1
  %17 = load i32, i32* %fd9, align 4
  %cmp10 = icmp sgt i32 %17, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.else
  %18 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %fd12 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %18, i32 0, i32 1
  %19 = load i32, i32* %fd12, align 4
  %20 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call13 = call i32 @cli_magic_scandesc(i32 %19, %struct.cli_ctx* %20)
  store i32 %call13, i32* %ret, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %21 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %fd16 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %21, i32 0, i32 1
  %22 = load i32, i32* %fd16, align 4
  %cmp17 = icmp sgt i32 %22, 0
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.15
  %23 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %fd19 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %23, i32 0, i32 1
  %24 = load i32, i32* %fd19, align 4
  %call20 = call i32 @close(i32 %24)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.15
  %25 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %fd22 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %25, i32 0, i32 1
  store i32 -1, i32* %fd22, align 4
  %26 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %name23 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %26, i32 0, i32 0
  %27 = load i8*, i8** %name23, align 8
  %tobool = icmp ne i8* %27, null
  br i1 %tobool, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %if.end.21
  %28 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool25 = icmp ne i8 %28, 0
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %if.then.24
  %29 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %name27 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %29, i32 0, i32 0
  %30 = load i8*, i8** %name27, align 8
  %call28 = call i32 @unlink(i8* %30) #2
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.then.24
  %31 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %name30 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %31, i32 0, i32 0
  %32 = load i8*, i8** %name30, align 8
  call void @free(i8* %32) #2
  %33 = load %struct.rtf_object_data*, %struct.rtf_object_data** %data.addr, align 8
  %name31 = getelementptr inbounds %struct.rtf_object_data, %struct.rtf_object_data* %33, i32 0, i32 0
  store i8* null, i8** %name31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.29, %if.end.21
  %34 = load i32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %34, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %35 = load i32, i32* %ret, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.34
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i32 @cli_decode_ole_object(i32, i8*) #1

declare i32 @cli_magic_scandesc(i32, %struct.cli_ctx*) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
