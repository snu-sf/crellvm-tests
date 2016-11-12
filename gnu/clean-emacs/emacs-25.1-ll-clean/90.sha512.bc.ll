; ModuleID = './lib/sha512.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_ctx = type { [8 x i64], [2 x i64], i64, [32 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@sha512_round_constants = internal constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16
@fillbuf = internal constant [128 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define void @sha512_init_ctx(%struct.sha512_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.sha512_ctx*, align 8
  store %struct.sha512_ctx* %ctx, %struct.sha512_ctx** %ctx.addr, align 8
  %0 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i64 0
  store i64 7640891576956012808, i64* %arrayidx, align 8
  %1 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state1 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i64], [8 x i64]* %state1, i32 0, i64 1
  store i64 -4942790177534073029, i64* %arrayidx2, align 8
  %2 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i64], [8 x i64]* %state3, i32 0, i64 2
  store i64 4354685564936845355, i64* %arrayidx4, align 8
  %3 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i64], [8 x i64]* %state5, i32 0, i64 3
  store i64 -6534734903238641935, i64* %arrayidx6, align 8
  %4 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i64], [8 x i64]* %state7, i32 0, i64 4
  store i64 5840696475078001361, i64* %arrayidx8, align 8
  %5 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %5, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i64], [8 x i64]* %state9, i32 0, i64 5
  store i64 -7276294671716946913, i64* %arrayidx10, align 8
  %6 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %6, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i64], [8 x i64]* %state11, i32 0, i64 6
  store i64 2270897969802886507, i64* %arrayidx12, align 8
  %7 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %7, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i64], [8 x i64]* %state13, i32 0, i64 7
  store i64 6620516959819538809, i64* %arrayidx14, align 8
  %8 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %8, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x i64], [2 x i64]* %total, i32 0, i64 1
  store i64 0, i64* %arrayidx15, align 8
  %9 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total16 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %9, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %total16, i32 0, i64 0
  store i64 0, i64* %arrayidx17, align 8
  %10 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %10, i32 0, i32 2
  store i64 0, i64* %buflen, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha384_init_ctx(%struct.sha512_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.sha512_ctx*, align 8
  store %struct.sha512_ctx* %ctx, %struct.sha512_ctx** %ctx.addr, align 8
  %0 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i64 0
  store i64 -3766243637369397544, i64* %arrayidx, align 8
  %1 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state1 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i64], [8 x i64]* %state1, i32 0, i64 1
  store i64 7105036623409894663, i64* %arrayidx2, align 8
  %2 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i64], [8 x i64]* %state3, i32 0, i64 2
  store i64 -7973340178411365097, i64* %arrayidx4, align 8
  %3 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i64], [8 x i64]* %state5, i32 0, i64 3
  store i64 1526699215303891257, i64* %arrayidx6, align 8
  %4 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i64], [8 x i64]* %state7, i32 0, i64 4
  store i64 7436329637833083697, i64* %arrayidx8, align 8
  %5 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %5, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i64], [8 x i64]* %state9, i32 0, i64 5
  store i64 -8163818279084223215, i64* %arrayidx10, align 8
  %6 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %6, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i64], [8 x i64]* %state11, i32 0, i64 6
  store i64 -2662702644619276377, i64* %arrayidx12, align 8
  %7 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %7, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i64], [8 x i64]* %state13, i32 0, i64 7
  store i64 5167115440072839076, i64* %arrayidx14, align 8
  %8 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %8, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x i64], [2 x i64]* %total, i32 0, i64 1
  store i64 0, i64* %arrayidx15, align 8
  %9 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total16 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %9, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %total16, i32 0, i64 0
  store i64 0, i64* %arrayidx17, align 8
  %10 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %10, i32 0, i32 2
  store i64 0, i64* %buflen, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sha512_read_ctx(%struct.sha512_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha512_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i8*, align 8
  store %struct.sha512_ctx* %ctx, %struct.sha512_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load i8*, i8** %resbuf.addr, align 8
  store i8* %0, i8** %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %r, align 8
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %mul
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %shl = shl i64 %6, 56
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state2 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %8, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [8 x i64], [8 x i64]* %state2, i32 0, i64 %idxprom1
  %9 = load i64, i64* %arrayidx3, align 8
  %and = and i64 %9, 65280
  %shl4 = shl i64 %and, 40
  %or = or i64 %shl, %shl4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %11, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [8 x i64], [8 x i64]* %state6, i32 0, i64 %idxprom5
  %12 = load i64, i64* %arrayidx7, align 8
  %and8 = and i64 %12, 16711680
  %shl9 = shl i64 %and8, 24
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %14, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i64], [8 x i64]* %state11, i32 0, i64 %idxprom10
  %15 = load i64, i64* %arrayidx12, align 8
  %and13 = and i64 %15, 4278190080
  %shl14 = shl i64 %and13, 8
  %or15 = or i64 %shl9, %shl14
  %or16 = or i64 %or, %or15
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [8 x i64], [8 x i64]* %state18, i32 0, i64 %idxprom17
  %18 = load i64, i64* %arrayidx19, align 8
  %shr = lshr i64 %18, 8
  %and20 = and i64 %shr, 4278190080
  %19 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state22 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %20, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [8 x i64], [8 x i64]* %state22, i32 0, i64 %idxprom21
  %21 = load i64, i64* %arrayidx23, align 8
  %shr24 = lshr i64 %21, 24
  %and25 = and i64 %shr24, 16711680
  %or26 = or i64 %and20, %and25
  %22 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state28 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %23, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [8 x i64], [8 x i64]* %state28, i32 0, i64 %idxprom27
  %24 = load i64, i64* %arrayidx29, align 8
  %shr30 = lshr i64 %24, 40
  %and31 = and i64 %shr30, 65280
  %25 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %25 to i64
  %26 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state33 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %26, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [8 x i64], [8 x i64]* %state33, i32 0, i64 %idxprom32
  %27 = load i64, i64* %arrayidx34, align 8
  %shr35 = lshr i64 %27, 56
  %or36 = or i64 %and31, %shr35
  %or37 = or i64 %or26, %or36
  %or38 = or i64 %or16, %or37
  call void @set_uint64(i8* %add.ptr, i64 %or38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i8*, i8** %resbuf.addr, align 8
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define internal void @set_uint64(i8* %cp, i64 %v) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %v.addr = alloca i64, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = bitcast i64* %v.addr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sha384_read_ctx(%struct.sha512_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha512_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i8*, align 8
  store %struct.sha512_ctx* %ctx, %struct.sha512_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load i8*, i8** %resbuf.addr, align 8
  store i8* %0, i8** %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %r, align 8
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %mul
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %shl = shl i64 %6, 56
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state2 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %8, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [8 x i64], [8 x i64]* %state2, i32 0, i64 %idxprom1
  %9 = load i64, i64* %arrayidx3, align 8
  %and = and i64 %9, 65280
  %shl4 = shl i64 %and, 40
  %or = or i64 %shl, %shl4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %11, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [8 x i64], [8 x i64]* %state6, i32 0, i64 %idxprom5
  %12 = load i64, i64* %arrayidx7, align 8
  %and8 = and i64 %12, 16711680
  %shl9 = shl i64 %and8, 24
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %14, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i64], [8 x i64]* %state11, i32 0, i64 %idxprom10
  %15 = load i64, i64* %arrayidx12, align 8
  %and13 = and i64 %15, 4278190080
  %shl14 = shl i64 %and13, 8
  %or15 = or i64 %shl9, %shl14
  %or16 = or i64 %or, %or15
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [8 x i64], [8 x i64]* %state18, i32 0, i64 %idxprom17
  %18 = load i64, i64* %arrayidx19, align 8
  %shr = lshr i64 %18, 8
  %and20 = and i64 %shr, 4278190080
  %19 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state22 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %20, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [8 x i64], [8 x i64]* %state22, i32 0, i64 %idxprom21
  %21 = load i64, i64* %arrayidx23, align 8
  %shr24 = lshr i64 %21, 24
  %and25 = and i64 %shr24, 16711680
  %or26 = or i64 %and20, %and25
  %22 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state28 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %23, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [8 x i64], [8 x i64]* %state28, i32 0, i64 %idxprom27
  %24 = load i64, i64* %arrayidx29, align 8
  %shr30 = lshr i64 %24, 40
  %and31 = and i64 %shr30, 65280
  %25 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %25 to i64
  %26 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state33 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %26, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [8 x i64], [8 x i64]* %state33, i32 0, i64 %idxprom32
  %27 = load i64, i64* %arrayidx34, align 8
  %shr35 = lshr i64 %27, 56
  %or36 = or i64 %and31, %shr35
  %or37 = or i64 %or26, %or36
  %or38 = or i64 %or16, %or37
  call void @set_uint64(i8* %add.ptr, i64 %or38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i8*, i8** %resbuf.addr, align 8
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define i8* @sha512_finish_ctx(%struct.sha512_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha512_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  store %struct.sha512_ctx* %ctx, %struct.sha512_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  call void @sha512_conclude_ctx(%struct.sha512_ctx* %0)
  %1 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %2 = load i8*, i8** %resbuf.addr, align 8
  %call = call i8* @sha512_read_ctx(%struct.sha512_ctx* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @sha512_conclude_ctx(%struct.sha512_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.sha512_ctx*, align 8
  %bytes = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.sha512_ctx* %ctx, %struct.sha512_ctx** %ctx.addr, align 8
  %0 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i32 0, i32 2
  %1 = load i64, i64* %buflen, align 8
  store i64 %1, i64* %bytes, align 8
  %2 = load i64, i64* %bytes, align 8
  %cmp = icmp ult i64 %2, 112
  %cond = select i1 %cmp, i32 16, i32 32
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %size, align 8
  %3 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %total, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %bytes, align 8
  %add = add i64 %4, %5
  %6 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %total1, i32 0, i64 0
  store i64 %add, i64* %arrayidx2, align 8
  %7 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %total3, i32 0, i64 0
  %8 = load i64, i64* %arrayidx4, align 8
  %9 = load i64, i64* %bytes, align 8
  %cmp5 = icmp ult i64 %8, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total7 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [2 x i64], [2 x i64]* %total7, i32 0, i64 1
  %11 = load i64, i64* %arrayidx8, align 8
  %add9 = add i64 %11, 1
  %12 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total10 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %12, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x i64], [2 x i64]* %total10, i32 0, i64 1
  store i64 %add9, i64* %arrayidx11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i64, i64* %size, align 8
  %sub = sub i64 %13, 2
  %14 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %14, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [32 x i64], [32 x i64]* %buffer, i32 0, i64 %sub
  %15 = bitcast i64* %arrayidx12 to i8*
  %16 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x i64], [2 x i64]* %total13, i32 0, i64 1
  %17 = load i64, i64* %arrayidx14, align 8
  %shl = shl i64 %17, 3
  %18 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total15 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %18, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x i64], [2 x i64]* %total15, i32 0, i64 0
  %19 = load i64, i64* %arrayidx16, align 8
  %shr = lshr i64 %19, 61
  %or = or i64 %shl, %shr
  %shl17 = shl i64 %or, 56
  %20 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %20, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x i64], [2 x i64]* %total18, i32 0, i64 1
  %21 = load i64, i64* %arrayidx19, align 8
  %shl20 = shl i64 %21, 3
  %22 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total21 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %22, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [2 x i64], [2 x i64]* %total21, i32 0, i64 0
  %23 = load i64, i64* %arrayidx22, align 8
  %shr23 = lshr i64 %23, 61
  %or24 = or i64 %shl20, %shr23
  %and = and i64 %or24, 65280
  %shl25 = shl i64 %and, 40
  %or26 = or i64 %shl17, %shl25
  %24 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total27 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %24, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x i64], [2 x i64]* %total27, i32 0, i64 1
  %25 = load i64, i64* %arrayidx28, align 8
  %shl29 = shl i64 %25, 3
  %26 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total30 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %26, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [2 x i64], [2 x i64]* %total30, i32 0, i64 0
  %27 = load i64, i64* %arrayidx31, align 8
  %shr32 = lshr i64 %27, 61
  %or33 = or i64 %shl29, %shr32
  %and34 = and i64 %or33, 16711680
  %shl35 = shl i64 %and34, 24
  %28 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total36 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [2 x i64], [2 x i64]* %total36, i32 0, i64 1
  %29 = load i64, i64* %arrayidx37, align 8
  %shl38 = shl i64 %29, 3
  %30 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total39 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %30, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [2 x i64], [2 x i64]* %total39, i32 0, i64 0
  %31 = load i64, i64* %arrayidx40, align 8
  %shr41 = lshr i64 %31, 61
  %or42 = or i64 %shl38, %shr41
  %and43 = and i64 %or42, 4278190080
  %shl44 = shl i64 %and43, 8
  %or45 = or i64 %shl35, %shl44
  %or46 = or i64 %or26, %or45
  %32 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total47 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %32, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [2 x i64], [2 x i64]* %total47, i32 0, i64 1
  %33 = load i64, i64* %arrayidx48, align 8
  %shl49 = shl i64 %33, 3
  %34 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total50 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %34, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [2 x i64], [2 x i64]* %total50, i32 0, i64 0
  %35 = load i64, i64* %arrayidx51, align 8
  %shr52 = lshr i64 %35, 61
  %or53 = or i64 %shl49, %shr52
  %shr54 = lshr i64 %or53, 8
  %and55 = and i64 %shr54, 4278190080
  %36 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total56 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %36, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [2 x i64], [2 x i64]* %total56, i32 0, i64 1
  %37 = load i64, i64* %arrayidx57, align 8
  %shl58 = shl i64 %37, 3
  %38 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total59 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %38, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [2 x i64], [2 x i64]* %total59, i32 0, i64 0
  %39 = load i64, i64* %arrayidx60, align 8
  %shr61 = lshr i64 %39, 61
  %or62 = or i64 %shl58, %shr61
  %shr63 = lshr i64 %or62, 24
  %and64 = and i64 %shr63, 16711680
  %or65 = or i64 %and55, %and64
  %40 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total66 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %40, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [2 x i64], [2 x i64]* %total66, i32 0, i64 1
  %41 = load i64, i64* %arrayidx67, align 8
  %shl68 = shl i64 %41, 3
  %42 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total69 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %42, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [2 x i64], [2 x i64]* %total69, i32 0, i64 0
  %43 = load i64, i64* %arrayidx70, align 8
  %shr71 = lshr i64 %43, 61
  %or72 = or i64 %shl68, %shr71
  %shr73 = lshr i64 %or72, 40
  %and74 = and i64 %shr73, 65280
  %44 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total75 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %44, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [2 x i64], [2 x i64]* %total75, i32 0, i64 1
  %45 = load i64, i64* %arrayidx76, align 8
  %shl77 = shl i64 %45, 3
  %46 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total78 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %46, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [2 x i64], [2 x i64]* %total78, i32 0, i64 0
  %47 = load i64, i64* %arrayidx79, align 8
  %shr80 = lshr i64 %47, 61
  %or81 = or i64 %shl77, %shr80
  %shr82 = lshr i64 %or81, 56
  %or83 = or i64 %and74, %shr82
  %or84 = or i64 %or65, %or83
  %or85 = or i64 %or46, %or84
  call void @set_uint64(i8* %15, i64 %or85)
  %48 = load i64, i64* %size, align 8
  %sub86 = sub i64 %48, 1
  %49 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer87 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %49, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [32 x i64], [32 x i64]* %buffer87, i32 0, i64 %sub86
  %50 = bitcast i64* %arrayidx88 to i8*
  %51 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total89 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %51, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [2 x i64], [2 x i64]* %total89, i32 0, i64 0
  %52 = load i64, i64* %arrayidx90, align 8
  %shl91 = shl i64 %52, 3
  %shl92 = shl i64 %shl91, 56
  %53 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total93 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %53, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [2 x i64], [2 x i64]* %total93, i32 0, i64 0
  %54 = load i64, i64* %arrayidx94, align 8
  %shl95 = shl i64 %54, 3
  %and96 = and i64 %shl95, 65280
  %shl97 = shl i64 %and96, 40
  %or98 = or i64 %shl92, %shl97
  %55 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total99 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %55, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [2 x i64], [2 x i64]* %total99, i32 0, i64 0
  %56 = load i64, i64* %arrayidx100, align 8
  %shl101 = shl i64 %56, 3
  %and102 = and i64 %shl101, 16711680
  %shl103 = shl i64 %and102, 24
  %57 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total104 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %57, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [2 x i64], [2 x i64]* %total104, i32 0, i64 0
  %58 = load i64, i64* %arrayidx105, align 8
  %shl106 = shl i64 %58, 3
  %and107 = and i64 %shl106, 4278190080
  %shl108 = shl i64 %and107, 8
  %or109 = or i64 %shl103, %shl108
  %or110 = or i64 %or98, %or109
  %59 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total111 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %59, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [2 x i64], [2 x i64]* %total111, i32 0, i64 0
  %60 = load i64, i64* %arrayidx112, align 8
  %shl113 = shl i64 %60, 3
  %shr114 = lshr i64 %shl113, 8
  %and115 = and i64 %shr114, 4278190080
  %61 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total116 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %61, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [2 x i64], [2 x i64]* %total116, i32 0, i64 0
  %62 = load i64, i64* %arrayidx117, align 8
  %shl118 = shl i64 %62, 3
  %shr119 = lshr i64 %shl118, 24
  %and120 = and i64 %shr119, 16711680
  %or121 = or i64 %and115, %and120
  %63 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total122 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %63, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [2 x i64], [2 x i64]* %total122, i32 0, i64 0
  %64 = load i64, i64* %arrayidx123, align 8
  %shl124 = shl i64 %64, 3
  %shr125 = lshr i64 %shl124, 40
  %and126 = and i64 %shr125, 65280
  %65 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total127 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %65, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [2 x i64], [2 x i64]* %total127, i32 0, i64 0
  %66 = load i64, i64* %arrayidx128, align 8
  %shl129 = shl i64 %66, 3
  %shr130 = lshr i64 %shl129, 56
  %or131 = or i64 %and126, %shr130
  %or132 = or i64 %or121, %or131
  %or133 = or i64 %or110, %or132
  call void @set_uint64(i8* %50, i64 %or133)
  %67 = load i64, i64* %bytes, align 8
  %68 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer134 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %68, i32 0, i32 3
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %buffer134, i32 0, i32 0
  %69 = bitcast i64* %arraydecay to i8*
  %arrayidx135 = getelementptr inbounds i8, i8* %69, i64 %67
  %70 = load i64, i64* %size, align 8
  %sub136 = sub i64 %70, 2
  %mul = mul i64 %sub136, 8
  %71 = load i64, i64* %bytes, align 8
  %sub137 = sub i64 %mul, %71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx135, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fillbuf, i32 0, i32 0), i64 %sub137, i32 1, i1 false)
  %72 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer138 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %72, i32 0, i32 3
  %arraydecay139 = getelementptr inbounds [32 x i64], [32 x i64]* %buffer138, i32 0, i32 0
  %73 = bitcast i64* %arraydecay139 to i8*
  %74 = load i64, i64* %size, align 8
  %mul140 = mul i64 %74, 8
  %75 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  call void @sha512_process_block(i8* %73, i64 %mul140, %struct.sha512_ctx* %75)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sha384_finish_ctx(%struct.sha512_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha512_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  store %struct.sha512_ctx* %ctx, %struct.sha512_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  call void @sha512_conclude_ctx(%struct.sha512_ctx* %0)
  %1 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %2 = load i8*, i8** %resbuf.addr, align 8
  %call = call i8* @sha384_read_ctx(%struct.sha512_ctx* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i32 @sha512_stream(%struct._IO_FILE* %stream, i8* %resblock) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha512_ctx, align 8
  %sum = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  %call = call noalias i8* @malloc(i64 32840) #3
  store i8* %call, i8** %buffer, align 8
  %0 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @sha512_init_ctx(%struct.sha512_ctx* %ctx)
  br label %while.body

while.body:                                       ; preds = %if.end, %while.end
  store i64 0, i64* %sum, align 8
  br label %while.body.2

while.body.2:                                     ; preds = %while.body, %if.end.16
  %1 = load i8*, i8** %buffer, align 8
  %2 = load i64, i64* %sum, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = load i64, i64* %sum, align 8
  %sub = sub i64 32768, %3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i64 @fread(i8* %add.ptr, i64 1, i64 %sub, %struct._IO_FILE* %4)
  store i64 %call3, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %6 = load i64, i64* %sum, align 8
  %add = add i64 %6, %5
  store i64 %add, i64* %sum, align 8
  %7 = load i64, i64* %sum, align 8
  %cmp = icmp eq i64 %7, 32768
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body.2
  br label %while.end

if.end.5:                                         ; preds = %while.body.2
  %8 = load i64, i64* %n, align 8
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call8 = call i32 @ferror(%struct._IO_FILE* %9) #3
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %10 = load i8*, i8** %buffer, align 8
  call void @free(i8* %10) #3
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %process_partial_block

if.end.12:                                        ; preds = %if.end.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call13 = call i32 @feof(%struct._IO_FILE* %11) #3
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %process_partial_block

if.end.16:                                        ; preds = %if.end.12
  br label %while.body.2

while.end:                                        ; preds = %if.then.4
  %12 = load i8*, i8** %buffer, align 8
  call void @sha512_process_block(i8* %12, i64 32768, %struct.sha512_ctx* %ctx)
  br label %while.body

process_partial_block:                            ; preds = %if.then.15, %if.end.11
  %13 = load i64, i64* %sum, align 8
  %cmp17 = icmp ugt i64 %13, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %process_partial_block
  %14 = load i8*, i8** %buffer, align 8
  %15 = load i64, i64* %sum, align 8
  call void @sha512_process_bytes(i8* %14, i64 %15, %struct.sha512_ctx* %ctx)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %process_partial_block
  %16 = load i8*, i8** %resblock.addr, align 8
  %call20 = call i8* @sha512_finish_ctx(%struct.sha512_ctx* %ctx, i8* %16)
  %17 = load i8*, i8** %buffer, align 8
  call void @free(i8* %17) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.10, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @sha512_process_block(i8* %buffer, i64 %len, %struct.sha512_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.sha512_ctx*, align 8
  %words = alloca i64*, align 8
  %endp = alloca i64*, align 8
  %x = alloca [16 x i64], align 16
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %c = alloca i64, align 8
  %d = alloca i64, align 8
  %e = alloca i64, align 8
  %f = alloca i64, align 8
  %g = alloca i64, align 8
  %h = alloca i64, align 8
  %lolen = alloca i64, align 8
  %t = alloca i32, align 4
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %t089 = alloca i64, align 8
  %t1106 = alloca i64, align 8
  %t0130 = alloca i64, align 8
  %t1147 = alloca i64, align 8
  %t0171 = alloca i64, align 8
  %t1188 = alloca i64, align 8
  %t0212 = alloca i64, align 8
  %t1229 = alloca i64, align 8
  %t0253 = alloca i64, align 8
  %t1270 = alloca i64, align 8
  %t0294 = alloca i64, align 8
  %t1311 = alloca i64, align 8
  %t0335 = alloca i64, align 8
  %t1352 = alloca i64, align 8
  %t0376 = alloca i64, align 8
  %t1393 = alloca i64, align 8
  %t0417 = alloca i64, align 8
  %t1434 = alloca i64, align 8
  %t0458 = alloca i64, align 8
  %t1475 = alloca i64, align 8
  %t0499 = alloca i64, align 8
  %t1516 = alloca i64, align 8
  %t0540 = alloca i64, align 8
  %t1557 = alloca i64, align 8
  %t0581 = alloca i64, align 8
  %t1598 = alloca i64, align 8
  %t0622 = alloca i64, align 8
  %t1639 = alloca i64, align 8
  %t0663 = alloca i64, align 8
  %t1680 = alloca i64, align 8
  %t0704 = alloca i64, align 8
  %t1721 = alloca i64, align 8
  %t0778 = alloca i64, align 8
  %t1795 = alloca i64, align 8
  %t0852 = alloca i64, align 8
  %t1869 = alloca i64, align 8
  %t0926 = alloca i64, align 8
  %t1943 = alloca i64, align 8
  %t01000 = alloca i64, align 8
  %t11017 = alloca i64, align 8
  %t01074 = alloca i64, align 8
  %t11091 = alloca i64, align 8
  %t01148 = alloca i64, align 8
  %t11165 = alloca i64, align 8
  %t01222 = alloca i64, align 8
  %t11239 = alloca i64, align 8
  %t01296 = alloca i64, align 8
  %t11313 = alloca i64, align 8
  %t01370 = alloca i64, align 8
  %t11387 = alloca i64, align 8
  %t01444 = alloca i64, align 8
  %t11461 = alloca i64, align 8
  %t01518 = alloca i64, align 8
  %t11535 = alloca i64, align 8
  %t01592 = alloca i64, align 8
  %t11609 = alloca i64, align 8
  %t01666 = alloca i64, align 8
  %t11683 = alloca i64, align 8
  %t01740 = alloca i64, align 8
  %t11757 = alloca i64, align 8
  %t01814 = alloca i64, align 8
  %t11831 = alloca i64, align 8
  %t01888 = alloca i64, align 8
  %t11905 = alloca i64, align 8
  %t01962 = alloca i64, align 8
  %t11979 = alloca i64, align 8
  %t02036 = alloca i64, align 8
  %t12053 = alloca i64, align 8
  %t02110 = alloca i64, align 8
  %t12127 = alloca i64, align 8
  %t02184 = alloca i64, align 8
  %t12201 = alloca i64, align 8
  %t02258 = alloca i64, align 8
  %t12275 = alloca i64, align 8
  %t02332 = alloca i64, align 8
  %t12349 = alloca i64, align 8
  %t02406 = alloca i64, align 8
  %t12423 = alloca i64, align 8
  %t02480 = alloca i64, align 8
  %t12497 = alloca i64, align 8
  %t02554 = alloca i64, align 8
  %t12571 = alloca i64, align 8
  %t02628 = alloca i64, align 8
  %t12645 = alloca i64, align 8
  %t02702 = alloca i64, align 8
  %t12719 = alloca i64, align 8
  %t02776 = alloca i64, align 8
  %t12793 = alloca i64, align 8
  %t02850 = alloca i64, align 8
  %t12867 = alloca i64, align 8
  %t02924 = alloca i64, align 8
  %t12941 = alloca i64, align 8
  %t02998 = alloca i64, align 8
  %t13015 = alloca i64, align 8
  %t03072 = alloca i64, align 8
  %t13089 = alloca i64, align 8
  %t03146 = alloca i64, align 8
  %t13163 = alloca i64, align 8
  %t03220 = alloca i64, align 8
  %t13237 = alloca i64, align 8
  %t03294 = alloca i64, align 8
  %t13311 = alloca i64, align 8
  %t03368 = alloca i64, align 8
  %t13385 = alloca i64, align 8
  %t03442 = alloca i64, align 8
  %t13459 = alloca i64, align 8
  %t03516 = alloca i64, align 8
  %t13533 = alloca i64, align 8
  %t03590 = alloca i64, align 8
  %t13607 = alloca i64, align 8
  %t03664 = alloca i64, align 8
  %t13681 = alloca i64, align 8
  %t03738 = alloca i64, align 8
  %t13755 = alloca i64, align 8
  %t03812 = alloca i64, align 8
  %t13829 = alloca i64, align 8
  %t03886 = alloca i64, align 8
  %t13903 = alloca i64, align 8
  %t03960 = alloca i64, align 8
  %t13977 = alloca i64, align 8
  %t04034 = alloca i64, align 8
  %t14051 = alloca i64, align 8
  %t04108 = alloca i64, align 8
  %t14125 = alloca i64, align 8
  %t04182 = alloca i64, align 8
  %t14199 = alloca i64, align 8
  %t04256 = alloca i64, align 8
  %t14273 = alloca i64, align 8
  %t04330 = alloca i64, align 8
  %t14347 = alloca i64, align 8
  %t04404 = alloca i64, align 8
  %t14421 = alloca i64, align 8
  %t04478 = alloca i64, align 8
  %t14495 = alloca i64, align 8
  %t04552 = alloca i64, align 8
  %t14569 = alloca i64, align 8
  %t04626 = alloca i64, align 8
  %t14643 = alloca i64, align 8
  %t04700 = alloca i64, align 8
  %t14717 = alloca i64, align 8
  %t04774 = alloca i64, align 8
  %t14791 = alloca i64, align 8
  %t04848 = alloca i64, align 8
  %t14865 = alloca i64, align 8
  %t04922 = alloca i64, align 8
  %t14939 = alloca i64, align 8
  %t04996 = alloca i64, align 8
  %t15013 = alloca i64, align 8
  %t05070 = alloca i64, align 8
  %t15087 = alloca i64, align 8
  %t05144 = alloca i64, align 8
  %t15161 = alloca i64, align 8
  %t05218 = alloca i64, align 8
  %t15235 = alloca i64, align 8
  %t05292 = alloca i64, align 8
  %t15309 = alloca i64, align 8
  %t05366 = alloca i64, align 8
  %t15383 = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.sha512_ctx* %ctx, %struct.sha512_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = bitcast i8* %0 to i64*
  store i64* %1, i64** %words, align 8
  %2 = load i64*, i64** %words, align 8
  %3 = load i64, i64* %len.addr, align 8
  %div = udiv i64 %3, 8
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %div
  store i64* %add.ptr, i64** %endp, align 8
  %4 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i64 0
  %5 = load i64, i64* %arrayidx, align 8
  store i64 %5, i64* %a, align 8
  %6 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state1 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %6, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i64], [8 x i64]* %state1, i32 0, i64 1
  %7 = load i64, i64* %arrayidx2, align 8
  store i64 %7, i64* %b, align 8
  %8 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %8, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i64], [8 x i64]* %state3, i32 0, i64 2
  %9 = load i64, i64* %arrayidx4, align 8
  store i64 %9, i64* %c, align 8
  %10 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %10, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i64], [8 x i64]* %state5, i32 0, i64 3
  %11 = load i64, i64* %arrayidx6, align 8
  store i64 %11, i64* %d, align 8
  %12 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %12, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i64], [8 x i64]* %state7, i32 0, i64 4
  %13 = load i64, i64* %arrayidx8, align 8
  store i64 %13, i64* %e, align 8
  %14 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %14, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i64], [8 x i64]* %state9, i32 0, i64 5
  %15 = load i64, i64* %arrayidx10, align 8
  store i64 %15, i64* %f, align 8
  %16 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %16, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i64], [8 x i64]* %state11, i32 0, i64 6
  %17 = load i64, i64* %arrayidx12, align 8
  store i64 %17, i64* %g, align 8
  %18 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %18, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i64], [8 x i64]* %state13, i32 0, i64 7
  %19 = load i64, i64* %arrayidx14, align 8
  store i64 %19, i64* %h, align 8
  %20 = load i64, i64* %len.addr, align 8
  store i64 %20, i64* %lolen, align 8
  %21 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %21, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x i64], [2 x i64]* %total, i32 0, i64 0
  %22 = load i64, i64* %arrayidx15, align 8
  %23 = load i64, i64* %lolen, align 8
  %add = add i64 %22, %23
  %24 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total16 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %24, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %total16, i32 0, i64 0
  store i64 %add, i64* %arrayidx17, align 8
  %25 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %25, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x i64], [2 x i64]* %total18, i32 0, i64 1
  %26 = load i64, i64* %arrayidx19, align 8
  %27 = load i64, i64* %len.addr, align 8
  %shr = lshr i64 %27, 31
  %shr20 = lshr i64 %shr, 31
  %shr21 = lshr i64 %shr20, 2
  %28 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total22 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %28, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [2 x i64], [2 x i64]* %total22, i32 0, i64 0
  %29 = load i64, i64* %arrayidx23, align 8
  %30 = load i64, i64* %lolen, align 8
  %cmp = icmp ult i64 %29, %30
  %conv = zext i1 %cmp to i32
  %conv24 = sext i32 %conv to i64
  %add25 = add i64 %shr21, %conv24
  %add26 = add i64 %26, %add25
  %31 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %total27 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %31, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x i64], [2 x i64]* %total27, i32 0, i64 1
  store i64 %add26, i64* %arrayidx28, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.5438, %entry
  %32 = load i64*, i64** %words, align 8
  %33 = load i64*, i64** %endp, align 8
  %cmp29 = icmp ult i64* %32, %33
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %34 = load i32, i32* %t, align 4
  %cmp31 = icmp slt i32 %34, 16
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i64*, i64** %words, align 8
  %36 = load i64, i64* %35, align 8
  %shl = shl i64 %36, 56
  %37 = load i64*, i64** %words, align 8
  %38 = load i64, i64* %37, align 8
  %and = and i64 %38, 65280
  %shl33 = shl i64 %and, 40
  %or = or i64 %shl, %shl33
  %39 = load i64*, i64** %words, align 8
  %40 = load i64, i64* %39, align 8
  %and34 = and i64 %40, 16711680
  %shl35 = shl i64 %and34, 24
  %41 = load i64*, i64** %words, align 8
  %42 = load i64, i64* %41, align 8
  %and36 = and i64 %42, 4278190080
  %shl37 = shl i64 %and36, 8
  %or38 = or i64 %shl35, %shl37
  %or39 = or i64 %or, %or38
  %43 = load i64*, i64** %words, align 8
  %44 = load i64, i64* %43, align 8
  %shr40 = lshr i64 %44, 8
  %and41 = and i64 %shr40, 4278190080
  %45 = load i64*, i64** %words, align 8
  %46 = load i64, i64* %45, align 8
  %shr42 = lshr i64 %46, 24
  %and43 = and i64 %shr42, 16711680
  %or44 = or i64 %and41, %and43
  %47 = load i64*, i64** %words, align 8
  %48 = load i64, i64* %47, align 8
  %shr45 = lshr i64 %48, 40
  %and46 = and i64 %shr45, 65280
  %49 = load i64*, i64** %words, align 8
  %50 = load i64, i64* %49, align 8
  %shr47 = lshr i64 %50, 56
  %or48 = or i64 %and46, %shr47
  %or49 = or i64 %or44, %or48
  %or50 = or i64 %or39, %or49
  %51 = load i32, i32* %t, align 4
  %idxprom = sext i32 %51 to i64
  %arrayidx51 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 %idxprom
  store i64 %or50, i64* %arrayidx51, align 8
  %52 = load i64*, i64** %words, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %incdec.ptr, i64** %words, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %t, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %54 = load i64, i64* %a, align 8
  %shl52 = shl i64 %54, 36
  %55 = load i64, i64* %a, align 8
  %shr53 = lshr i64 %55, 28
  %or54 = or i64 %shl52, %shr53
  %56 = load i64, i64* %a, align 8
  %shl55 = shl i64 %56, 30
  %57 = load i64, i64* %a, align 8
  %shr56 = lshr i64 %57, 34
  %or57 = or i64 %shl55, %shr56
  %58 = load i64, i64* %a, align 8
  %shl58 = shl i64 %58, 25
  %59 = load i64, i64* %a, align 8
  %shr59 = lshr i64 %59, 39
  %or60 = or i64 %shl58, %shr59
  %xor = xor i64 %or57, %or60
  %xor61 = xor i64 %or54, %xor
  %60 = load i64, i64* %a, align 8
  %61 = load i64, i64* %b, align 8
  %and62 = and i64 %60, %61
  %62 = load i64, i64* %c, align 8
  %63 = load i64, i64* %a, align 8
  %64 = load i64, i64* %b, align 8
  %or63 = or i64 %63, %64
  %and64 = and i64 %62, %or63
  %or65 = or i64 %and62, %and64
  %add66 = add i64 %xor61, %or65
  store i64 %add66, i64* %t0, align 8
  %65 = load i64, i64* %h, align 8
  %66 = load i64, i64* %e, align 8
  %shl67 = shl i64 %66, 50
  %67 = load i64, i64* %e, align 8
  %shr68 = lshr i64 %67, 14
  %or69 = or i64 %shl67, %shr68
  %68 = load i64, i64* %e, align 8
  %shl70 = shl i64 %68, 46
  %69 = load i64, i64* %e, align 8
  %shr71 = lshr i64 %69, 18
  %or72 = or i64 %shl70, %shr71
  %70 = load i64, i64* %e, align 8
  %shl73 = shl i64 %70, 23
  %71 = load i64, i64* %e, align 8
  %shr74 = lshr i64 %71, 41
  %or75 = or i64 %shl73, %shr74
  %xor76 = xor i64 %or72, %or75
  %xor77 = xor i64 %or69, %xor76
  %72 = load i64, i64* %g, align 8
  %73 = load i64, i64* %e, align 8
  %74 = load i64, i64* %f, align 8
  %75 = load i64, i64* %g, align 8
  %xor78 = xor i64 %74, %75
  %and79 = and i64 %73, %xor78
  %xor80 = xor i64 %72, %and79
  %76 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 0), align 8
  %arrayidx81 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %77 = load i64, i64* %arrayidx81, align 8
  %add82 = add i64 %76, %77
  %add83 = add i64 %xor80, %add82
  %add84 = add i64 %xor77, %add83
  %add85 = add i64 %65, %add84
  store i64 %add85, i64* %t1, align 8
  %78 = load i64, i64* %d, align 8
  %79 = load i64, i64* %t1, align 8
  %add86 = add i64 %78, %79
  store i64 %add86, i64* %d, align 8
  %80 = load i64, i64* %t0, align 8
  %81 = load i64, i64* %t1, align 8
  %add87 = add i64 %80, %81
  store i64 %add87, i64* %h, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.88

do.body.88:                                       ; preds = %do.end
  %82 = load i64, i64* %h, align 8
  %shl90 = shl i64 %82, 36
  %83 = load i64, i64* %h, align 8
  %shr91 = lshr i64 %83, 28
  %or92 = or i64 %shl90, %shr91
  %84 = load i64, i64* %h, align 8
  %shl93 = shl i64 %84, 30
  %85 = load i64, i64* %h, align 8
  %shr94 = lshr i64 %85, 34
  %or95 = or i64 %shl93, %shr94
  %86 = load i64, i64* %h, align 8
  %shl96 = shl i64 %86, 25
  %87 = load i64, i64* %h, align 8
  %shr97 = lshr i64 %87, 39
  %or98 = or i64 %shl96, %shr97
  %xor99 = xor i64 %or95, %or98
  %xor100 = xor i64 %or92, %xor99
  %88 = load i64, i64* %h, align 8
  %89 = load i64, i64* %a, align 8
  %and101 = and i64 %88, %89
  %90 = load i64, i64* %b, align 8
  %91 = load i64, i64* %h, align 8
  %92 = load i64, i64* %a, align 8
  %or102 = or i64 %91, %92
  %and103 = and i64 %90, %or102
  %or104 = or i64 %and101, %and103
  %add105 = add i64 %xor100, %or104
  store i64 %add105, i64* %t089, align 8
  %93 = load i64, i64* %g, align 8
  %94 = load i64, i64* %d, align 8
  %shl107 = shl i64 %94, 50
  %95 = load i64, i64* %d, align 8
  %shr108 = lshr i64 %95, 14
  %or109 = or i64 %shl107, %shr108
  %96 = load i64, i64* %d, align 8
  %shl110 = shl i64 %96, 46
  %97 = load i64, i64* %d, align 8
  %shr111 = lshr i64 %97, 18
  %or112 = or i64 %shl110, %shr111
  %98 = load i64, i64* %d, align 8
  %shl113 = shl i64 %98, 23
  %99 = load i64, i64* %d, align 8
  %shr114 = lshr i64 %99, 41
  %or115 = or i64 %shl113, %shr114
  %xor116 = xor i64 %or112, %or115
  %xor117 = xor i64 %or109, %xor116
  %100 = load i64, i64* %f, align 8
  %101 = load i64, i64* %d, align 8
  %102 = load i64, i64* %e, align 8
  %103 = load i64, i64* %f, align 8
  %xor118 = xor i64 %102, %103
  %and119 = and i64 %101, %xor118
  %xor120 = xor i64 %100, %and119
  %104 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 1), align 8
  %arrayidx121 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %105 = load i64, i64* %arrayidx121, align 8
  %add122 = add i64 %104, %105
  %add123 = add i64 %xor120, %add122
  %add124 = add i64 %xor117, %add123
  %add125 = add i64 %93, %add124
  store i64 %add125, i64* %t1106, align 8
  %106 = load i64, i64* %c, align 8
  %107 = load i64, i64* %t1106, align 8
  %add126 = add i64 %106, %107
  store i64 %add126, i64* %c, align 8
  %108 = load i64, i64* %t089, align 8
  %109 = load i64, i64* %t1106, align 8
  %add127 = add i64 %108, %109
  store i64 %add127, i64* %g, align 8
  br label %do.end.128

do.end.128:                                       ; preds = %do.body.88
  br label %do.body.129

do.body.129:                                      ; preds = %do.end.128
  %110 = load i64, i64* %g, align 8
  %shl131 = shl i64 %110, 36
  %111 = load i64, i64* %g, align 8
  %shr132 = lshr i64 %111, 28
  %or133 = or i64 %shl131, %shr132
  %112 = load i64, i64* %g, align 8
  %shl134 = shl i64 %112, 30
  %113 = load i64, i64* %g, align 8
  %shr135 = lshr i64 %113, 34
  %or136 = or i64 %shl134, %shr135
  %114 = load i64, i64* %g, align 8
  %shl137 = shl i64 %114, 25
  %115 = load i64, i64* %g, align 8
  %shr138 = lshr i64 %115, 39
  %or139 = or i64 %shl137, %shr138
  %xor140 = xor i64 %or136, %or139
  %xor141 = xor i64 %or133, %xor140
  %116 = load i64, i64* %g, align 8
  %117 = load i64, i64* %h, align 8
  %and142 = and i64 %116, %117
  %118 = load i64, i64* %a, align 8
  %119 = load i64, i64* %g, align 8
  %120 = load i64, i64* %h, align 8
  %or143 = or i64 %119, %120
  %and144 = and i64 %118, %or143
  %or145 = or i64 %and142, %and144
  %add146 = add i64 %xor141, %or145
  store i64 %add146, i64* %t0130, align 8
  %121 = load i64, i64* %f, align 8
  %122 = load i64, i64* %c, align 8
  %shl148 = shl i64 %122, 50
  %123 = load i64, i64* %c, align 8
  %shr149 = lshr i64 %123, 14
  %or150 = or i64 %shl148, %shr149
  %124 = load i64, i64* %c, align 8
  %shl151 = shl i64 %124, 46
  %125 = load i64, i64* %c, align 8
  %shr152 = lshr i64 %125, 18
  %or153 = or i64 %shl151, %shr152
  %126 = load i64, i64* %c, align 8
  %shl154 = shl i64 %126, 23
  %127 = load i64, i64* %c, align 8
  %shr155 = lshr i64 %127, 41
  %or156 = or i64 %shl154, %shr155
  %xor157 = xor i64 %or153, %or156
  %xor158 = xor i64 %or150, %xor157
  %128 = load i64, i64* %e, align 8
  %129 = load i64, i64* %c, align 8
  %130 = load i64, i64* %d, align 8
  %131 = load i64, i64* %e, align 8
  %xor159 = xor i64 %130, %131
  %and160 = and i64 %129, %xor159
  %xor161 = xor i64 %128, %and160
  %132 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 2), align 8
  %arrayidx162 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %133 = load i64, i64* %arrayidx162, align 8
  %add163 = add i64 %132, %133
  %add164 = add i64 %xor161, %add163
  %add165 = add i64 %xor158, %add164
  %add166 = add i64 %121, %add165
  store i64 %add166, i64* %t1147, align 8
  %134 = load i64, i64* %b, align 8
  %135 = load i64, i64* %t1147, align 8
  %add167 = add i64 %134, %135
  store i64 %add167, i64* %b, align 8
  %136 = load i64, i64* %t0130, align 8
  %137 = load i64, i64* %t1147, align 8
  %add168 = add i64 %136, %137
  store i64 %add168, i64* %f, align 8
  br label %do.end.169

do.end.169:                                       ; preds = %do.body.129
  br label %do.body.170

do.body.170:                                      ; preds = %do.end.169
  %138 = load i64, i64* %f, align 8
  %shl172 = shl i64 %138, 36
  %139 = load i64, i64* %f, align 8
  %shr173 = lshr i64 %139, 28
  %or174 = or i64 %shl172, %shr173
  %140 = load i64, i64* %f, align 8
  %shl175 = shl i64 %140, 30
  %141 = load i64, i64* %f, align 8
  %shr176 = lshr i64 %141, 34
  %or177 = or i64 %shl175, %shr176
  %142 = load i64, i64* %f, align 8
  %shl178 = shl i64 %142, 25
  %143 = load i64, i64* %f, align 8
  %shr179 = lshr i64 %143, 39
  %or180 = or i64 %shl178, %shr179
  %xor181 = xor i64 %or177, %or180
  %xor182 = xor i64 %or174, %xor181
  %144 = load i64, i64* %f, align 8
  %145 = load i64, i64* %g, align 8
  %and183 = and i64 %144, %145
  %146 = load i64, i64* %h, align 8
  %147 = load i64, i64* %f, align 8
  %148 = load i64, i64* %g, align 8
  %or184 = or i64 %147, %148
  %and185 = and i64 %146, %or184
  %or186 = or i64 %and183, %and185
  %add187 = add i64 %xor182, %or186
  store i64 %add187, i64* %t0171, align 8
  %149 = load i64, i64* %e, align 8
  %150 = load i64, i64* %b, align 8
  %shl189 = shl i64 %150, 50
  %151 = load i64, i64* %b, align 8
  %shr190 = lshr i64 %151, 14
  %or191 = or i64 %shl189, %shr190
  %152 = load i64, i64* %b, align 8
  %shl192 = shl i64 %152, 46
  %153 = load i64, i64* %b, align 8
  %shr193 = lshr i64 %153, 18
  %or194 = or i64 %shl192, %shr193
  %154 = load i64, i64* %b, align 8
  %shl195 = shl i64 %154, 23
  %155 = load i64, i64* %b, align 8
  %shr196 = lshr i64 %155, 41
  %or197 = or i64 %shl195, %shr196
  %xor198 = xor i64 %or194, %or197
  %xor199 = xor i64 %or191, %xor198
  %156 = load i64, i64* %d, align 8
  %157 = load i64, i64* %b, align 8
  %158 = load i64, i64* %c, align 8
  %159 = load i64, i64* %d, align 8
  %xor200 = xor i64 %158, %159
  %and201 = and i64 %157, %xor200
  %xor202 = xor i64 %156, %and201
  %160 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 3), align 8
  %arrayidx203 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %161 = load i64, i64* %arrayidx203, align 8
  %add204 = add i64 %160, %161
  %add205 = add i64 %xor202, %add204
  %add206 = add i64 %xor199, %add205
  %add207 = add i64 %149, %add206
  store i64 %add207, i64* %t1188, align 8
  %162 = load i64, i64* %a, align 8
  %163 = load i64, i64* %t1188, align 8
  %add208 = add i64 %162, %163
  store i64 %add208, i64* %a, align 8
  %164 = load i64, i64* %t0171, align 8
  %165 = load i64, i64* %t1188, align 8
  %add209 = add i64 %164, %165
  store i64 %add209, i64* %e, align 8
  br label %do.end.210

do.end.210:                                       ; preds = %do.body.170
  br label %do.body.211

do.body.211:                                      ; preds = %do.end.210
  %166 = load i64, i64* %e, align 8
  %shl213 = shl i64 %166, 36
  %167 = load i64, i64* %e, align 8
  %shr214 = lshr i64 %167, 28
  %or215 = or i64 %shl213, %shr214
  %168 = load i64, i64* %e, align 8
  %shl216 = shl i64 %168, 30
  %169 = load i64, i64* %e, align 8
  %shr217 = lshr i64 %169, 34
  %or218 = or i64 %shl216, %shr217
  %170 = load i64, i64* %e, align 8
  %shl219 = shl i64 %170, 25
  %171 = load i64, i64* %e, align 8
  %shr220 = lshr i64 %171, 39
  %or221 = or i64 %shl219, %shr220
  %xor222 = xor i64 %or218, %or221
  %xor223 = xor i64 %or215, %xor222
  %172 = load i64, i64* %e, align 8
  %173 = load i64, i64* %f, align 8
  %and224 = and i64 %172, %173
  %174 = load i64, i64* %g, align 8
  %175 = load i64, i64* %e, align 8
  %176 = load i64, i64* %f, align 8
  %or225 = or i64 %175, %176
  %and226 = and i64 %174, %or225
  %or227 = or i64 %and224, %and226
  %add228 = add i64 %xor223, %or227
  store i64 %add228, i64* %t0212, align 8
  %177 = load i64, i64* %d, align 8
  %178 = load i64, i64* %a, align 8
  %shl230 = shl i64 %178, 50
  %179 = load i64, i64* %a, align 8
  %shr231 = lshr i64 %179, 14
  %or232 = or i64 %shl230, %shr231
  %180 = load i64, i64* %a, align 8
  %shl233 = shl i64 %180, 46
  %181 = load i64, i64* %a, align 8
  %shr234 = lshr i64 %181, 18
  %or235 = or i64 %shl233, %shr234
  %182 = load i64, i64* %a, align 8
  %shl236 = shl i64 %182, 23
  %183 = load i64, i64* %a, align 8
  %shr237 = lshr i64 %183, 41
  %or238 = or i64 %shl236, %shr237
  %xor239 = xor i64 %or235, %or238
  %xor240 = xor i64 %or232, %xor239
  %184 = load i64, i64* %c, align 8
  %185 = load i64, i64* %a, align 8
  %186 = load i64, i64* %b, align 8
  %187 = load i64, i64* %c, align 8
  %xor241 = xor i64 %186, %187
  %and242 = and i64 %185, %xor241
  %xor243 = xor i64 %184, %and242
  %188 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 4), align 8
  %arrayidx244 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %189 = load i64, i64* %arrayidx244, align 8
  %add245 = add i64 %188, %189
  %add246 = add i64 %xor243, %add245
  %add247 = add i64 %xor240, %add246
  %add248 = add i64 %177, %add247
  store i64 %add248, i64* %t1229, align 8
  %190 = load i64, i64* %h, align 8
  %191 = load i64, i64* %t1229, align 8
  %add249 = add i64 %190, %191
  store i64 %add249, i64* %h, align 8
  %192 = load i64, i64* %t0212, align 8
  %193 = load i64, i64* %t1229, align 8
  %add250 = add i64 %192, %193
  store i64 %add250, i64* %d, align 8
  br label %do.end.251

do.end.251:                                       ; preds = %do.body.211
  br label %do.body.252

do.body.252:                                      ; preds = %do.end.251
  %194 = load i64, i64* %d, align 8
  %shl254 = shl i64 %194, 36
  %195 = load i64, i64* %d, align 8
  %shr255 = lshr i64 %195, 28
  %or256 = or i64 %shl254, %shr255
  %196 = load i64, i64* %d, align 8
  %shl257 = shl i64 %196, 30
  %197 = load i64, i64* %d, align 8
  %shr258 = lshr i64 %197, 34
  %or259 = or i64 %shl257, %shr258
  %198 = load i64, i64* %d, align 8
  %shl260 = shl i64 %198, 25
  %199 = load i64, i64* %d, align 8
  %shr261 = lshr i64 %199, 39
  %or262 = or i64 %shl260, %shr261
  %xor263 = xor i64 %or259, %or262
  %xor264 = xor i64 %or256, %xor263
  %200 = load i64, i64* %d, align 8
  %201 = load i64, i64* %e, align 8
  %and265 = and i64 %200, %201
  %202 = load i64, i64* %f, align 8
  %203 = load i64, i64* %d, align 8
  %204 = load i64, i64* %e, align 8
  %or266 = or i64 %203, %204
  %and267 = and i64 %202, %or266
  %or268 = or i64 %and265, %and267
  %add269 = add i64 %xor264, %or268
  store i64 %add269, i64* %t0253, align 8
  %205 = load i64, i64* %c, align 8
  %206 = load i64, i64* %h, align 8
  %shl271 = shl i64 %206, 50
  %207 = load i64, i64* %h, align 8
  %shr272 = lshr i64 %207, 14
  %or273 = or i64 %shl271, %shr272
  %208 = load i64, i64* %h, align 8
  %shl274 = shl i64 %208, 46
  %209 = load i64, i64* %h, align 8
  %shr275 = lshr i64 %209, 18
  %or276 = or i64 %shl274, %shr275
  %210 = load i64, i64* %h, align 8
  %shl277 = shl i64 %210, 23
  %211 = load i64, i64* %h, align 8
  %shr278 = lshr i64 %211, 41
  %or279 = or i64 %shl277, %shr278
  %xor280 = xor i64 %or276, %or279
  %xor281 = xor i64 %or273, %xor280
  %212 = load i64, i64* %b, align 8
  %213 = load i64, i64* %h, align 8
  %214 = load i64, i64* %a, align 8
  %215 = load i64, i64* %b, align 8
  %xor282 = xor i64 %214, %215
  %and283 = and i64 %213, %xor282
  %xor284 = xor i64 %212, %and283
  %216 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 5), align 8
  %arrayidx285 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %217 = load i64, i64* %arrayidx285, align 8
  %add286 = add i64 %216, %217
  %add287 = add i64 %xor284, %add286
  %add288 = add i64 %xor281, %add287
  %add289 = add i64 %205, %add288
  store i64 %add289, i64* %t1270, align 8
  %218 = load i64, i64* %g, align 8
  %219 = load i64, i64* %t1270, align 8
  %add290 = add i64 %218, %219
  store i64 %add290, i64* %g, align 8
  %220 = load i64, i64* %t0253, align 8
  %221 = load i64, i64* %t1270, align 8
  %add291 = add i64 %220, %221
  store i64 %add291, i64* %c, align 8
  br label %do.end.292

do.end.292:                                       ; preds = %do.body.252
  br label %do.body.293

do.body.293:                                      ; preds = %do.end.292
  %222 = load i64, i64* %c, align 8
  %shl295 = shl i64 %222, 36
  %223 = load i64, i64* %c, align 8
  %shr296 = lshr i64 %223, 28
  %or297 = or i64 %shl295, %shr296
  %224 = load i64, i64* %c, align 8
  %shl298 = shl i64 %224, 30
  %225 = load i64, i64* %c, align 8
  %shr299 = lshr i64 %225, 34
  %or300 = or i64 %shl298, %shr299
  %226 = load i64, i64* %c, align 8
  %shl301 = shl i64 %226, 25
  %227 = load i64, i64* %c, align 8
  %shr302 = lshr i64 %227, 39
  %or303 = or i64 %shl301, %shr302
  %xor304 = xor i64 %or300, %or303
  %xor305 = xor i64 %or297, %xor304
  %228 = load i64, i64* %c, align 8
  %229 = load i64, i64* %d, align 8
  %and306 = and i64 %228, %229
  %230 = load i64, i64* %e, align 8
  %231 = load i64, i64* %c, align 8
  %232 = load i64, i64* %d, align 8
  %or307 = or i64 %231, %232
  %and308 = and i64 %230, %or307
  %or309 = or i64 %and306, %and308
  %add310 = add i64 %xor305, %or309
  store i64 %add310, i64* %t0294, align 8
  %233 = load i64, i64* %b, align 8
  %234 = load i64, i64* %g, align 8
  %shl312 = shl i64 %234, 50
  %235 = load i64, i64* %g, align 8
  %shr313 = lshr i64 %235, 14
  %or314 = or i64 %shl312, %shr313
  %236 = load i64, i64* %g, align 8
  %shl315 = shl i64 %236, 46
  %237 = load i64, i64* %g, align 8
  %shr316 = lshr i64 %237, 18
  %or317 = or i64 %shl315, %shr316
  %238 = load i64, i64* %g, align 8
  %shl318 = shl i64 %238, 23
  %239 = load i64, i64* %g, align 8
  %shr319 = lshr i64 %239, 41
  %or320 = or i64 %shl318, %shr319
  %xor321 = xor i64 %or317, %or320
  %xor322 = xor i64 %or314, %xor321
  %240 = load i64, i64* %a, align 8
  %241 = load i64, i64* %g, align 8
  %242 = load i64, i64* %h, align 8
  %243 = load i64, i64* %a, align 8
  %xor323 = xor i64 %242, %243
  %and324 = and i64 %241, %xor323
  %xor325 = xor i64 %240, %and324
  %244 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 6), align 8
  %arrayidx326 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %245 = load i64, i64* %arrayidx326, align 8
  %add327 = add i64 %244, %245
  %add328 = add i64 %xor325, %add327
  %add329 = add i64 %xor322, %add328
  %add330 = add i64 %233, %add329
  store i64 %add330, i64* %t1311, align 8
  %246 = load i64, i64* %f, align 8
  %247 = load i64, i64* %t1311, align 8
  %add331 = add i64 %246, %247
  store i64 %add331, i64* %f, align 8
  %248 = load i64, i64* %t0294, align 8
  %249 = load i64, i64* %t1311, align 8
  %add332 = add i64 %248, %249
  store i64 %add332, i64* %b, align 8
  br label %do.end.333

do.end.333:                                       ; preds = %do.body.293
  br label %do.body.334

do.body.334:                                      ; preds = %do.end.333
  %250 = load i64, i64* %b, align 8
  %shl336 = shl i64 %250, 36
  %251 = load i64, i64* %b, align 8
  %shr337 = lshr i64 %251, 28
  %or338 = or i64 %shl336, %shr337
  %252 = load i64, i64* %b, align 8
  %shl339 = shl i64 %252, 30
  %253 = load i64, i64* %b, align 8
  %shr340 = lshr i64 %253, 34
  %or341 = or i64 %shl339, %shr340
  %254 = load i64, i64* %b, align 8
  %shl342 = shl i64 %254, 25
  %255 = load i64, i64* %b, align 8
  %shr343 = lshr i64 %255, 39
  %or344 = or i64 %shl342, %shr343
  %xor345 = xor i64 %or341, %or344
  %xor346 = xor i64 %or338, %xor345
  %256 = load i64, i64* %b, align 8
  %257 = load i64, i64* %c, align 8
  %and347 = and i64 %256, %257
  %258 = load i64, i64* %d, align 8
  %259 = load i64, i64* %b, align 8
  %260 = load i64, i64* %c, align 8
  %or348 = or i64 %259, %260
  %and349 = and i64 %258, %or348
  %or350 = or i64 %and347, %and349
  %add351 = add i64 %xor346, %or350
  store i64 %add351, i64* %t0335, align 8
  %261 = load i64, i64* %a, align 8
  %262 = load i64, i64* %f, align 8
  %shl353 = shl i64 %262, 50
  %263 = load i64, i64* %f, align 8
  %shr354 = lshr i64 %263, 14
  %or355 = or i64 %shl353, %shr354
  %264 = load i64, i64* %f, align 8
  %shl356 = shl i64 %264, 46
  %265 = load i64, i64* %f, align 8
  %shr357 = lshr i64 %265, 18
  %or358 = or i64 %shl356, %shr357
  %266 = load i64, i64* %f, align 8
  %shl359 = shl i64 %266, 23
  %267 = load i64, i64* %f, align 8
  %shr360 = lshr i64 %267, 41
  %or361 = or i64 %shl359, %shr360
  %xor362 = xor i64 %or358, %or361
  %xor363 = xor i64 %or355, %xor362
  %268 = load i64, i64* %h, align 8
  %269 = load i64, i64* %f, align 8
  %270 = load i64, i64* %g, align 8
  %271 = load i64, i64* %h, align 8
  %xor364 = xor i64 %270, %271
  %and365 = and i64 %269, %xor364
  %xor366 = xor i64 %268, %and365
  %272 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 7), align 8
  %arrayidx367 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %273 = load i64, i64* %arrayidx367, align 8
  %add368 = add i64 %272, %273
  %add369 = add i64 %xor366, %add368
  %add370 = add i64 %xor363, %add369
  %add371 = add i64 %261, %add370
  store i64 %add371, i64* %t1352, align 8
  %274 = load i64, i64* %e, align 8
  %275 = load i64, i64* %t1352, align 8
  %add372 = add i64 %274, %275
  store i64 %add372, i64* %e, align 8
  %276 = load i64, i64* %t0335, align 8
  %277 = load i64, i64* %t1352, align 8
  %add373 = add i64 %276, %277
  store i64 %add373, i64* %a, align 8
  br label %do.end.374

do.end.374:                                       ; preds = %do.body.334
  br label %do.body.375

do.body.375:                                      ; preds = %do.end.374
  %278 = load i64, i64* %a, align 8
  %shl377 = shl i64 %278, 36
  %279 = load i64, i64* %a, align 8
  %shr378 = lshr i64 %279, 28
  %or379 = or i64 %shl377, %shr378
  %280 = load i64, i64* %a, align 8
  %shl380 = shl i64 %280, 30
  %281 = load i64, i64* %a, align 8
  %shr381 = lshr i64 %281, 34
  %or382 = or i64 %shl380, %shr381
  %282 = load i64, i64* %a, align 8
  %shl383 = shl i64 %282, 25
  %283 = load i64, i64* %a, align 8
  %shr384 = lshr i64 %283, 39
  %or385 = or i64 %shl383, %shr384
  %xor386 = xor i64 %or382, %or385
  %xor387 = xor i64 %or379, %xor386
  %284 = load i64, i64* %a, align 8
  %285 = load i64, i64* %b, align 8
  %and388 = and i64 %284, %285
  %286 = load i64, i64* %c, align 8
  %287 = load i64, i64* %a, align 8
  %288 = load i64, i64* %b, align 8
  %or389 = or i64 %287, %288
  %and390 = and i64 %286, %or389
  %or391 = or i64 %and388, %and390
  %add392 = add i64 %xor387, %or391
  store i64 %add392, i64* %t0376, align 8
  %289 = load i64, i64* %h, align 8
  %290 = load i64, i64* %e, align 8
  %shl394 = shl i64 %290, 50
  %291 = load i64, i64* %e, align 8
  %shr395 = lshr i64 %291, 14
  %or396 = or i64 %shl394, %shr395
  %292 = load i64, i64* %e, align 8
  %shl397 = shl i64 %292, 46
  %293 = load i64, i64* %e, align 8
  %shr398 = lshr i64 %293, 18
  %or399 = or i64 %shl397, %shr398
  %294 = load i64, i64* %e, align 8
  %shl400 = shl i64 %294, 23
  %295 = load i64, i64* %e, align 8
  %shr401 = lshr i64 %295, 41
  %or402 = or i64 %shl400, %shr401
  %xor403 = xor i64 %or399, %or402
  %xor404 = xor i64 %or396, %xor403
  %296 = load i64, i64* %g, align 8
  %297 = load i64, i64* %e, align 8
  %298 = load i64, i64* %f, align 8
  %299 = load i64, i64* %g, align 8
  %xor405 = xor i64 %298, %299
  %and406 = and i64 %297, %xor405
  %xor407 = xor i64 %296, %and406
  %300 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 8), align 8
  %arrayidx408 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %301 = load i64, i64* %arrayidx408, align 8
  %add409 = add i64 %300, %301
  %add410 = add i64 %xor407, %add409
  %add411 = add i64 %xor404, %add410
  %add412 = add i64 %289, %add411
  store i64 %add412, i64* %t1393, align 8
  %302 = load i64, i64* %d, align 8
  %303 = load i64, i64* %t1393, align 8
  %add413 = add i64 %302, %303
  store i64 %add413, i64* %d, align 8
  %304 = load i64, i64* %t0376, align 8
  %305 = load i64, i64* %t1393, align 8
  %add414 = add i64 %304, %305
  store i64 %add414, i64* %h, align 8
  br label %do.end.415

do.end.415:                                       ; preds = %do.body.375
  br label %do.body.416

do.body.416:                                      ; preds = %do.end.415
  %306 = load i64, i64* %h, align 8
  %shl418 = shl i64 %306, 36
  %307 = load i64, i64* %h, align 8
  %shr419 = lshr i64 %307, 28
  %or420 = or i64 %shl418, %shr419
  %308 = load i64, i64* %h, align 8
  %shl421 = shl i64 %308, 30
  %309 = load i64, i64* %h, align 8
  %shr422 = lshr i64 %309, 34
  %or423 = or i64 %shl421, %shr422
  %310 = load i64, i64* %h, align 8
  %shl424 = shl i64 %310, 25
  %311 = load i64, i64* %h, align 8
  %shr425 = lshr i64 %311, 39
  %or426 = or i64 %shl424, %shr425
  %xor427 = xor i64 %or423, %or426
  %xor428 = xor i64 %or420, %xor427
  %312 = load i64, i64* %h, align 8
  %313 = load i64, i64* %a, align 8
  %and429 = and i64 %312, %313
  %314 = load i64, i64* %b, align 8
  %315 = load i64, i64* %h, align 8
  %316 = load i64, i64* %a, align 8
  %or430 = or i64 %315, %316
  %and431 = and i64 %314, %or430
  %or432 = or i64 %and429, %and431
  %add433 = add i64 %xor428, %or432
  store i64 %add433, i64* %t0417, align 8
  %317 = load i64, i64* %g, align 8
  %318 = load i64, i64* %d, align 8
  %shl435 = shl i64 %318, 50
  %319 = load i64, i64* %d, align 8
  %shr436 = lshr i64 %319, 14
  %or437 = or i64 %shl435, %shr436
  %320 = load i64, i64* %d, align 8
  %shl438 = shl i64 %320, 46
  %321 = load i64, i64* %d, align 8
  %shr439 = lshr i64 %321, 18
  %or440 = or i64 %shl438, %shr439
  %322 = load i64, i64* %d, align 8
  %shl441 = shl i64 %322, 23
  %323 = load i64, i64* %d, align 8
  %shr442 = lshr i64 %323, 41
  %or443 = or i64 %shl441, %shr442
  %xor444 = xor i64 %or440, %or443
  %xor445 = xor i64 %or437, %xor444
  %324 = load i64, i64* %f, align 8
  %325 = load i64, i64* %d, align 8
  %326 = load i64, i64* %e, align 8
  %327 = load i64, i64* %f, align 8
  %xor446 = xor i64 %326, %327
  %and447 = and i64 %325, %xor446
  %xor448 = xor i64 %324, %and447
  %328 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 9), align 8
  %arrayidx449 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %329 = load i64, i64* %arrayidx449, align 8
  %add450 = add i64 %328, %329
  %add451 = add i64 %xor448, %add450
  %add452 = add i64 %xor445, %add451
  %add453 = add i64 %317, %add452
  store i64 %add453, i64* %t1434, align 8
  %330 = load i64, i64* %c, align 8
  %331 = load i64, i64* %t1434, align 8
  %add454 = add i64 %330, %331
  store i64 %add454, i64* %c, align 8
  %332 = load i64, i64* %t0417, align 8
  %333 = load i64, i64* %t1434, align 8
  %add455 = add i64 %332, %333
  store i64 %add455, i64* %g, align 8
  br label %do.end.456

do.end.456:                                       ; preds = %do.body.416
  br label %do.body.457

do.body.457:                                      ; preds = %do.end.456
  %334 = load i64, i64* %g, align 8
  %shl459 = shl i64 %334, 36
  %335 = load i64, i64* %g, align 8
  %shr460 = lshr i64 %335, 28
  %or461 = or i64 %shl459, %shr460
  %336 = load i64, i64* %g, align 8
  %shl462 = shl i64 %336, 30
  %337 = load i64, i64* %g, align 8
  %shr463 = lshr i64 %337, 34
  %or464 = or i64 %shl462, %shr463
  %338 = load i64, i64* %g, align 8
  %shl465 = shl i64 %338, 25
  %339 = load i64, i64* %g, align 8
  %shr466 = lshr i64 %339, 39
  %or467 = or i64 %shl465, %shr466
  %xor468 = xor i64 %or464, %or467
  %xor469 = xor i64 %or461, %xor468
  %340 = load i64, i64* %g, align 8
  %341 = load i64, i64* %h, align 8
  %and470 = and i64 %340, %341
  %342 = load i64, i64* %a, align 8
  %343 = load i64, i64* %g, align 8
  %344 = load i64, i64* %h, align 8
  %or471 = or i64 %343, %344
  %and472 = and i64 %342, %or471
  %or473 = or i64 %and470, %and472
  %add474 = add i64 %xor469, %or473
  store i64 %add474, i64* %t0458, align 8
  %345 = load i64, i64* %f, align 8
  %346 = load i64, i64* %c, align 8
  %shl476 = shl i64 %346, 50
  %347 = load i64, i64* %c, align 8
  %shr477 = lshr i64 %347, 14
  %or478 = or i64 %shl476, %shr477
  %348 = load i64, i64* %c, align 8
  %shl479 = shl i64 %348, 46
  %349 = load i64, i64* %c, align 8
  %shr480 = lshr i64 %349, 18
  %or481 = or i64 %shl479, %shr480
  %350 = load i64, i64* %c, align 8
  %shl482 = shl i64 %350, 23
  %351 = load i64, i64* %c, align 8
  %shr483 = lshr i64 %351, 41
  %or484 = or i64 %shl482, %shr483
  %xor485 = xor i64 %or481, %or484
  %xor486 = xor i64 %or478, %xor485
  %352 = load i64, i64* %e, align 8
  %353 = load i64, i64* %c, align 8
  %354 = load i64, i64* %d, align 8
  %355 = load i64, i64* %e, align 8
  %xor487 = xor i64 %354, %355
  %and488 = and i64 %353, %xor487
  %xor489 = xor i64 %352, %and488
  %356 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 10), align 8
  %arrayidx490 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %357 = load i64, i64* %arrayidx490, align 8
  %add491 = add i64 %356, %357
  %add492 = add i64 %xor489, %add491
  %add493 = add i64 %xor486, %add492
  %add494 = add i64 %345, %add493
  store i64 %add494, i64* %t1475, align 8
  %358 = load i64, i64* %b, align 8
  %359 = load i64, i64* %t1475, align 8
  %add495 = add i64 %358, %359
  store i64 %add495, i64* %b, align 8
  %360 = load i64, i64* %t0458, align 8
  %361 = load i64, i64* %t1475, align 8
  %add496 = add i64 %360, %361
  store i64 %add496, i64* %f, align 8
  br label %do.end.497

do.end.497:                                       ; preds = %do.body.457
  br label %do.body.498

do.body.498:                                      ; preds = %do.end.497
  %362 = load i64, i64* %f, align 8
  %shl500 = shl i64 %362, 36
  %363 = load i64, i64* %f, align 8
  %shr501 = lshr i64 %363, 28
  %or502 = or i64 %shl500, %shr501
  %364 = load i64, i64* %f, align 8
  %shl503 = shl i64 %364, 30
  %365 = load i64, i64* %f, align 8
  %shr504 = lshr i64 %365, 34
  %or505 = or i64 %shl503, %shr504
  %366 = load i64, i64* %f, align 8
  %shl506 = shl i64 %366, 25
  %367 = load i64, i64* %f, align 8
  %shr507 = lshr i64 %367, 39
  %or508 = or i64 %shl506, %shr507
  %xor509 = xor i64 %or505, %or508
  %xor510 = xor i64 %or502, %xor509
  %368 = load i64, i64* %f, align 8
  %369 = load i64, i64* %g, align 8
  %and511 = and i64 %368, %369
  %370 = load i64, i64* %h, align 8
  %371 = load i64, i64* %f, align 8
  %372 = load i64, i64* %g, align 8
  %or512 = or i64 %371, %372
  %and513 = and i64 %370, %or512
  %or514 = or i64 %and511, %and513
  %add515 = add i64 %xor510, %or514
  store i64 %add515, i64* %t0499, align 8
  %373 = load i64, i64* %e, align 8
  %374 = load i64, i64* %b, align 8
  %shl517 = shl i64 %374, 50
  %375 = load i64, i64* %b, align 8
  %shr518 = lshr i64 %375, 14
  %or519 = or i64 %shl517, %shr518
  %376 = load i64, i64* %b, align 8
  %shl520 = shl i64 %376, 46
  %377 = load i64, i64* %b, align 8
  %shr521 = lshr i64 %377, 18
  %or522 = or i64 %shl520, %shr521
  %378 = load i64, i64* %b, align 8
  %shl523 = shl i64 %378, 23
  %379 = load i64, i64* %b, align 8
  %shr524 = lshr i64 %379, 41
  %or525 = or i64 %shl523, %shr524
  %xor526 = xor i64 %or522, %or525
  %xor527 = xor i64 %or519, %xor526
  %380 = load i64, i64* %d, align 8
  %381 = load i64, i64* %b, align 8
  %382 = load i64, i64* %c, align 8
  %383 = load i64, i64* %d, align 8
  %xor528 = xor i64 %382, %383
  %and529 = and i64 %381, %xor528
  %xor530 = xor i64 %380, %and529
  %384 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 11), align 8
  %arrayidx531 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %385 = load i64, i64* %arrayidx531, align 8
  %add532 = add i64 %384, %385
  %add533 = add i64 %xor530, %add532
  %add534 = add i64 %xor527, %add533
  %add535 = add i64 %373, %add534
  store i64 %add535, i64* %t1516, align 8
  %386 = load i64, i64* %a, align 8
  %387 = load i64, i64* %t1516, align 8
  %add536 = add i64 %386, %387
  store i64 %add536, i64* %a, align 8
  %388 = load i64, i64* %t0499, align 8
  %389 = load i64, i64* %t1516, align 8
  %add537 = add i64 %388, %389
  store i64 %add537, i64* %e, align 8
  br label %do.end.538

do.end.538:                                       ; preds = %do.body.498
  br label %do.body.539

do.body.539:                                      ; preds = %do.end.538
  %390 = load i64, i64* %e, align 8
  %shl541 = shl i64 %390, 36
  %391 = load i64, i64* %e, align 8
  %shr542 = lshr i64 %391, 28
  %or543 = or i64 %shl541, %shr542
  %392 = load i64, i64* %e, align 8
  %shl544 = shl i64 %392, 30
  %393 = load i64, i64* %e, align 8
  %shr545 = lshr i64 %393, 34
  %or546 = or i64 %shl544, %shr545
  %394 = load i64, i64* %e, align 8
  %shl547 = shl i64 %394, 25
  %395 = load i64, i64* %e, align 8
  %shr548 = lshr i64 %395, 39
  %or549 = or i64 %shl547, %shr548
  %xor550 = xor i64 %or546, %or549
  %xor551 = xor i64 %or543, %xor550
  %396 = load i64, i64* %e, align 8
  %397 = load i64, i64* %f, align 8
  %and552 = and i64 %396, %397
  %398 = load i64, i64* %g, align 8
  %399 = load i64, i64* %e, align 8
  %400 = load i64, i64* %f, align 8
  %or553 = or i64 %399, %400
  %and554 = and i64 %398, %or553
  %or555 = or i64 %and552, %and554
  %add556 = add i64 %xor551, %or555
  store i64 %add556, i64* %t0540, align 8
  %401 = load i64, i64* %d, align 8
  %402 = load i64, i64* %a, align 8
  %shl558 = shl i64 %402, 50
  %403 = load i64, i64* %a, align 8
  %shr559 = lshr i64 %403, 14
  %or560 = or i64 %shl558, %shr559
  %404 = load i64, i64* %a, align 8
  %shl561 = shl i64 %404, 46
  %405 = load i64, i64* %a, align 8
  %shr562 = lshr i64 %405, 18
  %or563 = or i64 %shl561, %shr562
  %406 = load i64, i64* %a, align 8
  %shl564 = shl i64 %406, 23
  %407 = load i64, i64* %a, align 8
  %shr565 = lshr i64 %407, 41
  %or566 = or i64 %shl564, %shr565
  %xor567 = xor i64 %or563, %or566
  %xor568 = xor i64 %or560, %xor567
  %408 = load i64, i64* %c, align 8
  %409 = load i64, i64* %a, align 8
  %410 = load i64, i64* %b, align 8
  %411 = load i64, i64* %c, align 8
  %xor569 = xor i64 %410, %411
  %and570 = and i64 %409, %xor569
  %xor571 = xor i64 %408, %and570
  %412 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 12), align 8
  %arrayidx572 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %413 = load i64, i64* %arrayidx572, align 8
  %add573 = add i64 %412, %413
  %add574 = add i64 %xor571, %add573
  %add575 = add i64 %xor568, %add574
  %add576 = add i64 %401, %add575
  store i64 %add576, i64* %t1557, align 8
  %414 = load i64, i64* %h, align 8
  %415 = load i64, i64* %t1557, align 8
  %add577 = add i64 %414, %415
  store i64 %add577, i64* %h, align 8
  %416 = load i64, i64* %t0540, align 8
  %417 = load i64, i64* %t1557, align 8
  %add578 = add i64 %416, %417
  store i64 %add578, i64* %d, align 8
  br label %do.end.579

do.end.579:                                       ; preds = %do.body.539
  br label %do.body.580

do.body.580:                                      ; preds = %do.end.579
  %418 = load i64, i64* %d, align 8
  %shl582 = shl i64 %418, 36
  %419 = load i64, i64* %d, align 8
  %shr583 = lshr i64 %419, 28
  %or584 = or i64 %shl582, %shr583
  %420 = load i64, i64* %d, align 8
  %shl585 = shl i64 %420, 30
  %421 = load i64, i64* %d, align 8
  %shr586 = lshr i64 %421, 34
  %or587 = or i64 %shl585, %shr586
  %422 = load i64, i64* %d, align 8
  %shl588 = shl i64 %422, 25
  %423 = load i64, i64* %d, align 8
  %shr589 = lshr i64 %423, 39
  %or590 = or i64 %shl588, %shr589
  %xor591 = xor i64 %or587, %or590
  %xor592 = xor i64 %or584, %xor591
  %424 = load i64, i64* %d, align 8
  %425 = load i64, i64* %e, align 8
  %and593 = and i64 %424, %425
  %426 = load i64, i64* %f, align 8
  %427 = load i64, i64* %d, align 8
  %428 = load i64, i64* %e, align 8
  %or594 = or i64 %427, %428
  %and595 = and i64 %426, %or594
  %or596 = or i64 %and593, %and595
  %add597 = add i64 %xor592, %or596
  store i64 %add597, i64* %t0581, align 8
  %429 = load i64, i64* %c, align 8
  %430 = load i64, i64* %h, align 8
  %shl599 = shl i64 %430, 50
  %431 = load i64, i64* %h, align 8
  %shr600 = lshr i64 %431, 14
  %or601 = or i64 %shl599, %shr600
  %432 = load i64, i64* %h, align 8
  %shl602 = shl i64 %432, 46
  %433 = load i64, i64* %h, align 8
  %shr603 = lshr i64 %433, 18
  %or604 = or i64 %shl602, %shr603
  %434 = load i64, i64* %h, align 8
  %shl605 = shl i64 %434, 23
  %435 = load i64, i64* %h, align 8
  %shr606 = lshr i64 %435, 41
  %or607 = or i64 %shl605, %shr606
  %xor608 = xor i64 %or604, %or607
  %xor609 = xor i64 %or601, %xor608
  %436 = load i64, i64* %b, align 8
  %437 = load i64, i64* %h, align 8
  %438 = load i64, i64* %a, align 8
  %439 = load i64, i64* %b, align 8
  %xor610 = xor i64 %438, %439
  %and611 = and i64 %437, %xor610
  %xor612 = xor i64 %436, %and611
  %440 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 13), align 8
  %arrayidx613 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %441 = load i64, i64* %arrayidx613, align 8
  %add614 = add i64 %440, %441
  %add615 = add i64 %xor612, %add614
  %add616 = add i64 %xor609, %add615
  %add617 = add i64 %429, %add616
  store i64 %add617, i64* %t1598, align 8
  %442 = load i64, i64* %g, align 8
  %443 = load i64, i64* %t1598, align 8
  %add618 = add i64 %442, %443
  store i64 %add618, i64* %g, align 8
  %444 = load i64, i64* %t0581, align 8
  %445 = load i64, i64* %t1598, align 8
  %add619 = add i64 %444, %445
  store i64 %add619, i64* %c, align 8
  br label %do.end.620

do.end.620:                                       ; preds = %do.body.580
  br label %do.body.621

do.body.621:                                      ; preds = %do.end.620
  %446 = load i64, i64* %c, align 8
  %shl623 = shl i64 %446, 36
  %447 = load i64, i64* %c, align 8
  %shr624 = lshr i64 %447, 28
  %or625 = or i64 %shl623, %shr624
  %448 = load i64, i64* %c, align 8
  %shl626 = shl i64 %448, 30
  %449 = load i64, i64* %c, align 8
  %shr627 = lshr i64 %449, 34
  %or628 = or i64 %shl626, %shr627
  %450 = load i64, i64* %c, align 8
  %shl629 = shl i64 %450, 25
  %451 = load i64, i64* %c, align 8
  %shr630 = lshr i64 %451, 39
  %or631 = or i64 %shl629, %shr630
  %xor632 = xor i64 %or628, %or631
  %xor633 = xor i64 %or625, %xor632
  %452 = load i64, i64* %c, align 8
  %453 = load i64, i64* %d, align 8
  %and634 = and i64 %452, %453
  %454 = load i64, i64* %e, align 8
  %455 = load i64, i64* %c, align 8
  %456 = load i64, i64* %d, align 8
  %or635 = or i64 %455, %456
  %and636 = and i64 %454, %or635
  %or637 = or i64 %and634, %and636
  %add638 = add i64 %xor633, %or637
  store i64 %add638, i64* %t0622, align 8
  %457 = load i64, i64* %b, align 8
  %458 = load i64, i64* %g, align 8
  %shl640 = shl i64 %458, 50
  %459 = load i64, i64* %g, align 8
  %shr641 = lshr i64 %459, 14
  %or642 = or i64 %shl640, %shr641
  %460 = load i64, i64* %g, align 8
  %shl643 = shl i64 %460, 46
  %461 = load i64, i64* %g, align 8
  %shr644 = lshr i64 %461, 18
  %or645 = or i64 %shl643, %shr644
  %462 = load i64, i64* %g, align 8
  %shl646 = shl i64 %462, 23
  %463 = load i64, i64* %g, align 8
  %shr647 = lshr i64 %463, 41
  %or648 = or i64 %shl646, %shr647
  %xor649 = xor i64 %or645, %or648
  %xor650 = xor i64 %or642, %xor649
  %464 = load i64, i64* %a, align 8
  %465 = load i64, i64* %g, align 8
  %466 = load i64, i64* %h, align 8
  %467 = load i64, i64* %a, align 8
  %xor651 = xor i64 %466, %467
  %and652 = and i64 %465, %xor651
  %xor653 = xor i64 %464, %and652
  %468 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 14), align 8
  %arrayidx654 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %469 = load i64, i64* %arrayidx654, align 8
  %add655 = add i64 %468, %469
  %add656 = add i64 %xor653, %add655
  %add657 = add i64 %xor650, %add656
  %add658 = add i64 %457, %add657
  store i64 %add658, i64* %t1639, align 8
  %470 = load i64, i64* %f, align 8
  %471 = load i64, i64* %t1639, align 8
  %add659 = add i64 %470, %471
  store i64 %add659, i64* %f, align 8
  %472 = load i64, i64* %t0622, align 8
  %473 = load i64, i64* %t1639, align 8
  %add660 = add i64 %472, %473
  store i64 %add660, i64* %b, align 8
  br label %do.end.661

do.end.661:                                       ; preds = %do.body.621
  br label %do.body.662

do.body.662:                                      ; preds = %do.end.661
  %474 = load i64, i64* %b, align 8
  %shl664 = shl i64 %474, 36
  %475 = load i64, i64* %b, align 8
  %shr665 = lshr i64 %475, 28
  %or666 = or i64 %shl664, %shr665
  %476 = load i64, i64* %b, align 8
  %shl667 = shl i64 %476, 30
  %477 = load i64, i64* %b, align 8
  %shr668 = lshr i64 %477, 34
  %or669 = or i64 %shl667, %shr668
  %478 = load i64, i64* %b, align 8
  %shl670 = shl i64 %478, 25
  %479 = load i64, i64* %b, align 8
  %shr671 = lshr i64 %479, 39
  %or672 = or i64 %shl670, %shr671
  %xor673 = xor i64 %or669, %or672
  %xor674 = xor i64 %or666, %xor673
  %480 = load i64, i64* %b, align 8
  %481 = load i64, i64* %c, align 8
  %and675 = and i64 %480, %481
  %482 = load i64, i64* %d, align 8
  %483 = load i64, i64* %b, align 8
  %484 = load i64, i64* %c, align 8
  %or676 = or i64 %483, %484
  %and677 = and i64 %482, %or676
  %or678 = or i64 %and675, %and677
  %add679 = add i64 %xor674, %or678
  store i64 %add679, i64* %t0663, align 8
  %485 = load i64, i64* %a, align 8
  %486 = load i64, i64* %f, align 8
  %shl681 = shl i64 %486, 50
  %487 = load i64, i64* %f, align 8
  %shr682 = lshr i64 %487, 14
  %or683 = or i64 %shl681, %shr682
  %488 = load i64, i64* %f, align 8
  %shl684 = shl i64 %488, 46
  %489 = load i64, i64* %f, align 8
  %shr685 = lshr i64 %489, 18
  %or686 = or i64 %shl684, %shr685
  %490 = load i64, i64* %f, align 8
  %shl687 = shl i64 %490, 23
  %491 = load i64, i64* %f, align 8
  %shr688 = lshr i64 %491, 41
  %or689 = or i64 %shl687, %shr688
  %xor690 = xor i64 %or686, %or689
  %xor691 = xor i64 %or683, %xor690
  %492 = load i64, i64* %h, align 8
  %493 = load i64, i64* %f, align 8
  %494 = load i64, i64* %g, align 8
  %495 = load i64, i64* %h, align 8
  %xor692 = xor i64 %494, %495
  %and693 = and i64 %493, %xor692
  %xor694 = xor i64 %492, %and693
  %496 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 15), align 8
  %arrayidx695 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %497 = load i64, i64* %arrayidx695, align 8
  %add696 = add i64 %496, %497
  %add697 = add i64 %xor694, %add696
  %add698 = add i64 %xor691, %add697
  %add699 = add i64 %485, %add698
  store i64 %add699, i64* %t1680, align 8
  %498 = load i64, i64* %e, align 8
  %499 = load i64, i64* %t1680, align 8
  %add700 = add i64 %498, %499
  store i64 %add700, i64* %e, align 8
  %500 = load i64, i64* %t0663, align 8
  %501 = load i64, i64* %t1680, align 8
  %add701 = add i64 %500, %501
  store i64 %add701, i64* %a, align 8
  br label %do.end.702

do.end.702:                                       ; preds = %do.body.662
  br label %do.body.703

do.body.703:                                      ; preds = %do.end.702
  %502 = load i64, i64* %a, align 8
  %shl705 = shl i64 %502, 36
  %503 = load i64, i64* %a, align 8
  %shr706 = lshr i64 %503, 28
  %or707 = or i64 %shl705, %shr706
  %504 = load i64, i64* %a, align 8
  %shl708 = shl i64 %504, 30
  %505 = load i64, i64* %a, align 8
  %shr709 = lshr i64 %505, 34
  %or710 = or i64 %shl708, %shr709
  %506 = load i64, i64* %a, align 8
  %shl711 = shl i64 %506, 25
  %507 = load i64, i64* %a, align 8
  %shr712 = lshr i64 %507, 39
  %or713 = or i64 %shl711, %shr712
  %xor714 = xor i64 %or710, %or713
  %xor715 = xor i64 %or707, %xor714
  %508 = load i64, i64* %a, align 8
  %509 = load i64, i64* %b, align 8
  %and716 = and i64 %508, %509
  %510 = load i64, i64* %c, align 8
  %511 = load i64, i64* %a, align 8
  %512 = load i64, i64* %b, align 8
  %or717 = or i64 %511, %512
  %and718 = and i64 %510, %or717
  %or719 = or i64 %and716, %and718
  %add720 = add i64 %xor715, %or719
  store i64 %add720, i64* %t0704, align 8
  %513 = load i64, i64* %h, align 8
  %514 = load i64, i64* %e, align 8
  %shl722 = shl i64 %514, 50
  %515 = load i64, i64* %e, align 8
  %shr723 = lshr i64 %515, 14
  %or724 = or i64 %shl722, %shr723
  %516 = load i64, i64* %e, align 8
  %shl725 = shl i64 %516, 46
  %517 = load i64, i64* %e, align 8
  %shr726 = lshr i64 %517, 18
  %or727 = or i64 %shl725, %shr726
  %518 = load i64, i64* %e, align 8
  %shl728 = shl i64 %518, 23
  %519 = load i64, i64* %e, align 8
  %shr729 = lshr i64 %519, 41
  %or730 = or i64 %shl728, %shr729
  %xor731 = xor i64 %or727, %or730
  %xor732 = xor i64 %or724, %xor731
  %520 = load i64, i64* %g, align 8
  %521 = load i64, i64* %e, align 8
  %522 = load i64, i64* %f, align 8
  %523 = load i64, i64* %g, align 8
  %xor733 = xor i64 %522, %523
  %and734 = and i64 %521, %xor733
  %xor735 = xor i64 %520, %and734
  %524 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 16), align 8
  %arrayidx736 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %525 = load i64, i64* %arrayidx736, align 8
  %arrayidx737 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %526 = load i64, i64* %arrayidx737, align 8
  %shl738 = shl i64 %526, 45
  %arrayidx739 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %527 = load i64, i64* %arrayidx739, align 8
  %shr740 = lshr i64 %527, 19
  %or741 = or i64 %shl738, %shr740
  %arrayidx742 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %528 = load i64, i64* %arrayidx742, align 8
  %shl743 = shl i64 %528, 3
  %arrayidx744 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %529 = load i64, i64* %arrayidx744, align 8
  %shr745 = lshr i64 %529, 61
  %or746 = or i64 %shl743, %shr745
  %arrayidx747 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %530 = load i64, i64* %arrayidx747, align 8
  %shr748 = lshr i64 %530, 6
  %xor749 = xor i64 %or746, %shr748
  %xor750 = xor i64 %or741, %xor749
  %arrayidx751 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %531 = load i64, i64* %arrayidx751, align 8
  %arrayidx752 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %532 = load i64, i64* %arrayidx752, align 8
  %shl753 = shl i64 %532, 63
  %arrayidx754 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %533 = load i64, i64* %arrayidx754, align 8
  %shr755 = lshr i64 %533, 1
  %or756 = or i64 %shl753, %shr755
  %arrayidx757 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %534 = load i64, i64* %arrayidx757, align 8
  %shl758 = shl i64 %534, 56
  %arrayidx759 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %535 = load i64, i64* %arrayidx759, align 8
  %shr760 = lshr i64 %535, 8
  %or761 = or i64 %shl758, %shr760
  %arrayidx762 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %536 = load i64, i64* %arrayidx762, align 8
  %shr763 = lshr i64 %536, 7
  %xor764 = xor i64 %or761, %shr763
  %xor765 = xor i64 %or756, %xor764
  %add766 = add i64 %531, %xor765
  %add767 = add i64 %xor750, %add766
  %add768 = add i64 %525, %add767
  %arrayidx769 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  store i64 %add768, i64* %arrayidx769, align 8
  %add770 = add i64 %524, %add768
  %add771 = add i64 %xor735, %add770
  %add772 = add i64 %xor732, %add771
  %add773 = add i64 %513, %add772
  store i64 %add773, i64* %t1721, align 8
  %537 = load i64, i64* %d, align 8
  %538 = load i64, i64* %t1721, align 8
  %add774 = add i64 %537, %538
  store i64 %add774, i64* %d, align 8
  %539 = load i64, i64* %t0704, align 8
  %540 = load i64, i64* %t1721, align 8
  %add775 = add i64 %539, %540
  store i64 %add775, i64* %h, align 8
  br label %do.end.776

do.end.776:                                       ; preds = %do.body.703
  br label %do.body.777

do.body.777:                                      ; preds = %do.end.776
  %541 = load i64, i64* %h, align 8
  %shl779 = shl i64 %541, 36
  %542 = load i64, i64* %h, align 8
  %shr780 = lshr i64 %542, 28
  %or781 = or i64 %shl779, %shr780
  %543 = load i64, i64* %h, align 8
  %shl782 = shl i64 %543, 30
  %544 = load i64, i64* %h, align 8
  %shr783 = lshr i64 %544, 34
  %or784 = or i64 %shl782, %shr783
  %545 = load i64, i64* %h, align 8
  %shl785 = shl i64 %545, 25
  %546 = load i64, i64* %h, align 8
  %shr786 = lshr i64 %546, 39
  %or787 = or i64 %shl785, %shr786
  %xor788 = xor i64 %or784, %or787
  %xor789 = xor i64 %or781, %xor788
  %547 = load i64, i64* %h, align 8
  %548 = load i64, i64* %a, align 8
  %and790 = and i64 %547, %548
  %549 = load i64, i64* %b, align 8
  %550 = load i64, i64* %h, align 8
  %551 = load i64, i64* %a, align 8
  %or791 = or i64 %550, %551
  %and792 = and i64 %549, %or791
  %or793 = or i64 %and790, %and792
  %add794 = add i64 %xor789, %or793
  store i64 %add794, i64* %t0778, align 8
  %552 = load i64, i64* %g, align 8
  %553 = load i64, i64* %d, align 8
  %shl796 = shl i64 %553, 50
  %554 = load i64, i64* %d, align 8
  %shr797 = lshr i64 %554, 14
  %or798 = or i64 %shl796, %shr797
  %555 = load i64, i64* %d, align 8
  %shl799 = shl i64 %555, 46
  %556 = load i64, i64* %d, align 8
  %shr800 = lshr i64 %556, 18
  %or801 = or i64 %shl799, %shr800
  %557 = load i64, i64* %d, align 8
  %shl802 = shl i64 %557, 23
  %558 = load i64, i64* %d, align 8
  %shr803 = lshr i64 %558, 41
  %or804 = or i64 %shl802, %shr803
  %xor805 = xor i64 %or801, %or804
  %xor806 = xor i64 %or798, %xor805
  %559 = load i64, i64* %f, align 8
  %560 = load i64, i64* %d, align 8
  %561 = load i64, i64* %e, align 8
  %562 = load i64, i64* %f, align 8
  %xor807 = xor i64 %561, %562
  %and808 = and i64 %560, %xor807
  %xor809 = xor i64 %559, %and808
  %563 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 17), align 8
  %arrayidx810 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %564 = load i64, i64* %arrayidx810, align 8
  %arrayidx811 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %565 = load i64, i64* %arrayidx811, align 8
  %shl812 = shl i64 %565, 45
  %arrayidx813 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %566 = load i64, i64* %arrayidx813, align 8
  %shr814 = lshr i64 %566, 19
  %or815 = or i64 %shl812, %shr814
  %arrayidx816 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %567 = load i64, i64* %arrayidx816, align 8
  %shl817 = shl i64 %567, 3
  %arrayidx818 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %568 = load i64, i64* %arrayidx818, align 8
  %shr819 = lshr i64 %568, 61
  %or820 = or i64 %shl817, %shr819
  %arrayidx821 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %569 = load i64, i64* %arrayidx821, align 8
  %shr822 = lshr i64 %569, 6
  %xor823 = xor i64 %or820, %shr822
  %xor824 = xor i64 %or815, %xor823
  %arrayidx825 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %570 = load i64, i64* %arrayidx825, align 8
  %arrayidx826 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %571 = load i64, i64* %arrayidx826, align 8
  %shl827 = shl i64 %571, 63
  %arrayidx828 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %572 = load i64, i64* %arrayidx828, align 8
  %shr829 = lshr i64 %572, 1
  %or830 = or i64 %shl827, %shr829
  %arrayidx831 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %573 = load i64, i64* %arrayidx831, align 8
  %shl832 = shl i64 %573, 56
  %arrayidx833 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %574 = load i64, i64* %arrayidx833, align 8
  %shr834 = lshr i64 %574, 8
  %or835 = or i64 %shl832, %shr834
  %arrayidx836 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %575 = load i64, i64* %arrayidx836, align 8
  %shr837 = lshr i64 %575, 7
  %xor838 = xor i64 %or835, %shr837
  %xor839 = xor i64 %or830, %xor838
  %add840 = add i64 %570, %xor839
  %add841 = add i64 %xor824, %add840
  %add842 = add i64 %564, %add841
  %arrayidx843 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  store i64 %add842, i64* %arrayidx843, align 8
  %add844 = add i64 %563, %add842
  %add845 = add i64 %xor809, %add844
  %add846 = add i64 %xor806, %add845
  %add847 = add i64 %552, %add846
  store i64 %add847, i64* %t1795, align 8
  %576 = load i64, i64* %c, align 8
  %577 = load i64, i64* %t1795, align 8
  %add848 = add i64 %576, %577
  store i64 %add848, i64* %c, align 8
  %578 = load i64, i64* %t0778, align 8
  %579 = load i64, i64* %t1795, align 8
  %add849 = add i64 %578, %579
  store i64 %add849, i64* %g, align 8
  br label %do.end.850

do.end.850:                                       ; preds = %do.body.777
  br label %do.body.851

do.body.851:                                      ; preds = %do.end.850
  %580 = load i64, i64* %g, align 8
  %shl853 = shl i64 %580, 36
  %581 = load i64, i64* %g, align 8
  %shr854 = lshr i64 %581, 28
  %or855 = or i64 %shl853, %shr854
  %582 = load i64, i64* %g, align 8
  %shl856 = shl i64 %582, 30
  %583 = load i64, i64* %g, align 8
  %shr857 = lshr i64 %583, 34
  %or858 = or i64 %shl856, %shr857
  %584 = load i64, i64* %g, align 8
  %shl859 = shl i64 %584, 25
  %585 = load i64, i64* %g, align 8
  %shr860 = lshr i64 %585, 39
  %or861 = or i64 %shl859, %shr860
  %xor862 = xor i64 %or858, %or861
  %xor863 = xor i64 %or855, %xor862
  %586 = load i64, i64* %g, align 8
  %587 = load i64, i64* %h, align 8
  %and864 = and i64 %586, %587
  %588 = load i64, i64* %a, align 8
  %589 = load i64, i64* %g, align 8
  %590 = load i64, i64* %h, align 8
  %or865 = or i64 %589, %590
  %and866 = and i64 %588, %or865
  %or867 = or i64 %and864, %and866
  %add868 = add i64 %xor863, %or867
  store i64 %add868, i64* %t0852, align 8
  %591 = load i64, i64* %f, align 8
  %592 = load i64, i64* %c, align 8
  %shl870 = shl i64 %592, 50
  %593 = load i64, i64* %c, align 8
  %shr871 = lshr i64 %593, 14
  %or872 = or i64 %shl870, %shr871
  %594 = load i64, i64* %c, align 8
  %shl873 = shl i64 %594, 46
  %595 = load i64, i64* %c, align 8
  %shr874 = lshr i64 %595, 18
  %or875 = or i64 %shl873, %shr874
  %596 = load i64, i64* %c, align 8
  %shl876 = shl i64 %596, 23
  %597 = load i64, i64* %c, align 8
  %shr877 = lshr i64 %597, 41
  %or878 = or i64 %shl876, %shr877
  %xor879 = xor i64 %or875, %or878
  %xor880 = xor i64 %or872, %xor879
  %598 = load i64, i64* %e, align 8
  %599 = load i64, i64* %c, align 8
  %600 = load i64, i64* %d, align 8
  %601 = load i64, i64* %e, align 8
  %xor881 = xor i64 %600, %601
  %and882 = and i64 %599, %xor881
  %xor883 = xor i64 %598, %and882
  %602 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 18), align 8
  %arrayidx884 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %603 = load i64, i64* %arrayidx884, align 8
  %arrayidx885 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %604 = load i64, i64* %arrayidx885, align 8
  %shl886 = shl i64 %604, 45
  %arrayidx887 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %605 = load i64, i64* %arrayidx887, align 8
  %shr888 = lshr i64 %605, 19
  %or889 = or i64 %shl886, %shr888
  %arrayidx890 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %606 = load i64, i64* %arrayidx890, align 8
  %shl891 = shl i64 %606, 3
  %arrayidx892 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %607 = load i64, i64* %arrayidx892, align 8
  %shr893 = lshr i64 %607, 61
  %or894 = or i64 %shl891, %shr893
  %arrayidx895 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %608 = load i64, i64* %arrayidx895, align 8
  %shr896 = lshr i64 %608, 6
  %xor897 = xor i64 %or894, %shr896
  %xor898 = xor i64 %or889, %xor897
  %arrayidx899 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %609 = load i64, i64* %arrayidx899, align 8
  %arrayidx900 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %610 = load i64, i64* %arrayidx900, align 8
  %shl901 = shl i64 %610, 63
  %arrayidx902 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %611 = load i64, i64* %arrayidx902, align 8
  %shr903 = lshr i64 %611, 1
  %or904 = or i64 %shl901, %shr903
  %arrayidx905 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %612 = load i64, i64* %arrayidx905, align 8
  %shl906 = shl i64 %612, 56
  %arrayidx907 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %613 = load i64, i64* %arrayidx907, align 8
  %shr908 = lshr i64 %613, 8
  %or909 = or i64 %shl906, %shr908
  %arrayidx910 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %614 = load i64, i64* %arrayidx910, align 8
  %shr911 = lshr i64 %614, 7
  %xor912 = xor i64 %or909, %shr911
  %xor913 = xor i64 %or904, %xor912
  %add914 = add i64 %609, %xor913
  %add915 = add i64 %xor898, %add914
  %add916 = add i64 %603, %add915
  %arrayidx917 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  store i64 %add916, i64* %arrayidx917, align 8
  %add918 = add i64 %602, %add916
  %add919 = add i64 %xor883, %add918
  %add920 = add i64 %xor880, %add919
  %add921 = add i64 %591, %add920
  store i64 %add921, i64* %t1869, align 8
  %615 = load i64, i64* %b, align 8
  %616 = load i64, i64* %t1869, align 8
  %add922 = add i64 %615, %616
  store i64 %add922, i64* %b, align 8
  %617 = load i64, i64* %t0852, align 8
  %618 = load i64, i64* %t1869, align 8
  %add923 = add i64 %617, %618
  store i64 %add923, i64* %f, align 8
  br label %do.end.924

do.end.924:                                       ; preds = %do.body.851
  br label %do.body.925

do.body.925:                                      ; preds = %do.end.924
  %619 = load i64, i64* %f, align 8
  %shl927 = shl i64 %619, 36
  %620 = load i64, i64* %f, align 8
  %shr928 = lshr i64 %620, 28
  %or929 = or i64 %shl927, %shr928
  %621 = load i64, i64* %f, align 8
  %shl930 = shl i64 %621, 30
  %622 = load i64, i64* %f, align 8
  %shr931 = lshr i64 %622, 34
  %or932 = or i64 %shl930, %shr931
  %623 = load i64, i64* %f, align 8
  %shl933 = shl i64 %623, 25
  %624 = load i64, i64* %f, align 8
  %shr934 = lshr i64 %624, 39
  %or935 = or i64 %shl933, %shr934
  %xor936 = xor i64 %or932, %or935
  %xor937 = xor i64 %or929, %xor936
  %625 = load i64, i64* %f, align 8
  %626 = load i64, i64* %g, align 8
  %and938 = and i64 %625, %626
  %627 = load i64, i64* %h, align 8
  %628 = load i64, i64* %f, align 8
  %629 = load i64, i64* %g, align 8
  %or939 = or i64 %628, %629
  %and940 = and i64 %627, %or939
  %or941 = or i64 %and938, %and940
  %add942 = add i64 %xor937, %or941
  store i64 %add942, i64* %t0926, align 8
  %630 = load i64, i64* %e, align 8
  %631 = load i64, i64* %b, align 8
  %shl944 = shl i64 %631, 50
  %632 = load i64, i64* %b, align 8
  %shr945 = lshr i64 %632, 14
  %or946 = or i64 %shl944, %shr945
  %633 = load i64, i64* %b, align 8
  %shl947 = shl i64 %633, 46
  %634 = load i64, i64* %b, align 8
  %shr948 = lshr i64 %634, 18
  %or949 = or i64 %shl947, %shr948
  %635 = load i64, i64* %b, align 8
  %shl950 = shl i64 %635, 23
  %636 = load i64, i64* %b, align 8
  %shr951 = lshr i64 %636, 41
  %or952 = or i64 %shl950, %shr951
  %xor953 = xor i64 %or949, %or952
  %xor954 = xor i64 %or946, %xor953
  %637 = load i64, i64* %d, align 8
  %638 = load i64, i64* %b, align 8
  %639 = load i64, i64* %c, align 8
  %640 = load i64, i64* %d, align 8
  %xor955 = xor i64 %639, %640
  %and956 = and i64 %638, %xor955
  %xor957 = xor i64 %637, %and956
  %641 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 19), align 8
  %arrayidx958 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %642 = load i64, i64* %arrayidx958, align 8
  %arrayidx959 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %643 = load i64, i64* %arrayidx959, align 8
  %shl960 = shl i64 %643, 45
  %arrayidx961 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %644 = load i64, i64* %arrayidx961, align 8
  %shr962 = lshr i64 %644, 19
  %or963 = or i64 %shl960, %shr962
  %arrayidx964 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %645 = load i64, i64* %arrayidx964, align 8
  %shl965 = shl i64 %645, 3
  %arrayidx966 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %646 = load i64, i64* %arrayidx966, align 8
  %shr967 = lshr i64 %646, 61
  %or968 = or i64 %shl965, %shr967
  %arrayidx969 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %647 = load i64, i64* %arrayidx969, align 8
  %shr970 = lshr i64 %647, 6
  %xor971 = xor i64 %or968, %shr970
  %xor972 = xor i64 %or963, %xor971
  %arrayidx973 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %648 = load i64, i64* %arrayidx973, align 8
  %arrayidx974 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %649 = load i64, i64* %arrayidx974, align 8
  %shl975 = shl i64 %649, 63
  %arrayidx976 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %650 = load i64, i64* %arrayidx976, align 8
  %shr977 = lshr i64 %650, 1
  %or978 = or i64 %shl975, %shr977
  %arrayidx979 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %651 = load i64, i64* %arrayidx979, align 8
  %shl980 = shl i64 %651, 56
  %arrayidx981 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %652 = load i64, i64* %arrayidx981, align 8
  %shr982 = lshr i64 %652, 8
  %or983 = or i64 %shl980, %shr982
  %arrayidx984 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %653 = load i64, i64* %arrayidx984, align 8
  %shr985 = lshr i64 %653, 7
  %xor986 = xor i64 %or983, %shr985
  %xor987 = xor i64 %or978, %xor986
  %add988 = add i64 %648, %xor987
  %add989 = add i64 %xor972, %add988
  %add990 = add i64 %642, %add989
  %arrayidx991 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  store i64 %add990, i64* %arrayidx991, align 8
  %add992 = add i64 %641, %add990
  %add993 = add i64 %xor957, %add992
  %add994 = add i64 %xor954, %add993
  %add995 = add i64 %630, %add994
  store i64 %add995, i64* %t1943, align 8
  %654 = load i64, i64* %a, align 8
  %655 = load i64, i64* %t1943, align 8
  %add996 = add i64 %654, %655
  store i64 %add996, i64* %a, align 8
  %656 = load i64, i64* %t0926, align 8
  %657 = load i64, i64* %t1943, align 8
  %add997 = add i64 %656, %657
  store i64 %add997, i64* %e, align 8
  br label %do.end.998

do.end.998:                                       ; preds = %do.body.925
  br label %do.body.999

do.body.999:                                      ; preds = %do.end.998
  %658 = load i64, i64* %e, align 8
  %shl1001 = shl i64 %658, 36
  %659 = load i64, i64* %e, align 8
  %shr1002 = lshr i64 %659, 28
  %or1003 = or i64 %shl1001, %shr1002
  %660 = load i64, i64* %e, align 8
  %shl1004 = shl i64 %660, 30
  %661 = load i64, i64* %e, align 8
  %shr1005 = lshr i64 %661, 34
  %or1006 = or i64 %shl1004, %shr1005
  %662 = load i64, i64* %e, align 8
  %shl1007 = shl i64 %662, 25
  %663 = load i64, i64* %e, align 8
  %shr1008 = lshr i64 %663, 39
  %or1009 = or i64 %shl1007, %shr1008
  %xor1010 = xor i64 %or1006, %or1009
  %xor1011 = xor i64 %or1003, %xor1010
  %664 = load i64, i64* %e, align 8
  %665 = load i64, i64* %f, align 8
  %and1012 = and i64 %664, %665
  %666 = load i64, i64* %g, align 8
  %667 = load i64, i64* %e, align 8
  %668 = load i64, i64* %f, align 8
  %or1013 = or i64 %667, %668
  %and1014 = and i64 %666, %or1013
  %or1015 = or i64 %and1012, %and1014
  %add1016 = add i64 %xor1011, %or1015
  store i64 %add1016, i64* %t01000, align 8
  %669 = load i64, i64* %d, align 8
  %670 = load i64, i64* %a, align 8
  %shl1018 = shl i64 %670, 50
  %671 = load i64, i64* %a, align 8
  %shr1019 = lshr i64 %671, 14
  %or1020 = or i64 %shl1018, %shr1019
  %672 = load i64, i64* %a, align 8
  %shl1021 = shl i64 %672, 46
  %673 = load i64, i64* %a, align 8
  %shr1022 = lshr i64 %673, 18
  %or1023 = or i64 %shl1021, %shr1022
  %674 = load i64, i64* %a, align 8
  %shl1024 = shl i64 %674, 23
  %675 = load i64, i64* %a, align 8
  %shr1025 = lshr i64 %675, 41
  %or1026 = or i64 %shl1024, %shr1025
  %xor1027 = xor i64 %or1023, %or1026
  %xor1028 = xor i64 %or1020, %xor1027
  %676 = load i64, i64* %c, align 8
  %677 = load i64, i64* %a, align 8
  %678 = load i64, i64* %b, align 8
  %679 = load i64, i64* %c, align 8
  %xor1029 = xor i64 %678, %679
  %and1030 = and i64 %677, %xor1029
  %xor1031 = xor i64 %676, %and1030
  %680 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 20), align 8
  %arrayidx1032 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %681 = load i64, i64* %arrayidx1032, align 8
  %arrayidx1033 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %682 = load i64, i64* %arrayidx1033, align 8
  %shl1034 = shl i64 %682, 45
  %arrayidx1035 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %683 = load i64, i64* %arrayidx1035, align 8
  %shr1036 = lshr i64 %683, 19
  %or1037 = or i64 %shl1034, %shr1036
  %arrayidx1038 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %684 = load i64, i64* %arrayidx1038, align 8
  %shl1039 = shl i64 %684, 3
  %arrayidx1040 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %685 = load i64, i64* %arrayidx1040, align 8
  %shr1041 = lshr i64 %685, 61
  %or1042 = or i64 %shl1039, %shr1041
  %arrayidx1043 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %686 = load i64, i64* %arrayidx1043, align 8
  %shr1044 = lshr i64 %686, 6
  %xor1045 = xor i64 %or1042, %shr1044
  %xor1046 = xor i64 %or1037, %xor1045
  %arrayidx1047 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %687 = load i64, i64* %arrayidx1047, align 8
  %arrayidx1048 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %688 = load i64, i64* %arrayidx1048, align 8
  %shl1049 = shl i64 %688, 63
  %arrayidx1050 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %689 = load i64, i64* %arrayidx1050, align 8
  %shr1051 = lshr i64 %689, 1
  %or1052 = or i64 %shl1049, %shr1051
  %arrayidx1053 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %690 = load i64, i64* %arrayidx1053, align 8
  %shl1054 = shl i64 %690, 56
  %arrayidx1055 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %691 = load i64, i64* %arrayidx1055, align 8
  %shr1056 = lshr i64 %691, 8
  %or1057 = or i64 %shl1054, %shr1056
  %arrayidx1058 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %692 = load i64, i64* %arrayidx1058, align 8
  %shr1059 = lshr i64 %692, 7
  %xor1060 = xor i64 %or1057, %shr1059
  %xor1061 = xor i64 %or1052, %xor1060
  %add1062 = add i64 %687, %xor1061
  %add1063 = add i64 %xor1046, %add1062
  %add1064 = add i64 %681, %add1063
  %arrayidx1065 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  store i64 %add1064, i64* %arrayidx1065, align 8
  %add1066 = add i64 %680, %add1064
  %add1067 = add i64 %xor1031, %add1066
  %add1068 = add i64 %xor1028, %add1067
  %add1069 = add i64 %669, %add1068
  store i64 %add1069, i64* %t11017, align 8
  %693 = load i64, i64* %h, align 8
  %694 = load i64, i64* %t11017, align 8
  %add1070 = add i64 %693, %694
  store i64 %add1070, i64* %h, align 8
  %695 = load i64, i64* %t01000, align 8
  %696 = load i64, i64* %t11017, align 8
  %add1071 = add i64 %695, %696
  store i64 %add1071, i64* %d, align 8
  br label %do.end.1072

do.end.1072:                                      ; preds = %do.body.999
  br label %do.body.1073

do.body.1073:                                     ; preds = %do.end.1072
  %697 = load i64, i64* %d, align 8
  %shl1075 = shl i64 %697, 36
  %698 = load i64, i64* %d, align 8
  %shr1076 = lshr i64 %698, 28
  %or1077 = or i64 %shl1075, %shr1076
  %699 = load i64, i64* %d, align 8
  %shl1078 = shl i64 %699, 30
  %700 = load i64, i64* %d, align 8
  %shr1079 = lshr i64 %700, 34
  %or1080 = or i64 %shl1078, %shr1079
  %701 = load i64, i64* %d, align 8
  %shl1081 = shl i64 %701, 25
  %702 = load i64, i64* %d, align 8
  %shr1082 = lshr i64 %702, 39
  %or1083 = or i64 %shl1081, %shr1082
  %xor1084 = xor i64 %or1080, %or1083
  %xor1085 = xor i64 %or1077, %xor1084
  %703 = load i64, i64* %d, align 8
  %704 = load i64, i64* %e, align 8
  %and1086 = and i64 %703, %704
  %705 = load i64, i64* %f, align 8
  %706 = load i64, i64* %d, align 8
  %707 = load i64, i64* %e, align 8
  %or1087 = or i64 %706, %707
  %and1088 = and i64 %705, %or1087
  %or1089 = or i64 %and1086, %and1088
  %add1090 = add i64 %xor1085, %or1089
  store i64 %add1090, i64* %t01074, align 8
  %708 = load i64, i64* %c, align 8
  %709 = load i64, i64* %h, align 8
  %shl1092 = shl i64 %709, 50
  %710 = load i64, i64* %h, align 8
  %shr1093 = lshr i64 %710, 14
  %or1094 = or i64 %shl1092, %shr1093
  %711 = load i64, i64* %h, align 8
  %shl1095 = shl i64 %711, 46
  %712 = load i64, i64* %h, align 8
  %shr1096 = lshr i64 %712, 18
  %or1097 = or i64 %shl1095, %shr1096
  %713 = load i64, i64* %h, align 8
  %shl1098 = shl i64 %713, 23
  %714 = load i64, i64* %h, align 8
  %shr1099 = lshr i64 %714, 41
  %or1100 = or i64 %shl1098, %shr1099
  %xor1101 = xor i64 %or1097, %or1100
  %xor1102 = xor i64 %or1094, %xor1101
  %715 = load i64, i64* %b, align 8
  %716 = load i64, i64* %h, align 8
  %717 = load i64, i64* %a, align 8
  %718 = load i64, i64* %b, align 8
  %xor1103 = xor i64 %717, %718
  %and1104 = and i64 %716, %xor1103
  %xor1105 = xor i64 %715, %and1104
  %719 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 21), align 8
  %arrayidx1106 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %720 = load i64, i64* %arrayidx1106, align 8
  %arrayidx1107 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %721 = load i64, i64* %arrayidx1107, align 8
  %shl1108 = shl i64 %721, 45
  %arrayidx1109 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %722 = load i64, i64* %arrayidx1109, align 8
  %shr1110 = lshr i64 %722, 19
  %or1111 = or i64 %shl1108, %shr1110
  %arrayidx1112 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %723 = load i64, i64* %arrayidx1112, align 8
  %shl1113 = shl i64 %723, 3
  %arrayidx1114 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %724 = load i64, i64* %arrayidx1114, align 8
  %shr1115 = lshr i64 %724, 61
  %or1116 = or i64 %shl1113, %shr1115
  %arrayidx1117 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %725 = load i64, i64* %arrayidx1117, align 8
  %shr1118 = lshr i64 %725, 6
  %xor1119 = xor i64 %or1116, %shr1118
  %xor1120 = xor i64 %or1111, %xor1119
  %arrayidx1121 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %726 = load i64, i64* %arrayidx1121, align 8
  %arrayidx1122 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %727 = load i64, i64* %arrayidx1122, align 8
  %shl1123 = shl i64 %727, 63
  %arrayidx1124 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %728 = load i64, i64* %arrayidx1124, align 8
  %shr1125 = lshr i64 %728, 1
  %or1126 = or i64 %shl1123, %shr1125
  %arrayidx1127 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %729 = load i64, i64* %arrayidx1127, align 8
  %shl1128 = shl i64 %729, 56
  %arrayidx1129 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %730 = load i64, i64* %arrayidx1129, align 8
  %shr1130 = lshr i64 %730, 8
  %or1131 = or i64 %shl1128, %shr1130
  %arrayidx1132 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %731 = load i64, i64* %arrayidx1132, align 8
  %shr1133 = lshr i64 %731, 7
  %xor1134 = xor i64 %or1131, %shr1133
  %xor1135 = xor i64 %or1126, %xor1134
  %add1136 = add i64 %726, %xor1135
  %add1137 = add i64 %xor1120, %add1136
  %add1138 = add i64 %720, %add1137
  %arrayidx1139 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  store i64 %add1138, i64* %arrayidx1139, align 8
  %add1140 = add i64 %719, %add1138
  %add1141 = add i64 %xor1105, %add1140
  %add1142 = add i64 %xor1102, %add1141
  %add1143 = add i64 %708, %add1142
  store i64 %add1143, i64* %t11091, align 8
  %732 = load i64, i64* %g, align 8
  %733 = load i64, i64* %t11091, align 8
  %add1144 = add i64 %732, %733
  store i64 %add1144, i64* %g, align 8
  %734 = load i64, i64* %t01074, align 8
  %735 = load i64, i64* %t11091, align 8
  %add1145 = add i64 %734, %735
  store i64 %add1145, i64* %c, align 8
  br label %do.end.1146

do.end.1146:                                      ; preds = %do.body.1073
  br label %do.body.1147

do.body.1147:                                     ; preds = %do.end.1146
  %736 = load i64, i64* %c, align 8
  %shl1149 = shl i64 %736, 36
  %737 = load i64, i64* %c, align 8
  %shr1150 = lshr i64 %737, 28
  %or1151 = or i64 %shl1149, %shr1150
  %738 = load i64, i64* %c, align 8
  %shl1152 = shl i64 %738, 30
  %739 = load i64, i64* %c, align 8
  %shr1153 = lshr i64 %739, 34
  %or1154 = or i64 %shl1152, %shr1153
  %740 = load i64, i64* %c, align 8
  %shl1155 = shl i64 %740, 25
  %741 = load i64, i64* %c, align 8
  %shr1156 = lshr i64 %741, 39
  %or1157 = or i64 %shl1155, %shr1156
  %xor1158 = xor i64 %or1154, %or1157
  %xor1159 = xor i64 %or1151, %xor1158
  %742 = load i64, i64* %c, align 8
  %743 = load i64, i64* %d, align 8
  %and1160 = and i64 %742, %743
  %744 = load i64, i64* %e, align 8
  %745 = load i64, i64* %c, align 8
  %746 = load i64, i64* %d, align 8
  %or1161 = or i64 %745, %746
  %and1162 = and i64 %744, %or1161
  %or1163 = or i64 %and1160, %and1162
  %add1164 = add i64 %xor1159, %or1163
  store i64 %add1164, i64* %t01148, align 8
  %747 = load i64, i64* %b, align 8
  %748 = load i64, i64* %g, align 8
  %shl1166 = shl i64 %748, 50
  %749 = load i64, i64* %g, align 8
  %shr1167 = lshr i64 %749, 14
  %or1168 = or i64 %shl1166, %shr1167
  %750 = load i64, i64* %g, align 8
  %shl1169 = shl i64 %750, 46
  %751 = load i64, i64* %g, align 8
  %shr1170 = lshr i64 %751, 18
  %or1171 = or i64 %shl1169, %shr1170
  %752 = load i64, i64* %g, align 8
  %shl1172 = shl i64 %752, 23
  %753 = load i64, i64* %g, align 8
  %shr1173 = lshr i64 %753, 41
  %or1174 = or i64 %shl1172, %shr1173
  %xor1175 = xor i64 %or1171, %or1174
  %xor1176 = xor i64 %or1168, %xor1175
  %754 = load i64, i64* %a, align 8
  %755 = load i64, i64* %g, align 8
  %756 = load i64, i64* %h, align 8
  %757 = load i64, i64* %a, align 8
  %xor1177 = xor i64 %756, %757
  %and1178 = and i64 %755, %xor1177
  %xor1179 = xor i64 %754, %and1178
  %758 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 22), align 8
  %arrayidx1180 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %759 = load i64, i64* %arrayidx1180, align 8
  %arrayidx1181 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %760 = load i64, i64* %arrayidx1181, align 8
  %shl1182 = shl i64 %760, 45
  %arrayidx1183 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %761 = load i64, i64* %arrayidx1183, align 8
  %shr1184 = lshr i64 %761, 19
  %or1185 = or i64 %shl1182, %shr1184
  %arrayidx1186 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %762 = load i64, i64* %arrayidx1186, align 8
  %shl1187 = shl i64 %762, 3
  %arrayidx1188 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %763 = load i64, i64* %arrayidx1188, align 8
  %shr1189 = lshr i64 %763, 61
  %or1190 = or i64 %shl1187, %shr1189
  %arrayidx1191 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %764 = load i64, i64* %arrayidx1191, align 8
  %shr1192 = lshr i64 %764, 6
  %xor1193 = xor i64 %or1190, %shr1192
  %xor1194 = xor i64 %or1185, %xor1193
  %arrayidx1195 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %765 = load i64, i64* %arrayidx1195, align 8
  %arrayidx1196 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %766 = load i64, i64* %arrayidx1196, align 8
  %shl1197 = shl i64 %766, 63
  %arrayidx1198 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %767 = load i64, i64* %arrayidx1198, align 8
  %shr1199 = lshr i64 %767, 1
  %or1200 = or i64 %shl1197, %shr1199
  %arrayidx1201 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %768 = load i64, i64* %arrayidx1201, align 8
  %shl1202 = shl i64 %768, 56
  %arrayidx1203 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %769 = load i64, i64* %arrayidx1203, align 8
  %shr1204 = lshr i64 %769, 8
  %or1205 = or i64 %shl1202, %shr1204
  %arrayidx1206 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %770 = load i64, i64* %arrayidx1206, align 8
  %shr1207 = lshr i64 %770, 7
  %xor1208 = xor i64 %or1205, %shr1207
  %xor1209 = xor i64 %or1200, %xor1208
  %add1210 = add i64 %765, %xor1209
  %add1211 = add i64 %xor1194, %add1210
  %add1212 = add i64 %759, %add1211
  %arrayidx1213 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  store i64 %add1212, i64* %arrayidx1213, align 8
  %add1214 = add i64 %758, %add1212
  %add1215 = add i64 %xor1179, %add1214
  %add1216 = add i64 %xor1176, %add1215
  %add1217 = add i64 %747, %add1216
  store i64 %add1217, i64* %t11165, align 8
  %771 = load i64, i64* %f, align 8
  %772 = load i64, i64* %t11165, align 8
  %add1218 = add i64 %771, %772
  store i64 %add1218, i64* %f, align 8
  %773 = load i64, i64* %t01148, align 8
  %774 = load i64, i64* %t11165, align 8
  %add1219 = add i64 %773, %774
  store i64 %add1219, i64* %b, align 8
  br label %do.end.1220

do.end.1220:                                      ; preds = %do.body.1147
  br label %do.body.1221

do.body.1221:                                     ; preds = %do.end.1220
  %775 = load i64, i64* %b, align 8
  %shl1223 = shl i64 %775, 36
  %776 = load i64, i64* %b, align 8
  %shr1224 = lshr i64 %776, 28
  %or1225 = or i64 %shl1223, %shr1224
  %777 = load i64, i64* %b, align 8
  %shl1226 = shl i64 %777, 30
  %778 = load i64, i64* %b, align 8
  %shr1227 = lshr i64 %778, 34
  %or1228 = or i64 %shl1226, %shr1227
  %779 = load i64, i64* %b, align 8
  %shl1229 = shl i64 %779, 25
  %780 = load i64, i64* %b, align 8
  %shr1230 = lshr i64 %780, 39
  %or1231 = or i64 %shl1229, %shr1230
  %xor1232 = xor i64 %or1228, %or1231
  %xor1233 = xor i64 %or1225, %xor1232
  %781 = load i64, i64* %b, align 8
  %782 = load i64, i64* %c, align 8
  %and1234 = and i64 %781, %782
  %783 = load i64, i64* %d, align 8
  %784 = load i64, i64* %b, align 8
  %785 = load i64, i64* %c, align 8
  %or1235 = or i64 %784, %785
  %and1236 = and i64 %783, %or1235
  %or1237 = or i64 %and1234, %and1236
  %add1238 = add i64 %xor1233, %or1237
  store i64 %add1238, i64* %t01222, align 8
  %786 = load i64, i64* %a, align 8
  %787 = load i64, i64* %f, align 8
  %shl1240 = shl i64 %787, 50
  %788 = load i64, i64* %f, align 8
  %shr1241 = lshr i64 %788, 14
  %or1242 = or i64 %shl1240, %shr1241
  %789 = load i64, i64* %f, align 8
  %shl1243 = shl i64 %789, 46
  %790 = load i64, i64* %f, align 8
  %shr1244 = lshr i64 %790, 18
  %or1245 = or i64 %shl1243, %shr1244
  %791 = load i64, i64* %f, align 8
  %shl1246 = shl i64 %791, 23
  %792 = load i64, i64* %f, align 8
  %shr1247 = lshr i64 %792, 41
  %or1248 = or i64 %shl1246, %shr1247
  %xor1249 = xor i64 %or1245, %or1248
  %xor1250 = xor i64 %or1242, %xor1249
  %793 = load i64, i64* %h, align 8
  %794 = load i64, i64* %f, align 8
  %795 = load i64, i64* %g, align 8
  %796 = load i64, i64* %h, align 8
  %xor1251 = xor i64 %795, %796
  %and1252 = and i64 %794, %xor1251
  %xor1253 = xor i64 %793, %and1252
  %797 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 23), align 8
  %arrayidx1254 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %798 = load i64, i64* %arrayidx1254, align 8
  %arrayidx1255 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %799 = load i64, i64* %arrayidx1255, align 8
  %shl1256 = shl i64 %799, 45
  %arrayidx1257 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %800 = load i64, i64* %arrayidx1257, align 8
  %shr1258 = lshr i64 %800, 19
  %or1259 = or i64 %shl1256, %shr1258
  %arrayidx1260 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %801 = load i64, i64* %arrayidx1260, align 8
  %shl1261 = shl i64 %801, 3
  %arrayidx1262 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %802 = load i64, i64* %arrayidx1262, align 8
  %shr1263 = lshr i64 %802, 61
  %or1264 = or i64 %shl1261, %shr1263
  %arrayidx1265 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %803 = load i64, i64* %arrayidx1265, align 8
  %shr1266 = lshr i64 %803, 6
  %xor1267 = xor i64 %or1264, %shr1266
  %xor1268 = xor i64 %or1259, %xor1267
  %arrayidx1269 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %804 = load i64, i64* %arrayidx1269, align 8
  %arrayidx1270 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %805 = load i64, i64* %arrayidx1270, align 8
  %shl1271 = shl i64 %805, 63
  %arrayidx1272 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %806 = load i64, i64* %arrayidx1272, align 8
  %shr1273 = lshr i64 %806, 1
  %or1274 = or i64 %shl1271, %shr1273
  %arrayidx1275 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %807 = load i64, i64* %arrayidx1275, align 8
  %shl1276 = shl i64 %807, 56
  %arrayidx1277 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %808 = load i64, i64* %arrayidx1277, align 8
  %shr1278 = lshr i64 %808, 8
  %or1279 = or i64 %shl1276, %shr1278
  %arrayidx1280 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %809 = load i64, i64* %arrayidx1280, align 8
  %shr1281 = lshr i64 %809, 7
  %xor1282 = xor i64 %or1279, %shr1281
  %xor1283 = xor i64 %or1274, %xor1282
  %add1284 = add i64 %804, %xor1283
  %add1285 = add i64 %xor1268, %add1284
  %add1286 = add i64 %798, %add1285
  %arrayidx1287 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  store i64 %add1286, i64* %arrayidx1287, align 8
  %add1288 = add i64 %797, %add1286
  %add1289 = add i64 %xor1253, %add1288
  %add1290 = add i64 %xor1250, %add1289
  %add1291 = add i64 %786, %add1290
  store i64 %add1291, i64* %t11239, align 8
  %810 = load i64, i64* %e, align 8
  %811 = load i64, i64* %t11239, align 8
  %add1292 = add i64 %810, %811
  store i64 %add1292, i64* %e, align 8
  %812 = load i64, i64* %t01222, align 8
  %813 = load i64, i64* %t11239, align 8
  %add1293 = add i64 %812, %813
  store i64 %add1293, i64* %a, align 8
  br label %do.end.1294

do.end.1294:                                      ; preds = %do.body.1221
  br label %do.body.1295

do.body.1295:                                     ; preds = %do.end.1294
  %814 = load i64, i64* %a, align 8
  %shl1297 = shl i64 %814, 36
  %815 = load i64, i64* %a, align 8
  %shr1298 = lshr i64 %815, 28
  %or1299 = or i64 %shl1297, %shr1298
  %816 = load i64, i64* %a, align 8
  %shl1300 = shl i64 %816, 30
  %817 = load i64, i64* %a, align 8
  %shr1301 = lshr i64 %817, 34
  %or1302 = or i64 %shl1300, %shr1301
  %818 = load i64, i64* %a, align 8
  %shl1303 = shl i64 %818, 25
  %819 = load i64, i64* %a, align 8
  %shr1304 = lshr i64 %819, 39
  %or1305 = or i64 %shl1303, %shr1304
  %xor1306 = xor i64 %or1302, %or1305
  %xor1307 = xor i64 %or1299, %xor1306
  %820 = load i64, i64* %a, align 8
  %821 = load i64, i64* %b, align 8
  %and1308 = and i64 %820, %821
  %822 = load i64, i64* %c, align 8
  %823 = load i64, i64* %a, align 8
  %824 = load i64, i64* %b, align 8
  %or1309 = or i64 %823, %824
  %and1310 = and i64 %822, %or1309
  %or1311 = or i64 %and1308, %and1310
  %add1312 = add i64 %xor1307, %or1311
  store i64 %add1312, i64* %t01296, align 8
  %825 = load i64, i64* %h, align 8
  %826 = load i64, i64* %e, align 8
  %shl1314 = shl i64 %826, 50
  %827 = load i64, i64* %e, align 8
  %shr1315 = lshr i64 %827, 14
  %or1316 = or i64 %shl1314, %shr1315
  %828 = load i64, i64* %e, align 8
  %shl1317 = shl i64 %828, 46
  %829 = load i64, i64* %e, align 8
  %shr1318 = lshr i64 %829, 18
  %or1319 = or i64 %shl1317, %shr1318
  %830 = load i64, i64* %e, align 8
  %shl1320 = shl i64 %830, 23
  %831 = load i64, i64* %e, align 8
  %shr1321 = lshr i64 %831, 41
  %or1322 = or i64 %shl1320, %shr1321
  %xor1323 = xor i64 %or1319, %or1322
  %xor1324 = xor i64 %or1316, %xor1323
  %832 = load i64, i64* %g, align 8
  %833 = load i64, i64* %e, align 8
  %834 = load i64, i64* %f, align 8
  %835 = load i64, i64* %g, align 8
  %xor1325 = xor i64 %834, %835
  %and1326 = and i64 %833, %xor1325
  %xor1327 = xor i64 %832, %and1326
  %836 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 24), align 8
  %arrayidx1328 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %837 = load i64, i64* %arrayidx1328, align 8
  %arrayidx1329 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %838 = load i64, i64* %arrayidx1329, align 8
  %shl1330 = shl i64 %838, 45
  %arrayidx1331 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %839 = load i64, i64* %arrayidx1331, align 8
  %shr1332 = lshr i64 %839, 19
  %or1333 = or i64 %shl1330, %shr1332
  %arrayidx1334 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %840 = load i64, i64* %arrayidx1334, align 8
  %shl1335 = shl i64 %840, 3
  %arrayidx1336 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %841 = load i64, i64* %arrayidx1336, align 8
  %shr1337 = lshr i64 %841, 61
  %or1338 = or i64 %shl1335, %shr1337
  %arrayidx1339 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %842 = load i64, i64* %arrayidx1339, align 8
  %shr1340 = lshr i64 %842, 6
  %xor1341 = xor i64 %or1338, %shr1340
  %xor1342 = xor i64 %or1333, %xor1341
  %arrayidx1343 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %843 = load i64, i64* %arrayidx1343, align 8
  %arrayidx1344 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %844 = load i64, i64* %arrayidx1344, align 8
  %shl1345 = shl i64 %844, 63
  %arrayidx1346 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %845 = load i64, i64* %arrayidx1346, align 8
  %shr1347 = lshr i64 %845, 1
  %or1348 = or i64 %shl1345, %shr1347
  %arrayidx1349 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %846 = load i64, i64* %arrayidx1349, align 8
  %shl1350 = shl i64 %846, 56
  %arrayidx1351 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %847 = load i64, i64* %arrayidx1351, align 8
  %shr1352 = lshr i64 %847, 8
  %or1353 = or i64 %shl1350, %shr1352
  %arrayidx1354 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %848 = load i64, i64* %arrayidx1354, align 8
  %shr1355 = lshr i64 %848, 7
  %xor1356 = xor i64 %or1353, %shr1355
  %xor1357 = xor i64 %or1348, %xor1356
  %add1358 = add i64 %843, %xor1357
  %add1359 = add i64 %xor1342, %add1358
  %add1360 = add i64 %837, %add1359
  %arrayidx1361 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  store i64 %add1360, i64* %arrayidx1361, align 8
  %add1362 = add i64 %836, %add1360
  %add1363 = add i64 %xor1327, %add1362
  %add1364 = add i64 %xor1324, %add1363
  %add1365 = add i64 %825, %add1364
  store i64 %add1365, i64* %t11313, align 8
  %849 = load i64, i64* %d, align 8
  %850 = load i64, i64* %t11313, align 8
  %add1366 = add i64 %849, %850
  store i64 %add1366, i64* %d, align 8
  %851 = load i64, i64* %t01296, align 8
  %852 = load i64, i64* %t11313, align 8
  %add1367 = add i64 %851, %852
  store i64 %add1367, i64* %h, align 8
  br label %do.end.1368

do.end.1368:                                      ; preds = %do.body.1295
  br label %do.body.1369

do.body.1369:                                     ; preds = %do.end.1368
  %853 = load i64, i64* %h, align 8
  %shl1371 = shl i64 %853, 36
  %854 = load i64, i64* %h, align 8
  %shr1372 = lshr i64 %854, 28
  %or1373 = or i64 %shl1371, %shr1372
  %855 = load i64, i64* %h, align 8
  %shl1374 = shl i64 %855, 30
  %856 = load i64, i64* %h, align 8
  %shr1375 = lshr i64 %856, 34
  %or1376 = or i64 %shl1374, %shr1375
  %857 = load i64, i64* %h, align 8
  %shl1377 = shl i64 %857, 25
  %858 = load i64, i64* %h, align 8
  %shr1378 = lshr i64 %858, 39
  %or1379 = or i64 %shl1377, %shr1378
  %xor1380 = xor i64 %or1376, %or1379
  %xor1381 = xor i64 %or1373, %xor1380
  %859 = load i64, i64* %h, align 8
  %860 = load i64, i64* %a, align 8
  %and1382 = and i64 %859, %860
  %861 = load i64, i64* %b, align 8
  %862 = load i64, i64* %h, align 8
  %863 = load i64, i64* %a, align 8
  %or1383 = or i64 %862, %863
  %and1384 = and i64 %861, %or1383
  %or1385 = or i64 %and1382, %and1384
  %add1386 = add i64 %xor1381, %or1385
  store i64 %add1386, i64* %t01370, align 8
  %864 = load i64, i64* %g, align 8
  %865 = load i64, i64* %d, align 8
  %shl1388 = shl i64 %865, 50
  %866 = load i64, i64* %d, align 8
  %shr1389 = lshr i64 %866, 14
  %or1390 = or i64 %shl1388, %shr1389
  %867 = load i64, i64* %d, align 8
  %shl1391 = shl i64 %867, 46
  %868 = load i64, i64* %d, align 8
  %shr1392 = lshr i64 %868, 18
  %or1393 = or i64 %shl1391, %shr1392
  %869 = load i64, i64* %d, align 8
  %shl1394 = shl i64 %869, 23
  %870 = load i64, i64* %d, align 8
  %shr1395 = lshr i64 %870, 41
  %or1396 = or i64 %shl1394, %shr1395
  %xor1397 = xor i64 %or1393, %or1396
  %xor1398 = xor i64 %or1390, %xor1397
  %871 = load i64, i64* %f, align 8
  %872 = load i64, i64* %d, align 8
  %873 = load i64, i64* %e, align 8
  %874 = load i64, i64* %f, align 8
  %xor1399 = xor i64 %873, %874
  %and1400 = and i64 %872, %xor1399
  %xor1401 = xor i64 %871, %and1400
  %875 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 25), align 8
  %arrayidx1402 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %876 = load i64, i64* %arrayidx1402, align 8
  %arrayidx1403 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %877 = load i64, i64* %arrayidx1403, align 8
  %shl1404 = shl i64 %877, 45
  %arrayidx1405 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %878 = load i64, i64* %arrayidx1405, align 8
  %shr1406 = lshr i64 %878, 19
  %or1407 = or i64 %shl1404, %shr1406
  %arrayidx1408 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %879 = load i64, i64* %arrayidx1408, align 8
  %shl1409 = shl i64 %879, 3
  %arrayidx1410 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %880 = load i64, i64* %arrayidx1410, align 8
  %shr1411 = lshr i64 %880, 61
  %or1412 = or i64 %shl1409, %shr1411
  %arrayidx1413 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %881 = load i64, i64* %arrayidx1413, align 8
  %shr1414 = lshr i64 %881, 6
  %xor1415 = xor i64 %or1412, %shr1414
  %xor1416 = xor i64 %or1407, %xor1415
  %arrayidx1417 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %882 = load i64, i64* %arrayidx1417, align 8
  %arrayidx1418 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %883 = load i64, i64* %arrayidx1418, align 8
  %shl1419 = shl i64 %883, 63
  %arrayidx1420 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %884 = load i64, i64* %arrayidx1420, align 8
  %shr1421 = lshr i64 %884, 1
  %or1422 = or i64 %shl1419, %shr1421
  %arrayidx1423 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %885 = load i64, i64* %arrayidx1423, align 8
  %shl1424 = shl i64 %885, 56
  %arrayidx1425 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %886 = load i64, i64* %arrayidx1425, align 8
  %shr1426 = lshr i64 %886, 8
  %or1427 = or i64 %shl1424, %shr1426
  %arrayidx1428 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %887 = load i64, i64* %arrayidx1428, align 8
  %shr1429 = lshr i64 %887, 7
  %xor1430 = xor i64 %or1427, %shr1429
  %xor1431 = xor i64 %or1422, %xor1430
  %add1432 = add i64 %882, %xor1431
  %add1433 = add i64 %xor1416, %add1432
  %add1434 = add i64 %876, %add1433
  %arrayidx1435 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  store i64 %add1434, i64* %arrayidx1435, align 8
  %add1436 = add i64 %875, %add1434
  %add1437 = add i64 %xor1401, %add1436
  %add1438 = add i64 %xor1398, %add1437
  %add1439 = add i64 %864, %add1438
  store i64 %add1439, i64* %t11387, align 8
  %888 = load i64, i64* %c, align 8
  %889 = load i64, i64* %t11387, align 8
  %add1440 = add i64 %888, %889
  store i64 %add1440, i64* %c, align 8
  %890 = load i64, i64* %t01370, align 8
  %891 = load i64, i64* %t11387, align 8
  %add1441 = add i64 %890, %891
  store i64 %add1441, i64* %g, align 8
  br label %do.end.1442

do.end.1442:                                      ; preds = %do.body.1369
  br label %do.body.1443

do.body.1443:                                     ; preds = %do.end.1442
  %892 = load i64, i64* %g, align 8
  %shl1445 = shl i64 %892, 36
  %893 = load i64, i64* %g, align 8
  %shr1446 = lshr i64 %893, 28
  %or1447 = or i64 %shl1445, %shr1446
  %894 = load i64, i64* %g, align 8
  %shl1448 = shl i64 %894, 30
  %895 = load i64, i64* %g, align 8
  %shr1449 = lshr i64 %895, 34
  %or1450 = or i64 %shl1448, %shr1449
  %896 = load i64, i64* %g, align 8
  %shl1451 = shl i64 %896, 25
  %897 = load i64, i64* %g, align 8
  %shr1452 = lshr i64 %897, 39
  %or1453 = or i64 %shl1451, %shr1452
  %xor1454 = xor i64 %or1450, %or1453
  %xor1455 = xor i64 %or1447, %xor1454
  %898 = load i64, i64* %g, align 8
  %899 = load i64, i64* %h, align 8
  %and1456 = and i64 %898, %899
  %900 = load i64, i64* %a, align 8
  %901 = load i64, i64* %g, align 8
  %902 = load i64, i64* %h, align 8
  %or1457 = or i64 %901, %902
  %and1458 = and i64 %900, %or1457
  %or1459 = or i64 %and1456, %and1458
  %add1460 = add i64 %xor1455, %or1459
  store i64 %add1460, i64* %t01444, align 8
  %903 = load i64, i64* %f, align 8
  %904 = load i64, i64* %c, align 8
  %shl1462 = shl i64 %904, 50
  %905 = load i64, i64* %c, align 8
  %shr1463 = lshr i64 %905, 14
  %or1464 = or i64 %shl1462, %shr1463
  %906 = load i64, i64* %c, align 8
  %shl1465 = shl i64 %906, 46
  %907 = load i64, i64* %c, align 8
  %shr1466 = lshr i64 %907, 18
  %or1467 = or i64 %shl1465, %shr1466
  %908 = load i64, i64* %c, align 8
  %shl1468 = shl i64 %908, 23
  %909 = load i64, i64* %c, align 8
  %shr1469 = lshr i64 %909, 41
  %or1470 = or i64 %shl1468, %shr1469
  %xor1471 = xor i64 %or1467, %or1470
  %xor1472 = xor i64 %or1464, %xor1471
  %910 = load i64, i64* %e, align 8
  %911 = load i64, i64* %c, align 8
  %912 = load i64, i64* %d, align 8
  %913 = load i64, i64* %e, align 8
  %xor1473 = xor i64 %912, %913
  %and1474 = and i64 %911, %xor1473
  %xor1475 = xor i64 %910, %and1474
  %914 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 26), align 8
  %arrayidx1476 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %915 = load i64, i64* %arrayidx1476, align 8
  %arrayidx1477 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %916 = load i64, i64* %arrayidx1477, align 8
  %shl1478 = shl i64 %916, 45
  %arrayidx1479 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %917 = load i64, i64* %arrayidx1479, align 8
  %shr1480 = lshr i64 %917, 19
  %or1481 = or i64 %shl1478, %shr1480
  %arrayidx1482 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %918 = load i64, i64* %arrayidx1482, align 8
  %shl1483 = shl i64 %918, 3
  %arrayidx1484 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %919 = load i64, i64* %arrayidx1484, align 8
  %shr1485 = lshr i64 %919, 61
  %or1486 = or i64 %shl1483, %shr1485
  %arrayidx1487 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %920 = load i64, i64* %arrayidx1487, align 8
  %shr1488 = lshr i64 %920, 6
  %xor1489 = xor i64 %or1486, %shr1488
  %xor1490 = xor i64 %or1481, %xor1489
  %arrayidx1491 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %921 = load i64, i64* %arrayidx1491, align 8
  %arrayidx1492 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %922 = load i64, i64* %arrayidx1492, align 8
  %shl1493 = shl i64 %922, 63
  %arrayidx1494 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %923 = load i64, i64* %arrayidx1494, align 8
  %shr1495 = lshr i64 %923, 1
  %or1496 = or i64 %shl1493, %shr1495
  %arrayidx1497 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %924 = load i64, i64* %arrayidx1497, align 8
  %shl1498 = shl i64 %924, 56
  %arrayidx1499 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %925 = load i64, i64* %arrayidx1499, align 8
  %shr1500 = lshr i64 %925, 8
  %or1501 = or i64 %shl1498, %shr1500
  %arrayidx1502 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %926 = load i64, i64* %arrayidx1502, align 8
  %shr1503 = lshr i64 %926, 7
  %xor1504 = xor i64 %or1501, %shr1503
  %xor1505 = xor i64 %or1496, %xor1504
  %add1506 = add i64 %921, %xor1505
  %add1507 = add i64 %xor1490, %add1506
  %add1508 = add i64 %915, %add1507
  %arrayidx1509 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  store i64 %add1508, i64* %arrayidx1509, align 8
  %add1510 = add i64 %914, %add1508
  %add1511 = add i64 %xor1475, %add1510
  %add1512 = add i64 %xor1472, %add1511
  %add1513 = add i64 %903, %add1512
  store i64 %add1513, i64* %t11461, align 8
  %927 = load i64, i64* %b, align 8
  %928 = load i64, i64* %t11461, align 8
  %add1514 = add i64 %927, %928
  store i64 %add1514, i64* %b, align 8
  %929 = load i64, i64* %t01444, align 8
  %930 = load i64, i64* %t11461, align 8
  %add1515 = add i64 %929, %930
  store i64 %add1515, i64* %f, align 8
  br label %do.end.1516

do.end.1516:                                      ; preds = %do.body.1443
  br label %do.body.1517

do.body.1517:                                     ; preds = %do.end.1516
  %931 = load i64, i64* %f, align 8
  %shl1519 = shl i64 %931, 36
  %932 = load i64, i64* %f, align 8
  %shr1520 = lshr i64 %932, 28
  %or1521 = or i64 %shl1519, %shr1520
  %933 = load i64, i64* %f, align 8
  %shl1522 = shl i64 %933, 30
  %934 = load i64, i64* %f, align 8
  %shr1523 = lshr i64 %934, 34
  %or1524 = or i64 %shl1522, %shr1523
  %935 = load i64, i64* %f, align 8
  %shl1525 = shl i64 %935, 25
  %936 = load i64, i64* %f, align 8
  %shr1526 = lshr i64 %936, 39
  %or1527 = or i64 %shl1525, %shr1526
  %xor1528 = xor i64 %or1524, %or1527
  %xor1529 = xor i64 %or1521, %xor1528
  %937 = load i64, i64* %f, align 8
  %938 = load i64, i64* %g, align 8
  %and1530 = and i64 %937, %938
  %939 = load i64, i64* %h, align 8
  %940 = load i64, i64* %f, align 8
  %941 = load i64, i64* %g, align 8
  %or1531 = or i64 %940, %941
  %and1532 = and i64 %939, %or1531
  %or1533 = or i64 %and1530, %and1532
  %add1534 = add i64 %xor1529, %or1533
  store i64 %add1534, i64* %t01518, align 8
  %942 = load i64, i64* %e, align 8
  %943 = load i64, i64* %b, align 8
  %shl1536 = shl i64 %943, 50
  %944 = load i64, i64* %b, align 8
  %shr1537 = lshr i64 %944, 14
  %or1538 = or i64 %shl1536, %shr1537
  %945 = load i64, i64* %b, align 8
  %shl1539 = shl i64 %945, 46
  %946 = load i64, i64* %b, align 8
  %shr1540 = lshr i64 %946, 18
  %or1541 = or i64 %shl1539, %shr1540
  %947 = load i64, i64* %b, align 8
  %shl1542 = shl i64 %947, 23
  %948 = load i64, i64* %b, align 8
  %shr1543 = lshr i64 %948, 41
  %or1544 = or i64 %shl1542, %shr1543
  %xor1545 = xor i64 %or1541, %or1544
  %xor1546 = xor i64 %or1538, %xor1545
  %949 = load i64, i64* %d, align 8
  %950 = load i64, i64* %b, align 8
  %951 = load i64, i64* %c, align 8
  %952 = load i64, i64* %d, align 8
  %xor1547 = xor i64 %951, %952
  %and1548 = and i64 %950, %xor1547
  %xor1549 = xor i64 %949, %and1548
  %953 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 27), align 8
  %arrayidx1550 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %954 = load i64, i64* %arrayidx1550, align 8
  %arrayidx1551 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %955 = load i64, i64* %arrayidx1551, align 8
  %shl1552 = shl i64 %955, 45
  %arrayidx1553 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %956 = load i64, i64* %arrayidx1553, align 8
  %shr1554 = lshr i64 %956, 19
  %or1555 = or i64 %shl1552, %shr1554
  %arrayidx1556 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %957 = load i64, i64* %arrayidx1556, align 8
  %shl1557 = shl i64 %957, 3
  %arrayidx1558 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %958 = load i64, i64* %arrayidx1558, align 8
  %shr1559 = lshr i64 %958, 61
  %or1560 = or i64 %shl1557, %shr1559
  %arrayidx1561 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %959 = load i64, i64* %arrayidx1561, align 8
  %shr1562 = lshr i64 %959, 6
  %xor1563 = xor i64 %or1560, %shr1562
  %xor1564 = xor i64 %or1555, %xor1563
  %arrayidx1565 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %960 = load i64, i64* %arrayidx1565, align 8
  %arrayidx1566 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %961 = load i64, i64* %arrayidx1566, align 8
  %shl1567 = shl i64 %961, 63
  %arrayidx1568 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %962 = load i64, i64* %arrayidx1568, align 8
  %shr1569 = lshr i64 %962, 1
  %or1570 = or i64 %shl1567, %shr1569
  %arrayidx1571 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %963 = load i64, i64* %arrayidx1571, align 8
  %shl1572 = shl i64 %963, 56
  %arrayidx1573 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %964 = load i64, i64* %arrayidx1573, align 8
  %shr1574 = lshr i64 %964, 8
  %or1575 = or i64 %shl1572, %shr1574
  %arrayidx1576 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %965 = load i64, i64* %arrayidx1576, align 8
  %shr1577 = lshr i64 %965, 7
  %xor1578 = xor i64 %or1575, %shr1577
  %xor1579 = xor i64 %or1570, %xor1578
  %add1580 = add i64 %960, %xor1579
  %add1581 = add i64 %xor1564, %add1580
  %add1582 = add i64 %954, %add1581
  %arrayidx1583 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  store i64 %add1582, i64* %arrayidx1583, align 8
  %add1584 = add i64 %953, %add1582
  %add1585 = add i64 %xor1549, %add1584
  %add1586 = add i64 %xor1546, %add1585
  %add1587 = add i64 %942, %add1586
  store i64 %add1587, i64* %t11535, align 8
  %966 = load i64, i64* %a, align 8
  %967 = load i64, i64* %t11535, align 8
  %add1588 = add i64 %966, %967
  store i64 %add1588, i64* %a, align 8
  %968 = load i64, i64* %t01518, align 8
  %969 = load i64, i64* %t11535, align 8
  %add1589 = add i64 %968, %969
  store i64 %add1589, i64* %e, align 8
  br label %do.end.1590

do.end.1590:                                      ; preds = %do.body.1517
  br label %do.body.1591

do.body.1591:                                     ; preds = %do.end.1590
  %970 = load i64, i64* %e, align 8
  %shl1593 = shl i64 %970, 36
  %971 = load i64, i64* %e, align 8
  %shr1594 = lshr i64 %971, 28
  %or1595 = or i64 %shl1593, %shr1594
  %972 = load i64, i64* %e, align 8
  %shl1596 = shl i64 %972, 30
  %973 = load i64, i64* %e, align 8
  %shr1597 = lshr i64 %973, 34
  %or1598 = or i64 %shl1596, %shr1597
  %974 = load i64, i64* %e, align 8
  %shl1599 = shl i64 %974, 25
  %975 = load i64, i64* %e, align 8
  %shr1600 = lshr i64 %975, 39
  %or1601 = or i64 %shl1599, %shr1600
  %xor1602 = xor i64 %or1598, %or1601
  %xor1603 = xor i64 %or1595, %xor1602
  %976 = load i64, i64* %e, align 8
  %977 = load i64, i64* %f, align 8
  %and1604 = and i64 %976, %977
  %978 = load i64, i64* %g, align 8
  %979 = load i64, i64* %e, align 8
  %980 = load i64, i64* %f, align 8
  %or1605 = or i64 %979, %980
  %and1606 = and i64 %978, %or1605
  %or1607 = or i64 %and1604, %and1606
  %add1608 = add i64 %xor1603, %or1607
  store i64 %add1608, i64* %t01592, align 8
  %981 = load i64, i64* %d, align 8
  %982 = load i64, i64* %a, align 8
  %shl1610 = shl i64 %982, 50
  %983 = load i64, i64* %a, align 8
  %shr1611 = lshr i64 %983, 14
  %or1612 = or i64 %shl1610, %shr1611
  %984 = load i64, i64* %a, align 8
  %shl1613 = shl i64 %984, 46
  %985 = load i64, i64* %a, align 8
  %shr1614 = lshr i64 %985, 18
  %or1615 = or i64 %shl1613, %shr1614
  %986 = load i64, i64* %a, align 8
  %shl1616 = shl i64 %986, 23
  %987 = load i64, i64* %a, align 8
  %shr1617 = lshr i64 %987, 41
  %or1618 = or i64 %shl1616, %shr1617
  %xor1619 = xor i64 %or1615, %or1618
  %xor1620 = xor i64 %or1612, %xor1619
  %988 = load i64, i64* %c, align 8
  %989 = load i64, i64* %a, align 8
  %990 = load i64, i64* %b, align 8
  %991 = load i64, i64* %c, align 8
  %xor1621 = xor i64 %990, %991
  %and1622 = and i64 %989, %xor1621
  %xor1623 = xor i64 %988, %and1622
  %992 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 28), align 8
  %arrayidx1624 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %993 = load i64, i64* %arrayidx1624, align 8
  %arrayidx1625 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %994 = load i64, i64* %arrayidx1625, align 8
  %shl1626 = shl i64 %994, 45
  %arrayidx1627 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %995 = load i64, i64* %arrayidx1627, align 8
  %shr1628 = lshr i64 %995, 19
  %or1629 = or i64 %shl1626, %shr1628
  %arrayidx1630 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %996 = load i64, i64* %arrayidx1630, align 8
  %shl1631 = shl i64 %996, 3
  %arrayidx1632 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %997 = load i64, i64* %arrayidx1632, align 8
  %shr1633 = lshr i64 %997, 61
  %or1634 = or i64 %shl1631, %shr1633
  %arrayidx1635 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %998 = load i64, i64* %arrayidx1635, align 8
  %shr1636 = lshr i64 %998, 6
  %xor1637 = xor i64 %or1634, %shr1636
  %xor1638 = xor i64 %or1629, %xor1637
  %arrayidx1639 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %999 = load i64, i64* %arrayidx1639, align 8
  %arrayidx1640 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1000 = load i64, i64* %arrayidx1640, align 8
  %shl1641 = shl i64 %1000, 63
  %arrayidx1642 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1001 = load i64, i64* %arrayidx1642, align 8
  %shr1643 = lshr i64 %1001, 1
  %or1644 = or i64 %shl1641, %shr1643
  %arrayidx1645 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1002 = load i64, i64* %arrayidx1645, align 8
  %shl1646 = shl i64 %1002, 56
  %arrayidx1647 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1003 = load i64, i64* %arrayidx1647, align 8
  %shr1648 = lshr i64 %1003, 8
  %or1649 = or i64 %shl1646, %shr1648
  %arrayidx1650 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1004 = load i64, i64* %arrayidx1650, align 8
  %shr1651 = lshr i64 %1004, 7
  %xor1652 = xor i64 %or1649, %shr1651
  %xor1653 = xor i64 %or1644, %xor1652
  %add1654 = add i64 %999, %xor1653
  %add1655 = add i64 %xor1638, %add1654
  %add1656 = add i64 %993, %add1655
  %arrayidx1657 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  store i64 %add1656, i64* %arrayidx1657, align 8
  %add1658 = add i64 %992, %add1656
  %add1659 = add i64 %xor1623, %add1658
  %add1660 = add i64 %xor1620, %add1659
  %add1661 = add i64 %981, %add1660
  store i64 %add1661, i64* %t11609, align 8
  %1005 = load i64, i64* %h, align 8
  %1006 = load i64, i64* %t11609, align 8
  %add1662 = add i64 %1005, %1006
  store i64 %add1662, i64* %h, align 8
  %1007 = load i64, i64* %t01592, align 8
  %1008 = load i64, i64* %t11609, align 8
  %add1663 = add i64 %1007, %1008
  store i64 %add1663, i64* %d, align 8
  br label %do.end.1664

do.end.1664:                                      ; preds = %do.body.1591
  br label %do.body.1665

do.body.1665:                                     ; preds = %do.end.1664
  %1009 = load i64, i64* %d, align 8
  %shl1667 = shl i64 %1009, 36
  %1010 = load i64, i64* %d, align 8
  %shr1668 = lshr i64 %1010, 28
  %or1669 = or i64 %shl1667, %shr1668
  %1011 = load i64, i64* %d, align 8
  %shl1670 = shl i64 %1011, 30
  %1012 = load i64, i64* %d, align 8
  %shr1671 = lshr i64 %1012, 34
  %or1672 = or i64 %shl1670, %shr1671
  %1013 = load i64, i64* %d, align 8
  %shl1673 = shl i64 %1013, 25
  %1014 = load i64, i64* %d, align 8
  %shr1674 = lshr i64 %1014, 39
  %or1675 = or i64 %shl1673, %shr1674
  %xor1676 = xor i64 %or1672, %or1675
  %xor1677 = xor i64 %or1669, %xor1676
  %1015 = load i64, i64* %d, align 8
  %1016 = load i64, i64* %e, align 8
  %and1678 = and i64 %1015, %1016
  %1017 = load i64, i64* %f, align 8
  %1018 = load i64, i64* %d, align 8
  %1019 = load i64, i64* %e, align 8
  %or1679 = or i64 %1018, %1019
  %and1680 = and i64 %1017, %or1679
  %or1681 = or i64 %and1678, %and1680
  %add1682 = add i64 %xor1677, %or1681
  store i64 %add1682, i64* %t01666, align 8
  %1020 = load i64, i64* %c, align 8
  %1021 = load i64, i64* %h, align 8
  %shl1684 = shl i64 %1021, 50
  %1022 = load i64, i64* %h, align 8
  %shr1685 = lshr i64 %1022, 14
  %or1686 = or i64 %shl1684, %shr1685
  %1023 = load i64, i64* %h, align 8
  %shl1687 = shl i64 %1023, 46
  %1024 = load i64, i64* %h, align 8
  %shr1688 = lshr i64 %1024, 18
  %or1689 = or i64 %shl1687, %shr1688
  %1025 = load i64, i64* %h, align 8
  %shl1690 = shl i64 %1025, 23
  %1026 = load i64, i64* %h, align 8
  %shr1691 = lshr i64 %1026, 41
  %or1692 = or i64 %shl1690, %shr1691
  %xor1693 = xor i64 %or1689, %or1692
  %xor1694 = xor i64 %or1686, %xor1693
  %1027 = load i64, i64* %b, align 8
  %1028 = load i64, i64* %h, align 8
  %1029 = load i64, i64* %a, align 8
  %1030 = load i64, i64* %b, align 8
  %xor1695 = xor i64 %1029, %1030
  %and1696 = and i64 %1028, %xor1695
  %xor1697 = xor i64 %1027, %and1696
  %1031 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 29), align 8
  %arrayidx1698 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1032 = load i64, i64* %arrayidx1698, align 8
  %arrayidx1699 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1033 = load i64, i64* %arrayidx1699, align 8
  %shl1700 = shl i64 %1033, 45
  %arrayidx1701 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1034 = load i64, i64* %arrayidx1701, align 8
  %shr1702 = lshr i64 %1034, 19
  %or1703 = or i64 %shl1700, %shr1702
  %arrayidx1704 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1035 = load i64, i64* %arrayidx1704, align 8
  %shl1705 = shl i64 %1035, 3
  %arrayidx1706 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1036 = load i64, i64* %arrayidx1706, align 8
  %shr1707 = lshr i64 %1036, 61
  %or1708 = or i64 %shl1705, %shr1707
  %arrayidx1709 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1037 = load i64, i64* %arrayidx1709, align 8
  %shr1710 = lshr i64 %1037, 6
  %xor1711 = xor i64 %or1708, %shr1710
  %xor1712 = xor i64 %or1703, %xor1711
  %arrayidx1713 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1038 = load i64, i64* %arrayidx1713, align 8
  %arrayidx1714 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1039 = load i64, i64* %arrayidx1714, align 8
  %shl1715 = shl i64 %1039, 63
  %arrayidx1716 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1040 = load i64, i64* %arrayidx1716, align 8
  %shr1717 = lshr i64 %1040, 1
  %or1718 = or i64 %shl1715, %shr1717
  %arrayidx1719 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1041 = load i64, i64* %arrayidx1719, align 8
  %shl1720 = shl i64 %1041, 56
  %arrayidx1721 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1042 = load i64, i64* %arrayidx1721, align 8
  %shr1722 = lshr i64 %1042, 8
  %or1723 = or i64 %shl1720, %shr1722
  %arrayidx1724 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1043 = load i64, i64* %arrayidx1724, align 8
  %shr1725 = lshr i64 %1043, 7
  %xor1726 = xor i64 %or1723, %shr1725
  %xor1727 = xor i64 %or1718, %xor1726
  %add1728 = add i64 %1038, %xor1727
  %add1729 = add i64 %xor1712, %add1728
  %add1730 = add i64 %1032, %add1729
  %arrayidx1731 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  store i64 %add1730, i64* %arrayidx1731, align 8
  %add1732 = add i64 %1031, %add1730
  %add1733 = add i64 %xor1697, %add1732
  %add1734 = add i64 %xor1694, %add1733
  %add1735 = add i64 %1020, %add1734
  store i64 %add1735, i64* %t11683, align 8
  %1044 = load i64, i64* %g, align 8
  %1045 = load i64, i64* %t11683, align 8
  %add1736 = add i64 %1044, %1045
  store i64 %add1736, i64* %g, align 8
  %1046 = load i64, i64* %t01666, align 8
  %1047 = load i64, i64* %t11683, align 8
  %add1737 = add i64 %1046, %1047
  store i64 %add1737, i64* %c, align 8
  br label %do.end.1738

do.end.1738:                                      ; preds = %do.body.1665
  br label %do.body.1739

do.body.1739:                                     ; preds = %do.end.1738
  %1048 = load i64, i64* %c, align 8
  %shl1741 = shl i64 %1048, 36
  %1049 = load i64, i64* %c, align 8
  %shr1742 = lshr i64 %1049, 28
  %or1743 = or i64 %shl1741, %shr1742
  %1050 = load i64, i64* %c, align 8
  %shl1744 = shl i64 %1050, 30
  %1051 = load i64, i64* %c, align 8
  %shr1745 = lshr i64 %1051, 34
  %or1746 = or i64 %shl1744, %shr1745
  %1052 = load i64, i64* %c, align 8
  %shl1747 = shl i64 %1052, 25
  %1053 = load i64, i64* %c, align 8
  %shr1748 = lshr i64 %1053, 39
  %or1749 = or i64 %shl1747, %shr1748
  %xor1750 = xor i64 %or1746, %or1749
  %xor1751 = xor i64 %or1743, %xor1750
  %1054 = load i64, i64* %c, align 8
  %1055 = load i64, i64* %d, align 8
  %and1752 = and i64 %1054, %1055
  %1056 = load i64, i64* %e, align 8
  %1057 = load i64, i64* %c, align 8
  %1058 = load i64, i64* %d, align 8
  %or1753 = or i64 %1057, %1058
  %and1754 = and i64 %1056, %or1753
  %or1755 = or i64 %and1752, %and1754
  %add1756 = add i64 %xor1751, %or1755
  store i64 %add1756, i64* %t01740, align 8
  %1059 = load i64, i64* %b, align 8
  %1060 = load i64, i64* %g, align 8
  %shl1758 = shl i64 %1060, 50
  %1061 = load i64, i64* %g, align 8
  %shr1759 = lshr i64 %1061, 14
  %or1760 = or i64 %shl1758, %shr1759
  %1062 = load i64, i64* %g, align 8
  %shl1761 = shl i64 %1062, 46
  %1063 = load i64, i64* %g, align 8
  %shr1762 = lshr i64 %1063, 18
  %or1763 = or i64 %shl1761, %shr1762
  %1064 = load i64, i64* %g, align 8
  %shl1764 = shl i64 %1064, 23
  %1065 = load i64, i64* %g, align 8
  %shr1765 = lshr i64 %1065, 41
  %or1766 = or i64 %shl1764, %shr1765
  %xor1767 = xor i64 %or1763, %or1766
  %xor1768 = xor i64 %or1760, %xor1767
  %1066 = load i64, i64* %a, align 8
  %1067 = load i64, i64* %g, align 8
  %1068 = load i64, i64* %h, align 8
  %1069 = load i64, i64* %a, align 8
  %xor1769 = xor i64 %1068, %1069
  %and1770 = and i64 %1067, %xor1769
  %xor1771 = xor i64 %1066, %and1770
  %1070 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 30), align 8
  %arrayidx1772 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1071 = load i64, i64* %arrayidx1772, align 8
  %arrayidx1773 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1072 = load i64, i64* %arrayidx1773, align 8
  %shl1774 = shl i64 %1072, 45
  %arrayidx1775 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1073 = load i64, i64* %arrayidx1775, align 8
  %shr1776 = lshr i64 %1073, 19
  %or1777 = or i64 %shl1774, %shr1776
  %arrayidx1778 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1074 = load i64, i64* %arrayidx1778, align 8
  %shl1779 = shl i64 %1074, 3
  %arrayidx1780 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1075 = load i64, i64* %arrayidx1780, align 8
  %shr1781 = lshr i64 %1075, 61
  %or1782 = or i64 %shl1779, %shr1781
  %arrayidx1783 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1076 = load i64, i64* %arrayidx1783, align 8
  %shr1784 = lshr i64 %1076, 6
  %xor1785 = xor i64 %or1782, %shr1784
  %xor1786 = xor i64 %or1777, %xor1785
  %arrayidx1787 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1077 = load i64, i64* %arrayidx1787, align 8
  %arrayidx1788 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1078 = load i64, i64* %arrayidx1788, align 8
  %shl1789 = shl i64 %1078, 63
  %arrayidx1790 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1079 = load i64, i64* %arrayidx1790, align 8
  %shr1791 = lshr i64 %1079, 1
  %or1792 = or i64 %shl1789, %shr1791
  %arrayidx1793 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1080 = load i64, i64* %arrayidx1793, align 8
  %shl1794 = shl i64 %1080, 56
  %arrayidx1795 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1081 = load i64, i64* %arrayidx1795, align 8
  %shr1796 = lshr i64 %1081, 8
  %or1797 = or i64 %shl1794, %shr1796
  %arrayidx1798 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1082 = load i64, i64* %arrayidx1798, align 8
  %shr1799 = lshr i64 %1082, 7
  %xor1800 = xor i64 %or1797, %shr1799
  %xor1801 = xor i64 %or1792, %xor1800
  %add1802 = add i64 %1077, %xor1801
  %add1803 = add i64 %xor1786, %add1802
  %add1804 = add i64 %1071, %add1803
  %arrayidx1805 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  store i64 %add1804, i64* %arrayidx1805, align 8
  %add1806 = add i64 %1070, %add1804
  %add1807 = add i64 %xor1771, %add1806
  %add1808 = add i64 %xor1768, %add1807
  %add1809 = add i64 %1059, %add1808
  store i64 %add1809, i64* %t11757, align 8
  %1083 = load i64, i64* %f, align 8
  %1084 = load i64, i64* %t11757, align 8
  %add1810 = add i64 %1083, %1084
  store i64 %add1810, i64* %f, align 8
  %1085 = load i64, i64* %t01740, align 8
  %1086 = load i64, i64* %t11757, align 8
  %add1811 = add i64 %1085, %1086
  store i64 %add1811, i64* %b, align 8
  br label %do.end.1812

do.end.1812:                                      ; preds = %do.body.1739
  br label %do.body.1813

do.body.1813:                                     ; preds = %do.end.1812
  %1087 = load i64, i64* %b, align 8
  %shl1815 = shl i64 %1087, 36
  %1088 = load i64, i64* %b, align 8
  %shr1816 = lshr i64 %1088, 28
  %or1817 = or i64 %shl1815, %shr1816
  %1089 = load i64, i64* %b, align 8
  %shl1818 = shl i64 %1089, 30
  %1090 = load i64, i64* %b, align 8
  %shr1819 = lshr i64 %1090, 34
  %or1820 = or i64 %shl1818, %shr1819
  %1091 = load i64, i64* %b, align 8
  %shl1821 = shl i64 %1091, 25
  %1092 = load i64, i64* %b, align 8
  %shr1822 = lshr i64 %1092, 39
  %or1823 = or i64 %shl1821, %shr1822
  %xor1824 = xor i64 %or1820, %or1823
  %xor1825 = xor i64 %or1817, %xor1824
  %1093 = load i64, i64* %b, align 8
  %1094 = load i64, i64* %c, align 8
  %and1826 = and i64 %1093, %1094
  %1095 = load i64, i64* %d, align 8
  %1096 = load i64, i64* %b, align 8
  %1097 = load i64, i64* %c, align 8
  %or1827 = or i64 %1096, %1097
  %and1828 = and i64 %1095, %or1827
  %or1829 = or i64 %and1826, %and1828
  %add1830 = add i64 %xor1825, %or1829
  store i64 %add1830, i64* %t01814, align 8
  %1098 = load i64, i64* %a, align 8
  %1099 = load i64, i64* %f, align 8
  %shl1832 = shl i64 %1099, 50
  %1100 = load i64, i64* %f, align 8
  %shr1833 = lshr i64 %1100, 14
  %or1834 = or i64 %shl1832, %shr1833
  %1101 = load i64, i64* %f, align 8
  %shl1835 = shl i64 %1101, 46
  %1102 = load i64, i64* %f, align 8
  %shr1836 = lshr i64 %1102, 18
  %or1837 = or i64 %shl1835, %shr1836
  %1103 = load i64, i64* %f, align 8
  %shl1838 = shl i64 %1103, 23
  %1104 = load i64, i64* %f, align 8
  %shr1839 = lshr i64 %1104, 41
  %or1840 = or i64 %shl1838, %shr1839
  %xor1841 = xor i64 %or1837, %or1840
  %xor1842 = xor i64 %or1834, %xor1841
  %1105 = load i64, i64* %h, align 8
  %1106 = load i64, i64* %f, align 8
  %1107 = load i64, i64* %g, align 8
  %1108 = load i64, i64* %h, align 8
  %xor1843 = xor i64 %1107, %1108
  %and1844 = and i64 %1106, %xor1843
  %xor1845 = xor i64 %1105, %and1844
  %1109 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 31), align 8
  %arrayidx1846 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1110 = load i64, i64* %arrayidx1846, align 8
  %arrayidx1847 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1111 = load i64, i64* %arrayidx1847, align 8
  %shl1848 = shl i64 %1111, 45
  %arrayidx1849 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1112 = load i64, i64* %arrayidx1849, align 8
  %shr1850 = lshr i64 %1112, 19
  %or1851 = or i64 %shl1848, %shr1850
  %arrayidx1852 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1113 = load i64, i64* %arrayidx1852, align 8
  %shl1853 = shl i64 %1113, 3
  %arrayidx1854 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1114 = load i64, i64* %arrayidx1854, align 8
  %shr1855 = lshr i64 %1114, 61
  %or1856 = or i64 %shl1853, %shr1855
  %arrayidx1857 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1115 = load i64, i64* %arrayidx1857, align 8
  %shr1858 = lshr i64 %1115, 6
  %xor1859 = xor i64 %or1856, %shr1858
  %xor1860 = xor i64 %or1851, %xor1859
  %arrayidx1861 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1116 = load i64, i64* %arrayidx1861, align 8
  %arrayidx1862 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1117 = load i64, i64* %arrayidx1862, align 8
  %shl1863 = shl i64 %1117, 63
  %arrayidx1864 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1118 = load i64, i64* %arrayidx1864, align 8
  %shr1865 = lshr i64 %1118, 1
  %or1866 = or i64 %shl1863, %shr1865
  %arrayidx1867 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1119 = load i64, i64* %arrayidx1867, align 8
  %shl1868 = shl i64 %1119, 56
  %arrayidx1869 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1120 = load i64, i64* %arrayidx1869, align 8
  %shr1870 = lshr i64 %1120, 8
  %or1871 = or i64 %shl1868, %shr1870
  %arrayidx1872 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1121 = load i64, i64* %arrayidx1872, align 8
  %shr1873 = lshr i64 %1121, 7
  %xor1874 = xor i64 %or1871, %shr1873
  %xor1875 = xor i64 %or1866, %xor1874
  %add1876 = add i64 %1116, %xor1875
  %add1877 = add i64 %xor1860, %add1876
  %add1878 = add i64 %1110, %add1877
  %arrayidx1879 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  store i64 %add1878, i64* %arrayidx1879, align 8
  %add1880 = add i64 %1109, %add1878
  %add1881 = add i64 %xor1845, %add1880
  %add1882 = add i64 %xor1842, %add1881
  %add1883 = add i64 %1098, %add1882
  store i64 %add1883, i64* %t11831, align 8
  %1122 = load i64, i64* %e, align 8
  %1123 = load i64, i64* %t11831, align 8
  %add1884 = add i64 %1122, %1123
  store i64 %add1884, i64* %e, align 8
  %1124 = load i64, i64* %t01814, align 8
  %1125 = load i64, i64* %t11831, align 8
  %add1885 = add i64 %1124, %1125
  store i64 %add1885, i64* %a, align 8
  br label %do.end.1886

do.end.1886:                                      ; preds = %do.body.1813
  br label %do.body.1887

do.body.1887:                                     ; preds = %do.end.1886
  %1126 = load i64, i64* %a, align 8
  %shl1889 = shl i64 %1126, 36
  %1127 = load i64, i64* %a, align 8
  %shr1890 = lshr i64 %1127, 28
  %or1891 = or i64 %shl1889, %shr1890
  %1128 = load i64, i64* %a, align 8
  %shl1892 = shl i64 %1128, 30
  %1129 = load i64, i64* %a, align 8
  %shr1893 = lshr i64 %1129, 34
  %or1894 = or i64 %shl1892, %shr1893
  %1130 = load i64, i64* %a, align 8
  %shl1895 = shl i64 %1130, 25
  %1131 = load i64, i64* %a, align 8
  %shr1896 = lshr i64 %1131, 39
  %or1897 = or i64 %shl1895, %shr1896
  %xor1898 = xor i64 %or1894, %or1897
  %xor1899 = xor i64 %or1891, %xor1898
  %1132 = load i64, i64* %a, align 8
  %1133 = load i64, i64* %b, align 8
  %and1900 = and i64 %1132, %1133
  %1134 = load i64, i64* %c, align 8
  %1135 = load i64, i64* %a, align 8
  %1136 = load i64, i64* %b, align 8
  %or1901 = or i64 %1135, %1136
  %and1902 = and i64 %1134, %or1901
  %or1903 = or i64 %and1900, %and1902
  %add1904 = add i64 %xor1899, %or1903
  store i64 %add1904, i64* %t01888, align 8
  %1137 = load i64, i64* %h, align 8
  %1138 = load i64, i64* %e, align 8
  %shl1906 = shl i64 %1138, 50
  %1139 = load i64, i64* %e, align 8
  %shr1907 = lshr i64 %1139, 14
  %or1908 = or i64 %shl1906, %shr1907
  %1140 = load i64, i64* %e, align 8
  %shl1909 = shl i64 %1140, 46
  %1141 = load i64, i64* %e, align 8
  %shr1910 = lshr i64 %1141, 18
  %or1911 = or i64 %shl1909, %shr1910
  %1142 = load i64, i64* %e, align 8
  %shl1912 = shl i64 %1142, 23
  %1143 = load i64, i64* %e, align 8
  %shr1913 = lshr i64 %1143, 41
  %or1914 = or i64 %shl1912, %shr1913
  %xor1915 = xor i64 %or1911, %or1914
  %xor1916 = xor i64 %or1908, %xor1915
  %1144 = load i64, i64* %g, align 8
  %1145 = load i64, i64* %e, align 8
  %1146 = load i64, i64* %f, align 8
  %1147 = load i64, i64* %g, align 8
  %xor1917 = xor i64 %1146, %1147
  %and1918 = and i64 %1145, %xor1917
  %xor1919 = xor i64 %1144, %and1918
  %1148 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 32), align 8
  %arrayidx1920 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1149 = load i64, i64* %arrayidx1920, align 8
  %arrayidx1921 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1150 = load i64, i64* %arrayidx1921, align 8
  %shl1922 = shl i64 %1150, 45
  %arrayidx1923 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1151 = load i64, i64* %arrayidx1923, align 8
  %shr1924 = lshr i64 %1151, 19
  %or1925 = or i64 %shl1922, %shr1924
  %arrayidx1926 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1152 = load i64, i64* %arrayidx1926, align 8
  %shl1927 = shl i64 %1152, 3
  %arrayidx1928 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1153 = load i64, i64* %arrayidx1928, align 8
  %shr1929 = lshr i64 %1153, 61
  %or1930 = or i64 %shl1927, %shr1929
  %arrayidx1931 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1154 = load i64, i64* %arrayidx1931, align 8
  %shr1932 = lshr i64 %1154, 6
  %xor1933 = xor i64 %or1930, %shr1932
  %xor1934 = xor i64 %or1925, %xor1933
  %arrayidx1935 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1155 = load i64, i64* %arrayidx1935, align 8
  %arrayidx1936 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1156 = load i64, i64* %arrayidx1936, align 8
  %shl1937 = shl i64 %1156, 63
  %arrayidx1938 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1157 = load i64, i64* %arrayidx1938, align 8
  %shr1939 = lshr i64 %1157, 1
  %or1940 = or i64 %shl1937, %shr1939
  %arrayidx1941 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1158 = load i64, i64* %arrayidx1941, align 8
  %shl1942 = shl i64 %1158, 56
  %arrayidx1943 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1159 = load i64, i64* %arrayidx1943, align 8
  %shr1944 = lshr i64 %1159, 8
  %or1945 = or i64 %shl1942, %shr1944
  %arrayidx1946 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1160 = load i64, i64* %arrayidx1946, align 8
  %shr1947 = lshr i64 %1160, 7
  %xor1948 = xor i64 %or1945, %shr1947
  %xor1949 = xor i64 %or1940, %xor1948
  %add1950 = add i64 %1155, %xor1949
  %add1951 = add i64 %xor1934, %add1950
  %add1952 = add i64 %1149, %add1951
  %arrayidx1953 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  store i64 %add1952, i64* %arrayidx1953, align 8
  %add1954 = add i64 %1148, %add1952
  %add1955 = add i64 %xor1919, %add1954
  %add1956 = add i64 %xor1916, %add1955
  %add1957 = add i64 %1137, %add1956
  store i64 %add1957, i64* %t11905, align 8
  %1161 = load i64, i64* %d, align 8
  %1162 = load i64, i64* %t11905, align 8
  %add1958 = add i64 %1161, %1162
  store i64 %add1958, i64* %d, align 8
  %1163 = load i64, i64* %t01888, align 8
  %1164 = load i64, i64* %t11905, align 8
  %add1959 = add i64 %1163, %1164
  store i64 %add1959, i64* %h, align 8
  br label %do.end.1960

do.end.1960:                                      ; preds = %do.body.1887
  br label %do.body.1961

do.body.1961:                                     ; preds = %do.end.1960
  %1165 = load i64, i64* %h, align 8
  %shl1963 = shl i64 %1165, 36
  %1166 = load i64, i64* %h, align 8
  %shr1964 = lshr i64 %1166, 28
  %or1965 = or i64 %shl1963, %shr1964
  %1167 = load i64, i64* %h, align 8
  %shl1966 = shl i64 %1167, 30
  %1168 = load i64, i64* %h, align 8
  %shr1967 = lshr i64 %1168, 34
  %or1968 = or i64 %shl1966, %shr1967
  %1169 = load i64, i64* %h, align 8
  %shl1969 = shl i64 %1169, 25
  %1170 = load i64, i64* %h, align 8
  %shr1970 = lshr i64 %1170, 39
  %or1971 = or i64 %shl1969, %shr1970
  %xor1972 = xor i64 %or1968, %or1971
  %xor1973 = xor i64 %or1965, %xor1972
  %1171 = load i64, i64* %h, align 8
  %1172 = load i64, i64* %a, align 8
  %and1974 = and i64 %1171, %1172
  %1173 = load i64, i64* %b, align 8
  %1174 = load i64, i64* %h, align 8
  %1175 = load i64, i64* %a, align 8
  %or1975 = or i64 %1174, %1175
  %and1976 = and i64 %1173, %or1975
  %or1977 = or i64 %and1974, %and1976
  %add1978 = add i64 %xor1973, %or1977
  store i64 %add1978, i64* %t01962, align 8
  %1176 = load i64, i64* %g, align 8
  %1177 = load i64, i64* %d, align 8
  %shl1980 = shl i64 %1177, 50
  %1178 = load i64, i64* %d, align 8
  %shr1981 = lshr i64 %1178, 14
  %or1982 = or i64 %shl1980, %shr1981
  %1179 = load i64, i64* %d, align 8
  %shl1983 = shl i64 %1179, 46
  %1180 = load i64, i64* %d, align 8
  %shr1984 = lshr i64 %1180, 18
  %or1985 = or i64 %shl1983, %shr1984
  %1181 = load i64, i64* %d, align 8
  %shl1986 = shl i64 %1181, 23
  %1182 = load i64, i64* %d, align 8
  %shr1987 = lshr i64 %1182, 41
  %or1988 = or i64 %shl1986, %shr1987
  %xor1989 = xor i64 %or1985, %or1988
  %xor1990 = xor i64 %or1982, %xor1989
  %1183 = load i64, i64* %f, align 8
  %1184 = load i64, i64* %d, align 8
  %1185 = load i64, i64* %e, align 8
  %1186 = load i64, i64* %f, align 8
  %xor1991 = xor i64 %1185, %1186
  %and1992 = and i64 %1184, %xor1991
  %xor1993 = xor i64 %1183, %and1992
  %1187 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 33), align 8
  %arrayidx1994 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1188 = load i64, i64* %arrayidx1994, align 8
  %arrayidx1995 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1189 = load i64, i64* %arrayidx1995, align 8
  %shl1996 = shl i64 %1189, 45
  %arrayidx1997 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1190 = load i64, i64* %arrayidx1997, align 8
  %shr1998 = lshr i64 %1190, 19
  %or1999 = or i64 %shl1996, %shr1998
  %arrayidx2000 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1191 = load i64, i64* %arrayidx2000, align 8
  %shl2001 = shl i64 %1191, 3
  %arrayidx2002 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1192 = load i64, i64* %arrayidx2002, align 8
  %shr2003 = lshr i64 %1192, 61
  %or2004 = or i64 %shl2001, %shr2003
  %arrayidx2005 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1193 = load i64, i64* %arrayidx2005, align 8
  %shr2006 = lshr i64 %1193, 6
  %xor2007 = xor i64 %or2004, %shr2006
  %xor2008 = xor i64 %or1999, %xor2007
  %arrayidx2009 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1194 = load i64, i64* %arrayidx2009, align 8
  %arrayidx2010 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1195 = load i64, i64* %arrayidx2010, align 8
  %shl2011 = shl i64 %1195, 63
  %arrayidx2012 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1196 = load i64, i64* %arrayidx2012, align 8
  %shr2013 = lshr i64 %1196, 1
  %or2014 = or i64 %shl2011, %shr2013
  %arrayidx2015 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1197 = load i64, i64* %arrayidx2015, align 8
  %shl2016 = shl i64 %1197, 56
  %arrayidx2017 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1198 = load i64, i64* %arrayidx2017, align 8
  %shr2018 = lshr i64 %1198, 8
  %or2019 = or i64 %shl2016, %shr2018
  %arrayidx2020 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1199 = load i64, i64* %arrayidx2020, align 8
  %shr2021 = lshr i64 %1199, 7
  %xor2022 = xor i64 %or2019, %shr2021
  %xor2023 = xor i64 %or2014, %xor2022
  %add2024 = add i64 %1194, %xor2023
  %add2025 = add i64 %xor2008, %add2024
  %add2026 = add i64 %1188, %add2025
  %arrayidx2027 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  store i64 %add2026, i64* %arrayidx2027, align 8
  %add2028 = add i64 %1187, %add2026
  %add2029 = add i64 %xor1993, %add2028
  %add2030 = add i64 %xor1990, %add2029
  %add2031 = add i64 %1176, %add2030
  store i64 %add2031, i64* %t11979, align 8
  %1200 = load i64, i64* %c, align 8
  %1201 = load i64, i64* %t11979, align 8
  %add2032 = add i64 %1200, %1201
  store i64 %add2032, i64* %c, align 8
  %1202 = load i64, i64* %t01962, align 8
  %1203 = load i64, i64* %t11979, align 8
  %add2033 = add i64 %1202, %1203
  store i64 %add2033, i64* %g, align 8
  br label %do.end.2034

do.end.2034:                                      ; preds = %do.body.1961
  br label %do.body.2035

do.body.2035:                                     ; preds = %do.end.2034
  %1204 = load i64, i64* %g, align 8
  %shl2037 = shl i64 %1204, 36
  %1205 = load i64, i64* %g, align 8
  %shr2038 = lshr i64 %1205, 28
  %or2039 = or i64 %shl2037, %shr2038
  %1206 = load i64, i64* %g, align 8
  %shl2040 = shl i64 %1206, 30
  %1207 = load i64, i64* %g, align 8
  %shr2041 = lshr i64 %1207, 34
  %or2042 = or i64 %shl2040, %shr2041
  %1208 = load i64, i64* %g, align 8
  %shl2043 = shl i64 %1208, 25
  %1209 = load i64, i64* %g, align 8
  %shr2044 = lshr i64 %1209, 39
  %or2045 = or i64 %shl2043, %shr2044
  %xor2046 = xor i64 %or2042, %or2045
  %xor2047 = xor i64 %or2039, %xor2046
  %1210 = load i64, i64* %g, align 8
  %1211 = load i64, i64* %h, align 8
  %and2048 = and i64 %1210, %1211
  %1212 = load i64, i64* %a, align 8
  %1213 = load i64, i64* %g, align 8
  %1214 = load i64, i64* %h, align 8
  %or2049 = or i64 %1213, %1214
  %and2050 = and i64 %1212, %or2049
  %or2051 = or i64 %and2048, %and2050
  %add2052 = add i64 %xor2047, %or2051
  store i64 %add2052, i64* %t02036, align 8
  %1215 = load i64, i64* %f, align 8
  %1216 = load i64, i64* %c, align 8
  %shl2054 = shl i64 %1216, 50
  %1217 = load i64, i64* %c, align 8
  %shr2055 = lshr i64 %1217, 14
  %or2056 = or i64 %shl2054, %shr2055
  %1218 = load i64, i64* %c, align 8
  %shl2057 = shl i64 %1218, 46
  %1219 = load i64, i64* %c, align 8
  %shr2058 = lshr i64 %1219, 18
  %or2059 = or i64 %shl2057, %shr2058
  %1220 = load i64, i64* %c, align 8
  %shl2060 = shl i64 %1220, 23
  %1221 = load i64, i64* %c, align 8
  %shr2061 = lshr i64 %1221, 41
  %or2062 = or i64 %shl2060, %shr2061
  %xor2063 = xor i64 %or2059, %or2062
  %xor2064 = xor i64 %or2056, %xor2063
  %1222 = load i64, i64* %e, align 8
  %1223 = load i64, i64* %c, align 8
  %1224 = load i64, i64* %d, align 8
  %1225 = load i64, i64* %e, align 8
  %xor2065 = xor i64 %1224, %1225
  %and2066 = and i64 %1223, %xor2065
  %xor2067 = xor i64 %1222, %and2066
  %1226 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 34), align 8
  %arrayidx2068 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1227 = load i64, i64* %arrayidx2068, align 8
  %arrayidx2069 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1228 = load i64, i64* %arrayidx2069, align 8
  %shl2070 = shl i64 %1228, 45
  %arrayidx2071 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1229 = load i64, i64* %arrayidx2071, align 8
  %shr2072 = lshr i64 %1229, 19
  %or2073 = or i64 %shl2070, %shr2072
  %arrayidx2074 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1230 = load i64, i64* %arrayidx2074, align 8
  %shl2075 = shl i64 %1230, 3
  %arrayidx2076 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1231 = load i64, i64* %arrayidx2076, align 8
  %shr2077 = lshr i64 %1231, 61
  %or2078 = or i64 %shl2075, %shr2077
  %arrayidx2079 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1232 = load i64, i64* %arrayidx2079, align 8
  %shr2080 = lshr i64 %1232, 6
  %xor2081 = xor i64 %or2078, %shr2080
  %xor2082 = xor i64 %or2073, %xor2081
  %arrayidx2083 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1233 = load i64, i64* %arrayidx2083, align 8
  %arrayidx2084 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1234 = load i64, i64* %arrayidx2084, align 8
  %shl2085 = shl i64 %1234, 63
  %arrayidx2086 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1235 = load i64, i64* %arrayidx2086, align 8
  %shr2087 = lshr i64 %1235, 1
  %or2088 = or i64 %shl2085, %shr2087
  %arrayidx2089 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1236 = load i64, i64* %arrayidx2089, align 8
  %shl2090 = shl i64 %1236, 56
  %arrayidx2091 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1237 = load i64, i64* %arrayidx2091, align 8
  %shr2092 = lshr i64 %1237, 8
  %or2093 = or i64 %shl2090, %shr2092
  %arrayidx2094 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1238 = load i64, i64* %arrayidx2094, align 8
  %shr2095 = lshr i64 %1238, 7
  %xor2096 = xor i64 %or2093, %shr2095
  %xor2097 = xor i64 %or2088, %xor2096
  %add2098 = add i64 %1233, %xor2097
  %add2099 = add i64 %xor2082, %add2098
  %add2100 = add i64 %1227, %add2099
  %arrayidx2101 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  store i64 %add2100, i64* %arrayidx2101, align 8
  %add2102 = add i64 %1226, %add2100
  %add2103 = add i64 %xor2067, %add2102
  %add2104 = add i64 %xor2064, %add2103
  %add2105 = add i64 %1215, %add2104
  store i64 %add2105, i64* %t12053, align 8
  %1239 = load i64, i64* %b, align 8
  %1240 = load i64, i64* %t12053, align 8
  %add2106 = add i64 %1239, %1240
  store i64 %add2106, i64* %b, align 8
  %1241 = load i64, i64* %t02036, align 8
  %1242 = load i64, i64* %t12053, align 8
  %add2107 = add i64 %1241, %1242
  store i64 %add2107, i64* %f, align 8
  br label %do.end.2108

do.end.2108:                                      ; preds = %do.body.2035
  br label %do.body.2109

do.body.2109:                                     ; preds = %do.end.2108
  %1243 = load i64, i64* %f, align 8
  %shl2111 = shl i64 %1243, 36
  %1244 = load i64, i64* %f, align 8
  %shr2112 = lshr i64 %1244, 28
  %or2113 = or i64 %shl2111, %shr2112
  %1245 = load i64, i64* %f, align 8
  %shl2114 = shl i64 %1245, 30
  %1246 = load i64, i64* %f, align 8
  %shr2115 = lshr i64 %1246, 34
  %or2116 = or i64 %shl2114, %shr2115
  %1247 = load i64, i64* %f, align 8
  %shl2117 = shl i64 %1247, 25
  %1248 = load i64, i64* %f, align 8
  %shr2118 = lshr i64 %1248, 39
  %or2119 = or i64 %shl2117, %shr2118
  %xor2120 = xor i64 %or2116, %or2119
  %xor2121 = xor i64 %or2113, %xor2120
  %1249 = load i64, i64* %f, align 8
  %1250 = load i64, i64* %g, align 8
  %and2122 = and i64 %1249, %1250
  %1251 = load i64, i64* %h, align 8
  %1252 = load i64, i64* %f, align 8
  %1253 = load i64, i64* %g, align 8
  %or2123 = or i64 %1252, %1253
  %and2124 = and i64 %1251, %or2123
  %or2125 = or i64 %and2122, %and2124
  %add2126 = add i64 %xor2121, %or2125
  store i64 %add2126, i64* %t02110, align 8
  %1254 = load i64, i64* %e, align 8
  %1255 = load i64, i64* %b, align 8
  %shl2128 = shl i64 %1255, 50
  %1256 = load i64, i64* %b, align 8
  %shr2129 = lshr i64 %1256, 14
  %or2130 = or i64 %shl2128, %shr2129
  %1257 = load i64, i64* %b, align 8
  %shl2131 = shl i64 %1257, 46
  %1258 = load i64, i64* %b, align 8
  %shr2132 = lshr i64 %1258, 18
  %or2133 = or i64 %shl2131, %shr2132
  %1259 = load i64, i64* %b, align 8
  %shl2134 = shl i64 %1259, 23
  %1260 = load i64, i64* %b, align 8
  %shr2135 = lshr i64 %1260, 41
  %or2136 = or i64 %shl2134, %shr2135
  %xor2137 = xor i64 %or2133, %or2136
  %xor2138 = xor i64 %or2130, %xor2137
  %1261 = load i64, i64* %d, align 8
  %1262 = load i64, i64* %b, align 8
  %1263 = load i64, i64* %c, align 8
  %1264 = load i64, i64* %d, align 8
  %xor2139 = xor i64 %1263, %1264
  %and2140 = and i64 %1262, %xor2139
  %xor2141 = xor i64 %1261, %and2140
  %1265 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 35), align 8
  %arrayidx2142 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1266 = load i64, i64* %arrayidx2142, align 8
  %arrayidx2143 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1267 = load i64, i64* %arrayidx2143, align 8
  %shl2144 = shl i64 %1267, 45
  %arrayidx2145 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1268 = load i64, i64* %arrayidx2145, align 8
  %shr2146 = lshr i64 %1268, 19
  %or2147 = or i64 %shl2144, %shr2146
  %arrayidx2148 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1269 = load i64, i64* %arrayidx2148, align 8
  %shl2149 = shl i64 %1269, 3
  %arrayidx2150 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1270 = load i64, i64* %arrayidx2150, align 8
  %shr2151 = lshr i64 %1270, 61
  %or2152 = or i64 %shl2149, %shr2151
  %arrayidx2153 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1271 = load i64, i64* %arrayidx2153, align 8
  %shr2154 = lshr i64 %1271, 6
  %xor2155 = xor i64 %or2152, %shr2154
  %xor2156 = xor i64 %or2147, %xor2155
  %arrayidx2157 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1272 = load i64, i64* %arrayidx2157, align 8
  %arrayidx2158 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1273 = load i64, i64* %arrayidx2158, align 8
  %shl2159 = shl i64 %1273, 63
  %arrayidx2160 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1274 = load i64, i64* %arrayidx2160, align 8
  %shr2161 = lshr i64 %1274, 1
  %or2162 = or i64 %shl2159, %shr2161
  %arrayidx2163 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1275 = load i64, i64* %arrayidx2163, align 8
  %shl2164 = shl i64 %1275, 56
  %arrayidx2165 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1276 = load i64, i64* %arrayidx2165, align 8
  %shr2166 = lshr i64 %1276, 8
  %or2167 = or i64 %shl2164, %shr2166
  %arrayidx2168 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1277 = load i64, i64* %arrayidx2168, align 8
  %shr2169 = lshr i64 %1277, 7
  %xor2170 = xor i64 %or2167, %shr2169
  %xor2171 = xor i64 %or2162, %xor2170
  %add2172 = add i64 %1272, %xor2171
  %add2173 = add i64 %xor2156, %add2172
  %add2174 = add i64 %1266, %add2173
  %arrayidx2175 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  store i64 %add2174, i64* %arrayidx2175, align 8
  %add2176 = add i64 %1265, %add2174
  %add2177 = add i64 %xor2141, %add2176
  %add2178 = add i64 %xor2138, %add2177
  %add2179 = add i64 %1254, %add2178
  store i64 %add2179, i64* %t12127, align 8
  %1278 = load i64, i64* %a, align 8
  %1279 = load i64, i64* %t12127, align 8
  %add2180 = add i64 %1278, %1279
  store i64 %add2180, i64* %a, align 8
  %1280 = load i64, i64* %t02110, align 8
  %1281 = load i64, i64* %t12127, align 8
  %add2181 = add i64 %1280, %1281
  store i64 %add2181, i64* %e, align 8
  br label %do.end.2182

do.end.2182:                                      ; preds = %do.body.2109
  br label %do.body.2183

do.body.2183:                                     ; preds = %do.end.2182
  %1282 = load i64, i64* %e, align 8
  %shl2185 = shl i64 %1282, 36
  %1283 = load i64, i64* %e, align 8
  %shr2186 = lshr i64 %1283, 28
  %or2187 = or i64 %shl2185, %shr2186
  %1284 = load i64, i64* %e, align 8
  %shl2188 = shl i64 %1284, 30
  %1285 = load i64, i64* %e, align 8
  %shr2189 = lshr i64 %1285, 34
  %or2190 = or i64 %shl2188, %shr2189
  %1286 = load i64, i64* %e, align 8
  %shl2191 = shl i64 %1286, 25
  %1287 = load i64, i64* %e, align 8
  %shr2192 = lshr i64 %1287, 39
  %or2193 = or i64 %shl2191, %shr2192
  %xor2194 = xor i64 %or2190, %or2193
  %xor2195 = xor i64 %or2187, %xor2194
  %1288 = load i64, i64* %e, align 8
  %1289 = load i64, i64* %f, align 8
  %and2196 = and i64 %1288, %1289
  %1290 = load i64, i64* %g, align 8
  %1291 = load i64, i64* %e, align 8
  %1292 = load i64, i64* %f, align 8
  %or2197 = or i64 %1291, %1292
  %and2198 = and i64 %1290, %or2197
  %or2199 = or i64 %and2196, %and2198
  %add2200 = add i64 %xor2195, %or2199
  store i64 %add2200, i64* %t02184, align 8
  %1293 = load i64, i64* %d, align 8
  %1294 = load i64, i64* %a, align 8
  %shl2202 = shl i64 %1294, 50
  %1295 = load i64, i64* %a, align 8
  %shr2203 = lshr i64 %1295, 14
  %or2204 = or i64 %shl2202, %shr2203
  %1296 = load i64, i64* %a, align 8
  %shl2205 = shl i64 %1296, 46
  %1297 = load i64, i64* %a, align 8
  %shr2206 = lshr i64 %1297, 18
  %or2207 = or i64 %shl2205, %shr2206
  %1298 = load i64, i64* %a, align 8
  %shl2208 = shl i64 %1298, 23
  %1299 = load i64, i64* %a, align 8
  %shr2209 = lshr i64 %1299, 41
  %or2210 = or i64 %shl2208, %shr2209
  %xor2211 = xor i64 %or2207, %or2210
  %xor2212 = xor i64 %or2204, %xor2211
  %1300 = load i64, i64* %c, align 8
  %1301 = load i64, i64* %a, align 8
  %1302 = load i64, i64* %b, align 8
  %1303 = load i64, i64* %c, align 8
  %xor2213 = xor i64 %1302, %1303
  %and2214 = and i64 %1301, %xor2213
  %xor2215 = xor i64 %1300, %and2214
  %1304 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 36), align 8
  %arrayidx2216 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1305 = load i64, i64* %arrayidx2216, align 8
  %arrayidx2217 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1306 = load i64, i64* %arrayidx2217, align 8
  %shl2218 = shl i64 %1306, 45
  %arrayidx2219 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1307 = load i64, i64* %arrayidx2219, align 8
  %shr2220 = lshr i64 %1307, 19
  %or2221 = or i64 %shl2218, %shr2220
  %arrayidx2222 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1308 = load i64, i64* %arrayidx2222, align 8
  %shl2223 = shl i64 %1308, 3
  %arrayidx2224 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1309 = load i64, i64* %arrayidx2224, align 8
  %shr2225 = lshr i64 %1309, 61
  %or2226 = or i64 %shl2223, %shr2225
  %arrayidx2227 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1310 = load i64, i64* %arrayidx2227, align 8
  %shr2228 = lshr i64 %1310, 6
  %xor2229 = xor i64 %or2226, %shr2228
  %xor2230 = xor i64 %or2221, %xor2229
  %arrayidx2231 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1311 = load i64, i64* %arrayidx2231, align 8
  %arrayidx2232 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1312 = load i64, i64* %arrayidx2232, align 8
  %shl2233 = shl i64 %1312, 63
  %arrayidx2234 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1313 = load i64, i64* %arrayidx2234, align 8
  %shr2235 = lshr i64 %1313, 1
  %or2236 = or i64 %shl2233, %shr2235
  %arrayidx2237 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1314 = load i64, i64* %arrayidx2237, align 8
  %shl2238 = shl i64 %1314, 56
  %arrayidx2239 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1315 = load i64, i64* %arrayidx2239, align 8
  %shr2240 = lshr i64 %1315, 8
  %or2241 = or i64 %shl2238, %shr2240
  %arrayidx2242 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1316 = load i64, i64* %arrayidx2242, align 8
  %shr2243 = lshr i64 %1316, 7
  %xor2244 = xor i64 %or2241, %shr2243
  %xor2245 = xor i64 %or2236, %xor2244
  %add2246 = add i64 %1311, %xor2245
  %add2247 = add i64 %xor2230, %add2246
  %add2248 = add i64 %1305, %add2247
  %arrayidx2249 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  store i64 %add2248, i64* %arrayidx2249, align 8
  %add2250 = add i64 %1304, %add2248
  %add2251 = add i64 %xor2215, %add2250
  %add2252 = add i64 %xor2212, %add2251
  %add2253 = add i64 %1293, %add2252
  store i64 %add2253, i64* %t12201, align 8
  %1317 = load i64, i64* %h, align 8
  %1318 = load i64, i64* %t12201, align 8
  %add2254 = add i64 %1317, %1318
  store i64 %add2254, i64* %h, align 8
  %1319 = load i64, i64* %t02184, align 8
  %1320 = load i64, i64* %t12201, align 8
  %add2255 = add i64 %1319, %1320
  store i64 %add2255, i64* %d, align 8
  br label %do.end.2256

do.end.2256:                                      ; preds = %do.body.2183
  br label %do.body.2257

do.body.2257:                                     ; preds = %do.end.2256
  %1321 = load i64, i64* %d, align 8
  %shl2259 = shl i64 %1321, 36
  %1322 = load i64, i64* %d, align 8
  %shr2260 = lshr i64 %1322, 28
  %or2261 = or i64 %shl2259, %shr2260
  %1323 = load i64, i64* %d, align 8
  %shl2262 = shl i64 %1323, 30
  %1324 = load i64, i64* %d, align 8
  %shr2263 = lshr i64 %1324, 34
  %or2264 = or i64 %shl2262, %shr2263
  %1325 = load i64, i64* %d, align 8
  %shl2265 = shl i64 %1325, 25
  %1326 = load i64, i64* %d, align 8
  %shr2266 = lshr i64 %1326, 39
  %or2267 = or i64 %shl2265, %shr2266
  %xor2268 = xor i64 %or2264, %or2267
  %xor2269 = xor i64 %or2261, %xor2268
  %1327 = load i64, i64* %d, align 8
  %1328 = load i64, i64* %e, align 8
  %and2270 = and i64 %1327, %1328
  %1329 = load i64, i64* %f, align 8
  %1330 = load i64, i64* %d, align 8
  %1331 = load i64, i64* %e, align 8
  %or2271 = or i64 %1330, %1331
  %and2272 = and i64 %1329, %or2271
  %or2273 = or i64 %and2270, %and2272
  %add2274 = add i64 %xor2269, %or2273
  store i64 %add2274, i64* %t02258, align 8
  %1332 = load i64, i64* %c, align 8
  %1333 = load i64, i64* %h, align 8
  %shl2276 = shl i64 %1333, 50
  %1334 = load i64, i64* %h, align 8
  %shr2277 = lshr i64 %1334, 14
  %or2278 = or i64 %shl2276, %shr2277
  %1335 = load i64, i64* %h, align 8
  %shl2279 = shl i64 %1335, 46
  %1336 = load i64, i64* %h, align 8
  %shr2280 = lshr i64 %1336, 18
  %or2281 = or i64 %shl2279, %shr2280
  %1337 = load i64, i64* %h, align 8
  %shl2282 = shl i64 %1337, 23
  %1338 = load i64, i64* %h, align 8
  %shr2283 = lshr i64 %1338, 41
  %or2284 = or i64 %shl2282, %shr2283
  %xor2285 = xor i64 %or2281, %or2284
  %xor2286 = xor i64 %or2278, %xor2285
  %1339 = load i64, i64* %b, align 8
  %1340 = load i64, i64* %h, align 8
  %1341 = load i64, i64* %a, align 8
  %1342 = load i64, i64* %b, align 8
  %xor2287 = xor i64 %1341, %1342
  %and2288 = and i64 %1340, %xor2287
  %xor2289 = xor i64 %1339, %and2288
  %1343 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 37), align 8
  %arrayidx2290 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1344 = load i64, i64* %arrayidx2290, align 8
  %arrayidx2291 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1345 = load i64, i64* %arrayidx2291, align 8
  %shl2292 = shl i64 %1345, 45
  %arrayidx2293 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1346 = load i64, i64* %arrayidx2293, align 8
  %shr2294 = lshr i64 %1346, 19
  %or2295 = or i64 %shl2292, %shr2294
  %arrayidx2296 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1347 = load i64, i64* %arrayidx2296, align 8
  %shl2297 = shl i64 %1347, 3
  %arrayidx2298 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1348 = load i64, i64* %arrayidx2298, align 8
  %shr2299 = lshr i64 %1348, 61
  %or2300 = or i64 %shl2297, %shr2299
  %arrayidx2301 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1349 = load i64, i64* %arrayidx2301, align 8
  %shr2302 = lshr i64 %1349, 6
  %xor2303 = xor i64 %or2300, %shr2302
  %xor2304 = xor i64 %or2295, %xor2303
  %arrayidx2305 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1350 = load i64, i64* %arrayidx2305, align 8
  %arrayidx2306 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1351 = load i64, i64* %arrayidx2306, align 8
  %shl2307 = shl i64 %1351, 63
  %arrayidx2308 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1352 = load i64, i64* %arrayidx2308, align 8
  %shr2309 = lshr i64 %1352, 1
  %or2310 = or i64 %shl2307, %shr2309
  %arrayidx2311 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1353 = load i64, i64* %arrayidx2311, align 8
  %shl2312 = shl i64 %1353, 56
  %arrayidx2313 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1354 = load i64, i64* %arrayidx2313, align 8
  %shr2314 = lshr i64 %1354, 8
  %or2315 = or i64 %shl2312, %shr2314
  %arrayidx2316 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1355 = load i64, i64* %arrayidx2316, align 8
  %shr2317 = lshr i64 %1355, 7
  %xor2318 = xor i64 %or2315, %shr2317
  %xor2319 = xor i64 %or2310, %xor2318
  %add2320 = add i64 %1350, %xor2319
  %add2321 = add i64 %xor2304, %add2320
  %add2322 = add i64 %1344, %add2321
  %arrayidx2323 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  store i64 %add2322, i64* %arrayidx2323, align 8
  %add2324 = add i64 %1343, %add2322
  %add2325 = add i64 %xor2289, %add2324
  %add2326 = add i64 %xor2286, %add2325
  %add2327 = add i64 %1332, %add2326
  store i64 %add2327, i64* %t12275, align 8
  %1356 = load i64, i64* %g, align 8
  %1357 = load i64, i64* %t12275, align 8
  %add2328 = add i64 %1356, %1357
  store i64 %add2328, i64* %g, align 8
  %1358 = load i64, i64* %t02258, align 8
  %1359 = load i64, i64* %t12275, align 8
  %add2329 = add i64 %1358, %1359
  store i64 %add2329, i64* %c, align 8
  br label %do.end.2330

do.end.2330:                                      ; preds = %do.body.2257
  br label %do.body.2331

do.body.2331:                                     ; preds = %do.end.2330
  %1360 = load i64, i64* %c, align 8
  %shl2333 = shl i64 %1360, 36
  %1361 = load i64, i64* %c, align 8
  %shr2334 = lshr i64 %1361, 28
  %or2335 = or i64 %shl2333, %shr2334
  %1362 = load i64, i64* %c, align 8
  %shl2336 = shl i64 %1362, 30
  %1363 = load i64, i64* %c, align 8
  %shr2337 = lshr i64 %1363, 34
  %or2338 = or i64 %shl2336, %shr2337
  %1364 = load i64, i64* %c, align 8
  %shl2339 = shl i64 %1364, 25
  %1365 = load i64, i64* %c, align 8
  %shr2340 = lshr i64 %1365, 39
  %or2341 = or i64 %shl2339, %shr2340
  %xor2342 = xor i64 %or2338, %or2341
  %xor2343 = xor i64 %or2335, %xor2342
  %1366 = load i64, i64* %c, align 8
  %1367 = load i64, i64* %d, align 8
  %and2344 = and i64 %1366, %1367
  %1368 = load i64, i64* %e, align 8
  %1369 = load i64, i64* %c, align 8
  %1370 = load i64, i64* %d, align 8
  %or2345 = or i64 %1369, %1370
  %and2346 = and i64 %1368, %or2345
  %or2347 = or i64 %and2344, %and2346
  %add2348 = add i64 %xor2343, %or2347
  store i64 %add2348, i64* %t02332, align 8
  %1371 = load i64, i64* %b, align 8
  %1372 = load i64, i64* %g, align 8
  %shl2350 = shl i64 %1372, 50
  %1373 = load i64, i64* %g, align 8
  %shr2351 = lshr i64 %1373, 14
  %or2352 = or i64 %shl2350, %shr2351
  %1374 = load i64, i64* %g, align 8
  %shl2353 = shl i64 %1374, 46
  %1375 = load i64, i64* %g, align 8
  %shr2354 = lshr i64 %1375, 18
  %or2355 = or i64 %shl2353, %shr2354
  %1376 = load i64, i64* %g, align 8
  %shl2356 = shl i64 %1376, 23
  %1377 = load i64, i64* %g, align 8
  %shr2357 = lshr i64 %1377, 41
  %or2358 = or i64 %shl2356, %shr2357
  %xor2359 = xor i64 %or2355, %or2358
  %xor2360 = xor i64 %or2352, %xor2359
  %1378 = load i64, i64* %a, align 8
  %1379 = load i64, i64* %g, align 8
  %1380 = load i64, i64* %h, align 8
  %1381 = load i64, i64* %a, align 8
  %xor2361 = xor i64 %1380, %1381
  %and2362 = and i64 %1379, %xor2361
  %xor2363 = xor i64 %1378, %and2362
  %1382 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 38), align 8
  %arrayidx2364 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1383 = load i64, i64* %arrayidx2364, align 8
  %arrayidx2365 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1384 = load i64, i64* %arrayidx2365, align 8
  %shl2366 = shl i64 %1384, 45
  %arrayidx2367 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1385 = load i64, i64* %arrayidx2367, align 8
  %shr2368 = lshr i64 %1385, 19
  %or2369 = or i64 %shl2366, %shr2368
  %arrayidx2370 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1386 = load i64, i64* %arrayidx2370, align 8
  %shl2371 = shl i64 %1386, 3
  %arrayidx2372 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1387 = load i64, i64* %arrayidx2372, align 8
  %shr2373 = lshr i64 %1387, 61
  %or2374 = or i64 %shl2371, %shr2373
  %arrayidx2375 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1388 = load i64, i64* %arrayidx2375, align 8
  %shr2376 = lshr i64 %1388, 6
  %xor2377 = xor i64 %or2374, %shr2376
  %xor2378 = xor i64 %or2369, %xor2377
  %arrayidx2379 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1389 = load i64, i64* %arrayidx2379, align 8
  %arrayidx2380 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1390 = load i64, i64* %arrayidx2380, align 8
  %shl2381 = shl i64 %1390, 63
  %arrayidx2382 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1391 = load i64, i64* %arrayidx2382, align 8
  %shr2383 = lshr i64 %1391, 1
  %or2384 = or i64 %shl2381, %shr2383
  %arrayidx2385 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1392 = load i64, i64* %arrayidx2385, align 8
  %shl2386 = shl i64 %1392, 56
  %arrayidx2387 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1393 = load i64, i64* %arrayidx2387, align 8
  %shr2388 = lshr i64 %1393, 8
  %or2389 = or i64 %shl2386, %shr2388
  %arrayidx2390 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1394 = load i64, i64* %arrayidx2390, align 8
  %shr2391 = lshr i64 %1394, 7
  %xor2392 = xor i64 %or2389, %shr2391
  %xor2393 = xor i64 %or2384, %xor2392
  %add2394 = add i64 %1389, %xor2393
  %add2395 = add i64 %xor2378, %add2394
  %add2396 = add i64 %1383, %add2395
  %arrayidx2397 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  store i64 %add2396, i64* %arrayidx2397, align 8
  %add2398 = add i64 %1382, %add2396
  %add2399 = add i64 %xor2363, %add2398
  %add2400 = add i64 %xor2360, %add2399
  %add2401 = add i64 %1371, %add2400
  store i64 %add2401, i64* %t12349, align 8
  %1395 = load i64, i64* %f, align 8
  %1396 = load i64, i64* %t12349, align 8
  %add2402 = add i64 %1395, %1396
  store i64 %add2402, i64* %f, align 8
  %1397 = load i64, i64* %t02332, align 8
  %1398 = load i64, i64* %t12349, align 8
  %add2403 = add i64 %1397, %1398
  store i64 %add2403, i64* %b, align 8
  br label %do.end.2404

do.end.2404:                                      ; preds = %do.body.2331
  br label %do.body.2405

do.body.2405:                                     ; preds = %do.end.2404
  %1399 = load i64, i64* %b, align 8
  %shl2407 = shl i64 %1399, 36
  %1400 = load i64, i64* %b, align 8
  %shr2408 = lshr i64 %1400, 28
  %or2409 = or i64 %shl2407, %shr2408
  %1401 = load i64, i64* %b, align 8
  %shl2410 = shl i64 %1401, 30
  %1402 = load i64, i64* %b, align 8
  %shr2411 = lshr i64 %1402, 34
  %or2412 = or i64 %shl2410, %shr2411
  %1403 = load i64, i64* %b, align 8
  %shl2413 = shl i64 %1403, 25
  %1404 = load i64, i64* %b, align 8
  %shr2414 = lshr i64 %1404, 39
  %or2415 = or i64 %shl2413, %shr2414
  %xor2416 = xor i64 %or2412, %or2415
  %xor2417 = xor i64 %or2409, %xor2416
  %1405 = load i64, i64* %b, align 8
  %1406 = load i64, i64* %c, align 8
  %and2418 = and i64 %1405, %1406
  %1407 = load i64, i64* %d, align 8
  %1408 = load i64, i64* %b, align 8
  %1409 = load i64, i64* %c, align 8
  %or2419 = or i64 %1408, %1409
  %and2420 = and i64 %1407, %or2419
  %or2421 = or i64 %and2418, %and2420
  %add2422 = add i64 %xor2417, %or2421
  store i64 %add2422, i64* %t02406, align 8
  %1410 = load i64, i64* %a, align 8
  %1411 = load i64, i64* %f, align 8
  %shl2424 = shl i64 %1411, 50
  %1412 = load i64, i64* %f, align 8
  %shr2425 = lshr i64 %1412, 14
  %or2426 = or i64 %shl2424, %shr2425
  %1413 = load i64, i64* %f, align 8
  %shl2427 = shl i64 %1413, 46
  %1414 = load i64, i64* %f, align 8
  %shr2428 = lshr i64 %1414, 18
  %or2429 = or i64 %shl2427, %shr2428
  %1415 = load i64, i64* %f, align 8
  %shl2430 = shl i64 %1415, 23
  %1416 = load i64, i64* %f, align 8
  %shr2431 = lshr i64 %1416, 41
  %or2432 = or i64 %shl2430, %shr2431
  %xor2433 = xor i64 %or2429, %or2432
  %xor2434 = xor i64 %or2426, %xor2433
  %1417 = load i64, i64* %h, align 8
  %1418 = load i64, i64* %f, align 8
  %1419 = load i64, i64* %g, align 8
  %1420 = load i64, i64* %h, align 8
  %xor2435 = xor i64 %1419, %1420
  %and2436 = and i64 %1418, %xor2435
  %xor2437 = xor i64 %1417, %and2436
  %1421 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 39), align 8
  %arrayidx2438 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1422 = load i64, i64* %arrayidx2438, align 8
  %arrayidx2439 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1423 = load i64, i64* %arrayidx2439, align 8
  %shl2440 = shl i64 %1423, 45
  %arrayidx2441 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1424 = load i64, i64* %arrayidx2441, align 8
  %shr2442 = lshr i64 %1424, 19
  %or2443 = or i64 %shl2440, %shr2442
  %arrayidx2444 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1425 = load i64, i64* %arrayidx2444, align 8
  %shl2445 = shl i64 %1425, 3
  %arrayidx2446 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1426 = load i64, i64* %arrayidx2446, align 8
  %shr2447 = lshr i64 %1426, 61
  %or2448 = or i64 %shl2445, %shr2447
  %arrayidx2449 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1427 = load i64, i64* %arrayidx2449, align 8
  %shr2450 = lshr i64 %1427, 6
  %xor2451 = xor i64 %or2448, %shr2450
  %xor2452 = xor i64 %or2443, %xor2451
  %arrayidx2453 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1428 = load i64, i64* %arrayidx2453, align 8
  %arrayidx2454 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1429 = load i64, i64* %arrayidx2454, align 8
  %shl2455 = shl i64 %1429, 63
  %arrayidx2456 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1430 = load i64, i64* %arrayidx2456, align 8
  %shr2457 = lshr i64 %1430, 1
  %or2458 = or i64 %shl2455, %shr2457
  %arrayidx2459 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1431 = load i64, i64* %arrayidx2459, align 8
  %shl2460 = shl i64 %1431, 56
  %arrayidx2461 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1432 = load i64, i64* %arrayidx2461, align 8
  %shr2462 = lshr i64 %1432, 8
  %or2463 = or i64 %shl2460, %shr2462
  %arrayidx2464 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1433 = load i64, i64* %arrayidx2464, align 8
  %shr2465 = lshr i64 %1433, 7
  %xor2466 = xor i64 %or2463, %shr2465
  %xor2467 = xor i64 %or2458, %xor2466
  %add2468 = add i64 %1428, %xor2467
  %add2469 = add i64 %xor2452, %add2468
  %add2470 = add i64 %1422, %add2469
  %arrayidx2471 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  store i64 %add2470, i64* %arrayidx2471, align 8
  %add2472 = add i64 %1421, %add2470
  %add2473 = add i64 %xor2437, %add2472
  %add2474 = add i64 %xor2434, %add2473
  %add2475 = add i64 %1410, %add2474
  store i64 %add2475, i64* %t12423, align 8
  %1434 = load i64, i64* %e, align 8
  %1435 = load i64, i64* %t12423, align 8
  %add2476 = add i64 %1434, %1435
  store i64 %add2476, i64* %e, align 8
  %1436 = load i64, i64* %t02406, align 8
  %1437 = load i64, i64* %t12423, align 8
  %add2477 = add i64 %1436, %1437
  store i64 %add2477, i64* %a, align 8
  br label %do.end.2478

do.end.2478:                                      ; preds = %do.body.2405
  br label %do.body.2479

do.body.2479:                                     ; preds = %do.end.2478
  %1438 = load i64, i64* %a, align 8
  %shl2481 = shl i64 %1438, 36
  %1439 = load i64, i64* %a, align 8
  %shr2482 = lshr i64 %1439, 28
  %or2483 = or i64 %shl2481, %shr2482
  %1440 = load i64, i64* %a, align 8
  %shl2484 = shl i64 %1440, 30
  %1441 = load i64, i64* %a, align 8
  %shr2485 = lshr i64 %1441, 34
  %or2486 = or i64 %shl2484, %shr2485
  %1442 = load i64, i64* %a, align 8
  %shl2487 = shl i64 %1442, 25
  %1443 = load i64, i64* %a, align 8
  %shr2488 = lshr i64 %1443, 39
  %or2489 = or i64 %shl2487, %shr2488
  %xor2490 = xor i64 %or2486, %or2489
  %xor2491 = xor i64 %or2483, %xor2490
  %1444 = load i64, i64* %a, align 8
  %1445 = load i64, i64* %b, align 8
  %and2492 = and i64 %1444, %1445
  %1446 = load i64, i64* %c, align 8
  %1447 = load i64, i64* %a, align 8
  %1448 = load i64, i64* %b, align 8
  %or2493 = or i64 %1447, %1448
  %and2494 = and i64 %1446, %or2493
  %or2495 = or i64 %and2492, %and2494
  %add2496 = add i64 %xor2491, %or2495
  store i64 %add2496, i64* %t02480, align 8
  %1449 = load i64, i64* %h, align 8
  %1450 = load i64, i64* %e, align 8
  %shl2498 = shl i64 %1450, 50
  %1451 = load i64, i64* %e, align 8
  %shr2499 = lshr i64 %1451, 14
  %or2500 = or i64 %shl2498, %shr2499
  %1452 = load i64, i64* %e, align 8
  %shl2501 = shl i64 %1452, 46
  %1453 = load i64, i64* %e, align 8
  %shr2502 = lshr i64 %1453, 18
  %or2503 = or i64 %shl2501, %shr2502
  %1454 = load i64, i64* %e, align 8
  %shl2504 = shl i64 %1454, 23
  %1455 = load i64, i64* %e, align 8
  %shr2505 = lshr i64 %1455, 41
  %or2506 = or i64 %shl2504, %shr2505
  %xor2507 = xor i64 %or2503, %or2506
  %xor2508 = xor i64 %or2500, %xor2507
  %1456 = load i64, i64* %g, align 8
  %1457 = load i64, i64* %e, align 8
  %1458 = load i64, i64* %f, align 8
  %1459 = load i64, i64* %g, align 8
  %xor2509 = xor i64 %1458, %1459
  %and2510 = and i64 %1457, %xor2509
  %xor2511 = xor i64 %1456, %and2510
  %1460 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 40), align 8
  %arrayidx2512 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1461 = load i64, i64* %arrayidx2512, align 8
  %arrayidx2513 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1462 = load i64, i64* %arrayidx2513, align 8
  %shl2514 = shl i64 %1462, 45
  %arrayidx2515 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1463 = load i64, i64* %arrayidx2515, align 8
  %shr2516 = lshr i64 %1463, 19
  %or2517 = or i64 %shl2514, %shr2516
  %arrayidx2518 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1464 = load i64, i64* %arrayidx2518, align 8
  %shl2519 = shl i64 %1464, 3
  %arrayidx2520 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1465 = load i64, i64* %arrayidx2520, align 8
  %shr2521 = lshr i64 %1465, 61
  %or2522 = or i64 %shl2519, %shr2521
  %arrayidx2523 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1466 = load i64, i64* %arrayidx2523, align 8
  %shr2524 = lshr i64 %1466, 6
  %xor2525 = xor i64 %or2522, %shr2524
  %xor2526 = xor i64 %or2517, %xor2525
  %arrayidx2527 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1467 = load i64, i64* %arrayidx2527, align 8
  %arrayidx2528 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1468 = load i64, i64* %arrayidx2528, align 8
  %shl2529 = shl i64 %1468, 63
  %arrayidx2530 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1469 = load i64, i64* %arrayidx2530, align 8
  %shr2531 = lshr i64 %1469, 1
  %or2532 = or i64 %shl2529, %shr2531
  %arrayidx2533 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1470 = load i64, i64* %arrayidx2533, align 8
  %shl2534 = shl i64 %1470, 56
  %arrayidx2535 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1471 = load i64, i64* %arrayidx2535, align 8
  %shr2536 = lshr i64 %1471, 8
  %or2537 = or i64 %shl2534, %shr2536
  %arrayidx2538 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1472 = load i64, i64* %arrayidx2538, align 8
  %shr2539 = lshr i64 %1472, 7
  %xor2540 = xor i64 %or2537, %shr2539
  %xor2541 = xor i64 %or2532, %xor2540
  %add2542 = add i64 %1467, %xor2541
  %add2543 = add i64 %xor2526, %add2542
  %add2544 = add i64 %1461, %add2543
  %arrayidx2545 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  store i64 %add2544, i64* %arrayidx2545, align 8
  %add2546 = add i64 %1460, %add2544
  %add2547 = add i64 %xor2511, %add2546
  %add2548 = add i64 %xor2508, %add2547
  %add2549 = add i64 %1449, %add2548
  store i64 %add2549, i64* %t12497, align 8
  %1473 = load i64, i64* %d, align 8
  %1474 = load i64, i64* %t12497, align 8
  %add2550 = add i64 %1473, %1474
  store i64 %add2550, i64* %d, align 8
  %1475 = load i64, i64* %t02480, align 8
  %1476 = load i64, i64* %t12497, align 8
  %add2551 = add i64 %1475, %1476
  store i64 %add2551, i64* %h, align 8
  br label %do.end.2552

do.end.2552:                                      ; preds = %do.body.2479
  br label %do.body.2553

do.body.2553:                                     ; preds = %do.end.2552
  %1477 = load i64, i64* %h, align 8
  %shl2555 = shl i64 %1477, 36
  %1478 = load i64, i64* %h, align 8
  %shr2556 = lshr i64 %1478, 28
  %or2557 = or i64 %shl2555, %shr2556
  %1479 = load i64, i64* %h, align 8
  %shl2558 = shl i64 %1479, 30
  %1480 = load i64, i64* %h, align 8
  %shr2559 = lshr i64 %1480, 34
  %or2560 = or i64 %shl2558, %shr2559
  %1481 = load i64, i64* %h, align 8
  %shl2561 = shl i64 %1481, 25
  %1482 = load i64, i64* %h, align 8
  %shr2562 = lshr i64 %1482, 39
  %or2563 = or i64 %shl2561, %shr2562
  %xor2564 = xor i64 %or2560, %or2563
  %xor2565 = xor i64 %or2557, %xor2564
  %1483 = load i64, i64* %h, align 8
  %1484 = load i64, i64* %a, align 8
  %and2566 = and i64 %1483, %1484
  %1485 = load i64, i64* %b, align 8
  %1486 = load i64, i64* %h, align 8
  %1487 = load i64, i64* %a, align 8
  %or2567 = or i64 %1486, %1487
  %and2568 = and i64 %1485, %or2567
  %or2569 = or i64 %and2566, %and2568
  %add2570 = add i64 %xor2565, %or2569
  store i64 %add2570, i64* %t02554, align 8
  %1488 = load i64, i64* %g, align 8
  %1489 = load i64, i64* %d, align 8
  %shl2572 = shl i64 %1489, 50
  %1490 = load i64, i64* %d, align 8
  %shr2573 = lshr i64 %1490, 14
  %or2574 = or i64 %shl2572, %shr2573
  %1491 = load i64, i64* %d, align 8
  %shl2575 = shl i64 %1491, 46
  %1492 = load i64, i64* %d, align 8
  %shr2576 = lshr i64 %1492, 18
  %or2577 = or i64 %shl2575, %shr2576
  %1493 = load i64, i64* %d, align 8
  %shl2578 = shl i64 %1493, 23
  %1494 = load i64, i64* %d, align 8
  %shr2579 = lshr i64 %1494, 41
  %or2580 = or i64 %shl2578, %shr2579
  %xor2581 = xor i64 %or2577, %or2580
  %xor2582 = xor i64 %or2574, %xor2581
  %1495 = load i64, i64* %f, align 8
  %1496 = load i64, i64* %d, align 8
  %1497 = load i64, i64* %e, align 8
  %1498 = load i64, i64* %f, align 8
  %xor2583 = xor i64 %1497, %1498
  %and2584 = and i64 %1496, %xor2583
  %xor2585 = xor i64 %1495, %and2584
  %1499 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 41), align 8
  %arrayidx2586 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1500 = load i64, i64* %arrayidx2586, align 8
  %arrayidx2587 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1501 = load i64, i64* %arrayidx2587, align 8
  %shl2588 = shl i64 %1501, 45
  %arrayidx2589 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1502 = load i64, i64* %arrayidx2589, align 8
  %shr2590 = lshr i64 %1502, 19
  %or2591 = or i64 %shl2588, %shr2590
  %arrayidx2592 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1503 = load i64, i64* %arrayidx2592, align 8
  %shl2593 = shl i64 %1503, 3
  %arrayidx2594 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1504 = load i64, i64* %arrayidx2594, align 8
  %shr2595 = lshr i64 %1504, 61
  %or2596 = or i64 %shl2593, %shr2595
  %arrayidx2597 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1505 = load i64, i64* %arrayidx2597, align 8
  %shr2598 = lshr i64 %1505, 6
  %xor2599 = xor i64 %or2596, %shr2598
  %xor2600 = xor i64 %or2591, %xor2599
  %arrayidx2601 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1506 = load i64, i64* %arrayidx2601, align 8
  %arrayidx2602 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1507 = load i64, i64* %arrayidx2602, align 8
  %shl2603 = shl i64 %1507, 63
  %arrayidx2604 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1508 = load i64, i64* %arrayidx2604, align 8
  %shr2605 = lshr i64 %1508, 1
  %or2606 = or i64 %shl2603, %shr2605
  %arrayidx2607 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1509 = load i64, i64* %arrayidx2607, align 8
  %shl2608 = shl i64 %1509, 56
  %arrayidx2609 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1510 = load i64, i64* %arrayidx2609, align 8
  %shr2610 = lshr i64 %1510, 8
  %or2611 = or i64 %shl2608, %shr2610
  %arrayidx2612 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1511 = load i64, i64* %arrayidx2612, align 8
  %shr2613 = lshr i64 %1511, 7
  %xor2614 = xor i64 %or2611, %shr2613
  %xor2615 = xor i64 %or2606, %xor2614
  %add2616 = add i64 %1506, %xor2615
  %add2617 = add i64 %xor2600, %add2616
  %add2618 = add i64 %1500, %add2617
  %arrayidx2619 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  store i64 %add2618, i64* %arrayidx2619, align 8
  %add2620 = add i64 %1499, %add2618
  %add2621 = add i64 %xor2585, %add2620
  %add2622 = add i64 %xor2582, %add2621
  %add2623 = add i64 %1488, %add2622
  store i64 %add2623, i64* %t12571, align 8
  %1512 = load i64, i64* %c, align 8
  %1513 = load i64, i64* %t12571, align 8
  %add2624 = add i64 %1512, %1513
  store i64 %add2624, i64* %c, align 8
  %1514 = load i64, i64* %t02554, align 8
  %1515 = load i64, i64* %t12571, align 8
  %add2625 = add i64 %1514, %1515
  store i64 %add2625, i64* %g, align 8
  br label %do.end.2626

do.end.2626:                                      ; preds = %do.body.2553
  br label %do.body.2627

do.body.2627:                                     ; preds = %do.end.2626
  %1516 = load i64, i64* %g, align 8
  %shl2629 = shl i64 %1516, 36
  %1517 = load i64, i64* %g, align 8
  %shr2630 = lshr i64 %1517, 28
  %or2631 = or i64 %shl2629, %shr2630
  %1518 = load i64, i64* %g, align 8
  %shl2632 = shl i64 %1518, 30
  %1519 = load i64, i64* %g, align 8
  %shr2633 = lshr i64 %1519, 34
  %or2634 = or i64 %shl2632, %shr2633
  %1520 = load i64, i64* %g, align 8
  %shl2635 = shl i64 %1520, 25
  %1521 = load i64, i64* %g, align 8
  %shr2636 = lshr i64 %1521, 39
  %or2637 = or i64 %shl2635, %shr2636
  %xor2638 = xor i64 %or2634, %or2637
  %xor2639 = xor i64 %or2631, %xor2638
  %1522 = load i64, i64* %g, align 8
  %1523 = load i64, i64* %h, align 8
  %and2640 = and i64 %1522, %1523
  %1524 = load i64, i64* %a, align 8
  %1525 = load i64, i64* %g, align 8
  %1526 = load i64, i64* %h, align 8
  %or2641 = or i64 %1525, %1526
  %and2642 = and i64 %1524, %or2641
  %or2643 = or i64 %and2640, %and2642
  %add2644 = add i64 %xor2639, %or2643
  store i64 %add2644, i64* %t02628, align 8
  %1527 = load i64, i64* %f, align 8
  %1528 = load i64, i64* %c, align 8
  %shl2646 = shl i64 %1528, 50
  %1529 = load i64, i64* %c, align 8
  %shr2647 = lshr i64 %1529, 14
  %or2648 = or i64 %shl2646, %shr2647
  %1530 = load i64, i64* %c, align 8
  %shl2649 = shl i64 %1530, 46
  %1531 = load i64, i64* %c, align 8
  %shr2650 = lshr i64 %1531, 18
  %or2651 = or i64 %shl2649, %shr2650
  %1532 = load i64, i64* %c, align 8
  %shl2652 = shl i64 %1532, 23
  %1533 = load i64, i64* %c, align 8
  %shr2653 = lshr i64 %1533, 41
  %or2654 = or i64 %shl2652, %shr2653
  %xor2655 = xor i64 %or2651, %or2654
  %xor2656 = xor i64 %or2648, %xor2655
  %1534 = load i64, i64* %e, align 8
  %1535 = load i64, i64* %c, align 8
  %1536 = load i64, i64* %d, align 8
  %1537 = load i64, i64* %e, align 8
  %xor2657 = xor i64 %1536, %1537
  %and2658 = and i64 %1535, %xor2657
  %xor2659 = xor i64 %1534, %and2658
  %1538 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 42), align 8
  %arrayidx2660 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1539 = load i64, i64* %arrayidx2660, align 8
  %arrayidx2661 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1540 = load i64, i64* %arrayidx2661, align 8
  %shl2662 = shl i64 %1540, 45
  %arrayidx2663 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1541 = load i64, i64* %arrayidx2663, align 8
  %shr2664 = lshr i64 %1541, 19
  %or2665 = or i64 %shl2662, %shr2664
  %arrayidx2666 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1542 = load i64, i64* %arrayidx2666, align 8
  %shl2667 = shl i64 %1542, 3
  %arrayidx2668 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1543 = load i64, i64* %arrayidx2668, align 8
  %shr2669 = lshr i64 %1543, 61
  %or2670 = or i64 %shl2667, %shr2669
  %arrayidx2671 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1544 = load i64, i64* %arrayidx2671, align 8
  %shr2672 = lshr i64 %1544, 6
  %xor2673 = xor i64 %or2670, %shr2672
  %xor2674 = xor i64 %or2665, %xor2673
  %arrayidx2675 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1545 = load i64, i64* %arrayidx2675, align 8
  %arrayidx2676 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1546 = load i64, i64* %arrayidx2676, align 8
  %shl2677 = shl i64 %1546, 63
  %arrayidx2678 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1547 = load i64, i64* %arrayidx2678, align 8
  %shr2679 = lshr i64 %1547, 1
  %or2680 = or i64 %shl2677, %shr2679
  %arrayidx2681 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1548 = load i64, i64* %arrayidx2681, align 8
  %shl2682 = shl i64 %1548, 56
  %arrayidx2683 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1549 = load i64, i64* %arrayidx2683, align 8
  %shr2684 = lshr i64 %1549, 8
  %or2685 = or i64 %shl2682, %shr2684
  %arrayidx2686 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1550 = load i64, i64* %arrayidx2686, align 8
  %shr2687 = lshr i64 %1550, 7
  %xor2688 = xor i64 %or2685, %shr2687
  %xor2689 = xor i64 %or2680, %xor2688
  %add2690 = add i64 %1545, %xor2689
  %add2691 = add i64 %xor2674, %add2690
  %add2692 = add i64 %1539, %add2691
  %arrayidx2693 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  store i64 %add2692, i64* %arrayidx2693, align 8
  %add2694 = add i64 %1538, %add2692
  %add2695 = add i64 %xor2659, %add2694
  %add2696 = add i64 %xor2656, %add2695
  %add2697 = add i64 %1527, %add2696
  store i64 %add2697, i64* %t12645, align 8
  %1551 = load i64, i64* %b, align 8
  %1552 = load i64, i64* %t12645, align 8
  %add2698 = add i64 %1551, %1552
  store i64 %add2698, i64* %b, align 8
  %1553 = load i64, i64* %t02628, align 8
  %1554 = load i64, i64* %t12645, align 8
  %add2699 = add i64 %1553, %1554
  store i64 %add2699, i64* %f, align 8
  br label %do.end.2700

do.end.2700:                                      ; preds = %do.body.2627
  br label %do.body.2701

do.body.2701:                                     ; preds = %do.end.2700
  %1555 = load i64, i64* %f, align 8
  %shl2703 = shl i64 %1555, 36
  %1556 = load i64, i64* %f, align 8
  %shr2704 = lshr i64 %1556, 28
  %or2705 = or i64 %shl2703, %shr2704
  %1557 = load i64, i64* %f, align 8
  %shl2706 = shl i64 %1557, 30
  %1558 = load i64, i64* %f, align 8
  %shr2707 = lshr i64 %1558, 34
  %or2708 = or i64 %shl2706, %shr2707
  %1559 = load i64, i64* %f, align 8
  %shl2709 = shl i64 %1559, 25
  %1560 = load i64, i64* %f, align 8
  %shr2710 = lshr i64 %1560, 39
  %or2711 = or i64 %shl2709, %shr2710
  %xor2712 = xor i64 %or2708, %or2711
  %xor2713 = xor i64 %or2705, %xor2712
  %1561 = load i64, i64* %f, align 8
  %1562 = load i64, i64* %g, align 8
  %and2714 = and i64 %1561, %1562
  %1563 = load i64, i64* %h, align 8
  %1564 = load i64, i64* %f, align 8
  %1565 = load i64, i64* %g, align 8
  %or2715 = or i64 %1564, %1565
  %and2716 = and i64 %1563, %or2715
  %or2717 = or i64 %and2714, %and2716
  %add2718 = add i64 %xor2713, %or2717
  store i64 %add2718, i64* %t02702, align 8
  %1566 = load i64, i64* %e, align 8
  %1567 = load i64, i64* %b, align 8
  %shl2720 = shl i64 %1567, 50
  %1568 = load i64, i64* %b, align 8
  %shr2721 = lshr i64 %1568, 14
  %or2722 = or i64 %shl2720, %shr2721
  %1569 = load i64, i64* %b, align 8
  %shl2723 = shl i64 %1569, 46
  %1570 = load i64, i64* %b, align 8
  %shr2724 = lshr i64 %1570, 18
  %or2725 = or i64 %shl2723, %shr2724
  %1571 = load i64, i64* %b, align 8
  %shl2726 = shl i64 %1571, 23
  %1572 = load i64, i64* %b, align 8
  %shr2727 = lshr i64 %1572, 41
  %or2728 = or i64 %shl2726, %shr2727
  %xor2729 = xor i64 %or2725, %or2728
  %xor2730 = xor i64 %or2722, %xor2729
  %1573 = load i64, i64* %d, align 8
  %1574 = load i64, i64* %b, align 8
  %1575 = load i64, i64* %c, align 8
  %1576 = load i64, i64* %d, align 8
  %xor2731 = xor i64 %1575, %1576
  %and2732 = and i64 %1574, %xor2731
  %xor2733 = xor i64 %1573, %and2732
  %1577 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 43), align 8
  %arrayidx2734 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1578 = load i64, i64* %arrayidx2734, align 8
  %arrayidx2735 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1579 = load i64, i64* %arrayidx2735, align 8
  %shl2736 = shl i64 %1579, 45
  %arrayidx2737 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1580 = load i64, i64* %arrayidx2737, align 8
  %shr2738 = lshr i64 %1580, 19
  %or2739 = or i64 %shl2736, %shr2738
  %arrayidx2740 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1581 = load i64, i64* %arrayidx2740, align 8
  %shl2741 = shl i64 %1581, 3
  %arrayidx2742 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1582 = load i64, i64* %arrayidx2742, align 8
  %shr2743 = lshr i64 %1582, 61
  %or2744 = or i64 %shl2741, %shr2743
  %arrayidx2745 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1583 = load i64, i64* %arrayidx2745, align 8
  %shr2746 = lshr i64 %1583, 6
  %xor2747 = xor i64 %or2744, %shr2746
  %xor2748 = xor i64 %or2739, %xor2747
  %arrayidx2749 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1584 = load i64, i64* %arrayidx2749, align 8
  %arrayidx2750 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1585 = load i64, i64* %arrayidx2750, align 8
  %shl2751 = shl i64 %1585, 63
  %arrayidx2752 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1586 = load i64, i64* %arrayidx2752, align 8
  %shr2753 = lshr i64 %1586, 1
  %or2754 = or i64 %shl2751, %shr2753
  %arrayidx2755 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1587 = load i64, i64* %arrayidx2755, align 8
  %shl2756 = shl i64 %1587, 56
  %arrayidx2757 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1588 = load i64, i64* %arrayidx2757, align 8
  %shr2758 = lshr i64 %1588, 8
  %or2759 = or i64 %shl2756, %shr2758
  %arrayidx2760 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1589 = load i64, i64* %arrayidx2760, align 8
  %shr2761 = lshr i64 %1589, 7
  %xor2762 = xor i64 %or2759, %shr2761
  %xor2763 = xor i64 %or2754, %xor2762
  %add2764 = add i64 %1584, %xor2763
  %add2765 = add i64 %xor2748, %add2764
  %add2766 = add i64 %1578, %add2765
  %arrayidx2767 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  store i64 %add2766, i64* %arrayidx2767, align 8
  %add2768 = add i64 %1577, %add2766
  %add2769 = add i64 %xor2733, %add2768
  %add2770 = add i64 %xor2730, %add2769
  %add2771 = add i64 %1566, %add2770
  store i64 %add2771, i64* %t12719, align 8
  %1590 = load i64, i64* %a, align 8
  %1591 = load i64, i64* %t12719, align 8
  %add2772 = add i64 %1590, %1591
  store i64 %add2772, i64* %a, align 8
  %1592 = load i64, i64* %t02702, align 8
  %1593 = load i64, i64* %t12719, align 8
  %add2773 = add i64 %1592, %1593
  store i64 %add2773, i64* %e, align 8
  br label %do.end.2774

do.end.2774:                                      ; preds = %do.body.2701
  br label %do.body.2775

do.body.2775:                                     ; preds = %do.end.2774
  %1594 = load i64, i64* %e, align 8
  %shl2777 = shl i64 %1594, 36
  %1595 = load i64, i64* %e, align 8
  %shr2778 = lshr i64 %1595, 28
  %or2779 = or i64 %shl2777, %shr2778
  %1596 = load i64, i64* %e, align 8
  %shl2780 = shl i64 %1596, 30
  %1597 = load i64, i64* %e, align 8
  %shr2781 = lshr i64 %1597, 34
  %or2782 = or i64 %shl2780, %shr2781
  %1598 = load i64, i64* %e, align 8
  %shl2783 = shl i64 %1598, 25
  %1599 = load i64, i64* %e, align 8
  %shr2784 = lshr i64 %1599, 39
  %or2785 = or i64 %shl2783, %shr2784
  %xor2786 = xor i64 %or2782, %or2785
  %xor2787 = xor i64 %or2779, %xor2786
  %1600 = load i64, i64* %e, align 8
  %1601 = load i64, i64* %f, align 8
  %and2788 = and i64 %1600, %1601
  %1602 = load i64, i64* %g, align 8
  %1603 = load i64, i64* %e, align 8
  %1604 = load i64, i64* %f, align 8
  %or2789 = or i64 %1603, %1604
  %and2790 = and i64 %1602, %or2789
  %or2791 = or i64 %and2788, %and2790
  %add2792 = add i64 %xor2787, %or2791
  store i64 %add2792, i64* %t02776, align 8
  %1605 = load i64, i64* %d, align 8
  %1606 = load i64, i64* %a, align 8
  %shl2794 = shl i64 %1606, 50
  %1607 = load i64, i64* %a, align 8
  %shr2795 = lshr i64 %1607, 14
  %or2796 = or i64 %shl2794, %shr2795
  %1608 = load i64, i64* %a, align 8
  %shl2797 = shl i64 %1608, 46
  %1609 = load i64, i64* %a, align 8
  %shr2798 = lshr i64 %1609, 18
  %or2799 = or i64 %shl2797, %shr2798
  %1610 = load i64, i64* %a, align 8
  %shl2800 = shl i64 %1610, 23
  %1611 = load i64, i64* %a, align 8
  %shr2801 = lshr i64 %1611, 41
  %or2802 = or i64 %shl2800, %shr2801
  %xor2803 = xor i64 %or2799, %or2802
  %xor2804 = xor i64 %or2796, %xor2803
  %1612 = load i64, i64* %c, align 8
  %1613 = load i64, i64* %a, align 8
  %1614 = load i64, i64* %b, align 8
  %1615 = load i64, i64* %c, align 8
  %xor2805 = xor i64 %1614, %1615
  %and2806 = and i64 %1613, %xor2805
  %xor2807 = xor i64 %1612, %and2806
  %1616 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 44), align 8
  %arrayidx2808 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1617 = load i64, i64* %arrayidx2808, align 8
  %arrayidx2809 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1618 = load i64, i64* %arrayidx2809, align 8
  %shl2810 = shl i64 %1618, 45
  %arrayidx2811 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1619 = load i64, i64* %arrayidx2811, align 8
  %shr2812 = lshr i64 %1619, 19
  %or2813 = or i64 %shl2810, %shr2812
  %arrayidx2814 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1620 = load i64, i64* %arrayidx2814, align 8
  %shl2815 = shl i64 %1620, 3
  %arrayidx2816 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1621 = load i64, i64* %arrayidx2816, align 8
  %shr2817 = lshr i64 %1621, 61
  %or2818 = or i64 %shl2815, %shr2817
  %arrayidx2819 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1622 = load i64, i64* %arrayidx2819, align 8
  %shr2820 = lshr i64 %1622, 6
  %xor2821 = xor i64 %or2818, %shr2820
  %xor2822 = xor i64 %or2813, %xor2821
  %arrayidx2823 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1623 = load i64, i64* %arrayidx2823, align 8
  %arrayidx2824 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1624 = load i64, i64* %arrayidx2824, align 8
  %shl2825 = shl i64 %1624, 63
  %arrayidx2826 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1625 = load i64, i64* %arrayidx2826, align 8
  %shr2827 = lshr i64 %1625, 1
  %or2828 = or i64 %shl2825, %shr2827
  %arrayidx2829 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1626 = load i64, i64* %arrayidx2829, align 8
  %shl2830 = shl i64 %1626, 56
  %arrayidx2831 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1627 = load i64, i64* %arrayidx2831, align 8
  %shr2832 = lshr i64 %1627, 8
  %or2833 = or i64 %shl2830, %shr2832
  %arrayidx2834 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1628 = load i64, i64* %arrayidx2834, align 8
  %shr2835 = lshr i64 %1628, 7
  %xor2836 = xor i64 %or2833, %shr2835
  %xor2837 = xor i64 %or2828, %xor2836
  %add2838 = add i64 %1623, %xor2837
  %add2839 = add i64 %xor2822, %add2838
  %add2840 = add i64 %1617, %add2839
  %arrayidx2841 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  store i64 %add2840, i64* %arrayidx2841, align 8
  %add2842 = add i64 %1616, %add2840
  %add2843 = add i64 %xor2807, %add2842
  %add2844 = add i64 %xor2804, %add2843
  %add2845 = add i64 %1605, %add2844
  store i64 %add2845, i64* %t12793, align 8
  %1629 = load i64, i64* %h, align 8
  %1630 = load i64, i64* %t12793, align 8
  %add2846 = add i64 %1629, %1630
  store i64 %add2846, i64* %h, align 8
  %1631 = load i64, i64* %t02776, align 8
  %1632 = load i64, i64* %t12793, align 8
  %add2847 = add i64 %1631, %1632
  store i64 %add2847, i64* %d, align 8
  br label %do.end.2848

do.end.2848:                                      ; preds = %do.body.2775
  br label %do.body.2849

do.body.2849:                                     ; preds = %do.end.2848
  %1633 = load i64, i64* %d, align 8
  %shl2851 = shl i64 %1633, 36
  %1634 = load i64, i64* %d, align 8
  %shr2852 = lshr i64 %1634, 28
  %or2853 = or i64 %shl2851, %shr2852
  %1635 = load i64, i64* %d, align 8
  %shl2854 = shl i64 %1635, 30
  %1636 = load i64, i64* %d, align 8
  %shr2855 = lshr i64 %1636, 34
  %or2856 = or i64 %shl2854, %shr2855
  %1637 = load i64, i64* %d, align 8
  %shl2857 = shl i64 %1637, 25
  %1638 = load i64, i64* %d, align 8
  %shr2858 = lshr i64 %1638, 39
  %or2859 = or i64 %shl2857, %shr2858
  %xor2860 = xor i64 %or2856, %or2859
  %xor2861 = xor i64 %or2853, %xor2860
  %1639 = load i64, i64* %d, align 8
  %1640 = load i64, i64* %e, align 8
  %and2862 = and i64 %1639, %1640
  %1641 = load i64, i64* %f, align 8
  %1642 = load i64, i64* %d, align 8
  %1643 = load i64, i64* %e, align 8
  %or2863 = or i64 %1642, %1643
  %and2864 = and i64 %1641, %or2863
  %or2865 = or i64 %and2862, %and2864
  %add2866 = add i64 %xor2861, %or2865
  store i64 %add2866, i64* %t02850, align 8
  %1644 = load i64, i64* %c, align 8
  %1645 = load i64, i64* %h, align 8
  %shl2868 = shl i64 %1645, 50
  %1646 = load i64, i64* %h, align 8
  %shr2869 = lshr i64 %1646, 14
  %or2870 = or i64 %shl2868, %shr2869
  %1647 = load i64, i64* %h, align 8
  %shl2871 = shl i64 %1647, 46
  %1648 = load i64, i64* %h, align 8
  %shr2872 = lshr i64 %1648, 18
  %or2873 = or i64 %shl2871, %shr2872
  %1649 = load i64, i64* %h, align 8
  %shl2874 = shl i64 %1649, 23
  %1650 = load i64, i64* %h, align 8
  %shr2875 = lshr i64 %1650, 41
  %or2876 = or i64 %shl2874, %shr2875
  %xor2877 = xor i64 %or2873, %or2876
  %xor2878 = xor i64 %or2870, %xor2877
  %1651 = load i64, i64* %b, align 8
  %1652 = load i64, i64* %h, align 8
  %1653 = load i64, i64* %a, align 8
  %1654 = load i64, i64* %b, align 8
  %xor2879 = xor i64 %1653, %1654
  %and2880 = and i64 %1652, %xor2879
  %xor2881 = xor i64 %1651, %and2880
  %1655 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 45), align 8
  %arrayidx2882 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1656 = load i64, i64* %arrayidx2882, align 8
  %arrayidx2883 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1657 = load i64, i64* %arrayidx2883, align 8
  %shl2884 = shl i64 %1657, 45
  %arrayidx2885 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1658 = load i64, i64* %arrayidx2885, align 8
  %shr2886 = lshr i64 %1658, 19
  %or2887 = or i64 %shl2884, %shr2886
  %arrayidx2888 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1659 = load i64, i64* %arrayidx2888, align 8
  %shl2889 = shl i64 %1659, 3
  %arrayidx2890 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1660 = load i64, i64* %arrayidx2890, align 8
  %shr2891 = lshr i64 %1660, 61
  %or2892 = or i64 %shl2889, %shr2891
  %arrayidx2893 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1661 = load i64, i64* %arrayidx2893, align 8
  %shr2894 = lshr i64 %1661, 6
  %xor2895 = xor i64 %or2892, %shr2894
  %xor2896 = xor i64 %or2887, %xor2895
  %arrayidx2897 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1662 = load i64, i64* %arrayidx2897, align 8
  %arrayidx2898 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1663 = load i64, i64* %arrayidx2898, align 8
  %shl2899 = shl i64 %1663, 63
  %arrayidx2900 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1664 = load i64, i64* %arrayidx2900, align 8
  %shr2901 = lshr i64 %1664, 1
  %or2902 = or i64 %shl2899, %shr2901
  %arrayidx2903 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1665 = load i64, i64* %arrayidx2903, align 8
  %shl2904 = shl i64 %1665, 56
  %arrayidx2905 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1666 = load i64, i64* %arrayidx2905, align 8
  %shr2906 = lshr i64 %1666, 8
  %or2907 = or i64 %shl2904, %shr2906
  %arrayidx2908 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1667 = load i64, i64* %arrayidx2908, align 8
  %shr2909 = lshr i64 %1667, 7
  %xor2910 = xor i64 %or2907, %shr2909
  %xor2911 = xor i64 %or2902, %xor2910
  %add2912 = add i64 %1662, %xor2911
  %add2913 = add i64 %xor2896, %add2912
  %add2914 = add i64 %1656, %add2913
  %arrayidx2915 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  store i64 %add2914, i64* %arrayidx2915, align 8
  %add2916 = add i64 %1655, %add2914
  %add2917 = add i64 %xor2881, %add2916
  %add2918 = add i64 %xor2878, %add2917
  %add2919 = add i64 %1644, %add2918
  store i64 %add2919, i64* %t12867, align 8
  %1668 = load i64, i64* %g, align 8
  %1669 = load i64, i64* %t12867, align 8
  %add2920 = add i64 %1668, %1669
  store i64 %add2920, i64* %g, align 8
  %1670 = load i64, i64* %t02850, align 8
  %1671 = load i64, i64* %t12867, align 8
  %add2921 = add i64 %1670, %1671
  store i64 %add2921, i64* %c, align 8
  br label %do.end.2922

do.end.2922:                                      ; preds = %do.body.2849
  br label %do.body.2923

do.body.2923:                                     ; preds = %do.end.2922
  %1672 = load i64, i64* %c, align 8
  %shl2925 = shl i64 %1672, 36
  %1673 = load i64, i64* %c, align 8
  %shr2926 = lshr i64 %1673, 28
  %or2927 = or i64 %shl2925, %shr2926
  %1674 = load i64, i64* %c, align 8
  %shl2928 = shl i64 %1674, 30
  %1675 = load i64, i64* %c, align 8
  %shr2929 = lshr i64 %1675, 34
  %or2930 = or i64 %shl2928, %shr2929
  %1676 = load i64, i64* %c, align 8
  %shl2931 = shl i64 %1676, 25
  %1677 = load i64, i64* %c, align 8
  %shr2932 = lshr i64 %1677, 39
  %or2933 = or i64 %shl2931, %shr2932
  %xor2934 = xor i64 %or2930, %or2933
  %xor2935 = xor i64 %or2927, %xor2934
  %1678 = load i64, i64* %c, align 8
  %1679 = load i64, i64* %d, align 8
  %and2936 = and i64 %1678, %1679
  %1680 = load i64, i64* %e, align 8
  %1681 = load i64, i64* %c, align 8
  %1682 = load i64, i64* %d, align 8
  %or2937 = or i64 %1681, %1682
  %and2938 = and i64 %1680, %or2937
  %or2939 = or i64 %and2936, %and2938
  %add2940 = add i64 %xor2935, %or2939
  store i64 %add2940, i64* %t02924, align 8
  %1683 = load i64, i64* %b, align 8
  %1684 = load i64, i64* %g, align 8
  %shl2942 = shl i64 %1684, 50
  %1685 = load i64, i64* %g, align 8
  %shr2943 = lshr i64 %1685, 14
  %or2944 = or i64 %shl2942, %shr2943
  %1686 = load i64, i64* %g, align 8
  %shl2945 = shl i64 %1686, 46
  %1687 = load i64, i64* %g, align 8
  %shr2946 = lshr i64 %1687, 18
  %or2947 = or i64 %shl2945, %shr2946
  %1688 = load i64, i64* %g, align 8
  %shl2948 = shl i64 %1688, 23
  %1689 = load i64, i64* %g, align 8
  %shr2949 = lshr i64 %1689, 41
  %or2950 = or i64 %shl2948, %shr2949
  %xor2951 = xor i64 %or2947, %or2950
  %xor2952 = xor i64 %or2944, %xor2951
  %1690 = load i64, i64* %a, align 8
  %1691 = load i64, i64* %g, align 8
  %1692 = load i64, i64* %h, align 8
  %1693 = load i64, i64* %a, align 8
  %xor2953 = xor i64 %1692, %1693
  %and2954 = and i64 %1691, %xor2953
  %xor2955 = xor i64 %1690, %and2954
  %1694 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 46), align 8
  %arrayidx2956 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1695 = load i64, i64* %arrayidx2956, align 8
  %arrayidx2957 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1696 = load i64, i64* %arrayidx2957, align 8
  %shl2958 = shl i64 %1696, 45
  %arrayidx2959 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1697 = load i64, i64* %arrayidx2959, align 8
  %shr2960 = lshr i64 %1697, 19
  %or2961 = or i64 %shl2958, %shr2960
  %arrayidx2962 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1698 = load i64, i64* %arrayidx2962, align 8
  %shl2963 = shl i64 %1698, 3
  %arrayidx2964 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1699 = load i64, i64* %arrayidx2964, align 8
  %shr2965 = lshr i64 %1699, 61
  %or2966 = or i64 %shl2963, %shr2965
  %arrayidx2967 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1700 = load i64, i64* %arrayidx2967, align 8
  %shr2968 = lshr i64 %1700, 6
  %xor2969 = xor i64 %or2966, %shr2968
  %xor2970 = xor i64 %or2961, %xor2969
  %arrayidx2971 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %1701 = load i64, i64* %arrayidx2971, align 8
  %arrayidx2972 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1702 = load i64, i64* %arrayidx2972, align 8
  %shl2973 = shl i64 %1702, 63
  %arrayidx2974 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1703 = load i64, i64* %arrayidx2974, align 8
  %shr2975 = lshr i64 %1703, 1
  %or2976 = or i64 %shl2973, %shr2975
  %arrayidx2977 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1704 = load i64, i64* %arrayidx2977, align 8
  %shl2978 = shl i64 %1704, 56
  %arrayidx2979 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1705 = load i64, i64* %arrayidx2979, align 8
  %shr2980 = lshr i64 %1705, 8
  %or2981 = or i64 %shl2978, %shr2980
  %arrayidx2982 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1706 = load i64, i64* %arrayidx2982, align 8
  %shr2983 = lshr i64 %1706, 7
  %xor2984 = xor i64 %or2981, %shr2983
  %xor2985 = xor i64 %or2976, %xor2984
  %add2986 = add i64 %1701, %xor2985
  %add2987 = add i64 %xor2970, %add2986
  %add2988 = add i64 %1695, %add2987
  %arrayidx2989 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  store i64 %add2988, i64* %arrayidx2989, align 8
  %add2990 = add i64 %1694, %add2988
  %add2991 = add i64 %xor2955, %add2990
  %add2992 = add i64 %xor2952, %add2991
  %add2993 = add i64 %1683, %add2992
  store i64 %add2993, i64* %t12941, align 8
  %1707 = load i64, i64* %f, align 8
  %1708 = load i64, i64* %t12941, align 8
  %add2994 = add i64 %1707, %1708
  store i64 %add2994, i64* %f, align 8
  %1709 = load i64, i64* %t02924, align 8
  %1710 = load i64, i64* %t12941, align 8
  %add2995 = add i64 %1709, %1710
  store i64 %add2995, i64* %b, align 8
  br label %do.end.2996

do.end.2996:                                      ; preds = %do.body.2923
  br label %do.body.2997

do.body.2997:                                     ; preds = %do.end.2996
  %1711 = load i64, i64* %b, align 8
  %shl2999 = shl i64 %1711, 36
  %1712 = load i64, i64* %b, align 8
  %shr3000 = lshr i64 %1712, 28
  %or3001 = or i64 %shl2999, %shr3000
  %1713 = load i64, i64* %b, align 8
  %shl3002 = shl i64 %1713, 30
  %1714 = load i64, i64* %b, align 8
  %shr3003 = lshr i64 %1714, 34
  %or3004 = or i64 %shl3002, %shr3003
  %1715 = load i64, i64* %b, align 8
  %shl3005 = shl i64 %1715, 25
  %1716 = load i64, i64* %b, align 8
  %shr3006 = lshr i64 %1716, 39
  %or3007 = or i64 %shl3005, %shr3006
  %xor3008 = xor i64 %or3004, %or3007
  %xor3009 = xor i64 %or3001, %xor3008
  %1717 = load i64, i64* %b, align 8
  %1718 = load i64, i64* %c, align 8
  %and3010 = and i64 %1717, %1718
  %1719 = load i64, i64* %d, align 8
  %1720 = load i64, i64* %b, align 8
  %1721 = load i64, i64* %c, align 8
  %or3011 = or i64 %1720, %1721
  %and3012 = and i64 %1719, %or3011
  %or3013 = or i64 %and3010, %and3012
  %add3014 = add i64 %xor3009, %or3013
  store i64 %add3014, i64* %t02998, align 8
  %1722 = load i64, i64* %a, align 8
  %1723 = load i64, i64* %f, align 8
  %shl3016 = shl i64 %1723, 50
  %1724 = load i64, i64* %f, align 8
  %shr3017 = lshr i64 %1724, 14
  %or3018 = or i64 %shl3016, %shr3017
  %1725 = load i64, i64* %f, align 8
  %shl3019 = shl i64 %1725, 46
  %1726 = load i64, i64* %f, align 8
  %shr3020 = lshr i64 %1726, 18
  %or3021 = or i64 %shl3019, %shr3020
  %1727 = load i64, i64* %f, align 8
  %shl3022 = shl i64 %1727, 23
  %1728 = load i64, i64* %f, align 8
  %shr3023 = lshr i64 %1728, 41
  %or3024 = or i64 %shl3022, %shr3023
  %xor3025 = xor i64 %or3021, %or3024
  %xor3026 = xor i64 %or3018, %xor3025
  %1729 = load i64, i64* %h, align 8
  %1730 = load i64, i64* %f, align 8
  %1731 = load i64, i64* %g, align 8
  %1732 = load i64, i64* %h, align 8
  %xor3027 = xor i64 %1731, %1732
  %and3028 = and i64 %1730, %xor3027
  %xor3029 = xor i64 %1729, %and3028
  %1733 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 47), align 8
  %arrayidx3030 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1734 = load i64, i64* %arrayidx3030, align 8
  %arrayidx3031 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1735 = load i64, i64* %arrayidx3031, align 8
  %shl3032 = shl i64 %1735, 45
  %arrayidx3033 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1736 = load i64, i64* %arrayidx3033, align 8
  %shr3034 = lshr i64 %1736, 19
  %or3035 = or i64 %shl3032, %shr3034
  %arrayidx3036 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1737 = load i64, i64* %arrayidx3036, align 8
  %shl3037 = shl i64 %1737, 3
  %arrayidx3038 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1738 = load i64, i64* %arrayidx3038, align 8
  %shr3039 = lshr i64 %1738, 61
  %or3040 = or i64 %shl3037, %shr3039
  %arrayidx3041 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1739 = load i64, i64* %arrayidx3041, align 8
  %shr3042 = lshr i64 %1739, 6
  %xor3043 = xor i64 %or3040, %shr3042
  %xor3044 = xor i64 %or3035, %xor3043
  %arrayidx3045 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %1740 = load i64, i64* %arrayidx3045, align 8
  %arrayidx3046 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1741 = load i64, i64* %arrayidx3046, align 8
  %shl3047 = shl i64 %1741, 63
  %arrayidx3048 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1742 = load i64, i64* %arrayidx3048, align 8
  %shr3049 = lshr i64 %1742, 1
  %or3050 = or i64 %shl3047, %shr3049
  %arrayidx3051 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1743 = load i64, i64* %arrayidx3051, align 8
  %shl3052 = shl i64 %1743, 56
  %arrayidx3053 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1744 = load i64, i64* %arrayidx3053, align 8
  %shr3054 = lshr i64 %1744, 8
  %or3055 = or i64 %shl3052, %shr3054
  %arrayidx3056 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1745 = load i64, i64* %arrayidx3056, align 8
  %shr3057 = lshr i64 %1745, 7
  %xor3058 = xor i64 %or3055, %shr3057
  %xor3059 = xor i64 %or3050, %xor3058
  %add3060 = add i64 %1740, %xor3059
  %add3061 = add i64 %xor3044, %add3060
  %add3062 = add i64 %1734, %add3061
  %arrayidx3063 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  store i64 %add3062, i64* %arrayidx3063, align 8
  %add3064 = add i64 %1733, %add3062
  %add3065 = add i64 %xor3029, %add3064
  %add3066 = add i64 %xor3026, %add3065
  %add3067 = add i64 %1722, %add3066
  store i64 %add3067, i64* %t13015, align 8
  %1746 = load i64, i64* %e, align 8
  %1747 = load i64, i64* %t13015, align 8
  %add3068 = add i64 %1746, %1747
  store i64 %add3068, i64* %e, align 8
  %1748 = load i64, i64* %t02998, align 8
  %1749 = load i64, i64* %t13015, align 8
  %add3069 = add i64 %1748, %1749
  store i64 %add3069, i64* %a, align 8
  br label %do.end.3070

do.end.3070:                                      ; preds = %do.body.2997
  br label %do.body.3071

do.body.3071:                                     ; preds = %do.end.3070
  %1750 = load i64, i64* %a, align 8
  %shl3073 = shl i64 %1750, 36
  %1751 = load i64, i64* %a, align 8
  %shr3074 = lshr i64 %1751, 28
  %or3075 = or i64 %shl3073, %shr3074
  %1752 = load i64, i64* %a, align 8
  %shl3076 = shl i64 %1752, 30
  %1753 = load i64, i64* %a, align 8
  %shr3077 = lshr i64 %1753, 34
  %or3078 = or i64 %shl3076, %shr3077
  %1754 = load i64, i64* %a, align 8
  %shl3079 = shl i64 %1754, 25
  %1755 = load i64, i64* %a, align 8
  %shr3080 = lshr i64 %1755, 39
  %or3081 = or i64 %shl3079, %shr3080
  %xor3082 = xor i64 %or3078, %or3081
  %xor3083 = xor i64 %or3075, %xor3082
  %1756 = load i64, i64* %a, align 8
  %1757 = load i64, i64* %b, align 8
  %and3084 = and i64 %1756, %1757
  %1758 = load i64, i64* %c, align 8
  %1759 = load i64, i64* %a, align 8
  %1760 = load i64, i64* %b, align 8
  %or3085 = or i64 %1759, %1760
  %and3086 = and i64 %1758, %or3085
  %or3087 = or i64 %and3084, %and3086
  %add3088 = add i64 %xor3083, %or3087
  store i64 %add3088, i64* %t03072, align 8
  %1761 = load i64, i64* %h, align 8
  %1762 = load i64, i64* %e, align 8
  %shl3090 = shl i64 %1762, 50
  %1763 = load i64, i64* %e, align 8
  %shr3091 = lshr i64 %1763, 14
  %or3092 = or i64 %shl3090, %shr3091
  %1764 = load i64, i64* %e, align 8
  %shl3093 = shl i64 %1764, 46
  %1765 = load i64, i64* %e, align 8
  %shr3094 = lshr i64 %1765, 18
  %or3095 = or i64 %shl3093, %shr3094
  %1766 = load i64, i64* %e, align 8
  %shl3096 = shl i64 %1766, 23
  %1767 = load i64, i64* %e, align 8
  %shr3097 = lshr i64 %1767, 41
  %or3098 = or i64 %shl3096, %shr3097
  %xor3099 = xor i64 %or3095, %or3098
  %xor3100 = xor i64 %or3092, %xor3099
  %1768 = load i64, i64* %g, align 8
  %1769 = load i64, i64* %e, align 8
  %1770 = load i64, i64* %f, align 8
  %1771 = load i64, i64* %g, align 8
  %xor3101 = xor i64 %1770, %1771
  %and3102 = and i64 %1769, %xor3101
  %xor3103 = xor i64 %1768, %and3102
  %1772 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 48), align 8
  %arrayidx3104 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1773 = load i64, i64* %arrayidx3104, align 8
  %arrayidx3105 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1774 = load i64, i64* %arrayidx3105, align 8
  %shl3106 = shl i64 %1774, 45
  %arrayidx3107 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1775 = load i64, i64* %arrayidx3107, align 8
  %shr3108 = lshr i64 %1775, 19
  %or3109 = or i64 %shl3106, %shr3108
  %arrayidx3110 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1776 = load i64, i64* %arrayidx3110, align 8
  %shl3111 = shl i64 %1776, 3
  %arrayidx3112 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1777 = load i64, i64* %arrayidx3112, align 8
  %shr3113 = lshr i64 %1777, 61
  %or3114 = or i64 %shl3111, %shr3113
  %arrayidx3115 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1778 = load i64, i64* %arrayidx3115, align 8
  %shr3116 = lshr i64 %1778, 6
  %xor3117 = xor i64 %or3114, %shr3116
  %xor3118 = xor i64 %or3109, %xor3117
  %arrayidx3119 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %1779 = load i64, i64* %arrayidx3119, align 8
  %arrayidx3120 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1780 = load i64, i64* %arrayidx3120, align 8
  %shl3121 = shl i64 %1780, 63
  %arrayidx3122 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1781 = load i64, i64* %arrayidx3122, align 8
  %shr3123 = lshr i64 %1781, 1
  %or3124 = or i64 %shl3121, %shr3123
  %arrayidx3125 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1782 = load i64, i64* %arrayidx3125, align 8
  %shl3126 = shl i64 %1782, 56
  %arrayidx3127 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1783 = load i64, i64* %arrayidx3127, align 8
  %shr3128 = lshr i64 %1783, 8
  %or3129 = or i64 %shl3126, %shr3128
  %arrayidx3130 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1784 = load i64, i64* %arrayidx3130, align 8
  %shr3131 = lshr i64 %1784, 7
  %xor3132 = xor i64 %or3129, %shr3131
  %xor3133 = xor i64 %or3124, %xor3132
  %add3134 = add i64 %1779, %xor3133
  %add3135 = add i64 %xor3118, %add3134
  %add3136 = add i64 %1773, %add3135
  %arrayidx3137 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  store i64 %add3136, i64* %arrayidx3137, align 8
  %add3138 = add i64 %1772, %add3136
  %add3139 = add i64 %xor3103, %add3138
  %add3140 = add i64 %xor3100, %add3139
  %add3141 = add i64 %1761, %add3140
  store i64 %add3141, i64* %t13089, align 8
  %1785 = load i64, i64* %d, align 8
  %1786 = load i64, i64* %t13089, align 8
  %add3142 = add i64 %1785, %1786
  store i64 %add3142, i64* %d, align 8
  %1787 = load i64, i64* %t03072, align 8
  %1788 = load i64, i64* %t13089, align 8
  %add3143 = add i64 %1787, %1788
  store i64 %add3143, i64* %h, align 8
  br label %do.end.3144

do.end.3144:                                      ; preds = %do.body.3071
  br label %do.body.3145

do.body.3145:                                     ; preds = %do.end.3144
  %1789 = load i64, i64* %h, align 8
  %shl3147 = shl i64 %1789, 36
  %1790 = load i64, i64* %h, align 8
  %shr3148 = lshr i64 %1790, 28
  %or3149 = or i64 %shl3147, %shr3148
  %1791 = load i64, i64* %h, align 8
  %shl3150 = shl i64 %1791, 30
  %1792 = load i64, i64* %h, align 8
  %shr3151 = lshr i64 %1792, 34
  %or3152 = or i64 %shl3150, %shr3151
  %1793 = load i64, i64* %h, align 8
  %shl3153 = shl i64 %1793, 25
  %1794 = load i64, i64* %h, align 8
  %shr3154 = lshr i64 %1794, 39
  %or3155 = or i64 %shl3153, %shr3154
  %xor3156 = xor i64 %or3152, %or3155
  %xor3157 = xor i64 %or3149, %xor3156
  %1795 = load i64, i64* %h, align 8
  %1796 = load i64, i64* %a, align 8
  %and3158 = and i64 %1795, %1796
  %1797 = load i64, i64* %b, align 8
  %1798 = load i64, i64* %h, align 8
  %1799 = load i64, i64* %a, align 8
  %or3159 = or i64 %1798, %1799
  %and3160 = and i64 %1797, %or3159
  %or3161 = or i64 %and3158, %and3160
  %add3162 = add i64 %xor3157, %or3161
  store i64 %add3162, i64* %t03146, align 8
  %1800 = load i64, i64* %g, align 8
  %1801 = load i64, i64* %d, align 8
  %shl3164 = shl i64 %1801, 50
  %1802 = load i64, i64* %d, align 8
  %shr3165 = lshr i64 %1802, 14
  %or3166 = or i64 %shl3164, %shr3165
  %1803 = load i64, i64* %d, align 8
  %shl3167 = shl i64 %1803, 46
  %1804 = load i64, i64* %d, align 8
  %shr3168 = lshr i64 %1804, 18
  %or3169 = or i64 %shl3167, %shr3168
  %1805 = load i64, i64* %d, align 8
  %shl3170 = shl i64 %1805, 23
  %1806 = load i64, i64* %d, align 8
  %shr3171 = lshr i64 %1806, 41
  %or3172 = or i64 %shl3170, %shr3171
  %xor3173 = xor i64 %or3169, %or3172
  %xor3174 = xor i64 %or3166, %xor3173
  %1807 = load i64, i64* %f, align 8
  %1808 = load i64, i64* %d, align 8
  %1809 = load i64, i64* %e, align 8
  %1810 = load i64, i64* %f, align 8
  %xor3175 = xor i64 %1809, %1810
  %and3176 = and i64 %1808, %xor3175
  %xor3177 = xor i64 %1807, %and3176
  %1811 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 49), align 8
  %arrayidx3178 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1812 = load i64, i64* %arrayidx3178, align 8
  %arrayidx3179 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1813 = load i64, i64* %arrayidx3179, align 8
  %shl3180 = shl i64 %1813, 45
  %arrayidx3181 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1814 = load i64, i64* %arrayidx3181, align 8
  %shr3182 = lshr i64 %1814, 19
  %or3183 = or i64 %shl3180, %shr3182
  %arrayidx3184 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1815 = load i64, i64* %arrayidx3184, align 8
  %shl3185 = shl i64 %1815, 3
  %arrayidx3186 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1816 = load i64, i64* %arrayidx3186, align 8
  %shr3187 = lshr i64 %1816, 61
  %or3188 = or i64 %shl3185, %shr3187
  %arrayidx3189 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %1817 = load i64, i64* %arrayidx3189, align 8
  %shr3190 = lshr i64 %1817, 6
  %xor3191 = xor i64 %or3188, %shr3190
  %xor3192 = xor i64 %or3183, %xor3191
  %arrayidx3193 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %1818 = load i64, i64* %arrayidx3193, align 8
  %arrayidx3194 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1819 = load i64, i64* %arrayidx3194, align 8
  %shl3195 = shl i64 %1819, 63
  %arrayidx3196 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1820 = load i64, i64* %arrayidx3196, align 8
  %shr3197 = lshr i64 %1820, 1
  %or3198 = or i64 %shl3195, %shr3197
  %arrayidx3199 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1821 = load i64, i64* %arrayidx3199, align 8
  %shl3200 = shl i64 %1821, 56
  %arrayidx3201 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1822 = load i64, i64* %arrayidx3201, align 8
  %shr3202 = lshr i64 %1822, 8
  %or3203 = or i64 %shl3200, %shr3202
  %arrayidx3204 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1823 = load i64, i64* %arrayidx3204, align 8
  %shr3205 = lshr i64 %1823, 7
  %xor3206 = xor i64 %or3203, %shr3205
  %xor3207 = xor i64 %or3198, %xor3206
  %add3208 = add i64 %1818, %xor3207
  %add3209 = add i64 %xor3192, %add3208
  %add3210 = add i64 %1812, %add3209
  %arrayidx3211 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  store i64 %add3210, i64* %arrayidx3211, align 8
  %add3212 = add i64 %1811, %add3210
  %add3213 = add i64 %xor3177, %add3212
  %add3214 = add i64 %xor3174, %add3213
  %add3215 = add i64 %1800, %add3214
  store i64 %add3215, i64* %t13163, align 8
  %1824 = load i64, i64* %c, align 8
  %1825 = load i64, i64* %t13163, align 8
  %add3216 = add i64 %1824, %1825
  store i64 %add3216, i64* %c, align 8
  %1826 = load i64, i64* %t03146, align 8
  %1827 = load i64, i64* %t13163, align 8
  %add3217 = add i64 %1826, %1827
  store i64 %add3217, i64* %g, align 8
  br label %do.end.3218

do.end.3218:                                      ; preds = %do.body.3145
  br label %do.body.3219

do.body.3219:                                     ; preds = %do.end.3218
  %1828 = load i64, i64* %g, align 8
  %shl3221 = shl i64 %1828, 36
  %1829 = load i64, i64* %g, align 8
  %shr3222 = lshr i64 %1829, 28
  %or3223 = or i64 %shl3221, %shr3222
  %1830 = load i64, i64* %g, align 8
  %shl3224 = shl i64 %1830, 30
  %1831 = load i64, i64* %g, align 8
  %shr3225 = lshr i64 %1831, 34
  %or3226 = or i64 %shl3224, %shr3225
  %1832 = load i64, i64* %g, align 8
  %shl3227 = shl i64 %1832, 25
  %1833 = load i64, i64* %g, align 8
  %shr3228 = lshr i64 %1833, 39
  %or3229 = or i64 %shl3227, %shr3228
  %xor3230 = xor i64 %or3226, %or3229
  %xor3231 = xor i64 %or3223, %xor3230
  %1834 = load i64, i64* %g, align 8
  %1835 = load i64, i64* %h, align 8
  %and3232 = and i64 %1834, %1835
  %1836 = load i64, i64* %a, align 8
  %1837 = load i64, i64* %g, align 8
  %1838 = load i64, i64* %h, align 8
  %or3233 = or i64 %1837, %1838
  %and3234 = and i64 %1836, %or3233
  %or3235 = or i64 %and3232, %and3234
  %add3236 = add i64 %xor3231, %or3235
  store i64 %add3236, i64* %t03220, align 8
  %1839 = load i64, i64* %f, align 8
  %1840 = load i64, i64* %c, align 8
  %shl3238 = shl i64 %1840, 50
  %1841 = load i64, i64* %c, align 8
  %shr3239 = lshr i64 %1841, 14
  %or3240 = or i64 %shl3238, %shr3239
  %1842 = load i64, i64* %c, align 8
  %shl3241 = shl i64 %1842, 46
  %1843 = load i64, i64* %c, align 8
  %shr3242 = lshr i64 %1843, 18
  %or3243 = or i64 %shl3241, %shr3242
  %1844 = load i64, i64* %c, align 8
  %shl3244 = shl i64 %1844, 23
  %1845 = load i64, i64* %c, align 8
  %shr3245 = lshr i64 %1845, 41
  %or3246 = or i64 %shl3244, %shr3245
  %xor3247 = xor i64 %or3243, %or3246
  %xor3248 = xor i64 %or3240, %xor3247
  %1846 = load i64, i64* %e, align 8
  %1847 = load i64, i64* %c, align 8
  %1848 = load i64, i64* %d, align 8
  %1849 = load i64, i64* %e, align 8
  %xor3249 = xor i64 %1848, %1849
  %and3250 = and i64 %1847, %xor3249
  %xor3251 = xor i64 %1846, %and3250
  %1850 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 50), align 8
  %arrayidx3252 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1851 = load i64, i64* %arrayidx3252, align 8
  %arrayidx3253 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1852 = load i64, i64* %arrayidx3253, align 8
  %shl3254 = shl i64 %1852, 45
  %arrayidx3255 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1853 = load i64, i64* %arrayidx3255, align 8
  %shr3256 = lshr i64 %1853, 19
  %or3257 = or i64 %shl3254, %shr3256
  %arrayidx3258 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1854 = load i64, i64* %arrayidx3258, align 8
  %shl3259 = shl i64 %1854, 3
  %arrayidx3260 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1855 = load i64, i64* %arrayidx3260, align 8
  %shr3261 = lshr i64 %1855, 61
  %or3262 = or i64 %shl3259, %shr3261
  %arrayidx3263 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %1856 = load i64, i64* %arrayidx3263, align 8
  %shr3264 = lshr i64 %1856, 6
  %xor3265 = xor i64 %or3262, %shr3264
  %xor3266 = xor i64 %or3257, %xor3265
  %arrayidx3267 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %1857 = load i64, i64* %arrayidx3267, align 8
  %arrayidx3268 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1858 = load i64, i64* %arrayidx3268, align 8
  %shl3269 = shl i64 %1858, 63
  %arrayidx3270 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1859 = load i64, i64* %arrayidx3270, align 8
  %shr3271 = lshr i64 %1859, 1
  %or3272 = or i64 %shl3269, %shr3271
  %arrayidx3273 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1860 = load i64, i64* %arrayidx3273, align 8
  %shl3274 = shl i64 %1860, 56
  %arrayidx3275 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1861 = load i64, i64* %arrayidx3275, align 8
  %shr3276 = lshr i64 %1861, 8
  %or3277 = or i64 %shl3274, %shr3276
  %arrayidx3278 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1862 = load i64, i64* %arrayidx3278, align 8
  %shr3279 = lshr i64 %1862, 7
  %xor3280 = xor i64 %or3277, %shr3279
  %xor3281 = xor i64 %or3272, %xor3280
  %add3282 = add i64 %1857, %xor3281
  %add3283 = add i64 %xor3266, %add3282
  %add3284 = add i64 %1851, %add3283
  %arrayidx3285 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  store i64 %add3284, i64* %arrayidx3285, align 8
  %add3286 = add i64 %1850, %add3284
  %add3287 = add i64 %xor3251, %add3286
  %add3288 = add i64 %xor3248, %add3287
  %add3289 = add i64 %1839, %add3288
  store i64 %add3289, i64* %t13237, align 8
  %1863 = load i64, i64* %b, align 8
  %1864 = load i64, i64* %t13237, align 8
  %add3290 = add i64 %1863, %1864
  store i64 %add3290, i64* %b, align 8
  %1865 = load i64, i64* %t03220, align 8
  %1866 = load i64, i64* %t13237, align 8
  %add3291 = add i64 %1865, %1866
  store i64 %add3291, i64* %f, align 8
  br label %do.end.3292

do.end.3292:                                      ; preds = %do.body.3219
  br label %do.body.3293

do.body.3293:                                     ; preds = %do.end.3292
  %1867 = load i64, i64* %f, align 8
  %shl3295 = shl i64 %1867, 36
  %1868 = load i64, i64* %f, align 8
  %shr3296 = lshr i64 %1868, 28
  %or3297 = or i64 %shl3295, %shr3296
  %1869 = load i64, i64* %f, align 8
  %shl3298 = shl i64 %1869, 30
  %1870 = load i64, i64* %f, align 8
  %shr3299 = lshr i64 %1870, 34
  %or3300 = or i64 %shl3298, %shr3299
  %1871 = load i64, i64* %f, align 8
  %shl3301 = shl i64 %1871, 25
  %1872 = load i64, i64* %f, align 8
  %shr3302 = lshr i64 %1872, 39
  %or3303 = or i64 %shl3301, %shr3302
  %xor3304 = xor i64 %or3300, %or3303
  %xor3305 = xor i64 %or3297, %xor3304
  %1873 = load i64, i64* %f, align 8
  %1874 = load i64, i64* %g, align 8
  %and3306 = and i64 %1873, %1874
  %1875 = load i64, i64* %h, align 8
  %1876 = load i64, i64* %f, align 8
  %1877 = load i64, i64* %g, align 8
  %or3307 = or i64 %1876, %1877
  %and3308 = and i64 %1875, %or3307
  %or3309 = or i64 %and3306, %and3308
  %add3310 = add i64 %xor3305, %or3309
  store i64 %add3310, i64* %t03294, align 8
  %1878 = load i64, i64* %e, align 8
  %1879 = load i64, i64* %b, align 8
  %shl3312 = shl i64 %1879, 50
  %1880 = load i64, i64* %b, align 8
  %shr3313 = lshr i64 %1880, 14
  %or3314 = or i64 %shl3312, %shr3313
  %1881 = load i64, i64* %b, align 8
  %shl3315 = shl i64 %1881, 46
  %1882 = load i64, i64* %b, align 8
  %shr3316 = lshr i64 %1882, 18
  %or3317 = or i64 %shl3315, %shr3316
  %1883 = load i64, i64* %b, align 8
  %shl3318 = shl i64 %1883, 23
  %1884 = load i64, i64* %b, align 8
  %shr3319 = lshr i64 %1884, 41
  %or3320 = or i64 %shl3318, %shr3319
  %xor3321 = xor i64 %or3317, %or3320
  %xor3322 = xor i64 %or3314, %xor3321
  %1885 = load i64, i64* %d, align 8
  %1886 = load i64, i64* %b, align 8
  %1887 = load i64, i64* %c, align 8
  %1888 = load i64, i64* %d, align 8
  %xor3323 = xor i64 %1887, %1888
  %and3324 = and i64 %1886, %xor3323
  %xor3325 = xor i64 %1885, %and3324
  %1889 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 51), align 8
  %arrayidx3326 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1890 = load i64, i64* %arrayidx3326, align 8
  %arrayidx3327 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1891 = load i64, i64* %arrayidx3327, align 8
  %shl3328 = shl i64 %1891, 45
  %arrayidx3329 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1892 = load i64, i64* %arrayidx3329, align 8
  %shr3330 = lshr i64 %1892, 19
  %or3331 = or i64 %shl3328, %shr3330
  %arrayidx3332 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1893 = load i64, i64* %arrayidx3332, align 8
  %shl3333 = shl i64 %1893, 3
  %arrayidx3334 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1894 = load i64, i64* %arrayidx3334, align 8
  %shr3335 = lshr i64 %1894, 61
  %or3336 = or i64 %shl3333, %shr3335
  %arrayidx3337 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %1895 = load i64, i64* %arrayidx3337, align 8
  %shr3338 = lshr i64 %1895, 6
  %xor3339 = xor i64 %or3336, %shr3338
  %xor3340 = xor i64 %or3331, %xor3339
  %arrayidx3341 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %1896 = load i64, i64* %arrayidx3341, align 8
  %arrayidx3342 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1897 = load i64, i64* %arrayidx3342, align 8
  %shl3343 = shl i64 %1897, 63
  %arrayidx3344 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1898 = load i64, i64* %arrayidx3344, align 8
  %shr3345 = lshr i64 %1898, 1
  %or3346 = or i64 %shl3343, %shr3345
  %arrayidx3347 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1899 = load i64, i64* %arrayidx3347, align 8
  %shl3348 = shl i64 %1899, 56
  %arrayidx3349 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1900 = load i64, i64* %arrayidx3349, align 8
  %shr3350 = lshr i64 %1900, 8
  %or3351 = or i64 %shl3348, %shr3350
  %arrayidx3352 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1901 = load i64, i64* %arrayidx3352, align 8
  %shr3353 = lshr i64 %1901, 7
  %xor3354 = xor i64 %or3351, %shr3353
  %xor3355 = xor i64 %or3346, %xor3354
  %add3356 = add i64 %1896, %xor3355
  %add3357 = add i64 %xor3340, %add3356
  %add3358 = add i64 %1890, %add3357
  %arrayidx3359 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  store i64 %add3358, i64* %arrayidx3359, align 8
  %add3360 = add i64 %1889, %add3358
  %add3361 = add i64 %xor3325, %add3360
  %add3362 = add i64 %xor3322, %add3361
  %add3363 = add i64 %1878, %add3362
  store i64 %add3363, i64* %t13311, align 8
  %1902 = load i64, i64* %a, align 8
  %1903 = load i64, i64* %t13311, align 8
  %add3364 = add i64 %1902, %1903
  store i64 %add3364, i64* %a, align 8
  %1904 = load i64, i64* %t03294, align 8
  %1905 = load i64, i64* %t13311, align 8
  %add3365 = add i64 %1904, %1905
  store i64 %add3365, i64* %e, align 8
  br label %do.end.3366

do.end.3366:                                      ; preds = %do.body.3293
  br label %do.body.3367

do.body.3367:                                     ; preds = %do.end.3366
  %1906 = load i64, i64* %e, align 8
  %shl3369 = shl i64 %1906, 36
  %1907 = load i64, i64* %e, align 8
  %shr3370 = lshr i64 %1907, 28
  %or3371 = or i64 %shl3369, %shr3370
  %1908 = load i64, i64* %e, align 8
  %shl3372 = shl i64 %1908, 30
  %1909 = load i64, i64* %e, align 8
  %shr3373 = lshr i64 %1909, 34
  %or3374 = or i64 %shl3372, %shr3373
  %1910 = load i64, i64* %e, align 8
  %shl3375 = shl i64 %1910, 25
  %1911 = load i64, i64* %e, align 8
  %shr3376 = lshr i64 %1911, 39
  %or3377 = or i64 %shl3375, %shr3376
  %xor3378 = xor i64 %or3374, %or3377
  %xor3379 = xor i64 %or3371, %xor3378
  %1912 = load i64, i64* %e, align 8
  %1913 = load i64, i64* %f, align 8
  %and3380 = and i64 %1912, %1913
  %1914 = load i64, i64* %g, align 8
  %1915 = load i64, i64* %e, align 8
  %1916 = load i64, i64* %f, align 8
  %or3381 = or i64 %1915, %1916
  %and3382 = and i64 %1914, %or3381
  %or3383 = or i64 %and3380, %and3382
  %add3384 = add i64 %xor3379, %or3383
  store i64 %add3384, i64* %t03368, align 8
  %1917 = load i64, i64* %d, align 8
  %1918 = load i64, i64* %a, align 8
  %shl3386 = shl i64 %1918, 50
  %1919 = load i64, i64* %a, align 8
  %shr3387 = lshr i64 %1919, 14
  %or3388 = or i64 %shl3386, %shr3387
  %1920 = load i64, i64* %a, align 8
  %shl3389 = shl i64 %1920, 46
  %1921 = load i64, i64* %a, align 8
  %shr3390 = lshr i64 %1921, 18
  %or3391 = or i64 %shl3389, %shr3390
  %1922 = load i64, i64* %a, align 8
  %shl3392 = shl i64 %1922, 23
  %1923 = load i64, i64* %a, align 8
  %shr3393 = lshr i64 %1923, 41
  %or3394 = or i64 %shl3392, %shr3393
  %xor3395 = xor i64 %or3391, %or3394
  %xor3396 = xor i64 %or3388, %xor3395
  %1924 = load i64, i64* %c, align 8
  %1925 = load i64, i64* %a, align 8
  %1926 = load i64, i64* %b, align 8
  %1927 = load i64, i64* %c, align 8
  %xor3397 = xor i64 %1926, %1927
  %and3398 = and i64 %1925, %xor3397
  %xor3399 = xor i64 %1924, %and3398
  %1928 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 52), align 8
  %arrayidx3400 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %1929 = load i64, i64* %arrayidx3400, align 8
  %arrayidx3401 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1930 = load i64, i64* %arrayidx3401, align 8
  %shl3402 = shl i64 %1930, 45
  %arrayidx3403 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1931 = load i64, i64* %arrayidx3403, align 8
  %shr3404 = lshr i64 %1931, 19
  %or3405 = or i64 %shl3402, %shr3404
  %arrayidx3406 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1932 = load i64, i64* %arrayidx3406, align 8
  %shl3407 = shl i64 %1932, 3
  %arrayidx3408 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1933 = load i64, i64* %arrayidx3408, align 8
  %shr3409 = lshr i64 %1933, 61
  %or3410 = or i64 %shl3407, %shr3409
  %arrayidx3411 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %1934 = load i64, i64* %arrayidx3411, align 8
  %shr3412 = lshr i64 %1934, 6
  %xor3413 = xor i64 %or3410, %shr3412
  %xor3414 = xor i64 %or3405, %xor3413
  %arrayidx3415 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %1935 = load i64, i64* %arrayidx3415, align 8
  %arrayidx3416 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1936 = load i64, i64* %arrayidx3416, align 8
  %shl3417 = shl i64 %1936, 63
  %arrayidx3418 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1937 = load i64, i64* %arrayidx3418, align 8
  %shr3419 = lshr i64 %1937, 1
  %or3420 = or i64 %shl3417, %shr3419
  %arrayidx3421 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1938 = load i64, i64* %arrayidx3421, align 8
  %shl3422 = shl i64 %1938, 56
  %arrayidx3423 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1939 = load i64, i64* %arrayidx3423, align 8
  %shr3424 = lshr i64 %1939, 8
  %or3425 = or i64 %shl3422, %shr3424
  %arrayidx3426 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1940 = load i64, i64* %arrayidx3426, align 8
  %shr3427 = lshr i64 %1940, 7
  %xor3428 = xor i64 %or3425, %shr3427
  %xor3429 = xor i64 %or3420, %xor3428
  %add3430 = add i64 %1935, %xor3429
  %add3431 = add i64 %xor3414, %add3430
  %add3432 = add i64 %1929, %add3431
  %arrayidx3433 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  store i64 %add3432, i64* %arrayidx3433, align 8
  %add3434 = add i64 %1928, %add3432
  %add3435 = add i64 %xor3399, %add3434
  %add3436 = add i64 %xor3396, %add3435
  %add3437 = add i64 %1917, %add3436
  store i64 %add3437, i64* %t13385, align 8
  %1941 = load i64, i64* %h, align 8
  %1942 = load i64, i64* %t13385, align 8
  %add3438 = add i64 %1941, %1942
  store i64 %add3438, i64* %h, align 8
  %1943 = load i64, i64* %t03368, align 8
  %1944 = load i64, i64* %t13385, align 8
  %add3439 = add i64 %1943, %1944
  store i64 %add3439, i64* %d, align 8
  br label %do.end.3440

do.end.3440:                                      ; preds = %do.body.3367
  br label %do.body.3441

do.body.3441:                                     ; preds = %do.end.3440
  %1945 = load i64, i64* %d, align 8
  %shl3443 = shl i64 %1945, 36
  %1946 = load i64, i64* %d, align 8
  %shr3444 = lshr i64 %1946, 28
  %or3445 = or i64 %shl3443, %shr3444
  %1947 = load i64, i64* %d, align 8
  %shl3446 = shl i64 %1947, 30
  %1948 = load i64, i64* %d, align 8
  %shr3447 = lshr i64 %1948, 34
  %or3448 = or i64 %shl3446, %shr3447
  %1949 = load i64, i64* %d, align 8
  %shl3449 = shl i64 %1949, 25
  %1950 = load i64, i64* %d, align 8
  %shr3450 = lshr i64 %1950, 39
  %or3451 = or i64 %shl3449, %shr3450
  %xor3452 = xor i64 %or3448, %or3451
  %xor3453 = xor i64 %or3445, %xor3452
  %1951 = load i64, i64* %d, align 8
  %1952 = load i64, i64* %e, align 8
  %and3454 = and i64 %1951, %1952
  %1953 = load i64, i64* %f, align 8
  %1954 = load i64, i64* %d, align 8
  %1955 = load i64, i64* %e, align 8
  %or3455 = or i64 %1954, %1955
  %and3456 = and i64 %1953, %or3455
  %or3457 = or i64 %and3454, %and3456
  %add3458 = add i64 %xor3453, %or3457
  store i64 %add3458, i64* %t03442, align 8
  %1956 = load i64, i64* %c, align 8
  %1957 = load i64, i64* %h, align 8
  %shl3460 = shl i64 %1957, 50
  %1958 = load i64, i64* %h, align 8
  %shr3461 = lshr i64 %1958, 14
  %or3462 = or i64 %shl3460, %shr3461
  %1959 = load i64, i64* %h, align 8
  %shl3463 = shl i64 %1959, 46
  %1960 = load i64, i64* %h, align 8
  %shr3464 = lshr i64 %1960, 18
  %or3465 = or i64 %shl3463, %shr3464
  %1961 = load i64, i64* %h, align 8
  %shl3466 = shl i64 %1961, 23
  %1962 = load i64, i64* %h, align 8
  %shr3467 = lshr i64 %1962, 41
  %or3468 = or i64 %shl3466, %shr3467
  %xor3469 = xor i64 %or3465, %or3468
  %xor3470 = xor i64 %or3462, %xor3469
  %1963 = load i64, i64* %b, align 8
  %1964 = load i64, i64* %h, align 8
  %1965 = load i64, i64* %a, align 8
  %1966 = load i64, i64* %b, align 8
  %xor3471 = xor i64 %1965, %1966
  %and3472 = and i64 %1964, %xor3471
  %xor3473 = xor i64 %1963, %and3472
  %1967 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 53), align 8
  %arrayidx3474 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %1968 = load i64, i64* %arrayidx3474, align 8
  %arrayidx3475 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1969 = load i64, i64* %arrayidx3475, align 8
  %shl3476 = shl i64 %1969, 45
  %arrayidx3477 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1970 = load i64, i64* %arrayidx3477, align 8
  %shr3478 = lshr i64 %1970, 19
  %or3479 = or i64 %shl3476, %shr3478
  %arrayidx3480 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1971 = load i64, i64* %arrayidx3480, align 8
  %shl3481 = shl i64 %1971, 3
  %arrayidx3482 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1972 = load i64, i64* %arrayidx3482, align 8
  %shr3483 = lshr i64 %1972, 61
  %or3484 = or i64 %shl3481, %shr3483
  %arrayidx3485 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %1973 = load i64, i64* %arrayidx3485, align 8
  %shr3486 = lshr i64 %1973, 6
  %xor3487 = xor i64 %or3484, %shr3486
  %xor3488 = xor i64 %or3479, %xor3487
  %arrayidx3489 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %1974 = load i64, i64* %arrayidx3489, align 8
  %arrayidx3490 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1975 = load i64, i64* %arrayidx3490, align 8
  %shl3491 = shl i64 %1975, 63
  %arrayidx3492 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1976 = load i64, i64* %arrayidx3492, align 8
  %shr3493 = lshr i64 %1976, 1
  %or3494 = or i64 %shl3491, %shr3493
  %arrayidx3495 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1977 = load i64, i64* %arrayidx3495, align 8
  %shl3496 = shl i64 %1977, 56
  %arrayidx3497 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1978 = load i64, i64* %arrayidx3497, align 8
  %shr3498 = lshr i64 %1978, 8
  %or3499 = or i64 %shl3496, %shr3498
  %arrayidx3500 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %1979 = load i64, i64* %arrayidx3500, align 8
  %shr3501 = lshr i64 %1979, 7
  %xor3502 = xor i64 %or3499, %shr3501
  %xor3503 = xor i64 %or3494, %xor3502
  %add3504 = add i64 %1974, %xor3503
  %add3505 = add i64 %xor3488, %add3504
  %add3506 = add i64 %1968, %add3505
  %arrayidx3507 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  store i64 %add3506, i64* %arrayidx3507, align 8
  %add3508 = add i64 %1967, %add3506
  %add3509 = add i64 %xor3473, %add3508
  %add3510 = add i64 %xor3470, %add3509
  %add3511 = add i64 %1956, %add3510
  store i64 %add3511, i64* %t13459, align 8
  %1980 = load i64, i64* %g, align 8
  %1981 = load i64, i64* %t13459, align 8
  %add3512 = add i64 %1980, %1981
  store i64 %add3512, i64* %g, align 8
  %1982 = load i64, i64* %t03442, align 8
  %1983 = load i64, i64* %t13459, align 8
  %add3513 = add i64 %1982, %1983
  store i64 %add3513, i64* %c, align 8
  br label %do.end.3514

do.end.3514:                                      ; preds = %do.body.3441
  br label %do.body.3515

do.body.3515:                                     ; preds = %do.end.3514
  %1984 = load i64, i64* %c, align 8
  %shl3517 = shl i64 %1984, 36
  %1985 = load i64, i64* %c, align 8
  %shr3518 = lshr i64 %1985, 28
  %or3519 = or i64 %shl3517, %shr3518
  %1986 = load i64, i64* %c, align 8
  %shl3520 = shl i64 %1986, 30
  %1987 = load i64, i64* %c, align 8
  %shr3521 = lshr i64 %1987, 34
  %or3522 = or i64 %shl3520, %shr3521
  %1988 = load i64, i64* %c, align 8
  %shl3523 = shl i64 %1988, 25
  %1989 = load i64, i64* %c, align 8
  %shr3524 = lshr i64 %1989, 39
  %or3525 = or i64 %shl3523, %shr3524
  %xor3526 = xor i64 %or3522, %or3525
  %xor3527 = xor i64 %or3519, %xor3526
  %1990 = load i64, i64* %c, align 8
  %1991 = load i64, i64* %d, align 8
  %and3528 = and i64 %1990, %1991
  %1992 = load i64, i64* %e, align 8
  %1993 = load i64, i64* %c, align 8
  %1994 = load i64, i64* %d, align 8
  %or3529 = or i64 %1993, %1994
  %and3530 = and i64 %1992, %or3529
  %or3531 = or i64 %and3528, %and3530
  %add3532 = add i64 %xor3527, %or3531
  store i64 %add3532, i64* %t03516, align 8
  %1995 = load i64, i64* %b, align 8
  %1996 = load i64, i64* %g, align 8
  %shl3534 = shl i64 %1996, 50
  %1997 = load i64, i64* %g, align 8
  %shr3535 = lshr i64 %1997, 14
  %or3536 = or i64 %shl3534, %shr3535
  %1998 = load i64, i64* %g, align 8
  %shl3537 = shl i64 %1998, 46
  %1999 = load i64, i64* %g, align 8
  %shr3538 = lshr i64 %1999, 18
  %or3539 = or i64 %shl3537, %shr3538
  %2000 = load i64, i64* %g, align 8
  %shl3540 = shl i64 %2000, 23
  %2001 = load i64, i64* %g, align 8
  %shr3541 = lshr i64 %2001, 41
  %or3542 = or i64 %shl3540, %shr3541
  %xor3543 = xor i64 %or3539, %or3542
  %xor3544 = xor i64 %or3536, %xor3543
  %2002 = load i64, i64* %a, align 8
  %2003 = load i64, i64* %g, align 8
  %2004 = load i64, i64* %h, align 8
  %2005 = load i64, i64* %a, align 8
  %xor3545 = xor i64 %2004, %2005
  %and3546 = and i64 %2003, %xor3545
  %xor3547 = xor i64 %2002, %and3546
  %2006 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 54), align 8
  %arrayidx3548 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2007 = load i64, i64* %arrayidx3548, align 8
  %arrayidx3549 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2008 = load i64, i64* %arrayidx3549, align 8
  %shl3550 = shl i64 %2008, 45
  %arrayidx3551 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2009 = load i64, i64* %arrayidx3551, align 8
  %shr3552 = lshr i64 %2009, 19
  %or3553 = or i64 %shl3550, %shr3552
  %arrayidx3554 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2010 = load i64, i64* %arrayidx3554, align 8
  %shl3555 = shl i64 %2010, 3
  %arrayidx3556 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2011 = load i64, i64* %arrayidx3556, align 8
  %shr3557 = lshr i64 %2011, 61
  %or3558 = or i64 %shl3555, %shr3557
  %arrayidx3559 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2012 = load i64, i64* %arrayidx3559, align 8
  %shr3560 = lshr i64 %2012, 6
  %xor3561 = xor i64 %or3558, %shr3560
  %xor3562 = xor i64 %or3553, %xor3561
  %arrayidx3563 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2013 = load i64, i64* %arrayidx3563, align 8
  %arrayidx3564 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2014 = load i64, i64* %arrayidx3564, align 8
  %shl3565 = shl i64 %2014, 63
  %arrayidx3566 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2015 = load i64, i64* %arrayidx3566, align 8
  %shr3567 = lshr i64 %2015, 1
  %or3568 = or i64 %shl3565, %shr3567
  %arrayidx3569 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2016 = load i64, i64* %arrayidx3569, align 8
  %shl3570 = shl i64 %2016, 56
  %arrayidx3571 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2017 = load i64, i64* %arrayidx3571, align 8
  %shr3572 = lshr i64 %2017, 8
  %or3573 = or i64 %shl3570, %shr3572
  %arrayidx3574 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2018 = load i64, i64* %arrayidx3574, align 8
  %shr3575 = lshr i64 %2018, 7
  %xor3576 = xor i64 %or3573, %shr3575
  %xor3577 = xor i64 %or3568, %xor3576
  %add3578 = add i64 %2013, %xor3577
  %add3579 = add i64 %xor3562, %add3578
  %add3580 = add i64 %2007, %add3579
  %arrayidx3581 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  store i64 %add3580, i64* %arrayidx3581, align 8
  %add3582 = add i64 %2006, %add3580
  %add3583 = add i64 %xor3547, %add3582
  %add3584 = add i64 %xor3544, %add3583
  %add3585 = add i64 %1995, %add3584
  store i64 %add3585, i64* %t13533, align 8
  %2019 = load i64, i64* %f, align 8
  %2020 = load i64, i64* %t13533, align 8
  %add3586 = add i64 %2019, %2020
  store i64 %add3586, i64* %f, align 8
  %2021 = load i64, i64* %t03516, align 8
  %2022 = load i64, i64* %t13533, align 8
  %add3587 = add i64 %2021, %2022
  store i64 %add3587, i64* %b, align 8
  br label %do.end.3588

do.end.3588:                                      ; preds = %do.body.3515
  br label %do.body.3589

do.body.3589:                                     ; preds = %do.end.3588
  %2023 = load i64, i64* %b, align 8
  %shl3591 = shl i64 %2023, 36
  %2024 = load i64, i64* %b, align 8
  %shr3592 = lshr i64 %2024, 28
  %or3593 = or i64 %shl3591, %shr3592
  %2025 = load i64, i64* %b, align 8
  %shl3594 = shl i64 %2025, 30
  %2026 = load i64, i64* %b, align 8
  %shr3595 = lshr i64 %2026, 34
  %or3596 = or i64 %shl3594, %shr3595
  %2027 = load i64, i64* %b, align 8
  %shl3597 = shl i64 %2027, 25
  %2028 = load i64, i64* %b, align 8
  %shr3598 = lshr i64 %2028, 39
  %or3599 = or i64 %shl3597, %shr3598
  %xor3600 = xor i64 %or3596, %or3599
  %xor3601 = xor i64 %or3593, %xor3600
  %2029 = load i64, i64* %b, align 8
  %2030 = load i64, i64* %c, align 8
  %and3602 = and i64 %2029, %2030
  %2031 = load i64, i64* %d, align 8
  %2032 = load i64, i64* %b, align 8
  %2033 = load i64, i64* %c, align 8
  %or3603 = or i64 %2032, %2033
  %and3604 = and i64 %2031, %or3603
  %or3605 = or i64 %and3602, %and3604
  %add3606 = add i64 %xor3601, %or3605
  store i64 %add3606, i64* %t03590, align 8
  %2034 = load i64, i64* %a, align 8
  %2035 = load i64, i64* %f, align 8
  %shl3608 = shl i64 %2035, 50
  %2036 = load i64, i64* %f, align 8
  %shr3609 = lshr i64 %2036, 14
  %or3610 = or i64 %shl3608, %shr3609
  %2037 = load i64, i64* %f, align 8
  %shl3611 = shl i64 %2037, 46
  %2038 = load i64, i64* %f, align 8
  %shr3612 = lshr i64 %2038, 18
  %or3613 = or i64 %shl3611, %shr3612
  %2039 = load i64, i64* %f, align 8
  %shl3614 = shl i64 %2039, 23
  %2040 = load i64, i64* %f, align 8
  %shr3615 = lshr i64 %2040, 41
  %or3616 = or i64 %shl3614, %shr3615
  %xor3617 = xor i64 %or3613, %or3616
  %xor3618 = xor i64 %or3610, %xor3617
  %2041 = load i64, i64* %h, align 8
  %2042 = load i64, i64* %f, align 8
  %2043 = load i64, i64* %g, align 8
  %2044 = load i64, i64* %h, align 8
  %xor3619 = xor i64 %2043, %2044
  %and3620 = and i64 %2042, %xor3619
  %xor3621 = xor i64 %2041, %and3620
  %2045 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 55), align 8
  %arrayidx3622 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2046 = load i64, i64* %arrayidx3622, align 8
  %arrayidx3623 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2047 = load i64, i64* %arrayidx3623, align 8
  %shl3624 = shl i64 %2047, 45
  %arrayidx3625 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2048 = load i64, i64* %arrayidx3625, align 8
  %shr3626 = lshr i64 %2048, 19
  %or3627 = or i64 %shl3624, %shr3626
  %arrayidx3628 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2049 = load i64, i64* %arrayidx3628, align 8
  %shl3629 = shl i64 %2049, 3
  %arrayidx3630 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2050 = load i64, i64* %arrayidx3630, align 8
  %shr3631 = lshr i64 %2050, 61
  %or3632 = or i64 %shl3629, %shr3631
  %arrayidx3633 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2051 = load i64, i64* %arrayidx3633, align 8
  %shr3634 = lshr i64 %2051, 6
  %xor3635 = xor i64 %or3632, %shr3634
  %xor3636 = xor i64 %or3627, %xor3635
  %arrayidx3637 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2052 = load i64, i64* %arrayidx3637, align 8
  %arrayidx3638 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2053 = load i64, i64* %arrayidx3638, align 8
  %shl3639 = shl i64 %2053, 63
  %arrayidx3640 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2054 = load i64, i64* %arrayidx3640, align 8
  %shr3641 = lshr i64 %2054, 1
  %or3642 = or i64 %shl3639, %shr3641
  %arrayidx3643 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2055 = load i64, i64* %arrayidx3643, align 8
  %shl3644 = shl i64 %2055, 56
  %arrayidx3645 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2056 = load i64, i64* %arrayidx3645, align 8
  %shr3646 = lshr i64 %2056, 8
  %or3647 = or i64 %shl3644, %shr3646
  %arrayidx3648 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2057 = load i64, i64* %arrayidx3648, align 8
  %shr3649 = lshr i64 %2057, 7
  %xor3650 = xor i64 %or3647, %shr3649
  %xor3651 = xor i64 %or3642, %xor3650
  %add3652 = add i64 %2052, %xor3651
  %add3653 = add i64 %xor3636, %add3652
  %add3654 = add i64 %2046, %add3653
  %arrayidx3655 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  store i64 %add3654, i64* %arrayidx3655, align 8
  %add3656 = add i64 %2045, %add3654
  %add3657 = add i64 %xor3621, %add3656
  %add3658 = add i64 %xor3618, %add3657
  %add3659 = add i64 %2034, %add3658
  store i64 %add3659, i64* %t13607, align 8
  %2058 = load i64, i64* %e, align 8
  %2059 = load i64, i64* %t13607, align 8
  %add3660 = add i64 %2058, %2059
  store i64 %add3660, i64* %e, align 8
  %2060 = load i64, i64* %t03590, align 8
  %2061 = load i64, i64* %t13607, align 8
  %add3661 = add i64 %2060, %2061
  store i64 %add3661, i64* %a, align 8
  br label %do.end.3662

do.end.3662:                                      ; preds = %do.body.3589
  br label %do.body.3663

do.body.3663:                                     ; preds = %do.end.3662
  %2062 = load i64, i64* %a, align 8
  %shl3665 = shl i64 %2062, 36
  %2063 = load i64, i64* %a, align 8
  %shr3666 = lshr i64 %2063, 28
  %or3667 = or i64 %shl3665, %shr3666
  %2064 = load i64, i64* %a, align 8
  %shl3668 = shl i64 %2064, 30
  %2065 = load i64, i64* %a, align 8
  %shr3669 = lshr i64 %2065, 34
  %or3670 = or i64 %shl3668, %shr3669
  %2066 = load i64, i64* %a, align 8
  %shl3671 = shl i64 %2066, 25
  %2067 = load i64, i64* %a, align 8
  %shr3672 = lshr i64 %2067, 39
  %or3673 = or i64 %shl3671, %shr3672
  %xor3674 = xor i64 %or3670, %or3673
  %xor3675 = xor i64 %or3667, %xor3674
  %2068 = load i64, i64* %a, align 8
  %2069 = load i64, i64* %b, align 8
  %and3676 = and i64 %2068, %2069
  %2070 = load i64, i64* %c, align 8
  %2071 = load i64, i64* %a, align 8
  %2072 = load i64, i64* %b, align 8
  %or3677 = or i64 %2071, %2072
  %and3678 = and i64 %2070, %or3677
  %or3679 = or i64 %and3676, %and3678
  %add3680 = add i64 %xor3675, %or3679
  store i64 %add3680, i64* %t03664, align 8
  %2073 = load i64, i64* %h, align 8
  %2074 = load i64, i64* %e, align 8
  %shl3682 = shl i64 %2074, 50
  %2075 = load i64, i64* %e, align 8
  %shr3683 = lshr i64 %2075, 14
  %or3684 = or i64 %shl3682, %shr3683
  %2076 = load i64, i64* %e, align 8
  %shl3685 = shl i64 %2076, 46
  %2077 = load i64, i64* %e, align 8
  %shr3686 = lshr i64 %2077, 18
  %or3687 = or i64 %shl3685, %shr3686
  %2078 = load i64, i64* %e, align 8
  %shl3688 = shl i64 %2078, 23
  %2079 = load i64, i64* %e, align 8
  %shr3689 = lshr i64 %2079, 41
  %or3690 = or i64 %shl3688, %shr3689
  %xor3691 = xor i64 %or3687, %or3690
  %xor3692 = xor i64 %or3684, %xor3691
  %2080 = load i64, i64* %g, align 8
  %2081 = load i64, i64* %e, align 8
  %2082 = load i64, i64* %f, align 8
  %2083 = load i64, i64* %g, align 8
  %xor3693 = xor i64 %2082, %2083
  %and3694 = and i64 %2081, %xor3693
  %xor3695 = xor i64 %2080, %and3694
  %2084 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 56), align 8
  %arrayidx3696 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2085 = load i64, i64* %arrayidx3696, align 8
  %arrayidx3697 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2086 = load i64, i64* %arrayidx3697, align 8
  %shl3698 = shl i64 %2086, 45
  %arrayidx3699 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2087 = load i64, i64* %arrayidx3699, align 8
  %shr3700 = lshr i64 %2087, 19
  %or3701 = or i64 %shl3698, %shr3700
  %arrayidx3702 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2088 = load i64, i64* %arrayidx3702, align 8
  %shl3703 = shl i64 %2088, 3
  %arrayidx3704 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2089 = load i64, i64* %arrayidx3704, align 8
  %shr3705 = lshr i64 %2089, 61
  %or3706 = or i64 %shl3703, %shr3705
  %arrayidx3707 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2090 = load i64, i64* %arrayidx3707, align 8
  %shr3708 = lshr i64 %2090, 6
  %xor3709 = xor i64 %or3706, %shr3708
  %xor3710 = xor i64 %or3701, %xor3709
  %arrayidx3711 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2091 = load i64, i64* %arrayidx3711, align 8
  %arrayidx3712 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2092 = load i64, i64* %arrayidx3712, align 8
  %shl3713 = shl i64 %2092, 63
  %arrayidx3714 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2093 = load i64, i64* %arrayidx3714, align 8
  %shr3715 = lshr i64 %2093, 1
  %or3716 = or i64 %shl3713, %shr3715
  %arrayidx3717 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2094 = load i64, i64* %arrayidx3717, align 8
  %shl3718 = shl i64 %2094, 56
  %arrayidx3719 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2095 = load i64, i64* %arrayidx3719, align 8
  %shr3720 = lshr i64 %2095, 8
  %or3721 = or i64 %shl3718, %shr3720
  %arrayidx3722 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2096 = load i64, i64* %arrayidx3722, align 8
  %shr3723 = lshr i64 %2096, 7
  %xor3724 = xor i64 %or3721, %shr3723
  %xor3725 = xor i64 %or3716, %xor3724
  %add3726 = add i64 %2091, %xor3725
  %add3727 = add i64 %xor3710, %add3726
  %add3728 = add i64 %2085, %add3727
  %arrayidx3729 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  store i64 %add3728, i64* %arrayidx3729, align 8
  %add3730 = add i64 %2084, %add3728
  %add3731 = add i64 %xor3695, %add3730
  %add3732 = add i64 %xor3692, %add3731
  %add3733 = add i64 %2073, %add3732
  store i64 %add3733, i64* %t13681, align 8
  %2097 = load i64, i64* %d, align 8
  %2098 = load i64, i64* %t13681, align 8
  %add3734 = add i64 %2097, %2098
  store i64 %add3734, i64* %d, align 8
  %2099 = load i64, i64* %t03664, align 8
  %2100 = load i64, i64* %t13681, align 8
  %add3735 = add i64 %2099, %2100
  store i64 %add3735, i64* %h, align 8
  br label %do.end.3736

do.end.3736:                                      ; preds = %do.body.3663
  br label %do.body.3737

do.body.3737:                                     ; preds = %do.end.3736
  %2101 = load i64, i64* %h, align 8
  %shl3739 = shl i64 %2101, 36
  %2102 = load i64, i64* %h, align 8
  %shr3740 = lshr i64 %2102, 28
  %or3741 = or i64 %shl3739, %shr3740
  %2103 = load i64, i64* %h, align 8
  %shl3742 = shl i64 %2103, 30
  %2104 = load i64, i64* %h, align 8
  %shr3743 = lshr i64 %2104, 34
  %or3744 = or i64 %shl3742, %shr3743
  %2105 = load i64, i64* %h, align 8
  %shl3745 = shl i64 %2105, 25
  %2106 = load i64, i64* %h, align 8
  %shr3746 = lshr i64 %2106, 39
  %or3747 = or i64 %shl3745, %shr3746
  %xor3748 = xor i64 %or3744, %or3747
  %xor3749 = xor i64 %or3741, %xor3748
  %2107 = load i64, i64* %h, align 8
  %2108 = load i64, i64* %a, align 8
  %and3750 = and i64 %2107, %2108
  %2109 = load i64, i64* %b, align 8
  %2110 = load i64, i64* %h, align 8
  %2111 = load i64, i64* %a, align 8
  %or3751 = or i64 %2110, %2111
  %and3752 = and i64 %2109, %or3751
  %or3753 = or i64 %and3750, %and3752
  %add3754 = add i64 %xor3749, %or3753
  store i64 %add3754, i64* %t03738, align 8
  %2112 = load i64, i64* %g, align 8
  %2113 = load i64, i64* %d, align 8
  %shl3756 = shl i64 %2113, 50
  %2114 = load i64, i64* %d, align 8
  %shr3757 = lshr i64 %2114, 14
  %or3758 = or i64 %shl3756, %shr3757
  %2115 = load i64, i64* %d, align 8
  %shl3759 = shl i64 %2115, 46
  %2116 = load i64, i64* %d, align 8
  %shr3760 = lshr i64 %2116, 18
  %or3761 = or i64 %shl3759, %shr3760
  %2117 = load i64, i64* %d, align 8
  %shl3762 = shl i64 %2117, 23
  %2118 = load i64, i64* %d, align 8
  %shr3763 = lshr i64 %2118, 41
  %or3764 = or i64 %shl3762, %shr3763
  %xor3765 = xor i64 %or3761, %or3764
  %xor3766 = xor i64 %or3758, %xor3765
  %2119 = load i64, i64* %f, align 8
  %2120 = load i64, i64* %d, align 8
  %2121 = load i64, i64* %e, align 8
  %2122 = load i64, i64* %f, align 8
  %xor3767 = xor i64 %2121, %2122
  %and3768 = and i64 %2120, %xor3767
  %xor3769 = xor i64 %2119, %and3768
  %2123 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 57), align 8
  %arrayidx3770 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2124 = load i64, i64* %arrayidx3770, align 8
  %arrayidx3771 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2125 = load i64, i64* %arrayidx3771, align 8
  %shl3772 = shl i64 %2125, 45
  %arrayidx3773 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2126 = load i64, i64* %arrayidx3773, align 8
  %shr3774 = lshr i64 %2126, 19
  %or3775 = or i64 %shl3772, %shr3774
  %arrayidx3776 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2127 = load i64, i64* %arrayidx3776, align 8
  %shl3777 = shl i64 %2127, 3
  %arrayidx3778 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2128 = load i64, i64* %arrayidx3778, align 8
  %shr3779 = lshr i64 %2128, 61
  %or3780 = or i64 %shl3777, %shr3779
  %arrayidx3781 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2129 = load i64, i64* %arrayidx3781, align 8
  %shr3782 = lshr i64 %2129, 6
  %xor3783 = xor i64 %or3780, %shr3782
  %xor3784 = xor i64 %or3775, %xor3783
  %arrayidx3785 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2130 = load i64, i64* %arrayidx3785, align 8
  %arrayidx3786 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2131 = load i64, i64* %arrayidx3786, align 8
  %shl3787 = shl i64 %2131, 63
  %arrayidx3788 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2132 = load i64, i64* %arrayidx3788, align 8
  %shr3789 = lshr i64 %2132, 1
  %or3790 = or i64 %shl3787, %shr3789
  %arrayidx3791 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2133 = load i64, i64* %arrayidx3791, align 8
  %shl3792 = shl i64 %2133, 56
  %arrayidx3793 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2134 = load i64, i64* %arrayidx3793, align 8
  %shr3794 = lshr i64 %2134, 8
  %or3795 = or i64 %shl3792, %shr3794
  %arrayidx3796 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2135 = load i64, i64* %arrayidx3796, align 8
  %shr3797 = lshr i64 %2135, 7
  %xor3798 = xor i64 %or3795, %shr3797
  %xor3799 = xor i64 %or3790, %xor3798
  %add3800 = add i64 %2130, %xor3799
  %add3801 = add i64 %xor3784, %add3800
  %add3802 = add i64 %2124, %add3801
  %arrayidx3803 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  store i64 %add3802, i64* %arrayidx3803, align 8
  %add3804 = add i64 %2123, %add3802
  %add3805 = add i64 %xor3769, %add3804
  %add3806 = add i64 %xor3766, %add3805
  %add3807 = add i64 %2112, %add3806
  store i64 %add3807, i64* %t13755, align 8
  %2136 = load i64, i64* %c, align 8
  %2137 = load i64, i64* %t13755, align 8
  %add3808 = add i64 %2136, %2137
  store i64 %add3808, i64* %c, align 8
  %2138 = load i64, i64* %t03738, align 8
  %2139 = load i64, i64* %t13755, align 8
  %add3809 = add i64 %2138, %2139
  store i64 %add3809, i64* %g, align 8
  br label %do.end.3810

do.end.3810:                                      ; preds = %do.body.3737
  br label %do.body.3811

do.body.3811:                                     ; preds = %do.end.3810
  %2140 = load i64, i64* %g, align 8
  %shl3813 = shl i64 %2140, 36
  %2141 = load i64, i64* %g, align 8
  %shr3814 = lshr i64 %2141, 28
  %or3815 = or i64 %shl3813, %shr3814
  %2142 = load i64, i64* %g, align 8
  %shl3816 = shl i64 %2142, 30
  %2143 = load i64, i64* %g, align 8
  %shr3817 = lshr i64 %2143, 34
  %or3818 = or i64 %shl3816, %shr3817
  %2144 = load i64, i64* %g, align 8
  %shl3819 = shl i64 %2144, 25
  %2145 = load i64, i64* %g, align 8
  %shr3820 = lshr i64 %2145, 39
  %or3821 = or i64 %shl3819, %shr3820
  %xor3822 = xor i64 %or3818, %or3821
  %xor3823 = xor i64 %or3815, %xor3822
  %2146 = load i64, i64* %g, align 8
  %2147 = load i64, i64* %h, align 8
  %and3824 = and i64 %2146, %2147
  %2148 = load i64, i64* %a, align 8
  %2149 = load i64, i64* %g, align 8
  %2150 = load i64, i64* %h, align 8
  %or3825 = or i64 %2149, %2150
  %and3826 = and i64 %2148, %or3825
  %or3827 = or i64 %and3824, %and3826
  %add3828 = add i64 %xor3823, %or3827
  store i64 %add3828, i64* %t03812, align 8
  %2151 = load i64, i64* %f, align 8
  %2152 = load i64, i64* %c, align 8
  %shl3830 = shl i64 %2152, 50
  %2153 = load i64, i64* %c, align 8
  %shr3831 = lshr i64 %2153, 14
  %or3832 = or i64 %shl3830, %shr3831
  %2154 = load i64, i64* %c, align 8
  %shl3833 = shl i64 %2154, 46
  %2155 = load i64, i64* %c, align 8
  %shr3834 = lshr i64 %2155, 18
  %or3835 = or i64 %shl3833, %shr3834
  %2156 = load i64, i64* %c, align 8
  %shl3836 = shl i64 %2156, 23
  %2157 = load i64, i64* %c, align 8
  %shr3837 = lshr i64 %2157, 41
  %or3838 = or i64 %shl3836, %shr3837
  %xor3839 = xor i64 %or3835, %or3838
  %xor3840 = xor i64 %or3832, %xor3839
  %2158 = load i64, i64* %e, align 8
  %2159 = load i64, i64* %c, align 8
  %2160 = load i64, i64* %d, align 8
  %2161 = load i64, i64* %e, align 8
  %xor3841 = xor i64 %2160, %2161
  %and3842 = and i64 %2159, %xor3841
  %xor3843 = xor i64 %2158, %and3842
  %2162 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 58), align 8
  %arrayidx3844 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2163 = load i64, i64* %arrayidx3844, align 8
  %arrayidx3845 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2164 = load i64, i64* %arrayidx3845, align 8
  %shl3846 = shl i64 %2164, 45
  %arrayidx3847 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2165 = load i64, i64* %arrayidx3847, align 8
  %shr3848 = lshr i64 %2165, 19
  %or3849 = or i64 %shl3846, %shr3848
  %arrayidx3850 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2166 = load i64, i64* %arrayidx3850, align 8
  %shl3851 = shl i64 %2166, 3
  %arrayidx3852 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2167 = load i64, i64* %arrayidx3852, align 8
  %shr3853 = lshr i64 %2167, 61
  %or3854 = or i64 %shl3851, %shr3853
  %arrayidx3855 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2168 = load i64, i64* %arrayidx3855, align 8
  %shr3856 = lshr i64 %2168, 6
  %xor3857 = xor i64 %or3854, %shr3856
  %xor3858 = xor i64 %or3849, %xor3857
  %arrayidx3859 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2169 = load i64, i64* %arrayidx3859, align 8
  %arrayidx3860 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2170 = load i64, i64* %arrayidx3860, align 8
  %shl3861 = shl i64 %2170, 63
  %arrayidx3862 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2171 = load i64, i64* %arrayidx3862, align 8
  %shr3863 = lshr i64 %2171, 1
  %or3864 = or i64 %shl3861, %shr3863
  %arrayidx3865 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2172 = load i64, i64* %arrayidx3865, align 8
  %shl3866 = shl i64 %2172, 56
  %arrayidx3867 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2173 = load i64, i64* %arrayidx3867, align 8
  %shr3868 = lshr i64 %2173, 8
  %or3869 = or i64 %shl3866, %shr3868
  %arrayidx3870 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2174 = load i64, i64* %arrayidx3870, align 8
  %shr3871 = lshr i64 %2174, 7
  %xor3872 = xor i64 %or3869, %shr3871
  %xor3873 = xor i64 %or3864, %xor3872
  %add3874 = add i64 %2169, %xor3873
  %add3875 = add i64 %xor3858, %add3874
  %add3876 = add i64 %2163, %add3875
  %arrayidx3877 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  store i64 %add3876, i64* %arrayidx3877, align 8
  %add3878 = add i64 %2162, %add3876
  %add3879 = add i64 %xor3843, %add3878
  %add3880 = add i64 %xor3840, %add3879
  %add3881 = add i64 %2151, %add3880
  store i64 %add3881, i64* %t13829, align 8
  %2175 = load i64, i64* %b, align 8
  %2176 = load i64, i64* %t13829, align 8
  %add3882 = add i64 %2175, %2176
  store i64 %add3882, i64* %b, align 8
  %2177 = load i64, i64* %t03812, align 8
  %2178 = load i64, i64* %t13829, align 8
  %add3883 = add i64 %2177, %2178
  store i64 %add3883, i64* %f, align 8
  br label %do.end.3884

do.end.3884:                                      ; preds = %do.body.3811
  br label %do.body.3885

do.body.3885:                                     ; preds = %do.end.3884
  %2179 = load i64, i64* %f, align 8
  %shl3887 = shl i64 %2179, 36
  %2180 = load i64, i64* %f, align 8
  %shr3888 = lshr i64 %2180, 28
  %or3889 = or i64 %shl3887, %shr3888
  %2181 = load i64, i64* %f, align 8
  %shl3890 = shl i64 %2181, 30
  %2182 = load i64, i64* %f, align 8
  %shr3891 = lshr i64 %2182, 34
  %or3892 = or i64 %shl3890, %shr3891
  %2183 = load i64, i64* %f, align 8
  %shl3893 = shl i64 %2183, 25
  %2184 = load i64, i64* %f, align 8
  %shr3894 = lshr i64 %2184, 39
  %or3895 = or i64 %shl3893, %shr3894
  %xor3896 = xor i64 %or3892, %or3895
  %xor3897 = xor i64 %or3889, %xor3896
  %2185 = load i64, i64* %f, align 8
  %2186 = load i64, i64* %g, align 8
  %and3898 = and i64 %2185, %2186
  %2187 = load i64, i64* %h, align 8
  %2188 = load i64, i64* %f, align 8
  %2189 = load i64, i64* %g, align 8
  %or3899 = or i64 %2188, %2189
  %and3900 = and i64 %2187, %or3899
  %or3901 = or i64 %and3898, %and3900
  %add3902 = add i64 %xor3897, %or3901
  store i64 %add3902, i64* %t03886, align 8
  %2190 = load i64, i64* %e, align 8
  %2191 = load i64, i64* %b, align 8
  %shl3904 = shl i64 %2191, 50
  %2192 = load i64, i64* %b, align 8
  %shr3905 = lshr i64 %2192, 14
  %or3906 = or i64 %shl3904, %shr3905
  %2193 = load i64, i64* %b, align 8
  %shl3907 = shl i64 %2193, 46
  %2194 = load i64, i64* %b, align 8
  %shr3908 = lshr i64 %2194, 18
  %or3909 = or i64 %shl3907, %shr3908
  %2195 = load i64, i64* %b, align 8
  %shl3910 = shl i64 %2195, 23
  %2196 = load i64, i64* %b, align 8
  %shr3911 = lshr i64 %2196, 41
  %or3912 = or i64 %shl3910, %shr3911
  %xor3913 = xor i64 %or3909, %or3912
  %xor3914 = xor i64 %or3906, %xor3913
  %2197 = load i64, i64* %d, align 8
  %2198 = load i64, i64* %b, align 8
  %2199 = load i64, i64* %c, align 8
  %2200 = load i64, i64* %d, align 8
  %xor3915 = xor i64 %2199, %2200
  %and3916 = and i64 %2198, %xor3915
  %xor3917 = xor i64 %2197, %and3916
  %2201 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 59), align 8
  %arrayidx3918 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2202 = load i64, i64* %arrayidx3918, align 8
  %arrayidx3919 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2203 = load i64, i64* %arrayidx3919, align 8
  %shl3920 = shl i64 %2203, 45
  %arrayidx3921 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2204 = load i64, i64* %arrayidx3921, align 8
  %shr3922 = lshr i64 %2204, 19
  %or3923 = or i64 %shl3920, %shr3922
  %arrayidx3924 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2205 = load i64, i64* %arrayidx3924, align 8
  %shl3925 = shl i64 %2205, 3
  %arrayidx3926 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2206 = load i64, i64* %arrayidx3926, align 8
  %shr3927 = lshr i64 %2206, 61
  %or3928 = or i64 %shl3925, %shr3927
  %arrayidx3929 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2207 = load i64, i64* %arrayidx3929, align 8
  %shr3930 = lshr i64 %2207, 6
  %xor3931 = xor i64 %or3928, %shr3930
  %xor3932 = xor i64 %or3923, %xor3931
  %arrayidx3933 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2208 = load i64, i64* %arrayidx3933, align 8
  %arrayidx3934 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2209 = load i64, i64* %arrayidx3934, align 8
  %shl3935 = shl i64 %2209, 63
  %arrayidx3936 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2210 = load i64, i64* %arrayidx3936, align 8
  %shr3937 = lshr i64 %2210, 1
  %or3938 = or i64 %shl3935, %shr3937
  %arrayidx3939 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2211 = load i64, i64* %arrayidx3939, align 8
  %shl3940 = shl i64 %2211, 56
  %arrayidx3941 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2212 = load i64, i64* %arrayidx3941, align 8
  %shr3942 = lshr i64 %2212, 8
  %or3943 = or i64 %shl3940, %shr3942
  %arrayidx3944 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2213 = load i64, i64* %arrayidx3944, align 8
  %shr3945 = lshr i64 %2213, 7
  %xor3946 = xor i64 %or3943, %shr3945
  %xor3947 = xor i64 %or3938, %xor3946
  %add3948 = add i64 %2208, %xor3947
  %add3949 = add i64 %xor3932, %add3948
  %add3950 = add i64 %2202, %add3949
  %arrayidx3951 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  store i64 %add3950, i64* %arrayidx3951, align 8
  %add3952 = add i64 %2201, %add3950
  %add3953 = add i64 %xor3917, %add3952
  %add3954 = add i64 %xor3914, %add3953
  %add3955 = add i64 %2190, %add3954
  store i64 %add3955, i64* %t13903, align 8
  %2214 = load i64, i64* %a, align 8
  %2215 = load i64, i64* %t13903, align 8
  %add3956 = add i64 %2214, %2215
  store i64 %add3956, i64* %a, align 8
  %2216 = load i64, i64* %t03886, align 8
  %2217 = load i64, i64* %t13903, align 8
  %add3957 = add i64 %2216, %2217
  store i64 %add3957, i64* %e, align 8
  br label %do.end.3958

do.end.3958:                                      ; preds = %do.body.3885
  br label %do.body.3959

do.body.3959:                                     ; preds = %do.end.3958
  %2218 = load i64, i64* %e, align 8
  %shl3961 = shl i64 %2218, 36
  %2219 = load i64, i64* %e, align 8
  %shr3962 = lshr i64 %2219, 28
  %or3963 = or i64 %shl3961, %shr3962
  %2220 = load i64, i64* %e, align 8
  %shl3964 = shl i64 %2220, 30
  %2221 = load i64, i64* %e, align 8
  %shr3965 = lshr i64 %2221, 34
  %or3966 = or i64 %shl3964, %shr3965
  %2222 = load i64, i64* %e, align 8
  %shl3967 = shl i64 %2222, 25
  %2223 = load i64, i64* %e, align 8
  %shr3968 = lshr i64 %2223, 39
  %or3969 = or i64 %shl3967, %shr3968
  %xor3970 = xor i64 %or3966, %or3969
  %xor3971 = xor i64 %or3963, %xor3970
  %2224 = load i64, i64* %e, align 8
  %2225 = load i64, i64* %f, align 8
  %and3972 = and i64 %2224, %2225
  %2226 = load i64, i64* %g, align 8
  %2227 = load i64, i64* %e, align 8
  %2228 = load i64, i64* %f, align 8
  %or3973 = or i64 %2227, %2228
  %and3974 = and i64 %2226, %or3973
  %or3975 = or i64 %and3972, %and3974
  %add3976 = add i64 %xor3971, %or3975
  store i64 %add3976, i64* %t03960, align 8
  %2229 = load i64, i64* %d, align 8
  %2230 = load i64, i64* %a, align 8
  %shl3978 = shl i64 %2230, 50
  %2231 = load i64, i64* %a, align 8
  %shr3979 = lshr i64 %2231, 14
  %or3980 = or i64 %shl3978, %shr3979
  %2232 = load i64, i64* %a, align 8
  %shl3981 = shl i64 %2232, 46
  %2233 = load i64, i64* %a, align 8
  %shr3982 = lshr i64 %2233, 18
  %or3983 = or i64 %shl3981, %shr3982
  %2234 = load i64, i64* %a, align 8
  %shl3984 = shl i64 %2234, 23
  %2235 = load i64, i64* %a, align 8
  %shr3985 = lshr i64 %2235, 41
  %or3986 = or i64 %shl3984, %shr3985
  %xor3987 = xor i64 %or3983, %or3986
  %xor3988 = xor i64 %or3980, %xor3987
  %2236 = load i64, i64* %c, align 8
  %2237 = load i64, i64* %a, align 8
  %2238 = load i64, i64* %b, align 8
  %2239 = load i64, i64* %c, align 8
  %xor3989 = xor i64 %2238, %2239
  %and3990 = and i64 %2237, %xor3989
  %xor3991 = xor i64 %2236, %and3990
  %2240 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 60), align 8
  %arrayidx3992 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2241 = load i64, i64* %arrayidx3992, align 8
  %arrayidx3993 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2242 = load i64, i64* %arrayidx3993, align 8
  %shl3994 = shl i64 %2242, 45
  %arrayidx3995 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2243 = load i64, i64* %arrayidx3995, align 8
  %shr3996 = lshr i64 %2243, 19
  %or3997 = or i64 %shl3994, %shr3996
  %arrayidx3998 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2244 = load i64, i64* %arrayidx3998, align 8
  %shl3999 = shl i64 %2244, 3
  %arrayidx4000 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2245 = load i64, i64* %arrayidx4000, align 8
  %shr4001 = lshr i64 %2245, 61
  %or4002 = or i64 %shl3999, %shr4001
  %arrayidx4003 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2246 = load i64, i64* %arrayidx4003, align 8
  %shr4004 = lshr i64 %2246, 6
  %xor4005 = xor i64 %or4002, %shr4004
  %xor4006 = xor i64 %or3997, %xor4005
  %arrayidx4007 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2247 = load i64, i64* %arrayidx4007, align 8
  %arrayidx4008 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2248 = load i64, i64* %arrayidx4008, align 8
  %shl4009 = shl i64 %2248, 63
  %arrayidx4010 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2249 = load i64, i64* %arrayidx4010, align 8
  %shr4011 = lshr i64 %2249, 1
  %or4012 = or i64 %shl4009, %shr4011
  %arrayidx4013 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2250 = load i64, i64* %arrayidx4013, align 8
  %shl4014 = shl i64 %2250, 56
  %arrayidx4015 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2251 = load i64, i64* %arrayidx4015, align 8
  %shr4016 = lshr i64 %2251, 8
  %or4017 = or i64 %shl4014, %shr4016
  %arrayidx4018 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2252 = load i64, i64* %arrayidx4018, align 8
  %shr4019 = lshr i64 %2252, 7
  %xor4020 = xor i64 %or4017, %shr4019
  %xor4021 = xor i64 %or4012, %xor4020
  %add4022 = add i64 %2247, %xor4021
  %add4023 = add i64 %xor4006, %add4022
  %add4024 = add i64 %2241, %add4023
  %arrayidx4025 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  store i64 %add4024, i64* %arrayidx4025, align 8
  %add4026 = add i64 %2240, %add4024
  %add4027 = add i64 %xor3991, %add4026
  %add4028 = add i64 %xor3988, %add4027
  %add4029 = add i64 %2229, %add4028
  store i64 %add4029, i64* %t13977, align 8
  %2253 = load i64, i64* %h, align 8
  %2254 = load i64, i64* %t13977, align 8
  %add4030 = add i64 %2253, %2254
  store i64 %add4030, i64* %h, align 8
  %2255 = load i64, i64* %t03960, align 8
  %2256 = load i64, i64* %t13977, align 8
  %add4031 = add i64 %2255, %2256
  store i64 %add4031, i64* %d, align 8
  br label %do.end.4032

do.end.4032:                                      ; preds = %do.body.3959
  br label %do.body.4033

do.body.4033:                                     ; preds = %do.end.4032
  %2257 = load i64, i64* %d, align 8
  %shl4035 = shl i64 %2257, 36
  %2258 = load i64, i64* %d, align 8
  %shr4036 = lshr i64 %2258, 28
  %or4037 = or i64 %shl4035, %shr4036
  %2259 = load i64, i64* %d, align 8
  %shl4038 = shl i64 %2259, 30
  %2260 = load i64, i64* %d, align 8
  %shr4039 = lshr i64 %2260, 34
  %or4040 = or i64 %shl4038, %shr4039
  %2261 = load i64, i64* %d, align 8
  %shl4041 = shl i64 %2261, 25
  %2262 = load i64, i64* %d, align 8
  %shr4042 = lshr i64 %2262, 39
  %or4043 = or i64 %shl4041, %shr4042
  %xor4044 = xor i64 %or4040, %or4043
  %xor4045 = xor i64 %or4037, %xor4044
  %2263 = load i64, i64* %d, align 8
  %2264 = load i64, i64* %e, align 8
  %and4046 = and i64 %2263, %2264
  %2265 = load i64, i64* %f, align 8
  %2266 = load i64, i64* %d, align 8
  %2267 = load i64, i64* %e, align 8
  %or4047 = or i64 %2266, %2267
  %and4048 = and i64 %2265, %or4047
  %or4049 = or i64 %and4046, %and4048
  %add4050 = add i64 %xor4045, %or4049
  store i64 %add4050, i64* %t04034, align 8
  %2268 = load i64, i64* %c, align 8
  %2269 = load i64, i64* %h, align 8
  %shl4052 = shl i64 %2269, 50
  %2270 = load i64, i64* %h, align 8
  %shr4053 = lshr i64 %2270, 14
  %or4054 = or i64 %shl4052, %shr4053
  %2271 = load i64, i64* %h, align 8
  %shl4055 = shl i64 %2271, 46
  %2272 = load i64, i64* %h, align 8
  %shr4056 = lshr i64 %2272, 18
  %or4057 = or i64 %shl4055, %shr4056
  %2273 = load i64, i64* %h, align 8
  %shl4058 = shl i64 %2273, 23
  %2274 = load i64, i64* %h, align 8
  %shr4059 = lshr i64 %2274, 41
  %or4060 = or i64 %shl4058, %shr4059
  %xor4061 = xor i64 %or4057, %or4060
  %xor4062 = xor i64 %or4054, %xor4061
  %2275 = load i64, i64* %b, align 8
  %2276 = load i64, i64* %h, align 8
  %2277 = load i64, i64* %a, align 8
  %2278 = load i64, i64* %b, align 8
  %xor4063 = xor i64 %2277, %2278
  %and4064 = and i64 %2276, %xor4063
  %xor4065 = xor i64 %2275, %and4064
  %2279 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 61), align 8
  %arrayidx4066 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2280 = load i64, i64* %arrayidx4066, align 8
  %arrayidx4067 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2281 = load i64, i64* %arrayidx4067, align 8
  %shl4068 = shl i64 %2281, 45
  %arrayidx4069 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2282 = load i64, i64* %arrayidx4069, align 8
  %shr4070 = lshr i64 %2282, 19
  %or4071 = or i64 %shl4068, %shr4070
  %arrayidx4072 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2283 = load i64, i64* %arrayidx4072, align 8
  %shl4073 = shl i64 %2283, 3
  %arrayidx4074 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2284 = load i64, i64* %arrayidx4074, align 8
  %shr4075 = lshr i64 %2284, 61
  %or4076 = or i64 %shl4073, %shr4075
  %arrayidx4077 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2285 = load i64, i64* %arrayidx4077, align 8
  %shr4078 = lshr i64 %2285, 6
  %xor4079 = xor i64 %or4076, %shr4078
  %xor4080 = xor i64 %or4071, %xor4079
  %arrayidx4081 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2286 = load i64, i64* %arrayidx4081, align 8
  %arrayidx4082 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2287 = load i64, i64* %arrayidx4082, align 8
  %shl4083 = shl i64 %2287, 63
  %arrayidx4084 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2288 = load i64, i64* %arrayidx4084, align 8
  %shr4085 = lshr i64 %2288, 1
  %or4086 = or i64 %shl4083, %shr4085
  %arrayidx4087 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2289 = load i64, i64* %arrayidx4087, align 8
  %shl4088 = shl i64 %2289, 56
  %arrayidx4089 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2290 = load i64, i64* %arrayidx4089, align 8
  %shr4090 = lshr i64 %2290, 8
  %or4091 = or i64 %shl4088, %shr4090
  %arrayidx4092 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2291 = load i64, i64* %arrayidx4092, align 8
  %shr4093 = lshr i64 %2291, 7
  %xor4094 = xor i64 %or4091, %shr4093
  %xor4095 = xor i64 %or4086, %xor4094
  %add4096 = add i64 %2286, %xor4095
  %add4097 = add i64 %xor4080, %add4096
  %add4098 = add i64 %2280, %add4097
  %arrayidx4099 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  store i64 %add4098, i64* %arrayidx4099, align 8
  %add4100 = add i64 %2279, %add4098
  %add4101 = add i64 %xor4065, %add4100
  %add4102 = add i64 %xor4062, %add4101
  %add4103 = add i64 %2268, %add4102
  store i64 %add4103, i64* %t14051, align 8
  %2292 = load i64, i64* %g, align 8
  %2293 = load i64, i64* %t14051, align 8
  %add4104 = add i64 %2292, %2293
  store i64 %add4104, i64* %g, align 8
  %2294 = load i64, i64* %t04034, align 8
  %2295 = load i64, i64* %t14051, align 8
  %add4105 = add i64 %2294, %2295
  store i64 %add4105, i64* %c, align 8
  br label %do.end.4106

do.end.4106:                                      ; preds = %do.body.4033
  br label %do.body.4107

do.body.4107:                                     ; preds = %do.end.4106
  %2296 = load i64, i64* %c, align 8
  %shl4109 = shl i64 %2296, 36
  %2297 = load i64, i64* %c, align 8
  %shr4110 = lshr i64 %2297, 28
  %or4111 = or i64 %shl4109, %shr4110
  %2298 = load i64, i64* %c, align 8
  %shl4112 = shl i64 %2298, 30
  %2299 = load i64, i64* %c, align 8
  %shr4113 = lshr i64 %2299, 34
  %or4114 = or i64 %shl4112, %shr4113
  %2300 = load i64, i64* %c, align 8
  %shl4115 = shl i64 %2300, 25
  %2301 = load i64, i64* %c, align 8
  %shr4116 = lshr i64 %2301, 39
  %or4117 = or i64 %shl4115, %shr4116
  %xor4118 = xor i64 %or4114, %or4117
  %xor4119 = xor i64 %or4111, %xor4118
  %2302 = load i64, i64* %c, align 8
  %2303 = load i64, i64* %d, align 8
  %and4120 = and i64 %2302, %2303
  %2304 = load i64, i64* %e, align 8
  %2305 = load i64, i64* %c, align 8
  %2306 = load i64, i64* %d, align 8
  %or4121 = or i64 %2305, %2306
  %and4122 = and i64 %2304, %or4121
  %or4123 = or i64 %and4120, %and4122
  %add4124 = add i64 %xor4119, %or4123
  store i64 %add4124, i64* %t04108, align 8
  %2307 = load i64, i64* %b, align 8
  %2308 = load i64, i64* %g, align 8
  %shl4126 = shl i64 %2308, 50
  %2309 = load i64, i64* %g, align 8
  %shr4127 = lshr i64 %2309, 14
  %or4128 = or i64 %shl4126, %shr4127
  %2310 = load i64, i64* %g, align 8
  %shl4129 = shl i64 %2310, 46
  %2311 = load i64, i64* %g, align 8
  %shr4130 = lshr i64 %2311, 18
  %or4131 = or i64 %shl4129, %shr4130
  %2312 = load i64, i64* %g, align 8
  %shl4132 = shl i64 %2312, 23
  %2313 = load i64, i64* %g, align 8
  %shr4133 = lshr i64 %2313, 41
  %or4134 = or i64 %shl4132, %shr4133
  %xor4135 = xor i64 %or4131, %or4134
  %xor4136 = xor i64 %or4128, %xor4135
  %2314 = load i64, i64* %a, align 8
  %2315 = load i64, i64* %g, align 8
  %2316 = load i64, i64* %h, align 8
  %2317 = load i64, i64* %a, align 8
  %xor4137 = xor i64 %2316, %2317
  %and4138 = and i64 %2315, %xor4137
  %xor4139 = xor i64 %2314, %and4138
  %2318 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 62), align 8
  %arrayidx4140 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2319 = load i64, i64* %arrayidx4140, align 8
  %arrayidx4141 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2320 = load i64, i64* %arrayidx4141, align 8
  %shl4142 = shl i64 %2320, 45
  %arrayidx4143 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2321 = load i64, i64* %arrayidx4143, align 8
  %shr4144 = lshr i64 %2321, 19
  %or4145 = or i64 %shl4142, %shr4144
  %arrayidx4146 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2322 = load i64, i64* %arrayidx4146, align 8
  %shl4147 = shl i64 %2322, 3
  %arrayidx4148 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2323 = load i64, i64* %arrayidx4148, align 8
  %shr4149 = lshr i64 %2323, 61
  %or4150 = or i64 %shl4147, %shr4149
  %arrayidx4151 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2324 = load i64, i64* %arrayidx4151, align 8
  %shr4152 = lshr i64 %2324, 6
  %xor4153 = xor i64 %or4150, %shr4152
  %xor4154 = xor i64 %or4145, %xor4153
  %arrayidx4155 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2325 = load i64, i64* %arrayidx4155, align 8
  %arrayidx4156 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2326 = load i64, i64* %arrayidx4156, align 8
  %shl4157 = shl i64 %2326, 63
  %arrayidx4158 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2327 = load i64, i64* %arrayidx4158, align 8
  %shr4159 = lshr i64 %2327, 1
  %or4160 = or i64 %shl4157, %shr4159
  %arrayidx4161 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2328 = load i64, i64* %arrayidx4161, align 8
  %shl4162 = shl i64 %2328, 56
  %arrayidx4163 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2329 = load i64, i64* %arrayidx4163, align 8
  %shr4164 = lshr i64 %2329, 8
  %or4165 = or i64 %shl4162, %shr4164
  %arrayidx4166 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2330 = load i64, i64* %arrayidx4166, align 8
  %shr4167 = lshr i64 %2330, 7
  %xor4168 = xor i64 %or4165, %shr4167
  %xor4169 = xor i64 %or4160, %xor4168
  %add4170 = add i64 %2325, %xor4169
  %add4171 = add i64 %xor4154, %add4170
  %add4172 = add i64 %2319, %add4171
  %arrayidx4173 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  store i64 %add4172, i64* %arrayidx4173, align 8
  %add4174 = add i64 %2318, %add4172
  %add4175 = add i64 %xor4139, %add4174
  %add4176 = add i64 %xor4136, %add4175
  %add4177 = add i64 %2307, %add4176
  store i64 %add4177, i64* %t14125, align 8
  %2331 = load i64, i64* %f, align 8
  %2332 = load i64, i64* %t14125, align 8
  %add4178 = add i64 %2331, %2332
  store i64 %add4178, i64* %f, align 8
  %2333 = load i64, i64* %t04108, align 8
  %2334 = load i64, i64* %t14125, align 8
  %add4179 = add i64 %2333, %2334
  store i64 %add4179, i64* %b, align 8
  br label %do.end.4180

do.end.4180:                                      ; preds = %do.body.4107
  br label %do.body.4181

do.body.4181:                                     ; preds = %do.end.4180
  %2335 = load i64, i64* %b, align 8
  %shl4183 = shl i64 %2335, 36
  %2336 = load i64, i64* %b, align 8
  %shr4184 = lshr i64 %2336, 28
  %or4185 = or i64 %shl4183, %shr4184
  %2337 = load i64, i64* %b, align 8
  %shl4186 = shl i64 %2337, 30
  %2338 = load i64, i64* %b, align 8
  %shr4187 = lshr i64 %2338, 34
  %or4188 = or i64 %shl4186, %shr4187
  %2339 = load i64, i64* %b, align 8
  %shl4189 = shl i64 %2339, 25
  %2340 = load i64, i64* %b, align 8
  %shr4190 = lshr i64 %2340, 39
  %or4191 = or i64 %shl4189, %shr4190
  %xor4192 = xor i64 %or4188, %or4191
  %xor4193 = xor i64 %or4185, %xor4192
  %2341 = load i64, i64* %b, align 8
  %2342 = load i64, i64* %c, align 8
  %and4194 = and i64 %2341, %2342
  %2343 = load i64, i64* %d, align 8
  %2344 = load i64, i64* %b, align 8
  %2345 = load i64, i64* %c, align 8
  %or4195 = or i64 %2344, %2345
  %and4196 = and i64 %2343, %or4195
  %or4197 = or i64 %and4194, %and4196
  %add4198 = add i64 %xor4193, %or4197
  store i64 %add4198, i64* %t04182, align 8
  %2346 = load i64, i64* %a, align 8
  %2347 = load i64, i64* %f, align 8
  %shl4200 = shl i64 %2347, 50
  %2348 = load i64, i64* %f, align 8
  %shr4201 = lshr i64 %2348, 14
  %or4202 = or i64 %shl4200, %shr4201
  %2349 = load i64, i64* %f, align 8
  %shl4203 = shl i64 %2349, 46
  %2350 = load i64, i64* %f, align 8
  %shr4204 = lshr i64 %2350, 18
  %or4205 = or i64 %shl4203, %shr4204
  %2351 = load i64, i64* %f, align 8
  %shl4206 = shl i64 %2351, 23
  %2352 = load i64, i64* %f, align 8
  %shr4207 = lshr i64 %2352, 41
  %or4208 = or i64 %shl4206, %shr4207
  %xor4209 = xor i64 %or4205, %or4208
  %xor4210 = xor i64 %or4202, %xor4209
  %2353 = load i64, i64* %h, align 8
  %2354 = load i64, i64* %f, align 8
  %2355 = load i64, i64* %g, align 8
  %2356 = load i64, i64* %h, align 8
  %xor4211 = xor i64 %2355, %2356
  %and4212 = and i64 %2354, %xor4211
  %xor4213 = xor i64 %2353, %and4212
  %2357 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 63), align 8
  %arrayidx4214 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2358 = load i64, i64* %arrayidx4214, align 8
  %arrayidx4215 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2359 = load i64, i64* %arrayidx4215, align 8
  %shl4216 = shl i64 %2359, 45
  %arrayidx4217 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2360 = load i64, i64* %arrayidx4217, align 8
  %shr4218 = lshr i64 %2360, 19
  %or4219 = or i64 %shl4216, %shr4218
  %arrayidx4220 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2361 = load i64, i64* %arrayidx4220, align 8
  %shl4221 = shl i64 %2361, 3
  %arrayidx4222 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2362 = load i64, i64* %arrayidx4222, align 8
  %shr4223 = lshr i64 %2362, 61
  %or4224 = or i64 %shl4221, %shr4223
  %arrayidx4225 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2363 = load i64, i64* %arrayidx4225, align 8
  %shr4226 = lshr i64 %2363, 6
  %xor4227 = xor i64 %or4224, %shr4226
  %xor4228 = xor i64 %or4219, %xor4227
  %arrayidx4229 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2364 = load i64, i64* %arrayidx4229, align 8
  %arrayidx4230 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2365 = load i64, i64* %arrayidx4230, align 8
  %shl4231 = shl i64 %2365, 63
  %arrayidx4232 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2366 = load i64, i64* %arrayidx4232, align 8
  %shr4233 = lshr i64 %2366, 1
  %or4234 = or i64 %shl4231, %shr4233
  %arrayidx4235 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2367 = load i64, i64* %arrayidx4235, align 8
  %shl4236 = shl i64 %2367, 56
  %arrayidx4237 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2368 = load i64, i64* %arrayidx4237, align 8
  %shr4238 = lshr i64 %2368, 8
  %or4239 = or i64 %shl4236, %shr4238
  %arrayidx4240 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2369 = load i64, i64* %arrayidx4240, align 8
  %shr4241 = lshr i64 %2369, 7
  %xor4242 = xor i64 %or4239, %shr4241
  %xor4243 = xor i64 %or4234, %xor4242
  %add4244 = add i64 %2364, %xor4243
  %add4245 = add i64 %xor4228, %add4244
  %add4246 = add i64 %2358, %add4245
  %arrayidx4247 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  store i64 %add4246, i64* %arrayidx4247, align 8
  %add4248 = add i64 %2357, %add4246
  %add4249 = add i64 %xor4213, %add4248
  %add4250 = add i64 %xor4210, %add4249
  %add4251 = add i64 %2346, %add4250
  store i64 %add4251, i64* %t14199, align 8
  %2370 = load i64, i64* %e, align 8
  %2371 = load i64, i64* %t14199, align 8
  %add4252 = add i64 %2370, %2371
  store i64 %add4252, i64* %e, align 8
  %2372 = load i64, i64* %t04182, align 8
  %2373 = load i64, i64* %t14199, align 8
  %add4253 = add i64 %2372, %2373
  store i64 %add4253, i64* %a, align 8
  br label %do.end.4254

do.end.4254:                                      ; preds = %do.body.4181
  br label %do.body.4255

do.body.4255:                                     ; preds = %do.end.4254
  %2374 = load i64, i64* %a, align 8
  %shl4257 = shl i64 %2374, 36
  %2375 = load i64, i64* %a, align 8
  %shr4258 = lshr i64 %2375, 28
  %or4259 = or i64 %shl4257, %shr4258
  %2376 = load i64, i64* %a, align 8
  %shl4260 = shl i64 %2376, 30
  %2377 = load i64, i64* %a, align 8
  %shr4261 = lshr i64 %2377, 34
  %or4262 = or i64 %shl4260, %shr4261
  %2378 = load i64, i64* %a, align 8
  %shl4263 = shl i64 %2378, 25
  %2379 = load i64, i64* %a, align 8
  %shr4264 = lshr i64 %2379, 39
  %or4265 = or i64 %shl4263, %shr4264
  %xor4266 = xor i64 %or4262, %or4265
  %xor4267 = xor i64 %or4259, %xor4266
  %2380 = load i64, i64* %a, align 8
  %2381 = load i64, i64* %b, align 8
  %and4268 = and i64 %2380, %2381
  %2382 = load i64, i64* %c, align 8
  %2383 = load i64, i64* %a, align 8
  %2384 = load i64, i64* %b, align 8
  %or4269 = or i64 %2383, %2384
  %and4270 = and i64 %2382, %or4269
  %or4271 = or i64 %and4268, %and4270
  %add4272 = add i64 %xor4267, %or4271
  store i64 %add4272, i64* %t04256, align 8
  %2385 = load i64, i64* %h, align 8
  %2386 = load i64, i64* %e, align 8
  %shl4274 = shl i64 %2386, 50
  %2387 = load i64, i64* %e, align 8
  %shr4275 = lshr i64 %2387, 14
  %or4276 = or i64 %shl4274, %shr4275
  %2388 = load i64, i64* %e, align 8
  %shl4277 = shl i64 %2388, 46
  %2389 = load i64, i64* %e, align 8
  %shr4278 = lshr i64 %2389, 18
  %or4279 = or i64 %shl4277, %shr4278
  %2390 = load i64, i64* %e, align 8
  %shl4280 = shl i64 %2390, 23
  %2391 = load i64, i64* %e, align 8
  %shr4281 = lshr i64 %2391, 41
  %or4282 = or i64 %shl4280, %shr4281
  %xor4283 = xor i64 %or4279, %or4282
  %xor4284 = xor i64 %or4276, %xor4283
  %2392 = load i64, i64* %g, align 8
  %2393 = load i64, i64* %e, align 8
  %2394 = load i64, i64* %f, align 8
  %2395 = load i64, i64* %g, align 8
  %xor4285 = xor i64 %2394, %2395
  %and4286 = and i64 %2393, %xor4285
  %xor4287 = xor i64 %2392, %and4286
  %2396 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 64), align 8
  %arrayidx4288 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2397 = load i64, i64* %arrayidx4288, align 8
  %arrayidx4289 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2398 = load i64, i64* %arrayidx4289, align 8
  %shl4290 = shl i64 %2398, 45
  %arrayidx4291 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2399 = load i64, i64* %arrayidx4291, align 8
  %shr4292 = lshr i64 %2399, 19
  %or4293 = or i64 %shl4290, %shr4292
  %arrayidx4294 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2400 = load i64, i64* %arrayidx4294, align 8
  %shl4295 = shl i64 %2400, 3
  %arrayidx4296 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2401 = load i64, i64* %arrayidx4296, align 8
  %shr4297 = lshr i64 %2401, 61
  %or4298 = or i64 %shl4295, %shr4297
  %arrayidx4299 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2402 = load i64, i64* %arrayidx4299, align 8
  %shr4300 = lshr i64 %2402, 6
  %xor4301 = xor i64 %or4298, %shr4300
  %xor4302 = xor i64 %or4293, %xor4301
  %arrayidx4303 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2403 = load i64, i64* %arrayidx4303, align 8
  %arrayidx4304 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2404 = load i64, i64* %arrayidx4304, align 8
  %shl4305 = shl i64 %2404, 63
  %arrayidx4306 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2405 = load i64, i64* %arrayidx4306, align 8
  %shr4307 = lshr i64 %2405, 1
  %or4308 = or i64 %shl4305, %shr4307
  %arrayidx4309 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2406 = load i64, i64* %arrayidx4309, align 8
  %shl4310 = shl i64 %2406, 56
  %arrayidx4311 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2407 = load i64, i64* %arrayidx4311, align 8
  %shr4312 = lshr i64 %2407, 8
  %or4313 = or i64 %shl4310, %shr4312
  %arrayidx4314 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2408 = load i64, i64* %arrayidx4314, align 8
  %shr4315 = lshr i64 %2408, 7
  %xor4316 = xor i64 %or4313, %shr4315
  %xor4317 = xor i64 %or4308, %xor4316
  %add4318 = add i64 %2403, %xor4317
  %add4319 = add i64 %xor4302, %add4318
  %add4320 = add i64 %2397, %add4319
  %arrayidx4321 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  store i64 %add4320, i64* %arrayidx4321, align 8
  %add4322 = add i64 %2396, %add4320
  %add4323 = add i64 %xor4287, %add4322
  %add4324 = add i64 %xor4284, %add4323
  %add4325 = add i64 %2385, %add4324
  store i64 %add4325, i64* %t14273, align 8
  %2409 = load i64, i64* %d, align 8
  %2410 = load i64, i64* %t14273, align 8
  %add4326 = add i64 %2409, %2410
  store i64 %add4326, i64* %d, align 8
  %2411 = load i64, i64* %t04256, align 8
  %2412 = load i64, i64* %t14273, align 8
  %add4327 = add i64 %2411, %2412
  store i64 %add4327, i64* %h, align 8
  br label %do.end.4328

do.end.4328:                                      ; preds = %do.body.4255
  br label %do.body.4329

do.body.4329:                                     ; preds = %do.end.4328
  %2413 = load i64, i64* %h, align 8
  %shl4331 = shl i64 %2413, 36
  %2414 = load i64, i64* %h, align 8
  %shr4332 = lshr i64 %2414, 28
  %or4333 = or i64 %shl4331, %shr4332
  %2415 = load i64, i64* %h, align 8
  %shl4334 = shl i64 %2415, 30
  %2416 = load i64, i64* %h, align 8
  %shr4335 = lshr i64 %2416, 34
  %or4336 = or i64 %shl4334, %shr4335
  %2417 = load i64, i64* %h, align 8
  %shl4337 = shl i64 %2417, 25
  %2418 = load i64, i64* %h, align 8
  %shr4338 = lshr i64 %2418, 39
  %or4339 = or i64 %shl4337, %shr4338
  %xor4340 = xor i64 %or4336, %or4339
  %xor4341 = xor i64 %or4333, %xor4340
  %2419 = load i64, i64* %h, align 8
  %2420 = load i64, i64* %a, align 8
  %and4342 = and i64 %2419, %2420
  %2421 = load i64, i64* %b, align 8
  %2422 = load i64, i64* %h, align 8
  %2423 = load i64, i64* %a, align 8
  %or4343 = or i64 %2422, %2423
  %and4344 = and i64 %2421, %or4343
  %or4345 = or i64 %and4342, %and4344
  %add4346 = add i64 %xor4341, %or4345
  store i64 %add4346, i64* %t04330, align 8
  %2424 = load i64, i64* %g, align 8
  %2425 = load i64, i64* %d, align 8
  %shl4348 = shl i64 %2425, 50
  %2426 = load i64, i64* %d, align 8
  %shr4349 = lshr i64 %2426, 14
  %or4350 = or i64 %shl4348, %shr4349
  %2427 = load i64, i64* %d, align 8
  %shl4351 = shl i64 %2427, 46
  %2428 = load i64, i64* %d, align 8
  %shr4352 = lshr i64 %2428, 18
  %or4353 = or i64 %shl4351, %shr4352
  %2429 = load i64, i64* %d, align 8
  %shl4354 = shl i64 %2429, 23
  %2430 = load i64, i64* %d, align 8
  %shr4355 = lshr i64 %2430, 41
  %or4356 = or i64 %shl4354, %shr4355
  %xor4357 = xor i64 %or4353, %or4356
  %xor4358 = xor i64 %or4350, %xor4357
  %2431 = load i64, i64* %f, align 8
  %2432 = load i64, i64* %d, align 8
  %2433 = load i64, i64* %e, align 8
  %2434 = load i64, i64* %f, align 8
  %xor4359 = xor i64 %2433, %2434
  %and4360 = and i64 %2432, %xor4359
  %xor4361 = xor i64 %2431, %and4360
  %2435 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 65), align 8
  %arrayidx4362 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2436 = load i64, i64* %arrayidx4362, align 8
  %arrayidx4363 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2437 = load i64, i64* %arrayidx4363, align 8
  %shl4364 = shl i64 %2437, 45
  %arrayidx4365 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2438 = load i64, i64* %arrayidx4365, align 8
  %shr4366 = lshr i64 %2438, 19
  %or4367 = or i64 %shl4364, %shr4366
  %arrayidx4368 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2439 = load i64, i64* %arrayidx4368, align 8
  %shl4369 = shl i64 %2439, 3
  %arrayidx4370 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2440 = load i64, i64* %arrayidx4370, align 8
  %shr4371 = lshr i64 %2440, 61
  %or4372 = or i64 %shl4369, %shr4371
  %arrayidx4373 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2441 = load i64, i64* %arrayidx4373, align 8
  %shr4374 = lshr i64 %2441, 6
  %xor4375 = xor i64 %or4372, %shr4374
  %xor4376 = xor i64 %or4367, %xor4375
  %arrayidx4377 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2442 = load i64, i64* %arrayidx4377, align 8
  %arrayidx4378 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2443 = load i64, i64* %arrayidx4378, align 8
  %shl4379 = shl i64 %2443, 63
  %arrayidx4380 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2444 = load i64, i64* %arrayidx4380, align 8
  %shr4381 = lshr i64 %2444, 1
  %or4382 = or i64 %shl4379, %shr4381
  %arrayidx4383 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2445 = load i64, i64* %arrayidx4383, align 8
  %shl4384 = shl i64 %2445, 56
  %arrayidx4385 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2446 = load i64, i64* %arrayidx4385, align 8
  %shr4386 = lshr i64 %2446, 8
  %or4387 = or i64 %shl4384, %shr4386
  %arrayidx4388 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2447 = load i64, i64* %arrayidx4388, align 8
  %shr4389 = lshr i64 %2447, 7
  %xor4390 = xor i64 %or4387, %shr4389
  %xor4391 = xor i64 %or4382, %xor4390
  %add4392 = add i64 %2442, %xor4391
  %add4393 = add i64 %xor4376, %add4392
  %add4394 = add i64 %2436, %add4393
  %arrayidx4395 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  store i64 %add4394, i64* %arrayidx4395, align 8
  %add4396 = add i64 %2435, %add4394
  %add4397 = add i64 %xor4361, %add4396
  %add4398 = add i64 %xor4358, %add4397
  %add4399 = add i64 %2424, %add4398
  store i64 %add4399, i64* %t14347, align 8
  %2448 = load i64, i64* %c, align 8
  %2449 = load i64, i64* %t14347, align 8
  %add4400 = add i64 %2448, %2449
  store i64 %add4400, i64* %c, align 8
  %2450 = load i64, i64* %t04330, align 8
  %2451 = load i64, i64* %t14347, align 8
  %add4401 = add i64 %2450, %2451
  store i64 %add4401, i64* %g, align 8
  br label %do.end.4402

do.end.4402:                                      ; preds = %do.body.4329
  br label %do.body.4403

do.body.4403:                                     ; preds = %do.end.4402
  %2452 = load i64, i64* %g, align 8
  %shl4405 = shl i64 %2452, 36
  %2453 = load i64, i64* %g, align 8
  %shr4406 = lshr i64 %2453, 28
  %or4407 = or i64 %shl4405, %shr4406
  %2454 = load i64, i64* %g, align 8
  %shl4408 = shl i64 %2454, 30
  %2455 = load i64, i64* %g, align 8
  %shr4409 = lshr i64 %2455, 34
  %or4410 = or i64 %shl4408, %shr4409
  %2456 = load i64, i64* %g, align 8
  %shl4411 = shl i64 %2456, 25
  %2457 = load i64, i64* %g, align 8
  %shr4412 = lshr i64 %2457, 39
  %or4413 = or i64 %shl4411, %shr4412
  %xor4414 = xor i64 %or4410, %or4413
  %xor4415 = xor i64 %or4407, %xor4414
  %2458 = load i64, i64* %g, align 8
  %2459 = load i64, i64* %h, align 8
  %and4416 = and i64 %2458, %2459
  %2460 = load i64, i64* %a, align 8
  %2461 = load i64, i64* %g, align 8
  %2462 = load i64, i64* %h, align 8
  %or4417 = or i64 %2461, %2462
  %and4418 = and i64 %2460, %or4417
  %or4419 = or i64 %and4416, %and4418
  %add4420 = add i64 %xor4415, %or4419
  store i64 %add4420, i64* %t04404, align 8
  %2463 = load i64, i64* %f, align 8
  %2464 = load i64, i64* %c, align 8
  %shl4422 = shl i64 %2464, 50
  %2465 = load i64, i64* %c, align 8
  %shr4423 = lshr i64 %2465, 14
  %or4424 = or i64 %shl4422, %shr4423
  %2466 = load i64, i64* %c, align 8
  %shl4425 = shl i64 %2466, 46
  %2467 = load i64, i64* %c, align 8
  %shr4426 = lshr i64 %2467, 18
  %or4427 = or i64 %shl4425, %shr4426
  %2468 = load i64, i64* %c, align 8
  %shl4428 = shl i64 %2468, 23
  %2469 = load i64, i64* %c, align 8
  %shr4429 = lshr i64 %2469, 41
  %or4430 = or i64 %shl4428, %shr4429
  %xor4431 = xor i64 %or4427, %or4430
  %xor4432 = xor i64 %or4424, %xor4431
  %2470 = load i64, i64* %e, align 8
  %2471 = load i64, i64* %c, align 8
  %2472 = load i64, i64* %d, align 8
  %2473 = load i64, i64* %e, align 8
  %xor4433 = xor i64 %2472, %2473
  %and4434 = and i64 %2471, %xor4433
  %xor4435 = xor i64 %2470, %and4434
  %2474 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 66), align 8
  %arrayidx4436 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2475 = load i64, i64* %arrayidx4436, align 8
  %arrayidx4437 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2476 = load i64, i64* %arrayidx4437, align 8
  %shl4438 = shl i64 %2476, 45
  %arrayidx4439 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2477 = load i64, i64* %arrayidx4439, align 8
  %shr4440 = lshr i64 %2477, 19
  %or4441 = or i64 %shl4438, %shr4440
  %arrayidx4442 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2478 = load i64, i64* %arrayidx4442, align 8
  %shl4443 = shl i64 %2478, 3
  %arrayidx4444 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2479 = load i64, i64* %arrayidx4444, align 8
  %shr4445 = lshr i64 %2479, 61
  %or4446 = or i64 %shl4443, %shr4445
  %arrayidx4447 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2480 = load i64, i64* %arrayidx4447, align 8
  %shr4448 = lshr i64 %2480, 6
  %xor4449 = xor i64 %or4446, %shr4448
  %xor4450 = xor i64 %or4441, %xor4449
  %arrayidx4451 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2481 = load i64, i64* %arrayidx4451, align 8
  %arrayidx4452 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2482 = load i64, i64* %arrayidx4452, align 8
  %shl4453 = shl i64 %2482, 63
  %arrayidx4454 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2483 = load i64, i64* %arrayidx4454, align 8
  %shr4455 = lshr i64 %2483, 1
  %or4456 = or i64 %shl4453, %shr4455
  %arrayidx4457 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2484 = load i64, i64* %arrayidx4457, align 8
  %shl4458 = shl i64 %2484, 56
  %arrayidx4459 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2485 = load i64, i64* %arrayidx4459, align 8
  %shr4460 = lshr i64 %2485, 8
  %or4461 = or i64 %shl4458, %shr4460
  %arrayidx4462 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2486 = load i64, i64* %arrayidx4462, align 8
  %shr4463 = lshr i64 %2486, 7
  %xor4464 = xor i64 %or4461, %shr4463
  %xor4465 = xor i64 %or4456, %xor4464
  %add4466 = add i64 %2481, %xor4465
  %add4467 = add i64 %xor4450, %add4466
  %add4468 = add i64 %2475, %add4467
  %arrayidx4469 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  store i64 %add4468, i64* %arrayidx4469, align 8
  %add4470 = add i64 %2474, %add4468
  %add4471 = add i64 %xor4435, %add4470
  %add4472 = add i64 %xor4432, %add4471
  %add4473 = add i64 %2463, %add4472
  store i64 %add4473, i64* %t14421, align 8
  %2487 = load i64, i64* %b, align 8
  %2488 = load i64, i64* %t14421, align 8
  %add4474 = add i64 %2487, %2488
  store i64 %add4474, i64* %b, align 8
  %2489 = load i64, i64* %t04404, align 8
  %2490 = load i64, i64* %t14421, align 8
  %add4475 = add i64 %2489, %2490
  store i64 %add4475, i64* %f, align 8
  br label %do.end.4476

do.end.4476:                                      ; preds = %do.body.4403
  br label %do.body.4477

do.body.4477:                                     ; preds = %do.end.4476
  %2491 = load i64, i64* %f, align 8
  %shl4479 = shl i64 %2491, 36
  %2492 = load i64, i64* %f, align 8
  %shr4480 = lshr i64 %2492, 28
  %or4481 = or i64 %shl4479, %shr4480
  %2493 = load i64, i64* %f, align 8
  %shl4482 = shl i64 %2493, 30
  %2494 = load i64, i64* %f, align 8
  %shr4483 = lshr i64 %2494, 34
  %or4484 = or i64 %shl4482, %shr4483
  %2495 = load i64, i64* %f, align 8
  %shl4485 = shl i64 %2495, 25
  %2496 = load i64, i64* %f, align 8
  %shr4486 = lshr i64 %2496, 39
  %or4487 = or i64 %shl4485, %shr4486
  %xor4488 = xor i64 %or4484, %or4487
  %xor4489 = xor i64 %or4481, %xor4488
  %2497 = load i64, i64* %f, align 8
  %2498 = load i64, i64* %g, align 8
  %and4490 = and i64 %2497, %2498
  %2499 = load i64, i64* %h, align 8
  %2500 = load i64, i64* %f, align 8
  %2501 = load i64, i64* %g, align 8
  %or4491 = or i64 %2500, %2501
  %and4492 = and i64 %2499, %or4491
  %or4493 = or i64 %and4490, %and4492
  %add4494 = add i64 %xor4489, %or4493
  store i64 %add4494, i64* %t04478, align 8
  %2502 = load i64, i64* %e, align 8
  %2503 = load i64, i64* %b, align 8
  %shl4496 = shl i64 %2503, 50
  %2504 = load i64, i64* %b, align 8
  %shr4497 = lshr i64 %2504, 14
  %or4498 = or i64 %shl4496, %shr4497
  %2505 = load i64, i64* %b, align 8
  %shl4499 = shl i64 %2505, 46
  %2506 = load i64, i64* %b, align 8
  %shr4500 = lshr i64 %2506, 18
  %or4501 = or i64 %shl4499, %shr4500
  %2507 = load i64, i64* %b, align 8
  %shl4502 = shl i64 %2507, 23
  %2508 = load i64, i64* %b, align 8
  %shr4503 = lshr i64 %2508, 41
  %or4504 = or i64 %shl4502, %shr4503
  %xor4505 = xor i64 %or4501, %or4504
  %xor4506 = xor i64 %or4498, %xor4505
  %2509 = load i64, i64* %d, align 8
  %2510 = load i64, i64* %b, align 8
  %2511 = load i64, i64* %c, align 8
  %2512 = load i64, i64* %d, align 8
  %xor4507 = xor i64 %2511, %2512
  %and4508 = and i64 %2510, %xor4507
  %xor4509 = xor i64 %2509, %and4508
  %2513 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 67), align 8
  %arrayidx4510 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2514 = load i64, i64* %arrayidx4510, align 8
  %arrayidx4511 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2515 = load i64, i64* %arrayidx4511, align 8
  %shl4512 = shl i64 %2515, 45
  %arrayidx4513 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2516 = load i64, i64* %arrayidx4513, align 8
  %shr4514 = lshr i64 %2516, 19
  %or4515 = or i64 %shl4512, %shr4514
  %arrayidx4516 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2517 = load i64, i64* %arrayidx4516, align 8
  %shl4517 = shl i64 %2517, 3
  %arrayidx4518 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2518 = load i64, i64* %arrayidx4518, align 8
  %shr4519 = lshr i64 %2518, 61
  %or4520 = or i64 %shl4517, %shr4519
  %arrayidx4521 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2519 = load i64, i64* %arrayidx4521, align 8
  %shr4522 = lshr i64 %2519, 6
  %xor4523 = xor i64 %or4520, %shr4522
  %xor4524 = xor i64 %or4515, %xor4523
  %arrayidx4525 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2520 = load i64, i64* %arrayidx4525, align 8
  %arrayidx4526 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2521 = load i64, i64* %arrayidx4526, align 8
  %shl4527 = shl i64 %2521, 63
  %arrayidx4528 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2522 = load i64, i64* %arrayidx4528, align 8
  %shr4529 = lshr i64 %2522, 1
  %or4530 = or i64 %shl4527, %shr4529
  %arrayidx4531 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2523 = load i64, i64* %arrayidx4531, align 8
  %shl4532 = shl i64 %2523, 56
  %arrayidx4533 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2524 = load i64, i64* %arrayidx4533, align 8
  %shr4534 = lshr i64 %2524, 8
  %or4535 = or i64 %shl4532, %shr4534
  %arrayidx4536 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2525 = load i64, i64* %arrayidx4536, align 8
  %shr4537 = lshr i64 %2525, 7
  %xor4538 = xor i64 %or4535, %shr4537
  %xor4539 = xor i64 %or4530, %xor4538
  %add4540 = add i64 %2520, %xor4539
  %add4541 = add i64 %xor4524, %add4540
  %add4542 = add i64 %2514, %add4541
  %arrayidx4543 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  store i64 %add4542, i64* %arrayidx4543, align 8
  %add4544 = add i64 %2513, %add4542
  %add4545 = add i64 %xor4509, %add4544
  %add4546 = add i64 %xor4506, %add4545
  %add4547 = add i64 %2502, %add4546
  store i64 %add4547, i64* %t14495, align 8
  %2526 = load i64, i64* %a, align 8
  %2527 = load i64, i64* %t14495, align 8
  %add4548 = add i64 %2526, %2527
  store i64 %add4548, i64* %a, align 8
  %2528 = load i64, i64* %t04478, align 8
  %2529 = load i64, i64* %t14495, align 8
  %add4549 = add i64 %2528, %2529
  store i64 %add4549, i64* %e, align 8
  br label %do.end.4550

do.end.4550:                                      ; preds = %do.body.4477
  br label %do.body.4551

do.body.4551:                                     ; preds = %do.end.4550
  %2530 = load i64, i64* %e, align 8
  %shl4553 = shl i64 %2530, 36
  %2531 = load i64, i64* %e, align 8
  %shr4554 = lshr i64 %2531, 28
  %or4555 = or i64 %shl4553, %shr4554
  %2532 = load i64, i64* %e, align 8
  %shl4556 = shl i64 %2532, 30
  %2533 = load i64, i64* %e, align 8
  %shr4557 = lshr i64 %2533, 34
  %or4558 = or i64 %shl4556, %shr4557
  %2534 = load i64, i64* %e, align 8
  %shl4559 = shl i64 %2534, 25
  %2535 = load i64, i64* %e, align 8
  %shr4560 = lshr i64 %2535, 39
  %or4561 = or i64 %shl4559, %shr4560
  %xor4562 = xor i64 %or4558, %or4561
  %xor4563 = xor i64 %or4555, %xor4562
  %2536 = load i64, i64* %e, align 8
  %2537 = load i64, i64* %f, align 8
  %and4564 = and i64 %2536, %2537
  %2538 = load i64, i64* %g, align 8
  %2539 = load i64, i64* %e, align 8
  %2540 = load i64, i64* %f, align 8
  %or4565 = or i64 %2539, %2540
  %and4566 = and i64 %2538, %or4565
  %or4567 = or i64 %and4564, %and4566
  %add4568 = add i64 %xor4563, %or4567
  store i64 %add4568, i64* %t04552, align 8
  %2541 = load i64, i64* %d, align 8
  %2542 = load i64, i64* %a, align 8
  %shl4570 = shl i64 %2542, 50
  %2543 = load i64, i64* %a, align 8
  %shr4571 = lshr i64 %2543, 14
  %or4572 = or i64 %shl4570, %shr4571
  %2544 = load i64, i64* %a, align 8
  %shl4573 = shl i64 %2544, 46
  %2545 = load i64, i64* %a, align 8
  %shr4574 = lshr i64 %2545, 18
  %or4575 = or i64 %shl4573, %shr4574
  %2546 = load i64, i64* %a, align 8
  %shl4576 = shl i64 %2546, 23
  %2547 = load i64, i64* %a, align 8
  %shr4577 = lshr i64 %2547, 41
  %or4578 = or i64 %shl4576, %shr4577
  %xor4579 = xor i64 %or4575, %or4578
  %xor4580 = xor i64 %or4572, %xor4579
  %2548 = load i64, i64* %c, align 8
  %2549 = load i64, i64* %a, align 8
  %2550 = load i64, i64* %b, align 8
  %2551 = load i64, i64* %c, align 8
  %xor4581 = xor i64 %2550, %2551
  %and4582 = and i64 %2549, %xor4581
  %xor4583 = xor i64 %2548, %and4582
  %2552 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 68), align 8
  %arrayidx4584 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2553 = load i64, i64* %arrayidx4584, align 8
  %arrayidx4585 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2554 = load i64, i64* %arrayidx4585, align 8
  %shl4586 = shl i64 %2554, 45
  %arrayidx4587 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2555 = load i64, i64* %arrayidx4587, align 8
  %shr4588 = lshr i64 %2555, 19
  %or4589 = or i64 %shl4586, %shr4588
  %arrayidx4590 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2556 = load i64, i64* %arrayidx4590, align 8
  %shl4591 = shl i64 %2556, 3
  %arrayidx4592 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2557 = load i64, i64* %arrayidx4592, align 8
  %shr4593 = lshr i64 %2557, 61
  %or4594 = or i64 %shl4591, %shr4593
  %arrayidx4595 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2558 = load i64, i64* %arrayidx4595, align 8
  %shr4596 = lshr i64 %2558, 6
  %xor4597 = xor i64 %or4594, %shr4596
  %xor4598 = xor i64 %or4589, %xor4597
  %arrayidx4599 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2559 = load i64, i64* %arrayidx4599, align 8
  %arrayidx4600 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2560 = load i64, i64* %arrayidx4600, align 8
  %shl4601 = shl i64 %2560, 63
  %arrayidx4602 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2561 = load i64, i64* %arrayidx4602, align 8
  %shr4603 = lshr i64 %2561, 1
  %or4604 = or i64 %shl4601, %shr4603
  %arrayidx4605 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2562 = load i64, i64* %arrayidx4605, align 8
  %shl4606 = shl i64 %2562, 56
  %arrayidx4607 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2563 = load i64, i64* %arrayidx4607, align 8
  %shr4608 = lshr i64 %2563, 8
  %or4609 = or i64 %shl4606, %shr4608
  %arrayidx4610 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2564 = load i64, i64* %arrayidx4610, align 8
  %shr4611 = lshr i64 %2564, 7
  %xor4612 = xor i64 %or4609, %shr4611
  %xor4613 = xor i64 %or4604, %xor4612
  %add4614 = add i64 %2559, %xor4613
  %add4615 = add i64 %xor4598, %add4614
  %add4616 = add i64 %2553, %add4615
  %arrayidx4617 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  store i64 %add4616, i64* %arrayidx4617, align 8
  %add4618 = add i64 %2552, %add4616
  %add4619 = add i64 %xor4583, %add4618
  %add4620 = add i64 %xor4580, %add4619
  %add4621 = add i64 %2541, %add4620
  store i64 %add4621, i64* %t14569, align 8
  %2565 = load i64, i64* %h, align 8
  %2566 = load i64, i64* %t14569, align 8
  %add4622 = add i64 %2565, %2566
  store i64 %add4622, i64* %h, align 8
  %2567 = load i64, i64* %t04552, align 8
  %2568 = load i64, i64* %t14569, align 8
  %add4623 = add i64 %2567, %2568
  store i64 %add4623, i64* %d, align 8
  br label %do.end.4624

do.end.4624:                                      ; preds = %do.body.4551
  br label %do.body.4625

do.body.4625:                                     ; preds = %do.end.4624
  %2569 = load i64, i64* %d, align 8
  %shl4627 = shl i64 %2569, 36
  %2570 = load i64, i64* %d, align 8
  %shr4628 = lshr i64 %2570, 28
  %or4629 = or i64 %shl4627, %shr4628
  %2571 = load i64, i64* %d, align 8
  %shl4630 = shl i64 %2571, 30
  %2572 = load i64, i64* %d, align 8
  %shr4631 = lshr i64 %2572, 34
  %or4632 = or i64 %shl4630, %shr4631
  %2573 = load i64, i64* %d, align 8
  %shl4633 = shl i64 %2573, 25
  %2574 = load i64, i64* %d, align 8
  %shr4634 = lshr i64 %2574, 39
  %or4635 = or i64 %shl4633, %shr4634
  %xor4636 = xor i64 %or4632, %or4635
  %xor4637 = xor i64 %or4629, %xor4636
  %2575 = load i64, i64* %d, align 8
  %2576 = load i64, i64* %e, align 8
  %and4638 = and i64 %2575, %2576
  %2577 = load i64, i64* %f, align 8
  %2578 = load i64, i64* %d, align 8
  %2579 = load i64, i64* %e, align 8
  %or4639 = or i64 %2578, %2579
  %and4640 = and i64 %2577, %or4639
  %or4641 = or i64 %and4638, %and4640
  %add4642 = add i64 %xor4637, %or4641
  store i64 %add4642, i64* %t04626, align 8
  %2580 = load i64, i64* %c, align 8
  %2581 = load i64, i64* %h, align 8
  %shl4644 = shl i64 %2581, 50
  %2582 = load i64, i64* %h, align 8
  %shr4645 = lshr i64 %2582, 14
  %or4646 = or i64 %shl4644, %shr4645
  %2583 = load i64, i64* %h, align 8
  %shl4647 = shl i64 %2583, 46
  %2584 = load i64, i64* %h, align 8
  %shr4648 = lshr i64 %2584, 18
  %or4649 = or i64 %shl4647, %shr4648
  %2585 = load i64, i64* %h, align 8
  %shl4650 = shl i64 %2585, 23
  %2586 = load i64, i64* %h, align 8
  %shr4651 = lshr i64 %2586, 41
  %or4652 = or i64 %shl4650, %shr4651
  %xor4653 = xor i64 %or4649, %or4652
  %xor4654 = xor i64 %or4646, %xor4653
  %2587 = load i64, i64* %b, align 8
  %2588 = load i64, i64* %h, align 8
  %2589 = load i64, i64* %a, align 8
  %2590 = load i64, i64* %b, align 8
  %xor4655 = xor i64 %2589, %2590
  %and4656 = and i64 %2588, %xor4655
  %xor4657 = xor i64 %2587, %and4656
  %2591 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 69), align 8
  %arrayidx4658 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2592 = load i64, i64* %arrayidx4658, align 8
  %arrayidx4659 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2593 = load i64, i64* %arrayidx4659, align 8
  %shl4660 = shl i64 %2593, 45
  %arrayidx4661 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2594 = load i64, i64* %arrayidx4661, align 8
  %shr4662 = lshr i64 %2594, 19
  %or4663 = or i64 %shl4660, %shr4662
  %arrayidx4664 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2595 = load i64, i64* %arrayidx4664, align 8
  %shl4665 = shl i64 %2595, 3
  %arrayidx4666 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2596 = load i64, i64* %arrayidx4666, align 8
  %shr4667 = lshr i64 %2596, 61
  %or4668 = or i64 %shl4665, %shr4667
  %arrayidx4669 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2597 = load i64, i64* %arrayidx4669, align 8
  %shr4670 = lshr i64 %2597, 6
  %xor4671 = xor i64 %or4668, %shr4670
  %xor4672 = xor i64 %or4663, %xor4671
  %arrayidx4673 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2598 = load i64, i64* %arrayidx4673, align 8
  %arrayidx4674 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2599 = load i64, i64* %arrayidx4674, align 8
  %shl4675 = shl i64 %2599, 63
  %arrayidx4676 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2600 = load i64, i64* %arrayidx4676, align 8
  %shr4677 = lshr i64 %2600, 1
  %or4678 = or i64 %shl4675, %shr4677
  %arrayidx4679 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2601 = load i64, i64* %arrayidx4679, align 8
  %shl4680 = shl i64 %2601, 56
  %arrayidx4681 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2602 = load i64, i64* %arrayidx4681, align 8
  %shr4682 = lshr i64 %2602, 8
  %or4683 = or i64 %shl4680, %shr4682
  %arrayidx4684 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2603 = load i64, i64* %arrayidx4684, align 8
  %shr4685 = lshr i64 %2603, 7
  %xor4686 = xor i64 %or4683, %shr4685
  %xor4687 = xor i64 %or4678, %xor4686
  %add4688 = add i64 %2598, %xor4687
  %add4689 = add i64 %xor4672, %add4688
  %add4690 = add i64 %2592, %add4689
  %arrayidx4691 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  store i64 %add4690, i64* %arrayidx4691, align 8
  %add4692 = add i64 %2591, %add4690
  %add4693 = add i64 %xor4657, %add4692
  %add4694 = add i64 %xor4654, %add4693
  %add4695 = add i64 %2580, %add4694
  store i64 %add4695, i64* %t14643, align 8
  %2604 = load i64, i64* %g, align 8
  %2605 = load i64, i64* %t14643, align 8
  %add4696 = add i64 %2604, %2605
  store i64 %add4696, i64* %g, align 8
  %2606 = load i64, i64* %t04626, align 8
  %2607 = load i64, i64* %t14643, align 8
  %add4697 = add i64 %2606, %2607
  store i64 %add4697, i64* %c, align 8
  br label %do.end.4698

do.end.4698:                                      ; preds = %do.body.4625
  br label %do.body.4699

do.body.4699:                                     ; preds = %do.end.4698
  %2608 = load i64, i64* %c, align 8
  %shl4701 = shl i64 %2608, 36
  %2609 = load i64, i64* %c, align 8
  %shr4702 = lshr i64 %2609, 28
  %or4703 = or i64 %shl4701, %shr4702
  %2610 = load i64, i64* %c, align 8
  %shl4704 = shl i64 %2610, 30
  %2611 = load i64, i64* %c, align 8
  %shr4705 = lshr i64 %2611, 34
  %or4706 = or i64 %shl4704, %shr4705
  %2612 = load i64, i64* %c, align 8
  %shl4707 = shl i64 %2612, 25
  %2613 = load i64, i64* %c, align 8
  %shr4708 = lshr i64 %2613, 39
  %or4709 = or i64 %shl4707, %shr4708
  %xor4710 = xor i64 %or4706, %or4709
  %xor4711 = xor i64 %or4703, %xor4710
  %2614 = load i64, i64* %c, align 8
  %2615 = load i64, i64* %d, align 8
  %and4712 = and i64 %2614, %2615
  %2616 = load i64, i64* %e, align 8
  %2617 = load i64, i64* %c, align 8
  %2618 = load i64, i64* %d, align 8
  %or4713 = or i64 %2617, %2618
  %and4714 = and i64 %2616, %or4713
  %or4715 = or i64 %and4712, %and4714
  %add4716 = add i64 %xor4711, %or4715
  store i64 %add4716, i64* %t04700, align 8
  %2619 = load i64, i64* %b, align 8
  %2620 = load i64, i64* %g, align 8
  %shl4718 = shl i64 %2620, 50
  %2621 = load i64, i64* %g, align 8
  %shr4719 = lshr i64 %2621, 14
  %or4720 = or i64 %shl4718, %shr4719
  %2622 = load i64, i64* %g, align 8
  %shl4721 = shl i64 %2622, 46
  %2623 = load i64, i64* %g, align 8
  %shr4722 = lshr i64 %2623, 18
  %or4723 = or i64 %shl4721, %shr4722
  %2624 = load i64, i64* %g, align 8
  %shl4724 = shl i64 %2624, 23
  %2625 = load i64, i64* %g, align 8
  %shr4725 = lshr i64 %2625, 41
  %or4726 = or i64 %shl4724, %shr4725
  %xor4727 = xor i64 %or4723, %or4726
  %xor4728 = xor i64 %or4720, %xor4727
  %2626 = load i64, i64* %a, align 8
  %2627 = load i64, i64* %g, align 8
  %2628 = load i64, i64* %h, align 8
  %2629 = load i64, i64* %a, align 8
  %xor4729 = xor i64 %2628, %2629
  %and4730 = and i64 %2627, %xor4729
  %xor4731 = xor i64 %2626, %and4730
  %2630 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 70), align 8
  %arrayidx4732 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2631 = load i64, i64* %arrayidx4732, align 8
  %arrayidx4733 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2632 = load i64, i64* %arrayidx4733, align 8
  %shl4734 = shl i64 %2632, 45
  %arrayidx4735 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2633 = load i64, i64* %arrayidx4735, align 8
  %shr4736 = lshr i64 %2633, 19
  %or4737 = or i64 %shl4734, %shr4736
  %arrayidx4738 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2634 = load i64, i64* %arrayidx4738, align 8
  %shl4739 = shl i64 %2634, 3
  %arrayidx4740 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2635 = load i64, i64* %arrayidx4740, align 8
  %shr4741 = lshr i64 %2635, 61
  %or4742 = or i64 %shl4739, %shr4741
  %arrayidx4743 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2636 = load i64, i64* %arrayidx4743, align 8
  %shr4744 = lshr i64 %2636, 6
  %xor4745 = xor i64 %or4742, %shr4744
  %xor4746 = xor i64 %or4737, %xor4745
  %arrayidx4747 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2637 = load i64, i64* %arrayidx4747, align 8
  %arrayidx4748 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2638 = load i64, i64* %arrayidx4748, align 8
  %shl4749 = shl i64 %2638, 63
  %arrayidx4750 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2639 = load i64, i64* %arrayidx4750, align 8
  %shr4751 = lshr i64 %2639, 1
  %or4752 = or i64 %shl4749, %shr4751
  %arrayidx4753 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2640 = load i64, i64* %arrayidx4753, align 8
  %shl4754 = shl i64 %2640, 56
  %arrayidx4755 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2641 = load i64, i64* %arrayidx4755, align 8
  %shr4756 = lshr i64 %2641, 8
  %or4757 = or i64 %shl4754, %shr4756
  %arrayidx4758 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2642 = load i64, i64* %arrayidx4758, align 8
  %shr4759 = lshr i64 %2642, 7
  %xor4760 = xor i64 %or4757, %shr4759
  %xor4761 = xor i64 %or4752, %xor4760
  %add4762 = add i64 %2637, %xor4761
  %add4763 = add i64 %xor4746, %add4762
  %add4764 = add i64 %2631, %add4763
  %arrayidx4765 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  store i64 %add4764, i64* %arrayidx4765, align 8
  %add4766 = add i64 %2630, %add4764
  %add4767 = add i64 %xor4731, %add4766
  %add4768 = add i64 %xor4728, %add4767
  %add4769 = add i64 %2619, %add4768
  store i64 %add4769, i64* %t14717, align 8
  %2643 = load i64, i64* %f, align 8
  %2644 = load i64, i64* %t14717, align 8
  %add4770 = add i64 %2643, %2644
  store i64 %add4770, i64* %f, align 8
  %2645 = load i64, i64* %t04700, align 8
  %2646 = load i64, i64* %t14717, align 8
  %add4771 = add i64 %2645, %2646
  store i64 %add4771, i64* %b, align 8
  br label %do.end.4772

do.end.4772:                                      ; preds = %do.body.4699
  br label %do.body.4773

do.body.4773:                                     ; preds = %do.end.4772
  %2647 = load i64, i64* %b, align 8
  %shl4775 = shl i64 %2647, 36
  %2648 = load i64, i64* %b, align 8
  %shr4776 = lshr i64 %2648, 28
  %or4777 = or i64 %shl4775, %shr4776
  %2649 = load i64, i64* %b, align 8
  %shl4778 = shl i64 %2649, 30
  %2650 = load i64, i64* %b, align 8
  %shr4779 = lshr i64 %2650, 34
  %or4780 = or i64 %shl4778, %shr4779
  %2651 = load i64, i64* %b, align 8
  %shl4781 = shl i64 %2651, 25
  %2652 = load i64, i64* %b, align 8
  %shr4782 = lshr i64 %2652, 39
  %or4783 = or i64 %shl4781, %shr4782
  %xor4784 = xor i64 %or4780, %or4783
  %xor4785 = xor i64 %or4777, %xor4784
  %2653 = load i64, i64* %b, align 8
  %2654 = load i64, i64* %c, align 8
  %and4786 = and i64 %2653, %2654
  %2655 = load i64, i64* %d, align 8
  %2656 = load i64, i64* %b, align 8
  %2657 = load i64, i64* %c, align 8
  %or4787 = or i64 %2656, %2657
  %and4788 = and i64 %2655, %or4787
  %or4789 = or i64 %and4786, %and4788
  %add4790 = add i64 %xor4785, %or4789
  store i64 %add4790, i64* %t04774, align 8
  %2658 = load i64, i64* %a, align 8
  %2659 = load i64, i64* %f, align 8
  %shl4792 = shl i64 %2659, 50
  %2660 = load i64, i64* %f, align 8
  %shr4793 = lshr i64 %2660, 14
  %or4794 = or i64 %shl4792, %shr4793
  %2661 = load i64, i64* %f, align 8
  %shl4795 = shl i64 %2661, 46
  %2662 = load i64, i64* %f, align 8
  %shr4796 = lshr i64 %2662, 18
  %or4797 = or i64 %shl4795, %shr4796
  %2663 = load i64, i64* %f, align 8
  %shl4798 = shl i64 %2663, 23
  %2664 = load i64, i64* %f, align 8
  %shr4799 = lshr i64 %2664, 41
  %or4800 = or i64 %shl4798, %shr4799
  %xor4801 = xor i64 %or4797, %or4800
  %xor4802 = xor i64 %or4794, %xor4801
  %2665 = load i64, i64* %h, align 8
  %2666 = load i64, i64* %f, align 8
  %2667 = load i64, i64* %g, align 8
  %2668 = load i64, i64* %h, align 8
  %xor4803 = xor i64 %2667, %2668
  %and4804 = and i64 %2666, %xor4803
  %xor4805 = xor i64 %2665, %and4804
  %2669 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 71), align 8
  %arrayidx4806 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2670 = load i64, i64* %arrayidx4806, align 8
  %arrayidx4807 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2671 = load i64, i64* %arrayidx4807, align 8
  %shl4808 = shl i64 %2671, 45
  %arrayidx4809 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2672 = load i64, i64* %arrayidx4809, align 8
  %shr4810 = lshr i64 %2672, 19
  %or4811 = or i64 %shl4808, %shr4810
  %arrayidx4812 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2673 = load i64, i64* %arrayidx4812, align 8
  %shl4813 = shl i64 %2673, 3
  %arrayidx4814 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2674 = load i64, i64* %arrayidx4814, align 8
  %shr4815 = lshr i64 %2674, 61
  %or4816 = or i64 %shl4813, %shr4815
  %arrayidx4817 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2675 = load i64, i64* %arrayidx4817, align 8
  %shr4818 = lshr i64 %2675, 6
  %xor4819 = xor i64 %or4816, %shr4818
  %xor4820 = xor i64 %or4811, %xor4819
  %arrayidx4821 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2676 = load i64, i64* %arrayidx4821, align 8
  %arrayidx4822 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2677 = load i64, i64* %arrayidx4822, align 8
  %shl4823 = shl i64 %2677, 63
  %arrayidx4824 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2678 = load i64, i64* %arrayidx4824, align 8
  %shr4825 = lshr i64 %2678, 1
  %or4826 = or i64 %shl4823, %shr4825
  %arrayidx4827 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2679 = load i64, i64* %arrayidx4827, align 8
  %shl4828 = shl i64 %2679, 56
  %arrayidx4829 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2680 = load i64, i64* %arrayidx4829, align 8
  %shr4830 = lshr i64 %2680, 8
  %or4831 = or i64 %shl4828, %shr4830
  %arrayidx4832 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2681 = load i64, i64* %arrayidx4832, align 8
  %shr4833 = lshr i64 %2681, 7
  %xor4834 = xor i64 %or4831, %shr4833
  %xor4835 = xor i64 %or4826, %xor4834
  %add4836 = add i64 %2676, %xor4835
  %add4837 = add i64 %xor4820, %add4836
  %add4838 = add i64 %2670, %add4837
  %arrayidx4839 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  store i64 %add4838, i64* %arrayidx4839, align 8
  %add4840 = add i64 %2669, %add4838
  %add4841 = add i64 %xor4805, %add4840
  %add4842 = add i64 %xor4802, %add4841
  %add4843 = add i64 %2658, %add4842
  store i64 %add4843, i64* %t14791, align 8
  %2682 = load i64, i64* %e, align 8
  %2683 = load i64, i64* %t14791, align 8
  %add4844 = add i64 %2682, %2683
  store i64 %add4844, i64* %e, align 8
  %2684 = load i64, i64* %t04774, align 8
  %2685 = load i64, i64* %t14791, align 8
  %add4845 = add i64 %2684, %2685
  store i64 %add4845, i64* %a, align 8
  br label %do.end.4846

do.end.4846:                                      ; preds = %do.body.4773
  br label %do.body.4847

do.body.4847:                                     ; preds = %do.end.4846
  %2686 = load i64, i64* %a, align 8
  %shl4849 = shl i64 %2686, 36
  %2687 = load i64, i64* %a, align 8
  %shr4850 = lshr i64 %2687, 28
  %or4851 = or i64 %shl4849, %shr4850
  %2688 = load i64, i64* %a, align 8
  %shl4852 = shl i64 %2688, 30
  %2689 = load i64, i64* %a, align 8
  %shr4853 = lshr i64 %2689, 34
  %or4854 = or i64 %shl4852, %shr4853
  %2690 = load i64, i64* %a, align 8
  %shl4855 = shl i64 %2690, 25
  %2691 = load i64, i64* %a, align 8
  %shr4856 = lshr i64 %2691, 39
  %or4857 = or i64 %shl4855, %shr4856
  %xor4858 = xor i64 %or4854, %or4857
  %xor4859 = xor i64 %or4851, %xor4858
  %2692 = load i64, i64* %a, align 8
  %2693 = load i64, i64* %b, align 8
  %and4860 = and i64 %2692, %2693
  %2694 = load i64, i64* %c, align 8
  %2695 = load i64, i64* %a, align 8
  %2696 = load i64, i64* %b, align 8
  %or4861 = or i64 %2695, %2696
  %and4862 = and i64 %2694, %or4861
  %or4863 = or i64 %and4860, %and4862
  %add4864 = add i64 %xor4859, %or4863
  store i64 %add4864, i64* %t04848, align 8
  %2697 = load i64, i64* %h, align 8
  %2698 = load i64, i64* %e, align 8
  %shl4866 = shl i64 %2698, 50
  %2699 = load i64, i64* %e, align 8
  %shr4867 = lshr i64 %2699, 14
  %or4868 = or i64 %shl4866, %shr4867
  %2700 = load i64, i64* %e, align 8
  %shl4869 = shl i64 %2700, 46
  %2701 = load i64, i64* %e, align 8
  %shr4870 = lshr i64 %2701, 18
  %or4871 = or i64 %shl4869, %shr4870
  %2702 = load i64, i64* %e, align 8
  %shl4872 = shl i64 %2702, 23
  %2703 = load i64, i64* %e, align 8
  %shr4873 = lshr i64 %2703, 41
  %or4874 = or i64 %shl4872, %shr4873
  %xor4875 = xor i64 %or4871, %or4874
  %xor4876 = xor i64 %or4868, %xor4875
  %2704 = load i64, i64* %g, align 8
  %2705 = load i64, i64* %e, align 8
  %2706 = load i64, i64* %f, align 8
  %2707 = load i64, i64* %g, align 8
  %xor4877 = xor i64 %2706, %2707
  %and4878 = and i64 %2705, %xor4877
  %xor4879 = xor i64 %2704, %and4878
  %2708 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 72), align 8
  %arrayidx4880 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2709 = load i64, i64* %arrayidx4880, align 8
  %arrayidx4881 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2710 = load i64, i64* %arrayidx4881, align 8
  %shl4882 = shl i64 %2710, 45
  %arrayidx4883 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2711 = load i64, i64* %arrayidx4883, align 8
  %shr4884 = lshr i64 %2711, 19
  %or4885 = or i64 %shl4882, %shr4884
  %arrayidx4886 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2712 = load i64, i64* %arrayidx4886, align 8
  %shl4887 = shl i64 %2712, 3
  %arrayidx4888 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2713 = load i64, i64* %arrayidx4888, align 8
  %shr4889 = lshr i64 %2713, 61
  %or4890 = or i64 %shl4887, %shr4889
  %arrayidx4891 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2714 = load i64, i64* %arrayidx4891, align 8
  %shr4892 = lshr i64 %2714, 6
  %xor4893 = xor i64 %or4890, %shr4892
  %xor4894 = xor i64 %or4885, %xor4893
  %arrayidx4895 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 1
  %2715 = load i64, i64* %arrayidx4895, align 8
  %arrayidx4896 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2716 = load i64, i64* %arrayidx4896, align 8
  %shl4897 = shl i64 %2716, 63
  %arrayidx4898 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2717 = load i64, i64* %arrayidx4898, align 8
  %shr4899 = lshr i64 %2717, 1
  %or4900 = or i64 %shl4897, %shr4899
  %arrayidx4901 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2718 = load i64, i64* %arrayidx4901, align 8
  %shl4902 = shl i64 %2718, 56
  %arrayidx4903 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2719 = load i64, i64* %arrayidx4903, align 8
  %shr4904 = lshr i64 %2719, 8
  %or4905 = or i64 %shl4902, %shr4904
  %arrayidx4906 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2720 = load i64, i64* %arrayidx4906, align 8
  %shr4907 = lshr i64 %2720, 7
  %xor4908 = xor i64 %or4905, %shr4907
  %xor4909 = xor i64 %or4900, %xor4908
  %add4910 = add i64 %2715, %xor4909
  %add4911 = add i64 %xor4894, %add4910
  %add4912 = add i64 %2709, %add4911
  %arrayidx4913 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  store i64 %add4912, i64* %arrayidx4913, align 8
  %add4914 = add i64 %2708, %add4912
  %add4915 = add i64 %xor4879, %add4914
  %add4916 = add i64 %xor4876, %add4915
  %add4917 = add i64 %2697, %add4916
  store i64 %add4917, i64* %t14865, align 8
  %2721 = load i64, i64* %d, align 8
  %2722 = load i64, i64* %t14865, align 8
  %add4918 = add i64 %2721, %2722
  store i64 %add4918, i64* %d, align 8
  %2723 = load i64, i64* %t04848, align 8
  %2724 = load i64, i64* %t14865, align 8
  %add4919 = add i64 %2723, %2724
  store i64 %add4919, i64* %h, align 8
  br label %do.end.4920

do.end.4920:                                      ; preds = %do.body.4847
  br label %do.body.4921

do.body.4921:                                     ; preds = %do.end.4920
  %2725 = load i64, i64* %h, align 8
  %shl4923 = shl i64 %2725, 36
  %2726 = load i64, i64* %h, align 8
  %shr4924 = lshr i64 %2726, 28
  %or4925 = or i64 %shl4923, %shr4924
  %2727 = load i64, i64* %h, align 8
  %shl4926 = shl i64 %2727, 30
  %2728 = load i64, i64* %h, align 8
  %shr4927 = lshr i64 %2728, 34
  %or4928 = or i64 %shl4926, %shr4927
  %2729 = load i64, i64* %h, align 8
  %shl4929 = shl i64 %2729, 25
  %2730 = load i64, i64* %h, align 8
  %shr4930 = lshr i64 %2730, 39
  %or4931 = or i64 %shl4929, %shr4930
  %xor4932 = xor i64 %or4928, %or4931
  %xor4933 = xor i64 %or4925, %xor4932
  %2731 = load i64, i64* %h, align 8
  %2732 = load i64, i64* %a, align 8
  %and4934 = and i64 %2731, %2732
  %2733 = load i64, i64* %b, align 8
  %2734 = load i64, i64* %h, align 8
  %2735 = load i64, i64* %a, align 8
  %or4935 = or i64 %2734, %2735
  %and4936 = and i64 %2733, %or4935
  %or4937 = or i64 %and4934, %and4936
  %add4938 = add i64 %xor4933, %or4937
  store i64 %add4938, i64* %t04922, align 8
  %2736 = load i64, i64* %g, align 8
  %2737 = load i64, i64* %d, align 8
  %shl4940 = shl i64 %2737, 50
  %2738 = load i64, i64* %d, align 8
  %shr4941 = lshr i64 %2738, 14
  %or4942 = or i64 %shl4940, %shr4941
  %2739 = load i64, i64* %d, align 8
  %shl4943 = shl i64 %2739, 46
  %2740 = load i64, i64* %d, align 8
  %shr4944 = lshr i64 %2740, 18
  %or4945 = or i64 %shl4943, %shr4944
  %2741 = load i64, i64* %d, align 8
  %shl4946 = shl i64 %2741, 23
  %2742 = load i64, i64* %d, align 8
  %shr4947 = lshr i64 %2742, 41
  %or4948 = or i64 %shl4946, %shr4947
  %xor4949 = xor i64 %or4945, %or4948
  %xor4950 = xor i64 %or4942, %xor4949
  %2743 = load i64, i64* %f, align 8
  %2744 = load i64, i64* %d, align 8
  %2745 = load i64, i64* %e, align 8
  %2746 = load i64, i64* %f, align 8
  %xor4951 = xor i64 %2745, %2746
  %and4952 = and i64 %2744, %xor4951
  %xor4953 = xor i64 %2743, %and4952
  %2747 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 73), align 8
  %arrayidx4954 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2748 = load i64, i64* %arrayidx4954, align 8
  %arrayidx4955 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2749 = load i64, i64* %arrayidx4955, align 8
  %shl4956 = shl i64 %2749, 45
  %arrayidx4957 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2750 = load i64, i64* %arrayidx4957, align 8
  %shr4958 = lshr i64 %2750, 19
  %or4959 = or i64 %shl4956, %shr4958
  %arrayidx4960 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2751 = load i64, i64* %arrayidx4960, align 8
  %shl4961 = shl i64 %2751, 3
  %arrayidx4962 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2752 = load i64, i64* %arrayidx4962, align 8
  %shr4963 = lshr i64 %2752, 61
  %or4964 = or i64 %shl4961, %shr4963
  %arrayidx4965 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2753 = load i64, i64* %arrayidx4965, align 8
  %shr4966 = lshr i64 %2753, 6
  %xor4967 = xor i64 %or4964, %shr4966
  %xor4968 = xor i64 %or4959, %xor4967
  %arrayidx4969 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 2
  %2754 = load i64, i64* %arrayidx4969, align 8
  %arrayidx4970 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2755 = load i64, i64* %arrayidx4970, align 8
  %shl4971 = shl i64 %2755, 63
  %arrayidx4972 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2756 = load i64, i64* %arrayidx4972, align 8
  %shr4973 = lshr i64 %2756, 1
  %or4974 = or i64 %shl4971, %shr4973
  %arrayidx4975 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2757 = load i64, i64* %arrayidx4975, align 8
  %shl4976 = shl i64 %2757, 56
  %arrayidx4977 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2758 = load i64, i64* %arrayidx4977, align 8
  %shr4978 = lshr i64 %2758, 8
  %or4979 = or i64 %shl4976, %shr4978
  %arrayidx4980 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2759 = load i64, i64* %arrayidx4980, align 8
  %shr4981 = lshr i64 %2759, 7
  %xor4982 = xor i64 %or4979, %shr4981
  %xor4983 = xor i64 %or4974, %xor4982
  %add4984 = add i64 %2754, %xor4983
  %add4985 = add i64 %xor4968, %add4984
  %add4986 = add i64 %2748, %add4985
  %arrayidx4987 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  store i64 %add4986, i64* %arrayidx4987, align 8
  %add4988 = add i64 %2747, %add4986
  %add4989 = add i64 %xor4953, %add4988
  %add4990 = add i64 %xor4950, %add4989
  %add4991 = add i64 %2736, %add4990
  store i64 %add4991, i64* %t14939, align 8
  %2760 = load i64, i64* %c, align 8
  %2761 = load i64, i64* %t14939, align 8
  %add4992 = add i64 %2760, %2761
  store i64 %add4992, i64* %c, align 8
  %2762 = load i64, i64* %t04922, align 8
  %2763 = load i64, i64* %t14939, align 8
  %add4993 = add i64 %2762, %2763
  store i64 %add4993, i64* %g, align 8
  br label %do.end.4994

do.end.4994:                                      ; preds = %do.body.4921
  br label %do.body.4995

do.body.4995:                                     ; preds = %do.end.4994
  %2764 = load i64, i64* %g, align 8
  %shl4997 = shl i64 %2764, 36
  %2765 = load i64, i64* %g, align 8
  %shr4998 = lshr i64 %2765, 28
  %or4999 = or i64 %shl4997, %shr4998
  %2766 = load i64, i64* %g, align 8
  %shl5000 = shl i64 %2766, 30
  %2767 = load i64, i64* %g, align 8
  %shr5001 = lshr i64 %2767, 34
  %or5002 = or i64 %shl5000, %shr5001
  %2768 = load i64, i64* %g, align 8
  %shl5003 = shl i64 %2768, 25
  %2769 = load i64, i64* %g, align 8
  %shr5004 = lshr i64 %2769, 39
  %or5005 = or i64 %shl5003, %shr5004
  %xor5006 = xor i64 %or5002, %or5005
  %xor5007 = xor i64 %or4999, %xor5006
  %2770 = load i64, i64* %g, align 8
  %2771 = load i64, i64* %h, align 8
  %and5008 = and i64 %2770, %2771
  %2772 = load i64, i64* %a, align 8
  %2773 = load i64, i64* %g, align 8
  %2774 = load i64, i64* %h, align 8
  %or5009 = or i64 %2773, %2774
  %and5010 = and i64 %2772, %or5009
  %or5011 = or i64 %and5008, %and5010
  %add5012 = add i64 %xor5007, %or5011
  store i64 %add5012, i64* %t04996, align 8
  %2775 = load i64, i64* %f, align 8
  %2776 = load i64, i64* %c, align 8
  %shl5014 = shl i64 %2776, 50
  %2777 = load i64, i64* %c, align 8
  %shr5015 = lshr i64 %2777, 14
  %or5016 = or i64 %shl5014, %shr5015
  %2778 = load i64, i64* %c, align 8
  %shl5017 = shl i64 %2778, 46
  %2779 = load i64, i64* %c, align 8
  %shr5018 = lshr i64 %2779, 18
  %or5019 = or i64 %shl5017, %shr5018
  %2780 = load i64, i64* %c, align 8
  %shl5020 = shl i64 %2780, 23
  %2781 = load i64, i64* %c, align 8
  %shr5021 = lshr i64 %2781, 41
  %or5022 = or i64 %shl5020, %shr5021
  %xor5023 = xor i64 %or5019, %or5022
  %xor5024 = xor i64 %or5016, %xor5023
  %2782 = load i64, i64* %e, align 8
  %2783 = load i64, i64* %c, align 8
  %2784 = load i64, i64* %d, align 8
  %2785 = load i64, i64* %e, align 8
  %xor5025 = xor i64 %2784, %2785
  %and5026 = and i64 %2783, %xor5025
  %xor5027 = xor i64 %2782, %and5026
  %2786 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 74), align 8
  %arrayidx5028 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2787 = load i64, i64* %arrayidx5028, align 8
  %arrayidx5029 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2788 = load i64, i64* %arrayidx5029, align 8
  %shl5030 = shl i64 %2788, 45
  %arrayidx5031 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2789 = load i64, i64* %arrayidx5031, align 8
  %shr5032 = lshr i64 %2789, 19
  %or5033 = or i64 %shl5030, %shr5032
  %arrayidx5034 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2790 = load i64, i64* %arrayidx5034, align 8
  %shl5035 = shl i64 %2790, 3
  %arrayidx5036 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2791 = load i64, i64* %arrayidx5036, align 8
  %shr5037 = lshr i64 %2791, 61
  %or5038 = or i64 %shl5035, %shr5037
  %arrayidx5039 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2792 = load i64, i64* %arrayidx5039, align 8
  %shr5040 = lshr i64 %2792, 6
  %xor5041 = xor i64 %or5038, %shr5040
  %xor5042 = xor i64 %or5033, %xor5041
  %arrayidx5043 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 3
  %2793 = load i64, i64* %arrayidx5043, align 8
  %arrayidx5044 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2794 = load i64, i64* %arrayidx5044, align 8
  %shl5045 = shl i64 %2794, 63
  %arrayidx5046 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2795 = load i64, i64* %arrayidx5046, align 8
  %shr5047 = lshr i64 %2795, 1
  %or5048 = or i64 %shl5045, %shr5047
  %arrayidx5049 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2796 = load i64, i64* %arrayidx5049, align 8
  %shl5050 = shl i64 %2796, 56
  %arrayidx5051 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2797 = load i64, i64* %arrayidx5051, align 8
  %shr5052 = lshr i64 %2797, 8
  %or5053 = or i64 %shl5050, %shr5052
  %arrayidx5054 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2798 = load i64, i64* %arrayidx5054, align 8
  %shr5055 = lshr i64 %2798, 7
  %xor5056 = xor i64 %or5053, %shr5055
  %xor5057 = xor i64 %or5048, %xor5056
  %add5058 = add i64 %2793, %xor5057
  %add5059 = add i64 %xor5042, %add5058
  %add5060 = add i64 %2787, %add5059
  %arrayidx5061 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  store i64 %add5060, i64* %arrayidx5061, align 8
  %add5062 = add i64 %2786, %add5060
  %add5063 = add i64 %xor5027, %add5062
  %add5064 = add i64 %xor5024, %add5063
  %add5065 = add i64 %2775, %add5064
  store i64 %add5065, i64* %t15013, align 8
  %2799 = load i64, i64* %b, align 8
  %2800 = load i64, i64* %t15013, align 8
  %add5066 = add i64 %2799, %2800
  store i64 %add5066, i64* %b, align 8
  %2801 = load i64, i64* %t04996, align 8
  %2802 = load i64, i64* %t15013, align 8
  %add5067 = add i64 %2801, %2802
  store i64 %add5067, i64* %f, align 8
  br label %do.end.5068

do.end.5068:                                      ; preds = %do.body.4995
  br label %do.body.5069

do.body.5069:                                     ; preds = %do.end.5068
  %2803 = load i64, i64* %f, align 8
  %shl5071 = shl i64 %2803, 36
  %2804 = load i64, i64* %f, align 8
  %shr5072 = lshr i64 %2804, 28
  %or5073 = or i64 %shl5071, %shr5072
  %2805 = load i64, i64* %f, align 8
  %shl5074 = shl i64 %2805, 30
  %2806 = load i64, i64* %f, align 8
  %shr5075 = lshr i64 %2806, 34
  %or5076 = or i64 %shl5074, %shr5075
  %2807 = load i64, i64* %f, align 8
  %shl5077 = shl i64 %2807, 25
  %2808 = load i64, i64* %f, align 8
  %shr5078 = lshr i64 %2808, 39
  %or5079 = or i64 %shl5077, %shr5078
  %xor5080 = xor i64 %or5076, %or5079
  %xor5081 = xor i64 %or5073, %xor5080
  %2809 = load i64, i64* %f, align 8
  %2810 = load i64, i64* %g, align 8
  %and5082 = and i64 %2809, %2810
  %2811 = load i64, i64* %h, align 8
  %2812 = load i64, i64* %f, align 8
  %2813 = load i64, i64* %g, align 8
  %or5083 = or i64 %2812, %2813
  %and5084 = and i64 %2811, %or5083
  %or5085 = or i64 %and5082, %and5084
  %add5086 = add i64 %xor5081, %or5085
  store i64 %add5086, i64* %t05070, align 8
  %2814 = load i64, i64* %e, align 8
  %2815 = load i64, i64* %b, align 8
  %shl5088 = shl i64 %2815, 50
  %2816 = load i64, i64* %b, align 8
  %shr5089 = lshr i64 %2816, 14
  %or5090 = or i64 %shl5088, %shr5089
  %2817 = load i64, i64* %b, align 8
  %shl5091 = shl i64 %2817, 46
  %2818 = load i64, i64* %b, align 8
  %shr5092 = lshr i64 %2818, 18
  %or5093 = or i64 %shl5091, %shr5092
  %2819 = load i64, i64* %b, align 8
  %shl5094 = shl i64 %2819, 23
  %2820 = load i64, i64* %b, align 8
  %shr5095 = lshr i64 %2820, 41
  %or5096 = or i64 %shl5094, %shr5095
  %xor5097 = xor i64 %or5093, %or5096
  %xor5098 = xor i64 %or5090, %xor5097
  %2821 = load i64, i64* %d, align 8
  %2822 = load i64, i64* %b, align 8
  %2823 = load i64, i64* %c, align 8
  %2824 = load i64, i64* %d, align 8
  %xor5099 = xor i64 %2823, %2824
  %and5100 = and i64 %2822, %xor5099
  %xor5101 = xor i64 %2821, %and5100
  %2825 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 75), align 8
  %arrayidx5102 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2826 = load i64, i64* %arrayidx5102, align 8
  %arrayidx5103 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2827 = load i64, i64* %arrayidx5103, align 8
  %shl5104 = shl i64 %2827, 45
  %arrayidx5105 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2828 = load i64, i64* %arrayidx5105, align 8
  %shr5106 = lshr i64 %2828, 19
  %or5107 = or i64 %shl5104, %shr5106
  %arrayidx5108 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2829 = load i64, i64* %arrayidx5108, align 8
  %shl5109 = shl i64 %2829, 3
  %arrayidx5110 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2830 = load i64, i64* %arrayidx5110, align 8
  %shr5111 = lshr i64 %2830, 61
  %or5112 = or i64 %shl5109, %shr5111
  %arrayidx5113 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 9
  %2831 = load i64, i64* %arrayidx5113, align 8
  %shr5114 = lshr i64 %2831, 6
  %xor5115 = xor i64 %or5112, %shr5114
  %xor5116 = xor i64 %or5107, %xor5115
  %arrayidx5117 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 4
  %2832 = load i64, i64* %arrayidx5117, align 8
  %arrayidx5118 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2833 = load i64, i64* %arrayidx5118, align 8
  %shl5119 = shl i64 %2833, 63
  %arrayidx5120 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2834 = load i64, i64* %arrayidx5120, align 8
  %shr5121 = lshr i64 %2834, 1
  %or5122 = or i64 %shl5119, %shr5121
  %arrayidx5123 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2835 = load i64, i64* %arrayidx5123, align 8
  %shl5124 = shl i64 %2835, 56
  %arrayidx5125 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2836 = load i64, i64* %arrayidx5125, align 8
  %shr5126 = lshr i64 %2836, 8
  %or5127 = or i64 %shl5124, %shr5126
  %arrayidx5128 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2837 = load i64, i64* %arrayidx5128, align 8
  %shr5129 = lshr i64 %2837, 7
  %xor5130 = xor i64 %or5127, %shr5129
  %xor5131 = xor i64 %or5122, %xor5130
  %add5132 = add i64 %2832, %xor5131
  %add5133 = add i64 %xor5116, %add5132
  %add5134 = add i64 %2826, %add5133
  %arrayidx5135 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  store i64 %add5134, i64* %arrayidx5135, align 8
  %add5136 = add i64 %2825, %add5134
  %add5137 = add i64 %xor5101, %add5136
  %add5138 = add i64 %xor5098, %add5137
  %add5139 = add i64 %2814, %add5138
  store i64 %add5139, i64* %t15087, align 8
  %2838 = load i64, i64* %a, align 8
  %2839 = load i64, i64* %t15087, align 8
  %add5140 = add i64 %2838, %2839
  store i64 %add5140, i64* %a, align 8
  %2840 = load i64, i64* %t05070, align 8
  %2841 = load i64, i64* %t15087, align 8
  %add5141 = add i64 %2840, %2841
  store i64 %add5141, i64* %e, align 8
  br label %do.end.5142

do.end.5142:                                      ; preds = %do.body.5069
  br label %do.body.5143

do.body.5143:                                     ; preds = %do.end.5142
  %2842 = load i64, i64* %e, align 8
  %shl5145 = shl i64 %2842, 36
  %2843 = load i64, i64* %e, align 8
  %shr5146 = lshr i64 %2843, 28
  %or5147 = or i64 %shl5145, %shr5146
  %2844 = load i64, i64* %e, align 8
  %shl5148 = shl i64 %2844, 30
  %2845 = load i64, i64* %e, align 8
  %shr5149 = lshr i64 %2845, 34
  %or5150 = or i64 %shl5148, %shr5149
  %2846 = load i64, i64* %e, align 8
  %shl5151 = shl i64 %2846, 25
  %2847 = load i64, i64* %e, align 8
  %shr5152 = lshr i64 %2847, 39
  %or5153 = or i64 %shl5151, %shr5152
  %xor5154 = xor i64 %or5150, %or5153
  %xor5155 = xor i64 %or5147, %xor5154
  %2848 = load i64, i64* %e, align 8
  %2849 = load i64, i64* %f, align 8
  %and5156 = and i64 %2848, %2849
  %2850 = load i64, i64* %g, align 8
  %2851 = load i64, i64* %e, align 8
  %2852 = load i64, i64* %f, align 8
  %or5157 = or i64 %2851, %2852
  %and5158 = and i64 %2850, %or5157
  %or5159 = or i64 %and5156, %and5158
  %add5160 = add i64 %xor5155, %or5159
  store i64 %add5160, i64* %t05144, align 8
  %2853 = load i64, i64* %d, align 8
  %2854 = load i64, i64* %a, align 8
  %shl5162 = shl i64 %2854, 50
  %2855 = load i64, i64* %a, align 8
  %shr5163 = lshr i64 %2855, 14
  %or5164 = or i64 %shl5162, %shr5163
  %2856 = load i64, i64* %a, align 8
  %shl5165 = shl i64 %2856, 46
  %2857 = load i64, i64* %a, align 8
  %shr5166 = lshr i64 %2857, 18
  %or5167 = or i64 %shl5165, %shr5166
  %2858 = load i64, i64* %a, align 8
  %shl5168 = shl i64 %2858, 23
  %2859 = load i64, i64* %a, align 8
  %shr5169 = lshr i64 %2859, 41
  %or5170 = or i64 %shl5168, %shr5169
  %xor5171 = xor i64 %or5167, %or5170
  %xor5172 = xor i64 %or5164, %xor5171
  %2860 = load i64, i64* %c, align 8
  %2861 = load i64, i64* %a, align 8
  %2862 = load i64, i64* %b, align 8
  %2863 = load i64, i64* %c, align 8
  %xor5173 = xor i64 %2862, %2863
  %and5174 = and i64 %2861, %xor5173
  %xor5175 = xor i64 %2860, %and5174
  %2864 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 76), align 8
  %arrayidx5176 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2865 = load i64, i64* %arrayidx5176, align 8
  %arrayidx5177 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2866 = load i64, i64* %arrayidx5177, align 8
  %shl5178 = shl i64 %2866, 45
  %arrayidx5179 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2867 = load i64, i64* %arrayidx5179, align 8
  %shr5180 = lshr i64 %2867, 19
  %or5181 = or i64 %shl5178, %shr5180
  %arrayidx5182 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2868 = load i64, i64* %arrayidx5182, align 8
  %shl5183 = shl i64 %2868, 3
  %arrayidx5184 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2869 = load i64, i64* %arrayidx5184, align 8
  %shr5185 = lshr i64 %2869, 61
  %or5186 = or i64 %shl5183, %shr5185
  %arrayidx5187 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 10
  %2870 = load i64, i64* %arrayidx5187, align 8
  %shr5188 = lshr i64 %2870, 6
  %xor5189 = xor i64 %or5186, %shr5188
  %xor5190 = xor i64 %or5181, %xor5189
  %arrayidx5191 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 5
  %2871 = load i64, i64* %arrayidx5191, align 8
  %arrayidx5192 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2872 = load i64, i64* %arrayidx5192, align 8
  %shl5193 = shl i64 %2872, 63
  %arrayidx5194 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2873 = load i64, i64* %arrayidx5194, align 8
  %shr5195 = lshr i64 %2873, 1
  %or5196 = or i64 %shl5193, %shr5195
  %arrayidx5197 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2874 = load i64, i64* %arrayidx5197, align 8
  %shl5198 = shl i64 %2874, 56
  %arrayidx5199 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2875 = load i64, i64* %arrayidx5199, align 8
  %shr5200 = lshr i64 %2875, 8
  %or5201 = or i64 %shl5198, %shr5200
  %arrayidx5202 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2876 = load i64, i64* %arrayidx5202, align 8
  %shr5203 = lshr i64 %2876, 7
  %xor5204 = xor i64 %or5201, %shr5203
  %xor5205 = xor i64 %or5196, %xor5204
  %add5206 = add i64 %2871, %xor5205
  %add5207 = add i64 %xor5190, %add5206
  %add5208 = add i64 %2865, %add5207
  %arrayidx5209 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  store i64 %add5208, i64* %arrayidx5209, align 8
  %add5210 = add i64 %2864, %add5208
  %add5211 = add i64 %xor5175, %add5210
  %add5212 = add i64 %xor5172, %add5211
  %add5213 = add i64 %2853, %add5212
  store i64 %add5213, i64* %t15161, align 8
  %2877 = load i64, i64* %h, align 8
  %2878 = load i64, i64* %t15161, align 8
  %add5214 = add i64 %2877, %2878
  store i64 %add5214, i64* %h, align 8
  %2879 = load i64, i64* %t05144, align 8
  %2880 = load i64, i64* %t15161, align 8
  %add5215 = add i64 %2879, %2880
  store i64 %add5215, i64* %d, align 8
  br label %do.end.5216

do.end.5216:                                      ; preds = %do.body.5143
  br label %do.body.5217

do.body.5217:                                     ; preds = %do.end.5216
  %2881 = load i64, i64* %d, align 8
  %shl5219 = shl i64 %2881, 36
  %2882 = load i64, i64* %d, align 8
  %shr5220 = lshr i64 %2882, 28
  %or5221 = or i64 %shl5219, %shr5220
  %2883 = load i64, i64* %d, align 8
  %shl5222 = shl i64 %2883, 30
  %2884 = load i64, i64* %d, align 8
  %shr5223 = lshr i64 %2884, 34
  %or5224 = or i64 %shl5222, %shr5223
  %2885 = load i64, i64* %d, align 8
  %shl5225 = shl i64 %2885, 25
  %2886 = load i64, i64* %d, align 8
  %shr5226 = lshr i64 %2886, 39
  %or5227 = or i64 %shl5225, %shr5226
  %xor5228 = xor i64 %or5224, %or5227
  %xor5229 = xor i64 %or5221, %xor5228
  %2887 = load i64, i64* %d, align 8
  %2888 = load i64, i64* %e, align 8
  %and5230 = and i64 %2887, %2888
  %2889 = load i64, i64* %f, align 8
  %2890 = load i64, i64* %d, align 8
  %2891 = load i64, i64* %e, align 8
  %or5231 = or i64 %2890, %2891
  %and5232 = and i64 %2889, %or5231
  %or5233 = or i64 %and5230, %and5232
  %add5234 = add i64 %xor5229, %or5233
  store i64 %add5234, i64* %t05218, align 8
  %2892 = load i64, i64* %c, align 8
  %2893 = load i64, i64* %h, align 8
  %shl5236 = shl i64 %2893, 50
  %2894 = load i64, i64* %h, align 8
  %shr5237 = lshr i64 %2894, 14
  %or5238 = or i64 %shl5236, %shr5237
  %2895 = load i64, i64* %h, align 8
  %shl5239 = shl i64 %2895, 46
  %2896 = load i64, i64* %h, align 8
  %shr5240 = lshr i64 %2896, 18
  %or5241 = or i64 %shl5239, %shr5240
  %2897 = load i64, i64* %h, align 8
  %shl5242 = shl i64 %2897, 23
  %2898 = load i64, i64* %h, align 8
  %shr5243 = lshr i64 %2898, 41
  %or5244 = or i64 %shl5242, %shr5243
  %xor5245 = xor i64 %or5241, %or5244
  %xor5246 = xor i64 %or5238, %xor5245
  %2899 = load i64, i64* %b, align 8
  %2900 = load i64, i64* %h, align 8
  %2901 = load i64, i64* %a, align 8
  %2902 = load i64, i64* %b, align 8
  %xor5247 = xor i64 %2901, %2902
  %and5248 = and i64 %2900, %xor5247
  %xor5249 = xor i64 %2899, %and5248
  %2903 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 77), align 8
  %arrayidx5250 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2904 = load i64, i64* %arrayidx5250, align 8
  %arrayidx5251 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2905 = load i64, i64* %arrayidx5251, align 8
  %shl5252 = shl i64 %2905, 45
  %arrayidx5253 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2906 = load i64, i64* %arrayidx5253, align 8
  %shr5254 = lshr i64 %2906, 19
  %or5255 = or i64 %shl5252, %shr5254
  %arrayidx5256 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2907 = load i64, i64* %arrayidx5256, align 8
  %shl5257 = shl i64 %2907, 3
  %arrayidx5258 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2908 = load i64, i64* %arrayidx5258, align 8
  %shr5259 = lshr i64 %2908, 61
  %or5260 = or i64 %shl5257, %shr5259
  %arrayidx5261 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 11
  %2909 = load i64, i64* %arrayidx5261, align 8
  %shr5262 = lshr i64 %2909, 6
  %xor5263 = xor i64 %or5260, %shr5262
  %xor5264 = xor i64 %or5255, %xor5263
  %arrayidx5265 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 6
  %2910 = load i64, i64* %arrayidx5265, align 8
  %arrayidx5266 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2911 = load i64, i64* %arrayidx5266, align 8
  %shl5267 = shl i64 %2911, 63
  %arrayidx5268 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2912 = load i64, i64* %arrayidx5268, align 8
  %shr5269 = lshr i64 %2912, 1
  %or5270 = or i64 %shl5267, %shr5269
  %arrayidx5271 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2913 = load i64, i64* %arrayidx5271, align 8
  %shl5272 = shl i64 %2913, 56
  %arrayidx5273 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2914 = load i64, i64* %arrayidx5273, align 8
  %shr5274 = lshr i64 %2914, 8
  %or5275 = or i64 %shl5272, %shr5274
  %arrayidx5276 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2915 = load i64, i64* %arrayidx5276, align 8
  %shr5277 = lshr i64 %2915, 7
  %xor5278 = xor i64 %or5275, %shr5277
  %xor5279 = xor i64 %or5270, %xor5278
  %add5280 = add i64 %2910, %xor5279
  %add5281 = add i64 %xor5264, %add5280
  %add5282 = add i64 %2904, %add5281
  %arrayidx5283 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  store i64 %add5282, i64* %arrayidx5283, align 8
  %add5284 = add i64 %2903, %add5282
  %add5285 = add i64 %xor5249, %add5284
  %add5286 = add i64 %xor5246, %add5285
  %add5287 = add i64 %2892, %add5286
  store i64 %add5287, i64* %t15235, align 8
  %2916 = load i64, i64* %g, align 8
  %2917 = load i64, i64* %t15235, align 8
  %add5288 = add i64 %2916, %2917
  store i64 %add5288, i64* %g, align 8
  %2918 = load i64, i64* %t05218, align 8
  %2919 = load i64, i64* %t15235, align 8
  %add5289 = add i64 %2918, %2919
  store i64 %add5289, i64* %c, align 8
  br label %do.end.5290

do.end.5290:                                      ; preds = %do.body.5217
  br label %do.body.5291

do.body.5291:                                     ; preds = %do.end.5290
  %2920 = load i64, i64* %c, align 8
  %shl5293 = shl i64 %2920, 36
  %2921 = load i64, i64* %c, align 8
  %shr5294 = lshr i64 %2921, 28
  %or5295 = or i64 %shl5293, %shr5294
  %2922 = load i64, i64* %c, align 8
  %shl5296 = shl i64 %2922, 30
  %2923 = load i64, i64* %c, align 8
  %shr5297 = lshr i64 %2923, 34
  %or5298 = or i64 %shl5296, %shr5297
  %2924 = load i64, i64* %c, align 8
  %shl5299 = shl i64 %2924, 25
  %2925 = load i64, i64* %c, align 8
  %shr5300 = lshr i64 %2925, 39
  %or5301 = or i64 %shl5299, %shr5300
  %xor5302 = xor i64 %or5298, %or5301
  %xor5303 = xor i64 %or5295, %xor5302
  %2926 = load i64, i64* %c, align 8
  %2927 = load i64, i64* %d, align 8
  %and5304 = and i64 %2926, %2927
  %2928 = load i64, i64* %e, align 8
  %2929 = load i64, i64* %c, align 8
  %2930 = load i64, i64* %d, align 8
  %or5305 = or i64 %2929, %2930
  %and5306 = and i64 %2928, %or5305
  %or5307 = or i64 %and5304, %and5306
  %add5308 = add i64 %xor5303, %or5307
  store i64 %add5308, i64* %t05292, align 8
  %2931 = load i64, i64* %b, align 8
  %2932 = load i64, i64* %g, align 8
  %shl5310 = shl i64 %2932, 50
  %2933 = load i64, i64* %g, align 8
  %shr5311 = lshr i64 %2933, 14
  %or5312 = or i64 %shl5310, %shr5311
  %2934 = load i64, i64* %g, align 8
  %shl5313 = shl i64 %2934, 46
  %2935 = load i64, i64* %g, align 8
  %shr5314 = lshr i64 %2935, 18
  %or5315 = or i64 %shl5313, %shr5314
  %2936 = load i64, i64* %g, align 8
  %shl5316 = shl i64 %2936, 23
  %2937 = load i64, i64* %g, align 8
  %shr5317 = lshr i64 %2937, 41
  %or5318 = or i64 %shl5316, %shr5317
  %xor5319 = xor i64 %or5315, %or5318
  %xor5320 = xor i64 %or5312, %xor5319
  %2938 = load i64, i64* %a, align 8
  %2939 = load i64, i64* %g, align 8
  %2940 = load i64, i64* %h, align 8
  %2941 = load i64, i64* %a, align 8
  %xor5321 = xor i64 %2940, %2941
  %and5322 = and i64 %2939, %xor5321
  %xor5323 = xor i64 %2938, %and5322
  %2942 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 78), align 8
  %arrayidx5324 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  %2943 = load i64, i64* %arrayidx5324, align 8
  %arrayidx5325 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2944 = load i64, i64* %arrayidx5325, align 8
  %shl5326 = shl i64 %2944, 45
  %arrayidx5327 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2945 = load i64, i64* %arrayidx5327, align 8
  %shr5328 = lshr i64 %2945, 19
  %or5329 = or i64 %shl5326, %shr5328
  %arrayidx5330 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2946 = load i64, i64* %arrayidx5330, align 8
  %shl5331 = shl i64 %2946, 3
  %arrayidx5332 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2947 = load i64, i64* %arrayidx5332, align 8
  %shr5333 = lshr i64 %2947, 61
  %or5334 = or i64 %shl5331, %shr5333
  %arrayidx5335 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 12
  %2948 = load i64, i64* %arrayidx5335, align 8
  %shr5336 = lshr i64 %2948, 6
  %xor5337 = xor i64 %or5334, %shr5336
  %xor5338 = xor i64 %or5329, %xor5337
  %arrayidx5339 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 7
  %2949 = load i64, i64* %arrayidx5339, align 8
  %arrayidx5340 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2950 = load i64, i64* %arrayidx5340, align 8
  %shl5341 = shl i64 %2950, 63
  %arrayidx5342 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2951 = load i64, i64* %arrayidx5342, align 8
  %shr5343 = lshr i64 %2951, 1
  %or5344 = or i64 %shl5341, %shr5343
  %arrayidx5345 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2952 = load i64, i64* %arrayidx5345, align 8
  %shl5346 = shl i64 %2952, 56
  %arrayidx5347 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2953 = load i64, i64* %arrayidx5347, align 8
  %shr5348 = lshr i64 %2953, 8
  %or5349 = or i64 %shl5346, %shr5348
  %arrayidx5350 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2954 = load i64, i64* %arrayidx5350, align 8
  %shr5351 = lshr i64 %2954, 7
  %xor5352 = xor i64 %or5349, %shr5351
  %xor5353 = xor i64 %or5344, %xor5352
  %add5354 = add i64 %2949, %xor5353
  %add5355 = add i64 %xor5338, %add5354
  %add5356 = add i64 %2943, %add5355
  %arrayidx5357 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 14
  store i64 %add5356, i64* %arrayidx5357, align 8
  %add5358 = add i64 %2942, %add5356
  %add5359 = add i64 %xor5323, %add5358
  %add5360 = add i64 %xor5320, %add5359
  %add5361 = add i64 %2931, %add5360
  store i64 %add5361, i64* %t15309, align 8
  %2955 = load i64, i64* %f, align 8
  %2956 = load i64, i64* %t15309, align 8
  %add5362 = add i64 %2955, %2956
  store i64 %add5362, i64* %f, align 8
  %2957 = load i64, i64* %t05292, align 8
  %2958 = load i64, i64* %t15309, align 8
  %add5363 = add i64 %2957, %2958
  store i64 %add5363, i64* %b, align 8
  br label %do.end.5364

do.end.5364:                                      ; preds = %do.body.5291
  br label %do.body.5365

do.body.5365:                                     ; preds = %do.end.5364
  %2959 = load i64, i64* %b, align 8
  %shl5367 = shl i64 %2959, 36
  %2960 = load i64, i64* %b, align 8
  %shr5368 = lshr i64 %2960, 28
  %or5369 = or i64 %shl5367, %shr5368
  %2961 = load i64, i64* %b, align 8
  %shl5370 = shl i64 %2961, 30
  %2962 = load i64, i64* %b, align 8
  %shr5371 = lshr i64 %2962, 34
  %or5372 = or i64 %shl5370, %shr5371
  %2963 = load i64, i64* %b, align 8
  %shl5373 = shl i64 %2963, 25
  %2964 = load i64, i64* %b, align 8
  %shr5374 = lshr i64 %2964, 39
  %or5375 = or i64 %shl5373, %shr5374
  %xor5376 = xor i64 %or5372, %or5375
  %xor5377 = xor i64 %or5369, %xor5376
  %2965 = load i64, i64* %b, align 8
  %2966 = load i64, i64* %c, align 8
  %and5378 = and i64 %2965, %2966
  %2967 = load i64, i64* %d, align 8
  %2968 = load i64, i64* %b, align 8
  %2969 = load i64, i64* %c, align 8
  %or5379 = or i64 %2968, %2969
  %and5380 = and i64 %2967, %or5379
  %or5381 = or i64 %and5378, %and5380
  %add5382 = add i64 %xor5377, %or5381
  store i64 %add5382, i64* %t05366, align 8
  %2970 = load i64, i64* %a, align 8
  %2971 = load i64, i64* %f, align 8
  %shl5384 = shl i64 %2971, 50
  %2972 = load i64, i64* %f, align 8
  %shr5385 = lshr i64 %2972, 14
  %or5386 = or i64 %shl5384, %shr5385
  %2973 = load i64, i64* %f, align 8
  %shl5387 = shl i64 %2973, 46
  %2974 = load i64, i64* %f, align 8
  %shr5388 = lshr i64 %2974, 18
  %or5389 = or i64 %shl5387, %shr5388
  %2975 = load i64, i64* %f, align 8
  %shl5390 = shl i64 %2975, 23
  %2976 = load i64, i64* %f, align 8
  %shr5391 = lshr i64 %2976, 41
  %or5392 = or i64 %shl5390, %shr5391
  %xor5393 = xor i64 %or5389, %or5392
  %xor5394 = xor i64 %or5386, %xor5393
  %2977 = load i64, i64* %h, align 8
  %2978 = load i64, i64* %f, align 8
  %2979 = load i64, i64* %g, align 8
  %2980 = load i64, i64* %h, align 8
  %xor5395 = xor i64 %2979, %2980
  %and5396 = and i64 %2978, %xor5395
  %xor5397 = xor i64 %2977, %and5396
  %2981 = load i64, i64* getelementptr inbounds ([80 x i64], [80 x i64]* @sha512_round_constants, i32 0, i64 79), align 8
  %arrayidx5398 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  %2982 = load i64, i64* %arrayidx5398, align 8
  %arrayidx5399 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2983 = load i64, i64* %arrayidx5399, align 8
  %shl5400 = shl i64 %2983, 45
  %arrayidx5401 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2984 = load i64, i64* %arrayidx5401, align 8
  %shr5402 = lshr i64 %2984, 19
  %or5403 = or i64 %shl5400, %shr5402
  %arrayidx5404 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2985 = load i64, i64* %arrayidx5404, align 8
  %shl5405 = shl i64 %2985, 3
  %arrayidx5406 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2986 = load i64, i64* %arrayidx5406, align 8
  %shr5407 = lshr i64 %2986, 61
  %or5408 = or i64 %shl5405, %shr5407
  %arrayidx5409 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 13
  %2987 = load i64, i64* %arrayidx5409, align 8
  %shr5410 = lshr i64 %2987, 6
  %xor5411 = xor i64 %or5408, %shr5410
  %xor5412 = xor i64 %or5403, %xor5411
  %arrayidx5413 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 8
  %2988 = load i64, i64* %arrayidx5413, align 8
  %arrayidx5414 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2989 = load i64, i64* %arrayidx5414, align 8
  %shl5415 = shl i64 %2989, 63
  %arrayidx5416 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2990 = load i64, i64* %arrayidx5416, align 8
  %shr5417 = lshr i64 %2990, 1
  %or5418 = or i64 %shl5415, %shr5417
  %arrayidx5419 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2991 = load i64, i64* %arrayidx5419, align 8
  %shl5420 = shl i64 %2991, 56
  %arrayidx5421 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2992 = load i64, i64* %arrayidx5421, align 8
  %shr5422 = lshr i64 %2992, 8
  %or5423 = or i64 %shl5420, %shr5422
  %arrayidx5424 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 0
  %2993 = load i64, i64* %arrayidx5424, align 8
  %shr5425 = lshr i64 %2993, 7
  %xor5426 = xor i64 %or5423, %shr5425
  %xor5427 = xor i64 %or5418, %xor5426
  %add5428 = add i64 %2988, %xor5427
  %add5429 = add i64 %xor5412, %add5428
  %add5430 = add i64 %2982, %add5429
  %arrayidx5431 = getelementptr inbounds [16 x i64], [16 x i64]* %x, i32 0, i64 15
  store i64 %add5430, i64* %arrayidx5431, align 8
  %add5432 = add i64 %2981, %add5430
  %add5433 = add i64 %xor5397, %add5432
  %add5434 = add i64 %xor5394, %add5433
  %add5435 = add i64 %2970, %add5434
  store i64 %add5435, i64* %t15383, align 8
  %2994 = load i64, i64* %e, align 8
  %2995 = load i64, i64* %t15383, align 8
  %add5436 = add i64 %2994, %2995
  store i64 %add5436, i64* %e, align 8
  %2996 = load i64, i64* %t05366, align 8
  %2997 = load i64, i64* %t15383, align 8
  %add5437 = add i64 %2996, %2997
  store i64 %add5437, i64* %a, align 8
  br label %do.end.5438

do.end.5438:                                      ; preds = %do.body.5365
  %2998 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5439 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2998, i32 0, i32 0
  %arrayidx5440 = getelementptr inbounds [8 x i64], [8 x i64]* %state5439, i32 0, i64 0
  %2999 = load i64, i64* %arrayidx5440, align 8
  %3000 = load i64, i64* %a, align 8
  %add5441 = add i64 %2999, %3000
  %3001 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5442 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3001, i32 0, i32 0
  %arrayidx5443 = getelementptr inbounds [8 x i64], [8 x i64]* %state5442, i32 0, i64 0
  store i64 %add5441, i64* %arrayidx5443, align 8
  store i64 %add5441, i64* %a, align 8
  %3002 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5444 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3002, i32 0, i32 0
  %arrayidx5445 = getelementptr inbounds [8 x i64], [8 x i64]* %state5444, i32 0, i64 1
  %3003 = load i64, i64* %arrayidx5445, align 8
  %3004 = load i64, i64* %b, align 8
  %add5446 = add i64 %3003, %3004
  %3005 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5447 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3005, i32 0, i32 0
  %arrayidx5448 = getelementptr inbounds [8 x i64], [8 x i64]* %state5447, i32 0, i64 1
  store i64 %add5446, i64* %arrayidx5448, align 8
  store i64 %add5446, i64* %b, align 8
  %3006 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5449 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3006, i32 0, i32 0
  %arrayidx5450 = getelementptr inbounds [8 x i64], [8 x i64]* %state5449, i32 0, i64 2
  %3007 = load i64, i64* %arrayidx5450, align 8
  %3008 = load i64, i64* %c, align 8
  %add5451 = add i64 %3007, %3008
  %3009 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5452 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3009, i32 0, i32 0
  %arrayidx5453 = getelementptr inbounds [8 x i64], [8 x i64]* %state5452, i32 0, i64 2
  store i64 %add5451, i64* %arrayidx5453, align 8
  store i64 %add5451, i64* %c, align 8
  %3010 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5454 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3010, i32 0, i32 0
  %arrayidx5455 = getelementptr inbounds [8 x i64], [8 x i64]* %state5454, i32 0, i64 3
  %3011 = load i64, i64* %arrayidx5455, align 8
  %3012 = load i64, i64* %d, align 8
  %add5456 = add i64 %3011, %3012
  %3013 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5457 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3013, i32 0, i32 0
  %arrayidx5458 = getelementptr inbounds [8 x i64], [8 x i64]* %state5457, i32 0, i64 3
  store i64 %add5456, i64* %arrayidx5458, align 8
  store i64 %add5456, i64* %d, align 8
  %3014 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5459 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3014, i32 0, i32 0
  %arrayidx5460 = getelementptr inbounds [8 x i64], [8 x i64]* %state5459, i32 0, i64 4
  %3015 = load i64, i64* %arrayidx5460, align 8
  %3016 = load i64, i64* %e, align 8
  %add5461 = add i64 %3015, %3016
  %3017 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5462 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3017, i32 0, i32 0
  %arrayidx5463 = getelementptr inbounds [8 x i64], [8 x i64]* %state5462, i32 0, i64 4
  store i64 %add5461, i64* %arrayidx5463, align 8
  store i64 %add5461, i64* %e, align 8
  %3018 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5464 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3018, i32 0, i32 0
  %arrayidx5465 = getelementptr inbounds [8 x i64], [8 x i64]* %state5464, i32 0, i64 5
  %3019 = load i64, i64* %arrayidx5465, align 8
  %3020 = load i64, i64* %f, align 8
  %add5466 = add i64 %3019, %3020
  %3021 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5467 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3021, i32 0, i32 0
  %arrayidx5468 = getelementptr inbounds [8 x i64], [8 x i64]* %state5467, i32 0, i64 5
  store i64 %add5466, i64* %arrayidx5468, align 8
  store i64 %add5466, i64* %f, align 8
  %3022 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5469 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3022, i32 0, i32 0
  %arrayidx5470 = getelementptr inbounds [8 x i64], [8 x i64]* %state5469, i32 0, i64 6
  %3023 = load i64, i64* %arrayidx5470, align 8
  %3024 = load i64, i64* %g, align 8
  %add5471 = add i64 %3023, %3024
  %3025 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5472 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3025, i32 0, i32 0
  %arrayidx5473 = getelementptr inbounds [8 x i64], [8 x i64]* %state5472, i32 0, i64 6
  store i64 %add5471, i64* %arrayidx5473, align 8
  store i64 %add5471, i64* %g, align 8
  %3026 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5474 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3026, i32 0, i32 0
  %arrayidx5475 = getelementptr inbounds [8 x i64], [8 x i64]* %state5474, i32 0, i64 7
  %3027 = load i64, i64* %arrayidx5475, align 8
  %3028 = load i64, i64* %h, align 8
  %add5476 = add i64 %3027, %3028
  %3029 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %state5477 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3029, i32 0, i32 0
  %arrayidx5478 = getelementptr inbounds [8 x i64], [8 x i64]* %state5477, i32 0, i64 7
  store i64 %add5476, i64* %arrayidx5478, align 8
  store i64 %add5476, i64* %h, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha512_process_bytes(i8* %buffer, i64 %len, %struct.sha512_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.sha512_ctx*, align 8
  %left_over = alloca i64, align 8
  %add = alloca i64, align 8
  %left_over40 = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.sha512_ctx* %ctx, %struct.sha512_ctx** %ctx.addr, align 8
  %0 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i32 0, i32 2
  %1 = load i64, i64* %buflen, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %2 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen1 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i32 0, i32 2
  %3 = load i64, i64* %buflen1, align 8
  store i64 %3, i64* %left_over, align 8
  %4 = load i64, i64* %left_over, align 8
  %sub = sub i64 256, %4
  %5 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp ugt i64 %sub, %5
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i64, i64* %len.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i64, i64* %left_over, align 8
  %sub3 = sub i64 256, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %sub3, %cond.false ]
  store i64 %cond, i64* %add, align 8
  %8 = load i64, i64* %left_over, align 8
  %9 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer4 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %9, i32 0, i32 3
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %buffer4, i32 0, i32 0
  %10 = bitcast i64* %arraydecay to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %8
  %11 = load i8*, i8** %buffer.addr, align 8
  %12 = load i64, i64* %add, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %11, i64 %12, i32 1, i1 false)
  %13 = load i64, i64* %add, align 8
  %14 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen5 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %14, i32 0, i32 2
  %15 = load i64, i64* %buflen5, align 8
  %add6 = add i64 %15, %13
  store i64 %add6, i64* %buflen5, align 8
  %16 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen7 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %16, i32 0, i32 2
  %17 = load i64, i64* %buflen7, align 8
  %cmp8 = icmp ugt i64 %17, 128
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %cond.end
  %18 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer10 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %18, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [32 x i64], [32 x i64]* %buffer10, i32 0, i32 0
  %19 = bitcast i64* %arraydecay11 to i8*
  %20 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen12 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %20, i32 0, i32 2
  %21 = load i64, i64* %buflen12, align 8
  %and = and i64 %21, -128
  %22 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  call void @sha512_process_block(i8* %19, i64 %and, %struct.sha512_ctx* %22)
  %23 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %23, i32 0, i32 2
  %24 = load i64, i64* %buflen13, align 8
  %and14 = and i64 %24, 127
  store i64 %and14, i64* %buflen13, align 8
  %25 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer15 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %25, i32 0, i32 3
  %26 = bitcast [32 x i64]* %buffer15 to i8*
  %27 = load i64, i64* %left_over, align 8
  %28 = load i64, i64* %add, align 8
  %add16 = add i64 %27, %28
  %and17 = and i64 %add16, -128
  %29 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %29, i32 0, i32 3
  %arraydecay19 = getelementptr inbounds [32 x i64], [32 x i64]* %buffer18, i32 0, i32 0
  %30 = bitcast i64* %arraydecay19 to i8*
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 %and17
  %31 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen21 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %31, i32 0, i32 2
  %32 = load i64, i64* %buflen21, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %arrayidx20, i64 %32, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %cond.end
  %33 = load i8*, i8** %buffer.addr, align 8
  %34 = load i64, i64* %add, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %35 = load i64, i64* %add, align 8
  %36 = load i64, i64* %len.addr, align 8
  %sub22 = sub i64 %36, %35
  store i64 %sub22, i64* %len.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %entry
  %37 = load i64, i64* %len.addr, align 8
  %cmp24 = icmp uge i64 %37, 128
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %if.end.23
  %38 = load i8*, i8** %buffer.addr, align 8
  %39 = ptrtoint i8* %38 to i64
  %rem = urem i64 %39, 8
  %cmp26 = icmp ne i64 %rem, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.25
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.27
  %40 = load i64, i64* %len.addr, align 8
  %cmp28 = icmp ugt i64 %40, 128
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer29 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %41, i32 0, i32 3
  %42 = bitcast [32 x i64]* %buffer29 to i8*
  %43 = load i8*, i8** %buffer.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 128, i32 1, i1 false)
  %44 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  call void @sha512_process_block(i8* %42, i64 128, %struct.sha512_ctx* %44)
  %45 = load i8*, i8** %buffer.addr, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %45, i64 128
  store i8* %add.ptr30, i8** %buffer.addr, align 8
  %46 = load i64, i64* %len.addr, align 8
  %sub31 = sub i64 %46, 128
  store i64 %sub31, i64* %len.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.36

if.else:                                          ; preds = %if.then.25
  %47 = load i8*, i8** %buffer.addr, align 8
  %48 = load i64, i64* %len.addr, align 8
  %and32 = and i64 %48, -128
  %49 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  call void @sha512_process_block(i8* %47, i64 %and32, %struct.sha512_ctx* %49)
  %50 = load i8*, i8** %buffer.addr, align 8
  %51 = load i64, i64* %len.addr, align 8
  %and33 = and i64 %51, -128
  %add.ptr34 = getelementptr inbounds i8, i8* %50, i64 %and33
  store i8* %add.ptr34, i8** %buffer.addr, align 8
  %52 = load i64, i64* %len.addr, align 8
  %and35 = and i64 %52, 127
  store i64 %and35, i64* %len.addr, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %while.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.23
  %53 = load i64, i64* %len.addr, align 8
  %cmp38 = icmp ugt i64 %53, 0
  br i1 %cmp38, label %if.then.39, label %if.end.56

if.then.39:                                       ; preds = %if.end.37
  %54 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen41 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %54, i32 0, i32 2
  %55 = load i64, i64* %buflen41, align 8
  store i64 %55, i64* %left_over40, align 8
  %56 = load i64, i64* %left_over40, align 8
  %57 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer42 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %57, i32 0, i32 3
  %arraydecay43 = getelementptr inbounds [32 x i64], [32 x i64]* %buffer42, i32 0, i32 0
  %58 = bitcast i64* %arraydecay43 to i8*
  %arrayidx44 = getelementptr inbounds i8, i8* %58, i64 %56
  %59 = load i8*, i8** %buffer.addr, align 8
  %60 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx44, i8* %59, i64 %60, i32 1, i1 false)
  %61 = load i64, i64* %len.addr, align 8
  %62 = load i64, i64* %left_over40, align 8
  %add45 = add i64 %62, %61
  store i64 %add45, i64* %left_over40, align 8
  %63 = load i64, i64* %left_over40, align 8
  %cmp46 = icmp uge i64 %63, 128
  br i1 %cmp46, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %if.then.39
  %64 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer48 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %64, i32 0, i32 3
  %arraydecay49 = getelementptr inbounds [32 x i64], [32 x i64]* %buffer48, i32 0, i32 0
  %65 = bitcast i64* %arraydecay49 to i8*
  %66 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  call void @sha512_process_block(i8* %65, i64 128, %struct.sha512_ctx* %66)
  %67 = load i64, i64* %left_over40, align 8
  %sub50 = sub i64 %67, 128
  store i64 %sub50, i64* %left_over40, align 8
  %68 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer51 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %68, i32 0, i32 3
  %69 = bitcast [32 x i64]* %buffer51 to i8*
  %70 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buffer52 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %70, i32 0, i32 3
  %arrayidx53 = getelementptr inbounds [32 x i64], [32 x i64]* %buffer52, i32 0, i64 16
  %71 = bitcast i64* %arrayidx53 to i8*
  %72 = load i64, i64* %left_over40, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %71, i64 %72, i32 8, i1 false)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %if.then.39
  %73 = load i64, i64* %left_over40, align 8
  %74 = load %struct.sha512_ctx*, %struct.sha512_ctx** %ctx.addr, align 8
  %buflen55 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %74, i32 0, i32 2
  store i64 %73, i64* %buflen55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.54, %if.end.37
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sha384_stream(%struct._IO_FILE* %stream, i8* %resblock) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha512_ctx, align 8
  %sum = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  %call = call noalias i8* @malloc(i64 32840) #3
  store i8* %call, i8** %buffer, align 8
  %0 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @sha384_init_ctx(%struct.sha512_ctx* %ctx)
  br label %while.body

while.body:                                       ; preds = %if.end, %while.end
  store i64 0, i64* %sum, align 8
  br label %while.body.2

while.body.2:                                     ; preds = %while.body, %if.end.16
  %1 = load i8*, i8** %buffer, align 8
  %2 = load i64, i64* %sum, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = load i64, i64* %sum, align 8
  %sub = sub i64 32768, %3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i64 @fread(i8* %add.ptr, i64 1, i64 %sub, %struct._IO_FILE* %4)
  store i64 %call3, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %6 = load i64, i64* %sum, align 8
  %add = add i64 %6, %5
  store i64 %add, i64* %sum, align 8
  %7 = load i64, i64* %sum, align 8
  %cmp = icmp eq i64 %7, 32768
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body.2
  br label %while.end

if.end.5:                                         ; preds = %while.body.2
  %8 = load i64, i64* %n, align 8
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call8 = call i32 @ferror(%struct._IO_FILE* %9) #3
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %10 = load i8*, i8** %buffer, align 8
  call void @free(i8* %10) #3
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %process_partial_block

if.end.12:                                        ; preds = %if.end.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call13 = call i32 @feof(%struct._IO_FILE* %11) #3
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %process_partial_block

if.end.16:                                        ; preds = %if.end.12
  br label %while.body.2

while.end:                                        ; preds = %if.then.4
  %12 = load i8*, i8** %buffer, align 8
  call void @sha512_process_block(i8* %12, i64 32768, %struct.sha512_ctx* %ctx)
  br label %while.body

process_partial_block:                            ; preds = %if.then.15, %if.end.11
  %13 = load i64, i64* %sum, align 8
  %cmp17 = icmp ugt i64 %13, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %process_partial_block
  %14 = load i8*, i8** %buffer, align 8
  %15 = load i64, i64* %sum, align 8
  call void @sha512_process_bytes(i8* %14, i64 %15, %struct.sha512_ctx* %ctx)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %process_partial_block
  %16 = load i8*, i8** %resblock.addr, align 8
  %call20 = call i8* @sha384_finish_ctx(%struct.sha512_ctx* %ctx, i8* %16)
  %17 = load i8*, i8** %buffer, align 8
  call void @free(i8* %17) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.10, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i8* @sha512_buffer(i8* %buffer, i64 %len, i8* %resblock) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha512_ctx, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  call void @sha512_init_ctx(%struct.sha512_ctx* %ctx)
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  call void @sha512_process_bytes(i8* %0, i64 %1, %struct.sha512_ctx* %ctx)
  %2 = load i8*, i8** %resblock.addr, align 8
  %call = call i8* @sha512_finish_ctx(%struct.sha512_ctx* %ctx, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @sha384_buffer(i8* %buffer, i64 %len, i8* %resblock) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha512_ctx, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  call void @sha384_init_ctx(%struct.sha512_ctx* %ctx)
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  call void @sha512_process_bytes(i8* %0, i64 %1, %struct.sha512_ctx* %ctx)
  %2 = load i8*, i8** %resblock.addr, align 8
  %call = call i8* @sha384_finish_ctx(%struct.sha512_ctx* %ctx, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
