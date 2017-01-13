; ModuleID = './MultiSource.Applications.ClamAV/56.libclamav_phish_domaincheck_db.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pre_fixup_info = type { %struct.string, i64, i64 }
%struct.string = type { i32, %struct.string*, i8* }
%struct.regex_matcher = type { %struct.cli_matcher*, %struct.tree_node*, %struct.tree_node*, i64, i32, i32, i32, %struct.node_stack, %struct.node_stack }
%struct.cli_matcher = type opaque
%struct.tree_node = type opaque
%struct.node_stack = type { %struct.tree_node**, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%hx\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Phishcheck:Unknown flag format in domain-list, 3 hex digits expected\00", align 1

; Function Attrs: nounwind uwtable
define i32 @domainlist_match(%struct.cl_engine* %engine, i8* %real_url, i8* %display_url, %struct.pre_fixup_info* %pre_fixup, i32 %hostOnly, i16* %flags) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  %real_url.addr = alloca i8*, align 8
  %display_url.addr = alloca i8*, align 8
  %pre_fixup.addr = alloca %struct.pre_fixup_info*, align 8
  %hostOnly.addr = alloca i32, align 4
  %flags.addr = alloca i16*, align 8
  %info = alloca i8*, align 8
  %rc = alloca i32, align 4
  %notwantedflags = alloca i16, align 2
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store i8* %real_url, i8** %real_url.addr, align 8
  store i8* %display_url, i8** %display_url.addr, align 8
  store %struct.pre_fixup_info* %pre_fixup, %struct.pre_fixup_info** %pre_fixup.addr, align 8
  store i32 %hostOnly, i32* %hostOnly.addr, align 4
  store i16* %flags, i16** %flags.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %0, i32 0, i32 9
  %1 = load i8*, i8** %domainlist_matcher, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false.4

cond.true:                                        ; preds = %entry
  %2 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %2, i32 0, i32 9
  %3 = load i8*, i8** %domainlist_matcher1, align 8
  %4 = bitcast i8* %3 to %struct.regex_matcher*
  %5 = load i8*, i8** %real_url.addr, align 8
  %6 = load i8*, i8** %display_url.addr, align 8
  %7 = load i32, i32* %hostOnly.addr, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false

cond.true.3:                                      ; preds = %cond.true
  %8 = load %struct.pre_fixup_info*, %struct.pre_fixup_info** %pre_fixup.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.3
  %cond = phi %struct.pre_fixup_info* [ %8, %cond.true.3 ], [ null, %cond.false ]
  %9 = load i32, i32* %hostOnly.addr, align 4
  %call = call i32 @regex_list_match(%struct.regex_matcher* %4, i8* %5, i8* %6, %struct.pre_fixup_info* %cond, i32 %9, i8** %info, i32 0)
  br label %cond.end.5

cond.false.4:                                     ; preds = %entry
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.end
  %cond6 = phi i32 [ %call, %cond.end ], [ 0, %cond.false.4 ]
  store i32 %cond6, i32* %rc, align 4
  %10 = load i32, i32* %rc, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %cond.end.5
  %11 = load i8*, i8** %info, align 8
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.49

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %12 = load i8*, i8** %info, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %tobool10 = icmp ne i32 %conv, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.49

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %14 = load i8*, i8** %info, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp = icmp ne i32 %conv13, 58
  br i1 %cmp, label %if.then, label %if.end.49

if.then:                                          ; preds = %land.lhs.true.11
  %16 = load i8*, i8** %info, align 8
  %call15 = call i64 @strlen(i8* %16) #5
  %cmp16 = icmp eq i64 %call15, 3
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %if.then
  %17 = load i8*, i8** %info, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %idxprom = sext i32 %conv20 to i64
  %call21 = call i16** @__ctype_b_loc() #6
  %19 = load i16*, i16** %call21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %19, i64 %idxprom
  %20 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %20 to i32
  %and = and i32 %conv23, 4096
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %land.lhs.true.18
  %21 = load i8*, i8** %info, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %idxprom28 = sext i32 %conv27 to i64
  %call29 = call i16** @__ctype_b_loc() #6
  %23 = load i16*, i16** %call29, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %23, i64 %idxprom28
  %24 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %24 to i32
  %and32 = and i32 %conv31, 4096
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.else

land.lhs.true.34:                                 ; preds = %land.lhs.true.25
  %25 = load i8*, i8** %info, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %26 to i32
  %idxprom37 = sext i32 %conv36 to i64
  %call38 = call i16** @__ctype_b_loc() #6
  %27 = load i16*, i16** %call38, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %27, i64 %idxprom37
  %28 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %28 to i32
  %and41 = and i32 %conv40, 4096
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %land.lhs.true.34
  store i16 0, i16* %notwantedflags, align 2
  %29 = load i8*, i8** %info, align 8
  %call44 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i16* %notwantedflags) #7
  %30 = load i16, i16* %notwantedflags, align 2
  %conv45 = zext i16 %30 to i32
  %neg = xor i32 %conv45, -1
  %31 = load i16*, i16** %flags.addr, align 8
  %32 = load i16, i16* %31, align 2
  %conv46 = zext i16 %32 to i32
  %and47 = and i32 %conv46, %neg
  %conv48 = trunc i32 %and47 to i16
  store i16 %conv48, i16* %31, align 2
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.34, %land.lhs.true.25, %land.lhs.true.18, %if.then
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.43
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %cond.end.5
  %33 = load i32, i32* %rc, align 4
  ret i32 %33
}

declare i32 @regex_list_match(%struct.regex_matcher*, i8*, i8*, %struct.pre_fixup_info*, i32, i8**, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare void @cli_warnmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @init_domainlist(%struct.cl_engine* %engine) #0 {
entry:
  %retval = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @cli_malloc(i64 96)
  %1 = bitcast i8* %call to %struct.regex_matcher*
  %2 = bitcast %struct.regex_matcher* %1 to i8*
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 9
  store i8* %2, i8** %domainlist_matcher, align 8
  %4 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %4, i32 0, i32 9
  %5 = load i8*, i8** %domainlist_matcher1, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher4 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %6, i32 0, i32 9
  %7 = load i8*, i8** %domainlist_matcher4, align 8
  %8 = bitcast i8* %7 to %struct.regex_matcher*
  %call5 = call i32 @init_regex_list(%struct.regex_matcher* %8)
  store i32 %call5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 -111, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end, %if.then.3
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i8* @cli_malloc(i64) #1

declare i32 @init_regex_list(%struct.regex_matcher*) #1

; Function Attrs: nounwind uwtable
define i32 @is_domainlist_ok(%struct.cl_engine* %engine) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 9
  %2 = load i8*, i8** %domainlist_matcher, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher2 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 9
  %4 = load i8*, i8** %domainlist_matcher2, align 8
  %5 = bitcast i8* %4 to %struct.regex_matcher*
  %call = call i32 @is_regex_ok(%struct.regex_matcher* %5)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1, %cond.false ]
  ret i32 %cond
}

declare i32 @is_regex_ok(%struct.regex_matcher*) #1

; Function Attrs: nounwind uwtable
define void @domainlist_cleanup(%struct.cl_engine* %engine) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 9
  %2 = load i8*, i8** %domainlist_matcher, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher2 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 9
  %4 = load i8*, i8** %domainlist_matcher2, align 8
  %5 = bitcast i8* %4 to %struct.regex_matcher*
  call void @regex_list_cleanup(%struct.regex_matcher* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @regex_list_cleanup(%struct.regex_matcher*) #1

; Function Attrs: nounwind uwtable
define void @domainlist_done(%struct.cl_engine* %engine) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 9
  %2 = load i8*, i8** %domainlist_matcher, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher2 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 9
  %4 = load i8*, i8** %domainlist_matcher2, align 8
  %5 = bitcast i8* %4 to %struct.regex_matcher*
  call void @regex_list_done(%struct.regex_matcher* %5)
  %6 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher3 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %6, i32 0, i32 9
  %7 = load i8*, i8** %domainlist_matcher3, align 8
  call void @free(i8* %7) #7
  %8 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %domainlist_matcher4 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %8, i32 0, i32 9
  store i8* null, i8** %domainlist_matcher4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @regex_list_done(%struct.regex_matcher*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
