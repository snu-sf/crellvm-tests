; ModuleID = './src/sound.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sound_device = type { i64, i32, i32, i32, i32, i32, i32, i32, void (%struct.sound_device*)*, void (%struct.sound_device*)*, void (%struct.sound_device*)*, void (%struct.sound_device*, %struct.sound*)*, i64 (%struct.sound_device*)*, void (%struct.sound_device*, i8*, i64)*, i8* }
%struct.sound = type { i32, i32, i8*, i32, i64, void (%struct.sound*, %struct.sound_device*)* }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.vectorlike_header = type { i64 }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.__sigset_t = type { [16 x i64] }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon, i16, i16, i8*, i8*, i8* }
%union.anon = type { i64 ()* }
%struct.wav_header = type { i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, i32 }
%struct.au_header = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid sound specification\00", align 1
@current_sound_device = internal global %struct.sound_device* null, align 8
@current_sound = internal global %struct.sound* null, align 8
@globals = external global %struct.emacs_globals, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not open sound file\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid sound file header\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"No usable sound device driver found\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Unknown sound format\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Error reading sound file\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".snd\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Could not set sound format\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Could not set stereo/mono\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Could not set sound speed\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Could not set sample rate\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Unsupported WAV file format\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Unsupported AU file format\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Error writing to sound device\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"play-sound-internal\00", align 1
@Splay_sound_internal = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fplay_sound_internal }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fplay_sound_internal(i64 %sound) #0 {
entry:
  %sound.addr = alloca i64, align 8
  %attrs = alloca [4 x i64], align 16
  %count = alloca i64, align 8
  %file = alloca i64, align 8
  %headerbuf = alloca [44 x i8], align 16
  %.compoundliteral = alloca [2 x i64], align 8
  store i64 %sound, i64* %sound.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %sound.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %attrs, i32 0, i32 0
  %call1 = call zeroext i1 @parse_sound(i64 %0, i64* %arraydecay)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %file, align 8
  %call3 = call noalias i8* @xzalloc(i64 96)
  %1 = bitcast i8* %call3 to %struct.sound_device*
  store %struct.sound_device* %1, %struct.sound_device** @current_sound_device, align 8
  %call4 = call noalias i8* @xzalloc(i64 40)
  %2 = bitcast i8* %call4 to %struct.sound*
  store %struct.sound* %2, %struct.sound** @current_sound, align 8
  call void @record_unwind_protect_void(void ()* @sound_cleanup)
  %arraydecay5 = getelementptr inbounds [44 x i8], [44 x i8]* %headerbuf, i32 0, i32 0
  %3 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %header = getelementptr inbounds %struct.sound, %struct.sound* %3, i32 0, i32 2
  store i8* %arraydecay5, i8** %header, align 8
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %attrs, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  %call6 = call zeroext i1 @STRINGP(i64 %4)
  br i1 %call6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51), align 8
  %call8 = call i64 @list1(i64 %5)
  %arrayidx9 = getelementptr inbounds [4 x i64], [4 x i64]* %attrs, i32 0, i64 0
  %6 = load i64, i64* %arrayidx9, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i32 @openp(i64 %call8, i64 %6, i64 %call10, i64* %file, i64 %call11, i1 zeroext false)
  %7 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %fd = getelementptr inbounds %struct.sound, %struct.sound* %7, i32 0, i32 1
  store i32 %call12, i32* %fd, align 4
  %8 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %fd13 = getelementptr inbounds %struct.sound, %struct.sound* %8, i32 0, i32 1
  %9 = load i32, i32* %fd13, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.7
  call void @sound_perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #8
  unreachable

if.end.15:                                        ; preds = %if.then.7
  %10 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %fd16 = getelementptr inbounds %struct.sound, %struct.sound* %10, i32 0, i32 1
  %11 = load i32, i32* %fd16, align 4
  %12 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %header17 = getelementptr inbounds %struct.sound, %struct.sound* %12, i32 0, i32 2
  %13 = load i8*, i8** %header17, align 8
  %call18 = call i64 @emacs_read(i32 %11, i8* %13, i64 44)
  %conv = trunc i64 %call18 to i32
  %14 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %header_size = getelementptr inbounds %struct.sound, %struct.sound* %14, i32 0, i32 3
  store i32 %conv, i32* %header_size, align 4
  %15 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %header_size19 = getelementptr inbounds %struct.sound, %struct.sound* %15, i32 0, i32 3
  %16 = load i32, i32* %header_size19, align 4
  %cmp20 = icmp slt i32 %16, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  call void @sound_perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #8
  unreachable

if.end.23:                                        ; preds = %if.end.15
  br label %if.end.38

if.else:                                          ; preds = %if.end
  %arrayidx24 = getelementptr inbounds [4 x i64], [4 x i64]* %attrs, i32 0, i64 1
  %17 = load i64, i64* %arrayidx24, align 8
  %18 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %data = getelementptr inbounds %struct.sound, %struct.sound* %18, i32 0, i32 4
  store i64 %17, i64* %data, align 8
  %19 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %data25 = getelementptr inbounds %struct.sound, %struct.sound* %19, i32 0, i32 4
  %20 = load i64, i64* %data25, align 8
  %call26 = call i64 @SBYTES(i64 %20)
  %cmp27 = icmp ult i64 44, %call26
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %21 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %data29 = getelementptr inbounds %struct.sound, %struct.sound* %21, i32 0, i32 4
  %22 = load i64, i64* %data29, align 8
  %call30 = call i64 @SBYTES(i64 %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 44, %cond.true ], [ %call30, %cond.false ]
  %conv31 = trunc i64 %cond to i32
  %23 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %header_size32 = getelementptr inbounds %struct.sound, %struct.sound* %23, i32 0, i32 3
  store i32 %conv31, i32* %header_size32, align 4
  %24 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %header33 = getelementptr inbounds %struct.sound, %struct.sound* %24, i32 0, i32 2
  %25 = load i8*, i8** %header33, align 8
  %26 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %data34 = getelementptr inbounds %struct.sound, %struct.sound* %26, i32 0, i32 4
  %27 = load i64, i64* %data34, align 8
  %call35 = call i8* @SDATA(i64 %27)
  %28 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %header_size36 = getelementptr inbounds %struct.sound, %struct.sound* %28, i32 0, i32 3
  %29 = load i32, i32* %header_size36, align 4
  %conv37 = sext i32 %29 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %call35, i64 %conv37, i32 1, i1 false)
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end, %if.end.23
  %30 = load %struct.sound*, %struct.sound** @current_sound, align 8
  call void @find_sound_type(%struct.sound* %30)
  %arrayidx39 = getelementptr inbounds [4 x i64], [4 x i64]* %attrs, i32 0, i64 2
  %31 = load i64, i64* %arrayidx39, align 8
  %32 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  %file40 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %32, i32 0, i32 0
  store i64 %31, i64* %file40, align 8
  %arrayidx41 = getelementptr inbounds [4 x i64], [4 x i64]* %attrs, i32 0, i64 3
  %33 = load i64, i64* %arrayidx41, align 8
  %and = and i64 %33, 7
  %conv42 = trunc i64 %and to i32
  %and43 = and i32 %conv42, -5
  %cmp44 = icmp eq i32 %and43, 2
  br i1 %cmp44, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %if.end.38
  %arrayidx47 = getelementptr inbounds [4 x i64], [4 x i64]* %attrs, i32 0, i64 3
  %34 = load i64, i64* %arrayidx47, align 8
  %shr = ashr i64 %34, 2
  %conv48 = trunc i64 %shr to i32
  %35 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  %volume = getelementptr inbounds %struct.sound_device, %struct.sound_device* %35, i32 0, i32 3
  store i32 %conv48, i32* %volume, align 4
  br label %if.end.61

if.else.49:                                       ; preds = %if.end.38
  %arrayidx50 = getelementptr inbounds [4 x i64], [4 x i64]* %attrs, i32 0, i64 3
  %36 = load i64, i64* %arrayidx50, align 8
  %and51 = and i64 %36, 7
  %conv52 = trunc i64 %and51 to i32
  %cmp53 = icmp eq i32 %conv52, 7
  br i1 %cmp53, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %if.else.49
  %arrayidx56 = getelementptr inbounds [4 x i64], [4 x i64]* %attrs, i32 0, i64 3
  %37 = load i64, i64* %arrayidx56, align 8
  %call57 = call double @XFLOAT_DATA(i64 %37)
  %mul = fmul double %call57, 1.000000e+02
  %conv58 = fptosi double %mul to i32
  %38 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  %volume59 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %38, i32 0, i32 3
  store i32 %conv58, i32* %volume59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %if.else.49
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.46
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %call62 = call i64 @builtin_lisp_symbol(i32 751)
  store i64 %call62, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %39 = load i64, i64* %sound.addr, align 8
  store i64 %39, i64* %arrayinit.element
  %arraydecay63 = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call64 = call i64 @Frun_hook_with_args(i64 2, i64* %arraydecay63)
  %40 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  %call65 = call zeroext i1 @vox_init(%struct.sound_device* %40)
  br i1 %call65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %if.end.61
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #8
  unreachable

if.end.67:                                        ; preds = %if.end.61
  %41 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  %open = getelementptr inbounds %struct.sound_device, %struct.sound_device* %41, i32 0, i32 8
  %42 = load void (%struct.sound_device*)*, void (%struct.sound_device*)** %open, align 8
  %43 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  call void %42(%struct.sound_device* %43)
  %44 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %play = getelementptr inbounds %struct.sound, %struct.sound* %44, i32 0, i32 5
  %45 = load void (%struct.sound*, %struct.sound_device*)*, void (%struct.sound*, %struct.sound_device*)** %play, align 8
  %46 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %47 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  call void %45(%struct.sound* %46, %struct.sound_device* %47)
  %48 = load i64, i64* %count, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %call69 = call i64 @unbind_to(i64 %48, i64 %call68)
  ret i64 %call69
}

declare i64 @SPECPDL_INDEX() #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @parse_sound(i64 %sound, i64* %attrs) #0 {
entry:
  %retval = alloca i1, align 1
  %sound.addr = alloca i64, align 8
  %attrs.addr = alloca i64*, align 8
  store i64 %sound, i64* %sound.addr, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  %0 = load i64, i64* %sound.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %sound.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %call = call i64 @builtin_lisp_symbol(i32 866)
  %cmp2 = icmp eq i64 %4, %call
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* %sound.addr, align 8
  %sub4 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub4 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %8 = load i64, i64* %cdr, align 8
  store i64 %8, i64* %sound.addr, align 8
  %9 = load i64, i64* %sound.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 41)
  %call6 = call i64 @Fplist_get(i64 %9, i64 %call5)
  %10 = load i64*, i64** %attrs.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %call6, i64* %arrayidx, align 8
  %11 = load i64, i64* %sound.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 29)
  %call8 = call i64 @Fplist_get(i64 %11, i64 %call7)
  %12 = load i64*, i64** %attrs.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %12, i64 1
  store i64 %call8, i64* %arrayidx9, align 8
  %13 = load i64, i64* %sound.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 32)
  %call11 = call i64 @Fplist_get(i64 %13, i64 %call10)
  %14 = load i64*, i64** %attrs.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %14, i64 2
  store i64 %call11, i64* %arrayidx12, align 8
  %15 = load i64, i64* %sound.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 136)
  %call14 = call i64 @Fplist_get(i64 %15, i64 %call13)
  %16 = load i64*, i64** %attrs.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %16, i64 3
  store i64 %call14, i64* %arrayidx15, align 8
  %17 = load i64*, i64** %attrs.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %17, i64 0
  %18 = load i64, i64* %arrayidx16, align 8
  %call17 = call zeroext i1 @STRINGP(i64 %18)
  br i1 %call17, label %if.end.21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %19 = load i64*, i64** %attrs.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %19, i64 1
  %20 = load i64, i64* %arrayidx18, align 8
  %call19 = call zeroext i1 @STRINGP(i64 %20)
  br i1 %call19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true
  store i1 false, i1* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true, %if.end
  %21 = load i64*, i64** %attrs.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %21, i64 3
  %22 = load i64, i64* %arrayidx22, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %22, %call23
  br i1 %cmp24, label %if.end.64, label %if.then.26

if.then.26:                                       ; preds = %if.end.21
  %23 = load i64*, i64** %attrs.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %23, i64 3
  %24 = load i64, i64* %arrayidx27, align 8
  %and28 = and i64 %24, 7
  %conv29 = trunc i64 %and28 to i32
  %and30 = and i32 %conv29, -5
  %cmp31 = icmp eq i32 %and30, 2
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.26
  %25 = load i64*, i64** %attrs.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, i64* %25, i64 3
  %26 = load i64, i64* %arrayidx34, align 8
  %shr = ashr i64 %26, 2
  %cmp35 = icmp slt i64 %shr, 0
  br i1 %cmp35, label %if.then.42, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.then.33
  %27 = load i64*, i64** %attrs.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %27, i64 3
  %28 = load i64, i64* %arrayidx38, align 8
  %shr39 = ashr i64 %28, 2
  %cmp40 = icmp sgt i64 %shr39, 100
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.37, %if.then.33
  store i1 false, i1* %retval
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false.37
  br label %if.end.63

if.else:                                          ; preds = %if.then.26
  %29 = load i64*, i64** %attrs.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, i64* %29, i64 3
  %30 = load i64, i64* %arrayidx44, align 8
  %and45 = and i64 %30, 7
  %conv46 = trunc i64 %and45 to i32
  %cmp47 = icmp eq i32 %conv46, 7
  br i1 %cmp47, label %if.then.49, label %if.else.61

if.then.49:                                       ; preds = %if.else
  %31 = load i64*, i64** %attrs.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %31, i64 3
  %32 = load i64, i64* %arrayidx50, align 8
  %call51 = call double @XFLOAT_DATA(i64 %32)
  %cmp52 = fcmp olt double %call51, 0.000000e+00
  br i1 %cmp52, label %if.then.59, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.then.49
  %33 = load i64*, i64** %attrs.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, i64* %33, i64 3
  %34 = load i64, i64* %arrayidx55, align 8
  %call56 = call double @XFLOAT_DATA(i64 %34)
  %cmp57 = fcmp ogt double %call56, 1.000000e+00
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false.54, %if.then.49
  store i1 false, i1* %retval
  br label %return

if.end.60:                                        ; preds = %lor.lhs.false.54
  br label %if.end.62

if.else.61:                                       ; preds = %if.else
  store i1 false, i1* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.60
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.43
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.21
  %35 = load i64*, i64** %attrs.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, i64* %35, i64 2
  %36 = load i64, i64* %arrayidx65, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %36, %call66
  br i1 %cmp67, label %if.end.73, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %if.end.64
  %37 = load i64*, i64** %attrs.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %37, i64 2
  %38 = load i64, i64* %arrayidx70, align 8
  %call71 = call zeroext i1 @STRINGP(i64 %38)
  br i1 %call71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %land.lhs.true.69
  store i1 false, i1* %retval
  br label %return

if.end.73:                                        ; preds = %land.lhs.true.69, %if.end.64
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.then.72, %if.else.61, %if.then.59, %if.then.42, %if.then.20, %if.then
  %39 = load i1, i1* %retval
  ret i1 %39
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare i64 @builtin_lisp_symbol(i32) #1

declare noalias i8* @xzalloc(i64) #1

declare void @record_unwind_protect_void(void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @sound_cleanup() #0 {
entry:
  %0 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  %close = getelementptr inbounds %struct.sound_device, %struct.sound_device* %0, i32 0, i32 9
  %1 = load void (%struct.sound_device*)*, void (%struct.sound_device*)** %close, align 8
  %tobool = icmp ne void (%struct.sound_device*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  %close1 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %2, i32 0, i32 9
  %3 = load void (%struct.sound_device*)*, void (%struct.sound_device*)** %close1, align 8
  %4 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  call void %3(%struct.sound_device* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %fd = getelementptr inbounds %struct.sound, %struct.sound* %5, i32 0, i32 1
  %6 = load i32, i32* %fd, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %fd3 = getelementptr inbounds %struct.sound, %struct.sound* %7, i32 0, i32 1
  %8 = load i32, i32* %fd3, align 4
  %call = call i32 @emacs_close(i32 %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %9 = load %struct.sound_device*, %struct.sound_device** @current_sound_device, align 8
  %10 = bitcast %struct.sound_device* %9 to i8*
  call void @xfree(i8* %10)
  %11 = load %struct.sound*, %struct.sound** @current_sound, align 8
  %12 = bitcast %struct.sound* %11 to i8*
  call void @xfree(i8* %12)
  ret void
}

declare zeroext i1 @STRINGP(i64) #1

declare i32 @openp(i64, i64, i64, i64*, i64, i1 zeroext) #1

declare i64 @list1(i64) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @sound_perror(i8* %msg) #3 {
entry:
  %msg.addr = alloca i8*, align 8
  %saved_errno = alloca i32, align 4
  %unblocked = alloca %struct.__sigset_t, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %call = call i32* @__errno_location() #9
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %saved_errno, align 4
  call void @turn_on_atimers(i1 zeroext true)
  %call1 = call i32 @sigemptyset(%struct.__sigset_t* %unblocked) #4
  %call2 = call i32 @sigaddset(%struct.__sigset_t* %unblocked, i32 29) #4
  %call3 = call i32 @pthread_sigmask(i32 1, %struct.__sigset_t* %unblocked, %struct.__sigset_t* null) #4
  %1 = load i32, i32* %saved_errno, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %msg.addr, align 8
  %3 = load i32, i32* %saved_errno, align 4
  %call4 = call i8* @strerror(i32 %3) #4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %2, i8* %call4) #8
  unreachable

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %msg.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %4) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i64 @emacs_read(i32, i8*, i64) #1

declare i64 @SBYTES(i64) #1

declare i8* @SDATA(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @find_sound_type(%struct.sound* %s) #0 {
entry:
  %s.addr = alloca %struct.sound*, align 8
  store %struct.sound* %s, %struct.sound** %s.addr, align 8
  %0 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %call = call zeroext i1 @wav_init(%struct.sound* %0)
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %call1 = call zeroext i1 @au_init(%struct.sound* %1)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

declare double @XFLOAT_DATA(i64) #1

declare i64 @Frun_hook_with_args(i64, i64*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vox_init(%struct.sound_device* %sd) #0 {
entry:
  %retval = alloca i1, align 1
  %sd.addr = alloca %struct.sound_device*, align 8
  %file = alloca i8*, align 8
  %fd = alloca i32, align 4
  store %struct.sound_device* %sd, %struct.sound_device** %sd.addr, align 8
  %0 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %file1 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %0, i32 0, i32 0
  %1 = load i64, i64* %file1, align 8
  %call = call i8* @string_default(i64 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  store i8* %call, i8** %file, align 8
  %2 = load i8*, i8** %file, align 8
  %call2 = call i32 @emacs_open(i8* %2, i32 1, i32 0)
  store i32 %call2, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %fd, align 4
  %call3 = call i32 @emacs_close(i32 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd4 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %5, i32 0, i32 1
  store i32 -1, i32* %fd4, align 4
  %6 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %open = getelementptr inbounds %struct.sound_device, %struct.sound_device* %6, i32 0, i32 8
  store void (%struct.sound_device*)* @vox_open, void (%struct.sound_device*)** %open, align 8
  %7 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %close = getelementptr inbounds %struct.sound_device, %struct.sound_device* %7, i32 0, i32 9
  store void (%struct.sound_device*)* @vox_close, void (%struct.sound_device*)** %close, align 8
  %8 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %configure = getelementptr inbounds %struct.sound_device, %struct.sound_device* %8, i32 0, i32 10
  store void (%struct.sound_device*)* @vox_configure, void (%struct.sound_device*)** %configure, align 8
  %9 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %choose_format = getelementptr inbounds %struct.sound_device, %struct.sound_device* %9, i32 0, i32 11
  store void (%struct.sound_device*, %struct.sound*)* @vox_choose_format, void (%struct.sound_device*, %struct.sound*)** %choose_format, align 8
  %10 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %write = getelementptr inbounds %struct.sound_device, %struct.sound_device* %10, i32 0, i32 13
  store void (%struct.sound_device*, i8*, i64)* @vox_write, void (%struct.sound_device*, i8*, i64)** %write, align 8
  %11 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %period_size = getelementptr inbounds %struct.sound_device, %struct.sound_device* %11, i32 0, i32 12
  store i64 (%struct.sound_device*)* null, i64 (%struct.sound_device*)** %period_size, align 8
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else
  %12 = load i1, i1* %retval
  ret i1 %12
}

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_sound() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Splay_sound_internal to %struct.Lisp_Subr*))
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i64 @Fplist_get(i64, i64) #1

declare i32 @emacs_close(i32) #1

declare void @xfree(i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @turn_on_atimers(i1 zeroext) #1

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #6

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #6

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @wav_init(%struct.sound* %s) #0 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca %struct.sound*, align 8
  %header = alloca %struct.wav_header*, align 8
  store %struct.sound* %s, %struct.sound** %s.addr, align 8
  %0 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header1 = getelementptr inbounds %struct.sound, %struct.sound* %0, i32 0, i32 2
  %1 = load i8*, i8** %header1, align 8
  %2 = bitcast i8* %1 to %struct.wav_header*
  store %struct.wav_header* %2, %struct.wav_header** %header, align 8
  %3 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header_size = getelementptr inbounds %struct.sound, %struct.sound* %3, i32 0, i32 3
  %4 = load i32, i32* %header_size, align 4
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 44
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header3 = getelementptr inbounds %struct.sound, %struct.sound* %5, i32 0, i32 2
  %6 = load i8*, i8** %header3, align 8
  %call = call i32 @memcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #10
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %magic = getelementptr inbounds %struct.wav_header, %struct.wav_header* %7, i32 0, i32 0
  %8 = load i32, i32* %magic, align 4
  %call6 = call i32 @le2hl(i32 %8)
  %9 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %magic7 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %9, i32 0, i32 0
  store i32 %call6, i32* %magic7, align 4
  %10 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %length = getelementptr inbounds %struct.wav_header, %struct.wav_header* %10, i32 0, i32 1
  %11 = load i32, i32* %length, align 4
  %call8 = call i32 @le2hl(i32 %11)
  %12 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %length9 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %12, i32 0, i32 1
  store i32 %call8, i32* %length9, align 4
  %13 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %chunk_type = getelementptr inbounds %struct.wav_header, %struct.wav_header* %13, i32 0, i32 2
  %14 = load i32, i32* %chunk_type, align 4
  %call10 = call i32 @le2hl(i32 %14)
  %15 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %chunk_type11 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %15, i32 0, i32 2
  store i32 %call10, i32* %chunk_type11, align 4
  %16 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %chunk_format = getelementptr inbounds %struct.wav_header, %struct.wav_header* %16, i32 0, i32 3
  %17 = load i32, i32* %chunk_format, align 4
  %call12 = call i32 @le2hl(i32 %17)
  %18 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %chunk_format13 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %18, i32 0, i32 3
  store i32 %call12, i32* %chunk_format13, align 4
  %19 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %chunk_length = getelementptr inbounds %struct.wav_header, %struct.wav_header* %19, i32 0, i32 4
  %20 = load i32, i32* %chunk_length, align 4
  %call14 = call i32 @le2hl(i32 %20)
  %21 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %chunk_length15 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %21, i32 0, i32 4
  store i32 %call14, i32* %chunk_length15, align 4
  %22 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %format = getelementptr inbounds %struct.wav_header, %struct.wav_header* %22, i32 0, i32 5
  %23 = load i16, i16* %format, align 2
  %call16 = call zeroext i16 @le2hs(i16 zeroext %23)
  %24 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %format17 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %24, i32 0, i32 5
  store i16 %call16, i16* %format17, align 2
  %25 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %channels = getelementptr inbounds %struct.wav_header, %struct.wav_header* %25, i32 0, i32 6
  %26 = load i16, i16* %channels, align 2
  %call18 = call zeroext i16 @le2hs(i16 zeroext %26)
  %27 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %channels19 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %27, i32 0, i32 6
  store i16 %call18, i16* %channels19, align 2
  %28 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %sample_rate = getelementptr inbounds %struct.wav_header, %struct.wav_header* %28, i32 0, i32 7
  %29 = load i32, i32* %sample_rate, align 4
  %call20 = call i32 @le2hl(i32 %29)
  %30 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %sample_rate21 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %30, i32 0, i32 7
  store i32 %call20, i32* %sample_rate21, align 4
  %31 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %bytes_per_second = getelementptr inbounds %struct.wav_header, %struct.wav_header* %31, i32 0, i32 8
  %32 = load i32, i32* %bytes_per_second, align 4
  %call22 = call i32 @le2hl(i32 %32)
  %33 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %bytes_per_second23 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %33, i32 0, i32 8
  store i32 %call22, i32* %bytes_per_second23, align 4
  %34 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %sample_size = getelementptr inbounds %struct.wav_header, %struct.wav_header* %34, i32 0, i32 9
  %35 = load i16, i16* %sample_size, align 2
  %call24 = call zeroext i16 @le2hs(i16 zeroext %35)
  %36 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %sample_size25 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %36, i32 0, i32 9
  store i16 %call24, i16* %sample_size25, align 2
  %37 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %precision = getelementptr inbounds %struct.wav_header, %struct.wav_header* %37, i32 0, i32 10
  %38 = load i16, i16* %precision, align 2
  %call26 = call zeroext i16 @le2hs(i16 zeroext %38)
  %39 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %precision27 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %39, i32 0, i32 10
  store i16 %call26, i16* %precision27, align 2
  %40 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %chunk_data = getelementptr inbounds %struct.wav_header, %struct.wav_header* %40, i32 0, i32 11
  %41 = load i32, i32* %chunk_data, align 4
  %call28 = call i32 @le2hl(i32 %41)
  %42 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %chunk_data29 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %42, i32 0, i32 11
  store i32 %call28, i32* %chunk_data29, align 4
  %43 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %data_length = getelementptr inbounds %struct.wav_header, %struct.wav_header* %43, i32 0, i32 12
  %44 = load i32, i32* %data_length, align 4
  %call30 = call i32 @le2hl(i32 %44)
  %45 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %data_length31 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %45, i32 0, i32 12
  store i32 %call30, i32* %data_length31, align 4
  %46 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %type = getelementptr inbounds %struct.sound, %struct.sound* %46, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %47 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %play = getelementptr inbounds %struct.sound, %struct.sound* %47, i32 0, i32 5
  store void (%struct.sound*, %struct.sound_device*)* @wav_play, void (%struct.sound*, %struct.sound_device*)** %play, align 8
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %48 = load i1, i1* %retval
  ret i1 %48
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @au_init(%struct.sound* %s) #0 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca %struct.sound*, align 8
  %header = alloca %struct.au_header*, align 8
  store %struct.sound* %s, %struct.sound** %s.addr, align 8
  %0 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header1 = getelementptr inbounds %struct.sound, %struct.sound* %0, i32 0, i32 2
  %1 = load i8*, i8** %header1, align 8
  %2 = bitcast i8* %1 to %struct.au_header*
  store %struct.au_header* %2, %struct.au_header** %header, align 8
  %3 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header_size = getelementptr inbounds %struct.sound, %struct.sound* %3, i32 0, i32 3
  %4 = load i32, i32* %header_size, align 4
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 24
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header3 = getelementptr inbounds %struct.sound, %struct.sound* %5, i32 0, i32 2
  %6 = load i8*, i8** %header3, align 8
  %call = call i32 @memcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 4) #10
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.au_header*, %struct.au_header** %header, align 8
  %magic_number = getelementptr inbounds %struct.au_header, %struct.au_header* %7, i32 0, i32 0
  %8 = load i32, i32* %magic_number, align 4
  %call6 = call i32 @be2hl(i32 %8)
  %9 = load %struct.au_header*, %struct.au_header** %header, align 8
  %magic_number7 = getelementptr inbounds %struct.au_header, %struct.au_header* %9, i32 0, i32 0
  store i32 %call6, i32* %magic_number7, align 4
  %10 = load %struct.au_header*, %struct.au_header** %header, align 8
  %data_offset = getelementptr inbounds %struct.au_header, %struct.au_header* %10, i32 0, i32 1
  %11 = load i32, i32* %data_offset, align 4
  %call8 = call i32 @be2hl(i32 %11)
  %12 = load %struct.au_header*, %struct.au_header** %header, align 8
  %data_offset9 = getelementptr inbounds %struct.au_header, %struct.au_header* %12, i32 0, i32 1
  store i32 %call8, i32* %data_offset9, align 4
  %13 = load %struct.au_header*, %struct.au_header** %header, align 8
  %data_size = getelementptr inbounds %struct.au_header, %struct.au_header* %13, i32 0, i32 2
  %14 = load i32, i32* %data_size, align 4
  %call10 = call i32 @be2hl(i32 %14)
  %15 = load %struct.au_header*, %struct.au_header** %header, align 8
  %data_size11 = getelementptr inbounds %struct.au_header, %struct.au_header* %15, i32 0, i32 2
  store i32 %call10, i32* %data_size11, align 4
  %16 = load %struct.au_header*, %struct.au_header** %header, align 8
  %encoding = getelementptr inbounds %struct.au_header, %struct.au_header* %16, i32 0, i32 3
  %17 = load i32, i32* %encoding, align 4
  %call12 = call i32 @be2hl(i32 %17)
  %18 = load %struct.au_header*, %struct.au_header** %header, align 8
  %encoding13 = getelementptr inbounds %struct.au_header, %struct.au_header* %18, i32 0, i32 3
  store i32 %call12, i32* %encoding13, align 4
  %19 = load %struct.au_header*, %struct.au_header** %header, align 8
  %sample_rate = getelementptr inbounds %struct.au_header, %struct.au_header* %19, i32 0, i32 4
  %20 = load i32, i32* %sample_rate, align 4
  %call14 = call i32 @be2hl(i32 %20)
  %21 = load %struct.au_header*, %struct.au_header** %header, align 8
  %sample_rate15 = getelementptr inbounds %struct.au_header, %struct.au_header* %21, i32 0, i32 4
  store i32 %call14, i32* %sample_rate15, align 4
  %22 = load %struct.au_header*, %struct.au_header** %header, align 8
  %channels = getelementptr inbounds %struct.au_header, %struct.au_header* %22, i32 0, i32 5
  %23 = load i32, i32* %channels, align 4
  %call16 = call i32 @be2hl(i32 %23)
  %24 = load %struct.au_header*, %struct.au_header** %header, align 8
  %channels17 = getelementptr inbounds %struct.au_header, %struct.au_header* %24, i32 0, i32 5
  store i32 %call16, i32* %channels17, align 4
  %25 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %type = getelementptr inbounds %struct.sound, %struct.sound* %25, i32 0, i32 0
  store i32 1, i32* %type, align 4
  %26 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %play = getelementptr inbounds %struct.sound, %struct.sound* %26, i32 0, i32 5
  store void (%struct.sound*, %struct.sound_device*)* @au_play, void (%struct.sound*, %struct.sound_device*)** %play, align 8
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load i1, i1* %retval
  ret i1 %27
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #7

; Function Attrs: nounwind uwtable
define internal i32 @le2hl(i32 %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @le2hs(i16 zeroext %value) #0 {
entry:
  %value.addr = alloca i16, align 2
  store i16 %value, i16* %value.addr, align 2
  %0 = load i16, i16* %value.addr, align 2
  ret i16 %0
}

; Function Attrs: nounwind uwtable
define internal void @wav_play(%struct.sound* %s, %struct.sound_device* %sd) #0 {
entry:
  %s.addr = alloca %struct.sound*, align 8
  %sd.addr = alloca %struct.sound_device*, align 8
  %header = alloca %struct.wav_header*, align 8
  %nbytes = alloca i64, align 8
  %blksize = alloca i64, align 8
  %data_left = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %buffer = alloca i8*, align 8
  store %struct.sound* %s, %struct.sound** %s.addr, align 8
  store %struct.sound_device* %sd, %struct.sound_device** %sd.addr, align 8
  %0 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header1 = getelementptr inbounds %struct.sound, %struct.sound* %0, i32 0, i32 2
  %1 = load i8*, i8** %header1, align 8
  %2 = bitcast i8* %1 to %struct.wav_header*
  store %struct.wav_header* %2, %struct.wav_header** %header, align 8
  %3 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %choose_format = getelementptr inbounds %struct.sound_device, %struct.sound_device* %3, i32 0, i32 11
  %4 = load void (%struct.sound_device*, %struct.sound*)*, void (%struct.sound_device*, %struct.sound*)** %choose_format, align 8
  %5 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %6 = load %struct.sound*, %struct.sound** %s.addr, align 8
  call void %4(%struct.sound_device* %5, %struct.sound* %6)
  %7 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %sample_size = getelementptr inbounds %struct.wav_header, %struct.wav_header* %7, i32 0, i32 9
  %8 = load i16, i16* %sample_size, align 2
  %conv = zext i16 %8 to i32
  %9 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %sample_size2 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %9, i32 0, i32 4
  store i32 %conv, i32* %sample_size2, align 4
  %10 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %sample_rate = getelementptr inbounds %struct.wav_header, %struct.wav_header* %10, i32 0, i32 7
  %11 = load i32, i32* %sample_rate, align 4
  %12 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %sample_rate3 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %12, i32 0, i32 5
  store i32 %11, i32* %sample_rate3, align 4
  %13 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %bytes_per_second = getelementptr inbounds %struct.wav_header, %struct.wav_header* %13, i32 0, i32 8
  %14 = load i32, i32* %bytes_per_second, align 4
  %15 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %bps = getelementptr inbounds %struct.sound_device, %struct.sound_device* %15, i32 0, i32 6
  store i32 %14, i32* %bps, align 4
  %16 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %channels = getelementptr inbounds %struct.wav_header, %struct.wav_header* %16, i32 0, i32 6
  %17 = load i16, i16* %channels, align 2
  %conv4 = zext i16 %17 to i32
  %18 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %channels5 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %18, i32 0, i32 7
  store i32 %conv4, i32* %channels5, align 4
  %19 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %configure = getelementptr inbounds %struct.sound_device, %struct.sound_device* %19, i32 0, i32 10
  %20 = load void (%struct.sound_device*)*, void (%struct.sound_device*)** %configure, align 8
  %21 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  call void %20(%struct.sound_device* %21)
  %22 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %data = getelementptr inbounds %struct.sound, %struct.sound* %22, i32 0, i32 4
  %23 = load i64, i64* %data, align 8
  %call = call zeroext i1 @STRINGP(i64 %23)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %24 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %write = getelementptr inbounds %struct.sound_device, %struct.sound_device* %24, i32 0, i32 13
  %25 = load void (%struct.sound_device*, i8*, i64)*, void (%struct.sound_device*, i8*, i64)** %write, align 8
  %26 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %27 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %data6 = getelementptr inbounds %struct.sound, %struct.sound* %27, i32 0, i32 4
  %28 = load i64, i64* %data6, align 8
  %call7 = call i8* @SSDATA(i64 %28)
  %add.ptr = getelementptr inbounds i8, i8* %call7, i64 44
  %29 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %data8 = getelementptr inbounds %struct.sound, %struct.sound* %29, i32 0, i32 4
  %30 = load i64, i64* %data8, align 8
  %call9 = call i64 @SBYTES(i64 %30)
  %sub = sub i64 %call9, 44
  call void %25(%struct.sound_device* %26, i8* %add.ptr, i64 %sub)
  br label %if.end.42

if.else:                                          ; preds = %entry
  store i64 0, i64* %nbytes, align 8
  %31 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %period_size = getelementptr inbounds %struct.sound_device, %struct.sound_device* %31, i32 0, i32 12
  %32 = load i64 (%struct.sound_device*)*, i64 (%struct.sound_device*)** %period_size, align 8
  %tobool = icmp ne i64 (%struct.sound_device*)* %32, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %33 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %period_size10 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %33, i32 0, i32 12
  %34 = load i64 (%struct.sound_device*)*, i64 (%struct.sound_device*)** %period_size10, align 8
  %35 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %call11 = call i64 %34(%struct.sound_device* %35)
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call11, %cond.true ], [ 2048, %cond.false ]
  store i64 %cond, i64* %blksize, align 8
  %36 = load %struct.wav_header*, %struct.wav_header** %header, align 8
  %data_length = getelementptr inbounds %struct.wav_header, %struct.wav_header* %36, i32 0, i32 12
  %37 = load i32, i32* %data_length, align 4
  %conv12 = zext i32 %37 to i64
  store i64 %conv12, i64* %data_left, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call13 = call i64 @SPECPDL_INDEX()
  store i64 %call13, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %38 = load i64, i64* %blksize, align 8
  %39 = load i64, i64* %sa_avail, align 8
  %cmp = icmp sle i64 %38, %39
  br i1 %cmp, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end
  %40 = load i64, i64* %blksize, align 8
  %41 = load i64, i64* %sa_avail, align 8
  %sub16 = sub nsw i64 %41, %40
  store i64 %sub16, i64* %sa_avail, align 8
  %42 = load i64, i64* %blksize, align 8
  %43 = alloca i8, i64 %42
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.end
  store i8 1, i8* %sa_must_free, align 1
  %44 = load i64, i64* %blksize, align 8
  %call18 = call i8* @record_xmalloc(i64 %44)
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.15
  %cond20 = phi i8* [ %43, %cond.true.15 ], [ %call18, %cond.false.17 ]
  store i8* %cond20, i8** %buffer, align 8
  %45 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %fd = getelementptr inbounds %struct.sound, %struct.sound* %45, i32 0, i32 1
  %46 = load i32, i32* %fd, align 4
  %call21 = call i64 @lseek(i32 %46, i64 44, i32 0) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end.19
  %47 = load i64, i64* %data_left, align 8
  %cmp22 = icmp sgt i64 %47, 0
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %48 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %fd24 = getelementptr inbounds %struct.sound, %struct.sound* %48, i32 0, i32 1
  %49 = load i32, i32* %fd24, align 4
  %50 = load i8*, i8** %buffer, align 8
  %51 = load i64, i64* %blksize, align 8
  %call25 = call i64 @emacs_read(i32 %49, i8* %50, i64 %51)
  store i64 %call25, i64* %nbytes, align 8
  %cmp26 = icmp sgt i64 %call25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %52 = phi i1 [ false, %while.cond ], [ %cmp26, %land.rhs ]
  br i1 %52, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %53 = load i64, i64* %data_left, align 8
  %54 = load i64, i64* %nbytes, align 8
  %cmp28 = icmp slt i64 %53, %54
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %while.body
  %55 = load i64, i64* %data_left, align 8
  store i64 %55, i64* %nbytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.30, %while.body
  %56 = load i64, i64* %nbytes, align 8
  %57 = load i64, i64* %data_left, align 8
  %sub31 = sub nsw i64 %57, %56
  store i64 %sub31, i64* %data_left, align 8
  %58 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %write32 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %58, i32 0, i32 13
  %59 = load void (%struct.sound_device*, i8*, i64)*, void (%struct.sound_device*, i8*, i64)** %write32, align 8
  %60 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %61 = load i8*, i8** %buffer, align 8
  %62 = load i64, i64* %nbytes, align 8
  call void %59(%struct.sound_device* %60, i8* %61, i64 %62)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %63 = load i64, i64* %nbytes, align 8
  %cmp33 = icmp slt i64 %63, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %while.end
  call void @sound_perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #8
  unreachable

if.end.36:                                        ; preds = %while.end
  br label %do.body

do.body:                                          ; preds = %if.end.36
  %64 = load i8, i8* %sa_must_free, align 1
  %tobool37 = trunc i8 %64 to i1
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %65 = load i64, i64* %sa_count, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  %call40 = call i64 @unbind_to(i64 %65, i64 %call39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.41
  br label %if.end.42

if.end.42:                                        ; preds = %do.end, %if.then
  ret void
}

declare i8* @SSDATA(i64) #1

declare i8* @record_xmalloc(i64) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #6

; Function Attrs: nounwind uwtable
define internal i32 @be2hl(i32 %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  store i32 %0, i32* %__x, align 4
  %1 = load i32, i32* %__x, align 4
  %2 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1) #9, !srcloc !1
  store i32 %2, i32* %__v, align 4
  %3 = load i32, i32* %__v, align 4
  store i32 %3, i32* %tmp
  %4 = load i32, i32* %tmp
  store i32 %4, i32* %value.addr, align 4
  %5 = load i32, i32* %value.addr, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @au_play(%struct.sound* %s, %struct.sound_device* %sd) #0 {
entry:
  %s.addr = alloca %struct.sound*, align 8
  %sd.addr = alloca %struct.sound_device*, align 8
  %header = alloca %struct.au_header*, align 8
  %blksize = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %buffer = alloca i8*, align 8
  store %struct.sound* %s, %struct.sound** %s.addr, align 8
  store %struct.sound_device* %sd, %struct.sound_device** %sd.addr, align 8
  %0 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header1 = getelementptr inbounds %struct.sound, %struct.sound* %0, i32 0, i32 2
  %1 = load i8*, i8** %header1, align 8
  %2 = bitcast i8* %1 to %struct.au_header*
  store %struct.au_header* %2, %struct.au_header** %header, align 8
  %3 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %sample_size = getelementptr inbounds %struct.sound_device, %struct.sound_device* %3, i32 0, i32 4
  store i32 0, i32* %sample_size, align 4
  %4 = load %struct.au_header*, %struct.au_header** %header, align 8
  %sample_rate = getelementptr inbounds %struct.au_header, %struct.au_header* %4, i32 0, i32 4
  %5 = load i32, i32* %sample_rate, align 4
  %6 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %sample_rate2 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %6, i32 0, i32 5
  store i32 %5, i32* %sample_rate2, align 4
  %7 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %bps = getelementptr inbounds %struct.sound_device, %struct.sound_device* %7, i32 0, i32 6
  store i32 0, i32* %bps, align 4
  %8 = load %struct.au_header*, %struct.au_header** %header, align 8
  %channels = getelementptr inbounds %struct.au_header, %struct.au_header* %8, i32 0, i32 5
  %9 = load i32, i32* %channels, align 4
  %10 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %channels3 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %10, i32 0, i32 7
  store i32 %9, i32* %channels3, align 4
  %11 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %choose_format = getelementptr inbounds %struct.sound_device, %struct.sound_device* %11, i32 0, i32 11
  %12 = load void (%struct.sound_device*, %struct.sound*)*, void (%struct.sound_device*, %struct.sound*)** %choose_format, align 8
  %13 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %14 = load %struct.sound*, %struct.sound** %s.addr, align 8
  call void %12(%struct.sound_device* %13, %struct.sound* %14)
  %15 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %configure = getelementptr inbounds %struct.sound_device, %struct.sound_device* %15, i32 0, i32 10
  %16 = load void (%struct.sound_device*)*, void (%struct.sound_device*)** %configure, align 8
  %17 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  call void %16(%struct.sound_device* %17)
  %18 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %data = getelementptr inbounds %struct.sound, %struct.sound* %18, i32 0, i32 4
  %19 = load i64, i64* %data, align 8
  %call = call zeroext i1 @STRINGP(i64 %19)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %20 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %write = getelementptr inbounds %struct.sound_device, %struct.sound_device* %20, i32 0, i32 13
  %21 = load void (%struct.sound_device*, i8*, i64)*, void (%struct.sound_device*, i8*, i64)** %write, align 8
  %22 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %23 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %data4 = getelementptr inbounds %struct.sound, %struct.sound* %23, i32 0, i32 4
  %24 = load i64, i64* %data4, align 8
  %call5 = call i8* @SSDATA(i64 %24)
  %25 = load %struct.au_header*, %struct.au_header** %header, align 8
  %data_offset = getelementptr inbounds %struct.au_header, %struct.au_header* %25, i32 0, i32 1
  %26 = load i32, i32* %data_offset, align 4
  %idx.ext = zext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call5, i64 %idx.ext
  %27 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %data6 = getelementptr inbounds %struct.sound, %struct.sound* %27, i32 0, i32 4
  %28 = load i64, i64* %data6, align 8
  %call7 = call i64 @SBYTES(i64 %28)
  %29 = load %struct.au_header*, %struct.au_header** %header, align 8
  %data_offset8 = getelementptr inbounds %struct.au_header, %struct.au_header* %29, i32 0, i32 1
  %30 = load i32, i32* %data_offset8, align 4
  %conv = zext i32 %30 to i64
  %sub = sub nsw i64 %call7, %conv
  call void %21(%struct.sound_device* %22, i8* %add.ptr, i64 %sub)
  br label %if.end.35

if.else:                                          ; preds = %entry
  %31 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %period_size = getelementptr inbounds %struct.sound_device, %struct.sound_device* %31, i32 0, i32 12
  %32 = load i64 (%struct.sound_device*)*, i64 (%struct.sound_device*)** %period_size, align 8
  %tobool = icmp ne i64 (%struct.sound_device*)* %32, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %33 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %period_size9 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %33, i32 0, i32 12
  %34 = load i64 (%struct.sound_device*)*, i64 (%struct.sound_device*)** %period_size9, align 8
  %35 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %call10 = call i64 %34(%struct.sound_device* %35)
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ 2048, %cond.false ]
  store i64 %cond, i64* %blksize, align 8
  %36 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %fd = getelementptr inbounds %struct.sound, %struct.sound* %36, i32 0, i32 1
  %37 = load i32, i32* %fd, align 4
  %38 = load %struct.au_header*, %struct.au_header** %header, align 8
  %data_offset11 = getelementptr inbounds %struct.au_header, %struct.au_header* %38, i32 0, i32 1
  %39 = load i32, i32* %data_offset11, align 4
  %conv12 = zext i32 %39 to i64
  %call13 = call i64 @lseek(i32 %37, i64 %conv12, i32 0) #4
  store i64 16384, i64* %sa_avail, align 8
  %call14 = call i64 @SPECPDL_INDEX()
  store i64 %call14, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %40 = load i64, i64* %blksize, align 8
  %41 = load i64, i64* %sa_avail, align 8
  %cmp = icmp sle i64 %40, %41
  br i1 %cmp, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %cond.end
  %42 = load i64, i64* %blksize, align 8
  %43 = load i64, i64* %sa_avail, align 8
  %sub17 = sub nsw i64 %43, %42
  store i64 %sub17, i64* %sa_avail, align 8
  %44 = load i64, i64* %blksize, align 8
  %45 = alloca i8, i64 %44
  br label %cond.end.20

cond.false.18:                                    ; preds = %cond.end
  store i8 1, i8* %sa_must_free, align 1
  %46 = load i64, i64* %blksize, align 8
  %call19 = call i8* @record_xmalloc(i64 %46)
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.16
  %cond21 = phi i8* [ %45, %cond.true.16 ], [ %call19, %cond.false.18 ]
  store i8* %cond21, i8** %buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.20
  %47 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %fd22 = getelementptr inbounds %struct.sound, %struct.sound* %47, i32 0, i32 1
  %48 = load i32, i32* %fd22, align 4
  %49 = load i8*, i8** %buffer, align 8
  %50 = load i64, i64* %blksize, align 8
  %call23 = call i64 @emacs_read(i32 %48, i8* %49, i64 %50)
  store i64 %call23, i64* %nbytes, align 8
  %cmp24 = icmp sgt i64 %call23, 0
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %write26 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %51, i32 0, i32 13
  %52 = load void (%struct.sound_device*, i8*, i64)*, void (%struct.sound_device*, i8*, i64)** %write26, align 8
  %53 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %54 = load i8*, i8** %buffer, align 8
  %55 = load i64, i64* %nbytes, align 8
  call void %52(%struct.sound_device* %53, i8* %54, i64 %55)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load i64, i64* %nbytes, align 8
  %cmp27 = icmp slt i64 %56, 0
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %while.end
  call void @sound_perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %while.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %57 = load i8, i8* %sa_must_free, align 1
  %tobool30 = trunc i8 %57 to i1
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %58 = load i64, i64* %sa_count, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %call33 = call i64 @unbind_to(i64 %58, i64 %call32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.34
  br label %if.end.35

if.end.35:                                        ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @string_default(i64 %s, i8* %default_value) #0 {
entry:
  %s.addr = alloca i64, align 8
  %default_value.addr = alloca i8*, align 8
  store i64 %s, i64* %s.addr, align 8
  store i8* %default_value, i8** %default_value.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %s.addr, align 8
  %call1 = call i8* @SSDATA(i64 %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8*, i8** %default_value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ %2, %cond.false ]
  ret i8* %cond
}

declare i32 @emacs_open(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @vox_open(%struct.sound_device* %sd) #0 {
entry:
  %sd.addr = alloca %struct.sound_device*, align 8
  %file = alloca i8*, align 8
  store %struct.sound_device* %sd, %struct.sound_device** %sd.addr, align 8
  %0 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %file1 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %0, i32 0, i32 0
  %1 = load i64, i64* %file1, align 8
  %call = call i8* @string_default(i64 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  store i8* %call, i8** %file, align 8
  %2 = load i8*, i8** %file, align 8
  %call2 = call i32 @emacs_open(i8* %2, i32 1, i32 0)
  %3 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd = getelementptr inbounds %struct.sound_device, %struct.sound_device* %3, i32 0, i32 1
  store i32 %call2, i32* %fd, align 4
  %4 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd3 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %4, i32 0, i32 1
  %5 = load i32, i32* %fd3, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %file, align 8
  call void @sound_perror(i8* %6) #8
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vox_close(%struct.sound_device* %sd) #0 {
entry:
  %sd.addr = alloca %struct.sound_device*, align 8
  %blocked = alloca %struct.__sigset_t, align 8
  %oldset = alloca %struct.__sigset_t, align 8
  store %struct.sound_device* %sd, %struct.sound_device** %sd.addr, align 8
  %0 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd = getelementptr inbounds %struct.sound_device, %struct.sound_device* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sigemptyset(%struct.__sigset_t* %blocked) #4
  %call1 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 29) #4
  %call2 = call i32 @pthread_sigmask(i32 0, %struct.__sigset_t* %blocked, %struct.__sigset_t* %oldset) #4
  call void @turn_on_atimers(i1 zeroext false)
  %2 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd3 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %2, i32 0, i32 1
  %3 = load i32, i32* %fd3, align 4
  %call4 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 20481, i8* null) #4
  call void @turn_on_atimers(i1 zeroext true)
  %call5 = call i32 @pthread_sigmask(i32 2, %struct.__sigset_t* %oldset, %struct.__sigset_t* null) #4
  %4 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd6 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %4, i32 0, i32 1
  %5 = load i32, i32* %fd6, align 4
  %call7 = call i32 @emacs_close(i32 %5)
  %6 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd8 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %6, i32 0, i32 1
  store i32 -1, i32* %fd8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vox_configure(%struct.sound_device* %sd) #0 {
entry:
  %sd.addr = alloca %struct.sound_device*, align 8
  %val = alloca i32, align 4
  %oldset = alloca %struct.__sigset_t, align 8
  %blocked = alloca %struct.__sigset_t, align 8
  %volume40 = alloca i32, align 4
  store %struct.sound_device* %sd, %struct.sound_device** %sd.addr, align 8
  call void @turn_on_atimers(i1 zeroext false)
  %call = call i32 @sigemptyset(%struct.__sigset_t* %blocked) #4
  %call1 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 29) #4
  %call2 = call i32 @pthread_sigmask(i32 0, %struct.__sigset_t* %blocked, %struct.__sigset_t* %oldset) #4
  %0 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %format = getelementptr inbounds %struct.sound_device, %struct.sound_device* %0, i32 0, i32 2
  %1 = load i32, i32* %format, align 4
  store i32 %1, i32* %val, align 4
  %2 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd = getelementptr inbounds %struct.sound_device, %struct.sound_device* %2, i32 0, i32 1
  %3 = load i32, i32* %fd, align 4
  %4 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %format3 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %4, i32 0, i32 2
  %call4 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 3221508101, i32* %format3) #4
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %val, align 4
  %6 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %format5 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %6, i32 0, i32 2
  %7 = load i32, i32* %format5, align 4
  %cmp6 = icmp ne i32 %5, %7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @sound_perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %channels = getelementptr inbounds %struct.sound_device, %struct.sound_device* %8, i32 0, i32 7
  %9 = load i32, i32* %channels, align 4
  %cmp7 = icmp ne i32 %9, 1
  %conv = zext i1 %cmp7 to i32
  store i32 %conv, i32* %val, align 4
  %10 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd8 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %10, i32 0, i32 1
  %11 = load i32, i32* %fd8, align 4
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %11, i64 3221508099, i32* %val) #4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.18, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end
  %12 = load i32, i32* %val, align 4
  %13 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %channels13 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %13, i32 0, i32 7
  %14 = load i32, i32* %channels13, align 4
  %cmp14 = icmp ne i32 %14, 1
  %conv15 = zext i1 %cmp14 to i32
  %cmp16 = icmp ne i32 %12, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.12, %if.end
  call void @sound_perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #8
  unreachable

if.end.19:                                        ; preds = %lor.lhs.false.12
  %15 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %sample_rate = getelementptr inbounds %struct.sound_device, %struct.sound_device* %15, i32 0, i32 5
  %16 = load i32, i32* %sample_rate, align 4
  %cmp20 = icmp sgt i32 %16, 0
  br i1 %cmp20, label %if.then.22, label %if.end.36

if.then.22:                                       ; preds = %if.end.19
  %17 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %sample_rate23 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %17, i32 0, i32 5
  %18 = load i32, i32* %sample_rate23, align 4
  store i32 %18, i32* %val, align 4
  %19 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd24 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %19, i32 0, i32 1
  %20 = load i32, i32* %fd24, align 4
  %21 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %sample_rate25 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %21, i32 0, i32 5
  %call26 = call i32 (i32, i64, ...) @ioctl(i32 %20, i64 3221508098, i32* %sample_rate25) #4
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.22
  call void @sound_perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #8
  unreachable

if.else:                                          ; preds = %if.then.22
  %22 = load i32, i32* %val, align 4
  %23 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %sample_rate30 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %23, i32 0, i32 5
  %24 = load i32, i32* %sample_rate30, align 4
  %cmp31 = icmp ne i32 %22, %24
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else
  call void @sound_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.19
  %25 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %volume = getelementptr inbounds %struct.sound_device, %struct.sound_device* %25, i32 0, i32 3
  %26 = load i32, i32* %volume, align 4
  %cmp37 = icmp sgt i32 %26, 0
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.end.36
  %27 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %volume41 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %27, i32 0, i32 3
  %28 = load i32, i32* %volume41, align 4
  %and = and i32 %28, 255
  store i32 %and, i32* %volume40, align 4
  %29 = load i32, i32* %volume40, align 4
  %shl = shl i32 %29, 8
  %30 = load i32, i32* %volume40, align 4
  %or = or i32 %30, %shl
  store i32 %or, i32* %volume40, align 4
  %31 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd42 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %31, i32 0, i32 1
  %32 = load i32, i32* %fd42, align 4
  %call43 = call i32 (i32, i64, ...) @ioctl(i32 %32, i64 3221507332, i32* %volume40) #4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %if.end.36
  call void @turn_on_atimers(i1 zeroext true)
  %call45 = call i32 @pthread_sigmask(i32 2, %struct.__sigset_t* %oldset, %struct.__sigset_t* null) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vox_choose_format(%struct.sound_device* %sd, %struct.sound* %s) #0 {
entry:
  %sd.addr = alloca %struct.sound_device*, align 8
  %s.addr = alloca %struct.sound*, align 8
  %h = alloca %struct.wav_header*, align 8
  %header17 = alloca %struct.au_header*, align 8
  store %struct.sound_device* %sd, %struct.sound_device** %sd.addr, align 8
  store %struct.sound* %s, %struct.sound** %s.addr, align 8
  %0 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %type = getelementptr inbounds %struct.sound, %struct.sound* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.12

if.then:                                          ; preds = %entry
  %2 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header = getelementptr inbounds %struct.sound, %struct.sound* %2, i32 0, i32 2
  %3 = load i8*, i8** %header, align 8
  %4 = bitcast i8* %3 to %struct.wav_header*
  store %struct.wav_header* %4, %struct.wav_header** %h, align 8
  %5 = load %struct.wav_header*, %struct.wav_header** %h, align 8
  %precision = getelementptr inbounds %struct.wav_header, %struct.wav_header* %5, i32 0, i32 10
  %6 = load i16, i16* %precision, align 2
  %conv = zext i16 %6 to i32
  %cmp1 = icmp eq i32 %conv, 8
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %format = getelementptr inbounds %struct.sound_device, %struct.sound_device* %7, i32 0, i32 2
  store i32 8, i32* %format, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then
  %8 = load %struct.wav_header*, %struct.wav_header** %h, align 8
  %precision4 = getelementptr inbounds %struct.wav_header, %struct.wav_header* %8, i32 0, i32 10
  %9 = load i16, i16* %precision4, align 2
  %conv5 = zext i16 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 16
  br i1 %cmp6, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %10 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %format9 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %10, i32 0, i32 2
  store i32 16, i32* %format9, align 4
  br label %if.end

if.else.10:                                       ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.3
  br label %if.end.24

if.else.12:                                       ; preds = %entry
  %11 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %type13 = getelementptr inbounds %struct.sound, %struct.sound* %11, i32 0, i32 0
  %12 = load i32, i32* %type13, align 4
  %cmp14 = icmp eq i32 %12, 1
  br i1 %cmp14, label %if.then.16, label %if.else.22

if.then.16:                                       ; preds = %if.else.12
  %13 = load %struct.sound*, %struct.sound** %s.addr, align 8
  %header18 = getelementptr inbounds %struct.sound, %struct.sound* %13, i32 0, i32 2
  %14 = load i8*, i8** %header18, align 8
  %15 = bitcast i8* %14 to %struct.au_header*
  store %struct.au_header* %15, %struct.au_header** %header17, align 8
  %16 = load %struct.au_header*, %struct.au_header** %header17, align 8
  %encoding = getelementptr inbounds %struct.au_header, %struct.au_header* %16, i32 0, i32 3
  %17 = load i32, i32* %encoding, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.20
    i32 5, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.then.16, %if.then.16, %if.then.16
  %18 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %format19 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %18, i32 0, i32 2
  store i32 1, i32* %format19, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then.16, %if.then.16, %if.then.16, %if.then.16
  %19 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %format21 = getelementptr inbounds %struct.sound_device, %struct.sound_device* %19, i32 0, i32 2
  store i32 16, i32* %format21, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.16
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb.20, %sw.bb
  br label %if.end.23

if.else.22:                                       ; preds = %if.else.12
  call void @emacs_abort() #8
  unreachable

if.end.23:                                        ; preds = %sw.epilog
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vox_write(%struct.sound_device* %sd, i8* %buffer, i64 %nbytes) #0 {
entry:
  %sd.addr = alloca %struct.sound_device*, align 8
  %buffer.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  store %struct.sound_device* %sd, %struct.sound_device** %sd.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load %struct.sound_device*, %struct.sound_device** %sd.addr, align 8
  %fd = getelementptr inbounds %struct.sound_device, %struct.sound_device* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i64, i64* %nbytes.addr, align 8
  %call = call i64 @emacs_write_sig(i32 %1, i8* %2, i64 %3)
  %4 = load i64, i64* %nbytes.addr, align 8
  %cmp = icmp ne i64 %call, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @sound_perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #6

; Function Attrs: nounwind uwtable
define internal void @sound_warning(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  call void @message1(i8* %0)
  ret void
}

declare void @message1(i8*) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

declare i64 @emacs_write_sig(i32, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 364018}
