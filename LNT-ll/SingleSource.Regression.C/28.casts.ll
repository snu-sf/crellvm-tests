; ModuleID = './SingleSource.Regression.C/28.casts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"\0ACHAR             C = '%c' (%d)\09\09(0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"char to short   s1 = %d\09\09(0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"char to int     i1 = %d\09\09(0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"char to int64_t l1 = %ld\09\09(0x%lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\0Achar to ubyte  uc1 = %u\09\09(0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"char to ushort us1 = %u\09\09(0x%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"char to uint   ui1 = %u\09\09(0x%x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"char to uint64_t ul1 = %lu\09\09(0x%lx)\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\0A\0ASHORT            S = %d\09\09(0x%x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"short to byte    c1 = %d\09\09(0x%x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"short to int     i1 = %d\09\09(0x%x)\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"short to int64_t l1 = %ld\09\09(0x%lx)\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\0Ashort to ubyte  uc1 = %u\09\09(0x%x)\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"short to ushort us1 = %u\09\09(0x%x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"short to uint   ui1 = %u\09\09(0x%x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"short to uint64_t ul1 = %lu\09\09(0x%lx)\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"\0A\0ALONG            L = %ld\09\09(0x%lx)\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"long to byte    c1 = %d\09\09(0x%x)\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"long to short   s1 = %d\09\09(0x%x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"long to int     i1 = %d\09\09(0x%x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"\0Along to ubyte  uc1 = %u\09\09(0x%x)\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"long to ushort us1 = %u\09\09(0x%x)\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"long to uint   ui1 = %u\09\09(0x%x)\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"long to uint64_t ul1 = %lu\09\09(0x%lx)\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"\0A\0AFLOAT            F = %f\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"float to short   s1 = %d\09\09(0x%x)\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"float to int     i1 = %d\09\09(0x%x)\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"float to ushort us1 = %u\09\09(0x%x)\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"float to uint   ui1 = %u\09\09(0x%x)\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"float to uint64_t ul1 = %lu\09\09(0x%lx)\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"\0A\0ADOUBLE            D = %f\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"double to short   s1 = %d\09\09(0x%x)\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"double to int     i1 = %d\09\09(0x%x)\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"double to int64_t l1 = %ld\09\09(0x%lx)\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"double to ushort us1 = %u\09\09(0x%x)\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"double to uint   ui1 = %u\09\09(0x%x)\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"double to uint64_t ul1 = %lu\09\09(0x%lx)\0A\00", align 1
@lls = internal global [6 x i64] [i64 123, i64 -1, i64 -14, i64 14, i64 -9223372036854775808, i64 0], align 16
@.str.37 = private unnamed_addr constant [28 x i8] c"double <- int64_t %ld = %f\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"double <- uint64_t %lu = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %C = alloca i8, align 1
  %c1 = alloca i8, align 1
  %uc1 = alloca i8, align 1
  %S = alloca i16, align 2
  %s1 = alloca i16, align 2
  %us1 = alloca i16, align 2
  %i1 = alloca i32, align 4
  %i = alloca i32, align 4
  %ui1 = alloca i32, align 4
  %L = alloca i64, align 8
  %l1 = alloca i64, align 8
  %ul1 = alloca i64, align 8
  %F = alloca float, align 4
  %D = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sge i32 %0, 2
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  %conv2 = sext i8 %conv1 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 100, %cond.false ]
  %conv3 = trunc i32 %cond to i8
  store i8 %conv3, i8* %C, align 1
  %3 = load i32, i32* %argc.addr, align 4
  %cmp4 = icmp sge i32 %3, 3
  %conv5 = zext i1 %cmp4 to i32
  %conv6 = trunc i32 %conv5 to i16
  %conv7 = sext i16 %conv6 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.12

cond.true.9:                                      ; preds = %cond.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @atoi(i8* %5) #3
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.9
  %cond14 = phi i32 [ %call11, %cond.true.9 ], [ -769, %cond.false.12 ]
  %conv15 = trunc i32 %cond14 to i16
  store i16 %conv15, i16* %S, align 2
  %6 = load i32, i32* %argc.addr, align 4
  %cmp16 = icmp sge i32 %6, 4
  %conv17 = zext i1 %cmp16 to i32
  %conv18 = sext i32 %conv17 to i64
  %tobool19 = icmp ne i64 %conv18, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %cond.end.13
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %7, i64 3
  %8 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 @atoi(i8* %8) #3
  %conv23 = sext i32 %call22 to i64
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end.13
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.20
  %cond26 = phi i64 [ %conv23, %cond.true.20 ], [ 179923220407203, %cond.false.24 ]
  store i64 %cond26, i64* %L, align 8
  %9 = load i8, i8* %C, align 1
  store i8 %9, i8* %uc1, align 1
  %10 = load i8, i8* %C, align 1
  %conv27 = sext i8 %10 to i16
  store i16 %conv27, i16* %us1, align 2
  %11 = load i8, i8* %C, align 1
  %conv28 = sext i8 %11 to i32
  store i32 %conv28, i32* %ui1, align 4
  %12 = load i8, i8* %C, align 1
  %conv29 = sext i8 %12 to i64
  store i64 %conv29, i64* %ul1, align 8
  %13 = load i8, i8* %C, align 1
  %conv30 = sext i8 %13 to i16
  store i16 %conv30, i16* %s1, align 2
  %14 = load i8, i8* %C, align 1
  %conv31 = sext i8 %14 to i32
  store i32 %conv31, i32* %i1, align 4
  %15 = load i8, i8* %C, align 1
  %conv32 = sext i8 %15 to i64
  store i64 %conv32, i64* %l1, align 8
  %16 = load i8, i8* %C, align 1
  %conv33 = sext i8 %16 to i32
  %17 = load i8, i8* %C, align 1
  %conv34 = sext i8 %17 to i32
  %18 = load i8, i8* %C, align 1
  %conv35 = sext i8 %18 to i32
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 %conv33, i32 %conv34, i32 %conv35)
  %19 = load i16, i16* %s1, align 2
  %conv37 = sext i16 %19 to i32
  %20 = load i16, i16* %s1, align 2
  %conv38 = sext i16 %20 to i32
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 %conv37, i32 %conv38)
  %21 = load i32, i32* %i1, align 4
  %22 = load i32, i32* %i1, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 %21, i32 %22)
  %23 = load i64, i64* %l1, align 8
  %24 = load i64, i64* %l1, align 8
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i64 %23, i64 %24)
  %25 = load i8, i8* %uc1, align 1
  %conv42 = zext i8 %25 to i32
  %26 = load i8, i8* %uc1, align 1
  %conv43 = zext i8 %26 to i32
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i32 %conv42, i32 %conv43)
  %27 = load i16, i16* %us1, align 2
  %conv45 = zext i16 %27 to i32
  %28 = load i16, i16* %us1, align 2
  %conv46 = zext i16 %28 to i32
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i32 %conv45, i32 %conv46)
  %29 = load i32, i32* %ui1, align 4
  %30 = load i32, i32* %ui1, align 4
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i32 %29, i32 %30)
  %31 = load i64, i64* %ul1, align 8
  %32 = load i64, i64* %ul1, align 8
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i64 %31, i64 %32)
  %33 = load i16, i16* %S, align 2
  %conv50 = trunc i16 %33 to i8
  store i8 %conv50, i8* %uc1, align 1
  %34 = load i16, i16* %S, align 2
  store i16 %34, i16* %us1, align 2
  %35 = load i16, i16* %S, align 2
  %conv51 = sext i16 %35 to i32
  store i32 %conv51, i32* %ui1, align 4
  %36 = load i16, i16* %S, align 2
  %conv52 = sext i16 %36 to i64
  store i64 %conv52, i64* %ul1, align 8
  %37 = load i16, i16* %S, align 2
  %conv53 = trunc i16 %37 to i8
  store i8 %conv53, i8* %c1, align 1
  %38 = load i16, i16* %S, align 2
  %conv54 = sext i16 %38 to i32
  store i32 %conv54, i32* %i1, align 4
  %39 = load i16, i16* %S, align 2
  %conv55 = sext i16 %39 to i64
  store i64 %conv55, i64* %l1, align 8
  %40 = load i16, i16* %S, align 2
  %conv56 = sext i16 %40 to i32
  %41 = load i16, i16* %S, align 2
  %conv57 = sext i16 %41 to i32
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %conv56, i32 %conv57)
  %42 = load i8, i8* %c1, align 1
  %conv59 = sext i8 %42 to i32
  %43 = load i8, i8* %c1, align 1
  %conv60 = sext i8 %43 to i32
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %conv59, i32 %conv60)
  %44 = load i32, i32* %i1, align 4
  %45 = load i32, i32* %i1, align 4
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i32 %44, i32 %45)
  %46 = load i64, i64* %l1, align 8
  %47 = load i64, i64* %l1, align 8
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i64 %46, i64 %47)
  %48 = load i8, i8* %uc1, align 1
  %conv64 = zext i8 %48 to i32
  %49 = load i8, i8* %uc1, align 1
  %conv65 = zext i8 %49 to i32
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i32 %conv64, i32 %conv65)
  %50 = load i16, i16* %us1, align 2
  %conv67 = zext i16 %50 to i32
  %51 = load i16, i16* %us1, align 2
  %conv68 = zext i16 %51 to i32
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i32 %conv67, i32 %conv68)
  %52 = load i32, i32* %ui1, align 4
  %53 = load i32, i32* %ui1, align 4
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0), i32 %52, i32 %53)
  %54 = load i64, i64* %ul1, align 8
  %55 = load i64, i64* %ul1, align 8
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0), i64 %54, i64 %55)
  %56 = load i64, i64* %L, align 8
  %conv72 = trunc i64 %56 to i8
  store i8 %conv72, i8* %uc1, align 1
  %57 = load i64, i64* %L, align 8
  %conv73 = trunc i64 %57 to i8
  store i8 %conv73, i8* %c1, align 1
  %58 = load i64, i64* %L, align 8
  %conv74 = trunc i64 %58 to i16
  store i16 %conv74, i16* %s1, align 2
  %59 = load i64, i64* %L, align 8
  %conv75 = trunc i64 %59 to i16
  store i16 %conv75, i16* %us1, align 2
  %60 = load i64, i64* %L, align 8
  %conv76 = trunc i64 %60 to i32
  store i32 %conv76, i32* %i1, align 4
  %61 = load i64, i64* %L, align 8
  %conv77 = trunc i64 %61 to i32
  store i32 %conv77, i32* %ui1, align 4
  %62 = load i64, i64* %L, align 8
  store i64 %62, i64* %ul1, align 8
  %63 = load i64, i64* %L, align 8
  %64 = load i64, i64* %L, align 8
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i64 %63, i64 %64)
  %65 = load i8, i8* %c1, align 1
  %conv79 = sext i8 %65 to i32
  %66 = load i8, i8* %c1, align 1
  %conv80 = sext i8 %66 to i32
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i32 %conv79, i32 %conv80)
  %67 = load i16, i16* %s1, align 2
  %conv82 = sext i16 %67 to i32
  %68 = load i16, i16* %s1, align 2
  %conv83 = sext i16 %68 to i32
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i32 %conv82, i32 %conv83)
  %69 = load i32, i32* %i1, align 4
  %70 = load i32, i32* %i1, align 4
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i32 %69, i32 %70)
  %71 = load i8, i8* %uc1, align 1
  %conv86 = zext i8 %71 to i32
  %72 = load i8, i8* %uc1, align 1
  %conv87 = zext i8 %72 to i32
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i32 %conv86, i32 %conv87)
  %73 = load i16, i16* %us1, align 2
  %conv89 = zext i16 %73 to i32
  %74 = load i16, i16* %us1, align 2
  %conv90 = zext i16 %74 to i32
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 %conv89, i32 %conv90)
  %75 = load i32, i32* %ui1, align 4
  %76 = load i32, i32* %ui1, align 4
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32 %75, i32 %76)
  %77 = load i64, i64* %ul1, align 8
  %78 = load i64, i64* %ul1, align 8
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i64 %77, i64 %78)
  %79 = load i32, i32* %argc.addr, align 4
  %cmp94 = icmp sge i32 %79, 4
  %conv95 = zext i1 %cmp94 to i32
  %conv96 = sitofp i32 %conv95 to float
  %tobool97 = fcmp une float %conv96, 0.000000e+00
  br i1 %tobool97, label %cond.true.98, label %cond.false.101

cond.true.98:                                     ; preds = %cond.end.25
  %80 = load i8**, i8*** %argv.addr, align 8
  %arrayidx99 = getelementptr inbounds i8*, i8** %80, i64 3
  %81 = load i8*, i8** %arrayidx99, align 8
  %call100 = call double @atof(i8* %81) #3
  br label %cond.end.102

cond.false.101:                                   ; preds = %cond.end.25
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.98
  %cond103 = phi double [ %call100, %cond.true.98 ], [ 1.000000e+00, %cond.false.101 ]
  %conv104 = fptrunc double %cond103 to float
  store float %conv104, float* %F, align 4
  %82 = load i32, i32* %argc.addr, align 4
  %cmp105 = icmp sge i32 %82, 5
  br i1 %cmp105, label %cond.true.107, label %cond.false.110

cond.true.107:                                    ; preds = %cond.end.102
  %83 = load i8**, i8*** %argv.addr, align 8
  %arrayidx108 = getelementptr inbounds i8*, i8** %83, i64 4
  %84 = load i8*, i8** %arrayidx108, align 8
  %call109 = call double @atof(i8* %84) #3
  br label %cond.end.111

cond.false.110:                                   ; preds = %cond.end.102
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.107
  %cond112 = phi double [ %call109, %cond.true.107 ], [ 2.000000e+00, %cond.false.110 ]
  store double %cond112, double* %D, align 8
  %85 = load float, float* %F, align 4
  %conv113 = fptoui float %85 to i16
  store i16 %conv113, i16* %us1, align 2
  %86 = load float, float* %F, align 4
  %conv114 = fptoui float %86 to i32
  store i32 %conv114, i32* %ui1, align 4
  %87 = load float, float* %F, align 4
  %conv115 = fptoui float %87 to i64
  store i64 %conv115, i64* %ul1, align 8
  %88 = load float, float* %F, align 4
  %conv116 = fptosi float %88 to i16
  store i16 %conv116, i16* %s1, align 2
  %89 = load float, float* %F, align 4
  %conv117 = fptosi float %89 to i32
  store i32 %conv117, i32* %i1, align 4
  %90 = load float, float* %F, align 4
  %conv118 = fptosi float %90 to i64
  store i64 %conv118, i64* %l1, align 8
  %91 = load float, float* %F, align 4
  %conv119 = fpext float %91 to double
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), double %conv119)
  %92 = load i16, i16* %s1, align 2
  %conv121 = sext i16 %92 to i32
  %93 = load i16, i16* %s1, align 2
  %conv122 = sext i16 %93 to i32
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0), i32 %conv121, i32 %conv122)
  %94 = load i32, i32* %i1, align 4
  %95 = load i32, i32* %i1, align 4
  %call124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0), i32 %94, i32 %95)
  %96 = load i16, i16* %us1, align 2
  %conv125 = zext i16 %96 to i32
  %97 = load i16, i16* %us1, align 2
  %conv126 = zext i16 %97 to i32
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0), i32 %conv125, i32 %conv126)
  %98 = load i32, i32* %ui1, align 4
  %99 = load i32, i32* %ui1, align 4
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i32 %98, i32 %99)
  %100 = load i64, i64* %ul1, align 8
  %101 = load i64, i64* %ul1, align 8
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0), i64 %100, i64 %101)
  %102 = load double, double* %D, align 8
  %conv130 = fptoui double %102 to i16
  store i16 %conv130, i16* %us1, align 2
  %103 = load double, double* %D, align 8
  %conv131 = fptoui double %103 to i32
  store i32 %conv131, i32* %ui1, align 4
  %104 = load double, double* %D, align 8
  %conv132 = fptoui double %104 to i64
  store i64 %conv132, i64* %ul1, align 8
  %105 = load double, double* %D, align 8
  %conv133 = fptosi double %105 to i16
  store i16 %conv133, i16* %s1, align 2
  %106 = load double, double* %D, align 8
  %conv134 = fptosi double %106 to i32
  store i32 %conv134, i32* %i1, align 4
  %107 = load double, double* %D, align 8
  %conv135 = fptosi double %107 to i64
  store i64 %conv135, i64* %l1, align 8
  %108 = load double, double* %D, align 8
  %call136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), double %108)
  %109 = load i16, i16* %s1, align 2
  %conv137 = sext i16 %109 to i32
  %110 = load i16, i16* %s1, align 2
  %conv138 = sext i16 %110 to i32
  %call139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0), i32 %conv137, i32 %conv138)
  %111 = load i32, i32* %i1, align 4
  %112 = load i32, i32* %i1, align 4
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0), i32 %111, i32 %112)
  %113 = load i64, i64* %l1, align 8
  %114 = load i64, i64* %l1, align 8
  %call141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i64 %113, i64 %114)
  %115 = load i16, i16* %us1, align 2
  %conv142 = zext i16 %115 to i32
  %116 = load i16, i16* %us1, align 2
  %conv143 = zext i16 %116 to i32
  %call144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i32 0, i32 0), i32 %conv142, i32 %conv143)
  %117 = load i32, i32* %ui1, align 4
  %118 = load i32, i32* %ui1, align 4
  %call145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i32 0, i32 0), i32 %117, i32 %118)
  %119 = load i64, i64* %ul1, align 8
  %120 = load i64, i64* %ul1, align 8
  %call146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0), i64 %119, i64 %120)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.111
  %121 = load i32, i32* %i, align 4
  %idxprom = sext i32 %121 to i64
  %arrayidx147 = getelementptr inbounds [6 x i64], [6 x i64]* @lls, i32 0, i64 %idxprom
  %122 = load i64, i64* %arrayidx147, align 8
  %tobool148 = icmp ne i64 %122, 0
  br i1 %tobool148, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %123 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %123 to i64
  %arrayidx150 = getelementptr inbounds [6 x i64], [6 x i64]* @lls, i32 0, i64 %idxprom149
  %124 = load i64, i64* %arrayidx150, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %125 to i64
  %arrayidx152 = getelementptr inbounds [6 x i64], [6 x i64]* @lls, i32 0, i64 %idxprom151
  %126 = load i64, i64* %arrayidx152, align 8
  %conv153 = sitofp i64 %126 to double
  %call154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), i64 %124, double %conv153)
  %127 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %127 to i64
  %arrayidx156 = getelementptr inbounds [6 x i64], [6 x i64]* @lls, i32 0, i64 %idxprom155
  %128 = load i64, i64* %arrayidx156, align 8
  %129 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %129 to i64
  %arrayidx158 = getelementptr inbounds [6 x i64], [6 x i64]* @lls, i32 0, i64 %idxprom157
  %130 = load i64, i64* %arrayidx158, align 8
  %conv159 = uitofp i64 %130 to double
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0), i64 %128, double %conv159)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %131 = load i32, i32* %i, align 4
  %inc = add nsw i32 %131, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
