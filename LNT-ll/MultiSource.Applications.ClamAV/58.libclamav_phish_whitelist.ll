; ModuleID = './MultiSource.Applications.ClamAV/58.libclamav_phish_whitelist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.regex_matcher = type { %struct.cli_matcher*, %struct.tree_node*, %struct.tree_node*, i64, i32, i32, i32, %struct.node_stack, %struct.node_stack }
%struct.cli_matcher = type opaque
%struct.tree_node = type opaque
%struct.node_stack = type { %struct.tree_node**, i64, i64 }
%struct.pre_fixup_info = type { %struct.string, i64, i64 }
%struct.string = type { i32, %struct.string*, i8* }

@.str = private unnamed_addr constant [56 x i8] c"Phishing: looking up in whitelist: %s:%s; host-only:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @whitelist_match(%struct.cl_engine* %engine, i8* %real_url, i8* %display_url, i32 %hostOnly) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  %real_url.addr = alloca i8*, align 8
  %display_url.addr = alloca i8*, align 8
  %hostOnly.addr = alloca i32, align 4
  %info = alloca i8*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store i8* %real_url, i8** %real_url.addr, align 8
  store i8* %display_url, i8** %display_url.addr, align 8
  store i32 %hostOnly, i32* %hostOnly.addr, align 4
  %0 = load i8*, i8** %real_url.addr, align 8
  %1 = load i8*, i8** %display_url.addr, align 8
  %2 = load i32, i32* %hostOnly.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i32 0, i32 0), i8* %0, i8* %1, i32 %2)
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 8
  %4 = load i8*, i8** %whitelist_matcher, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %5, i32 0, i32 8
  %6 = load i8*, i8** %whitelist_matcher1, align 8
  %7 = bitcast i8* %6 to %struct.regex_matcher*
  %8 = load i8*, i8** %real_url.addr, align 8
  %9 = load i8*, i8** %display_url.addr, align 8
  %10 = load i32, i32* %hostOnly.addr, align 4
  %call = call i32 @regex_list_match(%struct.regex_matcher* %7, i8* %8, i8* %9, %struct.pre_fixup_info* null, i32 %10, i8** %info, i32 1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

declare void @cli_dbgmsg(i8*, ...) #1

declare i32 @regex_list_match(%struct.regex_matcher*, i8*, i8*, %struct.pre_fixup_info*, i32, i8**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @init_whitelist(%struct.cl_engine* %engine) #0 {
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
  %whitelist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 8
  store i8* %2, i8** %whitelist_matcher, align 8
  %4 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %4, i32 0, i32 8
  %5 = load i8*, i8** %whitelist_matcher1, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher4 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %6, i32 0, i32 8
  %7 = load i8*, i8** %whitelist_matcher4, align 8
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
define i32 @is_whitelist_ok(%struct.cl_engine* %engine) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 8
  %2 = load i8*, i8** %whitelist_matcher, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher2 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 8
  %4 = load i8*, i8** %whitelist_matcher2, align 8
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
define void @whitelist_cleanup(%struct.cl_engine* %engine) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 8
  %2 = load i8*, i8** %whitelist_matcher, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher2 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 8
  %4 = load i8*, i8** %whitelist_matcher2, align 8
  %5 = bitcast i8* %4 to %struct.regex_matcher*
  call void @regex_list_cleanup(%struct.regex_matcher* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @regex_list_cleanup(%struct.regex_matcher*) #1

; Function Attrs: nounwind uwtable
define void @whitelist_done(%struct.cl_engine* %engine) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 8
  %2 = load i8*, i8** %whitelist_matcher, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher2 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 8
  %4 = load i8*, i8** %whitelist_matcher2, align 8
  %5 = bitcast i8* %4 to %struct.regex_matcher*
  call void @regex_list_done(%struct.regex_matcher* %5)
  %6 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher3 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %6, i32 0, i32 8
  %7 = load i8*, i8** %whitelist_matcher3, align 8
  call void @free(i8* %7) #3
  %8 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %whitelist_matcher4 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %8, i32 0, i32 8
  store i8* null, i8** %whitelist_matcher4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @regex_list_done(%struct.regex_matcher*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
