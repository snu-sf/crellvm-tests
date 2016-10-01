; ModuleID = './SingleSource.Benchmarks.Misc/19.ReedSolomon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inited = internal global i32 0, align 4
@recd = internal global [255 x i32] zeroinitializer, align 16
@index_of = internal global [256 x i32] zeroinitializer, align 16
@data = internal global [239 x i32] zeroinitializer, align 16
@bb = internal global [16 x i32] zeroinitializer, align 16
@alpha_to = internal global [256 x i32] zeroinitializer, align 16
@pp = internal global [9 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1], align 16
@gg = internal global [17 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @rsdec_204(i8* %data_out, i8* %data_in) #0 {
entry:
  %data_out.addr = alloca i8*, align 8
  %data_in.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %data_out, i8** %data_out.addr, align 8
  store i8* %data_in, i8** %data_in.addr, align 8
  %0 = load i32, i32* @inited, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @generate_gf()
  call void @gen_poly()
  store i32 1, i32* @inited, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 188, %2
  %idxprom = sext i32 %add to i64
  %3 = load i8*, i8** %data_in.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom1
  store i32 %conv, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.10, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %7, 51
  br i1 %cmp4, label %for.body.6, label %for.end.12

for.body.6:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %i, align 4
  %add7 = add nsw i32 16, %8
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.6
  %9 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.3

for.end.12:                                       ; preds = %for.cond.3
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.23, %for.end.12
  %10 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %10, 188
  br i1 %cmp14, label %for.body.16, label %for.end.25

for.body.16:                                      ; preds = %for.cond.13
  %11 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %11 to i64
  %12 = load i8*, i8** %data_in.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 %idxprom17
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %14 = load i32, i32* %i, align 4
  %add20 = add nsw i32 67, %14
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom21
  store i32 %conv19, i32* %arrayidx22, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.16
  %15 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %15, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.13

for.end.25:                                       ; preds = %for.cond.13
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.36, %for.end.25
  %16 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %16, 255
  br i1 %cmp27, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.26
  %17 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %17 to i64
  %arrayidx31 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom30
  %18 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = sext i32 %18 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom32
  %19 = load i32, i32* %arrayidx33, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %20 to i64
  %arrayidx35 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom34
  store i32 %19, i32* %arrayidx35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.29
  %21 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %21, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.26

for.end.38:                                       ; preds = %for.cond.26
  call void @decode_rs()
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.49, %for.end.38
  %22 = load i32, i32* %i, align 4
  %cmp40 = icmp slt i32 %22, 188
  br i1 %cmp40, label %for.body.42, label %for.end.51

for.body.42:                                      ; preds = %for.cond.39
  %23 = load i32, i32* %i, align 4
  %add43 = add nsw i32 67, %23
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom44
  %24 = load i32, i32* %arrayidx45, align 4
  %conv46 = trunc i32 %24 to i8
  %25 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %25 to i64
  %26 = load i8*, i8** %data_out.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %26, i64 %idxprom47
  store i8 %conv46, i8* %arrayidx48, align 1
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.42
  %27 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %27, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.39

for.end.51:                                       ; preds = %for.cond.39
  ret void
}

; Function Attrs: nounwind uwtable
define void @rsenc_204(i8* %data_out, i8* %data_in) #0 {
entry:
  %data_out.addr = alloca i8*, align 8
  %data_in.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %data_out, i8** %data_out.addr, align 8
  store i8* %data_in, i8** %data_in.addr, align 8
  %0 = load i32, i32* @inited, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @generate_gf()
  call void @gen_poly()
  store i32 1, i32* @inited, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 51
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [239 x i32], [239 x i32]* @data, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.8, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 188
  br i1 %cmp2, label %for.body.3, label %for.end.10

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i8*, i8** %data_in.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 51, %8
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [239 x i32], [239 x i32]* @data, i32 0, i64 %idxprom6
  store i32 %conv, i32* %arrayidx7, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.3
  %9 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.1

for.end.10:                                       ; preds = %for.cond.1
  call void @encode_rs()
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.19, %for.end.10
  %10 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %10, 188
  br i1 %cmp12, label %for.body.14, label %for.end.21

for.body.14:                                      ; preds = %for.cond.11
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %12 = load i8*, i8** %data_in.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 %idxprom15
  %13 = load i8, i8* %arrayidx16, align 1
  %14 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load i8*, i8** %data_out.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %idxprom17
  store i8 %13, i8* %arrayidx18, align 1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.14
  %16 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %16, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.11

for.end.21:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.32, %for.end.21
  %17 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %17, 16
  br i1 %cmp23, label %for.body.25, label %for.end.34

for.body.25:                                      ; preds = %for.cond.22
  %18 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds [16 x i32], [16 x i32]* @bb, i32 0, i64 %idxprom26
  %19 = load i32, i32* %arrayidx27, align 4
  %conv28 = trunc i32 %19 to i8
  %20 = load i32, i32* %i, align 4
  %add29 = add nsw i32 188, %20
  %idxprom30 = sext i32 %add29 to i64
  %21 = load i8*, i8** %data_out.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %21, i64 %idxprom30
  store i8 %conv28, i8* %arrayidx31, align 1
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.25
  %22 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.22

for.end.34:                                       ; preds = %for.cond.22
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rs_in = alloca [204 x i8], align 16
  %rs_out = alloca [204 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 150000
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 188
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %call = call i64 @random() #2
  %and = and i64 %call, 255
  %conv = trunc i64 %and to i8
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [204 x i8], [204 x i8]* %rs_in, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %3 = load i32, i32* %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %arraydecay = getelementptr inbounds [204 x i8], [204 x i8]* %rs_out, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [204 x i8], [204 x i8]* %rs_in, i32 0, i32 0
  call void @rsenc_204(i8* %arraydecay, i8* %arraydecay4)
  %call5 = call i64 @random() #2
  %and6 = and i64 %call5, 127
  %conv7 = trunc i64 %and6 to i32
  store i32 %conv7, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.17, %for.end
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %k, align 4
  %cmp9 = icmp slt i32 %4, %5
  br i1 %cmp9, label %for.body.11, label %for.end.19

for.body.11:                                      ; preds = %for.cond.8
  %call12 = call i64 @random() #2
  %and13 = and i64 %call12, 255
  %conv14 = trunc i64 %and13 to i8
  %call15 = call i64 @random() #2
  %rem = srem i64 %call15, 204
  %arrayidx16 = getelementptr inbounds [204 x i8], [204 x i8]* %rs_out, i32 0, i64 %rem
  store i8 %conv14, i8* %arrayidx16, align 1
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.11
  %6 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %6, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond.8

for.end.19:                                       ; preds = %for.cond.8
  %arraydecay20 = getelementptr inbounds [204 x i8], [204 x i8]* %rs_in, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [204 x i8], [204 x i8]* %rs_out, i32 0, i32 0
  call void @rsdec_204(i8* %arraydecay20, i8* %arraydecay21)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.19
  %7 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %7, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @random() #1

; Function Attrs: nounwind uwtable
define internal void @generate_gf() #0 {
entry:
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 1, i32* %mask, align 4
  store i32 0, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @alpha_to, i32 0, i64 8), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %mask, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom3
  store i32 %3, i32* %arrayidx4, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [9 x i32], [9 x i32]* @pp, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %mask, align 4
  %9 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @alpha_to, i32 0, i64 8), align 4
  %xor = xor i32 %9, %8
  store i32 %xor, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @alpha_to, i32 0, i64 8), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i32, i32* %mask, align 4
  %shl = shl i32 %10, 1
  store i32 %shl, i32* %mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @alpha_to, i32 0, i64 8), align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom8
  store i32 8, i32* %arrayidx9, align 4
  %13 = load i32, i32* %mask, align 4
  %shr = ashr i32 %13, 1
  store i32 %shr, i32* %mask, align 4
  store i32 9, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.36, %for.end
  %14 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %14, 255
  br i1 %cmp11, label %for.body.12, label %for.end.38

for.body.12:                                      ; preds = %for.cond.10
  %15 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom13 = sext i32 %sub to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom13
  %16 = load i32, i32* %arrayidx14, align 4
  %17 = load i32, i32* %mask, align 4
  %cmp15 = icmp sge i32 %16, %17
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %for.body.12
  %18 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @alpha_to, i32 0, i64 8), align 4
  %19 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 %19, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom18
  %20 = load i32, i32* %arrayidx19, align 4
  %21 = load i32, i32* %mask, align 4
  %xor20 = xor i32 %20, %21
  %shl21 = shl i32 %xor20, 1
  %xor22 = xor i32 %18, %shl21
  %22 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom23
  store i32 %xor22, i32* %arrayidx24, align 4
  br label %if.end.31

if.else:                                          ; preds = %for.body.12
  %23 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %23, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom26
  %24 = load i32, i32* %arrayidx27, align 4
  %shl28 = shl i32 %24, 1
  %25 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom29
  store i32 %shl28, i32* %arrayidx30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.16
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom32
  %28 = load i32, i32* %arrayidx33, align 4
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom34
  store i32 %26, i32* %arrayidx35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.31
  %29 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.10

for.end.38:                                       ; preds = %for.cond.10
  store i32 -1, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @index_of, i32 0, i64 0), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gen_poly() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 2, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @gg, i32 0, i64 0), align 4
  store i32 1, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @gg, i32 0, i64 1), align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  %2 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp ne i32 %5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %6 = load i32, i32* %j, align 4
  %sub7 = sub nsw i32 %6, 1
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom10
  %9 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom12
  %10 = load i32, i32* %arrayidx13, align 4
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, %11
  %rem = srem i32 %add, 255
  %idxprom14 = sext i32 %rem to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %xor = xor i32 %7, %12
  %13 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom16
  store i32 %xor, i32* %arrayidx17, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %14 = load i32, i32* %j, align 4
  %sub18 = sub nsw i32 %14, 1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom19
  %15 = load i32, i32* %arrayidx20, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom21
  store i32 %15, i32* %arrayidx22, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %18 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @gg, i32 0, i64 0), align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom23
  %19 = load i32, i32* %arrayidx24, align 4
  %20 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %19, %20
  %rem26 = srem i32 %add25, 255
  %idxprom27 = sext i32 %rem26 to i64
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom27
  %21 = load i32, i32* %arrayidx28, align 4
  store i32 %21, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @gg, i32 0, i64 0), align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.40, %for.end.30
  %23 = load i32, i32* %i, align 4
  %cmp32 = icmp sle i32 %23, 16
  br i1 %cmp32, label %for.body.33, label %for.end.42

for.body.33:                                      ; preds = %for.cond.31
  %24 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom34
  %25 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom36
  %26 = load i32, i32* %arrayidx37, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom38
  store i32 %26, i32* %arrayidx39, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.33
  %28 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %28, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.31

for.end.42:                                       ; preds = %for.cond.31
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decode_rs() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %u = alloca i32, align 4
  %q = alloca i32, align 4
  %elp = alloca [18 x [16 x i32]], align 16
  %d = alloca [18 x i32], align 16
  %l = alloca [18 x i32], align 16
  %u_lu = alloca [18 x i32], align 16
  %s = alloca [17 x i32], align 16
  %count = alloca i32, align 4
  %syn_error = alloca i32, align 4
  %root = alloca [8 x i32], align 16
  %loc = alloca [8 x i32], align 16
  %z = alloca [9 x i32], align 16
  %err = alloca [255 x i32], align 16
  %reg = alloca [9 x i32], align 16
  store i32 0, i32* %count, align 4
  store i32 0, i32* %syn_error, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 255
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom4
  %4 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp ne i32 %4, -1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %5 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom7
  %6 = load i32, i32* %arrayidx8, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %7, %8
  %add = add nsw i32 %6, %mul
  %rem = srem i32 %add, 255
  %idxprom9 = sext i32 %rem to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom9
  %9 = load i32, i32* %arrayidx10, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %xor = xor i32 %11, %9
  store i32 %xor, i32* %arrayidx12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp ne i32 %14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.end
  store i32 1, i32* %syn_error, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.end
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom18
  %16 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom20
  %17 = load i32, i32* %arrayidx21, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom22
  store i32 %17, i32* %arrayidx23, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.17
  %19 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %20 = load i32, i32* %syn_error, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.27, label %if.else.652

if.then.27:                                       ; preds = %for.end.26
  %arrayidx28 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 0
  store i32 0, i32* %arrayidx28, align 4
  %arrayidx29 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 1
  %21 = load i32, i32* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 1
  store i32 %21, i32* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 0
  %arrayidx32 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx31, i32 0, i64 0
  store i32 0, i32* %arrayidx32, align 4
  %arrayidx33 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 1
  %arrayidx34 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx33, i32 0, i64 0
  store i32 1, i32* %arrayidx34, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %if.then.27
  %22 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %22, 16
  br i1 %cmp36, label %for.body.37, label %for.end.46

for.body.37:                                      ; preds = %for.cond.35
  %23 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %23 to i64
  %arrayidx39 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 0
  %arrayidx40 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx39, i32 0, i64 %idxprom38
  store i32 -1, i32* %arrayidx40, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 1
  %arrayidx43 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx42, i32 0, i64 %idxprom41
  store i32 0, i32* %arrayidx43, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.37
  %25 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %25, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  %arrayidx47 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 0
  store i32 0, i32* %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 1
  store i32 0, i32* %arrayidx48, align 4
  %arrayidx49 = getelementptr inbounds [18 x i32], [18 x i32]* %u_lu, i32 0, i64 0
  store i32 -1, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [18 x i32], [18 x i32]* %u_lu, i32 0, i64 1
  store i32 0, i32* %arrayidx50, align 4
  store i32 0, i32* %u, align 4
  br label %do.body

do.body:                                          ; preds = %land.end.291, %for.end.46
  %26 = load i32, i32* %u, align 4
  %inc51 = add nsw i32 %26, 1
  store i32 %inc51, i32* %u, align 4
  %27 = load i32, i32* %u, align 4
  %idxprom52 = sext i32 %27 to i64
  %arrayidx53 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom52
  %28 = load i32, i32* %arrayidx53, align 4
  %cmp54 = icmp eq i32 %28, -1
  br i1 %cmp54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %do.body
  %29 = load i32, i32* %u, align 4
  %idxprom56 = sext i32 %29 to i64
  %arrayidx57 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom56
  %30 = load i32, i32* %arrayidx57, align 4
  %31 = load i32, i32* %u, align 4
  %add58 = add nsw i32 %31, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom59
  store i32 %30, i32* %arrayidx60, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.85, %if.then.55
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %u, align 4
  %idxprom62 = sext i32 %33 to i64
  %arrayidx63 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom62
  %34 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp sle i32 %32, %34
  br i1 %cmp64, label %for.body.65, label %for.end.87

for.body.65:                                      ; preds = %for.cond.61
  %35 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %35 to i64
  %36 = load i32, i32* %u, align 4
  %idxprom67 = sext i32 %36 to i64
  %arrayidx68 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx68, i32 0, i64 %idxprom66
  %37 = load i32, i32* %arrayidx69, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %38 to i64
  %39 = load i32, i32* %u, align 4
  %add71 = add nsw i32 %39, 1
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx73, i32 0, i64 %idxprom70
  store i32 %37, i32* %arrayidx74, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %40 to i64
  %41 = load i32, i32* %u, align 4
  %idxprom76 = sext i32 %41 to i64
  %arrayidx77 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx77, i32 0, i64 %idxprom75
  %42 = load i32, i32* %arrayidx78, align 4
  %idxprom79 = sext i32 %42 to i64
  %arrayidx80 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom79
  %43 = load i32, i32* %arrayidx80, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %44 to i64
  %45 = load i32, i32* %u, align 4
  %idxprom82 = sext i32 %45 to i64
  %arrayidx83 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom82
  %arrayidx84 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx83, i32 0, i64 %idxprom81
  store i32 %43, i32* %arrayidx84, align 4
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.65
  %46 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %46, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond.61

for.end.87:                                       ; preds = %for.cond.61
  br label %if.end.205

if.else:                                          ; preds = %do.body
  %47 = load i32, i32* %u, align 4
  %sub = sub nsw i32 %47, 1
  store i32 %sub, i32* %q, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %48 = load i32, i32* %q, align 4
  %idxprom88 = sext i32 %48 to i64
  %arrayidx89 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom88
  %49 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp eq i32 %49, -1
  br i1 %cmp90, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %50 = load i32, i32* %q, align 4
  %cmp91 = icmp sgt i32 %50, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %51 = phi i1 [ false, %while.cond ], [ %cmp91, %land.rhs ]
  br i1 %51, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %52 = load i32, i32* %q, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %q, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %53 = load i32, i32* %q, align 4
  %cmp92 = icmp sgt i32 %53, 0
  br i1 %cmp92, label %if.then.93, label %if.end.107

if.then.93:                                       ; preds = %while.end
  %54 = load i32, i32* %q, align 4
  store i32 %54, i32* %j, align 4
  br label %do.body.94

do.body.94:                                       ; preds = %do.cond, %if.then.93
  %55 = load i32, i32* %j, align 4
  %dec95 = add nsw i32 %55, -1
  store i32 %dec95, i32* %j, align 4
  %56 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %56 to i64
  %arrayidx97 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom96
  %57 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp ne i32 %57, -1
  br i1 %cmp98, label %land.lhs.true, label %if.end.105

land.lhs.true:                                    ; preds = %do.body.94
  %58 = load i32, i32* %q, align 4
  %idxprom99 = sext i32 %58 to i64
  %arrayidx100 = getelementptr inbounds [18 x i32], [18 x i32]* %u_lu, i32 0, i64 %idxprom99
  %59 = load i32, i32* %arrayidx100, align 4
  %60 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %60 to i64
  %arrayidx102 = getelementptr inbounds [18 x i32], [18 x i32]* %u_lu, i32 0, i64 %idxprom101
  %61 = load i32, i32* %arrayidx102, align 4
  %cmp103 = icmp slt i32 %59, %61
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %land.lhs.true
  %62 = load i32, i32* %j, align 4
  store i32 %62, i32* %q, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %land.lhs.true, %do.body.94
  br label %do.cond

do.cond:                                          ; preds = %if.end.105
  %63 = load i32, i32* %j, align 4
  %cmp106 = icmp sgt i32 %63, 0
  br i1 %cmp106, label %do.body.94, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.107

if.end.107:                                       ; preds = %do.end, %while.end
  %64 = load i32, i32* %u, align 4
  %idxprom108 = sext i32 %64 to i64
  %arrayidx109 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom108
  %65 = load i32, i32* %arrayidx109, align 4
  %66 = load i32, i32* %q, align 4
  %idxprom110 = sext i32 %66 to i64
  %arrayidx111 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom110
  %67 = load i32, i32* %arrayidx111, align 4
  %68 = load i32, i32* %u, align 4
  %add112 = add nsw i32 %67, %68
  %69 = load i32, i32* %q, align 4
  %sub113 = sub nsw i32 %add112, %69
  %cmp114 = icmp sgt i32 %65, %sub113
  br i1 %cmp114, label %if.then.115, label %if.else.121

if.then.115:                                      ; preds = %if.end.107
  %70 = load i32, i32* %u, align 4
  %idxprom116 = sext i32 %70 to i64
  %arrayidx117 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom116
  %71 = load i32, i32* %arrayidx117, align 4
  %72 = load i32, i32* %u, align 4
  %add118 = add nsw i32 %72, 1
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom119
  store i32 %71, i32* %arrayidx120, align 4
  br label %if.end.129

if.else.121:                                      ; preds = %if.end.107
  %73 = load i32, i32* %q, align 4
  %idxprom122 = sext i32 %73 to i64
  %arrayidx123 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom122
  %74 = load i32, i32* %arrayidx123, align 4
  %75 = load i32, i32* %u, align 4
  %add124 = add nsw i32 %74, %75
  %76 = load i32, i32* %q, align 4
  %sub125 = sub nsw i32 %add124, %76
  %77 = load i32, i32* %u, align 4
  %add126 = add nsw i32 %77, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom127
  store i32 %sub125, i32* %arrayidx128, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.121, %if.then.115
  store i32 0, i32* %i, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.138, %if.end.129
  %78 = load i32, i32* %i, align 4
  %cmp131 = icmp slt i32 %78, 16
  br i1 %cmp131, label %for.body.132, label %for.end.140

for.body.132:                                     ; preds = %for.cond.130
  %79 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %79 to i64
  %80 = load i32, i32* %u, align 4
  %add134 = add nsw i32 %80, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom135
  %arrayidx137 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx136, i32 0, i64 %idxprom133
  store i32 0, i32* %arrayidx137, align 4
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.body.132
  %81 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %81, 1
  store i32 %inc139, i32* %i, align 4
  br label %for.cond.130

for.end.140:                                      ; preds = %for.cond.130
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.174, %for.end.140
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %q, align 4
  %idxprom142 = sext i32 %83 to i64
  %arrayidx143 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom142
  %84 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp sle i32 %82, %84
  br i1 %cmp144, label %for.body.145, label %for.end.176

for.body.145:                                     ; preds = %for.cond.141
  %85 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %85 to i64
  %86 = load i32, i32* %q, align 4
  %idxprom147 = sext i32 %86 to i64
  %arrayidx148 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx148, i32 0, i64 %idxprom146
  %87 = load i32, i32* %arrayidx149, align 4
  %cmp150 = icmp ne i32 %87, -1
  br i1 %cmp150, label %if.then.151, label %if.end.173

if.then.151:                                      ; preds = %for.body.145
  %88 = load i32, i32* %u, align 4
  %idxprom152 = sext i32 %88 to i64
  %arrayidx153 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom152
  %89 = load i32, i32* %arrayidx153, align 4
  %add154 = add nsw i32 %89, 255
  %90 = load i32, i32* %q, align 4
  %idxprom155 = sext i32 %90 to i64
  %arrayidx156 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom155
  %91 = load i32, i32* %arrayidx156, align 4
  %sub157 = sub nsw i32 %add154, %91
  %92 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %92 to i64
  %93 = load i32, i32* %q, align 4
  %idxprom159 = sext i32 %93 to i64
  %arrayidx160 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx160, i32 0, i64 %idxprom158
  %94 = load i32, i32* %arrayidx161, align 4
  %add162 = add nsw i32 %sub157, %94
  %rem163 = srem i32 %add162, 255
  %idxprom164 = sext i32 %rem163 to i64
  %arrayidx165 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom164
  %95 = load i32, i32* %arrayidx165, align 4
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %u, align 4
  %add166 = add nsw i32 %96, %97
  %98 = load i32, i32* %q, align 4
  %sub167 = sub nsw i32 %add166, %98
  %idxprom168 = sext i32 %sub167 to i64
  %99 = load i32, i32* %u, align 4
  %add169 = add nsw i32 %99, 1
  %idxprom170 = sext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx171, i32 0, i64 %idxprom168
  store i32 %95, i32* %arrayidx172, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.151, %for.body.145
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %100 = load i32, i32* %i, align 4
  %inc175 = add nsw i32 %100, 1
  store i32 %inc175, i32* %i, align 4
  br label %for.cond.141

for.end.176:                                      ; preds = %for.cond.141
  store i32 0, i32* %i, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.202, %for.end.176
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %u, align 4
  %idxprom178 = sext i32 %102 to i64
  %arrayidx179 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom178
  %103 = load i32, i32* %arrayidx179, align 4
  %cmp180 = icmp sle i32 %101, %103
  br i1 %cmp180, label %for.body.181, label %for.end.204

for.body.181:                                     ; preds = %for.cond.177
  %104 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %104 to i64
  %105 = load i32, i32* %u, align 4
  %idxprom183 = sext i32 %105 to i64
  %arrayidx184 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom183
  %arrayidx185 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx184, i32 0, i64 %idxprom182
  %106 = load i32, i32* %arrayidx185, align 4
  %107 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %107 to i64
  %108 = load i32, i32* %u, align 4
  %add187 = add nsw i32 %108, 1
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom188
  %arrayidx190 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx189, i32 0, i64 %idxprom186
  %109 = load i32, i32* %arrayidx190, align 4
  %xor191 = xor i32 %109, %106
  store i32 %xor191, i32* %arrayidx190, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %110 to i64
  %111 = load i32, i32* %u, align 4
  %idxprom193 = sext i32 %111 to i64
  %arrayidx194 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom193
  %arrayidx195 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx194, i32 0, i64 %idxprom192
  %112 = load i32, i32* %arrayidx195, align 4
  %idxprom196 = sext i32 %112 to i64
  %arrayidx197 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom196
  %113 = load i32, i32* %arrayidx197, align 4
  %114 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %114 to i64
  %115 = load i32, i32* %u, align 4
  %idxprom199 = sext i32 %115 to i64
  %arrayidx200 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom199
  %arrayidx201 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx200, i32 0, i64 %idxprom198
  store i32 %113, i32* %arrayidx201, align 4
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.body.181
  %116 = load i32, i32* %i, align 4
  %inc203 = add nsw i32 %116, 1
  store i32 %inc203, i32* %i, align 4
  br label %for.cond.177

for.end.204:                                      ; preds = %for.cond.177
  br label %if.end.205

if.end.205:                                       ; preds = %for.end.204, %for.end.87
  %117 = load i32, i32* %u, align 4
  %118 = load i32, i32* %u, align 4
  %add206 = add nsw i32 %118, 1
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom207
  %119 = load i32, i32* %arrayidx208, align 4
  %sub209 = sub nsw i32 %117, %119
  %120 = load i32, i32* %u, align 4
  %add210 = add nsw i32 %120, 1
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds [18 x i32], [18 x i32]* %u_lu, i32 0, i64 %idxprom211
  store i32 %sub209, i32* %arrayidx212, align 4
  %121 = load i32, i32* %u, align 4
  %cmp213 = icmp slt i32 %121, 16
  br i1 %cmp213, label %if.then.214, label %if.end.283

if.then.214:                                      ; preds = %if.end.205
  %122 = load i32, i32* %u, align 4
  %add215 = add nsw i32 %122, 1
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom216
  %123 = load i32, i32* %arrayidx217, align 4
  %cmp218 = icmp ne i32 %123, -1
  br i1 %cmp218, label %if.then.219, label %if.else.228

if.then.219:                                      ; preds = %if.then.214
  %124 = load i32, i32* %u, align 4
  %add220 = add nsw i32 %124, 1
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom221
  %125 = load i32, i32* %arrayidx222, align 4
  %idxprom223 = sext i32 %125 to i64
  %arrayidx224 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom223
  %126 = load i32, i32* %arrayidx224, align 4
  %127 = load i32, i32* %u, align 4
  %add225 = add nsw i32 %127, 1
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom226
  store i32 %126, i32* %arrayidx227, align 4
  br label %if.end.232

if.else.228:                                      ; preds = %if.then.214
  %128 = load i32, i32* %u, align 4
  %add229 = add nsw i32 %128, 1
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom230
  store i32 0, i32* %arrayidx231, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.228, %if.then.219
  store i32 1, i32* %i, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.272, %if.end.232
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %u, align 4
  %add234 = add nsw i32 %130, 1
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom235
  %131 = load i32, i32* %arrayidx236, align 4
  %cmp237 = icmp sle i32 %129, %131
  br i1 %cmp237, label %for.body.238, label %for.end.274

for.body.238:                                     ; preds = %for.cond.233
  %132 = load i32, i32* %u, align 4
  %add239 = add nsw i32 %132, 1
  %133 = load i32, i32* %i, align 4
  %sub240 = sub nsw i32 %add239, %133
  %idxprom241 = sext i32 %sub240 to i64
  %arrayidx242 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom241
  %134 = load i32, i32* %arrayidx242, align 4
  %cmp243 = icmp ne i32 %134, -1
  br i1 %cmp243, label %land.lhs.true.244, label %if.end.271

land.lhs.true.244:                                ; preds = %for.body.238
  %135 = load i32, i32* %i, align 4
  %idxprom245 = sext i32 %135 to i64
  %136 = load i32, i32* %u, align 4
  %add246 = add nsw i32 %136, 1
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom247
  %arrayidx249 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx248, i32 0, i64 %idxprom245
  %137 = load i32, i32* %arrayidx249, align 4
  %cmp250 = icmp ne i32 %137, 0
  br i1 %cmp250, label %if.then.251, label %if.end.271

if.then.251:                                      ; preds = %land.lhs.true.244
  %138 = load i32, i32* %u, align 4
  %add252 = add nsw i32 %138, 1
  %139 = load i32, i32* %i, align 4
  %sub253 = sub nsw i32 %add252, %139
  %idxprom254 = sext i32 %sub253 to i64
  %arrayidx255 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom254
  %140 = load i32, i32* %arrayidx255, align 4
  %141 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %141 to i64
  %142 = load i32, i32* %u, align 4
  %add257 = add nsw i32 %142, 1
  %idxprom258 = sext i32 %add257 to i64
  %arrayidx259 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom258
  %arrayidx260 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx259, i32 0, i64 %idxprom256
  %143 = load i32, i32* %arrayidx260, align 4
  %idxprom261 = sext i32 %143 to i64
  %arrayidx262 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom261
  %144 = load i32, i32* %arrayidx262, align 4
  %add263 = add nsw i32 %140, %144
  %rem264 = srem i32 %add263, 255
  %idxprom265 = sext i32 %rem264 to i64
  %arrayidx266 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom265
  %145 = load i32, i32* %arrayidx266, align 4
  %146 = load i32, i32* %u, align 4
  %add267 = add nsw i32 %146, 1
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom268
  %147 = load i32, i32* %arrayidx269, align 4
  %xor270 = xor i32 %147, %145
  store i32 %xor270, i32* %arrayidx269, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.251, %land.lhs.true.244, %for.body.238
  br label %for.inc.272

for.inc.272:                                      ; preds = %if.end.271
  %148 = load i32, i32* %i, align 4
  %inc273 = add nsw i32 %148, 1
  store i32 %inc273, i32* %i, align 4
  br label %for.cond.233

for.end.274:                                      ; preds = %for.cond.233
  %149 = load i32, i32* %u, align 4
  %add275 = add nsw i32 %149, 1
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom276
  %150 = load i32, i32* %arrayidx277, align 4
  %idxprom278 = sext i32 %150 to i64
  %arrayidx279 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom278
  %151 = load i32, i32* %arrayidx279, align 4
  %152 = load i32, i32* %u, align 4
  %add280 = add nsw i32 %152, 1
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds [18 x i32], [18 x i32]* %d, i32 0, i64 %idxprom281
  store i32 %151, i32* %arrayidx282, align 4
  br label %if.end.283

if.end.283:                                       ; preds = %for.end.274, %if.end.205
  br label %do.cond.284

do.cond.284:                                      ; preds = %if.end.283
  %153 = load i32, i32* %u, align 4
  %cmp285 = icmp slt i32 %153, 16
  br i1 %cmp285, label %land.rhs.286, label %land.end.291

land.rhs.286:                                     ; preds = %do.cond.284
  %154 = load i32, i32* %u, align 4
  %add287 = add nsw i32 %154, 1
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom288
  %155 = load i32, i32* %arrayidx289, align 4
  %cmp290 = icmp sle i32 %155, 8
  br label %land.end.291

land.end.291:                                     ; preds = %land.rhs.286, %do.cond.284
  %156 = phi i1 [ false, %do.cond.284 ], [ %cmp290, %land.rhs.286 ]
  br i1 %156, label %do.body, label %do.end.292

do.end.292:                                       ; preds = %land.end.291
  %157 = load i32, i32* %u, align 4
  %inc293 = add nsw i32 %157, 1
  store i32 %inc293, i32* %u, align 4
  %158 = load i32, i32* %u, align 4
  %idxprom294 = sext i32 %158 to i64
  %arrayidx295 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom294
  %159 = load i32, i32* %arrayidx295, align 4
  %cmp296 = icmp sle i32 %159, 8
  br i1 %cmp296, label %if.then.297, label %if.else.630

if.then.297:                                      ; preds = %do.end.292
  store i32 0, i32* %i, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.313, %if.then.297
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* %u, align 4
  %idxprom299 = sext i32 %161 to i64
  %arrayidx300 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom299
  %162 = load i32, i32* %arrayidx300, align 4
  %cmp301 = icmp sle i32 %160, %162
  br i1 %cmp301, label %for.body.302, label %for.end.315

for.body.302:                                     ; preds = %for.cond.298
  %163 = load i32, i32* %i, align 4
  %idxprom303 = sext i32 %163 to i64
  %164 = load i32, i32* %u, align 4
  %idxprom304 = sext i32 %164 to i64
  %arrayidx305 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom304
  %arrayidx306 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx305, i32 0, i64 %idxprom303
  %165 = load i32, i32* %arrayidx306, align 4
  %idxprom307 = sext i32 %165 to i64
  %arrayidx308 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom307
  %166 = load i32, i32* %arrayidx308, align 4
  %167 = load i32, i32* %i, align 4
  %idxprom309 = sext i32 %167 to i64
  %168 = load i32, i32* %u, align 4
  %idxprom310 = sext i32 %168 to i64
  %arrayidx311 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom310
  %arrayidx312 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx311, i32 0, i64 %idxprom309
  store i32 %166, i32* %arrayidx312, align 4
  br label %for.inc.313

for.inc.313:                                      ; preds = %for.body.302
  %169 = load i32, i32* %i, align 4
  %inc314 = add nsw i32 %169, 1
  store i32 %inc314, i32* %i, align 4
  br label %for.cond.298

for.end.315:                                      ; preds = %for.cond.298
  store i32 1, i32* %i, align 4
  br label %for.cond.316

for.cond.316:                                     ; preds = %for.inc.327, %for.end.315
  %170 = load i32, i32* %i, align 4
  %171 = load i32, i32* %u, align 4
  %idxprom317 = sext i32 %171 to i64
  %arrayidx318 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom317
  %172 = load i32, i32* %arrayidx318, align 4
  %cmp319 = icmp sle i32 %170, %172
  br i1 %cmp319, label %for.body.320, label %for.end.329

for.body.320:                                     ; preds = %for.cond.316
  %173 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %173 to i64
  %174 = load i32, i32* %u, align 4
  %idxprom322 = sext i32 %174 to i64
  %arrayidx323 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom322
  %arrayidx324 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx323, i32 0, i64 %idxprom321
  %175 = load i32, i32* %arrayidx324, align 4
  %176 = load i32, i32* %i, align 4
  %idxprom325 = sext i32 %176 to i64
  %arrayidx326 = getelementptr inbounds [9 x i32], [9 x i32]* %reg, i32 0, i64 %idxprom325
  store i32 %175, i32* %arrayidx326, align 4
  br label %for.inc.327

for.inc.327:                                      ; preds = %for.body.320
  %177 = load i32, i32* %i, align 4
  %inc328 = add nsw i32 %177, 1
  store i32 %inc328, i32* %i, align 4
  br label %for.cond.316

for.end.329:                                      ; preds = %for.cond.316
  store i32 0, i32* %count, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.366, %for.end.329
  %178 = load i32, i32* %i, align 4
  %cmp331 = icmp sle i32 %178, 255
  br i1 %cmp331, label %for.body.332, label %for.end.368

for.body.332:                                     ; preds = %for.cond.330
  store i32 1, i32* %q, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.354, %for.body.332
  %179 = load i32, i32* %j, align 4
  %180 = load i32, i32* %u, align 4
  %idxprom334 = sext i32 %180 to i64
  %arrayidx335 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom334
  %181 = load i32, i32* %arrayidx335, align 4
  %cmp336 = icmp sle i32 %179, %181
  br i1 %cmp336, label %for.body.337, label %for.end.356

for.body.337:                                     ; preds = %for.cond.333
  %182 = load i32, i32* %j, align 4
  %idxprom338 = sext i32 %182 to i64
  %arrayidx339 = getelementptr inbounds [9 x i32], [9 x i32]* %reg, i32 0, i64 %idxprom338
  %183 = load i32, i32* %arrayidx339, align 4
  %cmp340 = icmp ne i32 %183, -1
  br i1 %cmp340, label %if.then.341, label %if.end.353

if.then.341:                                      ; preds = %for.body.337
  %184 = load i32, i32* %j, align 4
  %idxprom342 = sext i32 %184 to i64
  %arrayidx343 = getelementptr inbounds [9 x i32], [9 x i32]* %reg, i32 0, i64 %idxprom342
  %185 = load i32, i32* %arrayidx343, align 4
  %186 = load i32, i32* %j, align 4
  %add344 = add nsw i32 %185, %186
  %rem345 = srem i32 %add344, 255
  %187 = load i32, i32* %j, align 4
  %idxprom346 = sext i32 %187 to i64
  %arrayidx347 = getelementptr inbounds [9 x i32], [9 x i32]* %reg, i32 0, i64 %idxprom346
  store i32 %rem345, i32* %arrayidx347, align 4
  %188 = load i32, i32* %j, align 4
  %idxprom348 = sext i32 %188 to i64
  %arrayidx349 = getelementptr inbounds [9 x i32], [9 x i32]* %reg, i32 0, i64 %idxprom348
  %189 = load i32, i32* %arrayidx349, align 4
  %idxprom350 = sext i32 %189 to i64
  %arrayidx351 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom350
  %190 = load i32, i32* %arrayidx351, align 4
  %191 = load i32, i32* %q, align 4
  %xor352 = xor i32 %191, %190
  store i32 %xor352, i32* %q, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.341, %for.body.337
  br label %for.inc.354

for.inc.354:                                      ; preds = %if.end.353
  %192 = load i32, i32* %j, align 4
  %inc355 = add nsw i32 %192, 1
  store i32 %inc355, i32* %j, align 4
  br label %for.cond.333

for.end.356:                                      ; preds = %for.cond.333
  %193 = load i32, i32* %q, align 4
  %tobool357 = icmp ne i32 %193, 0
  br i1 %tobool357, label %if.end.365, label %if.then.358

if.then.358:                                      ; preds = %for.end.356
  %194 = load i32, i32* %i, align 4
  %195 = load i32, i32* %count, align 4
  %idxprom359 = sext i32 %195 to i64
  %arrayidx360 = getelementptr inbounds [8 x i32], [8 x i32]* %root, i32 0, i64 %idxprom359
  store i32 %194, i32* %arrayidx360, align 4
  %196 = load i32, i32* %i, align 4
  %sub361 = sub nsw i32 255, %196
  %197 = load i32, i32* %count, align 4
  %idxprom362 = sext i32 %197 to i64
  %arrayidx363 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom362
  store i32 %sub361, i32* %arrayidx363, align 4
  %198 = load i32, i32* %count, align 4
  %inc364 = add nsw i32 %198, 1
  store i32 %inc364, i32* %count, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.358, %for.end.356
  br label %for.inc.366

for.inc.366:                                      ; preds = %if.end.365
  %199 = load i32, i32* %i, align 4
  %inc367 = add nsw i32 %199, 1
  store i32 %inc367, i32* %i, align 4
  br label %for.cond.330

for.end.368:                                      ; preds = %for.cond.330
  %200 = load i32, i32* %count, align 4
  %201 = load i32, i32* %u, align 4
  %idxprom369 = sext i32 %201 to i64
  %arrayidx370 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom369
  %202 = load i32, i32* %arrayidx370, align 4
  %cmp371 = icmp eq i32 %200, %202
  br i1 %cmp371, label %if.then.372, label %if.else.608

if.then.372:                                      ; preds = %for.end.368
  store i32 1, i32* %i, align 4
  br label %for.cond.373

for.cond.373:                                     ; preds = %for.inc.481, %if.then.372
  %203 = load i32, i32* %i, align 4
  %204 = load i32, i32* %u, align 4
  %idxprom374 = sext i32 %204 to i64
  %arrayidx375 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom374
  %205 = load i32, i32* %arrayidx375, align 4
  %cmp376 = icmp sle i32 %203, %205
  br i1 %cmp376, label %for.body.377, label %for.end.483

for.body.377:                                     ; preds = %for.cond.373
  %206 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %206 to i64
  %arrayidx379 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom378
  %207 = load i32, i32* %arrayidx379, align 4
  %cmp380 = icmp ne i32 %207, -1
  br i1 %cmp380, label %land.lhs.true.381, label %if.else.401

land.lhs.true.381:                                ; preds = %for.body.377
  %208 = load i32, i32* %i, align 4
  %idxprom382 = sext i32 %208 to i64
  %209 = load i32, i32* %u, align 4
  %idxprom383 = sext i32 %209 to i64
  %arrayidx384 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom383
  %arrayidx385 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx384, i32 0, i64 %idxprom382
  %210 = load i32, i32* %arrayidx385, align 4
  %cmp386 = icmp ne i32 %210, -1
  br i1 %cmp386, label %if.then.387, label %if.else.401

if.then.387:                                      ; preds = %land.lhs.true.381
  %211 = load i32, i32* %i, align 4
  %idxprom388 = sext i32 %211 to i64
  %arrayidx389 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom388
  %212 = load i32, i32* %arrayidx389, align 4
  %idxprom390 = sext i32 %212 to i64
  %arrayidx391 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom390
  %213 = load i32, i32* %arrayidx391, align 4
  %214 = load i32, i32* %i, align 4
  %idxprom392 = sext i32 %214 to i64
  %215 = load i32, i32* %u, align 4
  %idxprom393 = sext i32 %215 to i64
  %arrayidx394 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom393
  %arrayidx395 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx394, i32 0, i64 %idxprom392
  %216 = load i32, i32* %arrayidx395, align 4
  %idxprom396 = sext i32 %216 to i64
  %arrayidx397 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom396
  %217 = load i32, i32* %arrayidx397, align 4
  %xor398 = xor i32 %213, %217
  %218 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %218 to i64
  %arrayidx400 = getelementptr inbounds [9 x i32], [9 x i32]* %z, i32 0, i64 %idxprom399
  store i32 %xor398, i32* %arrayidx400, align 4
  br label %if.end.442

if.else.401:                                      ; preds = %land.lhs.true.381, %for.body.377
  %219 = load i32, i32* %i, align 4
  %idxprom402 = sext i32 %219 to i64
  %arrayidx403 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom402
  %220 = load i32, i32* %arrayidx403, align 4
  %cmp404 = icmp ne i32 %220, -1
  br i1 %cmp404, label %land.lhs.true.405, label %if.else.418

land.lhs.true.405:                                ; preds = %if.else.401
  %221 = load i32, i32* %i, align 4
  %idxprom406 = sext i32 %221 to i64
  %222 = load i32, i32* %u, align 4
  %idxprom407 = sext i32 %222 to i64
  %arrayidx408 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom407
  %arrayidx409 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx408, i32 0, i64 %idxprom406
  %223 = load i32, i32* %arrayidx409, align 4
  %cmp410 = icmp eq i32 %223, -1
  br i1 %cmp410, label %if.then.411, label %if.else.418

if.then.411:                                      ; preds = %land.lhs.true.405
  %224 = load i32, i32* %i, align 4
  %idxprom412 = sext i32 %224 to i64
  %arrayidx413 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom412
  %225 = load i32, i32* %arrayidx413, align 4
  %idxprom414 = sext i32 %225 to i64
  %arrayidx415 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom414
  %226 = load i32, i32* %arrayidx415, align 4
  %227 = load i32, i32* %i, align 4
  %idxprom416 = sext i32 %227 to i64
  %arrayidx417 = getelementptr inbounds [9 x i32], [9 x i32]* %z, i32 0, i64 %idxprom416
  store i32 %226, i32* %arrayidx417, align 4
  br label %if.end.441

if.else.418:                                      ; preds = %land.lhs.true.405, %if.else.401
  %228 = load i32, i32* %i, align 4
  %idxprom419 = sext i32 %228 to i64
  %arrayidx420 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom419
  %229 = load i32, i32* %arrayidx420, align 4
  %cmp421 = icmp eq i32 %229, -1
  br i1 %cmp421, label %land.lhs.true.422, label %if.else.437

land.lhs.true.422:                                ; preds = %if.else.418
  %230 = load i32, i32* %i, align 4
  %idxprom423 = sext i32 %230 to i64
  %231 = load i32, i32* %u, align 4
  %idxprom424 = sext i32 %231 to i64
  %arrayidx425 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom424
  %arrayidx426 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx425, i32 0, i64 %idxprom423
  %232 = load i32, i32* %arrayidx426, align 4
  %cmp427 = icmp ne i32 %232, -1
  br i1 %cmp427, label %if.then.428, label %if.else.437

if.then.428:                                      ; preds = %land.lhs.true.422
  %233 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %233 to i64
  %234 = load i32, i32* %u, align 4
  %idxprom430 = sext i32 %234 to i64
  %arrayidx431 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom430
  %arrayidx432 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx431, i32 0, i64 %idxprom429
  %235 = load i32, i32* %arrayidx432, align 4
  %idxprom433 = sext i32 %235 to i64
  %arrayidx434 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom433
  %236 = load i32, i32* %arrayidx434, align 4
  %237 = load i32, i32* %i, align 4
  %idxprom435 = sext i32 %237 to i64
  %arrayidx436 = getelementptr inbounds [9 x i32], [9 x i32]* %z, i32 0, i64 %idxprom435
  store i32 %236, i32* %arrayidx436, align 4
  br label %if.end.440

if.else.437:                                      ; preds = %land.lhs.true.422, %if.else.418
  %238 = load i32, i32* %i, align 4
  %idxprom438 = sext i32 %238 to i64
  %arrayidx439 = getelementptr inbounds [9 x i32], [9 x i32]* %z, i32 0, i64 %idxprom438
  store i32 0, i32* %arrayidx439, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.else.437, %if.then.428
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %if.then.411
  br label %if.end.442

if.end.442:                                       ; preds = %if.end.441, %if.then.387
  store i32 1, i32* %j, align 4
  br label %for.cond.443

for.cond.443:                                     ; preds = %for.inc.472, %if.end.442
  %239 = load i32, i32* %j, align 4
  %240 = load i32, i32* %i, align 4
  %cmp444 = icmp slt i32 %239, %240
  br i1 %cmp444, label %for.body.445, label %for.end.474

for.body.445:                                     ; preds = %for.cond.443
  %241 = load i32, i32* %j, align 4
  %idxprom446 = sext i32 %241 to i64
  %arrayidx447 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom446
  %242 = load i32, i32* %arrayidx447, align 4
  %cmp448 = icmp ne i32 %242, -1
  br i1 %cmp448, label %land.lhs.true.449, label %if.end.471

land.lhs.true.449:                                ; preds = %for.body.445
  %243 = load i32, i32* %i, align 4
  %244 = load i32, i32* %j, align 4
  %sub450 = sub nsw i32 %243, %244
  %idxprom451 = sext i32 %sub450 to i64
  %245 = load i32, i32* %u, align 4
  %idxprom452 = sext i32 %245 to i64
  %arrayidx453 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom452
  %arrayidx454 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx453, i32 0, i64 %idxprom451
  %246 = load i32, i32* %arrayidx454, align 4
  %cmp455 = icmp ne i32 %246, -1
  br i1 %cmp455, label %if.then.456, label %if.end.471

if.then.456:                                      ; preds = %land.lhs.true.449
  %247 = load i32, i32* %i, align 4
  %248 = load i32, i32* %j, align 4
  %sub457 = sub nsw i32 %247, %248
  %idxprom458 = sext i32 %sub457 to i64
  %249 = load i32, i32* %u, align 4
  %idxprom459 = sext i32 %249 to i64
  %arrayidx460 = getelementptr inbounds [18 x [16 x i32]], [18 x [16 x i32]]* %elp, i32 0, i64 %idxprom459
  %arrayidx461 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx460, i32 0, i64 %idxprom458
  %250 = load i32, i32* %arrayidx461, align 4
  %251 = load i32, i32* %j, align 4
  %idxprom462 = sext i32 %251 to i64
  %arrayidx463 = getelementptr inbounds [17 x i32], [17 x i32]* %s, i32 0, i64 %idxprom462
  %252 = load i32, i32* %arrayidx463, align 4
  %add464 = add nsw i32 %250, %252
  %rem465 = srem i32 %add464, 255
  %idxprom466 = sext i32 %rem465 to i64
  %arrayidx467 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom466
  %253 = load i32, i32* %arrayidx467, align 4
  %254 = load i32, i32* %i, align 4
  %idxprom468 = sext i32 %254 to i64
  %arrayidx469 = getelementptr inbounds [9 x i32], [9 x i32]* %z, i32 0, i64 %idxprom468
  %255 = load i32, i32* %arrayidx469, align 4
  %xor470 = xor i32 %255, %253
  store i32 %xor470, i32* %arrayidx469, align 4
  br label %if.end.471

if.end.471:                                       ; preds = %if.then.456, %land.lhs.true.449, %for.body.445
  br label %for.inc.472

for.inc.472:                                      ; preds = %if.end.471
  %256 = load i32, i32* %j, align 4
  %inc473 = add nsw i32 %256, 1
  store i32 %inc473, i32* %j, align 4
  br label %for.cond.443

for.end.474:                                      ; preds = %for.cond.443
  %257 = load i32, i32* %i, align 4
  %idxprom475 = sext i32 %257 to i64
  %arrayidx476 = getelementptr inbounds [9 x i32], [9 x i32]* %z, i32 0, i64 %idxprom475
  %258 = load i32, i32* %arrayidx476, align 4
  %idxprom477 = sext i32 %258 to i64
  %arrayidx478 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom477
  %259 = load i32, i32* %arrayidx478, align 4
  %260 = load i32, i32* %i, align 4
  %idxprom479 = sext i32 %260 to i64
  %arrayidx480 = getelementptr inbounds [9 x i32], [9 x i32]* %z, i32 0, i64 %idxprom479
  store i32 %259, i32* %arrayidx480, align 4
  br label %for.inc.481

for.inc.481:                                      ; preds = %for.end.474
  %261 = load i32, i32* %i, align 4
  %inc482 = add nsw i32 %261, 1
  store i32 %inc482, i32* %i, align 4
  br label %for.cond.373

for.end.483:                                      ; preds = %for.cond.373
  store i32 0, i32* %i, align 4
  br label %for.cond.484

for.cond.484:                                     ; preds = %for.inc.503, %for.end.483
  %262 = load i32, i32* %i, align 4
  %cmp485 = icmp slt i32 %262, 255
  br i1 %cmp485, label %for.body.486, label %for.end.505

for.body.486:                                     ; preds = %for.cond.484
  %263 = load i32, i32* %i, align 4
  %idxprom487 = sext i32 %263 to i64
  %arrayidx488 = getelementptr inbounds [255 x i32], [255 x i32]* %err, i32 0, i64 %idxprom487
  store i32 0, i32* %arrayidx488, align 4
  %264 = load i32, i32* %i, align 4
  %idxprom489 = sext i32 %264 to i64
  %arrayidx490 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom489
  %265 = load i32, i32* %arrayidx490, align 4
  %cmp491 = icmp ne i32 %265, -1
  br i1 %cmp491, label %if.then.492, label %if.else.499

if.then.492:                                      ; preds = %for.body.486
  %266 = load i32, i32* %i, align 4
  %idxprom493 = sext i32 %266 to i64
  %arrayidx494 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom493
  %267 = load i32, i32* %arrayidx494, align 4
  %idxprom495 = sext i32 %267 to i64
  %arrayidx496 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom495
  %268 = load i32, i32* %arrayidx496, align 4
  %269 = load i32, i32* %i, align 4
  %idxprom497 = sext i32 %269 to i64
  %arrayidx498 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom497
  store i32 %268, i32* %arrayidx498, align 4
  br label %if.end.502

if.else.499:                                      ; preds = %for.body.486
  %270 = load i32, i32* %i, align 4
  %idxprom500 = sext i32 %270 to i64
  %arrayidx501 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom500
  store i32 0, i32* %arrayidx501, align 4
  br label %if.end.502

if.end.502:                                       ; preds = %if.else.499, %if.then.492
  br label %for.inc.503

for.inc.503:                                      ; preds = %if.end.502
  %271 = load i32, i32* %i, align 4
  %inc504 = add nsw i32 %271, 1
  store i32 %inc504, i32* %i, align 4
  br label %for.cond.484

for.end.505:                                      ; preds = %for.cond.484
  store i32 0, i32* %i, align 4
  br label %for.cond.506

for.cond.506:                                     ; preds = %for.inc.605, %for.end.505
  %272 = load i32, i32* %i, align 4
  %273 = load i32, i32* %u, align 4
  %idxprom507 = sext i32 %273 to i64
  %arrayidx508 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom507
  %274 = load i32, i32* %arrayidx508, align 4
  %cmp509 = icmp slt i32 %272, %274
  br i1 %cmp509, label %for.body.510, label %for.end.607

for.body.510:                                     ; preds = %for.cond.506
  %275 = load i32, i32* %i, align 4
  %idxprom511 = sext i32 %275 to i64
  %arrayidx512 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom511
  %276 = load i32, i32* %arrayidx512, align 4
  %idxprom513 = sext i32 %276 to i64
  %arrayidx514 = getelementptr inbounds [255 x i32], [255 x i32]* %err, i32 0, i64 %idxprom513
  store i32 1, i32* %arrayidx514, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.515

for.cond.515:                                     ; preds = %for.inc.539, %for.body.510
  %277 = load i32, i32* %j, align 4
  %278 = load i32, i32* %u, align 4
  %idxprom516 = sext i32 %278 to i64
  %arrayidx517 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom516
  %279 = load i32, i32* %arrayidx517, align 4
  %cmp518 = icmp sle i32 %277, %279
  br i1 %cmp518, label %for.body.519, label %for.end.541

for.body.519:                                     ; preds = %for.cond.515
  %280 = load i32, i32* %j, align 4
  %idxprom520 = sext i32 %280 to i64
  %arrayidx521 = getelementptr inbounds [9 x i32], [9 x i32]* %z, i32 0, i64 %idxprom520
  %281 = load i32, i32* %arrayidx521, align 4
  %cmp522 = icmp ne i32 %281, -1
  br i1 %cmp522, label %if.then.523, label %if.end.538

if.then.523:                                      ; preds = %for.body.519
  %282 = load i32, i32* %j, align 4
  %idxprom524 = sext i32 %282 to i64
  %arrayidx525 = getelementptr inbounds [9 x i32], [9 x i32]* %z, i32 0, i64 %idxprom524
  %283 = load i32, i32* %arrayidx525, align 4
  %284 = load i32, i32* %j, align 4
  %285 = load i32, i32* %i, align 4
  %idxprom526 = sext i32 %285 to i64
  %arrayidx527 = getelementptr inbounds [8 x i32], [8 x i32]* %root, i32 0, i64 %idxprom526
  %286 = load i32, i32* %arrayidx527, align 4
  %mul528 = mul nsw i32 %284, %286
  %add529 = add nsw i32 %283, %mul528
  %rem530 = srem i32 %add529, 255
  %idxprom531 = sext i32 %rem530 to i64
  %arrayidx532 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom531
  %287 = load i32, i32* %arrayidx532, align 4
  %288 = load i32, i32* %i, align 4
  %idxprom533 = sext i32 %288 to i64
  %arrayidx534 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom533
  %289 = load i32, i32* %arrayidx534, align 4
  %idxprom535 = sext i32 %289 to i64
  %arrayidx536 = getelementptr inbounds [255 x i32], [255 x i32]* %err, i32 0, i64 %idxprom535
  %290 = load i32, i32* %arrayidx536, align 4
  %xor537 = xor i32 %290, %287
  store i32 %xor537, i32* %arrayidx536, align 4
  br label %if.end.538

if.end.538:                                       ; preds = %if.then.523, %for.body.519
  br label %for.inc.539

for.inc.539:                                      ; preds = %if.end.538
  %291 = load i32, i32* %j, align 4
  %inc540 = add nsw i32 %291, 1
  store i32 %inc540, i32* %j, align 4
  br label %for.cond.515

for.end.541:                                      ; preds = %for.cond.515
  %292 = load i32, i32* %i, align 4
  %idxprom542 = sext i32 %292 to i64
  %arrayidx543 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom542
  %293 = load i32, i32* %arrayidx543, align 4
  %idxprom544 = sext i32 %293 to i64
  %arrayidx545 = getelementptr inbounds [255 x i32], [255 x i32]* %err, i32 0, i64 %idxprom544
  %294 = load i32, i32* %arrayidx545, align 4
  %cmp546 = icmp ne i32 %294, 0
  br i1 %cmp546, label %if.then.547, label %if.end.604

if.then.547:                                      ; preds = %for.end.541
  %295 = load i32, i32* %i, align 4
  %idxprom548 = sext i32 %295 to i64
  %arrayidx549 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom548
  %296 = load i32, i32* %arrayidx549, align 4
  %idxprom550 = sext i32 %296 to i64
  %arrayidx551 = getelementptr inbounds [255 x i32], [255 x i32]* %err, i32 0, i64 %idxprom550
  %297 = load i32, i32* %arrayidx551, align 4
  %idxprom552 = sext i32 %297 to i64
  %arrayidx553 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom552
  %298 = load i32, i32* %arrayidx553, align 4
  %299 = load i32, i32* %i, align 4
  %idxprom554 = sext i32 %299 to i64
  %arrayidx555 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom554
  %300 = load i32, i32* %arrayidx555, align 4
  %idxprom556 = sext i32 %300 to i64
  %arrayidx557 = getelementptr inbounds [255 x i32], [255 x i32]* %err, i32 0, i64 %idxprom556
  store i32 %298, i32* %arrayidx557, align 4
  store i32 0, i32* %q, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.558

for.cond.558:                                     ; preds = %for.inc.578, %if.then.547
  %301 = load i32, i32* %j, align 4
  %302 = load i32, i32* %u, align 4
  %idxprom559 = sext i32 %302 to i64
  %arrayidx560 = getelementptr inbounds [18 x i32], [18 x i32]* %l, i32 0, i64 %idxprom559
  %303 = load i32, i32* %arrayidx560, align 4
  %cmp561 = icmp slt i32 %301, %303
  br i1 %cmp561, label %for.body.562, label %for.end.580

for.body.562:                                     ; preds = %for.cond.558
  %304 = load i32, i32* %j, align 4
  %305 = load i32, i32* %i, align 4
  %cmp563 = icmp ne i32 %304, %305
  br i1 %cmp563, label %if.then.564, label %if.end.577

if.then.564:                                      ; preds = %for.body.562
  %306 = load i32, i32* %j, align 4
  %idxprom565 = sext i32 %306 to i64
  %arrayidx566 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom565
  %307 = load i32, i32* %arrayidx566, align 4
  %308 = load i32, i32* %i, align 4
  %idxprom567 = sext i32 %308 to i64
  %arrayidx568 = getelementptr inbounds [8 x i32], [8 x i32]* %root, i32 0, i64 %idxprom567
  %309 = load i32, i32* %arrayidx568, align 4
  %add569 = add nsw i32 %307, %309
  %rem570 = srem i32 %add569, 255
  %idxprom571 = sext i32 %rem570 to i64
  %arrayidx572 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom571
  %310 = load i32, i32* %arrayidx572, align 4
  %xor573 = xor i32 1, %310
  %idxprom574 = sext i32 %xor573 to i64
  %arrayidx575 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom574
  %311 = load i32, i32* %arrayidx575, align 4
  %312 = load i32, i32* %q, align 4
  %add576 = add nsw i32 %312, %311
  store i32 %add576, i32* %q, align 4
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.564, %for.body.562
  br label %for.inc.578

for.inc.578:                                      ; preds = %if.end.577
  %313 = load i32, i32* %j, align 4
  %inc579 = add nsw i32 %313, 1
  store i32 %inc579, i32* %j, align 4
  br label %for.cond.558

for.end.580:                                      ; preds = %for.cond.558
  %314 = load i32, i32* %q, align 4
  %rem581 = srem i32 %314, 255
  store i32 %rem581, i32* %q, align 4
  %315 = load i32, i32* %i, align 4
  %idxprom582 = sext i32 %315 to i64
  %arrayidx583 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom582
  %316 = load i32, i32* %arrayidx583, align 4
  %idxprom584 = sext i32 %316 to i64
  %arrayidx585 = getelementptr inbounds [255 x i32], [255 x i32]* %err, i32 0, i64 %idxprom584
  %317 = load i32, i32* %arrayidx585, align 4
  %318 = load i32, i32* %q, align 4
  %sub586 = sub nsw i32 %317, %318
  %add587 = add nsw i32 %sub586, 255
  %rem588 = srem i32 %add587, 255
  %idxprom589 = sext i32 %rem588 to i64
  %arrayidx590 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom589
  %319 = load i32, i32* %arrayidx590, align 4
  %320 = load i32, i32* %i, align 4
  %idxprom591 = sext i32 %320 to i64
  %arrayidx592 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom591
  %321 = load i32, i32* %arrayidx592, align 4
  %idxprom593 = sext i32 %321 to i64
  %arrayidx594 = getelementptr inbounds [255 x i32], [255 x i32]* %err, i32 0, i64 %idxprom593
  store i32 %319, i32* %arrayidx594, align 4
  %322 = load i32, i32* %i, align 4
  %idxprom595 = sext i32 %322 to i64
  %arrayidx596 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom595
  %323 = load i32, i32* %arrayidx596, align 4
  %idxprom597 = sext i32 %323 to i64
  %arrayidx598 = getelementptr inbounds [255 x i32], [255 x i32]* %err, i32 0, i64 %idxprom597
  %324 = load i32, i32* %arrayidx598, align 4
  %325 = load i32, i32* %i, align 4
  %idxprom599 = sext i32 %325 to i64
  %arrayidx600 = getelementptr inbounds [8 x i32], [8 x i32]* %loc, i32 0, i64 %idxprom599
  %326 = load i32, i32* %arrayidx600, align 4
  %idxprom601 = sext i32 %326 to i64
  %arrayidx602 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom601
  %327 = load i32, i32* %arrayidx602, align 4
  %xor603 = xor i32 %327, %324
  store i32 %xor603, i32* %arrayidx602, align 4
  br label %if.end.604

if.end.604:                                       ; preds = %for.end.580, %for.end.541
  br label %for.inc.605

for.inc.605:                                      ; preds = %if.end.604
  %328 = load i32, i32* %i, align 4
  %inc606 = add nsw i32 %328, 1
  store i32 %inc606, i32* %i, align 4
  br label %for.cond.506

for.end.607:                                      ; preds = %for.cond.506
  br label %if.end.629

if.else.608:                                      ; preds = %for.end.368
  store i32 0, i32* %i, align 4
  br label %for.cond.609

for.cond.609:                                     ; preds = %for.inc.626, %if.else.608
  %329 = load i32, i32* %i, align 4
  %cmp610 = icmp slt i32 %329, 255
  br i1 %cmp610, label %for.body.611, label %for.end.628

for.body.611:                                     ; preds = %for.cond.609
  %330 = load i32, i32* %i, align 4
  %idxprom612 = sext i32 %330 to i64
  %arrayidx613 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom612
  %331 = load i32, i32* %arrayidx613, align 4
  %cmp614 = icmp ne i32 %331, -1
  br i1 %cmp614, label %if.then.615, label %if.else.622

if.then.615:                                      ; preds = %for.body.611
  %332 = load i32, i32* %i, align 4
  %idxprom616 = sext i32 %332 to i64
  %arrayidx617 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom616
  %333 = load i32, i32* %arrayidx617, align 4
  %idxprom618 = sext i32 %333 to i64
  %arrayidx619 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom618
  %334 = load i32, i32* %arrayidx619, align 4
  %335 = load i32, i32* %i, align 4
  %idxprom620 = sext i32 %335 to i64
  %arrayidx621 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom620
  store i32 %334, i32* %arrayidx621, align 4
  br label %if.end.625

if.else.622:                                      ; preds = %for.body.611
  %336 = load i32, i32* %i, align 4
  %idxprom623 = sext i32 %336 to i64
  %arrayidx624 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom623
  store i32 0, i32* %arrayidx624, align 4
  br label %if.end.625

if.end.625:                                       ; preds = %if.else.622, %if.then.615
  br label %for.inc.626

for.inc.626:                                      ; preds = %if.end.625
  %337 = load i32, i32* %i, align 4
  %inc627 = add nsw i32 %337, 1
  store i32 %inc627, i32* %i, align 4
  br label %for.cond.609

for.end.628:                                      ; preds = %for.cond.609
  br label %if.end.629

if.end.629:                                       ; preds = %for.end.628, %for.end.607
  br label %if.end.651

if.else.630:                                      ; preds = %do.end.292
  store i32 0, i32* %i, align 4
  br label %for.cond.631

for.cond.631:                                     ; preds = %for.inc.648, %if.else.630
  %338 = load i32, i32* %i, align 4
  %cmp632 = icmp slt i32 %338, 255
  br i1 %cmp632, label %for.body.633, label %for.end.650

for.body.633:                                     ; preds = %for.cond.631
  %339 = load i32, i32* %i, align 4
  %idxprom634 = sext i32 %339 to i64
  %arrayidx635 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom634
  %340 = load i32, i32* %arrayidx635, align 4
  %cmp636 = icmp ne i32 %340, -1
  br i1 %cmp636, label %if.then.637, label %if.else.644

if.then.637:                                      ; preds = %for.body.633
  %341 = load i32, i32* %i, align 4
  %idxprom638 = sext i32 %341 to i64
  %arrayidx639 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom638
  %342 = load i32, i32* %arrayidx639, align 4
  %idxprom640 = sext i32 %342 to i64
  %arrayidx641 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom640
  %343 = load i32, i32* %arrayidx641, align 4
  %344 = load i32, i32* %i, align 4
  %idxprom642 = sext i32 %344 to i64
  %arrayidx643 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom642
  store i32 %343, i32* %arrayidx643, align 4
  br label %if.end.647

if.else.644:                                      ; preds = %for.body.633
  %345 = load i32, i32* %i, align 4
  %idxprom645 = sext i32 %345 to i64
  %arrayidx646 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom645
  store i32 0, i32* %arrayidx646, align 4
  br label %if.end.647

if.end.647:                                       ; preds = %if.else.644, %if.then.637
  br label %for.inc.648

for.inc.648:                                      ; preds = %if.end.647
  %346 = load i32, i32* %i, align 4
  %inc649 = add nsw i32 %346, 1
  store i32 %inc649, i32* %i, align 4
  br label %for.cond.631

for.end.650:                                      ; preds = %for.cond.631
  br label %if.end.651

if.end.651:                                       ; preds = %for.end.650, %if.end.629
  br label %if.end.673

if.else.652:                                      ; preds = %for.end.26
  store i32 0, i32* %i, align 4
  br label %for.cond.653

for.cond.653:                                     ; preds = %for.inc.670, %if.else.652
  %347 = load i32, i32* %i, align 4
  %cmp654 = icmp slt i32 %347, 255
  br i1 %cmp654, label %for.body.655, label %for.end.672

for.body.655:                                     ; preds = %for.cond.653
  %348 = load i32, i32* %i, align 4
  %idxprom656 = sext i32 %348 to i64
  %arrayidx657 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom656
  %349 = load i32, i32* %arrayidx657, align 4
  %cmp658 = icmp ne i32 %349, -1
  br i1 %cmp658, label %if.then.659, label %if.else.666

if.then.659:                                      ; preds = %for.body.655
  %350 = load i32, i32* %i, align 4
  %idxprom660 = sext i32 %350 to i64
  %arrayidx661 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom660
  %351 = load i32, i32* %arrayidx661, align 4
  %idxprom662 = sext i32 %351 to i64
  %arrayidx663 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom662
  %352 = load i32, i32* %arrayidx663, align 4
  %353 = load i32, i32* %i, align 4
  %idxprom664 = sext i32 %353 to i64
  %arrayidx665 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom664
  store i32 %352, i32* %arrayidx665, align 4
  br label %if.end.669

if.else.666:                                      ; preds = %for.body.655
  %354 = load i32, i32* %i, align 4
  %idxprom667 = sext i32 %354 to i64
  %arrayidx668 = getelementptr inbounds [255 x i32], [255 x i32]* @recd, i32 0, i64 %idxprom667
  store i32 0, i32* %arrayidx668, align 4
  br label %if.end.669

if.end.669:                                       ; preds = %if.else.666, %if.then.659
  br label %for.inc.670

for.inc.670:                                      ; preds = %if.end.669
  %355 = load i32, i32* %i, align 4
  %inc671 = add nsw i32 %355, 1
  store i32 %inc671, i32* %i, align 4
  br label %for.cond.653

for.end.672:                                      ; preds = %for.cond.653
  br label %if.end.673

if.end.673:                                       ; preds = %for.end.672, %if.end.651
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @encode_rs() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %feedback = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @bb, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 238, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.49, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %for.body.3, label %for.end.51

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [239 x i32], [239 x i32]* @data, i32 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %6 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bb, i32 0, i64 15), align 4
  %xor = xor i32 %5, %6
  %idxprom6 = sext i32 %xor to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @index_of, i32 0, i64 %idxprom6
  %7 = load i32, i32* %arrayidx7, align 4
  store i32 %7, i32* %feedback, align 4
  %8 = load i32, i32* %feedback, align 4
  %cmp8 = icmp ne i32 %8, -1
  br i1 %cmp8, label %if.then, label %if.else.36

if.then:                                          ; preds = %for.body.3
  store i32 15, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.30, %if.then
  %9 = load i32, i32* %j, align 4
  %cmp10 = icmp sgt i32 %9, 0
  br i1 %cmp10, label %for.body.11, label %for.end.31

for.body.11:                                      ; preds = %for.cond.9
  %10 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom12
  %11 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp ne i32 %11, -1
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body.11
  %12 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom16 = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds [16 x i32], [16 x i32]* @bb, i32 0, i64 %idxprom16
  %13 = load i32, i32* %arrayidx17, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [17 x i32], [17 x i32]* @gg, i32 0, i64 %idxprom18
  %15 = load i32, i32* %arrayidx19, align 4
  %16 = load i32, i32* %feedback, align 4
  %add = add nsw i32 %15, %16
  %rem = srem i32 %add, 255
  %idxprom20 = sext i32 %rem to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom20
  %17 = load i32, i32* %arrayidx21, align 4
  %xor22 = xor i32 %13, %17
  %18 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* @bb, i32 0, i64 %idxprom23
  store i32 %xor22, i32* %arrayidx24, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.11
  %19 = load i32, i32* %j, align 4
  %sub25 = sub nsw i32 %19, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [16 x i32], [16 x i32]* @bb, i32 0, i64 %idxprom26
  %20 = load i32, i32* %arrayidx27, align 4
  %21 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [16 x i32], [16 x i32]* @bb, i32 0, i64 %idxprom28
  store i32 %20, i32* %arrayidx29, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end
  %22 = load i32, i32* %j, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.9

for.end.31:                                       ; preds = %for.cond.9
  %23 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @gg, i32 0, i64 0), align 4
  %24 = load i32, i32* %feedback, align 4
  %add32 = add nsw i32 %23, %24
  %rem33 = srem i32 %add32, 255
  %idxprom34 = sext i32 %rem33 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* @alpha_to, i32 0, i64 %idxprom34
  %25 = load i32, i32* %arrayidx35, align 4
  store i32 %25, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bb, i32 0, i64 0), align 4
  br label %if.end.48

if.else.36:                                       ; preds = %for.body.3
  store i32 15, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.45, %if.else.36
  %26 = load i32, i32* %j, align 4
  %cmp38 = icmp sgt i32 %26, 0
  br i1 %cmp38, label %for.body.39, label %for.end.47

for.body.39:                                      ; preds = %for.cond.37
  %27 = load i32, i32* %j, align 4
  %sub40 = sub nsw i32 %27, 1
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [16 x i32], [16 x i32]* @bb, i32 0, i64 %idxprom41
  %28 = load i32, i32* %arrayidx42, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %29 to i64
  %arrayidx44 = getelementptr inbounds [16 x i32], [16 x i32]* @bb, i32 0, i64 %idxprom43
  store i32 %28, i32* %arrayidx44, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.39
  %30 = load i32, i32* %j, align 4
  %dec46 = add nsw i32 %30, -1
  store i32 %dec46, i32* %j, align 4
  br label %for.cond.37

for.end.47:                                       ; preds = %for.cond.37
  store i32 0, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bb, i32 0, i64 0), align 4
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %for.end.31
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %31 = load i32, i32* %i, align 4
  %dec50 = add nsw i32 %31, -1
  store i32 %dec50, i32* %i, align 4
  br label %for.cond.1

for.end.51:                                       ; preds = %for.cond.1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
