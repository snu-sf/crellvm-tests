; ModuleID = './basearith.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@mpd_free = external hidden global void (i8*)*, align 8
@mpd_pow10 = external hidden constant [0 x i64], align 8
@mprime_rdx = external hidden constant i64, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s:%d: error: \00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"/home/juneyoung.lee/tmp/Python-3.4.1/Modules/_decimal/libmpdec/typearith.h\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"sub_size_t(): overflow: check the context\00", align 1

; Function Attrs: nounwind uwtable
define hidden i64 @_mpd_baseadd(i64* %w, i64* %u, i64* %v, i64 %m, i64 %n) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %v.addr = alloca i64*, align 8
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64* %v, i64** %v.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %carry, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i64*, i64** %u.addr, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %i, align 8
  %6 = load i64*, i64** %v.addr, align 8
  %arrayidx1 = getelementptr i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  %8 = load i64, i64* %carry, align 8
  %add = add i64 %7, %8
  %add2 = add i64 %4, %add
  store i64 %add2, i64* %s, align 8
  %9 = load i64, i64* %s, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load i64*, i64** %u.addr, align 8
  %arrayidx3 = getelementptr i64, i64* %11, i64 %10
  %12 = load i64, i64* %arrayidx3, align 8
  %cmp4 = icmp ult i64 %9, %12
  %conv = zext i1 %cmp4 to i32
  %13 = load i64, i64* %s, align 8
  %cmp5 = icmp uge i64 %13, -8446744073709551616
  %conv6 = zext i1 %cmp5 to i32
  %or = or i32 %conv, %conv6
  %conv7 = sext i32 %or to i64
  store i64 %conv7, i64* %carry, align 8
  %14 = load i64, i64* %carry, align 8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load i64, i64* %s, align 8
  %sub = sub i64 %15, -8446744073709551616
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i64, i64* %s, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %16, %cond.false ]
  %17 = load i64, i64* %i, align 8
  %18 = load i64*, i64** %w.addr, align 8
  %arrayidx8 = getelementptr i64, i64* %18, i64 %17
  store i64 %cond, i64* %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.25, %for.end
  %20 = load i64, i64* %carry, align 8
  %tobool10 = icmp ne i64 %20, 0
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.9
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %m.addr, align 8
  %cmp11 = icmp ult i64 %21, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.9
  %23 = phi i1 [ false, %for.cond.9 ], [ %cmp11, %land.rhs ]
  br i1 %23, label %for.body.13, label %for.end.27

for.body.13:                                      ; preds = %land.end
  %24 = load i64, i64* %i, align 8
  %25 = load i64*, i64** %u.addr, align 8
  %arrayidx14 = getelementptr i64, i64* %25, i64 %24
  %26 = load i64, i64* %arrayidx14, align 8
  %27 = load i64, i64* %carry, align 8
  %add15 = add i64 %26, %27
  store i64 %add15, i64* %s, align 8
  %28 = load i64, i64* %s, align 8
  %cmp16 = icmp eq i64 %28, -8446744073709551616
  %conv17 = zext i1 %cmp16 to i32
  %conv18 = sext i32 %conv17 to i64
  store i64 %conv18, i64* %carry, align 8
  %29 = load i64, i64* %carry, align 8
  %tobool19 = icmp ne i64 %29, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %for.body.13
  br label %cond.end.22

cond.false.21:                                    ; preds = %for.body.13
  %30 = load i64, i64* %s, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i64 [ 0, %cond.true.20 ], [ %30, %cond.false.21 ]
  %31 = load i64, i64* %i, align 8
  %32 = load i64*, i64** %w.addr, align 8
  %arrayidx24 = getelementptr i64, i64* %32, i64 %31
  store i64 %cond23, i64* %arrayidx24, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %cond.end.22
  %33 = load i64, i64* %i, align 8
  %inc26 = add i64 %33, 1
  store i64 %inc26, i64* %i, align 8
  br label %for.cond.9

for.end.27:                                       ; preds = %land.end
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.34, %for.end.27
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* %m.addr, align 8
  %cmp29 = icmp ult i64 %34, %35
  br i1 %cmp29, label %for.body.31, label %for.end.36

for.body.31:                                      ; preds = %for.cond.28
  %36 = load i64, i64* %i, align 8
  %37 = load i64*, i64** %u.addr, align 8
  %arrayidx32 = getelementptr i64, i64* %37, i64 %36
  %38 = load i64, i64* %arrayidx32, align 8
  %39 = load i64, i64* %i, align 8
  %40 = load i64*, i64** %w.addr, align 8
  %arrayidx33 = getelementptr i64, i64* %40, i64 %39
  store i64 %38, i64* %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.31
  %41 = load i64, i64* %i, align 8
  %inc35 = add i64 %41, 1
  store i64 %inc35, i64* %i, align 8
  br label %for.cond.28

for.end.36:                                       ; preds = %for.cond.28
  %42 = load i64, i64* %carry, align 8
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define hidden void @_mpd_baseaddto(i64* %w, i64* %u, i64 %n) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %carry, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.26

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ult i64 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load i64*, i64** %w.addr, align 8
  %arrayidx = getelementptr i64, i64* %4, i64 %3
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load i64*, i64** %u.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx2, align 8
  %9 = load i64, i64* %carry, align 8
  %add = add i64 %8, %9
  %add3 = add i64 %5, %add
  store i64 %add3, i64* %s, align 8
  %10 = load i64, i64* %s, align 8
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** %w.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx4, align 8
  %cmp5 = icmp ult i64 %10, %13
  %conv = zext i1 %cmp5 to i32
  %14 = load i64, i64* %s, align 8
  %cmp6 = icmp uge i64 %14, -8446744073709551616
  %conv7 = zext i1 %cmp6 to i32
  %or = or i32 %conv, %conv7
  %conv8 = sext i32 %or to i64
  store i64 %conv8, i64* %carry, align 8
  %15 = load i64, i64* %carry, align 8
  %tobool = icmp ne i64 %15, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %16 = load i64, i64* %s, align 8
  %sub = sub i64 %16, -8446744073709551616
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %17 = load i64, i64* %s, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %17, %cond.false ]
  %18 = load i64, i64* %i, align 8
  %19 = load i64*, i64** %w.addr, align 8
  %arrayidx9 = getelementptr i64, i64* %19, i64 %18
  store i64 %cond, i64* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.24, %for.end
  %21 = load i64, i64* %carry, align 8
  %tobool11 = icmp ne i64 %21, 0
  br i1 %tobool11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  %22 = load i64, i64* %i, align 8
  %23 = load i64*, i64** %w.addr, align 8
  %arrayidx13 = getelementptr i64, i64* %23, i64 %22
  %24 = load i64, i64* %arrayidx13, align 8
  %25 = load i64, i64* %carry, align 8
  %add14 = add i64 %24, %25
  store i64 %add14, i64* %s, align 8
  %26 = load i64, i64* %s, align 8
  %cmp15 = icmp eq i64 %26, -8446744073709551616
  %conv16 = zext i1 %cmp15 to i32
  %conv17 = sext i32 %conv16 to i64
  store i64 %conv17, i64* %carry, align 8
  %27 = load i64, i64* %carry, align 8
  %tobool18 = icmp ne i64 %27, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %for.body.12
  br label %cond.end.21

cond.false.20:                                    ; preds = %for.body.12
  %28 = load i64, i64* %s, align 8
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i64 [ 0, %cond.true.19 ], [ %28, %cond.false.20 ]
  %29 = load i64, i64* %i, align 8
  %30 = load i64*, i64** %w.addr, align 8
  %arrayidx23 = getelementptr i64, i64* %30, i64 %29
  store i64 %cond22, i64* %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %cond.end.21
  %31 = load i64, i64* %i, align 8
  %inc25 = add i64 %31, 1
  store i64 %inc25, i64* %i, align 8
  br label %for.cond.10

for.end.26:                                       ; preds = %if.then, %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mpd_shortadd(i64* %w, i64 %m, i64 %v) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %m.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  %0 = load i64*, i64** %w.addr, align 8
  %arrayidx = getelementptr i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load i64, i64* %v.addr, align 8
  %add = add i64 %1, %2
  store i64 %add, i64* %s, align 8
  %3 = load i64, i64* %s, align 8
  %4 = load i64, i64* %v.addr, align 8
  %cmp = icmp ult i64 %3, %4
  %conv = zext i1 %cmp to i32
  %5 = load i64, i64* %s, align 8
  %cmp1 = icmp uge i64 %5, -8446744073709551616
  %conv2 = zext i1 %cmp1 to i32
  %or = or i32 %conv, %conv2
  %conv3 = sext i32 %or to i64
  store i64 %conv3, i64* %carry, align 8
  %6 = load i64, i64* %carry, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i64, i64* %s, align 8
  %sub = sub i64 %7, -8446744073709551616
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i64, i64* %s, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %8, %cond.false ]
  %9 = load i64*, i64** %w.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %9, i64 0
  store i64 %cond, i64* %arrayidx4, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i64, i64* %carry, align 8
  %tobool5 = icmp ne i64 %10, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %m.addr, align 8
  %cmp6 = icmp ult i64 %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load i64, i64* %i, align 8
  %15 = load i64*, i64** %w.addr, align 8
  %arrayidx8 = getelementptr i64, i64* %15, i64 %14
  %16 = load i64, i64* %arrayidx8, align 8
  %17 = load i64, i64* %carry, align 8
  %add9 = add i64 %16, %17
  store i64 %add9, i64* %s, align 8
  %18 = load i64, i64* %s, align 8
  %cmp10 = icmp eq i64 %18, -8446744073709551616
  %conv11 = zext i1 %cmp10 to i32
  %conv12 = sext i32 %conv11 to i64
  store i64 %conv12, i64* %carry, align 8
  %19 = load i64, i64* %carry, align 8
  %tobool13 = icmp ne i64 %19, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %for.body
  br label %cond.end.16

cond.false.15:                                    ; preds = %for.body
  %20 = load i64, i64* %s, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i64 [ 0, %cond.true.14 ], [ %20, %cond.false.15 ]
  %21 = load i64, i64* %i, align 8
  %22 = load i64*, i64** %w.addr, align 8
  %arrayidx18 = getelementptr i64, i64* %22, i64 %21
  store i64 %cond17, i64* %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.16
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %24 = load i64, i64* %carry, align 8
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mpd_baseincr(i64* %u, i64 %n) #0 {
entry:
  %u.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 1, i64* %carry, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %carry, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i64, i64* %i, align 8
  %5 = load i64*, i64** %u.addr, align 8
  %arrayidx = getelementptr i64, i64* %5, i64 %4
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64, i64* %carry, align 8
  %add = add i64 %6, %7
  store i64 %add, i64* %s, align 8
  %8 = load i64, i64* %s, align 8
  %cmp1 = icmp eq i64 %8, -8446744073709551616
  %conv = zext i1 %cmp1 to i32
  %conv2 = sext i32 %conv to i64
  store i64 %conv2, i64* %carry, align 8
  %9 = load i64, i64* %carry, align 8
  %tobool3 = icmp ne i64 %9, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %10 = load i64, i64* %s, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %10, %cond.false ]
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** %u.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %12, i64 %11
  store i64 %cond, i64* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load i64, i64* %carry, align 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define hidden void @_mpd_basesub(i64* %w, i64* %u, i64* %v, i64 %m, i64 %n) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %v.addr = alloca i64*, align 8
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %borrow = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64* %v, i64** %v.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %borrow, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i64*, i64** %u.addr, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %i, align 8
  %6 = load i64*, i64** %v.addr, align 8
  %arrayidx1 = getelementptr i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  %8 = load i64, i64* %borrow, align 8
  %add = add i64 %7, %8
  %sub = sub i64 %4, %add
  store i64 %sub, i64* %d, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load i64*, i64** %u.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %10, i64 %9
  %11 = load i64, i64* %arrayidx2, align 8
  %12 = load i64, i64* %d, align 8
  %cmp3 = icmp ult i64 %11, %12
  %conv = zext i1 %cmp3 to i32
  %conv4 = sext i32 %conv to i64
  store i64 %conv4, i64* %borrow, align 8
  %13 = load i64, i64* %borrow, align 8
  %tobool = icmp ne i64 %13, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load i64, i64* %d, align 8
  %add5 = add i64 %14, -8446744073709551616
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load i64, i64* %d, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add5, %cond.true ], [ %15, %cond.false ]
  %16 = load i64, i64* %i, align 8
  %17 = load i64*, i64** %w.addr, align 8
  %arrayidx6 = getelementptr i64, i64* %17, i64 %16
  store i64 %cond, i64* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.24, %for.end
  %19 = load i64, i64* %borrow, align 8
  %tobool8 = icmp ne i64 %19, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.7
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %m.addr, align 8
  %cmp9 = icmp ult i64 %20, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.7
  %22 = phi i1 [ false, %for.cond.7 ], [ %cmp9, %land.rhs ]
  br i1 %22, label %for.body.11, label %for.end.26

for.body.11:                                      ; preds = %land.end
  %23 = load i64, i64* %i, align 8
  %24 = load i64*, i64** %u.addr, align 8
  %arrayidx12 = getelementptr i64, i64* %24, i64 %23
  %25 = load i64, i64* %arrayidx12, align 8
  %26 = load i64, i64* %borrow, align 8
  %sub13 = sub i64 %25, %26
  store i64 %sub13, i64* %d, align 8
  %27 = load i64, i64* %i, align 8
  %28 = load i64*, i64** %u.addr, align 8
  %arrayidx14 = getelementptr i64, i64* %28, i64 %27
  %29 = load i64, i64* %arrayidx14, align 8
  %cmp15 = icmp eq i64 %29, 0
  %conv16 = zext i1 %cmp15 to i32
  %conv17 = sext i32 %conv16 to i64
  store i64 %conv17, i64* %borrow, align 8
  %30 = load i64, i64* %borrow, align 8
  %tobool18 = icmp ne i64 %30, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %for.body.11
  br label %cond.end.21

cond.false.20:                                    ; preds = %for.body.11
  %31 = load i64, i64* %d, align 8
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i64 [ -8446744073709551617, %cond.true.19 ], [ %31, %cond.false.20 ]
  %32 = load i64, i64* %i, align 8
  %33 = load i64*, i64** %w.addr, align 8
  %arrayidx23 = getelementptr i64, i64* %33, i64 %32
  store i64 %cond22, i64* %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %cond.end.21
  %34 = load i64, i64* %i, align 8
  %inc25 = add i64 %34, 1
  store i64 %inc25, i64* %i, align 8
  br label %for.cond.7

for.end.26:                                       ; preds = %land.end
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.33, %for.end.26
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %m.addr, align 8
  %cmp28 = icmp ult i64 %35, %36
  br i1 %cmp28, label %for.body.30, label %for.end.35

for.body.30:                                      ; preds = %for.cond.27
  %37 = load i64, i64* %i, align 8
  %38 = load i64*, i64** %u.addr, align 8
  %arrayidx31 = getelementptr i64, i64* %38, i64 %37
  %39 = load i64, i64* %arrayidx31, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load i64*, i64** %w.addr, align 8
  %arrayidx32 = getelementptr i64, i64* %41, i64 %40
  store i64 %39, i64* %arrayidx32, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.30
  %42 = load i64, i64* %i, align 8
  %inc34 = add i64 %42, 1
  store i64 %inc34, i64* %i, align 8
  br label %for.cond.27

for.end.35:                                       ; preds = %for.cond.27
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mpd_basesubfrom(i64* %w, i64* %u, i64 %n) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %borrow = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %borrow, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.25

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ult i64 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load i64*, i64** %w.addr, align 8
  %arrayidx = getelementptr i64, i64* %4, i64 %3
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load i64*, i64** %u.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx2, align 8
  %9 = load i64, i64* %borrow, align 8
  %add = add i64 %8, %9
  %sub = sub i64 %5, %add
  store i64 %sub, i64* %d, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load i64*, i64** %w.addr, align 8
  %arrayidx3 = getelementptr i64, i64* %11, i64 %10
  %12 = load i64, i64* %arrayidx3, align 8
  %13 = load i64, i64* %d, align 8
  %cmp4 = icmp ult i64 %12, %13
  %conv = zext i1 %cmp4 to i32
  %conv5 = sext i32 %conv to i64
  store i64 %conv5, i64* %borrow, align 8
  %14 = load i64, i64* %borrow, align 8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load i64, i64* %d, align 8
  %add6 = add i64 %15, -8446744073709551616
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i64, i64* %d, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add6, %cond.true ], [ %16, %cond.false ]
  %17 = load i64, i64* %i, align 8
  %18 = load i64*, i64** %w.addr, align 8
  %arrayidx7 = getelementptr i64, i64* %18, i64 %17
  store i64 %cond, i64* %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.23, %for.end
  %20 = load i64, i64* %borrow, align 8
  %tobool9 = icmp ne i64 %20, 0
  br i1 %tobool9, label %for.body.10, label %for.end.25

for.body.10:                                      ; preds = %for.cond.8
  %21 = load i64, i64* %i, align 8
  %22 = load i64*, i64** %w.addr, align 8
  %arrayidx11 = getelementptr i64, i64* %22, i64 %21
  %23 = load i64, i64* %arrayidx11, align 8
  %24 = load i64, i64* %borrow, align 8
  %sub12 = sub i64 %23, %24
  store i64 %sub12, i64* %d, align 8
  %25 = load i64, i64* %i, align 8
  %26 = load i64*, i64** %w.addr, align 8
  %arrayidx13 = getelementptr i64, i64* %26, i64 %25
  %27 = load i64, i64* %arrayidx13, align 8
  %cmp14 = icmp eq i64 %27, 0
  %conv15 = zext i1 %cmp14 to i32
  %conv16 = sext i32 %conv15 to i64
  store i64 %conv16, i64* %borrow, align 8
  %28 = load i64, i64* %borrow, align 8
  %tobool17 = icmp ne i64 %28, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %for.body.10
  br label %cond.end.20

cond.false.19:                                    ; preds = %for.body.10
  %29 = load i64, i64* %d, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i64 [ -8446744073709551617, %cond.true.18 ], [ %29, %cond.false.19 ]
  %30 = load i64, i64* %i, align 8
  %31 = load i64*, i64** %w.addr, align 8
  %arrayidx22 = getelementptr i64, i64* %31, i64 %30
  store i64 %cond21, i64* %arrayidx22, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %cond.end.20
  %32 = load i64, i64* %i, align 8
  %inc24 = add i64 %32, 1
  store i64 %inc24, i64* %i, align 8
  br label %for.cond.8

for.end.25:                                       ; preds = %if.then, %for.cond.8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mpd_shortmul(i64* %w, i64* %u, i64 %n, i64 %v) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 0, i64* %carry, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i64*, i64** %u.addr, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %v.addr, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %4, i64 %5)
  %6 = load i64, i64* %carry, align 8
  %7 = load i64, i64* %lo, align 8
  %add = add i64 %6, %7
  store i64 %add, i64* %lo, align 8
  %8 = load i64, i64* %lo, align 8
  %9 = load i64, i64* %carry, align 8
  %cmp1 = icmp ult i64 %8, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i64, i64* %hi, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** %w.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %12, i64 %11
  %13 = load i64, i64* %hi, align 8
  %14 = load i64, i64* %lo, align 8
  call void @_mpd_div_words_r(i64* %carry, i64* %arrayidx2, i64 %13, i64 %14)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i64, i64* %i, align 8
  %inc3 = add i64 %15, 1
  store i64 %inc3, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %carry, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load i64*, i64** %w.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %18, i64 %17
  store i64 %16, i64* %arrayidx4, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %a, i64 %b) #1 {
entry:
  %hi.addr = alloca i64*, align 8
  %lo.addr = alloca i64*, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  store i64* %hi, i64** %hi.addr, align 8
  store i64* %lo, i64** %lo.addr, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = call { i64, i64 } asm "mulq $3\0A\09", "={dx},={ax},%{ax},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #4, !srcloc !2
  %asmresult = extractvalue { i64, i64 } %2, 0
  %asmresult1 = extractvalue { i64, i64 } %2, 1
  store i64 %asmresult, i64* %h, align 8
  store i64 %asmresult1, i64* %l, align 8
  %3 = load i64, i64* %h, align 8
  %4 = load i64*, i64** %hi.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i64, i64* %l, align 8
  %6 = load i64*, i64** %lo.addr, align 8
  store i64 %5, i64* %6, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_div_words_r(i64* %q, i64* %r, i64 %hi, i64 %lo) #1 {
entry:
  %q.addr = alloca i64*, align 8
  %r.addr = alloca i64*, align 8
  %hi.addr = alloca i64, align 8
  %lo.addr = alloca i64, align 8
  %n_adj = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  %t = alloca i64, align 8
  %n1_neg = alloca i64, align 8
  store i64* %q, i64** %q.addr, align 8
  store i64* %r, i64** %r.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  store i64 %lo, i64* %lo.addr, align 8
  %0 = load i64, i64* %lo.addr, align 8
  %and = and i64 %0, -9223372036854775808
  %tobool = icmp ne i64 %and, 0
  %cond = select i1 %tobool, i64 -1, i64 0
  store i64 %cond, i64* %n1_neg, align 8
  %1 = load i64, i64* %lo.addr, align 8
  %2 = load i64, i64* %n1_neg, align 8
  %and1 = and i64 %2, -8446744073709551616
  %add = add i64 %1, %and1
  store i64 %add, i64* %n_adj, align 8
  %3 = load i64, i64* @mprime_rdx, align 8
  %4 = load i64, i64* %hi.addr, align 8
  %5 = load i64, i64* %n1_neg, align 8
  %sub = sub i64 %4, %5
  call void @_mpd_mul_words(i64* %h, i64* %l, i64 %3, i64 %sub)
  %6 = load i64, i64* %l, align 8
  %7 = load i64, i64* %n_adj, align 8
  %add2 = add i64 %6, %7
  store i64 %add2, i64* %l, align 8
  %8 = load i64, i64* %l, align 8
  %9 = load i64, i64* %n_adj, align 8
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %h, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %h, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %h, align 8
  %12 = load i64, i64* %hi.addr, align 8
  %add3 = add i64 %11, %12
  store i64 %add3, i64* %t, align 8
  %13 = load i64, i64* %t, align 8
  %sub4 = sub i64 -1, %13
  store i64 %sub4, i64* %t, align 8
  %14 = load i64, i64* %t, align 8
  call void @_mpd_mul_words(i64* %h, i64* %l, i64 %14, i64 -8446744073709551616)
  %15 = load i64, i64* %l, align 8
  %16 = load i64, i64* %lo.addr, align 8
  %add5 = add i64 %15, %16
  store i64 %add5, i64* %l, align 8
  %17 = load i64, i64* %l, align 8
  %18 = load i64, i64* %lo.addr, align 8
  %cmp6 = icmp ult i64 %17, %18
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %19 = load i64, i64* %h, align 8
  %inc8 = add i64 %19, 1
  store i64 %inc8, i64* %h, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %20 = load i64, i64* %hi.addr, align 8
  %21 = load i64, i64* %h, align 8
  %add10 = add i64 %21, %20
  store i64 %add10, i64* %h, align 8
  %22 = load i64, i64* %h, align 8
  %sub11 = sub i64 %22, -8446744073709551616
  store i64 %sub11, i64* %h, align 8
  %23 = load i64, i64* %h, align 8
  %24 = load i64, i64* %t, align 8
  %sub12 = sub i64 %23, %24
  %25 = load i64*, i64** %q.addr, align 8
  store i64 %sub12, i64* %25, align 8
  %26 = load i64, i64* %l, align 8
  %27 = load i64, i64* %h, align 8
  %and13 = and i64 -8446744073709551616, %27
  %add14 = add i64 %26, %and13
  %28 = load i64*, i64** %r.addr, align 8
  store i64 %add14, i64* %28, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mpd_basemul(i64* %w, i64* %u, i64* %v, i64 %m, i64 %n) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %v.addr = alloca i64*, align 8
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64* %v, i64** %v.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i64, i64* %j, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %carry, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %m.addr, align 8
  %cmp2 = icmp ult i64 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i64, i64* %i, align 8
  %5 = load i64*, i64** %u.addr, align 8
  %arrayidx = getelementptr i64, i64* %5, i64 %4
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64, i64* %j, align 8
  %8 = load i64*, i64** %v.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx4, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %6, i64 %9)
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %j, align 8
  %add = add i64 %10, %11
  %12 = load i64*, i64** %w.addr, align 8
  %arrayidx5 = getelementptr i64, i64* %12, i64 %add
  %13 = load i64, i64* %arrayidx5, align 8
  %14 = load i64, i64* %lo, align 8
  %add6 = add i64 %13, %14
  store i64 %add6, i64* %lo, align 8
  %15 = load i64, i64* %lo, align 8
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %j, align 8
  %add7 = add i64 %16, %17
  %18 = load i64*, i64** %w.addr, align 8
  %arrayidx8 = getelementptr i64, i64* %18, i64 %add7
  %19 = load i64, i64* %arrayidx8, align 8
  %cmp9 = icmp ult i64 %15, %19
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %20 = load i64, i64* %hi, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %21 = load i64, i64* %carry, align 8
  %22 = load i64, i64* %lo, align 8
  %add10 = add i64 %21, %22
  store i64 %add10, i64* %lo, align 8
  %23 = load i64, i64* %lo, align 8
  %24 = load i64, i64* %carry, align 8
  %cmp11 = icmp ult i64 %23, %24
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %25 = load i64, i64* %hi, align 8
  %inc13 = add i64 %25, 1
  store i64 %inc13, i64* %hi, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %j, align 8
  %add15 = add i64 %26, %27
  %28 = load i64*, i64** %w.addr, align 8
  %arrayidx16 = getelementptr i64, i64* %28, i64 %add15
  %29 = load i64, i64* %hi, align 8
  %30 = load i64, i64* %lo, align 8
  call void @_mpd_div_words_r(i64* %carry, i64* %arrayidx16, i64 %29, i64 %30)
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %31 = load i64, i64* %i, align 8
  %inc17 = add i64 %31, 1
  store i64 %inc17, i64* %i, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %32 = load i64, i64* %carry, align 8
  %33 = load i64, i64* %j, align 8
  %34 = load i64, i64* %m.addr, align 8
  %add18 = add i64 %33, %34
  %35 = load i64*, i64** %w.addr, align 8
  %arrayidx19 = getelementptr i64, i64* %35, i64 %add18
  store i64 %32, i64* %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %36 = load i64, i64* %j, align 8
  %inc21 = add i64 %36, 1
  store i64 %inc21, i64* %j, align 8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mpd_shortdiv(i64* %w, i64* %u, i64 %n, i64 %v) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %rem = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 0, i64* %rem, align 8
  %0 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %0, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp ne i64 %1, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %rem, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %2, i64 -8446744073709551616)
  %3 = load i64, i64* %i, align 8
  %4 = load i64*, i64** %u.addr, align 8
  %arrayidx = getelementptr i64, i64* %4, i64 %3
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i64, i64* %lo, align 8
  %add = add i64 %5, %6
  store i64 %add, i64* %lo, align 8
  %7 = load i64, i64* %lo, align 8
  %8 = load i64, i64* %i, align 8
  %9 = load i64*, i64** %u.addr, align 8
  %arrayidx1 = getelementptr i64, i64* %9, i64 %8
  %10 = load i64, i64* %arrayidx1, align 8
  %cmp2 = icmp ult i64 %7, %10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %hi, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load i64, i64* %i, align 8
  %13 = load i64*, i64** %w.addr, align 8
  %arrayidx3 = getelementptr i64, i64* %13, i64 %12
  %14 = load i64, i64* %hi, align 8
  %15 = load i64, i64* %lo, align 8
  %16 = load i64, i64* %v.addr, align 8
  call void @_mpd_div_words(i64* %arrayidx3, i64* %rem, i64 %14, i64 %15, i64 %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i64, i64* %i, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %rem, align 8
  ret i64 %18
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_div_words(i64* %q, i64* %r, i64 %hi, i64 %lo, i64 %d) #1 {
entry:
  %q.addr = alloca i64*, align 8
  %r.addr = alloca i64*, align 8
  %hi.addr = alloca i64, align 8
  %lo.addr = alloca i64, align 8
  %d.addr = alloca i64, align 8
  %qq = alloca i64, align 8
  %rr = alloca i64, align 8
  store i64* %q, i64** %q.addr, align 8
  store i64* %r, i64** %r.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  store i64 %lo, i64* %lo.addr, align 8
  store i64 %d, i64* %d.addr, align 8
  %0 = load i64, i64* %lo.addr, align 8
  %1 = load i64, i64* %hi.addr, align 8
  %2 = load i64, i64* %d.addr, align 8
  %3 = call { i64, i64 } asm "divq $4\0A\09", "={ax},={dx},{ax},{dx},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1, i64 %2) #4, !srcloc !3
  %asmresult = extractvalue { i64, i64 } %3, 0
  %asmresult1 = extractvalue { i64, i64 } %3, 1
  store i64 %asmresult, i64* %qq, align 8
  store i64 %asmresult1, i64* %rr, align 8
  %4 = load i64, i64* %qq, align 8
  %5 = load i64*, i64** %q.addr, align 8
  store i64 %4, i64* %5, align 8
  %6 = load i64, i64* %rr, align 8
  %7 = load i64*, i64** %r.addr, align 8
  store i64 %6, i64* %7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @_mpd_basedivmod(i64* %q, i64* %r, i64* %uconst, i64* %vconst, i64 %nplusm, i64 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca i64*, align 8
  %r.addr = alloca i64*, align 8
  %uconst.addr = alloca i64*, align 8
  %vconst.addr = alloca i64*, align 8
  %nplusm.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %ustatic = alloca [64 x i64], align 16
  %vstatic = alloca [64 x i64], align 16
  %u = alloca i64*, align 8
  %v = alloca i64*, align 8
  %d = alloca i64, align 8
  %qhat = alloca i64, align 8
  %rhat = alloca i64, align 8
  %w2 = alloca [2 x i64], align 16
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %x = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %m = alloca i64, align 8
  %retval2 = alloca i32, align 4
  store i64* %q, i64** %q.addr, align 8
  store i64* %r, i64** %r.addr, align 8
  store i64* %uconst, i64** %uconst.addr, align 8
  store i64* %vconst, i64** %vconst.addr, align 8
  store i64 %nplusm, i64* %nplusm.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i64], [64 x i64]* %ustatic, i32 0, i32 0
  store i64* %arraydecay, i64** %u, align 8
  %arraydecay1 = getelementptr inbounds [64 x i64], [64 x i64]* %vstatic, i32 0, i32 0
  store i64* %arraydecay1, i64** %v, align 8
  store i32 0, i32* %retval2, align 4
  %0 = load i64, i64* %nplusm.addr, align 8
  %1 = load i64, i64* %n.addr, align 8
  %call = call i64 @sub_size_t(i64 %0, i64 %1)
  store i64 %call, i64* %m, align 8
  %2 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %2, 1
  %3 = load i64*, i64** %vconst.addr, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %sub
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, 1
  %div = udiv i64 -8446744073709551616, %add
  store i64 %div, i64* %d, align 8
  %5 = load i64, i64* %nplusm.addr, align 8
  %cmp = icmp uge i64 %5, 64
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %nplusm.addr, align 8
  %add3 = add i64 %6, 1
  %call4 = call i8* @mpd_alloc(i64 %add3, i64 8)
  %7 = bitcast i8* %call4 to i64*
  store i64* %7, i64** %u, align 8
  %cmp5 = icmp eq i64* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %8 = load i64, i64* %n.addr, align 8
  %cmp8 = icmp uge i64 %8, 64
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end.7
  %9 = load i64, i64* %n.addr, align 8
  %add10 = add i64 %9, 1
  %call11 = call i8* @mpd_alloc(i64 %add10, i64 8)
  %10 = bitcast i8* %call11 to i64*
  store i64* %10, i64** %v, align 8
  %cmp12 = icmp eq i64* %10, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %11 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %12 = load i64*, i64** %u, align 8
  %13 = bitcast i64* %12 to i8*
  call void %11(i8* %13)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.7
  %14 = load i64*, i64** %u, align 8
  %15 = load i64*, i64** %uconst.addr, align 8
  %16 = load i64, i64* %nplusm.addr, align 8
  %17 = load i64, i64* %d, align 8
  call void @_mpd_shortmul(i64* %14, i64* %15, i64 %16, i64 %17)
  %18 = load i64*, i64** %v, align 8
  %19 = load i64*, i64** %vconst.addr, align 8
  %20 = load i64, i64* %n.addr, align 8
  %21 = load i64, i64* %d, align 8
  call void @_mpd_shortmul(i64* %18, i64* %19, i64 %20, i64 %21)
  %22 = load i64, i64* %m, align 8
  store i64 %22, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %if.end.15
  %23 = load i64, i64* %j, align 8
  %cmp16 = icmp ne i64 %23, -1
  br i1 %cmp16, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  %arraydecay17 = getelementptr inbounds [2 x i64], [2 x i64]* %w2, i32 0, i32 0
  %24 = load i64*, i64** %u, align 8
  %25 = load i64, i64* %j, align 8
  %add.ptr = getelementptr i64, i64* %24, i64 %25
  %26 = load i64, i64* %n.addr, align 8
  %add.ptr18 = getelementptr i64, i64* %add.ptr, i64 %26
  %add.ptr19 = getelementptr i64, i64* %add.ptr18, i64 -1
  %27 = load i64, i64* %n.addr, align 8
  %sub20 = sub i64 %27, 1
  %28 = load i64*, i64** %v, align 8
  %arrayidx21 = getelementptr i64, i64* %28, i64 %sub20
  %29 = load i64, i64* %arrayidx21, align 8
  %call22 = call i64 @_mpd_shortdiv(i64* %arraydecay17, i64* %add.ptr19, i64 2, i64 %29)
  store i64 %call22, i64* %rhat, align 8
  %arrayidx23 = getelementptr [2 x i64], [2 x i64]* %w2, i32 0, i64 1
  %30 = load i64, i64* %arrayidx23, align 8
  %mul = mul i64 %30, -8446744073709551616
  %arrayidx24 = getelementptr [2 x i64], [2 x i64]* %w2, i32 0, i64 0
  %31 = load i64, i64* %arrayidx24, align 8
  %add25 = add i64 %mul, %31
  store i64 %add25, i64* %qhat, align 8
  br label %while.body

while.body:                                       ; preds = %for.body, %if.end.55
  %32 = load i64, i64* %qhat, align 8
  %cmp26 = icmp ult i64 %32, -8446744073709551616
  br i1 %cmp26, label %if.then.27, label %if.end.44

if.then.27:                                       ; preds = %while.body
  %arraydecay28 = getelementptr inbounds [2 x i64], [2 x i64]* %w2, i32 0, i32 0
  %33 = load i64, i64* %qhat, align 8
  %34 = load i64, i64* %n.addr, align 8
  %sub29 = sub i64 %34, 2
  %35 = load i64*, i64** %v, align 8
  %arrayidx30 = getelementptr i64, i64* %35, i64 %sub29
  %36 = load i64, i64* %arrayidx30, align 8
  call void @_mpd_singlemul(i64* %arraydecay28, i64 %33, i64 %36)
  %arrayidx31 = getelementptr [2 x i64], [2 x i64]* %w2, i32 0, i64 1
  %37 = load i64, i64* %arrayidx31, align 8
  %38 = load i64, i64* %rhat, align 8
  %cmp32 = icmp ule i64 %37, %38
  br i1 %cmp32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.then.27
  %arrayidx34 = getelementptr [2 x i64], [2 x i64]* %w2, i32 0, i64 1
  %39 = load i64, i64* %arrayidx34, align 8
  %40 = load i64, i64* %rhat, align 8
  %cmp35 = icmp ne i64 %39, %40
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.33
  %arrayidx36 = getelementptr [2 x i64], [2 x i64]* %w2, i32 0, i64 0
  %41 = load i64, i64* %arrayidx36, align 8
  %42 = load i64, i64* %j, align 8
  %43 = load i64, i64* %n.addr, align 8
  %add37 = add i64 %42, %43
  %sub38 = sub i64 %add37, 2
  %44 = load i64*, i64** %u, align 8
  %arrayidx39 = getelementptr i64, i64* %44, i64 %sub38
  %45 = load i64, i64* %arrayidx39, align 8
  %cmp40 = icmp ule i64 %41, %45
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %if.then.33
  br label %while.end

if.end.42:                                        ; preds = %lor.lhs.false
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.27
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %while.body
  %46 = load i64, i64* %qhat, align 8
  %sub45 = sub i64 %46, 1
  store i64 %sub45, i64* %qhat, align 8
  %47 = load i64, i64* %n.addr, align 8
  %sub46 = sub i64 %47, 1
  %48 = load i64*, i64** %v, align 8
  %arrayidx47 = getelementptr i64, i64* %48, i64 %sub46
  %49 = load i64, i64* %arrayidx47, align 8
  %50 = load i64, i64* %rhat, align 8
  %add48 = add i64 %50, %49
  store i64 %add48, i64* %rhat, align 8
  %51 = load i64, i64* %rhat, align 8
  %52 = load i64, i64* %n.addr, align 8
  %sub49 = sub i64 %52, 1
  %53 = load i64*, i64** %v, align 8
  %arrayidx50 = getelementptr i64, i64* %53, i64 %sub49
  %54 = load i64, i64* %arrayidx50, align 8
  %cmp51 = icmp ult i64 %51, %54
  br i1 %cmp51, label %if.then.54, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.end.44
  %55 = load i64, i64* %rhat, align 8
  %cmp53 = icmp uge i64 %55, -8446744073709551616
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.52, %if.end.44
  br label %while.end

if.end.55:                                        ; preds = %lor.lhs.false.52
  br label %while.body

while.end:                                        ; preds = %if.then.54, %if.then.41
  store i64 0, i64* %carry, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc, %while.end
  %56 = load i64, i64* %i, align 8
  %57 = load i64, i64* %n.addr, align 8
  %cmp57 = icmp ule i64 %56, %57
  br i1 %cmp57, label %for.body.58, label %for.end

for.body.58:                                      ; preds = %for.cond.56
  %58 = load i64, i64* %qhat, align 8
  %59 = load i64, i64* %i, align 8
  %60 = load i64*, i64** %v, align 8
  %arrayidx59 = getelementptr i64, i64* %60, i64 %59
  %61 = load i64, i64* %arrayidx59, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %58, i64 %61)
  %62 = load i64, i64* %carry, align 8
  %63 = load i64, i64* %lo, align 8
  %add60 = add i64 %62, %63
  store i64 %add60, i64* %lo, align 8
  %64 = load i64, i64* %lo, align 8
  %65 = load i64, i64* %carry, align 8
  %cmp61 = icmp ult i64 %64, %65
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.body.58
  %66 = load i64, i64* %hi, align 8
  %inc = add i64 %66, 1
  store i64 %inc, i64* %hi, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %for.body.58
  %67 = load i64, i64* %hi, align 8
  %68 = load i64, i64* %lo, align 8
  call void @_mpd_div_words_r(i64* %hi, i64* %lo, i64 %67, i64 %68)
  %69 = load i64, i64* %i, align 8
  %70 = load i64, i64* %j, align 8
  %add64 = add i64 %69, %70
  %71 = load i64*, i64** %u, align 8
  %arrayidx65 = getelementptr i64, i64* %71, i64 %add64
  %72 = load i64, i64* %arrayidx65, align 8
  %73 = load i64, i64* %lo, align 8
  %sub66 = sub i64 %72, %73
  store i64 %sub66, i64* %x, align 8
  %74 = load i64, i64* %i, align 8
  %75 = load i64, i64* %j, align 8
  %add67 = add i64 %74, %75
  %76 = load i64*, i64** %u, align 8
  %arrayidx68 = getelementptr i64, i64* %76, i64 %add67
  %77 = load i64, i64* %arrayidx68, align 8
  %78 = load i64, i64* %x, align 8
  %cmp69 = icmp ult i64 %77, %78
  %conv = zext i1 %cmp69 to i32
  %conv70 = sext i32 %conv to i64
  store i64 %conv70, i64* %carry, align 8
  %79 = load i64, i64* %carry, align 8
  %tobool = icmp ne i64 %79, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.63
  %80 = load i64, i64* %x, align 8
  %add71 = add i64 %80, -8446744073709551616
  br label %cond.end

cond.false:                                       ; preds = %if.end.63
  %81 = load i64, i64* %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add71, %cond.true ], [ %81, %cond.false ]
  %82 = load i64, i64* %i, align 8
  %83 = load i64, i64* %j, align 8
  %add72 = add i64 %82, %83
  %84 = load i64*, i64** %u, align 8
  %arrayidx73 = getelementptr i64, i64* %84, i64 %add72
  store i64 %cond, i64* %arrayidx73, align 8
  %85 = load i64, i64* %hi, align 8
  %86 = load i64, i64* %carry, align 8
  %add74 = add i64 %86, %85
  store i64 %add74, i64* %carry, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %87 = load i64, i64* %i, align 8
  %inc75 = add i64 %87, 1
  store i64 %inc75, i64* %i, align 8
  br label %for.cond.56

for.end:                                          ; preds = %for.cond.56
  %88 = load i64, i64* %qhat, align 8
  %89 = load i64, i64* %j, align 8
  %90 = load i64*, i64** %q.addr, align 8
  %arrayidx76 = getelementptr i64, i64* %90, i64 %89
  store i64 %88, i64* %arrayidx76, align 8
  %91 = load i64, i64* %carry, align 8
  %tobool77 = icmp ne i64 %91, 0
  br i1 %tobool77, label %if.then.78, label %if.end.85

if.then.78:                                       ; preds = %for.end
  %92 = load i64, i64* %j, align 8
  %93 = load i64*, i64** %q.addr, align 8
  %arrayidx79 = getelementptr i64, i64* %93, i64 %92
  %94 = load i64, i64* %arrayidx79, align 8
  %sub80 = sub i64 %94, 1
  store i64 %sub80, i64* %arrayidx79, align 8
  %95 = load i64*, i64** %u, align 8
  %96 = load i64, i64* %j, align 8
  %add.ptr81 = getelementptr i64, i64* %95, i64 %96
  %97 = load i64*, i64** %u, align 8
  %98 = load i64, i64* %j, align 8
  %add.ptr82 = getelementptr i64, i64* %97, i64 %98
  %99 = load i64*, i64** %v, align 8
  %100 = load i64, i64* %n.addr, align 8
  %add83 = add i64 %100, 1
  %101 = load i64, i64* %n.addr, align 8
  %call84 = call i64 @_mpd_baseadd(i64* %add.ptr81, i64* %add.ptr82, i64* %99, i64 %add83, i64 %101)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.78, %for.end
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %102 = load i64, i64* %j, align 8
  %dec = add i64 %102, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end.87:                                       ; preds = %for.cond
  %103 = load i64*, i64** %r.addr, align 8
  %cmp88 = icmp ne i64* %103, null
  br i1 %cmp88, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %for.end.87
  %104 = load i64*, i64** %r.addr, align 8
  %105 = load i64*, i64** %u, align 8
  %106 = load i64, i64* %n.addr, align 8
  %107 = load i64, i64* %d, align 8
  %call91 = call i64 @_mpd_shortdiv(i64* %104, i64* %105, i64 %106, i64 %107)
  store i32 0, i32* %retval2, align 4
  br label %if.end.94

if.else:                                          ; preds = %for.end.87
  %108 = load i64*, i64** %u, align 8
  %109 = load i64, i64* %n.addr, align 8
  %call92 = call i32 @_mpd_isallzero(i64* %108, i64 %109)
  %tobool93 = icmp ne i32 %call92, 0
  %lnot = xor i1 %tobool93, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval2, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else, %if.then.90
  %110 = load i64*, i64** %u, align 8
  %arraydecay95 = getelementptr inbounds [64 x i64], [64 x i64]* %ustatic, i32 0, i32 0
  %cmp96 = icmp ne i64* %110, %arraydecay95
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.94
  %111 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %112 = load i64*, i64** %u, align 8
  %113 = bitcast i64* %112 to i8*
  call void %111(i8* %113)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.94
  %114 = load i64*, i64** %v, align 8
  %arraydecay100 = getelementptr inbounds [64 x i64], [64 x i64]* %vstatic, i32 0, i32 0
  %cmp101 = icmp ne i64* %114, %arraydecay100
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.99
  %115 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %116 = load i64*, i64** %v, align 8
  %117 = bitcast i64* %116 to i8*
  call void %115(i8* %117)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.end.99
  %118 = load i32, i32* %retval2, align 4
  store i32 %118, i32* %retval
  br label %return

return:                                           ; preds = %if.end.104, %if.then.13, %if.then.6
  %119 = load i32, i32* %retval
  ret i32 %119
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @sub_size_t(i64 %a, i64 %b) #1 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %1 = load i64, i64* %a.addr, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i32 604)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fputc(i32 10, %struct._IO_FILE* %4)
  call void @abort() #5
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %5 = load i64, i64* %a.addr, align 8
  %6 = load i64, i64* %b.addr, align 8
  %sub = sub i64 %5, %6
  ret i64 %sub
}

declare hidden i8* @mpd_alloc(i64, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_singlemul(i64* %w, i64 %u, i64 %v) #1 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64 %u, i64* %u.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  %0 = load i64, i64* %u.addr, align 8
  %1 = load i64, i64* %v.addr, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %0, i64 %1)
  %2 = load i64*, i64** %w.addr, align 8
  %arrayidx = getelementptr i64, i64* %2, i64 1
  %3 = load i64*, i64** %w.addr, align 8
  %arrayidx1 = getelementptr i64, i64* %3, i64 0
  %4 = load i64, i64* %hi, align 8
  %5 = load i64, i64* %lo, align 8
  call void @_mpd_div_words_r(i64* %arrayidx, i64* %arrayidx1, i64 %4, i64 %5)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_mpd_isallzero(i64* %data, i64 %len) #1 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i64*, align 8
  %len.addr = alloca i64, align 8
  store i64* %data, i64** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %len.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %len.addr, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %len.addr, align 8
  %2 = load i64*, i64** %data.addr, align 8
  %arrayidx = getelementptr i64, i64* %2, i64 %1
  %3 = load i64, i64* %arrayidx, align 8
  %cmp1 = icmp ne i64 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define hidden void @_mpd_baseshiftl(i64* %dest, i64* %src, i64 %n, i64 %m, i64 %shift) #0 {
entry:
  %dest.addr = alloca i64*, align 8
  %src.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  %l = alloca i64, align 8
  %lprev = alloca i64, align 8
  %h = alloca i64, align 8
  %q = alloca i64, align 8
  %r = alloca i64, align 8
  %ph = alloca i64, align 8
  store i64* %dest, i64** %dest.addr, align 8
  store i64* %src, i64** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  store i64 %shift, i64* %shift.addr, align 8
  %0 = load i64, i64* %shift.addr, align 8
  call void @_mpd_div_word(i64* %q, i64* %r, i64 %0, i64 19)
  %1 = load i64, i64* %r, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %r, align 8
  %arrayidx = getelementptr [0 x i64], [0 x i64]* @mpd_pow10, i32 0, i64 %2
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %ph, align 8
  %4 = load i64, i64* %m.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %m.addr, align 8
  %5 = load i64, i64* %n.addr, align 8
  %dec1 = add i64 %5, -1
  store i64 %dec1, i64* %n.addr, align 8
  %6 = load i64, i64* %m.addr, align 8
  %dec2 = add i64 %6, -1
  store i64 %dec2, i64* %m.addr, align 8
  %7 = load i64*, i64** %src.addr, align 8
  %arrayidx3 = getelementptr i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx3, align 8
  %9 = load i64, i64* %r, align 8
  %sub = sub i64 19, %9
  call void @_mpd_divmod_pow10(i64* %h, i64* %lprev, i64 %8, i64 %sub)
  %10 = load i64, i64* %h, align 8
  %cmp4 = icmp ne i64 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %11 = load i64, i64* %h, align 8
  %12 = load i64, i64* %n.addr, align 8
  %dec6 = add i64 %12, -1
  store i64 %dec6, i64* %n.addr, align 8
  %13 = load i64*, i64** %dest.addr, align 8
  %arrayidx7 = getelementptr i64, i64* %13, i64 %12
  store i64 %11, i64* %arrayidx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i64, i64* %m.addr, align 8
  %cmp8 = icmp ne i64 %14, -1
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i64, i64* %m.addr, align 8
  %16 = load i64*, i64** %src.addr, align 8
  %arrayidx9 = getelementptr i64, i64* %16, i64 %15
  %17 = load i64, i64* %arrayidx9, align 8
  %18 = load i64, i64* %r, align 8
  %sub10 = sub i64 19, %18
  call void @_mpd_divmod_pow10(i64* %h, i64* %l, i64 %17, i64 %sub10)
  %19 = load i64, i64* %ph, align 8
  %20 = load i64, i64* %lprev, align 8
  %mul = mul i64 %19, %20
  %21 = load i64, i64* %h, align 8
  %add = add i64 %mul, %21
  %22 = load i64, i64* %n.addr, align 8
  %23 = load i64*, i64** %dest.addr, align 8
  %arrayidx11 = getelementptr i64, i64* %23, i64 %22
  store i64 %add, i64* %arrayidx11, align 8
  %24 = load i64, i64* %l, align 8
  store i64 %24, i64* %lprev, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i64, i64* %m.addr, align 8
  %dec12 = add i64 %25, -1
  store i64 %dec12, i64* %m.addr, align 8
  %26 = load i64, i64* %n.addr, align 8
  %dec13 = add i64 %26, -1
  store i64 %dec13, i64* %n.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i64, i64* %ph, align 8
  %28 = load i64, i64* %lprev, align 8
  %mul14 = mul i64 %27, %28
  %29 = load i64, i64* %q, align 8
  %30 = load i64*, i64** %dest.addr, align 8
  %arrayidx15 = getelementptr i64, i64* %30, i64 %29
  store i64 %mul14, i64* %arrayidx15, align 8
  br label %if.end.21

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %31 = load i64, i64* %m.addr, align 8
  %dec16 = add i64 %31, -1
  store i64 %dec16, i64* %m.addr, align 8
  %cmp17 = icmp ne i64 %dec16, -1
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i64, i64* %m.addr, align 8
  %33 = load i64*, i64** %src.addr, align 8
  %arrayidx18 = getelementptr i64, i64* %33, i64 %32
  %34 = load i64, i64* %arrayidx18, align 8
  %35 = load i64, i64* %m.addr, align 8
  %36 = load i64, i64* %q, align 8
  %add19 = add i64 %35, %36
  %37 = load i64*, i64** %dest.addr, align 8
  %arrayidx20 = getelementptr i64, i64* %37, i64 %add19
  store i64 %34, i64* %arrayidx20, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %for.end
  %38 = load i64*, i64** %dest.addr, align 8
  %39 = load i64, i64* %q, align 8
  call void @mpd_uint_zero(i64* %38, i64 %39)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_div_word(i64* %q, i64* %r, i64 %v, i64 %d) #1 {
entry:
  %q.addr = alloca i64*, align 8
  %r.addr = alloca i64*, align 8
  %v.addr = alloca i64, align 8
  %d.addr = alloca i64, align 8
  store i64* %q, i64** %q.addr, align 8
  store i64* %r, i64** %r.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 %d, i64* %d.addr, align 8
  %0 = load i64, i64* %v.addr, align 8
  %1 = load i64, i64* %d.addr, align 8
  %div = udiv i64 %0, %1
  %2 = load i64*, i64** %q.addr, align 8
  store i64 %div, i64* %2, align 8
  %3 = load i64, i64* %v.addr, align 8
  %4 = load i64*, i64** %q.addr, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %d.addr, align 8
  %mul = mul i64 %5, %6
  %sub = sub i64 %3, %mul
  %7 = load i64*, i64** %r.addr, align 8
  store i64 %sub, i64* %7, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_divmod_pow10(i64* %q, i64* %r, i64 %v, i64 %exp) #1 {
entry:
  %q.addr = alloca i64*, align 8
  %r.addr = alloca i64*, align 8
  %v.addr = alloca i64, align 8
  %exp.addr = alloca i64, align 8
  store i64* %q, i64** %q.addr, align 8
  store i64* %r, i64** %r.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 %exp, i64* %exp.addr, align 8
  %0 = load i64, i64* %exp.addr, align 8
  %cmp = icmp ule i64 %0, 9
  br i1 %cmp, label %if.then, label %if.else.37

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %exp.addr, align 8
  %cmp1 = icmp ule i64 %1, 4
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i64, i64* %exp.addr, align 8
  switch i64 %2, label %sw.epilog [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.3
    i64 2, label %sw.bb.4
    i64 3, label %sw.bb.8
    i64 4, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.then.2
  %3 = load i64, i64* %v.addr, align 8
  %4 = load i64*, i64** %q.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i64*, i64** %r.addr, align 8
  store i64 0, i64* %5, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then.2
  %6 = load i64, i64* %v.addr, align 8
  %div = udiv i64 %6, 10
  %7 = load i64*, i64** %q.addr, align 8
  store i64 %div, i64* %7, align 8
  %8 = load i64, i64* %v.addr, align 8
  %9 = load i64*, i64** %q.addr, align 8
  %10 = load i64, i64* %9, align 8
  %mul = mul i64 %10, 10
  %sub = sub i64 %8, %mul
  %11 = load i64*, i64** %r.addr, align 8
  store i64 %sub, i64* %11, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then.2
  %12 = load i64, i64* %v.addr, align 8
  %div5 = udiv i64 %12, 100
  %13 = load i64*, i64** %q.addr, align 8
  store i64 %div5, i64* %13, align 8
  %14 = load i64, i64* %v.addr, align 8
  %15 = load i64*, i64** %q.addr, align 8
  %16 = load i64, i64* %15, align 8
  %mul6 = mul i64 %16, 100
  %sub7 = sub i64 %14, %mul6
  %17 = load i64*, i64** %r.addr, align 8
  store i64 %sub7, i64* %17, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then.2
  %18 = load i64, i64* %v.addr, align 8
  %div9 = udiv i64 %18, 1000
  %19 = load i64*, i64** %q.addr, align 8
  store i64 %div9, i64* %19, align 8
  %20 = load i64, i64* %v.addr, align 8
  %21 = load i64*, i64** %q.addr, align 8
  %22 = load i64, i64* %21, align 8
  %mul10 = mul i64 %22, 1000
  %sub11 = sub i64 %20, %mul10
  %23 = load i64*, i64** %r.addr, align 8
  store i64 %sub11, i64* %23, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then.2
  %24 = load i64, i64* %v.addr, align 8
  %div13 = udiv i64 %24, 10000
  %25 = load i64*, i64** %q.addr, align 8
  store i64 %div13, i64* %25, align 8
  %26 = load i64, i64* %v.addr, align 8
  %27 = load i64*, i64** %q.addr, align 8
  %28 = load i64, i64* %27, align 8
  %mul14 = mul i64 %28, 10000
  %sub15 = sub i64 %26, %mul14
  %29 = load i64*, i64** %r.addr, align 8
  store i64 %sub15, i64* %29, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.2, %sw.bb.12, %sw.bb.8, %sw.bb.4, %sw.bb.3, %sw.bb
  br label %if.end

if.else:                                          ; preds = %if.then
  %30 = load i64, i64* %exp.addr, align 8
  switch i64 %30, label %sw.epilog.36 [
    i64 5, label %sw.bb.16
    i64 6, label %sw.bb.20
    i64 7, label %sw.bb.24
    i64 8, label %sw.bb.28
    i64 9, label %sw.bb.32
  ]

sw.bb.16:                                         ; preds = %if.else
  %31 = load i64, i64* %v.addr, align 8
  %div17 = udiv i64 %31, 100000
  %32 = load i64*, i64** %q.addr, align 8
  store i64 %div17, i64* %32, align 8
  %33 = load i64, i64* %v.addr, align 8
  %34 = load i64*, i64** %q.addr, align 8
  %35 = load i64, i64* %34, align 8
  %mul18 = mul i64 %35, 100000
  %sub19 = sub i64 %33, %mul18
  %36 = load i64*, i64** %r.addr, align 8
  store i64 %sub19, i64* %36, align 8
  br label %sw.epilog.36

sw.bb.20:                                         ; preds = %if.else
  %37 = load i64, i64* %v.addr, align 8
  %div21 = udiv i64 %37, 1000000
  %38 = load i64*, i64** %q.addr, align 8
  store i64 %div21, i64* %38, align 8
  %39 = load i64, i64* %v.addr, align 8
  %40 = load i64*, i64** %q.addr, align 8
  %41 = load i64, i64* %40, align 8
  %mul22 = mul i64 %41, 1000000
  %sub23 = sub i64 %39, %mul22
  %42 = load i64*, i64** %r.addr, align 8
  store i64 %sub23, i64* %42, align 8
  br label %sw.epilog.36

sw.bb.24:                                         ; preds = %if.else
  %43 = load i64, i64* %v.addr, align 8
  %div25 = udiv i64 %43, 10000000
  %44 = load i64*, i64** %q.addr, align 8
  store i64 %div25, i64* %44, align 8
  %45 = load i64, i64* %v.addr, align 8
  %46 = load i64*, i64** %q.addr, align 8
  %47 = load i64, i64* %46, align 8
  %mul26 = mul i64 %47, 10000000
  %sub27 = sub i64 %45, %mul26
  %48 = load i64*, i64** %r.addr, align 8
  store i64 %sub27, i64* %48, align 8
  br label %sw.epilog.36

sw.bb.28:                                         ; preds = %if.else
  %49 = load i64, i64* %v.addr, align 8
  %div29 = udiv i64 %49, 100000000
  %50 = load i64*, i64** %q.addr, align 8
  store i64 %div29, i64* %50, align 8
  %51 = load i64, i64* %v.addr, align 8
  %52 = load i64*, i64** %q.addr, align 8
  %53 = load i64, i64* %52, align 8
  %mul30 = mul i64 %53, 100000000
  %sub31 = sub i64 %51, %mul30
  %54 = load i64*, i64** %r.addr, align 8
  store i64 %sub31, i64* %54, align 8
  br label %sw.epilog.36

sw.bb.32:                                         ; preds = %if.else
  %55 = load i64, i64* %v.addr, align 8
  %div33 = udiv i64 %55, 1000000000
  %56 = load i64*, i64** %q.addr, align 8
  store i64 %div33, i64* %56, align 8
  %57 = load i64, i64* %v.addr, align 8
  %58 = load i64*, i64** %q.addr, align 8
  %59 = load i64, i64* %58, align 8
  %mul34 = mul i64 %59, 1000000000
  %sub35 = sub i64 %57, %mul34
  %60 = load i64*, i64** %r.addr, align 8
  store i64 %sub35, i64* %60, align 8
  br label %sw.epilog.36

sw.epilog.36:                                     ; preds = %if.else, %sw.bb.32, %sw.bb.28, %sw.bb.24, %sw.bb.20, %sw.bb.16
  br label %if.end

if.end:                                           ; preds = %sw.epilog.36, %sw.epilog
  br label %if.end.84

if.else.37:                                       ; preds = %entry
  %61 = load i64, i64* %exp.addr, align 8
  %cmp38 = icmp ule i64 %61, 14
  br i1 %cmp38, label %if.then.39, label %if.else.61

if.then.39:                                       ; preds = %if.else.37
  %62 = load i64, i64* %exp.addr, align 8
  switch i64 %62, label %sw.epilog.60 [
    i64 10, label %sw.bb.40
    i64 11, label %sw.bb.44
    i64 12, label %sw.bb.48
    i64 13, label %sw.bb.52
    i64 14, label %sw.bb.56
  ]

sw.bb.40:                                         ; preds = %if.then.39
  %63 = load i64, i64* %v.addr, align 8
  %div41 = udiv i64 %63, 10000000000
  %64 = load i64*, i64** %q.addr, align 8
  store i64 %div41, i64* %64, align 8
  %65 = load i64, i64* %v.addr, align 8
  %66 = load i64*, i64** %q.addr, align 8
  %67 = load i64, i64* %66, align 8
  %mul42 = mul i64 %67, 10000000000
  %sub43 = sub i64 %65, %mul42
  %68 = load i64*, i64** %r.addr, align 8
  store i64 %sub43, i64* %68, align 8
  br label %sw.epilog.60

sw.bb.44:                                         ; preds = %if.then.39
  %69 = load i64, i64* %v.addr, align 8
  %div45 = udiv i64 %69, 100000000000
  %70 = load i64*, i64** %q.addr, align 8
  store i64 %div45, i64* %70, align 8
  %71 = load i64, i64* %v.addr, align 8
  %72 = load i64*, i64** %q.addr, align 8
  %73 = load i64, i64* %72, align 8
  %mul46 = mul i64 %73, 100000000000
  %sub47 = sub i64 %71, %mul46
  %74 = load i64*, i64** %r.addr, align 8
  store i64 %sub47, i64* %74, align 8
  br label %sw.epilog.60

sw.bb.48:                                         ; preds = %if.then.39
  %75 = load i64, i64* %v.addr, align 8
  %div49 = udiv i64 %75, 1000000000000
  %76 = load i64*, i64** %q.addr, align 8
  store i64 %div49, i64* %76, align 8
  %77 = load i64, i64* %v.addr, align 8
  %78 = load i64*, i64** %q.addr, align 8
  %79 = load i64, i64* %78, align 8
  %mul50 = mul i64 %79, 1000000000000
  %sub51 = sub i64 %77, %mul50
  %80 = load i64*, i64** %r.addr, align 8
  store i64 %sub51, i64* %80, align 8
  br label %sw.epilog.60

sw.bb.52:                                         ; preds = %if.then.39
  %81 = load i64, i64* %v.addr, align 8
  %div53 = udiv i64 %81, 10000000000000
  %82 = load i64*, i64** %q.addr, align 8
  store i64 %div53, i64* %82, align 8
  %83 = load i64, i64* %v.addr, align 8
  %84 = load i64*, i64** %q.addr, align 8
  %85 = load i64, i64* %84, align 8
  %mul54 = mul i64 %85, 10000000000000
  %sub55 = sub i64 %83, %mul54
  %86 = load i64*, i64** %r.addr, align 8
  store i64 %sub55, i64* %86, align 8
  br label %sw.epilog.60

sw.bb.56:                                         ; preds = %if.then.39
  %87 = load i64, i64* %v.addr, align 8
  %div57 = udiv i64 %87, 100000000000000
  %88 = load i64*, i64** %q.addr, align 8
  store i64 %div57, i64* %88, align 8
  %89 = load i64, i64* %v.addr, align 8
  %90 = load i64*, i64** %q.addr, align 8
  %91 = load i64, i64* %90, align 8
  %mul58 = mul i64 %91, 100000000000000
  %sub59 = sub i64 %89, %mul58
  %92 = load i64*, i64** %r.addr, align 8
  store i64 %sub59, i64* %92, align 8
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %if.then.39, %sw.bb.56, %sw.bb.52, %sw.bb.48, %sw.bb.44, %sw.bb.40
  br label %if.end.83

if.else.61:                                       ; preds = %if.else.37
  %93 = load i64, i64* %exp.addr, align 8
  switch i64 %93, label %sw.epilog.82 [
    i64 15, label %sw.bb.62
    i64 16, label %sw.bb.66
    i64 17, label %sw.bb.70
    i64 18, label %sw.bb.74
    i64 19, label %sw.bb.78
  ]

sw.bb.62:                                         ; preds = %if.else.61
  %94 = load i64, i64* %v.addr, align 8
  %div63 = udiv i64 %94, 1000000000000000
  %95 = load i64*, i64** %q.addr, align 8
  store i64 %div63, i64* %95, align 8
  %96 = load i64, i64* %v.addr, align 8
  %97 = load i64*, i64** %q.addr, align 8
  %98 = load i64, i64* %97, align 8
  %mul64 = mul i64 %98, 1000000000000000
  %sub65 = sub i64 %96, %mul64
  %99 = load i64*, i64** %r.addr, align 8
  store i64 %sub65, i64* %99, align 8
  br label %sw.epilog.82

sw.bb.66:                                         ; preds = %if.else.61
  %100 = load i64, i64* %v.addr, align 8
  %div67 = udiv i64 %100, 10000000000000000
  %101 = load i64*, i64** %q.addr, align 8
  store i64 %div67, i64* %101, align 8
  %102 = load i64, i64* %v.addr, align 8
  %103 = load i64*, i64** %q.addr, align 8
  %104 = load i64, i64* %103, align 8
  %mul68 = mul i64 %104, 10000000000000000
  %sub69 = sub i64 %102, %mul68
  %105 = load i64*, i64** %r.addr, align 8
  store i64 %sub69, i64* %105, align 8
  br label %sw.epilog.82

sw.bb.70:                                         ; preds = %if.else.61
  %106 = load i64, i64* %v.addr, align 8
  %div71 = udiv i64 %106, 100000000000000000
  %107 = load i64*, i64** %q.addr, align 8
  store i64 %div71, i64* %107, align 8
  %108 = load i64, i64* %v.addr, align 8
  %109 = load i64*, i64** %q.addr, align 8
  %110 = load i64, i64* %109, align 8
  %mul72 = mul i64 %110, 100000000000000000
  %sub73 = sub i64 %108, %mul72
  %111 = load i64*, i64** %r.addr, align 8
  store i64 %sub73, i64* %111, align 8
  br label %sw.epilog.82

sw.bb.74:                                         ; preds = %if.else.61
  %112 = load i64, i64* %v.addr, align 8
  %div75 = udiv i64 %112, 1000000000000000000
  %113 = load i64*, i64** %q.addr, align 8
  store i64 %div75, i64* %113, align 8
  %114 = load i64, i64* %v.addr, align 8
  %115 = load i64*, i64** %q.addr, align 8
  %116 = load i64, i64* %115, align 8
  %mul76 = mul i64 %116, 1000000000000000000
  %sub77 = sub i64 %114, %mul76
  %117 = load i64*, i64** %r.addr, align 8
  store i64 %sub77, i64* %117, align 8
  br label %sw.epilog.82

sw.bb.78:                                         ; preds = %if.else.61
  %118 = load i64, i64* %v.addr, align 8
  %div79 = udiv i64 %118, -8446744073709551616
  %119 = load i64*, i64** %q.addr, align 8
  store i64 %div79, i64* %119, align 8
  %120 = load i64, i64* %v.addr, align 8
  %121 = load i64*, i64** %q.addr, align 8
  %122 = load i64, i64* %121, align 8
  %mul80 = mul i64 %122, -8446744073709551616
  %sub81 = sub i64 %120, %mul80
  %123 = load i64*, i64** %r.addr, align 8
  store i64 %sub81, i64* %123, align 8
  br label %sw.epilog.82

sw.epilog.82:                                     ; preds = %if.else.61, %sw.bb.78, %sw.bb.74, %sw.bb.70, %sw.bb.66, %sw.bb.62
  br label %if.end.83

if.end.83:                                        ; preds = %sw.epilog.82, %sw.epilog.60
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end
  ret void
}

declare hidden void @mpd_uint_zero(i64*, i64) #2

; Function Attrs: nounwind uwtable
define hidden i64 @_mpd_baseshiftr(i64* %dest, i64* %src, i64 %slen, i64 %shift) #0 {
entry:
  %dest.addr = alloca i64*, align 8
  %src.addr = alloca i64*, align 8
  %slen.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  %l = alloca i64, align 8
  %h = alloca i64, align 8
  %hprev = alloca i64, align 8
  %rnd = alloca i64, align 8
  %rest = alloca i64, align 8
  %q = alloca i64, align 8
  %r = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %ph = alloca i64, align 8
  store i64* %dest, i64** %dest.addr, align 8
  store i64* %src, i64** %src.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i64 %shift, i64* %shift.addr, align 8
  %0 = load i64, i64* %shift.addr, align 8
  call void @_mpd_div_word(i64* %q, i64* %r, i64 %0, i64 19)
  store i64 0, i64* %rest, align 8
  store i64 0, i64* %rnd, align 8
  %1 = load i64, i64* %r, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %r, align 8
  %sub = sub i64 19, %2
  %arrayidx = getelementptr [0 x i64], [0 x i64]* @mpd_pow10, i32 0, i64 %sub
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %ph, align 8
  %4 = load i64, i64* %q, align 8
  %5 = load i64*, i64** %src.addr, align 8
  %arrayidx1 = getelementptr i64, i64* %5, i64 %4
  %6 = load i64, i64* %arrayidx1, align 8
  %7 = load i64, i64* %r, align 8
  call void @_mpd_divmod_pow10(i64* %hprev, i64* %rest, i64 %6, i64 %7)
  %8 = load i64, i64* %rest, align 8
  %9 = load i64, i64* %r, align 8
  %sub2 = sub i64 %9, 1
  call void @_mpd_divmod_pow10(i64* %rnd, i64* %rest, i64 %8, i64 %sub2)
  %10 = load i64, i64* %rest, align 8
  %cmp3 = icmp eq i64 %10, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %11 = load i64, i64* %q, align 8
  %cmp4 = icmp ugt i64 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %12 = load i64*, i64** %src.addr, align 8
  %13 = load i64, i64* %q, align 8
  %call = call i32 @_mpd_isallzero(i64* %12, i64 %13)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  store i64 %conv, i64* %rest, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  store i64 0, i64* %j, align 8
  %14 = load i64, i64* %q, align 8
  %add = add i64 %14, 1
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %slen.addr, align 8
  %cmp6 = icmp ult i64 %15, %16
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i64, i64* %i, align 8
  %18 = load i64*, i64** %src.addr, align 8
  %arrayidx8 = getelementptr i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx8, align 8
  %20 = load i64, i64* %r, align 8
  call void @_mpd_divmod_pow10(i64* %h, i64* %l, i64 %19, i64 %20)
  %21 = load i64, i64* %ph, align 8
  %22 = load i64, i64* %l, align 8
  %mul = mul i64 %21, %22
  %23 = load i64, i64* %hprev, align 8
  %add9 = add i64 %mul, %23
  %24 = load i64, i64* %j, align 8
  %25 = load i64*, i64** %dest.addr, align 8
  %arrayidx10 = getelementptr i64, i64* %25, i64 %24
  store i64 %add9, i64* %arrayidx10, align 8
  %26 = load i64, i64* %h, align 8
  store i64 %26, i64* %hprev, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %i, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %i, align 8
  %28 = load i64, i64* %j, align 8
  %inc11 = add i64 %28, 1
  store i64 %inc11, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i64, i64* %hprev, align 8
  %cmp12 = icmp ne i64 %29, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %for.end
  %30 = load i64, i64* %hprev, align 8
  %31 = load i64, i64* %j, align 8
  %32 = load i64*, i64** %dest.addr, align 8
  %arrayidx15 = getelementptr i64, i64* %32, i64 %31
  store i64 %30, i64* %arrayidx15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %for.end
  br label %if.end.44

if.else:                                          ; preds = %entry
  %33 = load i64, i64* %q, align 8
  %cmp17 = icmp ugt i64 %33, 0
  br i1 %cmp17, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %if.else
  %34 = load i64, i64* %q, align 8
  %sub20 = sub i64 %34, 1
  %35 = load i64*, i64** %src.addr, align 8
  %arrayidx21 = getelementptr i64, i64* %35, i64 %sub20
  %36 = load i64, i64* %arrayidx21, align 8
  call void @_mpd_divmod_pow10(i64* %rnd, i64* %rest, i64 %36, i64 18)
  %37 = load i64, i64* %rest, align 8
  %cmp22 = icmp eq i64 %37, 0
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.then.19
  %38 = load i64*, i64** %src.addr, align 8
  %39 = load i64, i64* %q, align 8
  %sub25 = sub i64 %39, 1
  %call26 = call i32 @_mpd_isallzero(i64* %38, i64 %sub25)
  %tobool27 = icmp ne i32 %call26, 0
  %lnot28 = xor i1 %tobool27, true
  %lnot.ext29 = zext i1 %lnot28 to i32
  %conv30 = sext i32 %lnot.ext29 to i64
  store i64 %conv30, i64* %rest, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %if.then.19
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.else
  store i64 0, i64* %j, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.41, %if.end.32
  %40 = load i64, i64* %j, align 8
  %41 = load i64, i64* %slen.addr, align 8
  %42 = load i64, i64* %q, align 8
  %sub34 = sub i64 %41, %42
  %cmp35 = icmp ult i64 %40, %sub34
  br i1 %cmp35, label %for.body.37, label %for.end.43

for.body.37:                                      ; preds = %for.cond.33
  %43 = load i64, i64* %q, align 8
  %44 = load i64, i64* %j, align 8
  %add38 = add i64 %43, %44
  %45 = load i64*, i64** %src.addr, align 8
  %arrayidx39 = getelementptr i64, i64* %45, i64 %add38
  %46 = load i64, i64* %arrayidx39, align 8
  %47 = load i64, i64* %j, align 8
  %48 = load i64*, i64** %dest.addr, align 8
  %arrayidx40 = getelementptr i64, i64* %48, i64 %47
  store i64 %46, i64* %arrayidx40, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.37
  %49 = load i64, i64* %j, align 8
  %inc42 = add i64 %49, 1
  store i64 %inc42, i64* %j, align 8
  br label %for.cond.33

for.end.43:                                       ; preds = %for.cond.33
  br label %if.end.44

if.end.44:                                        ; preds = %for.end.43, %if.end.16
  %50 = load i64, i64* %rnd, align 8
  %cmp45 = icmp eq i64 %50, 0
  br i1 %cmp45, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.44
  %51 = load i64, i64* %rnd, align 8
  %cmp47 = icmp eq i64 %51, 5
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end.44
  %52 = load i64, i64* %rnd, align 8
  %53 = load i64, i64* %rest, align 8
  %tobool49 = icmp ne i64 %53, 0
  %lnot50 = xor i1 %tobool49, true
  %lnot52 = xor i1 %lnot50, true
  %lnot.ext53 = zext i1 %lnot52 to i32
  %conv54 = sext i32 %lnot.ext53 to i64
  %add55 = add i64 %52, %conv54
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %54 = load i64, i64* %rnd, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add55, %cond.true ], [ %54, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mpd_shortadd_b(i64* %w, i64 %m, i64 %v, i64 %b) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %m.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64*, i64** %w.addr, align 8
  %arrayidx = getelementptr i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load i64, i64* %v.addr, align 8
  %add = add i64 %1, %2
  store i64 %add, i64* %s, align 8
  %3 = load i64, i64* %s, align 8
  %4 = load i64, i64* %v.addr, align 8
  %cmp = icmp ult i64 %3, %4
  %conv = zext i1 %cmp to i32
  %5 = load i64, i64* %s, align 8
  %6 = load i64, i64* %b.addr, align 8
  %cmp1 = icmp uge i64 %5, %6
  %conv2 = zext i1 %cmp1 to i32
  %or = or i32 %conv, %conv2
  %conv3 = sext i32 %or to i64
  store i64 %conv3, i64* %carry, align 8
  %7 = load i64, i64* %carry, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i64, i64* %s, align 8
  %9 = load i64, i64* %b.addr, align 8
  %sub = sub i64 %8, %9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i64, i64* %s, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %10, %cond.false ]
  %11 = load i64*, i64** %w.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %11, i64 0
  store i64 %cond, i64* %arrayidx4, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i64, i64* %carry, align 8
  %tobool5 = icmp ne i64 %12, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %m.addr, align 8
  %cmp6 = icmp ult i64 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load i64, i64* %i, align 8
  %17 = load i64*, i64** %w.addr, align 8
  %arrayidx8 = getelementptr i64, i64* %17, i64 %16
  %18 = load i64, i64* %arrayidx8, align 8
  %19 = load i64, i64* %carry, align 8
  %add9 = add i64 %18, %19
  store i64 %add9, i64* %s, align 8
  %20 = load i64, i64* %s, align 8
  %21 = load i64, i64* %b.addr, align 8
  %cmp10 = icmp eq i64 %20, %21
  %conv11 = zext i1 %cmp10 to i32
  %conv12 = sext i32 %conv11 to i64
  store i64 %conv12, i64* %carry, align 8
  %22 = load i64, i64* %carry, align 8
  %tobool13 = icmp ne i64 %22, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %for.body
  br label %cond.end.16

cond.false.15:                                    ; preds = %for.body
  %23 = load i64, i64* %s, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i64 [ 0, %cond.true.14 ], [ %23, %cond.false.15 ]
  %24 = load i64, i64* %i, align 8
  %25 = load i64*, i64** %w.addr, align 8
  %arrayidx18 = getelementptr i64, i64* %25, i64 %24
  store i64 %cond17, i64* %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.16
  %26 = load i64, i64* %i, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %27 = load i64, i64* %carry, align 8
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mpd_shortmul_c(i64* %w, i64* %u, i64 %n, i64 %v) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 0, i64* %carry, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i64*, i64** %u.addr, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %v.addr, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %4, i64 %5)
  %6 = load i64, i64* %carry, align 8
  %7 = load i64, i64* %lo, align 8
  %add = add i64 %6, %7
  store i64 %add, i64* %lo, align 8
  %8 = load i64, i64* %lo, align 8
  %9 = load i64, i64* %carry, align 8
  %cmp1 = icmp ult i64 %8, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i64, i64* %hi, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** %w.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %12, i64 %11
  %13 = load i64, i64* %hi, align 8
  %14 = load i64, i64* %lo, align 8
  call void @_mpd_div_words_r(i64* %carry, i64* %arrayidx2, i64 %13, i64 %14)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i64, i64* %i, align 8
  %inc3 = add i64 %15, 1
  store i64 %inc3, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %carry, align 8
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mpd_shortmul_b(i64* %w, i64* %u, i64 %n, i64 %v, i64 %b) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %carry = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 0, i64* %carry, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i64*, i64** %u.addr, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %v.addr, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %4, i64 %5)
  %6 = load i64, i64* %carry, align 8
  %7 = load i64, i64* %lo, align 8
  %add = add i64 %6, %7
  store i64 %add, i64* %lo, align 8
  %8 = load i64, i64* %lo, align 8
  %9 = load i64, i64* %carry, align 8
  %cmp1 = icmp ult i64 %8, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i64, i64* %hi, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** %w.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %12, i64 %11
  %13 = load i64, i64* %hi, align 8
  %14 = load i64, i64* %lo, align 8
  %15 = load i64, i64* %b.addr, align 8
  call void @_mpd_div_words(i64* %carry, i64* %arrayidx2, i64 %13, i64 %14, i64 %15)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %i, align 8
  %inc3 = add i64 %16, 1
  store i64 %inc3, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* %carry, align 8
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mpd_shortdiv_b(i64* %w, i64* %u, i64 %n, i64 %v, i64 %b) #0 {
entry:
  %w.addr = alloca i64*, align 8
  %u.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %rem = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %w, i64** %w.addr, align 8
  store i64* %u, i64** %u.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 0, i64* %rem, align 8
  %0 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %0, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp ne i64 %1, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %rem, align 8
  %3 = load i64, i64* %b.addr, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %2, i64 %3)
  %4 = load i64, i64* %i, align 8
  %5 = load i64*, i64** %u.addr, align 8
  %arrayidx = getelementptr i64, i64* %5, i64 %4
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64, i64* %lo, align 8
  %add = add i64 %6, %7
  store i64 %add, i64* %lo, align 8
  %8 = load i64, i64* %lo, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load i64*, i64** %u.addr, align 8
  %arrayidx1 = getelementptr i64, i64* %10, i64 %9
  %11 = load i64, i64* %arrayidx1, align 8
  %cmp2 = icmp ult i64 %8, %11
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i64, i64* %hi, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i64, i64* %i, align 8
  %14 = load i64*, i64** %w.addr, align 8
  %arrayidx3 = getelementptr i64, i64* %14, i64 %13
  %15 = load i64, i64* %hi, align 8
  %16 = load i64, i64* %lo, align 8
  %17 = load i64, i64* %v.addr, align 8
  call void @_mpd_div_words(i64* %arrayidx3, i64* %rem, i64 %15, i64 %16, i64 %17)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i64, i64* %i, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %rem, align 8
  ret i64 %19
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 89699, i32 89709}
!3 = !{i32 90004, i32 90014}
