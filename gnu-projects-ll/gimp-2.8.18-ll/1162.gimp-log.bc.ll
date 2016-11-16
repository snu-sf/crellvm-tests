; ModuleID = './app/gimp-log.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GDebugKey = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_log_flags = global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"GIMP_LOG\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"GIMP_DEBUG\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"G_MESSAGES_DEBUG\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@log_keys = internal constant [19 x %struct._GDebugKey] [%struct._GDebugKey { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 1 }, %struct._GDebugKey { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 2 }, %struct._GDebugKey { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 4 }, %struct._GDebugKey { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 8 }, %struct._GDebugKey { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 16 }, %struct._GDebugKey { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 32 }, %struct._GDebugKey { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 64 }, %struct._GDebugKey { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 128 }, %struct._GDebugKey { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 256 }, %struct._GDebugKey { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 512 }, %struct._GDebugKey { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 1024 }, %struct._GDebugKey { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 2048 }, %struct._GDebugKey { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 4096 }, %struct._GDebugKey { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 8192 }, %struct._GDebugKey { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 16384 }, %struct._GDebugKey { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 32768 }, %struct._GDebugKey { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 65536 }, %struct._GDebugKey { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 131072 }, %struct._GDebugKey { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 262144 }], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"called\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s(%d): %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"tool-events\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"tool-focus\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"dnd\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"dialog-factory\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"menus\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"save-dialog\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"image-scale\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"shadow-tiles\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"wm\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"floating-selection\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"shm\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"text-editing\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"key-events\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"auto-tab-style\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"instances\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"rectangle-tool\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"brush-cache\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_log_init() #0 {
entry:
  %env_log_val = alloca i8*, align 8
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %env_log_val, align 8
  %0 = load i8*, i8** %env_log_val, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @g_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call1, i8** %env_log_val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %env_log_val, align 8
  %tobool2 = icmp ne i8* %1, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %2 = load i8*, i8** %env_log_val, align 8
  %call4 = call i32 @g_setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* %2, i32 1)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %3 = load i8*, i8** %env_log_val, align 8
  %tobool6 = icmp ne i8* %3, null
  br i1 %tobool6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %if.end.5
  %4 = load i8*, i8** %env_log_val, align 8
  %call8 = call i32 @g_ascii_strcasecmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  store i32 8, i32* @gimp_log_flags, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then.7
  %5 = load i8*, i8** %env_log_val, align 8
  %call10 = call i32 @g_parse_debug_string(i8* %5, %struct._GDebugKey* getelementptr inbounds ([19 x %struct._GDebugKey], [19 x %struct._GDebugKey]* @log_keys, i32 0, i32 0), i32 19)
  store i32 %call10, i32* @gimp_log_flags, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %6 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %6, 65536
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  call void @gimp_debug_enable_instances()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.5
  ret void
}

declare i8* @g_getenv(i8*) #1

declare i32 @g_setenv(i8*, i8*, i32) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i32 @g_parse_debug_string(i8*, %struct._GDebugKey*, i32) #1

declare void @gimp_debug_enable_instances() #1

; Function Attrs: nounwind uwtable
define void @gimp_log(i32 %flags, i8* %function, i32 %line, i8* %format, ...) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %function.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %function, i8** %function.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %flags.addr, align 4
  %1 = load i8*, i8** %function.addr, align 8
  %2 = load i32, i32* %line.addr, align 4
  %3 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_logv(i32 %0, i8* %1, i32 %2, i8* %3, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_logv(i32 %flags, i8* %function, i32 %line, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %function.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %domain = alloca i8*, align 8
  %message = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %function, i8** %function.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8** %domain, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [19 x %struct._GDebugKey], [19 x %struct._GDebugKey]* @log_keys, i32 0, i64 %idxprom
  %value = getelementptr inbounds %struct._GDebugKey, %struct._GDebugKey* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %value, align 4
  %3 = load i32, i32* %flags.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [19 x %struct._GDebugKey], [19 x %struct._GDebugKey]* @log_keys, i32 0, i64 %idxprom4
  %key = getelementptr inbounds %struct._GDebugKey, %struct._GDebugKey* %arrayidx5, i32 0, i32 0
  %5 = load i8*, i8** %key, align 8
  store i8* %5, i8** %domain, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i8*, i8** %format.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.end
  %8 = load i8*, i8** %format.addr, align 8
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call noalias i8* @g_strdup_vprintf(i8* %8, %struct.__va_list_tag* %9)
  store i8* %call, i8** %message, align 8
  br label %if.end.8

if.else:                                          ; preds = %for.end
  %call7 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call7, i8** %message, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  %10 = load i8*, i8** %domain, align 8
  %11 = load i8*, i8** %function.addr, align 8
  %12 = load i32, i32* %line.addr, align 4
  %13 = load i8*, i8** %message, align 8
  call void (i8*, i32, i8*, ...) @g_log(i8* %10, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* %11, i32 %12, i8* %13)
  %14 = load i8*, i8** %message, align 8
  call void @g_free(i8* %14)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
