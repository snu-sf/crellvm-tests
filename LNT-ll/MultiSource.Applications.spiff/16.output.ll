; ModuleID = './MultiSource.Applications.spiff/16.output.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._K_str = type { i32, i32, i32, i8*, %struct.R_flstr*, %struct._T_tstr* }
%struct.R_flstr = type { i32, i32, i8* }
%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }
%struct.edt = type { %struct.edt*, i32, i32, i32 }

@_K_ato = external global [0 x %struct._K_str*], align 8
@_K_bto = external global [0 x %struct._K_str*], align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"d%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"c%d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"type in O_output wasn't set\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"< %s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"> %s\00", align 1
@_L_btlindex = external global [0 x i32], align 4
@_L_atlindex = external global [0 x i32], align 4
@_O_get_text.buf = internal global [2048 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [29 x i8] c"%s -- line %d, character %d\0A\00", align 1
@_L_bclindex = external global [0 x i32], align 4
@_L_bl = external global [0 x i8*], align 8
@_L_aclindex = external global [0 x i32], align 4
@_L_al = external global [0 x i8*], align 8
@_O_convert.spacetext = internal global [20 x i8] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [10 x i8] c"<NEWLINE>\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"<TAB>\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"<SPACE>\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"< \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@_O_need_init = internal global i32 1, align 4
@_O_st_ok = internal global i32 0, align 4
@_O_doing_ul = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@_O_st_tmp = internal global i8* null, align 8
@.str.17 = private unnamed_addr constant [38 x i8] c"can't find TERM entry in environment\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @O_cleanup() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @O_output(%struct.edt* %start, i32 %flags) #0 {
entry:
  %start.addr = alloca %struct.edt*, align 8
  %flags.addr = alloca i32, align 4
  %type = alloca i32, align 4
  %t_beg1 = alloca i32, align 4
  %t_beg2 = alloca i32, align 4
  %t_end1 = alloca i32, align 4
  %t_end2 = alloca i32, align 4
  %first1 = alloca i32, align 4
  %last1 = alloca i32, align 4
  %first2 = alloca i32, align 4
  %last2 = alloca i32, align 4
  %ep = alloca %struct.edt*, align 8
  %behind = alloca %struct.edt*, align 8
  %ahead = alloca %struct.edt*, align 8
  %a = alloca %struct.edt*, align 8
  %b = alloca %struct.edt*, align 8
  %cnt = alloca i32, align 4
  %cnt131 = alloca i32, align 4
  store %struct.edt* %start, %struct.edt** %start.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 4, i32* %type, align 4
  %0 = load %struct.edt*, %struct.edt** %start.addr, align 8
  store %struct.edt* %0, %struct.edt** %ahead, align 8
  store %struct.edt* null, %struct.edt** %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.edt*, %struct.edt** %ahead, align 8
  %cmp = icmp ne %struct.edt* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 -1, i32* %t_end2, align 4
  store i32 -1, i32* %t_end1, align 4
  store i32 -1, i32* %t_beg2, align 4
  store i32 -1, i32* %t_beg1, align 4
  %2 = load %struct.edt*, %struct.edt** %ahead, align 8
  %line1 = getelementptr inbounds %struct.edt, %struct.edt* %2, i32 0, i32 2
  %3 = load i32, i32* %line1, align 4
  %sub = sub nsw i32 %3, 1
  %4 = load %struct.edt*, %struct.edt** %ahead, align 8
  %line11 = getelementptr inbounds %struct.edt, %struct.edt* %4, i32 0, i32 2
  store i32 %sub, i32* %line11, align 4
  %5 = load %struct.edt*, %struct.edt** %ahead, align 8
  %line2 = getelementptr inbounds %struct.edt, %struct.edt* %5, i32 0, i32 3
  %6 = load i32, i32* %line2, align 4
  %sub2 = sub nsw i32 %6, 1
  %7 = load %struct.edt*, %struct.edt** %ahead, align 8
  %line23 = getelementptr inbounds %struct.edt, %struct.edt* %7, i32 0, i32 3
  store i32 %sub2, i32* %line23, align 4
  %8 = load %struct.edt*, %struct.edt** %ep, align 8
  store %struct.edt* %8, %struct.edt** %behind, align 8
  %9 = load %struct.edt*, %struct.edt** %ahead, align 8
  store %struct.edt* %9, %struct.edt** %ep, align 8
  %10 = load %struct.edt*, %struct.edt** %ahead, align 8
  %link = getelementptr inbounds %struct.edt, %struct.edt* %10, i32 0, i32 0
  %11 = load %struct.edt*, %struct.edt** %link, align 8
  store %struct.edt* %11, %struct.edt** %ahead, align 8
  %12 = load %struct.edt*, %struct.edt** %behind, align 8
  %13 = load %struct.edt*, %struct.edt** %ep, align 8
  %link4 = getelementptr inbounds %struct.edt, %struct.edt* %13, i32 0, i32 0
  store %struct.edt* %12, %struct.edt** %link4, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.5

while.cond.5:                                     ; preds = %if.end.142, %while.end
  %14 = load %struct.edt*, %struct.edt** %ep, align 8
  %cmp6 = icmp ne %struct.edt* %14, null
  br i1 %cmp6, label %while.body.7, label %while.end.143

while.body.7:                                     ; preds = %while.cond.5
  %15 = load %struct.edt*, %struct.edt** %ep, align 8
  store %struct.edt* %15, %struct.edt** %b, align 8
  %16 = load %struct.edt*, %struct.edt** %ep, align 8
  %line18 = getelementptr inbounds %struct.edt, %struct.edt* %16, i32 0, i32 2
  %17 = load i32, i32* %line18, align 4
  store i32 %17, i32* %t_beg1, align 4
  %18 = load %struct.edt*, %struct.edt** %ep, align 8
  %op = getelementptr inbounds %struct.edt, %struct.edt* %18, i32 0, i32 1
  %19 = load i32, i32* %op, align 4
  %cmp9 = icmp eq i32 %19, 1
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.7
  store i32 1, i32* %type, align 4
  br label %if.end.32

if.else:                                          ; preds = %while.body.7
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %20 = load %struct.edt*, %struct.edt** %b, align 8
  store %struct.edt* %20, %struct.edt** %a, align 8
  %21 = load %struct.edt*, %struct.edt** %b, align 8
  %link10 = getelementptr inbounds %struct.edt, %struct.edt* %21, i32 0, i32 0
  %22 = load %struct.edt*, %struct.edt** %link10, align 8
  store %struct.edt* %22, %struct.edt** %b, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %23 = load %struct.edt*, %struct.edt** %b, align 8
  %cmp11 = icmp ne %struct.edt* %23, null
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %24 = load %struct.edt*, %struct.edt** %b, align 8
  %op12 = getelementptr inbounds %struct.edt, %struct.edt* %24, i32 0, i32 1
  %25 = load i32, i32* %op12, align 4
  %cmp13 = icmp eq i32 %25, 2
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %26 = load %struct.edt*, %struct.edt** %b, align 8
  %line114 = getelementptr inbounds %struct.edt, %struct.edt* %26, i32 0, i32 2
  %27 = load i32, i32* %line114, align 4
  %28 = load %struct.edt*, %struct.edt** %a, align 8
  %line115 = getelementptr inbounds %struct.edt, %struct.edt* %28, i32 0, i32 2
  %29 = load i32, i32* %line115, align 4
  %add = add nsw i32 %29, 1
  %cmp16 = icmp eq i32 %27, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %30 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp16, %land.rhs ]
  br i1 %30, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %31 = load %struct.edt*, %struct.edt** %b, align 8
  %cmp17 = icmp ne %struct.edt* %31, null
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.26

land.lhs.true.18:                                 ; preds = %do.end
  %32 = load %struct.edt*, %struct.edt** %b, align 8
  %op19 = getelementptr inbounds %struct.edt, %struct.edt* %32, i32 0, i32 1
  %33 = load i32, i32* %op19, align 4
  %cmp20 = icmp eq i32 %33, 1
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.26

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %34 = load %struct.edt*, %struct.edt** %b, align 8
  %line122 = getelementptr inbounds %struct.edt, %struct.edt* %34, i32 0, i32 2
  %35 = load i32, i32* %line122, align 4
  %36 = load %struct.edt*, %struct.edt** %a, align 8
  %line123 = getelementptr inbounds %struct.edt, %struct.edt* %36, i32 0, i32 2
  %37 = load i32, i32* %line123, align 4
  %cmp24 = icmp eq i32 %35, %37
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.21
  store i32 3, i32* %type, align 4
  br label %if.end

if.else.26:                                       ; preds = %land.lhs.true.21, %land.lhs.true.18, %do.end
  store i32 2, i32* %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.26, %if.then.25
  %38 = load %struct.edt*, %struct.edt** %a, align 8
  %line127 = getelementptr inbounds %struct.edt, %struct.edt* %38, i32 0, i32 2
  %39 = load i32, i32* %line127, align 4
  store i32 %39, i32* %t_end1, align 4
  %40 = load %struct.edt*, %struct.edt** %b, align 8
  store %struct.edt* %40, %struct.edt** %ep, align 8
  %41 = load i32, i32* %type, align 4
  %cmp28 = icmp eq i32 2, %41
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end
  %42 = load %struct.edt*, %struct.edt** %a, align 8
  %line230 = getelementptr inbounds %struct.edt, %struct.edt* %42, i32 0, i32 3
  %43 = load i32, i32* %line230, align 4
  store i32 %43, i32* %t_beg2, align 4
  store i32 -1, i32* %t_end2, align 4
  br label %skipit

if.end.31:                                        ; preds = %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  %44 = load %struct.edt*, %struct.edt** %ep, align 8
  %line233 = getelementptr inbounds %struct.edt, %struct.edt* %44, i32 0, i32 3
  %45 = load i32, i32* %line233, align 4
  store i32 %45, i32* %t_beg2, align 4
  %46 = load i32, i32* %t_beg2, align 4
  %sub34 = sub nsw i32 %46, 1
  store i32 %sub34, i32* %t_end2, align 4
  br label %do.body.35

do.body.35:                                       ; preds = %land.end.46, %if.end.32
  %47 = load i32, i32* %t_end2, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %t_end2, align 4
  %48 = load %struct.edt*, %struct.edt** %ep, align 8
  %link36 = getelementptr inbounds %struct.edt, %struct.edt* %48, i32 0, i32 0
  %49 = load %struct.edt*, %struct.edt** %link36, align 8
  store %struct.edt* %49, %struct.edt** %ep, align 8
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.35
  %50 = load %struct.edt*, %struct.edt** %ep, align 8
  %cmp38 = icmp ne %struct.edt* %50, null
  br i1 %cmp38, label %land.lhs.true.39, label %land.end.46

land.lhs.true.39:                                 ; preds = %do.cond.37
  %51 = load %struct.edt*, %struct.edt** %ep, align 8
  %op40 = getelementptr inbounds %struct.edt, %struct.edt* %51, i32 0, i32 1
  %52 = load i32, i32* %op40, align 4
  %cmp41 = icmp eq i32 %52, 1
  br i1 %cmp41, label %land.rhs.42, label %land.end.46

land.rhs.42:                                      ; preds = %land.lhs.true.39
  %53 = load %struct.edt*, %struct.edt** %ep, align 8
  %line143 = getelementptr inbounds %struct.edt, %struct.edt* %53, i32 0, i32 2
  %54 = load i32, i32* %line143, align 4
  %55 = load %struct.edt*, %struct.edt** %b, align 8
  %line144 = getelementptr inbounds %struct.edt, %struct.edt* %55, i32 0, i32 2
  %56 = load i32, i32* %line144, align 4
  %cmp45 = icmp eq i32 %54, %56
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.42, %land.lhs.true.39, %do.cond.37
  %57 = phi i1 [ false, %land.lhs.true.39 ], [ false, %do.cond.37 ], [ %cmp45, %land.rhs.42 ]
  br i1 %57, label %do.body.35, label %do.end.47

do.end.47:                                        ; preds = %land.end.46
  br label %skipit

skipit:                                           ; preds = %do.end.47, %if.then.29
  %58 = load i32, i32* %flags.addr, align 4
  %and = and i32 %58, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %skipit
  %59 = load i32, i32* %t_beg1, align 4
  store i32 %59, i32* %first1, align 4
  %60 = load i32, i32* %t_end1, align 4
  store i32 %60, i32* %last1, align 4
  %61 = load i32, i32* %t_beg2, align 4
  store i32 %61, i32* %first2, align 4
  %62 = load i32, i32* %t_end2, align 4
  store i32 %62, i32* %last2, align 4
  br label %if.end.75

if.else.49:                                       ; preds = %skipit
  %63 = load i32, i32* %t_beg1, align 4
  %cmp50 = icmp sge i32 %63, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.49
  %64 = load i32, i32* %t_beg1, align 4
  %idxprom = sext i32 %64 to i64
  %arrayidx = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_ato, i32 0, i64 %idxprom
  %65 = load %struct._K_str*, %struct._K_str** %arrayidx, align 8
  %linenum = getelementptr inbounds %struct._K_str, %struct._K_str* %65, i32 0, i32 0
  %66 = load i32, i32* %linenum, align 4
  store i32 %66, i32* %first1, align 4
  br label %if.end.53

if.else.52:                                       ; preds = %if.else.49
  %67 = load i32, i32* %t_beg1, align 4
  store i32 %67, i32* %first1, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.then.51
  %68 = load i32, i32* %t_end1, align 4
  %cmp54 = icmp sge i32 %68, 0
  br i1 %cmp54, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %if.end.53
  %69 = load i32, i32* %t_end1, align 4
  %idxprom56 = sext i32 %69 to i64
  %arrayidx57 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_ato, i32 0, i64 %idxprom56
  %70 = load %struct._K_str*, %struct._K_str** %arrayidx57, align 8
  %linenum58 = getelementptr inbounds %struct._K_str, %struct._K_str* %70, i32 0, i32 0
  %71 = load i32, i32* %linenum58, align 4
  store i32 %71, i32* %last1, align 4
  br label %if.end.60

if.else.59:                                       ; preds = %if.end.53
  %72 = load i32, i32* %t_end1, align 4
  store i32 %72, i32* %last1, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.then.55
  %73 = load i32, i32* %t_beg2, align 4
  %cmp61 = icmp sge i32 %73, 0
  br i1 %cmp61, label %if.then.62, label %if.else.66

if.then.62:                                       ; preds = %if.end.60
  %74 = load i32, i32* %t_beg2, align 4
  %idxprom63 = sext i32 %74 to i64
  %arrayidx64 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_bto, i32 0, i64 %idxprom63
  %75 = load %struct._K_str*, %struct._K_str** %arrayidx64, align 8
  %linenum65 = getelementptr inbounds %struct._K_str, %struct._K_str* %75, i32 0, i32 0
  %76 = load i32, i32* %linenum65, align 4
  store i32 %76, i32* %first2, align 4
  br label %if.end.67

if.else.66:                                       ; preds = %if.end.60
  %77 = load i32, i32* %t_beg2, align 4
  store i32 %77, i32* %first2, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.62
  %78 = load i32, i32* %t_end2, align 4
  %cmp68 = icmp sge i32 %78, 0
  br i1 %cmp68, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %if.end.67
  %79 = load i32, i32* %t_end2, align 4
  %idxprom70 = sext i32 %79 to i64
  %arrayidx71 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_bto, i32 0, i64 %idxprom70
  %80 = load %struct._K_str*, %struct._K_str** %arrayidx71, align 8
  %linenum72 = getelementptr inbounds %struct._K_str, %struct._K_str* %80, i32 0, i32 0
  %81 = load i32, i32* %linenum72, align 4
  store i32 %81, i32* %last2, align 4
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.67
  %82 = load i32, i32* %t_end2, align 4
  store i32 %82, i32* %last2, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73, %if.then.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.48
  %83 = load i32, i32* %first1, align 4
  %84 = load i32, i32* %flags.addr, align 4
  %call = call i32 @_O_con_line(i32 %83, i32 %84, i32 0)
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %call)
  %85 = load i32, i32* %type, align 4
  switch i32 %85, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.85
    i32 3, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %if.end.75
  %86 = load i32, i32* %first2, align 4
  %87 = load i32, i32* %flags.addr, align 4
  %call77 = call i32 @_O_con_line(i32 %86, i32 %87, i32 1)
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %call77)
  %88 = load i32, i32* %last2, align 4
  %89 = load i32, i32* %first2, align 4
  %cmp79 = icmp sgt i32 %88, %89
  br i1 %cmp79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %sw.bb
  %90 = load i32, i32* %last2, align 4
  %91 = load i32, i32* %flags.addr, align 4
  %call81 = call i32 @_O_con_line(i32 %90, i32 %91, i32 1)
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %call81)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %sw.bb
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.end.75
  %92 = load i32, i32* %last1, align 4
  %93 = load i32, i32* %first1, align 4
  %cmp86 = icmp sgt i32 %92, %93
  br i1 %cmp86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %sw.bb.85
  %94 = load i32, i32* %last1, align 4
  %95 = load i32, i32* %flags.addr, align 4
  %call88 = call i32 @_O_con_line(i32 %94, i32 %95, i32 0)
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %call88)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %sw.bb.85
  %96 = load i32, i32* %first2, align 4
  %97 = load i32, i32* %flags.addr, align 4
  %call91 = call i32 @_O_con_line(i32 %96, i32 %97, i32 1)
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %call91)
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.75
  %98 = load i32, i32* %last1, align 4
  %99 = load i32, i32* %first1, align 4
  %cmp94 = icmp sgt i32 %98, %99
  br i1 %cmp94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %sw.bb.93
  %100 = load i32, i32* %last1, align 4
  %101 = load i32, i32* %flags.addr, align 4
  %call96 = call i32 @_O_con_line(i32 %100, i32 %101, i32 0)
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %call96)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %sw.bb.93
  %102 = load i32, i32* %first2, align 4
  %103 = load i32, i32* %flags.addr, align 4
  %call99 = call i32 @_O_con_line(i32 %102, i32 %103, i32 1)
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %call99)
  %104 = load i32, i32* %last2, align 4
  %105 = load i32, i32* %first2, align 4
  %cmp101 = icmp sgt i32 %104, %105
  br i1 %cmp101, label %if.then.102, label %if.end.105

if.then.102:                                      ; preds = %if.end.98
  %106 = load i32, i32* %last2, align 4
  %107 = load i32, i32* %flags.addr, align 4
  %call103 = call i32 @_O_con_line(i32 %106, i32 %107, i32 1)
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %call103)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %if.end.98
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.75
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.105, %if.end.90, %if.end.83
  %108 = load i32, i32* %type, align 4
  %cmp107 = icmp eq i32 2, %108
  br i1 %cmp107, label %if.then.109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %109 = load i32, i32* %type, align 4
  %cmp108 = icmp eq i32 3, %109
  br i1 %cmp108, label %if.then.109, label %if.end.119

if.then.109:                                      ; preds = %lor.lhs.false, %sw.epilog
  %110 = load i32, i32* %flags.addr, align 4
  %and110 = and i32 %110, 8
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.then.112, label %if.else.117

if.then.112:                                      ; preds = %if.then.109
  %111 = load i32, i32* %first1, align 4
  store i32 %111, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.112
  %112 = load i32, i32* %cnt, align 4
  %113 = load i32, i32* %last1, align 4
  %cmp113 = icmp sle i32 %112, %113
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %114 = load i32, i32* %cnt, align 4
  %115 = load i32, i32* %flags.addr, align 4
  %call114 = call i8* @_O_get_text(i32 0, i32 %114, i32 %115)
  %call115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %call114)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %116 = load i32, i32* %cnt, align 4
  %inc116 = add nsw i32 %116, 1
  store i32 %inc116, i32* %cnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.118

if.else.117:                                      ; preds = %if.then.109
  %117 = load i32, i32* %t_beg1, align 4
  %118 = load i32, i32* %t_end1, align 4
  call void @_O_do_lines(i32 %117, i32 %118, i32 0)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %for.end
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %lor.lhs.false
  %119 = load i32, i32* %type, align 4
  %cmp120 = icmp eq i32 3, %119
  br i1 %cmp120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.end.119
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.end.119
  %120 = load i32, i32* %type, align 4
  %cmp124 = icmp eq i32 1, %120
  br i1 %cmp124, label %if.then.127, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.end.123
  %121 = load i32, i32* %type, align 4
  %cmp126 = icmp eq i32 3, %121
  br i1 %cmp126, label %if.then.127, label %if.end.142

if.then.127:                                      ; preds = %lor.lhs.false.125, %if.end.123
  %122 = load i32, i32* %flags.addr, align 4
  %and128 = and i32 %122, 8
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.else.140

if.then.130:                                      ; preds = %if.then.127
  %123 = load i32, i32* %first2, align 4
  store i32 %123, i32* %cnt131, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.137, %if.then.130
  %124 = load i32, i32* %cnt131, align 4
  %125 = load i32, i32* %last2, align 4
  %cmp133 = icmp sle i32 %124, %125
  br i1 %cmp133, label %for.body.134, label %for.end.139

for.body.134:                                     ; preds = %for.cond.132
  %126 = load i32, i32* %cnt131, align 4
  %127 = load i32, i32* %flags.addr, align 4
  %call135 = call i8* @_O_get_text(i32 1, i32 %126, i32 %127)
  %call136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %call135)
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.134
  %128 = load i32, i32* %cnt131, align 4
  %inc138 = add nsw i32 %128, 1
  store i32 %inc138, i32* %cnt131, align 4
  br label %for.cond.132

for.end.139:                                      ; preds = %for.cond.132
  br label %if.end.141

if.else.140:                                      ; preds = %if.then.127
  %129 = load i32, i32* %t_beg2, align 4
  %130 = load i32, i32* %t_end2, align 4
  call void @_O_do_lines(i32 %129, i32 %130, i32 1)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.140, %for.end.139
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %lor.lhs.false.125
  br label %while.cond.5

while.end.143:                                    ; preds = %while.cond.5
  call void @O_cleanup()
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @_O_con_line(i32 %numb, i32 %flags, i32 %filenum) #0 {
entry:
  %retval = alloca i32, align 4
  %numb.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %filenum.addr = alloca i32, align 4
  store i32 %numb, i32* %numb.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %filenum, i32* %filenum.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %numb.addr, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %numb.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %3 = load i32, i32* %filenum.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, i32* %numb.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @_L_btlindex, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %numb.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_atlindex, i32 0, i64 %idxprom3
  %7 = load i32, i32* %arrayidx4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  %add5 = add nsw i32 %cond, 1
  store i32 %add5, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.1, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @Z_fatal(...) #1

; Function Attrs: nounwind uwtable
define internal i8* @_O_get_text(i32 %file, i32 %index, i32 %flags) #0 {
entry:
  %retval = alloca i8*, align 8
  %file.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %text = alloca i8*, align 8
  %tmp = alloca %struct._K_str*, align 8
  store i32 %file, i32* %file.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %file.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_bto, i32 0, i64 %idxprom
  %3 = load %struct._K_str*, %struct._K_str** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %4 = load i32, i32* %index.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_ato, i32 0, i64 %idxprom2
  %5 = load %struct._K_str*, %struct._K_str** %arrayidx3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._K_str* [ %3, %cond.true ], [ %5, %cond.false ]
  store %struct._K_str* %cond, %struct._K_str** %tmp, align 8
  %6 = load %struct._K_str*, %struct._K_str** %tmp, align 8
  %text4 = getelementptr inbounds %struct._K_str, %struct._K_str* %6, i32 0, i32 3
  %7 = load i8*, i8** %text4, align 8
  %call = call i8* @_O_convert(i8* %7)
  store i8* %call, i8** %text, align 8
  %8 = load i8*, i8** %text, align 8
  %9 = load i32, i32* %file.addr, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.9

cond.true.6:                                      ; preds = %cond.end
  %10 = load %struct._K_str*, %struct._K_str** %tmp, align 8
  %linenum = getelementptr inbounds %struct._K_str, %struct._K_str* %10, i32 0, i32 0
  %11 = load i32, i32* %linenum, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_btlindex, i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  br label %cond.end.13

cond.false.9:                                     ; preds = %cond.end
  %13 = load %struct._K_str*, %struct._K_str** %tmp, align 8
  %linenum10 = getelementptr inbounds %struct._K_str, %struct._K_str* %13, i32 0, i32 0
  %14 = load i32, i32* %linenum10, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_atlindex, i32 0, i64 %idxprom11
  %15 = load i32, i32* %arrayidx12, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.9, %cond.true.6
  %cond14 = phi i32 [ %12, %cond.true.6 ], [ %15, %cond.false.9 ]
  %add = add nsw i32 %cond14, 1
  %16 = load %struct._K_str*, %struct._K_str** %tmp, align 8
  %pos = getelementptr inbounds %struct._K_str, %struct._K_str* %16, i32 0, i32 1
  %17 = load i32, i32* %pos, align 4
  %add15 = add nsw i32 %17, 1
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @_O_get_text.buf, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* %8, i32 %add, i32 %add15) #4
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @_O_get_text.buf, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %18 = load i32, i32* %file.addr, align 4
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.25

cond.true.18:                                     ; preds = %if.else
  %19 = load i32, i32* %index.addr, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_btlindex, i32 0, i64 %idxprom19
  %20 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bclindex, i32 0, i64 %idxprom21
  %21 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_bl, i32 0, i64 %idxprom23
  %22 = load i8*, i8** %arrayidx24, align 8
  br label %cond.end.32

cond.false.25:                                    ; preds = %if.else
  %23 = load i32, i32* %index.addr, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_atlindex, i32 0, i64 %idxprom26
  %24 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_aclindex, i32 0, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_al, i32 0, i64 %idxprom30
  %26 = load i8*, i8** %arrayidx31, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.25, %cond.true.18
  %cond33 = phi i8* [ %22, %cond.true.18 ], [ %26, %cond.false.25 ]
  store i8* %cond33, i8** %retval
  br label %return

return:                                           ; preds = %cond.end.32, %cond.end.13
  %27 = load i8*, i8** %retval
  ret i8* %27
}

; Function Attrs: nounwind uwtable
define internal void @_O_do_lines(i32 %start, i32 %end, i32 %file) #0 {
entry:
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %file.addr = alloca i32, align 4
  %cnt = alloca i32, align 4
  %lastline = alloca i32, align 4
  %nextline = alloca i32, align 4
  %nexttoken = alloca %struct._K_str*, align 8
  %lastone = alloca i32, align 4
  %lastchar = alloca i32, align 4
  %lasttok = alloca %struct._K_str*, align 8
  %linetext = alloca [1025 x i8], align 16
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32 %file, i32* %file.addr, align 4
  store i32 -1, i32* %lastline, align 4
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %entry
  %1 = load i32, i32* %cnt, align 4
  %2 = load i32, i32* %end.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %file.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %4 = load i32, i32* %cnt, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_bto, i32 0, i64 %idxprom
  %5 = load %struct._K_str*, %struct._K_str** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i32, i32* %cnt, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_ato, i32 0, i64 %idxprom1
  %7 = load %struct._K_str*, %struct._K_str** %arrayidx2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._K_str* [ %5, %cond.true ], [ %7, %cond.false ]
  store %struct._K_str* %cond, %struct._K_str** %nexttoken, align 8
  %8 = load %struct._K_str*, %struct._K_str** %nexttoken, align 8
  %linenum = getelementptr inbounds %struct._K_str, %struct._K_str* %8, i32 0, i32 0
  %9 = load i32, i32* %linenum, align 4
  store i32 %9, i32* %nextline, align 4
  %10 = load i32, i32* %lastline, align 4
  %11 = load i32, i32* %nextline, align 4
  %cmp3 = icmp ne i32 %10, %11
  br i1 %cmp3, label %if.then, label %if.end.67

if.then:                                          ; preds = %cond.end
  %12 = load i32, i32* %file.addr, align 4
  %cmp4 = icmp eq i32 0, %12
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %linetext, i32 0, i32 0
  %13 = load i32, i32* %file.addr, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.15

cond.true.8:                                      ; preds = %if.end
  %14 = load i32, i32* %nextline, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_btlindex, i32 0, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bclindex, i32 0, i64 %idxprom11
  %16 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_bl, i32 0, i64 %idxprom13
  %17 = load i8*, i8** %arrayidx14, align 8
  br label %cond.end.22

cond.false.15:                                    ; preds = %if.end
  %18 = load i32, i32* %nextline, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_atlindex, i32 0, i64 %idxprom16
  %19 = load i32, i32* %arrayidx17, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_aclindex, i32 0, i64 %idxprom18
  %20 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_al, i32 0, i64 %idxprom20
  %21 = load i8*, i8** %arrayidx21, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.15, %cond.true.8
  %cond23 = phi i8* [ %17, %cond.true.8 ], [ %21, %cond.false.15 ]
  %call24 = call i8* @strcpy(i8* %arraydecay, i8* %cond23) #4
  %arraydecay25 = getelementptr inbounds [1025 x i8], [1025 x i8]* %linetext, i32 0, i32 0
  %22 = load %struct._K_str*, %struct._K_str** %nexttoken, align 8
  %pos = getelementptr inbounds %struct._K_str, %struct._K_str* %22, i32 0, i32 1
  %23 = load i32, i32* %pos, align 4
  call void @_O_pchars(i8* %arraydecay25, i32 0, i32 %23)
  call void @_O_start_standout()
  %24 = load i32, i32* %cnt, align 4
  store i32 %24, i32* %lastone, align 4
  %25 = load i32, i32* %file.addr, align 4
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end.22
  %26 = load i32, i32* %lastone, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_bto, i32 0, i64 %idxprom28
  %27 = load %struct._K_str*, %struct._K_str** %arrayidx29, align 8
  br label %cond.end.33

cond.false.30:                                    ; preds = %cond.end.22
  %28 = load i32, i32* %lastone, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_ato, i32 0, i64 %idxprom31
  %29 = load %struct._K_str*, %struct._K_str** %arrayidx32, align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.30, %cond.true.27
  %cond34 = phi %struct._K_str* [ %27, %cond.true.27 ], [ %29, %cond.false.30 ]
  store %struct._K_str* %cond34, %struct._K_str** %lasttok, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %cond.end.47, %cond.end.33
  %30 = load i32, i32* %lastone, align 4
  %31 = load i32, i32* %end.addr, align 4
  %cmp36 = icmp sle i32 %30, %31
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.35
  %32 = load i32, i32* %nextline, align 4
  %33 = load %struct._K_str*, %struct._K_str** %lasttok, align 8
  %linenum37 = getelementptr inbounds %struct._K_str, %struct._K_str* %33, i32 0, i32 0
  %34 = load i32, i32* %linenum37, align 4
  %cmp38 = icmp eq i32 %32, %34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.35
  %35 = phi i1 [ false, %for.cond.35 ], [ %cmp38, %land.rhs ]
  br i1 %35, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.39
  %36 = load i32, i32* %lastone, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %lastone, align 4
  %37 = load i32, i32* %file.addr, align 4
  %tobool40 = icmp ne i32 %37, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.44

cond.true.41:                                     ; preds = %for.inc
  %38 = load i32, i32* %lastone, align 4
  %idxprom42 = sext i32 %38 to i64
  %arrayidx43 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_bto, i32 0, i64 %idxprom42
  %39 = load %struct._K_str*, %struct._K_str** %arrayidx43, align 8
  br label %cond.end.47

cond.false.44:                                    ; preds = %for.inc
  %40 = load i32, i32* %lastone, align 4
  %idxprom45 = sext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_ato, i32 0, i64 %idxprom45
  %41 = load %struct._K_str*, %struct._K_str** %arrayidx46, align 8
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.true.41
  %cond48 = phi %struct._K_str* [ %39, %cond.true.41 ], [ %41, %cond.false.44 ]
  store %struct._K_str* %cond48, %struct._K_str** %lasttok, align 8
  br label %for.cond.35

for.end:                                          ; preds = %land.end
  %42 = load i32, i32* %lastone, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %lastone, align 4
  %43 = load i32, i32* %file.addr, align 4
  %tobool49 = icmp ne i32 %43, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.53

cond.true.50:                                     ; preds = %for.end
  %44 = load i32, i32* %lastone, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_bto, i32 0, i64 %idxprom51
  %45 = load %struct._K_str*, %struct._K_str** %arrayidx52, align 8
  br label %cond.end.56

cond.false.53:                                    ; preds = %for.end
  %46 = load i32, i32* %lastone, align 4
  %idxprom54 = sext i32 %46 to i64
  %arrayidx55 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_ato, i32 0, i64 %idxprom54
  %47 = load %struct._K_str*, %struct._K_str** %arrayidx55, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.53, %cond.true.50
  %cond57 = phi %struct._K_str* [ %45, %cond.true.50 ], [ %47, %cond.false.53 ]
  store %struct._K_str* %cond57, %struct._K_str** %lasttok, align 8
  %48 = load %struct._K_str*, %struct._K_str** %lasttok, align 8
  %pos58 = getelementptr inbounds %struct._K_str, %struct._K_str* %48, i32 0, i32 1
  %49 = load i32, i32* %pos58, align 4
  %conv = sext i32 %49 to i64
  %50 = load %struct._K_str*, %struct._K_str** %lasttok, align 8
  %text = getelementptr inbounds %struct._K_str, %struct._K_str* %50, i32 0, i32 3
  %51 = load i8*, i8** %text, align 8
  %call59 = call i64 @strlen(i8* %51) #5
  %add = add i64 %conv, %call59
  %conv60 = trunc i64 %add to i32
  store i32 %conv60, i32* %lastchar, align 4
  %arraydecay61 = getelementptr inbounds [1025 x i8], [1025 x i8]* %linetext, i32 0, i32 0
  %52 = load %struct._K_str*, %struct._K_str** %nexttoken, align 8
  %pos62 = getelementptr inbounds %struct._K_str, %struct._K_str* %52, i32 0, i32 1
  %53 = load i32, i32* %pos62, align 4
  %54 = load i32, i32* %lastchar, align 4
  call void @_O_pchars(i8* %arraydecay61, i32 %53, i32 %54)
  call void @_O_end_standout()
  %arraydecay63 = getelementptr inbounds [1025 x i8], [1025 x i8]* %linetext, i32 0, i32 0
  %55 = load i32, i32* %lastchar, align 4
  %arraydecay64 = getelementptr inbounds [1025 x i8], [1025 x i8]* %linetext, i32 0, i32 0
  %call65 = call i64 @strlen(i8* %arraydecay64) #5
  %conv66 = trunc i64 %call65 to i32
  call void @_O_pchars(i8* %arraydecay63, i32 %55, i32 %conv66)
  %56 = load i32, i32* %nextline, align 4
  store i32 %56, i32* %lastline, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end.56, %cond.end
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %57 = load i32, i32* %cnt, align 4
  %inc69 = add nsw i32 %57, 1
  store i32 %inc69, i32* %cnt, align 4
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @_O_convert(i8* %ptr) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %cmp = icmp eq i64 1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 10, label %sw.bb
    i32 9, label %sw.bb.2
    i32 32, label %sw.bb.4
  ]

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  %call1 = call i8* @strcpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %if.then
  %call3 = call i8* @strcpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %if.then
  %call5 = call i8* @strcpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)) #4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i32 0, i32 0), i8** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %3 = load i8*, i8** %ptr.addr, align 8
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.4, %sw.bb.2, %sw.bb
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @_O_pchars(i8* %line, i32 %start, i32 %end) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %cnt, align 4
  %2 = load i32, i32* %end.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %cnt, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %call = call i32 @putchar(i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define internal void @_O_start_standout() #0 {
entry:
  %0 = load i32, i32* @_O_need_init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_O_st_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @_O_st_ok, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  br label %if.end.3

if.else:                                          ; preds = %if.end
  store i32 1, i32* @_O_doing_ul, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_O_st_init() #0 {
entry:
  %termn = alloca [20 x i8], align 16
  %call = call i32 @isatty(i32 1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @_O_need_init, align 4
  store i32 0, i32* @_O_st_ok, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #4
  store i8* %call1, i8** @_O_st_tmp, align 8
  %cmp = icmp eq i8* null, %call1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) bitcast (void (...)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* @_O_need_init, align 4
  store i32 0, i32* @_O_st_ok, align 4
  br label %return

if.end.3:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %termn, i32 0, i32 0
  %0 = load i8*, i8** @_O_st_tmp, align 8
  %call4 = call i8* @strcpy(i8* %arraydecay, i8* %0) #4
  store i32 0, i32* @_O_need_init, align 4
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare void @Z_complain(...) #1

; Function Attrs: nounwind uwtable
define internal void @_O_end_standout() #0 {
entry:
  %0 = load i32, i32* @_O_need_init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_O_st_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @_O_st_ok, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  br label %if.end.3

if.else:                                          ; preds = %if.end
  store i32 0, i32* @_O_doing_ul, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
