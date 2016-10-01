; ModuleID = './MultiSource.Applications.ClamAV/44.libclamav_matcher-bm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }
%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
%struct.cli_target_info = type { i64, %struct.cli_exe_info, i8 }
%struct.cli_exe_info = type { i32, i16, i64, %struct.cli_exe_section* }
%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Signature for %s is too short\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_bm_addpatt(%struct.cli_matcher* %root, %struct.cli_bm_patt* %pattern) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.cli_matcher*, align 8
  %pattern.addr = alloca %struct.cli_bm_patt*, align 8
  %idx = alloca i16, align 2
  %i = alloca i16, align 2
  %pt = alloca i8*, align 8
  %prev = alloca %struct.cli_bm_patt*, align 8
  %next = alloca %struct.cli_bm_patt*, align 8
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store %struct.cli_bm_patt* %pattern, %struct.cli_bm_patt** %pattern.addr, align 8
  %0 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %pattern1 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %0, i32 0, i32 0
  %1 = load i8*, i8** %pattern1, align 8
  store i8* %1, i8** %pt, align 8
  store %struct.cli_bm_patt* null, %struct.cli_bm_patt** %next, align 8
  %2 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %length = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %2, i32 0, i32 2
  %3 = load i16, i16* %length, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp slt i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %virname = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %4, i32 0, i32 4
  %5 = load i8*, i8** %virname, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* %5)
  store i32 -117, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i16, i16* %i, align 2
  %conv3 = zext i16 %6 to i32
  %7 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %length4 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %7, i32 0, i32 2
  %8 = load i16, i16* %length4, align 2
  %conv5 = zext i16 %8 to i32
  %sub = sub nsw i32 %conv5, 3
  %add = add nsw i32 %sub, 1
  %cmp6 = icmp slt i32 %conv3, %add
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i16, i16* %i, align 2
  %idxprom = zext i16 %9 to i64
  %10 = load i8*, i8** %pt, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv8 = zext i8 %11 to i32
  %mul = mul nsw i32 211, %conv8
  %12 = load i16, i16* %i, align 2
  %conv9 = zext i16 %12 to i32
  %add10 = add nsw i32 %conv9, 1
  %idxprom11 = sext i32 %add10 to i64
  %13 = load i8*, i8** %pt, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom11
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %14 to i32
  %mul14 = mul nsw i32 37, %conv13
  %add15 = add nsw i32 %mul, %mul14
  %15 = load i16, i16* %i, align 2
  %conv16 = zext i16 %15 to i32
  %add17 = add nsw i32 %conv16, 2
  %idxprom18 = sext i32 %add17 to i64
  %16 = load i8*, i8** %pt, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %16, i64 %idxprom18
  %17 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %add21 = add nsw i32 %add15, %conv20
  %conv22 = trunc i32 %add21 to i16
  store i16 %conv22, i16* %idx, align 2
  %18 = load i16, i16* %idx, align 2
  %idxprom23 = zext i16 %18 to i64
  %19 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %19, i32 0, i32 3
  %20 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix, align 8
  %arrayidx24 = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %20, i64 %idxprom23
  %21 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %arrayidx24, align 8
  %tobool = icmp ne %struct.cli_bm_patt* %21, null
  br i1 %tobool, label %if.end.40, label %if.then.25

if.then.25:                                       ; preds = %for.body
  %22 = load i16, i16* %i, align 2
  %tobool26 = icmp ne i16 %22, 0
  br i1 %tobool26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.then.25
  %23 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %pattern28 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %23, i32 0, i32 0
  %24 = load i8*, i8** %pattern28, align 8
  %25 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %prefix = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %25, i32 0, i32 1
  store i8* %24, i8** %prefix, align 8
  %26 = load i16, i16* %i, align 2
  %27 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %prefix_length = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %27, i32 0, i32 3
  store i16 %26, i16* %prefix_length, align 2
  %28 = load i16, i16* %i, align 2
  %idxprom29 = zext i16 %28 to i64
  %29 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %pattern30 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %29, i32 0, i32 0
  %30 = load i8*, i8** %pattern30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 %idxprom29
  %31 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %pattern32 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %31, i32 0, i32 0
  store i8* %arrayidx31, i8** %pattern32, align 8
  %32 = load i16, i16* %i, align 2
  %conv33 = zext i16 %32 to i32
  %33 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %length34 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %33, i32 0, i32 2
  %34 = load i16, i16* %length34, align 2
  %conv35 = zext i16 %34 to i32
  %sub36 = sub nsw i32 %conv35, %conv33
  %conv37 = trunc i32 %sub36 to i16
  store i16 %conv37, i16* %length34, align 2
  %35 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %pattern38 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %35, i32 0, i32 0
  %36 = load i8*, i8** %pattern38, align 8
  store i8* %36, i8** %pt, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.27, %if.then.25
  br label %for.end

if.end.40:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %37 = load i16, i16* %i, align 2
  %inc = add i16 %37, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %if.end.39, %for.cond
  store i16 0, i16* %i, align 2
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.81, %for.end
  %38 = load i16, i16* %i, align 2
  %conv42 = zext i16 %38 to i32
  %cmp43 = icmp sle i32 %conv42, 0
  br i1 %cmp43, label %for.body.45, label %for.end.83

for.body.45:                                      ; preds = %for.cond.41
  %39 = load i16, i16* %i, align 2
  %idxprom46 = zext i16 %39 to i64
  %40 = load i8*, i8** %pt, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %40, i64 %idxprom46
  %41 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %41 to i32
  %mul49 = mul nsw i32 211, %conv48
  %42 = load i16, i16* %i, align 2
  %conv50 = zext i16 %42 to i32
  %add51 = add nsw i32 %conv50, 1
  %idxprom52 = sext i32 %add51 to i64
  %43 = load i8*, i8** %pt, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %43, i64 %idxprom52
  %44 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %44 to i32
  %mul55 = mul nsw i32 37, %conv54
  %add56 = add nsw i32 %mul49, %mul55
  %45 = load i16, i16* %i, align 2
  %conv57 = zext i16 %45 to i32
  %add58 = add nsw i32 %conv57, 2
  %idxprom59 = sext i32 %add58 to i64
  %46 = load i8*, i8** %pt, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %46, i64 %idxprom59
  %47 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %47 to i32
  %add62 = add nsw i32 %add56, %conv61
  %conv63 = trunc i32 %add62 to i16
  store i16 %conv63, i16* %idx, align 2
  %48 = load i16, i16* %idx, align 2
  %idxprom64 = zext i16 %48 to i64
  %49 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %49, i32 0, i32 2
  %50 = load i8*, i8** %bm_shift, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %50, i64 %idxprom64
  %51 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %51 to i32
  %52 = load i16, i16* %i, align 2
  %conv67 = zext i16 %52 to i32
  %sub68 = sub nsw i32 0, %conv67
  %cmp69 = icmp slt i32 %conv66, %sub68
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.45
  %53 = load i16, i16* %idx, align 2
  %idxprom71 = zext i16 %53 to i64
  %54 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift72 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %54, i32 0, i32 2
  %55 = load i8*, i8** %bm_shift72, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %55, i64 %idxprom71
  %56 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %56 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.45
  %57 = load i16, i16* %i, align 2
  %conv75 = zext i16 %57 to i32
  %sub76 = sub nsw i32 0, %conv75
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv74, %cond.true ], [ %sub76, %cond.false ]
  %conv77 = trunc i32 %cond to i8
  %58 = load i16, i16* %idx, align 2
  %idxprom78 = zext i16 %58 to i64
  %59 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift79 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %59, i32 0, i32 2
  %60 = load i8*, i8** %bm_shift79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %60, i64 %idxprom78
  store i8 %conv77, i8* %arrayidx80, align 1
  br label %for.inc.81

for.inc.81:                                       ; preds = %cond.end
  %61 = load i16, i16* %i, align 2
  %inc82 = add i16 %61, 1
  store i16 %inc82, i16* %i, align 2
  br label %for.cond.41

for.end.83:                                       ; preds = %for.cond.41
  %62 = load i16, i16* %idx, align 2
  %idxprom84 = zext i16 %62 to i64
  %63 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix85 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %63, i32 0, i32 3
  %64 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix85, align 8
  %arrayidx86 = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %64, i64 %idxprom84
  %65 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %arrayidx86, align 8
  store %struct.cli_bm_patt* %65, %struct.cli_bm_patt** %next, align 8
  store %struct.cli_bm_patt* %65, %struct.cli_bm_patt** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.96, %for.end.83
  %66 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next, align 8
  %tobool87 = icmp ne %struct.cli_bm_patt* %66, null
  br i1 %tobool87, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %67 = load i8*, i8** %pt, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %68 to i32
  %69 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next, align 8
  %pattern90 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %69, i32 0, i32 0
  %70 = load i8*, i8** %pattern90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %71 to i32
  %cmp93 = icmp sge i32 %conv89, %conv92
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %while.body
  br label %while.end

if.end.96:                                        ; preds = %while.body
  %72 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next, align 8
  store %struct.cli_bm_patt* %72, %struct.cli_bm_patt** %prev, align 8
  %73 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next, align 8
  %next97 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %73, i32 0, i32 7
  %74 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next97, align 8
  store %struct.cli_bm_patt* %74, %struct.cli_bm_patt** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.95, %while.cond
  %75 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next, align 8
  %76 = load i16, i16* %idx, align 2
  %idxprom98 = zext i16 %76 to i64
  %77 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix99 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %77, i32 0, i32 3
  %78 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix99, align 8
  %arrayidx100 = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %78, i64 %idxprom98
  %79 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %arrayidx100, align 8
  %cmp101 = icmp eq %struct.cli_bm_patt* %75, %79
  br i1 %cmp101, label %if.then.103, label %if.else

if.then.103:                                      ; preds = %while.end
  %80 = load i16, i16* %idx, align 2
  %idxprom104 = zext i16 %80 to i64
  %81 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix105 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %81, i32 0, i32 3
  %82 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix105, align 8
  %arrayidx106 = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %82, i64 %idxprom104
  %83 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %arrayidx106, align 8
  %84 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %next107 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %84, i32 0, i32 7
  store %struct.cli_bm_patt* %83, %struct.cli_bm_patt** %next107, align 8
  %85 = load i16, i16* %idx, align 2
  %idxprom108 = zext i16 %85 to i64
  %86 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix109 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %86, i32 0, i32 3
  %87 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix109, align 8
  %arrayidx110 = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %87, i64 %idxprom108
  %88 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %arrayidx110, align 8
  %tobool111 = icmp ne %struct.cli_bm_patt* %88, null
  br i1 %tobool111, label %if.then.112, label %if.end.117

if.then.112:                                      ; preds = %if.then.103
  %89 = load i16, i16* %idx, align 2
  %idxprom113 = zext i16 %89 to i64
  %90 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix114 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %90, i32 0, i32 3
  %91 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix114, align 8
  %arrayidx115 = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %91, i64 %idxprom113
  %92 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %arrayidx115, align 8
  %cnt = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %92, i32 0, i32 8
  %93 = load i16, i16* %cnt, align 2
  %94 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %cnt116 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %94, i32 0, i32 8
  store i16 %93, i16* %cnt116, align 2
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.112, %if.then.103
  %95 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %96 = load i16, i16* %idx, align 2
  %idxprom118 = zext i16 %96 to i64
  %97 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix119 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %97, i32 0, i32 3
  %98 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix119, align 8
  %arrayidx120 = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %98, i64 %idxprom118
  store %struct.cli_bm_patt* %95, %struct.cli_bm_patt** %arrayidx120, align 8
  br label %if.end.124

if.else:                                          ; preds = %while.end
  %99 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %next121 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %99, i32 0, i32 7
  %100 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next121, align 8
  %101 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %next122 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %101, i32 0, i32 7
  store %struct.cli_bm_patt* %100, %struct.cli_bm_patt** %next122, align 8
  %102 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %pattern.addr, align 8
  %103 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %next123 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %103, i32 0, i32 7
  store %struct.cli_bm_patt* %102, %struct.cli_bm_patt** %next123, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.else, %if.end.117
  %104 = load i16, i16* %idx, align 2
  %idxprom125 = zext i16 %104 to i64
  %105 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix126 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %105, i32 0, i32 3
  %106 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix126, align 8
  %arrayidx127 = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %106, i64 %idxprom125
  %107 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %arrayidx127, align 8
  %cnt128 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %107, i32 0, i32 8
  %108 = load i16, i16* %cnt128, align 2
  %inc129 = add i16 %108, 1
  store i16 %inc129, i16* %cnt128, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.124, %if.then
  %109 = load i32, i32* %retval
  ret i32 %109
}

declare void @cli_errmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @cli_bm_init(%struct.cli_matcher* %root) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.cli_matcher*, align 8
  %i = alloca i16, align 2
  %size = alloca i16, align 2
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store i16 -2040, i16* %size, align 2
  %0 = load i16, i16* %size, align 2
  %conv = zext i16 %0 to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @cli_malloc(i64 %mul)
  %1 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %1, i32 0, i32 2
  store i8* %call, i8** %bm_shift, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %size, align 2
  %conv1 = zext i16 %2 to i64
  %call2 = call i8* @cli_calloc(i64 %conv1, i64 8)
  %3 = bitcast i8* %call2 to %struct.cli_bm_patt**
  %4 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %4, i32 0, i32 3
  store %struct.cli_bm_patt** %3, %struct.cli_bm_patt*** %bm_suffix, align 8
  %tobool3 = icmp ne %struct.cli_bm_patt** %3, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift5 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %5, i32 0, i32 2
  %6 = load i8*, i8** %bm_shift5, align 8
  call void @free(i8* %6) #3
  store i32 -114, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %7 = load i16, i16* %i, align 2
  %conv7 = zext i16 %7 to i32
  %8 = load i16, i16* %size, align 2
  %conv8 = zext i16 %8 to i32
  %cmp = icmp slt i32 %conv7, %conv8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i16, i16* %i, align 2
  %idxprom = zext i16 %9 to i64
  %10 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift10 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %10, i32 0, i32 2
  %11 = load i8*, i8** %bm_shift10, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i16, i16* %i, align 2
  %inc = add i16 %12, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i8* @cli_malloc(i64) #1

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @cli_bm_free(%struct.cli_matcher* %root) #0 {
entry:
  %root.addr = alloca %struct.cli_matcher*, align 8
  %patt = alloca %struct.cli_bm_patt*, align 8
  %prev = alloca %struct.cli_bm_patt*, align 8
  %i = alloca i16, align 2
  %size = alloca i16, align 2
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store i16 -2040, i16* %size, align 2
  %0 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %0, i32 0, i32 2
  %1 = load i8*, i8** %bm_shift, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift1 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %2, i32 0, i32 2
  %3 = load i8*, i8** %bm_shift1, align 8
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %4, i32 0, i32 3
  %5 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix, align 8
  %tobool2 = icmp ne %struct.cli_bm_patt** %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.21

if.then.3:                                        ; preds = %if.end
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %6 = load i16, i16* %i, align 2
  %conv = zext i16 %6 to i32
  %7 = load i16, i16* %size, align 2
  %conv4 = zext i16 %7 to i32
  %cmp = icmp slt i32 %conv, %conv4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i16, i16* %i, align 2
  %idxprom = zext i16 %8 to i64
  %9 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix6 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %9, i32 0, i32 3
  %10 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix6, align 8
  %arrayidx = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %10, i64 %idxprom
  %11 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %arrayidx, align 8
  store %struct.cli_bm_patt* %11, %struct.cli_bm_patt** %patt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %for.body
  %12 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %patt, align 8
  %tobool7 = icmp ne %struct.cli_bm_patt* %12, null
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %patt, align 8
  store %struct.cli_bm_patt* %13, %struct.cli_bm_patt** %prev, align 8
  %14 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %patt, align 8
  %next = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %14, i32 0, i32 7
  %15 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next, align 8
  store %struct.cli_bm_patt* %15, %struct.cli_bm_patt** %patt, align 8
  %16 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %prefix = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %16, i32 0, i32 1
  %17 = load i8*, i8** %prefix, align 8
  %tobool8 = icmp ne i8* %17, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %while.body
  %18 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %prefix10 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %18, i32 0, i32 1
  %19 = load i8*, i8** %prefix10, align 8
  call void @free(i8* %19) #3
  br label %if.end.11

if.else:                                          ; preds = %while.body
  %20 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %pattern = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %20, i32 0, i32 0
  %21 = load i8*, i8** %pattern, align 8
  call void @free(i8* %21) #3
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %22 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %virname = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %22, i32 0, i32 4
  %23 = load i8*, i8** %virname, align 8
  %tobool12 = icmp ne i8* %23, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %24 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %virname14 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %24, i32 0, i32 4
  %25 = load i8*, i8** %virname14, align 8
  call void @free(i8* %25) #3
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  %26 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %offset = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %26, i32 0, i32 5
  %27 = load i8*, i8** %offset, align 8
  %tobool16 = icmp ne i8* %27, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %28 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %offset18 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %28, i32 0, i32 5
  %29 = load i8*, i8** %offset18, align 8
  call void @free(i8* %29) #3
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  %30 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %prev, align 8
  %31 = bitcast %struct.cli_bm_patt* %30 to i8*
  call void @free(i8* %31) #3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %32 = load i16, i16* %i, align 2
  %inc = add i16 %32, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix20 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %33, i32 0, i32 3
  %34 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix20, align 8
  %35 = bitcast %struct.cli_bm_patt** %34 to i8*
  call void @free(i8* %35) #3
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cli_bm_scanbuff(i8* %buffer, i32 %length, i8** %virname, %struct.cli_matcher* %root, i32 %offset, i32 %ftype, i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %virname.addr = alloca i8**, align 8
  %root.addr = alloca %struct.cli_matcher*, align 8
  %offset.addr = alloca i32, align 4
  %ftype.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %off = alloca i32, align 4
  %found = alloca i8, align 1
  %pchain = alloca i8, align 1
  %shift = alloca i8, align 1
  %idx = alloca i16, align 2
  %idxchk = alloca i16, align 2
  %p = alloca %struct.cli_bm_patt*, align 8
  %bp = alloca i8*, align 8
  %pt = alloca i8*, align 8
  %prefix = alloca i8, align 1
  %info = alloca %struct.cli_target_info, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i8** %virname, i8*** %virname.addr, align 8
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %ftype, i32* %ftype.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %0, i32 0, i32 2
  %1 = load i8*, i8** %bm_shift, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %length.addr, align 4
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = bitcast %struct.cli_target_info* %info to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 40, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.173, %if.end.2
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %length.addr, align 4
  %sub = sub i32 %5, 3
  %add = add i32 %sub, 1
  %cmp3 = icmp ult i32 %4, %add
  br i1 %cmp3, label %for.body, label %for.end.176

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %mul = mul nsw i32 211, %conv
  %9 = load i32, i32* %i, align 4
  %add4 = add i32 %9, 1
  %idxprom5 = zext i32 %add4 to i64
  %10 = load i8*, i8** %buffer.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %mul8 = mul nsw i32 37, %conv7
  %add9 = add nsw i32 %mul, %mul8
  %12 = load i32, i32* %i, align 4
  %add10 = add i32 %12, 2
  %idxprom11 = zext i32 %add10 to i64
  %13 = load i8*, i8** %buffer.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom11
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %14 to i32
  %add14 = add nsw i32 %add9, %conv13
  %conv15 = trunc i32 %add14 to i16
  store i16 %conv15, i16* %idx, align 2
  %15 = load i16, i16* %idx, align 2
  %idxprom16 = zext i16 %15 to i64
  %16 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_shift17 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %16, i32 0, i32 2
  %17 = load i8*, i8** %bm_shift17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 %idxprom16
  %18 = load i8, i8* %arrayidx18, align 1
  store i8 %18, i8* %shift, align 1
  %19 = load i8, i8* %shift, align 1
  %conv19 = zext i8 %19 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.173

if.then.22:                                       ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %sub23 = sub i32 %20, 3
  %add24 = add i32 %sub23, 3
  %idxprom25 = zext i32 %add24 to i64
  %21 = load i8*, i8** %buffer.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  %22 = load i8, i8* %arrayidx26, align 1
  store i8 %22, i8* %prefix, align 1
  %23 = load i16, i16* %idx, align 2
  %idxprom27 = zext i16 %23 to i64
  %24 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %bm_suffix = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %24, i32 0, i32 3
  %25 = load %struct.cli_bm_patt**, %struct.cli_bm_patt*** %bm_suffix, align 8
  %arrayidx28 = getelementptr inbounds %struct.cli_bm_patt*, %struct.cli_bm_patt** %25, i64 %idxprom27
  %26 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %arrayidx28, align 8
  store %struct.cli_bm_patt* %26, %struct.cli_bm_patt** %p, align 8
  store i8 0, i8* %pchain, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.171, %if.then.158, %if.then.87, %if.then.50, %if.end.38, %if.then.22
  %27 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %tobool29 = icmp ne %struct.cli_bm_patt* %27, null
  br i1 %tobool29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %pattern = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %28, i32 0, i32 0
  %29 = load i8*, i8** %pattern, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %30 to i32
  %31 = load i8, i8* %prefix, align 1
  %conv32 = zext i8 %31 to i32
  %cmp33 = icmp ne i32 %conv31, %conv32
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %while.body
  %32 = load i8, i8* %pchain, align 1
  %tobool36 = icmp ne i8 %32, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.35
  br label %while.end

if.end.38:                                        ; preds = %if.then.35
  %33 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %next = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %33, i32 0, i32 7
  %34 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next, align 8
  store %struct.cli_bm_patt* %34, %struct.cli_bm_patt** %p, align 8
  br label %while.cond

if.else:                                          ; preds = %while.body
  store i8 1, i8* %pchain, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else
  %35 = load i32, i32* %i, align 4
  %sub40 = sub i32 %35, 3
  %add41 = add i32 %sub40, 3
  store i32 %add41, i32* %off, align 4
  %36 = load i8*, i8** %buffer.addr, align 8
  %37 = load i32, i32* %off, align 4
  %idx.ext = zext i32 %37 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %38 = load i32, i32* %off, align 4
  %39 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %length42 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %39, i32 0, i32 2
  %40 = load i16, i16* %length42, align 2
  %conv43 = zext i16 %40 to i32
  %add44 = add i32 %38, %conv43
  %41 = load i32, i32* %length.addr, align 4
  %cmp45 = icmp ugt i32 %add44, %41
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.39
  %42 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %prefix_length = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %42, i32 0, i32 3
  %43 = load i16, i16* %prefix_length, align 2
  %conv47 = zext i16 %43 to i32
  %44 = load i32, i32* %off, align 4
  %cmp48 = icmp ugt i32 %conv47, %44
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %lor.lhs.false, %if.end.39
  %45 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %next51 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %45, i32 0, i32 7
  %46 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next51, align 8
  store %struct.cli_bm_patt* %46, %struct.cli_bm_patt** %p, align 8
  br label %while.cond

if.end.52:                                        ; preds = %lor.lhs.false
  %47 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %length53 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %47, i32 0, i32 2
  %48 = load i16, i16* %length53, align 2
  %conv54 = zext i16 %48 to i32
  %49 = load i32, i32* %length.addr, align 4
  %50 = load i32, i32* %off, align 4
  %sub55 = sub i32 %49, %50
  %cmp56 = icmp ult i32 %conv54, %sub55
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.52
  %51 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %length58 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %51, i32 0, i32 2
  %52 = load i16, i16* %length58, align 2
  %conv59 = zext i16 %52 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.52
  %53 = load i32, i32* %length.addr, align 4
  %54 = load i32, i32* %off, align 4
  %sub60 = sub i32 %53, %54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv59, %cond.true ], [ %sub60, %cond.false ]
  %sub61 = sub i32 %cond, 1
  %conv62 = trunc i32 %sub61 to i16
  store i16 %conv62, i16* %idxchk, align 2
  %55 = load i16, i16* %idxchk, align 2
  %tobool63 = icmp ne i16 %55, 0
  br i1 %tobool63, label %if.then.64, label %if.end.90

if.then.64:                                       ; preds = %cond.end
  %56 = load i16, i16* %idxchk, align 2
  %idxprom65 = zext i16 %56 to i64
  %57 = load i8*, i8** %bp, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %57, i64 %idxprom65
  %58 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %58 to i32
  %59 = load i16, i16* %idxchk, align 2
  %idxprom68 = zext i16 %59 to i64
  %60 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %pattern69 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %60, i32 0, i32 0
  %61 = load i8*, i8** %pattern69, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %61, i64 %idxprom68
  %62 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %62 to i32
  %cmp72 = icmp ne i32 %conv67, %conv71
  br i1 %cmp72, label %if.then.87, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.then.64
  %63 = load i16, i16* %idxchk, align 2
  %conv75 = zext i16 %63 to i32
  %div = sdiv i32 %conv75, 2
  %idxprom76 = sext i32 %div to i64
  %64 = load i8*, i8** %bp, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %64, i64 %idxprom76
  %65 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %65 to i32
  %66 = load i16, i16* %idxchk, align 2
  %conv79 = zext i16 %66 to i32
  %div80 = sdiv i32 %conv79, 2
  %idxprom81 = sext i32 %div80 to i64
  %67 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %pattern82 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %67, i32 0, i32 0
  %68 = load i8*, i8** %pattern82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %68, i64 %idxprom81
  %69 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %69 to i32
  %cmp85 = icmp ne i32 %conv78, %conv84
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %lor.lhs.false.74, %if.then.64
  %70 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %next88 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %70, i32 0, i32 7
  %71 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next88, align 8
  store %struct.cli_bm_patt* %71, %struct.cli_bm_patt** %p, align 8
  br label %while.cond

if.end.89:                                        ; preds = %lor.lhs.false.74
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %cond.end
  %72 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %prefix_length91 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %72, i32 0, i32 3
  %73 = load i16, i16* %prefix_length91, align 2
  %tobool92 = icmp ne i16 %73, 0
  br i1 %tobool92, label %if.then.93, label %if.else.102

if.then.93:                                       ; preds = %if.end.90
  %74 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %prefix_length94 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %74, i32 0, i32 3
  %75 = load i16, i16* %prefix_length94, align 2
  %conv95 = zext i16 %75 to i32
  %76 = load i32, i32* %off, align 4
  %sub96 = sub i32 %76, %conv95
  store i32 %sub96, i32* %off, align 4
  %77 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %prefix_length97 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %77, i32 0, i32 3
  %78 = load i16, i16* %prefix_length97, align 2
  %conv98 = zext i16 %78 to i32
  %79 = load i8*, i8** %bp, align 8
  %idx.ext99 = sext i32 %conv98 to i64
  %idx.neg = sub i64 0, %idx.ext99
  %add.ptr100 = getelementptr inbounds i8, i8* %79, i64 %idx.neg
  store i8* %add.ptr100, i8** %bp, align 8
  %80 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %prefix101 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %80, i32 0, i32 1
  %81 = load i8*, i8** %prefix101, align 8
  store i8* %81, i8** %pt, align 8
  br label %if.end.104

if.else.102:                                      ; preds = %if.end.90
  %82 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %pattern103 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %82, i32 0, i32 0
  %83 = load i8*, i8** %pattern103, align 8
  store i8* %83, i8** %pt, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.102, %if.then.93
  store i8 1, i8* %found, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc, %if.end.104
  %84 = load i32, i32* %j, align 4
  %85 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %length106 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %85, i32 0, i32 2
  %86 = load i16, i16* %length106, align 2
  %conv107 = zext i16 %86 to i32
  %87 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %prefix_length108 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %87, i32 0, i32 3
  %88 = load i16, i16* %prefix_length108, align 2
  %conv109 = zext i16 %88 to i32
  %add110 = add nsw i32 %conv107, %conv109
  %cmp111 = icmp ult i32 %84, %add110
  br i1 %cmp111, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.105
  %89 = load i32, i32* %off, align 4
  %90 = load i32, i32* %length.addr, align 4
  %cmp113 = icmp ult i32 %89, %90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.105
  %91 = phi i1 [ false, %for.cond.105 ], [ %cmp113, %land.rhs ]
  br i1 %91, label %for.body.115, label %for.end

for.body.115:                                     ; preds = %land.end
  %92 = load i32, i32* %j, align 4
  %idxprom116 = zext i32 %92 to i64
  %93 = load i8*, i8** %bp, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %93, i64 %idxprom116
  %94 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %94 to i32
  %95 = load i32, i32* %j, align 4
  %idxprom119 = zext i32 %95 to i64
  %96 = load i8*, i8** %pt, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %96, i64 %idxprom119
  %97 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %97 to i32
  %cmp122 = icmp ne i32 %conv118, %conv121
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %for.body.115
  store i8 0, i8* %found, align 1
  br label %for.end

if.end.125:                                       ; preds = %for.body.115
  br label %for.inc

for.inc:                                          ; preds = %if.end.125
  %98 = load i32, i32* %j, align 4
  %inc = add i32 %98, 1
  store i32 %inc, i32* %j, align 4
  %99 = load i32, i32* %off, align 4
  %inc126 = add i32 %99, 1
  store i32 %inc126, i32* %off, align 4
  br label %for.cond.105

for.end:                                          ; preds = %if.then.124, %land.end
  %100 = load i8, i8* %found, align 1
  %conv127 = zext i8 %100 to i32
  %tobool128 = icmp ne i32 %conv127, 0
  br i1 %tobool128, label %land.lhs.true, label %if.end.171

land.lhs.true:                                    ; preds = %for.end
  %101 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %length129 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %101, i32 0, i32 2
  %102 = load i16, i16* %length129, align 2
  %conv130 = zext i16 %102 to i32
  %103 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %prefix_length131 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %103, i32 0, i32 3
  %104 = load i16, i16* %prefix_length131, align 2
  %conv132 = zext i16 %104 to i32
  %add133 = add nsw i32 %conv130, %conv132
  %105 = load i32, i32* %j, align 4
  %cmp134 = icmp eq i32 %add133, %105
  br i1 %cmp134, label %if.then.136, label %if.end.171

if.then.136:                                      ; preds = %land.lhs.true
  %106 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %target = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %106, i32 0, i32 6
  %107 = load i8, i8* %target, align 1
  %conv137 = zext i8 %107 to i32
  %tobool138 = icmp ne i32 %conv137, 0
  br i1 %tobool138, label %if.then.142, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %if.then.136
  %108 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %offset140 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %108, i32 0, i32 5
  %109 = load i8*, i8** %offset140, align 8
  %tobool141 = icmp ne i8* %109, null
  br i1 %tobool141, label %if.then.142, label %if.end.161

if.then.142:                                      ; preds = %lor.lhs.false.139, %if.then.136
  %110 = load i32, i32* %offset.addr, align 4
  %111 = load i32, i32* %i, align 4
  %add143 = add i32 %110, %111
  %112 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %prefix_length144 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %112, i32 0, i32 3
  %113 = load i16, i16* %prefix_length144, align 2
  %conv145 = zext i16 %113 to i32
  %sub146 = sub i32 %add143, %conv145
  %sub147 = sub i32 %sub146, 3
  %add148 = add i32 %sub147, 3
  store i32 %add148, i32* %off, align 4
  %114 = load i32, i32* %fd.addr, align 4
  %cmp149 = icmp eq i32 %114, -1
  br i1 %cmp149, label %land.lhs.true.151, label %lor.lhs.false.153

land.lhs.true.151:                                ; preds = %if.then.142
  %115 = load i32, i32* %ftype.addr, align 4
  %tobool152 = icmp ne i32 %115, 0
  br i1 %tobool152, label %lor.lhs.false.153, label %if.then.158

lor.lhs.false.153:                                ; preds = %land.lhs.true.151, %if.then.142
  %116 = load i32, i32* %ftype.addr, align 4
  %117 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %offset154 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %117, i32 0, i32 5
  %118 = load i8*, i8** %offset154, align 8
  %119 = load i32, i32* %off, align 4
  %conv155 = zext i32 %119 to i64
  %120 = load i32, i32* %fd.addr, align 4
  %121 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %virname156 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %121, i32 0, i32 4
  %122 = load i8*, i8** %virname156, align 8
  %call = call i32 @cli_validatesig(i32 %116, i8* %118, i64 %conv155, %struct.cli_target_info* %info, i32 %120, i8* %122)
  %tobool157 = icmp ne i32 %call, 0
  br i1 %tobool157, label %if.end.160, label %if.then.158

if.then.158:                                      ; preds = %lor.lhs.false.153, %land.lhs.true.151
  %123 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %next159 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %123, i32 0, i32 7
  %124 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next159, align 8
  store %struct.cli_bm_patt* %124, %struct.cli_bm_patt** %p, align 8
  br label %while.cond

if.end.160:                                       ; preds = %lor.lhs.false.153
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %lor.lhs.false.139
  %125 = load i8**, i8*** %virname.addr, align 8
  %tobool162 = icmp ne i8** %125, null
  br i1 %tobool162, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.end.161
  %126 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %virname164 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %126, i32 0, i32 4
  %127 = load i8*, i8** %virname164, align 8
  %128 = load i8**, i8*** %virname.addr, align 8
  store i8* %127, i8** %128, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.end.161
  %exeinfo = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo, i32 0, i32 3
  %129 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %tobool166 = icmp ne %struct.cli_exe_section* %129, null
  br i1 %tobool166, label %if.then.167, label %if.end.170

if.then.167:                                      ; preds = %if.end.165
  %exeinfo168 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section169 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo168, i32 0, i32 3
  %130 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section169, align 8
  %131 = bitcast %struct.cli_exe_section* %130 to i8*
  call void @free(i8* %131) #3
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.167, %if.end.165
  store i32 1, i32* %retval
  br label %return

if.end.171:                                       ; preds = %land.lhs.true, %for.end
  %132 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %p, align 8
  %next172 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %132, i32 0, i32 7
  %133 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %next172, align 8
  store %struct.cli_bm_patt* %133, %struct.cli_bm_patt** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.37, %while.cond
  store i8 1, i8* %shift, align 1
  br label %if.end.173

if.end.173:                                       ; preds = %while.end, %for.body
  %134 = load i8, i8* %shift, align 1
  %conv174 = zext i8 %134 to i32
  %135 = load i32, i32* %i, align 4
  %add175 = add i32 %135, %conv174
  store i32 %add175, i32* %i, align 4
  br label %for.cond

for.end.176:                                      ; preds = %for.cond
  %exeinfo177 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section178 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo177, i32 0, i32 3
  %136 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section178, align 8
  %tobool179 = icmp ne %struct.cli_exe_section* %136, null
  br i1 %tobool179, label %if.then.180, label %if.end.183

if.then.180:                                      ; preds = %for.end.176
  %exeinfo181 = getelementptr inbounds %struct.cli_target_info, %struct.cli_target_info* %info, i32 0, i32 1
  %section182 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %exeinfo181, i32 0, i32 3
  %137 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section182, align 8
  %138 = bitcast %struct.cli_exe_section* %137 to i8*
  call void @free(i8* %138) #3
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.180, %for.end.176
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.183, %if.end.170, %if.then.1, %if.then
  %139 = load i32, i32* %retval
  ret i32 %139
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @cli_validatesig(i32, i8*, i64, %struct.cli_target_info*, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
