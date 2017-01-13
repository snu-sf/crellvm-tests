; ModuleID = './MultiSource.Applications.spiff/15.spiff.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }
%struct.R_flstr = type { i32, i32, i8* }
%struct.edt = type { %struct.edt*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@_K_btm = external global i32, align 4
@_K_atm = external global i32, align 4
@_L_brlm = external global i32, align 4
@_L_arlm = external global i32, align 4
@_Y_flags = internal global i32 0, align 4
@_Y_vflag = internal global i32 0, align 4
@_Y_eflag = internal global i32 0, align 4
@_T_gtol = external global %struct._T_tstr*, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't open command file\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"literal  \22   \22    \5C \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"comment  /*  */\09 \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"literal  &&\09\09 \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"literal  ||\09\09 \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"literal  <=\09\09 \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"literal  >=\09\09 \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"literal  !=\09\09 \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"literal  ==\09\09 \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"literal  --\09\09 \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"literal  ++\09\09 \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"literal  <<\09\09 \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"literal  >>\09\09 \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"literal  ->\09\09 \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"addalpha _\09\09 \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"tol      a0 \09\09 \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"literal  '    '    \5C\09\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"comment  #    $\09\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"tol      a0 \09\09\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"literal  '\09'     ' \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"comment  ^C   $\09\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"literal  \22 \09\22\09\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"comment  ; \09$\09\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"literal ' \09'\09\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"literal \22\09\22\09\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"comment (*\09*)\09\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"literal :=\09\09\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"literal <>\09\09\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"literal <=\09\09\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"literal >=\09\09\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"don't understand arguments\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"spiff requires two file names.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %edit_end = alloca %struct.edt*, align 8
  %filename = alloca [2 x i8*], align 16
  %max_d = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %filename, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %filename, i32 0, i64 1
  call void @_Y_doargs(i32 %0, i8** %1, i8** %arrayidx, i8** %arrayidx1, i32* %max_d)
  call void (...) @T_initdefault()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %2, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [2 x i8*], [2 x i8*]* %filename, i32 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx2, align 8
  %call = call i32 @L_init_file(i32 %3, i8* %5)
  %6 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  store i32 0, i32* @_K_btm, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  store i32 0, i32* @_K_atm, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %9 = load i32, i32* @_L_brlm, align 4
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  %10 = load i32, i32* @_L_arlm, align 4
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i32 [ %9, %cond.true.4 ], [ %10, %cond.false.5 ]
  %11 = load i32, i32* @_Y_flags, align 4
  call void (i32, i32, i32, i32, ...) bitcast (void (...)* @P_file_parse to void (i32, i32, i32, i32, ...)*)(i32 %7, i32 0, i32 %cond7, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.6
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* @_Y_vflag, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %14 = load i32, i32* @_Y_flags, align 4
  %call9 = call i32 @V_visual(i32 %14)
  store i32 %call9, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %15 = load i32, i32* %max_d, align 4
  %cmp10 = icmp eq i32 -1, %15
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %16 = load i32, i32* @_K_atm, align 4
  %17 = load i32, i32* @_K_btm, align 4
  %add = add nsw i32 %16, %17
  store i32 %add, i32* %max_d, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %if.end.12
  %18 = load i32, i32* %i, align 4
  %cmp14 = icmp sle i32 %18, 30000
  br i1 %cmp14, label %for.body.15, label %for.end.23

for.body.15:                                      ; preds = %for.cond.13
  %19 = load i32, i32* @_Y_eflag, align 4
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.body.15
  %20 = load i32, i32* @_K_atm, align 4
  %21 = load i32, i32* @_K_btm, align 4
  %22 = load i32, i32* %max_d, align 4
  %23 = load i32, i32* @_Y_flags, align 4
  %call18 = call %struct.edt* (i32, i32, i32, i32, ...) bitcast (%struct.edt* (...)* @Q_do_exact to %struct.edt* (i32, i32, i32, i32, ...)*)(i32 %20, i32 %21, i32 %22, i32 %23)
  store %struct.edt* %call18, %struct.edt** %edit_end, align 8
  br label %if.end.20

if.else:                                          ; preds = %for.body.15
  %24 = load i32, i32* @_K_atm, align 4
  %25 = load i32, i32* @_K_btm, align 4
  %26 = load i32, i32* %max_d, align 4
  %27 = load i32, i32* @_Y_flags, align 4
  %call19 = call %struct.edt* (i32, i32, i32, i32, ...) bitcast (%struct.edt* (...)* @G_do_miller to %struct.edt* (i32, i32, i32, i32, ...)*)(i32 %24, i32 %25, i32 %26, i32 %27)
  store %struct.edt* %call19, %struct.edt** %edit_end, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %28 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %28, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  %29 = load %struct.edt*, %struct.edt** %edit_end, align 8
  %cmp24 = icmp ne %struct.edt* null, %29
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end.23
  %30 = load %struct.edt*, %struct.edt** %edit_end, align 8
  %31 = load i32, i32* @_Y_flags, align 4
  call void (%struct.edt*, i32, ...) bitcast (void (...)* @O_output to void (%struct.edt*, i32, ...)*)(%struct.edt* %30, i32 %31)
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.end.23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare void @T_initdefault(...) #1

declare i32 @L_init_file(i32, i8*) #1

declare void @P_file_parse(...) #1

declare i32 @V_visual(i32) #1

declare %struct.edt* @Q_do_exact(...) #1

declare %struct.edt* @G_do_miller(...) #1

declare void @O_output(...) #1

; Function Attrs: nounwind uwtable
define internal void @_Y_doargs(i32 %argc, i8** %argv, i8** %file1, i8** %file2, i32* %max_d) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %file1.addr = alloca i8**, align 8
  %file2.addr = alloca i8**, align 8
  %max_d.addr = alloca i32*, align 8
  %ptr = alloca i8*, align 8
  %buf = alloca [1024 x i8], align 16
  %cmdfile = alloca %struct._IO_FILE*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %file1, i8*** %file1.addr, align 8
  store i8** %file2, i8*** %file2.addr, align 8
  store i32* %max_d, i32** %max_d.addr, align 8
  %0 = load i32*, i32** %max_d.addr, align 8
  store i32 -1, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end.90

while.body:                                       ; preds = %land.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  switch i32 %conv6, label %sw.default [
    i32 116, label %sw.bb
    i32 119, label %sw.bb.7
    i32 98, label %sw.bb.9
    i32 99, label %sw.bb.11
    i32 100, label %sw.bb.13
    i32 109, label %sw.bb.15
    i32 97, label %sw.bb.17
    i32 114, label %sw.bb.24
    i32 105, label %sw.bb.37
    i32 101, label %sw.bb.38
    i32 118, label %sw.bb.39
    i32 113, label %sw.bb.40
    i32 115, label %sw.bb.41
    i32 102, label %sw.bb.54
    i32 67, label %sw.bb.79
    i32 83, label %sw.bb.80
    i32 70, label %sw.bb.81
    i32 76, label %sw.bb.82
    i32 77, label %sw.bb.83
    i32 48, label %sw.bb.84
    i32 49, label %sw.bb.84
    i32 50, label %sw.bb.84
    i32 51, label %sw.bb.84
    i32 52, label %sw.bb.84
    i32 53, label %sw.bb.84
    i32 54, label %sw.bb.84
    i32 55, label %sw.bb.84
    i32 56, label %sw.bb.84
    i32 57, label %sw.bb.84
  ]

sw.bb:                                            ; preds = %while.body
  %9 = load i32, i32* @_Y_flags, align 4
  %or = or i32 %9, 8
  store i32 %or, i32* @_Y_flags, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %10 = load i32, i32* @_Y_flags, align 4
  %or8 = or i32 %10, 1
  store i32 %or8, i32* @_Y_flags, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  %11 = load i32, i32* @_Y_flags, align 4
  %or10 = or i32 %11, 2
  store i32 %or10, i32* @_Y_flags, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body
  %12 = load i32, i32* @_Y_flags, align 4
  %or12 = or i32 %12, 4
  store i32 %or12, i32* @_Y_flags, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body
  %13 = load i32, i32* @_Y_flags, align 4
  %or14 = or i32 %13, 32
  store i32 %or14, i32* @_Y_flags, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  %14 = load i32, i32* @_Y_flags, align 4
  %or16 = or i32 %14, 16
  store i32 %or16, i32* @_Y_flags, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %while.body
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx18, align 8
  %call = call i64 @strlen(i8* %16) #3
  %cmp19 = icmp eq i64 %call, 2
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.17
  %17 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %18 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %argc.addr, align 4
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx21, align 8
  store i8* %20, i8** %ptr, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.17
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %21, i64 1
  %22 = load i8*, i8** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %arrayidx23, i8** %ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i8*, i8** %ptr, align 8
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (...)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** @_T_gtol, i32 0, i8* %23)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %while.body
  %24 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %24, i64 1
  %25 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i64 @strlen(i8* %25) #3
  %cmp27 = icmp eq i64 %call26, 2
  br i1 %cmp27, label %if.then.29, label %if.else.33

if.then.29:                                       ; preds = %sw.bb.24
  %26 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr30, i8*** %argv.addr, align 8
  %27 = load i32, i32* %argc.addr, align 4
  %dec31 = add nsw i32 %27, -1
  store i32 %dec31, i32* %argc.addr, align 4
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %28, i64 1
  %29 = load i8*, i8** %arrayidx32, align 8
  store i8* %29, i8** %ptr, align 8
  br label %if.end.36

if.else.33:                                       ; preds = %sw.bb.24
  %30 = load i8**, i8*** %argv.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %30, i64 1
  %31 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %arrayidx35, i8** %ptr, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.29
  %32 = load i8*, i8** %ptr, align 8
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (...)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** @_T_gtol, i32 1, i8* %32)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %while.body
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (...)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** @_T_gtol, i32 2, i8* null)
  br label %sw.epilog

sw.bb.38:                                         ; preds = %while.body
  store i32 1, i32* @_Y_eflag, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %while.body
  store i32 1, i32* @_Y_vflag, align 4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %while.body
  call void (...) @Z_setquiet()
  br label %sw.epilog

sw.bb.41:                                         ; preds = %while.body
  %33 = load i8**, i8*** %argv.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %33, i64 1
  %34 = load i8*, i8** %arrayidx42, align 8
  %call43 = call i64 @strlen(i8* %34) #3
  %cmp44 = icmp eq i64 %call43, 2
  br i1 %cmp44, label %if.then.46, label %if.else.50

if.then.46:                                       ; preds = %sw.bb.41
  %35 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr47, i8*** %argv.addr, align 8
  %36 = load i32, i32* %argc.addr, align 4
  %dec48 = add nsw i32 %36, -1
  store i32 %dec48, i32* %argc.addr, align 4
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %37, i64 1
  %38 = load i8*, i8** %arrayidx49, align 8
  store i8* %38, i8** %ptr, align 8
  br label %if.end.53

if.else.50:                                       ; preds = %sw.bb.41
  %39 = load i8**, i8*** %argv.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %39, i64 1
  %40 = load i8*, i8** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %arrayidx52, i8** %ptr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.46
  %41 = load i8*, i8** %ptr, align 8
  call void @_Y_cmdlines(i8* %41)
  br label %sw.epilog

sw.bb.54:                                         ; preds = %while.body
  %42 = load i8**, i8*** %argv.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %42, i64 1
  %43 = load i8*, i8** %arrayidx55, align 8
  %call56 = call i64 @strlen(i8* %43) #3
  %cmp57 = icmp eq i64 %call56, 2
  br i1 %cmp57, label %if.then.59, label %if.else.63

if.then.59:                                       ; preds = %sw.bb.54
  %44 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %incdec.ptr60, i8*** %argv.addr, align 8
  %45 = load i32, i32* %argc.addr, align 4
  %dec61 = add nsw i32 %45, -1
  store i32 %dec61, i32* %argc.addr, align 4
  %46 = load i8**, i8*** %argv.addr, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %46, i64 1
  %47 = load i8*, i8** %arrayidx62, align 8
  store i8* %47, i8** %ptr, align 8
  br label %if.end.66

if.else.63:                                       ; preds = %sw.bb.54
  %48 = load i8**, i8*** %argv.addr, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %48, i64 1
  %49 = load i8*, i8** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %arrayidx65, i8** %ptr, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.59
  %50 = load i8*, i8** %ptr, align 8
  %call67 = call %struct._IO_FILE* @fopen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call67, %struct._IO_FILE** %cmdfile, align 8
  %cmp68 = icmp eq %struct._IO_FILE* null, %call67
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.66
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.66
  br label %while.cond.72

while.cond.72:                                    ; preds = %while.body.76, %if.end.71
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %cmdfile, align 8
  %call73 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %51)
  %cmp74 = icmp ne i8* null, %call73
  br i1 %cmp74, label %while.body.76, label %while.end

while.body.76:                                    ; preds = %while.cond.72
  %arraydecay77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* %arraydecay77)
  br label %while.cond.72

while.end:                                        ; preds = %while.cond.72
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %cmdfile, align 8
  %call78 = call i32 @fclose(%struct._IO_FILE* %52)
  br label %sw.epilog

sw.bb.79:                                         ; preds = %while.body
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog

sw.bb.80:                                         ; preds = %while.body
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.bb.81:                                         ; preds = %while.body
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.bb.82:                                         ; preds = %while.body
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.bb.83:                                         ; preds = %while.body
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.bb.84:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %53 = load i8**, i8*** %argv.addr, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %53, i64 1
  %54 = load i8*, i8** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %54, i64 1
  %call87 = call i32 @atoi(i8* %arrayidx86) #3
  %55 = load i32*, i32** %max_d.addr, align 8
  store i32 %call87, i32* %55, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.84, %sw.bb.83, %sw.bb.82, %sw.bb.81, %sw.bb.80, %sw.bb.79, %while.end, %if.end.53, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %if.end.36, %if.end, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb
  %56 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %incdec.ptr88, i8*** %argv.addr, align 8
  %57 = load i32, i32* %argc.addr, align 4
  %dec89 = add nsw i32 %57, -1
  store i32 %dec89, i32* %argc.addr, align 4
  br label %while.cond

while.end.90:                                     ; preds = %land.end
  %58 = load i32, i32* %argc.addr, align 4
  %cmp91 = icmp ne i32 %58, 3
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %while.end.90
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %while.end.90
  %59 = load i8**, i8*** %argv.addr, align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %59, i64 1
  %60 = load i8*, i8** %arrayidx95, align 8
  %61 = load i8**, i8*** %file1.addr, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i8**, i8*** %argv.addr, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %62, i64 2
  %63 = load i8*, i8** %arrayidx96, align 8
  %64 = load i8**, i8*** %file2.addr, align 8
  store i8* %63, i8** %64, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @_T_addtol(...) #1

declare void @Z_setquiet(...) #1

; Function Attrs: nounwind uwtable
define internal void @_Y_cmdlines(i8* %from) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %buf = alloca [1024 x i8], align 16
  %to = alloca i8*, align 8
  store i8* %from, i8** %from.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %from.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %while.body, label %while.end.16

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %to, align 8
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.9, %while.body
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp ne i32 0, %conv3
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %4 = load i8*, i8** %from.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp ne i32 10, %conv6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.2
  %6 = phi i1 [ false, %while.cond.2 ], [ %cmp7, %land.rhs ]
  br i1 %6, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %land.end
  %7 = load i8*, i8** %from.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %from.addr, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8*, i8** %to, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr10, i8** %to, align 8
  store i8 %8, i8* %9, align 1
  br label %while.cond.2

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %to, align 8
  store i8 0, i8* %10, align 1
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* %arraydecay11)
  %11 = load i8*, i8** %from.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 10, %conv12
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %13 = load i8*, i8** %from.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr15, i8** %from.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond

while.end.16:                                     ; preds = %while.cond
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @Z_fatal(...) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare void @C_addcmd(...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
