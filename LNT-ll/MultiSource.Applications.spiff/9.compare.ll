; ModuleID = './MultiSource.Applications.spiff/9.compare.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._K_str = type { i32, i32, i32, i8*, %struct.R_flstr*, %struct._T_tstr* }
%struct.R_flstr = type { i32, i32, i8* }
%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }

@_K_ato = external global [0 x %struct._K_str*], align 8
@_K_bto = external global [0 x %struct._K_str*], align 8
@.str = private unnamed_addr constant [32 x i8] c"fell off switch in _X_cmptokens\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"_X_floatdiff called with a null tolerance\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"bad value for type of tolerance in floatdiff\00", align 1

; Function Attrs: nounwind uwtable
define i32 @X_com(i32 %a, i32 %b, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %atmp = alloca %struct._K_str*, align 8
  %btmp = alloca %struct._K_str*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_ato, i32 0, i64 %idxprom
  %1 = load %struct._K_str*, %struct._K_str** %arrayidx, align 8
  store %struct._K_str* %1, %struct._K_str** %atmp, align 8
  %2 = load i32, i32* %b.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* @_K_bto, i32 0, i64 %idxprom1
  %3 = load %struct._K_str*, %struct._K_str** %arrayidx2, align 8
  store %struct._K_str* %3, %struct._K_str** %btmp, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._K_str*, %struct._K_str** %atmp, align 8
  %text = getelementptr inbounds %struct._K_str, %struct._K_str* %5, i32 0, i32 3
  %6 = load i8*, i8** %text, align 8
  %7 = load %struct._K_str*, %struct._K_str** %btmp, align 8
  %text3 = getelementptr inbounds %struct._K_str, %struct._K_str* %7, i32 0, i32 3
  %8 = load i8*, i8** %text3, align 8
  %9 = load i32, i32* %flags.addr, align 4
  %call = call i32 @_X_strcmp(i8* %6, i8* %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = load %struct._K_str*, %struct._K_str** %atmp, align 8
  %11 = load %struct._K_str*, %struct._K_str** %btmp, align 8
  %12 = load i32, i32* %flags.addr, align 4
  %call4 = call i32 @_X_cmptokens(%struct._K_str* %10, %struct._K_str* %11, i32 %12)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @_X_strcmp(i8* %s1, i8* %s2, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else.34

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i8*, i8** %s1.addr, align 8
  %cmp = icmp ne i8* null, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 0, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i8*, i8** %s1.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %idxprom = sext i32 %conv3 to i64
  %call = call i16** @__ctype_b_loc() #5
  %7 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %8 to i32
  %and5 = and i32 %conv4, 1024
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %9 = load i8*, i8** %s2.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %idxprom8 = sext i32 %conv7 to i64
  %call9 = call i16** @__ctype_b_loc() #5
  %11 = load i16*, i16** %call9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %11, i64 %idxprom8
  %12 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %12 to i32
  %and12 = and i32 %conv11, 1024
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true
  %13 = load i8*, i8** %s1.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv15 = sext i8 %14 to i32
  %call16 = call i32 @tolower(i32 %conv15) #6
  %15 = load i8*, i8** %s2.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv17 = sext i8 %16 to i32
  %call18 = call i32 @tolower(i32 %conv17) #6
  %cmp19 = icmp ne i32 %call16, %call18
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.14
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.14
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %for.body
  %17 = load i8*, i8** %s1.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv22 = sext i8 %18 to i32
  %19 = load i8*, i8** %s2.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv23 = sext i8 %20 to i32
  %cmp24 = icmp ne i32 %conv22, %conv23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %21 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %22 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr29, i8** %s2.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %23 = load i8*, i8** %s1.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv30 = sext i8 %24 to i32
  %25 = load i8*, i8** %s2.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv31 = sext i8 %26 to i32
  %cmp32 = icmp ne i32 %conv30, %conv31
  %conv33 = zext i1 %cmp32 to i32
  store i32 %conv33, i32* %retval
  br label %return

if.else.34:                                       ; preds = %entry
  %27 = load i8*, i8** %s1.addr, align 8
  %28 = load i8*, i8** %s2.addr, align 8
  %call35 = call i32 @strcmp(i8* %27, i8* %28) #7
  store i32 %call35, i32* %retval
  br label %return

return:                                           ; preds = %if.else.34, %for.end, %if.then.26, %if.then.21
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @_X_cmptokens(%struct._K_str* %p1, %struct._K_str* %p2, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca %struct._K_str*, align 8
  %p2.addr = alloca %struct._K_str*, align 8
  %flags.addr = alloca i32, align 4
  store %struct._K_str* %p1, %struct._K_str** %p1.addr, align 8
  store %struct._K_str* %p2, %struct._K_str** %p2.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._K_str*, %struct._K_str** %p1.addr, align 8
  %type = getelementptr inbounds %struct._K_str, %struct._K_str* %0, i32 0, i32 2
  %1 = load i32, i32* %type, align 4
  %2 = load %struct._K_str*, %struct._K_str** %p2.addr, align 8
  %type1 = getelementptr inbounds %struct._K_str, %struct._K_str* %2, i32 0, i32 2
  %3 = load i32, i32* %type1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._K_str*, %struct._K_str** %p1.addr, align 8
  %type2 = getelementptr inbounds %struct._K_str, %struct._K_str* %4, i32 0, i32 2
  %5 = load i32, i32* %type2, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct._K_str*, %struct._K_str** %p1.addr, align 8
  %text = getelementptr inbounds %struct._K_str, %struct._K_str* %6, i32 0, i32 3
  %7 = load i8*, i8** %text, align 8
  %8 = load %struct._K_str*, %struct._K_str** %p2.addr, align 8
  %text3 = getelementptr inbounds %struct._K_str, %struct._K_str* %8, i32 0, i32 3
  %9 = load i8*, i8** %text3, align 8
  %10 = load i32, i32* %flags.addr, align 4
  %call = call i32 @_X_strcmp(i8* %7, i8* %9, i32 %10)
  store i32 %call, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  %11 = load %struct._K_str*, %struct._K_str** %p1.addr, align 8
  %flo_num = getelementptr inbounds %struct._K_str, %struct._K_str* %11, i32 0, i32 4
  %12 = load %struct.R_flstr*, %struct.R_flstr** %flo_num, align 8
  %13 = load %struct._K_str*, %struct._K_str** %p2.addr, align 8
  %flo_num5 = getelementptr inbounds %struct._K_str, %struct._K_str* %13, i32 0, i32 4
  %14 = load %struct.R_flstr*, %struct.R_flstr** %flo_num5, align 8
  %15 = load %struct._K_str*, %struct._K_str** %p1.addr, align 8
  %tolerance = getelementptr inbounds %struct._K_str, %struct._K_str* %15, i32 0, i32 5
  %16 = load %struct._T_tstr*, %struct._T_tstr** %tolerance, align 8
  %17 = load %struct._K_str*, %struct._K_str** %p2.addr, align 8
  %tolerance6 = getelementptr inbounds %struct._K_str, %struct._K_str* %17, i32 0, i32 5
  %18 = load %struct._T_tstr*, %struct._T_tstr** %tolerance6, align 8
  %call7 = call %struct._T_tstr* (%struct._T_tstr*, %struct._T_tstr*, ...) bitcast (%struct._T_tstr* (...)* @T_picktol to %struct._T_tstr* (%struct._T_tstr*, %struct._T_tstr*, ...)*)(%struct._T_tstr* %16, %struct._T_tstr* %18)
  %call8 = call i32 @_X_floatdiff(%struct.R_flstr* %12, %struct.R_flstr* %14, %struct._T_tstr* %call7)
  store i32 %call8, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.4, %sw.bb, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @_X_floatdiff(%struct.R_flstr* %p1, %struct.R_flstr* %p2, %struct._T_tstr* %the_tol) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca %struct.R_flstr*, align 8
  %p2.addr = alloca %struct.R_flstr*, align 8
  %the_tol.addr = alloca %struct._T_tstr*, align 8
  %diff = alloca %struct.R_flstr*, align 8
  %float_tmp = alloca %struct.R_flstr*, align 8
  %tol_tmp = alloca %struct._T_tstr*, align 8
  store %struct.R_flstr* %p1, %struct.R_flstr** %p1.addr, align 8
  store %struct.R_flstr* %p2, %struct.R_flstr** %p2.addr, align 8
  store %struct._T_tstr* %the_tol, %struct._T_tstr** %the_tol.addr, align 8
  %0 = load %struct._T_tstr*, %struct._T_tstr** %the_tol.addr, align 8
  %cmp = icmp eq %struct._T_tstr* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._T_tstr*, %struct._T_tstr** %the_tol.addr, align 8
  store %struct._T_tstr* %1, %struct._T_tstr** %tol_tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %cmp1 = icmp eq %struct._T_tstr* %2, null
  %lnot = xor i1 %cmp1, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %tol_type = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %3, i32 0, i32 0
  %4 = load i32, i32* %tol_type, align 4
  %cmp2 = icmp eq i32 2, %4
  br i1 %cmp2, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %tol_type3 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %5, i32 0, i32 0
  %6 = load i32, i32* %tol_type3, align 4
  %cmp4 = icmp eq i32 0, %6
  br i1 %cmp4, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %flo_tol = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %7, i32 0, i32 1
  %8 = load %struct.R_flstr*, %struct.R_flstr** %flo_tol, align 8
  %exponent = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %8, i32 0, i32 0
  %9 = load i32, i32* %exponent, align 4
  %cmp5 = icmp eq i32 0, %9
  br i1 %cmp5, label %land.lhs.true.6, label %land.lhs.true.8

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %10 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %flo_tol7 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %10, i32 0, i32 1
  %11 = load %struct.R_flstr*, %struct.R_flstr** %flo_tol7, align 8
  %mantissa = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %11, i32 0, i32 2
  %12 = load i8*, i8** %mantissa, align 8
  %call = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.8, label %if.end.20

land.lhs.true.8:                                  ; preds = %land.lhs.true.6, %land.lhs.true
  %13 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call9 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %13)
  %14 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %flo_tol10 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %14, i32 0, i32 1
  %15 = load %struct.R_flstr*, %struct.R_flstr** %flo_tol10, align 8
  %call11 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %15)
  %sub = sub nsw i32 %call11, 1
  %cmp12 = icmp slt i32 %call9, %sub
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.20

land.lhs.true.13:                                 ; preds = %land.lhs.true.8
  %16 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call14 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %16)
  %17 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %flo_tol15 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %17, i32 0, i32 1
  %18 = load %struct.R_flstr*, %struct.R_flstr** %flo_tol15, align 8
  %call16 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %18)
  %sub17 = sub nsw i32 %call16, 1
  %cmp18 = icmp slt i32 %call14, %sub17
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.13, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.13, %land.lhs.true.8, %land.lhs.true.6, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %19 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %next = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %19, i32 0, i32 2
  %20 = load %struct._T_tstr*, %struct._T_tstr** %next, align 8
  store %struct._T_tstr* %20, %struct._T_tstr** %tol_tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %man_sign = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %21, i32 0, i32 1
  %22 = load i32, i32* %man_sign, align 4
  %23 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %man_sign21 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %23, i32 0, i32 1
  %24 = load i32, i32* %man_sign21, align 4
  %cmp22 = icmp ne i32 %22, %24
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %for.end
  %25 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %26 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call24 = call %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...) bitcast (%struct.R_flstr* (...)* @F_floatmagadd to %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...)*)(%struct.R_flstr* %25, %struct.R_flstr* %26)
  store %struct.R_flstr* %call24, %struct.R_flstr** %diff, align 8
  br label %if.end.26

if.else:                                          ; preds = %for.end
  %27 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %28 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call25 = call %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...) bitcast (%struct.R_flstr* (...)* @F_floatsub to %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...)*)(%struct.R_flstr* %27, %struct.R_flstr* %28)
  store %struct.R_flstr* %call25, %struct.R_flstr** %diff, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.23
  %29 = load %struct._T_tstr*, %struct._T_tstr** %the_tol.addr, align 8
  store %struct._T_tstr* %29, %struct._T_tstr** %tol_tmp, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.53, %if.end.26
  %30 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %cmp28 = icmp eq %struct._T_tstr* %30, null
  %lnot29 = xor i1 %cmp28, true
  br i1 %lnot29, label %for.body.30, label %for.end.55

for.body.30:                                      ; preds = %for.cond.27
  %31 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %flo_tol31 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %31, i32 0, i32 1
  %32 = load %struct.R_flstr*, %struct.R_flstr** %flo_tol31, align 8
  store %struct.R_flstr* %32, %struct.R_flstr** %float_tmp, align 8
  %33 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %tol_type32 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %33, i32 0, i32 0
  %34 = load i32, i32* %tol_type32, align 4
  %cmp33 = icmp eq i32 %34, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %for.body.30
  br label %if.end.48

if.else.35:                                       ; preds = %for.body.30
  %35 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %tol_type36 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %35, i32 0, i32 0
  %36 = load i32, i32* %tol_type36, align 4
  %cmp37 = icmp eq i32 %36, 1
  br i1 %cmp37, label %if.then.38, label %if.else.46

if.then.38:                                       ; preds = %if.else.35
  %37 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %38 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call39 = call i32 @F_floatcmp(%struct.R_flstr* %37, %struct.R_flstr* %38)
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %if.then.38
  %39 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %40 = load %struct.R_flstr*, %struct.R_flstr** %float_tmp, align 8
  %call42 = call %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...) bitcast (%struct.R_flstr* (...)* @F_floatmul to %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...)*)(%struct.R_flstr* %39, %struct.R_flstr* %40)
  store %struct.R_flstr* %call42, %struct.R_flstr** %float_tmp, align 8
  br label %if.end.45

if.else.43:                                       ; preds = %if.then.38
  %41 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %42 = load %struct.R_flstr*, %struct.R_flstr** %float_tmp, align 8
  %call44 = call %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...) bitcast (%struct.R_flstr* (...)* @F_floatmul to %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...)*)(%struct.R_flstr* %41, %struct.R_flstr* %42)
  store %struct.R_flstr* %call44, %struct.R_flstr** %float_tmp, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.41
  br label %if.end.47

if.else.46:                                       ; preds = %if.else.35
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.end.45
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.34
  %43 = load %struct.R_flstr*, %struct.R_flstr** %diff, align 8
  %44 = load %struct.R_flstr*, %struct.R_flstr** %float_tmp, align 8
  %call49 = call i32 @F_floatcmp(%struct.R_flstr* %43, %struct.R_flstr* %44)
  %cmp50 = icmp sle i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.48
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %45 = load %struct._T_tstr*, %struct._T_tstr** %tol_tmp, align 8
  %next54 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %45, i32 0, i32 2
  %46 = load %struct._T_tstr*, %struct._T_tstr** %next54, align 8
  store %struct._T_tstr* %46, %struct._T_tstr** %tol_tmp, align 8
  br label %for.cond.27

for.end.55:                                       ; preds = %for.cond.27
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.55, %if.then.51, %if.then.19
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare %struct._T_tstr* @T_picktol(...) #4

declare void @Z_fatal(...) #4

declare i32 @R_getexp(...) #4

declare %struct.R_flstr* @F_floatmagadd(...) #4

declare %struct.R_flstr* @F_floatsub(...) #4

declare i32 @F_floatcmp(%struct.R_flstr*, %struct.R_flstr*) #4

declare %struct.R_flstr* @F_floatmul(...) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
