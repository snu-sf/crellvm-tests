; ModuleID = 'rtlanal.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.set_of_data = type { %struct.rtx_def*, %struct.rtx_def* }
%struct.parms_set_data = type { i32, i64 }

@global_rtl = external global [11 x %struct.rtx_def*], align 16
@fixed_regs = external global [53 x i8], align 16
@pic_offset_table_rtx = external global %struct.rtx_def*, align 8
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@rtx_class = external constant [153 x i8], align 16
@mode_size = external constant [59 x i8], align 16
@target_flags = common global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rtlanal.c\00", align 1
@__FUNCTION__.insn_dependent_p = private unnamed_addr constant [17 x i8] c"insn_dependent_p\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@mode_class = external constant [59 x i32], align 16
@__FUNCTION__.reg_overlap_mentioned_p = private unnamed_addr constant [24 x i8] c"reg_overlap_mentioned_p\00", align 1
@__FUNCTION__.dead_or_set_p = private unnamed_addr constant [14 x i8] c"dead_or_set_p\00", align 1
@__FUNCTION__.find_reg_fusage = private unnamed_addr constant [16 x i8] c"find_reg_fusage\00", align 1
@__FUNCTION__.remove_note = private unnamed_addr constant [12 x i8] c"remove_note\00", align 1
@__FUNCTION__.replace_rtx = private unnamed_addr constant [12 x i8] c"replace_rtx\00", align 1
@mode_bitsize = external constant [59 x i16], align 16
@__FUNCTION__.subreg_regno_offset = private unnamed_addr constant [20 x i8] c"subreg_regno_offset\00", align 1
@__FUNCTION__.find_first_parameter_load = private unnamed_addr constant [26 x i8] c"find_first_parameter_load\00", align 1

; Function Attrs: nounwind uwtable
define i32 @rtx_unstable_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 66, label %sw.bb
    i32 71, label %sw.bb.4
    i32 70, label %sw.bb.5
    i32 58, label %sw.bb.5
    i32 54, label %sw.bb.5
    i32 55, label %sw.bb.5
    i32 56, label %sw.bb.5
    i32 68, label %sw.bb.5
    i32 67, label %sw.bb.5
    i32 61, label %sw.bb.6
    i32 41, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 26
  %bf.clear2 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear2, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %sw.bb
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @rtx_unstable_p(%struct.rtx_def* %6)
  %tobool3 = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %7 = phi i1 [ true, %sw.bb ], [ %tobool3, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp = icmp eq %struct.rtx_def* %8, %9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.6
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %cmp7 = icmp eq %struct.rtx_def* %10, %11
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp9 = icmp eq %struct.rtx_def* %12, %13
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false.11

land.lhs.true:                                    ; preds = %lor.lhs.false.8
  %14 = load i8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 16), align 1
  %conv = sext i8 %14 to i32
  %tobool10 = icmp ne i32 %conv, 0
  br i1 %tobool10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true, %lor.lhs.false.8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load12 = load i32, i32* %16, align 8
  %bf.lshr13 = lshr i32 %bf.load12, 26
  %bf.clear14 = and i32 %bf.lshr13, 1
  %tobool15 = icmp ne i32 %bf.clear14, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %land.lhs.true, %lor.lhs.false, %sw.bb.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8
  %cmp16 = icmp eq %struct.rtx_def* %17, %18
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load21 = load i32, i32* %20, align 8
  %bf.lshr22 = lshr i32 %bf.load21, 27
  %bf.clear23 = and i32 %bf.lshr22, 1
  %tobool24 = icmp ne i32 %bf.clear23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.bb.20
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %sw.bb.20
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %21 = load i32, i32* %code, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %22 = load i8*, i8** %arrayidx27, align 8
  store i8* %22, i8** %fmt, align 8
  %23 = load i32, i32* %code, align 4
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom28
  %24 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %24 to i32
  %sub = sub nsw i32 %conv30, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %sw.epilog
  %25 = load i32, i32* %i, align 4
  %cmp31 = icmp sge i32 %25, 0
  br i1 %cmp31, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %27 = load i8*, i8** %fmt, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 %idxprom33
  %28 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %28 to i32
  %cmp36 = icmp eq i32 %conv35, 101
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 %idxprom39
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %call43 = call i32 @rtx_unstable_p(%struct.rtx_def* %31)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.38
  store i32 1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.38
  br label %if.end.71

if.else:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %32 to i64
  %33 = load i8*, i8** %fmt, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %33, i64 %idxprom47
  %34 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %34 to i32
  %cmp50 = icmp eq i32 %conv49, 69
  br i1 %cmp50, label %if.then.52, label %if.end.70

if.then.52:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.then.52
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %36 to i64
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 %idxprom54
  %rtvec = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtvec_def**
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i32 0, i32 0
  %39 = load i32, i32* %num_elem, align 4
  %cmp57 = icmp slt i32 %35, %39
  br i1 %cmp57, label %for.body.59, label %for.end

for.body.59:                                      ; preds = %for.cond.53
  %40 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 %idxprom61
  %rtvec64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtvec_def**
  %43 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec64, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %43, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom60
  %44 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx65, align 8
  %call66 = call i32 @rtx_unstable_p(%struct.rtx_def* %44)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.body.59
  store i32 1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %for.body.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %45 = load i32, i32* %j, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  br label %if.end.70

if.end.70:                                        ; preds = %for.end, %if.else
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.46
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %46 = load i32, i32* %i, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.73, %if.then.68, %if.then.45, %if.then.25, %if.end.19, %if.then.18, %if.then, %sw.bb.5, %sw.bb.4, %lor.end
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define i32 @rtx_varies_p(%struct.rtx_def* %x, i32 %for_alias) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %for_alias.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %for_alias, i32* %for_alias.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 66, label %sw.bb
    i32 71, label %sw.bb.4
    i32 58, label %sw.bb.5
    i32 54, label %sw.bb.5
    i32 55, label %sw.bb.5
    i32 56, label %sw.bb.5
    i32 68, label %sw.bb.5
    i32 67, label %sw.bb.5
    i32 61, label %sw.bb.6
    i32 135, label %sw.bb.15
    i32 41, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 26
  %bf.clear2 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear2, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %sw.bb
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load i32, i32* %for_alias.addr, align 4
  %call = call i32 @rtx_varies_p(%struct.rtx_def* %6, i32 %7)
  %tobool3 = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %8 = phi i1 [ true, %sw.bb ], [ %tobool3, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp = icmp eq %struct.rtx_def* %9, %10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %cmp7 = icmp eq %struct.rtx_def* %11, %12
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp9 = icmp eq %struct.rtx_def* %13, %14
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.8
  %15 = load i8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 16), align 1
  %conv = sext i8 %15 to i32
  %tobool10 = icmp ne i32 %conv, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %sw.bb.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8
  %cmp11 = icmp eq %struct.rtx_def* %16, %17
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  %18 = load i32, i32* %for_alias.addr, align 4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %lor.rhs.23, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %sw.bb.15
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %21 = load i32, i32* %for_alias.addr, align 4
  %call21 = call i32 @rtx_varies_p(%struct.rtx_def* %20, i32 %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.end.29, label %lor.rhs.23

lor.rhs.23:                                       ; preds = %land.lhs.true.17, %sw.bb.15
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %24 = load i32, i32* %for_alias.addr, align 4
  %call27 = call i32 @rtx_varies_p(%struct.rtx_def* %23, i32 %24)
  %tobool28 = icmp ne i32 %call27, 0
  br label %lor.end.29

lor.end.29:                                       ; preds = %lor.rhs.23, %land.lhs.true.17
  %25 = phi i1 [ true, %land.lhs.true.17 ], [ %tobool28, %lor.rhs.23 ]
  %lor.ext30 = zext i1 %25 to i32
  store i32 %lor.ext30, i32* %retval
  br label %return

sw.bb.31:                                         ; preds = %entry
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load32 = load i32, i32* %27, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 27
  %bf.clear34 = and i32 %bf.lshr33, 1
  %tobool35 = icmp ne i32 %bf.clear34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb.31
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %sw.bb.31
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %28 = load i32, i32* %code, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %29 = load i8*, i8** %arrayidx38, align 8
  store i8* %29, i8** %fmt, align 8
  %30 = load i32, i32* %code, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom39
  %31 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %31 to i32
  %sub = sub nsw i32 %conv41, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %sw.epilog
  %32 = load i32, i32* %i, align 4
  %cmp42 = icmp sge i32 %32, 0
  br i1 %cmp42, label %for.body, label %for.end.84

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %33 to i64
  %34 = load i8*, i8** %fmt, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %34, i64 %idxprom44
  %35 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %35 to i32
  %cmp47 = icmp eq i32 %conv46, 101
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %36 to i64
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 %idxprom50
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %39 = load i32, i32* %for_alias.addr, align 4
  %call54 = call i32 @rtx_varies_p(%struct.rtx_def* %38, i32 %39)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.49
  store i32 1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.49
  br label %if.end.82

if.else:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %40 to i64
  %41 = load i8*, i8** %fmt, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %41, i64 %idxprom58
  %42 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %42 to i32
  %cmp61 = icmp eq i32 %conv60, 69
  br i1 %cmp61, label %if.then.63, label %if.end.81

if.then.63:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc, %if.then.63
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %44 to i64
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 %idxprom65
  %rtvec = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtvec_def**
  %46 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %46, i32 0, i32 0
  %47 = load i32, i32* %num_elem, align 4
  %cmp68 = icmp slt i32 %43, %47
  br i1 %cmp68, label %for.body.70, label %for.end

for.body.70:                                      ; preds = %for.cond.64
  %48 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %49 to i64
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 %idxprom72
  %rtvec75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtvec_def**
  %51 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec75, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %51, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom71
  %52 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx76, align 8
  %53 = load i32, i32* %for_alias.addr, align 4
  %call77 = call i32 @rtx_varies_p(%struct.rtx_def* %52, i32 %53)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.70
  store i32 1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %for.body.70
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %54 = load i32, i32* %j, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.64

for.end:                                          ; preds = %for.cond.64
  br label %if.end.81

if.end.81:                                        ; preds = %for.end, %if.else
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.57
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %55 = load i32, i32* %i, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.84:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.84, %if.then.79, %if.then.56, %if.then.36, %lor.end.29, %if.end.14, %if.then.13, %if.then, %sw.bb.5, %sw.bb.4, %lor.end
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define i32 @rtx_addr_can_trap_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 68, label %sw.bb
    i32 67, label %sw.bb.3
    i32 61, label %sw.bb.4
    i32 58, label %sw.bb.20
    i32 75, label %sw.bb.23
    i32 135, label %sw.bb.106
    i32 100, label %sw.bb.106
    i32 96, label %sw.bb.111
    i32 97, label %sw.bb.111
    i32 98, label %sw.bb.111
    i32 99, label %sw.bb.111
    i32 101, label %sw.bb.111
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 30
  %bf.clear2 = and i32 %bf.lshr, 1
  store i32 %bf.clear2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp = icmp eq %struct.rtx_def* %5, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %cmp5 = icmp eq %struct.rtx_def* %7, %8
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp7 = icmp eq %struct.rtx_def* %9, %10
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp9 = icmp eq %struct.rtx_def* %11, %12
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.8
  %13 = load i8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 16), align 1
  %conv = sext i8 %13 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false.6, %lor.lhs.false, %sw.bb.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %15 = load i32, i32* %rtuint, align 4
  %cmp10 = icmp uge i32 %15, 53
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.19

land.lhs.true.12:                                 ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtuint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %17 = load i32, i32* %rtuint15, align 4
  %cmp16 = icmp ule i32 %17, 57
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.12
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.12, %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @rtx_addr_can_trap_p(%struct.rtx_def* %19)
  store i32 %call, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %call27 = call i32 @rtx_addr_can_trap_p(%struct.rtx_def* %21)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %lor.rhs, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %sw.bb.23
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 1
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load33 = load i32, i32* %24, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 54
  br i1 %cmp35, label %lor.end.105, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.29, %sw.bb.23
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8
  %cmp40 = icmp eq %struct.rtx_def* %26, %27
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 1
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load45 = load i32, i32* %30, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 67
  br i1 %cmp47, label %lor.end, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %land.rhs
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 1
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load53 = load i32, i32* %33, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 68
  br i1 %cmp55, label %lor.end, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.49
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 1
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load61 = load i32, i32* %36, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  %cmp63 = icmp eq i32 %bf.clear62, 54
  br i1 %cmp63, label %lor.end, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.57
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 1
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load69 = load i32, i32* %39, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 55
  br i1 %cmp71, label %lor.end, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.65
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 1
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load77 = load i32, i32* %42, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 58
  br i1 %cmp79, label %lor.end, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.73
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 1
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load85 = load i32, i32* %45, align 8
  %bf.clear86 = and i32 %bf.load85, 65535
  %cmp87 = icmp eq i32 %bf.clear86, 134
  br i1 %cmp87, label %lor.end, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %lor.lhs.false.81
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 1
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load93 = load i32, i32* %48, align 8
  %bf.clear94 = and i32 %bf.load93, 65535
  %cmp95 = icmp eq i32 %bf.clear94, 56
  br i1 %cmp95, label %lor.end, label %lor.rhs.97

lor.rhs.97:                                       ; preds = %lor.lhs.false.89
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 1
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load101 = load i32, i32* %51, align 8
  %bf.clear102 = and i32 %bf.load101, 65535
  %cmp103 = icmp eq i32 %bf.clear102, 140
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.97, %lor.lhs.false.89, %lor.lhs.false.81, %lor.lhs.false.73, %lor.lhs.false.65, %lor.lhs.false.57, %lor.lhs.false.49, %land.rhs
  %52 = phi i1 [ true, %lor.lhs.false.89 ], [ true, %lor.lhs.false.81 ], [ true, %lor.lhs.false.73 ], [ true, %lor.lhs.false.65 ], [ true, %lor.lhs.false.57 ], [ true, %lor.lhs.false.49 ], [ true, %land.rhs ], [ %cmp103, %lor.rhs.97 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.rhs
  %53 = phi i1 [ false, %lor.rhs ], [ %52, %lor.end ]
  br label %lor.end.105

lor.end.105:                                      ; preds = %land.end, %land.lhs.true.29
  %54 = phi i1 [ true, %land.lhs.true.29 ], [ %53, %land.end ]
  %lnot = xor i1 %54, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

sw.bb.106:                                        ; preds = %entry, %entry
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 1
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %call110 = call i32 @rtx_addr_can_trap_p(%struct.rtx_def* %56)
  store i32 %call110, i32* %retval
  br label %return

sw.bb.111:                                        ; preds = %entry, %entry, %entry, %entry, %entry
  %57 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 0
  %rtx114 = bitcast %union.rtunion_def* %arrayidx113 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx114, align 8
  %call115 = call i32 @rtx_addr_can_trap_p(%struct.rtx_def* %58)
  store i32 %call115, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.111, %sw.bb.106, %lor.end.105, %sw.bb.20, %if.end.19, %if.then.18, %if.then, %sw.bb.3, %sw.bb
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @rtx_addr_varies_p(%struct.rtx_def* %x, i32 %for_alias) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %for_alias.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %for_alias, i32* %for_alias.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp1 = icmp eq i32 %3, 66
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load3, 16
  %bf.clear4 = and i32 %bf.lshr, 255
  %cmp5 = icmp eq i32 %bf.clear4, 51
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.2
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = load i32, i32* %for_alias.addr, align 4
  %call = call i32 @rtx_varies_p(%struct.rtx_def* %7, i32 %8)
  %tobool = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.2
  %9 = phi i1 [ true, %if.then.2 ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load i32, i32* %code, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %11 = load i8*, i8** %arrayidx7, align 8
  store i8* %11, i8** %fmt, align 8
  %12 = load i32, i32* %code, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom8
  %13 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %13 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.end.6
  %14 = load i32, i32* %i, align 4
  %cmp10 = icmp sge i32 %14, 0
  br i1 %cmp10, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i8*, i8** %fmt, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 101
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 %idxprom18
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %21 = load i32, i32* %for_alias.addr, align 4
  %call22 = call i32 @rtx_addr_varies_p(%struct.rtx_def* %20, i32 %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.17
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.17
  br label %if.end.50

if.else:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load i8*, i8** %fmt, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %23, i64 %idxprom26
  %24 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %24 to i32
  %cmp29 = icmp eq i32 %conv28, 69
  br i1 %cmp29, label %if.then.31, label %if.end.49

if.then.31:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.then.31
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 %idxprom33
  %rtvec = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtvec_def**
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %28, i32 0, i32 0
  %29 = load i32, i32* %num_elem, align 4
  %cmp36 = icmp slt i32 %25, %29
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.32
  %30 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %31 to i64
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 %idxprom40
  %rtvec43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec43, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom39
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx44, align 8
  %35 = load i32, i32* %for_alias.addr, align 4
  %call45 = call i32 @rtx_addr_varies_p(%struct.rtx_def* %34, i32 %35)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body.38
  store i32 1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %for.body.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %if.else
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.25
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %37 = load i32, i32* %i, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.52, %if.then.47, %if.then.24, %lor.end, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i64 @get_integer_term(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 58
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 76
  br i1 %cmp3, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 54
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx15 to i64*
  %11 = load i64, i64* %rtwint, align 8
  %sub = sub nsw i64 0, %11
  store i64 %sub, i64* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load17 = load i32, i32* %13, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 75
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.34

land.lhs.true.20:                                 ; preds = %if.end.16
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load24 = load i32, i32* %16, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 54
  br i1 %cmp26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %land.lhs.true.20
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 1
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtwint33 = bitcast %union.rtunion_def* %arrayidx32 to i64*
  %19 = load i64, i64* %rtwint33, align 8
  store i64 %19, i64* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.20, %if.end.16
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.27, %if.then.10
  %20 = load i64, i64* %retval
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_related_value(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 58
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 75
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 54
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load14 = load i32, i32* %12, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 76
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.28

land.lhs.true.17:                                 ; preds = %if.else
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 1
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load21 = load i32, i32* %15, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 54
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %land.lhs.true.17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true.17, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.24, %if.then.10, %if.then
  %18 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %18
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_jump_table_offset(%struct.rtx_def* %insn, %struct.rtx_def** %earliest) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %earliest.addr = alloca %struct.rtx_def**, align 8
  %label = alloca %struct.rtx_def*, align 8
  %table = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %old_insn = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %old_x = alloca %struct.rtx_def*, align 8
  %y = alloca %struct.rtx_def*, align 8
  %old_y = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def** %earliest, %struct.rtx_def*** %earliest.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %label, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %lor.lhs.false.1, label %if.then

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %table, align 8
  %tobool5 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool5, label %lor.lhs.false.6, label %if.then

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %table, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load7 = load i32, i32* %7, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp ne i32 %bf.clear8, 33
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %8 = load %struct.rtx_def*, %struct.rtx_def** %table, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load14 = load i32, i32* %10, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp ne i32 %bf.clear15, 44
  br i1 %cmp16, label %land.lhs.true, label %lor.lhs.false.23

land.lhs.true:                                    ; preds = %lor.lhs.false.10
  %11 = load %struct.rtx_def*, %struct.rtx_def** %table, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load20 = load i32, i32* %13, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp ne i32 %bf.clear21, 45
  br i1 %cmp22, label %if.then, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true, %lor.lhs.false.10
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load24 = load i32, i32* %15, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %idxprom = sext i32 %bf.clear25 to i64
  %arrayidx26 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx26, align 1
  %conv = sext i8 %16 to i32
  %cmp27 = icmp eq i32 %conv, 105
  br i1 %cmp27, label %cond.true, label %cond.false.43

cond.true:                                        ; preds = %lor.lhs.false.23
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load32 = load i32, i32* %19, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 47
  br i1 %cmp34, label %cond.true.36, label %cond.false

cond.true.36:                                     ; preds = %cond.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 3
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 3
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %22, %struct.rtx_def* %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.36
  %cond = phi %struct.rtx_def* [ %21, %cond.true.36 ], [ %call, %cond.false ]
  br label %cond.end.44

cond.false.43:                                    ; preds = %lor.lhs.false.23
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.end
  %cond45 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.43 ]
  store %struct.rtx_def* %cond45, %struct.rtx_def** %set, align 8
  %tobool46 = icmp ne %struct.rtx_def* %cond45, null
  br i1 %tobool46, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.44, %land.lhs.true, %lor.lhs.false.6, %lor.lhs.false.1, %lor.lhs.false, %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %cond.end.44
  %25 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 1
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %x, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load50 = load i32, i32* %28, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 72
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.66

land.lhs.true.54:                                 ; preds = %if.end
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 2
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load58 = load i32, i32* %31, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 67
  br i1 %cmp60, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %land.lhs.true.54
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 1
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %x, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %land.lhs.true.54, %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %old_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.66
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load67 = load i32, i32* %35, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 61
  br i1 %cmp69, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %old_x, align 8
  %cmp71 = icmp ne %struct.rtx_def* %36, %37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %38 = phi i1 [ false, %for.cond ], [ %cmp71, %land.rhs ]
  br i1 %38, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %old_x, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call73 = call %struct.rtx_def* @find_last_value(%struct.rtx_def* %40, %struct.rtx_def** %insn.addr, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call73, %struct.rtx_def** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %41 = load %struct.rtx_def*, %struct.rtx_def** %table, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 3
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load77 = load i32, i32* %43, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 45
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.155

land.lhs.true.81:                                 ; preds = %for.end
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load82 = load i32, i32* %45, align 8
  %bf.clear83 = and i32 %bf.load82, 65535
  %cmp84 = icmp eq i32 %bf.clear83, 75
  br i1 %cmp84, label %if.then.91, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %land.lhs.true.81
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load87 = load i32, i32* %47, align 8
  %bf.clear88 = and i32 %bf.load87, 65535
  %cmp89 = icmp eq i32 %bf.clear88, 76
  br i1 %cmp89, label %if.then.91, label %if.end.155

if.then.91:                                       ; preds = %lor.lhs.false.86, %land.lhs.true.81
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.132, %if.then.91
  %48 = load i32, i32* %i, align 4
  %cmp93 = icmp slt i32 %48, 2
  br i1 %cmp93, label %for.body.95, label %for.end.133

for.body.95:                                      ; preds = %for.cond.92
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %old_insn, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %50 to i64
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 %idxprom96
  %rtx99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx99, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %y, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp100 = icmp eq %struct.rtx_def* %53, %54
  br i1 %cmp100, label %if.then.105, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %for.body.95
  %55 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8
  %cmp103 = icmp eq %struct.rtx_def* %55, %56
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %lor.lhs.false.102, %for.body.95
  br label %for.end.133

if.end.106:                                       ; preds = %lor.lhs.false.102
  store %struct.rtx_def* null, %struct.rtx_def** %old_y, align 8
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.117, %if.end.106
  %57 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load108 = load i32, i32* %58, align 8
  %bf.clear109 = and i32 %bf.load108, 65535
  %cmp110 = icmp eq i32 %bf.clear109, 61
  br i1 %cmp110, label %land.rhs.112, label %land.end.115

land.rhs.112:                                     ; preds = %for.cond.107
  %59 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %old_y, align 8
  %cmp113 = icmp ne %struct.rtx_def* %59, %60
  br label %land.end.115

land.end.115:                                     ; preds = %land.rhs.112, %for.cond.107
  %61 = phi i1 [ false, %for.cond.107 ], [ %cmp113, %land.rhs.112 ]
  br i1 %61, label %for.body.116, label %for.end.119

for.body.116:                                     ; preds = %land.end.115
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.116
  %62 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %old_y, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call118 = call %struct.rtx_def* @find_last_value(%struct.rtx_def* %63, %struct.rtx_def** %old_insn, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call118, %struct.rtx_def** %y, align 8
  br label %for.cond.107

for.end.119:                                      ; preds = %land.end.115
  %64 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load120 = load i32, i32* %65, align 8
  %bf.clear121 = and i32 %bf.load120, 65535
  %cmp122 = icmp eq i32 %bf.clear121, 67
  br i1 %cmp122, label %land.lhs.true.124, label %if.end.131

land.lhs.true.124:                                ; preds = %for.end.119
  %66 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 0
  %rtx127 = bitcast %union.rtunion_def* %arrayidx126 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx127, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %cmp128 = icmp eq %struct.rtx_def* %67, %68
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %land.lhs.true.124
  br label %for.end.133

if.end.131:                                       ; preds = %land.lhs.true.124, %for.end.119
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %69 = load i32, i32* %i, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.92

for.end.133:                                      ; preds = %if.then.130, %if.then.105, %for.cond.92
  %70 = load i32, i32* %i, align 4
  %cmp134 = icmp sge i32 %70, 2
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.end.133
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.137:                                       ; preds = %for.end.133
  %71 = load i32, i32* %i, align 4
  %sub = sub nsw i32 1, %71
  %idxprom138 = sext i32 %sub to i64
  %72 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 %idxprom138
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  store %struct.rtx_def* %73, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %old_x, align 8
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.152, %if.end.137
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load143 = load i32, i32* %75, align 8
  %bf.clear144 = and i32 %bf.load143, 65535
  %cmp145 = icmp eq i32 %bf.clear144, 61
  br i1 %cmp145, label %land.rhs.147, label %land.end.150

land.rhs.147:                                     ; preds = %for.cond.142
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %old_x, align 8
  %cmp148 = icmp ne %struct.rtx_def* %76, %77
  br label %land.end.150

land.end.150:                                     ; preds = %land.rhs.147, %for.cond.142
  %78 = phi i1 [ false, %for.cond.142 ], [ %cmp148, %land.rhs.147 ]
  br i1 %78, label %for.body.151, label %for.end.154

for.body.151:                                     ; preds = %land.end.150
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.151
  %79 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %old_x, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call153 = call %struct.rtx_def* @find_last_value(%struct.rtx_def* %80, %struct.rtx_def** %insn.addr, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call153, %struct.rtx_def** %x, align 8
  br label %for.cond.142

for.end.154:                                      ; preds = %land.end.150
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %lor.lhs.false.86, %for.end
  %81 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load156 = load i32, i32* %82, align 8
  %bf.clear157 = and i32 %bf.load156, 65535
  %cmp158 = icmp eq i32 %bf.clear157, 120
  br i1 %cmp158, label %if.then.165, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %if.end.155
  %83 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load161 = load i32, i32* %84, align 8
  %bf.clear162 = and i32 %bf.load161, 65535
  %cmp163 = icmp eq i32 %bf.clear162, 121
  br i1 %cmp163, label %if.then.165, label %if.end.182

if.then.165:                                      ; preds = %lor.lhs.false.160, %if.end.155
  %85 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 0
  %rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx168, align 8
  store %struct.rtx_def* %86, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %old_x, align 8
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.179, %if.then.165
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load170 = load i32, i32* %88, align 8
  %bf.clear171 = and i32 %bf.load170, 65535
  %cmp172 = icmp eq i32 %bf.clear171, 61
  br i1 %cmp172, label %land.rhs.174, label %land.end.177

land.rhs.174:                                     ; preds = %for.cond.169
  %89 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %old_x, align 8
  %cmp175 = icmp ne %struct.rtx_def* %89, %90
  br label %land.end.177

land.end.177:                                     ; preds = %land.rhs.174, %for.cond.169
  %91 = phi i1 [ false, %for.cond.169 ], [ %cmp175, %land.rhs.174 ]
  br i1 %91, label %for.body.178, label %for.end.181

for.body.178:                                     ; preds = %land.end.177
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.body.178
  %92 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %old_x, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call180 = call %struct.rtx_def* @find_last_value(%struct.rtx_def* %93, %struct.rtx_def** %insn.addr, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call180, %struct.rtx_def** %x, align 8
  br label %for.cond.169

for.end.181:                                      ; preds = %land.end.177
  br label %if.end.182

if.end.182:                                       ; preds = %for.end.181, %lor.lhs.false.160
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load183 = load i32, i32* %95, align 8
  %bf.clear184 = and i32 %bf.load183, 65535
  %cmp185 = icmp ne i32 %bf.clear184, 66
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.end.182
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.188:                                       ; preds = %if.end.182
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 0
  %rtx191 = bitcast %union.rtunion_def* %arrayidx190 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx191, align 8
  store %struct.rtx_def* %97, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %old_x, align 8
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.202, %if.end.188
  %98 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load193 = load i32, i32* %99, align 8
  %bf.clear194 = and i32 %bf.load193, 65535
  %cmp195 = icmp eq i32 %bf.clear194, 61
  br i1 %cmp195, label %land.rhs.197, label %land.end.200

land.rhs.197:                                     ; preds = %for.cond.192
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %old_x, align 8
  %cmp198 = icmp ne %struct.rtx_def* %100, %101
  br label %land.end.200

land.end.200:                                     ; preds = %land.rhs.197, %for.cond.192
  %102 = phi i1 [ false, %for.cond.192 ], [ %cmp198, %land.rhs.197 ]
  br i1 %102, label %for.body.201, label %for.end.204

for.body.201:                                     ; preds = %land.end.200
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.body.201
  %103 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %103, %struct.rtx_def** %old_x, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call203 = call %struct.rtx_def* @find_last_value(%struct.rtx_def* %104, %struct.rtx_def** %insn.addr, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call203, %struct.rtx_def** %x, align 8
  br label %for.cond.192

for.end.204:                                      ; preds = %land.end.200
  %105 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load205 = load i32, i32* %106, align 8
  %bf.clear206 = and i32 %bf.load205, 65535
  %cmp207 = icmp ne i32 %bf.clear206, 75
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %for.end.204
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.210:                                       ; preds = %for.end.204
  store i32 0, i32* %i, align 4
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.246, %if.end.210
  %107 = load i32, i32* %i, align 4
  %cmp212 = icmp slt i32 %107, 2
  br i1 %cmp212, label %for.body.214, label %for.end.248

for.body.214:                                     ; preds = %for.cond.211
  %108 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %108, %struct.rtx_def** %old_insn, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %109 to i64
  %110 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld216 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld216, i32 0, i64 %idxprom215
  %rtx218 = bitcast %union.rtunion_def* %arrayidx217 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx218, align 8
  store %struct.rtx_def* %111, %struct.rtx_def** %y, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %old_y, align 8
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.229, %for.body.214
  %112 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load220 = load i32, i32* %113, align 8
  %bf.clear221 = and i32 %bf.load220, 65535
  %cmp222 = icmp eq i32 %bf.clear221, 61
  br i1 %cmp222, label %land.rhs.224, label %land.end.227

land.rhs.224:                                     ; preds = %for.cond.219
  %114 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %old_y, align 8
  %cmp225 = icmp ne %struct.rtx_def* %114, %115
  br label %land.end.227

land.end.227:                                     ; preds = %land.rhs.224, %for.cond.219
  %116 = phi i1 [ false, %for.cond.219 ], [ %cmp225, %land.rhs.224 ]
  br i1 %116, label %for.body.228, label %for.end.231

for.body.228:                                     ; preds = %land.end.227
  br label %for.inc.229

for.inc.229:                                      ; preds = %for.body.228
  %117 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  store %struct.rtx_def* %117, %struct.rtx_def** %old_y, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call230 = call %struct.rtx_def* @find_last_value(%struct.rtx_def* %118, %struct.rtx_def** %old_insn, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call230, %struct.rtx_def** %y, align 8
  br label %for.cond.219

for.end.231:                                      ; preds = %land.end.227
  %119 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %bf.load232 = load i32, i32* %120, align 8
  %bf.clear233 = and i32 %bf.load232, 65535
  %cmp234 = icmp eq i32 %bf.clear233, 58
  br i1 %cmp234, label %land.lhs.true.241, label %lor.lhs.false.236

lor.lhs.false.236:                                ; preds = %for.end.231
  %121 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %122 = bitcast %struct.rtx_def* %121 to i32*
  %bf.load237 = load i32, i32* %122, align 8
  %bf.clear238 = and i32 %bf.load237, 65535
  %cmp239 = icmp eq i32 %bf.clear238, 67
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.245

land.lhs.true.241:                                ; preds = %lor.lhs.false.236, %for.end.231
  %123 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call242 = call i32 @reg_mentioned_p(%struct.rtx_def* %123, %struct.rtx_def* %124)
  %tobool243 = icmp ne i32 %call242, 0
  br i1 %tobool243, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %land.lhs.true.241
  br label %for.end.248

if.end.245:                                       ; preds = %land.lhs.true.241, %lor.lhs.false.236
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.245
  %125 = load i32, i32* %i, align 4
  %inc247 = add nsw i32 %125, 1
  store i32 %inc247, i32* %i, align 4
  br label %for.cond.211

for.end.248:                                      ; preds = %if.then.244, %for.cond.211
  %126 = load i32, i32* %i, align 4
  %cmp249 = icmp sge i32 %126, 2
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %for.end.248
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.252:                                       ; preds = %for.end.248
  %127 = load i32, i32* %i, align 4
  %sub253 = sub nsw i32 1, %127
  %idxprom254 = sext i32 %sub253 to i64
  %128 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 %idxprom254
  %rtx257 = bitcast %union.rtunion_def* %arrayidx256 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx257, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %x, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load258 = load i32, i32* %131, align 8
  %bf.clear259 = and i32 %bf.load258, 65535
  %cmp260 = icmp eq i32 %bf.clear259, 75
  br i1 %cmp260, label %if.then.267, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %if.end.252
  %132 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load263 = load i32, i32* %133, align 8
  %bf.clear264 = and i32 %bf.load263, 65535
  %cmp265 = icmp eq i32 %bf.clear264, 76
  br i1 %cmp265, label %if.then.267, label %if.end.288

if.then.267:                                      ; preds = %lor.lhs.false.262, %if.end.252
  store i32 0, i32* %i, align 4
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc.285, %if.then.267
  %134 = load i32, i32* %i, align 4
  %cmp269 = icmp slt i32 %134, 2
  br i1 %cmp269, label %for.body.271, label %for.end.287

for.body.271:                                     ; preds = %for.cond.268
  %135 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %135 to i64
  %136 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld273, i32 0, i64 %idxprom272
  %rtx275 = bitcast %union.rtunion_def* %arrayidx274 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx275, align 8
  %138 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8
  %cmp276 = icmp eq %struct.rtx_def* %137, %138
  br i1 %cmp276, label %if.then.278, label %if.end.284

if.then.278:                                      ; preds = %for.body.271
  %139 = load i32, i32* %i, align 4
  %sub279 = sub nsw i32 1, %139
  %idxprom280 = sext i32 %sub279 to i64
  %140 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx282 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld281, i32 0, i64 %idxprom280
  %rtx283 = bitcast %union.rtunion_def* %arrayidx282 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx283, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %x, align 8
  br label %for.end.287

if.end.284:                                       ; preds = %for.body.271
  br label %for.inc.285

for.inc.285:                                      ; preds = %if.end.284
  %142 = load i32, i32* %i, align 4
  %inc286 = add nsw i32 %142, 1
  store i32 %inc286, i32* %i, align 4
  br label %for.cond.268

for.end.287:                                      ; preds = %if.then.278, %for.cond.268
  br label %if.end.288

if.end.288:                                       ; preds = %for.end.287, %lor.lhs.false.262
  %143 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  %tobool289 = icmp ne %struct.rtx_def** %143, null
  br i1 %tobool289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.288
  %144 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %145 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  store %struct.rtx_def* %144, %struct.rtx_def** %145, align 8
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %if.end.288
  %146 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %146, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.291, %if.then.251, %if.then.209, %if.then.187, %if.then.136, %if.then
  %147 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %147
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %pat) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %set_verified = alloca i32, align 4
  %i = alloca i32, align 4
  %sub = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %set, align 8
  store i32 1, i32* %set_verified, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 39
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %4 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %4, i32 0, i32 0
  %5 = load i32, i32* %num_elem, align 4
  %cmp1 = icmp slt i32 %2, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtvec4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %sub, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load6 = load i32, i32* %11, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  switch i32 %bf.clear7, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 47, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body
  %12 = load i32, i32* %set_verified, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end.16, label %if.then.9

if.then.9:                                        ; preds = %sw.bb.8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %13, i32 10, %struct.rtx_def* %15)
  %tobool12 = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.9
  %16 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %call13 = call i32 @side_effects_p(%struct.rtx_def* %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  store %struct.rtx_def* null, %struct.rtx_def** %set, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then.9
  store i32 1, i32* %set_verified, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %sw.bb.8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool17 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %18 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %set, align 8
  store i32 0, i32* %set_verified, align 4
  br label %if.end.29

if.else.19:                                       ; preds = %if.end.16
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %call23 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %19, i32 10, %struct.rtx_def* %21)
  %tobool24 = icmp ne %struct.rtx_def* %call23, null
  br i1 %tobool24, label %lor.lhs.false, label %if.then.27

lor.lhs.false:                                    ; preds = %if.else.19
  %22 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %call25 = call i32 @side_effects_p(%struct.rtx_def* %22)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %if.else.19
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.18
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.29, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end, %entry
  %24 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.30, %sw.default, %if.then.27
  %25 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %25
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @find_last_value(%struct.rtx_def* %x, %struct.rtx_def** %pinsn, %struct.rtx_def* %valid_to, i32 %allow_hwreg) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %pinsn.addr = alloca %struct.rtx_def**, align 8
  %valid_to.addr = alloca %struct.rtx_def*, align 8
  %allow_hwreg.addr = alloca i32, align 4
  %p = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def** %pinsn, %struct.rtx_def*** %pinsn.addr, align 8
  store %struct.rtx_def* %valid_to, %struct.rtx_def** %valid_to.addr, align 8
  store i32 %allow_hwreg, i32* %allow_hwreg.addr, align 4
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %pinsn.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 36
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %idxprom = sext i32 %bf.clear2 to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv, 105
  br i1 %cmp4, label %if.then, label %if.end.80

if.then:                                          ; preds = %for.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load6 = load i32, i32* %11, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %idxprom8 = sext i32 %bf.clear7 to i64
  %arrayidx9 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 105
  br i1 %cmp11, label %cond.true, label %cond.false.27

cond.true:                                        ; preds = %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 3
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load16 = load i32, i32* %15, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 47
  br i1 %cmp18, label %cond.true.20, label %cond.false

cond.true.20:                                     ; preds = %cond.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 3
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %18 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 3
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %18, %struct.rtx_def* %20)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.20
  %cond = phi %struct.rtx_def* [ %17, %cond.true.20 ], [ %call, %cond.false ]
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.then
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.end
  %cond29 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.27 ]
  store %struct.rtx_def* %cond29, %struct.rtx_def** %set, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call30 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %21, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call30, %struct.rtx_def** %note, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool31 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool31, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %cond.end.28
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %call35 = call i32 @rtx_equal_p(%struct.rtx_def* %23, %struct.rtx_def* %25)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.75

if.then.37:                                       ; preds = %land.lhs.true
  %26 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %src, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool41 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool41, label %land.lhs.true.42, label %if.end

land.lhs.true.42:                                 ; preds = %if.then.37
  %29 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load46 = load i32, i32* %31, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp ne i32 %bf.clear47, 3
  br i1 %cmp48, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %land.lhs.true.42
  %32 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %src, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.50, %land.lhs.true.42, %if.then.37
  %34 = load %struct.rtx_def*, %struct.rtx_def** %valid_to.addr, align 8
  %cmp54 = icmp eq %struct.rtx_def* %34, null
  br i1 %cmp54, label %land.lhs.true.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %35 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 1
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %valid_to.addr, align 8
  %call59 = call i32 @modified_between_p(%struct.rtx_def* %35, %struct.rtx_def* %37, %struct.rtx_def* %38)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.74, label %land.lhs.true.61

land.lhs.true.61:                                 ; preds = %lor.lhs.false, %if.end
  %39 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load62 = load i32, i32* %40, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 61
  br i1 %cmp64, label %land.lhs.true.66, label %if.then.73

land.lhs.true.66:                                 ; preds = %land.lhs.true.61
  %41 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx68 to i32*
  %42 = load i32, i32* %rtuint, align 4
  %cmp69 = icmp ult i32 %42, 53
  br i1 %cmp69, label %lor.lhs.false.71, label %if.then.73

lor.lhs.false.71:                                 ; preds = %land.lhs.true.66
  %43 = load i32, i32* %allow_hwreg.addr, align 4
  %tobool72 = icmp ne i32 %43, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %lor.lhs.false.71, %land.lhs.true.66, %land.lhs.true.61
  %44 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %45 = load %struct.rtx_def**, %struct.rtx_def*** %pinsn.addr, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %45, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %retval
  br label %return

if.end.74:                                        ; preds = %lor.lhs.false.71, %lor.lhs.false
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true, %cond.end.28
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call76 = call i32 @reg_set_p(%struct.rtx_def* %47, %struct.rtx_def* %48)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  br label %for.end

if.end.79:                                        ; preds = %if.end.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %49 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 1
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.78, %land.end
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.73
  %52 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %52
}

; Function Attrs: nounwind uwtable
define i32 @reg_mentioned_p(%struct.rtx_def* %reg, %struct.rtx_def* %in) #0 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %in.addr = alloca %struct.rtx_def*, align 8
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %in, %struct.rtx_def** %in.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp4 = icmp eq i32 %bf.clear, 67
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp6 = icmp eq %struct.rtx_def* %5, %7
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load8 = load i32, i32* %9, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  store i32 %bf.clear9, i32* %code, align 4
  %10 = load i32, i32* %code, align 4
  switch i32 %10, label %sw.default [
    i32 61, label %sw.bb
    i32 62, label %sw.bb.21
    i32 69, label %sw.bb.21
    i32 59, label %sw.bb.21
    i32 54, label %sw.bb.22
    i32 56, label %sw.bb.37
    i32 55, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %if.end.7
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load10 = load i32, i32* %12, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 61
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %13 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %14 = load i32, i32* %rtuint, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtuint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %16 = load i32, i32* %rtuint18, align 4
  %cmp19 = icmp eq i32 %14, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %17 = phi i1 [ false, %sw.bb ], [ %cmp19, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %if.end.7, %if.end.7, %if.end.7
  store i32 0, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %if.end.7
  %18 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load23 = load i32, i32* %19, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 54
  br i1 %cmp25, label %land.rhs.27, label %land.end.35

land.rhs.27:                                      ; preds = %sw.bb.22
  %20 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx29 to i64*
  %21 = load i64, i64* %rtwint, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtwint32 = bitcast %union.rtunion_def* %arrayidx31 to i64*
  %23 = load i64, i64* %rtwint32, align 8
  %cmp33 = icmp eq i64 %21, %23
  br label %land.end.35

land.end.35:                                      ; preds = %land.rhs.27, %sw.bb.22
  %24 = phi i1 [ false, %sw.bb.22 ], [ %cmp33, %land.rhs.27 ]
  %land.ext36 = zext i1 %24 to i32
  store i32 %land.ext36, i32* %retval
  br label %return

sw.bb.37:                                         ; preds = %if.end.7, %if.end.7
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load38 = load i32, i32* %26, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %27 = load i32, i32* %code, align 4
  %cmp40 = icmp eq i32 %bf.clear39, %27
  br i1 %cmp40, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %sw.epilog
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %28, %struct.rtx_def* %29)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true, %sw.epilog
  %30 = load i32, i32* %code, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %31 = load i8*, i8** %arrayidx44, align 8
  store i8* %31, i8** %fmt, align 8
  %32 = load i32, i32* %code, align 4
  %idxprom45 = sext i32 %32 to i64
  %arrayidx46 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom45
  %33 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %33 to i32
  %sub = sub nsw i32 %conv47, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %if.end.43
  %34 = load i32, i32* %i, align 4
  %cmp48 = icmp sge i32 %34, 0
  br i1 %cmp48, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %35 to i64
  %36 = load i8*, i8** %fmt, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %36, i64 %idxprom50
  %37 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %37 to i32
  %cmp53 = icmp eq i32 %conv52, 69
  br i1 %cmp53, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %38 to i64
  %39 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 %idxprom56
  %rtvec = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtvec_def**
  %40 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %40, i32 0, i32 0
  %41 = load i32, i32* %num_elem, align 4
  %sub59 = sub nsw i32 %41, 1
  store i32 %sub59, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %if.then.55
  %42 = load i32, i32* %j, align 4
  %cmp61 = icmp sge i32 %42, 0
  br i1 %cmp61, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.60
  %43 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %44 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 %idxprom65
  %rtvec68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtvec_def**
  %47 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec68, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %47, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom64
  %48 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx69, align 8
  %call70 = call i32 @reg_mentioned_p(%struct.rtx_def* %43, %struct.rtx_def* %48)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %for.body.63
  store i32 1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %for.body.63
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %49 = load i32, i32* %j, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.60

for.end:                                          ; preds = %for.cond.60
  br label %if.end.88

if.else:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %50 to i64
  %51 = load i8*, i8** %fmt, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %51, i64 %idxprom74
  %52 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %52 to i32
  %cmp77 = icmp eq i32 %conv76, 101
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.87

land.lhs.true.79:                                 ; preds = %if.else
  %53 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %54 to i64
  %55 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 %idxprom80
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %call84 = call i32 @reg_mentioned_p(%struct.rtx_def* %53, %struct.rtx_def* %56)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %land.lhs.true.79
  store i32 1, i32* %retval
  br label %return

if.end.87:                                        ; preds = %land.lhs.true.79, %if.else
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %for.end
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %57 = load i32, i32* %i, align 4
  %dec90 = add nsw i32 %57, -1
  store i32 %dec90, i32* %i, align 4
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.91, %if.then.86, %if.then.72, %if.then.42, %sw.bb.37, %land.end.35, %sw.bb.21, %land.end, %if.then.5, %if.then.2, %if.then
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define i32 @count_occurrences(%struct.rtx_def* %x, %struct.rtx_def* %find, i32 %count_dest) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %find.addr = alloca %struct.rtx_def*, align 8
  %count_dest.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %find, %struct.rtx_def** %find.addr, align 8
  store i32 %count_dest, i32* %count_dest.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %find.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 61, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 36, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 66, label %sw.bb.1
    i32 47, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %find.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 66
  br i1 %cmp4, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %sw.bb.1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %find.addr, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %7, %struct.rtx_def* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %sw.bb.1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %find.addr, align 8
  %cmp8 = icmp eq %struct.rtx_def* %10, %11
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.16

land.lhs.true.9:                                  ; preds = %sw.bb.7
  %12 = load i32, i32* %count_dest.addr, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.end.16, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.9
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %find.addr, align 8
  %16 = load i32, i32* %count_dest.addr, align 4
  %call15 = call i32 @count_occurrences(%struct.rtx_def* %14, %struct.rtx_def* %15, i32 %16)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.9, %sw.bb.7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.16, %if.end.6
  %17 = load i32, i32* %code, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %18 = load i8*, i8** %arrayidx17, align 8
  store i8* %18, i8** %format_ptr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %sw.epilog
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %code, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom18
  %21 = load i8, i8* %arrayidx19, align 1
  %conv = zext i8 %21 to i32
  %cmp20 = icmp slt i32 %19, %conv
  br i1 %cmp20, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %23 = load i8, i8* %22, align 1
  %conv22 = sext i8 %23 to i32
  switch i32 %conv22, label %sw.epilog.45 [
    i32 101, label %sw.bb.23
    i32 69, label %sw.bb.29
  ]

sw.bb.23:                                         ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 %idxprom24
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %find.addr, align 8
  %28 = load i32, i32* %count_dest.addr, align 4
  %call28 = call i32 @count_occurrences(%struct.rtx_def* %26, %struct.rtx_def* %27, i32 %28)
  %29 = load i32, i32* %count, align 4
  %add = add nsw i32 %29, %call28
  store i32 %add, i32* %count, align 4
  br label %sw.epilog.45

sw.bb.29:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %sw.bb.29
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 %idxprom31
  %rtvec = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 0
  %34 = load i32, i32* %num_elem, align 4
  %cmp34 = icmp slt i32 %30, %34
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.30
  %35 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %36 to i64
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 %idxprom38
  %rtvec41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtvec_def**
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec41, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom37
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx42, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %find.addr, align 8
  %41 = load i32, i32* %count_dest.addr, align 4
  %call43 = call i32 @count_occurrences(%struct.rtx_def* %39, %struct.rtx_def* %40, i32 %41)
  %42 = load i32, i32* %count, align 4
  %add44 = add nsw i32 %42, %call43
  store i32 %add44, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %43 = load i32, i32* %j, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %sw.epilog.45

sw.epilog.45:                                     ; preds = %for.body, %for.end, %sw.bb.23
  br label %for.inc.46

for.inc.46:                                       ; preds = %sw.epilog.45
  %44 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %44, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  %45 = load i32, i32* %count, align 4
  store i32 %45, i32* %retval
  br label %return

return:                                           ; preds = %for.end.48, %if.then.11, %if.then.5, %sw.bb, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @no_labels_between_p(%struct.rtx_def* %beg, %struct.rtx_def* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %beg.addr = alloca %struct.rtx_def*, align 8
  %end.addr = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %beg, %struct.rtx_def** %beg.addr, align 8
  store %struct.rtx_def* %end, %struct.rtx_def** %end.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %beg.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %beg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp1 = icmp ne %struct.rtx_def* %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp eq i32 %bf.clear, 36
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 2
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @no_jumps_between_p(%struct.rtx_def* %beg, %struct.rtx_def* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %beg.addr = alloca %struct.rtx_def*, align 8
  %end.addr = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %beg, %struct.rtx_def** %beg.addr, align 8
  store %struct.rtx_def* %end, %struct.rtx_def** %end.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %beg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp = icmp ne %struct.rtx_def* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 33
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @reg_used_between_p(%struct.rtx_def* %reg, %struct.rtx_def* %from_insn, %struct.rtx_def* %to_insn) #0 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %from_insn.addr = alloca %struct.rtx_def*, align 8
  %to_insn.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %from_insn, %struct.rtx_def** %from_insn.addr, align 8
  store %struct.rtx_def* %to_insn, %struct.rtx_def** %to_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from_insn.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %to_insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %from_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %to_insn.addr, align 8
  %cmp1 = icmp ne %struct.rtx_def* %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx2 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 105
  br i1 %cmp3, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 3
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %call = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %9, %struct.rtx_def* %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load8 = load i32, i32* %13, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 34
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.19

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call13 = call i32 @find_reg_fusage(%struct.rtx_def* %14, i32 48, %struct.rtx_def* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.18, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.12
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call16 = call i32 @find_reg_fusage(%struct.rtx_def* %16, i32 49, %struct.rtx_def* %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.15, %land.lhs.true.12, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false.15, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 2
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.18, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @reg_overlap_mentioned_p(%struct.rtx_def* %x, %struct.rtx_def* %in) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %in.addr = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %endregno = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %i178 = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %in, %struct.rtx_def** %in.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 67
  br i1 %cmp3, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 68
  br i1 %cmp6, label %if.then.63, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load8 = load i32, i32* %9, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 54
  br i1 %cmp10, label %if.then.63, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load12 = load i32, i32* %11, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 55
  br i1 %cmp14, label %if.then.63, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load16 = load i32, i32* %13, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 58
  br i1 %cmp18, label %if.then.63, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load20 = load i32, i32* %15, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 134
  br i1 %cmp22, label %if.then.63, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.19
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load24 = load i32, i32* %17, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 56
  br i1 %cmp26, label %if.then.63, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.23
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load28 = load i32, i32* %19, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 140
  br i1 %cmp30, label %if.then.63, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %20 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load32 = load i32, i32* %21, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 67
  br i1 %cmp34, label %if.then.63, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.31
  %22 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load36 = load i32, i32* %23, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 68
  br i1 %cmp38, label %if.then.63, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.35
  %24 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load40 = load i32, i32* %25, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 54
  br i1 %cmp42, label %if.then.63, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.39
  %26 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load44 = load i32, i32* %27, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 55
  br i1 %cmp46, label %if.then.63, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.43
  %28 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load48 = load i32, i32* %29, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 58
  br i1 %cmp50, label %if.then.63, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %30 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load52 = load i32, i32* %31, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 134
  br i1 %cmp54, label %if.then.63, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.51
  %32 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load56 = load i32, i32* %33, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 56
  br i1 %cmp58, label %if.then.63, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.55
  %34 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load60 = load i32, i32* %35, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp eq i32 %bf.clear61, 140
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false.55, %lor.lhs.false.51, %lor.lhs.false.47, %lor.lhs.false.43, %lor.lhs.false.39, %lor.lhs.false.35, %lor.lhs.false.31, %lor.lhs.false.27, %lor.lhs.false.23, %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false.7, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %lor.lhs.false.59
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load65 = load i32, i32* %37, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  switch i32 %bf.clear66, label %sw.default [
    i32 63, label %sw.bb
    i32 61, label %sw.bb.75
    i32 66, label %sw.bb.142
    i32 62, label %sw.bb.175
    i32 59, label %sw.bb.175
    i32 69, label %sw.bb.175
    i32 39, label %sw.bb.177
  ]

sw.bb:                                            ; preds = %if.end.64
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx71 to i32*
  %40 = load i32, i32* %rtuint, align 4
  store i32 %40, i32* %regno, align 4
  %41 = load i32, i32* %regno, align 4
  %cmp72 = icmp ult i32 %41, 53
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %sw.bb
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @subreg_regno(%struct.rtx_def* %42)
  store i32 %call, i32* %regno, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %sw.bb
  br label %do_reg

sw.bb.75:                                         ; preds = %if.end.64
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtuint78 = bitcast %union.rtunion_def* %arrayidx77 to i32*
  %44 = load i32, i32* %rtuint78, align 4
  store i32 %44, i32* %regno, align 4
  br label %do_reg

do_reg:                                           ; preds = %sw.bb.75, %if.end.74
  %45 = load i32, i32* %regno, align 4
  %46 = load i32, i32* %regno, align 4
  %cmp79 = icmp ult i32 %46, 53
  br i1 %cmp79, label %cond.true, label %cond.false.137

cond.true:                                        ; preds = %do_reg
  %47 = load i32, i32* %regno, align 4
  %cmp80 = icmp uge i32 %47, 8
  br i1 %cmp80, label %land.lhs.true, label %lor.lhs.false.82

land.lhs.true:                                    ; preds = %cond.true
  %48 = load i32, i32* %regno, align 4
  %cmp81 = icmp ule i32 %48, 15
  br i1 %cmp81, label %cond.true.94, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %land.lhs.true, %cond.true
  %49 = load i32, i32* %regno, align 4
  %cmp83 = icmp uge i32 %49, 21
  br i1 %cmp83, label %land.lhs.true.84, label %lor.lhs.false.86

land.lhs.true.84:                                 ; preds = %lor.lhs.false.82
  %50 = load i32, i32* %regno, align 4
  %cmp85 = icmp ule i32 %50, 28
  br i1 %cmp85, label %cond.true.94, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %land.lhs.true.84, %lor.lhs.false.82
  %51 = load i32, i32* %regno, align 4
  %cmp87 = icmp uge i32 %51, 45
  br i1 %cmp87, label %land.lhs.true.88, label %lor.lhs.false.90

land.lhs.true.88:                                 ; preds = %lor.lhs.false.86
  %52 = load i32, i32* %regno, align 4
  %cmp89 = icmp ule i32 %52, 52
  br i1 %cmp89, label %cond.true.94, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %land.lhs.true.88, %lor.lhs.false.86
  %53 = load i32, i32* %regno, align 4
  %cmp91 = icmp uge i32 %53, 29
  br i1 %cmp91, label %land.lhs.true.92, label %cond.false

land.lhs.true.92:                                 ; preds = %lor.lhs.false.90
  %54 = load i32, i32* %regno, align 4
  %cmp93 = icmp ule i32 %54, 36
  br i1 %cmp93, label %cond.true.94, label %cond.false

cond.true.94:                                     ; preds = %land.lhs.true.92, %land.lhs.true.88, %land.lhs.true.84, %land.lhs.true
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load95 = load i32, i32* %56, align 8
  %bf.lshr = lshr i32 %bf.load95, 16
  %bf.clear96 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear96 to i64
  %arrayidx97 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %57 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp eq i32 %57, 5
  br i1 %cmp98, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.94
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load99 = load i32, i32* %59, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 16
  %bf.clear101 = and i32 %bf.lshr100, 255
  %idxprom102 = sext i32 %bf.clear101 to i64
  %arrayidx103 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom102
  %60 = load i32, i32* %arrayidx103, align 4
  %cmp104 = icmp eq i32 %60, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.94
  %61 = phi i1 [ true, %cond.true.94 ], [ %cmp104, %lor.rhs ]
  %cond = select i1 %61, i32 2, i32 1
  br label %cond.end.135

cond.false:                                       ; preds = %land.lhs.true.92, %lor.lhs.false.90
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load105 = load i32, i32* %63, align 8
  %bf.lshr106 = lshr i32 %bf.load105, 16
  %bf.clear107 = and i32 %bf.lshr106, 255
  %cmp108 = icmp eq i32 %bf.clear107, 18
  br i1 %cmp108, label %cond.true.109, label %cond.false.111

cond.true.109:                                    ; preds = %cond.false
  %64 = load i32, i32* @target_flags, align 4
  %and = and i32 %64, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond110 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.133

cond.false.111:                                   ; preds = %cond.false
  %65 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load112 = load i32, i32* %66, align 8
  %bf.lshr113 = lshr i32 %bf.load112, 16
  %bf.clear114 = and i32 %bf.lshr113, 255
  %cmp115 = icmp eq i32 %bf.clear114, 24
  br i1 %cmp115, label %cond.true.116, label %cond.false.120

cond.true.116:                                    ; preds = %cond.false.111
  %67 = load i32, i32* @target_flags, align 4
  %and117 = and i32 %67, 33554432
  %tobool118 = icmp ne i32 %and117, 0
  %cond119 = select i1 %tobool118, i32 4, i32 6
  br label %cond.end

cond.false.120:                                   ; preds = %cond.false.111
  %68 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load121 = load i32, i32* %69, align 8
  %bf.lshr122 = lshr i32 %bf.load121, 16
  %bf.clear123 = and i32 %bf.lshr122, 255
  %idxprom124 = sext i32 %bf.clear123 to i64
  %arrayidx125 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom124
  %70 = load i8, i8* %arrayidx125, align 1
  %conv = zext i8 %70 to i32
  %71 = load i32, i32* @target_flags, align 4
  %and126 = and i32 %71, 33554432
  %tobool127 = icmp ne i32 %and126, 0
  %cond128 = select i1 %tobool127, i32 8, i32 4
  %add = add nsw i32 %conv, %cond128
  %sub = sub nsw i32 %add, 1
  %72 = load i32, i32* @target_flags, align 4
  %and129 = and i32 %72, 33554432
  %tobool130 = icmp ne i32 %and129, 0
  %cond131 = select i1 %tobool130, i32 8, i32 4
  %div = sdiv i32 %sub, %cond131
  br label %cond.end

cond.end:                                         ; preds = %cond.false.120, %cond.true.116
  %cond132 = phi i32 [ %cond119, %cond.true.116 ], [ %div, %cond.false.120 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end, %cond.true.109
  %cond134 = phi i32 [ %cond110, %cond.true.109 ], [ %cond132, %cond.end ]
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.133, %lor.end
  %cond136 = phi i32 [ %cond, %lor.end ], [ %cond134, %cond.end.133 ]
  br label %cond.end.138

cond.false.137:                                   ; preds = %do_reg
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.end.135
  %cond139 = phi i32 [ %cond136, %cond.end.135 ], [ 1, %cond.false.137 ]
  %add140 = add i32 %45, %cond139
  store i32 %add140, i32* %endregno, align 4
  %73 = load i32, i32* %regno, align 4
  %74 = load i32, i32* %endregno, align 4
  %75 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %call141 = call i32 @refers_to_regno_p(i32 %73, i32 %74, %struct.rtx_def* %75, %struct.rtx_def** null)
  store i32 %call141, i32* %retval
  br label %return

sw.bb.142:                                        ; preds = %if.end.64
  %76 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load143 = load i32, i32* %77, align 8
  %bf.clear144 = and i32 %bf.load143, 65535
  %cmp145 = icmp eq i32 %bf.clear144, 66
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %sw.bb.142
  store i32 1, i32* %retval
  br label %return

if.end.148:                                       ; preds = %sw.bb.142
  %78 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load149 = load i32, i32* %79, align 8
  %bf.clear150 = and i32 %bf.load149, 65535
  %idxprom151 = sext i32 %bf.clear150 to i64
  %arrayidx152 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom151
  %80 = load i8*, i8** %arrayidx152, align 8
  store i8* %80, i8** %fmt, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load153 = load i32, i32* %82, align 8
  %bf.clear154 = and i32 %bf.load153, 65535
  %idxprom155 = sext i32 %bf.clear154 to i64
  %arrayidx156 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom155
  %83 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %83 to i32
  %sub158 = sub nsw i32 %conv157, 1
  store i32 %sub158, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.148
  %84 = load i32, i32* %i, align 4
  %cmp159 = icmp sge i32 %84, 0
  br i1 %cmp159, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %85 to i64
  %86 = load i8*, i8** %fmt, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %86, i64 %idxprom161
  %87 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %87 to i32
  %cmp164 = icmp eq i32 %conv163, 101
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.174

land.lhs.true.166:                                ; preds = %for.body
  %88 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %89 to i64
  %90 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 %idxprom167
  %rtx170 = bitcast %union.rtunion_def* %arrayidx169 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx170, align 8
  %call171 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %88, %struct.rtx_def* %91)
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %land.lhs.true.166
  store i32 1, i32* %retval
  br label %return

if.end.174:                                       ; preds = %land.lhs.true.166, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.174
  %92 = load i32, i32* %i, align 4
  %dec = add nsw i32 %92, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

sw.bb.175:                                        ; preds = %if.end.64, %if.end.64, %if.end.64
  %93 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %call176 = call i32 @reg_mentioned_p(%struct.rtx_def* %93, %struct.rtx_def* %94)
  store i32 %call176, i32* %retval
  br label %return

sw.bb.177:                                        ; preds = %if.end.64
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx180 to %struct.rtvec_def**
  %96 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %96, i32 0, i32 0
  %97 = load i32, i32* %num_elem, align 4
  %sub181 = sub nsw i32 %97, 1
  store i32 %sub181, i32* %i178, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.210, %sw.bb.177
  %98 = load i32, i32* %i178, align 4
  %cmp183 = icmp sge i32 %98, 0
  br i1 %cmp183, label %for.body.185, label %for.end.212

for.body.185:                                     ; preds = %for.cond.182
  %99 = load i32, i32* %i178, align 4
  %idxprom186 = sext i32 %99 to i64
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld187, i32 0, i64 0
  %rtvec189 = bitcast %union.rtunion_def* %arrayidx188 to %struct.rtvec_def**
  %101 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec189, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %101, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom186
  %102 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx190, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 0
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  %cmp194 = icmp ne %struct.rtx_def* %103, null
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.209

land.lhs.true.196:                                ; preds = %for.body.185
  %104 = load i32, i32* %i178, align 4
  %idxprom197 = sext i32 %104 to i64
  %105 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 0
  %rtvec200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtvec_def**
  %106 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec200, align 8
  %elem201 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %106, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem201, i32 0, i64 %idxprom197
  %107 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx202, align 8
  %fld203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld203, i32 0, i64 0
  %rtx205 = bitcast %union.rtunion_def* %arrayidx204 to %struct.rtx_def**
  %108 = load %struct.rtx_def*, %struct.rtx_def** %rtx205, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %call206 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %108, %struct.rtx_def* %109)
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %land.lhs.true.196
  store i32 1, i32* %retval
  br label %return

if.end.209:                                       ; preds = %land.lhs.true.196, %for.body.185
  br label %for.inc.210

for.inc.210:                                      ; preds = %if.end.209
  %110 = load i32, i32* %i178, align 4
  %dec211 = add nsw i32 %110, -1
  store i32 %dec211, i32* %i178, align 4
  br label %for.cond.182

for.end.212:                                      ; preds = %for.cond.182
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 1459, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.reg_overlap_mentioned_p, i32 0, i32 0)) #3
  unreachable

return:                                           ; preds = %for.end.212, %if.then.208, %sw.bb.175, %for.end, %if.then.173, %if.then.147, %cond.end.138, %if.then.63
  %111 = load i32, i32* %retval
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define i32 @find_reg_fusage(%struct.rtx_def* %insn, i32 %code, %struct.rtx_def* %datum) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %datum.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %end_regno = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %datum, %struct.rtx_def** %datum.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 1862, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.find_reg_fusage, i32 0, i32 0)) #3
  unreachable

if.end.2:                                         ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load3 = load i32, i32* %4, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp ne i32 %bf.clear4, 61
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.2
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %7 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool7 = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load11 = load i32, i32* %10, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %11 = load i32, i32* %code.addr, align 4
  %cmp13 = icmp eq i32 %bf.clear12, %11
  br i1 %cmp13, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %12, %struct.rtx_def* %15)
  %tobool20 = icmp ne i32 %call, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %16 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.99

if.else:                                          ; preds = %if.end.2
  %18 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx27 to i32*
  %19 = load i32, i32* %rtuint, align 4
  store i32 %19, i32* %regno, align 4
  %20 = load i32, i32* %regno, align 4
  %cmp28 = icmp ult i32 %20, 53
  br i1 %cmp28, label %if.then.29, label %if.end.98

if.then.29:                                       ; preds = %if.else
  %21 = load i32, i32* %regno, align 4
  %22 = load i32, i32* %regno, align 4
  %cmp30 = icmp uge i32 %22, 8
  br i1 %cmp30, label %land.lhs.true.31, label %lor.lhs.false

land.lhs.true.31:                                 ; preds = %if.then.29
  %23 = load i32, i32* %regno, align 4
  %cmp32 = icmp ule i32 %23, 15
  br i1 %cmp32, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.31, %if.then.29
  %24 = load i32, i32* %regno, align 4
  %cmp33 = icmp uge i32 %24, 21
  br i1 %cmp33, label %land.lhs.true.34, label %lor.lhs.false.36

land.lhs.true.34:                                 ; preds = %lor.lhs.false
  %25 = load i32, i32* %regno, align 4
  %cmp35 = icmp ule i32 %25, 28
  br i1 %cmp35, label %cond.true, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true.34, %lor.lhs.false
  %26 = load i32, i32* %regno, align 4
  %cmp37 = icmp uge i32 %26, 45
  br i1 %cmp37, label %land.lhs.true.38, label %lor.lhs.false.40

land.lhs.true.38:                                 ; preds = %lor.lhs.false.36
  %27 = load i32, i32* %regno, align 4
  %cmp39 = icmp ule i32 %27, 52
  br i1 %cmp39, label %cond.true, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %land.lhs.true.38, %lor.lhs.false.36
  %28 = load i32, i32* %regno, align 4
  %cmp41 = icmp uge i32 %28, 29
  br i1 %cmp41, label %land.lhs.true.42, label %cond.false

land.lhs.true.42:                                 ; preds = %lor.lhs.false.40
  %29 = load i32, i32* %regno, align 4
  %cmp43 = icmp ule i32 %29, 36
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.42, %land.lhs.true.38, %land.lhs.true.34, %land.lhs.true.31
  %30 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load44 = load i32, i32* %31, align 8
  %bf.lshr = lshr i32 %bf.load44, 16
  %bf.clear45 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear45 to i64
  %arrayidx46 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %32 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp eq i32 %32, 5
  br i1 %cmp47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %33 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load48 = load i32, i32* %34, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 16
  %bf.clear50 = and i32 %bf.lshr49, 255
  %idxprom51 = sext i32 %bf.clear50 to i64
  %arrayidx52 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom51
  %35 = load i32, i32* %arrayidx52, align 4
  %cmp53 = icmp eq i32 %35, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %36 = phi i1 [ true, %cond.true ], [ %cmp53, %lor.rhs ]
  %cond = select i1 %36, i32 2, i32 1
  br label %cond.end.85

cond.false:                                       ; preds = %land.lhs.true.42, %lor.lhs.false.40
  %37 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load54 = load i32, i32* %38, align 8
  %bf.lshr55 = lshr i32 %bf.load54, 16
  %bf.clear56 = and i32 %bf.lshr55, 255
  %cmp57 = icmp eq i32 %bf.clear56, 18
  br i1 %cmp57, label %cond.true.58, label %cond.false.61

cond.true.58:                                     ; preds = %cond.false
  %39 = load i32, i32* @target_flags, align 4
  %and = and i32 %39, 33554432
  %tobool59 = icmp ne i32 %and, 0
  %cond60 = select i1 %tobool59, i32 2, i32 3
  br label %cond.end.83

cond.false.61:                                    ; preds = %cond.false
  %40 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load62 = load i32, i32* %41, align 8
  %bf.lshr63 = lshr i32 %bf.load62, 16
  %bf.clear64 = and i32 %bf.lshr63, 255
  %cmp65 = icmp eq i32 %bf.clear64, 24
  br i1 %cmp65, label %cond.true.66, label %cond.false.70

cond.true.66:                                     ; preds = %cond.false.61
  %42 = load i32, i32* @target_flags, align 4
  %and67 = and i32 %42, 33554432
  %tobool68 = icmp ne i32 %and67, 0
  %cond69 = select i1 %tobool68, i32 4, i32 6
  br label %cond.end

cond.false.70:                                    ; preds = %cond.false.61
  %43 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load71 = load i32, i32* %44, align 8
  %bf.lshr72 = lshr i32 %bf.load71, 16
  %bf.clear73 = and i32 %bf.lshr72, 255
  %idxprom74 = sext i32 %bf.clear73 to i64
  %arrayidx75 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom74
  %45 = load i8, i8* %arrayidx75, align 1
  %conv = zext i8 %45 to i32
  %46 = load i32, i32* @target_flags, align 4
  %and76 = and i32 %46, 33554432
  %tobool77 = icmp ne i32 %and76, 0
  %cond78 = select i1 %tobool77, i32 8, i32 4
  %add = add nsw i32 %conv, %cond78
  %sub = sub nsw i32 %add, 1
  %47 = load i32, i32* @target_flags, align 4
  %and79 = and i32 %47, 33554432
  %tobool80 = icmp ne i32 %and79, 0
  %cond81 = select i1 %tobool80, i32 8, i32 4
  %div = sdiv i32 %sub, %cond81
  br label %cond.end

cond.end:                                         ; preds = %cond.false.70, %cond.true.66
  %cond82 = phi i32 [ %cond69, %cond.true.66 ], [ %div, %cond.false.70 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end, %cond.true.58
  %cond84 = phi i32 [ %cond60, %cond.true.58 ], [ %cond82, %cond.end ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %lor.end
  %cond86 = phi i32 [ %cond, %lor.end ], [ %cond84, %cond.end.83 ]
  %add87 = add i32 %21, %cond86
  store i32 %add87, i32* %end_regno, align 4
  %48 = load i32, i32* %regno, align 4
  store i32 %48, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.96, %cond.end.85
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %end_regno, align 4
  %cmp89 = icmp ult i32 %49, %50
  br i1 %cmp89, label %for.body.91, label %for.end.97

for.body.91:                                      ; preds = %for.cond.88
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %52 = load i32, i32* %code.addr, align 4
  %53 = load i32, i32* %i, align 4
  %call92 = call i32 @find_regno_fusage(%struct.rtx_def* %51, i32 %52, i32 %53)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %for.body.91
  store i32 1, i32* %retval
  br label %return

if.end.95:                                        ; preds = %for.body.91
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %54 = load i32, i32* %i, align 4
  %inc = add i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.88

for.end.97:                                       ; preds = %for.cond.88
  br label %if.end.98

if.end.98:                                        ; preds = %for.end.97, %if.else
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.99, %if.then.94, %if.then.21, %if.then
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define i32 @reg_referenced_p(%struct.rtx_def* %x, %struct.rtx_def* %body) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %body.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %body, %struct.rtx_def** %body.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 47, label %sw.bb
    i32 41, label %sw.bb.78
    i32 50, label %sw.bb.93
    i32 48, label %sw.bb.93
    i32 72, label %sw.bb.93
    i32 52, label %sw.bb.95
    i32 46, label %sw.bb.100
    i32 42, label %sw.bb.105
    i32 43, label %sw.bb.105
    i32 39, label %sw.bb.128
    i32 49, label %sw.bb.151
    i32 38, label %sw.bb.171
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %2, %struct.rtx_def* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %5 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp = icmp ne i32 %bf.clear5, 69
  br i1 %cmp, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load9 = load i32, i32* %10, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp ne i32 %bf.clear10, 59
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.77

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load16 = load i32, i32* %13, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp ne i32 %bf.clear17, 61
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.77

land.lhs.true.19:                                 ; preds = %land.lhs.true.12
  %14 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load23 = load i32, i32* %16, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 63
  br i1 %cmp25, label %land.lhs.true.26, label %land.lhs.true.70

land.lhs.true.26:                                 ; preds = %land.lhs.true.19
  %17 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load33 = load i32, i32* %20, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 61
  br i1 %cmp35, label %land.lhs.true.36, label %land.lhs.true.70

land.lhs.true.36:                                 ; preds = %land.lhs.true.26
  %21 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load43 = load i32, i32* %24, align 8
  %bf.lshr = lshr i32 %bf.load43, 16
  %bf.clear44 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear44 to i64
  %arrayidx45 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx45, align 1
  %conv = zext i8 %25 to i32
  %26 = load i32, i32* @target_flags, align 4
  %and = and i32 %26, 33554432
  %tobool46 = icmp ne i32 %and, 0
  %cond = select i1 %tobool46, i32 8, i32 4
  %sub = sub nsw i32 %cond, 1
  %add = add nsw i32 %conv, %sub
  %27 = load i32, i32* @target_flags, align 4
  %and47 = and i32 %27, 33554432
  %tobool48 = icmp ne i32 %and47, 0
  %cond49 = select i1 %tobool48, i32 8, i32 4
  %div = sdiv i32 %add, %cond49
  %28 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load53 = load i32, i32* %30, align 8
  %bf.lshr54 = lshr i32 %bf.load53, 16
  %bf.clear55 = and i32 %bf.lshr54, 255
  %idxprom56 = sext i32 %bf.clear55 to i64
  %arrayidx57 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom56
  %31 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %31 to i32
  %32 = load i32, i32* @target_flags, align 4
  %and59 = and i32 %32, 33554432
  %tobool60 = icmp ne i32 %and59, 0
  %cond61 = select i1 %tobool60, i32 8, i32 4
  %sub62 = sub nsw i32 %cond61, 1
  %add63 = add nsw i32 %conv58, %sub62
  %33 = load i32, i32* @target_flags, align 4
  %and64 = and i32 %33, 33554432
  %tobool65 = icmp ne i32 %and64, 0
  %cond66 = select i1 %tobool65, i32 8, i32 4
  %div67 = sdiv i32 %add63, %cond66
  %cmp68 = icmp eq i32 %div, %div67
  br i1 %cmp68, label %if.end.77, label %land.lhs.true.70

land.lhs.true.70:                                 ; preds = %land.lhs.true.36, %land.lhs.true.26, %land.lhs.true.19
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %call74 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %34, %struct.rtx_def* %36)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.70
  store i32 1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.70, %land.lhs.true.36, %land.lhs.true.12, %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

sw.bb.78:                                         ; preds = %entry
  %37 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtvec_def**
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i32 0, i32 0
  %39 = load i32, i32* %num_elem, align 4
  %sub81 = sub nsw i32 %39, 1
  store i32 %sub81, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.78
  %40 = load i32, i32* %i, align 4
  %cmp82 = icmp sge i32 %40, 0
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %42 to i64
  %43 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 3
  %rtvec87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtvec_def**
  %44 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec87, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %44, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom84
  %45 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx88, align 8
  %call89 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %41, %struct.rtx_def* %45)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.92:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.92
  %46 = load i32, i32* %i, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

sw.bb.93:                                         ; preds = %entry, %entry, %entry
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %call94 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %47, %struct.rtx_def* %48)
  store i32 %call94, i32* %retval
  br label %return

sw.bb.95:                                         ; preds = %entry
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %call99 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %49, %struct.rtx_def* %51)
  store i32 %call99, i32* %retval
  br label %return

sw.bb.100:                                        ; preds = %entry
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %call104 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %52, %struct.rtx_def* %54)
  store i32 %call104, i32* %retval
  br label %return

sw.bb.105:                                        ; preds = %entry, %entry
  %55 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 0
  %rtvec108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtvec_def**
  %56 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec108, align 8
  %num_elem109 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %56, i32 0, i32 0
  %57 = load i32, i32* %num_elem109, align 4
  %sub110 = sub nsw i32 %57, 1
  store i32 %sub110, i32* %i, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.125, %sw.bb.105
  %58 = load i32, i32* %i, align 4
  %cmp112 = icmp sge i32 %58, 0
  br i1 %cmp112, label %for.body.114, label %for.end.127

for.body.114:                                     ; preds = %for.cond.111
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %60 to i64
  %61 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 0
  %rtvec118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtvec_def**
  %62 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec118, align 8
  %elem119 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %62, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem119, i32 0, i64 %idxprom115
  %63 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx120, align 8
  %call121 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %59, %struct.rtx_def* %63)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.body.114
  store i32 1, i32* %retval
  br label %return

if.end.124:                                       ; preds = %for.body.114
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %64 = load i32, i32* %i, align 4
  %dec126 = add nsw i32 %64, -1
  store i32 %dec126, i32* %i, align 4
  br label %for.cond.111

for.end.127:                                      ; preds = %for.cond.111
  store i32 0, i32* %retval
  br label %return

sw.bb.128:                                        ; preds = %entry
  %65 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtvec131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtvec_def**
  %66 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec131, align 8
  %num_elem132 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %66, i32 0, i32 0
  %67 = load i32, i32* %num_elem132, align 4
  %sub133 = sub nsw i32 %67, 1
  store i32 %sub133, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.148, %sw.bb.128
  %68 = load i32, i32* %i, align 4
  %cmp135 = icmp sge i32 %68, 0
  br i1 %cmp135, label %for.body.137, label %for.end.150

for.body.137:                                     ; preds = %for.cond.134
  %69 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %70 to i64
  %71 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtvec141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtvec_def**
  %72 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec141, align 8
  %elem142 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %72, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem142, i32 0, i64 %idxprom138
  %73 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx143, align 8
  %call144 = call i32 @reg_referenced_p(%struct.rtx_def* %69, %struct.rtx_def* %73)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %for.body.137
  store i32 1, i32* %retval
  br label %return

if.end.147:                                       ; preds = %for.body.137
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %74 = load i32, i32* %i, align 4
  %dec149 = add nsw i32 %74, -1
  store i32 %dec149, i32* %i, align 4
  br label %for.cond.134

for.end.150:                                      ; preds = %for.cond.134
  store i32 0, i32* %retval
  br label %return

sw.bb.151:                                        ; preds = %entry
  %75 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 0
  %rtx154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx154, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load155 = load i32, i32* %77, align 8
  %bf.clear156 = and i32 %bf.load155, 65535
  %cmp157 = icmp eq i32 %bf.clear156, 66
  br i1 %cmp157, label %if.then.159, label %if.end.170

if.then.159:                                      ; preds = %sw.bb.151
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 0
  %rtx162 = bitcast %union.rtunion_def* %arrayidx161 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx162, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  %call166 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %78, %struct.rtx_def* %81)
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.then.159
  store i32 1, i32* %retval
  br label %return

if.end.169:                                       ; preds = %if.then.159
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %sw.bb.151
  store i32 0, i32* %retval
  br label %return

sw.bb.171:                                        ; preds = %entry
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 0
  %rtx174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx174, align 8
  %call175 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %82, %struct.rtx_def* %84)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %sw.bb.171
  store i32 1, i32* %retval
  br label %return

if.end.178:                                       ; preds = %sw.bb.171
  %85 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 1
  %rtx181 = bitcast %union.rtunion_def* %arrayidx180 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx181, align 8
  %call182 = call i32 @reg_referenced_p(%struct.rtx_def* %85, %struct.rtx_def* %87)
  store i32 %call182, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.178, %if.then.177, %if.end.170, %if.then.168, %for.end.150, %if.then.146, %for.end.127, %if.then.123, %sw.bb.100, %sw.bb.95, %sw.bb.93, %for.end, %if.then.91, %if.end.77, %if.then.76, %if.then
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define i32 @reg_referenced_between_p(%struct.rtx_def* %reg, %struct.rtx_def* %from_insn, %struct.rtx_def* %to_insn) #0 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %from_insn.addr = alloca %struct.rtx_def*, align 8
  %to_insn.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %from_insn, %struct.rtx_def** %from_insn.addr, align 8
  store %struct.rtx_def* %to_insn, %struct.rtx_def** %to_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from_insn.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %to_insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %from_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %to_insn.addr, align 8
  %cmp1 = icmp ne %struct.rtx_def* %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx2 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 105
  br i1 %cmp3, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 3
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %call = call i32 @reg_referenced_p(%struct.rtx_def* %9, %struct.rtx_def* %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load8 = load i32, i32* %13, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 34
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call13 = call i32 @find_reg_fusage(%struct.rtx_def* %14, i32 48, %struct.rtx_def* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.12, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.12, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 2
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @reg_set_between_p(%struct.rtx_def* %reg, %struct.rtx_def* %from_insn, %struct.rtx_def* %to_insn) #0 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %from_insn.addr = alloca %struct.rtx_def*, align 8
  %to_insn.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %from_insn, %struct.rtx_def** %from_insn.addr, align 8
  store %struct.rtx_def* %to_insn, %struct.rtx_def** %to_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from_insn.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %to_insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %from_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %to_insn.addr, align 8
  %cmp1 = icmp ne %struct.rtx_def* %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx2 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 105
  br i1 %cmp3, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call i32 @reg_set_p(%struct.rtx_def* %9, %struct.rtx_def* %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @reg_set_p(%struct.rtx_def* %reg, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %body = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %body, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 34
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load6 = load i32, i32* %7, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 61
  br i1 %cmp8, label %land.lhs.true.10, label %lor.lhs.false

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %9 = load i32, i32* %rtuint, align 4
  %cmp12 = icmp ult i32 %9, 53
  br i1 %cmp12, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10, %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load14 = load i32, i32* %11, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 66
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call = call i32 @find_reg_fusage(%struct.rtx_def* %12, i32 49, %struct.rtx_def* %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %land.lhs.true.10
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.18, %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %body, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call23 = call %struct.rtx_def* @set_of(%struct.rtx_def* %16, %struct.rtx_def* %17)
  %cmp24 = icmp ne %struct.rtx_def* %call23, null
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.19
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @set_of(%struct.rtx_def* %pat, %struct.rtx_def* %insn) #0 {
entry:
  %pat.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %data = alloca %struct.set_of_data, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %found = getelementptr inbounds %struct.set_of_data, %struct.set_of_data* %data, i32 0, i32 0
  store %struct.rtx_def* null, %struct.rtx_def** %found, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %pat1 = getelementptr inbounds %struct.set_of_data, %struct.set_of_data* %data, i32 0, i32 1
  store %struct.rtx_def* %0, %struct.rtx_def** %pat1, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %5, %cond.true ], [ %6, %cond.false ]
  %7 = bitcast %struct.set_of_data* %data to i8*
  call void @note_stores(%struct.rtx_def* %cond, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @set_of_1, i8* %7)
  %found4 = getelementptr inbounds %struct.set_of_data, %struct.set_of_data* %data, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %found4, align 8
  ret %struct.rtx_def* %8
}

; Function Attrs: nounwind uwtable
define i32 @regs_set_between_p(%struct.rtx_def* %x, %struct.rtx_def* %start, %struct.rtx_def* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %start.addr = alloca %struct.rtx_def*, align 8
  %end.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %start, %struct.rtx_def** %start.addr, align 8
  store %struct.rtx_def* %end, %struct.rtx_def** %end.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 58, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 61, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %call = call i32 @reg_set_between_p(%struct.rtx_def* %3, %struct.rtx_def* %4, %struct.rtx_def* %5)
  store i32 %call, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %6 = load i32, i32* %code, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  store i8* %7, i8** %fmt, align 8
  %8 = load i32, i32* %code, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %9 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %sw.epilog
  %10 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i8*, i8** %fmt, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %idxprom5
  %13 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 101
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom10
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %call12 = call i32 @regs_set_between_p(%struct.rtx_def* %16, %struct.rtx_def* %17, %struct.rtx_def* %18)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load i8*, i8** %fmt, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 %idxprom13
  %21 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %21 to i32
  %cmp16 = icmp eq i32 %conv15, 69
  br i1 %cmp16, label %if.then.18, label %if.end.36

if.then.18:                                       ; preds = %if.else
  %22 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 %idxprom19
  %rtvec = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtvec_def**
  %24 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %24, i32 0, i32 0
  %25 = load i32, i32* %num_elem, align 4
  %sub22 = sub nsw i32 %25, 1
  store i32 %sub22, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %if.then.18
  %26 = load i32, i32* %j, align 4
  %cmp24 = icmp sge i32 %26, 0
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %27 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %28 to i64
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 %idxprom28
  %rtvec31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec31, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom27
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx32, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %call33 = call i32 @regs_set_between_p(%struct.rtx_def* %31, %struct.rtx_def* %32, %struct.rtx_def* %33)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %for.body.26
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.26
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %j, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  br label %if.end.36

if.end.36:                                        ; preds = %for.end, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %35 = load i32, i32* %i, align 4
  %dec39 = add nsw i32 %35, -1
  store i32 %dec39, i32* %i, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.40, %if.then.35, %if.then, %sw.bb.1, %sw.bb
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @modified_between_p(%struct.rtx_def* %x, %struct.rtx_def* %start, %struct.rtx_def* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %start.addr = alloca %struct.rtx_def*, align 8
  %end.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %start, %struct.rtx_def** %start.addr, align 8
  store %struct.rtx_def* %end, %struct.rtx_def** %end.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 58, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 59, label %sw.bb.1
    i32 69, label %sw.bb.1
    i32 66, label %sw.bb.2
    i32 61, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load3 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load3, 26
  %bf.clear4 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.2
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %call = call i32 @reg_set_between_p(%struct.rtx_def* %5, %struct.rtx_def* %6, %struct.rtx_def* %7)
  store i32 %call, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %8 = load i32, i32* %code, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  store i8* %9, i8** %fmt, align 8
  %10 = load i32, i32* %code, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom6
  %11 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %11 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %sw.epilog
  %12 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %12, 0
  br i1 %cmp, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i8*, i8** %fmt, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  %15 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 101
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom14
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %call16 = call i32 @modified_between_p(%struct.rtx_def* %18, %struct.rtx_def* %19, %struct.rtx_def* %20)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i8*, i8** %fmt, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %22, i64 %idxprom19
  %23 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %23 to i32
  %cmp22 = icmp eq i32 %conv21, 69
  br i1 %cmp22, label %if.then.24, label %if.end.43

if.then.24:                                       ; preds = %if.else
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 %idxprom25
  %rtvec = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 0
  %27 = load i32, i32* %num_elem, align 4
  %sub28 = sub nsw i32 %27, 1
  store i32 %sub28, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %if.then.24
  %28 = load i32, i32* %j, align 4
  %cmp30 = icmp sge i32 %28, 0
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.29
  %29 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 %idxprom34
  %rtvec37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtvec_def**
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec37, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom33
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx38, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %call39 = call i32 @modified_between_p(%struct.rtx_def* %33, %struct.rtx_def* %34, %struct.rtx_def* %35)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.32
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.body.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %36 = load i32, i32* %j, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %37 = load i32, i32* %i, align 4
  %dec46 = add nsw i32 %37, -1
  store i32 %dec46, i32* %i, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.47, %if.then.41, %if.then.18, %sw.bb.5, %if.then, %sw.bb.1, %sw.bb
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @modified_in_p(%struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 58, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 59, label %sw.bb.1
    i32 69, label %sw.bb.1
    i32 66, label %sw.bb.2
    i32 61, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load3 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load3, 26
  %bf.clear4 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.2
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @reg_set_p(%struct.rtx_def* %5, %struct.rtx_def* %6)
  store i32 %call, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %7 = load i32, i32* %code, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  store i8* %8, i8** %fmt, align 8
  %9 = load i32, i32* %code, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom6
  %10 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %10 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %sw.epilog
  %11 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i8*, i8** %fmt, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 101
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom14
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call16 = call i32 @modified_in_p(%struct.rtx_def* %17, %struct.rtx_def* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load i8*, i8** %fmt, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %20, i64 %idxprom19
  %21 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %21 to i32
  %cmp22 = icmp eq i32 %conv21, 69
  br i1 %cmp22, label %if.then.24, label %if.end.43

if.then.24:                                       ; preds = %if.else
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 %idxprom25
  %rtvec = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %24 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %24, i32 0, i32 0
  %25 = load i32, i32* %num_elem, align 4
  %sub28 = sub nsw i32 %25, 1
  store i32 %sub28, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %if.then.24
  %26 = load i32, i32* %j, align 4
  %cmp30 = icmp sge i32 %26, 0
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.29
  %27 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %28 to i64
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 %idxprom34
  %rtvec37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec37, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom33
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx38, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call39 = call i32 @modified_in_p(%struct.rtx_def* %31, %struct.rtx_def* %32)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.32
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.body.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %33 = load i32, i32* %j, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %34 = load i32, i32* %i, align 4
  %dec46 = add nsw i32 %34, -1
  store i32 %dec46, i32* %i, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.47, %if.then.41, %if.then.18, %sw.bb.5, %if.then, %sw.bb.1, %sw.bb
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @insn_dependent_p(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %idxprom4 = sext i32 %bf.clear3 to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 105
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 988, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.insn_dependent_p, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %tmp, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %10 = bitcast %struct.rtx_def** %tmp to i8*
  call void @note_stores(%struct.rtx_def* %9, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @insn_dependent_p_1, i8* %10)
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %cmp13 = icmp eq %struct.rtx_def* %11, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %tmp, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %16 = bitcast %struct.rtx_def** %tmp to i8*
  call void @note_stores(%struct.rtx_def* %15, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @insn_dependent_p_1, i8* %16)
  %17 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %cmp23 = icmp eq %struct.rtx_def* %17, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.16
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then.15
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @note_stores(%struct.rtx_def* %x, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* %fun, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %fun.addr = alloca void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %dest = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store void (%struct.rtx_def*, %struct.rtx_def*, i8*)* %fun, void (%struct.rtx_def*, %struct.rtx_def*, i8*)** %fun.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 38
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 47
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 49
  br i1 %cmp6, label %if.then.7, label %if.else.68

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %dest, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load11 = load i32, i32* %11, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 63
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false.27

land.lhs.true:                                    ; preds = %while.cond
  %12 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load17 = load i32, i32* %14, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp ne i32 %bf.clear18, 61
  br i1 %cmp19, label %lor.end, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %17 = load i32, i32* %rtuint, align 4
  %cmp26 = icmp uge i32 %17, 53
  br i1 %cmp26, label %lor.end, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.20, %while.cond
  %18 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load28 = load i32, i32* %19, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 133
  br i1 %cmp30, label %lor.end, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %20 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load32 = load i32, i32* %21, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 132
  br i1 %cmp34, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.31
  %22 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load35 = load i32, i32* %23, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.31, %lor.lhs.false.27, %lor.lhs.false.20, %land.lhs.true
  %24 = phi i1 [ true, %lor.lhs.false.31 ], [ true, %lor.lhs.false.27 ], [ true, %lor.lhs.false.20 ], [ true, %land.lhs.true ], [ %cmp37, %lor.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load41 = load i32, i32* %28, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 39
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %while.end
  %29 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 0
  %31 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %31, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.44
  %32 = load i32, i32* %i, align 4
  %cmp47 = icmp sge i32 %32, 0
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtvec50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtvec_def**
  %35 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec50, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %35, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %36 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx51, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %cmp55 = icmp ne %struct.rtx_def* %37, null
  br i1 %cmp55, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %for.body
  %38 = load void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)** %fun.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %39 to i64
  %40 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtvec60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtvec_def**
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec60, align 8
  %elem61 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem61, i32 0, i64 %idxprom57
  %42 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx62, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %45 = load i8*, i8** %data.addr, align 8
  call void %38(%struct.rtx_def* %43, %struct.rtx_def* %44, i8* %45)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.56, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %46 = load i32, i32* %i, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.67

if.else:                                          ; preds = %while.end
  %47 = load void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)** %fun.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %50 = load i8*, i8** %data.addr, align 8
  call void %47(%struct.rtx_def* %48, %struct.rtx_def* %49, i8* %50)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %for.end
  br label %if.end.91

if.else.68:                                       ; preds = %lor.lhs.false
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load69 = load i32, i32* %52, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 39
  br i1 %cmp71, label %if.then.72, label %if.end.90

if.then.72:                                       ; preds = %if.else.68
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtvec75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtvec_def**
  %54 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec75, align 8
  %num_elem76 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %54, i32 0, i32 0
  %55 = load i32, i32* %num_elem76, align 4
  %sub77 = sub nsw i32 %55, 1
  store i32 %sub77, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.87, %if.then.72
  %56 = load i32, i32* %i, align 4
  %cmp79 = icmp sge i32 %56, 0
  br i1 %cmp79, label %for.body.80, label %for.end.89

for.body.80:                                      ; preds = %for.cond.78
  %57 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %57 to i64
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtvec84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtvec_def**
  %59 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec84, align 8
  %elem85 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %59, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem85, i32 0, i64 %idxprom81
  %60 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx86, align 8
  %61 = load void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)** %fun.addr, align 8
  %62 = load i8*, i8** %data.addr, align 8
  call void @note_stores(%struct.rtx_def* %60, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* %61, i8* %62)
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.80
  %63 = load i32, i32* %i, align 4
  %dec88 = add nsw i32 %63, -1
  store i32 %dec88, i32* %i, align 4
  br label %for.cond.78

for.end.89:                                       ; preds = %for.cond.78
  br label %if.end.90

if.end.90:                                        ; preds = %for.end.89, %if.else.68
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.67
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @insn_dependent_p_1(%struct.rtx_def* %x, %struct.rtx_def* %pat, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %pinsn = alloca %struct.rtx_def**, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.rtx_def**
  store %struct.rtx_def** %1, %struct.rtx_def*** %pinsn, align 8
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %pinsn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %pinsn, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %call = call i32 @reg_mentioned_p(%struct.rtx_def* %4, %struct.rtx_def* %6)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %pinsn, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_of_1(%struct.rtx_def* %x, %struct.rtx_def* %pat, i8* %data1) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %data1.addr = alloca i8*, align 8
  %data = alloca %struct.set_of_data*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store i8* %data1, i8** %data1.addr, align 8
  %0 = load i8*, i8** %data1.addr, align 8
  %1 = bitcast i8* %0 to %struct.set_of_data*
  store %struct.set_of_data* %1, %struct.set_of_data** %data, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.set_of_data*, %struct.set_of_data** %data, align 8
  %pat1 = getelementptr inbounds %struct.set_of_data, %struct.set_of_data* %3, i32 0, i32 1
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pat1, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %2, %struct.rtx_def* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load %struct.set_of_data*, %struct.set_of_data** %data, align 8
  %pat2 = getelementptr inbounds %struct.set_of_data, %struct.set_of_data* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %pat2, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call3 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %8, %struct.rtx_def* %9)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %11 = load %struct.set_of_data*, %struct.set_of_data** %data, align 8
  %found = getelementptr inbounds %struct.set_of_data, %struct.set_of_data* %11, i32 0, i32 0
  store %struct.rtx_def* %10, %struct.rtx_def** %found, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 %kind, %struct.rtx_def* %datum) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %kind.addr = alloca i32, align 4
  %datum.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.rtx_def* %datum, %struct.rtx_def** %datum.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load3, 16
  %bf.clear4 = and i32 %bf.lshr, 255
  %8 = load i32, i32* %kind.addr, align 4
  %cmp5 = icmp eq i32 %bf.clear4, %8
  br i1 %cmp5, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %cmp7 = icmp eq %struct.rtx_def* %9, null
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %cmp12 = icmp eq %struct.rtx_def* %10, %12
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %14 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 1
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14, %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define i32 @side_effects_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 54, label %sw.bb
    i32 58, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 69, label %sw.bb
    i32 59, label %sw.bb
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 40, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 49, label %sw.bb.1
    i32 97, label %sw.bb.4
    i32 96, label %sw.bb.4
    i32 99, label %sw.bb.4
    i32 98, label %sw.bb.4
    i32 100, label %sw.bb.4
    i32 101, label %sw.bb.4
    i32 50, label %sw.bb.4
    i32 43, label %sw.bb.4
    i32 66, label %sw.bb.5
    i32 41, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load2, 16
  %bf.clear3 = and i32 %bf.lshr, 255
  %cmp = icmp ne i32 %bf.clear3, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load6 = load i32, i32* %6, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 27
  %bf.clear8 = and i32 %bf.lshr7, 1
  %tobool = icmp ne i32 %bf.clear8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.5
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %7 = load i32, i32* %code, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  store i8* %8, i8** %fmt, align 8
  %9 = load i32, i32* %code, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom9
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %10 to i32
  %sub = sub nsw i32 %conv11, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %sw.epilog
  %11 = load i32, i32* %i, align 4
  %cmp12 = icmp sge i32 %11, 0
  br i1 %cmp12, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load i8*, i8** %fmt, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %14 to i32
  %cmp17 = icmp eq i32 %conv16, 101
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom20
  %rtx = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @side_effects_p(%struct.rtx_def* %17)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.19
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.19
  br label %if.end.49

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load i8*, i8** %fmt, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %19, i64 %idxprom25
  %20 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %20 to i32
  %cmp28 = icmp eq i32 %conv27, 69
  br i1 %cmp28, label %if.then.30, label %if.end.48

if.then.30:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.then.30
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %22 to i64
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 %idxprom32
  %rtvec = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %24 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %24, i32 0, i32 0
  %25 = load i32, i32* %num_elem, align 4
  %cmp35 = icmp slt i32 %21, %25
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.31
  %26 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %27 to i64
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 %idxprom39
  %rtvec42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec42, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom38
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx43, align 8
  %call44 = call i32 @side_effects_p(%struct.rtx_def* %30)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.body.37
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %for.body.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.24
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %32 = load i32, i32* %i, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.51, %if.then.46, %if.then.23, %if.then, %sw.bb.4, %sw.bb.1, %sw.bb
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @multiple_sets(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %found = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 39
  br i1 %cmp5, label %if.then.7, label %if.end.31

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  store i32 0, i32* %found, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtvec_def**
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i32 0, i32 0
  %10 = load i32, i32* %num_elem, align 4
  %cmp13 = icmp slt i32 %6, %10
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtvec21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec21, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom15
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx22, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load23 = load i32, i32* %16, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 47
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %for.body
  %17 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.27
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.27
  store i32 1, i32* %found, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.28, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @set_noop_p(%struct.rtx_def* %set) #0 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %dst = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %src, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %dst, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call = call i32 @side_effects_p(%struct.rtx_def* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %call4 = call i32 @side_effects_p(%struct.rtx_def* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load6 = load i32, i32* %9, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 66
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call10 = call i32 @rtx_equal_p(%struct.rtx_def* %10, %struct.rtx_def* %11)
  store i32 %call10, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp12 = icmp eq %struct.rtx_def* %12, %13
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.16

land.lhs.true.13:                                 ; preds = %if.end.11
  %14 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp14 = icmp eq %struct.rtx_def* %14, %15
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.13
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.13, %if.end.11
  %16 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load17 = load i32, i32* %17, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 132
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.16
  %18 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load21 = load i32, i32* %19, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 133
  br i1 %cmp23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %lor.lhs.false.20, %if.end.16
  %20 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call28 = call i32 @rtx_equal_p(%struct.rtx_def* %21, %struct.rtx_def* %22)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.24
  %23 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 2
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp33 = icmp eq %struct.rtx_def* %24, %25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.24
  %26 = phi i1 [ false, %if.then.24 ], [ %cmp33, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.20
  %27 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load35 = load i32, i32* %28, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 64
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.34
  %29 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %dst, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.34
  %31 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load43 = load i32, i32* %32, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 63
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.65

land.lhs.true.46:                                 ; preds = %if.end.42
  %33 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load47 = load i32, i32* %34, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 63
  br i1 %cmp49, label %if.then.50, label %if.end.65

if.then.50:                                       ; preds = %land.lhs.true.46
  %35 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx52 to i32*
  %36 = load i32, i32* %rtuint, align 4
  %37 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtuint55 = bitcast %union.rtunion_def* %arrayidx54 to i32*
  %38 = load i32, i32* %rtuint55, align 4
  %cmp56 = icmp ne i32 %36, %38
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.50
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.50
  %39 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %src, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %dst, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.58, %land.lhs.true.46, %if.end.42
  %43 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load66 = load i32, i32* %44, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 61
  br i1 %cmp68, label %land.lhs.true.69, label %land.end.81

land.lhs.true.69:                                 ; preds = %if.end.65
  %45 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load70 = load i32, i32* %46, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %cmp72 = icmp eq i32 %bf.clear71, 61
  br i1 %cmp72, label %land.rhs.73, label %land.end.81

land.rhs.73:                                      ; preds = %land.lhs.true.69
  %47 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtuint76 = bitcast %union.rtunion_def* %arrayidx75 to i32*
  %48 = load i32, i32* %rtuint76, align 4
  %49 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtuint79 = bitcast %union.rtunion_def* %arrayidx78 to i32*
  %50 = load i32, i32* %rtuint79, align 4
  %cmp80 = icmp eq i32 %48, %50
  br label %land.end.81

land.end.81:                                      ; preds = %land.rhs.73, %land.lhs.true.69, %if.end.65
  %51 = phi i1 [ false, %land.lhs.true.69 ], [ false, %if.end.65 ], [ %cmp80, %land.rhs.73 ]
  %land.ext82 = zext i1 %51 to i32
  store i32 %land.ext82, i32* %retval
  br label %return

return:                                           ; preds = %land.end.81, %if.then.57, %land.end, %if.then.15, %if.then.9, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @noop_move_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %pat, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtint, align 4
  %cmp = icmp eq i32 %3, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %4, i32 4, %struct.rtx_def* null)
  %tobool = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call5 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %5, i32 6, %struct.rtx_def* null)
  %tobool6 = icmp ne %struct.rtx_def* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp9 = icmp eq i32 %bf.clear, 47
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call10 = call i32 @set_noop_p(%struct.rtx_def* %8)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end.8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load14 = load i32, i32* %10, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 39
  br i1 %cmp16, label %if.then.17, label %if.end.41

if.then.17:                                       ; preds = %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtvec_def**
  %13 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %13, i32 0, i32 0
  %14 = load i32, i32* %num_elem, align 4
  %cmp20 = icmp slt i32 %11, %14
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtvec23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtvec_def**
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec23, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx24, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %tem, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load25 = load i32, i32* %20, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 48
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %21 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load28 = load i32, i32* %22, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 49
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.32:                                        ; preds = %lor.lhs.false
  %23 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load33 = load i32, i32* %24, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp ne i32 %bf.clear34, 47
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.32
  %25 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call37 = call i32 @set_noop_p(%struct.rtx_def* %25)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %lor.lhs.false.36, %if.end.32
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.40, %if.then.31
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %for.end, %if.then.39, %if.then.12, %if.then.7, %if.then.3, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @refers_to_regno_p(i32 %regno, i32 %endregno, %struct.rtx_def* %x, %struct.rtx_def** %loc) #0 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %endregno.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %i = alloca i32, align 4
  %x_regno = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %inner_regno = alloca i32, align 4
  %inner_endregno = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %endregno, i32* %endregno.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  br label %repeat

repeat:                                           ; preds = %if.then.298, %if.end.271, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %repeat
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %repeat
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 61, label %sw.bb
    i32 63, label %sw.bb.76
    i32 49, label %sw.bb.191
    i32 47, label %sw.bb.191
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  store i32 %5, i32* %x_regno, align 4
  %6 = load i32, i32* %x_regno, align 4
  %cmp1 = icmp eq i32 %6, 7
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %7 = load i32, i32* %x_regno, align 4
  %cmp2 = icmp eq i32 %7, 16
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %x_regno, align 4
  %cmp4 = icmp eq i32 %8, 20
  br i1 %cmp4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %lor.lhs.false.3, %lor.lhs.false, %sw.bb
  %9 = load i32, i32* %regno.addr, align 4
  %cmp5 = icmp uge i32 %9, 53
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.9

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %regno.addr, align 4
  %cmp7 = icmp ule i32 %10, 57
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.6, %land.lhs.true, %lor.lhs.false.3
  %11 = load i32, i32* %endregno.addr, align 4
  %12 = load i32, i32* %x_regno, align 4
  %cmp10 = icmp ugt i32 %11, %12
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.9
  %13 = load i32, i32* %regno.addr, align 4
  %14 = load i32, i32* %x_regno, align 4
  %15 = load i32, i32* %x_regno, align 4
  %cmp11 = icmp ult i32 %15, 53
  br i1 %cmp11, label %cond.true, label %cond.false.70

cond.true:                                        ; preds = %land.rhs
  %16 = load i32, i32* %x_regno, align 4
  %cmp12 = icmp uge i32 %16, 8
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %cond.true
  %17 = load i32, i32* %x_regno, align 4
  %cmp14 = icmp ule i32 %17, 15
  br i1 %cmp14, label %cond.true.27, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %cond.true
  %18 = load i32, i32* %x_regno, align 4
  %cmp16 = icmp uge i32 %18, 21
  br i1 %cmp16, label %land.lhs.true.17, label %lor.lhs.false.19

land.lhs.true.17:                                 ; preds = %lor.lhs.false.15
  %19 = load i32, i32* %x_regno, align 4
  %cmp18 = icmp ule i32 %19, 28
  br i1 %cmp18, label %cond.true.27, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.17, %lor.lhs.false.15
  %20 = load i32, i32* %x_regno, align 4
  %cmp20 = icmp uge i32 %20, 45
  br i1 %cmp20, label %land.lhs.true.21, label %lor.lhs.false.23

land.lhs.true.21:                                 ; preds = %lor.lhs.false.19
  %21 = load i32, i32* %x_regno, align 4
  %cmp22 = icmp ule i32 %21, 52
  br i1 %cmp22, label %cond.true.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.21, %lor.lhs.false.19
  %22 = load i32, i32* %x_regno, align 4
  %cmp24 = icmp uge i32 %22, 29
  br i1 %cmp24, label %land.lhs.true.25, label %cond.false

land.lhs.true.25:                                 ; preds = %lor.lhs.false.23
  %23 = load i32, i32* %x_regno, align 4
  %cmp26 = icmp ule i32 %23, 36
  br i1 %cmp26, label %cond.true.27, label %cond.false

cond.true.27:                                     ; preds = %land.lhs.true.25, %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true.13
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load28 = load i32, i32* %25, align 8
  %bf.lshr = lshr i32 %bf.load28, 16
  %bf.clear29 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear29 to i64
  %arrayidx30 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %26 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %26, 5
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.27
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load32 = load i32, i32* %28, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 16
  %bf.clear34 = and i32 %bf.lshr33, 255
  %idxprom35 = sext i32 %bf.clear34 to i64
  %arrayidx36 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom35
  %29 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp eq i32 %29, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.27
  %30 = phi i1 [ true, %cond.true.27 ], [ %cmp37, %lor.rhs ]
  %cond = select i1 %30, i32 2, i32 1
  br label %cond.end.68

cond.false:                                       ; preds = %land.lhs.true.25, %lor.lhs.false.23
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load38 = load i32, i32* %32, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 16
  %bf.clear40 = and i32 %bf.lshr39, 255
  %cmp41 = icmp eq i32 %bf.clear40, 18
  br i1 %cmp41, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %cond.false
  %33 = load i32, i32* @target_flags, align 4
  %and = and i32 %33, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond43 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.66

cond.false.44:                                    ; preds = %cond.false
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load45 = load i32, i32* %35, align 8
  %bf.lshr46 = lshr i32 %bf.load45, 16
  %bf.clear47 = and i32 %bf.lshr46, 255
  %cmp48 = icmp eq i32 %bf.clear47, 24
  br i1 %cmp48, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.false.44
  %36 = load i32, i32* @target_flags, align 4
  %and50 = and i32 %36, 33554432
  %tobool51 = icmp ne i32 %and50, 0
  %cond52 = select i1 %tobool51, i32 4, i32 6
  br label %cond.end

cond.false.53:                                    ; preds = %cond.false.44
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load54 = load i32, i32* %38, align 8
  %bf.lshr55 = lshr i32 %bf.load54, 16
  %bf.clear56 = and i32 %bf.lshr55, 255
  %idxprom57 = sext i32 %bf.clear56 to i64
  %arrayidx58 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom57
  %39 = load i8, i8* %arrayidx58, align 1
  %conv = zext i8 %39 to i32
  %40 = load i32, i32* @target_flags, align 4
  %and59 = and i32 %40, 33554432
  %tobool60 = icmp ne i32 %and59, 0
  %cond61 = select i1 %tobool60, i32 8, i32 4
  %add = add nsw i32 %conv, %cond61
  %sub = sub nsw i32 %add, 1
  %41 = load i32, i32* @target_flags, align 4
  %and62 = and i32 %41, 33554432
  %tobool63 = icmp ne i32 %and62, 0
  %cond64 = select i1 %tobool63, i32 8, i32 4
  %div = sdiv i32 %sub, %cond64
  br label %cond.end

cond.end:                                         ; preds = %cond.false.53, %cond.true.49
  %cond65 = phi i32 [ %cond52, %cond.true.49 ], [ %div, %cond.false.53 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end, %cond.true.42
  %cond67 = phi i32 [ %cond43, %cond.true.42 ], [ %cond65, %cond.end ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end.66, %lor.end
  %cond69 = phi i32 [ %cond, %lor.end ], [ %cond67, %cond.end.66 ]
  br label %cond.end.71

cond.false.70:                                    ; preds = %land.rhs
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.end.68
  %cond72 = phi i32 [ %cond69, %cond.end.68 ], [ 1, %cond.false.70 ]
  %add73 = add i32 %14, %cond72
  %cmp74 = icmp ult i32 %13, %add73
  br label %land.end

land.end:                                         ; preds = %cond.end.71, %if.end.9
  %42 = phi i1 [ false, %if.end.9 ], [ %cmp74, %cond.end.71 ]
  %land.ext = zext i1 %42 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.76:                                         ; preds = %if.end
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load79 = load i32, i32* %45, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp eq i32 %bf.clear80, 61
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.190

land.lhs.true.83:                                 ; preds = %sw.bb.76
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtuint89 = bitcast %union.rtunion_def* %arrayidx88 to i32*
  %48 = load i32, i32* %rtuint89, align 4
  %cmp90 = icmp ult i32 %48, 53
  br i1 %cmp90, label %if.then.92, label %if.end.190

if.then.92:                                       ; preds = %land.lhs.true.83
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @subreg_regno(%struct.rtx_def* %49)
  store i32 %call, i32* %inner_regno, align 4
  %50 = load i32, i32* %inner_regno, align 4
  %51 = load i32, i32* %inner_regno, align 4
  %cmp93 = icmp ult i32 %51, 53
  br i1 %cmp93, label %cond.true.95, label %cond.false.179

cond.true.95:                                     ; preds = %if.then.92
  %52 = load i32, i32* %regno.addr, align 4
  %cmp96 = icmp uge i32 %52, 8
  br i1 %cmp96, label %land.lhs.true.98, label %lor.lhs.false.101

land.lhs.true.98:                                 ; preds = %cond.true.95
  %53 = load i32, i32* %regno.addr, align 4
  %cmp99 = icmp ule i32 %53, 15
  br i1 %cmp99, label %cond.true.119, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %land.lhs.true.98, %cond.true.95
  %54 = load i32, i32* %regno.addr, align 4
  %cmp102 = icmp uge i32 %54, 21
  br i1 %cmp102, label %land.lhs.true.104, label %lor.lhs.false.107

land.lhs.true.104:                                ; preds = %lor.lhs.false.101
  %55 = load i32, i32* %regno.addr, align 4
  %cmp105 = icmp ule i32 %55, 28
  br i1 %cmp105, label %cond.true.119, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %land.lhs.true.104, %lor.lhs.false.101
  %56 = load i32, i32* %regno.addr, align 4
  %cmp108 = icmp uge i32 %56, 45
  br i1 %cmp108, label %land.lhs.true.110, label %lor.lhs.false.113

land.lhs.true.110:                                ; preds = %lor.lhs.false.107
  %57 = load i32, i32* %regno.addr, align 4
  %cmp111 = icmp ule i32 %57, 52
  br i1 %cmp111, label %cond.true.119, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %land.lhs.true.110, %lor.lhs.false.107
  %58 = load i32, i32* %regno.addr, align 4
  %cmp114 = icmp uge i32 %58, 29
  br i1 %cmp114, label %land.lhs.true.116, label %cond.false.137

land.lhs.true.116:                                ; preds = %lor.lhs.false.113
  %59 = load i32, i32* %regno.addr, align 4
  %cmp117 = icmp ule i32 %59, 36
  br i1 %cmp117, label %cond.true.119, label %cond.false.137

cond.true.119:                                    ; preds = %land.lhs.true.116, %land.lhs.true.110, %land.lhs.true.104, %land.lhs.true.98
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load120 = load i32, i32* %61, align 8
  %bf.lshr121 = lshr i32 %bf.load120, 16
  %bf.clear122 = and i32 %bf.lshr121, 255
  %idxprom123 = sext i32 %bf.clear122 to i64
  %arrayidx124 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom123
  %62 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp eq i32 %62, 5
  br i1 %cmp125, label %lor.end.135, label %lor.rhs.127

lor.rhs.127:                                      ; preds = %cond.true.119
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load128 = load i32, i32* %64, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 16
  %bf.clear130 = and i32 %bf.lshr129, 255
  %idxprom131 = sext i32 %bf.clear130 to i64
  %arrayidx132 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom131
  %65 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp eq i32 %65, 6
  br label %lor.end.135

lor.end.135:                                      ; preds = %lor.rhs.127, %cond.true.119
  %66 = phi i1 [ true, %cond.true.119 ], [ %cmp133, %lor.rhs.127 ]
  %cond136 = select i1 %66, i32 2, i32 1
  br label %cond.end.177

cond.false.137:                                   ; preds = %land.lhs.true.116, %lor.lhs.false.113
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load138 = load i32, i32* %68, align 8
  %bf.lshr139 = lshr i32 %bf.load138, 16
  %bf.clear140 = and i32 %bf.lshr139, 255
  %cmp141 = icmp eq i32 %bf.clear140, 18
  br i1 %cmp141, label %cond.true.143, label %cond.false.147

cond.true.143:                                    ; preds = %cond.false.137
  %69 = load i32, i32* @target_flags, align 4
  %and144 = and i32 %69, 33554432
  %tobool145 = icmp ne i32 %and144, 0
  %cond146 = select i1 %tobool145, i32 2, i32 3
  br label %cond.end.175

cond.false.147:                                   ; preds = %cond.false.137
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load148 = load i32, i32* %71, align 8
  %bf.lshr149 = lshr i32 %bf.load148, 16
  %bf.clear150 = and i32 %bf.lshr149, 255
  %cmp151 = icmp eq i32 %bf.clear150, 24
  br i1 %cmp151, label %cond.true.153, label %cond.false.157

cond.true.153:                                    ; preds = %cond.false.147
  %72 = load i32, i32* @target_flags, align 4
  %and154 = and i32 %72, 33554432
  %tobool155 = icmp ne i32 %and154, 0
  %cond156 = select i1 %tobool155, i32 4, i32 6
  br label %cond.end.173

cond.false.157:                                   ; preds = %cond.false.147
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load158 = load i32, i32* %74, align 8
  %bf.lshr159 = lshr i32 %bf.load158, 16
  %bf.clear160 = and i32 %bf.lshr159, 255
  %idxprom161 = sext i32 %bf.clear160 to i64
  %arrayidx162 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom161
  %75 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %75 to i32
  %76 = load i32, i32* @target_flags, align 4
  %and164 = and i32 %76, 33554432
  %tobool165 = icmp ne i32 %and164, 0
  %cond166 = select i1 %tobool165, i32 8, i32 4
  %add167 = add nsw i32 %conv163, %cond166
  %sub168 = sub nsw i32 %add167, 1
  %77 = load i32, i32* @target_flags, align 4
  %and169 = and i32 %77, 33554432
  %tobool170 = icmp ne i32 %and169, 0
  %cond171 = select i1 %tobool170, i32 8, i32 4
  %div172 = sdiv i32 %sub168, %cond171
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.157, %cond.true.153
  %cond174 = phi i32 [ %cond156, %cond.true.153 ], [ %div172, %cond.false.157 ]
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.end.173, %cond.true.143
  %cond176 = phi i32 [ %cond146, %cond.true.143 ], [ %cond174, %cond.end.173 ]
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end.175, %lor.end.135
  %cond178 = phi i32 [ %cond136, %lor.end.135 ], [ %cond176, %cond.end.175 ]
  br label %cond.end.180

cond.false.179:                                   ; preds = %if.then.92
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.179, %cond.end.177
  %cond181 = phi i32 [ %cond178, %cond.end.177 ], [ 1, %cond.false.179 ]
  %add182 = add i32 %50, %cond181
  store i32 %add182, i32* %inner_endregno, align 4
  %78 = load i32, i32* %endregno.addr, align 4
  %79 = load i32, i32* %inner_regno, align 4
  %cmp183 = icmp ugt i32 %78, %79
  br i1 %cmp183, label %land.rhs.185, label %land.end.188

land.rhs.185:                                     ; preds = %cond.end.180
  %80 = load i32, i32* %regno.addr, align 4
  %81 = load i32, i32* %inner_endregno, align 4
  %cmp186 = icmp ult i32 %80, %81
  br label %land.end.188

land.end.188:                                     ; preds = %land.rhs.185, %cond.end.180
  %82 = phi i1 [ false, %cond.end.180 ], [ %cmp186, %land.rhs.185 ]
  %land.ext189 = zext i1 %82 to i32
  store i32 %land.ext189, i32* %retval
  br label %return

if.end.190:                                       ; preds = %land.lhs.true.83, %sw.bb.76
  br label %sw.epilog

sw.bb.191:                                        ; preds = %if.end, %if.end
  %83 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld192, i32 0, i64 0
  %rtx194 = bitcast %union.rtunion_def* %arrayidx193 to %struct.rtx_def**
  %84 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %cmp195 = icmp ne %struct.rtx_def** %rtx194, %84
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.261

land.lhs.true.197:                                ; preds = %sw.bb.191
  %85 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 0
  %rtx200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx200, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load201 = load i32, i32* %87, align 8
  %bf.clear202 = and i32 %bf.load201, 65535
  %cmp203 = icmp eq i32 %bf.clear202, 63
  br i1 %cmp203, label %land.lhs.true.205, label %lor.lhs.false.246

land.lhs.true.205:                                ; preds = %land.lhs.true.197
  %88 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 0
  %rtx208 = bitcast %union.rtunion_def* %arrayidx207 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx208, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 0
  %rtx211 = bitcast %union.rtunion_def* %arrayidx210 to %struct.rtx_def**
  %cmp212 = icmp ne %struct.rtx_def** %88, %rtx211
  br i1 %cmp212, label %land.lhs.true.214, label %lor.lhs.false.246

land.lhs.true.214:                                ; preds = %land.lhs.true.205
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 0
  %rtx217 = bitcast %union.rtunion_def* %arrayidx216 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx217, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 0
  %rtx220 = bitcast %union.rtunion_def* %arrayidx219 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx220, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load221 = load i32, i32* %94, align 8
  %bf.clear222 = and i32 %bf.load221, 65535
  %cmp223 = icmp eq i32 %bf.clear222, 61
  br i1 %cmp223, label %land.lhs.true.225, label %lor.lhs.false.246

land.lhs.true.225:                                ; preds = %land.lhs.true.214
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld226, i32 0, i64 0
  %rtx228 = bitcast %union.rtunion_def* %arrayidx227 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx228, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 0
  %rtx231 = bitcast %union.rtunion_def* %arrayidx230 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx231, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 0
  %rtuint234 = bitcast %union.rtunion_def* %arrayidx233 to i32*
  %98 = load i32, i32* %rtuint234, align 4
  %cmp235 = icmp uge i32 %98, 53
  br i1 %cmp235, label %land.lhs.true.237, label %lor.lhs.false.246

land.lhs.true.237:                                ; preds = %land.lhs.true.225
  %99 = load i32, i32* %regno.addr, align 4
  %100 = load i32, i32* %endregno.addr, align 4
  %101 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 0
  %rtx240 = bitcast %union.rtunion_def* %arrayidx239 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx240, align 8
  %fld241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld241, i32 0, i64 0
  %rtx243 = bitcast %union.rtunion_def* %arrayidx242 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx243, align 8
  %104 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %call244 = call i32 @refers_to_regno_p(i32 %99, i32 %100, %struct.rtx_def* %103, %struct.rtx_def** %104)
  %tobool245 = icmp ne i32 %call244, 0
  br i1 %tobool245, label %if.then.260, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %land.lhs.true.237, %land.lhs.true.225, %land.lhs.true.214, %land.lhs.true.205, %land.lhs.true.197
  %105 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 0
  %rtx249 = bitcast %union.rtunion_def* %arrayidx248 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx249, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load250 = load i32, i32* %107, align 8
  %bf.clear251 = and i32 %bf.load250, 65535
  %cmp252 = icmp ne i32 %bf.clear251, 61
  br i1 %cmp252, label %land.lhs.true.254, label %if.end.261

land.lhs.true.254:                                ; preds = %lor.lhs.false.246
  %108 = load i32, i32* %regno.addr, align 4
  %109 = load i32, i32* %endregno.addr, align 4
  %110 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 0
  %rtx257 = bitcast %union.rtunion_def* %arrayidx256 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx257, align 8
  %112 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %call258 = call i32 @refers_to_regno_p(i32 %108, i32 %109, %struct.rtx_def* %111, %struct.rtx_def** %112)
  %tobool259 = icmp ne i32 %call258, 0
  br i1 %tobool259, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %land.lhs.true.254, %land.lhs.true.237
  store i32 1, i32* %retval
  br label %return

if.end.261:                                       ; preds = %land.lhs.true.254, %lor.lhs.false.246, %sw.bb.191
  %113 = load i32, i32* %code, align 4
  %cmp262 = icmp eq i32 %113, 49
  br i1 %cmp262, label %if.then.270, label %lor.lhs.false.264

lor.lhs.false.264:                                ; preds = %if.end.261
  %114 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld265 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx266 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld265, i32 0, i64 1
  %rtx267 = bitcast %union.rtunion_def* %arrayidx266 to %struct.rtx_def**
  %cmp268 = icmp eq %struct.rtx_def** %114, %rtx267
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %lor.lhs.false.264, %if.end.261
  store i32 0, i32* %retval
  br label %return

if.end.271:                                       ; preds = %lor.lhs.false.264
  %116 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld272 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx273 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld272, i32 0, i64 1
  %rtx274 = bitcast %union.rtunion_def* %arrayidx273 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtx274, align 8
  store %struct.rtx_def* %117, %struct.rtx_def** %x.addr, align 8
  br label %repeat

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.190
  %118 = load i32, i32* %code, align 4
  %idxprom275 = sext i32 %118 to i64
  %arrayidx276 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom275
  %119 = load i8*, i8** %arrayidx276, align 8
  store i8* %119, i8** %fmt, align 8
  %120 = load i32, i32* %code, align 4
  %idxprom277 = sext i32 %120 to i64
  %arrayidx278 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom277
  %121 = load i8, i8* %arrayidx278, align 1
  %conv279 = zext i8 %121 to i32
  %sub280 = sub nsw i32 %conv279, 1
  store i32 %sub280, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.348, %sw.epilog
  %122 = load i32, i32* %i, align 4
  %cmp281 = icmp sge i32 %122, 0
  br i1 %cmp281, label %for.body, label %for.end.350

for.body:                                         ; preds = %for.cond
  %123 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %123 to i64
  %124 = load i8*, i8** %fmt, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %124, i64 %idxprom283
  %125 = load i8, i8* %arrayidx284, align 1
  %conv285 = sext i8 %125 to i32
  %cmp286 = icmp eq i32 %conv285, 101
  br i1 %cmp286, label %land.lhs.true.288, label %if.else.311

land.lhs.true.288:                                ; preds = %for.body
  %126 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %127 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %127 to i64
  %128 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld290, i32 0, i64 %idxprom289
  %rtx292 = bitcast %union.rtunion_def* %arrayidx291 to %struct.rtx_def**
  %cmp293 = icmp ne %struct.rtx_def** %126, %rtx292
  br i1 %cmp293, label %if.then.295, label %if.else.311

if.then.295:                                      ; preds = %land.lhs.true.288
  %129 = load i32, i32* %i, align 4
  %cmp296 = icmp eq i32 %129, 0
  br i1 %cmp296, label %if.then.298, label %if.else

if.then.298:                                      ; preds = %if.then.295
  %130 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx300 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld299, i32 0, i64 0
  %rtx301 = bitcast %union.rtunion_def* %arrayidx300 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx301, align 8
  store %struct.rtx_def* %131, %struct.rtx_def** %x.addr, align 8
  br label %repeat

if.else:                                          ; preds = %if.then.295
  %132 = load i32, i32* %regno.addr, align 4
  %133 = load i32, i32* %endregno.addr, align 4
  %134 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %134 to i64
  %135 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld303, i32 0, i64 %idxprom302
  %rtx305 = bitcast %union.rtunion_def* %arrayidx304 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %rtx305, align 8
  %137 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %call306 = call i32 @refers_to_regno_p(i32 %132, i32 %133, %struct.rtx_def* %136, %struct.rtx_def** %137)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.309:                                       ; preds = %if.else
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309
  br label %if.end.347

if.else.311:                                      ; preds = %land.lhs.true.288, %for.body
  %138 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %138 to i64
  %139 = load i8*, i8** %fmt, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %139, i64 %idxprom312
  %140 = load i8, i8* %arrayidx313, align 1
  %conv314 = sext i8 %140 to i32
  %cmp315 = icmp eq i32 %conv314, 69
  br i1 %cmp315, label %if.then.317, label %if.end.346

if.then.317:                                      ; preds = %if.else.311
  %141 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %141 to i64
  %142 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld319 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld319, i32 0, i64 %idxprom318
  %rtvec = bitcast %union.rtunion_def* %arrayidx320 to %struct.rtvec_def**
  %143 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %143, i32 0, i32 0
  %144 = load i32, i32* %num_elem, align 4
  %sub321 = sub nsw i32 %144, 1
  store i32 %sub321, i32* %j, align 4
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc, %if.then.317
  %145 = load i32, i32* %j, align 4
  %cmp323 = icmp sge i32 %145, 0
  br i1 %cmp323, label %for.body.325, label %for.end

for.body.325:                                     ; preds = %for.cond.322
  %146 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %147 = load i32, i32* %j, align 4
  %idxprom326 = sext i32 %147 to i64
  %148 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %148 to i64
  %149 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld328 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx329 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld328, i32 0, i64 %idxprom327
  %rtvec330 = bitcast %union.rtunion_def* %arrayidx329 to %struct.rtvec_def**
  %150 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec330, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %150, i32 0, i32 1
  %arrayidx331 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom326
  %cmp332 = icmp ne %struct.rtx_def** %146, %arrayidx331
  br i1 %cmp332, label %land.lhs.true.334, label %if.end.345

land.lhs.true.334:                                ; preds = %for.body.325
  %151 = load i32, i32* %regno.addr, align 4
  %152 = load i32, i32* %endregno.addr, align 4
  %153 = load i32, i32* %j, align 4
  %idxprom335 = sext i32 %153 to i64
  %154 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %154 to i64
  %155 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld337, i32 0, i64 %idxprom336
  %rtvec339 = bitcast %union.rtunion_def* %arrayidx338 to %struct.rtvec_def**
  %156 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec339, align 8
  %elem340 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %156, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem340, i32 0, i64 %idxprom335
  %157 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx341, align 8
  %158 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %call342 = call i32 @refers_to_regno_p(i32 %151, i32 %152, %struct.rtx_def* %157, %struct.rtx_def** %158)
  %tobool343 = icmp ne i32 %call342, 0
  br i1 %tobool343, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %land.lhs.true.334
  store i32 1, i32* %retval
  br label %return

if.end.345:                                       ; preds = %land.lhs.true.334, %for.body.325
  br label %for.inc

for.inc:                                          ; preds = %if.end.345
  %159 = load i32, i32* %j, align 4
  %dec = add nsw i32 %159, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.322

for.end:                                          ; preds = %for.cond.322
  br label %if.end.346

if.end.346:                                       ; preds = %for.end, %if.else.311
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %if.end.310
  br label %for.inc.348

for.inc.348:                                      ; preds = %if.end.347
  %160 = load i32, i32* %i, align 4
  %dec349 = add nsw i32 %160, -1
  store i32 %dec349, i32* %i, align 4
  br label %for.cond

for.end.350:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.350, %if.then.344, %if.then.308, %if.then.270, %if.then.260, %land.end.188, %land.end, %if.then.8, %if.then
  %161 = load i32, i32* %retval
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define i32 @subreg_regno(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %ret = alloca i32, align 4
  %subreg = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %subreg, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %regno, align 4
  %4 = load i32, i32* %regno, align 4
  %5 = load i32, i32* %regno, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtuint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %9 = load i32, i32* %rtuint5, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load6 = load i32, i32* %11, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 16
  %bf.clear8 = and i32 %bf.lshr7, 255
  %call = call i32 @subreg_regno_offset(i32 %5, i32 %bf.clear, i32 %9, i32 %bf.clear8)
  %add = add i32 %4, %call
  store i32 %add, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @reg_set_last(%struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %orig_insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %last_value = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %orig_insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %land.lhs.true, label %land.end.6

land.lhs.true:                                    ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 36
  br i1 %cmp, label %land.rhs, label %land.end.6

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 34
  br i1 %cmp3, label %land.rhs.4, label %land.end

land.rhs.4:                                       ; preds = %land.rhs
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %7 = load i32, i32* %rtuint, align 4
  %cmp5 = icmp ule i32 %7, 53
  br label %land.end

land.end:                                         ; preds = %land.rhs.4, %land.rhs
  %8 = phi i1 [ false, %land.rhs ], [ %cmp5, %land.rhs.4 ]
  %lnot = xor i1 %8, true
  br label %land.end.6

land.end.6:                                       ; preds = %land.end, %land.lhs.true, %for.cond
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %lnot, %land.end ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.6
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load7 = load i32, i32* %11, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %idxprom = sext i32 %bf.clear8 to i64
  %arrayidx9 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx9, align 1
  %conv = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv, 105
  br i1 %cmp10, label %if.then, label %if.end.80

if.then:                                          ; preds = %for.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @set_of(%struct.rtx_def* %13, %struct.rtx_def* %14)
  store %struct.rtx_def* %call, %struct.rtx_def** %set, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool12 = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.79

if.then.13:                                       ; preds = %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load14 = load i32, i32* %17, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp ne i32 %bf.clear15, 47
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %18 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp20 = icmp ne %struct.rtx_def* %19, %20
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %lor.lhs.false, %if.then.13
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %last_value, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load26 = load i32, i32* %24, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 67
  br i1 %cmp28, label %if.then.78, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load31 = load i32, i32* %26, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 68
  br i1 %cmp33, label %if.then.78, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.30
  %27 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load36 = load i32, i32* %28, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 54
  br i1 %cmp38, label %if.then.78, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.35
  %29 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load41 = load i32, i32* %30, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 55
  br i1 %cmp43, label %if.then.78, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.40
  %31 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load46 = load i32, i32* %32, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 58
  br i1 %cmp48, label %if.then.78, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.45
  %33 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load51 = load i32, i32* %34, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 134
  br i1 %cmp53, label %if.then.78, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.50
  %35 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load56 = load i32, i32* %36, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 56
  br i1 %cmp58, label %if.then.78, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.55
  %37 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load61 = load i32, i32* %38, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  %cmp63 = icmp eq i32 %bf.clear62, 140
  br i1 %cmp63, label %if.then.78, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.60
  %39 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load66 = load i32, i32* %40, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 61
  br i1 %cmp68, label %land.lhs.true.75, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.65
  %41 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load71 = load i32, i32* %42, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 63
  br i1 %cmp73, label %land.lhs.true.75, label %if.else

land.lhs.true.75:                                 ; preds = %lor.lhs.false.70, %lor.lhs.false.65
  %43 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn, align 8
  %call76 = call i32 @reg_set_between_p(%struct.rtx_def* %43, %struct.rtx_def* %44, %struct.rtx_def* %45)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.else, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.75, %lor.lhs.false.60, %lor.lhs.false.55, %lor.lhs.false.50, %lor.lhs.false.45, %lor.lhs.false.40, %lor.lhs.false.35, %lor.lhs.false.30, %if.end
  %46 = load %struct.rtx_def*, %struct.rtx_def** %last_value, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.75, %lor.lhs.false.70
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.79:                                        ; preds = %if.then
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 1
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.6
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else, %if.then.78, %if.then.22
  %49 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %49
}

; Function Attrs: nounwind uwtable
define void @note_uses(%struct.rtx_def** %pbody, void (%struct.rtx_def**, i8*)* %fun, i8* %data) #0 {
entry:
  %pbody.addr = alloca %struct.rtx_def**, align 8
  %fun.addr = alloca void (%struct.rtx_def**, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %body = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %dest = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %pbody, %struct.rtx_def*** %pbody.addr, align 8
  store void (%struct.rtx_def**, i8*)* %fun, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %pbody.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %body, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 38, label %sw.bb
    i32 39, label %sw.bb.4
    i32 48, label %sw.bb.11
    i32 41, label %sw.bb.15
    i32 52, label %sw.bb.33
    i32 46, label %sw.bb.37
    i32 42, label %sw.bb.41
    i32 43, label %sw.bb.41
    i32 49, label %sw.bb.59
    i32 47, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %entry
  %4 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load i8*, i8** %data.addr, align 8
  call void %4(%struct.rtx_def** %rtx, i8* %6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %9 = load i8*, i8** %data.addr, align 8
  call void @note_uses(%struct.rtx_def** %rtx3, void (%struct.rtx_def**, i8*)* %8, i8* %9)
  br label %return

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %11, i32 0, i32 0
  %12 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.4
  %13 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %13, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtvec9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtvec_def**
  %16 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec9, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %16, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %17 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %18 = load i8*, i8** %data.addr, align 8
  call void @note_uses(%struct.rtx_def** %arrayidx10, void (%struct.rtx_def**, i8*)* %17, i8* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

sw.bb.11:                                         ; preds = %entry
  %20 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %22 = load i8*, i8** %data.addr, align 8
  call void %20(%struct.rtx_def** %rtx14, i8* %22)
  br label %return

sw.bb.15:                                         ; preds = %entry
  %23 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtvec18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtvec_def**
  %24 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec18, align 8
  %num_elem19 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %24, i32 0, i32 0
  %25 = load i32, i32* %num_elem19, align 4
  %sub20 = sub nsw i32 %25, 1
  store i32 %sub20, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.30, %sw.bb.15
  %26 = load i32, i32* %i, align 4
  %cmp22 = icmp sge i32 %26, 0
  br i1 %cmp22, label %for.body.23, label %for.end.32

for.body.23:                                      ; preds = %for.cond.21
  %27 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 3
  %rtvec27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec27, align 8
  %elem28 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem28, i32 0, i64 %idxprom24
  %31 = load i8*, i8** %data.addr, align 8
  call void %27(%struct.rtx_def** %arrayidx29, i8* %31)
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.23
  %32 = load i32, i32* %i, align 4
  %dec31 = add nsw i32 %32, -1
  store i32 %dec31, i32* %i, align 4
  br label %for.cond.21

for.end.32:                                       ; preds = %for.cond.21
  br label %return

sw.bb.33:                                         ; preds = %entry
  %33 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %35 = load i8*, i8** %data.addr, align 8
  call void %33(%struct.rtx_def** %rtx36, i8* %35)
  br label %return

sw.bb.37:                                         ; preds = %entry
  %36 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %38 = load i8*, i8** %data.addr, align 8
  call void %36(%struct.rtx_def** %rtx40, i8* %38)
  br label %return

sw.bb.41:                                         ; preds = %entry, %entry
  %39 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtvec44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtvec_def**
  %40 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec44, align 8
  %num_elem45 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %40, i32 0, i32 0
  %41 = load i32, i32* %num_elem45, align 4
  %sub46 = sub nsw i32 %41, 1
  store i32 %sub46, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.56, %sw.bb.41
  %42 = load i32, i32* %i, align 4
  %cmp48 = icmp sge i32 %42, 0
  br i1 %cmp48, label %for.body.49, label %for.end.58

for.body.49:                                      ; preds = %for.cond.47
  %43 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %44 to i64
  %45 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtvec53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtvec_def**
  %46 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec53, align 8
  %elem54 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %46, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem54, i32 0, i64 %idxprom50
  %47 = load i8*, i8** %data.addr, align 8
  call void %43(%struct.rtx_def** %arrayidx55, i8* %47)
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.49
  %48 = load i32, i32* %i, align 4
  %dec57 = add nsw i32 %48, -1
  store i32 %dec57, i32* %i, align 4
  br label %for.cond.47

for.end.58:                                       ; preds = %for.cond.47
  br label %return

sw.bb.59:                                         ; preds = %entry
  %49 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load63 = load i32, i32* %51, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 66
  br i1 %cmp65, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.59
  %52 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 0
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %55 = load i8*, i8** %data.addr, align 8
  call void %52(%struct.rtx_def** %rtx71, i8* %55)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.59
  br label %return

sw.bb.72:                                         ; preds = %entry
  %56 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %dest, align 8
  %58 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 1
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %60 = load i8*, i8** %data.addr, align 8
  call void %58(%struct.rtx_def** %rtx78, i8* %60)
  %61 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load79 = load i32, i32* %62, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp eq i32 %bf.clear80, 133
  br i1 %cmp81, label %if.then.82, label %if.end.89

if.then.82:                                       ; preds = %sw.bb.72
  %63 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 1
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %65 = load i8*, i8** %data.addr, align 8
  call void %63(%struct.rtx_def** %rtx85, i8* %65)
  %66 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 2
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %68 = load i8*, i8** %data.addr, align 8
  call void %66(%struct.rtx_def** %rtx88, i8* %68)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.82, %sw.bb.72
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.89
  %69 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load90 = load i32, i32* %70, align 8
  %bf.clear91 = and i32 %bf.load90, 65535
  %cmp92 = icmp eq i32 %bf.clear91, 63
  br i1 %cmp92, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %71 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load93 = load i32, i32* %72, align 8
  %bf.clear94 = and i32 %bf.load93, 65535
  %cmp95 = icmp eq i32 %bf.clear94, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %73 = phi i1 [ true, %while.cond ], [ %cmp95, %lor.rhs ]
  br i1 %73, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %74 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  store %struct.rtx_def* %75, %struct.rtx_def** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %76 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load99 = load i32, i32* %77, align 8
  %bf.clear100 = and i32 %bf.load99, 65535
  %cmp101 = icmp eq i32 %bf.clear100, 66
  br i1 %cmp101, label %if.then.102, label %if.end.106

if.then.102:                                      ; preds = %while.end
  %78 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %80 = load i8*, i8** %data.addr, align 8
  call void %78(%struct.rtx_def** %rtx105, i8* %80)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.102, %while.end
  br label %return

sw.default:                                       ; preds = %entry
  %81 = load void (%struct.rtx_def**, i8*)*, void (%struct.rtx_def**, i8*)** %fun.addr, align 8
  %82 = load %struct.rtx_def**, %struct.rtx_def*** %pbody.addr, align 8
  %83 = load i8*, i8** %data.addr, align 8
  call void %81(%struct.rtx_def** %82, i8* %83)
  br label %return

return:                                           ; preds = %sw.default, %if.end.106, %if.end, %for.end.58, %sw.bb.37, %sw.bb.33, %for.end.32, %sw.bb.11, %for.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @dead_or_set_p(%struct.rtx_def* %insn, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %last_regno = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 69
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 1678, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.dead_or_set_p, i32 0, i32 0)) #3
  unreachable

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  store i32 %5, i32* %regno, align 4
  %6 = load i32, i32* %regno, align 4
  %cmp6 = icmp uge i32 %6, 53
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %7 = load i32, i32* %regno, align 4
  br label %cond.end.66

cond.false:                                       ; preds = %if.end.5
  %8 = load i32, i32* %regno, align 4
  %9 = load i32, i32* %regno, align 4
  %cmp7 = icmp uge i32 %9, 8
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.false
  %10 = load i32, i32* %regno, align 4
  %cmp8 = icmp ule i32 %10, 15
  br i1 %cmp8, label %cond.true.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.false
  %11 = load i32, i32* %regno, align 4
  %cmp9 = icmp uge i32 %11, 21
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false.12

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %regno, align 4
  %cmp11 = icmp ule i32 %12, 28
  br i1 %cmp11, label %cond.true.20, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true.10, %lor.lhs.false
  %13 = load i32, i32* %regno, align 4
  %cmp13 = icmp uge i32 %13, 45
  br i1 %cmp13, label %land.lhs.true.14, label %lor.lhs.false.16

land.lhs.true.14:                                 ; preds = %lor.lhs.false.12
  %14 = load i32, i32* %regno, align 4
  %cmp15 = icmp ule i32 %14, 52
  br i1 %cmp15, label %cond.true.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true.14, %lor.lhs.false.12
  %15 = load i32, i32* %regno, align 4
  %cmp17 = icmp uge i32 %15, 29
  br i1 %cmp17, label %land.lhs.true.18, label %cond.false.31

land.lhs.true.18:                                 ; preds = %lor.lhs.false.16
  %16 = load i32, i32* %regno, align 4
  %cmp19 = icmp ule i32 %16, 36
  br i1 %cmp19, label %cond.true.20, label %cond.false.31

cond.true.20:                                     ; preds = %land.lhs.true.18, %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load21 = load i32, i32* %18, align 8
  %bf.lshr = lshr i32 %bf.load21, 16
  %bf.clear22 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear22 to i64
  %arrayidx23 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp eq i32 %19, 5
  br i1 %cmp24, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.20
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load25 = load i32, i32* %21, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 16
  %bf.clear27 = and i32 %bf.lshr26, 255
  %idxprom28 = sext i32 %bf.clear27 to i64
  %arrayidx29 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom28
  %22 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %22, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.20
  %23 = phi i1 [ true, %cond.true.20 ], [ %cmp30, %lor.rhs ]
  %cond = select i1 %23, i32 2, i32 1
  br label %cond.end.62

cond.false.31:                                    ; preds = %land.lhs.true.18, %lor.lhs.false.16
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load32 = load i32, i32* %25, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 16
  %bf.clear34 = and i32 %bf.lshr33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 18
  br i1 %cmp35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.false.31
  %26 = load i32, i32* @target_flags, align 4
  %and = and i32 %26, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond37 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.60

cond.false.38:                                    ; preds = %cond.false.31
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load39 = load i32, i32* %28, align 8
  %bf.lshr40 = lshr i32 %bf.load39, 16
  %bf.clear41 = and i32 %bf.lshr40, 255
  %cmp42 = icmp eq i32 %bf.clear41, 24
  br i1 %cmp42, label %cond.true.43, label %cond.false.47

cond.true.43:                                     ; preds = %cond.false.38
  %29 = load i32, i32* @target_flags, align 4
  %and44 = and i32 %29, 33554432
  %tobool45 = icmp ne i32 %and44, 0
  %cond46 = select i1 %tobool45, i32 4, i32 6
  br label %cond.end

cond.false.47:                                    ; preds = %cond.false.38
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load48 = load i32, i32* %31, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 16
  %bf.clear50 = and i32 %bf.lshr49, 255
  %idxprom51 = sext i32 %bf.clear50 to i64
  %arrayidx52 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom51
  %32 = load i8, i8* %arrayidx52, align 1
  %conv = zext i8 %32 to i32
  %33 = load i32, i32* @target_flags, align 4
  %and53 = and i32 %33, 33554432
  %tobool54 = icmp ne i32 %and53, 0
  %cond55 = select i1 %tobool54, i32 8, i32 4
  %add = add nsw i32 %conv, %cond55
  %sub = sub nsw i32 %add, 1
  %34 = load i32, i32* @target_flags, align 4
  %and56 = and i32 %34, 33554432
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, i32 8, i32 4
  %div = sdiv i32 %sub, %cond58
  br label %cond.end

cond.end:                                         ; preds = %cond.false.47, %cond.true.43
  %cond59 = phi i32 [ %cond46, %cond.true.43 ], [ %div, %cond.false.47 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end, %cond.true.36
  %cond61 = phi i32 [ %cond37, %cond.true.36 ], [ %cond59, %cond.end ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end.60, %lor.end
  %cond63 = phi i32 [ %cond, %lor.end ], [ %cond61, %cond.end.60 ]
  %add64 = add i32 %8, %cond63
  %sub65 = sub i32 %add64, 1
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.62, %cond.true
  %cond67 = phi i32 [ %7, %cond.true ], [ %sub65, %cond.end.62 ]
  store i32 %cond67, i32* %last_regno, align 4
  %35 = load i32, i32* %regno, align 4
  store i32 %35, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.66
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %last_regno, align 4
  %cmp68 = icmp ule i32 %36, %37
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %39 = load i32, i32* %i, align 4
  %call = call i32 @dead_or_set_regno_p(%struct.rtx_def* %38, i32 %39)
  %tobool70 = icmp ne i32 %call, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %40 = load i32, i32* %i, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.71, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @dead_or_set_regno_p(%struct.rtx_def* %insn, i32 %test_regno) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %test_regno.addr = alloca i32, align 4
  %regno = alloca i32, align 4
  %endregno = alloca i32, align 4
  %pattern = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %body = alloca %struct.rtx_def*, align 8
  %dest190 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %test_regno, i32* %test_regno.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load i32, i32* %test_regno.addr, align 4
  %call = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %0, i32 1, i32 %1)
  %tobool = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = load i32, i32* %test_regno.addr, align 4
  %call1 = call i32 @find_regno_fusage(%struct.rtx_def* %4, i32 49, i32 %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %pattern, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load5 = load i32, i32* %9, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 38
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %pattern, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load13 = load i32, i32* %13, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 47
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.12
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %dest, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load23 = load i32, i32* %18, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 63
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.58

land.lhs.true.26:                                 ; preds = %if.then.16
  %19 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load27 = load i32, i32* %20, align 8
  %bf.lshr = lshr i32 %bf.load27, 16
  %bf.clear28 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear28 to i64
  %arrayidx29 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %21 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %21 to i32
  %22 = load i32, i32* @target_flags, align 4
  %and = and i32 %22, 33554432
  %tobool30 = icmp ne i32 %and, 0
  %cond = select i1 %tobool30, i32 8, i32 4
  %add = add nsw i32 %conv, %cond
  %sub = sub nsw i32 %add, 1
  %23 = load i32, i32* @target_flags, align 4
  %and31 = and i32 %23, 33554432
  %tobool32 = icmp ne i32 %and31, 0
  %cond33 = select i1 %tobool32, i32 8, i32 4
  %div = sdiv i32 %sub, %cond33
  %24 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load37 = load i32, i32* %26, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 16
  %bf.clear39 = and i32 %bf.lshr38, 255
  %idxprom40 = sext i32 %bf.clear39 to i64
  %arrayidx41 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom40
  %27 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %27 to i32
  %28 = load i32, i32* @target_flags, align 4
  %and43 = and i32 %28, 33554432
  %tobool44 = icmp ne i32 %and43, 0
  %cond45 = select i1 %tobool44, i32 8, i32 4
  %add46 = add nsw i32 %conv42, %cond45
  %sub47 = sub nsw i32 %add46, 1
  %29 = load i32, i32* @target_flags, align 4
  %and48 = and i32 %29, 33554432
  %tobool49 = icmp ne i32 %and48, 0
  %cond50 = select i1 %tobool49, i32 8, i32 4
  %div51 = sdiv i32 %sub47, %cond50
  %cmp52 = icmp eq i32 %div, %div51
  br i1 %cmp52, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %land.lhs.true.26
  %30 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %dest, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %land.lhs.true.26, %if.then.16
  %32 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load59 = load i32, i32* %33, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp ne i32 %bf.clear60, 61
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.58
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.58
  %34 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %35 = load i32, i32* %rtuint, align 4
  store i32 %35, i32* %regno, align 4
  %36 = load i32, i32* %regno, align 4
  %cmp67 = icmp uge i32 %36, 53
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.64
  %37 = load i32, i32* %regno, align 4
  %add69 = add i32 %37, 1
  br label %cond.end.150

cond.false:                                       ; preds = %if.end.64
  %38 = load i32, i32* %regno, align 4
  %39 = load i32, i32* %regno, align 4
  %cmp70 = icmp uge i32 %39, 8
  br i1 %cmp70, label %land.lhs.true.72, label %lor.lhs.false

land.lhs.true.72:                                 ; preds = %cond.false
  %40 = load i32, i32* %regno, align 4
  %cmp73 = icmp ule i32 %40, 15
  br i1 %cmp73, label %cond.true.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.72, %cond.false
  %41 = load i32, i32* %regno, align 4
  %cmp75 = icmp uge i32 %41, 21
  br i1 %cmp75, label %land.lhs.true.77, label %lor.lhs.false.80

land.lhs.true.77:                                 ; preds = %lor.lhs.false
  %42 = load i32, i32* %regno, align 4
  %cmp78 = icmp ule i32 %42, 28
  br i1 %cmp78, label %cond.true.92, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %land.lhs.true.77, %lor.lhs.false
  %43 = load i32, i32* %regno, align 4
  %cmp81 = icmp uge i32 %43, 45
  br i1 %cmp81, label %land.lhs.true.83, label %lor.lhs.false.86

land.lhs.true.83:                                 ; preds = %lor.lhs.false.80
  %44 = load i32, i32* %regno, align 4
  %cmp84 = icmp ule i32 %44, 52
  br i1 %cmp84, label %cond.true.92, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %land.lhs.true.83, %lor.lhs.false.80
  %45 = load i32, i32* %regno, align 4
  %cmp87 = icmp uge i32 %45, 29
  br i1 %cmp87, label %land.lhs.true.89, label %cond.false.108

land.lhs.true.89:                                 ; preds = %lor.lhs.false.86
  %46 = load i32, i32* %regno, align 4
  %cmp90 = icmp ule i32 %46, 36
  br i1 %cmp90, label %cond.true.92, label %cond.false.108

cond.true.92:                                     ; preds = %land.lhs.true.89, %land.lhs.true.83, %land.lhs.true.77, %land.lhs.true.72
  %47 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load93 = load i32, i32* %48, align 8
  %bf.lshr94 = lshr i32 %bf.load93, 16
  %bf.clear95 = and i32 %bf.lshr94, 255
  %idxprom96 = sext i32 %bf.clear95 to i64
  %arrayidx97 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom96
  %49 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp eq i32 %49, 5
  br i1 %cmp98, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.92
  %50 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load100 = load i32, i32* %51, align 8
  %bf.lshr101 = lshr i32 %bf.load100, 16
  %bf.clear102 = and i32 %bf.lshr101, 255
  %idxprom103 = sext i32 %bf.clear102 to i64
  %arrayidx104 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom103
  %52 = load i32, i32* %arrayidx104, align 4
  %cmp105 = icmp eq i32 %52, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.92
  %53 = phi i1 [ true, %cond.true.92 ], [ %cmp105, %lor.rhs ]
  %cond107 = select i1 %53, i32 2, i32 1
  br label %cond.end.147

cond.false.108:                                   ; preds = %land.lhs.true.89, %lor.lhs.false.86
  %54 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load109 = load i32, i32* %55, align 8
  %bf.lshr110 = lshr i32 %bf.load109, 16
  %bf.clear111 = and i32 %bf.lshr110, 255
  %cmp112 = icmp eq i32 %bf.clear111, 18
  br i1 %cmp112, label %cond.true.114, label %cond.false.118

cond.true.114:                                    ; preds = %cond.false.108
  %56 = load i32, i32* @target_flags, align 4
  %and115 = and i32 %56, 33554432
  %tobool116 = icmp ne i32 %and115, 0
  %cond117 = select i1 %tobool116, i32 2, i32 3
  br label %cond.end.145

cond.false.118:                                   ; preds = %cond.false.108
  %57 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load119 = load i32, i32* %58, align 8
  %bf.lshr120 = lshr i32 %bf.load119, 16
  %bf.clear121 = and i32 %bf.lshr120, 255
  %cmp122 = icmp eq i32 %bf.clear121, 24
  br i1 %cmp122, label %cond.true.124, label %cond.false.128

cond.true.124:                                    ; preds = %cond.false.118
  %59 = load i32, i32* @target_flags, align 4
  %and125 = and i32 %59, 33554432
  %tobool126 = icmp ne i32 %and125, 0
  %cond127 = select i1 %tobool126, i32 4, i32 6
  br label %cond.end

cond.false.128:                                   ; preds = %cond.false.118
  %60 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load129 = load i32, i32* %61, align 8
  %bf.lshr130 = lshr i32 %bf.load129, 16
  %bf.clear131 = and i32 %bf.lshr130, 255
  %idxprom132 = sext i32 %bf.clear131 to i64
  %arrayidx133 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom132
  %62 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %62 to i32
  %63 = load i32, i32* @target_flags, align 4
  %and135 = and i32 %63, 33554432
  %tobool136 = icmp ne i32 %and135, 0
  %cond137 = select i1 %tobool136, i32 8, i32 4
  %add138 = add nsw i32 %conv134, %cond137
  %sub139 = sub nsw i32 %add138, 1
  %64 = load i32, i32* @target_flags, align 4
  %and140 = and i32 %64, 33554432
  %tobool141 = icmp ne i32 %and140, 0
  %cond142 = select i1 %tobool141, i32 8, i32 4
  %div143 = sdiv i32 %sub139, %cond142
  br label %cond.end

cond.end:                                         ; preds = %cond.false.128, %cond.true.124
  %cond144 = phi i32 [ %cond127, %cond.true.124 ], [ %div143, %cond.false.128 ]
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.end, %cond.true.114
  %cond146 = phi i32 [ %cond117, %cond.true.114 ], [ %cond144, %cond.end ]
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.end.145, %lor.end
  %cond148 = phi i32 [ %cond107, %lor.end ], [ %cond146, %cond.end.145 ]
  %add149 = add i32 %38, %cond148
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.147, %cond.true
  %cond151 = phi i32 [ %add69, %cond.true ], [ %add149, %cond.end.147 ]
  store i32 %cond151, i32* %endregno, align 4
  %65 = load i32, i32* %test_regno.addr, align 4
  %66 = load i32, i32* %regno, align 4
  %cmp152 = icmp uge i32 %65, %66
  br i1 %cmp152, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.150
  %67 = load i32, i32* %test_regno.addr, align 4
  %68 = load i32, i32* %endregno, align 4
  %cmp154 = icmp ult i32 %67, %68
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.150
  %69 = phi i1 [ false, %cond.end.150 ], [ %cmp154, %land.rhs ]
  %land.ext = zext i1 %69 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.12
  %70 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load156 = load i32, i32* %71, align 8
  %bf.clear157 = and i32 %bf.load156, 65535
  %cmp158 = icmp eq i32 %bf.clear157, 39
  br i1 %cmp158, label %if.then.160, label %if.end.347

if.then.160:                                      ; preds = %if.else
  %72 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld161, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx162 to %struct.rtvec_def**
  %73 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %73, i32 0, i32 0
  %74 = load i32, i32* %num_elem, align 4
  %sub163 = sub nsw i32 %74, 1
  store i32 %sub163, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.160
  %75 = load i32, i32* %i, align 4
  %cmp164 = icmp sge i32 %75, 0
  br i1 %cmp164, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %76 to i64
  %77 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 0
  %rtvec169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtvec_def**
  %78 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec169, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %78, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom166
  %79 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx170, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %body, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load171 = load i32, i32* %81, align 8
  %bf.clear172 = and i32 %bf.load171, 65535
  %cmp173 = icmp eq i32 %bf.clear172, 38
  br i1 %cmp173, label %if.then.175, label %if.end.179

if.then.175:                                      ; preds = %for.body
  %82 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 1
  %rtx178 = bitcast %union.rtunion_def* %arrayidx177 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx178, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %body, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.175, %for.body
  %84 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load180 = load i32, i32* %85, align 8
  %bf.clear181 = and i32 %bf.load180, 65535
  %cmp182 = icmp eq i32 %bf.clear181, 47
  br i1 %cmp182, label %if.then.189, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %if.end.179
  %86 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load185 = load i32, i32* %87, align 8
  %bf.clear186 = and i32 %bf.load185, 65535
  %cmp187 = icmp eq i32 %bf.clear186, 49
  br i1 %cmp187, label %if.then.189, label %if.end.346

if.then.189:                                      ; preds = %lor.lhs.false.184, %if.end.179
  %88 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 0
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %dest190, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load194 = load i32, i32* %91, align 8
  %bf.clear195 = and i32 %bf.load194, 65535
  %cmp196 = icmp eq i32 %bf.clear195, 63
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.238

land.lhs.true.198:                                ; preds = %if.then.189
  %92 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load199 = load i32, i32* %93, align 8
  %bf.lshr200 = lshr i32 %bf.load199, 16
  %bf.clear201 = and i32 %bf.lshr200, 255
  %idxprom202 = sext i32 %bf.clear201 to i64
  %arrayidx203 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom202
  %94 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %94 to i32
  %95 = load i32, i32* @target_flags, align 4
  %and205 = and i32 %95, 33554432
  %tobool206 = icmp ne i32 %and205, 0
  %cond207 = select i1 %tobool206, i32 8, i32 4
  %add208 = add nsw i32 %conv204, %cond207
  %sub209 = sub nsw i32 %add208, 1
  %96 = load i32, i32* @target_flags, align 4
  %and210 = and i32 %96, 33554432
  %tobool211 = icmp ne i32 %and210, 0
  %cond212 = select i1 %tobool211, i32 8, i32 4
  %div213 = sdiv i32 %sub209, %cond212
  %97 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %fld214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld214, i32 0, i64 0
  %rtx216 = bitcast %union.rtunion_def* %arrayidx215 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx216, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load217 = load i32, i32* %99, align 8
  %bf.lshr218 = lshr i32 %bf.load217, 16
  %bf.clear219 = and i32 %bf.lshr218, 255
  %idxprom220 = sext i32 %bf.clear219 to i64
  %arrayidx221 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom220
  %100 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %100 to i32
  %101 = load i32, i32* @target_flags, align 4
  %and223 = and i32 %101, 33554432
  %tobool224 = icmp ne i32 %and223, 0
  %cond225 = select i1 %tobool224, i32 8, i32 4
  %add226 = add nsw i32 %conv222, %cond225
  %sub227 = sub nsw i32 %add226, 1
  %102 = load i32, i32* @target_flags, align 4
  %and228 = and i32 %102, 33554432
  %tobool229 = icmp ne i32 %and228, 0
  %cond230 = select i1 %tobool229, i32 8, i32 4
  %div231 = sdiv i32 %sub227, %cond230
  %cmp232 = icmp eq i32 %div213, %div231
  br i1 %cmp232, label %if.then.234, label %if.end.238

if.then.234:                                      ; preds = %land.lhs.true.198
  %103 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %fld235 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld235, i32 0, i64 0
  %rtx237 = bitcast %union.rtunion_def* %arrayidx236 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx237, align 8
  store %struct.rtx_def* %104, %struct.rtx_def** %dest190, align 8
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.234, %land.lhs.true.198, %if.then.189
  %105 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load239 = load i32, i32* %106, align 8
  %bf.clear240 = and i32 %bf.load239, 65535
  %cmp241 = icmp ne i32 %bf.clear240, 61
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.end.238
  br label %for.inc

if.end.244:                                       ; preds = %if.end.238
  %107 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %fld245 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx246 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld245, i32 0, i64 0
  %rtuint247 = bitcast %union.rtunion_def* %arrayidx246 to i32*
  %108 = load i32, i32* %rtuint247, align 4
  store i32 %108, i32* %regno, align 4
  %109 = load i32, i32* %regno, align 4
  %cmp248 = icmp uge i32 %109, 53
  br i1 %cmp248, label %cond.true.250, label %cond.false.252

cond.true.250:                                    ; preds = %if.end.244
  %110 = load i32, i32* %regno, align 4
  %add251 = add i32 %110, 1
  br label %cond.end.337

cond.false.252:                                   ; preds = %if.end.244
  %111 = load i32, i32* %regno, align 4
  %112 = load i32, i32* %regno, align 4
  %cmp253 = icmp uge i32 %112, 8
  br i1 %cmp253, label %land.lhs.true.255, label %lor.lhs.false.258

land.lhs.true.255:                                ; preds = %cond.false.252
  %113 = load i32, i32* %regno, align 4
  %cmp256 = icmp ule i32 %113, 15
  br i1 %cmp256, label %cond.true.276, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %land.lhs.true.255, %cond.false.252
  %114 = load i32, i32* %regno, align 4
  %cmp259 = icmp uge i32 %114, 21
  br i1 %cmp259, label %land.lhs.true.261, label %lor.lhs.false.264

land.lhs.true.261:                                ; preds = %lor.lhs.false.258
  %115 = load i32, i32* %regno, align 4
  %cmp262 = icmp ule i32 %115, 28
  br i1 %cmp262, label %cond.true.276, label %lor.lhs.false.264

lor.lhs.false.264:                                ; preds = %land.lhs.true.261, %lor.lhs.false.258
  %116 = load i32, i32* %regno, align 4
  %cmp265 = icmp uge i32 %116, 45
  br i1 %cmp265, label %land.lhs.true.267, label %lor.lhs.false.270

land.lhs.true.267:                                ; preds = %lor.lhs.false.264
  %117 = load i32, i32* %regno, align 4
  %cmp268 = icmp ule i32 %117, 52
  br i1 %cmp268, label %cond.true.276, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %land.lhs.true.267, %lor.lhs.false.264
  %118 = load i32, i32* %regno, align 4
  %cmp271 = icmp uge i32 %118, 29
  br i1 %cmp271, label %land.lhs.true.273, label %cond.false.294

land.lhs.true.273:                                ; preds = %lor.lhs.false.270
  %119 = load i32, i32* %regno, align 4
  %cmp274 = icmp ule i32 %119, 36
  br i1 %cmp274, label %cond.true.276, label %cond.false.294

cond.true.276:                                    ; preds = %land.lhs.true.273, %land.lhs.true.267, %land.lhs.true.261, %land.lhs.true.255
  %120 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load277 = load i32, i32* %121, align 8
  %bf.lshr278 = lshr i32 %bf.load277, 16
  %bf.clear279 = and i32 %bf.lshr278, 255
  %idxprom280 = sext i32 %bf.clear279 to i64
  %arrayidx281 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom280
  %122 = load i32, i32* %arrayidx281, align 4
  %cmp282 = icmp eq i32 %122, 5
  br i1 %cmp282, label %lor.end.292, label %lor.rhs.284

lor.rhs.284:                                      ; preds = %cond.true.276
  %123 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load285 = load i32, i32* %124, align 8
  %bf.lshr286 = lshr i32 %bf.load285, 16
  %bf.clear287 = and i32 %bf.lshr286, 255
  %idxprom288 = sext i32 %bf.clear287 to i64
  %arrayidx289 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom288
  %125 = load i32, i32* %arrayidx289, align 4
  %cmp290 = icmp eq i32 %125, 6
  br label %lor.end.292

lor.end.292:                                      ; preds = %lor.rhs.284, %cond.true.276
  %126 = phi i1 [ true, %cond.true.276 ], [ %cmp290, %lor.rhs.284 ]
  %cond293 = select i1 %126, i32 2, i32 1
  br label %cond.end.334

cond.false.294:                                   ; preds = %land.lhs.true.273, %lor.lhs.false.270
  %127 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %128 = bitcast %struct.rtx_def* %127 to i32*
  %bf.load295 = load i32, i32* %128, align 8
  %bf.lshr296 = lshr i32 %bf.load295, 16
  %bf.clear297 = and i32 %bf.lshr296, 255
  %cmp298 = icmp eq i32 %bf.clear297, 18
  br i1 %cmp298, label %cond.true.300, label %cond.false.304

cond.true.300:                                    ; preds = %cond.false.294
  %129 = load i32, i32* @target_flags, align 4
  %and301 = and i32 %129, 33554432
  %tobool302 = icmp ne i32 %and301, 0
  %cond303 = select i1 %tobool302, i32 2, i32 3
  br label %cond.end.332

cond.false.304:                                   ; preds = %cond.false.294
  %130 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load305 = load i32, i32* %131, align 8
  %bf.lshr306 = lshr i32 %bf.load305, 16
  %bf.clear307 = and i32 %bf.lshr306, 255
  %cmp308 = icmp eq i32 %bf.clear307, 24
  br i1 %cmp308, label %cond.true.310, label %cond.false.314

cond.true.310:                                    ; preds = %cond.false.304
  %132 = load i32, i32* @target_flags, align 4
  %and311 = and i32 %132, 33554432
  %tobool312 = icmp ne i32 %and311, 0
  %cond313 = select i1 %tobool312, i32 4, i32 6
  br label %cond.end.330

cond.false.314:                                   ; preds = %cond.false.304
  %133 = load %struct.rtx_def*, %struct.rtx_def** %dest190, align 8
  %134 = bitcast %struct.rtx_def* %133 to i32*
  %bf.load315 = load i32, i32* %134, align 8
  %bf.lshr316 = lshr i32 %bf.load315, 16
  %bf.clear317 = and i32 %bf.lshr316, 255
  %idxprom318 = sext i32 %bf.clear317 to i64
  %arrayidx319 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom318
  %135 = load i8, i8* %arrayidx319, align 1
  %conv320 = zext i8 %135 to i32
  %136 = load i32, i32* @target_flags, align 4
  %and321 = and i32 %136, 33554432
  %tobool322 = icmp ne i32 %and321, 0
  %cond323 = select i1 %tobool322, i32 8, i32 4
  %add324 = add nsw i32 %conv320, %cond323
  %sub325 = sub nsw i32 %add324, 1
  %137 = load i32, i32* @target_flags, align 4
  %and326 = and i32 %137, 33554432
  %tobool327 = icmp ne i32 %and326, 0
  %cond328 = select i1 %tobool327, i32 8, i32 4
  %div329 = sdiv i32 %sub325, %cond328
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.314, %cond.true.310
  %cond331 = phi i32 [ %cond313, %cond.true.310 ], [ %div329, %cond.false.314 ]
  br label %cond.end.332

cond.end.332:                                     ; preds = %cond.end.330, %cond.true.300
  %cond333 = phi i32 [ %cond303, %cond.true.300 ], [ %cond331, %cond.end.330 ]
  br label %cond.end.334

cond.end.334:                                     ; preds = %cond.end.332, %lor.end.292
  %cond335 = phi i32 [ %cond293, %lor.end.292 ], [ %cond333, %cond.end.332 ]
  %add336 = add i32 %111, %cond335
  br label %cond.end.337

cond.end.337:                                     ; preds = %cond.end.334, %cond.true.250
  %cond338 = phi i32 [ %add251, %cond.true.250 ], [ %add336, %cond.end.334 ]
  store i32 %cond338, i32* %endregno, align 4
  %138 = load i32, i32* %test_regno.addr, align 4
  %139 = load i32, i32* %regno, align 4
  %cmp339 = icmp uge i32 %138, %139
  br i1 %cmp339, label %land.lhs.true.341, label %if.end.345

land.lhs.true.341:                                ; preds = %cond.end.337
  %140 = load i32, i32* %test_regno.addr, align 4
  %141 = load i32, i32* %endregno, align 4
  %cmp342 = icmp ult i32 %140, %141
  br i1 %cmp342, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %land.lhs.true.341
  store i32 1, i32* %retval
  br label %return

if.end.345:                                       ; preds = %land.lhs.true.341, %cond.end.337
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %lor.lhs.false.184
  br label %for.inc

for.inc:                                          ; preds = %if.end.346, %if.then.243
  %142 = load i32, i32* %i, align 4
  %dec = add nsw i32 %142, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.347

if.end.347:                                       ; preds = %for.end, %if.else
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.348, %if.then.344, %land.end, %if.then.63, %if.then.3, %if.then
  %143 = load i32, i32* %retval
  ret i32 %143
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @find_regno_note(%struct.rtx_def* %insn, i32 %kind, i32 %regno) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %kind.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load3, 16
  %bf.clear4 = and i32 %bf.lshr, 255
  %8 = load i32, i32* %kind.addr, align 4
  %cmp5 = icmp eq i32 %bf.clear4, %8
  br i1 %cmp5, label %land.lhs.true, label %if.end.180

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 61
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.180

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %14 = load i32, i32* %rtuint, align 4
  %15 = load i32, i32* %regno.addr, align 4
  %cmp20 = icmp ule i32 %14, %15
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.180

land.lhs.true.22:                                 ; preds = %land.lhs.true.14
  %16 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtuint28 = bitcast %union.rtunion_def* %arrayidx27 to i32*
  %18 = load i32, i32* %rtuint28, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtuint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %21 = load i32, i32* %rtuint34, align 4
  %cmp35 = icmp uge i32 %21, 53
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.22
  br label %cond.end.174

cond.false:                                       ; preds = %land.lhs.true.22
  %22 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtuint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %24 = load i32, i32* %rtuint42, align 4
  %cmp43 = icmp uge i32 %24, 8
  br i1 %cmp43, label %land.lhs.true.45, label %lor.lhs.false

land.lhs.true.45:                                 ; preds = %cond.false
  %25 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtuint51 = bitcast %union.rtunion_def* %arrayidx50 to i32*
  %27 = load i32, i32* %rtuint51, align 4
  %cmp52 = icmp ule i32 %27, 15
  br i1 %cmp52, label %cond.true.107, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.45, %cond.false
  %28 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 0
  %rtuint59 = bitcast %union.rtunion_def* %arrayidx58 to i32*
  %30 = load i32, i32* %rtuint59, align 4
  %cmp60 = icmp uge i32 %30, 21
  br i1 %cmp60, label %land.lhs.true.62, label %lor.lhs.false.71

land.lhs.true.62:                                 ; preds = %lor.lhs.false
  %31 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 0
  %rtuint68 = bitcast %union.rtunion_def* %arrayidx67 to i32*
  %33 = load i32, i32* %rtuint68, align 4
  %cmp69 = icmp ule i32 %33, 28
  br i1 %cmp69, label %cond.true.107, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %land.lhs.true.62, %lor.lhs.false
  %34 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 0
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtuint77 = bitcast %union.rtunion_def* %arrayidx76 to i32*
  %36 = load i32, i32* %rtuint77, align 4
  %cmp78 = icmp uge i32 %36, 45
  br i1 %cmp78, label %land.lhs.true.80, label %lor.lhs.false.89

land.lhs.true.80:                                 ; preds = %lor.lhs.false.71
  %37 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtuint86 = bitcast %union.rtunion_def* %arrayidx85 to i32*
  %39 = load i32, i32* %rtuint86, align 4
  %cmp87 = icmp ule i32 %39, 52
  br i1 %cmp87, label %cond.true.107, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %land.lhs.true.80, %lor.lhs.false.71
  %40 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtuint95 = bitcast %union.rtunion_def* %arrayidx94 to i32*
  %42 = load i32, i32* %rtuint95, align 4
  %cmp96 = icmp uge i32 %42, 29
  br i1 %cmp96, label %land.lhs.true.98, label %cond.false.128

land.lhs.true.98:                                 ; preds = %lor.lhs.false.89
  %43 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 0
  %rtuint104 = bitcast %union.rtunion_def* %arrayidx103 to i32*
  %45 = load i32, i32* %rtuint104, align 4
  %cmp105 = icmp ule i32 %45, 36
  br i1 %cmp105, label %cond.true.107, label %cond.false.128

cond.true.107:                                    ; preds = %land.lhs.true.98, %land.lhs.true.80, %land.lhs.true.62, %land.lhs.true.45
  %46 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load111 = load i32, i32* %48, align 8
  %bf.lshr112 = lshr i32 %bf.load111, 16
  %bf.clear113 = and i32 %bf.lshr112, 255
  %idxprom114 = sext i32 %bf.clear113 to i64
  %arrayidx115 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom114
  %49 = load i32, i32* %arrayidx115, align 4
  %cmp116 = icmp eq i32 %49, 5
  br i1 %cmp116, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.107
  %50 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 0
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load121 = load i32, i32* %52, align 8
  %bf.lshr122 = lshr i32 %bf.load121, 16
  %bf.clear123 = and i32 %bf.lshr122, 255
  %idxprom124 = sext i32 %bf.clear123 to i64
  %arrayidx125 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom124
  %53 = load i32, i32* %arrayidx125, align 4
  %cmp126 = icmp eq i32 %53, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.107
  %54 = phi i1 [ true, %cond.true.107 ], [ %cmp126, %lor.rhs ]
  %cond = select i1 %54, i32 2, i32 1
  br label %cond.end.172

cond.false.128:                                   ; preds = %land.lhs.true.98, %lor.lhs.false.89
  %55 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx131, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load132 = load i32, i32* %57, align 8
  %bf.lshr133 = lshr i32 %bf.load132, 16
  %bf.clear134 = and i32 %bf.lshr133, 255
  %cmp135 = icmp eq i32 %bf.clear134, 18
  br i1 %cmp135, label %cond.true.137, label %cond.false.140

cond.true.137:                                    ; preds = %cond.false.128
  %58 = load i32, i32* @target_flags, align 4
  %and = and i32 %58, 33554432
  %tobool138 = icmp ne i32 %and, 0
  %cond139 = select i1 %tobool138, i32 2, i32 3
  br label %cond.end.170

cond.false.140:                                   ; preds = %cond.false.128
  %59 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx143, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load144 = load i32, i32* %61, align 8
  %bf.lshr145 = lshr i32 %bf.load144, 16
  %bf.clear146 = and i32 %bf.lshr145, 255
  %cmp147 = icmp eq i32 %bf.clear146, 24
  br i1 %cmp147, label %cond.true.149, label %cond.false.153

cond.true.149:                                    ; preds = %cond.false.140
  %62 = load i32, i32* @target_flags, align 4
  %and150 = and i32 %62, 33554432
  %tobool151 = icmp ne i32 %and150, 0
  %cond152 = select i1 %tobool151, i32 4, i32 6
  br label %cond.end

cond.false.153:                                   ; preds = %cond.false.140
  %63 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 0
  %rtx156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx156, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load157 = load i32, i32* %65, align 8
  %bf.lshr158 = lshr i32 %bf.load157, 16
  %bf.clear159 = and i32 %bf.lshr158, 255
  %idxprom160 = sext i32 %bf.clear159 to i64
  %arrayidx161 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom160
  %66 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %66 to i32
  %67 = load i32, i32* @target_flags, align 4
  %and163 = and i32 %67, 33554432
  %tobool164 = icmp ne i32 %and163, 0
  %cond165 = select i1 %tobool164, i32 8, i32 4
  %add = add nsw i32 %conv162, %cond165
  %sub = sub nsw i32 %add, 1
  %68 = load i32, i32* @target_flags, align 4
  %and166 = and i32 %68, 33554432
  %tobool167 = icmp ne i32 %and166, 0
  %cond168 = select i1 %tobool167, i32 8, i32 4
  %div = sdiv i32 %sub, %cond168
  br label %cond.end

cond.end:                                         ; preds = %cond.false.153, %cond.true.149
  %cond169 = phi i32 [ %cond152, %cond.true.149 ], [ %div, %cond.false.153 ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end, %cond.true.137
  %cond171 = phi i32 [ %cond139, %cond.true.137 ], [ %cond169, %cond.end ]
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.end.170, %lor.end
  %cond173 = phi i32 [ %cond, %lor.end ], [ %cond171, %cond.end.170 ]
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.end.172, %cond.true
  %cond175 = phi i32 [ 1, %cond.true ], [ %cond173, %cond.end.172 ]
  %add176 = add i32 %18, %cond175
  %69 = load i32, i32* %regno.addr, align 4
  %cmp177 = icmp ugt i32 %add176, %69
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %cond.end.174
  %70 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %retval
  br label %return

if.end.180:                                       ; preds = %cond.end.174, %land.lhs.true.14, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.180
  %71 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 1
  %rtx183 = bitcast %union.rtunion_def* %arrayidx182 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx183, align 8
  store %struct.rtx_def* %72, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.179, %if.then
  %73 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %73
}

; Function Attrs: nounwind uwtable
define i32 @find_regno_fusage(%struct.rtx_def* %insn, i32 %code, i32 %regno) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %regnote = alloca i32, align 4
  %op = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %cmp = icmp uge i32 %0, 53
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 34
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %op, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load5 = load i32, i32* %8, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %9 = load i32, i32* %code.addr, align 4
  %cmp7 = icmp eq i32 %bf.clear6, %9
  br i1 %cmp7, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %reg, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 61
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.81

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %14 = load i32, i32* %rtuint, align 4
  store i32 %14, i32* %regnote, align 4
  %15 = load i32, i32* %regno.addr, align 4
  %cmp17 = icmp ule i32 %14, %15
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.81

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %16 = load i32, i32* %regnote, align 4
  %17 = load i32, i32* %regnote, align 4
  %cmp19 = icmp uge i32 %17, 8
  br i1 %cmp19, label %land.lhs.true.20, label %lor.lhs.false.22

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %18 = load i32, i32* %regnote, align 4
  %cmp21 = icmp ule i32 %18, 15
  br i1 %cmp21, label %cond.true, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true.20, %land.lhs.true.18
  %19 = load i32, i32* %regnote, align 4
  %cmp23 = icmp uge i32 %19, 21
  br i1 %cmp23, label %land.lhs.true.24, label %lor.lhs.false.26

land.lhs.true.24:                                 ; preds = %lor.lhs.false.22
  %20 = load i32, i32* %regnote, align 4
  %cmp25 = icmp ule i32 %20, 28
  br i1 %cmp25, label %cond.true, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.24, %lor.lhs.false.22
  %21 = load i32, i32* %regnote, align 4
  %cmp27 = icmp uge i32 %21, 45
  br i1 %cmp27, label %land.lhs.true.28, label %lor.lhs.false.30

land.lhs.true.28:                                 ; preds = %lor.lhs.false.26
  %22 = load i32, i32* %regnote, align 4
  %cmp29 = icmp ule i32 %22, 52
  br i1 %cmp29, label %cond.true, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %land.lhs.true.28, %lor.lhs.false.26
  %23 = load i32, i32* %regnote, align 4
  %cmp31 = icmp uge i32 %23, 29
  br i1 %cmp31, label %land.lhs.true.32, label %cond.false

land.lhs.true.32:                                 ; preds = %lor.lhs.false.30
  %24 = load i32, i32* %regnote, align 4
  %cmp33 = icmp ule i32 %24, 36
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.32, %land.lhs.true.28, %land.lhs.true.24, %land.lhs.true.20
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load34 = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load34, 16
  %bf.clear35 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear35 to i64
  %arrayidx36 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp eq i32 %27, 5
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load38 = load i32, i32* %29, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 16
  %bf.clear40 = and i32 %bf.lshr39, 255
  %idxprom41 = sext i32 %bf.clear40 to i64
  %arrayidx42 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom41
  %30 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp eq i32 %30, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %31 = phi i1 [ true, %cond.true ], [ %cmp43, %lor.rhs ]
  %cond = select i1 %31, i32 2, i32 1
  br label %cond.end.75

cond.false:                                       ; preds = %land.lhs.true.32, %lor.lhs.false.30
  %32 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load44 = load i32, i32* %33, align 8
  %bf.lshr45 = lshr i32 %bf.load44, 16
  %bf.clear46 = and i32 %bf.lshr45, 255
  %cmp47 = icmp eq i32 %bf.clear46, 18
  br i1 %cmp47, label %cond.true.48, label %cond.false.51

cond.true.48:                                     ; preds = %cond.false
  %34 = load i32, i32* @target_flags, align 4
  %and = and i32 %34, 33554432
  %tobool49 = icmp ne i32 %and, 0
  %cond50 = select i1 %tobool49, i32 2, i32 3
  br label %cond.end.73

cond.false.51:                                    ; preds = %cond.false
  %35 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load52 = load i32, i32* %36, align 8
  %bf.lshr53 = lshr i32 %bf.load52, 16
  %bf.clear54 = and i32 %bf.lshr53, 255
  %cmp55 = icmp eq i32 %bf.clear54, 24
  br i1 %cmp55, label %cond.true.56, label %cond.false.60

cond.true.56:                                     ; preds = %cond.false.51
  %37 = load i32, i32* @target_flags, align 4
  %and57 = and i32 %37, 33554432
  %tobool58 = icmp ne i32 %and57, 0
  %cond59 = select i1 %tobool58, i32 4, i32 6
  br label %cond.end

cond.false.60:                                    ; preds = %cond.false.51
  %38 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load61 = load i32, i32* %39, align 8
  %bf.lshr62 = lshr i32 %bf.load61, 16
  %bf.clear63 = and i32 %bf.lshr62, 255
  %idxprom64 = sext i32 %bf.clear63 to i64
  %arrayidx65 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom64
  %40 = load i8, i8* %arrayidx65, align 1
  %conv = zext i8 %40 to i32
  %41 = load i32, i32* @target_flags, align 4
  %and66 = and i32 %41, 33554432
  %tobool67 = icmp ne i32 %and66, 0
  %cond68 = select i1 %tobool67, i32 8, i32 4
  %add = add nsw i32 %conv, %cond68
  %sub = sub nsw i32 %add, 1
  %42 = load i32, i32* @target_flags, align 4
  %and69 = and i32 %42, 33554432
  %tobool70 = icmp ne i32 %and69, 0
  %cond71 = select i1 %tobool70, i32 8, i32 4
  %div = sdiv i32 %sub, %cond71
  br label %cond.end

cond.end:                                         ; preds = %cond.false.60, %cond.true.56
  %cond72 = phi i32 [ %cond59, %cond.true.56 ], [ %div, %cond.false.60 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end, %cond.true.48
  %cond74 = phi i32 [ %cond50, %cond.true.48 ], [ %cond72, %cond.end ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %lor.end
  %cond76 = phi i32 [ %cond, %lor.end ], [ %cond74, %cond.end.73 ]
  %add77 = add i32 %16, %cond76
  %43 = load i32, i32* %regno.addr, align 4
  %cmp78 = icmp ugt i32 %add77, %43
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %cond.end.75
  store i32 1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %cond.end.75, %land.lhs.true.14, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %44 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 1
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.80, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.14

cond.true:                                        ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 47
  br i1 %cmp5, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %8, %struct.rtx_def* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.7
  %cond = phi %struct.rtx_def* [ %7, %cond.true.7 ], [ %call, %cond.false ]
  br label %cond.end.15

cond.false.14:                                    ; preds = %entry
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.end
  %cond16 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.14 ]
  %cmp17 = icmp eq %struct.rtx_def* %cond16, null
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.15
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %cond.end.15
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call19 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %11, i32 3, %struct.rtx_def* null)
  store %struct.rtx_def* %call19, %struct.rtx_def** %note, align 8
  %cmp20 = icmp ne %struct.rtx_def* %call19, null
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else
  %12 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %retval
  br label %return

if.else.23:                                       ; preds = %if.else
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call24 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %13, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call24, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.else.23, %if.then.22, %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %14
}

; Function Attrs: nounwind uwtable
define i32 @pure_call_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %u = alloca %struct.rtx_def*, align 8
  %m = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 34
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load1, 26
  %bf.clear2 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool3 = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %u, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 48
  br i1 %cmp9, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %u, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %m, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load13 = load i32, i32* %12, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 66
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.29

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %m, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load17 = load i32, i32* %14, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 16
  %bf.clear19 = and i32 %bf.lshr18, 255
  %cmp20 = icmp eq i32 %bf.clear19, 51
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.29

land.lhs.true.21:                                 ; preds = %land.lhs.true.16
  %15 = load %struct.rtx_def*, %struct.rtx_def** %m, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load25 = load i32, i32* %17, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 62
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.21
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.21, %land.lhs.true.16, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %18 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 1
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.28, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @remove_note(%struct.rtx_def* %insn, %struct.rtx_def* %note) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %note, %struct.rtx_def** %note.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 6
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  store %struct.rtx_def* %5, %struct.rtx_def** %rtx8, align 8
  br label %return

if.end.9:                                         ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 6
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %9 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 1
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %cmp16 = icmp eq %struct.rtx_def* %11, %12
  br i1 %cmp16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %for.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 1
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  store %struct.rtx_def* %14, %struct.rtx_def** %rtx23, align 8
  br label %return

if.end.24:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %16 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 1980, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.remove_note, i32 0, i32 0)) #3
  unreachable

return:                                           ; preds = %if.then.17, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @in_expr_list_p(%struct.rtx_def* %listp, %struct.rtx_def* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %listp.addr = alloca %struct.rtx_def*, align 8
  %node.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %listp, %struct.rtx_def** %listp.addr, align 8
  store %struct.rtx_def* %node, %struct.rtx_def** %node.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %listp.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %node.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @remove_node_from_expr_list(%struct.rtx_def* %node, %struct.rtx_def** %listp) #0 {
entry:
  %node.addr = alloca %struct.rtx_def*, align 8
  %listp.addr = alloca %struct.rtx_def**, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %node, %struct.rtx_def** %node.addr, align 8
  store %struct.rtx_def** %listp, %struct.rtx_def*** %listp.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %node.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp eq %struct.rtx_def* %3, %5
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %while.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool1 = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 1
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  store %struct.rtx_def* %8, %struct.rtx_def** %rtx8, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %while.end

if.end.12:                                        ; preds = %while.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %prev, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 1
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %if.end, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @volatile_insn_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 54, label %sw.bb
    i32 58, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 69, label %sw.bb
    i32 59, label %sw.bb
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 49, label %sw.bb
    i32 40, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 50, label %sw.bb
    i32 66, label %sw.bb
    i32 43, label %sw.bb.1
    i32 41, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load3 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load3, 27
  %bf.clear4 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %5 = load i32, i32* %code, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %fmt, align 8
  %7 = load i32, i32* %code, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %8 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %sw.epilog
  %9 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i8*, i8** %fmt, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 101
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom14
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @volatile_insn_p(%struct.rtx_def* %15)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.13
  br label %if.end.43

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load i8*, i8** %fmt, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %idxprom19
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %18 to i32
  %cmp22 = icmp eq i32 %conv21, 69
  br i1 %cmp22, label %if.then.24, label %if.end.42

if.then.24:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.then.24
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 %idxprom26
  %rtvec = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 0
  %23 = load i32, i32* %num_elem, align 4
  %cmp29 = icmp slt i32 %19, %23
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.25
  %24 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 %idxprom33
  %rtvec36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtvec_def**
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec36, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom32
  %28 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  %call38 = call i32 @volatile_insn_p(%struct.rtx_def* %28)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body.31
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %for.body.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %if.end.42

if.end.42:                                        ; preds = %for.end, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.18
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %30 = load i32, i32* %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.45, %if.then.40, %if.then.17, %if.then, %sw.bb.1, %sw.bb
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @volatile_refs_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 54, label %sw.bb
    i32 58, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 69, label %sw.bb
    i32 59, label %sw.bb
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 49, label %sw.bb
    i32 40, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 50, label %sw.bb.1
    i32 43, label %sw.bb.1
    i32 66, label %sw.bb.2
    i32 41, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load3 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load3, 27
  %bf.clear4 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %5 = load i32, i32* %code, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %fmt, align 8
  %7 = load i32, i32* %code, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %8 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %sw.epilog
  %9 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i8*, i8** %fmt, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 101
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom14
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @volatile_refs_p(%struct.rtx_def* %15)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.13
  br label %if.end.43

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load i8*, i8** %fmt, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %idxprom19
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %18 to i32
  %cmp22 = icmp eq i32 %conv21, 69
  br i1 %cmp22, label %if.then.24, label %if.end.42

if.then.24:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.then.24
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 %idxprom26
  %rtvec = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 0
  %23 = load i32, i32* %num_elem, align 4
  %cmp29 = icmp slt i32 %19, %23
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.25
  %24 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 %idxprom33
  %rtvec36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtvec_def**
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec36, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom32
  %28 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  %call38 = call i32 @volatile_refs_p(%struct.rtx_def* %28)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body.31
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %for.body.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %if.end.42

if.end.42:                                        ; preds = %for.end, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.18
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %30 = load i32, i32* %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.45, %if.then.40, %if.then.17, %if.then, %sw.bb.1, %sw.bb
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @may_trap_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 40, label %sw.bb.1
    i32 43, label %sw.bb.1
    i32 52, label %sw.bb.1
    i32 41, label %sw.bb.2
    i32 66, label %sw.bb.5
    i32 79, label %sw.bb.6
    i32 80, label %sw.bb.6
    i32 81, label %sw.bb.6
    i32 82, label %sw.bb.6
    i32 3, label %sw.bb.83
    i32 104, label %sw.bb.84
    i32 105, label %sw.bb.84
    i32 106, label %sw.bb.84
    i32 107, label %sw.bb.84
    i32 74, label %sw.bb.84
    i32 77, label %sw.bb.114
    i32 129, label %sw.bb.114
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end, %if.end, %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load3, 27
  %bf.clear4 = and i32 %bf.lshr, 1
  store i32 %bf.clear4, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @rtx_addr_can_trap_p(%struct.rtx_def* %7)
  store i32 %call, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load10 = load i32, i32* %10, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 67
  br i1 %cmp12, label %lor.lhs.false.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 1
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load16 = load i32, i32* %13, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 68
  br i1 %cmp18, label %lor.lhs.false.61, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load23 = load i32, i32* %16, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 54
  br i1 %cmp25, label %lor.lhs.false.61, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.19
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load30 = load i32, i32* %19, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 55
  br i1 %cmp32, label %lor.lhs.false.61, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.26
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load37 = load i32, i32* %22, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 58
  br i1 %cmp39, label %lor.lhs.false.61, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.33
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load44 = load i32, i32* %25, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 134
  br i1 %cmp46, label %lor.lhs.false.61, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.40
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 1
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load51 = load i32, i32* %28, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 56
  br i1 %cmp53, label %lor.lhs.false.61, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.47
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 1
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load58 = load i32, i32* %31, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 140
  br i1 %cmp60, label %lor.lhs.false.61, label %if.then.67

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.54, %lor.lhs.false.47, %lor.lhs.false.40, %lor.lhs.false.33, %lor.lhs.false.26, %lor.lhs.false.19, %lor.lhs.false, %sw.bb.6
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load62 = load i32, i32* %33, align 8
  %bf.lshr63 = lshr i32 %bf.load62, 16
  %bf.clear64 = and i32 %bf.lshr63, 255
  %idxprom = sext i32 %bf.clear64 to i64
  %arrayidx65 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %34 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp eq i32 %34, 2
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false.61, %lor.lhs.false.54
  store i32 1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %lor.lhs.false.61
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 1
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load72 = load i32, i32* %37, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 54
  br i1 %cmp74, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %if.end.68
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 1
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx79 to i64*
  %40 = load i64, i64* %rtwint, align 8
  %cmp80 = icmp eq i64 %40, 0
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %land.lhs.true, %if.end.68
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.84:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load85 = load i32, i32* %42, align 8
  %bf.lshr86 = lshr i32 %bf.load85, 16
  %bf.clear87 = and i32 %bf.lshr86, 255
  %idxprom88 = sext i32 %bf.clear87 to i64
  %arrayidx89 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom88
  %43 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp eq i32 %43, 2
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %sw.bb.84
  store i32 1, i32* %retval
  br label %return

if.end.92:                                        ; preds = %sw.bb.84
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load96 = load i32, i32* %46, align 8
  %bf.lshr97 = lshr i32 %bf.load96, 16
  %bf.clear98 = and i32 %bf.lshr97, 255
  %idxprom99 = sext i32 %bf.clear98 to i64
  %arrayidx100 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom99
  %47 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp eq i32 %47, 2
  br i1 %cmp101, label %if.then.112, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %if.end.92
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 1
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load106 = load i32, i32* %50, align 8
  %bf.lshr107 = lshr i32 %bf.load106, 16
  %bf.clear108 = and i32 %bf.lshr107, 255
  %idxprom109 = sext i32 %bf.clear108 to i64
  %arrayidx110 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom109
  %51 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp eq i32 %51, 2
  br i1 %cmp111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %lor.lhs.false.102, %if.end.92
  store i32 1, i32* %retval
  br label %return

if.end.113:                                       ; preds = %lor.lhs.false.102
  br label %sw.epilog

sw.bb.114:                                        ; preds = %if.end, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load115 = load i32, i32* %53, align 8
  %bf.lshr116 = lshr i32 %bf.load115, 16
  %bf.clear117 = and i32 %bf.lshr116, 255
  %idxprom118 = sext i32 %bf.clear117 to i64
  %arrayidx119 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom118
  %54 = load i32, i32* %arrayidx119, align 4
  %cmp120 = icmp eq i32 %54, 2
  br i1 %cmp120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %sw.default
  store i32 1, i32* %retval
  br label %return

if.end.122:                                       ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.122, %sw.bb.114, %if.end.113, %if.end.82
  %55 = load i32, i32* %code, align 4
  %idxprom123 = sext i32 %55 to i64
  %arrayidx124 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom123
  %56 = load i8*, i8** %arrayidx124, align 8
  store i8* %56, i8** %fmt, align 8
  %57 = load i32, i32* %code, align 4
  %idxprom125 = sext i32 %57 to i64
  %arrayidx126 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom125
  %58 = load i8, i8* %arrayidx126, align 1
  %conv = zext i8 %58 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.167, %sw.epilog
  %59 = load i32, i32* %i, align 4
  %cmp127 = icmp sge i32 %59, 0
  br i1 %cmp127, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %60 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %60 to i64
  %61 = load i8*, i8** %fmt, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %61, i64 %idxprom129
  %62 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %62 to i32
  %cmp132 = icmp eq i32 %conv131, 101
  br i1 %cmp132, label %if.then.134, label %if.else

if.then.134:                                      ; preds = %for.body
  %63 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %63 to i64
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 %idxprom135
  %rtx138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx138, align 8
  %call139 = call i32 @may_trap_p(%struct.rtx_def* %65)
  %tobool = icmp ne i32 %call139, 0
  br i1 %tobool, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.then.134
  store i32 1, i32* %retval
  br label %return

if.end.141:                                       ; preds = %if.then.134
  br label %if.end.166

if.else:                                          ; preds = %for.body
  %66 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %66 to i64
  %67 = load i8*, i8** %fmt, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %67, i64 %idxprom142
  %68 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %68 to i32
  %cmp145 = icmp eq i32 %conv144, 69
  br i1 %cmp145, label %if.then.147, label %if.end.165

if.then.147:                                      ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc, %if.then.147
  %69 = load i32, i32* %j, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %70 to i64
  %71 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 %idxprom149
  %rtvec = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtvec_def**
  %72 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %72, i32 0, i32 0
  %73 = load i32, i32* %num_elem, align 4
  %cmp152 = icmp slt i32 %69, %73
  br i1 %cmp152, label %for.body.154, label %for.end

for.body.154:                                     ; preds = %for.cond.148
  %74 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %75 to i64
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld157, i32 0, i64 %idxprom156
  %rtvec159 = bitcast %union.rtunion_def* %arrayidx158 to %struct.rtvec_def**
  %77 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec159, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %77, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom155
  %78 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx160, align 8
  %call161 = call i32 @may_trap_p(%struct.rtx_def* %78)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %for.body.154
  store i32 1, i32* %retval
  br label %return

if.end.164:                                       ; preds = %for.body.154
  br label %for.inc

for.inc:                                          ; preds = %if.end.164
  %79 = load i32, i32* %j, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.148

for.end:                                          ; preds = %for.cond.148
  br label %if.end.165

if.end.165:                                       ; preds = %for.end, %if.else
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.141
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %80 = load i32, i32* %i, align 4
  %dec = add nsw i32 %80, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.168, %if.then.163, %if.then.140, %if.then.121, %if.then.112, %if.then.91, %sw.bb.83, %if.then.81, %if.then.67, %sw.bb.5, %sw.bb.2, %sw.bb.1, %sw.bb, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define i32 @inequality_comparisons_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %fmt = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 58, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 107, label %sw.bb.1
    i32 111, label %sw.bb.1
    i32 105, label %sw.bb.1
    i32 109, label %sw.bb.1
    i32 106, label %sw.bb.1
    i32 110, label %sw.bb.1
    i32 104, label %sw.bb.1
    i32 108, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %3 = load i32, i32* %code, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* %code, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom2
  %6 = load i8*, i8** %arrayidx3, align 8
  store i8* %6, i8** %fmt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %sw.epilog
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8*, i8** %fmt, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 101
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom10
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @inequality_comparisons_p(%struct.rtx_def* %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.37

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load i8*, i8** %fmt, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %idxprom13
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 69
  br i1 %cmp16, label %if.then.18, label %if.end.36

if.then.18:                                       ; preds = %if.else
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 %idxprom19
  %rtvec = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtvec_def**
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i32 0, i32 0
  %21 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %21, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.then.18
  %22 = load i32, i32* %j, align 4
  %cmp23 = icmp sge i32 %22, 0
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %23 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 %idxprom27
  %rtvec30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec30, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom26
  %27 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx31, align 8
  %call32 = call i32 @inequality_comparisons_p(%struct.rtx_def* %27)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.25
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %28 = load i32, i32* %j, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %if.end.36

if.end.36:                                        ; preds = %for.end, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.39, %if.then.34, %if.then.12, %sw.bb.1, %sw.bb
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @replace_rtx(%struct.rtx_def* %x, %struct.rtx_def* %from, %struct.rtx_def* %to) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %new = alloca %struct.rtx_def*, align 8
  %new38 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp ne %struct.rtx_def* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 55
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %cmp2 = icmp eq %struct.rtx_def* %4, %5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp5 = icmp eq %struct.rtx_def* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load8 = load i32, i32* %9, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 63
  br i1 %cmp10, label %if.then.11, label %if.else.33

if.then.11:                                       ; preds = %if.end.7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call = call %struct.rtx_def* @replace_rtx(%struct.rtx_def* %11, %struct.rtx_def* %12, %struct.rtx_def* %13)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load12 = load i32, i32* %15, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 54
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.11
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load16 = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load16, 16
  %bf.clear17 = and i32 %bf.lshr, 255
  %18 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load21 = load i32, i32* %21, align 8
  %bf.lshr22 = lshr i32 %bf.load21, 16
  %bf.clear23 = and i32 %bf.lshr22, 255
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %23 = load i32, i32* %rtuint, align 4
  %call26 = call %struct.rtx_def* @simplify_subreg(i32 %bf.clear17, %struct.rtx_def* %18, i32 %bf.clear23, i32 %23)
  store %struct.rtx_def* %call26, %struct.rtx_def** %x.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %24, null
  br i1 %tobool, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.15
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 2450, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.replace_rtx, i32 0, i32 0)) #3
  unreachable

if.end.28:                                        ; preds = %if.then.15
  br label %if.end.32

if.else:                                          ; preds = %if.then.11
  %25 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  store %struct.rtx_def* %25, %struct.rtx_def** %rtx31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.end.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %retval
  br label %return

if.else.33:                                       ; preds = %if.end.7
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load34 = load i32, i32* %29, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 121
  br i1 %cmp36, label %if.then.37, label %if.end.65

if.then.37:                                       ; preds = %if.else.33
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call42 = call %struct.rtx_def* @replace_rtx(%struct.rtx_def* %31, %struct.rtx_def* %32, %struct.rtx_def* %33)
  store %struct.rtx_def* %call42, %struct.rtx_def** %new38, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %new38, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load43 = load i32, i32* %35, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 54
  br i1 %cmp45, label %if.then.46, label %if.else.60

if.then.46:                                       ; preds = %if.then.37
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load47 = load i32, i32* %37, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 16
  %bf.clear49 = and i32 %bf.lshr48, 255
  %38 = load %struct.rtx_def*, %struct.rtx_def** %new38, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load53 = load i32, i32* %41, align 8
  %bf.lshr54 = lshr i32 %bf.load53, 16
  %bf.clear55 = and i32 %bf.lshr54, 255
  %call56 = call %struct.rtx_def* @simplify_unary_operation(i32 121, i32 %bf.clear49, %struct.rtx_def* %38, i32 %bf.clear55)
  store %struct.rtx_def* %call56, %struct.rtx_def** %x.addr, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %tobool57 = icmp ne %struct.rtx_def* %42, null
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.then.46
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 2466, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.replace_rtx, i32 0, i32 0)) #3
  unreachable

if.end.59:                                        ; preds = %if.then.46
  br label %if.end.64

if.else.60:                                       ; preds = %if.then.37
  %43 = load %struct.rtx_def*, %struct.rtx_def** %new38, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  store %struct.rtx_def* %43, %struct.rtx_def** %rtx63, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.60, %if.end.59
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %retval
  br label %return

if.end.65:                                        ; preds = %if.else.33
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load67 = load i32, i32* %47, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %idxprom = sext i32 %bf.clear68 to i64
  %arrayidx69 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %48 = load i8*, i8** %arrayidx69, align 8
  store i8* %48, i8** %fmt, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load70 = load i32, i32* %50, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %idxprom72 = sext i32 %bf.clear71 to i64
  %arrayidx73 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom72
  %51 = load i8, i8* %arrayidx73, align 1
  %conv = zext i8 %51 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.122, %if.end.66
  %52 = load i32, i32* %i, align 4
  %cmp74 = icmp sge i32 %52, 0
  br i1 %cmp74, label %for.body, label %for.end.124

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %53 to i64
  %54 = load i8*, i8** %fmt, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %54, i64 %idxprom76
  %55 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %55 to i32
  %cmp79 = icmp eq i32 %conv78, 101
  br i1 %cmp79, label %if.then.81, label %if.else.91

if.then.81:                                       ; preds = %for.body
  %56 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %56 to i64
  %57 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 %idxprom82
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call86 = call %struct.rtx_def* @replace_rtx(%struct.rtx_def* %58, %struct.rtx_def* %59, %struct.rtx_def* %60)
  %61 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %61 to i64
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 %idxprom87
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  store %struct.rtx_def* %call86, %struct.rtx_def** %rtx90, align 8
  br label %if.end.121

if.else.91:                                       ; preds = %for.body
  %63 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %63 to i64
  %64 = load i8*, i8** %fmt, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %64, i64 %idxprom92
  %65 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %65 to i32
  %cmp95 = icmp eq i32 %conv94, 69
  br i1 %cmp95, label %if.then.97, label %if.end.120

if.then.97:                                       ; preds = %if.else.91
  %66 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %66 to i64
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 %idxprom98
  %rtvec = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtvec_def**
  %68 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %68, i32 0, i32 0
  %69 = load i32, i32* %num_elem, align 4
  %sub101 = sub nsw i32 %69, 1
  store i32 %sub101, i32* %j, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc, %if.then.97
  %70 = load i32, i32* %j, align 4
  %cmp103 = icmp sge i32 %70, 0
  br i1 %cmp103, label %for.body.105, label %for.end

for.body.105:                                     ; preds = %for.cond.102
  %71 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %72 to i64
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 %idxprom107
  %rtvec110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtvec_def**
  %74 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec110, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %74, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom106
  %75 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx111, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call112 = call %struct.rtx_def* @replace_rtx(%struct.rtx_def* %75, %struct.rtx_def* %76, %struct.rtx_def* %77)
  %78 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %78 to i64
  %79 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %79 to i64
  %80 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 %idxprom114
  %rtvec117 = bitcast %union.rtunion_def* %arrayidx116 to %struct.rtvec_def**
  %81 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec117, align 8
  %elem118 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %81, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem118, i32 0, i64 %idxprom113
  store %struct.rtx_def* %call112, %struct.rtx_def** %arrayidx119, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.105
  %82 = load i32, i32* %j, align 4
  %dec = add nsw i32 %82, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.102

for.end:                                          ; preds = %for.cond.102
  br label %if.end.120

if.end.120:                                       ; preds = %for.end, %if.else.91
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.81
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %83 = load i32, i32* %i, align 4
  %dec123 = add nsw i32 %83, -1
  store i32 %dec123, i32* %i, align 4
  br label %for.cond

for.end.124:                                      ; preds = %for.cond
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %84, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.124, %if.end.64, %if.end.32, %if.then.6, %if.then.3, %if.then
  %85 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %85
}

declare %struct.rtx_def* @simplify_subreg(i32, %struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @simplify_unary_operation(i32, i32, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @replace_regs(%struct.rtx_def* %x, %struct.rtx_def** %reg_map, i32 %nregs, i32 %replace_dest) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %reg_map.addr = alloca %struct.rtx_def**, align 8
  %nregs.addr = alloca i32, align 4
  %replace_dest.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %map_val = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def** %reg_map, %struct.rtx_def*** %reg_map.addr, align 8
  store i32 %nregs, i32* %nregs.addr, align 4
  store i32 %replace_dest, i32* %replace_dest.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 62, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 58, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 61, label %sw.bb.1
    i32 63, label %sw.bb.30
    i32 47, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %7 = load i32, i32* %rtuint, align 4
  %8 = load i32, i32* %nregs.addr, align 4
  %cmp2 = icmp ult i32 %7, %8
  br i1 %cmp2, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %sw.bb.1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %10 = load i32, i32* %rtuint5, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %11, i64 %idxprom
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx6, align 8
  %cmp7 = icmp ne %struct.rtx_def* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.29

if.then.8:                                        ; preds = %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtuint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %14 = load i32, i32* %rtuint11, align 4
  %idxprom12 = zext i32 %14 to i64
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %15, i64 %idxprom12
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx13, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load14 = load i32, i32* %17, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 63
  br i1 %cmp16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %if.then.8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtuint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %19 = load i32, i32* %rtuint20, align 4
  %idxprom21 = zext i32 %19 to i64
  %20 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %20, i64 %idxprom21
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx22, align 8
  %call = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %21)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtuint26 = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %23 = load i32, i32* %rtuint26, align 4
  %idxprom27 = zext i32 %23 to i64
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %24, i64 %idxprom27
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx28, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true, %sw.bb.1
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %retval
  br label %return

sw.bb.30:                                         ; preds = %if.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load33 = load i32, i32* %29, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 61
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.87

land.lhs.true.36:                                 ; preds = %sw.bb.30
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtuint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %32 = load i32, i32* %rtuint42, align 4
  %33 = load i32, i32* %nregs.addr, align 4
  %cmp43 = icmp ult i32 %32, %33
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.87

land.lhs.true.44:                                 ; preds = %land.lhs.true.36
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtuint50 = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %36 = load i32, i32* %rtuint50, align 4
  %idxprom51 = zext i32 %36 to i64
  %37 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %37, i64 %idxprom51
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx52, align 8
  %cmp53 = icmp ne %struct.rtx_def* %38, null
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.87

land.lhs.true.54:                                 ; preds = %land.lhs.true.44
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtuint60 = bitcast %union.rtunion_def* %arrayidx59 to i32*
  %41 = load i32, i32* %rtuint60, align 4
  %idxprom61 = zext i32 %41 to i64
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %42, i64 %idxprom61
  %43 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx62, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load63 = load i32, i32* %44, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 63
  br i1 %cmp65, label %if.then.66, label %if.end.87

if.then.66:                                       ; preds = %land.lhs.true.54
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtuint72 = bitcast %union.rtunion_def* %arrayidx71 to i32*
  %47 = load i32, i32* %rtuint72, align 4
  %idxprom73 = zext i32 %47 to i64
  %48 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %48, i64 %idxprom73
  %49 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx74, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %map_val, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load75 = load i32, i32* %51, align 8
  %bf.lshr = lshr i32 %bf.load75, 16
  %bf.clear76 = and i32 %bf.lshr, 255
  %52 = load %struct.rtx_def*, %struct.rtx_def** %map_val, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load80 = load i32, i32* %55, align 8
  %bf.lshr81 = lshr i32 %bf.load80, 16
  %bf.clear82 = and i32 %bf.lshr81, 255
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 1
  %rtuint85 = bitcast %union.rtunion_def* %arrayidx84 to i32*
  %57 = load i32, i32* %rtuint85, align 4
  %call86 = call %struct.rtx_def* @simplify_gen_subreg(i32 %bf.clear76, %struct.rtx_def* %52, i32 %bf.clear82, i32 %57)
  store %struct.rtx_def* %call86, %struct.rtx_def** %retval
  br label %return

if.end.87:                                        ; preds = %land.lhs.true.54, %land.lhs.true.44, %land.lhs.true.36, %sw.bb.30
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end
  %58 = load i32, i32* %replace_dest.addr, align 4
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %sw.bb.88
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %61 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %62 = load i32, i32* %nregs.addr, align 4
  %call93 = call %struct.rtx_def* @replace_regs(%struct.rtx_def* %60, %struct.rtx_def** %61, i32 %62, i32 0)
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 0
  %rtx96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  store %struct.rtx_def* %call93, %struct.rtx_def** %rtx96, align 8
  br label %if.end.133

if.else:                                          ; preds = %sw.bb.88
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 0
  %rtx99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx99, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load100 = load i32, i32* %66, align 8
  %bf.clear101 = and i32 %bf.load100, 65535
  %cmp102 = icmp eq i32 %bf.clear101, 66
  br i1 %cmp102, label %if.then.109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load106 = load i32, i32* %69, align 8
  %bf.clear107 = and i32 %bf.load106, 65535
  %cmp108 = icmp eq i32 %bf.clear107, 64
  br i1 %cmp108, label %if.then.109, label %if.else.123

if.then.109:                                      ; preds = %lor.lhs.false, %if.else
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  %73 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %74 = load i32, i32* %nregs.addr, align 4
  %call116 = call %struct.rtx_def* @replace_regs(%struct.rtx_def* %72, %struct.rtx_def** %73, i32 %74, i32 0)
  %75 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 0
  %rtx122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtx_def**
  store %struct.rtx_def* %call116, %struct.rtx_def** %rtx122, align 8
  br label %if.end.132

if.else.123:                                      ; preds = %lor.lhs.false
  %77 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 0
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load127 = load i32, i32* %79, align 8
  %bf.clear128 = and i32 %bf.load127, 65535
  %cmp129 = icmp eq i32 %bf.clear128, 133
  br i1 %cmp129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.else.123
  br label %sw.epilog

if.end.131:                                       ; preds = %if.else.123
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.109
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.89
  %80 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 1
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %82 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %83 = load i32, i32* %nregs.addr, align 4
  %call137 = call %struct.rtx_def* @replace_regs(%struct.rtx_def* %81, %struct.rtx_def** %82, i32 %83, i32 0)
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 1
  %rtx140 = bitcast %union.rtunion_def* %arrayidx139 to %struct.rtx_def**
  store %struct.rtx_def* %call137, %struct.rtx_def** %rtx140, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %85, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.130, %if.end.87
  %86 = load i32, i32* %code, align 4
  %idxprom141 = sext i32 %86 to i64
  %arrayidx142 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom141
  %87 = load i8*, i8** %arrayidx142, align 8
  store i8* %87, i8** %fmt, align 8
  %88 = load i32, i32* %code, align 4
  %idxprom143 = sext i32 %88 to i64
  %arrayidx144 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom143
  %89 = load i8, i8* %arrayidx144, align 1
  %conv = zext i8 %89 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.192, %sw.epilog
  %90 = load i32, i32* %i, align 4
  %cmp145 = icmp sge i32 %90, 0
  br i1 %cmp145, label %for.body, label %for.end.193

for.body:                                         ; preds = %for.cond
  %91 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %91 to i64
  %92 = load i8*, i8** %fmt, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %92, i64 %idxprom147
  %93 = load i8, i8* %arrayidx148, align 1
  %conv149 = sext i8 %93 to i32
  %cmp150 = icmp eq i32 %conv149, 101
  br i1 %cmp150, label %if.then.152, label %if.else.162

if.then.152:                                      ; preds = %for.body
  %94 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %94 to i64
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 %idxprom153
  %rtx156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx156, align 8
  %97 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %98 = load i32, i32* %nregs.addr, align 4
  %99 = load i32, i32* %replace_dest.addr, align 4
  %call157 = call %struct.rtx_def* @replace_regs(%struct.rtx_def* %96, %struct.rtx_def** %97, i32 %98, i32 %99)
  %100 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %100 to i64
  %101 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld159, i32 0, i64 %idxprom158
  %rtx161 = bitcast %union.rtunion_def* %arrayidx160 to %struct.rtx_def**
  store %struct.rtx_def* %call157, %struct.rtx_def** %rtx161, align 8
  br label %if.end.191

if.else.162:                                      ; preds = %for.body
  %102 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %102 to i64
  %103 = load i8*, i8** %fmt, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %103, i64 %idxprom163
  %104 = load i8, i8* %arrayidx164, align 1
  %conv165 = sext i8 %104 to i32
  %cmp166 = icmp eq i32 %conv165, 69
  br i1 %cmp166, label %if.then.168, label %if.end.190

if.then.168:                                      ; preds = %if.else.162
  store i32 0, i32* %j, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc, %if.then.168
  %105 = load i32, i32* %j, align 4
  %106 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %106 to i64
  %107 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 %idxprom170
  %rtvec = bitcast %union.rtunion_def* %arrayidx172 to %struct.rtvec_def**
  %108 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %108, i32 0, i32 0
  %109 = load i32, i32* %num_elem, align 4
  %cmp173 = icmp slt i32 %105, %109
  br i1 %cmp173, label %for.body.175, label %for.end

for.body.175:                                     ; preds = %for.cond.169
  %110 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %110 to i64
  %111 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %111 to i64
  %112 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 %idxprom177
  %rtvec180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtvec_def**
  %113 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec180, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %113, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom176
  %114 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx181, align 8
  %115 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map.addr, align 8
  %116 = load i32, i32* %nregs.addr, align 4
  %117 = load i32, i32* %replace_dest.addr, align 4
  %call182 = call %struct.rtx_def* @replace_regs(%struct.rtx_def* %114, %struct.rtx_def** %115, i32 %116, i32 %117)
  %118 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %119 to i64
  %120 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld185, i32 0, i64 %idxprom184
  %rtvec187 = bitcast %union.rtunion_def* %arrayidx186 to %struct.rtvec_def**
  %121 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec187, align 8
  %elem188 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %121, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem188, i32 0, i64 %idxprom183
  store %struct.rtx_def* %call182, %struct.rtx_def** %arrayidx189, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.175
  %122 = load i32, i32* %j, align 4
  %inc = add nsw i32 %122, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.169

for.end:                                          ; preds = %for.cond.169
  br label %if.end.190

if.end.190:                                       ; preds = %for.end, %if.else.162
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.152
  br label %for.inc.192

for.inc.192:                                      ; preds = %if.end.191
  %123 = load i32, i32* %i, align 4
  %dec = add nsw i32 %123, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.193:                                      ; preds = %for.cond
  %124 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %124, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.193, %if.end.133, %if.then.66, %if.end.29, %if.end.23, %if.then.17, %sw.bb, %if.then
  %125 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %125
}

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_gen_subreg(i32, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @computed_jump_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %len = alloca i32, align 4
  %has_use_labelref = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %if.end.92

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %pat, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %4, i32 13, %struct.rtx_def* null)
  %tobool = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 39
  br i1 %cmp4, label %if.then.5, label %if.else.73

if.then.5:                                        ; preds = %if.else
  %7 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i32 0, i32 0
  %9 = load i32, i32* %num_elem, align 4
  store i32 %9, i32* %len, align 4
  store i32 0, i32* %has_use_labelref, align 4
  %10 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %11 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %11, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtvec11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec11, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx12, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load13 = load i32, i32* %16, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 48
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtvec19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec19, align 8
  %elem20 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem20, i32 0, i64 %idxprom16
  %20 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx21, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load25 = load i32, i32* %22, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 67
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true
  store i32 1, i32* %has_use_labelref, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %has_use_labelref, align 4
  %tobool29 = icmp ne i32 %24, 0
  br i1 %tobool29, label %if.end.72, label %if.then.30

if.then.30:                                       ; preds = %for.end
  %25 = load i32, i32* %len, align 4
  %sub31 = sub nsw i32 %25, 1
  store i32 %sub31, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.69, %if.then.30
  %26 = load i32, i32* %i, align 4
  %cmp33 = icmp sge i32 %26, 0
  br i1 %cmp33, label %for.body.34, label %for.end.71

for.body.34:                                      ; preds = %for.cond.32
  %27 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtvec38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec38, align 8
  %elem39 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem39, i32 0, i64 %idxprom35
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx40, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load41 = load i32, i32* %31, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 47
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.68

land.lhs.true.44:                                 ; preds = %for.body.34
  %32 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtvec48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtvec_def**
  %34 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec48, align 8
  %elem49 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %34, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem49, i32 0, i64 %idxprom45
  %35 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx50, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp54 = icmp eq %struct.rtx_def* %36, %37
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.68

land.lhs.true.55:                                 ; preds = %land.lhs.true.44
  %38 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %38 to i64
  %39 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 0
  %rtvec59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtvec_def**
  %40 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec59, align 8
  %elem60 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %40, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem60, i32 0, i64 %idxprom56
  %41 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx61, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 1
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %call65 = call i32 @computed_jump_p_1(%struct.rtx_def* %42)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true.55, %land.lhs.true.44, %for.body.34
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %43 = load i32, i32* %i, align 4
  %dec70 = add nsw i32 %43, -1
  store i32 %dec70, i32* %i, align 4
  br label %for.cond.32

for.end.71:                                       ; preds = %for.cond.32
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %for.end
  br label %if.end.90

if.else.73:                                       ; preds = %if.else
  %44 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load74 = load i32, i32* %45, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 47
  br i1 %cmp76, label %land.lhs.true.77, label %if.end.89

land.lhs.true.77:                                 ; preds = %if.else.73
  %46 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp81 = icmp eq %struct.rtx_def* %47, %48
  br i1 %cmp81, label %land.lhs.true.82, label %if.end.89

land.lhs.true.82:                                 ; preds = %land.lhs.true.77
  %49 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 1
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %call86 = call i32 @computed_jump_p_1(%struct.rtx_def* %50)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true.82
  store i32 1, i32* %retval
  br label %return

if.end.89:                                        ; preds = %land.lhs.true.82, %land.lhs.true.77, %if.else.73
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.72
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.then.88, %if.then.67, %if.then.1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @computed_jump_p_1(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 67, label %sw.bb
    i32 59, label %sw.bb
    i32 58, label %sw.bb.1
    i32 54, label %sw.bb.1
    i32 55, label %sw.bb.1
    i32 56, label %sw.bb.1
    i32 68, label %sw.bb.1
    i32 61, label %sw.bb.1
    i32 66, label %sw.bb.2
    i32 72, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp = icmp eq i32 %bf.clear4, 68
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.2
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load8 = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load8, 26
  %bf.clear9 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.2
  %9 = phi i1 [ false, %sw.bb.2 ], [ %tobool, %land.rhs ]
  %lnot = xor i1 %9, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %call = call i32 @computed_jump_p_1(%struct.rtx_def* %11)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.10
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 2
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %call18 = call i32 @computed_jump_p_1(%struct.rtx_def* %13)
  %tobool19 = icmp ne i32 %call18, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.10
  %14 = phi i1 [ true, %sw.bb.10 ], [ %tobool19, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %15 = load i32, i32* %code, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %16 = load i8*, i8** %arrayidx20, align 8
  store i8* %16, i8** %fmt, align 8
  %17 = load i32, i32* %code, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom21
  %18 = load i8, i8* %arrayidx22, align 1
  %conv = zext i8 %18 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %sw.epilog
  %19 = load i32, i32* %i, align 4
  %cmp23 = icmp sge i32 %19, 0
  br i1 %cmp23, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i8*, i8** %fmt, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %cmp28 = icmp eq i32 %conv27, 101
  br i1 %cmp28, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %23 to i64
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 %idxprom30
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %call34 = call i32 @computed_jump_p_1(%struct.rtx_def* %25)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %for.body
  %26 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %26 to i64
  %27 = load i8*, i8** %fmt, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %27, i64 %idxprom36
  %28 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %28 to i32
  %cmp39 = icmp eq i32 %conv38, 69
  br i1 %cmp39, label %if.then.41, label %if.end.58

if.then.41:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %if.then.41
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 %idxprom43
  %rtvec = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 0
  %33 = load i32, i32* %num_elem, align 4
  %cmp46 = icmp slt i32 %29, %33
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.42
  %34 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %35 to i64
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 %idxprom50
  %rtvec53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtvec_def**
  %37 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec53, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %37, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom49
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx54, align 8
  %call55 = call i32 @computed_jump_p_1(%struct.rtx_def* %38)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %for.body.48
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.48
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %j, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.else
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %40 = load i32, i32* %i, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.61, %if.then.57, %if.then, %lor.end, %land.end, %sw.bb.1, %sw.bb
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @for_each_rtx(%struct.rtx_def** %x, i32 (%struct.rtx_def**, i8*)* %f, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def**, align 8
  %f.addr = alloca i32 (%struct.rtx_def**, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %length = alloca i32, align 4
  %format = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def** %x, %struct.rtx_def*** %x.addr, align 8
  store i32 (%struct.rtx_def**, i8*)* %f, i32 (%struct.rtx_def**, i8*)** %f.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32 (%struct.rtx_def**, i8*)*, i32 (%struct.rtx_def**, i8*)** %f.addr, align 8
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %x.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i32 %0(%struct.rtx_def** %1, i8* %2)
  store i32 %call, i32* %result, align 4
  %3 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %result, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %5 = load i32, i32* %result, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.rtx_def**, %struct.rtx_def*** %x.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %cmp4 = icmp eq %struct.rtx_def* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %x.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %length, align 4
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %x.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load7 = load i32, i32* %14, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %idxprom9 = sext i32 %bf.clear8 to i64
  %arrayidx10 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom9
  %15 = load i8*, i8** %arrayidx10, align 8
  store i8* %15, i8** %format, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.end.6
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %length, align 4
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load i8*, i8** %format, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %19, i64 %idxprom13
  %20 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %20 to i32
  switch i32 %conv15, label %sw.default [
    i32 101, label %sw.bb
    i32 86, label %sw.bb.23
    i32 69, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.rtx_def**, %struct.rtx_def*** %x.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom16
  %rtx = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %24 = load i32 (%struct.rtx_def**, i8*)*, i32 (%struct.rtx_def**, i8*)** %f.addr, align 8
  %25 = load i8*, i8** %data.addr, align 8
  %call18 = call i32 @for_each_rtx(%struct.rtx_def** %rtx, i32 (%struct.rtx_def**, i8*)* %24, i8* %25)
  store i32 %call18, i32* %result, align 4
  %26 = load i32, i32* %result, align 4
  %cmp19 = icmp ne i32 %26, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb
  %27 = load i32, i32* %result, align 4
  store i32 %27, i32* %retval
  br label %return

if.end.22:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body, %for.body
  %28 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load %struct.rtx_def**, %struct.rtx_def*** %x.addr, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 %idxprom24
  %rtvec = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtvec_def**
  %31 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %cmp27 = icmp ne %struct.rtvec_def* %31, null
  br i1 %cmp27, label %if.then.29, label %if.end.49

if.then.29:                                       ; preds = %sw.bb.23
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.29
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %33 to i64
  %34 = load %struct.rtx_def**, %struct.rtx_def*** %x.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 %idxprom31
  %rtvec34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtvec_def**
  %36 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec34, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %36, i32 0, i32 0
  %37 = load i32, i32* %num_elem, align 4
  %cmp35 = icmp slt i32 %32, %37
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.30
  %38 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %38 to i64
  %39 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %39 to i64
  %40 = load %struct.rtx_def**, %struct.rtx_def*** %x.addr, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 %idxprom39
  %rtvec42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtvec_def**
  %42 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec42, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %42, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom38
  %43 = load i32 (%struct.rtx_def**, i8*)*, i32 (%struct.rtx_def**, i8*)** %f.addr, align 8
  %44 = load i8*, i8** %data.addr, align 8
  %call44 = call i32 @for_each_rtx(%struct.rtx_def** %arrayidx43, i32 (%struct.rtx_def**, i8*)* %43, i8* %44)
  store i32 %call44, i32* %result, align 4
  %45 = load i32, i32* %result, align 4
  %cmp45 = icmp ne i32 %45, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body.37
  %46 = load i32, i32* %result, align 4
  store i32 %46, i32* %retval
  br label %return

if.end.48:                                        ; preds = %for.body.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %47 = load i32, i32* %j, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %sw.bb.23
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.49, %if.end.22
  br label %for.inc.50

for.inc.50:                                       ; preds = %sw.epilog
  %48 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %48, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.52, %if.then.47, %if.then.21, %if.then.5, %if.then.2, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @regno_use_in(i32 %regno, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %regno.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %4 = load i32, i32* %regno.addr, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load2 = load i32, i32* %7, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %idxprom = sext i32 %bf.clear3 to i64
  %arrayidx4 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx4, align 8
  store i8* %8, i8** %fmt, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load5 = load i32, i32* %10, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %idxprom7 = sext i32 %bf.clear6 to i64
  %arrayidx8 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom7
  %11 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %11 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %if.end
  %12 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %12, 0
  br i1 %cmp9, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i8*, i8** %fmt, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 101
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %for.body
  %16 = load i32, i32* %regno.addr, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 %idxprom17
  %rtx = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call %struct.rtx_def* @regno_use_in(i32 %16, %struct.rtx_def* %19)
  store %struct.rtx_def* %call, %struct.rtx_def** %tem, align 8
  %tobool = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %20 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.16
  br label %if.end.47

if.else:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i8*, i8** %fmt, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 %idxprom22
  %23 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %23 to i32
  %cmp25 = icmp eq i32 %conv24, 69
  br i1 %cmp25, label %if.then.27, label %if.end.46

if.then.27:                                       ; preds = %if.else
  %24 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 %idxprom28
  %rtvec = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 0
  %27 = load i32, i32* %num_elem, align 4
  %sub31 = sub nsw i32 %27, 1
  store i32 %sub31, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.then.27
  %28 = load i32, i32* %j, align 4
  %cmp33 = icmp sge i32 %28, 0
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %29 = load i32, i32* %regno.addr, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 %idxprom37
  %rtvec40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec40, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom36
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx41, align 8
  %call42 = call %struct.rtx_def* @regno_use_in(i32 %29, %struct.rtx_def* %34)
  store %struct.rtx_def* %call42, %struct.rtx_def** %tem, align 8
  %tobool43 = icmp ne %struct.rtx_def* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body.35
  %35 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %retval
  br label %return

if.end.45:                                        ; preds = %for.body.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %36 = load i32, i32* %j, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %if.end.46

if.end.46:                                        ; preds = %for.end, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.21
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %37 = load i32, i32* %i, align 4
  %dec49 = add nsw i32 %37, -1
  store i32 %dec49, i32* %i, align 4
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.50, %if.then.44, %if.then.20, %if.then
  %38 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %38
}

; Function Attrs: nounwind uwtable
define i32 @commutative_operand_precedence(%struct.rtx_def* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 54
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 55
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load6 = load i32, i32* %5, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 67
  br i1 %cmp8, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load9 = load i32, i32* %7, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 68
  br i1 %cmp11, label %if.then.36, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load13 = load i32, i32* %9, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 54
  br i1 %cmp15, label %if.then.36, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load17 = load i32, i32* %11, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 55
  br i1 %cmp19, label %if.then.36, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load21 = load i32, i32* %13, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 58
  br i1 %cmp23, label %if.then.36, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load25 = load i32, i32* %15, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 134
  br i1 %cmp27, label %if.then.36, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.24
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load29 = load i32, i32* %17, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 56
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.28
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load33 = load i32, i32* %19, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 140
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.28, %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false, %if.end.5
  store i32 -3, i32* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false.32
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load38 = load i32, i32* %21, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 63
  br i1 %cmp40, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.37
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load41 = load i32, i32* %24, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %idxprom = sext i32 %bf.clear42 to i64
  %arrayidx43 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx43, align 1
  %conv = sext i8 %25 to i32
  %cmp44 = icmp eq i32 %conv, 111
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true
  store i32 -2, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true, %if.end.37
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load48 = load i32, i32* %27, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 77
  br i1 %cmp50, label %if.then.72, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.end.47
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load53 = load i32, i32* %29, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 86
  br i1 %cmp55, label %if.then.72, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.52
  %30 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load58 = load i32, i32* %31, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 78
  br i1 %cmp60, label %if.then.72, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.57
  %32 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load63 = load i32, i32* %33, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 75
  br i1 %cmp65, label %if.then.72, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.62
  %34 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load68 = load i32, i32* %35, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 76
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.67, %lor.lhs.false.62, %lor.lhs.false.57, %lor.lhs.false.52, %if.end.47
  store i32 2, i32* %retval
  br label %return

if.end.73:                                        ; preds = %lor.lhs.false.67
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load74 = load i32, i32* %37, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %idxprom76 = sext i32 %bf.clear75 to i64
  %arrayidx77 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom76
  %38 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %38 to i32
  %cmp79 = icmp eq i32 %conv78, 111
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.73
  store i32 -1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.end.73
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.81, %if.then.72, %if.then.46, %if.then.36, %if.then.4, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @swap_commutative_operands_p(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @commutative_operand_precedence(%struct.rtx_def* %0)
  %1 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call1 = call i32 @commutative_operand_precedence(%struct.rtx_def* %1)
  %cmp = icmp slt i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @auto_inc_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 97, label %sw.bb
    i32 99, label %sw.bb
    i32 96, label %sw.bb
    i32 98, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp = icmp ne %struct.rtx_def* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @insns_safe_to_move_p(%struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def** %new_to) #0 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %new_to.addr = alloca %struct.rtx_def**, align 8
  %eh_region_count = alloca i32, align 4
  %past_to_p = alloca i32, align 4
  %r = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def** %new_to, %struct.rtx_def*** %new_to.addr, align 8
  store i32 0, i32* %eh_region_count, align 4
  store i32 0, i32* %past_to_p, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %r, align 8
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %new_to.addr, align 8
  %tobool = icmp ne %struct.rtx_def** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %3 = load %struct.rtx_def**, %struct.rtx_def*** %new_to.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %tobool1 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %while.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %8 = load i32, i32* %rtint, align 4
  switch i32 %8, label %sw.default [
    i32 -86, label %sw.bb
    i32 -85, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.then.2
  %9 = load i32, i32* %eh_region_count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %eh_region_count, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then.2
  %10 = load i32, i32* %eh_region_count, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb.3
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.3
  %11 = load i32, i32* %eh_region_count, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %eh_region_count, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.6, %sw.bb
  br label %if.end.10

if.else:                                          ; preds = %while.body
  %12 = load i32, i32* %past_to_p, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %sw.epilog
  %13 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %cmp11 = icmp eq %struct.rtx_def* %13, %14
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %new_to.addr, align 8
  %tobool13 = icmp ne %struct.rtx_def** %15, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  %16 = load i32, i32* %eh_region_count, align 4
  %cmp15 = icmp eq i32 %16, 0
  %conv = zext i1 %cmp15 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  store i32 1, i32* %past_to_p, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %17 = load i32, i32* %past_to_p, align 4
  %tobool18 = icmp ne i32 %17, 0
  br i1 %tobool18, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.17
  %18 = load i32, i32* %eh_region_count, align 4
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %20 = load %struct.rtx_def**, %struct.rtx_def*** %new_to.addr, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %20, align 8
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %if.end.17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %r, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.21, %if.then.14, %if.then.8, %if.then.5
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @loc_mentioned_in_p(%struct.rtx_def** %loc, %struct.rtx_def* %in) #0 {
entry:
  %retval = alloca i32, align 4
  %loc.addr = alloca %struct.rtx_def**, align 8
  %in.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %in, %struct.rtx_def** %in.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %fmt, align 8
  %4 = load i32, i32* %code, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom4
  %rtx = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %cmp6 = icmp eq %struct.rtx_def** %7, %rtx
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i8*, i8** %fmt, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 101
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %13 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 %idxprom14
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %call = call i32 @loc_mentioned_in_p(%struct.rtx_def** %13, %struct.rtx_def* %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.13
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.13
  br label %if.end.45

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load i8*, i8** %fmt, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %idxprom20
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 69
  br i1 %cmp23, label %if.then.25, label %if.end.44

if.then.25:                                       ; preds = %if.else
  %20 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 %idxprom26
  %rtvec = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 0
  %23 = load i32, i32* %num_elem, align 4
  %sub29 = sub nsw i32 %23, 1
  store i32 %sub29, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.25
  %24 = load i32, i32* %j, align 4
  %cmp31 = icmp sge i32 %24, 0
  br i1 %cmp31, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.30
  %25 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load %struct.rtx_def*, %struct.rtx_def** %in.addr, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 %idxprom35
  %rtvec38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec38, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom34
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx39, align 8
  %call40 = call i32 @loc_mentioned_in_p(%struct.rtx_def** %25, %struct.rtx_def* %30)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.33
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %for.body.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %31 = load i32, i32* %j, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.19
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %32 = load i32, i32* %i, align 4
  %dec47 = add nsw i32 %32, -1
  store i32 %dec47, i32* %i, align 4
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.48, %if.then.42, %if.then.18, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @subreg_lsb(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %inner_mode = alloca i32, align 4
  %mode = alloca i32, align 4
  %bitpos = alloca i32, align 4
  %byte = alloca i32, align 4
  %word = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %inner_mode, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  store i32 %bf.clear3, i32* %mode, align 4
  %5 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx4, align 2
  %conv = zext i16 %6 to i32
  %7 = load i32, i32* %inner_mode, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom5
  %8 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %8 to i32
  %cmp = icmp sgt i32 %conv, %conv7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %10 = load i32, i32* %rtuint, align 4
  %11 = load i32, i32* @target_flags, align 4
  %and = and i32 %11, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %div = udiv i32 %10, %cond
  store i32 %div, i32* %word, align 4
  %12 = load i32, i32* %word, align 4
  %13 = load i32, i32* @target_flags, align 4
  %and11 = and i32 %13, 33554432
  %tobool12 = icmp ne i32 %and11, 0
  %cond13 = select i1 %tobool12, i32 64, i32 32
  %mul = mul i32 %12, %cond13
  store i32 %mul, i32* %bitpos, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 1
  %rtuint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %15 = load i32, i32* %rtuint16, align 4
  %16 = load i32, i32* @target_flags, align 4
  %and17 = and i32 %16, 33554432
  %tobool18 = icmp ne i32 %and17, 0
  %cond19 = select i1 %tobool18, i32 8, i32 4
  %rem = urem i32 %15, %cond19
  store i32 %rem, i32* %byte, align 4
  %17 = load i32, i32* %byte, align 4
  %mul20 = mul i32 %17, 8
  %18 = load i32, i32* %bitpos, align 4
  %add = add i32 %18, %mul20
  store i32 %add, i32* %bitpos, align 4
  %19 = load i32, i32* %bitpos, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @subreg_regno_offset(i32 %xregno, i32 %xmode, i32 %offset, i32 %ymode) #0 {
entry:
  %retval = alloca i32, align 4
  %xregno.addr = alloca i32, align 4
  %xmode.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %ymode.addr = alloca i32, align 4
  %nregs_xmode = alloca i32, align 4
  %nregs_ymode = alloca i32, align 4
  %mode_multiple = alloca i32, align 4
  %nregs_multiple = alloca i32, align 4
  %y_offset = alloca i32, align 4
  store i32 %xregno, i32* %xregno.addr, align 4
  store i32 %xmode, i32* %xmode.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %ymode, i32* %ymode.addr, align 4
  %0 = load i32, i32* %xregno.addr, align 4
  %cmp = icmp uge i32 %0, 53
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 3031, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.subreg_regno_offset, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %xregno.addr, align 4
  %cmp1 = icmp uge i32 %1, 8
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %xregno.addr, align 4
  %cmp2 = icmp ule i32 %2, 15
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %3 = load i32, i32* %xregno.addr, align 4
  %cmp3 = icmp uge i32 %3, 21
  br i1 %cmp3, label %land.lhs.true.4, label %lor.lhs.false.6

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %xregno.addr, align 4
  %cmp5 = icmp ule i32 %4, 28
  br i1 %cmp5, label %cond.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.4, %lor.lhs.false
  %5 = load i32, i32* %xregno.addr, align 4
  %cmp7 = icmp uge i32 %5, 45
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.10

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %6 = load i32, i32* %xregno.addr, align 4
  %cmp9 = icmp ule i32 %6, 52
  br i1 %cmp9, label %cond.true, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %7 = load i32, i32* %xregno.addr, align 4
  %cmp11 = icmp uge i32 %7, 29
  br i1 %cmp11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %lor.lhs.false.10
  %8 = load i32, i32* %xregno.addr, align 4
  %cmp13 = icmp ule i32 %8, 36
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true
  %9 = load i32, i32* %xmode.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp14 = icmp eq i32 %10, 5
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %11 = load i32, i32* %xmode.addr, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom15
  %12 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %12, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %13 = phi i1 [ true, %cond.true ], [ %cmp17, %lor.rhs ]
  %cond = select i1 %13, i32 2, i32 1
  br label %cond.end.39

cond.false:                                       ; preds = %land.lhs.true.12, %lor.lhs.false.10
  %14 = load i32, i32* %xmode.addr, align 4
  %cmp18 = icmp eq i32 %14, 18
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.false
  %15 = load i32, i32* @target_flags, align 4
  %and = and i32 %15, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond20 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.37

cond.false.21:                                    ; preds = %cond.false
  %16 = load i32, i32* %xmode.addr, align 4
  %cmp22 = icmp eq i32 %16, 24
  br i1 %cmp22, label %cond.true.23, label %cond.false.27

cond.true.23:                                     ; preds = %cond.false.21
  %17 = load i32, i32* @target_flags, align 4
  %and24 = and i32 %17, 33554432
  %tobool25 = icmp ne i32 %and24, 0
  %cond26 = select i1 %tobool25, i32 4, i32 6
  br label %cond.end

cond.false.27:                                    ; preds = %cond.false.21
  %18 = load i32, i32* %xmode.addr, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom28
  %19 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %19 to i32
  %20 = load i32, i32* @target_flags, align 4
  %and30 = and i32 %20, 33554432
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 8, i32 4
  %add = add nsw i32 %conv, %cond32
  %sub = sub nsw i32 %add, 1
  %21 = load i32, i32* @target_flags, align 4
  %and33 = and i32 %21, 33554432
  %tobool34 = icmp ne i32 %and33, 0
  %cond35 = select i1 %tobool34, i32 8, i32 4
  %div = sdiv i32 %sub, %cond35
  br label %cond.end

cond.end:                                         ; preds = %cond.false.27, %cond.true.23
  %cond36 = phi i32 [ %cond26, %cond.true.23 ], [ %div, %cond.false.27 ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end, %cond.true.19
  %cond38 = phi i32 [ %cond20, %cond.true.19 ], [ %cond36, %cond.end ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end.37, %lor.end
  %cond40 = phi i32 [ %cond, %lor.end ], [ %cond38, %cond.end.37 ]
  store i32 %cond40, i32* %nregs_xmode, align 4
  %22 = load i32, i32* %xregno.addr, align 4
  %cmp41 = icmp uge i32 %22, 8
  br i1 %cmp41, label %land.lhs.true.43, label %lor.lhs.false.46

land.lhs.true.43:                                 ; preds = %cond.end.39
  %23 = load i32, i32* %xregno.addr, align 4
  %cmp44 = icmp ule i32 %23, 15
  br i1 %cmp44, label %cond.true.64, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true.43, %cond.end.39
  %24 = load i32, i32* %xregno.addr, align 4
  %cmp47 = icmp uge i32 %24, 21
  br i1 %cmp47, label %land.lhs.true.49, label %lor.lhs.false.52

land.lhs.true.49:                                 ; preds = %lor.lhs.false.46
  %25 = load i32, i32* %xregno.addr, align 4
  %cmp50 = icmp ule i32 %25, 28
  br i1 %cmp50, label %cond.true.64, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true.49, %lor.lhs.false.46
  %26 = load i32, i32* %xregno.addr, align 4
  %cmp53 = icmp uge i32 %26, 45
  br i1 %cmp53, label %land.lhs.true.55, label %lor.lhs.false.58

land.lhs.true.55:                                 ; preds = %lor.lhs.false.52
  %27 = load i32, i32* %xregno.addr, align 4
  %cmp56 = icmp ule i32 %27, 52
  br i1 %cmp56, label %cond.true.64, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %land.lhs.true.55, %lor.lhs.false.52
  %28 = load i32, i32* %xregno.addr, align 4
  %cmp59 = icmp uge i32 %28, 29
  br i1 %cmp59, label %land.lhs.true.61, label %cond.false.76

land.lhs.true.61:                                 ; preds = %lor.lhs.false.58
  %29 = load i32, i32* %xregno.addr, align 4
  %cmp62 = icmp ule i32 %29, 36
  br i1 %cmp62, label %cond.true.64, label %cond.false.76

cond.true.64:                                     ; preds = %land.lhs.true.61, %land.lhs.true.55, %land.lhs.true.49, %land.lhs.true.43
  %30 = load i32, i32* %ymode.addr, align 4
  %idxprom65 = sext i32 %30 to i64
  %arrayidx66 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom65
  %31 = load i32, i32* %arrayidx66, align 4
  %cmp67 = icmp eq i32 %31, 5
  br i1 %cmp67, label %lor.end.74, label %lor.rhs.69

lor.rhs.69:                                       ; preds = %cond.true.64
  %32 = load i32, i32* %ymode.addr, align 4
  %idxprom70 = sext i32 %32 to i64
  %arrayidx71 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom70
  %33 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp eq i32 %33, 6
  br label %lor.end.74

lor.end.74:                                       ; preds = %lor.rhs.69, %cond.true.64
  %34 = phi i1 [ true, %cond.true.64 ], [ %cmp72, %lor.rhs.69 ]
  %cond75 = select i1 %34, i32 2, i32 1
  br label %cond.end.107

cond.false.76:                                    ; preds = %land.lhs.true.61, %lor.lhs.false.58
  %35 = load i32, i32* %ymode.addr, align 4
  %cmp77 = icmp eq i32 %35, 18
  br i1 %cmp77, label %cond.true.79, label %cond.false.83

cond.true.79:                                     ; preds = %cond.false.76
  %36 = load i32, i32* @target_flags, align 4
  %and80 = and i32 %36, 33554432
  %tobool81 = icmp ne i32 %and80, 0
  %cond82 = select i1 %tobool81, i32 2, i32 3
  br label %cond.end.105

cond.false.83:                                    ; preds = %cond.false.76
  %37 = load i32, i32* %ymode.addr, align 4
  %cmp84 = icmp eq i32 %37, 24
  br i1 %cmp84, label %cond.true.86, label %cond.false.90

cond.true.86:                                     ; preds = %cond.false.83
  %38 = load i32, i32* @target_flags, align 4
  %and87 = and i32 %38, 33554432
  %tobool88 = icmp ne i32 %and87, 0
  %cond89 = select i1 %tobool88, i32 4, i32 6
  br label %cond.end.103

cond.false.90:                                    ; preds = %cond.false.83
  %39 = load i32, i32* %ymode.addr, align 4
  %idxprom91 = sext i32 %39 to i64
  %arrayidx92 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom91
  %40 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %40 to i32
  %41 = load i32, i32* @target_flags, align 4
  %and94 = and i32 %41, 33554432
  %tobool95 = icmp ne i32 %and94, 0
  %cond96 = select i1 %tobool95, i32 8, i32 4
  %add97 = add nsw i32 %conv93, %cond96
  %sub98 = sub nsw i32 %add97, 1
  %42 = load i32, i32* @target_flags, align 4
  %and99 = and i32 %42, 33554432
  %tobool100 = icmp ne i32 %and99, 0
  %cond101 = select i1 %tobool100, i32 8, i32 4
  %div102 = sdiv i32 %sub98, %cond101
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.90, %cond.true.86
  %cond104 = phi i32 [ %cond89, %cond.true.86 ], [ %div102, %cond.false.90 ]
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.end.103, %cond.true.79
  %cond106 = phi i32 [ %cond82, %cond.true.79 ], [ %cond104, %cond.end.103 ]
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.end.105, %lor.end.74
  %cond108 = phi i32 [ %cond75, %lor.end.74 ], [ %cond106, %cond.end.105 ]
  store i32 %cond108, i32* %nregs_ymode, align 4
  %43 = load i32, i32* %offset.addr, align 4
  %cmp109 = icmp eq i32 %43, 0
  br i1 %cmp109, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %cond.end.107
  %44 = load i32, i32* %nregs_xmode, align 4
  %45 = load i32, i32* %nregs_ymode, align 4
  %cmp112 = icmp eq i32 %44, %45
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %lor.lhs.false.111, %cond.end.107
  store i32 0, i32* %retval
  br label %return

if.end.115:                                       ; preds = %lor.lhs.false.111
  %46 = load i32, i32* %xmode.addr, align 4
  %idxprom116 = sext i32 %46 to i64
  %arrayidx117 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom116
  %47 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %47 to i32
  %48 = load i32, i32* %ymode.addr, align 4
  %idxprom119 = sext i32 %48 to i64
  %arrayidx120 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom119
  %49 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %49 to i32
  %div122 = sdiv i32 %conv118, %conv121
  store i32 %div122, i32* %mode_multiple, align 4
  %50 = load i32, i32* %mode_multiple, align 4
  %cmp123 = icmp eq i32 %50, 0
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.115
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 3041, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.subreg_regno_offset, i32 0, i32 0)) #3
  unreachable

if.end.126:                                       ; preds = %if.end.115
  %51 = load i32, i32* %offset.addr, align 4
  %52 = load i32, i32* %ymode.addr, align 4
  %idxprom127 = sext i32 %52 to i64
  %arrayidx128 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom127
  %53 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %53 to i32
  %div130 = udiv i32 %51, %conv129
  store i32 %div130, i32* %y_offset, align 4
  %54 = load i32, i32* %nregs_xmode, align 4
  %55 = load i32, i32* %nregs_ymode, align 4
  %div131 = sdiv i32 %54, %55
  store i32 %div131, i32* %nregs_multiple, align 4
  %56 = load i32, i32* %y_offset, align 4
  %57 = load i32, i32* %mode_multiple, align 4
  %58 = load i32, i32* %nregs_multiple, align 4
  %div132 = sdiv i32 %57, %58
  %div133 = sdiv i32 %56, %div132
  %59 = load i32, i32* %nregs_ymode, align 4
  %mul = mul nsw i32 %div133, %59
  store i32 %mul, i32* %retval
  br label %return

return:                                           ; preds = %if.end.126, %if.then.114
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @find_first_parameter_load(%struct.rtx_def* %call_insn, %struct.rtx_def* %boundary) #0 {
entry:
  %call_insn.addr = alloca %struct.rtx_def*, align 8
  %boundary.addr = alloca %struct.rtx_def*, align 8
  %parm = alloca %struct.parms_set_data, align 8
  %p = alloca %struct.rtx_def*, align 8
  %before = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %call_insn, %struct.rtx_def** %call_insn.addr, align 8
  store %struct.rtx_def* %boundary, %struct.rtx_def** %boundary.addr, align 8
  %regs = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %parm, i32 0, i32 1
  store i64 0, i64* %regs, align 8
  %nregs = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %parm, i32 0, i32 0
  store i32 0, i32* %nregs, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %call_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 48
  br i1 %cmp, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load10 = load i32, i32* %9, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 61
  br i1 %cmp12, label %if.then, label %if.end.45

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx20 to i32*
  %13 = load i32, i32* %rtuint, align 4
  %cmp21 = icmp uge i32 %13, 53
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 3104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.find_first_parameter_load, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtuint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %17 = load i32, i32* %rtuint31, align 4
  %call = call zeroext i1 @ix86_function_arg_regno_p(i32 %17)
  br i1 %call, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end
  br label %for.inc

if.end.33:                                        ; preds = %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtuint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %21 = load i32, i32* %rtuint42, align 4
  %sh_prom = zext i32 %21 to i64
  %shl = shl i64 1, %sh_prom
  %regs43 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %parm, i32 0, i32 1
  %22 = load i64, i64* %regs43, align 8
  %or = or i64 %22, %shl
  store i64 %or, i64* %regs43, align 8
  %nregs44 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %parm, i32 0, i32 0
  %23 = load i32, i32* %nregs44, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %nregs44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.33, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.45, %if.then.32
  %24 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 1
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.rtx_def*, %struct.rtx_def** %call_insn.addr, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %before, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.77, %for.end
  %nregs49 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %parm, i32 0, i32 0
  %27 = load i32, i32* %nregs49, align 4
  %tobool50 = icmp ne i32 %27, 0
  br i1 %tobool50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %28 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %boundary.addr, align 8
  %cmp51 = icmp ne %struct.rtx_def* %28, %29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp51, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 1
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %before, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load55 = load i32, i32* %34, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 34
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %while.body
  br label %while.end

if.end.59:                                        ; preds = %while.body
  %35 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load60 = load i32, i32* %36, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp eq i32 %bf.clear61, 36
  br i1 %cmp62, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.59
  %37 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %boundary.addr, align 8
  %cmp64 = icmp ne %struct.rtx_def* %37, %38
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.63
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 3133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.find_first_parameter_load, i32 0, i32 0)) #3
  unreachable

if.end.66:                                        ; preds = %if.then.63
  br label %while.end

if.end.67:                                        ; preds = %if.end.59
  %39 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load68 = load i32, i32* %40, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %idxprom = sext i32 %bf.clear69 to i64
  %arrayidx70 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %41 = load i8, i8* %arrayidx70, align 1
  %conv = sext i8 %41 to i32
  %cmp71 = icmp eq i32 %conv, 105
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %if.end.67
  %42 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 3
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %44 = bitcast %struct.parms_set_data* %parm to i8*
  call void @note_stores(%struct.rtx_def* %43, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @parms_set, i8* %44)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %if.end.67
  br label %while.cond

while.end:                                        ; preds = %if.end.66, %if.then.58, %land.end
  %45 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  ret %struct.rtx_def* %45
}

declare zeroext i1 @ix86_function_arg_regno_p(i32) #1

; Function Attrs: nounwind uwtable
define internal void @parms_set(%struct.rtx_def* %x, %struct.rtx_def* %pat, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %d = alloca %struct.parms_set_data*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.parms_set_data*
  store %struct.parms_set_data* %1, %struct.parms_set_data** %d, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp ult i32 %5, 53
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.parms_set_data*, %struct.parms_set_data** %d, align 8
  %regs = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %6, i32 0, i32 1
  %7 = load i64, i64* %regs, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %9 = load i32, i32* %rtuint5, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %7, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %11 = load i32, i32* %rtuint8, align 4
  %sh_prom9 = zext i32 %11 to i64
  %shl10 = shl i64 1, %sh_prom9
  %neg = xor i64 %shl10, -1
  %12 = load %struct.parms_set_data*, %struct.parms_set_data** %d, align 8
  %regs11 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %12, i32 0, i32 1
  %13 = load i64, i64* %regs11, align 8
  %and12 = and i64 %13, %neg
  store i64 %and12, i64* %regs11, align 8
  %14 = load %struct.parms_set_data*, %struct.parms_set_data** %d, align 8
  %nregs = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %14, i32 0, i32 0
  %15 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %nregs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
