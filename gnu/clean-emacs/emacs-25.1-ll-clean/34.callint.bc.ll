; ModuleID = './src/callint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.kboard = type { %struct.kboard*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i8, i8, i64 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_Kboard_Objfwd = type { i32, i32 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.frame = type opaque
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.0, %union.anon.2 }
%union.anon.0 = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.2 = type { i32 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.6, i16, i16, i8*, i8*, i8* }
%union.anon.6 = type { i64 ()* }

@globals = external global %struct.emacs_globals, align 8
@current_kboard = external global %struct.kboard*, align 8
@this_command_keys = external global i64, align 8
@this_command_key_count = external global i64, align 8
@num_input_events = external global i64, align 8
@.str = private unnamed_addr constant [55 x i8] c"`+' is not used in `interactive' for ordinary commands\00", align 1
@current_buffer = external global %struct.buffer*, align 8
@minibuf_level = external global i64, align 8
@minibuf_window = external global i64, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Attempt to select inactive minibuffer window\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@callint_message = internal global i64 0, align 8
@selected_window = external global i64, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Non-character input-event\00", align 1
@point_marker = internal global i64 0, align 8
@empty_unibyte_string = external global i64, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"%s must be bound to an event with parameters\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@last_minibuf_string = external global i64, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"read-minibuffer\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"eval-minibuffer\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"Invalid control letter `%c' (#o%03o, #x%04x) in interactive calling string\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pending_signals = external global i8, align 1
@callint_argfuns = internal global [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [17 x i8] c"region-beginning\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"region-end\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@preserved_fns = internal global i64 0, align 8
@syms_of_callint.ko_fwd = internal global %struct.Lisp_Kboard_Objfwd zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"prefix-arg\00", align 1
@syms_of_callint.ko_fwd.15 = internal global %struct.Lisp_Kboard_Objfwd zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"last-prefix-arg\00", align 1
@syms_of_callint.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"current-prefix-arg\00", align 1
@syms_of_callint.o_fwd.18 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [16 x i8] c"command-history\00", align 1
@syms_of_callint.o_fwd.20 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [21 x i8] c"command-debug-status\00", align 1
@syms_of_callint.o_fwd.22 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.23 = private unnamed_addr constant [22 x i8] c"mark-even-if-inactive\00", align 1
@syms_of_callint.o_fwd.24 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [24 x i8] c"mouse-leave-buffer-hook\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"read-file-name\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"The mark is not set now, so there is no region\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"The mark is not set now\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@Sinteractive = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Finteractive }, i16 0, i16 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.30 = private unnamed_addr constant [19 x i8] c"call-interactively\00", align 1
@Scall_interactively = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fcall_interactively }, i16 1, i16 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.31 = private unnamed_addr constant [22 x i8] c"funcall-interactively\00", align 1
@Sfuncall_interactively = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Ffuncall_interactively }, i16 1, i16 -2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.32 = private unnamed_addr constant [21 x i8] c"prefix-numeric-value\00", align 1
@Sprefix_numeric_value = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fprefix_numeric_value }, i16 1, i16 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @Finteractive(i64 %args) #0 {
entry:
  %args.addr = alloca i64, align 8
  store i64 %args, i64* %args.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define i64 @Ffuncall_interactively(i64 %nargs, i64* %args) #2 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %speccount = alloca i64, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %speccount, align 8
  call void @temporarily_switch_to_single_kboard(%struct.frame* null)
  %0 = load i64, i64* %speccount, align 8
  %1 = load i64, i64* %nargs.addr, align 8
  %2 = load i64*, i64** %args.addr, align 8
  %call1 = call i64 @Ffuncall(i64 %1, i64* %2)
  %call2 = call i64 @unbind_to(i64 %0, i64 %call1)
  ret i64 %call2
}

declare i64 @SPECPDL_INDEX() #1

declare void @temporarily_switch_to_single_kboard(%struct.frame*) #1

declare i64 @unbind_to(i64, i64) #1

declare i64 @Ffuncall(i64, i64*) #1

; Function Attrs: nounwind uwtable
define i64 @Fcall_interactively(i64 %function, i64 %record_flag, i64 %keys) #2 {
entry:
  %retval = alloca i64, align 8
  %function.addr = alloca i64, align 8
  %record_flag.addr = alloca i64, align 8
  %keys.addr = alloca i64, align 8
  %args = alloca i64*, align 8
  %visargs = alloca i64*, align 8
  %specs = alloca i64, align 8
  %filter_specs = alloca i64, align 8
  %teml = alloca i64, align 8
  %up_event = alloca i64, align 8
  %enable = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %speccount = alloca i64, align 8
  %next_event = alloca i64, align 8
  %prefix_arg = alloca i64, align 8
  %string = alloca i8*, align 8
  %tem = alloca i8*, align 8
  %varies = alloca i8*, align 8
  %i = alloca i64, align 8
  %nargs = alloca i64, align 8
  %mark = alloca i64, align 8
  %arg_from_tty = alloca i8, align 1
  %key_count = alloca i64, align 8
  %record_then_fail = alloca i8, align 1
  %save_this_command = alloca i64, align 8
  %save_last_command = alloca i64, align 8
  %save_this_original_command = alloca i64, align 8
  %save_real_this_command = alloca i64, align 8
  %form = alloca i64, align 8
  %input = alloca i64, align 8
  %funval = alloca i64, align 8
  %events = alloca i64, align 8
  %values = alloca i64, align 8
  %this_cmd = alloca i64, align 8
  %result = alloca i64, align 8
  %.compoundliteral = alloca [3 x i64], align 8
  %p = alloca i8*, align 8
  %event = alloca i64, align 8
  %w = alloca i64, align 8
  %speccount1 = alloca i64, align 8
  %tem2 = alloca i64, align 8
  %speccount1456 = alloca i64, align 8
  %tem2499 = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %record_flag, i64* %record_flag.addr, align 8
  store i64 %keys, i64* %keys.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %speccount, align 8
  store i8 0, i8* %arg_from_tty, align 1
  store i8 0, i8* %record_then_fail, align 1
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 293), align 8
  store i64 %0, i64* %save_this_command, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 295), align 8
  store i64 %1, i64* %save_this_original_command, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 248), align 8
  store i64 %2, i64* %save_real_this_command, align 8
  %3 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlast_command_ = getelementptr inbounds %struct.kboard, %struct.kboard* %3, i32 0, i32 2
  %4 = load i64, i64* %Vlast_command_, align 8
  store i64 %4, i64* %save_last_command, align 8
  %5 = load i64, i64* %keys.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i64, i64* @this_command_keys, align 8
  store i64 %6, i64* %keys.addr, align 8
  %7 = load i64, i64* @this_command_key_count, align 8
  store i64 %7, i64* %key_count, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i64, i64* %keys.addr, align 8
  call void @CHECK_VECTOR(i64 %8)
  %9 = load i64, i64* %keys.addr, align 8
  %call3 = call i64 @ASIZE(i64 %9)
  store i64 %call3, i64* %key_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 50), align 8
  store i64 %10, i64* %prefix_arg, align 8
  %11 = load i64, i64* %function.addr, align 8
  %and = and i64 %11, 7
  %conv = trunc i64 %and to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.end
  %12 = load i64, i64* %function.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 365)
  %call8 = call i64 @Fget(i64 %12, i64 %call7)
  store i64 %call8, i64* %enable, align 8
  br label %if.end.11

if.else.9:                                        ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %enable, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.6
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* %specs, align 8
  store i8* null, i8** %string, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* %filter_specs, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* %up_event, align 8
  %13 = load i64, i64* %function.addr, align 8
  %call15 = call i64 @Finteractive_form(i64 %13)
  store i64 %call15, i64* %form, align 8
  %14 = load i64, i64* %form, align 8
  %and16 = and i64 %14, 7
  %conv17 = trunc i64 %and16 to i32
  %cmp18 = icmp eq i32 %conv17, 3
  br i1 %cmp18, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.end.11
  %15 = load i64, i64* %form, align 8
  %sub = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %18 = load i64, i64* %cdr, align 8
  %call21 = call i64 @Fcar(i64 %18)
  store i64 %call21, i64* %filter_specs, align 8
  store i64 %call21, i64* %specs, align 8
  br label %if.end.24

if.else.22:                                       ; preds = %if.end.11
  %call23 = call i64 @builtin_lisp_symbol(i32 286)
  %19 = load i64, i64* %function.addr, align 8
  %20 = call i64 @wrong_type_argument(i64 %call23, i64 %19) #6
  unreachable

if.end.24:                                        ; preds = %if.then.20
  %21 = load i64, i64* %specs, align 8
  %call25 = call zeroext i1 @STRINGP(i64 %21)
  br i1 %call25, label %if.end.84, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %22 = load i64, i64* %function.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 901)
  %call28 = call i64 @Findirect_function(i64 %22, i64 %call27)
  store i64 %call28, i64* %funval, align 8
  %23 = load i64, i64* @num_input_events, align 8
  store i64 %23, i64* %events, align 8
  %24 = load i64, i64* %specs, align 8
  store i64 %24, i64* %input, align 8
  %25 = load i64, i64* %specs, align 8
  %26 = load i64, i64* %funval, align 8
  %and29 = and i64 %26, 7
  %conv30 = trunc i64 %and29 to i32
  %cmp31 = icmp eq i32 %conv30, 3
  br i1 %cmp31, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.26
  %call33 = call i64 @builtin_lisp_symbol(i32 271)
  %27 = load i64, i64* %funval, align 8
  %sub34 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub34 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car, align 8
  %cmp35 = icmp eq i64 %call33, %30
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %31 = load i64, i64* %funval, align 8
  %sub37 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub37 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u38 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr39 = bitcast %union.anon* %u38 to i64*
  %34 = load i64, i64* %cdr39, align 8
  %call40 = call i64 @CAR_SAFE(i64 %34)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.26
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call40, %cond.true ], [ %call41, %cond.false ]
  %call42 = call i64 @Feval(i64 %25, i64 %cond)
  store i64 %call42, i64* %specs, align 8
  %35 = load i64, i64* %events, align 8
  %36 = load i64, i64* @num_input_events, align 8
  %cmp43 = icmp ne i64 %35, %36
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %37 = load i64, i64* %record_flag.addr, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %37, %call45
  br i1 %cmp46, label %if.end.74, label %if.then.48

if.then.48:                                       ; preds = %lor.lhs.false, %cond.end
  %38 = load i64, i64* %specs, align 8
  %call49 = call i64 @Fcopy_sequence(i64 %38)
  %call50 = call i64 @quotify_args(i64 %call49)
  store i64 %call50, i64* %values, align 8
  %39 = load i64, i64* %input, align 8
  %40 = load i64, i64* %values, align 8
  call void @fix_command(i64 %39, i64 %40)
  %41 = load i64, i64* %function.addr, align 8
  %42 = load i64, i64* %values, align 8
  %call51 = call i64 @Fcons(i64 %41, i64 %42)
  store i64 %call51, i64* %this_cmd, align 8
  %43 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 445), align 1
  %tobool = trunc i8 %43 to i1
  br i1 %tobool, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.48
  %44 = load i64, i64* %this_cmd, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41), align 8
  %call53 = call i64 @Fdelete(i64 %44, i64 %45)
  store i64 %call53, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41), align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.48
  %46 = load i64, i64* %this_cmd, align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41), align 8
  %call55 = call i64 @Fcons(i64 %46, i64 %47)
  store i64 %call55, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41), align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 125), align 8
  %and56 = and i64 %48, 7
  %conv57 = trunc i64 %and56 to i32
  %and58 = and i32 %conv57, -5
  %cmp59 = icmp eq i32 %and58, 2
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.73

land.lhs.true.61:                                 ; preds = %if.end.54
  %49 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 125), align 8
  %shr = ashr i64 %49, 2
  %cmp62 = icmp sgt i64 %shr, 0
  br i1 %cmp62, label %if.then.64, label %if.end.73

if.then.64:                                       ; preds = %land.lhs.true.61
  %50 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 125), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41), align 8
  %call65 = call i64 @Fnthcdr(i64 %50, i64 %51)
  store i64 %call65, i64* %teml, align 8
  %52 = load i64, i64* %teml, align 8
  %and66 = and i64 %52, 7
  %conv67 = trunc i64 %and66 to i32
  %cmp68 = icmp eq i32 %conv67, 3
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.then.64
  %53 = load i64, i64* %teml, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCDR(i64 %53, i64 %call71)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.then.64
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true.61, %if.end.54
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %lor.lhs.false
  %54 = load i64, i64* %save_this_command, align 8
  store i64 %54, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 293), align 8
  %55 = load i64, i64* %save_this_original_command, align 8
  store i64 %55, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 295), align 8
  %56 = load i64, i64* %save_real_this_command, align 8
  store i64 %56, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 248), align 8
  %57 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %58 = load i64, i64* %save_last_command, align 8
  call void @kset_last_command(%struct.kboard* %57, i64 %58)
  %59 = load i64, i64* %speccount, align 8
  %arrayinit.begin = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral, i64 0, i64 0
  %call75 = call i64 @builtin_lisp_symbol(i32 475)
  store i64 %call75, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %60 = load i64, i64* %function.addr, align 8
  store i64 %60, i64* %arrayinit.element
  %arrayinit.element76 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %61 = load i64, i64* %specs, align 8
  store i64 %61, i64* %arrayinit.element76
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral, i32 0, i32 0
  %call77 = call i64 @Fapply(i64 3, i64* %arraydecay)
  %call78 = call i64 @unbind_to(i64 %59, i64 %call77)
  store i64 %call78, i64* %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.74
  %62 = load i8, i8* %sa_must_free, align 1
  %tobool79 = trunc i8 %62 to i1
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %63 = load i64, i64* %sa_count, align 8
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  %call82 = call i64 @unbind_to(i64 %63, i64 %call81)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.83
  %64 = load i64, i64* %result, align 8
  store i64 %64, i64* %retval
  br label %return

if.end.84:                                        ; preds = %if.end.24
  br label %do.body.85

do.body.85:                                       ; preds = %if.end.84
  %65 = load i64, i64* %specs, align 8
  %call86 = call i64 @SBYTES(i64 %65)
  %add = add nsw i64 %call86, 1
  %66 = load i64, i64* %sa_avail, align 8
  %cmp87 = icmp sle i64 %add, %66
  br i1 %cmp87, label %cond.true.89, label %cond.false.95

cond.true.89:                                     ; preds = %do.body.85
  %67 = load i64, i64* %specs, align 8
  %call90 = call i64 @SBYTES(i64 %67)
  %add91 = add nsw i64 %call90, 1
  %68 = load i64, i64* %sa_avail, align 8
  %sub92 = sub nsw i64 %68, %add91
  store i64 %sub92, i64* %sa_avail, align 8
  %69 = load i64, i64* %specs, align 8
  %call93 = call i64 @SBYTES(i64 %69)
  %add94 = add nsw i64 %call93, 1
  %70 = alloca i8, i64 %add94
  br label %cond.end.99

cond.false.95:                                    ; preds = %do.body.85
  store i8 1, i8* %sa_must_free, align 1
  %71 = load i64, i64* %specs, align 8
  %call96 = call i64 @SBYTES(i64 %71)
  %add97 = add nsw i64 %call96, 1
  %call98 = call i8* @record_xmalloc(i64 %add97)
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.95, %cond.true.89
  %cond100 = phi i8* [ %70, %cond.true.89 ], [ %call98, %cond.false.95 ]
  store i8* %cond100, i8** %string, align 8
  %72 = load i8*, i8** %string, align 8
  %73 = load i64, i64* %specs, align 8
  %call101 = call i8* @SDATA(i64 %73)
  %74 = load i64, i64* %specs, align 8
  %call102 = call i64 @SBYTES(i64 %74)
  %add103 = add nsw i64 %call102, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %call101, i64 %add103, i32 1, i1 false)
  br label %do.end.104

do.end.104:                                       ; preds = %cond.end.99
  store i64 0, i64* %next_event, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.104
  %75 = load i64, i64* %next_event, align 8
  %76 = load i64, i64* %key_count, align 8
  %cmp105 = icmp slt i64 %75, %76
  br i1 %cmp105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load i64, i64* %keys.addr, align 8
  %78 = load i64, i64* %next_event, align 8
  %call107 = call i64 @AREF(i64 %77, i64 %78)
  %and108 = and i64 %call107, 7
  %conv109 = trunc i64 %and108 to i32
  %cmp110 = icmp eq i32 %conv109, 3
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %for.body
  br label %for.end

if.end.113:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.113
  %79 = load i64, i64* %next_event, align 8
  %inc = add nsw i64 %79, 1
  store i64 %inc, i64* %next_event, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.112, %for.cond
  br label %while.body

while.body:                                       ; preds = %for.end, %if.end.231
  %80 = load i8*, i8** %string, align 8
  %81 = load i8, i8* %80, align 1
  %conv114 = sext i8 %81 to i32
  %cmp115 = icmp eq i32 %conv114, 43
  br i1 %cmp115, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %while.body
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.else.118:                                      ; preds = %while.body
  %82 = load i8*, i8** %string, align 8
  %83 = load i8, i8* %82, align 1
  %conv119 = sext i8 %83 to i32
  %cmp120 = icmp eq i32 %conv119, 42
  br i1 %cmp120, label %if.then.122, label %if.else.159

if.then.122:                                      ; preds = %if.else.118
  %84 = load i8*, i8** %string, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr, i8** %string, align 8
  %85 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %read_only_ = getelementptr inbounds %struct.buffer, %struct.buffer* %85, i32 0, i32 7
  %86 = load i64, i64* %read_only_, align 8
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp124 = icmp eq i64 %86, %call123
  br i1 %cmp124, label %if.end.158, label %if.then.126

if.then.126:                                      ; preds = %if.then.122
  %87 = load i64, i64* %record_flag.addr, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp128 = icmp eq i64 %87, %call127
  br i1 %cmp128, label %if.else.154, label %if.then.130

if.then.130:                                      ; preds = %if.then.126
  %88 = load i8*, i8** %string, align 8
  store i8* %88, i8** %p, align 8
  br label %while.cond.131

while.cond.131:                                   ; preds = %if.end.152, %if.then.130
  %89 = load i8*, i8** %p, align 8
  %90 = load i8, i8* %89, align 1
  %tobool132 = icmp ne i8 %90, 0
  br i1 %tobool132, label %while.body.133, label %while.end

while.body.133:                                   ; preds = %while.cond.131
  %91 = load i8*, i8** %p, align 8
  %92 = load i8, i8* %91, align 1
  %conv134 = sext i8 %92 to i32
  %cmp135 = icmp eq i32 %conv134, 114
  br i1 %cmp135, label %if.end.152, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %while.body.133
  %93 = load i8*, i8** %p, align 8
  %94 = load i8, i8* %93, align 1
  %conv138 = sext i8 %94 to i32
  %cmp139 = icmp eq i32 %conv138, 112
  br i1 %cmp139, label %if.end.152, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %lor.lhs.false.137
  %95 = load i8*, i8** %p, align 8
  %96 = load i8, i8* %95, align 1
  %conv142 = sext i8 %96 to i32
  %cmp143 = icmp eq i32 %conv142, 80
  br i1 %cmp143, label %if.end.152, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false.141
  %97 = load i8*, i8** %p, align 8
  %98 = load i8, i8* %97, align 1
  %conv146 = sext i8 %98 to i32
  %cmp147 = icmp eq i32 %conv146, 10
  br i1 %cmp147, label %if.end.152, label %if.then.149

if.then.149:                                      ; preds = %lor.lhs.false.145
  %call150 = call i64 @builtin_lisp_symbol(i32 0)
  %call151 = call i64 @Fbarf_if_buffer_read_only(i64 %call150)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %lor.lhs.false.145, %lor.lhs.false.141, %lor.lhs.false.137, %while.body.133
  %99 = load i8*, i8** %p, align 8
  %incdec.ptr153 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr153, i8** %p, align 8
  br label %while.cond.131

while.end:                                        ; preds = %while.cond.131
  store i8 1, i8* %record_then_fail, align 1
  br label %if.end.157

if.else.154:                                      ; preds = %if.then.126
  %call155 = call i64 @builtin_lisp_symbol(i32 0)
  %call156 = call i64 @Fbarf_if_buffer_read_only(i64 %call155)
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.154, %while.end
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.122
  br label %if.end.230

if.else.159:                                      ; preds = %if.else.118
  %100 = load i8*, i8** %string, align 8
  %101 = load i8, i8* %100, align 1
  %conv160 = sext i8 %101 to i32
  %cmp161 = icmp eq i32 %conv160, 45
  br i1 %cmp161, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.else.159
  %102 = load i8*, i8** %string, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr164, i8** %string, align 8
  br label %if.end.229

if.else.165:                                      ; preds = %if.else.159
  %103 = load i8*, i8** %string, align 8
  %104 = load i8, i8* %103, align 1
  %conv166 = sext i8 %104 to i32
  %cmp167 = icmp eq i32 %conv166, 64
  br i1 %cmp167, label %if.then.169, label %if.else.218

if.then.169:                                      ; preds = %if.else.165
  %105 = load i64, i64* %next_event, align 8
  %106 = load i64, i64* %key_count, align 8
  %cmp170 = icmp slt i64 %105, %106
  br i1 %cmp170, label %cond.true.172, label %cond.false.174

cond.true.172:                                    ; preds = %if.then.169
  %107 = load i64, i64* %keys.addr, align 8
  %108 = load i64, i64* %next_event, align 8
  %call173 = call i64 @AREF(i64 %107, i64 %108)
  br label %cond.end.176

cond.false.174:                                   ; preds = %if.then.169
  %call175 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.174, %cond.true.172
  %cond177 = phi i64 [ %call173, %cond.true.172 ], [ %call175, %cond.false.174 ]
  store i64 %cond177, i64* %event, align 8
  %109 = load i64, i64* %event, align 8
  %and178 = and i64 %109, 7
  %conv179 = trunc i64 %and178 to i32
  %cmp180 = icmp eq i32 %conv179, 3
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.216

land.lhs.true.182:                                ; preds = %cond.end.176
  %110 = load i64, i64* %event, align 8
  %sub183 = sub nsw i64 %110, 3
  %111 = inttoptr i64 %sub183 to i8*
  %112 = bitcast i8* %111 to %struct.Lisp_Cons*
  %u184 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %112, i32 0, i32 1
  %cdr185 = bitcast %union.anon* %u184 to i64*
  %113 = load i64, i64* %cdr185, align 8
  store i64 %113, i64* %w, align 8
  %114 = load i64, i64* %w, align 8
  %and186 = and i64 %114, 7
  %conv187 = trunc i64 %and186 to i32
  %cmp188 = icmp eq i32 %conv187, 3
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.216

land.lhs.true.190:                                ; preds = %land.lhs.true.182
  %115 = load i64, i64* %w, align 8
  %sub191 = sub nsw i64 %115, 3
  %116 = inttoptr i64 %sub191 to i8*
  %117 = bitcast i8* %116 to %struct.Lisp_Cons*
  %car192 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %117, i32 0, i32 0
  %118 = load i64, i64* %car192, align 8
  store i64 %118, i64* %w, align 8
  %119 = load i64, i64* %w, align 8
  %and193 = and i64 %119, 7
  %conv194 = trunc i64 %and193 to i32
  %cmp195 = icmp eq i32 %conv194, 3
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.216

land.lhs.true.197:                                ; preds = %land.lhs.true.190
  %120 = load i64, i64* %w, align 8
  %sub198 = sub nsw i64 %120, 3
  %121 = inttoptr i64 %sub198 to i8*
  %122 = bitcast i8* %121 to %struct.Lisp_Cons*
  %car199 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %122, i32 0, i32 0
  %123 = load i64, i64* %car199, align 8
  store i64 %123, i64* %w, align 8
  %124 = load i64, i64* %w, align 8
  %call200 = call zeroext i1 @WINDOWP(i64 %124)
  br i1 %call200, label %if.then.202, label %if.end.216

if.then.202:                                      ; preds = %land.lhs.true.197
  %125 = load i64, i64* %w, align 8
  %call203 = call %struct.window* @XWINDOW(i64 %125)
  %mini = getelementptr inbounds %struct.window, %struct.window* %call203, i32 0, i32 67
  %bf.load = load i16, i16* %mini, align 4
  %bf.clear = and i16 %bf.load, 1
  %bf.cast = trunc i16 %bf.clear to i1
  br i1 %bf.cast, label %land.lhs.true.205, label %if.end.212

land.lhs.true.205:                                ; preds = %if.then.202
  %126 = load i64, i64* @minibuf_level, align 8
  %cmp206 = icmp sgt i64 %126, 0
  br i1 %cmp206, label %land.lhs.true.208, label %if.then.211

land.lhs.true.208:                                ; preds = %land.lhs.true.205
  %127 = load i64, i64* %w, align 8
  %128 = load i64, i64* @minibuf_window, align 8
  %cmp209 = icmp eq i64 %127, %128
  br i1 %cmp209, label %if.end.212, label %if.then.211

if.then.211:                                      ; preds = %land.lhs.true.208, %land.lhs.true.205
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.end.212:                                       ; preds = %land.lhs.true.208, %if.then.202
  %call213 = call i64 @builtin_lisp_symbol(i32 689)
  call void @run_hook(i64 %call213)
  %129 = load i64, i64* %w, align 8
  %call214 = call i64 @builtin_lisp_symbol(i32 0)
  %call215 = call i64 @Fselect_window(i64 %129, i64 %call214)
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.212, %land.lhs.true.197, %land.lhs.true.190, %land.lhs.true.182, %cond.end.176
  %130 = load i8*, i8** %string, align 8
  %incdec.ptr217 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr217, i8** %string, align 8
  br label %if.end.228

if.else.218:                                      ; preds = %if.else.165
  %131 = load i8*, i8** %string, align 8
  %132 = load i8, i8* %131, align 1
  %conv219 = sext i8 %132 to i32
  %cmp220 = icmp eq i32 %conv219, 94
  br i1 %cmp220, label %if.then.222, label %if.else.226

if.then.222:                                      ; preds = %if.else.218
  %call223 = call i64 @builtin_lisp_symbol(i32 507)
  %call224 = call i64 @call0(i64 %call223)
  %133 = load i8*, i8** %string, align 8
  %incdec.ptr225 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr225, i8** %string, align 8
  br label %if.end.227

if.else.226:                                      ; preds = %if.else.218
  br label %while.end.232

if.end.227:                                       ; preds = %if.then.222
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.end.216
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.163
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.end.158
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230
  br label %while.body

while.end.232:                                    ; preds = %if.else.226
  %134 = load i8*, i8** %string, align 8
  store i8* %134, i8** %tem, align 8
  store i64 2, i64* %nargs, align 8
  br label %for.cond.233

for.cond.233:                                     ; preds = %if.end.249, %while.end.232
  %135 = load i8*, i8** %tem, align 8
  %136 = load i8, i8* %135, align 1
  %tobool234 = icmp ne i8 %136, 0
  br i1 %tobool234, label %for.body.235, label %for.end.250

for.body.235:                                     ; preds = %for.cond.233
  %137 = load i8*, i8** %tem, align 8
  %138 = load i8, i8* %137, align 1
  %conv236 = sext i8 %138 to i32
  %cmp237 = icmp eq i32 %conv236, 114
  br i1 %cmp237, label %if.then.239, label %if.else.241

if.then.239:                                      ; preds = %for.body.235
  %139 = load i64, i64* %nargs, align 8
  %add240 = add nsw i64 %139, 2
  store i64 %add240, i64* %nargs, align 8
  br label %if.end.243

if.else.241:                                      ; preds = %for.body.235
  %140 = load i64, i64* %nargs, align 8
  %inc242 = add nsw i64 %140, 1
  store i64 %inc242, i64* %nargs, align 8
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.241, %if.then.239
  %141 = load i8*, i8** %tem, align 8
  %call244 = call i8* @strchr(i8* %141, i32 10) #7
  store i8* %call244, i8** %tem, align 8
  %142 = load i8*, i8** %tem, align 8
  %tobool245 = icmp ne i8* %142, null
  br i1 %tobool245, label %if.then.246, label %if.else.248

if.then.246:                                      ; preds = %if.end.243
  %143 = load i8*, i8** %tem, align 8
  %incdec.ptr247 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr247, i8** %tem, align 8
  br label %if.end.249

if.else.248:                                      ; preds = %if.end.243
  br label %for.end.250

if.end.249:                                       ; preds = %if.then.246
  br label %for.cond.233

for.end.250:                                      ; preds = %if.else.248, %for.cond.233
  br label %do.body.251

do.body.251:                                      ; preds = %for.end.250
  %144 = load i64, i64* %nargs, align 8
  %145 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %145, 8
  %div252 = udiv i64 %div, 3
  %cmp253 = icmp ule i64 %144, %div252
  br i1 %cmp253, label %if.then.255, label %if.else.258

if.then.255:                                      ; preds = %do.body.251
  %146 = load i64, i64* %nargs, align 8
  %mul = mul i64 24, %146
  %147 = load i64, i64* %sa_avail, align 8
  %sub256 = sub i64 %147, %mul
  store i64 %sub256, i64* %sa_avail, align 8
  %148 = load i64, i64* %nargs, align 8
  %mul257 = mul i64 24, %148
  %149 = alloca i8, i64 %mul257
  %150 = bitcast i8* %149 to i64*
  store i64* %150, i64** %args, align 8
  br label %if.end.260

if.else.258:                                      ; preds = %do.body.251
  %151 = load i64, i64* %nargs, align 8
  %call259 = call noalias i8* @xnmalloc(i64 %151, i64 24)
  %152 = bitcast i8* %call259 to i64*
  store i64* %152, i64** %args, align 8
  store i8 1, i8* %sa_must_free, align 1
  %153 = load i64*, i64** %args, align 8
  %154 = bitcast i64* %153 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %154)
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.258, %if.then.255
  br label %do.end.261

do.end.261:                                       ; preds = %if.end.260
  %155 = load i64*, i64** %args, align 8
  %156 = load i64, i64* %nargs, align 8
  %add.ptr = getelementptr inbounds i64, i64* %155, i64 %156
  store i64* %add.ptr, i64** %visargs, align 8
  %157 = load i64*, i64** %visargs, align 8
  %158 = load i64, i64* %nargs, align 8
  %add.ptr262 = getelementptr inbounds i64, i64* %157, i64 %158
  %159 = bitcast i64* %add.ptr262 to i8*
  store i8* %159, i8** %varies, align 8
  %160 = load i64*, i64** %args, align 8
  %161 = bitcast i64* %160 to i8*
  %162 = load i64, i64* %nargs, align 8
  %mul263 = mul nsw i64 %162, 17
  call void @memclear(i8* %161, i64 %mul263)
  %163 = load i64, i64* %enable, align 8
  %call264 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp265 = icmp eq i64 %163, %call264
  br i1 %cmp265, label %if.end.270, label %if.then.267

if.then.267:                                      ; preds = %do.end.261
  %call268 = call i64 @builtin_lisp_symbol(i32 365)
  %call269 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call268, i64 %call269)
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.267, %do.end.261
  %164 = load i8*, i8** %string, align 8
  store i8* %164, i8** %tem, align 8
  store i64 2, i64* %i, align 8
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.854, %if.end.270
  %165 = load i8*, i8** %tem, align 8
  %166 = load i8, i8* %165, align 1
  %tobool272 = icmp ne i8 %166, 0
  br i1 %tobool272, label %for.body.273, label %for.end.856

for.body.273:                                     ; preds = %for.cond.271
  %167 = load i8*, i8** %tem, align 8
  %add.ptr274 = getelementptr inbounds i8, i8* %167, i64 1
  %168 = load i8*, i8** %tem, align 8
  %add.ptr275 = getelementptr inbounds i8, i8* %168, i64 1
  %call276 = call i64 @strcspn(i8* %add.ptr275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #7
  %call277 = call i64 @make_string(i8* %add.ptr274, i64 %call276)
  %169 = load i64*, i64** %visargs, align 8
  %arrayidx = getelementptr inbounds i64, i64* %169, i64 1
  store i64 %call277, i64* %arrayidx, align 8
  %170 = load i64*, i64** %visargs, align 8
  %arrayidx278 = getelementptr inbounds i64, i64* %170, i64 1
  %171 = load i64, i64* %arrayidx278, align 8
  %call279 = call i8* @SSDATA(i64 %171)
  %call280 = call i8* @strchr(i8* %call279, i32 37) #7
  %tobool281 = icmp ne i8* %call280, null
  br i1 %tobool281, label %if.then.282, label %if.else.286

if.then.282:                                      ; preds = %for.body.273
  %172 = load i64, i64* %i, align 8
  %sub283 = sub nsw i64 %172, 1
  %173 = load i64*, i64** %visargs, align 8
  %add.ptr284 = getelementptr inbounds i64, i64* %173, i64 1
  %call285 = call i64 @Fformat_message(i64 %sub283, i64* %add.ptr284)
  store i64 %call285, i64* @callint_message, align 8
  br label %if.end.288

if.else.286:                                      ; preds = %for.body.273
  %174 = load i64*, i64** %visargs, align 8
  %arrayidx287 = getelementptr inbounds i64, i64* %174, i64 1
  %175 = load i64, i64* %arrayidx287, align 8
  store i64 %175, i64* @callint_message, align 8
  br label %if.end.288

if.end.288:                                       ; preds = %if.else.286, %if.then.282
  %176 = load i8*, i8** %tem, align 8
  %177 = load i8, i8* %176, align 1
  %conv289 = sext i8 %177 to i32
  switch i32 %conv289, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb.302
    i32 66, label %sw.bb.319
    i32 99, label %sw.bb.328
    i32 67, label %sw.bb.349
    i32 100, label %sw.bb.362
    i32 68, label %sw.bb.369
    i32 102, label %sw.bb.375
    i32 70, label %sw.bb.382
    i32 71, label %sw.bb.389
    i32 105, label %sw.bb.395
    i32 107, label %sw.bb.397
    i32 75, label %sw.bb.455
    i32 85, label %sw.bb.515
    i32 101, label %sw.bb.528
    i32 109, label %sw.bb.557
    i32 77, label %sw.bb.560
    i32 78, label %sw.bb.567
    i32 110, label %sw.bb.573
    i32 80, label %sw.bb.580
    i32 112, label %sw.bb.583
    i32 114, label %sw.bb.587
    i32 115, label %sw.bb.619
    i32 83, label %sw.bb.626
    i32 118, label %sw.bb.637
    i32 120, label %sw.bb.642
    i32 88, label %sw.bb.647
    i32 90, label %sw.bb.652
    i32 122, label %sw.bb.663
    i32 43, label %sw.bb.668
  ]

sw.bb:                                            ; preds = %if.end.288
  %178 = load i64, i64* @callint_message, align 8
  %179 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %call290 = call i64 @builtin_lisp_symbol(i32 402)
  %call291 = call i64 @builtin_lisp_symbol(i32 901)
  %call292 = call i64 @builtin_lisp_symbol(i32 0)
  %call293 = call i64 @builtin_lisp_symbol(i32 0)
  %call294 = call i64 @builtin_lisp_symbol(i32 0)
  %call295 = call i64 @builtin_lisp_symbol(i32 0)
  %call296 = call i64 @Fcompleting_read(i64 %178, i64 %179, i64 %call290, i64 %call291, i64 %call292, i64 %call293, i64 %call294, i64 %call295)
  %180 = load i64, i64* %i, align 8
  %181 = load i64*, i64** %visargs, align 8
  %arrayidx297 = getelementptr inbounds i64, i64* %181, i64 %180
  store i64 %call296, i64* %arrayidx297, align 8
  %182 = load i64, i64* %i, align 8
  %183 = load i64*, i64** %visargs, align 8
  %arrayidx298 = getelementptr inbounds i64, i64* %183, i64 %182
  %184 = load i64, i64* %arrayidx298, align 8
  store i64 %184, i64* %teml, align 8
  %185 = load i64, i64* %teml, align 8
  %call299 = call i64 @builtin_lisp_symbol(i32 0)
  %call300 = call i64 @Fintern(i64 %185, i64 %call299)
  %186 = load i64, i64* %i, align 8
  %187 = load i64*, i64** %args, align 8
  %arrayidx301 = getelementptr inbounds i64, i64* %187, i64 %186
  store i64 %call300, i64* %arrayidx301, align 8
  br label %sw.epilog

sw.bb.302:                                        ; preds = %if.end.288
  %call303 = call i64 @Fcurrent_buffer()
  %188 = load i64, i64* %i, align 8
  %189 = load i64*, i64** %args, align 8
  %arrayidx304 = getelementptr inbounds i64, i64* %189, i64 %188
  store i64 %call303, i64* %arrayidx304, align 8
  %190 = load i64, i64* @selected_window, align 8
  %191 = load i64, i64* @minibuf_window, align 8
  %cmp305 = icmp eq i64 %190, %191
  br i1 %cmp305, label %if.then.307, label %if.end.313

if.then.307:                                      ; preds = %sw.bb.302
  %192 = load i64, i64* %i, align 8
  %193 = load i64*, i64** %args, align 8
  %arrayidx308 = getelementptr inbounds i64, i64* %193, i64 %192
  %194 = load i64, i64* %arrayidx308, align 8
  %call309 = call i64 @builtin_lisp_symbol(i32 0)
  %call310 = call i64 @builtin_lisp_symbol(i32 0)
  %call311 = call i64 @Fother_buffer(i64 %194, i64 %call309, i64 %call310)
  %195 = load i64, i64* %i, align 8
  %196 = load i64*, i64** %args, align 8
  %arrayidx312 = getelementptr inbounds i64, i64* %196, i64 %195
  store i64 %call311, i64* %arrayidx312, align 8
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.307, %sw.bb.302
  %197 = load i64, i64* @callint_message, align 8
  %198 = load i64, i64* %i, align 8
  %199 = load i64*, i64** %args, align 8
  %arrayidx314 = getelementptr inbounds i64, i64* %199, i64 %198
  %200 = load i64, i64* %arrayidx314, align 8
  %call315 = call i64 @builtin_lisp_symbol(i32 901)
  %call316 = call i64 @builtin_lisp_symbol(i32 0)
  %call317 = call i64 @Fread_buffer(i64 %197, i64 %200, i64 %call315, i64 %call316)
  %201 = load i64, i64* %i, align 8
  %202 = load i64*, i64** %args, align 8
  %arrayidx318 = getelementptr inbounds i64, i64* %202, i64 %201
  store i64 %call317, i64* %arrayidx318, align 8
  br label %sw.epilog

sw.bb.319:                                        ; preds = %if.end.288
  %203 = load i64, i64* @callint_message, align 8
  %call320 = call i64 @Fcurrent_buffer()
  %call321 = call i64 @builtin_lisp_symbol(i32 0)
  %call322 = call i64 @builtin_lisp_symbol(i32 0)
  %call323 = call i64 @Fother_buffer(i64 %call320, i64 %call321, i64 %call322)
  %call324 = call i64 @builtin_lisp_symbol(i32 0)
  %call325 = call i64 @builtin_lisp_symbol(i32 0)
  %call326 = call i64 @Fread_buffer(i64 %203, i64 %call323, i64 %call324, i64 %call325)
  %204 = load i64, i64* %i, align 8
  %205 = load i64*, i64** %args, align 8
  %arrayidx327 = getelementptr inbounds i64, i64* %205, i64 %204
  store i64 %call326, i64* %arrayidx327, align 8
  br label %sw.epilog

sw.bb.328:                                        ; preds = %if.end.288
  %206 = load i64, i64* @callint_message, align 8
  %call329 = call i64 @SCHARS(i64 %206)
  %shl = shl i64 %call329, 2
  %add330 = add i64 %shl, 2
  %call331 = call i64 @builtin_lisp_symbol(i32 397)
  %call332 = call i64 @builtin_lisp_symbol(i32 666)
  %207 = load i64, i64* @callint_message, align 8
  %call333 = call i64 @Fput_text_property(i64 2, i64 %add330, i64 %call331, i64 %call332, i64 %207)
  %208 = load i64, i64* @callint_message, align 8
  %call334 = call i64 @builtin_lisp_symbol(i32 0)
  %call335 = call i64 @builtin_lisp_symbol(i32 0)
  %call336 = call i64 @Fread_char(i64 %208, i64 %call334, i64 %call335)
  %209 = load i64, i64* %i, align 8
  %210 = load i64*, i64** %args, align 8
  %arrayidx337 = getelementptr inbounds i64, i64* %210, i64 %209
  store i64 %call336, i64* %arrayidx337, align 8
  call void @message1_nolog(i8* null)
  %211 = load i64, i64* %i, align 8
  %212 = load i64*, i64** %args, align 8
  %arrayidx338 = getelementptr inbounds i64, i64* %212, i64 %211
  %213 = load i64, i64* %arrayidx338, align 8
  store i64 %213, i64* %teml, align 8
  %214 = load i64, i64* %teml, align 8
  %call339 = call zeroext i1 @NATNUMP(i64 %214)
  br i1 %call339, label %land.lhs.true.341, label %if.then.345

land.lhs.true.341:                                ; preds = %sw.bb.328
  %215 = load i64, i64* %teml, align 8
  %shr342 = ashr i64 %215, 2
  %cmp343 = icmp sle i64 %shr342, 4194303
  br i1 %cmp343, label %if.end.346, label %if.then.345

if.then.345:                                      ; preds = %land.lhs.true.341, %sw.bb.328
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #6
  unreachable

if.end.346:                                       ; preds = %land.lhs.true.341
  %216 = load i64, i64* %teml, align 8
  %call347 = call i64 @Fchar_to_string(i64 %216)
  %217 = load i64, i64* %i, align 8
  %218 = load i64*, i64** %visargs, align 8
  %arrayidx348 = getelementptr inbounds i64, i64* %218, i64 %217
  store i64 %call347, i64* %arrayidx348, align 8
  br label %sw.epilog

sw.bb.349:                                        ; preds = %if.end.288
  %219 = load i64, i64* @callint_message, align 8
  %220 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %call350 = call i64 @builtin_lisp_symbol(i32 286)
  %call351 = call i64 @builtin_lisp_symbol(i32 901)
  %call352 = call i64 @builtin_lisp_symbol(i32 0)
  %call353 = call i64 @builtin_lisp_symbol(i32 0)
  %call354 = call i64 @builtin_lisp_symbol(i32 0)
  %call355 = call i64 @builtin_lisp_symbol(i32 0)
  %call356 = call i64 @Fcompleting_read(i64 %219, i64 %220, i64 %call350, i64 %call351, i64 %call352, i64 %call353, i64 %call354, i64 %call355)
  %221 = load i64, i64* %i, align 8
  %222 = load i64*, i64** %visargs, align 8
  %arrayidx357 = getelementptr inbounds i64, i64* %222, i64 %221
  store i64 %call356, i64* %arrayidx357, align 8
  %223 = load i64, i64* %i, align 8
  %224 = load i64*, i64** %visargs, align 8
  %arrayidx358 = getelementptr inbounds i64, i64* %224, i64 %223
  %225 = load i64, i64* %arrayidx358, align 8
  store i64 %225, i64* %teml, align 8
  %226 = load i64, i64* %teml, align 8
  %call359 = call i64 @builtin_lisp_symbol(i32 0)
  %call360 = call i64 @Fintern(i64 %226, i64 %call359)
  %227 = load i64, i64* %i, align 8
  %228 = load i64*, i64** %args, align 8
  %arrayidx361 = getelementptr inbounds i64, i64* %228, i64 %227
  store i64 %call360, i64* %arrayidx361, align 8
  br label %sw.epilog

sw.bb.362:                                        ; preds = %if.end.288
  %229 = load i64, i64* @point_marker, align 8
  %call363 = call i64 @builtin_lisp_symbol(i32 0)
  %230 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %230, i32 0, i32 75
  %231 = load i64, i64* %pt, align 8
  %add364 = add nsw i64 %231, 0
  %232 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %232, i32 0, i32 76
  %233 = load i64, i64* %pt_byte, align 8
  %add365 = add nsw i64 %233, 0
  %call366 = call i64 @set_marker_both(i64 %229, i64 %call363, i64 %add364, i64 %add365)
  %234 = load i64, i64* @point_marker, align 8
  %235 = load i64, i64* %i, align 8
  %236 = load i64*, i64** %args, align 8
  %arrayidx367 = getelementptr inbounds i64, i64* %236, i64 %235
  store i64 %234, i64* %arrayidx367, align 8
  %237 = load i64, i64* %i, align 8
  %238 = load i8*, i8** %varies, align 8
  %arrayidx368 = getelementptr inbounds i8, i8* %238, i64 %237
  store i8 1, i8* %arrayidx368, align 1
  br label %sw.epilog

sw.bb.369:                                        ; preds = %if.end.288
  %239 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %239, i32 0, i32 3
  %240 = load i64, i64* %directory_, align 8
  %call370 = call i64 @builtin_lisp_symbol(i32 598)
  %call371 = call i64 @builtin_lisp_symbol(i32 0)
  %call372 = call i64 @builtin_lisp_symbol(i32 410)
  %call373 = call i64 @read_file_name(i64 %240, i64 %call370, i64 %call371, i64 %call372)
  %241 = load i64, i64* %i, align 8
  %242 = load i64*, i64** %args, align 8
  %arrayidx374 = getelementptr inbounds i64, i64* %242, i64 %241
  store i64 %call373, i64* %arrayidx374, align 8
  br label %sw.epilog

sw.bb.375:                                        ; preds = %if.end.288
  %call376 = call i64 @builtin_lisp_symbol(i32 0)
  %call377 = call i64 @builtin_lisp_symbol(i32 598)
  %call378 = call i64 @builtin_lisp_symbol(i32 0)
  %call379 = call i64 @builtin_lisp_symbol(i32 0)
  %call380 = call i64 @read_file_name(i64 %call376, i64 %call377, i64 %call378, i64 %call379)
  %243 = load i64, i64* %i, align 8
  %244 = load i64*, i64** %args, align 8
  %arrayidx381 = getelementptr inbounds i64, i64* %244, i64 %243
  store i64 %call380, i64* %arrayidx381, align 8
  br label %sw.epilog

sw.bb.382:                                        ; preds = %if.end.288
  %call383 = call i64 @builtin_lisp_symbol(i32 0)
  %call384 = call i64 @builtin_lisp_symbol(i32 0)
  %call385 = call i64 @builtin_lisp_symbol(i32 0)
  %call386 = call i64 @builtin_lisp_symbol(i32 0)
  %call387 = call i64 @read_file_name(i64 %call383, i64 %call384, i64 %call385, i64 %call386)
  %245 = load i64, i64* %i, align 8
  %246 = load i64*, i64** %args, align 8
  %arrayidx388 = getelementptr inbounds i64, i64* %246, i64 %245
  store i64 %call387, i64* %arrayidx388, align 8
  br label %sw.epilog

sw.bb.389:                                        ; preds = %if.end.288
  %call390 = call i64 @builtin_lisp_symbol(i32 0)
  %call391 = call i64 @builtin_lisp_symbol(i32 0)
  %247 = load i64, i64* @empty_unibyte_string, align 8
  %call392 = call i64 @builtin_lisp_symbol(i32 0)
  %call393 = call i64 @read_file_name(i64 %call390, i64 %call391, i64 %247, i64 %call392)
  %248 = load i64, i64* %i, align 8
  %249 = load i64*, i64** %args, align 8
  %arrayidx394 = getelementptr inbounds i64, i64* %249, i64 %248
  store i64 %call393, i64* %arrayidx394, align 8
  br label %sw.epilog

sw.bb.395:                                        ; preds = %if.end.288
  %250 = load i64, i64* %i, align 8
  %251 = load i8*, i8** %varies, align 8
  %arrayidx396 = getelementptr inbounds i8, i8* %251, i64 %250
  store i8 -1, i8* %arrayidx396, align 1
  br label %sw.epilog

sw.bb.397:                                        ; preds = %if.end.288
  %call398 = call i64 @SPECPDL_INDEX()
  store i64 %call398, i64* %speccount1, align 8
  %call399 = call i64 @builtin_lisp_symbol(i32 308)
  %call400 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call399, i64 %call400)
  %252 = load i64, i64* @callint_message, align 8
  %call401 = call i64 @SCHARS(i64 %252)
  %shl402 = shl i64 %call401, 2
  %add403 = add i64 %shl402, 2
  %call404 = call i64 @builtin_lisp_symbol(i32 397)
  %call405 = call i64 @builtin_lisp_symbol(i32 666)
  %253 = load i64, i64* @callint_message, align 8
  %call406 = call i64 @Fput_text_property(i64 2, i64 %add403, i64 %call404, i64 %call405, i64 %253)
  %254 = load i64, i64* @callint_message, align 8
  %call407 = call i64 @builtin_lisp_symbol(i32 0)
  %call408 = call i64 @builtin_lisp_symbol(i32 0)
  %call409 = call i64 @builtin_lisp_symbol(i32 0)
  %call410 = call i64 @builtin_lisp_symbol(i32 0)
  %call411 = call i64 @Fread_key_sequence(i64 %254, i64 %call407, i64 %call408, i64 %call409, i64 %call410)
  %255 = load i64, i64* %i, align 8
  %256 = load i64*, i64** %args, align 8
  %arrayidx412 = getelementptr inbounds i64, i64* %256, i64 %255
  store i64 %call411, i64* %arrayidx412, align 8
  %257 = load i64, i64* %speccount1, align 8
  %call413 = call i64 @builtin_lisp_symbol(i32 0)
  %call414 = call i64 @unbind_to(i64 %257, i64 %call413)
  %258 = load i64, i64* %i, align 8
  %259 = load i64*, i64** %args, align 8
  %arrayidx415 = getelementptr inbounds i64, i64* %259, i64 %258
  %260 = load i64, i64* %arrayidx415, align 8
  store i64 %260, i64* %teml, align 8
  %261 = load i64, i64* %teml, align 8
  %call416 = call i64 @builtin_lisp_symbol(i32 0)
  %call417 = call i64 @Fkey_description(i64 %261, i64 %call416)
  %262 = load i64, i64* %i, align 8
  %263 = load i64*, i64** %visargs, align 8
  %arrayidx418 = getelementptr inbounds i64, i64* %263, i64 %262
  store i64 %call417, i64* %arrayidx418, align 8
  %264 = load i64, i64* %i, align 8
  %265 = load i64*, i64** %args, align 8
  %arrayidx419 = getelementptr inbounds i64, i64* %265, i64 %264
  %266 = load i64, i64* %arrayidx419, align 8
  %267 = load i64, i64* %i, align 8
  %268 = load i64*, i64** %args, align 8
  %arrayidx420 = getelementptr inbounds i64, i64* %268, i64 %267
  %269 = load i64, i64* %arrayidx420, align 8
  %call421 = call i64 @Flength(i64 %269)
  %shr422 = ashr i64 %call421, 2
  %sub423 = sub nsw i64 %shr422, 1
  %shl424 = shl i64 %sub423, 2
  %add425 = add i64 %shl424, 2
  %call426 = call i64 @Faref(i64 %266, i64 %add425)
  store i64 %call426, i64* %teml, align 8
  %270 = load i64, i64* %teml, align 8
  %and427 = and i64 %270, 7
  %conv428 = trunc i64 %and427 to i32
  %cmp429 = icmp eq i32 %conv428, 3
  br i1 %cmp429, label %if.then.431, label %if.end.434

if.then.431:                                      ; preds = %sw.bb.397
  %271 = load i64, i64* %teml, align 8
  %sub432 = sub nsw i64 %271, 3
  %272 = inttoptr i64 %sub432 to i8*
  %273 = bitcast i8* %272 to %struct.Lisp_Cons*
  %car433 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %273, i32 0, i32 0
  %274 = load i64, i64* %car433, align 8
  store i64 %274, i64* %teml, align 8
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.431, %sw.bb.397
  %275 = load i64, i64* %teml, align 8
  %and435 = and i64 %275, 7
  %conv436 = trunc i64 %and435 to i32
  %cmp437 = icmp eq i32 %conv436, 0
  br i1 %cmp437, label %if.then.439, label %if.end.454

if.then.439:                                      ; preds = %if.end.434
  %276 = load i64, i64* %teml, align 8
  %call440 = call i64 @builtin_lisp_symbol(i32 384)
  %call441 = call i64 @Fget(i64 %276, i64 %call440)
  store i64 %call441, i64* %teml, align 8
  %call442 = call i64 @builtin_lisp_symbol(i32 352)
  %277 = load i64, i64* %teml, align 8
  %call443 = call i64 @Fcdr(i64 %277)
  %call444 = call i64 @Fmemq(i64 %call442, i64 %call443)
  store i64 %call444, i64* %tem2, align 8
  %278 = load i64, i64* %tem2, align 8
  %call445 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp446 = icmp eq i64 %278, %call445
  br i1 %cmp446, label %if.end.453, label %if.then.448

if.then.448:                                      ; preds = %if.then.439
  %call449 = call i64 @builtin_lisp_symbol(i32 0)
  %call450 = call i64 @builtin_lisp_symbol(i32 0)
  %call451 = call i64 @builtin_lisp_symbol(i32 0)
  %call452 = call i64 @Fread_event(i64 %call449, i64 %call450, i64 %call451)
  store i64 %call452, i64* %up_event, align 8
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.448, %if.then.439
  br label %if.end.454

if.end.454:                                       ; preds = %if.end.453, %if.end.434
  br label %sw.epilog

sw.bb.455:                                        ; preds = %if.end.288
  %call457 = call i64 @SPECPDL_INDEX()
  store i64 %call457, i64* %speccount1456, align 8
  %call458 = call i64 @builtin_lisp_symbol(i32 308)
  %call459 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call458, i64 %call459)
  %279 = load i64, i64* @callint_message, align 8
  %call460 = call i64 @SCHARS(i64 %279)
  %shl461 = shl i64 %call460, 2
  %add462 = add i64 %shl461, 2
  %call463 = call i64 @builtin_lisp_symbol(i32 397)
  %call464 = call i64 @builtin_lisp_symbol(i32 666)
  %280 = load i64, i64* @callint_message, align 8
  %call465 = call i64 @Fput_text_property(i64 2, i64 %add462, i64 %call463, i64 %call464, i64 %280)
  %281 = load i64, i64* @callint_message, align 8
  %call466 = call i64 @builtin_lisp_symbol(i32 0)
  %call467 = call i64 @builtin_lisp_symbol(i32 901)
  %call468 = call i64 @builtin_lisp_symbol(i32 0)
  %call469 = call i64 @builtin_lisp_symbol(i32 0)
  %call470 = call i64 @Fread_key_sequence_vector(i64 %281, i64 %call466, i64 %call467, i64 %call468, i64 %call469)
  %282 = load i64, i64* %i, align 8
  %283 = load i64*, i64** %args, align 8
  %arrayidx471 = getelementptr inbounds i64, i64* %283, i64 %282
  store i64 %call470, i64* %arrayidx471, align 8
  %284 = load i64, i64* %i, align 8
  %285 = load i64*, i64** %args, align 8
  %arrayidx472 = getelementptr inbounds i64, i64* %285, i64 %284
  %286 = load i64, i64* %arrayidx472, align 8
  store i64 %286, i64* %teml, align 8
  %287 = load i64, i64* %teml, align 8
  %call473 = call i64 @builtin_lisp_symbol(i32 0)
  %call474 = call i64 @Fkey_description(i64 %287, i64 %call473)
  %288 = load i64, i64* %i, align 8
  %289 = load i64*, i64** %visargs, align 8
  %arrayidx475 = getelementptr inbounds i64, i64* %289, i64 %288
  store i64 %call474, i64* %arrayidx475, align 8
  %290 = load i64, i64* %speccount1456, align 8
  %call476 = call i64 @builtin_lisp_symbol(i32 0)
  %call477 = call i64 @unbind_to(i64 %290, i64 %call476)
  %291 = load i64, i64* %i, align 8
  %292 = load i64*, i64** %args, align 8
  %arrayidx478 = getelementptr inbounds i64, i64* %292, i64 %291
  %293 = load i64, i64* %arrayidx478, align 8
  %294 = load i64, i64* %i, align 8
  %295 = load i64*, i64** %args, align 8
  %arrayidx479 = getelementptr inbounds i64, i64* %295, i64 %294
  %296 = load i64, i64* %arrayidx479, align 8
  %call480 = call i64 @Flength(i64 %296)
  %shr481 = ashr i64 %call480, 2
  %sub482 = sub nsw i64 %shr481, 1
  %shl483 = shl i64 %sub482, 2
  %add484 = add i64 %shl483, 2
  %call485 = call i64 @Faref(i64 %293, i64 %add484)
  store i64 %call485, i64* %teml, align 8
  %297 = load i64, i64* %teml, align 8
  %and486 = and i64 %297, 7
  %conv487 = trunc i64 %and486 to i32
  %cmp488 = icmp eq i32 %conv487, 3
  br i1 %cmp488, label %if.then.490, label %if.end.493

if.then.490:                                      ; preds = %sw.bb.455
  %298 = load i64, i64* %teml, align 8
  %sub491 = sub nsw i64 %298, 3
  %299 = inttoptr i64 %sub491 to i8*
  %300 = bitcast i8* %299 to %struct.Lisp_Cons*
  %car492 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %300, i32 0, i32 0
  %301 = load i64, i64* %car492, align 8
  store i64 %301, i64* %teml, align 8
  br label %if.end.493

if.end.493:                                       ; preds = %if.then.490, %sw.bb.455
  %302 = load i64, i64* %teml, align 8
  %and494 = and i64 %302, 7
  %conv495 = trunc i64 %and494 to i32
  %cmp496 = icmp eq i32 %conv495, 0
  br i1 %cmp496, label %if.then.498, label %if.end.514

if.then.498:                                      ; preds = %if.end.493
  %303 = load i64, i64* %teml, align 8
  %call500 = call i64 @builtin_lisp_symbol(i32 384)
  %call501 = call i64 @Fget(i64 %303, i64 %call500)
  store i64 %call501, i64* %teml, align 8
  %call502 = call i64 @builtin_lisp_symbol(i32 352)
  %304 = load i64, i64* %teml, align 8
  %call503 = call i64 @Fcdr(i64 %304)
  %call504 = call i64 @Fmemq(i64 %call502, i64 %call503)
  store i64 %call504, i64* %tem2499, align 8
  %305 = load i64, i64* %tem2499, align 8
  %call505 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp506 = icmp eq i64 %305, %call505
  br i1 %cmp506, label %if.end.513, label %if.then.508

if.then.508:                                      ; preds = %if.then.498
  %call509 = call i64 @builtin_lisp_symbol(i32 0)
  %call510 = call i64 @builtin_lisp_symbol(i32 0)
  %call511 = call i64 @builtin_lisp_symbol(i32 0)
  %call512 = call i64 @Fread_event(i64 %call509, i64 %call510, i64 %call511)
  store i64 %call512, i64* %up_event, align 8
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.508, %if.then.498
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %if.end.493
  br label %sw.epilog

sw.bb.515:                                        ; preds = %if.end.288
  %306 = load i64, i64* %up_event, align 8
  %call516 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp517 = icmp eq i64 %306, %call516
  br i1 %cmp517, label %if.end.527, label %if.then.519

if.then.519:                                      ; preds = %sw.bb.515
  %307 = load i64, i64* %up_event, align 8
  %call520 = call i64 @Fmake_vector(i64 6, i64 %307)
  %308 = load i64, i64* %i, align 8
  %309 = load i64*, i64** %args, align 8
  %arrayidx521 = getelementptr inbounds i64, i64* %309, i64 %308
  store i64 %call520, i64* %arrayidx521, align 8
  %call522 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call522, i64* %up_event, align 8
  %310 = load i64, i64* %i, align 8
  %311 = load i64*, i64** %args, align 8
  %arrayidx523 = getelementptr inbounds i64, i64* %311, i64 %310
  %312 = load i64, i64* %arrayidx523, align 8
  store i64 %312, i64* %teml, align 8
  %313 = load i64, i64* %teml, align 8
  %call524 = call i64 @builtin_lisp_symbol(i32 0)
  %call525 = call i64 @Fkey_description(i64 %313, i64 %call524)
  %314 = load i64, i64* %i, align 8
  %315 = load i64*, i64** %visargs, align 8
  %arrayidx526 = getelementptr inbounds i64, i64* %315, i64 %314
  store i64 %call525, i64* %arrayidx526, align 8
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.519, %sw.bb.515
  br label %sw.epilog

sw.bb.528:                                        ; preds = %if.end.288
  %316 = load i64, i64* %next_event, align 8
  %317 = load i64, i64* %key_count, align 8
  %cmp529 = icmp sge i64 %316, %317
  br i1 %cmp529, label %if.then.531, label %if.end.542

if.then.531:                                      ; preds = %sw.bb.528
  %318 = load i64, i64* %function.addr, align 8
  %and532 = and i64 %318, 7
  %conv533 = trunc i64 %and532 to i32
  %cmp534 = icmp eq i32 %conv533, 0
  br i1 %cmp534, label %cond.true.536, label %cond.false.539

cond.true.536:                                    ; preds = %if.then.531
  %319 = load i64, i64* %function.addr, align 8
  %call537 = call i64 @SYMBOL_NAME(i64 %319)
  %call538 = call i8* @SSDATA(i64 %call537)
  br label %cond.end.540

cond.false.539:                                   ; preds = %if.then.531
  br label %cond.end.540

cond.end.540:                                     ; preds = %cond.false.539, %cond.true.536
  %cond541 = phi i8* [ %call538, %cond.true.536 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %cond.false.539 ]
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* %cond541) #6
  unreachable

if.end.542:                                       ; preds = %sw.bb.528
  %320 = load i64, i64* %keys.addr, align 8
  %321 = load i64, i64* %next_event, align 8
  %call543 = call i64 @AREF(i64 %320, i64 %321)
  %322 = load i64, i64* %i, align 8
  %323 = load i64*, i64** %args, align 8
  %arrayidx544 = getelementptr inbounds i64, i64* %323, i64 %322
  store i64 %call543, i64* %arrayidx544, align 8
  %324 = load i64, i64* %next_event, align 8
  %inc545 = add nsw i64 %324, 1
  store i64 %inc545, i64* %next_event, align 8
  %325 = load i64, i64* %i, align 8
  %326 = load i8*, i8** %varies, align 8
  %arrayidx546 = getelementptr inbounds i8, i8* %326, i64 %325
  store i8 -1, i8* %arrayidx546, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.554, %if.end.542
  %327 = load i64, i64* %next_event, align 8
  %328 = load i64, i64* %key_count, align 8
  %cmp547 = icmp slt i64 %327, %328
  br i1 %cmp547, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %329 = load i64, i64* %keys.addr, align 8
  %330 = load i64, i64* %next_event, align 8
  %call549 = call i64 @AREF(i64 %329, i64 %330)
  %and550 = and i64 %call549, 7
  %conv551 = trunc i64 %and550 to i32
  %cmp552 = icmp eq i32 %conv551, 3
  %lnot = xor i1 %cmp552, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %331 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %331, label %while.body.554, label %while.end.556

while.body.554:                                   ; preds = %land.end
  %332 = load i64, i64* %next_event, align 8
  %inc555 = add nsw i64 %332, 1
  store i64 %inc555, i64* %next_event, align 8
  br label %while.cond

while.end.556:                                    ; preds = %land.end
  br label %sw.epilog

sw.bb.557:                                        ; preds = %if.end.288
  call void @check_mark(i1 zeroext false)
  %333 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %mark_ = getelementptr inbounds %struct.buffer, %struct.buffer* %333, i32 0, i32 8
  %334 = load i64, i64* %mark_, align 8
  %335 = load i64, i64* %i, align 8
  %336 = load i64*, i64** %args, align 8
  %arrayidx558 = getelementptr inbounds i64, i64* %336, i64 %335
  store i64 %334, i64* %arrayidx558, align 8
  %337 = load i64, i64* %i, align 8
  %338 = load i8*, i8** %varies, align 8
  %arrayidx559 = getelementptr inbounds i8, i8* %338, i64 %337
  store i8 2, i8* %arrayidx559, align 1
  br label %sw.epilog

sw.bb.560:                                        ; preds = %if.end.288
  %339 = load i64, i64* @callint_message, align 8
  %call561 = call i64 @builtin_lisp_symbol(i32 0)
  %call562 = call i64 @builtin_lisp_symbol(i32 0)
  %call563 = call i64 @builtin_lisp_symbol(i32 0)
  %call564 = call i64 @builtin_lisp_symbol(i32 901)
  %call565 = call i64 @Fread_string(i64 %339, i64 %call561, i64 %call562, i64 %call563, i64 %call564)
  %340 = load i64, i64* %i, align 8
  %341 = load i64*, i64** %args, align 8
  %arrayidx566 = getelementptr inbounds i64, i64* %341, i64 %340
  store i64 %call565, i64* %arrayidx566, align 8
  br label %sw.epilog

sw.bb.567:                                        ; preds = %if.end.288
  %342 = load i64, i64* %prefix_arg, align 8
  %call568 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp569 = icmp eq i64 %342, %call568
  br i1 %cmp569, label %if.end.572, label %if.then.571

if.then.571:                                      ; preds = %sw.bb.567
  br label %have_prefix_arg

if.end.572:                                       ; preds = %sw.bb.567
  br label %sw.bb.573

sw.bb.573:                                        ; preds = %if.end.288, %if.end.572
  %call574 = call i64 @builtin_lisp_symbol(i32 791)
  %343 = load i64, i64* @callint_message, align 8
  %call575 = call i64 @call1(i64 %call574, i64 %343)
  %344 = load i64, i64* %i, align 8
  %345 = load i64*, i64** %args, align 8
  %arrayidx576 = getelementptr inbounds i64, i64* %345, i64 %344
  store i64 %call575, i64* %arrayidx576, align 8
  %346 = load i64, i64* %i, align 8
  %347 = load i64*, i64** %args, align 8
  %arrayidx577 = getelementptr inbounds i64, i64* %347, i64 %346
  %348 = load i64, i64* %arrayidx577, align 8
  store i64 %348, i64* %teml, align 8
  %349 = load i64, i64* %teml, align 8
  %call578 = call i64 @Fnumber_to_string(i64 %349)
  %350 = load i64, i64* %i, align 8
  %351 = load i64*, i64** %visargs, align 8
  %arrayidx579 = getelementptr inbounds i64, i64* %351, i64 %350
  store i64 %call578, i64* %arrayidx579, align 8
  br label %sw.epilog

sw.bb.580:                                        ; preds = %if.end.288
  %352 = load i64, i64* %prefix_arg, align 8
  %353 = load i64, i64* %i, align 8
  %354 = load i64*, i64** %args, align 8
  %arrayidx581 = getelementptr inbounds i64, i64* %354, i64 %353
  store i64 %352, i64* %arrayidx581, align 8
  %355 = load i64, i64* %i, align 8
  %356 = load i8*, i8** %varies, align 8
  %arrayidx582 = getelementptr inbounds i8, i8* %356, i64 %355
  store i8 -1, i8* %arrayidx582, align 1
  br label %sw.epilog

sw.bb.583:                                        ; preds = %if.end.288
  br label %have_prefix_arg

have_prefix_arg:                                  ; preds = %sw.bb.583, %if.then.571
  %357 = load i64, i64* %prefix_arg, align 8
  %call584 = call i64 @Fprefix_numeric_value(i64 %357)
  %358 = load i64, i64* %i, align 8
  %359 = load i64*, i64** %args, align 8
  %arrayidx585 = getelementptr inbounds i64, i64* %359, i64 %358
  store i64 %call584, i64* %arrayidx585, align 8
  %360 = load i64, i64* %i, align 8
  %361 = load i8*, i8** %varies, align 8
  %arrayidx586 = getelementptr inbounds i8, i8* %361, i64 %360
  store i8 -1, i8* %arrayidx586, align 1
  br label %sw.epilog

sw.bb.587:                                        ; preds = %if.end.288
  call void @check_mark(i1 zeroext true)
  %362 = load i64, i64* @point_marker, align 8
  %call588 = call i64 @builtin_lisp_symbol(i32 0)
  %363 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt589 = getelementptr inbounds %struct.buffer, %struct.buffer* %363, i32 0, i32 75
  %364 = load i64, i64* %pt589, align 8
  %add590 = add nsw i64 %364, 0
  %365 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte591 = getelementptr inbounds %struct.buffer, %struct.buffer* %365, i32 0, i32 76
  %366 = load i64, i64* %pt_byte591, align 8
  %add592 = add nsw i64 %366, 0
  %call593 = call i64 @set_marker_both(i64 %362, i64 %call588, i64 %add590, i64 %add592)
  %367 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %mark_594 = getelementptr inbounds %struct.buffer, %struct.buffer* %367, i32 0, i32 8
  %368 = load i64, i64* %mark_594, align 8
  %call595 = call i64 @marker_position(i64 %368)
  store i64 %call595, i64* %mark, align 8
  %369 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt596 = getelementptr inbounds %struct.buffer, %struct.buffer* %369, i32 0, i32 75
  %370 = load i64, i64* %pt596, align 8
  %add597 = add nsw i64 %370, 0
  %371 = load i64, i64* %mark, align 8
  %cmp598 = icmp slt i64 %add597, %371
  br i1 %cmp598, label %cond.true.600, label %cond.false.601

cond.true.600:                                    ; preds = %sw.bb.587
  %372 = load i64, i64* @point_marker, align 8
  br label %cond.end.603

cond.false.601:                                   ; preds = %sw.bb.587
  %373 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %mark_602 = getelementptr inbounds %struct.buffer, %struct.buffer* %373, i32 0, i32 8
  %374 = load i64, i64* %mark_602, align 8
  br label %cond.end.603

cond.end.603:                                     ; preds = %cond.false.601, %cond.true.600
  %cond604 = phi i64 [ %372, %cond.true.600 ], [ %374, %cond.false.601 ]
  %375 = load i64, i64* %i, align 8
  %376 = load i64*, i64** %args, align 8
  %arrayidx605 = getelementptr inbounds i64, i64* %376, i64 %375
  store i64 %cond604, i64* %arrayidx605, align 8
  %377 = load i64, i64* %i, align 8
  %378 = load i8*, i8** %varies, align 8
  %arrayidx606 = getelementptr inbounds i8, i8* %378, i64 %377
  store i8 3, i8* %arrayidx606, align 1
  %379 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt607 = getelementptr inbounds %struct.buffer, %struct.buffer* %379, i32 0, i32 75
  %380 = load i64, i64* %pt607, align 8
  %add608 = add nsw i64 %380, 0
  %381 = load i64, i64* %mark, align 8
  %cmp609 = icmp sgt i64 %add608, %381
  br i1 %cmp609, label %cond.true.611, label %cond.false.612

cond.true.611:                                    ; preds = %cond.end.603
  %382 = load i64, i64* @point_marker, align 8
  br label %cond.end.614

cond.false.612:                                   ; preds = %cond.end.603
  %383 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %mark_613 = getelementptr inbounds %struct.buffer, %struct.buffer* %383, i32 0, i32 8
  %384 = load i64, i64* %mark_613, align 8
  br label %cond.end.614

cond.end.614:                                     ; preds = %cond.false.612, %cond.true.611
  %cond615 = phi i64 [ %382, %cond.true.611 ], [ %384, %cond.false.612 ]
  %385 = load i64, i64* %i, align 8
  %inc616 = add nsw i64 %385, 1
  store i64 %inc616, i64* %i, align 8
  %386 = load i64*, i64** %args, align 8
  %arrayidx617 = getelementptr inbounds i64, i64* %386, i64 %inc616
  store i64 %cond615, i64* %arrayidx617, align 8
  %387 = load i64, i64* %i, align 8
  %388 = load i8*, i8** %varies, align 8
  %arrayidx618 = getelementptr inbounds i8, i8* %388, i64 %387
  store i8 4, i8* %arrayidx618, align 1
  br label %sw.epilog

sw.bb.619:                                        ; preds = %if.end.288
  %389 = load i64, i64* @callint_message, align 8
  %call620 = call i64 @builtin_lisp_symbol(i32 0)
  %call621 = call i64 @builtin_lisp_symbol(i32 0)
  %call622 = call i64 @builtin_lisp_symbol(i32 0)
  %call623 = call i64 @builtin_lisp_symbol(i32 0)
  %call624 = call i64 @Fread_string(i64 %389, i64 %call620, i64 %call621, i64 %call622, i64 %call623)
  %390 = load i64, i64* %i, align 8
  %391 = load i64*, i64** %args, align 8
  %arrayidx625 = getelementptr inbounds i64, i64* %391, i64 %390
  store i64 %call624, i64* %arrayidx625, align 8
  br label %sw.epilog

sw.bb.626:                                        ; preds = %if.end.288
  %392 = load i64, i64* @callint_message, align 8
  %call627 = call i64 @builtin_lisp_symbol(i32 0)
  %call628 = call i64 @builtin_lisp_symbol(i32 0)
  %call629 = call i64 @builtin_lisp_symbol(i32 0)
  %call630 = call i64 @builtin_lisp_symbol(i32 0)
  %call631 = call i64 @Fread_string(i64 %392, i64 %call627, i64 %call628, i64 %call629, i64 %call630)
  %393 = load i64, i64* %i, align 8
  %394 = load i64*, i64** %visargs, align 8
  %arrayidx632 = getelementptr inbounds i64, i64* %394, i64 %393
  store i64 %call631, i64* %arrayidx632, align 8
  %395 = load i64, i64* %i, align 8
  %396 = load i64*, i64** %visargs, align 8
  %arrayidx633 = getelementptr inbounds i64, i64* %396, i64 %395
  %397 = load i64, i64* %arrayidx633, align 8
  store i64 %397, i64* %teml, align 8
  %398 = load i64, i64* %teml, align 8
  %call634 = call i64 @builtin_lisp_symbol(i32 0)
  %call635 = call i64 @Fintern(i64 %398, i64 %call634)
  %399 = load i64, i64* %i, align 8
  %400 = load i64*, i64** %args, align 8
  %arrayidx636 = getelementptr inbounds i64, i64* %400, i64 %399
  store i64 %call635, i64* %arrayidx636, align 8
  br label %sw.epilog

sw.bb.637:                                        ; preds = %if.end.288
  %401 = load i64, i64* @callint_message, align 8
  %call638 = call i64 @builtin_lisp_symbol(i32 0)
  %call639 = call i64 @Fread_variable(i64 %401, i64 %call638)
  %402 = load i64, i64* %i, align 8
  %403 = load i64*, i64** %args, align 8
  %arrayidx640 = getelementptr inbounds i64, i64* %403, i64 %402
  store i64 %call639, i64* %arrayidx640, align 8
  %404 = load i64, i64* @last_minibuf_string, align 8
  %405 = load i64, i64* %i, align 8
  %406 = load i64*, i64** %visargs, align 8
  %arrayidx641 = getelementptr inbounds i64, i64* %406, i64 %405
  store i64 %404, i64* %arrayidx641, align 8
  br label %sw.epilog

sw.bb.642:                                        ; preds = %if.end.288
  %call643 = call i64 @intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  %407 = load i64, i64* @callint_message, align 8
  %call644 = call i64 @call1(i64 %call643, i64 %407)
  %408 = load i64, i64* %i, align 8
  %409 = load i64*, i64** %args, align 8
  %arrayidx645 = getelementptr inbounds i64, i64* %409, i64 %408
  store i64 %call644, i64* %arrayidx645, align 8
  %410 = load i64, i64* @last_minibuf_string, align 8
  %411 = load i64, i64* %i, align 8
  %412 = load i64*, i64** %visargs, align 8
  %arrayidx646 = getelementptr inbounds i64, i64* %412, i64 %411
  store i64 %410, i64* %arrayidx646, align 8
  br label %sw.epilog

sw.bb.647:                                        ; preds = %if.end.288
  %call648 = call i64 @intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  %413 = load i64, i64* @callint_message, align 8
  %call649 = call i64 @call1(i64 %call648, i64 %413)
  %414 = load i64, i64* %i, align 8
  %415 = load i64*, i64** %args, align 8
  %arrayidx650 = getelementptr inbounds i64, i64* %415, i64 %414
  store i64 %call649, i64* %arrayidx650, align 8
  %416 = load i64, i64* @last_minibuf_string, align 8
  %417 = load i64, i64* %i, align 8
  %418 = load i64*, i64** %visargs, align 8
  %arrayidx651 = getelementptr inbounds i64, i64* %418, i64 %417
  store i64 %416, i64* %arrayidx651, align 8
  br label %sw.epilog

sw.bb.652:                                        ; preds = %if.end.288
  %419 = load i64, i64* %prefix_arg, align 8
  %call653 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp654 = icmp eq i64 %419, %call653
  br i1 %cmp654, label %if.then.656, label %if.else.658

if.then.656:                                      ; preds = %sw.bb.652
  %420 = load i64, i64* %i, align 8
  %421 = load i8*, i8** %varies, align 8
  %arrayidx657 = getelementptr inbounds i8, i8* %421, i64 %420
  store i8 -1, i8* %arrayidx657, align 1
  br label %if.end.662

if.else.658:                                      ; preds = %sw.bb.652
  %422 = load i64, i64* @callint_message, align 8
  %call659 = call i64 @Fread_non_nil_coding_system(i64 %422)
  %423 = load i64, i64* %i, align 8
  %424 = load i64*, i64** %args, align 8
  %arrayidx660 = getelementptr inbounds i64, i64* %424, i64 %423
  store i64 %call659, i64* %arrayidx660, align 8
  %425 = load i64, i64* @last_minibuf_string, align 8
  %426 = load i64, i64* %i, align 8
  %427 = load i64*, i64** %visargs, align 8
  %arrayidx661 = getelementptr inbounds i64, i64* %427, i64 %426
  store i64 %425, i64* %arrayidx661, align 8
  br label %if.end.662

if.end.662:                                       ; preds = %if.else.658, %if.then.656
  br label %sw.epilog

sw.bb.663:                                        ; preds = %if.end.288
  %428 = load i64, i64* @callint_message, align 8
  %call664 = call i64 @builtin_lisp_symbol(i32 0)
  %call665 = call i64 @Fread_coding_system(i64 %428, i64 %call664)
  %429 = load i64, i64* %i, align 8
  %430 = load i64*, i64** %args, align 8
  %arrayidx666 = getelementptr inbounds i64, i64* %430, i64 %429
  store i64 %call665, i64* %arrayidx666, align 8
  %431 = load i64, i64* @last_minibuf_string, align 8
  %432 = load i64, i64* %i, align 8
  %433 = load i64*, i64** %visargs, align 8
  %arrayidx667 = getelementptr inbounds i64, i64* %433, i64 %432
  store i64 %431, i64* %arrayidx667, align 8
  br label %sw.epilog

sw.bb.668:                                        ; preds = %if.end.288
  br label %sw.default

sw.default:                                       ; preds = %if.end.288, %sw.bb.668
  %434 = load i8*, i8** %tem, align 8
  %arrayidx669 = getelementptr inbounds i8, i8* %434, i64 0
  %435 = load i8, i8* %arrayidx669, align 1
  %conv670 = zext i8 %435 to i32
  %and671 = and i32 %conv670, 128
  %tobool672 = icmp ne i32 %and671, 0
  br i1 %tobool672, label %cond.false.676, label %cond.true.673

cond.true.673:                                    ; preds = %sw.default
  %436 = load i8*, i8** %tem, align 8
  %arrayidx674 = getelementptr inbounds i8, i8* %436, i64 0
  %437 = load i8, i8* %arrayidx674, align 1
  %conv675 = zext i8 %437 to i32
  br label %cond.end.720

cond.false.676:                                   ; preds = %sw.default
  %438 = load i8*, i8** %tem, align 8
  %arrayidx677 = getelementptr inbounds i8, i8* %438, i64 0
  %439 = load i8, i8* %arrayidx677, align 1
  %conv678 = zext i8 %439 to i32
  %and679 = and i32 %conv678, 32
  %tobool680 = icmp ne i32 %and679, 0
  br i1 %tobool680, label %cond.false.695, label %cond.true.681

cond.true.681:                                    ; preds = %cond.false.676
  %440 = load i8*, i8** %tem, align 8
  %arrayidx682 = getelementptr inbounds i8, i8* %440, i64 0
  %441 = load i8, i8* %arrayidx682, align 1
  %conv683 = zext i8 %441 to i32
  %and684 = and i32 %conv683, 31
  %shl685 = shl i32 %and684, 6
  %442 = load i8*, i8** %tem, align 8
  %arrayidx686 = getelementptr inbounds i8, i8* %442, i64 1
  %443 = load i8, i8* %arrayidx686, align 1
  %conv687 = zext i8 %443 to i32
  %and688 = and i32 %conv687, 63
  %or = or i32 %shl685, %and688
  %444 = load i8*, i8** %tem, align 8
  %arrayidx689 = getelementptr inbounds i8, i8* %444, i64 0
  %445 = load i8, i8* %arrayidx689, align 1
  %conv690 = zext i8 %445 to i32
  %cmp691 = icmp slt i32 %conv690, 194
  %cond693 = select i1 %cmp691, i32 4194176, i32 0
  %add694 = add nsw i32 %or, %cond693
  br label %cond.end.718

cond.false.695:                                   ; preds = %cond.false.676
  %446 = load i8*, i8** %tem, align 8
  %arrayidx696 = getelementptr inbounds i8, i8* %446, i64 0
  %447 = load i8, i8* %arrayidx696, align 1
  %conv697 = zext i8 %447 to i32
  %and698 = and i32 %conv697, 16
  %tobool699 = icmp ne i32 %and698, 0
  br i1 %tobool699, label %cond.false.714, label %cond.true.700

cond.true.700:                                    ; preds = %cond.false.695
  %448 = load i8*, i8** %tem, align 8
  %arrayidx701 = getelementptr inbounds i8, i8* %448, i64 0
  %449 = load i8, i8* %arrayidx701, align 1
  %conv702 = zext i8 %449 to i32
  %and703 = and i32 %conv702, 15
  %shl704 = shl i32 %and703, 12
  %450 = load i8*, i8** %tem, align 8
  %arrayidx705 = getelementptr inbounds i8, i8* %450, i64 1
  %451 = load i8, i8* %arrayidx705, align 1
  %conv706 = zext i8 %451 to i32
  %and707 = and i32 %conv706, 63
  %shl708 = shl i32 %and707, 6
  %or709 = or i32 %shl704, %shl708
  %452 = load i8*, i8** %tem, align 8
  %arrayidx710 = getelementptr inbounds i8, i8* %452, i64 2
  %453 = load i8, i8* %arrayidx710, align 1
  %conv711 = zext i8 %453 to i32
  %and712 = and i32 %conv711, 63
  %or713 = or i32 %or709, %and712
  br label %cond.end.716

cond.false.714:                                   ; preds = %cond.false.695
  %454 = load i8*, i8** %tem, align 8
  %call715 = call i32 @string_char(i8* %454, i8** null, i32* null)
  br label %cond.end.716

cond.end.716:                                     ; preds = %cond.false.714, %cond.true.700
  %cond717 = phi i32 [ %or713, %cond.true.700 ], [ %call715, %cond.false.714 ]
  br label %cond.end.718

cond.end.718:                                     ; preds = %cond.end.716, %cond.true.681
  %cond719 = phi i32 [ %add694, %cond.true.681 ], [ %cond717, %cond.end.716 ]
  br label %cond.end.720

cond.end.720:                                     ; preds = %cond.end.718, %cond.true.673
  %cond721 = phi i32 [ %conv675, %cond.true.673 ], [ %cond719, %cond.end.718 ]
  %455 = load i8*, i8** %tem, align 8
  %arrayidx722 = getelementptr inbounds i8, i8* %455, i64 0
  %456 = load i8, i8* %arrayidx722, align 1
  %conv723 = zext i8 %456 to i32
  %and724 = and i32 %conv723, 128
  %tobool725 = icmp ne i32 %and724, 0
  br i1 %tobool725, label %cond.false.729, label %cond.true.726

cond.true.726:                                    ; preds = %cond.end.720
  %457 = load i8*, i8** %tem, align 8
  %arrayidx727 = getelementptr inbounds i8, i8* %457, i64 0
  %458 = load i8, i8* %arrayidx727, align 1
  %conv728 = zext i8 %458 to i32
  br label %cond.end.774

cond.false.729:                                   ; preds = %cond.end.720
  %459 = load i8*, i8** %tem, align 8
  %arrayidx730 = getelementptr inbounds i8, i8* %459, i64 0
  %460 = load i8, i8* %arrayidx730, align 1
  %conv731 = zext i8 %460 to i32
  %and732 = and i32 %conv731, 32
  %tobool733 = icmp ne i32 %and732, 0
  br i1 %tobool733, label %cond.false.749, label %cond.true.734

cond.true.734:                                    ; preds = %cond.false.729
  %461 = load i8*, i8** %tem, align 8
  %arrayidx735 = getelementptr inbounds i8, i8* %461, i64 0
  %462 = load i8, i8* %arrayidx735, align 1
  %conv736 = zext i8 %462 to i32
  %and737 = and i32 %conv736, 31
  %shl738 = shl i32 %and737, 6
  %463 = load i8*, i8** %tem, align 8
  %arrayidx739 = getelementptr inbounds i8, i8* %463, i64 1
  %464 = load i8, i8* %arrayidx739, align 1
  %conv740 = zext i8 %464 to i32
  %and741 = and i32 %conv740, 63
  %or742 = or i32 %shl738, %and741
  %465 = load i8*, i8** %tem, align 8
  %arrayidx743 = getelementptr inbounds i8, i8* %465, i64 0
  %466 = load i8, i8* %arrayidx743, align 1
  %conv744 = zext i8 %466 to i32
  %cmp745 = icmp slt i32 %conv744, 194
  %cond747 = select i1 %cmp745, i32 4194176, i32 0
  %add748 = add nsw i32 %or742, %cond747
  br label %cond.end.772

cond.false.749:                                   ; preds = %cond.false.729
  %467 = load i8*, i8** %tem, align 8
  %arrayidx750 = getelementptr inbounds i8, i8* %467, i64 0
  %468 = load i8, i8* %arrayidx750, align 1
  %conv751 = zext i8 %468 to i32
  %and752 = and i32 %conv751, 16
  %tobool753 = icmp ne i32 %and752, 0
  br i1 %tobool753, label %cond.false.768, label %cond.true.754

cond.true.754:                                    ; preds = %cond.false.749
  %469 = load i8*, i8** %tem, align 8
  %arrayidx755 = getelementptr inbounds i8, i8* %469, i64 0
  %470 = load i8, i8* %arrayidx755, align 1
  %conv756 = zext i8 %470 to i32
  %and757 = and i32 %conv756, 15
  %shl758 = shl i32 %and757, 12
  %471 = load i8*, i8** %tem, align 8
  %arrayidx759 = getelementptr inbounds i8, i8* %471, i64 1
  %472 = load i8, i8* %arrayidx759, align 1
  %conv760 = zext i8 %472 to i32
  %and761 = and i32 %conv760, 63
  %shl762 = shl i32 %and761, 6
  %or763 = or i32 %shl758, %shl762
  %473 = load i8*, i8** %tem, align 8
  %arrayidx764 = getelementptr inbounds i8, i8* %473, i64 2
  %474 = load i8, i8* %arrayidx764, align 1
  %conv765 = zext i8 %474 to i32
  %and766 = and i32 %conv765, 63
  %or767 = or i32 %or763, %and766
  br label %cond.end.770

cond.false.768:                                   ; preds = %cond.false.749
  %475 = load i8*, i8** %tem, align 8
  %call769 = call i32 @string_char(i8* %475, i8** null, i32* null)
  br label %cond.end.770

cond.end.770:                                     ; preds = %cond.false.768, %cond.true.754
  %cond771 = phi i32 [ %or767, %cond.true.754 ], [ %call769, %cond.false.768 ]
  br label %cond.end.772

cond.end.772:                                     ; preds = %cond.end.770, %cond.true.734
  %cond773 = phi i32 [ %add748, %cond.true.734 ], [ %cond771, %cond.end.770 ]
  br label %cond.end.774

cond.end.774:                                     ; preds = %cond.end.772, %cond.true.726
  %cond775 = phi i32 [ %conv728, %cond.true.726 ], [ %cond773, %cond.end.772 ]
  %476 = load i8*, i8** %tem, align 8
  %arrayidx776 = getelementptr inbounds i8, i8* %476, i64 0
  %477 = load i8, i8* %arrayidx776, align 1
  %conv777 = zext i8 %477 to i32
  %and778 = and i32 %conv777, 128
  %tobool779 = icmp ne i32 %and778, 0
  br i1 %tobool779, label %cond.false.783, label %cond.true.780

cond.true.780:                                    ; preds = %cond.end.774
  %478 = load i8*, i8** %tem, align 8
  %arrayidx781 = getelementptr inbounds i8, i8* %478, i64 0
  %479 = load i8, i8* %arrayidx781, align 1
  %conv782 = zext i8 %479 to i32
  br label %cond.end.828

cond.false.783:                                   ; preds = %cond.end.774
  %480 = load i8*, i8** %tem, align 8
  %arrayidx784 = getelementptr inbounds i8, i8* %480, i64 0
  %481 = load i8, i8* %arrayidx784, align 1
  %conv785 = zext i8 %481 to i32
  %and786 = and i32 %conv785, 32
  %tobool787 = icmp ne i32 %and786, 0
  br i1 %tobool787, label %cond.false.803, label %cond.true.788

cond.true.788:                                    ; preds = %cond.false.783
  %482 = load i8*, i8** %tem, align 8
  %arrayidx789 = getelementptr inbounds i8, i8* %482, i64 0
  %483 = load i8, i8* %arrayidx789, align 1
  %conv790 = zext i8 %483 to i32
  %and791 = and i32 %conv790, 31
  %shl792 = shl i32 %and791, 6
  %484 = load i8*, i8** %tem, align 8
  %arrayidx793 = getelementptr inbounds i8, i8* %484, i64 1
  %485 = load i8, i8* %arrayidx793, align 1
  %conv794 = zext i8 %485 to i32
  %and795 = and i32 %conv794, 63
  %or796 = or i32 %shl792, %and795
  %486 = load i8*, i8** %tem, align 8
  %arrayidx797 = getelementptr inbounds i8, i8* %486, i64 0
  %487 = load i8, i8* %arrayidx797, align 1
  %conv798 = zext i8 %487 to i32
  %cmp799 = icmp slt i32 %conv798, 194
  %cond801 = select i1 %cmp799, i32 4194176, i32 0
  %add802 = add nsw i32 %or796, %cond801
  br label %cond.end.826

cond.false.803:                                   ; preds = %cond.false.783
  %488 = load i8*, i8** %tem, align 8
  %arrayidx804 = getelementptr inbounds i8, i8* %488, i64 0
  %489 = load i8, i8* %arrayidx804, align 1
  %conv805 = zext i8 %489 to i32
  %and806 = and i32 %conv805, 16
  %tobool807 = icmp ne i32 %and806, 0
  br i1 %tobool807, label %cond.false.822, label %cond.true.808

cond.true.808:                                    ; preds = %cond.false.803
  %490 = load i8*, i8** %tem, align 8
  %arrayidx809 = getelementptr inbounds i8, i8* %490, i64 0
  %491 = load i8, i8* %arrayidx809, align 1
  %conv810 = zext i8 %491 to i32
  %and811 = and i32 %conv810, 15
  %shl812 = shl i32 %and811, 12
  %492 = load i8*, i8** %tem, align 8
  %arrayidx813 = getelementptr inbounds i8, i8* %492, i64 1
  %493 = load i8, i8* %arrayidx813, align 1
  %conv814 = zext i8 %493 to i32
  %and815 = and i32 %conv814, 63
  %shl816 = shl i32 %and815, 6
  %or817 = or i32 %shl812, %shl816
  %494 = load i8*, i8** %tem, align 8
  %arrayidx818 = getelementptr inbounds i8, i8* %494, i64 2
  %495 = load i8, i8* %arrayidx818, align 1
  %conv819 = zext i8 %495 to i32
  %and820 = and i32 %conv819, 63
  %or821 = or i32 %or817, %and820
  br label %cond.end.824

cond.false.822:                                   ; preds = %cond.false.803
  %496 = load i8*, i8** %tem, align 8
  %call823 = call i32 @string_char(i8* %496, i8** null, i32* null)
  br label %cond.end.824

cond.end.824:                                     ; preds = %cond.false.822, %cond.true.808
  %cond825 = phi i32 [ %or821, %cond.true.808 ], [ %call823, %cond.false.822 ]
  br label %cond.end.826

cond.end.826:                                     ; preds = %cond.end.824, %cond.true.788
  %cond827 = phi i32 [ %add802, %cond.true.788 ], [ %cond825, %cond.end.824 ]
  br label %cond.end.828

cond.end.828:                                     ; preds = %cond.end.826, %cond.true.780
  %cond829 = phi i32 [ %conv782, %cond.true.780 ], [ %cond827, %cond.end.826 ]
  call void (i8*, ...) @error(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i32 0, i32 0), i32 %cond721, i32 %cond775, i32 %cond829) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.663, %if.end.662, %sw.bb.647, %sw.bb.642, %sw.bb.637, %sw.bb.626, %sw.bb.619, %cond.end.614, %have_prefix_arg, %sw.bb.580, %sw.bb.573, %sw.bb.560, %sw.bb.557, %while.end.556, %if.end.527, %if.end.514, %if.end.454, %sw.bb.395, %sw.bb.389, %sw.bb.382, %sw.bb.375, %sw.bb.369, %sw.bb.362, %sw.bb.349, %if.end.346, %sw.bb.319, %if.end.313, %sw.bb
  %497 = load i64, i64* %i, align 8
  %498 = load i8*, i8** %varies, align 8
  %arrayidx830 = getelementptr inbounds i8, i8* %498, i64 %497
  %499 = load i8, i8* %arrayidx830, align 1
  %conv831 = sext i8 %499 to i32
  %cmp832 = icmp eq i32 %conv831, 0
  br i1 %cmp832, label %if.then.834, label %if.end.835

if.then.834:                                      ; preds = %sw.epilog
  store i8 1, i8* %arg_from_tty, align 1
  br label %if.end.835

if.end.835:                                       ; preds = %if.then.834, %sw.epilog
  %500 = load i64, i64* %i, align 8
  %501 = load i64*, i64** %visargs, align 8
  %arrayidx836 = getelementptr inbounds i64, i64* %501, i64 %500
  %502 = load i64, i64* %arrayidx836, align 8
  %call837 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp838 = icmp eq i64 %502, %call837
  br i1 %cmp838, label %land.lhs.true.840, label %if.end.847

land.lhs.true.840:                                ; preds = %if.end.835
  %503 = load i64, i64* %i, align 8
  %504 = load i64*, i64** %args, align 8
  %arrayidx841 = getelementptr inbounds i64, i64* %504, i64 %503
  %505 = load i64, i64* %arrayidx841, align 8
  %call842 = call zeroext i1 @STRINGP(i64 %505)
  br i1 %call842, label %if.then.844, label %if.end.847

if.then.844:                                      ; preds = %land.lhs.true.840
  %506 = load i64, i64* %i, align 8
  %507 = load i64*, i64** %args, align 8
  %arrayidx845 = getelementptr inbounds i64, i64* %507, i64 %506
  %508 = load i64, i64* %arrayidx845, align 8
  %509 = load i64, i64* %i, align 8
  %510 = load i64*, i64** %visargs, align 8
  %arrayidx846 = getelementptr inbounds i64, i64* %510, i64 %509
  store i64 %508, i64* %arrayidx846, align 8
  br label %if.end.847

if.end.847:                                       ; preds = %if.then.844, %land.lhs.true.840, %if.end.835
  %511 = load i8*, i8** %tem, align 8
  %call848 = call i8* @strchr(i8* %511, i32 10) #7
  store i8* %call848, i8** %tem, align 8
  %512 = load i8*, i8** %tem, align 8
  %tobool849 = icmp ne i8* %512, null
  br i1 %tobool849, label %if.then.850, label %if.else.852

if.then.850:                                      ; preds = %if.end.847
  %513 = load i8*, i8** %tem, align 8
  %incdec.ptr851 = getelementptr inbounds i8, i8* %513, i32 1
  store i8* %incdec.ptr851, i8** %tem, align 8
  br label %if.end.853

if.else.852:                                      ; preds = %if.end.847
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8** %tem, align 8
  br label %if.end.853

if.end.853:                                       ; preds = %if.else.852, %if.then.850
  br label %for.inc.854

for.inc.854:                                      ; preds = %if.end.853
  %514 = load i64, i64* %i, align 8
  %inc855 = add nsw i64 %514, 1
  store i64 %inc855, i64* %i, align 8
  br label %for.cond.271

for.end.856:                                      ; preds = %for.cond.271
  %515 = load i64, i64* %speccount, align 8
  %call857 = call i64 @builtin_lisp_symbol(i32 0)
  %call858 = call i64 @unbind_to(i64 %515, i64 %call857)
  br label %do.body.859

do.body.859:                                      ; preds = %for.end.856
  %516 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call860 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp861 = icmp eq i64 %516, %call860
  br i1 %cmp861, label %if.else.868, label %land.lhs.true.863

land.lhs.true.863:                                ; preds = %do.body.859
  %517 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call864 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp865 = icmp eq i64 %517, %call864
  br i1 %cmp865, label %if.then.867, label %if.else.868

if.then.867:                                      ; preds = %land.lhs.true.863
  call void @process_quit_flag()
  br label %if.end.872

if.else.868:                                      ; preds = %land.lhs.true.863, %do.body.859
  %518 = load volatile i8, i8* @pending_signals, align 1
  %tobool869 = trunc i8 %518 to i1
  br i1 %tobool869, label %if.then.870, label %if.end.871

if.then.870:                                      ; preds = %if.else.868
  call void @process_pending_signals()
  br label %if.end.871

if.end.871:                                       ; preds = %if.then.870, %if.else.868
  br label %if.end.872

if.end.872:                                       ; preds = %if.end.871, %if.then.867
  br label %do.end.873

do.end.873:                                       ; preds = %if.end.872
  %call874 = call i64 @builtin_lisp_symbol(i32 475)
  %519 = load i64*, i64** %args, align 8
  %arrayidx875 = getelementptr inbounds i64, i64* %519, i64 0
  store i64 %call874, i64* %arrayidx875, align 8
  %520 = load i64, i64* %function.addr, align 8
  %521 = load i64*, i64** %args, align 8
  %arrayidx876 = getelementptr inbounds i64, i64* %521, i64 1
  store i64 %520, i64* %arrayidx876, align 8
  %522 = load i8, i8* %arg_from_tty, align 1
  %tobool877 = trunc i8 %522 to i1
  br i1 %tobool877, label %if.then.883, label %lor.lhs.false.879

lor.lhs.false.879:                                ; preds = %do.end.873
  %523 = load i64, i64* %record_flag.addr, align 8
  %call880 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp881 = icmp eq i64 %523, %call880
  br i1 %cmp881, label %if.end.930, label %if.then.883

if.then.883:                                      ; preds = %lor.lhs.false.879, %do.end.873
  %524 = load i64, i64* %function.addr, align 8
  %525 = load i64*, i64** %visargs, align 8
  %arrayidx884 = getelementptr inbounds i64, i64* %525, i64 1
  store i64 %524, i64* %arrayidx884, align 8
  store i64 2, i64* %i, align 8
  br label %for.cond.885

for.cond.885:                                     ; preds = %for.inc.904, %if.then.883
  %526 = load i64, i64* %i, align 8
  %527 = load i64, i64* %nargs, align 8
  %cmp886 = icmp slt i64 %526, %527
  br i1 %cmp886, label %for.body.888, label %for.end.906

for.body.888:                                     ; preds = %for.cond.885
  %528 = load i64, i64* %i, align 8
  %529 = load i8*, i8** %varies, align 8
  %arrayidx889 = getelementptr inbounds i8, i8* %529, i64 %528
  %530 = load i8, i8* %arrayidx889, align 1
  %conv890 = sext i8 %530 to i32
  %cmp891 = icmp sgt i32 %conv890, 0
  br i1 %cmp891, label %if.then.893, label %if.else.899

if.then.893:                                      ; preds = %for.body.888
  %531 = load i64, i64* %i, align 8
  %532 = load i8*, i8** %varies, align 8
  %arrayidx894 = getelementptr inbounds i8, i8* %532, i64 %531
  %533 = load i8, i8* %arrayidx894, align 1
  %idxprom = sext i8 %533 to i64
  %arrayidx895 = getelementptr inbounds [5 x i8*], [5 x i8*]* @callint_argfuns, i32 0, i64 %idxprom
  %534 = load i8*, i8** %arrayidx895, align 8
  %call896 = call i64 @intern(i8* %534)
  %call897 = call i64 @list1(i64 %call896)
  %535 = load i64, i64* %i, align 8
  %536 = load i64*, i64** %visargs, align 8
  %arrayidx898 = getelementptr inbounds i64, i64* %536, i64 %535
  store i64 %call897, i64* %arrayidx898, align 8
  br label %if.end.903

if.else.899:                                      ; preds = %for.body.888
  %537 = load i64, i64* %i, align 8
  %538 = load i64*, i64** %args, align 8
  %arrayidx900 = getelementptr inbounds i64, i64* %538, i64 %537
  %539 = load i64, i64* %arrayidx900, align 8
  %call901 = call i64 @quotify_arg(i64 %539)
  %540 = load i64, i64* %i, align 8
  %541 = load i64*, i64** %visargs, align 8
  %arrayidx902 = getelementptr inbounds i64, i64* %541, i64 %540
  store i64 %call901, i64* %arrayidx902, align 8
  br label %if.end.903

if.end.903:                                       ; preds = %if.else.899, %if.then.893
  br label %for.inc.904

for.inc.904:                                      ; preds = %if.end.903
  %542 = load i64, i64* %i, align 8
  %inc905 = add nsw i64 %542, 1
  store i64 %inc905, i64* %i, align 8
  br label %for.cond.885

for.end.906:                                      ; preds = %for.cond.885
  %543 = load i64, i64* %nargs, align 8
  %sub907 = sub nsw i64 %543, 1
  %544 = load i64*, i64** %visargs, align 8
  %add.ptr908 = getelementptr inbounds i64, i64* %544, i64 1
  %call909 = call i64 @Flist(i64 %sub907, i64* %add.ptr908)
  %545 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41), align 8
  %call910 = call i64 @Fcons(i64 %call909, i64 %545)
  store i64 %call910, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41), align 8
  %546 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 125), align 8
  %and911 = and i64 %546, 7
  %conv912 = trunc i64 %and911 to i32
  %and913 = and i32 %conv912, -5
  %cmp914 = icmp eq i32 %and913, 2
  br i1 %cmp914, label %land.lhs.true.916, label %if.end.929

land.lhs.true.916:                                ; preds = %for.end.906
  %547 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 125), align 8
  %shr917 = ashr i64 %547, 2
  %cmp918 = icmp sgt i64 %shr917, 0
  br i1 %cmp918, label %if.then.920, label %if.end.929

if.then.920:                                      ; preds = %land.lhs.true.916
  %548 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 125), align 8
  %549 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41), align 8
  %call921 = call i64 @Fnthcdr(i64 %548, i64 %549)
  store i64 %call921, i64* %teml, align 8
  %550 = load i64, i64* %teml, align 8
  %and922 = and i64 %550, 7
  %conv923 = trunc i64 %and922 to i32
  %cmp924 = icmp eq i32 %conv923, 3
  br i1 %cmp924, label %if.then.926, label %if.end.928

if.then.926:                                      ; preds = %if.then.920
  %551 = load i64, i64* %teml, align 8
  %call927 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCDR(i64 %551, i64 %call927)
  br label %if.end.928

if.end.928:                                       ; preds = %if.then.926, %if.then.920
  br label %if.end.929

if.end.929:                                       ; preds = %if.end.928, %land.lhs.true.916, %for.end.906
  br label %if.end.930

if.end.930:                                       ; preds = %if.end.929, %lor.lhs.false.879
  store i64 2, i64* %i, align 8
  br label %for.cond.931

for.cond.931:                                     ; preds = %for.inc.951, %if.end.930
  %552 = load i64, i64* %i, align 8
  %553 = load i64, i64* %nargs, align 8
  %cmp932 = icmp slt i64 %552, %553
  br i1 %cmp932, label %for.body.934, label %for.end.953

for.body.934:                                     ; preds = %for.cond.931
  %554 = load i64, i64* %i, align 8
  %555 = load i8*, i8** %varies, align 8
  %arrayidx935 = getelementptr inbounds i8, i8* %555, i64 %554
  %556 = load i8, i8* %arrayidx935, align 1
  %conv936 = sext i8 %556 to i32
  %cmp937 = icmp sge i32 %conv936, 1
  br i1 %cmp937, label %land.lhs.true.939, label %if.end.950

land.lhs.true.939:                                ; preds = %for.body.934
  %557 = load i64, i64* %i, align 8
  %558 = load i8*, i8** %varies, align 8
  %arrayidx940 = getelementptr inbounds i8, i8* %558, i64 %557
  %559 = load i8, i8* %arrayidx940, align 1
  %conv941 = sext i8 %559 to i32
  %cmp942 = icmp sle i32 %conv941, 4
  br i1 %cmp942, label %if.then.944, label %if.end.950

if.then.944:                                      ; preds = %land.lhs.true.939
  %560 = load i64, i64* %i, align 8
  %561 = load i64*, i64** %args, align 8
  %arrayidx945 = getelementptr inbounds i64, i64* %561, i64 %560
  %562 = load i64, i64* %arrayidx945, align 8
  %call946 = call i64 @marker_position(i64 %562)
  %shl947 = shl i64 %call946, 2
  %add948 = add i64 %shl947, 2
  %563 = load i64, i64* %i, align 8
  %564 = load i64*, i64** %args, align 8
  %arrayidx949 = getelementptr inbounds i64, i64* %564, i64 %563
  store i64 %add948, i64* %arrayidx949, align 8
  br label %if.end.950

if.end.950:                                       ; preds = %if.then.944, %land.lhs.true.939, %for.body.934
  br label %for.inc.951

for.inc.951:                                      ; preds = %if.end.950
  %565 = load i64, i64* %i, align 8
  %inc952 = add nsw i64 %565, 1
  store i64 %inc952, i64* %i, align 8
  br label %for.cond.931

for.end.953:                                      ; preds = %for.cond.931
  %566 = load i8, i8* %record_then_fail, align 1
  %tobool954 = trunc i8 %566 to i1
  br i1 %tobool954, label %if.then.955, label %if.end.958

if.then.955:                                      ; preds = %for.end.953
  %call956 = call i64 @builtin_lisp_symbol(i32 0)
  %call957 = call i64 @Fbarf_if_buffer_read_only(i64 %call956)
  br label %if.end.958

if.end.958:                                       ; preds = %if.then.955, %for.end.953
  %567 = load i64, i64* %save_this_command, align 8
  store i64 %567, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 293), align 8
  %568 = load i64, i64* %save_this_original_command, align 8
  store i64 %568, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 295), align 8
  %569 = load i64, i64* %save_real_this_command, align 8
  store i64 %569, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 248), align 8
  %570 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %571 = load i64, i64* %save_last_command, align 8
  call void @kset_last_command(%struct.kboard* %570, i64 %571)
  %572 = load i64, i64* %nargs, align 8
  %573 = load i64*, i64** %args, align 8
  %call959 = call i64 @Ffuncall(i64 %572, i64* %573)
  store i64 %call959, i64* %val, align 8
  %574 = load i64, i64* %speccount, align 8
  %575 = load i64, i64* %val, align 8
  %call960 = call i64 @unbind_to(i64 %574, i64 %575)
  store i64 %call960, i64* %val, align 8
  br label %do.body.961

do.body.961:                                      ; preds = %if.end.958
  %576 = load i8, i8* %sa_must_free, align 1
  %tobool962 = trunc i8 %576 to i1
  br i1 %tobool962, label %if.then.963, label %if.end.966

if.then.963:                                      ; preds = %do.body.961
  store i8 0, i8* %sa_must_free, align 1
  %577 = load i64, i64* %sa_count, align 8
  %call964 = call i64 @builtin_lisp_symbol(i32 0)
  %call965 = call i64 @unbind_to(i64 %577, i64 %call964)
  br label %if.end.966

if.end.966:                                       ; preds = %if.then.963, %do.body.961
  br label %do.end.967

do.end.967:                                       ; preds = %if.end.966
  %578 = load i64, i64* %val, align 8
  store i64 %578, i64* %retval
  br label %return

return:                                           ; preds = %do.end.967, %do.end
  %579 = load i64, i64* %retval
  ret i64 %579
}

declare void @CHECK_VECTOR(i64) #1

declare i64 @ASIZE(i64) #1

declare i64 @Fget(i64, i64) #1

declare i64 @Finteractive_form(i64) #1

declare i64 @Fcar(i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #3

declare zeroext i1 @STRINGP(i64) #1

declare i64 @Findirect_function(i64, i64) #1

declare i64 @Feval(i64, i64) #1

declare i64 @CAR_SAFE(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @quotify_args(i64 %exp) #2 {
entry:
  %exp.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  %next = alloca i64, align 8
  store i64 %exp, i64* %exp.addr, align 8
  %0 = load i64, i64* %exp.addr, align 8
  store i64 %0, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %tail, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %5 = load i64, i64* %cdr, align 8
  store i64 %5, i64* %next, align 8
  %6 = load i64, i64* %tail, align 8
  %7 = load i64, i64* %tail, align 8
  %sub2 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub2 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car, align 8
  %call = call i64 @quotify_arg(i64 %10)
  call void @XSETCAR(i64 %6, i64 %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %next, align 8
  store i64 %11, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %exp.addr, align 8
  ret i64 %12
}

declare i64 @Fcopy_sequence(i64) #1

; Function Attrs: nounwind uwtable
define internal void @fix_command(i64 %input, i64 %values) #2 {
entry:
  %input.addr = alloca i64, align 8
  %values.addr = alloca i64, align 8
  %car = alloca i64, align 8
  %intail = alloca i64, align 8
  %valtail = alloca i64, align 8
  %elt = alloca i64, align 8
  %presflag = alloca i64, align 8
  %carelt = alloca i64, align 8
  store i64 %input, i64* %input.addr, align 8
  store i64 %values, i64* %values.addr, align 8
  %0 = load i64, i64* %input.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end.102

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %input.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car2 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car2, align 8
  store i64 %4, i64* %car, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load i64, i64* %car, align 8
  %call = call i64 @builtin_lisp_symbol(i32 612)
  %cmp3 = icmp eq i64 %5, %call
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %6 = load i64, i64* %car, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 613)
  %cmp6 = icmp eq i64 %6, %call5
  br i1 %cmp6, label %lor.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %7 = load i64, i64* %car, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 826)
  %cmp10 = icmp eq i64 %7, %call9
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.8
  %8 = load i64, i64* %car, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 777)
  %cmp13 = icmp eq i64 %8, %call12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.8, %lor.lhs.false, %while.cond
  %9 = phi i1 [ true, %lor.lhs.false.8 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp13, %lor.rhs ]
  br i1 %9, label %while.body, label %while.end.34

while.body:                                       ; preds = %lor.end
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.21, %while.body
  %10 = load i64, i64* %input.addr, align 8
  %sub16 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub16 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %13 = load i64, i64* %cdr, align 8
  %and17 = and i64 %13, 7
  %conv18 = trunc i64 %and17 to i32
  %cmp19 = icmp eq i32 %conv18, 3
  br i1 %cmp19, label %while.body.21, label %while.end

while.body.21:                                    ; preds = %while.cond.15
  %14 = load i64, i64* %input.addr, align 8
  %sub22 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub22 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u23 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr24 = bitcast %union.anon* %u23 to i64*
  %17 = load i64, i64* %cdr24, align 8
  store i64 %17, i64* %input.addr, align 8
  br label %while.cond.15

while.end:                                        ; preds = %while.cond.15
  %18 = load i64, i64* %input.addr, align 8
  %sub25 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub25 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %car26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 0
  %21 = load i64, i64* %car26, align 8
  store i64 %21, i64* %input.addr, align 8
  %22 = load i64, i64* %input.addr, align 8
  %and27 = and i64 %22, 7
  %conv28 = trunc i64 %and27 to i32
  %cmp29 = icmp eq i32 %conv28, 3
  br i1 %cmp29, label %if.end, label %if.then.31

if.then.31:                                       ; preds = %while.end
  br label %while.end.34

if.end:                                           ; preds = %while.end
  %23 = load i64, i64* %input.addr, align 8
  %sub32 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub32 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car33 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car33, align 8
  store i64 %26, i64* %car, align 8
  br label %while.cond

while.end.34:                                     ; preds = %if.then.31, %lor.end
  %27 = load i64, i64* %car, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 624)
  %cmp36 = icmp eq i64 %27, %call35
  br i1 %cmp36, label %if.then.38, label %if.end.101

if.then.38:                                       ; preds = %while.end.34
  %28 = load i64, i64* %input.addr, align 8
  %call39 = call i64 @Fcdr(i64 %28)
  store i64 %call39, i64* %intail, align 8
  %29 = load i64, i64* %values.addr, align 8
  store i64 %29, i64* %valtail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.38
  %30 = load i64, i64* %valtail, align 8
  %and40 = and i64 %30, 7
  %conv41 = trunc i64 %and40 to i32
  %cmp42 = icmp eq i32 %conv41, 3
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i64, i64* %intail, align 8
  %call44 = call i64 @Fcar(i64 %31)
  store i64 %call44, i64* %elt, align 8
  %32 = load i64, i64* %elt, align 8
  %and45 = and i64 %32, 7
  %conv46 = trunc i64 %and45 to i32
  %cmp47 = icmp eq i32 %conv46, 3
  br i1 %cmp47, label %if.then.49, label %if.end.96

if.then.49:                                       ; preds = %for.body
  %33 = load i64, i64* %elt, align 8
  %sub50 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub50 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %car51 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 0
  %36 = load i64, i64* %car51, align 8
  store i64 %36, i64* %carelt, align 8
  %37 = load i64, i64* %carelt, align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 535)
  %cmp53 = icmp eq i64 %37, %call52
  br i1 %cmp53, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.49
  %38 = load i64, i64* %elt, align 8
  %call55 = call i64 @Fnthcdr(i64 14, i64 %38)
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %call55, %call56
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %land.lhs.true
  %39 = load i64, i64* %elt, align 8
  %call60 = call i64 @Fnth(i64 10, i64 %39)
  store i64 %call60, i64* %elt, align 8
  br label %if.end.80

if.else:                                          ; preds = %land.lhs.true, %if.then.49
  %40 = load i64, i64* %carelt, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 1014)
  %cmp62 = icmp eq i64 %40, %call61
  br i1 %cmp62, label %if.then.64, label %if.end.79

if.then.64:                                       ; preds = %if.else
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.73, %if.then.64
  %41 = load i64, i64* %elt, align 8
  %sub66 = sub nsw i64 %41, 3
  %42 = inttoptr i64 %sub66 to i8*
  %43 = bitcast i8* %42 to %struct.Lisp_Cons*
  %u67 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %43, i32 0, i32 1
  %cdr68 = bitcast %union.anon* %u67 to i64*
  %44 = load i64, i64* %cdr68, align 8
  %and69 = and i64 %44, 7
  %conv70 = trunc i64 %and69 to i32
  %cmp71 = icmp eq i32 %conv70, 3
  br i1 %cmp71, label %while.body.73, label %while.end.77

while.body.73:                                    ; preds = %while.cond.65
  %45 = load i64, i64* %elt, align 8
  %sub74 = sub nsw i64 %45, 3
  %46 = inttoptr i64 %sub74 to i8*
  %47 = bitcast i8* %46 to %struct.Lisp_Cons*
  %u75 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %47, i32 0, i32 1
  %cdr76 = bitcast %union.anon* %u75 to i64*
  %48 = load i64, i64* %cdr76, align 8
  store i64 %48, i64* %elt, align 8
  br label %while.cond.65

while.end.77:                                     ; preds = %while.cond.65
  %49 = load i64, i64* %elt, align 8
  %call78 = call i64 @Fcar(i64 %49)
  store i64 %call78, i64* %elt, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %while.end.77, %if.else
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.59
  %50 = load i64, i64* %elt, align 8
  %and81 = and i64 %50, 7
  %conv82 = trunc i64 %and81 to i32
  %cmp83 = icmp eq i32 %conv82, 3
  br i1 %cmp83, label %if.then.85, label %if.end.95

if.then.85:                                       ; preds = %if.end.80
  %51 = load i64, i64* %elt, align 8
  %call86 = call i64 @Fcar(i64 %51)
  %52 = load i64, i64* @preserved_fns, align 8
  %call87 = call i64 @Fmemq(i64 %call86, i64 %52)
  store i64 %call87, i64* %presflag, align 8
  %53 = load i64, i64* %presflag, align 8
  %call88 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp89 = icmp eq i64 %53, %call88
  br i1 %cmp89, label %if.end.94, label %if.then.91

if.then.91:                                       ; preds = %if.then.85
  %54 = load i64, i64* %valtail, align 8
  %55 = load i64, i64* %intail, align 8
  %call92 = call i64 @Fcar(i64 %55)
  %call93 = call i64 @Fsetcar(i64 %54, i64 %call92)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.then.85
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.80
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.96
  %56 = load i64, i64* %intail, align 8
  %call97 = call i64 @Fcdr(i64 %56)
  store i64 %call97, i64* %intail, align 8
  %57 = load i64, i64* %valtail, align 8
  %sub98 = sub nsw i64 %57, 3
  %58 = inttoptr i64 %sub98 to i8*
  %59 = bitcast i8* %58 to %struct.Lisp_Cons*
  %u99 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %59, i32 0, i32 1
  %cdr100 = bitcast %union.anon* %u99 to i64*
  %60 = load i64, i64* %cdr100, align 8
  store i64 %60, i64* %valtail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.101

if.end.101:                                       ; preds = %for.end, %while.end.34
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %entry
  ret void
}

declare i64 @Fcons(i64, i64) #1

declare i64 @Fdelete(i64, i64) #1

declare i64 @Fnthcdr(i64, i64) #1

declare void @XSETCDR(i64, i64) #1

declare void @kset_last_command(%struct.kboard*, i64) #1

declare i64 @Fapply(i64, i64*) #1

declare i64 @SBYTES(i64) #1

declare i8* @record_xmalloc(i64) #1

declare i8* @SDATA(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i64 @AREF(i64, i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #3

declare i64 @Fbarf_if_buffer_read_only(i64) #1

declare zeroext i1 @WINDOWP(i64) #1

declare %struct.window* @XWINDOW(i64) #1

declare void @run_hook(i64) #1

declare i64 @Fselect_window(i64, i64) #1

declare i64 @call0(i64) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare void @xfree(i8*) #1

declare void @memclear(i8*, i64) #1

declare void @specbind(i64, i64) #1

declare i64 @make_string(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #5

declare i8* @SSDATA(i64) #1

declare i64 @Fformat_message(i64, i64*) #1

declare i64 @Fcompleting_read(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare i64 @Fintern(i64, i64) #1

declare i64 @Fcurrent_buffer() #1

declare i64 @Fother_buffer(i64, i64, i64) #1

declare i64 @Fread_buffer(i64, i64, i64, i64) #1

declare i64 @Fput_text_property(i64, i64, i64, i64, i64) #1

declare i64 @SCHARS(i64) #1

declare i64 @Fread_char(i64, i64, i64) #1

declare void @message1_nolog(i8*) #1

declare zeroext i1 @NATNUMP(i64) #1

declare i64 @Fchar_to_string(i64) #1

declare i64 @set_marker_both(i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @read_file_name(i64 %default_filename, i64 %mustmatch, i64 %initial, i64 %predicate) #2 {
entry:
  %default_filename.addr = alloca i64, align 8
  %mustmatch.addr = alloca i64, align 8
  %initial.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %.compoundliteral = alloca [7 x i64], align 8
  store i64 %default_filename, i64* %default_filename.addr, align 8
  store i64 %mustmatch, i64* %mustmatch.addr, align 8
  store i64 %initial, i64* %initial.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  %arrayinit.begin = getelementptr inbounds [7 x i64], [7 x i64]* %.compoundliteral, i64 0, i64 0
  %call = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0))
  store i64 %call, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %0 = load i64, i64* @callint_message, align 8
  store i64 %0, i64* %arrayinit.element
  %arrayinit.element1 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %arrayinit.element1
  %arrayinit.element3 = getelementptr inbounds i64, i64* %arrayinit.element1, i64 1
  %1 = load i64, i64* %default_filename.addr, align 8
  store i64 %1, i64* %arrayinit.element3
  %arrayinit.element4 = getelementptr inbounds i64, i64* %arrayinit.element3, i64 1
  %2 = load i64, i64* %mustmatch.addr, align 8
  store i64 %2, i64* %arrayinit.element4
  %arrayinit.element5 = getelementptr inbounds i64, i64* %arrayinit.element4, i64 1
  %3 = load i64, i64* %initial.addr, align 8
  store i64 %3, i64* %arrayinit.element5
  %arrayinit.element6 = getelementptr inbounds i64, i64* %arrayinit.element5, i64 1
  %4 = load i64, i64* %predicate.addr, align 8
  store i64 %4, i64* %arrayinit.element6
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %.compoundliteral, i32 0, i32 0
  %call7 = call i64 @Ffuncall(i64 7, i64* %arraydecay)
  ret i64 %call7
}

declare i64 @Fread_key_sequence(i64, i64, i64, i64, i64) #1

declare i64 @Fkey_description(i64, i64) #1

declare i64 @Faref(i64, i64) #1

declare i64 @Flength(i64) #1

declare i64 @Fmemq(i64, i64) #1

declare i64 @Fcdr(i64) #1

declare i64 @Fread_event(i64, i64, i64) #1

declare i64 @Fread_key_sequence_vector(i64, i64, i64, i64, i64) #1

declare i64 @Fmake_vector(i64, i64) #1

declare i64 @SYMBOL_NAME(i64) #1

; Function Attrs: nounwind uwtable
define internal void @check_mark(i1 zeroext %for_region) #2 {
entry:
  %for_region.addr = alloca i8, align 1
  %tem = alloca i64, align 8
  %frombool = zext i1 %for_region to i8
  store i8 %frombool, i8* %for_region.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %mark_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 8
  %1 = load i64, i64* %mark_, align 8
  %call = call i64 @Fmarker_buffer(i64 %1)
  store i64 %call, i64* %tem, align 8
  %2 = load i64, i64* %tem, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %tem, align 8
  %call2 = call %struct.buffer* @XBUFFER(i64 %3)
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp3 = icmp ne %struct.buffer* %call2, %4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i8, i8* %for_region.addr, align 1
  %tobool = trunc i8 %5 to i1
  %cond = select i1 %tobool, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0)
  call void (i8*, ...) @error(i8* %cond) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 305), align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.end.13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 171), align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %7, %call6
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.13

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %mark_active_ = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 38
  %9 = load i64, i64* %mark_active_, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %9, %call9
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true.8
  %call12 = call i64 @builtin_lisp_symbol(i32 644)
  call void @xsignal0(i64 %call12) #6
  unreachable

if.end.13:                                        ; preds = %land.lhs.true.8, %land.lhs.true, %if.end
  ret void
}

declare i64 @Fread_string(i64, i64, i64, i64, i64) #1

declare i64 @call1(i64, i64) #1

declare i64 @Fnumber_to_string(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fprefix_numeric_value(i64 %raw) #2 {
entry:
  %raw.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %raw, i64* %raw.addr, align 8
  %0 = load i64, i64* %raw.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @make_natnum(i64 1)
  store i64 %call1, i64* %val, align 8
  br label %if.end.27

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %raw.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 668)
  %cmp3 = icmp eq i64 %1, %call2
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i64 -2, i64* %val, align 8
  br label %if.end.26

if.else.5:                                        ; preds = %if.else
  %2 = load i64, i64* %raw.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp6 = icmp eq i32 %conv, 3
  br i1 %cmp6, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else.5
  %3 = load i64, i64* %raw.addr, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %and8 = and i64 %6, 7
  %conv9 = trunc i64 %and8 to i32
  %and10 = and i32 %conv9, -5
  %cmp11 = icmp eq i32 %and10, 2
  br i1 %cmp11, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %land.lhs.true
  %7 = load i64, i64* %raw.addr, align 8
  %sub14 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub14 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car15, align 8
  %shr = ashr i64 %10, 2
  %shl = shl i64 %shr, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %val, align 8
  br label %if.end.25

if.else.16:                                       ; preds = %land.lhs.true, %if.else.5
  %11 = load i64, i64* %raw.addr, align 8
  %and17 = and i64 %11, 7
  %conv18 = trunc i64 %and17 to i32
  %and19 = and i32 %conv18, -5
  %cmp20 = icmp eq i32 %and19, 2
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.16
  %12 = load i64, i64* %raw.addr, align 8
  store i64 %12, i64* %val, align 8
  br label %if.end

if.else.23:                                       ; preds = %if.else.16
  %call24 = call i64 @make_natnum(i64 1)
  store i64 %call24, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.23, %if.then.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.4
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %13 = load i64, i64* %val, align 8
  ret i64 %13
}

declare i64 @marker_position(i64) #1

declare i64 @Fread_variable(i64, i64) #1

declare i64 @intern(i8*) #1

declare i64 @Fread_non_nil_coding_system(i64) #1

declare i64 @Fread_coding_system(i64, i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

declare i64 @list1(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @quotify_arg(i64 %exp) #2 {
entry:
  %retval = alloca i64, align 8
  %exp.addr = alloca i64, align 8
  store i64 %exp, i64* %exp.addr, align 8
  %0 = load i64, i64* %exp.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %exp.addr, align 8
  %and2 = and i64 %1, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i64, i64* %exp.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %2, %call
  br i1 %cmp6, label %if.end, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %3 = load i64, i64* %exp.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp10 = icmp eq i64 %3, %call9
  br i1 %cmp10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.8, %entry
  %call12 = call i64 @builtin_lisp_symbol(i32 783)
  %4 = load i64, i64* %exp.addr, align 8
  %call13 = call i64 @list2(i64 %call12, i64 %4)
  store i64 %call13, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.8, %land.lhs.true, %lor.lhs.false
  %5 = load i64, i64* %exp.addr, align 8
  store i64 %5, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

declare i64 @Flist(i64, i64*) #1

declare i64 @make_natnum(i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_callint() #2 {
entry:
  %call = call i64 @Fmake_marker()
  store i64 %call, i64* @point_marker, align 8
  call void @staticpro(i64* @point_marker)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* @callint_message, align 8
  call void @staticpro(i64* @callint_message)
  %call2 = call i64 @intern_c_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  %call3 = call i64 @intern_c_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %call4 = call i64 @intern_c_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %call5 = call i64 @intern_c_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  %call6 = call i64 (i32, i64, i64, ...) @listn(i32 1, i64 4, i64 %call2, i64 %call3, i64 %call4, i64 %call5)
  store i64 %call6, i64* @preserved_fns, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_kboard(%struct.Lisp_Kboard_Objfwd* @syms_of_callint.ko_fwd, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 48)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  call void @defvar_kboard(%struct.Lisp_Kboard_Objfwd* @syms_of_callint.ko_fwd.15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 56)
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callint.o_fwd, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 50))
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 50), align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.10
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callint.o_fwd.18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41))
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 41), align 8
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.13
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callint.o_fwd.20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 39))
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 39), align 8
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.16
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callint.o_fwd.22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 171))
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  %call20 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call20, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 171), align 8
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.19
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callint.o_fwd.24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 203))
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 203), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sinteractive to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scall_interactively to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Sfuncall_interactively to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sprefix_numeric_value to %struct.Lisp_Subr*))
  ret void
}

declare i64 @Fmake_marker() #1

declare void @staticpro(i64*) #1

declare i64 @listn(i32, i64, i64, ...) #1

declare i64 @intern_c_string(i8*) #1

declare void @defvar_kboard(%struct.Lisp_Kboard_Objfwd*, i8*, i32) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @XSETCAR(i64, i64) #1

declare i64 @Fnth(i64, i64) #1

declare i64 @Fsetcar(i64, i64) #1

declare i64 @Fmarker_buffer(i64) #1

declare %struct.buffer* @XBUFFER(i64) #1

; Function Attrs: noreturn
declare void @xsignal0(i64) #3

declare i64 @list2(i64, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
