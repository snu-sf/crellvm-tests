; ModuleID = './libgimpbase/gimpcpuaccel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%union.anon = type { [4 x i32] }

@use_cpu_accel = internal global i32 1, align 4
@cpu_accel.accel = internal global i32 -1, align 4
@.str = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GenuineIntel\00", align 1
@sigill_return = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @gimp_cpu_accel_get_support() #0 {
entry:
  %0 = load i32, i32* @use_cpu_accel, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i32 @cpu_accel() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind readnone uwtable
define internal i32 @cpu_accel() #1 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @cpu_accel.accel, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @cpu_accel.accel, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @arch_accel()
  store i32 %call, i32* @cpu_accel.accel, align 4
  %2 = load i32, i32* @cpu_accel.accel, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @gimp_cpu_accel_set_use(i32 %use) #0 {
entry:
  %use.addr = alloca i32, align 4
  store i32 %use, i32* %use.addr, align 4
  %0 = load i32, i32* %use.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* @use_cpu_accel, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @arch_accel() #0 {
entry:
  %caps = alloca i32, align 4
  %vendor = alloca i32, align 4
  %call = call i32 @arch_get_vendor()
  store i32 %call, i32* %vendor, align 4
  %0 = load i32, i32* %vendor, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %caps, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %call2 = call i32 @arch_accel_amd()
  store i32 %call2, i32* %caps, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %call4 = call i32 @arch_accel_centaur()
  store i32 %call4, i32* %caps, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry, %entry
  %call6 = call i32 @arch_accel_cyrix()
  store i32 %call6, i32* %caps, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call7 = call i32 @arch_accel_intel()
  store i32 %call7, i32* %caps, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %caps, align 4
  %and = and i32 %1, 268435456
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %call8 = call i32 @arch_accel_sse_os_support()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %caps, align 4
  %and10 = and i32 %2, -402653185
  store i32 %and10, i32* %caps, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.epilog
  %3 = load i32, i32* %caps, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @arch_get_vendor() #0 {
entry:
  %retval = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %id = alloca %union.anon, align 4
  %0 = call { i32, i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #6, !srcloc !2
  %asmresult = extractvalue { i32, i32, i32, i32 } %0, 0
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %0, 1
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %0, 2
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %0, 3
  store i32 %asmresult, i32* %eax, align 4
  store i32 %asmresult1, i32* %ebx, align 4
  store i32 %asmresult2, i32* %ecx, align 4
  store i32 %asmresult3, i32* %edx, align 4
  %1 = load i32, i32* %eax, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ebx, align 4
  %idasint = bitcast %union.anon* %id to [4 x i32]*
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %idasint, i32 0, i64 0
  store i32 %2, i32* %arrayidx, align 4
  %3 = load i32, i32* %edx, align 4
  %idasint4 = bitcast %union.anon* %id to [4 x i32]*
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %idasint4, i32 0, i64 1
  store i32 %3, i32* %arrayidx5, align 4
  %4 = load i32, i32* %ecx, align 4
  %idasint6 = bitcast %union.anon* %id to [4 x i32]*
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %idasint6, i32 0, i64 2
  store i32 %4, i32* %arrayidx7, align 4
  %idaschar = bitcast %union.anon* %id to [16 x i8]*
  %arrayidx8 = getelementptr inbounds [16 x i8], [16 x i8]* %idaschar, i32 0, i64 12
  store i8 0, i8* %arrayidx8, align 1
  %idaschar9 = bitcast %union.anon* %id to [16 x i8]*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %idaschar9, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %idaschar12 = bitcast %union.anon* %id to [16 x i8]*
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %idaschar12, i32 0, i32 0
  %call14 = call i32 @strcmp(i8* %arraydecay13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  store i32 255, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.16, %if.then.11, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @arch_accel_amd() #0 {
entry:
  %retval = alloca i32, align 4
  %caps = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %call = call i32 @arch_accel_intel()
  store i32 %call, i32* %caps, align 4
  %0 = call { i32, i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 -2147483648) #6, !srcloc !3
  %asmresult = extractvalue { i32, i32, i32, i32 } %0, 0
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %0, 1
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %0, 2
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %0, 3
  store i32 %asmresult, i32* %eax, align 4
  store i32 %asmresult1, i32* %ebx, align 4
  store i32 %asmresult2, i32* %ecx, align 4
  store i32 %asmresult3, i32* %edx, align 4
  %1 = load i32, i32* %eax, align 4
  %cmp = icmp ult i32 %1, -2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %caps, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = call { i32, i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 -2147483647) #6, !srcloc !4
  %asmresult4 = extractvalue { i32, i32, i32, i32 } %3, 0
  %asmresult5 = extractvalue { i32, i32, i32, i32 } %3, 1
  %asmresult6 = extractvalue { i32, i32, i32, i32 } %3, 2
  %asmresult7 = extractvalue { i32, i32, i32, i32 } %3, 3
  store i32 %asmresult4, i32* %eax, align 4
  store i32 %asmresult5, i32* %ebx, align 4
  store i32 %asmresult6, i32* %ecx, align 4
  store i32 %asmresult7, i32* %edx, align 4
  %4 = load i32, i32* %edx, align 4
  %and = and i32 %4, -2147483648
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %5 = load i32, i32* %caps, align 4
  %or = or i32 %5, 1073741824
  store i32 %or, i32* %caps, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %6 = load i32, i32* %edx, align 4
  %and10 = and i32 %6, 4194304
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %7 = load i32, i32* %caps, align 4
  %or13 = or i32 %7, 536870912
  store i32 %or13, i32* %caps, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %8 = load i32, i32* %caps, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @arch_accel_centaur() #0 {
entry:
  %retval = alloca i32, align 4
  %caps = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %call = call i32 @arch_accel_intel()
  store i32 %call, i32* %caps, align 4
  %0 = call { i32, i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 -2147483648) #6, !srcloc !5
  %asmresult = extractvalue { i32, i32, i32, i32 } %0, 0
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %0, 1
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %0, 2
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %0, 3
  store i32 %asmresult, i32* %eax, align 4
  store i32 %asmresult1, i32* %ebx, align 4
  store i32 %asmresult2, i32* %ecx, align 4
  store i32 %asmresult3, i32* %edx, align 4
  %1 = load i32, i32* %eax, align 4
  %cmp = icmp ult i32 %1, -2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %caps, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = call { i32, i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 -2147483647) #6, !srcloc !6
  %asmresult4 = extractvalue { i32, i32, i32, i32 } %3, 0
  %asmresult5 = extractvalue { i32, i32, i32, i32 } %3, 1
  %asmresult6 = extractvalue { i32, i32, i32, i32 } %3, 2
  %asmresult7 = extractvalue { i32, i32, i32, i32 } %3, 3
  store i32 %asmresult4, i32* %eax, align 4
  store i32 %asmresult5, i32* %ebx, align 4
  store i32 %asmresult6, i32* %ecx, align 4
  store i32 %asmresult7, i32* %edx, align 4
  %4 = load i32, i32* %edx, align 4
  %and = and i32 %4, 8388608
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %5 = load i32, i32* %caps, align 4
  %or = or i32 %5, -2147483648
  store i32 %or, i32* %caps, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %6 = load i32, i32* %edx, align 4
  %and10 = and i32 %6, -2147483648
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %7 = load i32, i32* %caps, align 4
  %or13 = or i32 %7, 1073741824
  store i32 %or13, i32* %caps, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %8 = load i32, i32* %edx, align 4
  %and15 = and i32 %8, 16777216
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %9 = load i32, i32* %caps, align 4
  %or18 = or i32 %9, 536870912
  store i32 %or18, i32* %caps, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.14
  %10 = load i32, i32* %caps, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @arch_accel_cyrix() #0 {
entry:
  %retval = alloca i32, align 4
  %caps = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %call = call i32 @arch_accel_intel()
  store i32 %call, i32* %caps, align 4
  %0 = call { i32, i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #6, !srcloc !7
  %asmresult = extractvalue { i32, i32, i32, i32 } %0, 0
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %0, 1
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %0, 2
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %0, 3
  store i32 %asmresult, i32* %eax, align 4
  store i32 %asmresult1, i32* %ebx, align 4
  store i32 %asmresult2, i32* %ecx, align 4
  store i32 %asmresult3, i32* %edx, align 4
  %1 = load i32, i32* %eax, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %caps, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = call { i32, i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 -2147483647) #6, !srcloc !8
  %asmresult4 = extractvalue { i32, i32, i32, i32 } %3, 0
  %asmresult5 = extractvalue { i32, i32, i32, i32 } %3, 1
  %asmresult6 = extractvalue { i32, i32, i32, i32 } %3, 2
  %asmresult7 = extractvalue { i32, i32, i32, i32 } %3, 3
  store i32 %asmresult4, i32* %eax, align 4
  store i32 %asmresult5, i32* %ebx, align 4
  store i32 %asmresult6, i32* %ecx, align 4
  store i32 %asmresult7, i32* %edx, align 4
  %4 = load i32, i32* %edx, align 4
  %and = and i32 %4, 8388608
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %5 = load i32, i32* %caps, align 4
  %or = or i32 %5, -2147483648
  store i32 %or, i32* %caps, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %6 = load i32, i32* %edx, align 4
  %and10 = and i32 %6, 16777216
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %7 = load i32, i32* %caps, align 4
  %or13 = or i32 %7, 536870912
  store i32 %or13, i32* %caps, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %8 = load i32, i32* %caps, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @arch_accel_intel() #0 {
entry:
  %retval = alloca i32, align 4
  %caps = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 0, i32* %caps, align 4
  %0 = call { i32, i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #6, !srcloc !9
  %asmresult = extractvalue { i32, i32, i32, i32 } %0, 0
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %0, 1
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %0, 2
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %0, 3
  store i32 %asmresult, i32* %eax, align 4
  store i32 %asmresult1, i32* %ebx, align 4
  store i32 %asmresult2, i32* %ecx, align 4
  store i32 %asmresult3, i32* %edx, align 4
  %1 = load i32, i32* %edx, align 4
  %and = and i32 %1, 8388608
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 -2147483648, i32* %caps, align 4
  %2 = load i32, i32* %edx, align 4
  %and4 = and i32 %2, 33554432
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %3 = load i32, i32* %caps, align 4
  %or = or i32 %3, 805306368
  store i32 %or, i32* %caps, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %4 = load i32, i32* %edx, align 4
  %and7 = and i32 %4, 67108864
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %5 = load i32, i32* %caps, align 4
  %or10 = or i32 %5, 134217728
  store i32 %or10, i32* %caps, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %6 = load i32, i32* %ecx, align 4
  %and12 = and i32 %6, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %7 = load i32, i32* %caps, align 4
  %or15 = or i32 %7, 33554432
  store i32 %or15, i32* %caps, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  %8 = load i32, i32* %caps, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @arch_accel_sse_os_support() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @sigill_return, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call void (i32)* @signal(i32 4, void (i32)* @sigill_handler) #9
  call void asm sideeffect "xorps %xmm0, %xmm0", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !10
  %call2 = call void (i32)* @signal(i32 4, void (i32)* null) #9
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval
  ret i32 %0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: nounwind uwtable
define internal void @sigill_handler(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @sigill_return, i32 0, i32 0), i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind returns_twice }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 297040}
!3 = !{i32 298209}
!4 = !{i32 298348}
!5 = !{i32 298761}
!6 = !{i32 298899}
!7 = !{i32 299402}
!8 = !{i32 299523}
!9 = !{i32 297600}
!10 = !{i32 300085}
