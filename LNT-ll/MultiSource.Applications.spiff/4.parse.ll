; ModuleID = './MultiSource.Applications.spiff/4.parse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._K_str = type { i32, i32, i32, i8*, %struct.R_flstr*, %struct._T_tstr* }
%struct.R_flstr = type { i32, i32, i8* }
%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }
%struct._W_bolstruct = type { [16 x i8], [16 x i8], [16 x i8] }
%struct._W_comstruct = type { [16 x i8], [16 x i8], [16 x i8], i32 }
%struct._W_litstruct = type { [16 x i8], [16 x i8], [16 x i8] }

@_P_alpha = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [47 x i8] c"too many characters added to extended alphabet\00", align 1
@_P_fnumb = internal global i32 0, align 4
@_P_start = internal global i32 0, align 4
@_P_lcount = internal global i32 0, align 4
@_P_flags = internal global i32 0, align 4
@_P_dummyline = internal global [2 x i8] zeroinitializer, align 1
@_P_nextchr = internal global i8* null, align 8
@_P_has_content = internal global i32 0, align 4
@_P_next_tol = internal global i32 0, align 4
@_L_btlm = external global i32, align 4
@_L_atlm = external global i32, align 4
@_L_bc = external global [0 x i32], align 4
@_L_ac = external global [0 x i32], align 4
@_P_realline = internal global i32 0, align 4
@Z_err_buf = external global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"parser got confused at end of file\0A\00", align 1
@_L_bclm = external global i32, align 4
@_L_aclm = external global i32, align 4
@_P_firstchr = internal global i8* null, align 8
@_L_btlindex = external global [0 x i32], align 4
@_L_atlindex = external global [0 x i32], align 4
@_K_btm = external global i32, align 4
@_K_atm = external global i32, align 4
@_L_bi = external global [0 x i32], align 4
@_L_ai = external global [0 x i32], align 4
@_P_stringsize = internal global i32 0, align 4
@_L_bclindex = external global [0 x i32], align 4
@_L_bl = external global [0 x i8*], align 8
@_L_aclindex = external global [0 x i32], align 4
@_L_al = external global [0 x i8*], align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"warning -- to many tokens in file only first %d tokens will be used.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"scanned %d words from file #%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @P_addalpha(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %buf = alloca [1024 x i8], align 16
  store i8* %ptr, i8** %ptr.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %ptr.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay, i8* %0)
  %call = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_P_alpha, i32 0, i32 0)) #5
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #5
  %add = add i64 %call, %call2
  %cmp = icmp uge i64 %add, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call4 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_P_alpha, i32 0, i32 0), i8* %arraydecay3) #6
  ret void
}

declare void @S_wordcpy(...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @Z_fatal(...) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @P_file_parse(i32 %num, i32 %strt, i32 %lcnt, i32 %flags) #0 {
entry:
  %num.addr = alloca i32, align 4
  %strt.addr = alloca i32, align 4
  %lcnt.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %strt, i32* %strt.addr, align 4
  store i32 %lcnt, i32* %lcnt.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  store i32 %0, i32* @_P_fnumb, align 4
  %1 = load i32, i32* %strt.addr, align 4
  store i32 %1, i32* @_P_start, align 4
  %2 = load i32, i32* %lcnt.addr, align 4
  store i32 %2, i32* @_P_lcount, align 4
  %3 = load i32, i32* %flags.addr, align 4
  store i32 %3, i32* @_P_flags, align 4
  call void @_P_initparser()
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @_P_dummyline, i32 0, i32 0), i8** @_P_nextchr, align 8
  store i32 0, i32* @_P_has_content, align 4
  store i32 0, i32* @_P_next_tol, align 4
  %4 = load i32, i32* @_P_fnumb, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false.3

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* @_P_fnumb, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false

cond.true.2:                                      ; preds = %cond.true
  %6 = load i32, i32* @_L_btlm, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %7 = load i32, i32* @_L_atlm, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.2
  %cond = phi i32 [ %6, %cond.true.2 ], [ %7, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bc, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %cond.end.11

cond.false.3:                                     ; preds = %entry
  %8 = load i32, i32* @_P_fnumb, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false.3
  %9 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.false.3
  %10 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i32 [ %9, %cond.true.5 ], [ %10, %cond.false.6 ]
  %idxprom9 = sext i32 %cond8 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_ac, i32 0, i64 %idxprom9
  store i32 0, i32* %arrayidx10, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end.7, %cond.end
  %cond12 = phi i32 [ 0, %cond.end ], [ 0, %cond.end.7 ]
  %11 = load i32, i32* @_P_start, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* @_P_realline, align 4
  call void @_P_do_parse()
  %12 = load i32, i32* @_P_has_content, align 4
  %tobool13 = icmp ne i32 %12, 0
  br i1 %tobool13, label %if.then, label %if.end.47

if.then:                                          ; preds = %cond.end.11
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)) #6
  call void (i8*, ...) bitcast (void (...)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  %13 = load i32, i32* @_P_fnumb, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.then
  %14 = load i32, i32* @_L_bclm, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @_L_bclm, align 4
  br label %cond.end.18

cond.false.16:                                    ; preds = %if.then
  %15 = load i32, i32* @_L_aclm, align 4
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, i32* @_L_aclm, align 4
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.15
  %cond19 = phi i32 [ %14, %cond.true.15 ], [ %15, %cond.false.16 ]
  %16 = load i32, i32* @_P_fnumb, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.30

cond.true.21:                                     ; preds = %cond.end.18
  %17 = load i32, i32* @_P_fnumb, align 4
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.true.21
  %18 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.true.21
  %19 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %18, %cond.true.23 ], [ %19, %cond.false.24 ]
  %idxprom27 = sext i32 %cond26 to i64
  %arrayidx28 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bc, i32 0, i64 %idxprom27
  %20 = load i32, i32* %arrayidx28, align 4
  %tobool29 = icmp ne i32 %20, 0
  br i1 %tobool29, label %if.then.39, label %if.end

cond.false.30:                                    ; preds = %cond.end.18
  %21 = load i32, i32* @_P_fnumb, align 4
  %tobool31 = icmp ne i32 %21, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.false.30
  %22 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.false.30
  %23 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.32
  %cond35 = phi i32 [ %22, %cond.true.32 ], [ %23, %cond.false.33 ]
  %idxprom36 = sext i32 %cond35 to i64
  %arrayidx37 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_ac, i32 0, i64 %idxprom36
  %24 = load i32, i32* %arrayidx37, align 4
  %tobool38 = icmp ne i32 %24, 0
  br i1 %tobool38, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %cond.end.34, %cond.end.25
  %25 = load i32, i32* @_P_fnumb, align 4
  %tobool40 = icmp ne i32 %25, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %if.then.39
  %26 = load i32, i32* @_L_btlm, align 4
  %inc42 = add nsw i32 %26, 1
  store i32 %inc42, i32* @_L_btlm, align 4
  br label %cond.end.45

cond.false.43:                                    ; preds = %if.then.39
  %27 = load i32, i32* @_L_atlm, align 4
  %inc44 = add nsw i32 %27, 1
  store i32 %inc44, i32* @_L_atlm, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.41
  %cond46 = phi i32 [ %26, %cond.true.41 ], [ %27, %cond.false.43 ]
  br label %if.end

if.end:                                           ; preds = %cond.end.45, %cond.end.34, %cond.end.25
  br label %if.end.47

if.end.47:                                        ; preds = %if.end, %cond.end.11
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare void @Z_complain(...) #1

; Function Attrs: nounwind uwtable
define internal void @_P_initparser() #0 {
entry:
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @_P_dummyline, i32 0, i64 0), align 1
  call void (...) @C_clear_cmd()
  call void (...) @T_clear_tols()
  call void (...) @W_clearcoms()
  call void (...) @W_clearlits()
  call void @_P_alpha_clear()
  call void (...) @C_docmds()
  ret void
}

declare void @C_clear_cmd(...) #1

declare void @T_clear_tols(...) #1

declare void @W_clearcoms(...) #1

declare void @W_clearlits(...) #1

declare void @C_docmds(...) #1

; Function Attrs: nounwind uwtable
define internal void @_P_alpha_clear() #0 {
entry:
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_P_alpha, i32 0, i32 0), align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_P_do_parse() #0 {
entry:
  %ptr = alloca i8*, align 8
  %tmp = alloca i32, align 4
  %ret_code = alloca i32, align 4
  %newtoken = alloca %struct._K_str*, align 8
  %bolptr = alloca %struct._W_bolstruct*, align 8
  %comptr = alloca %struct._W_comstruct*, align 8
  %litptr = alloca %struct._W_litstruct*, align 8
  %startline = alloca i32, align 4
  %endline = alloca i32, align 4
  %startpos = alloca i32, align 4
  %max = alloca i32, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.then.13, %if.end.20, %if.then.28, %if.end.37, %if.end.373
  %call = call i32 @_P_needmore()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %while.body
  %call9 = call i32 @_P_nextline()
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %0 = load i32, i32* @_P_has_content, align 4
  %tobool12 = icmp ne i32 %0, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  br label %while.body

if.end.14:                                        ; preds = %if.end
  %1 = load i8*, i8** @_P_firstchr, align 8
  %call15 = call %struct._W_bolstruct* (i8*, ...) bitcast (%struct._W_bolstruct* (...)* @W_isbol to %struct._W_bolstruct* (i8*, ...)*)(i8* %1)
  store %struct._W_bolstruct* %call15, %struct._W_bolstruct** %bolptr, align 8
  %cmp = icmp ne %struct._W_bolstruct* %call15, null
  br i1 %cmp, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.14
  %2 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr, align 8
  %call17 = call i32 @_P_bolsnarf(%struct._W_bolstruct* %2)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  br label %return

if.end.20:                                        ; preds = %if.then.16
  br label %while.body

if.end.21:                                        ; preds = %if.end.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %while.body
  %3 = load i32, i32* @_P_flags, align 4
  %and = and i32 1, %3
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.end.29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.22
  %4 = load i8*, i8** @_P_nextchr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %idxprom = sext i32 %conv to i64
  %call24 = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call24, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv25 = zext i16 %7 to i32
  %and26 = and i32 %conv25, 8192
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  %8 = load i8*, i8** @_P_nextchr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** @_P_nextchr, align 8
  br label %while.body

if.end.29:                                        ; preds = %land.lhs.true, %if.end.22
  %9 = load i8*, i8** @_P_nextchr, align 8
  %call30 = call %struct._W_comstruct* (i8*, ...) bitcast (%struct._W_comstruct* (...)* @W_iscom to %struct._W_comstruct* (i8*, ...)*)(i8* %9)
  store %struct._W_comstruct* %call30, %struct._W_comstruct** %comptr, align 8
  %cmp31 = icmp ne %struct._W_comstruct* %call30, null
  br i1 %cmp31, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.29
  %10 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr, align 8
  %call34 = call i32 @_P_comsnarf(%struct._W_comstruct* %10)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  br label %return

if.end.37:                                        ; preds = %if.then.33
  br label %while.body

if.end.38:                                        ; preds = %if.end.29
  %11 = load i32, i32* @_P_fnumb, align 4
  %tobool39 = icmp ne i32 %11, 0
  br i1 %tobool39, label %cond.true, label %cond.false.45

cond.true:                                        ; preds = %if.end.38
  %12 = load i32, i32* @_P_fnumb, align 4
  %tobool40 = icmp ne i32 %12, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false

cond.true.41:                                     ; preds = %cond.true
  %13 = load i32, i32* @_L_btlm, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %14 = load i32, i32* @_L_atlm, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.41
  %cond = phi i32 [ %13, %cond.true.41 ], [ %14, %cond.false ]
  %idxprom42 = sext i32 %cond to i64
  %arrayidx43 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bc, i32 0, i64 %idxprom42
  %15 = load i32, i32* %arrayidx43, align 4
  %tobool44 = icmp ne i32 %15, 0
  br i1 %tobool44, label %if.end.113, label %if.then.54

cond.false.45:                                    ; preds = %if.end.38
  %16 = load i32, i32* @_P_fnumb, align 4
  %tobool46 = icmp ne i32 %16, 0
  br i1 %tobool46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.false.45
  %17 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.false.45
  %18 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.47
  %cond50 = phi i32 [ %17, %cond.true.47 ], [ %18, %cond.false.48 ]
  %idxprom51 = sext i32 %cond50 to i64
  %arrayidx52 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_ac, i32 0, i64 %idxprom51
  %19 = load i32, i32* %arrayidx52, align 4
  %tobool53 = icmp ne i32 %19, 0
  br i1 %tobool53, label %if.end.113, label %if.then.54

if.then.54:                                       ; preds = %cond.end.49, %cond.end
  %20 = load i32, i32* @_P_fnumb, align 4
  %tobool55 = icmp ne i32 %20, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.69

cond.true.56:                                     ; preds = %if.then.54
  %21 = load i32, i32* @_P_fnumb, align 4
  %tobool57 = icmp ne i32 %21, 0
  br i1 %tobool57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.true.56
  %22 = load i32, i32* @_L_bclm, align 4
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.true.56
  %23 = load i32, i32* @_L_aclm, align 4
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.58
  %cond61 = phi i32 [ %22, %cond.true.58 ], [ %23, %cond.false.59 ]
  %24 = load i32, i32* @_P_fnumb, align 4
  %tobool62 = icmp ne i32 %24, 0
  br i1 %tobool62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end.60
  %25 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.65

cond.false.64:                                    ; preds = %cond.end.60
  %26 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.63
  %cond66 = phi i32 [ %25, %cond.true.63 ], [ %26, %cond.false.64 ]
  %idxprom67 = sext i32 %cond66 to i64
  %arrayidx68 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_btlindex, i32 0, i64 %idxprom67
  store i32 %cond61, i32* %arrayidx68, align 4
  br label %cond.end.82

cond.false.69:                                    ; preds = %if.then.54
  %27 = load i32, i32* @_P_fnumb, align 4
  %tobool70 = icmp ne i32 %27, 0
  br i1 %tobool70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %cond.false.69
  %28 = load i32, i32* @_L_bclm, align 4
  br label %cond.end.73

cond.false.72:                                    ; preds = %cond.false.69
  %29 = load i32, i32* @_L_aclm, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.71
  %cond74 = phi i32 [ %28, %cond.true.71 ], [ %29, %cond.false.72 ]
  %30 = load i32, i32* @_P_fnumb, align 4
  %tobool75 = icmp ne i32 %30, 0
  br i1 %tobool75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.end.73
  %31 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.78

cond.false.77:                                    ; preds = %cond.end.73
  %32 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi i32 [ %31, %cond.true.76 ], [ %32, %cond.false.77 ]
  %idxprom80 = sext i32 %cond79 to i64
  %arrayidx81 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_atlindex, i32 0, i64 %idxprom80
  store i32 %cond74, i32* %arrayidx81, align 4
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.78, %cond.end.65
  %cond83 = phi i32 [ %cond61, %cond.end.65 ], [ %cond74, %cond.end.78 ]
  %33 = load i32, i32* @_P_fnumb, align 4
  %tobool84 = icmp ne i32 %33, 0
  br i1 %tobool84, label %cond.true.85, label %cond.false.98

cond.true.85:                                     ; preds = %cond.end.82
  %34 = load i32, i32* @_P_fnumb, align 4
  %tobool86 = icmp ne i32 %34, 0
  br i1 %tobool86, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.true.85
  %35 = load i32, i32* @_K_btm, align 4
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.true.85
  %36 = load i32, i32* @_K_atm, align 4
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.87
  %cond90 = phi i32 [ %35, %cond.true.87 ], [ %36, %cond.false.88 ]
  %37 = load i32, i32* @_P_fnumb, align 4
  %tobool91 = icmp ne i32 %37, 0
  br i1 %tobool91, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.end.89
  %38 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.94

cond.false.93:                                    ; preds = %cond.end.89
  %39 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.92
  %cond95 = phi i32 [ %38, %cond.true.92 ], [ %39, %cond.false.93 ]
  %idxprom96 = sext i32 %cond95 to i64
  %arrayidx97 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bi, i32 0, i64 %idxprom96
  store i32 %cond90, i32* %arrayidx97, align 4
  br label %cond.end.111

cond.false.98:                                    ; preds = %cond.end.82
  %40 = load i32, i32* @_P_fnumb, align 4
  %tobool99 = icmp ne i32 %40, 0
  br i1 %tobool99, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %cond.false.98
  %41 = load i32, i32* @_K_btm, align 4
  br label %cond.end.102

cond.false.101:                                   ; preds = %cond.false.98
  %42 = load i32, i32* @_K_atm, align 4
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.100
  %cond103 = phi i32 [ %41, %cond.true.100 ], [ %42, %cond.false.101 ]
  %43 = load i32, i32* @_P_fnumb, align 4
  %tobool104 = icmp ne i32 %43, 0
  br i1 %tobool104, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %cond.end.102
  %44 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end.102
  %45 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.105
  %cond108 = phi i32 [ %44, %cond.true.105 ], [ %45, %cond.false.106 ]
  %idxprom109 = sext i32 %cond108 to i64
  %arrayidx110 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_ai, i32 0, i64 %idxprom109
  store i32 %cond103, i32* %arrayidx110, align 4
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.107, %cond.end.94
  %cond112 = phi i32 [ %cond90, %cond.end.94 ], [ %cond103, %cond.end.107 ]
  br label %if.end.113

if.end.113:                                       ; preds = %cond.end.111, %cond.end.49, %cond.end
  %46 = load i32, i32* @_P_fnumb, align 4
  %tobool114 = icmp ne i32 %46, 0
  br i1 %tobool114, label %cond.true.115, label %cond.false.123

cond.true.115:                                    ; preds = %if.end.113
  %47 = load i32, i32* @_P_fnumb, align 4
  %tobool116 = icmp ne i32 %47, 0
  br i1 %tobool116, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.true.115
  %48 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.true.115
  %49 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi i32 [ %48, %cond.true.117 ], [ %49, %cond.false.118 ]
  %idxprom121 = sext i32 %cond120 to i64
  %arrayidx122 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_btlindex, i32 0, i64 %idxprom121
  %50 = load i32, i32* %arrayidx122, align 4
  br label %cond.end.131

cond.false.123:                                   ; preds = %if.end.113
  %51 = load i32, i32* @_P_fnumb, align 4
  %tobool124 = icmp ne i32 %51, 0
  br i1 %tobool124, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %cond.false.123
  %52 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.127

cond.false.126:                                   ; preds = %cond.false.123
  %53 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.126, %cond.true.125
  %cond128 = phi i32 [ %52, %cond.true.125 ], [ %53, %cond.false.126 ]
  %idxprom129 = sext i32 %cond128 to i64
  %arrayidx130 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_atlindex, i32 0, i64 %idxprom129
  %54 = load i32, i32* %arrayidx130, align 4
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.127, %cond.end.119
  %cond132 = phi i32 [ %50, %cond.end.119 ], [ %54, %cond.end.127 ]
  store i32 %cond132, i32* %startline, align 4
  %55 = load i8*, i8** @_P_nextchr, align 8
  %56 = load i8*, i8** @_P_firstchr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %56 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv133 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv133, i32* %startpos, align 4
  %call134 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 40)
  %57 = bitcast i32* %call134 to %struct._K_str*
  store %struct._K_str* %57, %struct._K_str** %newtoken, align 8
  %58 = load i32, i32* @_P_fnumb, align 4
  %tobool135 = icmp ne i32 %58, 0
  br i1 %tobool135, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %cond.end.131
  %59 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.end.131
  %60 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi i32 [ %59, %cond.true.136 ], [ %60, %cond.false.137 ]
  %61 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %linenum = getelementptr inbounds %struct._K_str, %struct._K_str* %61, i32 0, i32 0
  store i32 %cond139, i32* %linenum, align 4
  %62 = load i32, i32* %startpos, align 4
  %63 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %pos = getelementptr inbounds %struct._K_str, %struct._K_str* %63, i32 0, i32 1
  store i32 %62, i32* %pos, align 4
  store i32 0, i32* %ret_code, align 4
  %64 = load i8*, i8** @_P_nextchr, align 8
  %call140 = call %struct._W_litstruct* (i8*, ...) bitcast (%struct._W_litstruct* (...)* @W_islit to %struct._W_litstruct* (i8*, ...)*)(i8* %64)
  store %struct._W_litstruct* %call140, %struct._W_litstruct** %litptr, align 8
  %cmp141 = icmp ne %struct._W_litstruct* %call140, null
  br i1 %cmp141, label %if.then.143, label %if.else.219

if.then.143:                                      ; preds = %cond.end.138
  %65 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr, align 8
  %call144 = call i32 @_P_litsnarf(%struct._W_litstruct* %65)
  store i32 %call144, i32* %ret_code, align 4
  %66 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %type = getelementptr inbounds %struct._K_str, %struct._K_str* %66, i32 0, i32 2
  store i32 1, i32* %type, align 4
  %67 = load i32, i32* @_P_stringsize, align 4
  call void (i8**, i32, ...) bitcast (void (...)* @S_allocstr to void (i8**, i32, ...)*)(i8** %ptr, i32 %67)
  %68 = load i32, i32* @_P_fnumb, align 4
  %tobool145 = icmp ne i32 %68, 0
  br i1 %tobool145, label %cond.true.146, label %cond.false.147

cond.true.146:                                    ; preds = %if.then.143
  %69 = load i32, i32* @_L_bclm, align 4
  br label %cond.end.148

cond.false.147:                                   ; preds = %if.then.143
  %70 = load i32, i32* @_L_aclm, align 4
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.147, %cond.true.146
  %cond149 = phi i32 [ %69, %cond.true.146 ], [ %70, %cond.false.147 ]
  store i32 %cond149, i32* %endline, align 4
  %71 = load i32, i32* %endline, align 4
  %72 = load i32, i32* %startline, align 4
  %cmp150 = icmp sgt i32 %71, %72
  br i1 %cmp150, label %if.then.152, label %if.else

if.then.152:                                      ; preds = %cond.end.148
  %73 = load i8*, i8** %ptr, align 8
  %74 = load i32, i32* @_P_fnumb, align 4
  %tobool153 = icmp ne i32 %74, 0
  br i1 %tobool153, label %cond.true.154, label %cond.false.159

cond.true.154:                                    ; preds = %if.then.152
  %75 = load i32, i32* %startline, align 4
  %idxprom155 = sext i32 %75 to i64
  %arrayidx156 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bclindex, i32 0, i64 %idxprom155
  %76 = load i32, i32* %arrayidx156, align 4
  %idxprom157 = sext i32 %76 to i64
  %arrayidx158 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_bl, i32 0, i64 %idxprom157
  %77 = load i8*, i8** %arrayidx158, align 8
  br label %cond.end.164

cond.false.159:                                   ; preds = %if.then.152
  %78 = load i32, i32* %startline, align 4
  %idxprom160 = sext i32 %78 to i64
  %arrayidx161 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_aclindex, i32 0, i64 %idxprom160
  %79 = load i32, i32* %arrayidx161, align 4
  %idxprom162 = sext i32 %79 to i64
  %arrayidx163 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_al, i32 0, i64 %idxprom162
  %80 = load i8*, i8** %arrayidx163, align 8
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.159, %cond.true.154
  %cond165 = phi i8* [ %77, %cond.true.154 ], [ %80, %cond.false.159 ]
  %81 = load i32, i32* %startpos, align 4
  %idx.ext = sext i32 %81 to i64
  %add.ptr = getelementptr inbounds i8, i8* %cond165, i64 %idx.ext
  %call166 = call i8* @strcpy(i8* %73, i8* %add.ptr) #6
  %82 = load i32, i32* %startline, align 4
  %add = add nsw i32 %82, 1
  store i32 %add, i32* %tmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.164
  %83 = load i32, i32* %tmp, align 4
  %84 = load i32, i32* %endline, align 4
  %cmp167 = icmp slt i32 %83, %84
  br i1 %cmp167, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load i8*, i8** %ptr, align 8
  %86 = load i32, i32* @_P_fnumb, align 4
  %tobool169 = icmp ne i32 %86, 0
  br i1 %tobool169, label %cond.true.170, label %cond.false.175

cond.true.170:                                    ; preds = %for.body
  %87 = load i32, i32* %tmp, align 4
  %idxprom171 = sext i32 %87 to i64
  %arrayidx172 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bclindex, i32 0, i64 %idxprom171
  %88 = load i32, i32* %arrayidx172, align 4
  %idxprom173 = sext i32 %88 to i64
  %arrayidx174 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_bl, i32 0, i64 %idxprom173
  %89 = load i8*, i8** %arrayidx174, align 8
  br label %cond.end.180

cond.false.175:                                   ; preds = %for.body
  %90 = load i32, i32* %tmp, align 4
  %idxprom176 = sext i32 %90 to i64
  %arrayidx177 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_aclindex, i32 0, i64 %idxprom176
  %91 = load i32, i32* %arrayidx177, align 4
  %idxprom178 = sext i32 %91 to i64
  %arrayidx179 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_al, i32 0, i64 %idxprom178
  %92 = load i8*, i8** %arrayidx179, align 8
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.175, %cond.true.170
  %cond181 = phi i8* [ %89, %cond.true.170 ], [ %92, %cond.false.175 ]
  %call182 = call i8* @strcat(i8* %85, i8* %cond181) #6
  br label %for.inc

for.inc:                                          ; preds = %cond.end.180
  %93 = load i32, i32* %tmp, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %tmp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %94 = load i8*, i8** %ptr, align 8
  %95 = load i32, i32* @_P_fnumb, align 4
  %tobool183 = icmp ne i32 %95, 0
  br i1 %tobool183, label %cond.true.184, label %cond.false.189

cond.true.184:                                    ; preds = %for.end
  %96 = load i32, i32* %endline, align 4
  %idxprom185 = sext i32 %96 to i64
  %arrayidx186 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bclindex, i32 0, i64 %idxprom185
  %97 = load i32, i32* %arrayidx186, align 4
  %idxprom187 = sext i32 %97 to i64
  %arrayidx188 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_bl, i32 0, i64 %idxprom187
  %98 = load i8*, i8** %arrayidx188, align 8
  br label %cond.end.194

cond.false.189:                                   ; preds = %for.end
  %99 = load i32, i32* %endline, align 4
  %idxprom190 = sext i32 %99 to i64
  %arrayidx191 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_aclindex, i32 0, i64 %idxprom190
  %100 = load i32, i32* %arrayidx191, align 4
  %idxprom192 = sext i32 %100 to i64
  %arrayidx193 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_al, i32 0, i64 %idxprom192
  %101 = load i8*, i8** %arrayidx193, align 8
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.189, %cond.true.184
  %cond195 = phi i8* [ %98, %cond.true.184 ], [ %101, %cond.false.189 ]
  %102 = load i32, i32* @_P_stringsize, align 4
  %conv196 = sext i32 %102 to i64
  %103 = load i8*, i8** %ptr, align 8
  %call197 = call i64 @strlen(i8* %103) #5
  %sub = sub i64 %conv196, %call197
  %call198 = call i8* @strncat(i8* %94, i8* %cond195, i64 %sub) #6
  br label %if.end.218

if.else:                                          ; preds = %cond.end.148
  %104 = load i8*, i8** %ptr, align 8
  %105 = load i32, i32* @_P_fnumb, align 4
  %tobool199 = icmp ne i32 %105, 0
  br i1 %tobool199, label %cond.true.200, label %cond.false.205

cond.true.200:                                    ; preds = %if.else
  %106 = load i32, i32* %startline, align 4
  %idxprom201 = sext i32 %106 to i64
  %arrayidx202 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bclindex, i32 0, i64 %idxprom201
  %107 = load i32, i32* %arrayidx202, align 4
  %idxprom203 = sext i32 %107 to i64
  %arrayidx204 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_bl, i32 0, i64 %idxprom203
  %108 = load i8*, i8** %arrayidx204, align 8
  br label %cond.end.210

cond.false.205:                                   ; preds = %if.else
  %109 = load i32, i32* %startline, align 4
  %idxprom206 = sext i32 %109 to i64
  %arrayidx207 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_aclindex, i32 0, i64 %idxprom206
  %110 = load i32, i32* %arrayidx207, align 4
  %idxprom208 = sext i32 %110 to i64
  %arrayidx209 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_al, i32 0, i64 %idxprom208
  %111 = load i8*, i8** %arrayidx209, align 8
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.205, %cond.true.200
  %cond211 = phi i8* [ %108, %cond.true.200 ], [ %111, %cond.false.205 ]
  %112 = load i32, i32* %startpos, align 4
  %idx.ext212 = sext i32 %112 to i64
  %add.ptr213 = getelementptr inbounds i8, i8* %cond211, i64 %idx.ext212
  %113 = load i32, i32* @_P_stringsize, align 4
  %conv214 = sext i32 %113 to i64
  %call215 = call i8* @strncpy(i8* %104, i8* %add.ptr213, i64 %conv214) #6
  %114 = load i32, i32* @_P_stringsize, align 4
  %idxprom216 = sext i32 %114 to i64
  %115 = load i8*, i8** %ptr, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %115, i64 %idxprom216
  store i8 0, i8* %arrayidx217, align 1
  br label %if.end.218

if.end.218:                                       ; preds = %cond.end.210, %cond.end.194
  %116 = load i8*, i8** %ptr, align 8
  %117 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %text = getelementptr inbounds %struct._K_str, %struct._K_str* %117, i32 0, i32 3
  store i8* %116, i8** %text, align 8
  br label %if.end.315

if.else.219:                                      ; preds = %cond.end.138
  %118 = load i8*, i8** @_P_nextchr, align 8
  %119 = load i32, i32* @_P_flags, align 4
  %and220 = and i32 %119, 32
  %120 = load i32, i32* @_P_flags, align 4
  %and221 = and i32 %120, 16
  %call222 = call i32 @F_isfloat(i8* %118, i32 %and220, i32 %and221)
  store i32 %call222, i32* %tmp, align 4
  %cmp223 = icmp ne i32 %call222, 0
  br i1 %cmp223, label %if.then.225, label %if.else.242

if.then.225:                                      ; preds = %if.else.219
  %121 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %text226 = getelementptr inbounds %struct._K_str, %struct._K_str* %121, i32 0, i32 3
  %122 = load i8*, i8** @_P_nextchr, align 8
  %123 = load i32, i32* %tmp, align 4
  call void (i8**, i8*, i32, ...) bitcast (void (...)* @S_savenstr to void (i8**, i8*, i32, ...)*)(i8** %text226, i8* %122, i32 %123)
  %124 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %type227 = getelementptr inbounds %struct._K_str, %struct._K_str* %124, i32 0, i32 2
  store i32 2, i32* %type227, align 4
  %125 = load i32, i32* @_P_flags, align 4
  %and228 = and i32 %125, 2
  %tobool229 = icmp ne i32 %and228, 0
  br i1 %tobool229, label %if.end.234, label %if.then.230

if.then.230:                                      ; preds = %if.then.225
  %126 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %text231 = getelementptr inbounds %struct._K_str, %struct._K_str* %126, i32 0, i32 3
  %127 = load i8*, i8** %text231, align 8
  %call232 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (...)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* %127, i32 1)
  %128 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %flo_num = getelementptr inbounds %struct._K_str, %struct._K_str* %128, i32 0, i32 4
  store %struct.R_flstr* %call232, %struct.R_flstr** %flo_num, align 8
  %129 = load i32, i32* @_P_next_tol, align 4
  %call233 = call %struct._T_tstr* (i32, ...) bitcast (%struct._T_tstr* (...)* @T_gettol to %struct._T_tstr* (i32, ...)*)(i32 %129)
  %130 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %tolerance = getelementptr inbounds %struct._K_str, %struct._K_str* %130, i32 0, i32 5
  store %struct._T_tstr* %call233, %struct._T_tstr** %tolerance, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.230, %if.then.225
  %131 = load i32, i32* @_P_next_tol, align 4
  %call235 = call i32 @T_moretols(i32 %131)
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.then.237, label %if.end.239

if.then.237:                                      ; preds = %if.end.234
  %132 = load i32, i32* @_P_next_tol, align 4
  %inc238 = add nsw i32 %132, 1
  store i32 %inc238, i32* @_P_next_tol, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %if.end.234
  %133 = load i32, i32* %tmp, align 4
  %134 = load i8*, i8** @_P_nextchr, align 8
  %idx.ext240 = sext i32 %133 to i64
  %add.ptr241 = getelementptr inbounds i8, i8* %134, i64 %idx.ext240
  store i8* %add.ptr241, i8** @_P_nextchr, align 8
  br label %if.end.314

if.else.242:                                      ; preds = %if.else.219
  %135 = load i8*, i8** @_P_nextchr, align 8
  %136 = load i8, i8* %135, align 1
  %conv243 = sext i8 %136 to i32
  %idxprom244 = sext i32 %conv243 to i64
  %call245 = call i16** @__ctype_b_loc() #7
  %137 = load i16*, i16** %call245, align 8
  %arrayidx246 = getelementptr inbounds i16, i16* %137, i64 %idxprom244
  %138 = load i16, i16* %arrayidx246, align 2
  %conv247 = zext i16 %138 to i32
  %and248 = and i32 %conv247, 2048
  %tobool249 = icmp ne i32 %and248, 0
  br i1 %tobool249, label %if.then.250, label %if.else.268

if.then.250:                                      ; preds = %if.else.242
  %139 = load i8*, i8** @_P_nextchr, align 8
  store i8* %139, i8** %ptr, align 8
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.260, %if.then.250
  %140 = load i8*, i8** %ptr, align 8
  %141 = load i8, i8* %140, align 1
  %conv252 = sext i8 %141 to i32
  %idxprom253 = sext i32 %conv252 to i64
  %call254 = call i16** @__ctype_b_loc() #7
  %142 = load i16*, i16** %call254, align 8
  %arrayidx255 = getelementptr inbounds i16, i16* %142, i64 %idxprom253
  %143 = load i16, i16* %arrayidx255, align 2
  %conv256 = zext i16 %143 to i32
  %and257 = and i32 %conv256, 2048
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %for.body.259, label %for.end.262

for.body.259:                                     ; preds = %for.cond.251
  br label %for.inc.260

for.inc.260:                                      ; preds = %for.body.259
  %144 = load i8*, i8** %ptr, align 8
  %incdec.ptr261 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr261, i8** %ptr, align 8
  br label %for.cond.251

for.end.262:                                      ; preds = %for.cond.251
  %145 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %text263 = getelementptr inbounds %struct._K_str, %struct._K_str* %145, i32 0, i32 3
  %146 = load i8*, i8** @_P_nextchr, align 8
  %147 = load i8*, i8** %ptr, align 8
  %148 = load i8*, i8** @_P_nextchr, align 8
  %sub.ptr.lhs.cast264 = ptrtoint i8* %147 to i64
  %sub.ptr.rhs.cast265 = ptrtoint i8* %148 to i64
  %sub.ptr.sub266 = sub i64 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast265
  call void (i8**, i8*, i64, ...) bitcast (void (...)* @S_savenstr to void (i8**, i8*, i64, ...)*)(i8** %text263, i8* %146, i64 %sub.ptr.sub266)
  %149 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %type267 = getelementptr inbounds %struct._K_str, %struct._K_str* %149, i32 0, i32 2
  store i32 1, i32* %type267, align 4
  %150 = load i8*, i8** %ptr, align 8
  store i8* %150, i8** @_P_nextchr, align 8
  br label %if.end.313

if.else.268:                                      ; preds = %if.else.242
  %151 = load i8*, i8** @_P_nextchr, align 8
  %152 = load i8, i8* %151, align 1
  %conv269 = sext i8 %152 to i32
  %idxprom270 = sext i32 %conv269 to i64
  %call271 = call i16** @__ctype_b_loc() #7
  %153 = load i16*, i16** %call271, align 8
  %arrayidx272 = getelementptr inbounds i16, i16* %153, i64 %idxprom270
  %154 = load i16, i16* %arrayidx272, align 2
  %conv273 = zext i16 %154 to i32
  %and274 = and i32 %conv273, 1024
  %tobool275 = icmp ne i32 %and274, 0
  br i1 %tobool275, label %if.then.279, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.268
  %155 = load i8*, i8** @_P_nextchr, align 8
  %156 = load i8, i8* %155, align 1
  %conv276 = sext i8 %156 to i32
  %call277 = call i32 @_P_in_alpha(i32 %conv276)
  %tobool278 = icmp ne i32 %call277, 0
  br i1 %tobool278, label %if.then.279, label %if.else.308

if.then.279:                                      ; preds = %lor.lhs.false, %if.else.268
  %157 = load i8*, i8** @_P_nextchr, align 8
  store i8* %157, i8** %ptr, align 8
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.300, %if.then.279
  %158 = load i8*, i8** %ptr, align 8
  %159 = load i8, i8* %158, align 1
  %conv281 = sext i8 %159 to i32
  %idxprom282 = sext i32 %conv281 to i64
  %call283 = call i16** @__ctype_b_loc() #7
  %160 = load i16*, i16** %call283, align 8
  %arrayidx284 = getelementptr inbounds i16, i16* %160, i64 %idxprom282
  %161 = load i16, i16* %arrayidx284, align 2
  %conv285 = zext i16 %161 to i32
  %and286 = and i32 %conv285, 1024
  %tobool287 = icmp ne i32 %and286, 0
  br i1 %tobool287, label %lor.end, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %for.cond.280
  %162 = load i8*, i8** %ptr, align 8
  %163 = load i8, i8* %162, align 1
  %conv289 = sext i8 %163 to i32
  %idxprom290 = sext i32 %conv289 to i64
  %call291 = call i16** @__ctype_b_loc() #7
  %164 = load i16*, i16** %call291, align 8
  %arrayidx292 = getelementptr inbounds i16, i16* %164, i64 %idxprom290
  %165 = load i16, i16* %arrayidx292, align 2
  %conv293 = zext i16 %165 to i32
  %and294 = and i32 %conv293, 2048
  %tobool295 = icmp ne i32 %and294, 0
  br i1 %tobool295, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.288
  %166 = load i8*, i8** %ptr, align 8
  %167 = load i8, i8* %166, align 1
  %conv296 = sext i8 %167 to i32
  %call297 = call i32 @_P_in_alpha(i32 %conv296)
  %tobool298 = icmp ne i32 %call297, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.288, %for.cond.280
  %168 = phi i1 [ true, %lor.lhs.false.288 ], [ true, %for.cond.280 ], [ %tobool298, %lor.rhs ]
  br i1 %168, label %for.body.299, label %for.end.302

for.body.299:                                     ; preds = %lor.end
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.body.299
  %169 = load i8*, i8** %ptr, align 8
  %incdec.ptr301 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr301, i8** %ptr, align 8
  br label %for.cond.280

for.end.302:                                      ; preds = %lor.end
  %170 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %text303 = getelementptr inbounds %struct._K_str, %struct._K_str* %170, i32 0, i32 3
  %171 = load i8*, i8** @_P_nextchr, align 8
  %172 = load i8*, i8** %ptr, align 8
  %173 = load i8*, i8** @_P_nextchr, align 8
  %sub.ptr.lhs.cast304 = ptrtoint i8* %172 to i64
  %sub.ptr.rhs.cast305 = ptrtoint i8* %173 to i64
  %sub.ptr.sub306 = sub i64 %sub.ptr.lhs.cast304, %sub.ptr.rhs.cast305
  call void (i8**, i8*, i64, ...) bitcast (void (...)* @S_savenstr to void (i8**, i8*, i64, ...)*)(i8** %text303, i8* %171, i64 %sub.ptr.sub306)
  %174 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %type307 = getelementptr inbounds %struct._K_str, %struct._K_str* %174, i32 0, i32 2
  store i32 1, i32* %type307, align 4
  %175 = load i8*, i8** %ptr, align 8
  store i8* %175, i8** @_P_nextchr, align 8
  br label %if.end.312

if.else.308:                                      ; preds = %lor.lhs.false
  %176 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %text309 = getelementptr inbounds %struct._K_str, %struct._K_str* %176, i32 0, i32 3
  %177 = load i8*, i8** @_P_nextchr, align 8
  call void (i8**, i8*, i32, ...) bitcast (void (...)* @S_savenstr to void (i8**, i8*, i32, ...)*)(i8** %text309, i8* %177, i32 1)
  %178 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  %type310 = getelementptr inbounds %struct._K_str, %struct._K_str* %178, i32 0, i32 2
  store i32 1, i32* %type310, align 4
  %179 = load i8*, i8** @_P_nextchr, align 8
  %incdec.ptr311 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr311, i8** @_P_nextchr, align 8
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.308, %for.end.302
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %for.end.262
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %if.end.239
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.end.218
  %180 = load i32, i32* @_P_fnumb, align 4
  %181 = load i32, i32* @_P_fnumb, align 4
  %tobool316 = icmp ne i32 %181, 0
  br i1 %tobool316, label %cond.true.317, label %cond.false.318

cond.true.317:                                    ; preds = %if.end.315
  %182 = load i32, i32* @_K_btm, align 4
  br label %cond.end.319

cond.false.318:                                   ; preds = %if.end.315
  %183 = load i32, i32* @_K_atm, align 4
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.false.318, %cond.true.317
  %cond320 = phi i32 [ %182, %cond.true.317 ], [ %183, %cond.false.318 ]
  %184 = load %struct._K_str*, %struct._K_str** %newtoken, align 8
  call void (i32, i32, %struct._K_str*, ...) bitcast (void (...)* @K_settoken to void (i32, i32, %struct._K_str*, ...)*)(i32 %180, i32 %cond320, %struct._K_str* %184)
  %185 = load i32, i32* @_P_fnumb, align 4
  %tobool321 = icmp ne i32 %185, 0
  br i1 %tobool321, label %cond.true.322, label %cond.false.331

cond.true.322:                                    ; preds = %cond.end.319
  %186 = load i32, i32* @_P_fnumb, align 4
  %tobool323 = icmp ne i32 %186, 0
  br i1 %tobool323, label %cond.true.324, label %cond.false.325

cond.true.324:                                    ; preds = %cond.true.322
  %187 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.326

cond.false.325:                                   ; preds = %cond.true.322
  %188 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.false.325, %cond.true.324
  %cond327 = phi i32 [ %187, %cond.true.324 ], [ %188, %cond.false.325 ]
  %idxprom328 = sext i32 %cond327 to i64
  %arrayidx329 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bc, i32 0, i64 %idxprom328
  %189 = load i32, i32* %arrayidx329, align 4
  %inc330 = add nsw i32 %189, 1
  store i32 %inc330, i32* %arrayidx329, align 4
  br label %cond.end.340

cond.false.331:                                   ; preds = %cond.end.319
  %190 = load i32, i32* @_P_fnumb, align 4
  %tobool332 = icmp ne i32 %190, 0
  br i1 %tobool332, label %cond.true.333, label %cond.false.334

cond.true.333:                                    ; preds = %cond.false.331
  %191 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.335

cond.false.334:                                   ; preds = %cond.false.331
  %192 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.334, %cond.true.333
  %cond336 = phi i32 [ %191, %cond.true.333 ], [ %192, %cond.false.334 ]
  %idxprom337 = sext i32 %cond336 to i64
  %arrayidx338 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_ac, i32 0, i64 %idxprom337
  %193 = load i32, i32* %arrayidx338, align 4
  %inc339 = add nsw i32 %193, 1
  store i32 %inc339, i32* %arrayidx338, align 4
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.end.335, %cond.end.326
  %cond341 = phi i32 [ %189, %cond.end.326 ], [ %193, %cond.end.335 ]
  %194 = load i32, i32* @_P_fnumb, align 4
  %tobool342 = icmp ne i32 %194, 0
  br i1 %tobool342, label %cond.true.343, label %cond.false.345

cond.true.343:                                    ; preds = %cond.end.340
  %195 = load i32, i32* @_K_btm, align 4
  %inc344 = add nsw i32 %195, 1
  store i32 %inc344, i32* @_K_btm, align 4
  br label %cond.end.347

cond.false.345:                                   ; preds = %cond.end.340
  %196 = load i32, i32* @_K_atm, align 4
  %inc346 = add nsw i32 %196, 1
  store i32 %inc346, i32* @_K_atm, align 4
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.345, %cond.true.343
  %cond348 = phi i32 [ %inc344, %cond.true.343 ], [ %inc346, %cond.false.345 ]
  %cmp349 = icmp sge i32 %cond348, 50000
  br i1 %cmp349, label %if.then.351, label %if.end.353

if.then.351:                                      ; preds = %cond.end.347
  %call352 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i32 0, i32 0), i32 50000) #6
  call void (i8*, ...) bitcast (void (...)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %return

if.end.353:                                       ; preds = %cond.end.347
  %197 = load i32, i32* @_P_fnumb, align 4
  %tobool354 = icmp ne i32 %197, 0
  br i1 %tobool354, label %cond.true.355, label %cond.false.356

cond.true.355:                                    ; preds = %if.end.353
  %198 = load i32, i32* @_K_btm, align 4
  br label %cond.end.357

cond.false.356:                                   ; preds = %if.end.353
  %199 = load i32, i32* @_K_atm, align 4
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.356, %cond.true.355
  %cond358 = phi i32 [ %198, %cond.true.355 ], [ %199, %cond.false.356 ]
  %rem = srem i32 %cond358, 1000
  %cmp359 = icmp eq i32 0, %rem
  br i1 %cmp359, label %if.then.361, label %if.end.370

if.then.361:                                      ; preds = %cond.end.357
  %200 = load i32, i32* @_P_fnumb, align 4
  %tobool363 = icmp ne i32 %200, 0
  br i1 %tobool363, label %cond.true.364, label %cond.false.365

cond.true.364:                                    ; preds = %if.then.361
  %201 = load i32, i32* @_K_btm, align 4
  br label %cond.end.366

cond.false.365:                                   ; preds = %if.then.361
  %202 = load i32, i32* @_K_atm, align 4
  br label %cond.end.366

cond.end.366:                                     ; preds = %cond.false.365, %cond.true.364
  %cond367 = phi i32 [ %201, %cond.true.364 ], [ %202, %cond.false.365 ]
  store i32 %cond367, i32* %max, align 4
  %203 = load i32, i32* %max, align 4
  %204 = load i32, i32* @_P_fnumb, align 4
  %add368 = add nsw i32 %204, 1
  %call369 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %203, i32 %add368) #6
  call void (i8*, ...) bitcast (void (...)* @Z_chatter to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.370

if.end.370:                                       ; preds = %cond.end.366, %cond.end.357
  %205 = load i32, i32* %ret_code, align 4
  %tobool371 = icmp ne i32 %205, 0
  br i1 %tobool371, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %if.end.370
  br label %return

if.end.373:                                       ; preds = %if.end.370
  br label %while.body

return:                                           ; preds = %if.then.372, %if.then.351, %if.then.36, %if.then.19, %if.then.11
  ret void
}

declare %struct._W_bolstruct* @W_isbol(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @_P_bolsnarf(%struct._W_bolstruct* %bolptr) #0 {
entry:
  %retval = alloca i32, align 4
  %bolptr.addr = alloca %struct._W_bolstruct*, align 8
  store %struct._W_bolstruct* %bolptr, %struct._W_bolstruct** %bolptr.addr, align 8
  %0 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %begin = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #5
  %1 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call
  store i8* %add.ptr, i8** @_P_nextchr, align 8
  %2 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %end = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %2, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %3 = load i8, i8* %arraydecay1, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.then.34, %if.end.52
  %call3 = call i32 @_P_needmore()
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %while.body
  %call5 = call i32 @_P_nextline()
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  %4 = load i32, i32* @_P_has_content, align 4
  %tobool9 = icmp ne i32 %4, 0
  br i1 %tobool9, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %5 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %call11 = call i32 (%struct._W_bolstruct*, ...) bitcast (i32 (...)* @W_is_bol to i32 (%struct._W_bolstruct*, ...)*)(%struct._W_bolstruct* %5)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %while.body
  %6 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %escape = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %6, i32 0, i32 2
  %arraydecay17 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %7 = load i8, i8* %arraydecay17, align 1
  %conv18 = sext i8 %7 to i32
  %cmp19 = icmp ne i32 0, %conv18
  br i1 %cmp19, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end.16
  %8 = load i8*, i8** @_P_nextchr, align 8
  %9 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %escape21 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %9, i32 0, i32 2
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %escape21, i32 0, i32 0
  %call23 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %8, i8* %arraydecay22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.42, label %land.lhs.true.25

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %10 = load i8*, i8** @_P_nextchr, align 8
  %11 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %escape26 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %11, i32 0, i32 2
  %arraydecay27 = getelementptr inbounds [16 x i8], [16 x i8]* %escape26, i32 0, i32 0
  %call28 = call i64 @strlen(i8* %arraydecay27) #5
  %add.ptr29 = getelementptr inbounds i8, i8* %10, i64 %call28
  %12 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %end30 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %12, i32 0, i32 1
  %arraydecay31 = getelementptr inbounds [16 x i8], [16 x i8]* %end30, i32 0, i32 0
  %call32 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %add.ptr29, i8* %arraydecay31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.42, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.25
  %13 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %escape35 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %13, i32 0, i32 2
  %arraydecay36 = getelementptr inbounds [16 x i8], [16 x i8]* %escape35, i32 0, i32 0
  %call37 = call i64 @strlen(i8* %arraydecay36) #5
  %14 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %end38 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %14, i32 0, i32 1
  %arraydecay39 = getelementptr inbounds [16 x i8], [16 x i8]* %end38, i32 0, i32 0
  %call40 = call i64 @strlen(i8* %arraydecay39) #5
  %add = add i64 %call37, %call40
  %15 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %15, i64 %add
  store i8* %add.ptr41, i8** @_P_nextchr, align 8
  br label %while.body

if.end.42:                                        ; preds = %land.lhs.true.25, %land.lhs.true, %if.end.16
  %16 = load i8*, i8** @_P_nextchr, align 8
  %17 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %end43 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %17, i32 0, i32 1
  %arraydecay44 = getelementptr inbounds [16 x i8], [16 x i8]* %end43, i32 0, i32 0
  %call45 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %16, i8* %arraydecay44)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.52, label %if.then.47

if.then.47:                                       ; preds = %if.end.42
  %18 = load %struct._W_bolstruct*, %struct._W_bolstruct** %bolptr.addr, align 8
  %end48 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %18, i32 0, i32 1
  %arraydecay49 = getelementptr inbounds [16 x i8], [16 x i8]* %end48, i32 0, i32 0
  %call50 = call i64 @strlen(i8* %arraydecay49) #5
  %19 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %19, i64 %call50
  store i8* %add.ptr51, i8** @_P_nextchr, align 8
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.42
  %20 = load i8*, i8** @_P_nextchr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** @_P_nextchr, align 8
  br label %while.body

return:                                           ; preds = %if.then.47, %if.then.13, %if.then.7, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare %struct._W_comstruct* @W_iscom(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @_P_comsnarf(%struct._W_comstruct* %comptr) #0 {
entry:
  %retval = alloca i32, align 4
  %comptr.addr = alloca %struct._W_comstruct*, align 8
  %depth = alloca i32, align 4
  store %struct._W_comstruct* %comptr, %struct._W_comstruct** %comptr.addr, align 8
  store i32 1, i32* %depth, align 4
  %0 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %begin = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #5
  %1 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call
  store i8* %add.ptr, i8** @_P_nextchr, align 8
  %2 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %end = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %2, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %3 = load i8, i8* %arraydecay1, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.then.34, %if.end.59, %if.then.68, %if.end.73
  %call3 = call i32 @_P_needmore()
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %while.body
  %call5 = call i32 @_P_nextline()
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  %4 = load i32, i32* @_P_has_content, align 4
  %tobool9 = icmp ne i32 %4, 0
  br i1 %tobool9, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %5 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %call11 = call i32 (%struct._W_comstruct*, ...) bitcast (i32 (...)* @W_is_com to i32 (%struct._W_comstruct*, ...)*)(%struct._W_comstruct* %5)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %while.body
  %6 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %escape = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %6, i32 0, i32 2
  %arraydecay17 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %7 = load i8, i8* %arraydecay17, align 1
  %conv18 = sext i8 %7 to i32
  %cmp19 = icmp ne i32 0, %conv18
  br i1 %cmp19, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end.16
  %8 = load i8*, i8** @_P_nextchr, align 8
  %9 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %escape21 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %9, i32 0, i32 2
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %escape21, i32 0, i32 0
  %call23 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %8, i8* %arraydecay22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.42, label %land.lhs.true.25

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %10 = load i8*, i8** @_P_nextchr, align 8
  %11 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %escape26 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %11, i32 0, i32 2
  %arraydecay27 = getelementptr inbounds [16 x i8], [16 x i8]* %escape26, i32 0, i32 0
  %call28 = call i64 @strlen(i8* %arraydecay27) #5
  %add.ptr29 = getelementptr inbounds i8, i8* %10, i64 %call28
  %12 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %end30 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %12, i32 0, i32 1
  %arraydecay31 = getelementptr inbounds [16 x i8], [16 x i8]* %end30, i32 0, i32 0
  %call32 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %add.ptr29, i8* %arraydecay31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.42, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.25
  %13 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %escape35 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %13, i32 0, i32 2
  %arraydecay36 = getelementptr inbounds [16 x i8], [16 x i8]* %escape35, i32 0, i32 0
  %call37 = call i64 @strlen(i8* %arraydecay36) #5
  %14 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %end38 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %14, i32 0, i32 1
  %arraydecay39 = getelementptr inbounds [16 x i8], [16 x i8]* %end38, i32 0, i32 0
  %call40 = call i64 @strlen(i8* %arraydecay39) #5
  %add = add i64 %call37, %call40
  %15 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %15, i64 %add
  store i8* %add.ptr41, i8** @_P_nextchr, align 8
  br label %while.body

if.end.42:                                        ; preds = %land.lhs.true.25, %land.lhs.true, %if.end.16
  %16 = load i8*, i8** @_P_nextchr, align 8
  %17 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %end43 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %17, i32 0, i32 1
  %arraydecay44 = getelementptr inbounds [16 x i8], [16 x i8]* %end43, i32 0, i32 0
  %call45 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %16, i8* %arraydecay44)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.60, label %if.then.47

if.then.47:                                       ; preds = %if.end.42
  %18 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %end48 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %18, i32 0, i32 1
  %arraydecay49 = getelementptr inbounds [16 x i8], [16 x i8]* %end48, i32 0, i32 0
  %call50 = call i64 @strlen(i8* %arraydecay49) #5
  %19 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %19, i64 %call50
  store i8* %add.ptr51, i8** @_P_nextchr, align 8
  %20 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %call52 = call i32 @W_is_nesting(%struct._W_comstruct* %20)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.then.47
  %21 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %depth, align 4
  %22 = load i32, i32* %depth, align 4
  %cmp55 = icmp eq i32 0, %22
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.54
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.54
  br label %if.end.59

if.else:                                          ; preds = %if.then.47
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.58
  br label %while.body

if.end.60:                                        ; preds = %if.end.42
  %23 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %call61 = call i32 @W_is_nesting(%struct._W_comstruct* %23)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.73

land.lhs.true.63:                                 ; preds = %if.end.60
  %24 = load i8*, i8** @_P_nextchr, align 8
  %25 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %end64 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %25, i32 0, i32 1
  %arraydecay65 = getelementptr inbounds [16 x i8], [16 x i8]* %end64, i32 0, i32 0
  %call66 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %24, i8* %arraydecay65)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.73, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.63
  %26 = load %struct._W_comstruct*, %struct._W_comstruct** %comptr.addr, align 8
  %end69 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %26, i32 0, i32 1
  %arraydecay70 = getelementptr inbounds [16 x i8], [16 x i8]* %end69, i32 0, i32 0
  %call71 = call i64 @strlen(i8* %arraydecay70) #5
  %27 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %27, i64 %call71
  store i8* %add.ptr72, i8** @_P_nextchr, align 8
  %28 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %depth, align 4
  br label %while.body

if.end.73:                                        ; preds = %land.lhs.true.63, %if.end.60
  %29 = load i8*, i8** @_P_nextchr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** @_P_nextchr, align 8
  br label %while.body

return:                                           ; preds = %if.else, %if.then.57, %if.then.13, %if.then.7, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32* @_Z_myalloc(...) #1

declare %struct._W_litstruct* @W_islit(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @_P_litsnarf(%struct._W_litstruct* %litptr) #0 {
entry:
  %retval = alloca i32, align 4
  %litptr.addr = alloca %struct._W_litstruct*, align 8
  store %struct._W_litstruct* %litptr, %struct._W_litstruct** %litptr.addr, align 8
  store i32 0, i32* @_P_stringsize, align 4
  %0 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %begin = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #5
  %1 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call
  store i8* %add.ptr, i8** @_P_nextchr, align 8
  %2 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %begin1 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %2, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %begin1, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #5
  %3 = load i32, i32* @_P_stringsize, align 4
  %conv = sext i32 %3 to i64
  %add = add i64 %conv, %call3
  %conv4 = trunc i64 %add to i32
  store i32 %conv4, i32* @_P_stringsize, align 4
  %4 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %end = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %4, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %5 = load i8, i8* %arraydecay5, align 1
  %conv6 = sext i8 %5 to i32
  %cmp = icmp eq i32 0, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.then.39, %if.end.74
  %call8 = call i32 @_P_needmore()
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %while.body
  %call10 = call i32 @_P_nextline()
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  %6 = load i32, i32* @_P_has_content, align 4
  %tobool14 = icmp ne i32 %6, 0
  br i1 %tobool14, label %if.end.20, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %7 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %call16 = call i32 (%struct._W_litstruct*, ...) bitcast (i32 (...)* @W_is_lit to i32 (%struct._W_litstruct*, ...)*)(%struct._W_litstruct* %7)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.15
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %while.body
  %8 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %escape = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %8, i32 0, i32 2
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %9 = load i8, i8* %arraydecay22, align 1
  %conv23 = sext i8 %9 to i32
  %cmp24 = icmp ne i32 0, %conv23
  br i1 %cmp24, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %if.end.21
  %10 = load i8*, i8** @_P_nextchr, align 8
  %11 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %escape26 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %11, i32 0, i32 2
  %arraydecay27 = getelementptr inbounds [16 x i8], [16 x i8]* %escape26, i32 0, i32 0
  %call28 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %10, i8* %arraydecay27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.58, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %12 = load i8*, i8** @_P_nextchr, align 8
  %13 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %escape31 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %13, i32 0, i32 2
  %arraydecay32 = getelementptr inbounds [16 x i8], [16 x i8]* %escape31, i32 0, i32 0
  %call33 = call i64 @strlen(i8* %arraydecay32) #5
  %add.ptr34 = getelementptr inbounds i8, i8* %12, i64 %call33
  %14 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %end35 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %14, i32 0, i32 1
  %arraydecay36 = getelementptr inbounds [16 x i8], [16 x i8]* %end35, i32 0, i32 0
  %call37 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %add.ptr34, i8* %arraydecay36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.58, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.30
  %15 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %escape40 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %15, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [16 x i8], [16 x i8]* %escape40, i32 0, i32 0
  %call42 = call i64 @strlen(i8* %arraydecay41) #5
  %16 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %end43 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %16, i32 0, i32 1
  %arraydecay44 = getelementptr inbounds [16 x i8], [16 x i8]* %end43, i32 0, i32 0
  %call45 = call i64 @strlen(i8* %arraydecay44) #5
  %add46 = add i64 %call42, %call45
  %17 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %17, i64 %add46
  store i8* %add.ptr47, i8** @_P_nextchr, align 8
  %18 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %escape48 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %18, i32 0, i32 2
  %arraydecay49 = getelementptr inbounds [16 x i8], [16 x i8]* %escape48, i32 0, i32 0
  %call50 = call i64 @strlen(i8* %arraydecay49) #5
  %19 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %end51 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %19, i32 0, i32 1
  %arraydecay52 = getelementptr inbounds [16 x i8], [16 x i8]* %end51, i32 0, i32 0
  %call53 = call i64 @strlen(i8* %arraydecay52) #5
  %add54 = add i64 %call50, %call53
  %20 = load i32, i32* @_P_stringsize, align 4
  %conv55 = sext i32 %20 to i64
  %add56 = add i64 %conv55, %add54
  %conv57 = trunc i64 %add56 to i32
  store i32 %conv57, i32* @_P_stringsize, align 4
  br label %while.body

if.end.58:                                        ; preds = %land.lhs.true.30, %land.lhs.true, %if.end.21
  %21 = load i8*, i8** @_P_nextchr, align 8
  %22 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %end59 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %22, i32 0, i32 1
  %arraydecay60 = getelementptr inbounds [16 x i8], [16 x i8]* %end59, i32 0, i32 0
  %call61 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %21, i8* %arraydecay60)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.74, label %if.then.63

if.then.63:                                       ; preds = %if.end.58
  %23 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %end64 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %23, i32 0, i32 1
  %arraydecay65 = getelementptr inbounds [16 x i8], [16 x i8]* %end64, i32 0, i32 0
  %call66 = call i64 @strlen(i8* %arraydecay65) #5
  %24 = load i8*, i8** @_P_nextchr, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %24, i64 %call66
  store i8* %add.ptr67, i8** @_P_nextchr, align 8
  %25 = load %struct._W_litstruct*, %struct._W_litstruct** %litptr.addr, align 8
  %end68 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %25, i32 0, i32 1
  %arraydecay69 = getelementptr inbounds [16 x i8], [16 x i8]* %end68, i32 0, i32 0
  %call70 = call i64 @strlen(i8* %arraydecay69) #5
  %26 = load i32, i32* @_P_stringsize, align 4
  %conv71 = sext i32 %26 to i64
  %add72 = add i64 %conv71, %call70
  %conv73 = trunc i64 %add72 to i32
  store i32 %conv73, i32* @_P_stringsize, align 4
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.58
  %27 = load i8*, i8** @_P_nextchr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** @_P_nextchr, align 8
  %28 = load i32, i32* @_P_stringsize, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* @_P_stringsize, align 4
  br label %while.body

return:                                           ; preds = %if.then.63, %if.then.18, %if.then.12, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare void @S_allocstr(...) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @F_isfloat(i8*, i32, i32) #1

declare void @S_savenstr(...) #1

declare %struct.R_flstr* @F_atof(...) #1

declare %struct._T_tstr* @T_gettol(...) #1

declare i32 @T_moretols(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @_P_in_alpha(i32) #0 {
entry:
  %retval = alloca i32, align 4
  %chr.addr = alloca i8, align 1
  %chr = trunc i32 %0 to i8
  store i8 %chr, i8* %chr.addr, align 1
  %1 = load i8, i8* %chr.addr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %chr.addr, align 1
  %conv2 = sext i8 %2 to i32
  %call = call i8* @index(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_P_alpha, i32 0, i32 0), i32 %conv2) #5
  %3 = ptrtoint i8* %call to i32
  store i32 %3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @K_settoken(...) #1

declare void @Z_chatter(...) #1

; Function Attrs: nounwind uwtable
define internal i32 @_P_needmore() #0 {
entry:
  %0 = load i8*, i8** @_P_nextchr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @_P_nextline() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @_P_has_content, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.47

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @_P_fnumb, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i32, i32* @_L_bclm, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @_L_bclm, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i32, i32* @_L_aclm, align 4
  %inc2 = add nsw i32 %3, 1
  store i32 %inc2, i32* @_L_aclm, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  %4 = load i32, i32* @_P_fnumb, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.11

cond.true.4:                                      ; preds = %cond.end
  %5 = load i32, i32* @_P_fnumb, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.true.4
  %6 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.true.4
  %7 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ %6, %cond.true.6 ], [ %7, %cond.false.7 ]
  %idxprom = sext i32 %cond9 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bc, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %if.then.20, label %if.end

cond.false.11:                                    ; preds = %cond.end
  %9 = load i32, i32* @_P_fnumb, align 4
  %tobool12 = icmp ne i32 %9, 0
  br i1 %tobool12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false.11
  %10 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.false.11
  %11 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %10, %cond.true.13 ], [ %11, %cond.false.14 ]
  %idxprom17 = sext i32 %cond16 to i64
  %arrayidx18 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_ac, i32 0, i64 %idxprom17
  %12 = load i32, i32* %arrayidx18, align 4
  %tobool19 = icmp ne i32 %12, 0
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %cond.end.15, %cond.end.8
  %13 = load i32, i32* @_P_fnumb, align 4
  %tobool21 = icmp ne i32 %13, 0
  br i1 %tobool21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %if.then.20
  %14 = load i32, i32* @_L_btlm, align 4
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, i32* @_L_btlm, align 4
  br label %cond.end.26

cond.false.24:                                    ; preds = %if.then.20
  %15 = load i32, i32* @_L_atlm, align 4
  %inc25 = add nsw i32 %15, 1
  store i32 %inc25, i32* @_L_atlm, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.22
  %cond27 = phi i32 [ %14, %cond.true.22 ], [ %15, %cond.false.24 ]
  %16 = load i32, i32* @_P_fnumb, align 4
  %tobool28 = icmp ne i32 %16, 0
  br i1 %tobool28, label %cond.true.29, label %cond.false.37

cond.true.29:                                     ; preds = %cond.end.26
  %17 = load i32, i32* @_P_fnumb, align 4
  %tobool30 = icmp ne i32 %17, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.true.29
  %18 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.true.29
  %19 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi i32 [ %18, %cond.true.31 ], [ %19, %cond.false.32 ]
  %idxprom35 = sext i32 %cond34 to i64
  %arrayidx36 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bc, i32 0, i64 %idxprom35
  store i32 0, i32* %arrayidx36, align 4
  br label %cond.end.45

cond.false.37:                                    ; preds = %cond.end.26
  %20 = load i32, i32* @_P_fnumb, align 4
  %tobool38 = icmp ne i32 %20, 0
  br i1 %tobool38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.37
  %21 = load i32, i32* @_L_btlm, align 4
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.false.37
  %22 = load i32, i32* @_L_atlm, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i32 [ %21, %cond.true.39 ], [ %22, %cond.false.40 ]
  %idxprom43 = sext i32 %cond42 to i64
  %arrayidx44 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_ac, i32 0, i64 %idxprom43
  store i32 0, i32* %arrayidx44, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.41, %cond.end.33
  %cond46 = phi i32 [ 0, %cond.end.33 ], [ 0, %cond.end.41 ]
  br label %if.end

if.end:                                           ; preds = %cond.end.45, %cond.end.15, %cond.end.8
  store i32 0, i32* @_P_has_content, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end, %entry
  store i32 0, i32* @_P_next_tol, align 4
  %23 = load i32, i32* @_P_realline, align 4
  %inc48 = add nsw i32 %23, 1
  store i32 %inc48, i32* @_P_realline, align 4
  %24 = load i32, i32* @_P_realline, align 4
  %25 = load i32, i32* @_P_start, align 4
  %26 = load i32, i32* @_P_lcount, align 4
  %add = add nsw i32 %25, %26
  %cmp = icmp sge i32 %24, %add
  br i1 %cmp, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.47
  %27 = load i32, i32* @_P_fnumb, align 4
  %tobool51 = icmp ne i32 %27, 0
  br i1 %tobool51, label %cond.true.52, label %cond.false.55

cond.true.52:                                     ; preds = %if.end.50
  %28 = load i32, i32* @_P_realline, align 4
  %idxprom53 = sext i32 %28 to i64
  %arrayidx54 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_bl, i32 0, i64 %idxprom53
  %29 = load i8*, i8** %arrayidx54, align 8
  br label %cond.end.58

cond.false.55:                                    ; preds = %if.end.50
  %30 = load i32, i32* @_P_realline, align 4
  %idxprom56 = sext i32 %30 to i64
  %arrayidx57 = getelementptr inbounds [0 x i8*], [0 x i8*]* @_L_al, i32 0, i64 %idxprom56
  %31 = load i8*, i8** %arrayidx57, align 8
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.55, %cond.true.52
  %cond59 = phi i8* [ %29, %cond.true.52 ], [ %31, %cond.false.55 ]
  store i8* %cond59, i8** @_P_nextchr, align 8
  store i8* %cond59, i8** @_P_firstchr, align 8
  %32 = load i8*, i8** @_P_firstchr, align 8
  %call = call i32 (i8*, ...) bitcast (i32 (...)* @C_is_cmd to i32 (i8*, ...)*)(i8* %32)
  %tobool60 = icmp ne i32 %call, 0
  br i1 %tobool60, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %cond.end.58
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @_P_dummyline, i32 0, i32 0), i8** @_P_nextchr, align 8
  store i32 0, i32* @_P_has_content, align 4
  br label %if.end.81

if.else:                                          ; preds = %cond.end.58
  %33 = load i32, i32* @_P_fnumb, align 4
  %tobool62 = icmp ne i32 %33, 0
  br i1 %tobool62, label %cond.true.63, label %cond.false.71

cond.true.63:                                     ; preds = %if.else
  %34 = load i32, i32* @_P_realline, align 4
  %35 = load i32, i32* @_P_fnumb, align 4
  %tobool64 = icmp ne i32 %35, 0
  br i1 %tobool64, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.true.63
  %36 = load i32, i32* @_L_bclm, align 4
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.true.63
  %37 = load i32, i32* @_L_aclm, align 4
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i32 [ %36, %cond.true.65 ], [ %37, %cond.false.66 ]
  %idxprom69 = sext i32 %cond68 to i64
  %arrayidx70 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_bclindex, i32 0, i64 %idxprom69
  store i32 %34, i32* %arrayidx70, align 4
  br label %cond.end.79

cond.false.71:                                    ; preds = %if.else
  %38 = load i32, i32* @_P_realline, align 4
  %39 = load i32, i32* @_P_fnumb, align 4
  %tobool72 = icmp ne i32 %39, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.false.71
  %40 = load i32, i32* @_L_bclm, align 4
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.false.71
  %41 = load i32, i32* @_L_aclm, align 4
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.73
  %cond76 = phi i32 [ %40, %cond.true.73 ], [ %41, %cond.false.74 ]
  %idxprom77 = sext i32 %cond76 to i64
  %arrayidx78 = getelementptr inbounds [0 x i32], [0 x i32]* @_L_aclindex, i32 0, i64 %idxprom77
  store i32 %38, i32* %arrayidx78, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.75, %cond.end.67
  %cond80 = phi i32 [ %34, %cond.end.67 ], [ %38, %cond.end.75 ]
  store i32 1, i32* @_P_has_content, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.79, %if.then.61
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.then.49
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @C_is_cmd(...) #1

declare i32 @W_is_bol(...) #1

declare i32 @S_wordcmp(...) #1

declare i32 @W_is_com(...) #1

declare i32 @W_is_nesting(%struct._W_comstruct*) #1

declare i32 @W_is_lit(...) #1

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
