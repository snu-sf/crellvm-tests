; ModuleID = 'engine/hash.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }
%struct.gg_rand_state = type { [25 x i32], i32 }
%struct.Hash_data = type { [1 x i64] }

@is_initialized = internal global i32 0, align 4
@black_hash = internal global [400 x [1 x i64]] zeroinitializer, align 16
@white_hash = internal global [400 x [1 x i64]] zeroinitializer, align 16
@ko_hash = internal global [400 x [1 x i64]] zeroinitializer, align 16
@board = external global [421 x i8], align 16
@stats = external global %struct.stats_data, align 4

; Function Attrs: nounwind uwtable
define void @hash_init() #0 {
entry:
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  %state = alloca %struct.gg_rand_state, align 4
  %0 = load i32, i32* @is_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @gg_get_rand_state(%struct.gg_rand_state* %state)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.end
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 1
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %pos, align 4
  %cmp3 = icmp slt i32 %2, 400
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %call = call i64 @hash_rand()
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @black_hash, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx, i32 0, i64 %idxprom
  store i64 %call, i64* %arrayidx7, align 8
  %call8 = call i64 @hash_rand()
  %5 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %5 to i64
  %6 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @white_hash, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx11, i32 0, i64 %idxprom9
  store i64 %call8, i64* %arrayidx12, align 8
  %call13 = call i64 @hash_rand()
  %7 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %7 to i64
  %8 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @ko_hash, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx16, i32 0, i64 %idxprom14
  store i64 %call13, i64* %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %9 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %10, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  call void @gg_set_rand_state(%struct.gg_rand_state* %state)
  store i32 1, i32* @is_initialized, align 4
  br label %return

return:                                           ; preds = %for.end.20, %if.then
  ret void
}

declare void @gg_get_rand_state(%struct.gg_rand_state*) #1

; Function Attrs: nounwind uwtable
define internal i64 @hash_rand() #0 {
entry:
  %i = alloca i32, align 4
  %h = alloca i64, align 8
  store i64 0, i64* %h, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %mul = mul nsw i32 32, %0
  %cmp = icmp slt i32 %mul, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @gg_urand()
  %conv = zext i32 %call to i64
  %1 = load i32, i32* %i, align 4
  %mul1 = mul nsw i32 32, %1
  %sh_prom = zext i32 %mul1 to i64
  %shl = shl i64 %conv, %sh_prom
  %2 = load i64, i64* %h, align 8
  %or = or i64 %2, %shl
  store i64 %or, i64* %h, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i64, i64* %h, align 8
  ret i64 %4
}

declare void @gg_set_rand_state(%struct.gg_rand_state*) #1

; Function Attrs: nounwind uwtable
define void @hashdata_recalc(%struct.Hash_data* %target, i8* %p, i32 %ko_pos) #0 {
entry:
  %target.addr = alloca %struct.Hash_data*, align 8
  %p.addr = alloca i8*, align 8
  %ko_pos.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Hash_data* %target, %struct.Hash_data** %target.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %ko_pos, i32* %ko_pos.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.Hash_data*, %struct.Hash_data** %target.addr, align 8
  %hashval = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %hashval, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.47, %for.end
  %4 = load i32, i32* %pos, align 4
  %cmp3 = icmp slt i32 %4, 400
  br i1 %cmp3, label %for.body.5, label %for.end.49

for.body.5:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %cmp9 = icmp ne i32 %conv8, 3
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.5
  br label %for.inc.47

if.end:                                           ; preds = %for.body.5
  %7 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %7 to i64
  %8 = load i8*, i8** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 %idxprom11
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  switch i32 %conv13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.30
  ]

sw.default:                                       ; preds = %if.end
  br label %sw.bb

sw.bb:                                            ; preds = %if.end, %sw.default
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.27, %sw.bb.14
  %10 = load i32, i32* %i, align 4
  %conv16 = sext i32 %10 to i64
  %cmp17 = icmp ult i64 %conv16, 1
  br i1 %cmp17, label %for.body.19, label %for.end.29

for.body.19:                                      ; preds = %for.cond.15
  %11 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %11 to i64
  %12 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @white_hash, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx22, i32 0, i64 %idxprom20
  %13 = load i64, i64* %arrayidx23, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %14 to i64
  %15 = load %struct.Hash_data*, %struct.Hash_data** %target.addr, align 8
  %hashval25 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %15, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval25, i32 0, i64 %idxprom24
  %16 = load i64, i64* %arrayidx26, align 8
  %xor = xor i64 %16, %13
  store i64 %xor, i64* %arrayidx26, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.19
  %17 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %17, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.15

for.end.29:                                       ; preds = %for.cond.15
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.44, %sw.bb.30
  %18 = load i32, i32* %i, align 4
  %conv32 = sext i32 %18 to i64
  %cmp33 = icmp ult i64 %conv32, 1
  br i1 %cmp33, label %for.body.35, label %for.end.46

for.body.35:                                      ; preds = %for.cond.31
  %19 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %19 to i64
  %20 = load i32, i32* %pos, align 4
  %idxprom37 = sext i32 %20 to i64
  %arrayidx38 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @black_hash, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx38, i32 0, i64 %idxprom36
  %21 = load i64, i64* %arrayidx39, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %22 to i64
  %23 = load %struct.Hash_data*, %struct.Hash_data** %target.addr, align 8
  %hashval41 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %23, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval41, i32 0, i64 %idxprom40
  %24 = load i64, i64* %arrayidx42, align 8
  %xor43 = xor i64 %24, %21
  store i64 %xor43, i64* %arrayidx42, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.35
  %25 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %25, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.31

for.end.46:                                       ; preds = %for.cond.31
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.46, %for.end.29, %sw.bb
  br label %for.inc.47

for.inc.47:                                       ; preds = %sw.epilog, %if.then
  %26 = load i32, i32* %pos, align 4
  %inc48 = add nsw i32 %26, 1
  store i32 %inc48, i32* %pos, align 4
  br label %for.cond.2

for.end.49:                                       ; preds = %for.cond.2
  %27 = load i32, i32* %ko_pos.addr, align 4
  %cmp50 = icmp ne i32 %27, 0
  br i1 %cmp50, label %if.then.52, label %if.end.69

if.then.52:                                       ; preds = %for.end.49
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.66, %if.then.52
  %28 = load i32, i32* %i, align 4
  %conv54 = sext i32 %28 to i64
  %cmp55 = icmp ult i64 %conv54, 1
  br i1 %cmp55, label %for.body.57, label %for.end.68

for.body.57:                                      ; preds = %for.cond.53
  %29 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %29 to i64
  %30 = load i32, i32* %ko_pos.addr, align 4
  %idxprom59 = sext i32 %30 to i64
  %arrayidx60 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @ko_hash, i32 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx60, i32 0, i64 %idxprom58
  %31 = load i64, i64* %arrayidx61, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %32 to i64
  %33 = load %struct.Hash_data*, %struct.Hash_data** %target.addr, align 8
  %hashval63 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %33, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval63, i32 0, i64 %idxprom62
  %34 = load i64, i64* %arrayidx64, align 8
  %xor65 = xor i64 %34, %31
  store i64 %xor65, i64* %arrayidx64, align 8
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.57
  %35 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %35, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.53

for.end.68:                                       ; preds = %for.cond.53
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %for.end.49
  ret void
}

; Function Attrs: nounwind uwtable
define void @hashdata_invert_ko(%struct.Hash_data* %hd, i32 %pos) #0 {
entry:
  %hd.addr = alloca %struct.Hash_data*, align 8
  %pos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Hash_data* %hd, %struct.Hash_data** %hd.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @ko_hash, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx3, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load %struct.Hash_data*, %struct.Hash_data** %hd.addr, align 8
  %hashval = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval, i32 0, i64 %idxprom4
  %6 = load i64, i64* %arrayidx5, align 8
  %xor = xor i64 %6, %3
  store i64 %xor, i64* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @hashdata_invert_stone(%struct.Hash_data* %hd, i32 %pos, i32 %color) #0 {
entry:
  %hd.addr = alloca %struct.Hash_data*, align 8
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.Hash_data* %hd, %struct.Hash_data** %hd.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %k, align 4
  %conv = sext i32 %1 to i64
  %cmp1 = icmp ult i64 %conv, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @black_hash, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx4, align 8
  %5 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load %struct.Hash_data*, %struct.Hash_data** %hd.addr, align 8
  %hashval = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval, i32 0, i64 %idxprom5
  %7 = load i64, i64* %arrayidx6, align 8
  %xor = xor i64 %7, %4
  store i64 %xor, i64* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %color.addr, align 4
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  store i32 0, i32* %k, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.23, %if.then.9
  %10 = load i32, i32* %k, align 4
  %conv11 = sext i32 %10 to i64
  %cmp12 = icmp ult i64 %conv11, 1
  br i1 %cmp12, label %for.body.14, label %for.end.25

for.body.14:                                      ; preds = %for.cond.10
  %11 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %11 to i64
  %12 = load i32, i32* %pos.addr, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @white_hash, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx17, i32 0, i64 %idxprom15
  %13 = load i64, i64* %arrayidx18, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %14 to i64
  %15 = load %struct.Hash_data*, %struct.Hash_data** %hd.addr, align 8
  %hashval20 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %15, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval20, i32 0, i64 %idxprom19
  %16 = load i64, i64* %arrayidx21, align 8
  %xor22 = xor i64 %16, %13
  store i64 %xor22, i64* %arrayidx21, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.14
  %17 = load i32, i32* %k, align 4
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, i32* %k, align 4
  br label %for.cond.10

for.end.25:                                       ; preds = %for.cond.10
  br label %if.end

if.end:                                           ; preds = %for.end.25, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @hashdata_compare(%struct.Hash_data* %hd1, %struct.Hash_data* %hd2) #0 {
entry:
  %hd1.addr = alloca %struct.Hash_data*, align 8
  %hd2.addr = alloca %struct.Hash_data*, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Hash_data* %hd1, %struct.Hash_data** %hd1.addr, align 8
  store %struct.Hash_data* %hd2, %struct.Hash_data** %hd2.addr, align 8
  store i32 0, i32* %rc, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.Hash_data*, %struct.Hash_data** %hd1.addr, align 8
  %hashval = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %hashval, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.Hash_data*, %struct.Hash_data** %hd2.addr, align 8
  %hashval3 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %5, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval3, i32 0, i64 %idxprom2
  %6 = load i64, i64* %arrayidx4, align 8
  %cmp5 = icmp ne i64 %3, %6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 2, i32* %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %rc, align 4
  %cmp7 = icmp eq i32 %8, 2
  br i1 %cmp7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %cmp9 = icmp sgt i32 %9, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true
  %10 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %inc12 = add nsw i32 %10, 1
  store i32 %inc12, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true, %for.end
  %11 = load i32, i32* %rc, align 4
  ret i32 %11
}

declare i32 @gg_urand() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
