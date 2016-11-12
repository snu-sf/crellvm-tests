; ModuleID = './src/macros.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kboard = type { %struct.kboard*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i8, i8, i64 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon, i16, i16, i8*, i8*, i8* }
%struct.vectorlike_header = type { i64 }
%union.anon = type { i64 ()* }
%struct.Lisp_Kboard_Objfwd = type { i32, i32 }
%struct.Lisp_Intfwd = type { i32, i64* }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }

@current_kboard = external global %struct.kboard*, align 8
@.str = private unnamed_addr constant [27 x i8] c"Already defining kbd macro\00", align 1
@update_mode_lines = external global i32, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Defining kbd macro...\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Appending to kbd macro...\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Not defining kbd macro\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Keyboard macro defined\00", align 1
@globals = external global %struct.emacs_globals, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"Can't execute anonymous macro while defining one\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"No kbd macro has been defined\00", align 1
@executing_kbd_macro_iterations = common global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"Keyboard macros must be strings or vectors\00", align 1
@executing_kbd_macro = common global i64 0, align 8
@pending_signals = external global i8, align 1
@syms_of_macros.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"kbd-macro-termination-hook\00", align 1
@Scancel_kbd_macro_events = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon { i64 ()* @Fcancel_kbd_macro_events }, i16 0, i16 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null }, align 8
@syms_of_macros.ko_fwd = internal global %struct.Lisp_Kboard_Objfwd zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"defining-kbd-macro\00", align 1
@syms_of_macros.o_fwd.10 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"executing-kbd-macro\00", align 1
@syms_of_macros.i_fwd = internal global %struct.Lisp_Intfwd zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"executing-kbd-macro-index\00", align 1
@syms_of_macros.ko_fwd.13 = internal global %struct.Lisp_Kboard_Objfwd zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"last-kbd-macro\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"start-kbd-macro\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@Sstart_kbd_macro = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fstart_kbd_macro }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* null }, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"end-kbd-macro\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@Send_kbd_macro = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fend_kbd_macro }, i16 0, i16 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* null }, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"call-last-kbd-macro\00", align 1
@Scall_last_kbd_macro = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fcall_last_kbd_macro }, i16 0, i16 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* null }, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"execute-kbd-macro\00", align 1
@Sexecute_kbd_macro = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fexecute_kbd_macro }, i16 1, i16 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.21 = private unnamed_addr constant [24 x i8] c"cancel-kbd-macro-events\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"store-kbd-macro-event\00", align 1
@Sstore_kbd_macro_event = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fstore_kbd_macro_event }, i16 1, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fstart_kbd_macro(i64 %append, i64 %no_exec) #0 {
entry:
  %append.addr = alloca i64, align 8
  %no_exec.addr = alloca i64, align 8
  %incr = alloca i32, align 4
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %cvt = alloca i8, align 1
  %c = alloca i64, align 8
  store i64 %append, i64* %append.addr, align 8
  store i64 %no_exec, i64* %no_exec.addr, align 8
  %0 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %defining_kbd_macro_ = getelementptr inbounds %struct.kboard, %struct.kboard* %0, i32 0, i32 9
  %1 = load i64, i64* %defining_kbd_macro_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer = getelementptr inbounds %struct.kboard, %struct.kboard* %2, i32 0, i32 10
  %3 = load i64*, i64** %kbd_macro_buffer, align 8
  %tobool = icmp ne i64* %3, null
  br i1 %tobool, label %if.end.6, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %call2 = call noalias i8* @xmalloc(i64 240)
  %4 = bitcast i8* %call2 to i64*
  %5 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer3 = getelementptr inbounds %struct.kboard, %struct.kboard* %5, i32 0, i32 10
  store i64* %4, i64** %kbd_macro_buffer3, align 8
  %6 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_bufsize = getelementptr inbounds %struct.kboard, %struct.kboard* %6, i32 0, i32 13
  store i64 30, i64* %kbd_macro_bufsize, align 8
  %7 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer4 = getelementptr inbounds %struct.kboard, %struct.kboard* %7, i32 0, i32 10
  %8 = load i64*, i64** %kbd_macro_buffer4, align 8
  %9 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_ptr = getelementptr inbounds %struct.kboard, %struct.kboard* %9, i32 0, i32 11
  store i64* %8, i64** %kbd_macro_ptr, align 8
  %10 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer5 = getelementptr inbounds %struct.kboard, %struct.kboard* %10, i32 0, i32 10
  %11 = load i64*, i64** %kbd_macro_buffer5, align 8
  %12 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_end = getelementptr inbounds %struct.kboard, %struct.kboard* %12, i32 0, i32 12
  store i64* %11, i64** %kbd_macro_end, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.1, %if.end
  store i32 19, i32* @update_mode_lines, align 4
  %13 = load i64, i64* %append.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %13, %call7
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  %14 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_bufsize10 = getelementptr inbounds %struct.kboard, %struct.kboard* %14, i32 0, i32 13
  %15 = load i64, i64* %kbd_macro_bufsize10, align 8
  %cmp11 = icmp sgt i64 %15, 200
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.then.9
  %16 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer13 = getelementptr inbounds %struct.kboard, %struct.kboard* %16, i32 0, i32 10
  %17 = load i64*, i64** %kbd_macro_buffer13, align 8
  %18 = bitcast i64* %17 to i8*
  %call14 = call i8* @xrealloc(i8* %18, i64 240)
  %19 = bitcast i8* %call14 to i64*
  %20 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer15 = getelementptr inbounds %struct.kboard, %struct.kboard* %20, i32 0, i32 10
  store i64* %19, i64** %kbd_macro_buffer15, align 8
  %21 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_bufsize16 = getelementptr inbounds %struct.kboard, %struct.kboard* %21, i32 0, i32 13
  store i64 30, i64* %kbd_macro_bufsize16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.then.9
  %22 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer18 = getelementptr inbounds %struct.kboard, %struct.kboard* %22, i32 0, i32 10
  %23 = load i64*, i64** %kbd_macro_buffer18, align 8
  %24 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_ptr19 = getelementptr inbounds %struct.kboard, %struct.kboard* %24, i32 0, i32 11
  store i64* %23, i64** %kbd_macro_ptr19, align 8
  %25 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer20 = getelementptr inbounds %struct.kboard, %struct.kboard* %25, i32 0, i32 10
  %26 = load i64*, i64** %kbd_macro_buffer20, align 8
  %27 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_end21 = getelementptr inbounds %struct.kboard, %struct.kboard* %27, i32 0, i32 12
  store i64* %26, i64** %kbd_macro_end21, align 8
  call void @message1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.66

if.else:                                          ; preds = %if.end.6
  store i32 30, i32* %incr, align 4
  %28 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_kbd_macro_ = getelementptr inbounds %struct.kboard, %struct.kboard* %28, i32 0, i32 14
  %29 = load i64, i64* %Vlast_kbd_macro_, align 8
  %call22 = call i64 @CHECK_VECTOR_OR_STRING(i64 %29)
  store i64 %call22, i64* %len, align 8
  %30 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_bufsize23 = getelementptr inbounds %struct.kboard, %struct.kboard* %30, i32 0, i32 13
  %31 = load i64, i64* %kbd_macro_bufsize23, align 8
  %32 = load i32, i32* %incr, align 4
  %conv = sext i32 %32 to i64
  %sub = sub nsw i64 %31, %conv
  %33 = load i64, i64* %len, align 8
  %cmp24 = icmp slt i64 %sub, %33
  br i1 %cmp24, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %if.else
  %34 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer27 = getelementptr inbounds %struct.kboard, %struct.kboard* %34, i32 0, i32 10
  %35 = load i64*, i64** %kbd_macro_buffer27, align 8
  %36 = bitcast i64* %35 to i8*
  %37 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_bufsize28 = getelementptr inbounds %struct.kboard, %struct.kboard* %37, i32 0, i32 13
  %38 = load i64, i64* %len, align 8
  %39 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_bufsize29 = getelementptr inbounds %struct.kboard, %struct.kboard* %39, i32 0, i32 13
  %40 = load i64, i64* %kbd_macro_bufsize29, align 8
  %sub30 = sub nsw i64 %38, %40
  %41 = load i32, i32* %incr, align 4
  %conv31 = sext i32 %41 to i64
  %add = add nsw i64 %sub30, %conv31
  %call32 = call i8* @xpalloc(i8* %36, i64* %kbd_macro_bufsize28, i64 %add, i64 -1, i64 8)
  %42 = bitcast i8* %call32 to i64*
  %43 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer33 = getelementptr inbounds %struct.kboard, %struct.kboard* %43, i32 0, i32 10
  store i64* %42, i64** %kbd_macro_buffer33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.26, %if.else
  %44 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_kbd_macro_35 = getelementptr inbounds %struct.kboard, %struct.kboard* %44, i32 0, i32 14
  %45 = load i64, i64* %Vlast_kbd_macro_35, align 8
  %call36 = call zeroext i1 @STRINGP(i64 %45)
  %frombool = zext i1 %call36 to i8
  store i8 %frombool, i8* %cvt, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %46 = load i64, i64* %i, align 8
  %47 = load i64, i64* %len, align 8
  %cmp37 = icmp slt i64 %46, %47
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_kbd_macro_39 = getelementptr inbounds %struct.kboard, %struct.kboard* %48, i32 0, i32 14
  %49 = load i64, i64* %Vlast_kbd_macro_39, align 8
  %50 = load i64, i64* %i, align 8
  %shl = shl i64 %50, 2
  %add40 = add i64 %shl, 2
  %call41 = call i64 @Faref(i64 %49, i64 %add40)
  store i64 %call41, i64* %c, align 8
  %51 = load i8, i8* %cvt, align 1
  %tobool42 = trunc i8 %51 to i1
  br i1 %tobool42, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %for.body
  %52 = load i64, i64* %c, align 8
  %call44 = call zeroext i1 @NATNUMP(i64 %52)
  br i1 %call44, label %land.lhs.true.46, label %if.end.52

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %53 = load i64, i64* %c, align 8
  %shr = ashr i64 %53, 2
  %and = and i64 %shr, 128
  %tobool47 = icmp ne i64 %and, 0
  br i1 %tobool47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %land.lhs.true.46
  %54 = load i64, i64* %c, align 8
  %shr49 = ashr i64 %54, 2
  %and50 = and i64 %shr49, -129
  %or = or i64 134217728, %and50
  %call51 = call i64 @make_natnum(i64 %or)
  store i64 %call51, i64* %c, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %land.lhs.true.46, %land.lhs.true, %for.body
  %55 = load i64, i64* %c, align 8
  %56 = load i64, i64* %i, align 8
  %57 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer53 = getelementptr inbounds %struct.kboard, %struct.kboard* %57, i32 0, i32 10
  %58 = load i64*, i64** %kbd_macro_buffer53, align 8
  %arrayidx = getelementptr inbounds i64, i64* %58, i64 %56
  store i64 %55, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %59 = load i64, i64* %i, align 8
  %inc = add nsw i64 %59, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer54 = getelementptr inbounds %struct.kboard, %struct.kboard* %60, i32 0, i32 10
  %61 = load i64*, i64** %kbd_macro_buffer54, align 8
  %62 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i64, i64* %61, i64 %62
  %63 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_ptr55 = getelementptr inbounds %struct.kboard, %struct.kboard* %63, i32 0, i32 11
  store i64* %add.ptr, i64** %kbd_macro_ptr55, align 8
  %64 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_ptr56 = getelementptr inbounds %struct.kboard, %struct.kboard* %64, i32 0, i32 11
  %65 = load i64*, i64** %kbd_macro_ptr56, align 8
  %66 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_end57 = getelementptr inbounds %struct.kboard, %struct.kboard* %66, i32 0, i32 12
  store i64* %65, i64** %kbd_macro_end57, align 8
  %67 = load i64, i64* %no_exec.addr, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp59 = icmp eq i64 %67, %call58
  br i1 %cmp59, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %for.end
  %68 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_kbd_macro_62 = getelementptr inbounds %struct.kboard, %struct.kboard* %68, i32 0, i32 14
  %69 = load i64, i64* %Vlast_kbd_macro_62, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %call64 = call i64 @Fexecute_kbd_macro(i64 %69, i64 6, i64 %call63)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %for.end
  call void @message1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.17
  %70 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 901)
  call void @kset_defining_kbd_macro(%struct.kboard* %70, i64 %call67)
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call68
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare noalias i8* @xmalloc(i64) #1

declare i8* @xrealloc(i8*, i64) #1

declare void @message1(i8*) #1

declare i64 @CHECK_VECTOR_OR_STRING(i64) #1

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

declare zeroext i1 @STRINGP(i64) #1

declare i64 @Faref(i64, i64) #1

declare zeroext i1 @NATNUMP(i64) #1

declare i64 @make_natnum(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fexecute_kbd_macro(i64 %macro, i64 %count, i64 %loopfunc) #0 {
entry:
  %macro.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %loopfunc.addr = alloca i64, align 8
  %final = alloca i64, align 8
  %tem = alloca i64, align 8
  %pdlcount = alloca i64, align 8
  %repeat = alloca i64, align 8
  %success_count = alloca i64, align 8
  %cont = alloca i64, align 8
  store i64 %macro, i64* %macro.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %loopfunc, i64* %loopfunc.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %pdlcount, align 8
  store i64 1, i64* %repeat, align 8
  store i64 0, i64* %success_count, align 8
  store i64 0, i64* @executing_kbd_macro_iterations, align 8
  %0 = load i64, i64* %count.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %count.addr, align 8
  %call2 = call i64 @Fprefix_numeric_value(i64 %1)
  store i64 %call2, i64* %count.addr, align 8
  %2 = load i64, i64* %count.addr, align 8
  %shr = ashr i64 %2, 2
  store i64 %shr, i64* %repeat, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %macro.addr, align 8
  %call3 = call i64 @indirect_function(i64 %3)
  store i64 %call3, i64* %final, align 8
  %4 = load i64, i64* %final, align 8
  %call4 = call zeroext i1 @STRINGP(i64 %4)
  br i1 %call4, label %if.end.7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, i64* %final, align 8
  %call5 = call zeroext i1 @VECTORP(i64 %5)
  br i1 %call5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0)) #3
  unreachable

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 386), align 8
  %shl = shl i64 %7, 2
  %add = add i64 %shl, 2
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 248), align 8
  %call8 = call i64 @Fcons(i64 %add, i64 %8)
  %call9 = call i64 @Fcons(i64 %6, i64 %call8)
  store i64 %call9, i64* %tem, align 8
  %9 = load i64, i64* %tem, align 8
  call void @record_unwind_protect(void (i64)* @pop_kbd_macro, i64 %9)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.7
  %10 = load i64, i64* %final, align 8
  store i64 %10, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86), align 8
  %11 = load i64, i64* %final, align 8
  store i64 %11, i64* @executing_kbd_macro, align 8
  store i64 0, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 386), align 8
  %12 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  call void @kset_prefix_arg(%struct.kboard* %12, i64 %call10)
  %13 = load i64, i64* %loopfunc.addr, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %13, %call11
  br i1 %cmp12, label %if.end.19, label %if.then.13

if.then.13:                                       ; preds = %do.body
  %14 = load i64, i64* %loopfunc.addr, align 8
  %call14 = call i64 @call0(i64 %14)
  store i64 %call14, i64* %cont, align 8
  %15 = load i64, i64* %cont, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %15, %call15
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  br label %do.end.34

if.end.18:                                        ; preds = %if.then.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %do.body
  %call20 = call i64 @command_loop_1()
  %16 = load i64, i64* %success_count, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %success_count, align 8
  store i64 %inc, i64* @executing_kbd_macro_iterations, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.19
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %17, %call22
  br i1 %cmp23, label %if.else, label %land.lhs.true.24

land.lhs.true.24:                                 ; preds = %do.body.21
  %18 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %18, %call25
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true.24
  call void @process_quit_flag()
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true.24, %do.body.21
  %19 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.30
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %20 = load i64, i64* %repeat, align 8
  %dec = add nsw i64 %20, -1
  store i64 %dec, i64* %repeat, align 8
  %tobool31 = icmp ne i64 %dec, 0
  br i1 %tobool31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %21 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86), align 8
  %call32 = call zeroext i1 @STRINGP(i64 %21)
  br i1 %call32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86), align 8
  %call33 = call zeroext i1 @VECTORP(i64 %22)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %call33, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %do.cond
  %24 = phi i1 [ false, %do.cond ], [ %23, %lor.end ]
  br i1 %24, label %do.body, label %do.end.34

do.end.34:                                        ; preds = %land.end, %if.then.17
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* @executing_kbd_macro, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86), align 8
  store i64 %25, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 248), align 8
  %26 = load i64, i64* %pdlcount, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %call37 = call i64 @unbind_to(i64 %26, i64 %call36)
  ret i64 %call37
}

declare void @kset_defining_kbd_macro(%struct.kboard*, i64) #1

; Function Attrs: nounwind uwtable
define void @end_kbd_macro() #0 {
entry:
  %0 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  call void @kset_defining_kbd_macro(%struct.kboard* %0, i64 %call)
  store i32 20, i32* @update_mode_lines, align 4
  %1 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %2 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_end = getelementptr inbounds %struct.kboard, %struct.kboard* %2, i32 0, i32 12
  %3 = load i64*, i64** %kbd_macro_end, align 8
  %4 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer = getelementptr inbounds %struct.kboard, %struct.kboard* %4, i32 0, i32 10
  %5 = load i64*, i64** %kbd_macro_buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %6 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_buffer1 = getelementptr inbounds %struct.kboard, %struct.kboard* %6, i32 0, i32 10
  %7 = load i64*, i64** %kbd_macro_buffer1, align 8
  %call2 = call i64 @make_event_array(i64 %sub.ptr.div, i64* %7)
  call void @kset_last_kbd_macro(%struct.kboard* %1, i64 %call2)
  ret void
}

declare void @kset_last_kbd_macro(%struct.kboard*, i64) #1

declare i64 @make_event_array(i64, i64*) #1

; Function Attrs: nounwind uwtable
define i64 @Fend_kbd_macro(i64 %repeat, i64 %loopfunc) #0 {
entry:
  %repeat.addr = alloca i64, align 8
  %loopfunc.addr = alloca i64, align 8
  store i64 %repeat, i64* %repeat.addr, align 8
  store i64 %loopfunc, i64* %loopfunc.addr, align 8
  %0 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %defining_kbd_macro_ = getelementptr inbounds %struct.kboard, %struct.kboard* %0, i32 0, i32 9
  %1 = load i64, i64* %defining_kbd_macro_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %repeat.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %2, %call1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @make_natnum(i64 1)
  store i64 %call4, i64* %repeat.addr, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* %repeat.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %and5 = and i32 %conv, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call8 = call i64 @builtin_lisp_symbol(i32 559)
  %4 = load i64, i64* %repeat.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call8, i64 %4) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %if.then.3
  %7 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %defining_kbd_macro_10 = getelementptr inbounds %struct.kboard, %struct.kboard* %7, i32 0, i32 9
  %8 = load i64, i64* %defining_kbd_macro_10, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %8, %call11
  br i1 %cmp12, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.9
  call void @end_kbd_macro()
  call void @message1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.9
  %9 = load i64, i64* %repeat.addr, align 8
  %shr = ashr i64 %9, 2
  %cmp16 = icmp eq i64 %shr, 0
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.end.15
  %10 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_kbd_macro_ = getelementptr inbounds %struct.kboard, %struct.kboard* %10, i32 0, i32 14
  %11 = load i64, i64* %Vlast_kbd_macro_, align 8
  %12 = load i64, i64* %repeat.addr, align 8
  %13 = load i64, i64* %loopfunc.addr, align 8
  %call19 = call i64 @Fexecute_kbd_macro(i64 %11, i64 %12, i64 %13)
  br label %if.end.29

if.else.20:                                       ; preds = %if.end.15
  %14 = load i64, i64* %repeat.addr, align 8
  %shr21 = ashr i64 %14, 2
  %cmp22 = icmp sgt i64 %shr21, 1
  br i1 %cmp22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.else.20
  %15 = load i64, i64* %repeat.addr, align 8
  %shr25 = ashr i64 %15, 2
  %sub = sub nsw i64 %shr25, 1
  %shl = shl i64 %sub, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %repeat.addr, align 8
  %16 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_kbd_macro_26 = getelementptr inbounds %struct.kboard, %struct.kboard* %16, i32 0, i32 14
  %17 = load i64, i64* %Vlast_kbd_macro_26, align 8
  %18 = load i64, i64* %repeat.addr, align 8
  %19 = load i64, i64* %loopfunc.addr, align 8
  %call27 = call i64 @Fexecute_kbd_macro(i64 %17, i64 %18, i64 %19)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.else.20
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.18
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call30
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @store_kbd_macro_char(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %kb = alloca %struct.kboard*, align 8
  %ptr_offset = alloca i64, align 8
  %end_offset = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  store %struct.kboard* %0, %struct.kboard** %kb, align 8
  %1 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %defining_kbd_macro_ = getelementptr inbounds %struct.kboard, %struct.kboard* %1, i32 0, i32 9
  %2 = load i64, i64* %defining_kbd_macro_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %if.end.24, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_ptr = getelementptr inbounds %struct.kboard, %struct.kboard* %3, i32 0, i32 11
  %4 = load i64*, i64** %kbd_macro_ptr, align 8
  %5 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_buffer = getelementptr inbounds %struct.kboard, %struct.kboard* %5, i32 0, i32 10
  %6 = load i64*, i64** %kbd_macro_buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %7 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_bufsize = getelementptr inbounds %struct.kboard, %struct.kboard* %7, i32 0, i32 13
  %8 = load i64, i64* %kbd_macro_bufsize, align 8
  %cmp1 = icmp eq i64 %sub.ptr.div, %8
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_ptr3 = getelementptr inbounds %struct.kboard, %struct.kboard* %9, i32 0, i32 11
  %10 = load i64*, i64** %kbd_macro_ptr3, align 8
  %11 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_buffer4 = getelementptr inbounds %struct.kboard, %struct.kboard* %11, i32 0, i32 10
  %12 = load i64*, i64** %kbd_macro_buffer4, align 8
  %sub.ptr.lhs.cast5 = ptrtoint i64* %10 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i64* %12 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %sub.ptr.div8 = sdiv exact i64 %sub.ptr.sub7, 8
  store i64 %sub.ptr.div8, i64* %ptr_offset, align 8
  %13 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_end = getelementptr inbounds %struct.kboard, %struct.kboard* %13, i32 0, i32 12
  %14 = load i64*, i64** %kbd_macro_end, align 8
  %15 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_buffer9 = getelementptr inbounds %struct.kboard, %struct.kboard* %15, i32 0, i32 10
  %16 = load i64*, i64** %kbd_macro_buffer9, align 8
  %sub.ptr.lhs.cast10 = ptrtoint i64* %14 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i64* %16 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %sub.ptr.div13 = sdiv exact i64 %sub.ptr.sub12, 8
  store i64 %sub.ptr.div13, i64* %end_offset, align 8
  %17 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_buffer14 = getelementptr inbounds %struct.kboard, %struct.kboard* %17, i32 0, i32 10
  %18 = load i64*, i64** %kbd_macro_buffer14, align 8
  %19 = bitcast i64* %18 to i8*
  %20 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_bufsize15 = getelementptr inbounds %struct.kboard, %struct.kboard* %20, i32 0, i32 13
  %call16 = call i8* @xpalloc(i8* %19, i64* %kbd_macro_bufsize15, i64 1, i64 -1, i64 8)
  %21 = bitcast i8* %call16 to i64*
  %22 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_buffer17 = getelementptr inbounds %struct.kboard, %struct.kboard* %22, i32 0, i32 10
  store i64* %21, i64** %kbd_macro_buffer17, align 8
  %23 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_buffer18 = getelementptr inbounds %struct.kboard, %struct.kboard* %23, i32 0, i32 10
  %24 = load i64*, i64** %kbd_macro_buffer18, align 8
  %25 = load i64, i64* %ptr_offset, align 8
  %add.ptr = getelementptr inbounds i64, i64* %24, i64 %25
  %26 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_ptr19 = getelementptr inbounds %struct.kboard, %struct.kboard* %26, i32 0, i32 11
  store i64* %add.ptr, i64** %kbd_macro_ptr19, align 8
  %27 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_buffer20 = getelementptr inbounds %struct.kboard, %struct.kboard* %27, i32 0, i32 10
  %28 = load i64*, i64** %kbd_macro_buffer20, align 8
  %29 = load i64, i64* %end_offset, align 8
  %add.ptr21 = getelementptr inbounds i64, i64* %28, i64 %29
  %30 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_end22 = getelementptr inbounds %struct.kboard, %struct.kboard* %30, i32 0, i32 12
  store i64* %add.ptr21, i64** %kbd_macro_end22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %31 = load i64, i64* %c.addr, align 8
  %32 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %kbd_macro_ptr23 = getelementptr inbounds %struct.kboard, %struct.kboard* %32, i32 0, i32 11
  %33 = load i64*, i64** %kbd_macro_ptr23, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %incdec.ptr, i64** %kbd_macro_ptr23, align 8
  store i64 %31, i64* %33, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @finalize_kbd_macro_chars() #0 {
entry:
  %0 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_ptr = getelementptr inbounds %struct.kboard, %struct.kboard* %0, i32 0, i32 11
  %1 = load i64*, i64** %kbd_macro_ptr, align 8
  %2 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_end = getelementptr inbounds %struct.kboard, %struct.kboard* %2, i32 0, i32 12
  store i64* %1, i64** %kbd_macro_end, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fcancel_kbd_macro_events() #0 {
entry:
  %0 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_end = getelementptr inbounds %struct.kboard, %struct.kboard* %0, i32 0, i32 12
  %1 = load i64*, i64** %kbd_macro_end, align 8
  %2 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %kbd_macro_ptr = getelementptr inbounds %struct.kboard, %struct.kboard* %2, i32 0, i32 11
  store i64* %1, i64** %kbd_macro_ptr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fstore_kbd_macro_event(i64 %event) #0 {
entry:
  %event.addr = alloca i64, align 8
  store i64 %event, i64* %event.addr, align 8
  %0 = load i64, i64* %event.addr, align 8
  call void @store_kbd_macro_char(i64 %0)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fcall_last_kbd_macro(i64 %prefix, i64 %loopfunc) #0 {
entry:
  %prefix.addr = alloca i64, align 8
  %loopfunc.addr = alloca i64, align 8
  store i64 %prefix, i64* %prefix.addr, align 8
  store i64 %loopfunc, i64* %loopfunc.addr, align 8
  %0 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_command_ = getelementptr inbounds %struct.kboard, %struct.kboard* %0, i32 0, i32 2
  %1 = load i64, i64* %Vlast_command_, align 8
  store i64 %1, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 293), align 8
  %2 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_kbd_macro_ = getelementptr inbounds %struct.kboard, %struct.kboard* %2, i32 0, i32 14
  %3 = load i64, i64* %Vlast_kbd_macro_, align 8
  store i64 %3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 248), align 8
  %4 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %defining_kbd_macro_ = getelementptr inbounds %struct.kboard, %struct.kboard* %4, i32 0, i32 9
  %5 = load i64, i64* %defining_kbd_macro_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0)) #3
  unreachable

if.else:                                          ; preds = %entry
  %6 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_kbd_macro_1 = getelementptr inbounds %struct.kboard, %struct.kboard* %6, i32 0, i32 14
  %7 = load i64, i64* %Vlast_kbd_macro_1, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %7, %call2
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0)) #3
  unreachable

if.else.5:                                        ; preds = %if.else
  %8 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_kbd_macro_6 = getelementptr inbounds %struct.kboard, %struct.kboard* %8, i32 0, i32 14
  %9 = load i64, i64* %Vlast_kbd_macro_6, align 8
  %10 = load i64, i64* %prefix.addr, align 8
  %11 = load i64, i64* %loopfunc.addr, align 8
  %call7 = call i64 @Fexecute_kbd_macro(i64 %9, i64 %10, i64 %11)
  br label %if.end

if.end:                                           ; preds = %if.else.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end
  %12 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_command_9 = getelementptr inbounds %struct.kboard, %struct.kboard* %12, i32 0, i32 2
  %13 = load i64, i64* %Vlast_command_9, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 293), align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call10
}

declare i64 @SPECPDL_INDEX() #1

declare i64 @Fprefix_numeric_value(i64) #1

declare i64 @indirect_function(i64) #1

declare zeroext i1 @VECTORP(i64) #1

declare i64 @Fcons(i64, i64) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @pop_kbd_macro(i64 %info) #0 {
entry:
  %info.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %info, i64* %info.addr, align 8
  %0 = load i64, i64* %info.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  store i64 %3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86), align 8
  %4 = load i64, i64* %info.addr, align 8
  %sub1 = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub1 to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %7 = load i64, i64* %cdr, align 8
  store i64 %7, i64* %tem, align 8
  %8 = load i64, i64* %tem, align 8
  %sub2 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub2 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car3 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car3, align 8
  %shr = ashr i64 %11, 2
  store i64 %shr, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 386), align 8
  %12 = load i64, i64* %tem, align 8
  %sub4 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub4 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u5 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr6 = bitcast %union.anon.0* %u5 to i64*
  %15 = load i64, i64* %cdr6, align 8
  store i64 %15, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 248), align 8
  %call = call i64 @builtin_lisp_symbol(i32 585)
  call void @run_hook(i64 %call)
  ret void
}

declare void @kset_prefix_arg(%struct.kboard*, i64) #1

declare i64 @call0(i64) #1

declare i64 @command_loop_1() #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @init_macros() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* @executing_kbd_macro, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @syms_of_macros() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_macros.o_fwd, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 150))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 150), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sstart_kbd_macro to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Send_kbd_macro to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scall_last_kbd_macro to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sexecute_kbd_macro to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Scancel_kbd_macro_events)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sstore_kbd_macro_event to %struct.Lisp_Subr*))
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_kboard(%struct.Lisp_Kboard_Objfwd* @syms_of_macros.ko_fwd, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 72)
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_macros.o_fwd.10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86))
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.4
  call void @defvar_int(%struct.Lisp_Intfwd* @syms_of_macros.i_fwd, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 386))
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  call void @defvar_kboard(%struct.Lisp_Kboard_Objfwd* @syms_of_macros.ko_fwd.13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 112)
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @defvar_kboard(%struct.Lisp_Kboard_Objfwd*, i8*, i32) #1

declare void @defvar_int(%struct.Lisp_Intfwd*, i8*, i64*) #1

declare void @run_hook(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
