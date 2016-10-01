; ModuleID = './MultiSource.Applications.ClamAV/53.libclamav_regex_list.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regex_matcher = type { %struct.cli_matcher*, %struct.tree_node*, %struct.tree_node*, i64, i32, i32, i32, %struct.node_stack, %struct.node_stack }
%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }
%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
%struct.tree_node = type { %struct.tree_node*, i8, i32, i8, i8, %union.anon }
%union.anon = type { %struct.tree_node** }
%struct.node_stack = type { %struct.tree_node**, i64, i64 }
%struct.pre_fixup_info = type { %struct.string, i64, i64 }
%struct.string = type { i32, %struct.string*, i8* }
%struct.cli_ac_data = type { i32, i32*** }
%struct.cli_matched_type = type { i32, i64, i16, %struct.cli_matched_type* }
%struct.leaf_info = type { i8*, %struct.regex_t* }
%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type opaque
%struct.regmatch_t = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.token_t = type { %union.anon.0, i64, i8 }
%union.anon.0 = type { i8* }

@.str = private unnamed_addr constant [30 x i8] c"Looking up in regex_list: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Got a match: %s with %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Before inserting .: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"After inserting .: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Ignoring false match: %s with %s,%c\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Lookup result: not in regex list\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Lookup result: in regex list\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Unable to load regex list (null file)\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Loading regex_list\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Regex list failed to initialize!\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Malformed regex list line %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Overlong regex line %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"regex_list: Initialising AC pattern matcher\0A\00", align 1
@cli_ac_mindepth = external global i8, align 1
@cli_ac_maxdepth = external global i8, align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"regex_list: Can't initialise AC pattern matcher\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Regex list not loaded: build failed!\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"calc_pos_with_skip: skip:%lu, %lu - %lu \22%s\22,\22%s\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"calc_pos_with_skip:%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"regex list line %s not loaded (required f-level: %u)\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Regex list not loaded!\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Building regex list\0A\00", align 1
@getNextToken.fmt = private unnamed_addr constant [3 x i8] c"\5C\00\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"confused about collating sequences in regex,bailing out\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c":]\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"confused about std char class syntax regex,bailing out\00", align 1
@std_class = internal global [12 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)], align 16
@char_class = internal constant [256 x i16] [i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 608, i16 544, i16 544, i16 544, i16 544, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 1120, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 3091, i16 3091, i16 3091, i16 3091, i16 3091, i16 3091, i16 3091, i16 3091, i16 3091, i16 3091, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 3353, i16 3353, i16 3353, i16 3353, i16 3353, i16 3353, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1305, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 1044, i16 3225, i16 3225, i16 3225, i16 3225, i16 3225, i16 3225, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1177, i16 1044, i16 1044, i16 1044, i16 1044, i16 512, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], align 16
@.str.23 = private unnamed_addr constant [53 x i8] c"confused about regex bracket expression, bailing out\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"[:alnum:]\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"[:digit:]\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"[:punct:]\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"[:alpha:]\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"[:graph:]\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"[:space:]\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"[:blank:]\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"[:lower:]\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"[:upper:]\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"[:cntrl:]\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"[:print:]\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"[:xdigit:]\00", align 1
@char_class_bitmap = internal constant [12 x [32 x i8]] [[32 x i8] c"\00\00\00\00\00\00\FF\03\FE\FF\FF\07\FE\FF\FF\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00\00\00\00\00\00\FF\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00\00\00\00\FE\FF\00\FC\01\00\00\F8\01\00\00x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00\00\00\00\00\00\00\00\FE\FF\FF\07\FE\FF\FF\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00\00\00\00\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00>\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00\02\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\FE\FF\FF\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00\00\00\00\00\00\00\00\FE\FF\FF\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"\00\00\00\00\00\00\FF\03~\00\00\00~\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@.str.36 = private unnamed_addr constant [41 x i8] c"Encountered invalid operator in tree:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @regex_list_match(%struct.regex_matcher* %matcher, i8* %real_url, i8* %display_url, %struct.pre_fixup_info* %pre_fixup, i32 %hostOnly, i8** %info, i32 %is_whitelist) #0 {
entry:
  %retval = alloca i32, align 4
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  %real_url.addr = alloca i8*, align 8
  %display_url.addr = alloca i8*, align 8
  %pre_fixup.addr = alloca %struct.pre_fixup_info*, align 8
  %hostOnly.addr = alloca i32, align 4
  %info.addr = alloca i8**, align 8
  %is_whitelist.addr = alloca i32, align 4
  %real_len = alloca i64, align 8
  %display_len = alloca i64, align 8
  %buffer_len = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %i = alloca i64, align 8
  %rc = alloca i32, align 4
  %mdata = alloca %struct.cli_ac_data, align 8
  %c = alloca i8, align 1
  %matched = alloca i8*, align 8
  %match_len = alloca i64, align 8
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  store i8* %real_url, i8** %real_url.addr, align 8
  store i8* %display_url, i8** %display_url.addr, align 8
  store %struct.pre_fixup_info* %pre_fixup, %struct.pre_fixup_info** %pre_fixup.addr, align 8
  store i32 %hostOnly, i32* %hostOnly.addr, align 4
  store i8** %info, i8*** %info.addr, align 8
  store i32 %is_whitelist, i32* %is_whitelist.addr, align 4
  %0 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %0, i32 0, i32 4
  %1 = load i32, i32* %list_inited, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %real_url.addr, align 8
  %call = call i64 @strlen(i8* %2) #8
  store i64 %call, i64* %real_len, align 8
  %3 = load i8*, i8** %display_url.addr, align 8
  %call1 = call i64 @strlen(i8* %3) #8
  store i64 %call1, i64* %display_len, align 8
  %4 = load i32, i32* %hostOnly.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %is_whitelist.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i64, i64* %real_len, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %real_len, align 8
  %8 = load i64, i64* %display_len, align 8
  %add = add i64 %7, %8
  %add4 = add i64 %add, 1
  %9 = load i32, i32* %is_whitelist.addr, align 4
  %tobool5 = icmp ne i32 %9, 0
  %cond = select i1 %tobool5, i32 1, i32 0
  %conv = sext i32 %cond to i64
  %add6 = add i64 %add4, %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i64 [ %6, %cond.true ], [ %add6, %cond.false ]
  store i64 %cond7, i64* %buffer_len, align 8
  %10 = load i64, i64* %buffer_len, align 8
  %add8 = add i64 %10, 1
  %call9 = call i8* @cli_malloc(i64 %add8)
  store i8* %call9, i8** %buffer, align 8
  store i32 0, i32* %rc, align 4
  %11 = load i8*, i8** %buffer, align 8
  %tobool10 = icmp ne i8* %11, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %cond.end
  store i32 -114, i32* %retval
  br label %return

if.end.12:                                        ; preds = %cond.end
  %12 = load i8*, i8** %buffer, align 8
  %13 = load i8*, i8** %real_url.addr, align 8
  %14 = load i64, i64* %real_len, align 8
  %call13 = call i8* @strncpy(i8* %12, i8* %13, i64 %14) #5
  %15 = load i32, i32* %is_whitelist.addr, align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end.12
  %16 = load i32, i32* %hostOnly.addr, align 4
  %tobool15 = icmp ne i32 %16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.12
  %17 = phi i1 [ false, %if.end.12 ], [ %tobool15, %land.rhs ]
  %cond16 = select i1 %17, i32 0, i32 58
  %conv17 = trunc i32 %cond16 to i8
  %18 = load i64, i64* %real_len, align 8
  %19 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %18
  store i8 %conv17, i8* %arrayidx, align 1
  %20 = load i32, i32* %hostOnly.addr, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %lor.lhs.false, label %if.then.20

lor.lhs.false:                                    ; preds = %land.end
  %21 = load i32, i32* %is_whitelist.addr, align 4
  %tobool19 = icmp ne i32 %21, 0
  br i1 %tobool19, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %lor.lhs.false, %land.end
  %22 = load i8*, i8** %buffer, align 8
  %23 = load i64, i64* %real_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %23
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %24 = load i8*, i8** %display_url.addr, align 8
  %25 = load i64, i64* %display_len, align 8
  %call22 = call i8* @strncpy(i8* %add.ptr21, i8* %24, i64 %25) #5
  %26 = load i32, i32* %is_whitelist.addr, align 4
  %tobool23 = icmp ne i32 %26, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.20
  %27 = load i64, i64* %buffer_len, align 8
  %sub = sub i64 %27, 1
  %28 = load i8*, i8** %buffer, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %28, i64 %sub
  store i8 47, i8* %arrayidx25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.then.20
  %29 = load i64, i64* %buffer_len, align 8
  %30 = load i8*, i8** %buffer, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8 0, i8* %arrayidx27, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.26, %lor.lhs.false
  %31 = load i8*, i8** %buffer, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* %31)
  %32 = load i32, i32* %hostOnly.addr, align 4
  %tobool29 = icmp ne i32 %32, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.28
  %call31 = call i32 @cli_ac_initdata(%struct.cli_ac_data* %mdata, i32 0, i8 zeroext 8)
  store i32 %call31, i32* %rc, align 4
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.30
  %33 = load i32, i32* %rc, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.30
  store i32 0, i32* %rc, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %34 = load i64, i64* %i, align 8
  %35 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %35, i32 0, i32 3
  %36 = load i64, i64* %root_hosts_cnt, align 8
  %cmp = icmp ult i64 %34, %36
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i8*, i8** %buffer, align 8
  %38 = load i64, i64* %buffer_len, align 8
  %conv36 = trunc i64 %38 to i32
  %39 = load i8**, i8*** %info.addr, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %41, i32 0, i32 0
  %42 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts, align 8
  %arrayidx37 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %42, i64 %40
  %call38 = call i32 @cli_ac_scanbuff(i8* %37, i32 %conv36, i8** %39, %struct.cli_matcher* %arrayidx37, %struct.cli_ac_data* %mdata, i8 zeroext 0, i32 0, i32 0, i32 -1, %struct.cli_matched_type** null)
  store i32 %call38, i32* %rc, align 4
  call void @cli_ac_freedata(%struct.cli_ac_data* %mdata)
  %43 = load i32, i32* %rc, align 4
  %tobool39 = icmp ne i32 %43, 0
  br i1 %tobool39, label %if.then.40, label %if.end.95

if.then.40:                                       ; preds = %for.body
  %44 = load i8**, i8*** %info.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %call41 = call i8* @strchr(i8* %45, i32 58) #8
  store i8* %call41, i8** %matched, align 8
  %46 = load i8*, i8** %matched, align 8
  %tobool42 = icmp ne i8* %46, null
  br i1 %tobool42, label %cond.true.43, label %cond.false.46

cond.true.43:                                     ; preds = %if.then.40
  %47 = load i8*, i8** %matched, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %47, i64 1
  %call45 = call i64 @strlen(i8* %add.ptr44) #8
  br label %cond.end.47

cond.false.46:                                    ; preds = %if.then.40
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.43
  %cond48 = phi i64 [ %call45, %cond.true.43 ], [ 0, %cond.false.46 ]
  store i64 %cond48, i64* %match_len, align 8
  %48 = load %struct.pre_fixup_info*, %struct.pre_fixup_info** %pre_fixup.addr, align 8
  %49 = load i8*, i8** %buffer, align 8
  %50 = load i64, i64* %buffer_len, align 8
  %add49 = add i64 %50, 1
  %call50 = call i64 @get_char_at_pos_with_skip(%struct.pre_fixup_info* %48, i8* %49, i64 %add49)
  %conv51 = trunc i64 %call50 to i8
  store i8 %conv51, i8* %c, align 1
  %conv52 = sext i8 %conv51 to i32
  %cmp53 = icmp eq i32 %conv52, 32
  br i1 %cmp53, label %land.lhs.true.67, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %cond.end.47
  %51 = load i8, i8* %c, align 1
  %conv56 = sext i8 %51 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %land.lhs.true.67, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.55
  %52 = load i8, i8* %c, align 1
  %conv60 = sext i8 %52 to i32
  %cmp61 = icmp eq i32 %conv60, 47
  br i1 %cmp61, label %land.lhs.true.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.59
  %53 = load i8, i8* %c, align 1
  %conv64 = sext i8 %53 to i32
  %cmp65 = icmp eq i32 %conv64, 63
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.93

land.lhs.true.67:                                 ; preds = %lor.lhs.false.63, %lor.lhs.false.59, %lor.lhs.false.55, %cond.end.47
  %54 = load i64, i64* %match_len, align 8
  %55 = load i64, i64* %buffer_len, align 8
  %cmp68 = icmp eq i64 %54, %55
  br i1 %cmp68, label %if.then.84, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %land.lhs.true.67
  %56 = load i64, i64* %match_len, align 8
  %57 = load i64, i64* %buffer_len, align 8
  %cmp71 = icmp ult i64 %56, %57
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.93

land.lhs.true.73:                                 ; preds = %lor.lhs.false.70
  %58 = load %struct.pre_fixup_info*, %struct.pre_fixup_info** %pre_fixup.addr, align 8
  %59 = load i8*, i8** %buffer, align 8
  %60 = load i64, i64* %buffer_len, align 8
  %61 = load i64, i64* %match_len, align 8
  %sub74 = sub i64 %60, %61
  %call75 = call i64 @get_char_at_pos_with_skip(%struct.pre_fixup_info* %58, i8* %59, i64 %sub74)
  %conv76 = trunc i64 %call75 to i8
  store i8 %conv76, i8* %c, align 1
  %conv77 = sext i8 %conv76 to i32
  %cmp78 = icmp eq i32 %conv77, 46
  br i1 %cmp78, label %if.then.84, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %land.lhs.true.73
  %62 = load i8, i8* %c, align 1
  %conv81 = sext i8 %62 to i32
  %cmp82 = icmp eq i32 %conv81, 32
  br i1 %cmp82, label %if.then.84, label %if.end.93

if.then.84:                                       ; preds = %lor.lhs.false.80, %land.lhs.true.73, %land.lhs.true.67
  %63 = load i8*, i8** %buffer, align 8
  %64 = load i8**, i8*** %info.addr, align 8
  %65 = load i8*, i8** %64, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* %63, i8* %65)
  %66 = load i8*, i8** %real_url.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* %66)
  %67 = load i64, i64* %real_len, align 8
  %68 = load i64, i64* %match_len, align 8
  %add85 = add i64 %68, 1
  %cmp86 = icmp uge i64 %67, %add85
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %if.then.84
  %69 = load i64, i64* %real_len, align 8
  %70 = load i64, i64* %match_len, align 8
  %sub89 = sub i64 %69, %70
  %sub90 = sub i64 %sub89, 1
  %71 = load i8*, i8** %real_url.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %71, i64 %sub90
  store i8 46, i8* %arrayidx91, align 1
  %72 = load i8*, i8** %real_url.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %72)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %if.then.84
  br label %for.end

if.end.93:                                        ; preds = %lor.lhs.false.80, %lor.lhs.false.70, %lor.lhs.false.63
  %73 = load i8*, i8** %buffer, align 8
  %74 = load i8**, i8*** %info.addr, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %c, align 1
  %conv94 = sext i8 %76 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* %73, i8* %75, i32 %conv94)
  store i32 0, i32* %rc, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.93, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.95
  %77 = load i64, i64* %i, align 8
  %inc = add i64 %77, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.92, %for.cond
  br label %if.end.96

if.else:                                          ; preds = %if.end.28
  store i32 0, i32* %rc, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else, %for.end
  %78 = load i32, i32* %rc, align 4
  %tobool97 = icmp ne i32 %78, 0
  br i1 %tobool97, label %if.end.108, label %if.then.98

if.then.98:                                       ; preds = %if.end.96
  %79 = load i32, i32* %hostOnly.addr, align 4
  %tobool99 = icmp ne i32 %79, 0
  br i1 %tobool99, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %if.then.98
  %80 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex_hostonly = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %80, i32 0, i32 2
  %81 = load %struct.tree_node*, %struct.tree_node** %root_regex_hostonly, align 8
  br label %cond.end.102

cond.false.101:                                   ; preds = %if.then.98
  %82 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %82, i32 0, i32 1
  %83 = load %struct.tree_node*, %struct.tree_node** %root_regex, align 8
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.100
  %cond103 = phi %struct.tree_node* [ %81, %cond.true.100 ], [ %83, %cond.false.101 ]
  %84 = load i8*, i8** %buffer, align 8
  %85 = load i64, i64* %buffer_len, align 8
  %86 = load i8**, i8*** %info.addr, align 8
  %call104 = call i32 @match_node(%struct.tree_node* %cond103, i8* %84, i64 %85, i8** %86)
  %cmp105 = icmp eq i32 %call104, 0
  %cond107 = select i1 %cmp105, i32 1, i32 0
  store i32 %cond107, i32* %rc, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %cond.end.102, %if.end.96
  %87 = load i8*, i8** %buffer, align 8
  call void @free(i8* %87) #5
  %88 = load i32, i32* %rc, align 4
  %tobool109 = icmp ne i32 %88, 0
  br i1 %tobool109, label %if.else.111, label %if.then.110

if.then.110:                                      ; preds = %if.end.108
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.112

if.else.111:                                      ; preds = %if.end.108
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.111, %if.then.110
  %89 = load i32, i32* %rc, align 4
  store i32 %89, i32* %retval
  br label %return

return:                                           ; preds = %if.end.112, %if.then.33, %if.then.11, %if.then
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i8* @cli_malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare void @cli_dbgmsg(i8*, ...) #2

declare i32 @cli_ac_initdata(%struct.cli_ac_data*, i32, i8 zeroext) #2

declare i32 @cli_ac_scanbuff(i8*, i32, i8**, %struct.cli_matcher*, %struct.cli_ac_data*, i8 zeroext, i32, i32, i32, %struct.cli_matched_type**) #2

declare void @cli_ac_freedata(%struct.cli_ac_data*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @get_char_at_pos_with_skip(%struct.pre_fixup_info* %info, i8* %buffer, i64 %pos) #4 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca %struct.pre_fixup_info*, align 8
  %buffer.addr = alloca i8*, align 8
  %pos.addr = alloca i64, align 8
  %str = alloca i8*, align 8
  %realpos = alloca i64, align 8
  store %struct.pre_fixup_info* %info, %struct.pre_fixup_info** %info.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 0, i64* %realpos, align 8
  %0 = load %struct.pre_fixup_info*, %struct.pre_fixup_info** %info.addr, align 8
  %tobool = icmp ne %struct.pre_fixup_info* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %pos.addr, align 8
  %2 = load i8*, i8** %buffer.addr, align 8
  %call = call i64 @strlen(i8* %2) #8
  %cmp = icmp ule i64 %1, %call
  br i1 %cmp, label %cond.true, label %cond.false.3

cond.true:                                        ; preds = %if.then
  %3 = load i64, i64* %pos.addr, align 8
  %cmp1 = icmp ugt i64 %3, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false

cond.true.2:                                      ; preds = %cond.true
  %4 = load i64, i64* %pos.addr, align 8
  %sub = sub i64 %4, 1
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.2
  %cond = phi i64 [ %sub, %cond.true.2 ], [ 0, %cond.false ]
  %5 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %cond
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  br label %cond.end.4

cond.false.3:                                     ; preds = %if.then
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.end
  %cond5 = phi i32 [ %conv, %cond.end ], [ 0, %cond.false.3 ]
  %conv6 = sext i32 %cond5 to i64
  store i64 %conv6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.pre_fixup_info*, %struct.pre_fixup_info** %info.addr, align 8
  %pre_displayLink = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %7, i32 0, i32 0
  %data = getelementptr inbounds %struct.string, %struct.string* %pre_displayLink, i32 0, i32 2
  %8 = load i8*, i8** %data, align 8
  store i8* %8, i8** %str, align 8
  %9 = load i64, i64* %pos.addr, align 8
  %10 = load %struct.pre_fixup_info*, %struct.pre_fixup_info** %info.addr, align 8
  %host_start = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %10, i32 0, i32 1
  %11 = load i64, i64* %host_start, align 8
  %12 = load %struct.pre_fixup_info*, %struct.pre_fixup_info** %info.addr, align 8
  %host_end = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %12, i32 0, i32 2
  %13 = load i64, i64* %host_end, align 8
  %14 = load i8*, i8** %str, align 8
  %15 = load i8*, i8** %buffer.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i32 0, i32 0), i64 %9, i64 %11, i64 %13, i8* %14, i8* %15)
  %16 = load %struct.pre_fixup_info*, %struct.pre_fixup_info** %info.addr, align 8
  %host_start7 = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %16, i32 0, i32 1
  %17 = load i64, i64* %host_start7, align 8
  %18 = load i64, i64* %pos.addr, align 8
  %add = add i64 %18, %17
  store i64 %add, i64* %pos.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %19 = load i64, i64* %realpos, align 8
  %20 = load i8*, i8** %str, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %20, i64 %19
  %21 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %21 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %22 = load i64, i64* %realpos, align 8
  %23 = load i8*, i8** %str, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i64 %22
  %24 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %24 to i32
  %idxprom = sext i32 %conv12 to i64
  %call13 = call i16** @__ctype_b_loc() #9
  %25 = load i16*, i16** %call13, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %25, i64 %idxprom
  %26 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %26 to i32
  %and = and i32 %conv15, 8
  %tobool16 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, i64* %realpos, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %realpos, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %29 = load i64, i64* %realpos, align 8
  %30 = load i8*, i8** %str, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %30, i64 %29
  %31 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %31 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %land.rhs.20, label %land.end.23

land.rhs.20:                                      ; preds = %for.cond
  %32 = load i64, i64* %pos.addr, align 8
  %cmp21 = icmp ugt i64 %32, 0
  br label %land.end.23

land.end.23:                                      ; preds = %land.rhs.20, %for.cond
  %33 = phi i1 [ false, %for.cond ], [ %cmp21, %land.rhs.20 ]
  br i1 %33, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.23
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.29, %for.body
  %34 = load i64, i64* %realpos, align 8
  %35 = load i8*, i8** %str, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %35, i64 %34
  %36 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %36 to i32
  %cmp27 = icmp eq i32 %conv26, 32
  br i1 %cmp27, label %while.body.29, label %while.end.31

while.body.29:                                    ; preds = %while.cond.24
  %37 = load i64, i64* %realpos, align 8
  %inc30 = add i64 %37, 1
  store i64 %inc30, i64* %realpos, align 8
  br label %while.cond.24

while.end.31:                                     ; preds = %while.cond.24
  %38 = load i64, i64* %realpos, align 8
  %inc32 = add i64 %38, 1
  store i64 %inc32, i64* %realpos, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end.31
  %39 = load i64, i64* %pos.addr, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %pos.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.23
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.38, %for.end
  %40 = load i64, i64* %realpos, align 8
  %41 = load i8*, i8** %str, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %41, i64 %40
  %42 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %42 to i32
  %cmp36 = icmp eq i32 %conv35, 32
  br i1 %cmp36, label %while.body.38, label %while.end.40

while.body.38:                                    ; preds = %while.cond.33
  %43 = load i64, i64* %realpos, align 8
  %inc39 = add i64 %43, 1
  store i64 %inc39, i64* %realpos, align 8
  br label %while.cond.33

while.end.40:                                     ; preds = %while.cond.33
  %44 = load i8*, i8** %str, align 8
  %45 = load i64, i64* %realpos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %45
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* %add.ptr)
  %46 = load i64, i64* %pos.addr, align 8
  %cmp41 = icmp ugt i64 %46, 0
  br i1 %cmp41, label %land.lhs.true, label %cond.false.46

land.lhs.true:                                    ; preds = %while.end.40
  %47 = load i64, i64* %realpos, align 8
  %48 = load i8*, i8** %str, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %48, i64 %47
  %49 = load i8, i8* %arrayidx43, align 1
  %tobool44 = icmp ne i8 %49, 0
  br i1 %tobool44, label %cond.false.46, label %cond.true.45

cond.true.45:                                     ; preds = %land.lhs.true
  br label %cond.end.56

cond.false.46:                                    ; preds = %land.lhs.true, %while.end.40
  %50 = load i64, i64* %realpos, align 8
  %cmp47 = icmp ugt i64 %50, 0
  br i1 %cmp47, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %cond.false.46
  %51 = load i64, i64* %realpos, align 8
  %sub50 = sub i64 %51, 1
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.false.46
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.49
  %cond53 = phi i64 [ %sub50, %cond.true.49 ], [ 0, %cond.false.51 ]
  %52 = load i8*, i8** %str, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %52, i64 %cond53
  %53 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %53 to i32
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.52, %cond.true.45
  %cond57 = phi i32 [ 0, %cond.true.45 ], [ %conv55, %cond.end.52 ]
  %conv58 = sext i32 %cond57 to i64
  store i64 %conv58, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.56, %cond.end.4
  %54 = load i64, i64* %retval
  ret i64 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @match_node(%struct.tree_node* %node, i8* %c, i64 %len, i8** %info) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.tree_node*, align 8
  %c.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %info.addr = alloca i8**, align 8
  %children = alloca %struct.tree_node**, align 8
  %rc = alloca i32, align 4
  %bitmap = alloca i8*, align 8
  %leaf = alloca %struct.leaf_info*, align 8
  %csearch = alloca i8, align 1
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %mid = alloca i32, align 4
  %rewrite_next = alloca %struct.tree_node*, align 8
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  store i8* %c, i8** %c.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8** %info, i8*** %info.addr, align 8
  %0 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u = getelementptr inbounds %struct.tree_node, %struct.tree_node* %0, i32 0, i32 5
  %children1 = bitcast %union.anon* %u to %struct.tree_node***
  %1 = load %struct.tree_node**, %struct.tree_node*** %children1, align 8
  %tobool = icmp ne %struct.tree_node** %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %info.addr, align 8
  store i8* null, i8** %2, align 8
  %3 = load i64, i64* %len.addr, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %len.addr, align 8
  %4 = load i8*, i8** %c.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %c.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.145, %if.end
  %5 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u2 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 5
  %children3 = bitcast %union.anon* %u2 to %struct.tree_node***
  %6 = load %struct.tree_node**, %struct.tree_node*** %children3, align 8
  store %struct.tree_node** %6, %struct.tree_node*** %children, align 8
  %7 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op = getelementptr inbounds %struct.tree_node, %struct.tree_node* %7, i32 0, i32 2
  %8 = load i32, i32* %op, align 4
  switch i32 %8, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.4
    i32 0, label %sw.bb.7
    i32 3, label %sw.bb.8
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.14
    i32 4, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %for.cond
  store i32 1, i32* %rc, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.cond
  %9 = load i8*, i8** %c.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %9, i32 -1
  store i8* %incdec.ptr5, i8** %c.addr, align 8
  %10 = load i64, i64* %len.addr, align 8
  %inc6 = add i64 %10, 1
  store i64 %inc6, i64* %len.addr, align 8
  store i32 1, i32* %rc, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.cond
  store i32 1, i32* %rc, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.cond
  %11 = load i8*, i8** %c.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  %cmp = icmp ne i32 %conv, 10
  %conv9 = zext i1 %cmp to i32
  store i32 %conv9, i32* %rc, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.cond
  %13 = load i8*, i8** %c.addr, align 8
  %14 = load i8, i8* %13, align 1
  %idxprom = zext i8 %14 to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @char_class, i32 0, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2
  %conv11 = zext i16 %15 to i32
  %16 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %c12 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %16, i32 0, i32 1
  %17 = load i8, i8* %c12, align 1
  %conv13 = zext i8 %17 to i32
  %and = and i32 %conv11, %conv13
  store i32 %and, i32* %rc, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.cond
  %18 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u15 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %18, i32 0, i32 5
  %bitmap16 = bitcast %union.anon* %u15 to i8***
  %19 = load i8**, i8*** %bitmap16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %19, i64 0
  %20 = load i8*, i8** %arrayidx17, align 8
  store i8* %20, i8** %bitmap, align 8
  %21 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %incdec.ptr18 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %21, i32 1
  store %struct.tree_node** %incdec.ptr18, %struct.tree_node*** %children, align 8
  %22 = load i8*, i8** %c.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv19 = zext i8 %23 to i32
  %shr = ashr i32 %conv19, 3
  %idxprom20 = sext i32 %shr to i64
  %24 = load i8*, i8** %bitmap, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 %idxprom20
  %25 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %25 to i32
  %26 = load i8*, i8** %c.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv23 = zext i8 %27 to i32
  %and24 = and i32 %conv23, 7
  %shl = shl i32 1, %and24
  %and25 = and i32 %conv22, %shl
  store i32 %and25, i32* %rc, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.cond
  %28 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u27 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %28, i32 0, i32 5
  %leaf28 = bitcast %union.anon* %u27 to %struct.leaf_info**
  %29 = load %struct.leaf_info*, %struct.leaf_info** %leaf28, align 8
  store %struct.leaf_info* %29, %struct.leaf_info** %leaf, align 8
  %30 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %preg = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %30, i32 0, i32 1
  %31 = load %struct.regex_t*, %struct.regex_t** %preg, align 8
  %tobool29 = icmp ne %struct.regex_t* %31, null
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %sw.bb.26
  %32 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %preg31 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %32, i32 0, i32 1
  %33 = load %struct.regex_t*, %struct.regex_t** %preg31, align 8
  %34 = load i8*, i8** %c.addr, align 8
  %call = call i32 @cli_regexec(%struct.regex_t* %33, i8* %34, i64 0, %struct.regmatch_t* null, i32 0)
  %tobool32 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool32, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %rc, align 4
  br label %if.end.33

if.else:                                          ; preds = %sw.bb.26
  store i32 1, i32* %rc, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.30
  %35 = load i32, i32* %rc, align 4
  %tobool34 = icmp ne i32 %35, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %36 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %info36 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %36, i32 0, i32 0
  %37 = load i8*, i8** %info36, align 8
  %38 = load i8**, i8*** %info.addr, align 8
  store i8* %37, i8** %38, align 8
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %39 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op38 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %39, i32 0, i32 2
  %40 = load i32, i32* %op38, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0), i32 %40)
  call void @exit(i32 1) #10
  unreachable

sw.epilog:                                        ; preds = %if.end.37, %sw.bb.14, %sw.bb.10, %sw.bb.8, %sw.bb.7, %sw.bb.4, %sw.bb
  %41 = load i64, i64* %len.addr, align 8
  %dec = add i64 %41, -1
  store i64 %dec, i64* %len.addr, align 8
  %42 = load i64, i64* %len.addr, align 8
  %tobool39 = icmp ne i64 %42, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %sw.epilog
  store i32 0, i32* %rc, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %sw.epilog
  %43 = load i8*, i8** %c.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr42, i8** %c.addr, align 8
  %44 = load i32, i32* %rc, align 4
  %tobool43 = icmp ne i32 %44, 0
  br i1 %tobool43, label %if.then.44, label %if.else.122

if.then.44:                                       ; preds = %if.end.41
  %45 = load i8*, i8** %c.addr, align 8
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %csearch, align 1
  store i32 0, i32* %left, align 4
  %47 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives = getelementptr inbounds %struct.tree_node, %struct.tree_node* %47, i32 0, i32 3
  %48 = load i8, i8* %alternatives, align 1
  %conv45 = sext i8 %48 to i32
  %sub = sub nsw i32 %conv45, 1
  store i32 %sub, i32* %right, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.70, %if.then.44
  %49 = load i32, i32* %left, align 4
  %50 = load i32, i32* %right, align 4
  %cmp46 = icmp sle i32 %49, %50
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load i32, i32* %left, align 4
  %52 = load i32, i32* %right, align 4
  %53 = load i32, i32* %left, align 4
  %sub48 = sub nsw i32 %52, %53
  %div = sdiv i32 %sub48, 2
  %add = add nsw i32 %51, %div
  store i32 %add, i32* %mid, align 4
  %54 = load i32, i32* %mid, align 4
  %idxprom49 = sext i32 %54 to i64
  %55 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx50 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %55, i64 %idxprom49
  %56 = load %struct.tree_node*, %struct.tree_node** %arrayidx50, align 8
  %c51 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %56, i32 0, i32 1
  %57 = load i8, i8* %c51, align 1
  %conv52 = zext i8 %57 to i32
  %58 = load i8, i8* %csearch, align 1
  %conv53 = sext i8 %58 to i32
  %cmp54 = icmp eq i32 %conv52, %conv53
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %while.body
  br label %while.end

if.else.57:                                       ; preds = %while.body
  %59 = load i32, i32* %mid, align 4
  %idxprom58 = sext i32 %59 to i64
  %60 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx59 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %60, i64 %idxprom58
  %61 = load %struct.tree_node*, %struct.tree_node** %arrayidx59, align 8
  %c60 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %61, i32 0, i32 1
  %62 = load i8, i8* %c60, align 1
  %conv61 = zext i8 %62 to i32
  %63 = load i8, i8* %csearch, align 1
  %conv62 = sext i8 %63 to i32
  %cmp63 = icmp slt i32 %conv61, %conv62
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.else.57
  %64 = load i32, i32* %mid, align 4
  %add66 = add nsw i32 %64, 1
  store i32 %add66, i32* %left, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %if.else.57
  %65 = load i32, i32* %mid, align 4
  %sub68 = sub nsw i32 %65, 1
  store i32 %sub68, i32* %right, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.65
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  br label %while.cond

while.end:                                        ; preds = %if.then.56, %while.cond
  %66 = load i32, i32* %left, align 4
  %67 = load i32, i32* %right, align 4
  %cmp71 = icmp sle i32 %66, %67
  br i1 %cmp71, label %if.then.73, label %if.else.76

if.then.73:                                       ; preds = %while.end
  %68 = load i32, i32* %mid, align 4
  %idxprom74 = sext i32 %68 to i64
  %69 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx75 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %69, i64 %idxprom74
  %70 = load %struct.tree_node*, %struct.tree_node** %arrayidx75, align 8
  store %struct.tree_node* %70, %struct.tree_node** %node.addr, align 8
  br label %if.end.121

if.else.76:                                       ; preds = %while.end
  %71 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives77 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %71, i32 0, i32 3
  %72 = load i8, i8* %alternatives77, align 1
  %tobool78 = icmp ne i8 %72, 0
  br i1 %tobool78, label %if.then.79, label %if.else.104

if.then.79:                                       ; preds = %if.else.76
  %73 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx80 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %73, i64 0
  %74 = load %struct.tree_node*, %struct.tree_node** %arrayidx80, align 8
  %listend = getelementptr inbounds %struct.tree_node, %struct.tree_node* %74, i32 0, i32 4
  %75 = load i8, i8* %listend, align 1
  %tobool81 = icmp ne i8 %75, 0
  br i1 %tobool81, label %if.end.86, label %if.then.82

if.then.82:                                       ; preds = %if.then.79
  %76 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx83 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %76, i64 0
  %77 = load %struct.tree_node*, %struct.tree_node** %arrayidx83, align 8
  store %struct.tree_node* %77, %struct.tree_node** %node.addr, align 8
  %78 = load i8*, i8** %c.addr, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr84, i8** %c.addr, align 8
  %79 = load i64, i64* %len.addr, align 8
  %dec85 = add i64 %79, -1
  store i64 %dec85, i64* %len.addr, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %if.then.79
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.92, %if.end.86
  %80 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %tobool88 = icmp ne %struct.tree_node* %80, null
  br i1 %tobool88, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.87
  %81 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %listend89 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %81, i32 0, i32 4
  %82 = load i8, i8* %listend89, align 1
  %conv90 = sext i8 %82 to i32
  %tobool91 = icmp ne i32 %conv90, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.87
  %83 = phi i1 [ false, %while.cond.87 ], [ %tobool91, %land.rhs ]
  br i1 %83, label %while.body.92, label %while.end.95

while.body.92:                                    ; preds = %land.end
  %84 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next = getelementptr inbounds %struct.tree_node, %struct.tree_node* %84, i32 0, i32 0
  %85 = load %struct.tree_node*, %struct.tree_node** %next, align 8
  store %struct.tree_node* %85, %struct.tree_node** %node.addr, align 8
  %86 = load i8*, i8** %c.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %86, i32 -1
  store i8* %incdec.ptr93, i8** %c.addr, align 8
  %87 = load i64, i64* %len.addr, align 8
  %inc94 = add i64 %87, 1
  store i64 %inc94, i64* %len.addr, align 8
  br label %while.cond.87

while.end.95:                                     ; preds = %land.end
  %88 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %tobool96 = icmp ne %struct.tree_node* %88, null
  br i1 %tobool96, label %lor.lhs.false, label %if.then.99

lor.lhs.false:                                    ; preds = %while.end.95
  %89 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next97 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %89, i32 0, i32 0
  %90 = load %struct.tree_node*, %struct.tree_node** %next97, align 8
  %tobool98 = icmp ne %struct.tree_node* %90, null
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %lor.lhs.false, %while.end.95
  store i32 -1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %lor.lhs.false
  %91 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next101 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %91, i32 0, i32 0
  %92 = load %struct.tree_node*, %struct.tree_node** %next101, align 8
  store %struct.tree_node* %92, %struct.tree_node** %node.addr, align 8
  %93 = load i8*, i8** %c.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %incdec.ptr102, i8** %c.addr, align 8
  %94 = load i64, i64* %len.addr, align 8
  %inc103 = add i64 %94, 1
  store i64 %inc103, i64* %len.addr, align 8
  br label %if.end.120

if.else.104:                                      ; preds = %if.else.76
  %95 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u105 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %95, i32 0, i32 5
  %children106 = bitcast %union.anon* %u105 to %struct.tree_node***
  %96 = load %struct.tree_node**, %struct.tree_node*** %children106, align 8
  %tobool107 = icmp ne %struct.tree_node** %96, null
  br i1 %tobool107, label %if.then.108, label %if.end.119

if.then.108:                                      ; preds = %if.else.104
  store %struct.tree_node* null, %struct.tree_node** %rewrite_next, align 8
  %97 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op109 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %97, i32 0, i32 2
  %98 = load i32, i32* %op109, align 4
  %cmp110 = icmp eq i32 %98, 6
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.then.108
  %99 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  store %struct.tree_node* %99, %struct.tree_node** %rewrite_next, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.then.108
  %100 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx114 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %100, i64 0
  %101 = load %struct.tree_node*, %struct.tree_node** %arrayidx114, align 8
  store %struct.tree_node* %101, %struct.tree_node** %node.addr, align 8
  %102 = load %struct.tree_node*, %struct.tree_node** %rewrite_next, align 8
  %tobool115 = icmp ne %struct.tree_node* %102, null
  br i1 %tobool115, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.113
  %103 = load %struct.tree_node*, %struct.tree_node** %rewrite_next, align 8
  %104 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next117 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %104, i32 0, i32 0
  store %struct.tree_node* %103, %struct.tree_node** %next117, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.end.113
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.else.104
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.100
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.73
  br label %if.end.145

if.else.122:                                      ; preds = %if.end.41
  br label %while.cond.123

while.cond.123:                                   ; preds = %while.body.130, %if.else.122
  %105 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %tobool124 = icmp ne %struct.tree_node* %105, null
  br i1 %tobool124, label %land.rhs.125, label %land.end.129

land.rhs.125:                                     ; preds = %while.cond.123
  %106 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %listend126 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %106, i32 0, i32 4
  %107 = load i8, i8* %listend126, align 1
  %conv127 = sext i8 %107 to i32
  %tobool128 = icmp ne i32 %conv127, 0
  br label %land.end.129

land.end.129:                                     ; preds = %land.rhs.125, %while.cond.123
  %108 = phi i1 [ false, %while.cond.123 ], [ %tobool128, %land.rhs.125 ]
  br i1 %108, label %while.body.130, label %while.end.134

while.body.130:                                   ; preds = %land.end.129
  %109 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next131 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %109, i32 0, i32 0
  %110 = load %struct.tree_node*, %struct.tree_node** %next131, align 8
  store %struct.tree_node* %110, %struct.tree_node** %node.addr, align 8
  %111 = load i8*, i8** %c.addr, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %111, i32 -1
  store i8* %incdec.ptr132, i8** %c.addr, align 8
  %112 = load i64, i64* %len.addr, align 8
  %inc133 = add i64 %112, 1
  store i64 %inc133, i64* %len.addr, align 8
  br label %while.cond.123

while.end.134:                                    ; preds = %land.end.129
  %113 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %tobool135 = icmp ne %struct.tree_node* %113, null
  br i1 %tobool135, label %lor.lhs.false.136, label %if.then.139

lor.lhs.false.136:                                ; preds = %while.end.134
  %114 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next137 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %114, i32 0, i32 0
  %115 = load %struct.tree_node*, %struct.tree_node** %next137, align 8
  %tobool138 = icmp ne %struct.tree_node* %115, null
  br i1 %tobool138, label %if.else.140, label %if.then.139

if.then.139:                                      ; preds = %lor.lhs.false.136, %while.end.134
  store i32 -1, i32* %retval
  br label %return

if.else.140:                                      ; preds = %lor.lhs.false.136
  %116 = load i8*, i8** %c.addr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %incdec.ptr141, i8** %c.addr, align 8
  %117 = load i64, i64* %len.addr, align 8
  %inc142 = add i64 %117, 1
  store i64 %inc142, i64* %len.addr, align 8
  %118 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next143 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %118, i32 0, i32 0
  %119 = load %struct.tree_node*, %struct.tree_node** %next143, align 8
  store %struct.tree_node* %119, %struct.tree_node** %node.addr, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.140
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.121
  br label %for.cond

return:                                           ; preds = %if.then.139, %if.then.99, %if.then.35, %if.then
  %120 = load i32, i32* %retval
  ret i32 %120
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @init_regex_list(%struct.regex_matcher* %matcher) #0 {
entry:
  %retval = alloca i32, align 4
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  %rc = alloca i32, align 4
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  %0 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %0, i32 0, i32 4
  store i32 0, i32* %list_inited, align 4
  %1 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %1, i32 0, i32 3
  store i64 0, i64* %root_hosts_cnt, align 8
  %2 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %2, i32 0, i32 0
  store %struct.cli_matcher* null, %struct.cli_matcher** %root_hosts, align 8
  %3 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt1 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %3, i32 0, i32 3
  store i64 0, i64* %root_hosts_cnt1, align 8
  %call = call %struct.tree_node* @tree_root_alloc()
  %4 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %4, i32 0, i32 1
  store %struct.tree_node* %call, %struct.tree_node** %root_regex, align 8
  %5 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex2 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %5, i32 0, i32 1
  %6 = load %struct.tree_node*, %struct.tree_node** %root_regex2, align 8
  %tobool = icmp ne %struct.tree_node* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call %struct.tree_node* @tree_root_alloc()
  %7 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex_hostonly = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %7, i32 0, i32 2
  store %struct.tree_node* %call3, %struct.tree_node** %root_regex_hostonly, align 8
  %8 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex_hostonly4 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %8, i32 0, i32 2
  %9 = load %struct.tree_node*, %struct.tree_node** %root_regex_hostonly4, align 8
  %tobool5 = icmp ne %struct.tree_node* %9, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex7 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %10, i32 0, i32 1
  %11 = load %struct.tree_node*, %struct.tree_node** %root_regex7, align 8
  %12 = bitcast %struct.tree_node* %11 to i8*
  call void @free(i8* %12) #5
  store i32 -114, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %13 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %13, i32 0, i32 7
  %call9 = call i32 @stack_init(%struct.node_stack* %node_stack)
  store i32 %call9, i32* %rc, align 4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex_hostonly12 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %14, i32 0, i32 2
  %15 = load %struct.tree_node*, %struct.tree_node** %root_regex_hostonly12, align 8
  %16 = bitcast %struct.tree_node* %15 to i8*
  call void @free(i8* %16) #5
  %17 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex13 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %17, i32 0, i32 1
  %18 = load %struct.tree_node*, %struct.tree_node** %root_regex13, align 8
  %19 = bitcast %struct.tree_node* %18 to i8*
  call void @free(i8* %19) #5
  %20 = load i32, i32* %rc, align 4
  store i32 %20, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %21 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack_alt = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %21, i32 0, i32 8
  %call15 = call i32 @stack_init(%struct.node_stack* %node_stack_alt)
  store i32 %call15, i32* %rc, align 4
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.14
  %22 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex_hostonly18 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %22, i32 0, i32 2
  %23 = load %struct.tree_node*, %struct.tree_node** %root_regex_hostonly18, align 8
  %24 = bitcast %struct.tree_node* %23 to i8*
  call void @free(i8* %24) #5
  %25 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex19 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %25, i32 0, i32 1
  %26 = load %struct.tree_node*, %struct.tree_node** %root_regex19, align 8
  %27 = bitcast %struct.tree_node* %26 to i8*
  call void @free(i8* %27) #5
  %28 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack20 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %28, i32 0, i32 7
  call void @stack_destroy(%struct.node_stack* %node_stack20)
  %29 = load i32, i32* %rc, align 4
  store i32 %29, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.14
  %30 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited22 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %30, i32 0, i32 4
  store i32 1, i32* %list_inited22, align 4
  %31 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_built = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %31, i32 0, i32 6
  store i32 1, i32* %list_built, align 4
  %32 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_loaded = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %32, i32 0, i32 5
  store i32 0, i32* %list_loaded, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.17, %if.then.11, %if.then.6, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal %struct.tree_node* @tree_root_alloc() #0 {
entry:
  %root = alloca %struct.tree_node*, align 8
  %call = call %struct.tree_node* @tree_node_alloc(%struct.tree_node* null, i8 signext 1)
  store %struct.tree_node* %call, %struct.tree_node** %root, align 8
  %0 = load %struct.tree_node*, %struct.tree_node** %root, align 8
  %tobool = icmp ne %struct.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.tree_node*, %struct.tree_node** %root, align 8
  %op = getelementptr inbounds %struct.tree_node, %struct.tree_node* %1, i32 0, i32 2
  store i32 5, i32* %op, align 4
  %2 = load %struct.tree_node*, %struct.tree_node** %root, align 8
  %c = getelementptr inbounds %struct.tree_node, %struct.tree_node* %2, i32 0, i32 1
  store i8 0, i8* %c, align 1
  %3 = load %struct.tree_node*, %struct.tree_node** %root, align 8
  %next = getelementptr inbounds %struct.tree_node, %struct.tree_node* %3, i32 0, i32 0
  store %struct.tree_node* null, %struct.tree_node** %next, align 8
  %4 = load %struct.tree_node*, %struct.tree_node** %root, align 8
  %listend = getelementptr inbounds %struct.tree_node, %struct.tree_node* %4, i32 0, i32 4
  store i8 1, i8* %listend, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.tree_node*, %struct.tree_node** %root, align 8
  ret %struct.tree_node* %5
}

; Function Attrs: nounwind uwtable
define internal i32 @stack_init(%struct.node_stack* %stack) #0 {
entry:
  %retval = alloca i32, align 4
  %stack.addr = alloca %struct.node_stack*, align 8
  store %struct.node_stack* %stack, %struct.node_stack** %stack.addr, align 8
  %0 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %cnt = getelementptr inbounds %struct.node_stack, %struct.node_stack* %0, i32 0, i32 2
  store i64 0, i64* %cnt, align 8
  %1 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %capacity = getelementptr inbounds %struct.node_stack, %struct.node_stack* %1, i32 0, i32 1
  store i64 1024, i64* %capacity, align 8
  %2 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %capacity1 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %2, i32 0, i32 1
  %3 = load i64, i64* %capacity1, align 8
  %mul = mul i64 %3, 8
  %call = call i8* @cli_malloc(i64 %mul)
  %4 = bitcast i8* %call to %struct.tree_node**
  %5 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data = getelementptr inbounds %struct.node_stack, %struct.node_stack* %5, i32 0, i32 0
  store %struct.tree_node** %4, %struct.tree_node*** %data, align 8
  %6 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data2 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %6, i32 0, i32 0
  %7 = load %struct.tree_node**, %struct.tree_node*** %data2, align 8
  %tobool = icmp ne %struct.tree_node** %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @stack_destroy(%struct.node_stack* %stack) #0 {
entry:
  %stack.addr = alloca %struct.node_stack*, align 8
  store %struct.node_stack* %stack, %struct.node_stack** %stack.addr, align 8
  %0 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data = getelementptr inbounds %struct.node_stack, %struct.node_stack* %0, i32 0, i32 0
  %1 = load %struct.tree_node**, %struct.tree_node*** %data, align 8
  %tobool = icmp ne %struct.tree_node** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data1 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %2, i32 0, i32 0
  %3 = load %struct.tree_node**, %struct.tree_node*** %data1, align 8
  %4 = bitcast %struct.tree_node** %3 to i8*
  call void @free(i8* %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data2 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %5, i32 0, i32 0
  store %struct.tree_node** null, %struct.tree_node*** %data2, align 8
  %6 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %capacity = getelementptr inbounds %struct.node_stack, %struct.node_stack* %6, i32 0, i32 1
  store i64 0, i64* %capacity, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @load_regex_matcher(%struct.regex_matcher* %matcher, %struct._IO_FILE* %fd, i32 %options, i32 %is_whitelist) #0 {
entry:
  %retval = alloca i32, align 4
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %options.addr = alloca i32, align 4
  %is_whitelist.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %line = alloca i32, align 4
  %buffer = alloca [8192 x i8], align 16
  %pattern = alloca i8*, align 8
  %flags = alloca i8*, align 8
  %pattern_len = alloca i64, align 8
  %root = alloca %struct.cli_matcher*, align 8
  %old_hosts = alloca %struct.cli_matcher*, align 8
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 %is_whitelist, i32* %is_whitelist.addr, align 4
  store i32 0, i32* %line, align 4
  %0 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %0, i32 0, i32 4
  %1 = load i32, i32* %list_inited, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -116, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  %3 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited3 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %3, i32 0, i32 4
  %4 = load i32, i32* %list_inited3, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.end.10, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  %5 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %call = call i32 @init_regex_list(%struct.regex_matcher* %5)
  store i32 %call, i32* %rc, align 4
  %6 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited6 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %6, i32 0, i32 4
  %7 = load i32, i32* %list_inited6, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0))
  %8 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  call void @fatal_error(%struct.regex_matcher* %8)
  %9 = load i32, i32* %rc, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.2
  br label %while.cond

while.cond:                                       ; preds = %if.end.114, %if.then.22, %if.then.17, %if.end.10
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call11 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %10)
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay13 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call14 = call i32 @cli_chomp(i8* %arraydecay13)
  %arraydecay15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %11 = load i8, i8* %arraydecay15, align 1
  %tobool16 = icmp ne i8 %11, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %while.body
  br label %while.cond

if.end.18:                                        ; preds = %while.body
  %arraydecay19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call20 = call i32 @functionality_level_check(i8* %arraydecay19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  br label %while.cond

if.end.23:                                        ; preds = %if.end.18
  %12 = load i32, i32* %line, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %line, align 4
  %arraydecay24 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call25 = call i8* @strchr(i8* %arraydecay24, i32 58) #8
  store i8* %call25, i8** %pattern, align 8
  %13 = load i8*, i8** %pattern, align 8
  %tobool26 = icmp ne i8* %13, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.23
  %14 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i32 %14)
  %15 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  call void @fatal_error(%struct.regex_matcher* %15)
  store i32 -116, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  %arraydecay29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay29, i64 1
  store i8* %add.ptr, i8** %flags, align 8
  %16 = load i8*, i8** %pattern, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %pattern, align 8
  %17 = load i32, i32* %is_whitelist.addr, align 4
  %tobool30 = icmp ne i32 %17, 0
  br i1 %tobool30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %if.end.28
  %18 = load i8*, i8** %pattern, align 8
  %call32 = call i64 @strlen(i8* %18) #8
  store i64 %call32, i64* %pattern_len, align 8
  %19 = load i64, i64* %pattern_len, align 8
  %cmp33 = icmp ult i64 %19, 8192
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.31
  %20 = load i64, i64* %pattern_len, align 8
  %21 = load i8*, i8** %pattern, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %20
  store i8 47, i8* %arrayidx, align 1
  %22 = load i64, i64* %pattern_len, align 8
  %add = add i64 %22, 1
  %23 = load i8*, i8** %pattern, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %23, i64 %add
  store i8 0, i8* %arrayidx35, align 1
  br label %if.end.36

if.else:                                          ; preds = %if.then.31
  %24 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 %24)
  %25 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  call void @fatal_error(%struct.regex_matcher* %25)
  store i32 -116, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.34
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.28
  %arrayidx38 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 0
  %26 = load i8, i8* %arrayidx38, align 1
  %conv = sext i8 %26 to i32
  %cmp39 = icmp eq i32 %conv, 82
  br i1 %cmp39, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.37
  %27 = load i32, i32* %is_whitelist.addr, align 4
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %lor.lhs.false, label %if.then.53

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.37
  %arrayidx42 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 0
  %28 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %28 to i32
  %cmp44 = icmp eq i32 %conv43, 88
  br i1 %cmp44, label %land.lhs.true.51, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false
  %arrayidx47 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 0
  %29 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %29 to i32
  %cmp49 = icmp eq i32 %conv48, 89
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.64

land.lhs.true.51:                                 ; preds = %lor.lhs.false.46, %lor.lhs.false
  %30 = load i32, i32* %is_whitelist.addr, align 4
  %tobool52 = icmp ne i32 %30, 0
  br i1 %tobool52, label %if.then.53, label %if.else.64

if.then.53:                                       ; preds = %land.lhs.true.51, %land.lhs.true
  %31 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %32 = load i8*, i8** %pattern, align 8
  %33 = load i8*, i8** %flags, align 8
  %arrayidx54 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 0
  %34 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %34 to i32
  %cmp56 = icmp eq i32 %conv55, 89
  %conv57 = zext i1 %cmp56 to i32
  %call58 = call i32 @add_pattern(%struct.regex_matcher* %31, i8* %32, i8* %33, i32 %conv57)
  store i32 %call58, i32* %rc, align 4
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.then.53
  %35 = load i32, i32* %rc, align 4
  %cmp61 = icmp eq i32 %35, -114
  %cond = select i1 %cmp61, i32 -114, i32 -116
  store i32 %cond, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.then.53
  br label %if.end.114

if.else.64:                                       ; preds = %land.lhs.true.51, %lor.lhs.false.46
  %arrayidx65 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 0
  %36 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %36 to i32
  %cmp67 = icmp eq i32 %conv66, 72
  br i1 %cmp67, label %land.lhs.true.69, label %lor.lhs.false.71

land.lhs.true.69:                                 ; preds = %if.else.64
  %37 = load i32, i32* %is_whitelist.addr, align 4
  %tobool70 = icmp ne i32 %37, 0
  br i1 %tobool70, label %lor.lhs.false.71, label %if.then.78

lor.lhs.false.71:                                 ; preds = %land.lhs.true.69, %if.else.64
  %arrayidx72 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 0
  %38 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %38 to i32
  %cmp74 = icmp eq i32 %conv73, 77
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.112

land.lhs.true.76:                                 ; preds = %lor.lhs.false.71
  %39 = load i32, i32* %is_whitelist.addr, align 4
  %tobool77 = icmp ne i32 %39, 0
  br i1 %tobool77, label %if.then.78, label %if.else.112

if.then.78:                                       ; preds = %land.lhs.true.76, %land.lhs.true.69
  %40 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_built = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %40, i32 0, i32 6
  %41 = load i32, i32* %list_built, align 4
  %tobool79 = icmp ne i32 %41, 0
  br i1 %tobool79, label %if.then.80, label %if.else.99

if.then.80:                                       ; preds = %if.then.78
  %42 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %42, i32 0, i32 0
  %43 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts, align 8
  store %struct.cli_matcher* %43, %struct.cli_matcher** %old_hosts, align 8
  %44 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %44, i32 0, i32 3
  %45 = load i64, i64* %root_hosts_cnt, align 8
  %inc81 = add i64 %45, 1
  store i64 %inc81, i64* %root_hosts_cnt, align 8
  %46 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts82 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %46, i32 0, i32 0
  %47 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts82, align 8
  %48 = bitcast %struct.cli_matcher* %47 to i8*
  %49 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt83 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %49, i32 0, i32 3
  %50 = load i64, i64* %root_hosts_cnt83, align 8
  %mul = mul i64 %50, 80
  %call84 = call i8* @cli_realloc(i8* %48, i64 %mul)
  %51 = bitcast i8* %call84 to %struct.cli_matcher*
  %52 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts85 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %52, i32 0, i32 0
  store %struct.cli_matcher* %51, %struct.cli_matcher** %root_hosts85, align 8
  %53 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts86 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %53, i32 0, i32 0
  %54 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts86, align 8
  %tobool87 = icmp ne %struct.cli_matcher* %54, null
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %if.then.80
  %55 = load %struct.cli_matcher*, %struct.cli_matcher** %old_hosts, align 8
  %56 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts89 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %56, i32 0, i32 0
  store %struct.cli_matcher* %55, %struct.cli_matcher** %root_hosts89, align 8
  store i32 -114, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.80
  %57 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt91 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %57, i32 0, i32 3
  %58 = load i64, i64* %root_hosts_cnt91, align 8
  %sub = sub i64 %58, 1
  %59 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts92 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %59, i32 0, i32 0
  %60 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts92, align 8
  %arrayidx93 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %60, i64 %sub
  store %struct.cli_matcher* %arrayidx93, %struct.cli_matcher** %root, align 8
  %61 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %62 = bitcast %struct.cli_matcher* %61 to i8*
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 80, i32 8, i1 false)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0))
  %63 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %64 = load i8, i8* @cli_ac_mindepth, align 1
  %65 = load i8, i8* @cli_ac_maxdepth, align 1
  %call94 = call i32 @cli_ac_init(%struct.cli_matcher* %63, i8 zeroext %64, i8 zeroext %65)
  store i32 %call94, i32* %rc, align 4
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.90
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0))
  %66 = load i32, i32* %rc, align 4
  store i32 %66, i32* %retval
  br label %return

if.end.97:                                        ; preds = %if.end.90
  %67 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_built98 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %67, i32 0, i32 6
  store i32 0, i32* %list_built98, align 4
  br label %if.end.104

if.else.99:                                       ; preds = %if.then.78
  %68 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt100 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %68, i32 0, i32 3
  %69 = load i64, i64* %root_hosts_cnt100, align 8
  %sub101 = sub i64 %69, 1
  %70 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts102 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %70, i32 0, i32 0
  %71 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts102, align 8
  %arrayidx103 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %71, i64 %sub101
  store %struct.cli_matcher* %arrayidx103, %struct.cli_matcher** %root, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.99, %if.end.97
  %72 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %73 = load i8*, i8** %pattern, align 8
  %74 = load i8*, i8** %flags, align 8
  %call105 = call i32 @add_regex_list_element(%struct.cli_matcher* %72, i8* %73, i8* %74)
  store i32 %call105, i32* %rc, align 4
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.111

if.then.107:                                      ; preds = %if.end.104
  %75 = load i32, i32* %rc, align 4
  %cmp108 = icmp eq i32 %75, -114
  %cond110 = select i1 %cmp108, i32 -114, i32 -116
  store i32 %cond110, i32* %retval
  br label %return

if.end.111:                                       ; preds = %if.end.104
  br label %if.end.113

if.else.112:                                      ; preds = %land.lhs.true.76, %lor.lhs.false.71
  store i32 -116, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.end.111
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.63
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_loaded = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %76, i32 0, i32 5
  store i32 1, i32* %list_loaded, align 4
  %77 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %call115 = call i32 @build_regex_list(%struct.regex_matcher* %77)
  store i32 %call115, i32* %rc, align 4
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %while.end
  %78 = load i32, i32* %rc, align 4
  store i32 %78, i32* %retval
  br label %return

if.end.118:                                       ; preds = %while.end
  %79 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_built119 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %79, i32 0, i32 6
  %80 = load i32, i32* %list_built119, align 4
  %tobool120 = icmp ne i32 %80, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %if.end.118
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0))
  %81 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  call void @fatal_error(%struct.regex_matcher* %81)
  store i32 -116, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.end.118
  %82 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  call void @regex_list_cleanup(%struct.regex_matcher* %82)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.122, %if.then.121, %if.then.117, %if.else.112, %if.then.107, %if.then.96, %if.then.88, %if.then.60, %if.else, %if.then.27, %if.then.8, %if.then.1, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare void @cli_errmsg(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @fatal_error(%struct.regex_matcher* %matcher) #0 {
entry:
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  %0 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  call void @regex_list_done(%struct.regex_matcher* %0)
  %1 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %1, i32 0, i32 4
  store i32 -1, i32* %list_inited, align 4
  ret void
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @cli_chomp(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @functionality_level_check(i8* %line) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %ptmin = alloca i8*, align 8
  %ptmax = alloca i8*, align 8
  %j = alloca i64, align 8
  %min = alloca i64, align 8
  %max = alloca i64, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 58) #8
  store i8* %call, i8** %ptmin, align 8
  %1 = load i8*, i8** %ptmin, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ptmin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %ptmin, align 8
  %3 = load i8*, i8** %ptmin, align 8
  %call1 = call i8* @strchr(i8* %3, i32 45) #8
  store i8* %call1, i8** %ptmax, align 8
  %4 = load i8*, i8** %ptmax, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %ptmax, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr4, i8** %ptmax, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i64, i64* %j, align 8
  %7 = load i8*, i8** %ptmin, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %6
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %8 = load i8*, i8** %ptmax, align 8
  %cmp = icmp ult i8* %add.ptr5, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %j, align 8
  %10 = load i8*, i8** %ptmin, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %9
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %idxprom = sext i32 %conv to i64
  %call6 = call i16** @__ctype_b_loc() #9
  %12 = load i16*, i16** %call6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %13 to i32
  %and = and i32 %conv8, 2048
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %14 = load i64, i64* %j, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.27, %for.end
  %15 = load i64, i64* %j, align 8
  %16 = load i8*, i8** %ptmax, align 8
  %call13 = call i64 @strlen(i8* %16) #8
  %cmp14 = icmp ult i64 %15, %call13
  br i1 %cmp14, label %for.body.16, label %for.end.29

for.body.16:                                      ; preds = %for.cond.12
  %17 = load i64, i64* %j, align 8
  %18 = load i8*, i8** %ptmax, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %18, i64 %17
  %19 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %19 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %call20 = call i16** @__ctype_b_loc() #9
  %20 = load i16*, i16** %call20, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %20, i64 %idxprom19
  %21 = load i16, i16* %arrayidx21, align 2
  %conv22 = zext i16 %21 to i32
  %and23 = and i32 %conv22, 2048
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.body.16
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.body.16
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %22 = load i64, i64* %j, align 8
  %inc28 = add i64 %22, 1
  store i64 %inc28, i64* %j, align 8
  br label %for.cond.12

for.end.29:                                       ; preds = %for.cond.12
  %23 = load i8*, i8** %ptmax, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %23, i64 -1
  store i8 0, i8* %arrayidx30, align 1
  %24 = load i8*, i8** %ptmin, align 8
  %call31 = call i32 @atoi(i8* %24) #8
  %conv32 = sext i32 %call31 to i64
  store i64 %conv32, i64* %min, align 8
  %25 = load i8*, i8** %ptmax, align 8
  %call33 = call i64 @strlen(i8* %25) #8
  %cmp34 = icmp eq i64 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %for.end.29
  store i64 2147483647, i64* %max, align 8
  br label %if.end.40

if.else.37:                                       ; preds = %for.end.29
  %26 = load i8*, i8** %ptmax, align 8
  %call38 = call i32 @atoi(i8* %26) #8
  %conv39 = sext i32 %call38 to i64
  store i64 %conv39, i64* %max, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %27 = load i64, i64* %min, align 8
  %call41 = call i32 @cl_retflevel()
  %conv42 = zext i32 %call41 to i64
  %cmp43 = icmp ugt i64 %27, %conv42
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.40
  %28 = load i8*, i8** %line.addr, align 8
  %29 = load i64, i64* %min, align 8
  %conv46 = trunc i64 %29 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* %28, i32 %conv46)
  store i32 -116, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.40
  %30 = load i64, i64* %max, align 8
  %call48 = call i32 @cl_retflevel()
  %conv49 = zext i32 %call48 to i64
  %cmp50 = icmp ult i64 %30, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  store i32 -116, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.47
  %31 = load i8*, i8** %ptmin, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %31, i64 -1
  store i8 0, i8* %arrayidx54, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.52, %if.then.45, %if.then.25, %if.then.10, %if.then.3, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @add_pattern(%struct.regex_matcher* %matcher, i8* %pat, i8* %info, i32 %hostonly) #0 {
entry:
  %retval = alloca i32, align 4
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  %pat.addr = alloca i8*, align 8
  %info.addr = alloca i8*, align 8
  %hostonly.addr = alloca i32, align 4
  %bol = alloca i32, align 4
  %pat_end = alloca i8*, align 8
  %token = alloca %struct.token_t, align 8
  %node = alloca %struct.tree_node*, align 8
  %left = alloca i32, align 4
  %newnode = alloca %struct.tree_node*, align 8
  %node_alt = alloca %struct.tree_node*, align 8
  %new = alloca %struct.tree_node*, align 8
  %charclass = alloca i8, align 1
  %new70 = alloca %struct.tree_node*, align 8
  %leaf = alloca %struct.leaf_info*, align 8
  %rc = alloca i32, align 4
  %new86 = alloca %struct.tree_node*, align 8
  %preg = alloca %struct.regex_t*, align 8
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  store i32 %hostonly, i32* %hostonly.addr, align 4
  store i32 1, i32* %bol, align 4
  %0 = load i8*, i8** %pat.addr, align 8
  %call = call i8* @find_regex_start(i8* %0)
  store i8* %call, i8** %pat_end, align 8
  %1 = load i32, i32* %hostonly.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex_hostonly = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %2, i32 0, i32 2
  %3 = load %struct.tree_node*, %struct.tree_node** %root_regex_hostonly, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %4, i32 0, i32 1
  %5 = load %struct.tree_node*, %struct.tree_node** %root_regex, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tree_node* [ %3, %cond.true ], [ %5, %cond.false ]
  store %struct.tree_node* %cond, %struct.tree_node** %node, align 8
  %6 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %6, i32 0, i32 7
  call void @stack_reset(%struct.node_stack* %node_stack)
  %7 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack_alt = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %7, i32 0, i32 8
  call void @stack_reset(%struct.node_stack* %node_stack_alt)
  %8 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack1 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %8, i32 0, i32 7
  %9 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %call2 = call i32 @stack_push(%struct.node_stack* %node_stack1, %struct.tree_node* %9)
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %cond.end
  %10 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %op = getelementptr inbounds %struct.tree_node, %struct.tree_node* %10, i32 0, i32 2
  %11 = load i32, i32* %op, align 4
  %cmp = icmp ne i32 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %pat.addr, align 8
  %13 = load i8*, i8** %pat_end, align 8
  %cmp3 = icmp ult i8* %12, %13
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %14 = load i8*, i8** %pat.addr, align 8
  %call4 = call i8* @getNextToken(i8* %14, %struct.token_t* %token)
  store i8* %call4, i8** %pat.addr, align 8
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %15 = load i8*, i8** %pat.addr, align 8
  %16 = load i8, i8* %15, align 1
  %tobool5 = icmp ne i8 %16, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %type = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  store i8 6, i8* %type, align 1
  %17 = load i8*, i8** %pat.addr, align 8
  %u = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 0
  %start = bitcast %union.anon.0* %u to i8**
  store i8* %17, i8** %start, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %type8 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  store i8 7, i8* %type8, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %type10 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  %18 = load i8, i8* %type10, align 1
  %conv = sext i8 %18 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.25
    i32 5, label %sw.bb.34
    i32 4, label %sw.bb.41
    i32 1, label %sw.bb.69
    i32 6, label %sw.bb.74
    i32 7, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %if.end.9
  %19 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %u11 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 0
  %c = bitcast %union.anon.0* %u11 to i8*
  %20 = load i8, i8* %c, align 1
  %call12 = call %struct.tree_node* @tree_node_char_binsearch(%struct.tree_node* %19, i8 signext %20, i32* %left)
  store %struct.tree_node* %call12, %struct.tree_node** %newnode, align 8
  %21 = load %struct.tree_node*, %struct.tree_node** %newnode, align 8
  %tobool13 = icmp ne %struct.tree_node* %21, null
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %sw.bb
  %22 = load %struct.tree_node*, %struct.tree_node** %newnode, align 8
  store %struct.tree_node* %22, %struct.tree_node** %node, align 8
  br label %if.end.19

if.else.15:                                       ; preds = %sw.bb
  %23 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %u16 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 0
  %c17 = bitcast %union.anon.0* %u16 to i8*
  %24 = load i8, i8* %c17, align 1
  %25 = load i32, i32* %left, align 4
  %call18 = call %struct.tree_node* @tree_node_char_insert(%struct.tree_node* %23, i8 signext %24, i32 %25)
  store %struct.tree_node* %call18, %struct.tree_node** %node, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.15, %if.then.14
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.9
  %26 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack_alt21 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %26, i32 0, i32 8
  %call22 = call i32 @stack_push(%struct.node_stack* %node_stack_alt21, %struct.tree_node* null)
  %27 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack23 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %27, i32 0, i32 7
  %28 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %call24 = call i32 @stack_push(%struct.node_stack* %node_stack23, %struct.tree_node* %28)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.9
  %29 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  store %struct.tree_node* %29, %struct.tree_node** %node_alt, align 8
  %call26 = call %struct.tree_node* @tree_node_alloc(%struct.tree_node* null, i8 signext 1)
  store %struct.tree_node* %call26, %struct.tree_node** %node, align 8
  %30 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %op27 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %30, i32 0, i32 2
  store i32 6, i32* %op27, align 4
  %31 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %c28 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %31, i32 0, i32 1
  store i8 0, i8* %c28, align 1
  %32 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %listend = getelementptr inbounds %struct.tree_node, %struct.tree_node* %32, i32 0, i32 4
  store i8 1, i8* %listend, align 1
  %33 = load %struct.tree_node*, %struct.tree_node** %node_alt, align 8
  %34 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  call void @tree_node_insert_nonbin(%struct.tree_node* %33, %struct.tree_node* %34)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.25
  %35 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack_alt29 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %35, i32 0, i32 8
  %call30 = call %struct.tree_node* @stack_pop(%struct.node_stack* %node_stack_alt29)
  store %struct.tree_node* %call30, %struct.tree_node** %node_alt, align 8
  %tobool31 = icmp ne %struct.tree_node* %call30, null
  br i1 %tobool31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load %struct.tree_node*, %struct.tree_node** %node_alt, align 8
  %37 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  call void @tree_node_insert_nonbin(%struct.tree_node* %36, %struct.tree_node* %37)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack32 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %38, i32 0, i32 7
  %call33 = call %struct.tree_node* @stack_pop(%struct.node_stack* %node_stack32)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.9
  %39 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack_alt35 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %39, i32 0, i32 8
  %40 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %call36 = call i32 @stack_push(%struct.node_stack* %node_stack_alt35, %struct.tree_node* %40)
  %41 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack37 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %41, i32 0, i32 7
  %call38 = call %struct.tree_node* @stack_pop(%struct.node_stack* %node_stack37)
  store %struct.tree_node* %call38, %struct.tree_node** %node, align 8
  %42 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack39 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %42, i32 0, i32 7
  %43 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %call40 = call i32 @stack_push(%struct.node_stack* %node_stack39, %struct.tree_node* %43)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.9
  %44 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %call42 = call %struct.tree_node* @tree_get_next(%struct.tree_node* %44)
  %call43 = call %struct.tree_node* @tree_node_alloc(%struct.tree_node* %call42, i8 signext 1)
  store %struct.tree_node* %call43, %struct.tree_node** %new, align 8
  %u44 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 0
  %bitmap = bitcast %union.anon.0* %u44 to i8**
  %45 = load i8*, i8** %bitmap, align 8
  %call45 = call zeroext i8 @char_getclass(i8* %45)
  store i8 %call45, i8* %charclass, align 1
  %46 = load i8, i8* %charclass, align 1
  %conv46 = zext i8 %46 to i64
  %cmp47 = icmp eq i64 %conv46, 12
  br i1 %cmp47, label %if.then.49, label %if.else.65

if.then.49:                                       ; preds = %sw.bb.41
  %47 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %op50 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %47, i32 0, i32 2
  store i32 2, i32* %op50, align 4
  %call51 = call i8* @cli_malloc(i64 16)
  %48 = bitcast i8* %call51 to %struct.tree_node**
  %49 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %u52 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %49, i32 0, i32 5
  %children = bitcast %union.anon* %u52 to %struct.tree_node***
  store %struct.tree_node** %48, %struct.tree_node*** %children, align 8
  %50 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %u53 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %50, i32 0, i32 5
  %children54 = bitcast %union.anon* %u53 to %struct.tree_node***
  %51 = load %struct.tree_node**, %struct.tree_node*** %children54, align 8
  %tobool55 = icmp ne %struct.tree_node** %51, null
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.then.49
  store i32 -114, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.49
  %u58 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 0
  %bitmap59 = bitcast %union.anon.0* %u58 to i8**
  %52 = load i8*, i8** %bitmap59, align 8
  %53 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %u60 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %53, i32 0, i32 5
  %bitmap61 = bitcast %union.anon* %u60 to i8***
  %54 = load i8**, i8*** %bitmap61, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %54, i64 0
  store i8* %52, i8** %arrayidx, align 8
  %55 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %u62 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %55, i32 0, i32 5
  %bitmap63 = bitcast %union.anon* %u62 to i8***
  %56 = load i8**, i8*** %bitmap63, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* null, i8** %arrayidx64, align 8
  %57 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %58 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  call void @tree_node_insert_nonbin(%struct.tree_node* %57, %struct.tree_node* %58)
  %59 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  store %struct.tree_node* %59, %struct.tree_node** %node, align 8
  br label %if.end.68

if.else.65:                                       ; preds = %sw.bb.41
  %60 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %op66 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %60, i32 0, i32 2
  store i32 1, i32* %op66, align 4
  %61 = load i8, i8* %charclass, align 1
  %62 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %c67 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %62, i32 0, i32 1
  store i8 %61, i8* %c67, align 1
  %63 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %64 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  call void @tree_node_insert_nonbin(%struct.tree_node* %63, %struct.tree_node* %64)
  %65 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  store %struct.tree_node* %65, %struct.tree_node** %node, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.end.57
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.end.9
  %66 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %call71 = call %struct.tree_node* @tree_get_next(%struct.tree_node* %66)
  %call72 = call %struct.tree_node* @tree_node_alloc(%struct.tree_node* %call71, i8 signext 1)
  store %struct.tree_node* %call72, %struct.tree_node** %new70, align 8
  %67 = load %struct.tree_node*, %struct.tree_node** %new70, align 8
  %op73 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %67, i32 0, i32 2
  store i32 3, i32* %op73, align 4
  %68 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %69 = load %struct.tree_node*, %struct.tree_node** %new70, align 8
  call void @tree_node_insert_nonbin(%struct.tree_node* %68, %struct.tree_node* %69)
  %70 = load %struct.tree_node*, %struct.tree_node** %new70, align 8
  store %struct.tree_node* %70, %struct.tree_node** %node, align 8
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.9, %if.end.9
  %call75 = call i8* @cli_malloc(i64 16)
  %71 = bitcast i8* %call75 to %struct.leaf_info*
  store %struct.leaf_info* %71, %struct.leaf_info** %leaf, align 8
  %72 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %tobool76 = icmp ne %struct.leaf_info* %72, null
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %sw.bb.74
  store i32 -114, i32* %retval
  br label %return

if.end.78:                                        ; preds = %sw.bb.74
  %73 = load i8*, i8** %info.addr, align 8
  %call79 = call i8* @cli_strdup(i8* %73)
  %74 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %info80 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %74, i32 0, i32 0
  store i8* %call79, i8** %info80, align 8
  %type81 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  %75 = load i8, i8* %type81, align 1
  %conv82 = sext i8 %75 to i32
  %cmp83 = icmp eq i32 %conv82, 6
  br i1 %cmp83, label %if.then.85, label %if.else.108

if.then.85:                                       ; preds = %if.end.78
  %call87 = call i8* @cli_malloc(i64 32)
  %76 = bitcast i8* %call87 to %struct.regex_t*
  store %struct.regex_t* %76, %struct.regex_t** %preg, align 8
  %77 = load %struct.regex_t*, %struct.regex_t** %preg, align 8
  %tobool88 = icmp ne %struct.regex_t* %77, null
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.then.85
  store i32 -114, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.85
  %78 = load %struct.regex_t*, %struct.regex_t** %preg, align 8
  %u91 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 0
  %start92 = bitcast %union.anon.0* %u91 to i8**
  %79 = load i8*, i8** %start92, align 8
  %80 = load i32, i32* %bol, align 4
  %tobool93 = icmp ne i32 %80, 0
  %cond94 = select i1 %tobool93, i32 0, i32 1
  %or = or i32 1, %cond94
  %call95 = call i32 @cli_regcomp(%struct.regex_t* %78, i8* %79, i32 %or)
  store i32 %call95, i32* %rc, align 4
  %81 = load %struct.regex_t*, %struct.regex_t** %preg, align 8
  %82 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %preg96 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %82, i32 0, i32 1
  store %struct.regex_t* %81, %struct.regex_t** %preg96, align 8
  %83 = load i32, i32* %rc, align 4
  %tobool97 = icmp ne i32 %83, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.90
  %84 = load i32, i32* %rc, align 4
  store i32 %84, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.end.90
  %call100 = call i8* @cli_malloc(i64 32)
  %85 = bitcast i8* %call100 to %struct.tree_node*
  store %struct.tree_node* %85, %struct.tree_node** %new86, align 8
  %86 = load %struct.tree_node*, %struct.tree_node** %new86, align 8
  %tobool101 = icmp ne %struct.tree_node* %86, null
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.end.99
  store i32 -114, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.end.99
  %87 = load %struct.tree_node*, %struct.tree_node** %new86, align 8
  %op104 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %87, i32 0, i32 2
  store i32 4, i32* %op104, align 4
  %88 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %89 = load %struct.tree_node*, %struct.tree_node** %new86, align 8
  %next = getelementptr inbounds %struct.tree_node, %struct.tree_node* %89, i32 0, i32 0
  store %struct.tree_node* %88, %struct.tree_node** %next, align 8
  %90 = load %struct.tree_node*, %struct.tree_node** %new86, align 8
  %alternatives = getelementptr inbounds %struct.tree_node, %struct.tree_node* %90, i32 0, i32 3
  store i8 0, i8* %alternatives, align 1
  %91 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %92 = load %struct.tree_node*, %struct.tree_node** %new86, align 8
  %u105 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %92, i32 0, i32 5
  %leaf106 = bitcast %union.anon* %u105 to %struct.leaf_info**
  store %struct.leaf_info* %91, %struct.leaf_info** %leaf106, align 8
  %93 = load %struct.tree_node*, %struct.tree_node** %new86, align 8
  %listend107 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %93, i32 0, i32 4
  store i8 1, i8* %listend107, align 1
  %94 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %95 = load %struct.tree_node*, %struct.tree_node** %new86, align 8
  call void @tree_node_insert_nonbin(%struct.tree_node* %94, %struct.tree_node* %95)
  br label %if.end.114

if.else.108:                                      ; preds = %if.end.78
  %96 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %preg109 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %96, i32 0, i32 1
  store %struct.regex_t* null, %struct.regex_t** %preg109, align 8
  %97 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %alternatives110 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %97, i32 0, i32 3
  store i8 0, i8* %alternatives110, align 1
  %98 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %99 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %u111 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %99, i32 0, i32 5
  %leaf112 = bitcast %union.anon* %u111 to %struct.leaf_info**
  store %struct.leaf_info* %98, %struct.leaf_info** %leaf112, align 8
  %100 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %op113 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %100, i32 0, i32 2
  store i32 4, i32* %op113, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.108, %if.end.103
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.9, %sw.bb.69, %if.end.68, %sw.bb.34, %while.end, %sw.bb.20, %if.end.19
  store i32 0, i32* %bol, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.114, %if.then.102, %if.then.98, %if.then.89, %if.then.77, %if.then.56
  %101 = load i32, i32* %retval
  ret i32 %101
}

declare i8* @cli_realloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @cli_ac_init(%struct.cli_matcher*, i8 zeroext, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define internal i32 @add_regex_list_element(%struct.cli_matcher* %root, i8* %pattern, i8* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.cli_matcher*, align 8
  %pattern.addr = alloca i8*, align 8
  %info.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %new = alloca %struct.cli_ac_patt*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  %call = call i8* @cli_calloc(i64 1, i64 96)
  %0 = bitcast i8* %call to %struct.cli_ac_patt*
  store %struct.cli_ac_patt* %0, %struct.cli_ac_patt** %new, align 8
  %1 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %tobool = icmp ne %struct.cli_ac_patt* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %pattern.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #8
  store i64 %call1, i64* %len, align 8
  %3 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %type = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %3, i32 0, i32 16
  store i16 0, i16* %type, align 2
  %4 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %sigid = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %4, i32 0, i32 9
  store i32 0, i32* %sigid, align 4
  %5 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %parts = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %5, i32 0, i32 10
  store i16 0, i16* %parts, align 2
  %6 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %partno = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %6, i32 0, i32 11
  store i16 0, i16* %partno, align 2
  %7 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %mindist = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %7, i32 0, i32 5
  store i32 0, i32* %mindist, align 4
  %8 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %maxdist = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %8, i32 0, i32 6
  store i32 0, i32* %maxdist, align 4
  %9 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %offset = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %9, i32 0, i32 8
  store i8* null, i8** %offset, align 8
  %10 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %target = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %10, i32 0, i32 15
  store i8 0, i8* %target, align 1
  %11 = load i64, i64* %len, align 8
  %conv = trunc i64 %11 to i16
  %12 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %12, i32 0, i32 2
  store i16 %conv, i16* %length, align 2
  %13 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length2 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %13, i32 0, i32 2
  %14 = load i16, i16* %length2, align 2
  %conv3 = zext i16 %14 to i32
  %15 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %maxpatlen = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %15, i32 0, i32 0
  %16 = load i16, i16* %maxpatlen, align 2
  %conv4 = zext i16 %16 to i32
  %cmp = icmp sgt i32 %conv3, %conv4
  br i1 %cmp, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %17 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %length7 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %17, i32 0, i32 2
  %18 = load i16, i16* %length7, align 2
  %19 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %maxpatlen8 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %19, i32 0, i32 0
  store i16 %18, i16* %maxpatlen8, align 2
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %20 = load i64, i64* %len, align 8
  %mul = mul i64 2, %20
  %call10 = call i8* @cli_malloc(i64 %mul)
  %21 = bitcast i8* %call10 to i16*
  %22 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern11 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %22, i32 0, i32 0
  store i16* %21, i16** %pattern11, align 8
  %23 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern12 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %23, i32 0, i32 0
  %24 = load i16*, i16** %pattern12, align 8
  %tobool13 = icmp ne i16* %24, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.9
  %25 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %26 = bitcast %struct.cli_ac_patt* %25 to i8*
  call void @free(i8* %26) #5
  store i32 -114, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %27 = load i64, i64* %i, align 8
  %28 = load i64, i64* %len, align 8
  %cmp16 = icmp ult i64 %27, %28
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64, i64* %i, align 8
  %30 = load i8*, i8** %pattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %29
  %31 = load i8, i8* %arrayidx, align 1
  %conv18 = sext i8 %31 to i16
  %32 = load i64, i64* %i, align 8
  %33 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern19 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %33, i32 0, i32 0
  %34 = load i16*, i16** %pattern19, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %34, i64 %32
  store i16 %conv18, i16* %arrayidx20, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i64, i64* %i, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i8*, i8** %info.addr, align 8
  %call21 = call i8* @cli_strdup(i8* %36)
  %37 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %virname = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %37, i32 0, i32 7
  store i8* %call21, i8** %virname, align 8
  %38 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %39 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %call22 = call i32 @cli_ac_addpatt(%struct.cli_matcher* %38, %struct.cli_ac_patt* %39)
  store i32 %call22, i32* %ret, align 4
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %for.end
  %40 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %virname25 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %40, i32 0, i32 7
  %41 = load i8*, i8** %virname25, align 8
  call void @free(i8* %41) #5
  %42 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %pattern26 = getelementptr inbounds %struct.cli_ac_patt, %struct.cli_ac_patt* %42, i32 0, i32 0
  %43 = load i16*, i16** %pattern26, align 8
  %44 = bitcast i16* %43 to i8*
  call void @free(i8* %44) #5
  %45 = load %struct.cli_ac_patt*, %struct.cli_ac_patt** %new, align 8
  %46 = bitcast %struct.cli_ac_patt* %45 to i8*
  call void @free(i8* %46) #5
  %47 = load i32, i32* %ret, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.27:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.24, %if.then.14, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @build_regex_list(%struct.regex_matcher* %matcher) #0 {
entry:
  %retval = alloca i32, align 4
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  %rc = alloca i32, align 4
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  %0 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %0, i32 0, i32 4
  %1 = load i32, i32* %list_inited, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_loaded = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %2, i32 0, i32 5
  %3 = load i32, i32* %list_loaded, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0))
  %4 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %4, i32 0, i32 0
  %5 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts, align 8
  %tobool2 = icmp ne %struct.cli_matcher* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %6, i32 0, i32 3
  %7 = load i64, i64* %root_hosts_cnt, align 8
  %sub = sub i64 %7, 1
  %8 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts4 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %8, i32 0, i32 0
  %9 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts4, align 8
  %arrayidx = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %9, i64 %sub
  %call = call i32 @cli_ac_buildtrie(%struct.cli_matcher* %arrayidx)
  store i32 %call, i32* %rc, align 4
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %10 = load i32, i32* %rc, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %11 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_built = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %11, i32 0, i32 6
  store i32 1, i32* %list_built, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define void @regex_list_cleanup(%struct.regex_matcher* %matcher) #0 {
entry:
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  %0 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %0, i32 0, i32 7
  call void @stack_destroy(%struct.node_stack* %node_stack)
  %1 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack_alt = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %1, i32 0, i32 8
  call void @stack_destroy(%struct.node_stack* %node_stack_alt)
  %2 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack1 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %2, i32 0, i32 7
  %call = call i32 @stack_init(%struct.node_stack* %node_stack1)
  %3 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack_alt2 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %3, i32 0, i32 8
  %call3 = call i32 @stack_init(%struct.node_stack* %node_stack_alt2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @regex_list_done(%struct.regex_matcher* %matcher) #0 {
entry:
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  %i = alloca i64, align 8
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  %0 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  call void @regex_list_cleanup(%struct.regex_matcher* %0)
  %1 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_loaded = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %1, i32 0, i32 5
  %2 = load i32, i32* %list_loaded, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %3 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %3, i32 0, i32 0
  %4 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts, align 8
  %tobool1 = icmp ne %struct.cli_matcher* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %6, i32 0, i32 3
  %7 = load i64, i64* %root_hosts_cnt, align 8
  %cmp = icmp ult i64 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts3 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %9, i32 0, i32 0
  %10 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts3, align 8
  %arrayidx = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %10, i64 %8
  call void @cli_ac_free(%struct.cli_matcher* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts4 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %12, i32 0, i32 0
  %13 = load %struct.cli_matcher*, %struct.cli_matcher** %root_hosts4, align 8
  %14 = bitcast %struct.cli_matcher* %13 to i8*
  call void @free(i8* %14) #5
  %15 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts5 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %15, i32 0, i32 0
  store %struct.cli_matcher* null, %struct.cli_matcher** %root_hosts5, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %16 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_hosts_cnt6 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %16, i32 0, i32 3
  store i64 0, i64* %root_hosts_cnt6, align 8
  %17 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_built = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %17, i32 0, i32 6
  store i32 0, i32* %list_built, align 4
  %18 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  call void @destroy_tree(%struct.regex_matcher* %18)
  %19 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_loaded7 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %19, i32 0, i32 5
  store i32 0, i32* %list_loaded7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %20 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %20, i32 0, i32 4
  %21 = load i32, i32* %list_inited, align 4
  %tobool9 = icmp ne i32 %21, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %22 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited11 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %22, i32 0, i32 4
  store i32 0, i32* %list_inited11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %23 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %23, i32 0, i32 7
  call void @stack_destroy(%struct.node_stack* %node_stack)
  %24 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack_alt = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %24, i32 0, i32 8
  call void @stack_destroy(%struct.node_stack* %node_stack_alt)
  ret void
}

declare void @cli_ac_free(%struct.cli_matcher*) #2

; Function Attrs: nounwind uwtable
define internal void @destroy_tree(%struct.regex_matcher* %matcher) #0 {
entry:
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  %node = alloca %struct.tree_node*, align 8
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  %0 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %0, i32 0, i32 7
  call void @stack_reset(%struct.node_stack* %node_stack)
  %1 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %2 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %2, i32 0, i32 1
  %3 = load %struct.tree_node*, %struct.tree_node** %root_regex, align 8
  call void @destroy_tree_internal(%struct.regex_matcher* %1, %struct.tree_node* %3)
  %4 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %5 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %root_regex_hostonly = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %5, i32 0, i32 2
  %6 = load %struct.tree_node*, %struct.tree_node** %root_regex_hostonly, align 8
  call void @destroy_tree_internal(%struct.regex_matcher* %4, %struct.tree_node* %6)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %7 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack1 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %7, i32 0, i32 7
  %cnt = getelementptr inbounds %struct.node_stack, %struct.node_stack* %node_stack1, i32 0, i32 2
  %8 = load i64, i64* %cnt, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack2 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %9, i32 0, i32 7
  %call = call %struct.tree_node* @stack_pop(%struct.node_stack* %node_stack2)
  store %struct.tree_node* %call, %struct.tree_node** %node, align 8
  %10 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %tobool3 = icmp ne %struct.tree_node* %10, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %12 = bitcast %struct.tree_node* %11 to i8*
  call void @free(i8* %12) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_regex_ok(%struct.regex_matcher* %matcher) #0 {
entry:
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  %0 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %0, i32 0, i32 4
  %1 = load i32, i32* %list_inited, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %list_inited1 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %2, i32 0, i32 4
  %3 = load i32, i32* %list_inited1, align 4
  %cmp = icmp ne i32 %3, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @cl_retflevel() #2

declare i8* @cli_calloc(i64, i64) #2

declare i8* @cli_strdup(i8*) #2

declare i32 @cli_ac_addpatt(%struct.cli_matcher*, %struct.cli_ac_patt*) #2

declare i32 @cli_ac_buildtrie(%struct.cli_matcher*) #2

; Function Attrs: nounwind uwtable
define internal %struct.tree_node* @tree_node_alloc(%struct.tree_node* %next, i8 signext %listend) #0 {
entry:
  %next.addr = alloca %struct.tree_node*, align 8
  %listend.addr = alloca i8, align 1
  %node = alloca %struct.tree_node*, align 8
  store %struct.tree_node* %next, %struct.tree_node** %next.addr, align 8
  store i8 %listend, i8* %listend.addr, align 1
  %call = call i8* @cli_malloc(i64 32)
  %0 = bitcast i8* %call to %struct.tree_node*
  store %struct.tree_node* %0, %struct.tree_node** %node, align 8
  %1 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %tobool = icmp ne %struct.tree_node* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %alternatives = getelementptr inbounds %struct.tree_node, %struct.tree_node* %2, i32 0, i32 3
  store i8 0, i8* %alternatives, align 1
  %3 = load %struct.tree_node*, %struct.tree_node** %next.addr, align 8
  %4 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %next1 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %4, i32 0, i32 0
  store %struct.tree_node* %3, %struct.tree_node** %next1, align 8
  %5 = load i8, i8* %listend.addr, align 1
  %6 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %listend2 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %6, i32 0, i32 4
  store i8 %5, i8* %listend2, align 1
  %7 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  %u = getelementptr inbounds %struct.tree_node, %struct.tree_node* %7, i32 0, i32 5
  %children = bitcast %union.anon* %u to %struct.tree_node***
  store %struct.tree_node** null, %struct.tree_node*** %children, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.tree_node*, %struct.tree_node** %node, align 8
  ret %struct.tree_node* %8
}

; Function Attrs: nounwind uwtable
define internal i8* @find_regex_start(i8* %pat) #0 {
entry:
  %retval = alloca i8*, align 8
  %pat.addr = alloca i8*, align 8
  %token = alloca %struct.token_t, align 8
  %last = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %altpositions = alloca i8**, align 8
  %altpositions_capacity = alloca i64, align 8
  %altpositions_cnt = alloca i64, align 8
  %lasttype = alloca i8, align 1
  store i8* %pat, i8** %pat.addr, align 8
  store i8* null, i8** %last, align 8
  store i8* null, i8** %tmp, align 8
  %call = call i8* @cli_malloc(i64 80)
  %0 = bitcast i8* %call to i8**
  store i8** %0, i8*** %altpositions, align 8
  store i64 10, i64* %altpositions_capacity, align 8
  store i64 0, i64* %altpositions_cnt, align 8
  store i8 -1, i8* %lasttype, align 1
  %1 = load i8**, i8*** %altpositions, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %2 = load i8*, i8** %pat.addr, align 8
  store i8* %2, i8** %tmp, align 8
  %3 = load i8*, i8** %pat.addr, align 8
  %call5 = call i8* @getNextToken(i8* %3, %struct.token_t* %token)
  store i8* %call5, i8** %pat.addr, align 8
  %type = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  %4 = load i8, i8* %type, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 6
  br i1 %cmp, label %if.then.7, label %if.else.53

if.then.7:                                        ; preds = %do.body
  %5 = load i8*, i8** %tmp, align 8
  store i8* %5, i8** %last, align 8
  %type8 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  %6 = load i8, i8* %type8, align 1
  store i8 %6, i8* %lasttype, align 1
  %type9 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  %7 = load i8, i8* %type9, align 1
  %conv10 = sext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 4
  br i1 %cmp11, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.7
  %u = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 0
  %bitmap = bitcast %union.anon.0* %u to i8**
  %8 = load i8*, i8** %bitmap, align 8
  %tobool13 = icmp ne i8* %8, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true
  %u15 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 0
  %bitmap16 = bitcast %union.anon.0* %u15 to i8**
  %9 = load i8*, i8** %bitmap16, align 8
  call void @free(i8* %9) #5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %land.lhs.true, %if.then.7
  %type18 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  %10 = load i8, i8* %type18, align 1
  %conv19 = sext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 5
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %type22 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  %11 = load i8, i8* %type22, align 1
  %conv23 = sext i8 %11 to i32
  %cmp24 = icmp eq i32 %conv23, 2
  br i1 %cmp24, label %if.then.26, label %if.else.46

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.17
  %12 = load i64, i64* %altpositions_cnt, align 8
  %tobool27 = icmp ne i64 %12, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.else

land.lhs.true.28:                                 ; preds = %if.then.26
  %13 = load i64, i64* %altpositions_cnt, align 8
  %sub = sub i64 %13, 1
  %14 = load i8**, i8*** %altpositions, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %sub
  %15 = load i8*, i8** %arrayidx, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %16 to i32
  %cmp31 = icmp eq i32 %conv30, 124
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %land.lhs.true.28
  %17 = load i8*, i8** %last, align 8
  %18 = load i64, i64* %altpositions_cnt, align 8
  %sub34 = sub i64 %18, 1
  %19 = load i8**, i8*** %altpositions, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %19, i64 %sub34
  store i8* %17, i8** %arrayidx35, align 8
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true.28, %if.then.26
  %20 = load i8*, i8** %last, align 8
  %21 = load i64, i64* %altpositions_cnt, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %altpositions_cnt, align 8
  %22 = load i8**, i8*** %altpositions, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %22, i64 %21
  store i8* %20, i8** %arrayidx36, align 8
  %23 = load i64, i64* %altpositions_cnt, align 8
  %24 = load i64, i64* %altpositions_capacity, align 8
  %cmp37 = icmp eq i64 %23, %24
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.else
  %25 = load i64, i64* %altpositions_capacity, align 8
  %add = add i64 %25, 20
  store i64 %add, i64* %altpositions_capacity, align 8
  %26 = load i8**, i8*** %altpositions, align 8
  %27 = bitcast i8** %26 to i8*
  %28 = load i64, i64* %altpositions_capacity, align 8
  %mul = mul i64 %28, 8
  %call40 = call i8* @cli_realloc2(i8* %27, i64 %mul)
  %29 = bitcast i8* %call40 to i8**
  store i8** %29, i8*** %altpositions, align 8
  %30 = load i8**, i8*** %altpositions, align 8
  %tobool41 = icmp ne i8** %30, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.then.39
  store i8* null, i8** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.33
  br label %if.end.52

if.else.46:                                       ; preds = %lor.lhs.false
  %31 = load i8, i8* %lasttype, align 1
  %conv47 = sext i8 %31 to i32
  %cmp48 = icmp eq i32 %conv47, 3
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.else.46
  %32 = load i64, i64* %altpositions_cnt, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %altpositions_cnt, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.else.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.45
  br label %if.end.58

if.else.53:                                       ; preds = %do.body
  %33 = load i64, i64* %altpositions_cnt, align 8
  %tobool54 = icmp ne i64 %33, 0
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.else.53
  %34 = load i8**, i8*** %altpositions, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %34, i64 0
  %35 = load i8*, i8** %arrayidx56, align 8
  store i8* %35, i8** %last, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.else.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.52
  br label %do.cond

do.cond:                                          ; preds = %if.end.58
  %36 = load i8*, i8** %pat.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv59 = zext i8 %37 to i32
  %tobool60 = icmp ne i32 %conv59, 0
  br i1 %tobool60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %type61 = getelementptr inbounds %struct.token_t, %struct.token_t* %token, i32 0, i32 2
  %38 = load i8, i8* %type61, align 1
  %conv62 = sext i8 %38 to i32
  %cmp63 = icmp ne i32 %conv62, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %39 = phi i1 [ false, %do.cond ], [ %cmp63, %land.rhs ]
  br i1 %39, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %40 = load i8**, i8*** %altpositions, align 8
  %41 = bitcast i8** %40 to i8*
  call void @free(i8* %41) #5
  %42 = load i8*, i8** %pat.addr, align 8
  %43 = load i8, i8* %42, align 1
  %conv65 = zext i8 %43 to i32
  %tobool66 = icmp ne i32 %conv65, 0
  br i1 %tobool66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %44 = load i8*, i8** %last, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %45 = load i8*, i8** %last, align 8
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %44, %cond.true ], [ %add.ptr, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.42, %if.then
  %46 = load i8*, i8** %retval
  ret i8* %46
}

; Function Attrs: nounwind uwtable
define internal void @stack_reset(%struct.node_stack* %stack) #0 {
entry:
  %stack.addr = alloca %struct.node_stack*, align 8
  store %struct.node_stack* %stack, %struct.node_stack** %stack.addr, align 8
  %0 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %cnt = getelementptr inbounds %struct.node_stack, %struct.node_stack* %0, i32 0, i32 2
  store i64 0, i64* %cnt, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @stack_push(%struct.node_stack* %stack, %struct.tree_node* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %stack.addr = alloca %struct.node_stack*, align 8
  %node.addr = alloca %struct.tree_node*, align 8
  store %struct.node_stack* %stack, %struct.node_stack** %stack.addr, align 8
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  %0 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %cnt = getelementptr inbounds %struct.node_stack, %struct.node_stack* %0, i32 0, i32 2
  %1 = load i64, i64* %cnt, align 8
  %2 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %capacity = getelementptr inbounds %struct.node_stack, %struct.node_stack* %2, i32 0, i32 1
  %3 = load i64, i64* %capacity, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %capacity1 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %4, i32 0, i32 1
  %5 = load i64, i64* %capacity1, align 8
  %add = add i64 %5, 4096
  store i64 %add, i64* %capacity1, align 8
  %6 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data = getelementptr inbounds %struct.node_stack, %struct.node_stack* %6, i32 0, i32 0
  %7 = load %struct.tree_node**, %struct.tree_node*** %data, align 8
  %8 = bitcast %struct.tree_node** %7 to i8*
  %9 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %capacity2 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %9, i32 0, i32 1
  %10 = load i64, i64* %capacity2, align 8
  %mul = mul i64 %10, 8
  %call = call i8* @cli_realloc2(i8* %8, i64 %mul)
  %11 = bitcast i8* %call to %struct.tree_node**
  %12 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data3 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %12, i32 0, i32 0
  store %struct.tree_node** %11, %struct.tree_node*** %data3, align 8
  %13 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data4 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %13, i32 0, i32 0
  %14 = load %struct.tree_node**, %struct.tree_node*** %data4, align 8
  %tobool = icmp ne %struct.tree_node** %14, null
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %15 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %16 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %cnt7 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %16, i32 0, i32 2
  %17 = load i64, i64* %cnt7, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %cnt7, align 8
  %18 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data8 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %18, i32 0, i32 0
  %19 = load %struct.tree_node**, %struct.tree_node*** %data8, align 8
  %arrayidx = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %19, i64 %17
  store %struct.tree_node* %15, %struct.tree_node** %arrayidx, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i8* @getNextToken(i8* %pat, %struct.token_t* %token) #0 {
entry:
  %retval = alloca i8*, align 8
  %pat.addr = alloca i8*, align 8
  %token.addr = alloca %struct.token_t*, align 8
  %fmt = alloca [3 x i8], align 1
  %c5 = alloca i8, align 1
  %old = alloca i8*, align 8
  %range_start = alloca i8, align 1
  %hasprev = alloca i32, align 4
  %bitmap = alloca i8*, align 8
  %range_end = alloca i8, align 1
  %c39 = alloca i32, align 4
  %end = alloca i8*, align 8
  %len93 = alloca i32, align 4
  %found = alloca i32, align 4
  %i = alloca i64, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store %struct.token_t* %token, %struct.token_t** %token.addr, align 8
  %0 = load i8*, i8** %pat.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 124, label %sw.bb.17
    i32 42, label %sw.bb.19
    i32 43, label %sw.bb.19
    i32 63, label %sw.bb.19
    i32 123, label %sw.bb.19
    i32 125, label %sw.bb.19
    i32 91, label %sw.bb.21
    i32 93, label %sw.bb.161
    i32 46, label %sw.bb.162
    i32 40, label %sw.bb.164
    i32 41, label %sw.bb.166
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type = getelementptr inbounds %struct.token_t, %struct.token_t* %2, i32 0, i32 2
  store i8 0, i8* %type, align 1
  %3 = load i8*, i8** %pat.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %pat.addr, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %5 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %u = getelementptr inbounds %struct.token_t, %struct.token_t* %5, i32 0, i32 0
  %c = bitcast %union.anon.0* %u to i8*
  store i8 %4, i8* %c, align 1
  %6 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %u1 = getelementptr inbounds %struct.token_t, %struct.token_t* %6, i32 0, i32 0
  %c2 = bitcast %union.anon.0* %u1 to i8*
  %7 = load i8, i8* %c2, align 1
  %conv3 = zext i8 %7 to i32
  %idxprom = sext i32 %conv3 to i64
  %call = call i16** @__ctype_b_loc() #9
  %8 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %9 to i32
  %and = and i32 %conv4, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %sw.bb
  %10 = bitcast [3 x i8]* %fmt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @getNextToken.fmt, i32 0, i32 0), i64 3, i32 1, i1 false)
  %11 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %u6 = getelementptr inbounds %struct.token_t, %struct.token_t* %11, i32 0, i32 0
  %c7 = bitcast %union.anon.0* %u6 to i8*
  %12 = load i8, i8* %c7, align 1
  %arrayidx8 = getelementptr inbounds [3 x i8], [3 x i8]* %fmt, i32 0, i64 1
  store i8 %12, i8* %arrayidx8, align 1
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %fmt, i32 0, i32 0
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %c5, i64 1, i8* %arraydecay) #5
  %cmp = icmp ne i32 %call9, 1
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %13 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.token_t, %struct.token_t* %13, i32 0, i32 2
  store i8 6, i8* %type12, align 1
  %14 = load i8*, i8** %pat.addr, align 8
  %15 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %u13 = getelementptr inbounds %struct.token_t, %struct.token_t* %15, i32 0, i32 0
  %start = bitcast %union.anon.0* %u13 to i8**
  store i8* %14, i8** %start, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load i8, i8* %c5, align 1
  %17 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %u14 = getelementptr inbounds %struct.token_t, %struct.token_t* %17, i32 0, i32 0
  %c15 = bitcast %union.anon.0* %u14 to i8*
  store i8 %16, i8* %c15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %sw.bb
  %18 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %len = getelementptr inbounds %struct.token_t, %struct.token_t* %18, i32 0, i32 1
  store i64 1, i64* %len, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %19 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.token_t, %struct.token_t* %19, i32 0, i32 2
  store i8 5, i8* %type18, align 1
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry, %entry, %entry, %entry, %entry
  %20 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.token_t, %struct.token_t* %20, i32 0, i32 2
  store i8 6, i8* %type20, align 1
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %21 = load i8*, i8** %pat.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %pat.addr, align 8
  store i8* %21, i8** %old, align 8
  store i8 0, i8* %range_start, align 1
  store i32 0, i32* %hasprev, align 4
  %call23 = call i8* @cli_malloc(i64 32)
  store i8* %call23, i8** %bitmap, align 8
  %22 = load i8*, i8** %bitmap, align 8
  %tobool24 = icmp ne i8* %22, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %sw.bb.21
  store i8* null, i8** %retval
  br label %return

if.end.26:                                        ; preds = %sw.bb.21
  %23 = load i8*, i8** %pat.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv27 = zext i8 %24 to i32
  %cmp28 = icmp eq i32 %conv27, 94
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.end.26
  %25 = load i8*, i8** %bitmap, align 8
  call void @llvm.memset.p0i8.i64(i8* %25, i8 -1, i64 32, i32 1, i1 false)
  %26 = load i8*, i8** %pat.addr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr31, i8** %pat.addr, align 8
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.26
  %27 = load i8*, i8** %bitmap, align 8
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 32, i32 1, i1 false)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.30
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.33
  %28 = load i8*, i8** %pat.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv34 = zext i8 %29 to i32
  %cmp35 = icmp eq i32 %conv34, 45
  br i1 %cmp35, label %land.lhs.true, label %if.else.82

land.lhs.true:                                    ; preds = %do.body
  %30 = load i32, i32* %hasprev, align 4
  %tobool37 = icmp ne i32 %30, 0
  br i1 %tobool37, label %if.then.38, label %if.else.82

if.then.38:                                       ; preds = %land.lhs.true
  %31 = load i8*, i8** %pat.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr40, i8** %pat.addr, align 8
  %32 = load i8*, i8** %pat.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %33 to i32
  %cmp43 = icmp eq i32 %conv42, 91
  br i1 %cmp43, label %if.then.45, label %if.else.71

if.then.45:                                       ; preds = %if.then.38
  %34 = load i8*, i8** %pat.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %35 to i32
  %cmp48 = icmp eq i32 %conv47, 46
  br i1 %cmp48, label %if.then.50, label %if.else.69

if.then.50:                                       ; preds = %if.then.45
  %36 = load i8*, i8** %pat.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %37 to i32
  %cmp53 = icmp eq i32 %conv52, 45
  br i1 %cmp53, label %land.lhs.true.55, label %if.else.66

land.lhs.true.55:                                 ; preds = %if.then.50
  %38 = load i8*, i8** %pat.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %38, i64 3
  %39 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %39 to i32
  %cmp58 = icmp eq i32 %conv57, 46
  br i1 %cmp58, label %land.lhs.true.60, label %if.else.66

land.lhs.true.60:                                 ; preds = %land.lhs.true.55
  %40 = load i8*, i8** %pat.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %40, i64 4
  %41 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %41 to i32
  %cmp63 = icmp eq i32 %conv62, 93
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.60
  store i8 45, i8* %range_end, align 1
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.60, %land.lhs.true.55, %if.then.50
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0))
  %42 = load i8*, i8** %old, align 8
  store i8* %42, i8** %pat.addr, align 8
  %43 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type67 = getelementptr inbounds %struct.token_t, %struct.token_t* %43, i32 0, i32 2
  store i8 6, i8* %type67, align 1
  br label %do.end

if.end.68:                                        ; preds = %if.then.65
  br label %if.end.70

if.else.69:                                       ; preds = %if.then.45
  %44 = load i8*, i8** %pat.addr, align 8
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %range_end, align 1
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.end.68
  br label %if.end.72

if.else.71:                                       ; preds = %if.then.38
  %46 = load i8*, i8** %pat.addr, align 8
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %range_end, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.end.70
  %48 = load i8, i8* %range_start, align 1
  %conv73 = zext i8 %48 to i32
  %add = add nsw i32 %conv73, 1
  store i32 %add, i32* %c39, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.72
  %49 = load i32, i32* %c39, align 4
  %50 = load i8, i8* %range_end, align 1
  %conv74 = zext i8 %50 to i32
  %cmp75 = icmp ule i32 %49, %conv74
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %c39, align 4
  %and77 = and i32 %51, 7
  %shl = shl i32 1, %and77
  %52 = load i32, i32* %c39, align 4
  %shr = lshr i32 %52, 3
  %idxprom78 = zext i32 %shr to i64
  %53 = load i8*, i8** %bitmap, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %53, i64 %idxprom78
  %54 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %54 to i32
  %xor = xor i32 %conv80, %shl
  %conv81 = trunc i32 %xor to i8
  store i8 %conv81, i8* %arrayidx79, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %c39, align 4
  %inc = add i32 %55, 1
  store i32 %inc, i32* %c39, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %hasprev, align 4
  br label %if.end.154

if.else.82:                                       ; preds = %land.lhs.true, %do.body
  %56 = load i8*, i8** %pat.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %57 to i32
  %cmp85 = icmp eq i32 %conv84, 91
  br i1 %cmp85, label %land.lhs.true.87, label %if.else.141

land.lhs.true.87:                                 ; preds = %if.else.82
  %58 = load i8*, i8** %pat.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %59 to i32
  %cmp90 = icmp eq i32 %conv89, 58
  br i1 %cmp90, label %if.then.92, label %if.else.141

if.then.92:                                       ; preds = %land.lhs.true.87
  store i32 -1, i32* %found, align 4
  %60 = load i8*, i8** %pat.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %add.ptr, i8** %pat.addr, align 8
  %61 = load i8*, i8** %pat.addr, align 8
  %call94 = call i8* @strstr(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #8
  store i8* %call94, i8** %end, align 8
  %62 = load i8*, i8** %end, align 8
  %tobool95 = icmp ne i8* %62, null
  br i1 %tobool95, label %if.end.98, label %if.then.96

if.then.96:                                       ; preds = %if.then.92
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i32 0, i32 0))
  %63 = load i8*, i8** %old, align 8
  store i8* %63, i8** %pat.addr, align 8
  %64 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type97 = getelementptr inbounds %struct.token_t, %struct.token_t* %64, i32 0, i32 2
  store i8 6, i8* %type97, align 1
  br label %do.end

if.end.98:                                        ; preds = %if.then.92
  %65 = load i8*, i8** %end, align 8
  %66 = load i8*, i8** %pat.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv99 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv99, i32* %len93, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.111, %if.end.98
  %67 = load i64, i64* %i, align 8
  %cmp101 = icmp ult i64 %67, 12
  br i1 %cmp101, label %for.body.103, label %for.end.113

for.body.103:                                     ; preds = %for.cond.100
  %68 = load i8*, i8** %pat.addr, align 8
  %69 = load i64, i64* %i, align 8
  %arrayidx104 = getelementptr inbounds [12 x i8*], [12 x i8*]* @std_class, i32 0, i64 %69
  %70 = load i8*, i8** %arrayidx104, align 8
  %71 = load i32, i32* %len93, align 4
  %conv105 = sext i32 %71 to i64
  %call106 = call i32 @strncmp(i8* %68, i8* %70, i64 %conv105) #8
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.end.110, label %if.then.108

if.then.108:                                      ; preds = %for.body.103
  %72 = load i64, i64* %i, align 8
  %conv109 = trunc i64 %72 to i32
  store i32 %conv109, i32* %found, align 4
  br label %for.end.113

if.end.110:                                       ; preds = %for.body.103
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %73 = load i64, i64* %i, align 8
  %inc112 = add i64 %73, 1
  store i64 %inc112, i64* %i, align 8
  br label %for.cond.100

for.end.113:                                      ; preds = %if.then.108, %for.cond.100
  %74 = load i32, i32* %found, align 4
  %cmp114 = icmp ne i32 %74, -1
  br i1 %cmp114, label %if.then.116, label %if.else.138

if.then.116:                                      ; preds = %for.end.113
  store i64 0, i64* %i, align 8
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.135, %if.then.116
  %75 = load i64, i64* %i, align 8
  %cmp118 = icmp ult i64 %75, 256
  br i1 %cmp118, label %for.body.120, label %for.end.137

for.body.120:                                     ; preds = %for.cond.117
  %76 = load i64, i64* %i, align 8
  %arrayidx121 = getelementptr inbounds [256 x i16], [256 x i16]* @char_class, i32 0, i64 %76
  %77 = load i16, i16* %arrayidx121, align 2
  %conv122 = zext i16 %77 to i32
  %78 = load i32, i32* %found, align 4
  %shl123 = shl i32 1, %78
  %and124 = and i32 %conv122, %shl123
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.134

if.then.126:                                      ; preds = %for.body.120
  %79 = load i64, i64* %i, align 8
  %and127 = and i64 %79, 7
  %sh_prom = trunc i64 %and127 to i32
  %shl128 = shl i32 1, %sh_prom
  %80 = load i64, i64* %i, align 8
  %shr129 = lshr i64 %80, 3
  %81 = load i8*, i8** %bitmap, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %81, i64 %shr129
  %82 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %82 to i32
  %xor132 = xor i32 %conv131, %shl128
  %conv133 = trunc i32 %xor132 to i8
  store i8 %conv133, i8* %arrayidx130, align 1
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.126, %for.body.120
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %83 = load i64, i64* %i, align 8
  %inc136 = add i64 %83, 1
  store i64 %inc136, i64* %i, align 8
  br label %for.cond.117

for.end.137:                                      ; preds = %for.cond.117
  br label %if.end.140

if.else.138:                                      ; preds = %for.end.113
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i32 0, i32 0))
  %84 = load i8*, i8** %old, align 8
  store i8* %84, i8** %pat.addr, align 8
  %85 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type139 = getelementptr inbounds %struct.token_t, %struct.token_t* %85, i32 0, i32 2
  store i8 6, i8* %type139, align 1
  br label %do.end

if.end.140:                                       ; preds = %for.end.137
  br label %if.end.153

if.else.141:                                      ; preds = %land.lhs.true.87, %if.else.82
  %86 = load i8*, i8** %pat.addr, align 8
  %87 = load i8, i8* %86, align 1
  %conv142 = zext i8 %87 to i32
  %and143 = and i32 %conv142, 7
  %shl144 = shl i32 1, %and143
  %88 = load i8*, i8** %pat.addr, align 8
  %89 = load i8, i8* %88, align 1
  %conv145 = zext i8 %89 to i32
  %shr146 = ashr i32 %conv145, 3
  %idxprom147 = sext i32 %shr146 to i64
  %90 = load i8*, i8** %bitmap, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %90, i64 %idxprom147
  %91 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %91 to i32
  %xor150 = xor i32 %conv149, %shl144
  %conv151 = trunc i32 %xor150 to i8
  store i8 %conv151, i8* %arrayidx148, align 1
  %92 = load i8*, i8** %pat.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr152, i8** %pat.addr, align 8
  %93 = load i8*, i8** %pat.addr, align 8
  %94 = load i8, i8* %93, align 1
  store i8 %94, i8* %range_start, align 1
  store i32 1, i32* %hasprev, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.141, %if.end.140
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %for.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.154
  %95 = load i8*, i8** %pat.addr, align 8
  %96 = load i8, i8* %95, align 1
  %conv155 = zext i8 %96 to i32
  %cmp156 = icmp ne i32 %conv155, 93
  br i1 %cmp156, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else.138, %if.then.96, %if.else.66
  %97 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type158 = getelementptr inbounds %struct.token_t, %struct.token_t* %97, i32 0, i32 2
  store i8 4, i8* %type158, align 1
  %98 = load i8*, i8** %bitmap, align 8
  %99 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %u159 = getelementptr inbounds %struct.token_t, %struct.token_t* %99, i32 0, i32 0
  %bitmap160 = bitcast %union.anon.0* %u159 to i8**
  store i8* %98, i8** %bitmap160, align 8
  br label %sw.epilog

sw.bb.161:                                        ; preds = %entry
  br label %sw.epilog

sw.bb.162:                                        ; preds = %entry
  %100 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type163 = getelementptr inbounds %struct.token_t, %struct.token_t* %100, i32 0, i32 2
  store i8 1, i8* %type163, align 1
  br label %sw.epilog

sw.bb.164:                                        ; preds = %entry
  %101 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type165 = getelementptr inbounds %struct.token_t, %struct.token_t* %101, i32 0, i32 2
  store i8 2, i8* %type165, align 1
  br label %sw.epilog

sw.bb.166:                                        ; preds = %entry
  %102 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type167 = getelementptr inbounds %struct.token_t, %struct.token_t* %102, i32 0, i32 2
  store i8 3, i8* %type167, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %103 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %type168 = getelementptr inbounds %struct.token_t, %struct.token_t* %103, i32 0, i32 2
  store i8 0, i8* %type168, align 1
  %104 = load i8*, i8** %pat.addr, align 8
  %105 = load i8, i8* %104, align 1
  %106 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %u169 = getelementptr inbounds %struct.token_t, %struct.token_t* %106, i32 0, i32 0
  %c170 = bitcast %union.anon.0* %u169 to i8*
  store i8 %105, i8* %c170, align 1
  %107 = load %struct.token_t*, %struct.token_t** %token.addr, align 8
  %len171 = getelementptr inbounds %struct.token_t, %struct.token_t* %107, i32 0, i32 1
  store i64 1, i64* %len171, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.166, %sw.bb.164, %sw.bb.162, %sw.bb.161, %do.end, %sw.bb.19, %sw.bb.17, %if.end.16
  %108 = load i8*, i8** %pat.addr, align 8
  %incdec.ptr172 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr172, i8** %pat.addr, align 8
  store i8* %incdec.ptr172, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.25
  %109 = load i8*, i8** %retval
  ret i8* %109
}

; Function Attrs: nounwind uwtable
define internal %struct.tree_node* @tree_node_char_binsearch(%struct.tree_node* %node, i8 signext %csearch, i32* %left) #0 {
entry:
  %retval = alloca %struct.tree_node*, align 8
  %node.addr = alloca %struct.tree_node*, align 8
  %csearch.addr = alloca i8, align 1
  %left.addr = alloca i32*, align 8
  %right = alloca i32, align 4
  %children = alloca %struct.tree_node**, align 8
  %mid = alloca i32, align 4
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  store i8 %csearch, i8* %csearch.addr, align 1
  store i32* %left, i32** %left.addr, align 8
  %0 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %call = call %struct.tree_node** @tree_node_get_children(%struct.tree_node* %0)
  store %struct.tree_node** %call, %struct.tree_node*** %children, align 8
  %1 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives = getelementptr inbounds %struct.tree_node, %struct.tree_node* %1, i32 0, i32 3
  %2 = load i8, i8* %alternatives, align 1
  %conv = sext i8 %2 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %right, align 4
  %3 = load i32*, i32** %left.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives1 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %4, i32 0, i32 3
  %5 = load i8, i8* %alternatives1, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.tree_node* null, %struct.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.end
  %6 = load i32*, i32** %left.addr, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %right, align 4
  %cmp = icmp sle i32 %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32*, i32** %left.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %right, align 4
  %12 = load i32*, i32** %left.addr, align 8
  %13 = load i32, i32* %12, align 4
  %sub3 = sub nsw i32 %11, %13
  %div = sdiv i32 %sub3, 2
  %add = add nsw i32 %10, %div
  store i32 %add, i32* %mid, align 4
  %14 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %15, i64 %idxprom
  %16 = load %struct.tree_node*, %struct.tree_node** %arrayidx, align 8
  %c = getelementptr inbounds %struct.tree_node, %struct.tree_node* %16, i32 0, i32 1
  %17 = load i8, i8* %c, align 1
  %conv4 = zext i8 %17 to i32
  %18 = load i8, i8* %csearch.addr, align 1
  %conv5 = sext i8 %18 to i32
  %cmp6 = icmp eq i32 %conv4, %conv5
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %19 = load i32, i32* %mid, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx10 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %20, i64 %idxprom9
  %21 = load %struct.tree_node*, %struct.tree_node** %arrayidx10, align 8
  store %struct.tree_node* %21, %struct.tree_node** %retval
  br label %return

if.else:                                          ; preds = %while.body
  %22 = load i32, i32* %mid, align 4
  %idxprom11 = sext i32 %22 to i64
  %23 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx12 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %23, i64 %idxprom11
  %24 = load %struct.tree_node*, %struct.tree_node** %arrayidx12, align 8
  %c13 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %24, i32 0, i32 1
  %25 = load i8, i8* %c13, align 1
  %conv14 = zext i8 %25 to i32
  %26 = load i8, i8* %csearch.addr, align 1
  %conv15 = sext i8 %26 to i32
  %cmp16 = icmp slt i32 %conv14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else
  %27 = load i32, i32* %mid, align 4
  %add19 = add nsw i32 %27, 1
  %28 = load i32*, i32** %left.addr, align 8
  store i32 %add19, i32* %28, align 4
  br label %if.end.22

if.else.20:                                       ; preds = %if.else
  %29 = load i32, i32* %mid, align 4
  %sub21 = sub nsw i32 %29, 1
  store i32 %sub21, i32* %right, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.tree_node* null, %struct.tree_node** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.8, %if.then
  %30 = load %struct.tree_node*, %struct.tree_node** %retval
  ret %struct.tree_node* %30
}

; Function Attrs: nounwind uwtable
define internal %struct.tree_node* @tree_node_char_insert(%struct.tree_node* %node, i8 signext %c, i32 %left) #0 {
entry:
  %retval = alloca %struct.tree_node*, align 8
  %node.addr = alloca %struct.tree_node*, align 8
  %c.addr = alloca i8, align 1
  %left.addr = alloca i32, align 4
  %new = alloca %struct.tree_node*, align 8
  %alt = alloca %struct.tree_node*, align 8
  %children = alloca %struct.tree_node**, align 8
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i32 %left, i32* %left.addr, align 4
  %0 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %call = call %struct.tree_node* @tree_get_next(%struct.tree_node* %0)
  store %struct.tree_node* %call, %struct.tree_node** %alt, align 8
  %1 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives = getelementptr inbounds %struct.tree_node, %struct.tree_node* %1, i32 0, i32 3
  %2 = load i8, i8* %alternatives, align 1
  %inc = add i8 %2, 1
  store i8 %inc, i8* %alternatives, align 1
  %3 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u = getelementptr inbounds %struct.tree_node, %struct.tree_node* %3, i32 0, i32 5
  %children1 = bitcast %union.anon* %u to %struct.tree_node***
  %4 = load %struct.tree_node**, %struct.tree_node*** %children1, align 8
  %5 = bitcast %struct.tree_node** %4 to i8*
  %6 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %call2 = call i64 @tree_node_get_array_size(%struct.tree_node* %6)
  %call3 = call i8* @cli_realloc2(i8* %5, i64 %call2)
  %7 = bitcast i8* %call3 to %struct.tree_node**
  %8 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u4 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %8, i32 0, i32 5
  %children5 = bitcast %union.anon* %u4 to %struct.tree_node***
  store %struct.tree_node** %7, %struct.tree_node*** %children5, align 8
  %9 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u6 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %9, i32 0, i32 5
  %children7 = bitcast %union.anon* %u6 to %struct.tree_node***
  %10 = load %struct.tree_node**, %struct.tree_node*** %children7, align 8
  %tobool = icmp ne %struct.tree_node** %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.tree_node* null, %struct.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op = getelementptr inbounds %struct.tree_node, %struct.tree_node* %11, i32 0, i32 2
  %12 = load i32, i32* %op, align 4
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u8 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %13, i32 0, i32 5
  %children9 = bitcast %union.anon* %u8 to %struct.tree_node***
  %14 = load %struct.tree_node**, %struct.tree_node*** %children9, align 8
  %add.ptr = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %14, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u10 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %15, i32 0, i32 5
  %children11 = bitcast %union.anon* %u10 to %struct.tree_node***
  %16 = load %struct.tree_node**, %struct.tree_node*** %children11, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tree_node** [ %add.ptr, %cond.true ], [ %16, %cond.false ]
  store %struct.tree_node** %cond, %struct.tree_node*** %children, align 8
  %17 = load %struct.tree_node*, %struct.tree_node** %alt, align 8
  %18 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %19 = load %struct.tree_node*, %struct.tree_node** %alt, align 8
  %cmp12 = icmp eq %struct.tree_node* %18, %19
  %conv = zext i1 %cmp12 to i32
  %conv13 = trunc i32 %conv to i8
  %call14 = call %struct.tree_node* @tree_node_alloc(%struct.tree_node* %17, i8 signext %conv13)
  store %struct.tree_node* %call14, %struct.tree_node** %new, align 8
  %20 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %tobool15 = icmp ne %struct.tree_node* %20, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %cond.end
  %21 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %op17 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %21, i32 0, i32 2
  store i32 0, i32* %op17, align 4
  %22 = load i8, i8* %c.addr, align 1
  %23 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %c18 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %23, i32 0, i32 1
  store i8 %22, i8* %c18, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %cond.end
  %24 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives20 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %24, i32 0, i32 3
  %25 = load i8, i8* %alternatives20, align 1
  %conv21 = sext i8 %25 to i32
  %26 = load i32, i32* %left.addr, align 4
  %sub = sub nsw i32 %conv21, %26
  %sub22 = sub nsw i32 %sub, 1
  %cmp23 = icmp sgt i32 %sub22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.end.19
  %27 = load i32, i32* %left.addr, align 4
  %add = add nsw i32 %27, 1
  %idxprom = sext i32 %add to i64
  %28 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %28, i64 %idxprom
  %29 = bitcast %struct.tree_node** %arrayidx to i8*
  %30 = load i32, i32* %left.addr, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx27 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %31, i64 %idxprom26
  %32 = bitcast %struct.tree_node** %arrayidx27 to i8*
  %33 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives28 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %33, i32 0, i32 3
  %34 = load i8, i8* %alternatives28, align 1
  %conv29 = sext i8 %34 to i32
  %35 = load i32, i32* %left.addr, align 4
  %sub30 = sub nsw i32 %conv29, %35
  %sub31 = sub nsw i32 %sub30, 1
  %conv32 = sext i32 %sub31 to i64
  %mul = mul i64 %conv32, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %29, i8* %32, i64 %mul, i32 8, i1 false)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.25, %if.end.19
  %36 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  %37 = load i32, i32* %left.addr, align 4
  %idxprom34 = sext i32 %37 to i64
  %38 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx35 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %38, i64 %idxprom34
  store %struct.tree_node* %36, %struct.tree_node** %arrayidx35, align 8
  %39 = load %struct.tree_node*, %struct.tree_node** %new, align 8
  store %struct.tree_node* %39, %struct.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then
  %40 = load %struct.tree_node*, %struct.tree_node** %retval
  ret %struct.tree_node* %40
}

; Function Attrs: nounwind uwtable
define internal void @tree_node_insert_nonbin(%struct.tree_node* %node, %struct.tree_node* %new) #0 {
entry:
  %node.addr = alloca %struct.tree_node*, align 8
  %new.addr = alloca %struct.tree_node*, align 8
  %children = alloca %struct.tree_node**, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.tree_node*, align 8
  %idx = alloca i32, align 4
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  store %struct.tree_node* %new, %struct.tree_node** %new.addr, align 8
  %0 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %call = call %struct.tree_node** @tree_node_get_children(%struct.tree_node* %0)
  store %struct.tree_node** %call, %struct.tree_node*** %children, align 8
  %1 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives = getelementptr inbounds %struct.tree_node, %struct.tree_node* %1, i32 0, i32 3
  %2 = load i8, i8* %alternatives, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else.23

if.then:                                          ; preds = %entry
  %3 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %3, i64 0
  %4 = load %struct.tree_node*, %struct.tree_node** %arrayidx, align 8
  %next = getelementptr inbounds %struct.tree_node, %struct.tree_node* %4, i32 0, i32 0
  %5 = load %struct.tree_node*, %struct.tree_node** %next, align 8
  %6 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %cmp = icmp eq %struct.tree_node* %5, %6
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %7 = load %struct.tree_node*, %struct.tree_node** %new.addr, align 8
  %listend = getelementptr inbounds %struct.tree_node, %struct.tree_node* %7, i32 0, i32 4
  store i8 1, i8* %listend, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives2 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %9, i32 0, i32 3
  %10 = load i8, i8* %alternatives2, align 1
  %conv = sext i8 %10 to i32
  %cmp3 = icmp slt i32 %8, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.tree_node*, %struct.tree_node** %new.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx5 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %13, i64 %idxprom
  %14 = load %struct.tree_node*, %struct.tree_node** %arrayidx5, align 8
  %next6 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %14, i32 0, i32 0
  store %struct.tree_node* %11, %struct.tree_node** %next6, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx8 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %16, i64 %idxprom7
  %17 = load %struct.tree_node*, %struct.tree_node** %arrayidx8, align 8
  %listend9 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %17, i32 0, i32 4
  store i8 0, i8* %listend9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx10 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %19, i64 0
  %20 = load %struct.tree_node*, %struct.tree_node** %arrayidx10, align 8
  %next11 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %20, i32 0, i32 0
  %21 = load %struct.tree_node*, %struct.tree_node** %next11, align 8
  store %struct.tree_node* %21, %struct.tree_node** %p, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.17, %if.else
  %22 = load %struct.tree_node*, %struct.tree_node** %p, align 8
  %next13 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %22, i32 0, i32 0
  %23 = load %struct.tree_node*, %struct.tree_node** %next13, align 8
  %24 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %cmp14 = icmp ne %struct.tree_node* %23, %24
  br i1 %cmp14, label %for.body.16, label %for.end.19

for.body.16:                                      ; preds = %for.cond.12
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.16
  %25 = load %struct.tree_node*, %struct.tree_node** %p, align 8
  %next18 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %25, i32 0, i32 0
  %26 = load %struct.tree_node*, %struct.tree_node** %next18, align 8
  store %struct.tree_node* %26, %struct.tree_node** %p, align 8
  br label %for.cond.12

for.end.19:                                       ; preds = %for.cond.12
  %27 = load %struct.tree_node*, %struct.tree_node** %new.addr, align 8
  %listend20 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %27, i32 0, i32 4
  store i8 1, i8* %listend20, align 1
  %28 = load %struct.tree_node*, %struct.tree_node** %p, align 8
  %listend21 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %28, i32 0, i32 4
  store i8 0, i8* %listend21, align 1
  %29 = load %struct.tree_node*, %struct.tree_node** %new.addr, align 8
  %30 = load %struct.tree_node*, %struct.tree_node** %p, align 8
  %next22 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %30, i32 0, i32 0
  store %struct.tree_node* %29, %struct.tree_node** %next22, align 8
  br label %if.end

if.end:                                           ; preds = %for.end.19, %for.end
  br label %if.end.65

if.else.23:                                       ; preds = %entry
  %31 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op = getelementptr inbounds %struct.tree_node, %struct.tree_node* %31, i32 0, i32 2
  %32 = load i32, i32* %op, align 4
  %cmp24 = icmp eq i32 %32, 2
  %cond = select i1 %cmp24, i32 1, i32 0
  store i32 %cond, i32* %idx, align 4
  %33 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u = getelementptr inbounds %struct.tree_node, %struct.tree_node* %33, i32 0, i32 5
  %children26 = bitcast %union.anon* %u to %struct.tree_node***
  %34 = load %struct.tree_node**, %struct.tree_node*** %children26, align 8
  %tobool27 = icmp ne %struct.tree_node** %34, null
  br i1 %tobool27, label %if.then.28, label %if.end.50

if.then.28:                                       ; preds = %if.else.23
  %35 = load i32, i32* %idx, align 4
  %idxprom29 = sext i32 %35 to i64
  %36 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u30 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %36, i32 0, i32 5
  %children31 = bitcast %union.anon* %u30 to %struct.tree_node***
  %37 = load %struct.tree_node**, %struct.tree_node*** %children31, align 8
  %arrayidx32 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %37, i64 %idxprom29
  %38 = load %struct.tree_node*, %struct.tree_node** %arrayidx32, align 8
  %tobool33 = icmp ne %struct.tree_node* %38, null
  br i1 %tobool33, label %if.then.34, label %if.end.49

if.then.34:                                       ; preds = %if.then.28
  %39 = load i32, i32* %idx, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u36 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %40, i32 0, i32 5
  %children37 = bitcast %union.anon* %u36 to %struct.tree_node***
  %41 = load %struct.tree_node**, %struct.tree_node*** %children37, align 8
  %arrayidx38 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %41, i64 %idxprom35
  %42 = load %struct.tree_node*, %struct.tree_node** %arrayidx38, align 8
  store %struct.tree_node* %42, %struct.tree_node** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.34
  %43 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next39 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %43, i32 0, i32 0
  %44 = load %struct.tree_node*, %struct.tree_node** %next39, align 8
  %tobool40 = icmp ne %struct.tree_node* %44, null
  br i1 %tobool40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %45 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %listend41 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %45, i32 0, i32 4
  %46 = load i8, i8* %listend41, align 1
  %tobool42 = icmp ne i8 %46, 0
  %lnot = xor i1 %tobool42, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %47 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %47, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %48 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next43 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %48, i32 0, i32 0
  %49 = load %struct.tree_node*, %struct.tree_node** %next43, align 8
  store %struct.tree_node* %49, %struct.tree_node** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %50 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %listend44 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %50, i32 0, i32 4
  store i8 0, i8* %listend44, align 1
  %51 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next45 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %51, i32 0, i32 0
  %52 = load %struct.tree_node*, %struct.tree_node** %next45, align 8
  %53 = load %struct.tree_node*, %struct.tree_node** %new.addr, align 8
  %next46 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %53, i32 0, i32 0
  store %struct.tree_node* %52, %struct.tree_node** %next46, align 8
  %54 = load %struct.tree_node*, %struct.tree_node** %new.addr, align 8
  %55 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next47 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %55, i32 0, i32 0
  store %struct.tree_node* %54, %struct.tree_node** %next47, align 8
  %56 = load %struct.tree_node*, %struct.tree_node** %new.addr, align 8
  %listend48 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %56, i32 0, i32 4
  store i8 1, i8* %listend48, align 1
  br label %if.end.65

if.end.49:                                        ; preds = %if.then.28
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.else.23
  %57 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u51 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %57, i32 0, i32 5
  %children52 = bitcast %union.anon* %u51 to %struct.tree_node***
  %58 = load %struct.tree_node**, %struct.tree_node*** %children52, align 8
  %59 = bitcast %struct.tree_node** %58 to i8*
  %call53 = call i8* @cli_realloc2(i8* %59, i64 16)
  %60 = bitcast i8* %call53 to %struct.tree_node**
  %61 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u54 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %61, i32 0, i32 5
  %children55 = bitcast %union.anon* %u54 to %struct.tree_node***
  store %struct.tree_node** %60, %struct.tree_node*** %children55, align 8
  %62 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u56 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %62, i32 0, i32 5
  %children57 = bitcast %union.anon* %u56 to %struct.tree_node***
  %63 = load %struct.tree_node**, %struct.tree_node*** %children57, align 8
  %tobool58 = icmp ne %struct.tree_node** %63, null
  br i1 %tobool58, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %if.end.50
  %64 = load %struct.tree_node*, %struct.tree_node** %new.addr, align 8
  %65 = load i32, i32* %idx, align 4
  %idxprom60 = sext i32 %65 to i64
  %66 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u61 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %66, i32 0, i32 5
  %children62 = bitcast %union.anon* %u61 to %struct.tree_node***
  %67 = load %struct.tree_node**, %struct.tree_node*** %children62, align 8
  %arrayidx63 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %67, i64 %idxprom60
  store %struct.tree_node* %64, %struct.tree_node** %arrayidx63, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %if.end.50
  br label %if.end.65

if.end.65:                                        ; preds = %while.end, %if.end.64, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.tree_node* @stack_pop(%struct.node_stack* %stack) #0 {
entry:
  %stack.addr = alloca %struct.node_stack*, align 8
  store %struct.node_stack* %stack, %struct.node_stack** %stack.addr, align 8
  %0 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %cnt = getelementptr inbounds %struct.node_stack, %struct.node_stack* %0, i32 0, i32 2
  %1 = load i64, i64* %cnt, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %cnt1 = getelementptr inbounds %struct.node_stack, %struct.node_stack* %2, i32 0, i32 2
  %3 = load i64, i64* %cnt1, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %cnt1, align 8
  %4 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data = getelementptr inbounds %struct.node_stack, %struct.node_stack* %4, i32 0, i32 0
  %5 = load %struct.tree_node**, %struct.tree_node*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %5, i64 %dec
  %6 = load %struct.tree_node*, %struct.tree_node** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tree_node* [ %6, %cond.true ], [ null, %cond.false ]
  ret %struct.tree_node* %cond
}

; Function Attrs: nounwind uwtable
define internal %struct.tree_node* @tree_get_next(%struct.tree_node* %node) #0 {
entry:
  %retval = alloca %struct.tree_node*, align 8
  %node.addr = alloca %struct.tree_node*, align 8
  %children = alloca %struct.tree_node**, align 8
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  %0 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %call = call %struct.tree_node** @tree_node_get_children(%struct.tree_node* %0)
  store %struct.tree_node** %call, %struct.tree_node*** %children, align 8
  %1 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives = getelementptr inbounds %struct.tree_node, %struct.tree_node* %1, i32 0, i32 3
  %2 = load i8, i8* %alternatives, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %tobool1 = icmp ne %struct.tree_node** %3, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %4, i64 0
  %5 = load %struct.tree_node*, %struct.tree_node** %arrayidx, align 8
  %tobool3 = icmp ne %struct.tree_node* %5, null
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx4 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %6, i64 0
  %7 = load %struct.tree_node*, %struct.tree_node** %arrayidx4, align 8
  store %struct.tree_node* %7, %struct.tree_node** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %8 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives5 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %8, i32 0, i32 3
  %9 = load i8, i8* %alternatives5, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp sle i32 %conv, 1
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  %10 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  store %struct.tree_node* %10, %struct.tree_node** %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %11 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx9 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %11, i64 0
  %12 = load %struct.tree_node*, %struct.tree_node** %arrayidx9, align 8
  %next = getelementptr inbounds %struct.tree_node, %struct.tree_node* %12, i32 0, i32 0
  %13 = load %struct.tree_node*, %struct.tree_node** %next, align 8
  store %struct.tree_node* %13, %struct.tree_node** %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.then.7, %if.then
  %14 = load %struct.tree_node*, %struct.tree_node** %retval
  ret %struct.tree_node* %14
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @char_getclass(i8* %bitmap) #0 {
entry:
  %retval = alloca i8, align 1
  %bitmap.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %bitmap, i8** %bitmap.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %bitmap.addr, align 8
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [12 x [32 x i8]], [12 x [32 x i8]]* @char_class_bitmap, i32 0, i64 %2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx, i32 0, i32 0
  %call = call i32 @memcmp(i8* %1, i8* %arraydecay, i64 32) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %conv = trunc i64 %3 to i8
  store i8 %conv, i8* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, i64* %i, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 12, i8* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i8, i8* %retval
  ret i8 %5
}

declare i32 @cli_regcomp(%struct.regex_t*, i8*, i32) #2

declare i8* @cli_realloc2(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare void @cli_warnmsg(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.tree_node** @tree_node_get_children(%struct.tree_node* %node) #0 {
entry:
  %node.addr = alloca %struct.tree_node*, align 8
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  %0 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op = getelementptr inbounds %struct.tree_node, %struct.tree_node* %0, i32 0, i32 2
  %1 = load i32, i32* %op, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false.4

cond.true:                                        ; preds = %entry
  %2 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u = getelementptr inbounds %struct.tree_node, %struct.tree_node* %2, i32 0, i32 5
  %children = bitcast %union.anon* %u to %struct.tree_node***
  %3 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %3, i64 1
  %4 = load %struct.tree_node*, %struct.tree_node** %arrayidx, align 8
  %tobool = icmp ne %struct.tree_node* %4, null
  br i1 %tobool, label %cond.true.1, label %cond.false

cond.true.1:                                      ; preds = %cond.true
  %5 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u2 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 5
  %children3 = bitcast %union.anon* %u2 to %struct.tree_node***
  %6 = load %struct.tree_node**, %struct.tree_node*** %children3, align 8
  %add.ptr = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %6, i64 1
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.1
  %cond = phi %struct.tree_node** [ %add.ptr, %cond.true.1 ], [ null, %cond.false ]
  br label %cond.end.7

cond.false.4:                                     ; preds = %entry
  %7 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u5 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %7, i32 0, i32 5
  %children6 = bitcast %union.anon* %u5 to %struct.tree_node***
  %8 = load %struct.tree_node**, %struct.tree_node*** %children6, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.4, %cond.end
  %cond8 = phi %struct.tree_node** [ %cond, %cond.end ], [ %8, %cond.false.4 ]
  ret %struct.tree_node** %cond8
}

; Function Attrs: nounwind uwtable
define internal i64 @tree_node_get_array_size(%struct.tree_node* %node) #0 {
entry:
  %node.addr = alloca %struct.tree_node*, align 8
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  %0 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives = getelementptr inbounds %struct.tree_node, %struct.tree_node* %0, i32 0, i32 3
  %1 = load i8, i8* %alternatives, align 1
  %conv = sext i8 %1 to i32
  %2 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op = getelementptr inbounds %struct.tree_node, %struct.tree_node* %2, i32 0, i32 2
  %3 = load i32, i32* %op, align 4
  %cmp = icmp eq i32 %3, 2
  %cond = select i1 %cmp, i32 1, i32 0
  %add = add nsw i32 %conv, %cond
  %conv2 = sext i32 %add to i64
  %mul = mul i64 %conv2, 8
  ret i64 %mul
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

declare i32 @cli_regexec(%struct.regex_t*, i8*, i64, %struct.regmatch_t*, i32) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind uwtable
define internal void @destroy_tree_internal(%struct.regex_matcher* %matcher, %struct.tree_node* %node) #0 {
entry:
  %matcher.addr = alloca %struct.regex_matcher*, align 8
  %node.addr = alloca %struct.tree_node*, align 8
  %children = alloca %struct.tree_node**, align 8
  %leaf = alloca %struct.leaf_info*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.tree_node*, align 8
  store %struct.regex_matcher* %matcher, %struct.regex_matcher** %matcher.addr, align 8
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  %0 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %call = call %struct.tree_node** @tree_node_get_children(%struct.tree_node* %0)
  store %struct.tree_node** %call, %struct.tree_node*** %children, align 8
  %1 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op = getelementptr inbounds %struct.tree_node, %struct.tree_node* %1, i32 0, i32 2
  %2 = load i32, i32* %op, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %3 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u = getelementptr inbounds %struct.tree_node, %struct.tree_node* %3, i32 0, i32 5
  %leaf1 = bitcast %union.anon* %u to %struct.leaf_info**
  %4 = load %struct.leaf_info*, %struct.leaf_info** %leaf1, align 8
  store %struct.leaf_info* %4, %struct.leaf_info** %leaf, align 8
  %5 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next = getelementptr inbounds %struct.tree_node, %struct.tree_node* %5, i32 0, i32 0
  %6 = load %struct.tree_node*, %struct.tree_node** %next, align 8
  %tobool = icmp ne %struct.tree_node* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %listend = getelementptr inbounds %struct.tree_node, %struct.tree_node* %7, i32 0, i32 4
  %8 = load i8, i8* %listend, align 1
  %tobool2 = icmp ne i8 %8, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %9 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %10 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next4 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %10, i32 0, i32 0
  %11 = load %struct.tree_node*, %struct.tree_node** %next4, align 8
  call void @destroy_tree_internal(%struct.regex_matcher* %9, %struct.tree_node* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  %12 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %12, i32 0, i32 7
  %13 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u5 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %13, i32 0, i32 5
  %leaf6 = bitcast %union.anon* %u5 to %struct.leaf_info**
  %14 = load %struct.leaf_info*, %struct.leaf_info** %leaf6, align 8
  %15 = bitcast %struct.leaf_info* %14 to %struct.tree_node*
  call void @stack_push_once(%struct.node_stack* %node_stack, %struct.tree_node* %15)
  %16 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack7 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %16, i32 0, i32 7
  %17 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  call void @stack_push_once(%struct.node_stack* %node_stack7, %struct.tree_node* %17)
  %18 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %preg = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %18, i32 0, i32 1
  %19 = load %struct.regex_t*, %struct.regex_t** %preg, align 8
  %tobool8 = icmp ne %struct.regex_t* %19, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %20 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %preg10 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %20, i32 0, i32 1
  %21 = load %struct.regex_t*, %struct.regex_t** %preg10, align 8
  call void @cli_regfree(%struct.regex_t* %21)
  %22 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %preg11 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %22, i32 0, i32 1
  %23 = load %struct.regex_t*, %struct.regex_t** %preg11, align 8
  %24 = bitcast %struct.regex_t* %23 to i8*
  call void @free(i8* %24) #5
  %25 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %preg12 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %25, i32 0, i32 1
  store %struct.regex_t* null, %struct.regex_t** %preg12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %26 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %info = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %26, i32 0, i32 0
  %27 = load i8*, i8** %info, align 8
  %tobool14 = icmp ne i8* %27, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %28 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %info16 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %28, i32 0, i32 0
  %29 = load i8*, i8** %info16, align 8
  call void @free(i8* %29) #5
  %30 = load %struct.leaf_info*, %struct.leaf_info** %leaf, align 8
  %info17 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %30, i32 0, i32 0
  store i8* null, i8** %info17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %31 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives = getelementptr inbounds %struct.tree_node, %struct.tree_node* %31, i32 0, i32 3
  %32 = load i8, i8* %alternatives, align 1
  %tobool20 = icmp ne i8 %32, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.19
  %33 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %33, i64 0
  %34 = load %struct.tree_node*, %struct.tree_node** %arrayidx, align 8
  %op22 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %34, i32 0, i32 2
  %35 = load i32, i32* %op22, align 4
  %cmp23 = icmp eq i32 %35, 4
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  %36 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx24 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %36, i64 0
  %37 = load %struct.tree_node*, %struct.tree_node** %arrayidx24, align 8
  %next25 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %37, i32 0, i32 0
  %38 = load %struct.tree_node*, %struct.tree_node** %next25, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tree_node* [ null, %cond.true ], [ %38, %cond.false ]
  store %struct.tree_node* %cond, %struct.tree_node** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %39 = load i32, i32* %i, align 4
  %40 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %alternatives26 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %40, i32 0, i32 3
  %41 = load i8, i8* %alternatives26, align 1
  %conv = sext i8 %41 to i32
  %cmp27 = icmp slt i32 %39, %conv
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom = sext i32 %43 to i64
  %44 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx29 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %44, i64 %idxprom
  %45 = load %struct.tree_node*, %struct.tree_node** %arrayidx29, align 8
  call void @destroy_tree_internal(%struct.regex_matcher* %42, %struct.tree_node* %45)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.tree_node*, %struct.tree_node** %p, align 8
  %tobool30 = icmp ne %struct.tree_node* %47, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.35

land.lhs.true.31:                                 ; preds = %for.end
  %48 = load %struct.tree_node*, %struct.tree_node** %p, align 8
  %49 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %cmp32 = icmp ne %struct.tree_node* %48, %49
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.31
  %50 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %51 = load %struct.tree_node*, %struct.tree_node** %p, align 8
  call void @destroy_tree_internal(%struct.regex_matcher* %50, %struct.tree_node* %51)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.31, %for.end
  br label %if.end.44

if.else:                                          ; preds = %if.end.19
  %52 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %tobool36 = icmp ne %struct.tree_node** %52, null
  br i1 %tobool36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.else
  %53 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx38 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %53, i64 0
  %54 = load %struct.tree_node*, %struct.tree_node** %arrayidx38, align 8
  %tobool39 = icmp ne %struct.tree_node* %54, null
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.37
  %55 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %56 = load %struct.tree_node**, %struct.tree_node*** %children, align 8
  %arrayidx41 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %56, i64 0
  %57 = load %struct.tree_node*, %struct.tree_node** %arrayidx41, align 8
  call void @destroy_tree_internal(%struct.regex_matcher* %55, %struct.tree_node* %57)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.35
  %58 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op45 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %58, i32 0, i32 2
  %59 = load i32, i32* %op45, align 4
  %cmp46 = icmp ne i32 %59, 4
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.56

land.lhs.true.48:                                 ; preds = %if.end.44
  %60 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next49 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %60, i32 0, i32 0
  %61 = load %struct.tree_node*, %struct.tree_node** %next49, align 8
  %tobool50 = icmp ne %struct.tree_node* %61, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.56

land.lhs.true.51:                                 ; preds = %land.lhs.true.48
  %62 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %listend52 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %62, i32 0, i32 4
  %63 = load i8, i8* %listend52, align 1
  %tobool53 = icmp ne i8 %63, 0
  br i1 %tobool53, label %if.end.56, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true.51
  %64 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %65 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %next55 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %65, i32 0, i32 0
  %66 = load %struct.tree_node*, %struct.tree_node** %next55, align 8
  call void @destroy_tree_internal(%struct.regex_matcher* %64, %struct.tree_node* %66)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %land.lhs.true.51, %land.lhs.true.48, %if.end.44
  %67 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u57 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %67, i32 0, i32 5
  %children58 = bitcast %union.anon* %u57 to %struct.tree_node***
  %68 = load %struct.tree_node**, %struct.tree_node*** %children58, align 8
  %tobool59 = icmp ne %struct.tree_node** %68, null
  br i1 %tobool59, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %if.end.56
  %69 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack61 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %69, i32 0, i32 7
  %70 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u62 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %70, i32 0, i32 5
  %children63 = bitcast %union.anon* %u62 to %struct.tree_node***
  %71 = load %struct.tree_node**, %struct.tree_node*** %children63, align 8
  %72 = bitcast %struct.tree_node** %71 to %struct.tree_node*
  call void @stack_push_once(%struct.node_stack* %node_stack61, %struct.tree_node* %72)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %if.end.56
  %73 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %op65 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %73, i32 0, i32 2
  %74 = load i32, i32* %op65, align 4
  %cmp66 = icmp eq i32 %74, 2
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.80

land.lhs.true.68:                                 ; preds = %if.end.64
  %75 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u69 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %75, i32 0, i32 5
  %children70 = bitcast %union.anon* %u69 to %struct.tree_node***
  %76 = load %struct.tree_node**, %struct.tree_node*** %children70, align 8
  %arrayidx71 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %76, i64 0
  %77 = load %struct.tree_node*, %struct.tree_node** %arrayidx71, align 8
  %tobool72 = icmp ne %struct.tree_node* %77, null
  br i1 %tobool72, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %land.lhs.true.68
  %78 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u74 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %78, i32 0, i32 5
  %children75 = bitcast %union.anon* %u74 to %struct.tree_node***
  %79 = load %struct.tree_node**, %struct.tree_node*** %children75, align 8
  %arrayidx76 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %79, i64 0
  %80 = load %struct.tree_node*, %struct.tree_node** %arrayidx76, align 8
  %81 = bitcast %struct.tree_node* %80 to i8*
  call void @free(i8* %81) #5
  %82 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %u77 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %82, i32 0, i32 5
  %children78 = bitcast %union.anon* %u77 to %struct.tree_node***
  %83 = load %struct.tree_node**, %struct.tree_node*** %children78, align 8
  %arrayidx79 = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %83, i64 0
  store %struct.tree_node* null, %struct.tree_node** %arrayidx79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.73, %land.lhs.true.68, %if.end.64
  %84 = load %struct.regex_matcher*, %struct.regex_matcher** %matcher.addr, align 8
  %node_stack81 = getelementptr inbounds %struct.regex_matcher, %struct.regex_matcher* %84, i32 0, i32 7
  %85 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  call void @stack_push_once(%struct.node_stack* %node_stack81, %struct.tree_node* %85)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stack_push_once(%struct.node_stack* %stack, %struct.tree_node* %node) #0 {
entry:
  %stack.addr = alloca %struct.node_stack*, align 8
  %node.addr = alloca %struct.tree_node*, align 8
  %i = alloca i64, align 8
  store %struct.node_stack* %stack, %struct.node_stack** %stack.addr, align 8
  store %struct.tree_node* %node, %struct.tree_node** %node.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %cnt = getelementptr inbounds %struct.node_stack, %struct.node_stack* %1, i32 0, i32 2
  %2 = load i64, i64* %cnt, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %data = getelementptr inbounds %struct.node_stack, %struct.node_stack* %4, i32 0, i32 0
  %5 = load %struct.tree_node**, %struct.tree_node*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.tree_node*, %struct.tree_node** %5, i64 %3
  %6 = load %struct.tree_node*, %struct.tree_node** %arrayidx, align 8
  %7 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %cmp1 = icmp eq %struct.tree_node* %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.node_stack*, %struct.node_stack** %stack.addr, align 8
  %10 = load %struct.tree_node*, %struct.tree_node** %node.addr, align 8
  %call = call i32 @stack_push(%struct.node_stack* %9, %struct.tree_node* %10)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @cli_regfree(%struct.regex_t*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
