; ModuleID = 'patterns/connections.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@conn_db = external global %struct.pattern_db, align 8
@experimental_connections = external global i32, align 4
@transformation = external global [1369 x [8 x i32]], align 16
@board = external global [421 x i8], align 16
@white_eye = external global [400 x %struct.eye_data], align 16
@black_eye = external global [400 x %struct.eye_data], align 16
@debug = external global i32, align 4
@.str = private unnamed_addr constant [48 x i8] c"Connection pattern of type %s inhibited at %1m\0A\00", align 1
@dragon = external global [400 x %struct.dragon_data], align 16
@worm = external global [400 x %struct.worm_data], align 16
@.str.1 = private unnamed_addr constant [36 x i8] c"Cutting pattern %s+%d found at %1m\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cutting point %1m\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Connecting pattern %s+%d found at %1m\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Lunch invalidating pattern %s+%d found at %1m\0A\00", align 1
@verbose = external global i32, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Pattern %s joins %C dragons %1m, %1m\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"inhibiting connection at %1m\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @find_cuts() #0 {
entry:
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @cut_callback, i32 6, %struct.pattern_db* @conn_db, i8* null, i8* null)
  ret void
}

declare void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cut_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i32 0, i32 14
  %1 = load i32, i32* %class, align 4
  %and = and i32 %1, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %anchor.addr, align 4
  %3 = load i32, i32* %color.addr, align 4
  %4 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %5 = load i32, i32* %ll.addr, align 4
  %6 = load i8*, i8** %data.addr, align 8
  call void @cut_connect_callback(i32 %2, i32 %3, %struct.pattern* %4, i32 %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @find_connections() #0 {
entry:
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @conn_callback, i32 6, %struct.pattern_db* @conn_db, i8* null, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @conn_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i32 0, i32 14
  %1 = load i32, i32* %class, align 4
  %and = and i32 %1, 66048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %anchor.addr, align 4
  %3 = load i32, i32* %color.addr, align 4
  %4 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %5 = load i32, i32* %ll.addr, align 4
  %6 = load i8*, i8** %data.addr, align 8
  call void @cut_connect_callback(i32 %2, i32 %3, %struct.pattern* %4, i32 %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @modify_eye_spaces() #0 {
entry:
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @modify_eye_callback, i32 6, %struct.pattern_db* @conn_db, i8* null, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @modify_eye_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i32 0, i32 14
  %1 = load i32, i32* %class, align 4
  %and = and i32 %1, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %anchor.addr, align 4
  %3 = load i32, i32* %color.addr, align 4
  %4 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %5 = load i32, i32* %ll.addr, align 4
  %6 = load i8*, i8** %data.addr, align 8
  call void @cut_connect_callback(i32 %2, i32 %3, %struct.pattern* %4, i32 %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cut_connect_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %move = alloca i32, align 4
  %k = alloca i32, align 4
  %first_dragon = alloca i32, align 4
  %second_dragon = alloca i32, align 4
  %other = alloca i32, align 4
  %pos = alloca i32, align 4
  %pos64 = alloca i32, align 4
  %pos144 = alloca i32, align 4
  %pos286 = alloca i32, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %first_dragon, align 4
  store i32 0, i32* %second_dragon, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %2, i32 0, i32 14
  %3 = load i32, i32* %class, align 4
  %and = and i32 %3, 4194304
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* @experimental_connections, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end.418

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class2 = getelementptr inbounds %struct.pattern, %struct.pattern* %5, i32 0, i32 14
  %6 = load i32, i32* %class2, align 4
  %and3 = and i32 %6, -2147483648
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.8

land.lhs.true.5:                                  ; preds = %if.end
  %7 = load i32, i32* @experimental_connections, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.5
  br label %for.end.418

if.end.8:                                         ; preds = %land.lhs.true.5, %if.end
  %8 = load i32, i32* %ll.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %9, i32 0, i32 11
  %10 = load i32, i32* %move_offset, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom9
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx10, align 4
  %12 = load i32, i32* %anchor.addr, align 4
  %add = add nsw i32 %11, %12
  store i32 %add, i32* %move, align 4
  %13 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class11 = getelementptr inbounds %struct.pattern, %struct.pattern* %13, i32 0, i32 14
  %14 = load i32, i32* %class11, align 4
  %and12 = and i32 %14, 512
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.17

land.lhs.true.14:                                 ; preds = %if.end.8
  %15 = load i32, i32* %move, align 4
  %16 = load i32, i32* %other, align 4
  %call = call i32 @safe_move(i32 %15, i32 %16)
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.14
  br label %for.end.418

if.end.17:                                        ; preds = %land.lhs.true.14, %if.end.8
  %17 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class18 = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 14
  %18 = load i32, i32* %class18, align 4
  %and19 = and i32 %18, 128
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.107

if.then.21:                                       ; preds = %if.end.17
  %19 = load i32, i32* @experimental_connections, align 4
  %tobool22 = icmp ne i32 %19, 0
  br i1 %tobool22, label %if.end.58, label %if.then.23

if.then.23:                                       ; preds = %if.then.21
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %20 = load i32, i32* %k, align 4
  %21 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %21, i32 0, i32 1
  %22 = load i32, i32* %patlen, align 4
  %cmp = icmp slt i32 %20, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %ll.addr, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %25, i32 0, i32 0
  %26 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx26 = getelementptr inbounds %struct.patval, %struct.patval* %26, i64 %idxprom25
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx26, i32 0, i32 0
  %27 = load i32, i32* %offset, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx28, i32 0, i64 %idxprom24
  %28 = load i32, i32* %arrayidx29, align 4
  %29 = load i32, i32* %anchor.addr, align 4
  %add30 = add nsw i32 %28, %29
  store i32 %add30, i32* %pos, align 4
  %30 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom31
  %31 = load i8, i8* %arrayidx32, align 1
  %conv = zext i8 %31 to i32
  %cmp33 = icmp eq i32 %conv, 0
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.57

land.lhs.true.35:                                 ; preds = %for.body
  %32 = load i32, i32* %color.addr, align 4
  %cmp36 = icmp eq i32 %32, 1
  br i1 %cmp36, label %land.lhs.true.38, label %lor.lhs.false

land.lhs.true.38:                                 ; preds = %land.lhs.true.35
  %33 = load i32, i32* %pos, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom39
  %type = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx40, i32 0, i32 8
  %34 = load i8, i8* %type, align 1
  %conv41 = sext i8 %34 to i32
  %and42 = and i32 %conv41, 4
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.38, %land.lhs.true.35
  %35 = load i32, i32* %color.addr, align 4
  %cmp44 = icmp eq i32 %35, 2
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.57

land.lhs.true.46:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* %pos, align 4
  %idxprom47 = sext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom47
  %type49 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx48, i32 0, i32 8
  %37 = load i8, i8* %type49, align 1
  %conv50 = sext i8 %37 to i32
  %and51 = and i32 %conv50, 4
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %land.lhs.true.46, %land.lhs.true.38
  %38 = load i32, i32* @debug, align 4
  %and54 = and i32 %38, 32
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.53
  br label %cond.end

cond.false:                                       ; preds = %if.then.53
  %39 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %39, i32 0, i32 3
  %40 = load i8*, i8** %name, align 8
  %41 = load i32, i32* %pos, align 4
  %call56 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i8* %40, i32 %41)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %for.end.418

if.end.57:                                        ; preds = %land.lhs.true.46, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %42 = load i32, i32* %k, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.then.21
  store i32 0, i32* %k, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.100, %if.end.58
  %43 = load i32, i32* %k, align 4
  %44 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen60 = getelementptr inbounds %struct.pattern, %struct.pattern* %44, i32 0, i32 1
  %45 = load i32, i32* %patlen60, align 4
  %cmp61 = icmp slt i32 %43, %45
  br i1 %cmp61, label %for.body.63, label %for.end.102

for.body.63:                                      ; preds = %for.cond.59
  %46 = load i32, i32* %ll.addr, align 4
  %idxprom65 = sext i32 %46 to i64
  %47 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %47 to i64
  %48 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn67 = getelementptr inbounds %struct.pattern, %struct.pattern* %48, i32 0, i32 0
  %49 = load %struct.patval*, %struct.patval** %patn67, align 8
  %arrayidx68 = getelementptr inbounds %struct.patval, %struct.patval* %49, i64 %idxprom66
  %offset69 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx68, i32 0, i32 0
  %50 = load i32, i32* %offset69, align 4
  %idxprom70 = sext i32 %50 to i64
  %arrayidx71 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx71, i32 0, i64 %idxprom65
  %51 = load i32, i32* %arrayidx72, align 4
  %52 = load i32, i32* %anchor.addr, align 4
  %add73 = add nsw i32 %51, %52
  store i32 %add73, i32* %pos64, align 4
  %53 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %53 to i64
  %54 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn75 = getelementptr inbounds %struct.pattern, %struct.pattern* %54, i32 0, i32 0
  %55 = load %struct.patval*, %struct.patval** %patn75, align 8
  %arrayidx76 = getelementptr inbounds %struct.patval, %struct.patval* %55, i64 %idxprom74
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx76, i32 0, i32 1
  %56 = load i32, i32* %att, align 4
  %cmp77 = icmp eq i32 %56, 2
  br i1 %cmp77, label %if.then.79, label %if.end.99

if.then.79:                                       ; preds = %for.body.63
  %57 = load i32, i32* %first_dragon, align 4
  %cmp80 = icmp eq i32 %57, 0
  br i1 %cmp80, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %if.then.79
  %58 = load i32, i32* %pos64, align 4
  %idxprom83 = sext i32 %58 to i64
  %arrayidx84 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom83
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx84, i32 0, i32 2
  %59 = load i32, i32* %origin, align 4
  store i32 %59, i32* %first_dragon, align 4
  br label %if.end.98

if.else:                                          ; preds = %if.then.79
  %60 = load i32, i32* %second_dragon, align 4
  %cmp85 = icmp eq i32 %60, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.97

land.lhs.true.87:                                 ; preds = %if.else
  %61 = load i32, i32* %pos64, align 4
  %idxprom88 = sext i32 %61 to i64
  %arrayidx89 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom88
  %origin90 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx89, i32 0, i32 2
  %62 = load i32, i32* %origin90, align 4
  %63 = load i32, i32* %first_dragon, align 4
  %cmp91 = icmp ne i32 %62, %63
  br i1 %cmp91, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %land.lhs.true.87
  %64 = load i32, i32* %pos64, align 4
  %idxprom94 = sext i32 %64 to i64
  %arrayidx95 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom94
  %origin96 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx95, i32 0, i32 2
  %65 = load i32, i32* %origin96, align 4
  store i32 %65, i32* %second_dragon, align 4
  br label %for.end.102

if.end.97:                                        ; preds = %land.lhs.true.87, %if.else
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.82
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %for.body.63
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %66 = load i32, i32* %k, align 4
  %inc101 = add nsw i32 %66, 1
  store i32 %inc101, i32* %k, align 4
  br label %for.cond.59

for.end.102:                                      ; preds = %if.then.93, %for.cond.59
  %67 = load i32, i32* %second_dragon, align 4
  %cmp103 = icmp eq i32 %67, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.end.102
  br label %for.end.418

if.end.106:                                       ; preds = %for.end.102
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.17
  %68 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag = getelementptr inbounds %struct.pattern, %struct.pattern* %68, i32 0, i32 22
  %69 = load i32, i32* %autohelper_flag, align 4
  %and108 = and i32 %69, 1
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.115

if.then.110:                                      ; preds = %if.end.107
  %70 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper = getelementptr inbounds %struct.pattern, %struct.pattern* %70, i32 0, i32 24
  %71 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper, align 8
  %72 = load i32, i32* %ll.addr, align 4
  %73 = load i32, i32* %move, align 4
  %74 = load i32, i32* %color.addr, align 4
  %call111 = call i32 %71(i32 %72, i32 %73, i32 %74, i32 0)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %if.then.110
  br label %for.end.418

if.end.114:                                       ; preds = %if.then.110
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.107
  %75 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper = getelementptr inbounds %struct.pattern, %struct.pattern* %75, i32 0, i32 23
  %76 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper, align 8
  %tobool116 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %76, null
  br i1 %tobool116, label %if.then.117, label %if.end.123

if.then.117:                                      ; preds = %if.end.115
  %77 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper118 = getelementptr inbounds %struct.pattern, %struct.pattern* %77, i32 0, i32 23
  %78 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper118, align 8
  %79 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %80 = load i32, i32* %ll.addr, align 4
  %81 = load i32, i32* %move, align 4
  %82 = load i32, i32* %color.addr, align 4
  %call119 = call i32 %78(%struct.pattern* %79, i32 %80, i32 %81, i32 %82)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %if.then.117
  br label %for.end.418

if.end.122:                                       ; preds = %if.then.117
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.115
  %83 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class124 = getelementptr inbounds %struct.pattern, %struct.pattern* %83, i32 0, i32 14
  %84 = load i32, i32* %class124, align 4
  %and125 = and i32 %84, 66048
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %land.lhs.true.127, label %if.end.171

land.lhs.true.127:                                ; preds = %if.end.123
  %85 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class128 = getelementptr inbounds %struct.pattern, %struct.pattern* %85, i32 0, i32 14
  %86 = load i32, i32* %class128, align 4
  %and129 = and i32 %86, 16
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.end.171, label %if.then.131

if.then.131:                                      ; preds = %land.lhs.true.127
  store i32 0, i32* %k, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.168, %if.then.131
  %87 = load i32, i32* %k, align 4
  %88 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen133 = getelementptr inbounds %struct.pattern, %struct.pattern* %88, i32 0, i32 1
  %89 = load i32, i32* %patlen133, align 4
  %cmp134 = icmp slt i32 %87, %89
  br i1 %cmp134, label %for.body.136, label %for.end.170

for.body.136:                                     ; preds = %for.cond.132
  %90 = load i32, i32* %k, align 4
  %idxprom137 = sext i32 %90 to i64
  %91 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn138 = getelementptr inbounds %struct.pattern, %struct.pattern* %91, i32 0, i32 0
  %92 = load %struct.patval*, %struct.patval** %patn138, align 8
  %arrayidx139 = getelementptr inbounds %struct.patval, %struct.patval* %92, i64 %idxprom137
  %att140 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx139, i32 0, i32 1
  %93 = load i32, i32* %att140, align 4
  %cmp141 = icmp eq i32 %93, 1
  br i1 %cmp141, label %if.then.143, label %if.end.167

if.then.143:                                      ; preds = %for.body.136
  %94 = load i32, i32* %ll.addr, align 4
  %idxprom145 = sext i32 %94 to i64
  %95 = load i32, i32* %k, align 4
  %idxprom146 = sext i32 %95 to i64
  %96 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn147 = getelementptr inbounds %struct.pattern, %struct.pattern* %96, i32 0, i32 0
  %97 = load %struct.patval*, %struct.patval** %patn147, align 8
  %arrayidx148 = getelementptr inbounds %struct.patval, %struct.patval* %97, i64 %idxprom146
  %offset149 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx148, i32 0, i32 0
  %98 = load i32, i32* %offset149, align 4
  %idxprom150 = sext i32 %98 to i64
  %arrayidx151 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom150
  %arrayidx152 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx151, i32 0, i64 %idxprom145
  %99 = load i32, i32* %arrayidx152, align 4
  %100 = load i32, i32* %anchor.addr, align 4
  %add153 = add nsw i32 %99, %100
  store i32 %add153, i32* %pos144, align 4
  %101 = load i32, i32* %pos144, align 4
  %idxprom154 = sext i32 %101 to i64
  %arrayidx155 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom154
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx155, i32 0, i32 16
  %arrayidx156 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %102 = load i32, i32* %arrayidx156, align 4
  %cmp157 = icmp eq i32 %102, 5
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.166

land.lhs.true.159:                                ; preds = %if.then.143
  %103 = load i32, i32* %move, align 4
  %cmp160 = icmp eq i32 %103, 0
  br i1 %cmp160, label %if.then.165, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %land.lhs.true.159
  %104 = load i32, i32* %move, align 4
  %105 = load i32, i32* %pos144, align 4
  %call163 = call i32 @does_defend(i32 %104, i32 %105)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %lor.lhs.false.162, %land.lhs.true.159
  br label %for.end.418

if.end.166:                                       ; preds = %lor.lhs.false.162, %if.then.143
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %for.body.136
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %106 = load i32, i32* %k, align 4
  %inc169 = add nsw i32 %106, 1
  store i32 %inc169, i32* %k, align 4
  br label %for.cond.132

for.end.170:                                      ; preds = %for.cond.132
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.170, %land.lhs.true.127, %if.end.123
  %107 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class172 = getelementptr inbounds %struct.pattern, %struct.pattern* %107, i32 0, i32 14
  %108 = load i32, i32* %class172, align 4
  %and173 = and i32 %108, 512
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.then.175, label %if.else.189

if.then.175:                                      ; preds = %if.end.171
  %109 = load i32, i32* @debug, align 4
  %and176 = and i32 %109, 32
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %cond.false.179, label %cond.true.178

cond.true.178:                                    ; preds = %if.then.175
  br label %cond.end.182

cond.false.179:                                   ; preds = %if.then.175
  %110 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name180 = getelementptr inbounds %struct.pattern, %struct.pattern* %110, i32 0, i32 3
  %111 = load i8*, i8** %name180, align 8
  %112 = load i32, i32* %ll.addr, align 4
  %113 = load i32, i32* %anchor.addr, align 4
  %call181 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %111, i32 %112, i32 %113)
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.179, %cond.true.178
  %114 = load i32, i32* @debug, align 4
  %and183 = and i32 %114, 32
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %cond.false.186, label %cond.true.185

cond.true.185:                                    ; preds = %cond.end.182
  br label %cond.end.188

cond.false.186:                                   ; preds = %cond.end.182
  %115 = load i32, i32* %move, align 4
  %call187 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %115)
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.186, %cond.true.185
  br label %if.end.215

if.else.189:                                      ; preds = %if.end.171
  %116 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class190 = getelementptr inbounds %struct.pattern, %struct.pattern* %116, i32 0, i32 14
  %117 = load i32, i32* %class190, align 4
  %and191 = and i32 %117, 128
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %if.then.193, label %if.else.201

if.then.193:                                      ; preds = %if.else.189
  %118 = load i32, i32* @debug, align 4
  %and194 = and i32 %118, 32
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %cond.false.197, label %cond.true.196

cond.true.196:                                    ; preds = %if.then.193
  br label %cond.end.200

cond.false.197:                                   ; preds = %if.then.193
  %119 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name198 = getelementptr inbounds %struct.pattern, %struct.pattern* %119, i32 0, i32 3
  %120 = load i8*, i8** %name198, align 8
  %121 = load i32, i32* %ll.addr, align 4
  %122 = load i32, i32* %anchor.addr, align 4
  %call199 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i8* %120, i32 %121, i32 %122)
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.197, %cond.true.196
  br label %if.end.214

if.else.201:                                      ; preds = %if.else.189
  %123 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class202 = getelementptr inbounds %struct.pattern, %struct.pattern* %123, i32 0, i32 14
  %124 = load i32, i32* %class202, align 4
  %and203 = and i32 %124, 65536
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %if.then.205, label %if.end.213

if.then.205:                                      ; preds = %if.else.201
  %125 = load i32, i32* @debug, align 4
  %and206 = and i32 %125, 32
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %cond.false.209, label %cond.true.208

cond.true.208:                                    ; preds = %if.then.205
  br label %cond.end.212

cond.false.209:                                   ; preds = %if.then.205
  %126 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name210 = getelementptr inbounds %struct.pattern, %struct.pattern* %126, i32 0, i32 3
  %127 = load i8*, i8** %name210, align 8
  %128 = load i32, i32* %ll.addr, align 4
  %129 = load i32, i32* %anchor.addr, align 4
  %call211 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0), i8* %127, i32 %128, i32 %129)
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.209, %cond.true.208
  br label %if.end.213

if.end.213:                                       ; preds = %cond.end.212, %if.else.201
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %cond.end.200
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %cond.end.188
  %130 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag216 = getelementptr inbounds %struct.pattern, %struct.pattern* %130, i32 0, i32 22
  %131 = load i32, i32* %autohelper_flag216, align 4
  %and217 = and i32 %131, 2
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.222

if.then.219:                                      ; preds = %if.end.215
  %132 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper220 = getelementptr inbounds %struct.pattern, %struct.pattern* %132, i32 0, i32 24
  %133 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper220, align 8
  %134 = load i32, i32* %ll.addr, align 4
  %135 = load i32, i32* %move, align 4
  %136 = load i32, i32* %color.addr, align 4
  %call221 = call i32 %133(i32 %134, i32 %135, i32 %136, i32 1)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.219, %if.end.215
  %137 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class223 = getelementptr inbounds %struct.pattern, %struct.pattern* %137, i32 0, i32 14
  %138 = load i32, i32* %class223, align 4
  %and224 = and i32 %138, 512
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %if.then.226, label %if.else.274

if.then.226:                                      ; preds = %if.end.222
  %139 = load i32, i32* %color.addr, align 4
  %cmp227 = icmp eq i32 %139, 1
  br i1 %cmp227, label %if.then.229, label %if.else.237

if.then.229:                                      ; preds = %if.then.226
  %140 = load i32, i32* %move, align 4
  %idxprom230 = sext i32 %140 to i64
  %arrayidx231 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom230
  %cut = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx231, i32 0, i32 11
  store i8 1, i8* %cut, align 1
  %141 = load i32, i32* %move, align 4
  %idxprom232 = sext i32 %141 to i64
  %arrayidx233 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom232
  %type234 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx233, i32 0, i32 8
  %142 = load i8, i8* %type234, align 1
  %conv235 = sext i8 %142 to i32
  %or = or i32 %conv235, 4
  %conv236 = trunc i32 %or to i8
  store i8 %conv236, i8* %type234, align 1
  br label %if.end.247

if.else.237:                                      ; preds = %if.then.226
  %143 = load i32, i32* %move, align 4
  %idxprom238 = sext i32 %143 to i64
  %arrayidx239 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom238
  %cut240 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx239, i32 0, i32 11
  store i8 1, i8* %cut240, align 1
  %144 = load i32, i32* %move, align 4
  %idxprom241 = sext i32 %144 to i64
  %arrayidx242 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom241
  %type243 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx242, i32 0, i32 8
  %145 = load i8, i8* %type243, align 1
  %conv244 = sext i8 %145 to i32
  %or245 = or i32 %conv244, 4
  %conv246 = trunc i32 %or245 to i8
  store i8 %conv246, i8* %type243, align 1
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.237, %if.then.229
  %146 = load i32, i32* %color.addr, align 4
  %cmp248 = icmp eq i32 %146, 1
  br i1 %cmp248, label %land.lhs.true.250, label %if.else.259

land.lhs.true.250:                                ; preds = %if.end.247
  %147 = load i32, i32* %move, align 4
  %idxprom251 = sext i32 %147 to i64
  %arrayidx252 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom251
  %color253 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx252, i32 0, i32 0
  %148 = load i32, i32* %color253, align 4
  %cmp254 = icmp eq i32 %148, 4
  br i1 %cmp254, label %if.then.256, label %if.else.259

if.then.256:                                      ; preds = %land.lhs.true.250
  %149 = load i32, i32* %move, align 4
  %idxprom257 = sext i32 %149 to i64
  %arrayidx258 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom257
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx258, i32 0, i32 7
  store i8 1, i8* %marginal, align 1
  br label %if.end.273

if.else.259:                                      ; preds = %land.lhs.true.250, %if.end.247
  %150 = load i32, i32* %color.addr, align 4
  %cmp260 = icmp eq i32 %150, 2
  br i1 %cmp260, label %land.lhs.true.262, label %if.end.272

land.lhs.true.262:                                ; preds = %if.else.259
  %151 = load i32, i32* %move, align 4
  %idxprom263 = sext i32 %151 to i64
  %arrayidx264 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom263
  %color265 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx264, i32 0, i32 0
  %152 = load i32, i32* %color265, align 4
  %cmp266 = icmp eq i32 %152, 5
  br i1 %cmp266, label %if.then.268, label %if.end.272

if.then.268:                                      ; preds = %land.lhs.true.262
  %153 = load i32, i32* %move, align 4
  %idxprom269 = sext i32 %153 to i64
  %arrayidx270 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom269
  %marginal271 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx270, i32 0, i32 7
  store i8 1, i8* %marginal271, align 1
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.268, %land.lhs.true.262, %if.else.259
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.then.256
  br label %if.end.280

if.else.274:                                      ; preds = %if.end.222
  %154 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class275 = getelementptr inbounds %struct.pattern, %struct.pattern* %154, i32 0, i32 14
  %155 = load i32, i32* %class275, align 4
  %and276 = and i32 %155, 128
  %tobool277 = icmp ne i32 %and276, 0
  br i1 %tobool277, label %if.end.279, label %if.then.278

if.then.278:                                      ; preds = %if.else.274
  br label %for.end.418

if.end.279:                                       ; preds = %if.else.274
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.end.273
  store i32 0, i32* %first_dragon, align 4
  store i32 0, i32* %second_dragon, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.281

for.cond.281:                                     ; preds = %for.inc.416, %if.end.280
  %156 = load i32, i32* %k, align 4
  %157 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen282 = getelementptr inbounds %struct.pattern, %struct.pattern* %157, i32 0, i32 1
  %158 = load i32, i32* %patlen282, align 4
  %cmp283 = icmp slt i32 %156, %158
  br i1 %cmp283, label %for.body.285, label %for.end.418

for.body.285:                                     ; preds = %for.cond.281
  %159 = load i32, i32* %ll.addr, align 4
  %idxprom287 = sext i32 %159 to i64
  %160 = load i32, i32* %k, align 4
  %idxprom288 = sext i32 %160 to i64
  %161 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn289 = getelementptr inbounds %struct.pattern, %struct.pattern* %161, i32 0, i32 0
  %162 = load %struct.patval*, %struct.patval** %patn289, align 8
  %arrayidx290 = getelementptr inbounds %struct.patval, %struct.patval* %162, i64 %idxprom288
  %offset291 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx290, i32 0, i32 0
  %163 = load i32, i32* %offset291, align 4
  %idxprom292 = sext i32 %163 to i64
  %arrayidx293 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom292
  %arrayidx294 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx293, i32 0, i64 %idxprom287
  %164 = load i32, i32* %arrayidx294, align 4
  %165 = load i32, i32* %anchor.addr, align 4
  %add295 = add nsw i32 %164, %165
  store i32 %add295, i32* %pos286, align 4
  %166 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class296 = getelementptr inbounds %struct.pattern, %struct.pattern* %166, i32 0, i32 14
  %167 = load i32, i32* %class296, align 4
  %and297 = and i32 %167, 128
  %tobool298 = icmp ne i32 %and297, 0
  br i1 %tobool298, label %land.lhs.true.299, label %if.end.357

land.lhs.true.299:                                ; preds = %for.body.285
  %168 = load i32, i32* %pos286, align 4
  %idxprom300 = sext i32 %168 to i64
  %arrayidx301 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom300
  %169 = load i8, i8* %arrayidx301, align 1
  %conv302 = zext i8 %169 to i32
  %170 = load i32, i32* %color.addr, align 4
  %cmp303 = icmp eq i32 %conv302, %170
  br i1 %cmp303, label %land.lhs.true.305, label %if.end.357

land.lhs.true.305:                                ; preds = %land.lhs.true.299
  %171 = load i32, i32* %k, align 4
  %idxprom306 = sext i32 %171 to i64
  %172 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn307 = getelementptr inbounds %struct.pattern, %struct.pattern* %172, i32 0, i32 0
  %173 = load %struct.patval*, %struct.patval** %patn307, align 8
  %arrayidx308 = getelementptr inbounds %struct.patval, %struct.patval* %173, i64 %idxprom306
  %att309 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx308, i32 0, i32 1
  %174 = load i32, i32* %att309, align 4
  %cmp310 = icmp eq i32 %174, 2
  br i1 %cmp310, label %land.lhs.true.312, label %if.end.357

land.lhs.true.312:                                ; preds = %land.lhs.true.305
  %175 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class313 = getelementptr inbounds %struct.pattern, %struct.pattern* %175, i32 0, i32 14
  %176 = load i32, i32* %class313, align 4
  %and314 = and i32 %176, 16
  %tobool315 = icmp ne i32 %and314, 0
  br i1 %tobool315, label %if.then.323, label %lor.lhs.false.316

lor.lhs.false.316:                                ; preds = %land.lhs.true.312
  %177 = load i32, i32* %pos286, align 4
  %idxprom317 = sext i32 %177 to i64
  %arrayidx318 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom317
  %attack_codes319 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx318, i32 0, i32 16
  %arrayidx320 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes319, i32 0, i64 0
  %178 = load i32, i32* %arrayidx320, align 4
  %cmp321 = icmp eq i32 %178, 0
  br i1 %cmp321, label %if.then.323, label %if.end.357

if.then.323:                                      ; preds = %lor.lhs.false.316, %land.lhs.true.312
  %179 = load i32, i32* %first_dragon, align 4
  %cmp324 = icmp eq i32 %179, 0
  br i1 %cmp324, label %if.then.326, label %if.else.330

if.then.326:                                      ; preds = %if.then.323
  %180 = load i32, i32* %pos286, align 4
  %idxprom327 = sext i32 %180 to i64
  %arrayidx328 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom327
  %origin329 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx328, i32 0, i32 2
  %181 = load i32, i32* %origin329, align 4
  store i32 %181, i32* %first_dragon, align 4
  br label %if.end.356

if.else.330:                                      ; preds = %if.then.323
  %182 = load i32, i32* %second_dragon, align 4
  %cmp331 = icmp eq i32 %182, 0
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.355

land.lhs.true.333:                                ; preds = %if.else.330
  %183 = load i32, i32* %pos286, align 4
  %idxprom334 = sext i32 %183 to i64
  %arrayidx335 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom334
  %origin336 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx335, i32 0, i32 2
  %184 = load i32, i32* %origin336, align 4
  %185 = load i32, i32* %first_dragon, align 4
  %cmp337 = icmp ne i32 %184, %185
  br i1 %cmp337, label %if.then.339, label %if.end.355

if.then.339:                                      ; preds = %land.lhs.true.333
  %186 = load i32, i32* %pos286, align 4
  %idxprom340 = sext i32 %186 to i64
  %arrayidx341 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom340
  %origin342 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx341, i32 0, i32 2
  %187 = load i32, i32* %origin342, align 4
  store i32 %187, i32* %second_dragon, align 4
  %188 = load i32, i32* @verbose, align 4
  %tobool343 = icmp ne i32 %188, 0
  br i1 %tobool343, label %if.then.347, label %lor.lhs.false.344

lor.lhs.false.344:                                ; preds = %if.then.339
  %189 = load i32, i32* @debug, align 4
  %and345 = and i32 %189, 32
  %tobool346 = icmp ne i32 %and345, 0
  br i1 %tobool346, label %if.then.347, label %if.end.350

if.then.347:                                      ; preds = %lor.lhs.false.344, %if.then.339
  %190 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name348 = getelementptr inbounds %struct.pattern, %struct.pattern* %190, i32 0, i32 3
  %191 = load i8*, i8** %name348, align 8
  %192 = load i32, i32* %color.addr, align 4
  %193 = load i32, i32* %first_dragon, align 4
  %194 = load i32, i32* %second_dragon, align 4
  %call349 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* %191, i32 %192, i32 %193, i32 %194)
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.347, %lor.lhs.false.344
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call351 = call i32 @fflush(%struct._IO_FILE* %195)
  %196 = load i32, i32* %second_dragon, align 4
  %197 = load i32, i32* %first_dragon, align 4
  call void @join_dragons(i32 %196, i32 %197)
  store i32 0, i32* %second_dragon, align 4
  %198 = load i32, i32* %pos286, align 4
  %idxprom352 = sext i32 %198 to i64
  %arrayidx353 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom352
  %origin354 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx353, i32 0, i32 2
  %199 = load i32, i32* %origin354, align 4
  store i32 %199, i32* %first_dragon, align 4
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.350, %land.lhs.true.333, %if.else.330
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.then.326
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %lor.lhs.false.316, %land.lhs.true.305, %land.lhs.true.299, %for.body.285
  %200 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class358 = getelementptr inbounds %struct.pattern, %struct.pattern* %200, i32 0, i32 14
  %201 = load i32, i32* %class358, align 4
  %and359 = and i32 %201, 512
  %tobool360 = icmp ne i32 %and359, 0
  br i1 %tobool360, label %if.then.361, label %if.end.415

if.then.361:                                      ; preds = %if.end.357
  %202 = load i32, i32* %k, align 4
  %idxprom362 = sext i32 %202 to i64
  %203 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn363 = getelementptr inbounds %struct.pattern, %struct.pattern* %203, i32 0, i32 0
  %204 = load %struct.patval*, %struct.patval** %patn363, align 8
  %arrayidx364 = getelementptr inbounds %struct.patval, %struct.patval* %204, i64 %idxprom362
  %att365 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx364, i32 0, i32 1
  %205 = load i32, i32* %att365, align 4
  %cmp366 = icmp ne i32 %205, 7
  br i1 %cmp366, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %if.then.361
  br label %for.end.418

if.end.369:                                       ; preds = %if.then.361
  %206 = load i32, i32* %color.addr, align 4
  %cmp370 = icmp eq i32 %206, 1
  br i1 %cmp370, label %land.lhs.true.372, label %if.else.391

land.lhs.true.372:                                ; preds = %if.end.369
  %207 = load i32, i32* %pos286, align 4
  %idxprom373 = sext i32 %207 to i64
  %arrayidx374 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom373
  %color375 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx374, i32 0, i32 0
  %208 = load i32, i32* %color375, align 4
  %cmp376 = icmp eq i32 %208, 4
  br i1 %cmp376, label %if.then.378, label %if.else.391

if.then.378:                                      ; preds = %land.lhs.true.372
  %209 = load i32, i32* %pos286, align 4
  %idxprom379 = sext i32 %209 to i64
  %arrayidx380 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom379
  %type381 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx380, i32 0, i32 8
  %210 = load i8, i8* %type381, align 1
  %conv382 = sext i8 %210 to i32
  %or383 = or i32 %conv382, 4
  %conv384 = trunc i32 %or383 to i8
  store i8 %conv384, i8* %type381, align 1
  %211 = load i32, i32* @debug, align 4
  %and385 = and i32 %211, 32
  %tobool386 = icmp ne i32 %and385, 0
  br i1 %tobool386, label %cond.false.388, label %cond.true.387

cond.true.387:                                    ; preds = %if.then.378
  br label %cond.end.390

cond.false.388:                                   ; preds = %if.then.378
  %212 = load i32, i32* %pos286, align 4
  %call389 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 %212)
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.false.388, %cond.true.387
  br label %if.end.414

if.else.391:                                      ; preds = %land.lhs.true.372, %if.end.369
  %213 = load i32, i32* %color.addr, align 4
  %cmp392 = icmp eq i32 %213, 2
  br i1 %cmp392, label %land.lhs.true.394, label %if.end.413

land.lhs.true.394:                                ; preds = %if.else.391
  %214 = load i32, i32* %pos286, align 4
  %idxprom395 = sext i32 %214 to i64
  %arrayidx396 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom395
  %color397 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx396, i32 0, i32 0
  %215 = load i32, i32* %color397, align 4
  %cmp398 = icmp eq i32 %215, 5
  br i1 %cmp398, label %if.then.400, label %if.end.413

if.then.400:                                      ; preds = %land.lhs.true.394
  %216 = load i32, i32* %pos286, align 4
  %idxprom401 = sext i32 %216 to i64
  %arrayidx402 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom401
  %type403 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx402, i32 0, i32 8
  %217 = load i8, i8* %type403, align 1
  %conv404 = sext i8 %217 to i32
  %or405 = or i32 %conv404, 4
  %conv406 = trunc i32 %or405 to i8
  store i8 %conv406, i8* %type403, align 1
  %218 = load i32, i32* @debug, align 4
  %and407 = and i32 %218, 32
  %tobool408 = icmp ne i32 %and407, 0
  br i1 %tobool408, label %cond.false.410, label %cond.true.409

cond.true.409:                                    ; preds = %if.then.400
  br label %cond.end.412

cond.false.410:                                   ; preds = %if.then.400
  %219 = load i32, i32* %pos286, align 4
  %call411 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 %219)
  br label %cond.end.412

cond.end.412:                                     ; preds = %cond.false.410, %cond.true.409
  br label %if.end.413

if.end.413:                                       ; preds = %cond.end.412, %land.lhs.true.394, %if.else.391
  br label %if.end.414

if.end.414:                                       ; preds = %if.end.413, %cond.end.390
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.414, %if.end.357
  br label %for.inc.416

for.inc.416:                                      ; preds = %if.end.415
  %220 = load i32, i32* %k, align 4
  %inc417 = add nsw i32 %220, 1
  store i32 %inc417, i32* %k, align 4
  br label %for.cond.281

for.end.418:                                      ; preds = %if.then, %if.then.7, %if.then.16, %cond.end, %if.then.105, %if.then.113, %if.then.121, %if.then.165, %if.then.278, %if.then.368, %for.cond.281
  ret void
}

declare i32 @safe_move(i32, i32) #1

declare i32 @gprintf(i8*, ...) #1

declare i32 @does_defend(i32, i32) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @join_dragons(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
